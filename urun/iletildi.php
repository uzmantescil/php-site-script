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
$query_smtp = "SELECT * FROM smtp";
$smtp = mysql_query($query_smtp, $config) or die(mysql_error());
$row_smtp = mysql_fetch_assoc($smtp);
$totalRows_smtp = mysql_num_rows($smtp);



?>
<?php $sayfa = ''; ?>
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
	<div class="container bas50 text-center" style="padding:100px;">
    	 <?
require("inc/class.phpmailer.php");

$mail = new PHPMailer();

$mail->IsSMTP();                                   // send via SMTP
$mail->Host     = $row_smtp['sunucu']; // SMTP servers
$mail->SMTPAuth = true;     // turn on SMTP authentication
$mail->Username = $row_smtp['username'];  // SMTP username
$mail->Password = $row_smtp['sifre']; // SMTP password
$mail->Port = $row_smtp['smtp_port'];
$mail->CharSet = "utf-8";
$mail->IsHTML(true);
$mail->From     = $row_smtp['username']; // smtp kullanýcý adýnýz ile ayný olmalý
$mail->Fromname = 'Sistem Maili';
$mail->AddAddress($row_smtp['mail']);
$mail->Subject  =  $row_smtp['baslik'];
$mail->Body     =  implode("<br>",$_POST);

	

if(!$mail->Send())
{
   echo '<b style="color:red;">Mesaj Gönderilemedi! <b>';
   echo "Mailer Error: " . $mail->ErrorInfo;
   exit;
}

echo '<h1>'.$row_dil['iletildi'].'</h1>';


?>
    </div>
        
   <?php include 'inc/footer.php'; ?>
<?php
mysql_free_result($smtp);
?>
