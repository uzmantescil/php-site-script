<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/slaytlar")) {
              mkdir("../../../upload/slaytlar");
            }
  $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"alt_baslik"=>$_POST["alt_baslik"],"buton"=>$_POST["buton"],"link"=>$_POST["link"],);
  
  
  $filename = $_FILES["resim"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/slaytlar/".$filename);
        
            $resim = array("resim"=>$filename);
              $data = array_merge($data,$resim);
            }
   if(isset($_POST["durum"])=="on")
    {
      $durum = array("durum"=>"1");
      $data=array_merge($data,$durum);
    } else { 
      $durum = array("durum"=>"0");
      $data=array_merge($data,$durum);
    }
    $in = $db->insert("slayt",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("slayt","slayt_id",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"alt_baslik"=>$_POST["alt_baslik"],"buton"=>$_POST["buton"],"link"=>$_POST["link"],);
   
   
   
                         if(isset($_FILES["resim"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["resim"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/slaytlar/".$_FILES['resim']['name']);
        
              $db->deleteDirectory("../../../upload/slaytlar/".$db->fetch_single_row("slayt","slayt_id",$_POST["id"])->resim);
              $resim = array("resim"=>$_FILES["resim"]["name"]);
              $data = array_merge($data,$resim);
            }

                         }

    if(isset($_POST["durum"])=="on")
    {
      $durum = array("durum"=>"1");
      $data=array_merge($data,$durum);
    } else { 
      $durum = array("durum"=>"0");
      $data=array_merge($data,$durum);
    }
    $up = $db->update("slayt",$data,"slayt_id",$_POST["id"]);
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