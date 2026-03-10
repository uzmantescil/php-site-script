
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Ayarlar
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>ayarlar">Ayarlar</a></li>
                        <li class="active">Ayarlar</li>
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
                          <th>Ayarlar</th>
													<th>Varsayılan Dil</th>
													
                          <th>İşlemler</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $limit =10;
        $search ="";
        if (isset($_GET["q"])) {
          $search_condition = $db->getRawWhereFilterForColumns
          ($_GET["q"], array("baslik","dil_baslik",));
          $search = "where $search_condition";
        }

      $dtb=$pg->myquery("select ayarlar.baslik,diller.dil_baslik,ayarlar.aid from ayarlar  inner join diller on ayarlar.dil=diller.id $search",$limit);
       $no=$pg->Num($limit);
        $count=$pg->Num($limit);
      if ($dtb->rowCount()<1) {
        echo "<tr><td colspan='4'>Hiç kayıt bulunamadı!</td></tr>";
      }
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->aid;?>">
        <td align="center"><?=$no;?></td><td><?=$isi->baslik;?></td>
<td><?=$isi->dil_baslik;?></td>

        <td>
        
        <?=($role_act["up_act"]=="Y")?'<a href="'.base_index().'ayarlar/duzenle/'.$isi->aid.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i> BİLGİLERİ DÜZENLE</a>':"";?>
        </td>
        </tr>
        <?php
        $no++;
      }
      ?>
                                        </tbody>
                                    </table>
                                   
                       
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>
       
                </section><!-- /.content -->
        
