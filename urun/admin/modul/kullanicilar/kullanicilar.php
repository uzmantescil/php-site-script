<?php
session_check_adm();
switch ($path_act) {
	case "Ekle":
         include "ekle.php";
		break;
  
    break;
	case "Duzenle":
		$data_edit = $db->fetch_single_row("sys_users","id",$path_id);
		   include "duzenle.php";
		
    break;
	default:
		include "kullanici_list.php";
		break;
}

?>