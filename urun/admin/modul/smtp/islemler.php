<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("sunucu"=>$_POST["sunucu"],"smtp_port"=>$_POST["smtp_port"],"username"=>$_POST["username"],"sifre"=>$_POST["sifre"],"mail"=>$_POST["mail"],"baslik"=>$_POST["baslik"],);
  
  
  
   
    $in = $db->insert("smtp",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("smtp","id",$_GET["id"]);
    break;
  case "up":
   $data = array("sunucu"=>$_POST["sunucu"],"smtp_port"=>$_POST["smtp_port"],"username"=>$_POST["username"],"sifre"=>$_POST["sifre"],"mail"=>$_POST["mail"],"baslik"=>$_POST["baslik"],);
   
   
   

    
    $up = $db->update("smtp",$data,"id",$_POST["id"]);
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