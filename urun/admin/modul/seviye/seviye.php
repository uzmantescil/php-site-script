<?php
session_check_adm();
switch ($path_act) {
	case "Ekle":
          include "ekle.php";
		break;
	case "Duzenle":
		$data_edit = $db->fetch_single_row("sys_group_users","id",$path_id);
		          include "duzenle.php";

		break;
      case "detail":
    $data_edit = $db->fetch_single_row("sys_group_users","id",$path_id);
    include "group_user_detail.php";
    break;
	default:
		include "seviye_list.php";
		break;
}

?>