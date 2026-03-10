<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("dil"=>$_POST["dil"],"kategori_baslik"=>$_POST["kategori_baslik"],"sef"=>sef($_POST["kategori_baslik"]),"seo1"=>$_POST["seo1"],"seo2"=>$_POST["seo2"],"seo3"=>$_POST["seo3"],);
  
  
  
   
    $in = $db->insert("urun_kategori",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("urun_kategori","kategori_id",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"kategori_baslik"=>$_POST["kategori_baslik"],"sef"=>sef($_POST["kategori_baslik"]),"seo1"=>$_POST["seo1"],"seo2"=>$_POST["seo2"],"seo3"=>$_POST["seo3"],);
   
   
   

    
    $up = $db->update("urun_kategori",$data,"kategori_id",$_POST["id"]);
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