<div id="fakeLoader"></div>
<div class="top" style="margin-top:-20px">
        	<div class="container">
            	<div class="row bold">
                	<div class="col-md-6 ortala beyaz">
                      <?php if ($totalRows_dil_top == 1) { // Show if recordset empty ?>
  						<a href="tel:<?php echo $row_ayarlar['tel1']; ?>"><i class="fa fa-phone right5"></i> <?php echo $row_ayarlar['tel1']; ?></a>
                        <a href="mailto:<?php echo $row_ayarlar['email']; ?>"><i class="fa fa-envelope left20 right5"></i> <?php echo $row_ayarlar['email']; ?></a>
                        <?php } // Show if recordset empty ?>
<?php if ($totalRows_dil_top > 1) { // Show if recordset not empty ?>
                        <?php do { ?>
                          <a href="?lang=<?php echo $row_dil_top['id']; ?>"><?php echo $row_dil_top['dil']; ?></a>
                          <?php } while ($row_dil_top = mysql_fetch_assoc($dil_top)); ?>
                        <?php } // Show if recordset not empty ?>
                    </div>
                    <div class="col-md-6 hidden-sm hidden-xs">
                    	<div class="top-sosyal ortala">
                          <?php if ($totalRows_sosyal_medya_top > 0) { // Show if recordset not empty ?>
  <?php do { ?>
    <a href="<?php echo $row_sosyal_medya_top['link']; ?>" title="<?php echo $row_sosyal_medya_top['baslik']; ?>"><i class="<?php echo $row_sosyal_medya_top['ikon']; ?>"></i></a>
    <?php } while ($row_sosyal_medya_top = mysql_fetch_assoc($sosyal_medya_top)); ?>
                            <?php } // Show if recordset not empty ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-2 ortala">
                    	<a href="<?php echo BASE_URL ?>"><img src="upload/ayarlar/<?php echo $row_ayarlar['logo']; ?>" alt="logo" width="175"></a>
                    </div>
                    <div class="col-md-10">
                    	<nav class="navbar navbar-default">
                            <div class="container-fluid">
                              <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                  <span class="sr-only">Toggle navigation</span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                                </button>
                                <a href="" class="navbar-brand hidden-lg hidden-md">MOBİL MENÜ</a>
                              </div>
                              <div id="navbar" class="navbar-collapse collapse">
                               
                                <ul class="nav navbar-nav navbar-right">
                                	<li class="<?php  $aktif = 'anasayfa'; if($aktif==$sayfa) {echo'active';} ?>"><a href="<?php echo BASE_URL ?>"><?php echo $row_dil['anasayfa']; ?></a></li>
                                	<li class="dropdown dropdown-menu-right <?php  $aktif = 'kurumsal'; if($aktif==$sayfa) {echo'active';} ?>">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $row_dil['kurumsal']; ?> <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                      <?php if ($totalRows_kurumsal > 0) { // Show if recordset not empty ?>
											<?php do { ?>
                                                <li><a href="sayfa/<?php echo $row_kurumsal['sef']; ?>"><?php echo $row_kurumsal['baslik']; ?></a></li>
                                                
                                            <?php } while ($row_kurumsal = mysql_fetch_assoc($kurumsal)); ?>
                                        <?php } // Show if recordset not empty ?>
                                       
                                    </ul>
                                  </li>
                                  <li class="dropdown <?php  $aktif = 'urunler'; if($aktif==$sayfa) {echo'active';} ?>">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $row_dil['urunler']; ?> <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                      <?php if ($totalRows_urun_kategori > 0) { // Show if recordset not empty ?>
										  <?php do { ?>
                                            <li><a href="urun-kategori/<?php echo $row_urun_kategori['sef']; ?>"><?php echo $row_urun_kategori['kategori_baslik']; ?></a></li>
                                            <?php } while ($row_urun_kategori = mysql_fetch_assoc($urun_kategori)); ?>
                                        <?php } // Show if recordset not empty ?>
                                    </ul>
                                  </li>
                                  
                                  <li class="<?php  $aktif = 'hizmetler'; if($aktif==$sayfa) {echo'active';} ?>"><a href="hizmetler"><?php echo $row_dil['hizmetler']; ?></a></li>
                                  <li class="<?php  $aktif = 'galeri'; if($aktif==$sayfa) {echo'active';} ?>"><a href="galeri"><?php echo $row_dil['galeri']; ?></a></li>
                                  <li class="<?php  $aktif = 'blog'; if($aktif==$sayfa) {echo'active';} ?>"><a href="blog"><?php echo $row_dil['blog']; ?></a></li>
                                  <li class="<?php  $aktif = 'iletisim'; if($aktif==$sayfa) {echo'active';} ?>"><a href="iletisim"><?php echo $row_dil['iletisim']; ?></a></li>
                                  
                                </ul>
                              </div><!--/.nav-collapse -->
                            </div><!--/.container-fluid -->
                          </nav>
                    </div>
                </div>
            </div>
        </div>