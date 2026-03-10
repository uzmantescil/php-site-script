

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
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Ayarlar</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/ayarlar/islemler.php?act=up">
                      <div class="form-group">
                        <label for="Varsayılan Dil" class="control-label col-lg-2">Varsayılan Dil</label>
                        <div class="col-lg-10">
                          <select name="dil" data-placeholder="Pilih Varsayılan Dil..." class="form-control chzn-select" tabindex="2" >
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
                        <label for="Site Logosu" class="control-label col-lg-2">Site Logosu</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                             <img src="../../../../upload/ayarlar/<?=$data_edit->logo?>">
                            </div>
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                              <span class="btn btn-default btn-file"><span class="fileinput-new">Resim Seçin</span> <span class="fileinput-exists">Değiştir</span> <input type="file" name="logo" accept="image/*">
                              </span> 
                              <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Kaldır</a></div>
                          </div>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Favicon" class="control-label col-lg-2">Favicon</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                             <img src="../../../../upload/ayarlar/<?=$data_edit->favicon?>">
                            </div>
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                              <span class="btn btn-default btn-file"><span class="fileinput-new">Resim Seçin</span> <span class="fileinput-exists">Değiştir</span> <input type="file" name="favicon" accept="image/*">
                              </span> 
                              <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Kaldır</a></div>
                          </div>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Sistem Yazarı" class="control-label col-lg-2">Sistem Yazarı</label>
                        <div class="col-lg-10">
                          <input type="text" name="yazar" value="<?=$data_edit->yazar;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Site Sahibi" class="control-label col-lg-2">Site Sahibi</label>
                        <div class="col-lg-10">
                          <input type="text" name="sahip" value="<?=$data_edit->sahip;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Site Açılış yılı" class="control-label col-lg-2">Site Açılış yılı</label>
                        <div class="col-lg-10">
                          <input type="text" name="sene" value="<?=$data_edit->sene;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Adres" class="control-label col-lg-2">Adres</label>
                        <div class="col-lg-10">
                          <textarea  name="adres" class="form-control"><?=$data_edit->adres;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Telefon 1" class="control-label col-lg-2"><i class="fa fa-phone"></i> Telefon 1</label>
                        <div class="col-lg-10">
                          <input type="text" name="tel1" value="<?=$data_edit->tel1;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Telefon 2" class="control-label col-lg-2"><i class="fa fa-phone"></i> Telefon 2</label>
                        <div class="col-lg-10">
                          <input type="text" name="tel2" value="<?=$data_edit->tel2;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Fax" class="control-label col-lg-2"><i class="fa fa-whatsapp"></i> <font color="green"/>Whatsapp</font></label>
                        <div class="col-lg-10">
                          <input type="text" name="fax" value="<?=$data_edit->fax;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Email" class="control-label col-lg-2"><i class="fa fa-envelope-o"></i> Email</label>
                        <div class="col-lg-10">
                          <input type="text" name="email" value="<?=$data_edit->email;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Harita Kodu" class="control-label col-lg-2">Harita Kodu</label>
                        <div class="col-lg-10">
                          <textarea  name="harita" class="form-control"><?=$data_edit->harita;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Harici Js Kodları" class="control-label col-lg-2">Harici Js Kodları</label>
                        <div class="col-lg-10">
                          <textarea  name="js" class="form-control"><?=$data_edit->js;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Google Font Linki" class="control-label col-lg-2">Google Font Linki</label>
                        <div class="col-lg-10">
                          <textarea  name="google_font" class="form-control"><?=$data_edit->google_font;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Harici Css Kodları" class="control-label col-lg-2">Harici Css Kodları</label>
                        <div class="col-lg-10">
                          <textarea  name="css" class="form-control"><?=$data_edit->css;?> </textarea>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Tema Rengi 1" class="control-label col-lg-2">Tema Rengi 1</label>
                        <div class="col-lg-10">
                          <input style="background-color:<?=$data_edit->renk1;?>; color:#fff; border:0" type="text" name="renk1" value="<?=$data_edit->renk1;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Tema Rengi 2" class="control-label col-lg-2">Tema Rengi 2</label>
                        <div class="col-lg-10">
                          <input type="text" style="background-color:<?=$data_edit->renk2;?>; color:#fff; border:0;" name="renk2" value="<?=$data_edit->renk2;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
          
                    <div class="form-group">
                        <label for="Tema Rengi 2" class="control-label col-lg-2">Yapımcı</label>
                        <div class="col-lg-10">
                          <input type="text"  name="yapimci" value="<?=$data_edit->yapimci;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="Tema Rengi 2" class="control-label col-lg-2">Yapımcı Linki</label>
                        <div class="col-lg-10">
                          <input type="text"  name="link" value="<?=$data_edit->link;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="Tema Rengi 2" class="control-label col-lg-2">Telif</label>
                        <div class="col-lg-10">
                          <input type="text"  name="telif" value="<?=$data_edit->telif;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                    
                      <input type="hidden" name="id" value="<?=$data_edit->aid;?>">
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
                    <a href="<?=base_index();?>ayarlar" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
 