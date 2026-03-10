<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("baslik"=>$_POST["baslik"],"ikon"=>$_POST["ikon"],"link"=>$_POST["link"],);
  
  
  
   
    $in = $db->insert("sosyal_medya",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("sosyal_medya","id",$_GET["id"]);
    break;
  case "up":
   $data = array("baslik"=>$_POST["baslik"],"ikon"=>$_POST["ikon"],"link"=>$_POST["link"],);
   
   
   

    
    $up = $db->update("sosyal_medya",$data,"id",$_POST["id"]);
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