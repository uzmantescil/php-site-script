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




if(empty($_GET['lang'])) {
 
						  
						 
						} else {
						 
						    Header( 'Location: index.php' );
						 
						}

mysql_select_db($database_config, $config);
$query_slayto = "SELECT * FROM slayt where dil = $lang and durum = 1";
$slayto = mysql_query($query_slayto, $config) or die(mysql_error());
$row_slayto = mysql_fetch_assoc($slayto);
$totalRows_slayto = mysql_num_rows($slayto);

mysql_select_db($database_config, $config);
$query_slayt = "SELECT * FROM slayt where dil = $lang and durum = 1";
$slayt = mysql_query($query_slayt, $config) or die(mysql_error());
$row_slayt = mysql_fetch_assoc($slayt);
$totalRows_slayt = mysql_num_rows($slayt);

$maxRows_hizmetler = 6;
$pageNum_hizmetler = 0;
if (isset($_GET['pageNum_hizmetler'])) {
  $pageNum_hizmetler = $_GET['pageNum_hizmetler'];
}
$startRow_hizmetler = $pageNum_hizmetler * $maxRows_hizmetler;

mysql_select_db($database_config, $config);
$query_hizmetler = "SELECT * FROM hizmetler where anasayfa = 1 and dil = $lang";
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

$maxRows_projeler = 6;
$pageNum_projeler = 0;
if (isset($_GET['pageNum_projeler'])) {
  $pageNum_projeler = $_GET['pageNum_projeler'];
}
$startRow_projeler = $pageNum_projeler * $maxRows_projeler;

mysql_select_db($database_config, $config);
$query_projeler = "SELECT * FROM urunler where anasayfa = 1 and dil = $lang";
$query_limit_projeler = sprintf("%s LIMIT %d, %d", $query_projeler, $startRow_projeler, $maxRows_projeler);
$projeler = mysql_query($query_limit_projeler, $config) or die(mysql_error());
$row_projeler = mysql_fetch_assoc($projeler);

if (isset($_GET['totalRows_projeler'])) {
  $totalRows_projeler = $_GET['totalRows_projeler'];
} else {
  $all_projeler = mysql_query($query_projeler);
  $totalRows_projeler = mysql_num_rows($all_projeler);
}
$totalPages_projeler = ceil($totalRows_projeler/$maxRows_projeler)-1;

$maxRows_anasayfa_blog = 2;
$pageNum_anasayfa_blog = 0;
if (isset($_GET['pageNum_anasayfa_blog'])) {
  $pageNum_anasayfa_blog = $_GET['pageNum_anasayfa_blog'];
}
$startRow_anasayfa_blog = $pageNum_anasayfa_blog * $maxRows_anasayfa_blog;

mysql_select_db($database_config, $config);
$query_anasayfa_blog = "SELECT * FROM blog where dil = $lang ORDER BY blog_id DESC";
$query_limit_anasayfa_blog = sprintf("%s LIMIT %d, %d", $query_anasayfa_blog, $startRow_anasayfa_blog, $maxRows_anasayfa_blog);
$anasayfa_blog = mysql_query($query_limit_anasayfa_blog, $config) or die(mysql_error());
$row_anasayfa_blog = mysql_fetch_assoc($anasayfa_blog);

if (isset($_GET['totalRows_anasayfa_blog'])) {
  $totalRows_anasayfa_blog = $_GET['totalRows_anasayfa_blog'];
} else {
  $all_anasayfa_blog = mysql_query($query_anasayfa_blog);
  $totalRows_anasayfa_blog = mysql_num_rows($all_anasayfa_blog);
}
$totalPages_anasayfa_blog = ceil($totalRows_anasayfa_blog/$maxRows_anasayfa_blog)-1;

$maxRows_duyurular = 20;
$pageNum_duyurular = 0;
if (isset($_GET['pageNum_duyurular'])) {
  $pageNum_duyurular = $_GET['pageNum_duyurular'];
}
$startRow_duyurular = $pageNum_duyurular * $maxRows_duyurular;

mysql_select_db($database_config, $config);
$query_duyurular = "SELECT * FROM yorumlar where dil = $lang";
$query_limit_duyurular = sprintf("%s LIMIT %d, %d", $query_duyurular, $startRow_duyurular, $maxRows_duyurular);
$duyurular = mysql_query($query_limit_duyurular, $config) or die(mysql_error());
$row_duyurular = mysql_fetch_assoc($duyurular);

if (isset($_GET['totalRows_duyurular'])) {
  $totalRows_duyurular = $_GET['totalRows_duyurular'];
} else {
  $all_duyurular = mysql_query($query_duyurular);
  $totalRows_duyurular = mysql_num_rows($all_duyurular);
}
$totalPages_duyurular = ceil($totalRows_duyurular/$maxRows_duyurular)-1;

mysql_select_db($database_config, $config);
$query_referanslar = "SELECT * FROM referanslar order by rand()";
$referanslar = mysql_query($query_referanslar, $config) or die(mysql_error());
$row_referanslar = mysql_fetch_assoc($referanslar);
$totalRows_referanslar = mysql_num_rows($referanslar);

?>
<?php $sayfa = 'anasayfa'; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $row_dil['anasayfa_title']; ?></title>
    <meta name="description" content="<?php echo $row_dil['anasayfa_desc']; ?>" />
    <meta name="keywords" content="<?php echo $row_dil['anasayfa_keyw']; ?>" />
    
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
<?php if ($totalRows_slayt > 0) { // Show if recordset not empty ?>
  <div class="slayt">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <?php $a = 0; do  { ?>
          <li data-target="#carousel-example-generic" data-slide-to="0" class="<?php $a++; if($a==1) {echo 'active';} else {echo'';} ?>"></li>
          <?php } while ($row_slayto = mysql_fetch_assoc($slayto)); ?>
        
      </ol>
      
      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <?php  $a = 0; do { ?>
          <div class="item <?php $a++; if($a==1) {echo 'active';} else {echo'';} ?>">
            <img src="upload/slaytlar/<?php echo $row_slayt['resim']; ?>" alt="<?php echo $row_slayt['baslik']; ?>" width="100%">
            <div class="carousel-caption sl hidden-sm hidden-xs text-center">
              <h1><?php echo $row_slayt['baslik']; ?></h1>
              <h4><?php echo $row_slayt['alt_baslik']; ?></h4>
              <?php
						
						
						if(empty($row_slayt['buton'])) {
 
						   echo "";
						 
						} else {
						 
						   echo '<a href="'.$row_slayt['link'].'" class="btn btn-genel">'.$row_slayt['buton'].'</a>';
						 
						}
						
						
						 ?>
            </div>
          </div>
          <?php } while ($row_slayt = mysql_fetch_assoc($slayt)); ?>
        
        
        
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
  <?php } // Show if recordset not empty ?>
  
   <?php if ($totalRows_hizmetler > 0) { // Show if recordset not empty ?>
  
	<div class="container bas50">
    	<div class="row text-center bl">
         <?php do { ?>
        	<div class="col-md-4 bottom30">
            	<a href="hizmet/<?php echo $row_hizmetler['sef']; ?>"><img src="upload/hizmetler/<?php echo $row_hizmetler['resim']; ?>" width="100%" height="250" alt="<?php echo $row_hizmetler['baslik']; ?>"></a>
                <h3><?php echo $row_hizmetler['baslik']; ?></h3>
                <p><?php echo $row_hizmetler['ozet']; ?></p>
               

            </div>
             <?php } while ($row_hizmetler = mysql_fetch_assoc($hizmetler)); ?>
            
        </div>
     </div>
     <?php } // Show if recordset not empty ?>
     
		 <?php if ($totalRows_projeler > 0) { // Show if recordset not empty ?>
              <div class="gri  text-center bas50">
                <div class="container ptop50">
                  <h3><?php echo $row_dil['projeler_baslik']; ?></h3>
                  <div class="seprator2"></div>
                  <p><?php echo $row_dil['projeler_aciklama']; ?></p>
                  <div class="row margin50">
                    
                    <?php do { ?>
                      
                      <div class="col-md-4 bottom30">
                        <div class="sec">
                          <img src="upload/urunler/<?php echo $row_projeler['resim']; ?>" width="100%" alt="<?php echo $row_projeler['baslik']; ?>">
                          <div class="baslik">
                            <a href="urun/<?php echo $row_projeler['sef']; ?>"><?php echo $row_projeler['baslik']; ?></a>
                            </div>
                          </div>
                        </div>
                      <?php } while ($row_projeler = mysql_fetch_assoc($projeler)); ?>
                    
                    
                    
                  </div>
                </div>
              </div>
      <?php } // Show if recordset not empty ?>
      
	 <div class="container">
    	<div class="row bas50">
          <?php if ($totalRows_anasayfa_blog > 0) { // Show if recordset not empty ?>
          <div class="col-md-7">
            <h3><strong><?php echo $row_dil['blog_baslik']; ?></strong></h3>
            <div class="seprator"></div>
            <div class="top30"></div>
            <?php do { ?>
              <div class="haber">
                <div class="row">
                  <div class="col-md-5">
                    <a href="blog/<?php echo $row_anasayfa_blog['sef']; ?>"><img src="upload/blog/<?php echo $row_anasayfa_blog['resim']; ?>" alt="<?php echo $row_anasayfa_blog['baslik']; ?>" height="100%" width="100%" ></a>  
                    </div>
                  <div class="col-md-7">
                    
                    <div class="haber-cerik">
                      <h4><a href="blog/<?php echo $row_anasayfa_blog['sef']; ?>"><?php echo $row_anasayfa_blog['baslik']; ?></a></h4>
                      <p><?php echo $row_anasayfa_blog['ozet']; ?></p>
                      <hr>
                      <span><i class="fa fa-user renk"></i> <?php echo $row_anasayfa_blog['yazar']; ?></span> <span style="margin-left:15px"><i class="fa fa-calendar renk"></i> <?php echo $row_anasayfa_blog['tarih']; ?></span>
                      </div>
                    </div>
                  </div>
              </div>
              <?php } while ($row_anasayfa_blog = mysql_fetch_assoc($anasayfa_blog)); ?>       
            
            
            
            
            
          </div>
          <?php } // Show if recordset not empty ?>
          <?php if ($totalRows_duyurular > 0) { // Show if recordset not empty ?>
  <div class="col-md-5">
    
    <h3><strong><?php echo $row_dil['duyurular']; ?></strong></h3>
    <div class="seprator"></div>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <?php $a = 0; do { ?>
          <div class="item <?php $a++ ; if($a==1) {echo'active';} else {echo'';} ?>">
            <div class="row" style="padding: 20px">
              <i class="fa fa-quote-left fa-2x testimonial_fa" aria-hidden="true" style="margin-bottom:20px"></i>
              <p class="testimonial_para"><?php echo $row_duyurular['icerik']; ?></p><br>
              <img src="upload/yorumlar/<?php echo $row_duyurular['resim']; ?>" width="60" alt="<?php echo $row_duyurular['yazan']; ?>" height="60" style="border-radius:100%">
              <div class="row">
                
                <div class="col-sm-12">
                  <h4><strong><?php echo $row_duyurular['yazan']; ?></strong></h4>
                  <p class="testimonial_subtitle"><span><?php echo $row_duyurular['unvan']; ?></span>
                    </p>
                  </div>
                </div>
              </div>
          </div>
          <?php } while ($row_duyurular = mysql_fetch_assoc($duyurular)); ?>
        
      </div>
    </div>
    
  </div>
  <?php } // Show if recordset not empty ?>
        </div>
    </div>
     <?php if ($totalRows_referanslar > 0) { // Show if recordset not empty ?>
  <div class="gri bas50">
    <div class="container text-center">
      <h3><?php echo $row_dil['referanslar_baslik']; ?></h3>
      <div class="seprator2"></div>
      <p><?php echo $row_dil['referanslar_aciklama']; ?></p>
      
      <ul id="flexiselDemo2">
        <?php do { ?> 
          <li><img src="upload/referanslar/<?php echo $row_referanslar['resim']; ?>" alt="<?php echo $row_referanslar['baslik']; ?>" /></li>
          <?php } while ($row_referanslar = mysql_fetch_assoc($referanslar)); ?>
        
      </ul>
    </div>
  </div>
  <?php } // Show if recordset not empty ?>
  
<?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($slayto);

mysql_free_result($slayt);

mysql_free_result($hizmetler);

mysql_free_result($projeler);

mysql_free_result($anasayfa_blog);

mysql_free_result($duyurular);

mysql_free_result($referanslar);

mysql_free_result($ekip);

mysql_free_result($paketler);

mysql_free_result($m1);

mysql_free_result($m2);

mysql_free_result($bolgeler);
?>
