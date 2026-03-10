<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/yorumlar")) {
              mkdir("../../../upload/yorumlar");
            }
  $data = array("dil"=>$_POST["dil"],"yazan"=>$_POST["yazan"],"tarih"=>$_POST["tarih"],"icerik"=>$_POST["icerik"],);
  
  
  $filename = $_FILES["resim"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/yorumlar/".$filename);
        
            $resim = array("resim"=>$filename);
              $data = array_merge($data,$resim);
            }
   
    $in = $db->insert("yorumlar",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("yorumlar","i_d",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"yazan"=>$_POST["yazan"],"tarih"=>$_POST["tarih"],"icerik"=>$_POST["icerik"],);
   
   
   
                         if(isset($_FILES["resim"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["resim"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/yorumlar/".$_FILES['resim']['name']);
        
              $db->deleteDirectory("../../../upload/yorumlar/".$db->fetch_single_row("yorumlar","i_d",$_POST["id"])->resim);
              $resim = array("resim"=>$_FILES["resim"]["name"]);
              $data = array_merge($data,$resim);
            }

                         }

    
    $up = $db->update("yorumlar",$data,"i_d",$_POST["id"]);
    if ($up=true) {
      echo "good";
    } else {
      return false; 
    }
    break;
  default:
    # code...
    break;
}

?>