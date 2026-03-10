<?php


mysql_select_db($database_config, $config);
$query_ayarlar = "SELECT * FROM ayarlar";
$ayarlar = mysql_query($query_ayarlar, $config) or die(mysql_error());
$row_ayarlar = mysql_fetch_assoc($ayarlar);
$totalRows_ayarlar = mysql_num_rows($ayarlar);

session_start();

if (isset($_GET['lang'])) {
  
    $lang = $_GET['lang'];
    $_SESSION['lang'] = $lang;
	
} else {
    
    if (isset($_SESSION['lang'])) {
       
        $lang = $_SESSION['lang'];
    } else {
       
        $lang = $row_ayarlar['dil'];
    }
}

mysql_select_db($database_config, $config);
$query_sosyal_medya_top = "SELECT * FROM sosyal_medya";
$sosyal_medya_top = mysql_query($query_sosyal_medya_top, $config) or die(mysql_error());
$row_sosyal_medya_top = mysql_fetch_assoc($sosyal_medya_top);
$totalRows_sosyal_medya_top = mysql_num_rows($sosyal_medya_top);

$maxRows_dil_top = 10;
$pageNum_dil_top = 0;
if (isset($_GET['pageNum_dil_top'])) {
  $pageNum_dil_top = $_GET['pageNum_dil_top'];
}
$startRow_dil_top = $pageNum_dil_top * $maxRows_dil_top;

mysql_select_db($database_config, $config);
$query_dil_top = "SELECT * FROM diller where durum = 1";
$query_limit_dil_top = sprintf("%s LIMIT %d, %d", $query_dil_top, $startRow_dil_top, $maxRows_dil_top);
$dil_top = mysql_query($query_limit_dil_top, $config) or die(mysql_error());
$row_dil_top = mysql_fetch_assoc($dil_top);

if (isset($_GET['totalRows_dil_top'])) {
  $totalRows_dil_top = $_GET['totalRows_dil_top'];
} else {
  $all_dil_top = mysql_query($query_dil_top);
  $totalRows_dil_top = mysql_num_rows($all_dil_top);
}
$totalPages_dil_top = ceil($totalRows_dil_top/$maxRows_dil_top)-1;

mysql_select_db($database_config, $config);
$query_dil = "SELECT * FROM diller where id = $lang";
$dil = mysql_query($query_dil, $config) or die(mysql_error());
$row_dil = mysql_fetch_assoc($dil);
$totalRows_dil = mysql_num_rows($dil);

mysql_select_db($database_config, $config);
$query_kurumsal = "SELECT * FROM sayfalar where header = 1 and dil = $lang ";
$kurumsal = mysql_query($query_kurumsal, $config) or die(mysql_error());
$row_kurumsal = mysql_fetch_assoc($kurumsal);
$totalRows_kurumsal = mysql_num_rows($kurumsal);

mysql_select_db($database_config, $config);
$query_proje_kategori = "SELECT * FROM proje_kategori where dil = $lang";
$proje_kategori = mysql_query($query_proje_kategori, $config) or die(mysql_error());
$row_proje_kategori = mysql_fetch_assoc($proje_kategori);
$totalRows_proje_kategori = mysql_num_rows($proje_kategori);

mysql_select_db($database_config, $config);
$query_urun_kategori = "SELECT * FROM urun_kategori where dil = $lang";
$urun_kategori = mysql_query($query_urun_kategori, $config) or die(mysql_error());
$row_urun_kategori = mysql_fetch_assoc($urun_kategori);
$totalRows_urun_kategori = mysql_num_rows($urun_kategori);

$maxRows_footer_menu = 10;
$pageNum_footer_menu = 0;
if (isset($_GET['pageNum_footer_menu'])) {
  $pageNum_footer_menu = $_GET['pageNum_footer_menu'];
}
$startRow_footer_menu = $pageNum_footer_menu * $maxRows_footer_menu;

mysql_select_db($database_config, $config);
$query_footer_menu = "SELECT * FROM sayfalar where dil = $lang and footer = 1 ";
$query_limit_footer_menu = sprintf("%s LIMIT %d, %d", $query_footer_menu, $startRow_footer_menu, $maxRows_footer_menu);
$footer_menu = mysql_query($query_limit_footer_menu, $config) or die(mysql_error());
$row_footer_menu = mysql_fetch_assoc($footer_menu);

if (isset($_GET['totalRows_footer_menu'])) {
  $totalRows_footer_menu = $_GET['totalRows_footer_menu'];
} else {
  $all_footer_menu = mysql_query($query_footer_menu);
  $totalRows_footer_menu = mysql_num_rows($all_footer_menu);
}
$totalPages_footer_menu = ceil($totalRows_footer_menu/$maxRows_footer_menu)-1;

$maxRows_footer_blog = 5;
$pageNum_footer_blog = 0;
if (isset($_GET['pageNum_footer_blog'])) {
  $pageNum_footer_blog = $_GET['pageNum_footer_blog'];
}
$startRow_footer_blog = $pageNum_footer_blog * $maxRows_footer_blog;

mysql_select_db($database_config, $config);
$query_footer_blog = "SELECT * FROM blog where dil = $lang ORDER BY blog_id DESC";
$query_limit_footer_blog = sprintf("%s LIMIT %d, %d", $query_footer_blog, $startRow_footer_blog, $maxRows_footer_blog);
$footer_blog = mysql_query($query_limit_footer_blog, $config) or die(mysql_error());
$row_footer_blog = mysql_fetch_assoc($footer_blog);

if (isset($_GET['totalRows_footer_blog'])) {
  $totalRows_footer_blog = $_GET['totalRows_footer_blog'];
} else {
  $all_footer_blog = mysql_query($query_footer_blog);
  $totalRows_footer_blog = mysql_num_rows($all_footer_blog);
}
$totalPages_footer_blog = ceil($totalRows_footer_blog/$maxRows_footer_blog)-1;



?>