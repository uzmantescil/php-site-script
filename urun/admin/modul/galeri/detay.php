

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     Galeri
                    </h1>
                   <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>galeri">Galeri</a></li>
                        <li class="active">Galeri</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Galeri</h3>
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
                        <label for="Başlık" class="control-label col-lg-2">Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Resim" class="control-label col-lg-2">Resim</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                    <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;">
                    <img src="../../../../upload/galeri/<?=$data_edit->resim?>"></div>
                  </div>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Video mu?" class="control-label col-lg-2">Video mu?</label>
                        <div class="col-lg-10">
                          <?php if ($data_edit->video=="1") {
      ?>
      <input name="video" class="make-switch" disabled type="checkbox" checked>
      <?php
    } else {
      ?>
      <input name="video" class="make-switch" disabled type="checkbox">
      <?php
    }?>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Video Kodu" class="control-label col-lg-2">Video Kodu</label>
                        <div class="col-lg-10">
                          <textarea id="editbox" name="kod" disabled="" class="form-control"><?=$data_edit->kod;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->

                   
                    </form>
                    <a href="<?=base_index();?>galeri" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
