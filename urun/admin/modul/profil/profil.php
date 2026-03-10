
<?php
switch ($path_act) {
	case "ekle":
          foreach ($db->fetch_all("sys_menu") as $isi) {
             if ($_SESSION["level"]!=1) {
                      if ($path_url==$isi->url&&$path_act=="tambah") {
                          if ($role_act["insert_act"]=="Y") {
                             include "ekle.php";
                          } else {
                            echo "İşlem Reddedildi";
                          }
                       } 
              } else {
                include "ekle.php";
              }

      }
		break;
  case 'parola':
    include "parola.php";
    break;
	case "duzenle":
    include "duzenle.php";
              
		break;
      case "detail":
    $data_edit = $db->fetch_single_row("sys_users","id",$path_id);
    include "edit_profil_detail.php";
    break;
	default:
		include "profil_list.php";
		break;
}

?>