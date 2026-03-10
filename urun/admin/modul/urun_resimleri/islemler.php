<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/urun_resimleri")) {
              mkdir("../../../upload/urun_resimleri");
            }
  $data = array("urun"=>$_POST["urun"],);
  
  
  $filename = $_FILES["urun_resim"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["urun_resim"]["tmp_name"], "../../../upload/urun_resimleri/".$filename);
        
            $urun_resim = array("urun_resim"=>$filename);
              $data = array_merge($data,$urun_resim);
            }
   
    $in = $db->insert("urun_resimleri",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("urun_resimleri","resim_id",$_GET["id"]);
    break;
  case "up":
   $data = array("urun"=>$_POST["urun"],);
   
   
   
                         if(isset($_FILES["urun_resim"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["urun_resim"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["urun_resim"]["tmp_name"], "../../../upload/urun_resimleri/".$_FILES['urun_resim']['name']);
        
              $db->deleteDirectory("../../../upload/urun_resimleri/".$db->fetch_single_row("urun_resimleri","resim_id",$_POST["id"])->urun_resim);
              $urun_resim = array("urun_resim"=>$_FILES["urun_resim"]["name"]);
              $data = array_merge($data,$urun_resim);
            }

                         }

    
    $up = $db->update("urun_resimleri",$data,"resim_id",$_POST["id"]);
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