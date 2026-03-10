<?php require_once('Connections/config.php'); ?>
<?php require_once('inc/data.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

$colname_detay = "-1";
if (isset($_GET['sef'])) {
  $colname_detay = $_GET['sef'];
}
mysql_select_db($database_config, $config);
$query_detay = sprintf("SELECT * FROM urun_kategori WHERE sef = %s", GetSQLValueString($colname_detay, "text"));
$detay = mysql_query($query_detay, $config) or die(mysql_error());
$row_detay = mysql_fetch_assoc($detay);
$totalRows_detay = mysql_num_rows($detay);

$kat = $row_detay['kategori_id'];

mysql_select_db($database_config, $config);
$query_urunler = "SELECT * FROM urunler where dil = $lang and kategori = $kat";
$urunler = mysql_query($query_urunler, $config) or die(mysql_error());
$row_urunler = mysql_fetch_assoc($urunler);
$totalRows_urunler = mysql_num_rows($urunler);
?>
<?php $sayfa = 'urunler'; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $row_detay['seo1']; ?></title>
    <meta name="description" content="<?php echo $row_detay['seo2']; ?>" />
    <meta name="keywords" content="<?php echo $row_detay['seo3']; ?>" />
    
    <?php include 'inc/meta.php'; ?>
	


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
 
    <?php include 'inc/header.php'; ?>
   <div class="banner">
   		<div class="text-center">
        	<h1><?php echo $row_detay['kategori_baslik']; ?></h1>
        </div>
   </div>

     
		 <?php if ($totalRows_urunler > 0) { // Show if recordset not empty ?>
              <div class="gri  text-center bas50">
                <div class="container">
                     <div class="row margin50">
                    
                    <?php do { ?>
                      
                      <div class="col-md-3 bottom30">
                        <div class="sec">
                          <img src="upload/urunler/<?php echo $row_urunler['resim']; ?>" width="100%" alt="<?php echo $row_urunler['baslik']; ?>">
                          <div class="baslik">
                            <a href="urun/<?php echo $row_urunler['sef']; ?>"><?php echo $row_urunler['baslik']; ?></a>
                            </div>
                          </div>
                        </div>
                      <?php } while ($row_urunler = mysql_fetch_assoc($urunler)); ?>
                    
                    
                    
                  </div>
                </div>
              </div>
      <?php } // Show if recordset not empty ?>
   <?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($detay);

mysql_free_result($urunler);
?>
