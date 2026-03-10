<?php

include'admin/inc/config.php';

$hostname_config = HOST;
$database_config = DATABASE_NAME;
$username_config = DB_USERNAME;
$password_config = DB_PASSWORD;
$config = mysql_connect($hostname_config, $username_config, $password_config) or trigger_error(mysql_error(),E_USER_ERROR);



?>