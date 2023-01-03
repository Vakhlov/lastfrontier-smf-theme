<?php

/**
 * Simple Machines Forum (SMF)
 *
 * @package SMF
 * @author Simple Machines http://www.simplemachines.org
 * @copyright 2011 Simple Machines
 * @license http://www.simplemachines.org/about/smf/license.php BSD
 *
 * @version 2.0
 */

########## Maintenance ##########
# Note: If $maintenance is set to 2, the forum will be unusable!  Change it to 0 to fix it.
$maintenance = 0;		# Set to 1 to enable Maintenance Mode, 2 to make the forum untouchable. (you'll have to make it 0 again manually!)
$mtitle = 'Maintenance Mode';		# Title for the Maintenance Mode message.
$mmessage = 'Okay faithful users...we\'re attempting to restore an older backup of the database...news will be posted once we\'re back!';		# Description of why the forum is in maintenance mode.

########## Forum Info ##########
$mbname = 'Форум игры Последний Рубеж';		# The name of your forum.
$language = 'russian-utf8';		# The default language file set for the forum.
$boardurl = 'http://localhost:8181/forum';		# URL to your forum's folder. (without the trailing /!)
$webmaster_email = 'admin@lff.ru';		# Email address to send emails from. (like noreply@yourdomain.com.)
$cookiename = 'SMFCookie368';		# Name of the cookie to set for authentication.

########## Database Info ##########
$db_type = 'mysql';
$db_server = 'db';
$db_name = 'lff';
$db_user = 'lff';
$db_passwd = 'lff';
$ssi_db_user = '';
$ssi_db_passwd = '';
$db_prefix = 'smf_';
$db_persist = 0;
$db_error_send = 1;

########## Directories/Files ##########
# Note: These directories do not have to be changed unless you move things.
$boarddir = '/var/www/html/forum';		# The absolute path to the forum's folder. (not just '.'!)
$sourcedir = '/var/www/html/forum/Sources';		# Path to the Sources directory.
$cachedir = '/var/www/html/forum/cache';		# Path to the cache directory.

########## Error-Catching ##########
# Note: You shouldn't touch these settings.
$db_last_error = 0;


# Make sure the paths are correct... at least try to fix them.
if (!file_exists($boarddir) && file_exists(dirname(__FILE__) . '/agreement.txt'))
	$boarddir = dirname(__FILE__);
if (!file_exists($sourcedir) && file_exists($boarddir . '/Sources'))
	$sourcedir = $boarddir . '/Sources';
if (!file_exists($cachedir) && file_exists($boarddir . '/cache'))
	$cachedir = $boarddir . '/cache';

$image_proxy_secret = 'e38269c39010978601aa';
$image_proxy_maxsize = 5190;
$image_proxy_enabled = 0;
$auth_secret = '1a90d736b52d0e2cfcda7a23a835bc14b857cc8168e3047c9b71e8c224fea3b6';
$db_character_set = 'utf8';
?>