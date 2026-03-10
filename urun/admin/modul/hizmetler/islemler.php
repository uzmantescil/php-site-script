<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/hizmetler")) {
              mkdir("../../../upload/hizmetler");
            }
  $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"sef"=>sef($_POST["baslik"]),"ozet"=>$_POST["ozet"],"icerik"=>$_POST["icerik"],"seo1"=>$_POST["seo1"],"seo2"=>$_POST["seo2"],"seo3"=>$_POST["seo3"],);
  
  
  $filename = $_FILES["resim"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/hizmetler/".$filename);
        
            $resim = array("resim"=>$filename);
              $data = array_merge($data,$resim);
            }
   if(isset($_POST["anasayfa"])=="on")
    {
      $anasayfa = array("anasayfa"=>"1");
      $data=array_merge($data,$anasayfa);
    } else { 
      $anasayfa = array("anasayfa"=>"0");
      $data=array_merge($data,$anasayfa);
    }
    $in = $db->insert("hizmetler",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("hizmetler","hizmet_id",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"sef"=>sef($_POST["baslik"]),"ozet"=>$_POST["ozet"],"icerik"=>$_POST["icerik"],"seo1"=>$_POST["seo1"],"seo2"=>$_POST["seo2"],"seo3"=>$_POST["seo3"],);
   
   
   
                         if(isset($_FILES["resim"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["resim"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/hizmetler/".$_FILES['resim']['name']);
        
              $db->deleteDirectory("../../../upload/hizmetler/".$db->fetch_single_row("hizmetler","hizmet_id",$_POST["id"])->resim);
              $resim = array("resim"=>$_FILES["resim"]["name"]);
              $data = array_merge($data,$resim);
            }

                         }

    if(isset($_POST["anasayfa"])=="on")
    {
      $anasayfa = array("anasayfa"=>"1");
      $data=array_merge($data,$anasayfa);
    } else { 
      $anasayfa = array("anasayfa"=>"0");
      $data=array_merge($data,$anasayfa);
    }
    $up = $db->update("hizmetler",$data,"hizmet_id",$_POST["id"]);
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