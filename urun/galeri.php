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

mysql_select_db($database_config, $config);
$query_galeri = "SELECT * FROM galeri where dil = $lang ORDER BY RAND()";
$galeri = mysql_query($query_galeri, $config) or die(mysql_error());
$row_galeri = mysql_fetch_assoc($galeri);
$totalRows_galeri = mysql_num_rows($galeri);


?>
<?php $sayfa = 'galeri'; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $row_dil['galeri_title']; ?></title>
    <meta name="description" content="<?php echo $row_dil['galeri_desc']; ?>" />
    <meta name="keywords" content="<?php echo $row_dil['galeri_keyw']; ?>" />
    
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
        	<h1><?php echo $row_dil['galeri']; ?></h1>
        </div>
   </div>
	<div class="gri  text-center bottom50">
        <div class="container ptop50">
            <div class="row margin50">
              <?php if ($totalRows_galeri > 0) { // Show if recordset not empty ?>
  <?php do { ?>
    <?php if($row_galeri['video']==0) {echo'<div class="col-md-3 bottom30">
                	<div class="sec">
						<a class="example-image-link" href="upload/galeri/'.$row_galeri['resim'].'" data-lightbox="example-1">
                         <img src="upload/galeri/'.$row_galeri['resim'].'" class="example-image" width="100%" alt="'.$row_galeri['baslik'].'">
						</a>
                         <div class="baslik">
                            <a class="example-image-link" href="upload/galeri/'.$row_galeri['resim'].'" data-lightbox="example-1">'.$row_galeri['baslik'].'</a>
                         </div>
                    </div>
                </div>';} else {echo'<div class="col-md-3 bottom30">
                	<div class="sec"> <a href="" data-toggle="modal" data-target="#myModal">
                         <img src="upload/galeri/'.$row_galeri['resim'].'" width="100%" alt="'.$row_galeri['baslik'].'"></a>
                         <div class="baslik">
                            <a href="" data-toggle="modal" data-target="#myModal">'.$row_galeri['baslik'].'</a>
                         </div>
                    </div>
					
					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					  <div class="modal-dialog" role="document">
						<div class="modal-content">
						  <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button>
							<h4 class="modal-title" id="myModalLabel">'.$row_galeri['baslik'].'</h4>
						  </div>
						  <div class="modal-body">
							'.$row_galeri['kod'].'
						  </div>
						  
						</div>
					  </div>
					</div>
                </div>';}; ?>
    
    
    <?php } while ($row_galeri = mysql_fetch_assoc($galeri)); ?>
                <?php } // Show if recordset not empty ?>
            </div>
        </div>
    </div>
          <script src="js/lightbox-plus-jquery.min.js"></script>
   <?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($galeri);
?>
