<?php

/**
 * Simple Machines Forum (SMF)
 *
 * @package SMF
 * @author Simple Machines http://www.simplemachines.org
 * @copyright 2011 Simple Machines
 * @license http://www.simplemachines.org/about/smf/license.php BSD
 *
 * @version 2.0.18
 */

/*	This, as you have probably guessed, is the crux on which SMF functions.
	Everything should start here, so all the setup and security is done
	properly.  The most interesting part of this file is the action array in
	the smf_main() function.  It is formatted as so:

		'action-in-url' => array('Source-File.php', 'FunctionToCall'),

	Then, you can access the FunctionToCall() function from Source-File.php
	with the URL index.php?action=action-in-url.  Relatively simple, no?
*/

$forum_version = 'SMF 2.0.18';
@ini_set('memory_limit', '128M');

// Get everything started up...
define('SMF', 1);

if (version_compare(PHP_VERSION, '7.4.0') == -1 && function_exists('set_magic_quotes_runtime')) {
	@set_magic_quotes_runtime(0);
}

error_reporting(defined('E_STRICT') ? E_ALL | E_STRICT : E_ALL);
$time_start = microtime();

// This makes it so headers can be sent!
ob_start();

// Do some cleaning, just in case.
foreach (array('db_character_set', 'cachedir') as $variable) {
	if (isset($GLOBALS[$variable])) {
		unset($GLOBALS[$variable]);
	}
}

// загрузка настроек
require_once(dirname(__FILE__) . '/Settings.php');

// подстраховка на случай, если директория для кеша не существует
// $cachedir и $boarddir определяются в Settings.php
// если $cachedir переопределена разработчиком, но не существует на диске,
// используется директория кеша по умолчанию
if ((empty($cachedir) || !file_exists($cachedir)) && file_exists($boarddir . '/cache')) {
	$cachedir = $boarddir . '/cache';
}

// подключение необходимых файлов
// в каждом из них определены функции и нет исполняемого кода вне этих функций
require_once($sourcedir . '/QueryString.php');
require_once($sourcedir . '/Subs.php');
require_once($sourcedir . '/Errors.php');
require_once($sourcedir . '/Load.php');
require_once($sourcedir . '/Security.php');

// в зависимости от версии языка, подключаем полифиллы
if (@version_compare(PHP_VERSION, '5.1') == -1) {
	require_once($sourcedir . '/Subs-Compat.php');
}

// если $maintenance установлена в 2, то происходит обновление форума или что-то в этом духе.
if (!empty($maintenance) && $maintenance == 2) {
	db_fatal_error(); // выводит сообщение об ошибке вместо форума (Errors.php)
}

// переменная для хранения некоторых относящихся к SMF функций
$smcFunc = array();

// указание собственного обработчика ошибок (error_handler в Errors.php)
set_error_handler('error_handler');

// создание соединения с БД
loadDatabase(); // (Load.php)

// загрузка настроек из БД, выполнение таких действий как оптимизация
// заполнение переменной $modSettings
reloadSettings(); // (Load.php)

// очистка переменных запроса
// - замена на html-сущности в GET-параметрах
// - добавление слеша, если magic_quotes_gpc отключена
cleanRequest(); // (QueryString.php)

$context = array();

// указание семени для генератора случайных чисел
if (empty($modSettings['rand_seed']) || mt_rand(1, 250) == 69)
	smf_seed_generator(); // (Subs.php)

// выполнение запланированных действий
if (isset($_GET['scheduled']))
{
	require_once($sourcedir . '/ScheduledTasks.php');
	AutoTask();
}

// проверка, поддерживается ли сжатие результата, включено ли оно и сделано ли уже
if (!empty($modSettings['enableCompressedOutput']) && !headers_sent())
{
	// выключение сжатия, если используется zlib
	if (@ini_get('zlib.output_compression') == '1' || @ini_get('output_handler') == 'ob_gzhandler' || @version_compare(PHP_VERSION, '4.2.0') == -1) {
		$modSettings['enableCompressedOutput'] = '0';
	} else {
		ob_end_clean();
		ob_start('ob_gzhandler');
	}
}

// отправка некоторых заголовков, чтобы хоть немного подстраховаться 
if (!headers_sent()) {
	header('X-Frame-Options: SAMEORIGIN');
	header('X-XSS-Protection: 1');
	header('X-Content-Type-Options: nosniff');
}

// установка своего обработчика исключений
set_exception_handler(function ($e) use ($db_show_debug) {
	$error_type = 'general';

	// PHP 7 converts fatal errors to special Throwable types. Log them as such.
	if (is_a($e, 'Error'))
		$error_type = 'critical';

	if (isset($db_show_debug) && $db_show_debug === true && allowedTo('admin_forum'))
	{
		// Only log the message; the rest (such as the stack trace) is just fluff in the log.
		log_error($e->getMessage(), $error_type);

		fatal_error(nl2br($e), false);
	}
	else
		fatal_error($e->getMessage(), $error_type);
});

// начало сессии
loadSession();

// определение использования wap, wap2 или imode.
// Technically, we should check that wap comes before application/xhtml or text/html, but this doesn't work in practice as much as it should.
if (isset($_REQUEST['wap']) || isset($_REQUEST['wap2']) || isset($_REQUEST['imode'])) {
	unset($_SESSION['nowap']);
} elseif (isset($_REQUEST['nowap'])) {
	$_SESSION['nowap'] = true;
} elseif (!isset($_SESSION['nowap'])) {
	if (isset($_SERVER['HTTP_ACCEPT']) && strpos($_SERVER['HTTP_ACCEPT'], 'application/vnd.wap.xhtml+xml') !== false) {
		$_REQUEST['wap2'] = 1;
	} elseif (isset($_SERVER['HTTP_ACCEPT']) && strpos($_SERVER['HTTP_ACCEPT'], 'text/vnd.wap.wml') !== false) {
		if (strpos($_SERVER['HTTP_USER_AGENT'], 'DoCoMo/') !== false || strpos($_SERVER['HTTP_USER_AGENT'], 'portalmmm/') !== false) {
			$_REQUEST['imode'] = 1;
		} else {
			$_REQUEST['wap'] = 1;
		}
	}
}

if (!defined('WIRELESS')) {
	define('WIRELESS', isset($_REQUEST['wap']) || isset($_REQUEST['wap2']) || isset($_REQUEST['imode']));
}

// некоторые настройки и заголовки отличаются для wireless-протоколов
if (WIRELESS) {
	define('WIRELESS_PROTOCOL', isset($_REQUEST['wap']) ? 'wap' : (isset($_REQUEST['wap2']) ? 'wap2' : (isset($_REQUEST['imode']) ? 'imode' : '')));

	// Some cellphones can't handle output compression...
	$modSettings['enableCompressedOutput'] = '0';
	// !!! Do we want these hard coded?
	$modSettings['defaultMaxMessages'] = 5;
	$modSettings['defaultMaxTopics'] = 9;

	// Wireless protocol header.
	if (WIRELESS_PROTOCOL == 'wap') {
		header('Content-Type: text/vnd.wap.wml');
	}
}

// Restore post data if we are revalidating OpenID.
if (isset($_GET['openid_restore_post']) && !empty($_SESSION['openid']['saved_data'][$_GET['openid_restore_post']]['post']) && empty($_POST)) {
	$_POST = $_SESSION['openid']['saved_data'][$_GET['openid_restore_post']]['post'];
	unset($_SESSION['openid']['saved_data'][$_GET['openid_restore_post']]);
}

// определение функции которую надо вызвать и ее вызов - маршрутизация запроса
call_user_func(smf_main());

// завершение выполнения; обеспечение загрузки шаблона и запоминание предыдущего url
obExit(null, null, true); // (Subs.php)

// маршрутизатор - подключает нужный файл и вызывает функцию из него в зависимости от указанного в url действия
function smf_main()
{
	global $modSettings, $settings, $user_info, $board, $topic, $board_info, $maintenance, $sourcedir;

	// особый случай - продление сессии, отправка прозрачного пикселя
	if (isset($_GET['action']) && $_GET['action'] == 'keepalive') {
		header('Content-Type: image/gif');
		die("\x47\x49\x46\x38\x39\x61\x01\x00\x01\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x21\xF9\x04\x01\x00\x00\x00\x00\x2C\x00\x00\x00\x00\x01\x00\x01\x00\x00\x02\x02\x44\x01\x00\x3B");
	}

	// загрузка пользовательских cookie и загрузка настроек пользователя
	loadUserSettings(); // (Load.php)

	// загрузка информации о текущей доске
	// - заполнение массива $board_info, сохранение его в кеше
	// - перенаправляет на нужную запись, если был указан только идентификатор записи
	loadBoard(); // (Load.php)

	// загружает права текущего пользователя
	loadPermissions(); // (Load.php)

	// загрузка темы; для вложений вся тема не нужна
	if (isset($_REQUEST['action']) && $_REQUEST['action'] == 'dlattach' && (!empty($modSettings['allow_guestAccess']) && $user_info['is_guest'])) {
		detectBrowser(); // устанавливает $context['browser'] (Load.php)
	} else {
		// загрузка текущей темы (можно указать ?theme=1 например, для гостей)
		loadTheme(); // внутри также вызывается detectBrowser; устанавливается множество ключей в $context (Load.php)
	}

	// проверка, находится ли пользователь в бане
	is_not_banned();

	// если пользователь находится в теме и у него нет разрешения на одобрение сообщений, завершаем работу
	if (!empty($topic) && empty($board_info['cur_topic_approved']) && !allowedTo('approve_posts') && ($user_info['id'] != $board_info['cur_topic_starter'] || $user_info['is_guest'])) {
		fatal_lang_error('not_a_topic', false);
	}

	// логирование некоторых действий
	if (empty($_REQUEST['action']) || !in_array($_REQUEST['action'], array('dlattach', 'findmember', 'jseditor', 'jsoption', 'requestmembers', 'smstats', '.xml', 'xmlhttp', 'verificationcode', 'viewquery', 'viewsmfile'))) {
		// Log this user as online.
		writeLog();

		// Track forum statistics and hits...?
		if (!empty($modSettings['hitStats'])) {
			trackStats(array('hits' => '+'));
		}
	}

	// Is the forum in maintenance mode? (doesn't apply to administrators.)
	if (!empty($maintenance) && !allowedTo('admin_forum')) {
		// You can only login.... otherwise, you're getting the "maintenance mode" display.
		if (isset($_REQUEST['action']) && ($_REQUEST['action'] == 'login2' || $_REQUEST['action'] == 'logout')) {
			require_once($sourcedir . '/LogInOut.php');
			return $_REQUEST['action'] == 'login2' ? 'Login2' : 'Logout';
		} else {
			// Don't even try it, sonny.
			require_once($sourcedir . '/Subs-Auth.php');
			return 'InMaintenance';
		}
	} elseif (empty($modSettings['allow_guestAccess']) && $user_info['is_guest'] && (!isset($_REQUEST['action']) || !in_array($_REQUEST['action'], array('coppa', 'login', 'login2', 'register', 'register2', 'reminder', 'activate', 'help', 'smstats', 'mailq', 'verificationcode', 'openidreturn')))) {
		// If guest access is off, a guest can only do one of the very few following actions.
		require_once($sourcedir . '/Subs-Auth.php');
		return 'KickGuest';
	} elseif (empty($_REQUEST['action'])) {
		// Action and board are both empty... BoardIndex!
		if (empty($board) && empty($topic))	{
			require_once($sourcedir . '/BoardIndex.php');
			return 'BoardIndex';
		} elseif (empty($topic)) {
			// Topic is empty, and action is empty.... MessageIndex!
			require_once($sourcedir . '/MessageIndex.php');
			return 'MessageIndex';
		} else {
			// Board is not empty... topic is not empty... action is empty.. Display!
			require_once($sourcedir . '/Display.php');
			return 'Display';
		}
	}

	// маршрутизация: $_REQUEST['action'] => array($file, $function)
	$actionArray = array(
		'agreement' => array('Agreement.php', 'Agreement'),
		'acceptagreement' => array('Agreement.php', 'AcceptAgreement'),
		'activate' => array('Register.php', 'Activate'),
		'admin' => array('Admin.php', 'AdminMain'),
		'announce' => array('Post.php', 'AnnounceTopic'),
		'attachapprove' => array('ManageAttachments.php', 'ApproveAttach'),
		'buddy' => array('Subs-Members.php', 'BuddyListToggle'),
		'calendar' => array('Calendar.php', 'CalendarMain'),
		'clock' => array('Calendar.php', 'clock'),
		'collapse' => array('BoardIndex.php', 'CollapseCategory'),
		'coppa' => array('Register.php', 'CoppaForm'),
		'credits' => array('Who.php', 'Credits'),
		'deletemsg' => array('RemoveTopic.php', 'DeleteMessage'),
		'display' => array('Display.php', 'Display'),
		'dlattach' => array('Display.php', 'Download'),
		'editpoll' => array('Poll.php', 'EditPoll'),
		'editpoll2' => array('Poll.php', 'EditPoll2'),
		'emailuser' => array('SendTopic.php', 'EmailUser'),
		'findmember' => array('Subs-Auth.php', 'JSMembers'),
		'groups' => array('Groups.php', 'Groups'),
		'help' => array('Help.php', 'ShowHelp'),
		'helpadmin' => array('Help.php', 'ShowAdminHelp'),
		'im' => array('PersonalMessage.php', 'MessageMain'),
		'jseditor' => array('Subs-Editor.php', 'EditorMain'),
		'jsmodify' => array('Post.php', 'JavaScriptModify'),
		'jsoption' => array('Themes.php', 'SetJavaScript'),
		'lock' => array('LockTopic.php', 'LockTopic'),
		'lockvoting' => array('Poll.php', 'LockVoting'),
		'login' => array('LogInOut.php', 'Login'),
		'login2' => array('LogInOut.php', 'Login2'),
		'logout' => array('LogInOut.php', 'Logout'),
		'markasread' => array('Subs-Boards.php', 'MarkRead'),
		'mergetopics' => array('SplitTopics.php', 'MergeTopics'),
		'mlist' => array('Memberlist.php', 'Memberlist'),
		'moderate' => array('ModerationCenter.php', 'ModerationMain'),
		'modifycat' => array('ManageBoards.php', 'ModifyCat'),
		'modifykarma' => array('Karma.php', 'ModifyKarma'),
		'movetopic' => array('MoveTopic.php', 'MoveTopic'),
		'movetopic2' => array('MoveTopic.php', 'MoveTopic2'),
		'notify' => array('Notify.php', 'Notify'),
		'notifyboard' => array('Notify.php', 'BoardNotify'),
		'notifyannouncements' => array('Notify.php', 'AnnouncementsNotify'),
		'openidreturn' => array('Subs-OpenID.php', 'smf_openID_return'),
		'pm' => array('PersonalMessage.php', 'MessageMain'),
		'post' => array('Post.php', 'Post'),
		'post2' => array('Post.php', 'Post2'),
		'printpage' => array('Printpage.php', 'PrintTopic'),
		'profile' => array('Profile.php', 'ModifyProfile'),
		'quotefast' => array('Post.php', 'QuoteFast'),
		'quickmod' => array('MessageIndex.php', 'QuickModeration'),
		'quickmod2' => array('Display.php', 'QuickInTopicModeration'),
		'recent' => array('Recent.php', 'RecentPosts'),
		'register' => array('Register.php', 'Register'),
		'register2' => array('Register.php', 'Register2'),
		'reminder' => array('Reminder.php', 'RemindMe'),
		'removepoll' => array('Poll.php', 'RemovePoll'),
		'removetopic2' => array('RemoveTopic.php', 'RemoveTopic2'),
		'reporttm' => array('SendTopic.php', 'ReportToModerator'),
		'requestmembers' => array('Subs-Auth.php', 'RequestMembers'),
		'restoretopic' => array('RemoveTopic.php', 'RestoreTopic'),
		'search' => array('Search.php', 'PlushSearch1'),
		'search2' => array('Search.php', 'PlushSearch2'),
		'sendtopic' => array('SendTopic.php', 'EmailUser'),
		'smstats' => array('Stats.php', 'SMStats'),
		'suggest' => array('Subs-Editor.php', 'AutoSuggestHandler'),
		'spellcheck' => array('Subs-Post.php', 'SpellCheck'),
		'splittopics' => array('SplitTopics.php', 'SplitTopics'),
		'stats' => array('Stats.php', 'DisplayStats'),
		'sticky' => array('LockTopic.php', 'Sticky'),
		'theme' => array('Themes.php', 'ThemesMain'),
		'trackip' => array('Profile-View.php', 'trackIP'),
		'about:mozilla' => array('Karma.php', 'BookOfUnknown'),
		'about:unknown' => array('Karma.php', 'BookOfUnknown'),
		'unread' => array('Recent.php', 'UnreadTopics'),
		'unreadreplies' => array('Recent.php', 'UnreadTopics'),
		'verificationcode' => array('Register.php', 'VerificationCode'),
		'viewprofile' => array('Profile.php', 'ModifyProfile'),
		'vote' => array('Poll.php', 'Vote'),
		'viewquery' => array('ViewQuery.php', 'ViewQuery'),
		'viewsmfile' => array('Admin.php', 'DisplayAdminFile'),
		'who' => array('Who.php', 'Who'),
		'.xml' => array('News.php', 'ShowXmlFeed'),
		'xmlhttp' => array('Xml.php', 'XMLhttpMain'),
	);

	// модификация маршрутизации при необходимости, если есть интеграция с чем либо
	call_integration_hook('integrate_actions', array(&$actionArray));

	// получение имени файла и имени функции по действию, если их нет, использование перечня досок
	if (!isset($_REQUEST['action']) || !isset($actionArray[$_REQUEST['action']])) {
		// Catch the action with the theme?
		if (!empty($settings['catch_action'])) {
			require_once($sourcedir . '/Themes.php');
			return 'WrapAction';
		}

		// Fall through to the board index then...
		require_once($sourcedir . '/BoardIndex.php');
		return 'BoardIndex';
	}

	// если же действи распознано, подключение нужного файла и возврат имени функции, которую надо вызвать
	require_once($sourcedir . '/' . $actionArray[$_REQUEST['action']][0]);
	return $actionArray[$_REQUEST['action']][1];
}
?>