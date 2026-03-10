<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/galeri")) {
              mkdir("../../../upload/galeri");
            }
  $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"kod"=>$_POST["kod"],);
  
  
  $filename = $_FILES["resim"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/galeri/".$filename);
        
            $resim = array("resim"=>$filename);
              $data = array_merge($data,$resim);
            }
   if(isset($_POST["video"])=="on")
    {
      $video = array("video"=>"1");
      $data=array_merge($data,$video);
    } else { 
      $video = array("video"=>"0");
      $data=array_merge($data,$video);
    }
    $in = $db->insert("galeri",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("galeri","galeri_id",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"kod"=>$_POST["kod"],);
   
   
   
                         if(isset($_FILES["resim"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["resim"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/galeri/".$_FILES['resim']['name']);
        
              $db->deleteDirectory("../../../upload/galeri/".$db->fetch_single_row("galeri","galeri_id",$_POST["id"])->resim);
              $resim = array("resim"=>$_FILES["resim"]["name"]);
              $data = array_merge($data,$resim);
            }

                         }

    if(isset($_POST["video"])=="on")
    {
      $video = array("video"=>"1");
      $data=array_merge($data,$video);
    } else { 
      $video = array("video"=>"0");
      $data=array_merge($data,$video);
    }
    $up = $db->update("galeri",$data,"galeri_id",$_POST["id"]);
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