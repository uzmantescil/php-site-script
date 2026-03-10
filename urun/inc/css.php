<style type="text/css">
    <?php echo $row_ayarlar['css']; ?>
	.sayfa span {
	font-weight: bold;
}
.alan {
	background-color: #fff;
	padding: 20px;
}
a  {
transition: all 0.5s ease-in-out;
}
.left20 {
	margin-left:20px;}
.bold {
	font-weight:500}
.top {
	background-color:<?php echo $row_ayarlar['renk2']; ?>;
	color:#fff;
	padding-top:10px;
	padding-bottom:10px}
.right5 {
	margin-right:5px}
@media (max-width: 768px) {
  .ortala {
	  text-align:center
  }
}
.sl h1 { font-size:28px;
font-weight:bold}
.sl h4 { font-size:17px;
font-weight:bold}
.slayt {
	background-color:<?php echo $row_ayarlar['renk2']; ?>;}
.slayt img {
	opacity:0.6;
	}
.beyaz a {
	text-decoration:none;
	color:#fff;
margin-right: 5px;}
.beyaz a:hover {
	color:<?php echo $row_ayarlar['renk1']; ?>}
.top-sosyal {
	text-align:right}
.top-sosyal a{
	background-color:transparent;
	color:#fff;
	margin-right:5px;
	text-decoration:none;
	
}
.baslik{
	background-color:<?php echo $row_ayarlar['renk1']; ?>;
	padding:10px;
	color:#fff;
	transition: all 0.5s ease-in-out;
	font-weight:bold;
 }
 .baslik:hover{
	background-color:<?php echo $row_ayarlar['renk2']; ?>;

 }
 .bottom30 {
	 margin-bottom:30px}	
 .sec {
	 background-color:<?php echo $row_ayarlar['renk2']; ?>;}
 .sec img {
	 opacity:0.5;
	 transition: all 0.5s ease-in-out;}
 .sec img:hover {
	 opacity:1}
 .baslik a {
	 text-decoration:none;
	 color:#fff;}

.ptop50 {
	padding-top:50px}
.bottom50 {
	padding-bottom:50px}
.gri {
	background-color:#f5f5f5}
.margin50 {
	margin-top:50px;}
h1,h2,h3,h4,h5 {
	font-weight:bold}
p {
	}
.btn-genel {
	color: #fff;
  background-color: <?php echo $row_ayarlar['renk1']; ?>;
  border-radius:0}
.top-sosyal a:hover{
	color:<?php echo $row_ayarlar['renk1']; ?>}
.menu {
	padding-top:20px;
	padding-bottom:10px}
.navbar-default {
  background-color:transparent;
  
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: <?php echo $row_ayarlar['renk2']; ?>;
  font-weight:600;
  
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #fff;
  background-color: <?php echo $row_ayarlar['renk1']; ?>;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: <?php echo $row_ayarlar['renk1']; ?>;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
@media (max-width: 767px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  right: 0;
  z-index: 1000;
  display: none;
  float: right;
  min-width: 230px;
  padding: 0;
  margin: 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: <?php echo $row_ayarlar['renk1']; ?>;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .15);
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
          box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
		  margin-top:-20px
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 15px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #fff;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: <?php echo $row_ayarlar['renk2']; ?>;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
@media (min-width : 768px) { 
  .dropdown:hover .dropdown-menu {
    display: block;
  }
}
.testimonial_subtitle{
    color: <?php echo $row_ayarlar['renk1']; ?>;
    font-size: 12px;
}
  .testimonial_btn{
    background-color: #373d4b ;
    color: #fff ;
 }
 .seprator {
    height: 2px;
    width: 56px;
    background-color: <?php echo $row_ayarlar['renk1']; ?>;
    margin: 7px 0 10px 0;
}
 .seprator2 {
    height: 2px;
    width: 56px;
    background-color: <?php echo $row_ayarlar['renk1']; ?>;
    margin:0 auto;
	margin-bottom:20px;
}
.haber h4 {}
.haber{
	border:1px solid #ccc;
	margin-top:10px}
.haber-cerik{
	padding:10px}
.haber span {
	font-weight:bold;}
.haber img {
	border-right:2px solid <?php echo $row_ayarlar['renk1']; ?>;}
haber2{
	border:1px solid #ccc;
	margin-top:10px}
.haber-cerik2{
	padding:10px}
.haber2 span {
	font-weight:bold;}
.haber2 img {
	border-right:2px solid <?php echo $row_ayarlar['renk1']; ?>;}
.renk {
	color:<?php echo $row_ayarlar['renk1']; ?>;}
.haber a{
	color:<?php echo $row_ayarlar['renk2']; ?>;
	text-decoration:none;}
.haber a:hover{
	color:<?php echo $row_ayarlar['renk1']; ?>;}
.top30 {
	margin-top:30px}
#flexiselDemo1, #flexiselDemo2, #flexiselDemo3 {
display:none;
}

.nbs-flexisel-container {
    position:relative;
    max-width:100%;
}
.nbs-flexisel-ul {
    position:relative;
    width:99999px;
    margin:0px;
    padding:0px;
    list-style-type:none;   
    text-align:center;  
}

.nbs-flexisel-inner {
    overflow:hidden;
    float:left;
    width:100%;
 
}

.nbs-flexisel-item {
    float:left;
    margin:0px;
    padding:0px;
    cursor:pointer;
    position:relative;
    line-height:0px;
}
.nbs-flexisel-item img {
    width: 100%;
    cursor: pointer;
    position: relative;
    margin-top: 10px;
    margin-bottom: 10px;
    max-width:200px;
    max-height:100px;
}



.nbs-flexisel-nav-left,
.nbs-flexisel-nav-right {
    width: 32px;
    height: 32px;
    position: absolute;
	
    cursor: pointer;
    z-index: 100;
}
.nbs-flexisel-nav-left {
    left: -20px;
    background-image: url(images/button-previous.png);
	background-repeat:no-repeat;
	background-position:center;
}

.nbs-flexisel-nav-right {
    right: -20px;
    background-image: url(images/button-next.png);
	background-repeat:no-repeat;
	background-position:center;
}

.bas50 {
	padding-top:50px; padding-bottom:50px}
footer {
	background-color:<?php echo $row_ayarlar['renk2']; ?>;
	background-attachment: fixed;
	color:#fff;}
footer a {
	color:#fff;
	text-decoration:none;}
footer a:hover{
	color:<?php echo $row_ayarlar['renk1']; ?>;
	text-decoration:none;}
.haberler p {}


.ekip .kart {
    border: none;
    background: #ffffff;
}

.ekipp p {font-weight: bold; border:1px solid #ccc;padding: 10px}
.ekip-alan .kart {
	padding:15px;
	height:300
}

.backside .kart a {
    font-size: 18px;
    color: <?php echo $row_ayarlar['renk2']; ?> 
}
.bil {
	border:1px solid #ccc;
	padding:10px}
.ekip-alan .kart .kart-title {
    color: <?php echo $row_ayarlar['renk2']; ?> 
}

.ekip-alan .kart .kart-body img {
    width: 120px;
    height: 120px;
    border-radius: 50%;
}
.ekip-sosyal a {
	text-decoration:none;
	color:<?php echo $row_ayarlar['renk2']; ?>; padding:5px}
.ekip-sosyal a:hover {
	color:<?php echo $row_ayarlar['renk1']; ?>; }
	
.tablo{
	background-color:#FFF;
	margin:15px auto;
	box-shadow:0px 0px 25px rgba(0,0,0,0.1);
	max-width:300px;
	overflow:hidden;
	position:relative;
	transition:all ease-in-out 0.25s;

}



.tablo .tablo-ust{
	background-color:<?php echo $row_ayarlar['renk1']; ?>;
	padding:20px 0px;
}
.tablo .fiyat{
	font-size:35px;
	position:relative
}
.tablo .fiyat sup{
	font-size:13px;	
	position:absolute;
	top:15px;
}
.tablo .tablo-ust p{
	font-size:13px;
}
.tablo.basic .tablo-ust,.tablo.basic .bilgi-al{
	background-color:<?php echo $row_ayarlar['renk1']; ?>;
	color:#FFF;
}


.tablo .tablo-alan{
	margin:0
}

.tablo .tablo-menu li{
	padding:10px;
	text-align:left;
	border-bottom:1px solid rgba(0,0,0,0.1);
}



.tablo .bilgi-al{
	padding:10px;
	background-color:#DDD;
	margin-top:25px;
	display:block;
}
.bilgi-al {
	text-decoration:none;}
	.bilgi-al:hover {
	text-decoration:none;}
.nav-tabs > li, .nav-pills > li {
    float:none;
    display:inline-block;
    *display:inline; /* ie7 fix */
     zoom:1; /* hasLayout ie7 trigger */
}

.nav-tabs, .nav-pills {
    text-align:center;
}
.yemek-menu a{
	text-decoration:none;
	color:<?php echo $row_ayarlar['renk2']; ?>;
	font-size:18px}

.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color:transparent;
}
.nav > li.disabled > a {
  color: #777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777;
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
}
.border {
	border:1px solid <?php echo $row_ayarlar['renk1']; ?>; padding:10px}
.banner {
	min-height:200px;
	padding:55px;
	color:#fff;
	background-color:<?php echo $row_ayarlar['renk2']; ?>;
	background-attachment:fixed}
  .form-border {
    border-radius: 0;
  }
.iletisim p {
	border:1px solid #ccc; padding: 10px
}
.top20 {
	margin-top: 20px;
}
.sss a {text-decoration: none}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #fff;
  background-color: <?php echo $row_ayarlar['renk1']; ?>;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.bolge {
	border:1px solid <?php echo $row_ayarlar['renk2']; ?>;
	padding: 10px;
	margin-top: 30px;
}
.bolge a {
	font-size: 15px;
	text-decoration: none;
	color: <?php echo $row_ayarlar['renk2']; ?>;font-weight: bold;
}
.bolge a:hover {
	
	color: <?php echo $row_ayarlar['renk1']; ?>;
}


 /** Mobile Contact **/
@media only screen and (max-width: 768px) {
.mContact{display: block !important;}

}
/** Mobile Contact **/
.mContact {
    display: none;
    text-align: center;
    position: fixed;
    bottom: 0;
    width: 100%;
    padding: 0px 0px;
    z-index: 99999999;
    border: none !important;
    /* font-family: open sans; */
    
}
  
  .mContact .col-md-6 {
    width: 50% !important;
    float: left;
    padding: 12px !important; }
  
  .mContact .col-md-6 a {
    padding: 10px;
    font-size: 14px; }
  
  .mContact .col-md-6 span {
    font-weight: bold;
    color: #fff;
    padding: 5px;
    position: relative;
    top: 1px; }
  
  .mContact .wp {
    background: #01775b; }
  
  .mContact .tl {
    background: #005fbf; }
  
  .mContact .col-md-6 img {
    width: 30px; }
  
  /** Mobile Contact **/
                




    </style>

