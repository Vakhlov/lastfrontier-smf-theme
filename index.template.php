<?php
/**
 * Simple Machines Forum (SMF)
 *
 * @package SMF
 * @author Simple Machines
 * @copyright 2011 Simple Machines
 * @license http://www.simplemachines.org/about/smf/license.php BSD
 *
 * @version 2.0.14
 */

/*	This template is, perhaps, the most important template in the theme. It
	contains the main template layer that displays the header and footer of
	the forum, namely with main_above and main_below. It also contains the
	menu sub template, which appropriately displays the menu; the init sub
	template, which is there to set the theme up; (init can be missing.) and
	the linktree sub template, which sorts out the link tree.

	The init sub template should load any data and set any hardcoded options.

	The main_above sub template is what is shown above the main content, and
	should contain anything that should be shown up there.

	The main_below sub template, conversely, is shown after the main content.
	It should probably contain the copyright statement and some other things.

	The linktree sub template should display the link tree, using the data
	in the $context['linktree'] variable.

	The menu sub template should display all the relevant buttons the user
	wants and or needs.

	For more information on the templating system, please see the site at:
	http://www.simplemachines.org/
*/

// Initialize the template... mainly little settings.
function template_init()
{
	global $context, $settings, $options, $txt;

	/* Use images from default theme when using templates from the default theme?
		if this is 'always', images from the default theme will be used.
		if this is 'defaults', images from the default theme will only be used with default templates.
		if this is 'never' or isn't set at all, images from the default theme will not be used. */
	$settings['use_default_images'] = 'never';

	/* What document type definition is being used? (for font size and other issues.)
		'xhtml' for an XHTML 1.0 document type definition.
		'html' for an HTML 4.01 document type definition. */
	$settings['doctype'] = 'xhtml';

	/* The version this template/theme is for.
		This should probably be the version of SMF it was created for. */
	$settings['theme_version'] = '2.0';

	/* Set a setting that tells the theme that it can render the tabs. */
	$settings['use_tabs'] = true;

	/* Use plain buttons - as opposed to text buttons? */
	$settings['use_buttons'] = true;

	/* Show sticky and lock status separate from topic icons? */
	$settings['separate_sticky_lock'] = true;

	/* Does this theme use the strict doctype? */
	$settings['strict_doctype'] = false;

	/* Does this theme use post previews on the message index? */
	$settings['message_index_preview'] = false;

	/* Set the following variable to true if this theme requires the optional theme strings file to be loaded. */
	$settings['require_theme_strings'] = false;
}

// The main sub template above the content.
function template_html_above()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings;

	// Show right to left and the character set for ease of translating.
	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"', $context['right_to_left'] ? ' dir="rtl"' : '', '>
<head>';

	// The ?fin20 part of this link is just here to make sure browsers don't cache it wrongly.
	echo '
	<link rel="stylesheet" type="text/css" href="', $settings['theme_url'], '/css/index', $context['theme_variant'], '.css?fin20" />';

	// Some browsers need an extra stylesheet due to bugs/compatibility issues.
	foreach (array('ie7', 'ie6', 'webkit') as $cssfix)
		if ($context['browser']['is_' . $cssfix])
			echo '
	<link rel="stylesheet" type="text/css" href="', $settings['default_theme_url'], '/css/', $cssfix, '.css" />';

	// RTL languages require an additional stylesheet.
	if ($context['right_to_left'])
		echo '
	<link rel="stylesheet" type="text/css" href="', $settings['theme_url'], '/css/rtl.css" />';

	// Here comes the JavaScript bits!
	echo '
	<script type="text/javascript" src="', $settings['theme_url'], '/scripts/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="', $settings['default_theme_url'], '/scripts/script.js?fin20"></script>
	<script type="text/javascript" src="', $settings['theme_url'], '/scripts/theme.js?fin20"></script>
	<script type="text/javascript" src="', $settings['theme_url'], '/scripts/themetwo.js?fin20"></script>
	<script type="text/javascript"><!-- // --><![CDATA[
		var smf_theme_url = "', $settings['theme_url'], '";
		var smf_default_theme_url = "', $settings['default_theme_url'], '";
		var smf_images_url = "', $settings['images_url'], '";
		var smf_scripturl = "', $scripturl, '";
		var smf_iso_case_folding = ', $context['server']['iso_case_folding'] ? 'true' : 'false', ';
		var smf_charset = "', $context['character_set'], '";', $context['show_pm_popup'] ? '
		var fPmPopup = function ()
		{
			if (confirm("' . $txt['show_personal_messages'] . '"))
				window.open(smf_prepareScriptUrl(smf_scripturl) + "action=pm");
		}
		addLoadEvent(fPmPopup);' : '', '
		var ajax_notification_text = "', $txt['ajax_in_progress'], '";
		var ajax_notification_cancel_text = "', $txt['modify_cancel'], '";
	// ]]></script>';

	echo '
	<meta http-equiv="Content-Type" content="text/html; charset=', $context['character_set'], '" />
	<meta name="description" content="', $context['page_title_html_safe'], '" />', !empty($context['meta_keywords']) ? '
	<meta name="keywords" content="' . $context['meta_keywords'] . '" />' : '', '
	<title>', $context['page_title_html_safe'], '</title>';

	// Please don't index these Mr Robot.
	if (!empty($context['robot_no_index']))
		echo '
	<meta name="robots" content="noindex" />';

	// Present a canonical url for search engines to prevent duplicate content in their indices.
	if (!empty($context['canonical_url']))
		echo '
	<link rel="canonical" href="', $context['canonical_url'], '" />';

	// Show all the relative links, such as help, search, contents, and the like.
	echo '
	<link rel="help" href="', $scripturl, '?action=help" />
	<link rel="search" href="', $scripturl, '?action=search" />
	<link rel="contents" href="', $scripturl, '" />';

	// If RSS feeds are enabled, advertise the presence of one.
	if (!empty($modSettings['xmlnews_enable']) && (!empty($modSettings['allow_guestAccess']) || $context['user']['is_logged']))
		echo '
	<link rel="alternate" type="application/rss+xml" title="', $context['forum_name_html_safe'], ' - ', $txt['rss'], '" href="', $scripturl, '?type=rss;action=.xml" />';

	// If we're viewing a topic, these should be the previous and next topics, respectively.
	if (!empty($context['current_topic']))
		echo '
	<link rel="prev" href="', $scripturl, '?topic=', $context['current_topic'], '.0;prev_next=prev" />
	<link rel="next" href="', $scripturl, '?topic=', $context['current_topic'], '.0;prev_next=next" />';

	// If we're in a board, or a topic for that matter, the index will be the board's index.
	if (!empty($context['current_board']))
		echo '
	<link rel="index" href="', $scripturl, '?board=', $context['current_board'], '.0" />';

	// Output any remaining HTML headers. (from mods, maybe?)
	echo $context['html_headers'];

	echo '
</head>
<body>';
	renderSvgSprite();
}

/**
 *
 */
function renderSvgSprite () {
	echo '
		<svg fill="none" xmlns="http://www.w3.org/2000/svg" style="display:none;">
			<g id="shevron" fill="currentColor"><rect width="10" height="6" transform="matrix(0.707 -0.707 0 1 2.929 10.07)"/><rect width="10" height="6" transform="matrix(0.707 0.707 0 1 10 3)"/></g>
		</svg>';
}

/**
 * Выводит заголовок форума В заголовке выводит логотип форума, если задан, иначе - название форума.
 */
function renderTitle () {
	global $context;

	$forumName = $context['forum_name'];
	$headerLogoUrl = $context['header_logo_url_html_safe'];

	if (empty($headerLogoUrl)) {
		$linkContent = $forumName;
	} else {
		$linkContent = '<img src="' . $headerLogoUrl . '" alt="' . $forumName . '" />';
	}

	echo '<h1><a href="http://lastfrontier.ru/">', $linkContent, '</a></h1>';
}

/**
 * Выводит кнопку сворачивания верхнего раздела, где выводится форма авторизации или информация о пользователе.
 */
function renderCollapseUpperSectionButton () {
	global $txt;

	// идентификатор кнопки, для которой создается JS-представоление;
	// должен совпадать с тем, что используется в функции renderToggleJs
	$id = 'upperSectionToggle';
	echo '<button class="lff-toggle-section" id="', $id, '" title="', $txt['upshrink_description'],'"><svg width="20" height="20"><use href="#shevron"/></svg></button>';
}

/**
 * Выводит слоган форума или логотип SMF, если слоган не задан.
 */
function renderForumSlogan () {
	global $settings;

	$slogan = $settings['site_slogan'];
	$classNames = ['lff-slogan'];

	if (empty($slogan)) {
		$url = $settings['images_url'] . '/smflogo.png';
		$slogan = '<img src="' . $url . '" alt="Simple Machines Forum" title="Simple Machines Forum" />';
		$classNames[] = 'lff-slogan_default';
	}

	echo '<div class="', implode(' ', $classNames), '">', $slogan, '</div>';
}

/**
 * Выводит самый верхний раздел (логотип, слоган, кнопка сворачивания верхнего раздела).
 */
function renderTopSection () {
	global $context;

	$classNames = ['lff-top-section'];
	$headerLogoUrl = $context['header_logo_url_html_safe'];

	if (empty($headerLogoUrl)) {
		// если нет логотипа, будет выводиться текст, для которого нужны другие отступы
		$classNames[] = 'lff-top-section_default';
	}

	echo '<div class="', implode(' ', $classNames), '">';

	renderTitle();
	renderCollapseUpperSectionButton();
	renderForumSlogan();

	echo '</div>';
}

/**
 * Выводит изображение пользователя, если есть.
 */
function renderAvatar () {
	global $context;

	if (!empty($context['user']['avatar'])) {
		echo '<p class="avatar"><img src="', $context['user']['avatar']['href'], '" alt="" width="65" /></p>';
	}
}

/**
 * Выводит приветствие пользователя.
 */
function renderGreeting () {
	global $context, $txt;
	echo '<p class="lff-user-data-greeting">', $txt['hello_member_ndt'], ' <span>', $context['user']['name'], '</span></p>';
}

/**
 * Выводит количество непрочтенных сообщений.
 */
function renderUnread () {
	global $scripturl, $txt;
	echo '<li><a href="', $scripturl, '?action=unread">', $txt['unread_since_visit'], '</a></li>';
}

/**
 * Выводит количество непрочтенных ответов.
 */
function renderUnreadReplies () {
	global $scripturl, $txt;
	echo '<li><a href="', $scripturl, '?action=unreadreplies">', $txt['show_unread_replies'], '</a></li>';
}

/**
 * Выводит сообщение о проводящихся в текущий момент работах на форуме.
 */
function renderMaintenanceNotice () {
	global $context, $txt;

	if ($context['in_maintenance'] && $context['user']['is_admin']) {
		echo '<li class="notice">', $txt['maintain_mode_on'], '</li>';
	}
}

/**
 * Выводит сообщение о наличии неподтвержденных учетных записях.
 */
function renderUnapprovedMembersNotice () {
	global $context, $scripturl, $txt;

	if (!empty($context['unapproved_members'])) {
		$isPlural = $context['unapproved_members'] == 1;
		$textBeforeLink = $isPlural ? $txt['approve_thereis'] : $txt['approve_thereare'];
		$textAfterLink = $txt['approve_members_waiting'];
		$textInsideLink = $isPlural ? $txt['approve_member'] : $context['unapproved_members'] . ' ' . $txt['approve_members'];

		$link = ' <a href="' . $scripturl . '?action=admin;area=viewmembers;sa=browse;type=approve">' . $textInsideLink . '</a> ';

		echo '<li>', $textBeforeLink, $link, $textAfterLink, '</li>';
	}
}

/**
 * Выводит уведомление о модерации.
 */
function renderOpenModerationReportsNotice () {
	global $context, $scripturl, $txt;

	if (!empty($context['open_mod_reports']) && $context['show_open_reports']) {
		$linkText = sprintf($txt['mod_reports_waiting'], $context['open_mod_reports']);
		echo '<li><a href="', $scripturl, '?action=moderate;area=reports">', $linkText, '</a></li>';
	}
}

/**
 * Выводит текущее время.
 */
function renderCurrentTime() {
	global $context;
	echo '<li>', $context['current_time'], '</li>';
}

/**
 * Выводит для авторизованного пользователя его изображение, приветствие и базовую информацию: количество непрочтенных, уведомления
 * о работах, о неподтвержденных пользовтелях, о модерации и время.
 */
function renderUserData () {
	global $context;

	if ($context['user']['is_logged']) {
		echo '<div class="lff-user-data">';

		renderAvatar();

		echo '<div>';

		renderGreeting();

		echo '<ul class="lff-user-data-links">';

		renderUnread();
		renderUnreadReplies();
		renderMaintenanceNotice();
		renderUnapprovedMembersNotice();
		renderOpenModerationReportsNotice();
		renderCurrentTime();

		echo '</ul>';

		echo '</div>';

		echo '</div>';
	}
}

/**
 * Выводит форму авторизации и ссылку на страницу регистрации.
 */
function renderLoginForm () {
	global $context, $scripturl, $settings, $txt;

	if (!$context['user']['is_logged'] && !empty($context['show_login_bar'])) {
		echo '<script type="text/javascript" src="', $settings['default_theme_url'], '/scripts/sha1.js"></script>';

		$action = $scripturl . '?action=login2';
		$onSubmit = empty($context['disable_login_hashing']) ? ' onsubmit="hashLoginPassword(this, \'' . $context['session_id'] . '\');"' : '';

		echo '<form class="lff-form" action="', $action, '" method="post" accept-charset="', $context['character_set'], '" ', $onSubmit, '>';
		echo '<div class="lff-form-text">', sprintf($txt['welcome_guest'], $txt['guest_title']), '</div>';
		echo '<input type="text" name="user" size="10" />';
		echo '<input type="password" name="passwrd" size="10" />';
		echo '<select name="cookielength">
				<option value="60">', $txt['one_hour'], '</option>
				<option value="1440">', $txt['one_day'], '</option>
				<option value="10080">', $txt['one_week'], '</option>
				<option value="43200">', $txt['one_month'], '</option>
				<option value="-1" selected="selected">', $txt['forever'], '</option>
			  </select>';
		echo '<input type="submit" value="', $txt['login'], '" />';
		// константа намеренно сделана пустой в локализации
		// echo '<div class="lff-form-text">', $txt['quick_login_dec'], '</div>';

		if (!empty($modSettings['enableOpenID'])) {
			echo '<br /><input type="text" name="openid_identifier" id="openid_url" size="25" class="lff-form-openid-login" />';
		}

		if (empty($context['disable_login_hashing'])) {
			echo '<input type="hidden" name="hash_passwrd" value="" />';
			echo '<input type="hidden" name="', $context['session_var'], '" value="', $context['session_id'], '" />';
		}

		echo '</form>';
	}
}

/**
 * Выводит пользовательский блок: информацию для авторизованного пользователя, форму авторизации - для не авторизованного.
 */
function renderUserBlock () {
	renderUserData();
	renderLoginForm();
}

/**
 * Выводит форму поиска.
 */
function renderSearch () {
	global $context, $scripturl, $txt;

	$action = $scripturl . '?action=search2';

	echo '<form action="', $action, '" method="post" accept-charset="', $context['character_set'], '">';
	echo '<input type="text" name="search" value="" />';
	echo '<input type="submit" name="submit" value="', $txt['search'], '" />';
	echo '<input type="hidden" name="advanced" value="0" />';

	if (!empty($context['current_topic'])) {
		// если поиск внутри темы, нужно вывести дополнительное скрытое поле ввода с идентификатором темы
		echo '<input type="hidden" name="topic" value="', $context['current_topic'], '" />';
	} elseif (!empty($context['current_board'])) {
		// если поиск по доске, нужно вывести дополнительное скрытое поле ввода с идентификатором доски
		echo '<input type="hidden" name="brd[', $context['current_board'], ']" value="', $context['current_board'], '" />';
	}

	echo '</form>';
}

/**
 * Выводит блок новостей.
 */
function renderRandomNews () {
	global $context, $settings, $txt;
	
	if (!empty($settings['enable_news'])) {
		echo '<div class="lff-random-news">';
		echo '<h2>', $txt['news'], ':</h2>';
		echo '<p>', $context['random_news_line'], '</p>';
		echo '</div>';
	}
}

/**
 * Выводит блок с поиском и новостями.
 */
function renderSearchAndNews () {
	echo '<div class="lff-search-and-news">';

	renderSearch();
	renderRandomNews();

	echo '</div>';
}

/**
 * Выводит верхний раздел: форма авторизации, информация об авторизованном пользователе, форма поиска и блок случайной новости.
 */
function renderUpperSection () {
	global $options;

	// для авторизованных пользователей можем сразу скрыть сворачиваемый блок;
	// для неавторизованных используем JavaScript-компонент для этих целей
	echo '<div class="lff-upper-section" id="upper_section"', empty($options['collapseHeader']) ? '' : ' style="display: none;"', '>';

	renderUserBlock();
	renderSearchAndNews();

	echo '</div>';
}

/**
 * Выводит ссылку на магазин поддержки.
 */
function renderShopLink () {
	echo '<div class="lff-shop-link"><a href="https://shop.lastfrontier.ru/" target="_blank">Магазин поддержки</a></div>';
}

/**
 * Выводит простой разделитель.
 */
function renderBrSeparator () {
	echo '<br class="clear" />';
}

/**
 * Выводит код JavaScript для обеспечения сворачивания верхнего блока.
 */
function renderToggleJs () {
	global $context, $options, $txt;

	// идентификатор кнопки, для которой создается JS-представоление;
	// должен совпадать с тем, что используется в функции renderCollapseUpperSectionButton
	$id = 'upperSectionToggle';

	// идентификатор сворачиваемого контейнера;
	// должен совпадать с тем, что используется в функции renderUpperSection
	$container = 'upper_section';

	// название настройки, которая будет использоваться для сохранения состояния сворачиваемого блока в БД;
	// должно совпадать с тем, что используется в функции renderUpperSection
	$optionName = 'collapseHeader';

	// получение состояния блока из БД, если оно там есть
	$collapsed = empty($options[$optionName]) ? 'false' : 'true';
	// указание на то, что надо использовать Cookie вместо БД для получения состояния сворачиваемого блока;
	// для неавторизованных пользователей состояние получается из Cookie
	$useCookie = $context['user']['is_guest'] ? 'true' : 'false';
	// указание на то, что надо использовать БД вместо Cookie для получения состояния сворачиваемого блока;
	// для авторизованных пользователей состояние получается из БД
	$themeOptionsEnabled = $context['user']['is_guest'] ? 'false' : 'true';

	// вывод JavaScript-кода, который создает JS-представление кнопки сворачивания-разворачивания верхнего блока
	echo '
		<script>
			new SectionToggle({
				button: {
					id: \'', $id, '\',
					titleCollapsed: ', JavaScriptEscape($txt['upshrink_expand']), ',
					titleExpanded: ', JavaScriptEscape($txt['upshrink_collapse']), '
				},
				collapsed: ', $collapsed, ',
				collapsedClassName: \'lff-toggle-section_collapsed\',
				container: \'', $container, '\',
				cookie: {
					enabled: ', $useCookie, ',
					name: \'sectionToggle\'
				},
				themeOptions: {
					enabled: \'', $themeOptionsEnabled, '\',
					optionName: \'', $optionName, '\',
					sessionId: ', JavaScriptEscape($context['session_id']), ',
					sessionVar: ', JavaScriptEscape($context['session_var']), ',
				}
			});
		</script>';
}

/**
 * Выводи шапку форума: логотип, пользовательский блок, ссылку на магазин, меню.
 */
function renderHeader () {
	echo '<div id="header" class="lff-header">';

	renderTopSection();	
	renderUpperSection();
	renderShopLink();
	renderBrSeparator();
	renderToggleJs();

	// вывод меню (Show the menu here, according to the menu sub template.)
	template_menu();

	renderBrSeparator();

	echo '</div>';
}

function template_body_above() {
	global $settings;

	$style = empty($settings['forum_width']) ? '' : ' style="width: ' . $settings['forum_width'] . ';"';
	echo '<div id="wrapper" class="lff-container"' . $style . '>';
	
	renderHeader();

	// The main content should go here.
	echo '
	<div id="content_section"><div class="frame">
		<div id="main_content_section">';

	// Custom banners and shoutboxes should be placed here, before the linktree.

	// Show the navigation tree.
	theme_linktree();
}

function template_body_below()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings;

	echo '
		</div>
	</div></div>';

	// Show the "Powered by" and "Valid" logos, as well as the copyright. Remember, the copyright must be somewhere!
	echo '
	<div id="footer_section"><div class="frame">
		<ul class="reset">
			<li class="copyright">', theme_copyright(), '</li>
			<li><a id="button_xhtml" href="http://validator.w3.org/check?uri=referer" target="_blank" class="new_win" title="', $txt['valid_xhtml'], '"><span>', $txt['xhtml'], '</span></a></li>
			', !empty($modSettings['xmlnews_enable']) && (!empty($modSettings['allow_guestAccess']) || $context['user']['is_logged']) ? '<li><a id="button_rss" href="' . $scripturl . '?action=.xml;type=rss" class="new_win"><span>' . $txt['rss'] . '</span></a></li>' : '', '
			<li class="last"><a id="button_wap2" href="', $scripturl , '?wap2" class="new_win"><span>', $txt['wap2'], '</span></a></li>
		</ul>';

	// Show the load time?
	if ($context['show_load_time'])
		echo '
		<p>', $txt['page_created'], $context['load_time'], $txt['seconds_with'], $context['load_queries'], $txt['queries'], '</p>';

	echo '
	</div></div>', '</div>';
}

function template_html_below()
{
	global $context, $settings, $options, $scripturl, $txt, $modSettings;

	echo '
</body></html>';
}

// Show a linktree. This is that thing that shows "My Community | General Category | General Discussion"..
function theme_linktree($force_show = false)
{
	global $context, $settings, $options, $shown_linktree;

	// If linktree is empty, just return - also allow an override.
	if (empty($context['linktree']) || (!empty($context['dont_default_linktree']) && !$force_show))
		return;

	echo '
	<div class="navigate_section">
		<ul>';

	// Each tree item has a URL and name. Some may have extra_before and extra_after.
	foreach ($context['linktree'] as $link_num => $tree)
	{
		echo '
			<li', ($link_num == count($context['linktree']) - 1) ? ' class="last"' : '', '>';

		// Show something before the link?
		if (isset($tree['extra_before']))
			echo $tree['extra_before'];

		// Show the link, including a URL if it should have one.
		echo $settings['linktree_link'] && isset($tree['url']) ? '
				<a href="' . $tree['url'] . '"><span>' . $tree['name'] . '</span></a>' : '<span>' . $tree['name'] . '</span>';

		// Show something after the link...?
		if (isset($tree['extra_after']))
			echo $tree['extra_after'];

		// Don't show a separator for the last one.
		if ($link_num != count($context['linktree']) - 1)
			echo ' &#187;';

		echo '
			</li>';
	}
	echo '
		</ul>
	</div>';

	$shown_linktree = true;
}

// Show the menu up top. Something like [home] [help] [profile] [logout]...
function template_menu()
{
	global $context, $settings, $options, $scripturl, $txt;

	echo '
		<div id="main_menu">
			<ul class="dropmenu" id="menu_nav">';

	foreach ($context['menu_buttons'] as $act => $button)
	{
		echo '
				<li id="button_', $act, '">
					<a class="', $button['active_button'] ? 'active ' : '', 'firstlevel" href="', $button['href'], '"', isset($button['target']) ? ' target="' . $button['target'] . '"' : '', '>
						<span class="', isset($button['is_last']) ? 'last ' : '', 'firstlevel">', $button['title'], '</span>
					</a>';
		if (!empty($button['sub_buttons']))
		{
			echo '
					<ul>';

			foreach ($button['sub_buttons'] as $childbutton)
			{
				echo '
						<li>
							<a href="', $childbutton['href'], '"', isset($childbutton['target']) ? ' target="' . $childbutton['target'] . '"' : '', '>
								<span', isset($childbutton['is_last']) ? ' class="last"' : '', '>', $childbutton['title'], !empty($childbutton['sub_buttons']) ? '...' : '', '</span>
							</a>';
				// 3rd level menus :)
				if (!empty($childbutton['sub_buttons']))
				{
					echo '
							<ul>';

					foreach ($childbutton['sub_buttons'] as $grandchildbutton)
						echo '
								<li>
									<a href="', $grandchildbutton['href'], '"', isset($grandchildbutton['target']) ? ' target="' . $grandchildbutton['target'] . '"' : '', '>
										<span', isset($grandchildbutton['is_last']) ? ' class="last"' : '', '>', $grandchildbutton['title'], '</span>
									</a>
								</li>';

					echo '
							</ul>';
				}

				echo '
						</li>';
			}
				echo '
					</ul>';
		}
		echo '
				</li>';
	}

	echo '
			</ul>
		</div>';
}

// Generate a strip of buttons.
function template_button_strip($button_strip, $direction = 'top', $strip_options = array())
{
	global $settings, $context, $txt, $scripturl;

	if (!is_array($strip_options))
		$strip_options = array();

	// List the buttons in reverse order for RTL languages.
	if ($context['right_to_left'])
		$button_strip = array_reverse($button_strip, true);

	// Create the buttons...
	$buttons = array();
	foreach ($button_strip as $key => $value)
	{
		if (!isset($value['test']) || !empty($context[$value['test']]))
			$buttons[] = '
				<li><a' . (isset($value['id']) ? ' id="button_strip_' . $value['id'] . '"' : '') . ' class="button_strip_' . $key . (isset($value['active']) ? ' active' : '') . '" href="' . $value['url'] . '"' . (isset($value['custom']) ? ' ' . $value['custom'] : '') . '><span>' . $txt[$value['text']] . '</span></a></li>';
	}

	// No buttons? No button strip either.
	if (empty($buttons))
		return;

	// Make the last one, as easy as possible.
	$buttons[count($buttons) - 1] = str_replace('<span>', '<span class="last">', $buttons[count($buttons) - 1]);

	echo '
		<div class="buttonlist', !empty($direction) ? ' float' . $direction : '', '"', (empty($buttons) ? ' style="display: none;"' : ''), (!empty($strip_options['id']) ? ' id="' . $strip_options['id'] . '"': ''), '>
			<ul>',
				implode('', $buttons), '
			</ul>
		</div>';
}

?>