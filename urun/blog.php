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
<?php $sayfa = 'blog'; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $row_dil['blog_title']; ?></title>
    <meta name="description" content="<?php echo $row_dil['blog_desc']; ?>" />
    <meta name="keywords" content="<?php echo $row_dil['blog_keyw']; ?>" />
    
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
        	<h1><?php echo $row_dil['blog']; ?></h1>
        </div>
   </div>
   <?php if ($totalRows_blog > 0) { // Show if recordset not empty ?>
  <div class="container bas50">
    
    
    
    <div class="row"><?php do { ?>
      <div class="col-md-4">
        <div class="haber">
          <div class="row">
            <div class="col-md-12">
              <a href="blog/<?php echo $row_blog['sef']; ?>"><img src="upload/blog/<?php echo $row_blog['resim']; ?>" alt="<?php echo $row_blog['baslik']; ?>" width="100%" ></a>  
              </div>
            <div class="col-md-12">
              
              <div class="haber-cerik">
                <h4><a href="blog/<?php echo $row_blog['sef']; ?>"><?php echo $row_blog['baslik']; ?></a></h4>
                <p><?php echo $row_blog['ozet']; ?></p>
                <hr>
                <span><i class="fa fa-user renk"></i> <?php echo $row_blog['yazar']; ?></span> <span style="margin-left:15px"><i class="fa fa-calendar renk"></i> <?php echo $row_blog['tarih']; ?></span>
                </div>
              </div>
            </div>
          </div>
      </div>
      <?php } while ($row_blog = mysql_fetch_assoc($blog)); ?>
      
    </div>  
    
    
    
  </div>
  <?php } // Show if recordset not empty ?>
<?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($blog);
?>
