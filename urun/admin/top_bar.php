<header class="main-header">
        <!-- Logo -->
        <a href="<?=base_index();?>" class="logo"><b><i class="fa fa-desktop"></i> <?=$db->fetch_single_row('sys_group_users','id',$_SESSION['level'])->deskripsi?></b></a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Mobil Menü</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
            
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="<?=base_url();?>upload/kullanicilar/demo.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"><?=ucwords($db->fetch_single_row('sys_users','id',$_SESSION['id_user'])->first_name)?> <?=ucwords($db->fetch_single_row('sys_users','id',$_SESSION['id_user'])->last_name);?></span>
                </a>

                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="<?=base_url();?>upload/kullanicilar/demo.jpg" class="img-circle" alt="User Image" />
                    <p>
                                       <?=$db->fetch_single_row('sys_group_users','id',$_SESSION['level'])->deskripsi?>
                                       
                                    </p>
                  </li>
                
                   <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="<?=base_index();?>profil" class="btn btn-default btn-flat">Profilim</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="<?=base_admin();?>logout.php" class="btn btn-default btn-flat">Çıkış Yap</a>
                                    </div>
                                </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>

<div class="modal" id="ucing" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"> <div class="modal-dialog"> <div class="modal-content"><div class="modal-header"> <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button> <h4 class="modal-title">UYARI!</h4> </div> <div class="modal-body"> <p>Bu içeriği silmek istediğine emin misin? Bu işlem geri alınamaz!</p> </div> <div class="modal-footer"> <button type="button" id="delete" class="btn btn-danger">Sil</button> <button type="button" class="btn btn-default" data-dismiss="modal">İptal</button> </div> </div><!-- /.modal-content --> </div><!-- /.modal-dialog --> </div><!-- /.modal -->