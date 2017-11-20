<?php
session_start();
date_default_timezone_set('Asia/Makassar');

// konstanta ROOT & DS
define('ROOT', dirname(dirname(__FILE__)));
define('DS', DIRECTORY_SEPARATOR);

// ================ file konfigurasi framework ================ //
require_once (ROOT .DS. 'config' .DS. 'config.php');

// ================== file utama framework ==================== //
require_once (ROOT .DS. 'application' .DS. 'agung.php');

// fungsi menampilkan error
setReporting();
// fungsi memanggil controller
callHook();
?>