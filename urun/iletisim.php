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
$query_blog = "SELECT * FROM blog where dil = $lang ORDER BY blog_id DESC";
$blog = mysql_query($query_blog, $config) or die(mysql_error());
$row_blog = mysql_fetch_assoc($blog);
$totalRows_blog = mysql_num_rows($blog);




?>
<?php $sayfa = 'iletisim'; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $row_dil['iletisim_title']; ?></title>
    <meta name="description" content="<?php echo $row_dil['iletisim_desc']; ?>" />
    <meta name="keywords" content="<?php echo $row_dil['iletisim_keyw']; ?>" />
    
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
        	<h1><?php echo $row_dil['iletisim']; ?></h1>
        </div>
   </div>
  <div class="container bas50">
     
      <div class="row ">
        
          <form name="iletisim" method="post" action="iletildi.php">
            
            <div class="col-md-6 ">
              <h3><?php echo $row_dil['iletisim_formu']; ?></h3>
            <div class="seprator"></div>
              <div class="form-group top30">
                
                <input type="text" name="isim" placeholder="<?php echo $row_dil['isim_soyisim']; ?>" required class="form-control form-border input-lg">

              </div>
              

              <div class="form-group">
                <div class="row">
                  <div class="col-md-6">
                     <div class="form-group">
                        <input type="text" name="telefon" placeholder="<?php echo $row_dil['telefon']; ?>" required class="form-control form-border input-lg">
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group">
                        <input type="email" name="email" placeholder="<?php echo $row_dil['email']; ?>" required class="form-control form-border input-lg">
                     </div>
                  </div>
                  
                </div>

              </div>
              <div class="form-group">
                
                <textarea name="mesaj" placeholder="<?php echo $row_dil['mesaj']; ?>" required class="form-control form-border input-lg" rows="5"></textarea>
				<input type="hidden" name="baslik" value="İletişim Formu">
              </div>
              <div class="form-group">
                
                <button type="submit" class="btn btn-lg btn-block btn-genel"><?php echo $row_dil['gonder']; ?></button>

              </div>


            </div>
			  <div class="col-md-3 iletisim">
            <h3><?php echo $row_dil['iletisim_bilgileri']; ?></h3>
            <div class="seprator"></div>
            	<p class="top30">
                	<i class="fa fa-map-signs"></i> <?php echo $row_ayarlar['adres']; ?>
                </p>
                <p>
                	<i class="fa fa-phone"></i> <?php echo $row_ayarlar['tel1']; ?>
                </p>
                <p>
                	<i class="fa fa-phone"></i> <?php echo $row_ayarlar['tel2']; ?>
                </p>
                <p>
                	<i class="fa fa-whatsapp"></i> <?php echo $row_ayarlar['fax']; ?>
                </p>
                <p>
                	<i class="fa fa-envelope"></i> <?php echo $row_ayarlar['email']; ?>
                </p>
                <b>İletişim not alanı</b>
                
            </div>
			<div class="col-md-3">
				<h3><?php echo $row_dil['konum']; ?></h3>
            <div class="seprator"></div>
					<?php echo $row_ayarlar['harita']; ?>
			  </div>

          </form>

      </div>

   </div>
   
  
<?php include 'inc/footer.php'; ?>
