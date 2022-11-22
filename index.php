<?php

// Обрабатываем явные и неявные запросы индекса в `url`
if (file_exists(dirname(dirname(__FILE__)) . '/index.php')) {
	include (dirname(dirname(__FILE__)) . '/index.php');
} else {
	exit;
}
