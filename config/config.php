<?php
/* konfigurasi base project */
define('BASE', "localhost/kakyanno_v01");

/* controller default jika tidak ada controller yang dipanggil pada url browser */
define('DEFAULT_CONTROLLER', "admin");

/* konfigurasi DB */
define('DB_NAME', "framework");
define('DB_USER', "root");
define('DB_PASS', "");
define('DB_HOST', "localhost");
define('DB_CHAR', "utf8");

/* 
	Konfigurasi pesan error

	// true 
	menampilkan semua error di browser

	// false
	menyembunyikan error di browser dan menyimpan error pada file error.log di path "ROOT/tmp/log/error.log"
*/
define('DEVELOPMENT_ENVIRONMENT', true);
?>