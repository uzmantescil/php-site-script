	<meta name="author" content="<?php echo $row_ayarlar['yazar']; ?>" />
    <meta name="owner" content="<?php echo $row_ayarlar['sahip']; ?>" />
    <meta name="copyright" content="<?php echo $row_ayarlar['sene']; ?>" />
	<base href="<?php echo BASE_URL ?>">

    <!--Favicon-->
    <link rel="shortcut icon" href="upload/ayarlar/<?php echo $row_ayarlar['favicon']; ?>" type="image/x-icon">
    <link rel="icon" href="upload/ayarlar/<?php echo $row_ayarlar['favicon']; ?>" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/lightbox.min.css">
    <?php echo $row_ayarlar['google_font']; ?>
	<?php include'css.php';?>