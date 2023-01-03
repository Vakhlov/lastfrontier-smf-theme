-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 31 2022 г., 07:09
-- Версия сервера: 1.0.118
-- Версия PHP: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `lff`
--

-- --------------------------------------------------------

--
-- Структура таблицы `smf_admin_info_files`
--

CREATE TABLE IF NOT EXISTS `smf_admin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_file`),
  KEY `filename` (`filename`(30))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `smf_admin_info_files`
--

INSERT INTO `smf_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(1, 'current-version.js', '/smf/', 'version=%3$s', 'window.smfVersion = "SMF 2.0.19";', 'text/javascript'),
(2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfVersions = {\n	''SMF'': ''SMF 2.0.19'',\n	''SourcesAdmin.php'': ''2.0.16'',\n	''SourcesAgreement.php'': ''2.0.18'',\n	''SourcesBoardIndex.php'': ''2.0'',\n	''SourcesCalendar.php'': ''2.0.12'',\n	''SourcesClass-CurlFetchWeb.php'': ''2.0.16'',\n	''SourcesClass-Graphics.php'': ''2.0.18'',\n	''SourcesClass-Package.php'': ''2.0.8'',\n	''SourcesDbExtra-mysql.php'': ''2.0.18'',\n	''SourcesDbExtra-postgresql.php'': ''2.0.15'',\n	''SourcesDbExtra-sqlite.php'': ''2.0.15'',\n	''SourcesDbPackages-mysql.php'': ''2.0.15'',\n	''SourcesDbPackages-postgresql.php'': ''2.0.10'',\n	''SourcesDbPackages-sqlite.php'': ''2.0'',\n	''SourcesDbSearch-mysql.php'': ''2.0'',\n	''SourcesDbSearch-postgresql.php'': ''2.0.7'',\n	''SourcesDbSearch-sqlite.php'': ''2.0.7'',\n	''SourcesDisplay.php'': ''2.0.18'',\n	''SourcesDumpDatabase.php'': ''2.0'',\n	''SourcesErrors.php'': ''2.0.19'',\n	''SourcesGroups.php'': ''2.0.18'',\n	''SourcesHelp.php'': ''2.0.16'',\n	''SourcesKarma.php'': ''2.0'',\n	''SourcesLoad.php'': ''2.0.19'',\n	''SourcesLockTopic.php'': ''2.0'',\n	''SourcesLogInOut.php'': ''2.0.14'',\n	''SourcesManageAttachments.php'': ''2.0.18'',\n	''SourcesManageBans.php'': ''2.0.18'',\n	''SourcesManageBoards.php'': ''2.0'',\n	''SourcesManageCalendar.php'': ''2.0.18'',\n	''SourcesManageErrors.php'': ''2.0.18'',\n	''SourcesManageMail.php'': ''2.0.18'',\n	''SourcesManageMaintenance.php'': ''2.0.19'',\n	''SourcesManageMembergroups.php'': ''2.0.18'',\n	''SourcesManageMembers.php'': ''2.0.18'',\n	''SourcesManageNews.php'': ''2.0.16'',\n	''SourcesManagePaid.php'': ''2.0.18'',\n	''SourcesManagePermissions.php'': ''2.0'',\n	''SourcesManagePosts.php'': ''2.0.12'',\n	''SourcesManageRegistration.php'': ''2.0.18'',\n	''SourcesManageScheduledTasks.php'': ''2.0.18'',\n	''SourcesManageSearch.php'': ''2.0.16'',\n	''SourcesManageSearchEngines.php'': ''2.0.18'',\n	''SourcesManageServer.php'': ''2.0.18'',\n	''SourcesManageSettings.php'': ''2.0.18'',\n	''SourcesManageSmileys.php'': ''2.0.18'',\n	''SourcesMemberlist.php'': ''2.0.18'',\n	''SourcesMessageIndex.php'': ''2.0.2'',\n	''SourcesModerationCenter.php'': ''2.0.19'',\n	''SourcesModlog.php'': ''2.0.18'',\n	''SourcesMoveTopic.php'': ''2.0'',\n	''SourcesNews.php'': ''2.0.19'',\n	''SourcesNotify.php'': ''2.0.16'',\n	''SourcesPackageGet.php'': ''2.0.13'',\n	''SourcesPackages.php'': ''2.0.18'',\n	''SourcesPersonalMessage.php'': ''2.0.16'',\n	''SourcesPoll.php'': ''2.0.16'',\n	''SourcesPost.php'': ''2.0.18'',\n	''SourcesPostModeration.php'': ''2.0'',\n	''SourcesPrintpage.php'': ''2.0'',\n	''SourcesProfile-Actions.php'': ''2.0.14'',\n	''SourcesProfile-Modify.php'': ''2.0.19'',\n	''SourcesProfile-View.php'': ''2.0.18'',\n	''SourcesProfile.php'': ''2.0.16'',\n	''SourcesQueryString.php'': ''2.0.19'',\n	''SourcesRecent.php'': ''2.0.16'',\n	''SourcesRegister.php'': ''2.0.18'',\n	''SourcesReminder.php'': ''2.0.14'',\n	''SourcesRemoveTopic.php'': ''2.0.19'',\n	''SourcesRepairBoards.php'': ''2.0.19'',\n	''SourcesReports.php'': ''2.0'',\n	''SourcesSSI.php'': ''2.0.18'',\n	''SourcesScheduledTasks.php'': ''2.0.19'',\n	''SourcesSearch.php'': ''2.0.19'',\n	''SourcesSearchAPI-Custom.php'': ''2.0.15'',\n	''SourcesSearchAPI-Fulltext.php'': ''2.0.16'',\n	''SourcesSearchAPI-Standard.php'': ''2.0'',\n	''SourcesSecurity.php'': ''2.0.16'',\n	''SourcesSendTopic.php'': ''2.0.15'',\n	''SourcesSplitTopics.php'': ''2.0.14'',\n	''SourcesStats.php'': ''2.0.15'',\n	''SourcesSubs-Admin.php'': ''2.0.19'',\n	''SourcesSubs-Auth.php'': ''2.0.18'',\n	''SourcesSubs-BoardIndex.php'': ''2.0.16'',\n	''SourcesSubs-Boards.php'': ''2.0.15'',\n	''SourcesSubs-Calendar.php'': ''2.0'',\n	''SourcesSubs-Categories.php'': ''2.0'',\n	''SourcesSubs-Charset.php'': ''2.0.12'',\n	''SourcesSubs-Compat.php'': ''2.0.18'',\n	''SourcesSubs-Db-mysql.php'': ''2.0.19'',\n	''SourcesSubs-Db-postgresql.php'': ''2.0.19'',\n	''SourcesSubs-Db-sqlite.php'': ''2.0.16'',\n	''SourcesSubs-Editor.php'': ''2.0.18'',\n	''SourcesSubs-Graphics.php'': ''2.0.19'',\n	''SourcesSubs-List.php'': ''2.0'',\n	''SourcesSubs-Membergroups.php'': ''2.0'',\n	''SourcesSubs-Members.php'': ''2.0.18'',\n	''SourcesSubs-MembersOnline.php'': ''2.0.12'',\n	''SourcesSubs-Menu.php'': ''2.0.12'',\n	''SourcesSubs-MessageIndex.php'': ''2.0'',\n	''SourcesSubs-OpenID.php'': ''2.0.11'',\n	''SourcesSubs-Package.php'': ''2.0.18'',\n	''SourcesSubs-Post.php'': ''2.0.19'',\n	''SourcesSubs-Recent.php'': ''2.0'',\n	''SourcesSubs-Sound.php'': ''2.0.18'',\n	''SourcesSubs.php'': ''2.0.18'',\n	''SourcesSubscriptions-PayPal.php'': ''2.0.12'',\n	''SourcesThemes.php'': ''2.0.16'',\n	''SourcesViewQuery.php'': ''2.0'',\n	''SourcesWho.php'': ''2.0.19'',\n	''SourcesXml.php'': ''2.0'',\n	''Sourcessubscriptions.php'': ''2.0.12'',\n	''DefaultAdmin.template.php'': ''2.0.16'',\n	''DefaultAgreement.template.php'': ''2.0.16'',\n	''DefaultBoardIndex.template.php'': ''2.0'',\n	''DefaultCalendar.template.php'': ''2.0'',\n	''DefaultCompat.template.php'': ''2.0'',\n	''DefaultDisplay.template.php'': ''2.0.16'',\n	''DefaultErrors.template.php'': ''2.0'',\n	''DefaultGenericControls.template.php'': ''2.0'',\n	''DefaultGenericList.template.php'': ''2.0'',\n	''DefaultGenericMenu.template.php'': ''2.0'',\n	''DefaultHelp.template.php'': ''2.0.6'',\n	''DefaultLogin.template.php'': ''2.0.16'',\n	''DefaultManageAttachments.template.php'': ''2.0'',\n	''DefaultManageBans.template.php'': ''2.0'',\n	''DefaultManageBoards.template.php'': ''2.0'',\n	''DefaultManageCalendar.template.php'': ''2.0'',\n	''DefaultManageMail.template.php'': ''2.0'',\n	''DefaultManageMaintenance.template.php'': ''2.0'',\n	''DefaultManageMembergroups.template.php'': ''2.0'',\n	''DefaultManageMembers.template.php'': ''2.0'',\n	''DefaultManageNews.template.php'': ''2.0.16'',\n	''DefaultManagePaid.template.php'': ''2.0'',\n	''DefaultManagePermissions.template.php'': ''2.0.9'',\n	''DefaultManageScheduledTasks.template.php'': ''2.0'',\n	''DefaultManageSearch.template.php'': ''2.0'',\n	''DefaultManageSmileys.template.php'': ''2.0'',\n	''DefaultMemberlist.template.php'': ''2.0.16'',\n	''DefaultMessageIndex.template.php'': ''2.0'',\n	''DefaultModerationCenter.template.php'': ''2.0'',\n	''DefaultMoveTopic.template.php'': ''2.0'',\n	''DefaultNotify.template.php'': ''2.0.16'',\n	''DefaultPackages.template.php'': ''2.0'',\n	''DefaultPersonalMessage.template.php'': ''2.0.16'',\n	''DefaultPoll.template.php'': ''2.0'',\n	''DefaultPost.template.php'': ''2.0.10'',\n	''DefaultPrintpage.template.php'': ''2.0'',\n	''DefaultProfile.template.php'': ''2.0.16'',\n	''DefaultRecent.template.php'': ''2.0'',\n	''DefaultRegister.template.php'': ''2.0.16'',\n	''DefaultReminder.template.php'': ''2.0'',\n	''DefaultReports.template.php'': ''2.0'',\n	''DefaultSearch.template.php'': ''2.0.18'',\n	''DefaultSendTopic.template.php'': ''2.0'',\n	''DefaultSettings.template.php'': ''2.0'',\n	''DefaultSplitTopics.template.php'': ''2.0'',\n	''DefaultStats.template.php'': ''2.0'',\n	''DefaultThemes.template.php'': ''2.0.12'',\n	''DefaultWho.template.php'': ''2.0'',\n	''DefaultWireless.template.php'': ''2.0.16'',\n	''DefaultXml.template.php'': ''2.0.16'',\n	''Defaultindex.template.php'': ''2.0.19'',\n	''TemplateAdmin.template.php'': ''2.0.16'',\n	''TemplateAgreement.template.php'': ''2.0.16'',\n	''TemplateBoardIndex.template.php'': ''2.0'',\n	''TemplateCalendar.template.php'': ''2.0'',\n	''TemplateCompat.template.php'': ''2.0'',\n	''TemplateDisplay.template.php'': ''2.0.16'',\n	''TemplateErrors.template.php'': ''2.0'',\n	''TemplateGenericControls.template.php'': ''2.0'',\n	''TemplateGenericList.template.php'': ''2.0'',\n	''TemplateGenericMenu.template.php'': ''2.0'',\n	''TemplateHelp.template.php'': ''2.0.6'',\n	''TemplateLogin.template.php'': ''2.0.16'',\n	''TemplateManageAttachments.template.php'': ''2.0'',\n	''TemplateManageBans.template.php'': ''2.0'',\n	''TemplateManageBoards.template.php'': ''2.0'',\n	''TemplateManageCalendar.template.php'': ''2.0'',\n	''TemplateManageMail.template.php'': ''2.0'',\n	''TemplateManageMaintenance.template.php'': ''2.0'',\n	''TemplateManageMembergroups.template.php'': ''2.0'',\n	''TemplateManageMembers.template.php'': ''2.0'',\n	''TemplateManageNews.template.php'': ''2.0.16'',\n	''TemplateManagePaid.template.php'': ''2.0'',\n	''TemplateManagePermissions.template.php'': ''2.0.9'',\n	''TemplateManageScheduledTasks.template.php'': ''2.0'',\n	''TemplateManageSearch.template.php'': ''2.0'',\n	''TemplateManageSmileys.template.php'': ''2.0'',\n	''TemplateMemberlist.template.php'': ''2.0.16'',\n	''TemplateMessageIndex.template.php'': ''2.0'',\n	''TemplateModerationCenter.template.php'': ''2.0'',\n	''TemplateMoveTopic.template.php'': ''2.0'',\n	''TemplateNotify.template.php'': ''2.0.16'',\n	''TemplatePackages.template.php'': ''2.0'',\n	''TemplatePersonalMessage.template.php'': ''2.0.16'',\n	''TemplatePoll.template.php'': ''2.0'',\n	''TemplatePost.template.php'': ''2.0.10'',\n	''TemplatePrintpage.template.php'': ''2.0'',\n	''TemplateProfile.template.php'': ''2.0.16'',\n	''TemplateRecent.template.php'': ''2.0'',\n	''TemplateRegister.template.php'': ''2.0.16'',\n	''TemplateReminder.template.php'': ''2.0'',\n	''TemplateReports.template.php'': ''2.0'',\n	''TemplateSearch.template.php'': ''2.0.18'',\n	''TemplateSendTopic.template.php'': ''2.0'',\n	''TemplateSettings.template.php'': ''2.0'',\n	''TemplateSplitTopics.template.php'': ''2.0'',\n	''TemplateStats.template.php'': ''2.0'',\n	''TemplateThemes.template.php'': ''2.0.12'',\n	''TemplateWho.template.php'': ''2.0'',\n	''TemplateWireless.template.php'': ''2.0.16'',\n	''TemplateXml.template.php'': ''2.0.16'',\n	''Templateindex.template.php'': ''2.0.19'',\n};\n\nwindow.smfLanguageVersions = {\n	''Admin'': ''2.0.16'',\n	''Agreement'': ''2.0.16'',\n	''EmailTemplates'': ''2.0.16'',\n	''Errors'': ''2.0.16'',\n	''Help'': ''2.0.19'',\n	''Install'': ''2.0.16'',\n	''Login'': ''2.0.16'',\n	''ManageBoards'': ''2.0'',\n	''ManageCalendar'': ''2.0'',\n	''ManageMail'': ''2.0'',\n	''ManageMaintenance'': ''2.0'',\n	''ManageMembers'': ''2.0'',\n	''ManagePaid'': ''2.0.10'',\n	''ManagePermissions'': ''2.0'',\n	''ManageScheduledTasks'': ''2.0'',\n	''ManageSettings'': ''2.0.19'',\n	''ManageSmileys'': ''2.0'',\n	''Manual'': ''2.0'',\n	''ModerationCenter'': ''2.0'',\n	''Modifications'': ''2.0'',\n	''Modlog'': ''2.0.16'',\n	''Packages'': ''2.0'',\n	''PersonalMessage'': ''2.0'',\n	''Post'': ''2.0'',\n	''Profile'': ''2.0.18'',\n	''Reports'': ''2.0'',\n	''Search'': ''2.0'',\n	''Settings'': ''2.0'',\n	''Stats'': ''2.0'',\n	''Themes'': ''2.0'',\n	''Who'': ''2.0.16'',\n	''Wireless'': ''2.0'',\n	''index'': ''2.0.18'',\n};\n', 'text/javascript'),
(3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '\nwindow.smfAnnouncements = [\n	{\n		subject: ''SMF 2.1.3 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=584230.0'',\n		time: ''November 21, 2022, 02:00:00 PM'',\n		author: ''shawnb61'',\n		message: ''SMF 2.1.3 includes security updates and numerous bug fixes. We recommend updating as soon as possible.''\n	},\n	{\n		subject: ''SMF 2.1.2 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=582201.0'',\n		time: ''May 09, 2022, 12:33:55 PM'',\n		author: ''Sesquipedalian'',\n		message: ''SMF 2.1.2 includes security updates and numerous bug fixes. We recommend updating as soon as possible.''\n	},\n	{\n		subject: ''SMF 2.1.1 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=580657.0'',\n		time: ''February 11, 2022, 08:25:59 PM'',\n		author: ''Sesquipedalian'',\n		message: ''SMF 2.1.1 restores support for PHP 7.0–7.2.''\n	},\n	{\n		subject: ''SMF 2.1.0 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=580585.0'',\n		time: ''February 09, 2022, 12:45:53 PM'',\n		author: ''Sesquipedalian'',\n		message: ''SMF 2.1 is here! Please upgrade to start enjoying all the benefits of our new recommended version as soon as possible.''\n	},\n	{\n		subject: ''SMF 2.0.19 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=579982.0'',\n		time: ''December 21, 2021, 04:45:41 PM'',\n		author: ''Sesquipedalian'',\n		message: ''SMF 2.0.19 includes security updates and several bug fixes. We recommend updating as soon as possible.''\n	},\n	{\n		subject: ''SMF 2.1 RC4 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=578135.0'',\n		time: ''July 10, 2021, 11:14:15 AM'',\n		author: ''Suki'',\n		message: ''Simple Machines is pleased to announce SMF 2.1 RC4. This fourth release candidate brings a number of bugfixes and improvements over SMF 2.1 RC3.''\n	},\n	{\n		subject: ''SMF 2.0.18 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=576577.0'',\n		time: ''February 01, 2021, 01:55:41 PM'',\n		author: ''Suki'',\n		message: ''SMF 2.0.18 adds compatibility to PHP 7.4 version as well as fixes a few bugs in 2.0.17. We recommend updating as soon as possible.''\n	},\n	{\n		subject: ''SMF 2.1 RC3 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=575228.0'',\n		time: ''October 15, 2020, 06:16:48 AM'',\n		author: ''Suki'',\n		message: ''Simple Machines is pleased to announce SMF 2.1 RC3. This third release candidate brings a number of bugfixes and improvements over SMF 2.1 RC2.''\n	},\n	{\n		subject: ''SMF 2.0.17 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=571067.0'',\n		time: ''December 30, 2019, 07:43:24 PM'',\n		author: ''Sesquipedalian'',\n		message: ''SMF 2.0.17 fixes a bug in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some warning messages that could appear when using SSI.php. We recommend updating as soon as possible.''\n	},\n	{\n		subject: ''SMF 2.0.16 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=570986.0'',\n		time: ''December 27, 2019, 07:44:07 PM'',\n		author: ''Sesquipedalian'',\n		message: ''SMF 2.0.16 fixes some important security issues and adds support for the EU\\''s General Data Protection Regulation (GDPR) requirements.''\n	},\n	{\n		subject: ''SMF 2.1 RC2 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=566669.0'',\n		time: ''March 30, 2019, 12:27:45 PM'',\n		author: ''Sesquipedalian'',\n		message: ''Simple Machines is pleased to announce SMF 2.1 RC2. This second release candidate brings a number of bugfixes and improvements over SMF 2.1 RC1.''\n	},\n	{\n		subject: ''SMF 2.1 RC1 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=564881.0'',\n		time: ''February 04, 2019, 08:02:47 PM'',\n		author: ''Sesquipedalian'',\n		message: ''Simple Machines is proud to announce the first release candidate of the next version of SMF, which contains many bugfixes and a number of new features since 2.1 Beta 3.''\n	},\n	{\n		subject: ''SMF 2.0.15 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=557176.0'',\n		time: ''November 19, 2017, 09:03:58 PM'',\n		author: ''Colin'',\n		message: ''A patch has been released, addressing a few vulnerabilities in SMF 2.0.14 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.1 Beta 3 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=554301.0'',\n		time: ''May 31, 2017, 09:21:59 PM'',\n		author: ''Colin'',\n		message: ''Simple Machines is proud to announce the third beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 2.''\n	},\n	{\n		subject: ''SMF 2.0.14 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=553855.0'',\n		time: ''May 14, 2017, 05:23:46 PM'',\n		author: ''Colin'',\n		message: ''A patch has been released, addressing a few vulnerabilities in SMF 2.0.13 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.13 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=551061.0'',\n		time: ''January 04, 2017, 07:00:00 PM'',\n		author: ''Oldiesmann'',\n		message: ''A patch has been released, addressing a few vulnerabilities in SMF 2.0.12 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.12 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=548871.0'',\n		time: ''September 27, 2016, 07:00:00 AM'',\n		author: ''CoreISP'',\n		message: ''A patch has been released, addressing a vulnerability in SMF 2.0.11 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.11 has been released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=539888.0'',\n		time: ''September 18, 2015, 10:56:19 PM'',\n		author: ''Oldiesmann'',\n		message: ''A patch has been released, addressing a vulnerability in SMF 2.0.10. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.1 Beta 2 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=538198.0'',\n		time: ''July 16, 2015, 05:45:30 PM'',\n		author: ''Oldiesmann'',\n		message: ''Simple Machines is proud to announce the second beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 1!''\n	},\n	{\n		subject: ''SMF 2.0.10 and 1.1.21 have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=535828.0'',\n		time: ''April 24, 2015, 10:09:00 AM'',\n		author: ''Oldiesmann'',\n		message: ''A patch has been released, addressing a few bugs in SMF 2.0.x and SMF 1.1.x. We urge all forum administrators to upgrade to SMF 2.0.10 or 1.1.21&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.1 Beta 1 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=530233.0'',\n		time: ''November 20, 2014, 07:40:06 PM'',\n		author: ''Oldiesmann'',\n		message: ''Simple Machines is proud to announce the first beta of the next version of SMF, with many improvements and new features!''\n	},\n	{\n		subject: ''SMF 2.0.9 and 1.1.20 security patches have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=528448.0'',\n		time: ''October 02, 2014, 07:13:50 PM'',\n		author: ''Oldiesmann'',\n		message: ''Critical security patches have been released, addressing a few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.8 released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=524016.0'',\n		time: ''June 18, 2014, 10:11:32 AM'',\n		author: ''Oldiesmann'',\n		message: ''A patch has been released, addressing memory issues with 2.0.7, MySQL 5.6 compatibility issues and a rare memberlist search bug. We urge all forum administrators to upgrade to SMF 2.0.8&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.7 released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=517205.0'',\n		time: ''January 20, 2014, 09:48:07 PM'',\n		author: ''Oldiesmann'',\n		message: ''A patch has been released, addressing several bugs, including PHP 5.5 compatibility.  We urge all forum administrators to upgrade to SMF 2.0.7&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.6 and 1.1.19 security patches have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=512964.0'',\n		time: ''October 22, 2013, 09:00:00 AM'',\n		author: ''Illori'',\n		message: ''Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.5 security patches has been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=509417.0'',\n		time: ''August 12, 2013, 08:34:06 PM'',\n		author: ''Oldiesmann'',\n		message: ''A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.4 and 1.1.18 security patches have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=496403.0'',\n		time: ''February 01, 2013, 05:27:00 PM'',\n		author: ''emanuele'',\n		message: ''Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=492786.0'',\n		time: ''December 16, 2012, 11:41:05 PM'',\n		author: ''emanuele'',\n		message: ''Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.2 and 1.1.16 security patches have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=463103.0'',\n		time: ''December 23, 2011, 12:41:31 AM'',\n		author: ''Norv'',\n		message: ''Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.1 and 1.1.15 security patches have been released.'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=452888.0'',\n		time: ''September 18, 2011, 04:48:18 PM'',\n		author: ''Norv'',\n		message: ''Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 Gold'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=421547.0'',\n		time: ''June 04, 2011, 05:00:00 PM'',\n		author: ''Norv'',\n		message: ''SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.''\n	},\n	{\n		subject: ''SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=421547.0'',\n		time: ''February 11, 2011, 03:16:35 PM'',\n		author: ''Norv'',\n		message: ''Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 2.0 RC4 and SMF 1.1.12 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=407256.0'',\n		time: ''November 01, 2010, 12:14:21 PM'',\n		author: ''Norv'',\n		message: ''Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 2.0 RC3 Public released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=369616.0'',\n		time: ''March 08, 2010, 06:03:11 PM'',\n		author: ''Aaron'',\n		message: ''Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.11 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=351341.0'',\n		time: ''December 01, 2009, 05:59:19 PM'',\n		author: ''SleePy'',\n		message: ''A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.''\n	},\n	{\n		subject: ''SMF 2.0 RC2 Public released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=346813.0'',\n		time: ''November 08, 2009, 07:10:03 PM'',\n		author: ''Aaron'',\n		message: ''Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.10 and 2.0 RC1.2 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=324169.0'',\n		time: ''July 14, 2009, 07:05:19 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.9 and 2.0 RC1-1 released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=311899.0'',\n		time: ''May 20, 2009, 08:40:41 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 RC1 Public Released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=290609.0'',\n		time: ''February 04, 2009, 11:10:01 PM'',\n		author: ''Compuart'',\n		message: ''Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.8'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=290608.0'',\n		time: ''February 04, 2009, 11:08:44 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.7'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=272861.0'',\n		time: ''November 07, 2008, 02:15:36 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.6'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=260145.0'',\n		time: ''September 07, 2008, 04:38:05 AM'',\n		author: ''Compuart'',\n		message: ''A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.5'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=236816.0'',\n		time: ''April 20, 2008, 09:56:14 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 Beta 3 Public Released'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=228921.0'',\n		time: ''March 17, 2008, 03:20:21 PM'',\n		author: ''Grudge'',\n		message: ''Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.4'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=196380.0'',\n		time: ''September 24, 2007, 09:07:36 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 Beta 1 Released to Charter Members'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=190812.0'',\n		time: ''August 25, 2007, 07:29:25 AM'',\n		author: ''Grudge'',\n		message: ''Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\''s new''\n	},\n	{\n		subject: ''SMF 1.1.3'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=178757.0'',\n		time: ''June 24, 2007, 09:52:40 PM'',\n		author: ''Thantos'',\n		message: ''A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.2'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=149553.0'',\n		time: ''February 11, 2007, 08:35:45 AM'',\n		author: ''Grudge'',\n		message: ''A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.''\n	},\n	{\n		subject: ''SMF 1.1.1'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=134971.0'',\n		time: ''December 17, 2006, 09:33:41 AM'',\n		author: ''Grudge'',\n		message: ''A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1'',\n		href: ''https://www.simplemachines.org/community/index.php?topic=131008.0'',\n		time: ''December 02, 2006, 02:53:16 PM'',\n		author: ''Grudge'',\n		message: ''SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.''\n	}\n];\nif (window.smfVersion < "SMF 2.1")\n{\n	window.smfUpdateNotice = ''SMF 2.1.0 has now been released. To take advantage of the improvements available in SMF 2.1 we recommend upgrading as soon as is practical.'';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById("yourVersion"))\n{\n	var yourVersion = getInnerHTML(document.getElementById("yourVersion"));\n	if (yourVersion == "SMF 1.0.4")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz";\n	else if (yourVersion == "SMF 1.0.5" || yourVersion == "SMF 1.0.6")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == "SMF 1.0.7")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz";\n	else if (yourVersion == "SMF 1.0.8")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz";\n	else if (yourVersion == "SMF 1.0.9")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz";\n	else if (yourVersion == "SMF 1.0.10" || yourVersion == "SMF 1.1.2")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz";\n	else if (yourVersion == "SMF 1.0.11" || yourVersion == "SMF 1.1.3" || yourVersion == "SMF 2.0 beta 1")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.12" || yourVersion == "SMF 1.1.4" || yourVersion == "SMF 2.0 beta 3 Public")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip";\n	else if (yourVersion == "SMF 1.0.13" || yourVersion == "SMF 1.1.5")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.14" || yourVersion == "SMF 1.1.6")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.15" || yourVersion == "SMF 1.1.7")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == "SMF 1.0.16" || yourVersion == "SMF 1.1.8" || yourVersion == "SMF 2.0 RC1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip";\n	else if (yourVersion == "SMF 1.0.17" || yourVersion == "SMF 1.1.9" || yourVersion == "SMF 2.0 RC1-1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip";\n	else if (yourVersion == "SMF 1.0.18" || yourVersion == "SMF 1.1.10")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.19" || yourVersion == "SMF 1.1.11")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz";\n	}\n	else if (yourVersion == "SMF 1.0.20" || yourVersion == "SMF 1.1.12")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.14")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.15" || yourVersion == "SMF 1.0.21")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.1")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.16" || yourVersion == "SMF 1.0.22")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.17")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.2")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.3")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.4")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.18" || yourVersion == "SMF 2.0.5")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.19" || yourVersion == "SMF 2.0.8")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.20" || yourVersion == "SMF 2.0.9")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip";\n	else if (yourVersion == "SMF 2.0.10")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz";\n	else if (yourVersion == "SMF 1.1.1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz";\n	else if (yourVersion == "SMF 2.0.11")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.12")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.13")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.14")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.15")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.16")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.17")\n	{\n	window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.18.tar.gz";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.18")\n	{\n	window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.19.tar.gz";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.1.0")\n	{\n	window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_2-1-1_patch.tar.gz";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.1.1")\n	{\n	window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_2-1-2_patch.tar.gz";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.1.2")\n	{\n	window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_2-1-3_patch.tar.gz";\n	window.smfUpdateCritical = true;\n	}\n}\n\nif (document.getElementById(''credits''))\n	setInnerHTML(document.getElementById(''credits''), getInnerHTML(document.getElementById(''credits'')).replace(/anyone we may have missed/, ''<span title="And you thought you had escaped the credits, hadn\\''t you, Zef Hemel?">anyone we may have missed</span>''));\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = ''?action=admin;area=packages;sa=download;get;package='';if (typeof(window.smfForum_sessionvar) == "undefined")\n	window.smfForum_sessionvar = ''sesc'';\n\nif (typeof(window.smfVersion) != "undefined")\n{\n	var version = window.smfVersion;\n\n	// We might need this...\n	var smf_modificationInfo = {};\n	\n	switch (version)\n	{\n		case "SMF 2.0 Beta 1":\n			window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0 Beta 3 Public":\n			window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0 RC1":\n			window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0 RC1-1":\n			window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0 RC4":\n			if (typeof(window.smfRC4patch) == "undefined")\n				window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			else\n				showLatestPackages();\n			break;\n		case "SMF 2.0":\n			window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.1":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.2":\n			window.smfLatestPackages = ''A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.3":\n			window.smfLatestPackages = ''A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.4":\n			window.smfLatestPackages = ''A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.5":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.5 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.6":\n			window.smfLatestPackages = ''PHP 5.5 compatibility issues and several other bugs have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.7.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.7.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.7":\n			window.smfLatestPackages = ''Memory issues encountered with SMF 2.0.7, some MySQL 5.6 compatibility issues and a rare bug with the memberlist search feature have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.8.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.8.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.8":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.8 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.9":\n			window.smfLatestPackages = ''A few bugs in SMF 2.0.9 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.10":\n			window.smfLatestPackages = ''A security vulnerability has been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.11":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.11 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.12":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.12 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.13":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.13 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.14":\n			window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.14 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.15":\n			window.smfLatestPackages = ''SMF 2.0.16 fixes some important security issues and adds support for the EU\\''s General Data Protection Regulation (GDPR) requirements. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.16":\n			window.smfLatestPackages = ''SMF 2.0.17 fixes a bug introduced in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some annoying warning messages that could appear when using SSI.php. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.17.<br /><br />If you have any problems applying it, you can use the "Large upgrade" posted on the <a href="https://download.simplemachines.org/">Download</a> page - although, any modifications you have installed will need to be reinstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n			break;\n		case "SMF 2.0.17":\n		window.smfLatestPackages = ''SMF 2.0.18 adds compatibility for PHP 7.4 version as well as fixes a few bugs in 2.0.17. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.18.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.18.<br /><br />If you have any problems applying it, you can use the "Large upgrade" posted on the <a href="https://download.simplemachines.org/">Download</a> page - although, any modifications you have installed will need to be reinstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n		break;\n		case "SMF 2.0.18":\n		window.smfLatestPackages = ''SMF 2.0.19 includes security updates and several bug fixes. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.19.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum and update it to 2.0.19.<br /><br />If you have any problems applying it, you can use the "Large upgrade" posted on the <a href="https://download.simplemachines.org/">Download</a> page - although, any modifications you have installed will need to be reinstalled. Please post on the <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;">forum</a> if you need more help.'';\n		break;\n        default:\n			showLatestPackages();\n			break;\n	}\n}\nelse\n{\n	window.smfLatestPackages = ''For the package manager to function properly, please upgrade to the latest version of SMF.'';\n}\n\n// This function shows latest mods when there isn''t anything else to display\nfunction showLatestPackages()\n{\n	smf_modificationInfo = {\n	\n		4353: {\n			name: ''Search Engine BBC 1.1'',\n			versions: [''102'', ''103''],\n			desc: ''&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br><div class="centertext"><span style="color: green;" class="bbc_color">Search Engine BBC</span></div><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br><div class="centertext"><span style="color: blue;" class="bbc_color">Author:</span></div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br><div class="centertext"><span style="color: red;" class="bbc_color">Rumpa</span></div><br><br><br>This mods gives you different types of search <a href="//result.bing" class="bbc_link" target="_blank" rel="noopener">result.Bing</a> BBC adds a powerful BBC wich allows you to search through the Bings&#39;s database. <br><br>Google search gives you access the google database.<br><br>And other hand iMDB gives you iMDB database result. It&#39;s very simple to use. For example, if you want to search the database for movie called &quot;Black Adam&quot; then it will look like this: <br><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">[imdb]Black Adam[/imdb]</code><br>Or you want to search anything then use<br><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">[bing]Type anything[/bing]</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">[google]simple machines forum[/google]</code><br><span style="color: red;" class="bbc_color">This mod uses the integration hooks, so it won&#39;t make any changes to SMF&#39;s core files.</span> <br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br><div class="centertext"><b>V1.1 added Google search</b><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>News in version 1.0</b><br><br>- Initial release</div><br><div class="centertext"><b><span style="color: red;" class="bbc_color">Before install v1.1 please uninstall v1.0 for better experience</span></b></div><br><br><br>This modification is licensed under BSD License (<a href="http://www.opensource.org/licenses/bsd-license.php" class="bbc_link" target="_blank" rel="noopener">http://www.opensource.org/licenses/bsd-license.php</a>)<br><br>Copyright (c) 2022, Rumpa<br>All rights reserved.<br><br>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:<br><br>1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.<br><br>2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.<br><br>THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.'',\n			file: ''Search Engine BBC v1.1.zip''\n		},\n		4351: {\n			name: ''Enhanced Quick Reply 1.0.1'',\n			versions: [''103''],\n			desc: ''<div class="centertext"><a href="https://smftricks.com/" class="bbc_link" target="_blank" rel="noopener"><img src="https://smftricks.com/logos/logo.png" alt="" class="bbc_img" loading="lazy"></a></div><br><img src="https://img.shields.io/badge/License-MPL%202.0-248049" alt="" class="bbc_img" loading="lazy"> <img src="https://img.shields.io/badge/Hooks%20Only-Yes-6041a3" alt="" class="bbc_img" loading="lazy"> <img src="https://img.shields.io/badge/SMF-2.1-3f73a0" alt="" class="bbc_img" loading="lazy"><br><br><b><span style="font-size: 2em;" class="bbc_size">Enhanced Quick Reply</span></b><br><span style="font-size: 0.8em;" class="bbc_size">Developed by <a href="https://smftricks.com/index.php?action=profile;u=1" class="bbc_link" target="_blank" rel="noopener">Diego Andrés</a><br>Sponsored by <a href="https://www.golarze.pl/index.php" class="bbc_link" target="_blank" rel="noopener">Golarze.pl</a></span><br><br><hr><br><span style="font-size: 1.45em;" class="bbc_size"><span style="color: #bf307a;" class="bbc_color">Introduction</span></span><br><span style="font-size: 1em;" class="bbc_size">Enhanced Quick Reply provides the ability to choose different behaviors for the quick reply look.</span><br><br><span style="font-size: 1.35em;" class="bbc_size"><span style="color: #1f4882;" class="bbc_color">Features</span></span><br><ul class="bbc_list"><li><span style="font-size: 0.9em;" class="bbc_size">Set default behavior</span><br><ul class="bbc_list"><li><span style="font-size: 0.8em;" class="bbc_size">Default</span></li><li><span style="font-size: 0.8em;" class="bbc_size">Collapsed</span></li><li><span style="font-size: 0.8em;" class="bbc_size">Minimalistic</span></li><li><span style="font-size: 0.8em;" class="bbc_size">Disabled</span></li></ul></li><li><span style="font-size: 0.9em;" class="bbc_size">Per member option</span></li><li><span style="font-size: 0.9em;" class="bbc_size">Group permissions to change behavior</span></li></ul><br><span style="font-size: 1.35em;" class="bbc_size"><span style="color: #358234;" class="bbc_color">Localization</span></span><br><img src="https://www.simplemachines.org/site_images/lang/english.gif" alt="" class="bbc_img" loading="lazy"> English<br><img src="https://www.simplemachines.org/site_images/lang/russian.gif" alt="" class="bbc_img" loading="lazy"> Russian by <a href="https://www.simplemachines.org/community/index.php?P=llfbihu34390n5snnrjdt8cr5p&amp;action=profile;u=229017" class="bbc_link" target="_blank" rel="noopener">Bugo</a><br><hr><br><span style="font-size: 1.35em;" class="bbc_size"><a href="https://github.com/SMFTricks/Enhanced-Quick-Reply/blob/main/CHANGELOG.md" class="bbc_link" target="_blank" rel="noopener"><span style="color: #cc5d31;" class="bbc_color">Changelog</span></a></span><br><span style="font-size: 1.35em;" class="bbc_size"><a href="https://github.com/SMFTricks/Enhanced-Quick-Reply" class="bbc_link" target="_blank" rel="noopener"><span style="color: #5e2b82;" class="bbc_color">GitHub</span></a></span>'',\n			file: ''Enhanced-Quick-Reply_v1.0.1.zip''\n		},\n		4350: {\n			name: ''GuestBBC Button 1.3'',\n			versions: [''102'', ''103''],\n			desc: ''<div class="centertext"><b>About</b><br><br>This modification is for guset visitor only. Members can create or post for guest.Topic or post creater can not see this content only guest can view it.<br><br><br><span style="color: green;" class="bbc_color">Best part of this mod put a &quot;guest&quot; button after &quot;justify&quot; button<br><br>tag use for this modification [guest]guest content[/guest]<br><br><b>Version</b><br><br>V1.3 for SMF 2.1.3<br>Solve the issue of error log<br><br>V1.2 for SMF 2.1.2<br>Remove little bug from the package info file thanks to <span style="color: blue;" class="bbc_color">Doug Heffernan</span><br><br>Language added<br>V1.1 for SMF 2.1.2 <br>(Spanish language added credit goes to <span style="color: blue;" class="bbc_color">-Rock Lee-</span><br><br>Initial Release<br>V1.0 for SMF 2.1.2<br><br><b>Author</b><br><br><b><span style="color: red;" class="bbc_color">Rumpa</span></b></span></div>'',\n			file: ''GuestBBC v1.3.zip''\n		},\n		460: {\n			name: ''Webratsmusic.Com Video BBC Code 0.1'',\n			versions: [''21'', ''27'', ''31''],\n			desc: ''This bbc tag mod allows you to embed music videos from <a href="http://webratsmusic.com" class="bbc_link" target="_blank" rel="noopener">http://webratsmusic.com</a> safely into posts so now you and your users can share the latest music videos with the rest of your community. See screenshots for clear instructions on what you need to embed the video. Works With 1.1RC3 -&gt;1.1.2 Only!<br /><br /><br />'',\n			file: ''webratsbbccode[RC3-1.1.4].zip''\n		}	};\n	var smf_latestModifications = [4353, 4351, 4350];\n	\n	window.smfLatestPackages = ''\\\n		<div id="smfLatestPackagesWindow"style="overflow: auto;">\\\n			<h3 style="margin: 0; padding: 4px;">New Packages:</h3>\\\n			<img src="https://www.simplemachines.org/smf/images/package.png" width="102" height="98" style="float: right; margin: 4px;" alt="(package)" />\\\n			<ul style="list-style: none; margin-top: 3px; padding: 0 4px;">'';\n	\n	for (var i = 0; i < smf_latestModifications.length; i++)\n	{\n		var id_mod = smf_latestModifications[i];\n	\n		window.smfLatestPackages += ''<li><a href="javascript:smf_packagesMoreInfo('' + id_mod + '');void(0);">'' + smf_modificationInfo[id_mod].name + ''</a></li>'';\n	}\n	\n	window.smfLatestPackages += ''\\\n			</ul>'';\n	\n	if (typeof(window.smfVersion) != "undefined" && (window.smfVersion < "SMF 1.0.6" || (window.smfVersion == "SMF 1.1 RC2" && !in_array(''smf:smf-1.0.7'', window.smfInstalledPackages))))\n		window.smfLatestPackages += ''\\\n			<h3 class="error" style="margin: 0; padding: 4px;">Updates for SMF:</h3>\\\n			<div style="padding: 0 4px;">\\\n				<a href="'' + window.smfForum_scripturl + actionurl + ''https://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Security update (X-Forwarded-For header vulnerability)</a>\\\n			</div>'';\n	else\n		window.smfLatestPackages += ''\\\n			<h3 style="margin: 0; padding: 4px;">Package of the Moment:</h3>\\\n			<div style="padding: 0 4px;">\\\n				<a href="javascript:smf_packagesMoreInfo(460);void(0);">Webratsmusic.Com Video BBC Code 0.1</a>\\\n			</div>'';\n	\n	window.smfLatestPackages += ''\\\n		</div>'';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == "undefined")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById("smfLatestPackagesWindow").innerHTML;\n\n	setInnerHTML(document.getElementById("smfLatestPackagesWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_modificationInfo[id].name + ''</h3>\\\n		<h4 style="padding: 4px; margin: 0;"><a href="'' + window.smfForum_scripturl + actionurl + ''https://custom.simplemachines.org/mods/downloads/'' + id + ''/'' + smf_modificationInfo[id].file + '';'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Install Now!</a></h4>\\\n		<div style="margin: 4px;">'' + smf_modificationInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\n		<div class="titlebg" style="padding: 4px; margin: 0;"><a href="javascript:smf_packagesBack();void(0);">(go back)</a></div>'');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById("smfLatestPackagesWindow"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestPackagesWindow")) - 10);\n}\n', 'text/javascript'),
(5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = ''?action=admin;area=smileys;sa=install;set_gz='';\nif (typeof(window.smfForum_sessionvar) == "undefined")\n	window.smfForum_sessionvar = ''sesc'';\n\nvar smf_smileysInfo = {\n\n	4267: {\n		name: '' 2.1.2'',\n		versions: [''95'', ''97'', ''99'', ''93'', ''98'', ''101'', ''102''],\n		desc: ''<img src="https://i2.wp.com/www.bregblogt.nl/wp-content/uploads/2015/10/hyves_kwekker_icons_2_11221_4168_image_5597.gif" alt="" width="600" height="450" class="bbc_img resized" loading="lazy"><br><br><b>After installing/selecting smiley pack you need to organisme them <br>Display 1 row and hide the rest (SHOW MORE button)</b>'',\n		file: ''smilehyves.zip''\n	},\n	4233: {\n		name: '' 1.1'',\n		versions: [''91'', ''93''],\n		desc: ''unicode emoji Smilies by ~ibtisam midlet<br /><br />how to install:<br />firstly to active the Smilies after installation go to [your forum name]/admin/?area=smileys;sa=modifyset<br /><br /><img src="https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/1.PNG" alt="" width="600" height="92" class="bbc_img resized" loading="lazy"><br />save then that go to [your forum name]/admin/?area=smileys;sa=settings;<br /><img src="https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/2.PNG" alt="" width="600" height="195" class="bbc_img resized" loading="lazy"><br />save then then it will works <img src="https://static.simplemachinesweb.com/smf/smileys/default/smiley.gif" alt="&#58;&#41;" title="Smiley" class="smiley"><br /><img src="https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/3.PNG" alt="" width="600" height="301" class="bbc_img resized" loading="lazy"><br /><br /><a href="https://www.dailyinternetlife.com/2019/05/unicode-emoji-smilies-for-simple.html" class="bbc_link" target="_blank" rel="noopener">unicode emoji v1.0 mod for SMF</a> is licensed under MIT and CC-BY 4.0<br /><br />emoji icons are licensed to:<br />Copyright 2019 Twitter, Inc and other contributors<br />Code licensed under the MIT License: <a href="http://opensource.org/licenses/MIT" class="bbc_link" target="_blank" rel="noopener">http://opensource.org/licenses/MIT</a><br />Graphics licensed under CC-BY 4.0: <a href="https://creativecommons.org/licenses/by/4.0/" class="bbc_link" target="_blank" rel="noopener">https://creativecommons.org/licenses/by/4.0/</a><br />&gt;&gt;<a href="https://twemoji.twitter.com/" class="bbc_link" target="_blank" rel="noopener">https://twemoji.twitter.com/</a><br /><br /><br />Enjoy the Smilies :&quot;)<br /><br />change log:<br />1.1 - fixed the big size of the icon compared to the text<br />&nbsp; &nbsp; - fixed bug the previous version not working like it should do<br />&nbsp;&nbsp;&nbsp;<br />1.0 - first version'',\n		file: ''unicode emoji v1.1.zip''\n	},\n	4099: {\n		name: '' 0.3.2'',\n		versions: [''84''],\n		desc: ''EmojiOne is not BBC but functions in the same space as BBC.<br /><br />This mod add some support for converting emoji decimal input into their hexadecimal counterpart. With the hexadecimal data this mod replaces the decimal data with the appropriate emoji from the EmojiOne CDN server.<br /><br /><b>License</b><br />Copyright (c) 2016, Russell Najar<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without<br />modification, are permitted provided that the following conditions are met:<br /><br />* Redistributions of source code must retain the above copyright notice, this<br />&nbsp; list of conditions and the following disclaimer.<br /><br />* Redistributions in binary form must reproduce the above copyright notice,<br />&nbsp; this list of conditions and the following disclaimer in the documentation<br />&nbsp; and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot;<br />AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE<br />IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE<br />FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL<br />DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR<br />SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER<br />CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,<br />OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE<br />OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.'',\n		file: ''SMF-EmojiOne.tar.gz''\n	},\n	3228: {\n		name: '' v1'',\n		versions: [''65'', ''68''],\n		desc: ''<div class="centertext"><img src="https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fbit.ly%2FkZVDB6&hash=7836fdef4323714489209ed06cd4e4f88c199aea" alt="" width="443" height="115" class="bbc_img resized" loading="lazy"></div><br><div class="centertext">&#91;glow=black,2,300]<span style="color: purple;" class="bbc_color"><span style="font-size: 16pt;" class="bbc_size"><b>Standard Emoticons</b></span></span>&#91;/glow]<br><b>Developed by</b> <b><a href="http://www.smfsimple.com/index.php?action=profile;u=1045" class="bbc_link" target="_blank" rel="noopener">Cesar</a></b> <b>for </b><b><a href="http://www.smfsimple.com/" class="bbc_link" target="_blank" rel="noopener">SMFSimple.com</a></b><br><i><b>SMF 2.0 - 2.0.1</b></i></div><br><hr><br><div class="centertext">&#91;glow=black,2,300]<span style="color: orange;" class="bbc_color"><span style="font-size: 14pt;" class="bbc_size"><b>El soporte oficial de los desarrolladores de nuestros mods lo encontraras en <a href="//smfsimple.com" class="bbc_link" target="_blank" rel="noopener">SMFSimple.com</a><br>Official Support in <a href="http://www.smfsimple.com/" class="bbc_link" target="_blank" rel="noopener">www.SmfSimple.com</a></b></span></span>&#91;/glow]</div><br><hr><br>&#91;glow=black,2,300]<span style="color: orange;" class="bbc_color"><span style="font-size: 13pt;" class="bbc_size"><u><b>Description:</b></u></span></span>&#91;/glow]<br><i><b>Emoticons Pack created by Powerpill and packaged by Cesar to <a href="//smfsimple.com" class="bbc_link" target="_blank" rel="noopener">SmfSimple.com</a></b></i><br><br>&#91;glow=black,2,300]<span style="color: orange;" class="bbc_color"><span style="font-size: 13pt;" class="bbc_size"><u><b>Descripcion:</b></u></span></span>&#91;/glow]<br><i><b>Pack de Emoticones creados por Powerpill y empaquetados para <a href="//smfsimple.com" class="bbc_link" target="_blank" rel="noopener">SmfSimple.com</a> por Cesar</b></i><br><br><hr><br><div class="centertext">&#91;glow=black,2,300]<span style="color: red;" class="bbc_color"><span style="font-size: 13pt;" class="bbc_size"><b>Screenshots | Imagenes</b></span></span>&#91;/glow]</div><br><div class="centertext"><img src="https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fi.imgur.com%2FB2O6t.png&hash=13b7d3c80ecc0a3f27163b66a426915d4ee1e8b7" alt="" width="460" height="269" class="bbc_img resized" loading="lazy"></div><br><br><br><hr><span style="color: teal;" class="bbc_color"><u><b>Language Support | Lenguajes Soportados</b></u></span><br><span style="color: teal;" class="bbc_color"><b>- English<br>- Spanish_latin<br>- Spanish_latin-utf8<br>- Spanish_es<br>- Spanish_es-utf8</b></span><br><hr><br><div class="centertext">&#91;glow=black,2,300]<span style="color: green;" class="bbc_color"><span style="font-size: 15pt;" class="bbc_size"><b>Standard Emoticons</b></span></span>&#91;/glow]</div><br><div class="centertext">&#91;glow=black,2,300]<span style="color: green;" class="bbc_color"><span style="font-size: 13pt;" class="bbc_size"><b>Copyright 2011 | <a href="http://www.smfsimple.com/" class="bbc_link" target="_blank" rel="noopener">SMFSimple.com</a></b></span></span>&#91;/glow]</div><br><div class="centertext"><a href="http://creativecommons.org/licenses/by-nc-sa/3.0/" class="bbc_link" target="_blank" rel="noopener"><img src="https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fi.creativecommons.org%2Fl%2Fby-nc-sa%2F3.0%2F88x31.png&hash=be27368905a4a8052533722bf679594f2501899d" alt="" width="88" height="31" class="bbc_img resized" loading="lazy"></a></div>'',\n		file: ''standard.zip''\n	}};\nvar smf_latestSmileys = [4267, 4233, 4099];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById("smfLatestSmileysWindow").innerHTML;\n\n	setInnerHTML(document.getElementById("smfLatestSmileysWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_smileysInfo[id].name + ''</h3>\\\n		<h4 style="padding: 4px; margin: 0;"><a href="'' + window.smfForum_scripturl + actionurl + ''https://custom.simplemachines.org/mods/downloads/'' + id + ''/'' + smf_smileysInfo[id].file + '';'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Install Now!</a></h4>\\\n		<div style="margin: 4px;">'' + smf_smileysInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\n		<div class="titlebg" style="padding: 4px; margin: 0;"><a href="javascript:smf_packagesBack();void(0);">(go back)</a></div>'');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById("smfLatestSmileysWindow"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestSmileysWindow")) - 10);\n}\n\nwindow.smfLatestSmileys = ''\\\n	<div id="smfLatestSmileysWindow" style="overflow: auto;">\\\n		<img src="https://www.simplemachines.org/smf/images/smileys.png" width="102" height="98" style="float: right; margin: 4px;" alt="(package)" />\\\n		<h3 style="margin: 0; padding: 4px;">Smiley of the Moment:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="javascript:smf_packagesMoreInfo(3228);void(0);"> v1</a>\\\n		</div>'';\n\nwindow.smfLatestSmileys += ''\\\n		<h3 style="margin: 0; padding: 4px;">New Smileys:</h3>\\\n		<ul style="list-style: none; margin-top: 3px; padding: 0 4px;">'';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += ''<li><a href="javascript:smf_packagesMoreInfo('' + id_mod + '');void(0);">'' + smf_smileysInfo[id_mod].name + ''</a></li>'';\n}\n\nwindow.smfLatestSmileys += ''\\\n		</ul>'';\n\nwindow.smfLatestSmileys += ''\\\n	</div>'';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == "undefined")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}', 'text/javascript'),
(6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfLatestSupport = ''<div style="font-size: 0.85em;"><div style="font-weight: bold;">SMF 2.0.19</div>This version includes security updates and several bug fixes. Please <a href="https://download.simplemachines.org/">try it</a> before requesting support.</div>'';\n\nif (document.getElementById(''credits''))\n	setInnerHTML(document.getElementById(''credits''), getInnerHTML(document.getElementById(''credits'')).replace(/thank you!/, ''<span onclick="alert(\\''Kupo!\\'');">thank you!</span>''));\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '\r\nvar smf_themeInfo = {\r\n	3012: {\r\n		name: ''Hextech'',\r\n		desc: ''<span style="font-size: 2em;" class="bbc_size"><b><span style="color: teal;" class="bbc_color">H</span>extech</b></span><br><span style="font-size: 1.45em;" class="bbc_size">A dark spacey grungy like smf theme.</span><br><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size"><b>Features :</b></span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Responsive Design</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Info Center Remixed</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Social Media Section</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">MultiColor Theme with a color switcher.</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Remixed Breadcrumb</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Avatar of last poster shown in last post section of the board index.</span></span><br><br><span style="font-size: 1.35em;" class="bbc_size"><b>License :</b></span><br><span style="font-size: 1.35em;" class="bbc_size"><b><img src="https://img.shields.io/badge/license-MIT-blue" alt="" class="bbc_img" loading="lazy"> </b></span><br><span style="font-size: 1.35em;" class="bbc_size">Font Awesome License<b> - </b><a href="https://fontawesome.com/license/free" class="bbc_link" target="_blank" rel="noopener">https://fontawesome.com/license/free</a></span><br><br><span style="font-size: 1.35em;" class="bbc_size"><b>SMF Version :</b></span><br><span style="font-size: 1.35em;" class="bbc_size"><b><img src="https://img.shields.io/badge/SMF-2.1-blue" alt="" class="bbc_img" loading="lazy"></b> </span><br><br><br><span style="font-size: 1.35em;" class="bbc_size"><b>Patch Notes :</b></span><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.0 : Initial Release</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.1 :<br>Board Icons Update : Replaced the Board Icons with some Font-Awesome icons.<br>Adjustment : Adjusted the background color of the popup window for emotes.<br>Adjustment: Fixed the width of the board icon area in the message index.<br>Adjustment: Adjusted the recent posts section to show less for smaller screens.<br>Bug Fix : Fixed the user menu lists not showing properly for smaller screens.</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.1.1 : <br>Added Feature : You can now enable or disable the top right color switcher.<br>Adjustment: Adjusted the header padding.<br>Update: Updated the Font-Awesome Icons to the latest version 6.2</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.1.2 : <br>Update : Updated for SMF 2.1.3<br>Adjustment: Adjusted the breadcrumb so that all arrows are even.<br>Adjustment: Adjusted input box height.<br>Bug Fix: Fixed the HR tag not displaying.</code>'',\r\n		file: ''Hextech.zip'',\r\n		author: ''TwitchisMental''\r\n	},\r\n	3019: {\r\n		name: ''Christmas'',\r\n		desc: ''<span style="color: green;" class="bbc_color"><span style="font-size: 1.45em;" class="bbc_size"><b>Christmas Theme</b></span></span><br><span style="color: green;" class="bbc_color"><span style="font-size: 1.45em;" class="bbc_size"><b><span style="color: black;" class="bbc_color"><span style="font-size: 1em;" class="bbc_size">A Christmas Theme for SMF 2.1</span></span></b></span></span><br><br><span style="color: black;" class="bbc_color"><span style="font-size: 1em;" class="bbc_size">This is a simple responsive Christmas Theme that only makes CSS changes. </span></span><br><br><span style="color: black;" class="bbc_color"><span style="font-size: 1em;" class="bbc_size"><b>Credits :</b></span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1em;" class="bbc_size">Shout out to Antechinus for the Alternative Admin CP Layout that is used in this theme.</span></span><br>Tutorial found here - <a href="https://www.simplemachines.org/community/index.php?P=mf74cbkedgrmo0pb8bs4rbrbbr&amp;topic=582354" class="bbc_link" target="_blank" rel="noopener">https://www.simplemachines.org/community/index.php?topic=582354</a>.<br><br><span style="font-size: 1em;" class="bbc_size"><b><span style="color: orange;" class="bbc_color"><span style="color: black;" class="bbc_color">License:</span></span></b></span><br><span style="font-size: 1em;" class="bbc_size"><b><span style="color: orange;" class="bbc_color"><span style="color: black;" class="bbc_color"><img src="https://img.shields.io/badge/license-MIT-blue" alt="" class="bbc_img" loading="lazy"></span></span></b></span><br><br><span style="font-size: 1em;" class="bbc_size"><b><span style="color: orange;" class="bbc_color"><span style="color: black;" class="bbc_color">SMF Version:</span></span></b></span><br><span style="font-size: 1em;" class="bbc_size"><b><span style="color: orange;" class="bbc_color"><span style="color: black;" class="bbc_color"><img src="https://img.shields.io/badge/SMF-2.1-blue" alt="" class="bbc_img" loading="lazy"></span></span></b></span><br><br><span style="font-size: 1em;" class="bbc_size"><b><span style="color: black;" class="bbc_color">Patch Notes:</span></b></span><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.0 : Initial Release</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.0.1 : <br>Bug Fix : Fixed an issue where the breadcrumb arrows were not always the same size.<br>Bug Fix : Fixed a script error related to missing scripts folder.</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.0.2 : <br>Update: Updated for SMF 2.1.3<br>Bug Fix : Fixed a bug with the collapse not displaying properly for attachments.</code>'',\r\n		file: ''Christmas.zip'',\r\n		author: ''TwitchisMental''\r\n	},\r\n	3018: {\r\n		name: ''Roxed'',\r\n		desc: ''More experimenting.&nbsp; Built on my Boxit Theme, I took it step further with a different gradient background, some colour added.&nbsp; Also broke the theme up a small bit.'',\r\n		file: ''Roxed.zip'',\r\n		author: ''DevH''\r\n	},\r\n	3017: {\r\n		name: ''Brown Shades'',\r\n		desc: ''Version 2.1.3<br>Compatible with: SMF 2.1.3<br><br>Description: Shades of brown default curve theme variation.<br><br>Credits and shout outs to:<br><br><ul class="bbc_list" style="list-style-type: decimal;"><li>@Antechinus for <a href="https://www.simplemachines.org/community/index.php?P=mf74cbkedgrmo0pb8bs4rbrbbr&amp;topic=578649.msg4096820#msg4096820" class="bbc_link" target="_blank" rel="noopener">The Custom Top Menu Bar</a>.</li><li>@pulgoki &amp; @Diego Andrés for the <a href="https://www.simplemachines.org/community/index.php?P=mf74cbkedgrmo0pb8bs4rbrbbr&amp;topic=580500.0" class="bbc_link" target="_blank" rel="noopener">User Info Box trick.</a></li><li>@shadav for helping rearrange the <a href="https://www.simplemachines.org/community/index.php?P=mf74cbkedgrmo0pb8bs4rbrbbr&amp;topic=579061.msg4098665#msg4098665" class="bbc_link" target="_blank" rel="noopener">footer</a></li></ul><br>Thanks! <img src="https://static.simplemachinesweb.com/smf/smileys/default/cool.gif" alt="8&#41;" title="Cool" class="smiley"><br><br>Custom Top Menu:<br>If you want the Custom Top Menu that works with this theme, <a href="https://www.simplemachines.org/community/index.php?P=mf74cbkedgrmo0pb8bs4rbrbbr&amp;topic=578649.msg4096800#msg4096800" class="bbc_link" target="_blank" rel="noopener">get it here</a>.<br><br><b><a href="https://shadesweb.com/?theme=7" class="bbc_link" target="_blank" rel="noopener">Demo Theme</a></b><br><br><img src="https://img.shields.io/badge/License-MIT-blue" alt="" class="bbc_img" loading="lazy"><br><img src="https://img.shields.io/badge/SMF-2.1.3-blue" alt="" class="bbc_img" loading="lazy"><br><img src="https://img.shields.io/badge/Current%20Version-2.1.3-yellow" alt="" class="bbc_img" loading="lazy"><br><br>Change log:<br><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1. Version 2.1.3 : 11/26/2022<br>Updated Theme for SMF 2.1.3</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1. Version 2.1.2b : 10/09/2022<br>Fixed color issues where text could not be seen in dark background of calendar and quick reply areas.</code>'',\r\n		file: ''Brown_Shades2.1.3.zip'',\r\n		author: ''Shades.''\r\n	},\r\n	3006: {\r\n		name: ''CartoonLand'',\r\n		desc: ''<span style="font-size: 2em;" class="bbc_size"><b><span style="color: #6e143c;" class="bbc_color">C</span><span style="color: #006174;" class="bbc_color">artoon</span><span style="color: #c2401b;" class="bbc_color">L</span><span style="color: #006174;" class="bbc_color">and</span></b></span><br><span style="font-size: 1.45em;" class="bbc_size"><b>A responsive dark &amp; cartoony SMF theme.</b></span><br><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.45em;" class="bbc_size"><span style="font-family: Arial Black;" class="bbc_font"><b><span style="font-family: Arial;" class="bbc_font">Features : </span></b></span></span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size"><span style="font-family: Arial;" class="bbc_font">Font-Awesome Icons.</span></span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Responsive Design</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size">Flat Design</span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.35em;" class="bbc_size"><span style="font-family: Arial;" class="bbc_font">Remixed Info Center</span></span></span><br><br><span style="font-size: 1.45em;" class="bbc_size"><span style="color: black;" class="bbc_color"><b><span style="font-family: Arial;" class="bbc_font">License : </span></b></span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.45em;" class="bbc_size"><b><img src="https://img.shields.io/badge/license-MIT-blue" alt="" class="bbc_img" loading="lazy"> </b></span></span><br><br><span style="font-size: 1.45em;" class="bbc_size"><span style="color: black;" class="bbc_color"><span style="font-family: Arial;" class="bbc_font"><b>SMF Version : </b></span></span></span><br><span style="color: black;" class="bbc_color"><span style="font-size: 1.45em;" class="bbc_size"><b><img src="https://img.shields.io/badge/SMF-2.1-blue" alt="" class="bbc_img" loading="lazy"></b>&nbsp;</span></span><br><br><span style="font-size: 1.45em;" class="bbc_size"><b>Patch Notes : </b></span><br><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.0: Initial Release</code><br><div class="codeheader"><span class="code floatleft">Code</span> <a class="codeoperation smf_select_text">Select</a> <a class="codeoperation smf_expand_code hidden" data-shrink-txt="Shrink" data-expand-txt="Expand">Expand</a></div><code class="bbc_code">1.0.1<br>Update: Updated for SMF 2.1.3<br>Adjustment: Adjusted the main text color in the SCEeditor.<br>Adjustment: Adjusted some border colors.</code>'',\r\n		file: ''CartoonLand.zip'',\r\n		author: ''TwitchisMental''\r\n	}\r\n};\r\nvar smf_featured = 3012;\r\nvar smf_random = 3006;\r\nvar smf_latestThemes = [3019, 3018, 3017];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById("smfLatestThemesWindow").innerHTML;\r\n\r\n	// !!! Why not just always auto?\r\n	document.getElementById("smfLatestThemesWindow").style.overflow = "auto";\r\n	setInnerHTML(document.getElementById("smfLatestThemesWindow"),\r\n	''\\\r\n		<h3 style="margin: 0; padding: 4px;">'' + smf_themeInfo[id].name + ''</h3>\\\r\n		<h4 style="margin: 0;padding: 4px;"><a href="https://custom.simplemachines.org/themes/index.php?lemma='' + id + ''">View Theme Now!</a></h4>\\\r\n		<div style="overflow: auto;">\\\r\n			<img src="https://custom.simplemachines.org/themes/index.php?action=download;lemma=''+id+'';image=thumb" alt="" style="float: right; margin: 10px;" />\\\r\n			<div style="padding:8px;">'' + smf_themeInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\r\n		</div>\\\r\n		<div style="padding: 4px;" class="smalltext"><a href="javascript:smf_themesBack();void(0);">(go back)</a></div>'');\r\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById("smfLatestThemesWindow").style.overflow = "";\r\n	setInnerHTML(document.getElementById("smfLatestThemesWindow"), window.smfLatestThemes_temp);\r\n	window.scrollTo(0, findTop(document.getElementById("smfLatestThemesWindow")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = ''\\\r\n	<div id="smfLatestThemesWindow">\\\r\n		<div>\\\r\n			<img src="https://www.simplemachines.org/smf/images/themes.png" width="102" height="98" style="float: right; margin: 0 0 10px 10px;" alt="(package)" />\\\r\n			<ul style="list-style: none; padding: 0; margin: 0 0 0 5px;">'';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += ''\\\r\n				<li style="list-style: none;"><a href="javascript:smf_themesMoreInfo('' + id_theme + '');void(0);">'' + smf_themeInfo[id_theme].name + '' by '' + smf_themeInfo[id_theme].author + ''</a></li>'';\r\n}\r\n\r\nwindow.smfLatestThemes += ''\\\r\n			</ul>'';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += ''\\\r\n				<h4 style="padding: 4px 4px 0 4px; margin: 0;">Featured Theme</h4>\\\r\n				<p style="padding: 0 4px; margin: 0;">\\\r\n					<a href="javascript:smf_themesMoreInfo(''+smf_featured+'');void(0);">''+smf_themeInfo[smf_featured].name + '' by '' + smf_themeInfo[smf_featured].author+''</a>\\\r\n				</p>'';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += ''\\\r\n				<h4 style="padding: 4px 4px 0 4px;margin: 0;">Theme of the Moment</h4>\\\r\n				<p style="padding: 0 4px; margin: 0;">\\\r\n					<a href="javascript:smf_themesMoreInfo(''+smf_random+'');void(0);">''+smf_themeInfo[smf_random].name + '' by '' + smf_themeInfo[smf_random].author+''</a>\\\r\n				</p>'';\r\n}\r\nwindow.smfLatestThemes += ''\\\r\n		</div>\\\r\n	</div>'';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == "undefined")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\r\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}', 'text/javascript');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_approval_queue`
--

CREATE TABLE IF NOT EXISTS `smf_approval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_attachments`
--

CREATE TABLE IF NOT EXISTS `smf_attachments` (
  `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attach`),
  UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  KEY `id_msg` (`id_msg`),
  KEY `attachment_type` (`attachment_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `smf_attachments`
--

INSERT INTO `smf_attachments` (`id_attach`, `id_thumb`, `id_msg`, `id_member`, `id_folder`, `attachment_type`, `filename`, `file_hash`, `fileext`, `size`, `downloads`, `width`, `height`, `mime_type`, `approved`) VALUES
(1, 0, 0, 2, 1, 0, 'avatar_2_1667638536.png', '38a80efcab097a082b2dd9e365f7d41c818d4afa', 'png', 3590, 150, 65, 65, 'image/png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_ban_groups`
--

CREATE TABLE IF NOT EXISTS `smf_ban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_ban_items`
--

CREATE TABLE IF NOT EXISTS `smf_ban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban`),
  KEY `id_ban_group` (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_boards`
--

CREATE TABLE IF NOT EXISTS `smf_boards` (
  `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_board`),
  UNIQUE KEY `categories` (`id_cat`,`id_board`),
  KEY `id_parent` (`id_parent`),
  KEY `id_msg_updated` (`id_msg_updated`),
  KEY `member_groups` (`member_groups`(48))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `smf_boards`
--

INSERT INTO `smf_boards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`) VALUES
(1, 1, 0, 0, 3, 1, 1, '-1,0,2', 1, 'General Discussion', 'Feel free to talk about anything and everything in this board.', 1, 1, 0, 0, 0, 0, 0, ''),
(2, 2, 0, 0, 1, 16, 16, '-1,0,2', 1, 'News', '', 8, 14, 0, 0, 0, 0, 0, ''),
(3, 2, 0, 0, 2, 7, 7, '-1,0,2', 1, 'Новый раздел', '', 1, 1, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_board_permissions`
--

CREATE TABLE IF NOT EXISTS `smf_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`id_profile`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_board_permissions`
--

INSERT INTO `smf_board_permissions` (`id_group`, `id_profile`, `permission`, `add_deny`) VALUES
(-1, 1, 'poll_view', 1),
(0, 1, 'remove_own', 1),
(0, 1, 'lock_own', 1),
(0, 1, 'mark_any_notify', 1),
(0, 1, 'mark_notify', 1),
(0, 1, 'modify_own', 1),
(0, 1, 'poll_add_own', 1),
(0, 1, 'poll_edit_own', 1),
(0, 1, 'poll_lock_own', 1),
(0, 1, 'poll_post', 1),
(0, 1, 'poll_view', 1),
(0, 1, 'poll_vote', 1),
(0, 1, 'post_attachment', 1),
(0, 1, 'post_new', 1),
(0, 1, 'post_reply_any', 1),
(0, 1, 'post_reply_own', 1),
(0, 1, 'post_unapproved_topics', 1),
(0, 1, 'post_unapproved_replies_any', 1),
(0, 1, 'post_unapproved_replies_own', 1),
(0, 1, 'post_unapproved_attachments', 1),
(0, 1, 'delete_own', 1),
(0, 1, 'report_any', 1),
(0, 1, 'send_topic', 1),
(0, 1, 'view_attachments', 1),
(2, 1, 'moderate_board', 1),
(2, 1, 'post_new', 1),
(2, 1, 'post_reply_own', 1),
(2, 1, 'post_reply_any', 1),
(2, 1, 'post_unapproved_topics', 1),
(2, 1, 'post_unapproved_replies_any', 1),
(2, 1, 'post_unapproved_replies_own', 1),
(2, 1, 'post_unapproved_attachments', 1),
(2, 1, 'poll_post', 1),
(2, 1, 'poll_add_any', 1),
(2, 1, 'poll_remove_any', 1),
(2, 1, 'poll_view', 1),
(2, 1, 'poll_vote', 1),
(2, 1, 'poll_lock_any', 1),
(2, 1, 'poll_edit_any', 1),
(2, 1, 'report_any', 1),
(2, 1, 'lock_own', 1),
(2, 1, 'send_topic', 1),
(2, 1, 'mark_any_notify', 1),
(2, 1, 'mark_notify', 1),
(2, 1, 'delete_own', 1),
(2, 1, 'modify_own', 1),
(2, 1, 'make_sticky', 1),
(2, 1, 'lock_any', 1),
(2, 1, 'remove_any', 1),
(2, 1, 'move_any', 1),
(2, 1, 'merge_any', 1),
(2, 1, 'split_any', 1),
(2, 1, 'delete_any', 1),
(2, 1, 'modify_any', 1),
(2, 1, 'approve_posts', 1),
(2, 1, 'post_attachment', 1),
(2, 1, 'view_attachments', 1),
(3, 1, 'moderate_board', 1),
(3, 1, 'post_new', 1),
(3, 1, 'post_reply_own', 1),
(3, 1, 'post_reply_any', 1),
(3, 1, 'post_unapproved_topics', 1),
(3, 1, 'post_unapproved_replies_any', 1),
(3, 1, 'post_unapproved_replies_own', 1),
(3, 1, 'post_unapproved_attachments', 1),
(3, 1, 'poll_post', 1),
(3, 1, 'poll_add_any', 1),
(3, 1, 'poll_remove_any', 1),
(3, 1, 'poll_view', 1),
(3, 1, 'poll_vote', 1),
(3, 1, 'poll_lock_any', 1),
(3, 1, 'poll_edit_any', 1),
(3, 1, 'report_any', 1),
(3, 1, 'lock_own', 1),
(3, 1, 'send_topic', 1),
(3, 1, 'mark_any_notify', 1),
(3, 1, 'mark_notify', 1),
(3, 1, 'delete_own', 1),
(3, 1, 'modify_own', 1),
(3, 1, 'make_sticky', 1),
(3, 1, 'lock_any', 1),
(3, 1, 'remove_any', 1),
(3, 1, 'move_any', 1),
(3, 1, 'merge_any', 1),
(3, 1, 'split_any', 1),
(3, 1, 'delete_any', 1),
(3, 1, 'modify_any', 1),
(3, 1, 'approve_posts', 1),
(3, 1, 'post_attachment', 1),
(3, 1, 'view_attachments', 1),
(-1, 2, 'poll_view', 1),
(0, 2, 'remove_own', 1),
(0, 2, 'lock_own', 1),
(0, 2, 'mark_any_notify', 1),
(0, 2, 'mark_notify', 1),
(0, 2, 'modify_own', 1),
(0, 2, 'poll_view', 1),
(0, 2, 'poll_vote', 1),
(0, 2, 'post_attachment', 1),
(0, 2, 'post_new', 1),
(0, 2, 'post_reply_any', 1),
(0, 2, 'post_reply_own', 1),
(0, 2, 'post_unapproved_topics', 1),
(0, 2, 'post_unapproved_replies_any', 1),
(0, 2, 'post_unapproved_replies_own', 1),
(0, 2, 'post_unapproved_attachments', 1),
(0, 2, 'delete_own', 1),
(0, 2, 'report_any', 1),
(0, 2, 'send_topic', 1),
(0, 2, 'view_attachments', 1),
(2, 2, 'moderate_board', 1),
(2, 2, 'post_new', 1),
(2, 2, 'post_reply_own', 1),
(2, 2, 'post_reply_any', 1),
(2, 2, 'post_unapproved_topics', 1),
(2, 2, 'post_unapproved_replies_any', 1),
(2, 2, 'post_unapproved_replies_own', 1),
(2, 2, 'post_unapproved_attachments', 1),
(2, 2, 'poll_post', 1),
(2, 2, 'poll_add_any', 1),
(2, 2, 'poll_remove_any', 1),
(2, 2, 'poll_view', 1),
(2, 2, 'poll_vote', 1),
(2, 2, 'poll_lock_any', 1),
(2, 2, 'poll_edit_any', 1),
(2, 2, 'report_any', 1),
(2, 2, 'lock_own', 1),
(2, 2, 'send_topic', 1),
(2, 2, 'mark_any_notify', 1),
(2, 2, 'mark_notify', 1),
(2, 2, 'delete_own', 1),
(2, 2, 'modify_own', 1),
(2, 2, 'make_sticky', 1),
(2, 2, 'lock_any', 1),
(2, 2, 'remove_any', 1),
(2, 2, 'move_any', 1),
(2, 2, 'merge_any', 1),
(2, 2, 'split_any', 1),
(2, 2, 'delete_any', 1),
(2, 2, 'modify_any', 1),
(2, 2, 'approve_posts', 1),
(2, 2, 'post_attachment', 1),
(2, 2, 'view_attachments', 1),
(3, 2, 'moderate_board', 1),
(3, 2, 'post_new', 1),
(3, 2, 'post_reply_own', 1),
(3, 2, 'post_reply_any', 1),
(3, 2, 'post_unapproved_topics', 1),
(3, 2, 'post_unapproved_replies_any', 1),
(3, 2, 'post_unapproved_replies_own', 1),
(3, 2, 'post_unapproved_attachments', 1),
(3, 2, 'poll_post', 1),
(3, 2, 'poll_add_any', 1),
(3, 2, 'poll_remove_any', 1),
(3, 2, 'poll_view', 1),
(3, 2, 'poll_vote', 1),
(3, 2, 'poll_lock_any', 1),
(3, 2, 'poll_edit_any', 1),
(3, 2, 'report_any', 1),
(3, 2, 'lock_own', 1),
(3, 2, 'send_topic', 1),
(3, 2, 'mark_any_notify', 1),
(3, 2, 'mark_notify', 1),
(3, 2, 'delete_own', 1),
(3, 2, 'modify_own', 1),
(3, 2, 'make_sticky', 1),
(3, 2, 'lock_any', 1),
(3, 2, 'remove_any', 1),
(3, 2, 'move_any', 1),
(3, 2, 'merge_any', 1),
(3, 2, 'split_any', 1),
(3, 2, 'delete_any', 1),
(3, 2, 'modify_any', 1),
(3, 2, 'approve_posts', 1),
(3, 2, 'post_attachment', 1),
(3, 2, 'view_attachments', 1),
(-1, 3, 'poll_view', 1),
(0, 3, 'remove_own', 1),
(0, 3, 'lock_own', 1),
(0, 3, 'mark_any_notify', 1),
(0, 3, 'mark_notify', 1),
(0, 3, 'modify_own', 1),
(0, 3, 'poll_view', 1),
(0, 3, 'poll_vote', 1),
(0, 3, 'post_attachment', 1),
(0, 3, 'post_reply_any', 1),
(0, 3, 'post_reply_own', 1),
(0, 3, 'post_unapproved_replies_any', 1),
(0, 3, 'post_unapproved_replies_own', 1),
(0, 3, 'post_unapproved_attachments', 1),
(0, 3, 'delete_own', 1),
(0, 3, 'report_any', 1),
(0, 3, 'send_topic', 1),
(0, 3, 'view_attachments', 1),
(2, 3, 'moderate_board', 1),
(2, 3, 'post_new', 1),
(2, 3, 'post_reply_own', 1),
(2, 3, 'post_reply_any', 1),
(2, 3, 'post_unapproved_topics', 1),
(2, 3, 'post_unapproved_replies_any', 1),
(2, 3, 'post_unapproved_replies_own', 1),
(2, 3, 'post_unapproved_attachments', 1),
(2, 3, 'poll_post', 1),
(2, 3, 'poll_add_any', 1),
(2, 3, 'poll_remove_any', 1),
(2, 3, 'poll_view', 1),
(2, 3, 'poll_vote', 1),
(2, 3, 'poll_lock_any', 1),
(2, 3, 'poll_edit_any', 1),
(2, 3, 'report_any', 1),
(2, 3, 'lock_own', 1),
(2, 3, 'send_topic', 1),
(2, 3, 'mark_any_notify', 1),
(2, 3, 'mark_notify', 1),
(2, 3, 'delete_own', 1),
(2, 3, 'modify_own', 1),
(2, 3, 'make_sticky', 1),
(2, 3, 'lock_any', 1),
(2, 3, 'remove_any', 1),
(2, 3, 'move_any', 1),
(2, 3, 'merge_any', 1),
(2, 3, 'split_any', 1),
(2, 3, 'delete_any', 1),
(2, 3, 'modify_any', 1),
(2, 3, 'approve_posts', 1),
(2, 3, 'post_attachment', 1),
(2, 3, 'view_attachments', 1),
(3, 3, 'moderate_board', 1),
(3, 3, 'post_new', 1),
(3, 3, 'post_reply_own', 1),
(3, 3, 'post_reply_any', 1),
(3, 3, 'post_unapproved_topics', 1),
(3, 3, 'post_unapproved_replies_any', 1),
(3, 3, 'post_unapproved_replies_own', 1),
(3, 3, 'post_unapproved_attachments', 1),
(3, 3, 'poll_post', 1),
(3, 3, 'poll_add_any', 1),
(3, 3, 'poll_remove_any', 1),
(3, 3, 'poll_view', 1),
(3, 3, 'poll_vote', 1),
(3, 3, 'poll_lock_any', 1),
(3, 3, 'poll_edit_any', 1),
(3, 3, 'report_any', 1),
(3, 3, 'lock_own', 1),
(3, 3, 'send_topic', 1),
(3, 3, 'mark_any_notify', 1),
(3, 3, 'mark_notify', 1),
(3, 3, 'delete_own', 1),
(3, 3, 'modify_own', 1),
(3, 3, 'make_sticky', 1),
(3, 3, 'lock_any', 1),
(3, 3, 'remove_any', 1),
(3, 3, 'move_any', 1),
(3, 3, 'merge_any', 1),
(3, 3, 'split_any', 1),
(3, 3, 'delete_any', 1),
(3, 3, 'modify_any', 1),
(3, 3, 'approve_posts', 1),
(3, 3, 'post_attachment', 1),
(3, 3, 'view_attachments', 1),
(-1, 4, 'poll_view', 1),
(0, 4, 'mark_any_notify', 1),
(0, 4, 'mark_notify', 1),
(0, 4, 'poll_view', 1),
(0, 4, 'poll_vote', 1),
(0, 4, 'report_any', 1),
(0, 4, 'send_topic', 1),
(0, 4, 'view_attachments', 1),
(2, 4, 'moderate_board', 1),
(2, 4, 'post_new', 1),
(2, 4, 'post_reply_own', 1),
(2, 4, 'post_reply_any', 1),
(2, 4, 'post_unapproved_topics', 1),
(2, 4, 'post_unapproved_replies_any', 1),
(2, 4, 'post_unapproved_replies_own', 1),
(2, 4, 'post_unapproved_attachments', 1),
(2, 4, 'poll_post', 1),
(2, 4, 'poll_add_any', 1),
(2, 4, 'poll_remove_any', 1),
(2, 4, 'poll_view', 1),
(2, 4, 'poll_vote', 1),
(2, 4, 'poll_lock_any', 1),
(2, 4, 'poll_edit_any', 1),
(2, 4, 'report_any', 1),
(2, 4, 'lock_own', 1),
(2, 4, 'send_topic', 1),
(2, 4, 'mark_any_notify', 1),
(2, 4, 'mark_notify', 1),
(2, 4, 'delete_own', 1),
(2, 4, 'modify_own', 1),
(2, 4, 'make_sticky', 1),
(2, 4, 'lock_any', 1),
(2, 4, 'remove_any', 1),
(2, 4, 'move_any', 1),
(2, 4, 'merge_any', 1),
(2, 4, 'split_any', 1),
(2, 4, 'delete_any', 1),
(2, 4, 'modify_any', 1),
(2, 4, 'approve_posts', 1),
(2, 4, 'post_attachment', 1),
(2, 4, 'view_attachments', 1),
(3, 4, 'moderate_board', 1),
(3, 4, 'post_new', 1),
(3, 4, 'post_reply_own', 1),
(3, 4, 'post_reply_any', 1),
(3, 4, 'post_unapproved_topics', 1),
(3, 4, 'post_unapproved_replies_any', 1),
(3, 4, 'post_unapproved_replies_own', 1),
(3, 4, 'post_unapproved_attachments', 1),
(3, 4, 'poll_post', 1),
(3, 4, 'poll_add_any', 1),
(3, 4, 'poll_remove_any', 1),
(3, 4, 'poll_view', 1),
(3, 4, 'poll_vote', 1),
(3, 4, 'poll_lock_any', 1),
(3, 4, 'poll_edit_any', 1),
(3, 4, 'report_any', 1),
(3, 4, 'lock_own', 1),
(3, 4, 'send_topic', 1),
(3, 4, 'mark_any_notify', 1),
(3, 4, 'mark_notify', 1),
(3, 4, 'delete_own', 1),
(3, 4, 'modify_own', 1),
(3, 4, 'make_sticky', 1),
(3, 4, 'lock_any', 1),
(3, 4, 'remove_any', 1),
(3, 4, 'move_any', 1),
(3, 4, 'merge_any', 1),
(3, 4, 'split_any', 1),
(3, 4, 'delete_any', 1),
(3, 4, 'modify_any', 1),
(3, 4, 'approve_posts', 1),
(3, 4, 'post_attachment', 1),
(3, 4, 'view_attachments', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_calendar`
--

CREATE TABLE IF NOT EXISTS `smf_calendar` (
  `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_event`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_calendar_holidays`
--

CREATE TABLE IF NOT EXISTS `smf_calendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_holiday`),
  KEY `event_date` (`event_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Дамп данных таблицы `smf_calendar_holidays`
--

INSERT INTO `smf_calendar_holidays` (`id_holiday`, `event_date`, `title`) VALUES
(1, '0004-01-01', 'New Year''s'),
(2, '0004-12-25', 'Christmas'),
(3, '0004-02-14', 'Valentine''s Day'),
(4, '0004-03-17', 'St. Patrick''s Day'),
(5, '0004-04-01', 'April Fools'),
(6, '0004-04-22', 'Earth Day'),
(7, '0004-10-24', 'United Nations Day'),
(8, '0004-10-31', 'Halloween'),
(9, '2010-05-09', 'Mother''s Day'),
(10, '2011-05-08', 'Mother''s Day'),
(11, '2012-05-13', 'Mother''s Day'),
(12, '2013-05-12', 'Mother''s Day'),
(13, '2014-05-11', 'Mother''s Day'),
(14, '2015-05-10', 'Mother''s Day'),
(15, '2016-05-08', 'Mother''s Day'),
(16, '2017-05-14', 'Mother''s Day'),
(17, '2018-05-13', 'Mother''s Day'),
(18, '2019-05-12', 'Mother''s Day'),
(19, '2020-05-10', 'Mother''s Day'),
(20, '2008-06-15', 'Father''s Day'),
(21, '2009-06-21', 'Father''s Day'),
(22, '2010-06-20', 'Father''s Day'),
(23, '2011-06-19', 'Father''s Day'),
(24, '2012-06-17', 'Father''s Day'),
(25, '2013-06-16', 'Father''s Day'),
(26, '2014-06-15', 'Father''s Day'),
(27, '2015-06-21', 'Father''s Day'),
(28, '2016-06-19', 'Father''s Day'),
(29, '2017-06-18', 'Father''s Day'),
(30, '2018-06-17', 'Father''s Day'),
(31, '2019-06-16', 'Father''s Day'),
(32, '2020-06-21', 'Father''s Day'),
(33, '2010-06-21', 'Summer Solstice'),
(34, '2011-06-21', 'Summer Solstice'),
(35, '2012-06-20', 'Summer Solstice'),
(36, '2013-06-21', 'Summer Solstice'),
(37, '2014-06-21', 'Summer Solstice'),
(38, '2015-06-21', 'Summer Solstice'),
(39, '2016-06-20', 'Summer Solstice'),
(40, '2017-06-20', 'Summer Solstice'),
(41, '2018-06-21', 'Summer Solstice'),
(42, '2019-06-21', 'Summer Solstice'),
(43, '2020-06-20', 'Summer Solstice'),
(44, '2010-03-20', 'Vernal Equinox'),
(45, '2011-03-20', 'Vernal Equinox'),
(46, '2012-03-20', 'Vernal Equinox'),
(47, '2013-03-20', 'Vernal Equinox'),
(48, '2014-03-20', 'Vernal Equinox'),
(49, '2015-03-20', 'Vernal Equinox'),
(50, '2016-03-19', 'Vernal Equinox'),
(51, '2017-03-20', 'Vernal Equinox'),
(52, '2018-03-20', 'Vernal Equinox'),
(53, '2019-03-20', 'Vernal Equinox'),
(54, '2020-03-19', 'Vernal Equinox'),
(55, '2010-12-21', 'Winter Solstice'),
(56, '2011-12-22', 'Winter Solstice'),
(57, '2012-12-21', 'Winter Solstice'),
(58, '2013-12-21', 'Winter Solstice'),
(59, '2014-12-21', 'Winter Solstice'),
(60, '2015-12-21', 'Winter Solstice'),
(61, '2016-12-21', 'Winter Solstice'),
(62, '2017-12-21', 'Winter Solstice'),
(63, '2018-12-21', 'Winter Solstice'),
(64, '2019-12-21', 'Winter Solstice'),
(65, '2020-12-21', 'Winter Solstice'),
(66, '2010-09-22', 'Autumnal Equinox'),
(67, '2011-09-23', 'Autumnal Equinox'),
(68, '2012-09-22', 'Autumnal Equinox'),
(69, '2013-09-22', 'Autumnal Equinox'),
(70, '2014-09-22', 'Autumnal Equinox'),
(71, '2015-09-23', 'Autumnal Equinox'),
(72, '2016-09-22', 'Autumnal Equinox'),
(73, '2017-09-22', 'Autumnal Equinox'),
(74, '2018-09-22', 'Autumnal Equinox'),
(75, '2019-09-23', 'Autumnal Equinox'),
(76, '2020-09-22', 'Autumnal Equinox'),
(77, '0004-07-04', 'Independence Day'),
(78, '0004-05-05', 'Cinco de Mayo'),
(79, '0004-06-14', 'Flag Day'),
(80, '0004-11-11', 'Veterans Day'),
(81, '0004-02-02', 'Groundhog Day'),
(82, '2010-11-25', 'Thanksgiving'),
(83, '2011-11-24', 'Thanksgiving'),
(84, '2012-11-22', 'Thanksgiving'),
(85, '2013-11-28', 'Thanksgiving'),
(86, '2014-11-27', 'Thanksgiving'),
(87, '2015-11-26', 'Thanksgiving'),
(88, '2016-11-24', 'Thanksgiving'),
(89, '2017-11-23', 'Thanksgiving'),
(90, '2018-11-22', 'Thanksgiving'),
(91, '2019-11-28', 'Thanksgiving'),
(92, '2020-11-26', 'Thanksgiving'),
(93, '2010-05-31', 'Memorial Day'),
(94, '2011-05-30', 'Memorial Day'),
(95, '2012-05-28', 'Memorial Day'),
(96, '2013-05-27', 'Memorial Day'),
(97, '2014-05-26', 'Memorial Day'),
(98, '2015-05-25', 'Memorial Day'),
(99, '2016-05-30', 'Memorial Day'),
(100, '2017-05-29', 'Memorial Day'),
(101, '2018-05-28', 'Memorial Day'),
(102, '2019-05-27', 'Memorial Day'),
(103, '2020-05-25', 'Memorial Day'),
(104, '2010-09-06', 'Labor Day'),
(105, '2011-09-05', 'Labor Day'),
(106, '2012-09-03', 'Labor Day'),
(107, '2013-09-02', 'Labor Day'),
(108, '2014-09-01', 'Labor Day'),
(109, '2015-09-07', 'Labor Day'),
(110, '2016-09-05', 'Labor Day'),
(111, '2017-09-04', 'Labor Day'),
(112, '2018-09-03', 'Labor Day'),
(113, '2019-09-02', 'Labor Day'),
(114, '2020-09-07', 'Labor Day'),
(115, '0004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_categories`
--

CREATE TABLE IF NOT EXISTS `smf_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `smf_categories`
--

INSERT INTO `smf_categories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(1, 1, 'General Category', 1),
(2, 0, 'Last Frontier News', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_collapsed_categories`
--

CREATE TABLE IF NOT EXISTS `smf_collapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cat`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_custom_fields`
--

CREATE TABLE IF NOT EXISTS `smf_custom_fields` (
  `id_field` smallint(5) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`),
  UNIQUE KEY `col_name` (`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_group_moderators`
--

CREATE TABLE IF NOT EXISTS `smf_group_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_actions`
--

CREATE TABLE IF NOT EXISTS `smf_log_actions` (
  `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `id_log` (`id_log`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `id_board` (`id_board`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_activity`
--

CREATE TABLE IF NOT EXISTS `smf_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `most_on` (`most_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_activity`
--

INSERT INTO `smf_log_activity` (`date`, `hits`, `topics`, `posts`, `registers`, `most_on`) VALUES
('2022-11-05', 0, 5, 8, 3, 1),
('2022-11-08', 0, 0, 0, 0, 1),
('2022-11-12', 0, 1, 3, 0, 1),
('2022-11-13', 0, 0, 1, 0, 0),
('2022-11-15', 0, 0, 0, 0, 1),
('2022-11-16', 0, 0, 0, 0, 1),
('2022-11-19', 0, 0, 0, 0, 2),
('2022-11-20', 0, 0, 0, 0, 2),
('2022-11-21', 0, 0, 0, 0, 1),
('2022-11-22', 0, 0, 0, 0, 1),
('2022-11-23', 0, 0, 0, 0, 1),
('2022-11-24', 0, 0, 0, 0, 1),
('2022-11-25', 0, 0, 0, 0, 1),
('2022-11-26', 0, 0, 0, 0, 1),
('2022-11-27', 0, 0, 0, 0, 1),
('2022-11-28', 0, 0, 0, 0, 1),
('2022-11-29', 0, 0, 0, 0, 1),
('2022-11-30', 0, 0, 0, 0, 1),
('2022-12-01', 0, 1, 1, 0, 1),
('2022-12-05', 0, 0, 0, 0, 1),
('2022-12-06', 0, 0, 0, 0, 1),
('2022-12-07', 0, 0, 0, 0, 1),
('2022-12-09', 0, 0, 0, 0, 1),
('2022-12-10', 0, 0, 0, 0, 1),
('2022-12-11', 0, 2, 2, 0, 1),
('2022-12-12', 0, 1, 1, 0, 1),
('2022-12-15', 0, 0, 0, 0, 1),
('2022-12-18', 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_banned`
--

CREATE TABLE IF NOT EXISTS `smf_log_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban_log`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_boards`
--

CREATE TABLE IF NOT EXISTS `smf_log_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_boards`
--

INSERT INTO `smf_log_boards` (`id_member`, `id_board`, `id_msg`) VALUES
(1, 2, 16),
(2, 2, 12),
(3, 2, 8),
(2, 1, 12),
(2, 3, 12),
(1, 3, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_comments`
--

CREATE TABLE IF NOT EXISTS `smf_log_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `log_time` (`log_time`),
  KEY `comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_digest`
--

CREATE TABLE IF NOT EXISTS `smf_log_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_digest`
--

INSERT INTO `smf_log_digest` (`id_topic`, `id_msg`, `note_type`, `daily`, `exclude`) VALUES
(2, 2, 'topic', 0, 1),
(2, 3, 'reply', 0, 0),
(3, 4, 'topic', 0, 1),
(2, 5, 'reply', 0, 0),
(4, 6, 'topic', 0, 2),
(5, 7, 'topic', 0, 1),
(2, 8, 'reply', 0, 0),
(6, 9, 'topic', 0, 1),
(6, 10, 'reply', 0, 0),
(6, 11, 'reply', 0, 0),
(6, 12, 'reply', 0, 0),
(5, 7, 'move', 0, 0),
(8, 14, 'topic', 0, 1),
(9, 15, 'topic', 0, 1),
(10, 16, 'topic', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_errors`
--

CREATE TABLE IF NOT EXISTS `smf_log_errors` (
  `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_error`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=493 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_floodcontrol`
--

CREATE TABLE IF NOT EXISTS `smf_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ip`,`log_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_floodcontrol`
--

INSERT INTO `smf_log_floodcontrol` (`ip`, `log_time`, `log_type`) VALUES
('127.0.0.1', 1668317045, 'post'),
('127.0.0.1', 1667640064, 'register'),
('127.0.0.1', 1670408301, 'login');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_group_requests`
--

CREATE TABLE IF NOT EXISTS `smf_log_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id_request`),
  UNIQUE KEY `id_member` (`id_member`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_karma`
--

CREATE TABLE IF NOT EXISTS `smf_log_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_target`,`id_executor`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_mark_read`
--

CREATE TABLE IF NOT EXISTS `smf_log_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_member_notices`
--

CREATE TABLE IF NOT EXISTS `smf_log_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_notify`
--

CREATE TABLE IF NOT EXISTS `smf_log_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  KEY `id_topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_online`
--

CREATE TABLE IF NOT EXISTS `smf_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_online`
--

INSERT INTO `smf_log_online` (`session`, `log_time`, `id_member`, `id_spider`, `ip`, `url`) VALUES
('8ccb20cd52bc194f64646dac3fbc30c8', 1671383914, 1, 0, 774908080, 'a:4:{s:6:"action";s:5:"admin";s:4:"area";s:4:"news";s:2:"sa";s:8:"settings";s:10:"USER_AGENT";s:110:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36";}');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_packages`
--

CREATE TABLE IF NOT EXISTS `smf_log_packages` (
  `id_install` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  PRIMARY KEY (`id_install`),
  KEY `filename` (`filename`(15))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_polls`
--

CREATE TABLE IF NOT EXISTS `smf_log_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id_poll` (`id_poll`,`id_member`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_reported`
--

CREATE TABLE IF NOT EXISTS `smf_log_reported` (
  `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `id_topic` (`id_topic`),
  KEY `closed` (`closed`),
  KEY `time_started` (`time_started`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_reported_comments`
--

CREATE TABLE IF NOT EXISTS `smf_log_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_report` (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `time_sent` (`time_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_scheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `smf_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL AUTO_INCREMENT,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Дамп данных таблицы `smf_log_scheduled_tasks`
--

INSERT INTO `smf_log_scheduled_tasks` (`id_log`, `id_task`, `time_run`, `time_taken`) VALUES
(93, 3, 1670656832, 0),
(92, 7, 1670568622, 4),
(91, 3, 1670438397, 0),
(90, 5, 1670408303, 0),
(89, 1, 1670408287, 0),
(88, 7, 1670347042, 4),
(87, 1, 1670347000, 0),
(86, 1, 1670289843, 0),
(85, 9, 1670265418, 0),
(10, 1, 1667915278, 0),
(11, 5, 1667915297, 0),
(12, 1, 1668254371, 0),
(13, 5, 1668254374, 0),
(14, 2, 1668254380, 0),
(15, 6, 1668254381, 0),
(16, 9, 1668254383, 0),
(17, 1, 1668317028, 0),
(18, 5, 1668317035, 0),
(19, 3, 1668317045, 0),
(20, 1, 1668530907, 0),
(21, 7, 1668530924, 4),
(22, 5, 1668530930, 0),
(23, 3, 1668531142, 0),
(24, 1, 1668536482, 0),
(25, 1, 1668617355, 0),
(26, 3, 1668866174, 0),
(27, 7, 1668866295, 3),
(28, 1, 1668870569, 0),
(29, 2, 1668871051, 0),
(30, 6, 1668871263, 0),
(31, 9, 1668871269, 0),
(32, 1, 1668902577, 0),
(33, 5, 1668902598, 0),
(34, 1, 1668910763, 0),
(35, 1, 1668920683, 0),
(36, 1, 1668932066, 0),
(37, 1, 1668941788, 0),
(38, 7, 1668965517, 5),
(39, 1, 1668966981, 0),
(40, 3, 1669023172, 0),
(41, 1, 1669023290, 0),
(42, 7, 1669042997, 4),
(43, 1, 1669044057, 0),
(44, 1, 1669137607, 0),
(45, 3, 1669137980, 0),
(46, 7, 1669137993, 4),
(47, 1, 1669167172, 0),
(48, 1, 1669256967, 0),
(49, 7, 1669256985, 5),
(50, 3, 1669412062, 0),
(51, 1, 1669412093, 0),
(52, 7, 1669412148, 5),
(53, 1, 1669476765, 0),
(54, 2, 1669476784, 0),
(55, 6, 1669476937, 0),
(56, 9, 1669477229, 0),
(57, 7, 1669477244, 6),
(58, 1, 1669485664, 0),
(59, 1, 1669512784, 0),
(60, 5, 1669514142, 0),
(61, 3, 1669514237, 0),
(62, 1, 1669521874, 0),
(63, 1, 1669600681, 0),
(64, 7, 1669600698, 5),
(65, 5, 1669600724, 0),
(66, 3, 1669601345, 0),
(67, 1, 1669621463, 0),
(68, 1, 1669654242, 0),
(69, 1, 1669659293, 0),
(70, 1, 1669666156, 0),
(71, 1, 1669686340, 0),
(72, 1, 1669773624, 0),
(73, 7, 1669774889, 5),
(74, 1, 1669780877, 0),
(75, 1, 1669833344, 0),
(76, 1, 1669863701, 0),
(77, 5, 1669863728, 0),
(78, 3, 1669863743, 0),
(79, 1, 1670260375, 0),
(80, 7, 1670260410, 5),
(81, 5, 1670260532, 0),
(82, 3, 1670260692, 0),
(83, 2, 1670261994, 1),
(84, 6, 1670265152, 0),
(94, 7, 1670674841, 5),
(95, 1, 1670680880, 0),
(96, 1, 1670688110, 0),
(97, 1, 1670743709, 0),
(98, 5, 1670743711, 0),
(99, 3, 1670743718, 0),
(100, 1, 1670759573, 0),
(101, 7, 1670760355, 3),
(102, 1, 1670767281, 0),
(103, 1, 1670780828, 0),
(104, 1, 1670797787, 0),
(105, 3, 1671123700, 0),
(106, 1, 1671124281, 0),
(107, 1, 1671156287, 0),
(108, 7, 1671247646, 5),
(109, 3, 1671280365, 0),
(110, 1, 1671339037, 0),
(111, 5, 1671339047, 0),
(112, 1, 1671346435, 0),
(113, 1, 1671350533, 0),
(114, 1, 1671370313, 0),
(115, 7, 1671370349, 5),
(116, 1, 1671379247, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_search_messages`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_search_results`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_search_subjects`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_search_subjects`
--

INSERT INTO `smf_log_search_subjects` (`word`, `id_topic`) VALUES
('another', 3),
('another', 4),
('SMF', 1),
('subject', 2),
('subject', 3),
('subject', 4),
('to', 1),
('user', 4),
('Welcome', 1),
('йфя', 7),
('перенесено', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_search_topics`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_spider_hits`
--

CREATE TABLE IF NOT EXISTS `smf_log_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`),
  KEY `id_spider` (`id_spider`),
  KEY `log_time` (`log_time`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_spider_stats`
--

CREATE TABLE IF NOT EXISTS `smf_log_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`stat_date`,`id_spider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_subscribed`
--

CREATE TABLE IF NOT EXISTS `smf_log_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_sublog`),
  UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  KEY `end_time` (`end_time`),
  KEY `reminder_sent` (`reminder_sent`),
  KEY `payments_pending` (`payments_pending`),
  KEY `status` (`status`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_log_topics`
--

CREATE TABLE IF NOT EXISTS `smf_log_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_log_topics`
--

INSERT INTO `smf_log_topics` (`id_member`, `id_topic`, `id_msg`) VALUES
(1, 2, 7),
(1, 3, 4),
(2, 2, 5),
(2, 4, 7),
(1, 5, 12),
(3, 2, 8),
(1, 6, 16),
(2, 6, 12),
(2, 1, 12),
(2, 5, 12),
(1, 7, 13),
(1, 8, 14),
(1, 9, 16),
(2, 10, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_mail_queue`
--

CREATE TABLE IF NOT EXISTS `smf_mail_queue` (
  `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mail`),
  KEY `time_sent` (`time_sent`),
  KEY `mail_priority` (`priority`,`id_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_membergroups`
--

CREATE TABLE IF NOT EXISTS `smf_membergroups` (
  `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id_group`),
  KEY `min_posts` (`min_posts`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `smf_membergroups`
--

INSERT INTO `smf_membergroups` (`id_group`, `group_name`, `description`, `online_color`, `min_posts`, `max_messages`, `stars`, `group_type`, `hidden`, `id_parent`) VALUES
(1, 'Administrator', '', '#FF0000', -1, 0, '5#staradmin.gif', 1, 0, -2),
(2, 'Global Moderator', '', '#0000FF', -1, 0, '5#stargmod.gif', 0, 0, -2),
(3, 'Moderator', '', '', -1, 0, '5#starmod.gif', 0, 0, -2),
(4, 'Newbie', '', '', 0, 0, '1#star.gif', 0, 0, -2),
(5, 'Jr. Member', '', '', 50, 0, '2#star.gif', 0, 0, -2),
(6, 'Full Member', '', '', 100, 0, '3#star.gif', 0, 0, -2),
(7, 'Sr. Member', '', '', 250, 0, '4#star.gif', 0, 0, -2),
(8, 'Hero Member', '', '', 500, 0, '5#star.gif', 0, 0, -2);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_members`
--

CREATE TABLE IF NOT EXISTS `smf_members` (
  `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_member`),
  KEY `member_name` (`member_name`),
  KEY `real_name` (`real_name`),
  KEY `date_registered` (`date_registered`),
  KEY `id_group` (`id_group`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `last_login` (`last_login`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `id_post_group` (`id_post_group`),
  KEY `warning` (`warning`),
  KEY `total_time_logged_in` (`total_time_logged_in`),
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `smf_members`
--

INSERT INTO `smf_members` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `message_labels`, `passwd`, `openid_uri`, `email_address`, `personal_text`, `gender`, `birthdate`, `website_title`, `website_url`, `location`, `icq`, `aim`, `yim`, `msn`, `hide_email`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `pm_email_notify`, `karma_bad`, `karma_good`, `usertitle`, `notify_announcements`, `notify_regularity`, `notify_send_body`, `notify_types`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`) VALUES
(1, 'admin', 1667616060, 8, 1, '', 1671383879, 'admin', 0, 0, 0, '', '', 0, '', '', 'e22bfb0f29aeeec7bbc518f8f966bb5a94195d36', '', 'admin@lff.ru', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, 'http://localhost:8181/a.jpg', 0, 0, 0, '', 1, 1, 0, 2, '127.0.0.1', '127.0.0.1', '', '', 0, 1, '', 12, '', '', 4, 51991, '7e59', '', 0, '1670408283|1', 1),
(2, 'test1', 1667631676, 6, 0, '', 1670568616, 'test1', 0, 0, 0, '', '', 0, '', '', '6d74062482be7f3f06bf0d5df5ded5c7b5ae600e', '', 'test1@lff.ru', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '127.0.0.1', '127.0.0.1', '', '', 0, 1, '', 13, '', '', 4, 10727, '2597', '', 0, '', 1),
(3, 'test2', 1667640064, 1, 0, '', 1667642407, 'test2', 0, 0, 0, '', '', 0, '', '', '5727cd870c5be05e0fe6628238c6f748a2d9652d', '', 'test2@lff.ru', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, 'Actors/Brad_Pitt.jpg', 1, 0, 0, '', 1, 1, 0, 2, '127.0.0.1', '127.0.0.1', '', '', 0, 1, '', 7, '', '', 4, 0, 'ccf5', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_messages`
--

CREATE TABLE IF NOT EXISTS `smf_messages` (
  `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_msg`),
  UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  KEY `approved` (`approved`),
  KEY `ip_index` (`poster_ip`(15),`id_topic`),
  KEY `participation` (`id_member`,`id_topic`),
  KEY `show_posts` (`id_member`,`id_board`),
  KEY `id_topic` (`id_topic`),
  KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `smf_messages`
--

INSERT INTO `smf_messages` (`id_msg`, `id_topic`, `id_board`, `poster_time`, `id_member`, `id_msg_modified`, `subject`, `poster_name`, `poster_email`, `poster_ip`, `smileys_enabled`, `modified_time`, `modified_name`, `body`, `icon`, `approved`) VALUES
(1, 1, 1, 1667616006, 0, 1, 'Welcome to SMF!', 'Simple Machines', 'info@simplemachines.org', '127.0.0.1', 1, 0, '', 'Welcome to Simple Machines Forum!<br /><br />We hope you enjoy using your forum.&nbsp; If you have any problems, please feel free to [url=https://www.simplemachines.org/community/index.php]ask us for assistance[/url].<br /><br />Thanks!<br />Simple Machines', 'xx', 1),
(2, 2, 2, 1667617647, 1, 2, 'Subject', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', 'Message', 'xx', 1),
(3, 2, 2, 1667629995, 1, 3, 'Re: Subject', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', 'Reply', 'xx', 1),
(4, 3, 2, 1667630980, 1, 4, 'Another subject', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', 'Another content', 'xx', 1),
(5, 2, 2, 1667631773, 2, 5, 'Re: Subject', 'test1', 'test1@lff.ru', '127.0.0.1', 1, 0, '', 'Another user reply', 'xx', 1),
(6, 4, 2, 1667631832, 2, 6, 'Another user subject', 'test1', 'test1@lff.ru', '127.0.0.1', 1, 0, '', 'Another user content', 'xx', 1),
(7, 5, 3, 1667637557, 1, 7, 'йфя', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', '<!-- wp:paragraph -->\n<p>яфй</p>\n<!-- /wp:paragraph -->', 'xx', 1),
(8, 2, 2, 1667642426, 3, 8, 'Re: Subject', 'test2', 'test2@lff.ru', '127.0.0.1', 1, 0, '', 'qwerty', 'xx', 1),
(9, 6, 2, 1668257408, 1, 9, 'title', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', '\n<p>content</p>\n', 'xx', 1),
(10, 6, 2, 1668257641, 2, 10, 'Re: title', 'test1', 'test1@lff.ru', '127.0.0.1', 1, 0, '', 'just replying', 'xx', 1),
(11, 6, 2, 1668257815, 2, 11, 'Re: title', 'test1', 'test1@lff.ru', '127.0.0.1', 1, 0, '', 'another reply', 'xx', 1),
(12, 6, 2, 1668317045, 2, 12, 'Re: title', 'test1', 'test1@lff.ru', '127.0.0.1', 1, 0, '', 'reply 3', 'xx', 1),
(13, 7, 2, 1669863765, 1, 13, 'Перенесено: йфя', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', 'Тема перенесена в [url=http://localhost:8181/forum/index.php?board=3.0]Новый раздел[/url].<br /><br />[iurl]http://localhost:8181/forum/index.php?topic=5.0[/iurl]', 'moved', 1),
(14, 8, 2, 1670797394, 1, 14, 'test1', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', '\n<p>test</p>\n', 'xx', 1),
(15, 9, 2, 1670797482, 1, 15, 'test1', 'admin', 'admin@lff.ru', '127.0.0.1', 1, 0, '', '\n<p>test</p>\n', 'xx', 1),
(16, 10, 2, 1670868232, 2, 16, 'test1', 'test1', 'test1@lff.ru', '127.0.0.1', 1, 0, '', '\n<p>test</p>\n', 'xx', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_message_icons`
--

CREATE TABLE IF NOT EXISTS `smf_message_icons` (
  `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_icon`),
  KEY `id_board` (`id_board`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `smf_message_icons`
--

INSERT INTO `smf_message_icons` (`id_icon`, `title`, `filename`, `id_board`, `icon_order`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_moderators`
--

CREATE TABLE IF NOT EXISTS `smf_moderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_board`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_openid_assoc`
--

CREATE TABLE IF NOT EXISTS `smf_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`server_url`(125),`handle`(125)),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_package_servers`
--

CREATE TABLE IF NOT EXISTS `smf_package_servers` (
  `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_server`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `smf_package_servers`
--

INSERT INTO `smf_package_servers` (`id_server`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_permissions`
--

CREATE TABLE IF NOT EXISTS `smf_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_permissions`
--

INSERT INTO `smf_permissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(0, 'view_mlist', 1),
(0, 'search_posts', 1),
(0, 'profile_view_own', 1),
(0, 'profile_view_any', 1),
(0, 'pm_read', 1),
(0, 'pm_send', 1),
(0, 'calendar_view', 1),
(0, 'view_stats', 1),
(0, 'who_view', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_remote_avatar', 1),
(0, 'karma_edit', 1),
(2, 'view_mlist', 1),
(2, 'search_posts', 1),
(2, 'profile_view_own', 1),
(2, 'profile_view_any', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_view', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_title_own', 1),
(2, 'calendar_post', 1),
(2, 'calendar_edit_any', 1),
(2, 'karma_edit', 1),
(2, 'access_mod_center', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_permission_profiles`
--

CREATE TABLE IF NOT EXISTS `smf_permission_profiles` (
  `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `smf_permission_profiles`
--

INSERT INTO `smf_permission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_personal_messages`
--

CREATE TABLE IF NOT EXISTS `smf_personal_messages` (
  `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_pm`),
  KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  KEY `msgtime` (`msgtime`),
  KEY `id_pm_head` (`id_pm_head`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_pm_recipients`
--

CREATE TABLE IF NOT EXISTS `smf_pm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pm`,`id_member`),
  UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_pm_rules`
--

CREATE TABLE IF NOT EXISTS `smf_pm_rules` (
  `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rule`),
  KEY `id_member` (`id_member`),
  KEY `delete_pm` (`delete_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_polls`
--

CREATE TABLE IF NOT EXISTS `smf_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_poll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_poll_choices`
--

CREATE TABLE IF NOT EXISTS `smf_poll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poll`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_scheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `smf_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL AUTO_INCREMENT,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`),
  UNIQUE KEY `task` (`task`),
  KEY `next_time` (`next_time`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `smf_scheduled_tasks`
--

INSERT INTO `smf_scheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`) VALUES
(1, 1671386400, 0, 2, 'h', 0, 'approval_notification'),
(2, 1671667200, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1671408060, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1671408000, 0, 1, 'd', 0, 'daily_digest'),
(6, 1671667200, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1671450840, 129259, 1, 'd', 0, 'fetchSMfiles'),
(8, 0, 0, 1, 'd', 1, 'birthdayemails'),
(9, 1671667200, 0, 1, 'w', 0, 'weekly_maintenance'),
(10, 0, 120, 1, 'd', 1, 'paid_subscriptions');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_sessions`
--

CREATE TABLE IF NOT EXISTS `smf_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_sessions`
--

INSERT INTO `smf_sessions` (`session_id`, `last_update`, `data`) VALUES
('8ccb20cd52bc194f64646dac3fbc30c8', 1671643574, 'a:19:{s:13:"session_value";s:32:"d65af2fd157e1621159b9b9f6ce5b7dd";s:11:"session_var";s:8:"a0da4625";s:2:"mc";a:7:{s:4:"time";i:1669659322;s:2:"id";s:1:"1";s:2:"gq";s:3:"1=1";s:2:"bq";s:3:"1=1";s:2:"ap";a:1:{i:0;i:0;}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}s:3:"ban";a:5:{s:12:"last_checked";i:1669659322;s:9:"id_member";i:0;s:2:"ip";s:12:"127.0.0.1";s:3:"ip2";s:12:"127.0.0.1";s:5:"email";s:0:"";}s:8:"log_time";i:1671383914;s:17:"timeOnlineUpdated";i:1671383879;s:7:"old_url";s:115:"http://localhost:8181/forum/index.php?action=admin;area=news;sa=editnews;a0da4625=d65af2fd157e1621159b9b9f6ce5b7dd";s:10:"USER_AGENT";s:110:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36";s:18:"login_SMFCookie368";s:95:"a:4:{i:0;s:1:"1";i:1;s:40:"ca48cfb278f4e06551afbc032e1af4a21b34f968";i:2;i:1858875322;i:3;i:1;}";s:10:"admin_time";i:1671383291;s:17:"id_msg_last_visit";s:2:"12";s:2:"rc";a:3:{s:2:"id";s:1:"1";s:4:"time";i:1669659322;s:7:"reports";s:1:"0";}s:15:"unread_messages";i:0;s:15:"last_read_topic";i:6;s:5:"forms";a:1:{i:0;i:2728904;}s:13:"move_to_topic";i:3;s:18:"who_online_sort_by";s:4:"time";s:17:"who_online_filter";s:3:"all";s:8:"id_theme";i:0;}');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_settings`
--

CREATE TABLE IF NOT EXISTS `smf_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_settings`
--

INSERT INTO `smf_settings` (`variable`, `value`) VALUES
('smfVersion', '2.0.18'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '1'),
('karmaMode', '0'),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '1'),
('karmaMinPosts', '0'),
('karmaLabel', 'Karma:'),
('karmaSmiteLabel', '[smite]'),
('karmaApplaudLabel', '[applaud]'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', '/var/www/html/forum/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '2'),
('mostOnlineToday', '1'),
('mostDate', '1668904626'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '0'),
('cal_enabled', '0'),
('cal_maxyear', '2030'),
('cal_minyear', '2008'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showholidays', '1'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalMembers', '3'),
('totalTopics', '10'),
('totalMessages', '16'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '3'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '0'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('allow_editDisplayName', '1'),
('allow_hideOnline', '1'),
('guest_hideContacts', '1'),
('spamWaitTime', '5'),
('pm_spam_settings', '10,5,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('autoLinkUrls', '1'),
('banLastUpdated', '0'),
('smileys_dir', '/var/www/html/forum/Smileys'),
('smileys_url', 'http://localhost:8181/forum/Smileys'),
('avatar_directory', '/var/www/html/forum/avatars'),
('avatar_url', 'http://localhost:8181/forum/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '90'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M:%S %p'),
('number_format', '1234.00'),
('enableBBC', '1'),
('max_messageLength', '20000'),
('signature_settings', '1,300,0,0,0,0,0,0:'),
('autoOptMaxOnline', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '0'),
('recycle_board', '0'),
('maxMsgID', '16'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3,4'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '15'),
('smiley_sets_known', 'default,aaron,akyhne'),
('smiley_sets_names', 'Alienine''s Set\nAaron''s Set\nAkyhne''s Set'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('requirePolicyAgreement', '0'),
('unapprovedMembers', '0'),
('default_personal_text', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('search_floodcontrol_time', '5'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('mail_next_send', '0'),
('mail_recent', '0000000000|0'),
('settings_updated', '1668620232'),
('next_task_time', '1671386400'),
('warning_settings', '1,20,0'),
('warning_watch', '10'),
('warning_moderate', '35'),
('warning_mute', '60'),
('admin_features', ''),
('last_mod_report_action', '0'),
('pruningOptions', '30,180,180,180,30,0'),
('cache_enable', '1'),
('reg_verification', '1'),
('visual_verification_type', '3'),
('enable_buddylist', '1'),
('birthday_email', 'happy_birthday'),
('dont_repeat_theme_core', '1'),
('dont_repeat_smileys_20', '1'),
('dont_repeat_buddylists', '1'),
('attachment_image_reencode', '1'),
('attachment_image_paranoid', '0'),
('attachment_thumb_png', '1'),
('avatar_reencode', '1'),
('avatar_paranoid', '0'),
('global_character_set', 'UTF-8'),
('localCookies', '1'),
('default_timezone', 'Etc/GMT0'),
('memberlist_updated', '1667642407'),
('latestMember', '3'),
('latestRealName', 'test2'),
('rand_seed', '511775579'),
('mostOnlineUpdated', '2022-12-18'),
('calendar_updated', '1669863765');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_smileys`
--

CREATE TABLE IF NOT EXISTS `smf_smileys` (
  `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_smiley`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `smf_smileys`
--

INSERT INTO `smf_smileys` (`id_smiley`, `code`, `filename`, `description`, `smiley_row`, `smiley_order`, `hidden`) VALUES
(1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0),
(2, ';)', 'wink.gif', 'Wink', 0, 1, 0),
(3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0),
(4, ';D', 'grin.gif', 'Grin', 0, 3, 0),
(5, '>:(', 'angry.gif', 'Angry', 0, 4, 0),
(6, ':(', 'sad.gif', 'Sad', 0, 5, 0),
(7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0),
(8, '8)', 'cool.gif', 'Cool', 0, 7, 0),
(9, '???', 'huh.gif', 'Huh?', 0, 8, 0),
(10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0),
(11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0),
(12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0),
(13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0),
(14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0),
(15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0),
(16, ':''(', 'cry.gif', 'Cry', 0, 15, 0),
(17, '>:D', 'evil.gif', 'Evil', 0, 16, 1),
(18, '^-^', 'azn.gif', 'Azn', 0, 17, 1),
(19, 'O0', 'afro.gif', 'Afro', 0, 18, 1),
(20, ':))', 'laugh.gif', 'Laugh', 0, 19, 1),
(21, 'C:-)', 'police.gif', 'Police', 0, 20, 1),
(22, 'O:-)', 'angel.gif', 'Angel', 0, 21, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `smf_spiders`
--

CREATE TABLE IF NOT EXISTS `smf_spiders` (
  `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_spider`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `smf_spiders`
--

INSERT INTO `smf_spiders` (`id_spider`, `spider_name`, `user_agent`, `ip_info`) VALUES
(1, 'Google', 'googlebot', ''),
(2, 'Yahoo!', 'slurp', ''),
(3, 'MSN', 'msnbot', ''),
(4, 'Google (Mobile)', 'Googlebot-Mobile', ''),
(5, 'Google (Image)', 'Googlebot-Image', ''),
(6, 'Google (AdSense)', 'Mediapartners-Google', ''),
(7, 'Google (Adwords)', 'AdsBot-Google', ''),
(8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', ''),
(9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', ''),
(10, 'MSN (Mobile)', 'MSNBOT_Mobile', ''),
(11, 'MSN (Media)', 'msnbot-media', ''),
(12, 'Cuil', 'twiceler', ''),
(13, 'Ask', 'Teoma', ''),
(14, 'Baidu', 'Baiduspider', ''),
(15, 'Gigablast', 'Gigabot', ''),
(16, 'InternetArchive', 'ia_archiver-web.archive.org', ''),
(17, 'Alexa', 'ia_archiver', ''),
(18, 'Omgili', 'omgilibot', ''),
(19, 'EntireWeb', 'Speedy Spider', '');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_subscriptions`
--

CREATE TABLE IF NOT EXISTS `smf_subscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL,
  PRIMARY KEY (`id_subscribe`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `smf_themes`
--

CREATE TABLE IF NOT EXISTS `smf_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smf_themes`
--

INSERT INTO `smf_themes` (`id_member`, `id_theme`, `variable`, `value`) VALUES
(0, 1, 'name', 'SMF Default Theme - Curve'),
(0, 1, 'theme_url', 'http://localhost:8181/forum/Themes/default'),
(0, 1, 'images_url', 'http://localhost:8181/forum/Themes/default/images'),
(0, 1, 'theme_dir', '/var/www/html/forum/Themes/default'),
(0, 1, 'show_bbc', '1'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_modify', '1'),
(0, 1, 'show_user_images', '1'),
(0, 1, 'show_blurb', '1'),
(0, 1, 'show_gender', '0'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_member_bar', '1'),
(0, 1, 'linktree_link', '1'),
(0, 1, 'show_profile_buttons', '1'),
(0, 1, 'show_mark_read', '1'),
(0, 1, 'show_stats_index', '1'),
(0, 1, 'linktree_inline', '0'),
(0, 1, 'show_board_desc', '1'),
(0, 1, 'newsfader_time', '5000'),
(0, 1, 'allow_no_censored', '0'),
(0, 1, 'additional_options_collapsable', '1'),
(0, 1, 'use_image_buttons', '1'),
(0, 1, 'enable_news', '1'),
(0, 1, 'forum_width', '90%'),
(0, 2, 'name', 'Core Theme'),
(0, 2, 'theme_url', 'http://localhost:8181/forum/Themes/core'),
(0, 2, 'images_url', 'http://localhost:8181/forum/Themes/core/images'),
(0, 2, 'theme_dir', '/var/www/html/forum/Themes/core'),
(-1, 1, 'display_quick_reply', '1'),
(-1, 1, 'posts_apply_ignore_list', '1'),
(2, 1, 'policy_accepted', '1667631676'),
(2, 1, 'agreement_accepted', '1667631676'),
(2, 1, 'display_quick_reply', '1'),
(3, 1, 'policy_accepted', '1667640064'),
(3, 1, 'agreement_accepted', '1667640064'),
(3, 1, 'display_quick_reply', '1'),
(0, 3, 'theme_url', 'http://localhost:8181/forum/Themes/LastFrontier'),
(0, 3, 'images_url', 'http://localhost:8181/forum/Themes/LastFrontier/images'),
(0, 3, 'theme_dir', '/var/www/html/forum/Themes/LastFrontier'),
(0, 3, 'name', 'LastFrontier'),
(0, 3, 'theme_layers', 'html,body'),
(0, 3, 'theme_templates', 'index'),
(2, 3, 'collapse_header', '1'),
(0, 3, 'header_logo_url', 'https://lastfrontier.ru/forum/site_logo_280.png'),
(0, 3, 'site_slogan', 'Форум постапокалиптической MMORPG Последний Рубеж'),
(0, 3, 'smiley_sets_default', ''),
(0, 3, 'forum_width', '90%'),
(0, 3, 'linktree_link', '1'),
(0, 3, 'show_mark_read', '1'),
(0, 3, 'allow_no_censored', '0'),
(0, 3, 'enable_news', '1'),
(0, 3, 'show_newsfader', '0'),
(0, 3, 'newsfader_time', '5000'),
(0, 3, 'number_recent_posts', '0'),
(0, 3, 'show_stats_index', '1'),
(0, 3, 'show_latest_member', '1'),
(0, 3, 'show_group_key', '0'),
(0, 3, 'display_who_viewing', '0'),
(0, 3, 'show_modify', '1'),
(0, 3, 'show_profile_buttons', '1'),
(0, 3, 'show_user_images', '1'),
(0, 3, 'show_blurb', '1'),
(0, 3, 'show_gender', '0'),
(0, 3, 'hide_post_group', '0'),
(0, 3, 'show_bbc', '1'),
(0, 3, 'additional_options_collapsable', '1'),
(2, 3, 'collapseHeader', '0'),
(1, 3, 'collapse_news_fader', '0'),
(1, 3, 'collapse_header_ic', '0'),
(0, 4, 'theme_url', 'http://localhost:8181/forum/Themes/LF'),
(0, 4, 'images_url', 'http://localhost:8181/forum/Themes/LF/images'),
(0, 4, 'theme_dir', '/var/www/html/forum/Themes/LF'),
(0, 4, 'name', 'LF'),
(0, 4, 'theme_layers', 'html,body'),
(0, 4, 'theme_templates', 'index'),
(1, 3, 'use_sidebar_menu', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `smf_topics`
--

CREATE TABLE IF NOT EXISTS `smf_topics` (
  `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_topic`),
  UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  KEY `is_sticky` (`is_sticky`),
  KEY `approved` (`approved`),
  KEY `id_board` (`id_board`),
  KEY `member_started` (`id_member_started`,`id_board`),
  KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  KEY `board_news` (`id_board`,`id_first_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `smf_topics`
--

INSERT INTO `smf_topics` (`id_topic`, `is_sticky`, `id_board`, `id_first_msg`, `id_last_msg`, `id_member_started`, `id_member_updated`, `id_poll`, `id_previous_board`, `id_previous_topic`, `num_replies`, `num_views`, `locked`, `unapproved_posts`, `approved`) VALUES
(1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(2, 0, 2, 2, 8, 1, 3, 0, 0, 0, 3, 9, 0, 0, 1),
(3, 0, 2, 4, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 0, 2, 6, 6, 2, 2, 0, 0, 0, 0, 3, 0, 0, 1),
(5, 1, 3, 7, 7, 1, 1, 0, 0, 0, 0, 3, 0, 0, 1),
(6, 0, 2, 9, 12, 1, 2, 0, 0, 0, 3, 8, 0, 0, 1),
(7, 0, 2, 13, 13, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1),
(8, 0, 2, 14, 14, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
(9, 0, 2, 15, 15, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1),
(10, 0, 2, 16, 16, 2, 2, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wpr_smf_integration_news_and_topics`
--

CREATE TABLE IF NOT EXISTS `wpr_smf_integration_news_and_topics` (
  `post_id` int(2) NOT NULL,
  `topic_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpr_smf_integration_news_and_topics`
--

INSERT INTO `wpr_smf_integration_news_and_topics` (`post_id`, `topic_id`) VALUES
(8345, 6),
(8348, 8),
(8350, 9),
(8352, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_smf_integration_news_and_topics`
--

CREATE TABLE IF NOT EXISTS `wp_smf_integration_news_and_topics` (
  `post_id` int(2) NOT NULL,
  `topic_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_smf_integration_news_and_topics`
--

INSERT INTO `wp_smf_integration_news_and_topics` (`post_id`, `topic_id`) VALUES
(8326, 7),
(8323, 6),
(8321, 5),
(8328, 8),
(8330, 9),
(8332, 10),
(8334, 11),
(8336, 12),
(8338, 13),
(8340, 5),
(8343, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
