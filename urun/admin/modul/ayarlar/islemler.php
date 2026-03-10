<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/ayarlar")) {
              mkdir("../../../upload/ayarlar");
            }
  $data = array("dil"=>$_POST["dil"],"yazar"=>$_POST["yazar"],"sahip"=>$_POST["sahip"],"sene"=>$_POST["sene"],"adres"=>$_POST["adres"],"tel1"=>$_POST["tel1"],"tel2"=>$_POST["tel2"],"fax"=>$_POST["fax"],"email"=>$_POST["email"],"harita"=>$_POST["harita"],"js"=>$_POST["js"],"google_font"=>$_POST["google_font"],"css"=>$_POST["css"],"renk1"=>$_POST["renk1"],"renk2"=>$_POST["renk2"],);
  
  
  $filename = $_FILES["logo"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["logo"]["tmp_name"], "../../../upload/ayarlar/".$filename);
        
            $logo = array("logo"=>$filename);
              $data = array_merge($data,$logo);
            }$filename = $_FILES["favicon"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["favicon"]["tmp_name"], "../../../upload/ayarlar/".$filename);
        
            $favicon = array("favicon"=>$filename);
              $data = array_merge($data,$favicon);
            }
   
    $in = $db->insert("ayarlar",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("ayarlar","aid",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"yazar"=>$_POST["yazar"],"yapimci"=>$_POST["yapimci"],"link"=>$_POST["link"],"telif"=>$_POST["telif"],"sahip"=>$_POST["sahip"],"sene"=>$_POST["sene"],"adres"=>$_POST["adres"],"tel1"=>$_POST["tel1"],"tel2"=>$_POST["tel2"],"fax"=>$_POST["fax"],"email"=>$_POST["email"],"harita"=>$_POST["harita"],"js"=>$_POST["js"],"google_font"=>$_POST["google_font"],"css"=>$_POST["css"],"renk1"=>$_POST["renk1"],"renk2"=>$_POST["renk2"],);
   
   
   
                         if(isset($_FILES["logo"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["logo"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["logo"]["tmp_name"], "../../../upload/ayarlar/".$_FILES['logo']['name']);
        
              $db->deleteDirectory("../../../upload/ayarlar/".$db->fetch_single_row("ayarlar","aid",$_POST["id"])->logo);
              $logo = array("logo"=>$_FILES["logo"]["name"]);
              $data = array_merge($data,$logo);
            }

                         }
                         if(isset($_FILES["favicon"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["favicon"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["favicon"]["tmp_name"], "../../../upload/ayarlar/".$_FILES['favicon']['name']);
        
              $db->deleteDirectory("../../../upload/ayarlar/".$db->fetch_single_row("ayarlar","aid",$_POST["id"])->favicon);
              $favicon = array("favicon"=>$_FILES["favicon"]["name"]);
              $data = array_merge($data,$favicon);
            }

                         }

    
    $up = $db->update("ayarlar",$data,"aid",$_POST["id"]);
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