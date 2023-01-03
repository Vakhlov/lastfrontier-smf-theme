<?php
/**
 * Simple Machines Forum (SMF)
 *
 * @package SMF
 * @author Simple Machines
 * @copyright 2011 Simple Machines
 * @license http://www.simplemachines.org/about/smf/license.php BSD
 *
 * @version 2.0
 */

/**
 * Выводит название категории. Если категория сворачиваемая, название выводится как ссылка.
 */
function renderCategoryName ($category) {
	echo '<h3>';

	if ($category['can_collapse']) {
		echo '<a href="', $category['collapse_href'], '" id="c', $category['id'], '">', $category['name'], '</a>';
	} else {
		echo $category['name'];
	}

	echo '</h3>';
}

/**
 * Для авторизовавшихся пользователей при определенной настройке выводится ссылка "Непрочитанные сообщения".
 */
function renderUnreadLink ($category) {
	global $context, $scripturl, $txt;

	if (!$context['user']['is_guest'] && !empty($category['show_unread'])) {
		$href = $scripturl . '?action=unread;c=' . $category['id'];
		echo '<a href="', $href, '" class="lff-category-unreadlink">', $txt['view_unread_category'], '</a>';
	}
}

/**
 * Кнопка сворачивания категории.
 */
function renderCollapseCategoryLink ($category) {
	// если категорию можно свернуть, выводится кнопка для этого
	if ($category['can_collapse']) {
		echo '<a href="', $category['collapse_href'], '" class="lff-category-collapse">', $category['collapse_image'], '</a>';
	}
}

/**
 * Выводит заголовок категории.
 */
function renderCategoryHeader ($category) {
	echo '<tbody class="lff-category-header" id="category_', $category['id'], '">';
	echo '<tr>';
	echo '<td colspan="4">';
	echo '<div class="lff-category-header-content">';

	renderCategoryName($category);
	renderUnreadLink($category);
	renderCollapseCategoryLink($category);

	echo '</div>';
	echo '</td>';
	echo '</tr>';
	echo '</tbody>';
}

/**
 * Выводит ссылку на доску и иконку-индикатор новых сообщений или перенаправления.
 */
function renderBoardIconAndLink ($board) {
	global $context, $settings, $txt, $scripturl;

	echo '<td class="lff-board-icon"', !empty($board['children']) ? ' rowspan="2"' : '', '>';

	// если доска - перенаправление или если пользователь не авторизован - используется ссылка на доску
	// в остальных случаях - ссылка на непрочитанные
	$href = $board['is_redirect'] || $context['user']['is_guest'] ? $board['href'] : $scripturl . '?action=unread;board=' . $board['id'] . '.0;children';
	echo '<a href="', $href, '">';

	$src = $settings['images_url'] . '/' . $context['theme_variant_url'];
	$alt = '*';
	$title = '*';
	$width = 38;

	if ($board['new'] || $board['children_new']) {
		// если доска новая или есть дочерние доски новые, выводится индикатор "новые сообщения"
		$src .= 'on' . ($board['new'] ? '' : '2') . '.png';
		$alt = $txt['new_posts'];
		$title = $txt['new_posts'];
		$height = $board['new'] ? 41 : 42;
	} elseif ($board['is_redirect']) {
		// если доска - перенаправление, выводится соответствующий индикатор
		$src .= 'redirect.png';
		$height = 42;
	} else {
		// если новых сообщений нет, выводится индикатор "нет новых сообщений"
		$src .= 'off.png';
		$alt = $txt['old_posts'];
		$title = $txt['old_posts'];
		$height = 41;
	}

	echo '<img src="', $src, '" alt="', $alt, '" title="', $title, '" width="', $width, '" height="', $height, '" />';

	echo '</a>';
	echo '</td>';
}

/**
 * Выводит название и описание доски, ссылку на сообщения к модерации, перечень модераторов.
 */
function renderBoardInfo ($board) {
	global $context, $txt, $scripturl;

	echo '<td class="lff-board-info">';
	// ссылка на доску
	echo '<a class="lff-board-info-subject" href="', $board['href'], '" name="b', $board['id'], '">', $board['name'], '</a>';

	// ссылка на сообщения, ожидающие модерации
	if ($board['can_approve_posts'] && ($board['unapproved_posts'] || $board['unapproved_topics'])) {
		$params = [
			'action=moderate',
			'area=postmod',
			'sa=' . ($board['unapproved_topics'] > 0 ? 'topics' : 'posts'),
			'brd=' . $board['id'],
			$context['session_var'] . '=' . $context['session_id']
		];
		$href = $scripturl . '?' . implode(';', $params);
		$title = sprintf($txt['unapproved_posts'], $board['unapproved_topics'], $board['unapproved_posts']);
		echo '<a href="', $href, '" title="', $title, '" class="lff-board-info-moderation-link">(!)</a>';
	}

	// описание доски
	echo '<p class="lff-board-info-description">', $board['description'] , '</p>';

	// список модераторов; у каждого есть свойства `name`, `href` и `id`, но для скорости используется `link_moderators`
	if (!empty($board['moderators'])) {
		echo '<p class="lff-board-info-moderators">', count($board['moderators']) == 1 ? $txt['moderator'] : $txt['moderators'], ': ', implode(', ', $board['link_moderators']), '</p>';
	}

	echo '</td>';
}

/**
 * Выводит статистику доски: число сообщений или перенаправлений, число тем.
 */
function renderBoardStats ($board) {
	global $txt;

	$posts = comma_format($board['posts']) . ' ' . ($board['is_redirect'] ? $txt['redirects'] : $txt['posts']);
	$topics = $board['is_redirect'] ? '' : (comma_format($board['topics']) . ' ' . $txt['board_topics']);

	echo '<td class="lff-board-stats">';
	echo '<p>', $posts, ' <br />', $topics, '</p>';
	echo '</td>';
}

/**
 * Выводит информацию о последнем сообщении доски.
 */
function renderBoardLastPostInfo ($board) {
	global $txt;

	echo '<td class="lff-board-lastpost">';

	/* The board's and children's 'last_post's have:
	time, timestamp (a number that represents the time.), id (of the post), topic (topic id.),
	link, href, subject, start (where they should go for the first unread post.),
	and member. (which has id, name, link, href, username in it.) */
	if (!empty($board['last_post']['id'])) {
		echo '
			<p><strong>', $txt['last_post'], '</strong>  ', $txt['by'], ' ', $board['last_post']['member']['link'] , '<br />
			', $txt['in'], ' ', $board['last_post']['link'], '<br />
			', $txt['on'], ' ', $board['last_post']['time'],'
			</p>';
	}

	echo '</td>';
}

/**
 * Возвращает ссылку на непрочитанные сообщения дочерней доски.
 */
function getChildBoardUnreadPostsLink ($board) {
	global $scripturl, $settings, $txt;

	if ($board['new']) {
		$href = $scripturl . '?action=unread;board=' . $board['id'];
		$topics = $txt['board_topics'] . ': ' . comma_format($board['topics']);
		$posts = $txt['posts'] . ': ' . comma_format($board['posts']);
		$title =  $txt['new_posts'] . ' (' . $topics . ', ' . $posts . ')';
		$icon = '<img src="' . $settings['lang_images_url'] . '/new.gif" alt="" />';

		// пробел в начале нужен для разделения ссылок (перед этой ссылкой есть еще одна)
		return ' <a href="' . $href . '" title="' . $title . '">' . $icon . '</a>';
	}

	return '';
}

/**
 * Возвращает ссылку на модерацию записей.
 */
function getChildBoardModerationLink ($board) {
	global $context, $scripturl, $txt;

	if ($board['can_approve_posts'] && ($board['unapproved_posts'] || $board['unapproved_topics'])) {
		$params = [
			'action=moderate',
			'area=postmod',
			'sa=' . ($board['unapproved_topics'] > 0 ? 'topics' : 'posts'),
			'brd=' . $board['id'],
			$context['session_var'] . '=' . $context['session_id']
		];
		$href = $scripturl . '?' . implode(';', $params);
		$title = sprintf($txt['unapproved_posts'], $board['unapproved_topics'], $board['unapproved_posts']);
		$className = 'lff-board-children-moderation-link';

		// пробел в начале нужен для разделения ссылок (перед этой ссылкой есть еще одна)
		return ' <a href="' . $href . '" title="' . $title . '" class="' . $className . '">(!)</a>';
	}

	return '';
}

/**
 * Выводит информацию о дочерних досках.
 *
 * У каждой дочерней доски есть:
 * - id,
 * - name,
 * - description,
 * - new,
 * - topics (#),
 * - posts (#),
 * - href,
 * - link,
 * - last_post
 */
function renderChildBoardsInfo ($board) {
	global $context, $scripturl, $settings, $txt;

	if (!empty($board['children'])) {
		$children = array();

		foreach ($board['children'] as $child) {
			if (!$child['is_redirect']) {
				if ($child['new']) {
					$className = 'class="lff-board-children-new-posts" ';
					$title = $txt['new_posts'];
				} else {
					$className = '';
					$title = $txt['old_posts'];
				}

				$title = ' (' . $txt['board_topics'] . ': ' . comma_format($child['topics']) . ', ' . $txt['posts'] . ': ' . comma_format($child['posts']) . ')';

				$child['link'] = '<a href="' . $child['href'] . '" ' . $className . 'title="' . $title . '">' . $child['name'] . '</a>';
				$child['link'] .= getChildBoardUnreadPostsLink($child);
			} else {
				$title = comma_format($child['posts']) . ' ' . $txt['redirects'];
				$child['link'] = '<a href="' . $child['href'] . '" title="' . $title . '">' . $child['name'] . '</a>';
			}

			$child['link'] .= getChildBoardModerationLink($child);

			$children[] = $child['new'] ? '<strong>' . $child['link'] . '</strong>' : $child['link'];
		}

		echo '<tr id="board_', $board['id'], '_children">';
		echo '<td colspan="3" class="lff-board-children">';
		echo '<strong>', $txt['parent_boards'], '</strong>: ', implode(', ', $children);
		echo '</td>';
		echo '</tr>';
	}
}

/**
 * Выводит доски категории. Каждая доска состоит из:
 * - new,
 * - id,
 * - name,
 * - description,
 * - moderators,
 * - link_moderators,
 * - children,
 * - link_children,
 * - children_new,
 * - topics,
 * - posts,
 * - link,
 * - href,
 * - last_post.
 */
function renderCategoryBoards ($category) {
	// доски выводятся только у несвернутых категорий
	if (!$category['is_collapsed']) {
		echo '<tbody id="category_', $category['id'], '_boards">';

		foreach ($category['boards'] as $board) {
			echo '<tr class="lff-category-board" id="board_', $board['id'], '">';

			renderBoardIconAndLink($board);
			renderBoardInfo($board);
			renderBoardStats($board);
			renderBoardLastPostInfo($board);

			echo '</tr>';

			renderChildBoardsInfo($board);
		}

		echo '</tbody>';
	}
}

/**
 * Выводит разделитель между категориями.
 */
function renderCategoryDivider () {
	echo '<tbody class="lff-categoies-divider"><tr><td colspan="4"></td></tr></tbody>';
}

/**
 * Выводит категории. Каждая категория состоит из:
 * - id,
 * - href,
 * - link,
 * - name,
 * - is_collapsed,
 * - can_collapse,
 * - new,
 * - collapse_href,
 * - collapse_image (up/down image),
 * - boards.
 */
function renderCategories () {
	global $context;

	echo '<table class="lff-categories">';

	foreach ($context['categories'] as $category)
	{
		// если в категории еще нет досок, она не выводится (кроме случая когда она свернута)
		if (empty($category['boards']) && !$category['is_collapsed']) {
			continue;
		}

		renderCategoryHeader($category);
		renderCategoryBoards($category);
		renderCategoryDivider();
	}

	echo '</table>';
}

/**
 * Выводит иконки из списка досок и описания их значений.
 */
function renderCetegoriesIconsLegend () {
	global $context, $settings, $txt;

	$imagesFolder = $settings['images_url'] . '/';
	$themePath = '';
	$newPostsIcon = '';

	if ($context['user']['is_logged']) {
		$themePath = $context['theme_variant_url'];
		$newPostsIcon = '<li><img src="' . $imagesFolder . $themePath . 'new_some.png" alt="" />' . $txt['new_posts'] . '</li>';
	}

	echo '<ul class="lff-icons-legend">';
	echo $newPostsIcon;
	echo '<li><img src="', $imagesFolder, $themePath, 'new_none.png" alt="" />', $txt['old_posts'], '</li>';
	echo '<li><img src="', $imagesFolder, $themePath, 'new_redirect.png" alt="" />', $txt['redirect_board'], '</li>';
	echo '</ul>';
}

/**
 * Выводит кнопку "Отметить все сообщения прочитанными".
 */
function renderMarkAllAsRead () {
	global $context, $scripturl, $settings;

	if ($context['user']['is_logged'] && $settings['show_mark_read'] && !empty($context['categories'])) {
		// набор кнопок и их свойств
		$buttonSet = array(
			'markread' => array(
				'text' => 'mark_as_read',
				'url' => $scripturl . '?action=markasread;sa=all;' . $context['session_var'] . '=' . $context['session_id']
			)
		);

		// вывод кнопки
		echo renderButtonSet($buttonSet);
	}
}

/**
 * Выводит общую статистику по форуму.
 */
function renderCommonStats () {
	global $context, $settings, $txt;

	// wtf?
	if (!$settings['show_stats_index']) {
		echo '<div class="lff-forum-common-stats">';
		// количество зарегистрированных пользователей
		echo '<p>';
		echo $txt['members'], ': ', $context['common_stats']['total_members'];
		echo ' &nbsp;&#8226;&nbsp; ';
		// количество сообщение
		echo $txt['posts_made'], ': ', $context['common_stats']['total_posts'];
		echo ' &nbsp;&#8226;&nbsp; ';
		// количество тем
		echo $txt['topics'], ': ', $context['common_stats']['total_topics'];
		echo '</p>';
		// последний зарегистрированный пользователь
		echo ($settings['show_latest_member'] ? '<p>' . $txt['welcome_member'] . ' <strong>' . $context['common_stats']['latest_member']['link'] . '</strong>' . $txt['newest_member'] . '</p>' : '');
		echo '</div>';
	}
}

/**
 * Выводит блок новостей.
 */
function renderNewsBlock () {
	global $context, $settings, $options, $txt;

	if ($settings['show_newsfader'] && !empty($context['fader_news_lines'])) {
		// идентификатор кнопки, для которой создается JS-представоление;
		// должен совпадать с тем, что используется в функции renderCollapseUpperSectionButton
		$collapseButtonId = 'newsBlockToggle';

		// идентификатор сворачиваемого контейнера;
		$container = 'smfFadeScroller';

		// название настройки, которая будет использоваться для сохранения состояния сворачиваемого блока в БД;
		$optionName = 'collapse_news_fader';

		// получение состояния блока из БД, если оно там есть
		$collapsed = empty($options[$optionName]) ? 'false' : 'true';
		// указание на то, что надо использовать Cookie вместо БД для получения состояния сворачиваемого блока;
		// для неавторизованных пользователей состояние получается из Cookie
		$useCookie = $context['user']['is_guest'] ? 'true' : 'false';
		// указание на то, что надо использовать БД вместо Cookie для получения состояния сворачиваемого блока;
		// для авторизованных пользователей состояние получается из БД
		$themeOptionsEnabled = $context['user']['is_guest'] ? 'false' : 'true';

		echo '<div class="lff-news-fader" id="newsfader">';
		echo '<div class="lff-news-fader-header">';
		echo '<h3>', $txt['news'], '</h3>';
		echo '<button class="lff-toggle-section" id="', $collapseButtonId, '" title="', $txt['upshrink_description'], '"><svg width="20" height="20"><use href="#shevron"/></svg></button>';
		echo '</div>';
		echo '<ul class="lff-news-scroller" id="', $container, '"', empty($options['collapse_news_fader']) ? '' : ' style="display: none;"', '>';

		foreach ($context['news_lines'] as $news) {
			echo '<li>', $news, '</li>';
		}

		echo '</ul>';
		echo '</div>';
		echo '<script type="text/javascript" src="', $settings['default_theme_url'], '/scripts/fader.js"></script>';
		echo '<script type="text/javascript"><!-- // --><![CDATA[
		// Create a news fader object.
		var oNewsFader = new smf_NewsFader({
			sSelf: \'oNewsFader\',
			sFaderControlId: \'smfFadeScroller\',
			sItemTemplate: ', JavaScriptEscape('<strong>%1$s</strong>'), ',
			iFadeDelay: ', empty($settings['newsfader_time']) ? 5000 : $settings['newsfader_time'], '
		});

		new SectionToggle({
			button: {
				id: \'', $collapseButtonId, '\',
				titleCollapsed: ', JavaScriptEscape($txt['upshrink_expand']), ',
				titleExpanded: ', JavaScriptEscape($txt['upshrink_collapse']), '
			},
			collapsed: ', $collapsed, ',
			collapsedClassName: \'lff-toggle-section_collapsed\',
			container: \'', $container, '\',
			cookie: {
				enabled: ', $useCookie, ',
				name: \'newsupshrink\'
			},
			themeOptions: {
				enabled: \'', $themeOptionsEnabled, '\',
				optionName: \'', $optionName, '\',
				sessionId: ', JavaScriptEscape($context['session_id']), ',
				sessionVar: ', JavaScriptEscape($context['session_var']), ',
			}
		});
		// ]]></script>';
	}
}

/**
 * Выводит подвал списка категорий.
 */
function renderCategoriesFooter () {
	echo '<div class="lff-categories-footer">';

	renderCetegoriesIconsLegend();
	renderMarkAllAsRead();

	echo '</div>';
}

/**
 * Выводит основное содержимое страницы.
 */
function template_main () {
	renderCommonStats();
	renderNewsBlock();
	renderCategories();
	renderCategoriesFooter();
	renderInfoCenter();
}

function renderRecentPosts () {
	global $context, $settings, $options, $txt, $scripturl, $modSettings;
	// This is the "Recent Posts" bar.
	if (!empty($settings['number_recent_posts']) && (!empty($context['latest_posts']) || !empty($context['latest_post'])))
	{
		echo '
			<div class="title_barIC">
				<h4 class="titlebg">
					<span class="ie6_header floatleft">
						<a href="', $scripturl, '?action=recent"><img class="icon" src="', $settings['images_url'], '/post/xx.gif" alt="', $txt['recent_posts'], '" /></a>
						', $txt['recent_posts'], '
					</span>
				</h4>
			</div>
			<div class="hslice" id="recent_posts_content">
				<div class="entry-title" style="display: none;">', $context['forum_name_html_safe'], ' - ', $txt['recent_posts'], '</div>
				<div class="entry-content" style="display: none;">
					<a rel="feedurl" href="', $scripturl, '?action=.xml;type=webslice">', $txt['subscribe_webslice'], '</a>
				</div>';

		// Only show one post.
		if ($settings['number_recent_posts'] == 1)
		{
			// latest_post has link, href, time, subject, short_subject (shortened with...), and topic. (its id.)
			echo '
				<strong><a href="', $scripturl, '?action=recent">', $txt['recent_posts'], '</a></strong>
				<p id="infocenter_onepost" class="middletext">
					', $txt['recent_view'], ' &quot;', $context['latest_post']['link'], '&quot; ', $txt['recent_updated'], ' (', $context['latest_post']['time'], ')<br />
				</p>';
		}
		// Show lots of posts.
		elseif (!empty($context['latest_posts']))
		{
			echo '
				<dl id="ic_recentposts" class="middletext">';

			/* Each post in latest_posts has:
					board (with an id, name, and link.), topic (the topic's id.), poster (with id, name, and link.),
					subject, short_subject (shortened with...), time, link, and href. */
			foreach ($context['latest_posts'] as $post)
				echo '
					<dt><strong>', $post['link'], '</strong> ', $txt['by'], ' ', $post['poster']['link'], ' (', $post['board']['link'], ')</dt>
					<dd>', $post['time'], '</dd>';
			echo '
				</dl>';
		}
		echo '
			</div>';
	}
}

function renderEvents () {
	global $context, $settings, $options, $txt, $scripturl, $modSettings;
	// Show information about events, birthdays, and holidays on the calendar.
	if ($context['show_calendar'])
	{
		echo '
			<div class="title_barIC">
				<h4 class="titlebg">
					<span class="ie6_header floatleft">
						<a href="', $scripturl, '?action=calendar' . '"><img class="icon" src="', $settings['images_url'], '/icons/calendar.gif', '" alt="', $context['calendar_only_today'] ? $txt['calendar_today'] : $txt['calendar_upcoming'], '" /></a>
						', $context['calendar_only_today'] ? $txt['calendar_today'] : $txt['calendar_upcoming'], '
					</span>
				</h4>
			</div>
			<p class="smalltext">';

		// Holidays like "Christmas", "Chanukah", and "We Love [Unknown] Day" :P.
		if (!empty($context['calendar_holidays']))
				echo '
				<span class="holiday">', $txt['calendar_prompt'], ' ', implode(', ', $context['calendar_holidays']), '</span><br />';

		// People's birthdays. Like mine. And yours, I guess. Kidding.
		if (!empty($context['calendar_birthdays']))
		{
				echo '
				<span class="birthday">', $context['calendar_only_today'] ? $txt['birthdays'] : $txt['birthdays_upcoming'], '</span> ';
		/* Each member in calendar_birthdays has:
				id, name (person), age (if they have one set?), is_last. (last in list?), and is_today (birthday is today?) */
		foreach ($context['calendar_birthdays'] as $member)
				echo '
				<a href="', $scripturl, '?action=profile;u=', $member['id'], '">', $member['is_today'] ? '<strong>' : '', $member['name'], $member['is_today'] ? '</strong>' : '', isset($member['age']) ? ' (' . $member['age'] . ')' : '', '</a>', $member['is_last'] ? '<br />' : ', ';
		}
		// Events like community get-togethers.
		if (!empty($context['calendar_events']))
		{
			echo '
				<span class="event">', $context['calendar_only_today'] ? $txt['events'] : $txt['events_upcoming'], '</span> ';
			/* Each event in calendar_events should have:
					title, href, is_last, can_edit (are they allowed?), modify_href, and is_today. */
			foreach ($context['calendar_events'] as $event)
				echo '
					', $event['can_edit'] ? '<a href="' . $event['modify_href'] . '" title="' . $txt['calendar_edit'] . '"><img src="' . $settings['images_url'] . '/icons/modify_small.gif" alt="*" /></a> ' : '', $event['href'] == '' ? '' : '<a href="' . $event['href'] . '">', $event['is_today'] ? '<strong>' . $event['title'] . '</strong>' : $event['title'], $event['href'] == '' ? '' : '</a>', $event['is_last'] ? '<br />' : ', ';
		}
		echo '
			</p>';
	}
}

function renderInfoCenterSubHeader ($linkedIcon, $text) {
	echo '<h4>';
	echo $linkedIcon;
	echo $text;
	echo '</h4>';
}

/**
 * Выводит расширенную статистику по форуму.
 */
function renderExtendedStats () {
	global $context, $settings, $options, $txt, $scripturl, $modSettings;

	if ($settings['show_stats_index']) {
		// иконка-ссылка в заголовке
		$href = $scripturl . '?action=stats';
		$src = $settings['images_url'] . '/icons/info.gif';
		$text = $txt['forum_stats'];
		$linkedIcon = '<a href="' . $href . '"><img src="' . $src . '" alt="' . $text . '" /></a>';

		// вывод заголовка
		renderInfoCenterSubHeader($linkedIcon, $text);

		// вывод содержимого
		// статистика (X сообщений в Y темах от Z пользователей)
		$posts = $context['common_stats']['total_posts'] . ' ' . $txt['posts_made'];
		$topics = $context['common_stats']['total_topics'] . ' ' . $txt['topics'];
		$users = $context['common_stats']['total_members'] . ' ' . $txt['members'];
		$totals = $posts . ' ' . $txt['in'] . ' ' . $topics . ' ' . $txt['by'] . ' ' . $users . '.';

		// последний пользователь
		$lastUser = !empty($settings['show_latest_member']) ? $txt['latest_member'] . ': <strong> ' . $context['common_stats']['latest_member']['link'] . '</strong>' : '';

		// последнее сообщение
		$latestPost = !empty($context['latest_post']) ? $txt['latest_post'] . ': <strong>&quot;' . $context['latest_post']['link'] . '&quot;</strong>  ( ' . $context['latest_post']['time'] . ' )' : '';

		// ссылка на страницу последних сообщений
		$recentPostsLink = '<a href="' . $scripturl . '?action=recent">' . $txt['recent_view'] . '</a>';

		// строки, которые надо вывести
		$lines = [
			$totals . ' ' . $lastUser,
			$latestPost,
			$recentPostsLink
		];

		// ссылка на страницу подробной статистики
		if ($context['show_stats']) {
			$lines[] = '<a href="' . $scripturl . '?action=stats">' . $txt['more_stats'] . '</a>';
		}

		echo '<p>' . implode('<br />', $lines) . '</p>';
	}
}

function renderPersonalMessages () {
	global $context, $settings, $options, $txt, $scripturl, $modSettings;
	// If they are logged in, but statistical information is off... show a personal message bar.
	if ($context['user']['is_logged'] && !$settings['show_stats_index'])
	{
		echo '
			<div class="title_barIC">
				<h4 class="titlebg">
					<span class="ie6_header floatleft">
						', $context['allow_pm'] ? '<a href="' . $scripturl . '?action=pm">' : '', '<img class="icon" src="', $settings['images_url'], '/message_sm.gif" alt="', $txt['personal_message'], '" />', $context['allow_pm'] ? '</a>' : '', '
						<span>', $txt['personal_message'], '</span>
					</span>
				</h4>
			</div>
			<p class="pminfo">
				<strong><a href="', $scripturl, '?action=pm">', $txt['personal_message'], '</a></strong>
				<span class="smalltext">
					', $txt['you_have'], ' ', comma_format($context['user']['messages']), ' ', $context['user']['messages'] == 1 ? $txt['message_lowercase'] : $txt['msg_alert_messages'], '.... ', $txt['click'], ' <a href="', $scripturl, '?action=pm">', $txt['here'], '</a> ', $txt['to_view'], '
				</span>
			</p>';
	}
}

/**
 * Выводит блок "Сейчас на форуме"
 */
function renderUsersOnline () {
	global $context, $settings, $options, $txt, $scripturl, $modSettings;

	// иконка-ссылка в заголовке
	$src = $settings['images_url'] . '/icons/online.gif';
	$text = $txt['online_users'];
	$linkedIcon = $img = '<img src="' . $src . '" alt="' . $text . '" />';

	if ($context['show_who']) {
		$href = $scripturl . '?action=who';
		$linkedIcon = '<a href="' . $href . '">' . $linkedIcon . '</a>';
	}

	// вывод заголовка
	renderInfoCenterSubHeader($linkedIcon, $text);

	// "X гостей, Y пользователей"
	echo '<p class="inline stats">';
	echo $context['show_who'] ? '<a href="' . $scripturl . '?action=who">' : '';
	echo comma_format($context['num_guests']), ' ', $context['num_guests'] == 1 ? $txt['guest'] : $txt['guests'], ', ' . comma_format($context['num_users_online']), ' ', $context['num_users_online'] == 1 ? $txt['user'] : $txt['users'];

	// скрытые пользователи и друзья
	$bracketList = array();
	if ($context['show_buddies']) {
		$bracketList[] = comma_format($context['num_buddies']) . ' ' . ($context['num_buddies'] == 1 ? $txt['buddy'] : $txt['buddies']);
	}

	if (!empty($context['num_spiders'])) {
		$bracketList[] = comma_format($context['num_spiders']) . ' ' . ($context['num_spiders'] == 1 ? $txt['spider'] : $txt['spiders']);
	}

	if (!empty($context['num_users_hidden'])) {
		$bracketList[] = comma_format($context['num_users_hidden']) . ' ' . $txt['hidden'];
	}

	if (!empty($bracketList)) {
		echo ' (' . implode(', ', $bracketList) . ')';
	}

	echo $context['show_who'] ? '</a>' : '';
	echo '</p>';

	// "пользователи за последние 15 минут"
	// у каждого пользователя в `users_online` есть `id`, `username`, `name`, `group`, `href` и `link`.
	if (!empty($context['users_online'])) {
		echo '<p class="inline smalltext">';
		echo sprintf($txt['users_active'], $modSettings['lastActive']), ':<br />', implode(', ', $context['list_users_online']);

		// при соответствующей настройке выводятся и группы пользователей
		if (!empty($settings['show_group_key']) && !empty($context['membergroups'])) {
			echo '<br />[' . implode(']&nbsp;&nbsp;[', $context['membergroups']) . ']';
		}

		echo '</p>';
	}

	// максимум пользователей онлайн за сегодня и за все время
	echo '<p class="last smalltext">';
	echo $txt['most_online_today'], ': <strong>', comma_format($modSettings['mostOnlineToday']), '</strong>. ';
	echo $txt['most_online_ever'], ': ', comma_format($modSettings['mostOnline']), ' (', timeformat($modSettings['mostDate']), ')';
	echo '</p>';
}


/**
 * 
 */
function renderInfoCenter() {
	global $context, $settings, $options, $txt, $scripturl, $modSettings;

	// идентификатор кнопки, для которой создается JS-представоление;
	$collapseButtonId = 'infoCenterToggle';

	// идентификатор сворачиваемого контейнера;
	$container = 'lffInfoCenterContent';

	// название настройки, которая будет использоваться для сохранения состояния сворачиваемого блока в БД;
	$optionName = 'collapse_header_ic';

	// получение состояния блока из БД, если оно там есть
	$collapsed = empty($options[$optionName]) ? 'false' : 'true';
	// указание на то, что надо использовать Cookie вместо БД для получения состояния сворачиваемого блока;
	// для неавторизованных пользователей состояние получается из Cookie
	$useCookie = $context['user']['is_guest'] ? 'true' : 'false';
	// указание на то, что надо использовать БД вместо Cookie для получения состояния сворачиваемого блока;
	// для авторизованных пользователей состояние получается из БД
	$themeOptionsEnabled = $context['user']['is_guest'] ? 'false' : 'true';

	echo '<div class="lff-info-center">';
	echo '<div class="lff-info-center-header">';
	echo '<h3>', sprintf($txt['info_center_title'], $context['forum_name_html_safe']), '</h3>';
	echo '<button class="lff-toggle-section" id="', $collapseButtonId, '" title="', $txt['upshrink_description'], '"><svg width="20" height="20"><use href="#shevron"/></svg></button>';
	echo '</div>';
	echo '<div class="lff-info-center-content" id="lffInfoCenterContent"', empty($options['collapse_header_ic']) ? '' : ' style="display: none;"', '>';

	// renderRecentPosts();
	// renderEvents();
	renderExtendedStats();

	renderUsersOnline();
	
	// renderPersonalMessages();

	echo '</div>';
	echo '</div>';

	echo '
	<script type="text/javascript">
		new SectionToggle({
			button: {
				id: \'', $collapseButtonId, '\',
				titleCollapsed: ', JavaScriptEscape($txt['upshrink_expand']), ',
				titleExpanded: ', JavaScriptEscape($txt['upshrink_collapse']), '
			},
			collapsed: ', $collapsed, ',
			collapsedClassName: \'lff-toggle-section_collapsed\',
			container: \'', $container, '\',
			cookie: {
				enabled: ', $useCookie, ',
				name: \'upshrinkIC\'
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
?>