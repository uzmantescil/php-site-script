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
$query_detay = sprintf("SELECT * FROM urunler WHERE sef = %s", GetSQLValueString($colname_detay, "text"));
$detay = mysql_query($query_detay, $config) or die(mysql_error());
$row_detay = mysql_fetch_assoc($detay);
$totalRows_detay = mysql_num_rows($detay);

$uresim = $row_detay['urun_id'];

mysql_select_db($database_config, $config);
$query_resim = "SELECT * FROM urun_resimleri where urun = $uresim";
$resim = mysql_query($query_resim, $config) or die(mysql_error());
$row_resim = mysql_fetch_assoc($resim);
$totalRows_resim = mysql_num_rows($resim);

$ukat = $row_detay['kategori'];

$maxRows_benzer = 4;
$pageNum_benzer = 0;
if (isset($_GET['pageNum_benzer'])) {
  $pageNum_benzer = $_GET['pageNum_benzer'];
}
$startRow_benzer = $pageNum_benzer * $maxRows_benzer;

mysql_select_db($database_config, $config);
$query_benzer = "SELECT * FROM urunler where dil = $lang and kategori = $ukat order by rand()";
$query_limit_benzer = sprintf("%s LIMIT %d, %d", $query_benzer, $startRow_benzer, $maxRows_benzer);
$benzer = mysql_query($query_limit_benzer, $config) or die(mysql_error());
$row_benzer = mysql_fetch_assoc($benzer);

if (isset($_GET['totalRows_benzer'])) {
  $totalRows_benzer = $_GET['totalRows_benzer'];
} else {
  $all_benzer = mysql_query($query_benzer);
  $totalRows_benzer = mysql_num_rows($all_benzer);
}
$totalPages_benzer = ceil($totalRows_benzer/$maxRows_benzer)-1;
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
        	<h1><?php echo $row_detay['baslik']; ?></h1>
        </div>
   </div>
	<div class="gri">
   <div class="container bas50">
		<div class="alan">
	   		<div class="row">
				<div class="col-md-5">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
             
              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                <a class="example-image-link" href="upload/urunler/<?php echo $row_detay['resim']; ?>" data-lightbox="example-1">
                  <img src="upload/urunler/<?php echo $row_detay['resim']; ?>" class="example-image" alt="<?php echo $row_detay['baslik']; ?>" width="100%">
                 </a> 
                </div>
                <?php if ($totalRows_resim > 0) { // Show if recordset not empty ?>
                  <?php do { ?>
                    <div class="item ">
                    <a class="example-image-link" href="upload/urun_resimleri/<?php echo $row_resim['urun_resim']; ?>" data-lightbox="example-1">
                    <img class="example-image" src="upload/urun_resimleri/<?php echo $row_resim['urun_resim']; ?>" alt="<?php echo $row_detay['baslik']; ?>" width="100%">
                    </a>
                    </div>
                    <?php } while ($row_resim = mysql_fetch_assoc($resim)); ?>
                  <?php } // Show if recordset not empty ?>
              </div>
            
              <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
				</div>
				<div class="col-md-7">
					<h4><?php echo $row_detay['baslik']; ?></h4>
					<hr>
					<?php if(empty($row_detay['urun_kodu'])) {echo '';} else {echo '<b class="renk">'.$row_dil['urun_kodu'].':</b> '.$row_detay['urun_kodu'].'<br>';}; ?>
					<?php if(empty($row_detay['fiyat'])) {echo '';} else {echo '<b class="renk">'.$row_dil['fiyat'].':</b> '.$row_detay['fiyat'].'<br>';}; ?>
					<b class="renk"><?php echo $row_dil['urun_bilgisi']; ?>:</b> <p>
					<?php echo $row_detay['icerik']; ?>	</p>
					
				</div>
                <?php if ($totalRows_benzer > 1) { // Show if recordset not empty ?>
                  <div class="col-md-12">
                    <hr>
                    <h4><?php echo $row_dil['benzer_urunler']; ?></h4>
                    <div class="seprator"></div>
                    <div class="row top30">
                      
                      <?php do { ?>
                        <div class="col-md-3 bottom30">
                          <div class="sec">
                            <img src="upload/urunler/<?php echo $row_benzer['resim']; ?>" width="100%" alt="<?php echo $row_benzer['baslik']; ?>">
                            <div class="baslik">
                              <a href="urun/<?php echo $row_benzer['sef']; ?>"><?php echo $row_benzer['baslik']; ?></a>
                              </div>
                            </div>
                        </div>
                        <?php } while ($row_benzer = mysql_fetch_assoc($benzer)); ?>
                      
                    </div>
                  </div>
                  <?php } // Show if recordset not empty ?>
            </div>
	   </div>							
	</div>
							</div>
                                      <script src="js/lightbox-plus-jquery.min.js"></script>

   <?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($detay);

mysql_free_result($resim);

mysql_free_result($benzer);
?>
