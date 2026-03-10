 <footer class="bas50" style="margin-top:-20px">

<div class="mContact"><div class="col-md-6 tl no-padding"> <a href="tel:+9<?php echo $row_ayarlar['tel1']; ?>" target="_blank"> <img src="images/tel1.png" alt="Telefon"> <span>Hemen Ara</span> </a></div><div class="col-md-6 wp no-padding"> <a href="https://wa.me/9<?php echo $row_ayarlar['fax']; ?>" target="_blank"> <img src="images/tel2.png" alt="Whatsapp"> <span>WhatsApp</span> </a></div></div>
    
    	<div class="container">
        	<div class="col-md-3">
            <h4><?php echo $row_dil['footer_baslik']; ?></h4>
            <div class="seprator"></div>
            <p><?php echo $row_dil['footer_aciklama']; ?></p>
        	
            </div>
            <div class="col-md-3">
            <h4><?php echo $row_dil['footer_linkler']; ?></h4>
            <div class="seprator"></div>
            <?php if ($totalRows_footer_menu > 0) { // Show if recordset not empty ?>
				<?php do { ?>
                    <p><a href="sayfa/<?php echo $row_footer_menu['sef']; ?>"><i class="fa fa-angle-double-right"></i> <?php echo $row_footer_menu['baslik']; ?></a></p>
                <?php } while ($row_footer_menu = mysql_fetch_assoc($footer_menu)); ?>
              <?php } // Show if recordset not empty ?>
            </div>
            <div class="col-md-3 haberler">
            <h4><?php echo $row_dil['footer_blog']; ?></h4>
            <div class="seprator"></div>
            <?php if ($totalRows_footer_blog > 0) { // Show if recordset not empty ?>
					<?php do { ?>
                        <p>
                          <a href="blog/<?php echo $row_footer_blog['sef']; ?>"><?php echo $row_footer_blog['baslik']; ?></a>
                        </p>
                    <?php } while ($row_footer_blog = mysql_fetch_assoc($footer_blog)); ?>
              <?php } // Show if recordset not empty ?>
            </div>
            <div class="col-md-3">
            <h4><?php echo $row_dil['footer_iletisim']; ?></h4>
            <div class="seprator"></div>
            	<p>
                	<i class="fa fa-map-signs"></i> <?php echo $row_ayarlar['adres']; ?>
                </p>
                <p>
                	<i class="fa fa-phone"></i> <?php echo $row_ayarlar['tel1']; ?>
                </p>
                <p>
                	<i class="fa fa-whatsapp"></i> <a href="https://wa.me/9<?php echo $row_ayarlar['fax'] ?>" /><?php echo $row_ayarlar['fax']; ?></a>
                </p>
                <p>
                	<i class="fa fa-envelope"></i> <?php echo $row_ayarlar['email']; ?>
                </p>
                
                </div>

            
            
        </div>
        
       	<div class="container">
        	<hr>
             <div class="text-center top30">
        	<b><?php echo $row_ayarlar['telif']; ?> <a href="https://hazirsitefiyatlari.com.tr" title="hazır site">Hazır Site</a> <a href="https://www.uzmantescil.com.tr/web-sitesi-kurma" title="web sitesi kurma">web sitesi kurma</a></b> By <a href="https://www.uzmantescil.com.tr">Uzman Tescil</a> 
        </div>
        </div>
    </footer>
    
    
    
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
  
    <script type="text/javascript">

$(window).load(function() {
    $("#flexiselDemo2").flexisel({
		visibleItems: 5,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });

    
    
});
</script>
  </body>
</html>
<?php
mysql_free_result($ayarlar);

mysql_free_result($sosyal_medya_top);

mysql_free_result($dil_top);

mysql_free_result($dil);

mysql_free_result($kurumsal);

mysql_free_result($proje_kategori);

mysql_free_result($urun_kategori);

mysql_free_result($footer_menu);

mysql_free_result($footer_blog);
?>