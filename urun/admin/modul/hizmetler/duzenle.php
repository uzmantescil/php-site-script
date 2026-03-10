

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                      Hizmetler
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>hizmetler">Hizmetler</a></li>
                        <li class="active">Hizmetler</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Hizmetler</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/hizmetler/islemler.php?act=up">
                      <div class="form-group">
                        <label for="Dil Seçimi" class="control-label col-lg-2">Dil Seçimi</label>
                        <div class="col-lg-10">
                          <select name="dil" data-placeholder="Pilih Dil Seçimi..." class="form-control chzn-select" tabindex="2" >
               <option value=""></option>
               <?php foreach ($db->fetch_all("diller") as $isi) {

                  if ($data_edit->dil==$isi->id) {
                    echo "<option value='$isi->id' selected>$isi->dil_baslik</option>";
                  } else {
                  echo "<option value='$isi->id'>$isi->dil_baslik</option>";
                    }
               } ?>
              </select>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa'da göster" class="control-label col-lg-2">Anasayfa'da göster</label>
                        <div class="col-lg-10">
                          <?php if ($data_edit->anasayfa=="1") {
      ?>
      <input name="anasayfa" class="make-switch" type="checkbox" checked>
      <?php
    } else {
      ?>
      <input name="anasayfa" class="make-switch" type="checkbox">
      <?php
    }?>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Resim" class="control-label col-lg-2">Resim</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                             <img src="../../../../upload/hizmetler/<?=$data_edit->resim?>">
                            </div>
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                              <span class="btn btn-default btn-file"><span class="fileinput-new">Resim Seçin</span> <span class="fileinput-exists">Değiştir</span> <input type="file" name="resim" accept="image/*">
                              </span> 
                              <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Kaldır</a></div>
                          </div>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Başlık" class="control-label col-lg-2">Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="baslik" value="<?=$data_edit->baslik;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Özet" class="control-label col-lg-2">Özet</label>
                        <div class="col-lg-10">
                          <input type="text" name="ozet" value="<?=$data_edit->ozet;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İçerik" class="control-label col-lg-2">İçerik</label>
                        <div class="col-lg-10">
                          <textarea id="editbox" name="icerik" class="editbox"><?=$data_edit->icerik;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Seo Başlık" class="control-label col-lg-2">Seo Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="seo1" value="<?=$data_edit->seo1;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Seo Açıklama" class="control-label col-lg-2">Seo Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="seo2" value="<?=$data_edit->seo2;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Aratma Kelimeleri" class="control-label col-lg-2">Aratma Kelimeleri</label>
                        <div class="col-lg-10">
                          <input type="text" name="seo3" value="<?=$data_edit->seo3;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                      <input type="hidden" name="id" value="<?=$data_edit->hizmet_id;?>">
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
                    <a href="<?=base_index();?>hizmetler" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
 