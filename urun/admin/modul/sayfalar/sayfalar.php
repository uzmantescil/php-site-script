
<?php
switch ($path_act) {
  case "ekle":
          foreach ($db->fetch_all("sys_menu") as $isi) {
               if ($path_url==$isi->url&&$path_act=="ekle") {
                          if ($role_act["insert_act"]=="Y") {
                             include "ekle.php";
                          } else {
                            echo "İşlem Reddedildi";
                          }
                       } 

      }
    break;
  case "duzenle":
    $data_edit = $db->fetch_single_row("sayfalar","id",$path_id);
        foreach ($db->fetch_all("sys_menu") as $isi) {
                      if ($path_url==$isi->url&&$path_act=="duzenle") {
                          if ($role_act["up_act"]=="Y") {
                             include "duzenle.php";
                          } else {
                            echo "İşlem Reddedildi";
                          }
                       } 

      }

    break;
      case "detay":
    $data_edit = $db->fetch_single_row("sayfalar","id",$path_id);
    include "detay.php";
    break;
  default:
    include "sayfalar_list.php";
    break;
}

?>