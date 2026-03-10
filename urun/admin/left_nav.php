
   <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?=base_url();?>upload/kullanicilar/demo.jpg" class="img-circle" alt="Resim" />
            </div>
            <div class="pull-left info">
              <p><?=ucwords($db->fetch_single_row('sys_users','id',$_SESSION['id_user'])->username)?></p>
				<?php 
										 $ben = ucwords($db->fetch_single_row('sys_users','id',$_SESSION['id_user'])->id); ?>
              <a href="<?=base_index();?>profil"><i class="fa fa-circle text-success"></i> Aktif</a>
            </div>
          </div>
        
          <ul class="sidebar-menu">
            <li class="header">KONTROL MENÜSÜ</li>



             <li class="<?=($path_url=='')?'active':'';?>">
                            
                            <a href="https://www.uzmantescil.com.tr/hesabim/destek-taleplerim" target="_blank" />
                            <i class="fa fa-life-ring"></i>
                                <span><strong><font color ="yellow">Destek Almak İçin Tıklayın! </font> </strong></span>
                              </a>

                              <a href="<?php echo BASE_URL ?>" target="_blank" />
                            <i class="fa fa-home"></i>
                                <span><strong>Siteye Git </font> </strong></span>
                              </a>

                            <a href="<?=base_index();?>">
                           <i class="fa fa-dashboard"></i> <span>Anasayfa</span>
                            </a>
                        </li>
              <?php
            
              if ($_SESSION['level']==1) {
                ?>

              <li class="treeview <?=($path_url=='kullanicilar'||$path_url=='page'||$path_url=='yetki'||$path_url=='seviye')?'active':'';?>">
                        <a href="#">
                        <i class="fa fa-user-plus"></i>
                        <span>Kullanıcı Ayarları</span>
                        <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">

                         
                         
                        
                        
                          <li class="<?=($path_url=='kullanicilar')?'active':'';?>">
                            <a href="<?=base_index();?>kullanicilar">
                                <i class="fa fa-circle-o"></i> <span>Kullanıcı Yönetimi</span>
                            </a>
                        </li>
                        
                        
                          
                        </ul>
                        </li>


<?php

                  }

$result=$db->fetch_custom("select sys_menu.*,sys_menu_role.read_act,sys_menu_role.insert_act,sys_menu_role.update_act,sys_menu_role.delete_act,sys_menu_role.group_id from sys_menu
left join sys_menu_role on sys_menu.id=sys_menu_role.id_menu
where sys_menu_role.group_id=? and sys_menu_role.read_act=? and tampil=? ORDER BY parent, urutan_menu",array('sys_menu_role.group_id'=>$_SESSION['level'],'sys_menu_role.read_act'=>'Y','tampil'=>'Y'));


$menu = array(
    'items' => array(),
    'parents' => array()
);

foreach ($result as $items) {

  $items = toArray($items);


    $menu['items'][$items['id']] = $items;
    $menu['parents'][$items['parent']][] = $items['id'];
}


echo $db->buildMenu($path_url,0, $menu);
?>

           </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">


