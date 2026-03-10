<?php $data_edit=$db->fetch_single_row('sys_users','id',$_SESSION['id_user']);?>
 
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                      Profil Düzenleme
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>profil">Profil</a></li>
                        
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-primary">
                                <div class="box-header">
                                </div><!-- /.box-header -->

                  <div class="box-body">
                     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/profil/islemler.php?act=up">
                      <div class="form-group">
                        <label for="First Name" class="control-label col-lg-2">İsim</label>
                        <div class="col-lg-10">
                          <input type="text" id="first_name" name="first_name" value="<?=$data_edit->first_name;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Last Name" class="control-label col-lg-2">Soyisim</label>
                        <div class="col-lg-10">
                          <input type="text" id="last_name" name="last_name" value="<?=$data_edit->last_name;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Email</label>
                        <div class="col-lg-10">
                          <input type="text" id="email" name="email" value="<?=$data_edit->email;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="First Name" class="control-label col-lg-2">Firma Adı</label>
                        <div class="col-lg-10">
                          <input type="text" id="first_name" name="firma" value="<?=$data_edit->firma;?>" class="form-control" required>
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="First Name" class="control-label col-lg-2">Telefon</label>
                        <div class="col-lg-10">
                          <input type="text" id="first_name" name="tel" value="<?=$data_edit->tel;?>" class="form-control" required>
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="First Name" class="control-label col-lg-2">Adres</label>
                        <div class="col-lg-10">
                          <input type="text" id="first_name" name="adres" value="<?=$data_edit->adres;?>" class="form-control" required>
                        </div>
                      </div><!-- /.form-group -->
                     
     <div class="form-group hidden">
                        <label for="nama_foto" class="control-label col-lg-2">Foto</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px;">
                             <img src="../../../upload/kullanicilar/<?=$data_edit->foto_user?>">
                            </div>
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                              <span class="btn btn-default btn-file"><span class="fileinput-new">Resim Seçin</span> <span class="fileinput-exists">Değiştir</span> 
                                <input type="file" name="foto_user" accept="image/*">
                              </span> 
                              <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Kaldır</a> 
                            </div>
                          </div>
                        </div>
                      </div><!-- /.form-group -->
                     

                      <input type="hidden" name="id" value="<?=$data_edit->id;?>">
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
                    
                    <a href="<?=base_index();?>profil" class="btn btn-success">Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
 