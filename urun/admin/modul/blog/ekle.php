
           
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     Blog
                    </h1>
                           <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>blog">Blog</a></li>
                        <li class="active">Blog</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12"> 
        <div class="box box-solid box-primary">
                                 <div class="box-header">
                                    <h3 class="box-title">Blog</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="input" method="post" class="form-horizontal foto_banyak" action="<?=base_admin();?>modul/blog/islemler.php?act=in">
                      <div class="form-group">
                        <label for="Dil Seçimi" class="control-label col-lg-2">Dil Seçimi</label>
                        <div class="col-lg-10">
                          <select name="dil" data-placeholder="Pilih Dil Seçimi ..." class="form-control chzn-select" tabindex="2" >
               <option value=""></option>
               <?php foreach ($db->fetch_all("diller") as $isi) {
                  echo "<option value='$isi->id'>$isi->dil_baslik</option>";
               } ?>
              </select>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Resim" class="control-label col-lg-2">Resim</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                              <img data-src="holder.js/100%x100%" alt="...">
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
                          <input type="text" name="baslik" placeholder="Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Özet" class="control-label col-lg-2">Özet</label>
                        <div class="col-lg-10">
                          <input type="text" name="ozet" placeholder="Özet" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İçerik" class="control-label col-lg-2">İçerik</label>
                        <div class="col-lg-10">
                          <textarea id="editbox" name="icerik" class="editbox"></textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Tarih" class="control-label col-lg-2">Tarih</label>
                        <div class="col-lg-10">
                          <input type="text" id="tgl1" data-rule-date="true" name="tarih" placeholder="Tarih" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Yazar" class="control-label col-lg-2">Yazar</label>
                        <div class="col-lg-10">
                          <input type="text" name="yazar" placeholder="Yazar" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Seo Başlık" class="control-label col-lg-2">Seo Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="seo1" placeholder="Seo Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Seo Açıklama" class="control-label col-lg-2">Seo Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="seo2" placeholder="Seo Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Aratma Kelimeleri" class="control-label col-lg-2">Aratma Kelimeleri</label>
                        <div class="col-lg-10">
                          <input type="text" name="seo3" placeholder="Aratma Kelimeleri" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                      
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
 <a href="<?=base_index();?>blog" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
            