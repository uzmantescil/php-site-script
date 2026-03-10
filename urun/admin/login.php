<?php 
session_start();
if (!isset($_SESSION['login'])) {
?>
<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   	<title>GİRİŞ EKRANI</title>
  <link media="all" type="text/css" rel="stylesheet" href="assets/login/css/m-styles.min.css">
  <link media="all" type="text/css" rel="stylesheet" href="assets/login/css/login.css">
  <link media="all" type="text/css" rel="stylesheet" href="../assets/css/bootstrap.css">
  <script src="assets/login/js/jquery.js"></script>

  <script type="text/javascript" src="assets/login/js/jquery.backstretch.min.js"></script> 
  <script src="assets/login/js/jqueryform.js"></script>
  <script src="assets/login/js/validate.js"></script>
  <script src="assets/login/js/login.js"></script>
  </head>
  <body style="background-color:#ededed;">
    
			<div>
				<!-- <form id="form" method="post"> -->
    <form method="POST" action="inc/login.php" accept-charset="UTF-8" id="form" novalidate="novalidate">
    	
    	

      <div class="container">
      		 <div class="row">
             <div class="col-md-3"></div>
          <div class="col-md-6" style="border:1px solid #CCC; padding:30px; margin:0 auto; margin-top:100px; width:500px; background-color:#fff" >
          		
          		
                <div class="col-md-8" style="width:100%">
                <img src="user.png" width="150" style="margin-bottom:30px">
                	<div class="form-group">
                		<input class=" form-control borderr" style="height:40px; border:1px solid #CCC; border-radius:0; padding:5px;" placeholder="Kullanıcı Adınız" autofocus="autofocused" name="username" type="text" value="">
                </div>
                <div class="form-group" style="margin-top:10px;">
                		<input class=" form-control borderr" style="height:40px; border:1px solid #CCC; border-radius:0;padding:5px;" placeholder="Parolanız" id="txtPassword" name="password" type="password" value="">
                </div>
                <div class="form-group" style="margin-top:10px;">
                		<input class="btn btn-info borderr btn-block" style="height:38px; width:180px; border:1px solid #CCC; border-radius:0;"  type="submit" value="Giriş Yap"> 
                </div>
                </div>
                <div id="kanan">
    	
	<div class="load"><img src="assets/login/img/load.gif"><span class="txt">Uyarı</span></div>
	<div class="bad">Kullanıcı adınız yada parolanız hatalı! <p><span class="m-btn red" id="back">Geri</span></p></div>
<div class="tes"></div>
          </div>
          
        </div> 
        <div class="col-md-3"></div>      
      </div> 
      
    


              
        
    
 

 
               


</div>
</form>
</div>  

</body></html>
<?php 
} else {
  header("location:index.php/");
}
?>