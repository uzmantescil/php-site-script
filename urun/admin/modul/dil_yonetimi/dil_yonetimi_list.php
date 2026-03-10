
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dil Yonetimi
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>dil-yonetimi">Dil Yonetimi</a></li>
                        <li class="active">Dil Yonetimi</li>
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
                          <th>Dil</th>
													<th>Başlık</th>
													
                          <th>İşlemler</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $limit =10;
        $search ="";
        if (isset($_GET["q"])) {
          $search_condition = $db->getRawWhereFilterForColumns
          ($_GET["q"], array("dil","dil_baslik",));
          $search = "where $search_condition";
        }

      $dtb=$pg->myquery("select diller.dil,diller.dil_baslik,diller.id from diller  $search",$limit);
       $no=$pg->Num($limit);
        $count=$pg->Num($limit);
      if ($dtb->rowCount()<1) {
        echo "<tr><td colspan='4'>Hiç kayıt bulunamadı!</td></tr>";
      }
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->id;?>">
        <td align="center"><?=$no;?></td><td><?=$isi->dil;?></td>
<td><?=$isi->dil_baslik;?></td>

        <td>
        <a href="<?=base_index();?>dil-yonetimi/detay/<?=$isi->id;?>" class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a>
        <?=($role_act["up_act"]=="Y") ?'<a href="'.base_index().'dil-yonetimi/duzenle/'.$isi->id.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>':"";?>
        <?=($role_act["del_act"]=="Y") && $no > 1?'<button class="btn btn-danger hapus btn-flat" data-uri="'.base_admin().'modul/dil_yonetimi/islemler.php" data-id="'.$isi->id.'"><i class="fa fa-trash-o"></i></button>':"";?>
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
$pg->url=base_index()."dil-yonetimi?q=".$_GET['q']."&page=";
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
          <a href="<?=base_index();?>dil-yonetimi/ekle" class="btn btn-primary btn-flat"><i class="fa fa-plus"></i> Ekle</a>
                          <?php
                          } 
                       } 
}
?>  
                </section><!-- /.content -->
        
