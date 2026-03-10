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
$query_detay = sprintf("SELECT * FROM hizmetler WHERE sef = %s", GetSQLValueString($colname_detay, "text"));
$detay = mysql_query($query_detay, $config) or die(mysql_error());
$row_detay = mysql_fetch_assoc($detay);
$totalRows_detay = mysql_num_rows($detay);
$maxRows_hizmetler = 3;
$pageNum_hizmetler = 0;
if (isset($_GET['pageNum_hizmetler'])) {
  $pageNum_hizmetler = $_GET['pageNum_hizmetler'];
}
$startRow_hizmetler = $pageNum_hizmetler * $maxRows_hizmetler;

mysql_select_db($database_config, $config);
$query_hizmetler = "SELECT * FROM hizmetler where dil = $lang order by rand()";
$query_limit_hizmetler = sprintf("%s LIMIT %d, %d", $query_hizmetler, $startRow_hizmetler, $maxRows_hizmetler);
$hizmetler = mysql_query($query_limit_hizmetler, $config) or die(mysql_error());
$row_hizmetler = mysql_fetch_assoc($hizmetler);

if (isset($_GET['totalRows_hizmetler'])) {
  $totalRows_hizmetler = $_GET['totalRows_hizmetler'];
} else {
  $all_hizmetler = mysql_query($query_hizmetler);
  $totalRows_hizmetler = mysql_num_rows($all_hizmetler);
}
$totalPages_hizmetler = ceil($totalRows_hizmetler/$maxRows_hizmetler)-1;
?>
<?php $sayfa = 'hizmetler'; ?>
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
        	<h1><?php echo $row_detay['baslik']; ?></h1>
        </div>
   </div>
	<div class="gri">
   <div class="container  bas50">
	   	<div class="alan">
   		<p>
        <?php echo $row_detay['icerik']; ?>
        </p>
		   		
   </div>
		</div></div>
        <?php if ($totalRows_hizmetler > 0) { // Show if recordset not empty ?>
  
	<div class="container bas50">
    	<div class="row text-center bl">
         <?php do { ?>
        	<div class="col-md-4 bottom30">
            	<a href="hizmet/<?php echo $row_hizmetler['sef']; ?>"><img src="upload/hizmetler/<?php echo $row_hizmetler['resim']; ?>" width="100" height="100" alt="<?php echo $row_hizmetler['baslik']; ?>"></a>
                <h3><?php echo $row_hizmetler['baslik']; ?></h3>
                <p><?php echo $row_hizmetler['ozet']; ?></p>
                <a href="hizmet/<?php echo $row_hizmetler['sef']; ?>" class="btn btn-genel"><i class="fa fa-angle-right"></i> İNCELE</a>
            </div>
             <?php } while ($row_hizmetler = mysql_fetch_assoc($hizmetler)); ?>
            
        </div>
     </div>
     <?php } // Show if recordset not empty ?>
   <?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($detay);
?>
