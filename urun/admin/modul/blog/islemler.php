<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  if (!is_dir("../../../upload/blog")) {
              mkdir("../../../upload/blog");
            }
  $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"sef"=>sef($_POST["baslik"]),"ozet"=>$_POST["ozet"],"icerik"=>$_POST["icerik"],"tarih"=>$_POST["tarih"],"yazar"=>$_POST["yazar"],"seo1"=>$_POST["seo1"],"seo2"=>$_POST["seo2"],"seo3"=>$_POST["seo3"],);
  
  
  $filename = $_FILES["resim"]["name"];
					 $filename = preg_replace("#[^a-z.0-9]#", "", $filename); 
					 $ex = explode(".", $filename); 
					 $fileExt = end($ex); 
					 $filename = md5(time()).rand().".".$fileExt;
					
					
                    if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $filename) ) {

              echo "pastikan file yang anda pilih png|jpg|jpeg|gif";
              exit();

            } else { 
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/blog/".$filename);
        
            $resim = array("resim"=>$filename);
              $data = array_merge($data,$resim);
            }
   
    $in = $db->insert("blog",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("blog","blog_id",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"baslik"=>$_POST["baslik"],"sef"=>sef($_POST["baslik"]),"ozet"=>$_POST["ozet"],"icerik"=>$_POST["icerik"],"tarih"=>$_POST["tarih"],"yazar"=>$_POST["yazar"],"seo1"=>$_POST["seo1"],"seo2"=>$_POST["seo2"],"seo3"=>$_POST["seo3"],);
   
   
   
                         if(isset($_FILES["resim"]["name"])) {
                        if (!preg_match("/.(png|jpg|jpeg|gif|bmp)$/i", $_FILES["resim"]["name"]) ) {

              echo "pastikan file yang anda pilih gambar";
              exit();

            } else {
      move_uploaded_file($_FILES["resim"]["tmp_name"], "../../../upload/blog/".$_FILES['resim']['name']);
        
              $db->deleteDirectory("../../../upload/blog/".$db->fetch_single_row("blog","blog_id",$_POST["id"])->resim);
              $resim = array("resim"=>$_FILES["resim"]["name"]);
              $data = array_merge($data,$resim);
            }

                         }

    
    $up = $db->update("blog",$data,"blog_id",$_POST["id"]);
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