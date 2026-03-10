

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
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Urun Kategorileri</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                   <form class="form-horizontal">
                      <div class="form-group">
                        <label for="Dil Seçimi" class="control-label col-lg-2">Dil Seçimi</label>
                        <div class="col-lg-10">
                          <?php foreach ($db->fetch_all("diller") as $isi) {
                  if ($data_edit->dil==$isi->id) {

                    echo "<input disabled class='form-control' type='text' value='$isi->dil_baslik'>";
                  }
               } ?>
              
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Kategori Başlığı" class="control-label col-lg-2">Kategori Başlığı</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->kategori_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Seo Başlık" class="control-label col-lg-2">Seo Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->seo1;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Seo Açıklama" class="control-label col-lg-2">Seo Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->seo2;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Aratma Kelimeleri" class="control-label col-lg-2">Aratma Kelimeleri</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->seo3;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->

                   
                    </form>
                    <a href="<?=base_index();?>urun-kategorileri" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
