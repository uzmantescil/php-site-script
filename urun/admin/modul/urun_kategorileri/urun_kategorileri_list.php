
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Urun Kategorileri
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>urun-kategorileri">Urun Kategorileri</a></li>
                        <li class="active">Urun Kategorileri</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                 <div class="box-header">
                                
                                       <form action="" method="get" class="form_cari">
                        <div class="input-group col-lg-6">
                 <span class="input-group-btn">
        <button class="btn btn-default" type="button">Arama Kutusu</button>
      </span>
                            <input type="text" name="q" class="form-control" placeholder="Birşeyler arayın.."/>
                            <span class="input-group-btn">
                                <button type="submit" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <table  class="table table-bordered table-striped">
                                   <thead>
                                     <tr>
                           <th style="width:25px" align="center">Numara</th>
                          <th>Kategori Başlığı</th>
													<th>Seçili Dil</th>
													
                          <th>İşlemler</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $limit =10;
        $search ="";
        if (isset($_GET["q"])) {
          $search_condition = $db->getRawWhereFilterForColumns
          ($_GET["q"], array("kategori_baslik","dil_baslik",));
          $search = "where $search_condition";
        }

      $dtb=$pg->myquery("select urun_kategori.kategori_baslik,diller.dil_baslik,urun_kategori.kategori_id from urun_kategori  inner join diller on urun_kategori.dil=diller.id $search",$limit);
       $no=$pg->Num($limit);
        $count=$pg->Num($limit);
      if ($dtb->rowCount()<1) {
        echo "<tr><td colspan='4'>Hiç kayıt bulunamadı!</td></tr>";
      }
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->kategori_id;?>">
        <td align="center"><?=$no;?></td><td><?=$isi->kategori_baslik;?></td>
<td><?=$isi->dil_baslik;?></td>

        <td>
        <a href="<?=base_index();?>urun-kategorileri/detay/<?=$isi->kategori_id;?>" class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a>
        <?=($role_act["up_act"]=="Y")?'<a href="'.base_index().'urun-kategorileri/duzenle/'.$isi->kategori_id.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>':"";?>
        <?=($role_act["del_act"]=="Y")?'<button class="btn btn-danger hapus btn-flat" data-uri="'.base_admin().'modul/urun_kategorileri/islemler.php" data-id="'.$isi->kategori_id.'"><i class="fa fa-trash-o"></i></button>':"";?>
        </td>
        </tr>
        <?php
        $no++;
      }
      ?>
                                        </tbody>
                                    </table>
                                    <div class="col-xs-6" style="margin-top:10px">
    
                        
                        </div>

                        <div class="col-xs-6">
                          
                                    <?php
                                  if (isset($_GET['q'])) {
$pg->url=base_index()."urun-kategorileri?q=".$_GET['q']."&page=";
                                  }
                                    $pg->setParameter(array(
                                      'range'=>$limit,
                                      ));
                                      ?>

                                    <div class="dataTables_paginate paging_bootstrap">
                                    <ul class="pagination">
                                    <?=$pg->create();?>
                                    </ul>
                                    </div>
                        </div>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>
        <?php
       foreach ($db->fetch_all("sys_menu") as $isi) {
                      if ($path_url==$isi->url) {
                          if ($role_act["insert_act"]=="Y") {
                    ?>
          <a href="<?=base_index();?>urun-kategorileri/ekle" class="btn btn-primary btn-flat"><i class="fa fa-plus"></i> Ekle</a>
                          <?php
                          } 
                       } 
}
?>  
                </section><!-- /.content -->
        
