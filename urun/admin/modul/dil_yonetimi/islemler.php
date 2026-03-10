<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("dil"=>$_POST["dil"],"dil_baslik"=>$_POST["dil_baslik"],"anasayfa_title"=>$_POST["anasayfa_title"],"anasayfa_desc"=>$_POST["anasayfa_desc"],"anasayfa_keyw"=>$_POST["anasayfa_keyw"],"ekibimiz_title"=>$_POST["ekibimiz_title"],"ekibimiz_desc"=>$_POST["ekibimiz_desc"],"ekibimiz_keyw"=>$_POST["ekibimiz_keyw"],"sss_title"=>$_POST["sss_title"],"sss_desc"=>$_POST["sss_desc"],"sss_keyw"=>$_POST["sss_keyw"],"hizmetler_title"=>$_POST["hizmetler_title"],"hizmetler_desc"=>$_POST["hizmetler_desc"],"hizmetler_keyw"=>$_POST["hizmetler_keyw"],"galeri_title"=>$_POST["galeri_title"],"galeri_desc"=>$_POST["galeri_desc"],"galeri_keyw"=>$_POST["galeri_keyw"],"menu_title"=>$_POST["menu_title"],"menu_desc"=>$_POST["menu_desc"],"menu_keyw"=>$_POST["menu_keyw"],"paket_title"=>$_POST["paket_title"],"paket_desc"=>$_POST["paket_desc"],"paket_keyw"=>$_POST["paket_keyw"],"blog_title"=>$_POST["blog_title"],"blog_desc"=>$_POST["blog_desc"],"blog_keyw"=>$_POST["blog_keyw"],"iletisim_title"=>$_POST["iletisim_title"],"iletisim_desc"=>$_POST["iletisim_desc"],"iletisim_keyw"=>$_POST["iletisim_keyw"],"rez_title"=>$_POST["rez_title"],"res_desc"=>$_POST["res_desc"],"rez_keyw"=>$_POST["rez_keyw"],"oda_title"=>$_POST["oda_title"],"oda_desc"=>$_POST["oda_desc"],"oda_keyw"=>$_POST["oda_keyw"],"anasayfa"=>$_POST["anasayfa"],"kurumsal"=>$_POST["kurumsal"],"urunler"=>$_POST["urunler"],"projeler"=>$_POST["projeler"],"hizmetler"=>$_POST["hizmetler"],"galeri"=>$_POST["galeri"],"menu"=>$_POST["menu"],"paketler"=>$_POST["paketler"],"blog"=>$_POST["blog"],"rezervasyon"=>$_POST["rezervasyon"],"odalar"=>$_POST["odalar"],"iletisim"=>$_POST["iletisim"],"ekibimiz"=>$_POST["ekibimiz"],"sss"=>$_POST["sss"],"incele"=>$_POST["incele"],"projeler_baslik"=>$_POST["projeler_baslik"],"projeler_aciklama"=>$_POST["projeler_aciklama"],"blog_baslik"=>$_POST["blog_baslik"],"duyurular"=>$_POST["duyurular"],"referanslar_baslik"=>$_POST["referanslar_baslik"],"referanslar_aciklama"=>$_POST["referanslar_aciklama"],"ekibimiz_baslik"=>$_POST["ekibimiz_baslik"],"ekibimiz_aciklama"=>$_POST["ekibimiz_aciklama"],"paketler_baslik"=>$_POST["paketler_baslik"],"paket_aciklama"=>$_POST["paket_aciklama"],"bilgi_al"=>$_POST["bilgi_al"],"menu_baslik"=>$_POST["menu_baslik"],"menu_aciklama"=>$_POST["menu_aciklama"],"bolgeler_baslik"=>$_POST["bolgeler_baslik"],"bolgeler_aciklama"=>$_POST["bolgeler_aciklama"],"footer_baslik"=>$_POST["footer_baslik"],"footer_aciklama"=>$_POST["footer_aciklama"],"footer_linkler"=>$_POST["footer_linkler"],"footer_blog"=>$_POST["footer_blog"],"footer_iletisim"=>$_POST["footer_iletisim"],"urun_kodu"=>$_POST["urun_kodu"],"fiyat"=>$_POST["fiyat"],"urun_bilgisi"=>$_POST["urun_bilgisi"],"benzer_urunler"=>$_POST["benzer_urunler"],"proje_bilgileri"=>$_POST["proje_bilgileri"],"proje_sahibi"=>$_POST["proje_sahibi"],"baslangic"=>$_POST["baslangic"],"bitis"=>$_POST["bitis"],"diger_projeler"=>$_POST["diger_projeler"],"rezervasyon_baslik"=>$_POST["rezervasyon_baslik"],"rezervasyon_aciklama"=>$_POST["rezervasyon_aciklama"],"rezervasyon_isim_soyisim"=>$_POST["rezervasyon_isim_soyisim"],"rezervasyon_telefon"=>$_POST["rezervasyon_telefon"],"rezervasyon_kisi"=>$_POST["rezervasyon_kisi"],"rezervasyon_mesaj"=>$_POST["rezervasyon_mesaj"],"rezervasyon_buton"=>$_POST["rezervasyon_buton"],"ozellikler"=>$_POST["ozellikler"],"iletisim_formu"=>$_POST["iletisim_formu"],"iletisim_bilgileri"=>$_POST["iletisim_bilgileri"],"konum"=>$_POST["konum"],"isim_soyisim"=>$_POST["isim_soyisim"],"telefon"=>$_POST["telefon"],"email"=>$_POST["email"],"mesaj"=>$_POST["mesaj"],"gonder"=>$_POST["gonder"],"iletisim_not"=>$_POST["iletisim_not"],"iletildi"=>$_POST["iletildi"],"target"=>$_POST["target"],);
  
  
  
   if(isset($_POST["durum"])=="on")
    {
      $durum = array("durum"=>"1");
      $data=array_merge($data,$durum);
    } else { 
      $durum = array("durum"=>"0");
      $data=array_merge($data,$durum);
    }
    $in = $db->insert("diller",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    $db->delete("diller","id",$_GET["id"]);
    break;
  case "up":
   $data = array("dil"=>$_POST["dil"],"dil_baslik"=>$_POST["dil_baslik"],"anasayfa_title"=>$_POST["anasayfa_title"],"anasayfa_desc"=>$_POST["anasayfa_desc"],"anasayfa_keyw"=>$_POST["anasayfa_keyw"],"ekibimiz_title"=>$_POST["ekibimiz_title"],"ekibimiz_desc"=>$_POST["ekibimiz_desc"],"ekibimiz_keyw"=>$_POST["ekibimiz_keyw"],"sss_title"=>$_POST["sss_title"],"sss_desc"=>$_POST["sss_desc"],"sss_keyw"=>$_POST["sss_keyw"],"hizmetler_title"=>$_POST["hizmetler_title"],"hizmetler_desc"=>$_POST["hizmetler_desc"],"hizmetler_keyw"=>$_POST["hizmetler_keyw"],"galeri_title"=>$_POST["galeri_title"],"galeri_desc"=>$_POST["galeri_desc"],"galeri_keyw"=>$_POST["galeri_keyw"],"menu_title"=>$_POST["menu_title"],"menu_desc"=>$_POST["menu_desc"],"menu_keyw"=>$_POST["menu_keyw"],"paket_title"=>$_POST["paket_title"],"paket_desc"=>$_POST["paket_desc"],"paket_keyw"=>$_POST["paket_keyw"],"blog_title"=>$_POST["blog_title"],"blog_desc"=>$_POST["blog_desc"],"blog_keyw"=>$_POST["blog_keyw"],"iletisim_title"=>$_POST["iletisim_title"],"iletisim_desc"=>$_POST["iletisim_desc"],"iletisim_keyw"=>$_POST["iletisim_keyw"],"rez_title"=>$_POST["rez_title"],"res_desc"=>$_POST["res_desc"],"rez_keyw"=>$_POST["rez_keyw"],"oda_title"=>$_POST["oda_title"],"oda_desc"=>$_POST["oda_desc"],"oda_keyw"=>$_POST["oda_keyw"],"anasayfa"=>$_POST["anasayfa"],"kurumsal"=>$_POST["kurumsal"],"urunler"=>$_POST["urunler"],"projeler"=>$_POST["projeler"],"hizmetler"=>$_POST["hizmetler"],"galeri"=>$_POST["galeri"],"menu"=>$_POST["menu"],"paketler"=>$_POST["paketler"],"blog"=>$_POST["blog"],"rezervasyon"=>$_POST["rezervasyon"],"odalar"=>$_POST["odalar"],"iletisim"=>$_POST["iletisim"],"ekibimiz"=>$_POST["ekibimiz"],"sss"=>$_POST["sss"],"incele"=>$_POST["incele"],"projeler_baslik"=>$_POST["projeler_baslik"],"projeler_aciklama"=>$_POST["projeler_aciklama"],"blog_baslik"=>$_POST["blog_baslik"],"duyurular"=>$_POST["duyurular"],"referanslar_baslik"=>$_POST["referanslar_baslik"],"referanslar_aciklama"=>$_POST["referanslar_aciklama"],"ekibimiz_baslik"=>$_POST["ekibimiz_baslik"],"ekibimiz_aciklama"=>$_POST["ekibimiz_aciklama"],"paketler_baslik"=>$_POST["paketler_baslik"],"paket_aciklama"=>$_POST["paket_aciklama"],"bilgi_al"=>$_POST["bilgi_al"],"menu_baslik"=>$_POST["menu_baslik"],"menu_aciklama"=>$_POST["menu_aciklama"],"bolgeler_baslik"=>$_POST["bolgeler_baslik"],"bolgeler_aciklama"=>$_POST["bolgeler_aciklama"],"footer_baslik"=>$_POST["footer_baslik"],"footer_aciklama"=>$_POST["footer_aciklama"],"footer_linkler"=>$_POST["footer_linkler"],"footer_blog"=>$_POST["footer_blog"],"footer_iletisim"=>$_POST["footer_iletisim"],"urun_kodu"=>$_POST["urun_kodu"],"fiyat"=>$_POST["fiyat"],"urun_bilgisi"=>$_POST["urun_bilgisi"],"benzer_urunler"=>$_POST["benzer_urunler"],"proje_bilgileri"=>$_POST["proje_bilgileri"],"proje_sahibi"=>$_POST["proje_sahibi"],"baslangic"=>$_POST["baslangic"],"bitis"=>$_POST["bitis"],"diger_projeler"=>$_POST["diger_projeler"],"rezervasyon_baslik"=>$_POST["rezervasyon_baslik"],"rezervasyon_aciklama"=>$_POST["rezervasyon_aciklama"],"rezervasyon_isim_soyisim"=>$_POST["rezervasyon_isim_soyisim"],"rezervasyon_telefon"=>$_POST["rezervasyon_telefon"],"rezervasyon_kisi"=>$_POST["rezervasyon_kisi"],"rezervasyon_mesaj"=>$_POST["rezervasyon_mesaj"],"rezervasyon_buton"=>$_POST["rezervasyon_buton"],"ozellikler"=>$_POST["ozellikler"],"iletisim_formu"=>$_POST["iletisim_formu"],"iletisim_bilgileri"=>$_POST["iletisim_bilgileri"],"konum"=>$_POST["konum"],"isim_soyisim"=>$_POST["isim_soyisim"],"telefon"=>$_POST["telefon"],"email"=>$_POST["email"],"mesaj"=>$_POST["mesaj"],"gonder"=>$_POST["gonder"],"iletisim_not"=>$_POST["iletisim_not"],"iletildi"=>$_POST["iletildi"],"target"=>$_POST["target"],);
   
   
   

    if(isset($_POST["durum"])=="on")
    {
      $durum = array("durum"=>"1");
      $data=array_merge($data,$durum);
    } else { 
      $durum = array("durum"=>"0");
      $data=array_merge($data,$durum);
    }
    $up = $db->update("diller",$data,"id",$_POST["id"]);
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