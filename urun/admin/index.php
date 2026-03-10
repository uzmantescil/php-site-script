<?php
session_start();
include "inc/config.php";
require_once "inc/fungsi.php";
if (isset($_SESSION['login'])) {


include  "header.php";

switch ($path_url) {
	case '':
		include "modul/anasayfa/index.php";
		break;
		case '':
		include "modul/yetki/yetki.php";
		break;
	
	case 'modul':
		include "system/modul/modul.php";
		break;
	
		break;
	case 'page':
		include "system/page/page.php";
		break;
	case 'yetki':
		include "modul/yetki/yetki.php";

	
		break;
	case 'seviye':
		include "modul/seviye/seviye.php";
		break;
	case 'kullanicilar':
		include "modul/kullanicilar/kullanicilar.php";
		
		break;
	
	case 'parola':
		include "modul/parola/parola.php";
		break;
	case 'profil':
		include "modul/profil/profil.php";
		break;
	
	
}

	foreach ($db->fetch_all('sys_menu') as $isi) {
		if (in_array($isi->url, $role_user)) {

               		if ($path_url!='' && $path_url==$isi->url) {
               		
					include "modul/".$isi->nav_act."/".$isi->nav_act.".php";
					} 
               } 
	}
	

include "footer.php";

} else {
	redirect(base_admin()."login.php");
}
?>
