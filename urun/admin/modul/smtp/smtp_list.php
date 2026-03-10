
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Smtp
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>smtp">Smtp</a></li>
                        <li class="active">Smtp</li>
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
                          <th>Sunucu</th>
													
                          <th>İşlemler</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $limit =10;
        $search ="";
        if (isset($_GET["q"])) {
          $search_condition = $db->getRawWhereFilterForColumns
          ($_GET["q"], array("sunucu",));
          $search = "where $search_condition";
        }

      $dtb=$pg->myquery("select smtp.sunucu,smtp.id from smtp  $search",$limit);
       $no=$pg->Num($limit);
        $count=$pg->Num($limit);
      if ($dtb->rowCount()<1) {
        echo "<tr><td colspan='3'>Hiç kayıt bulunamadı!</td></tr>";
      }
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->id;?>">
        <td align="center"><?=$no;?></td><td><?=$isi->sunucu;?></td>

        <td>
        <a href="<?=base_index();?>smtp/detay/<?=$isi->id;?>" class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a>
        <?=($role_act["up_act"]=="Y")?'<a href="'.base_index().'smtp/duzenle/'.$isi->id.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>':"";?>
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
$pg->url=base_index()."smtp?q=".$_GET['q']."&page=";
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
       
                </section><!-- /.content -->
        
