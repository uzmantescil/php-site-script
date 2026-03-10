
            
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     Kullanıcı Yönetimi
                    </h1>
                           <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>user-management">Kullanıcı Yönetimi</a></li>
                       
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12"> 
        <div class="box box-solid box-primary">
                                 <div class="box-header">
                                    <h3 class="box-title">Kullanıcı Yönetimi</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
 <div class="alert alert-danger user_exist" style="display:none">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <strong>Bu kullanıcı adı zaten kayıtlı!</strong> 
        </div>
<form id="input_user" method="post" class="form-horizontal" action="<?=base_admin();?>modul/kullanicilar/islemler.php?act=in">
                      <div class="form-group">
                        <label for="First Name" class="control-label col-lg-2">İsim</label>
                        <div class="col-lg-10">
                          <input type="text" id="first_name" name="first_name" placeholder="İsim" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Soyisim" class="control-label col-lg-2">Soyisim</label>
                        <div class="col-lg-10">
                          <input type="text" id="last_name" name="last_name" placeholder="Soyisim" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Username" class="control-label col-lg-2">Kullanıcı Adı</label>
                        <div class="col-lg-10">
                          <input type="text" id="username" name="username" placeholder="Kullanıcı Adı" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Password" class="control-label col-lg-2">Parola</label>
                        <div class="col-lg-10">
                          <input type="password" id="password_baru" name="password_baru" placeholder="Parola" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Password" class="control-label col-lg-2">Parolayı Onayla</label>
                        <div class="col-lg-10">
                          <input type="password" id="password_confirm" name="password_confirm" placeholder="Parolayı Onayla" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Email</label>
                        <div class="col-lg-10">
                          <input type="text" id="email" data-rule-email="true" name="email" placeholder="Email" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Firma</label>
                        <div class="col-lg-10">
                          <input type="text"  name="firma" placeholder="Firma Adı" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Telefon</label>
                        <div class="col-lg-10">
                          <input type="text"   name="tel" placeholder="Telefon" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Adres</label>
                        <div class="col-lg-10">
                          <input type="text"   name="adres" placeholder="Adres" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
     <div class="form-group hidden" >
                        <label class="control-label col-lg-2">Foto</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                              <img data-src="holder.js/100%x100%" alt="...">
                            </div>
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                              <span class="btn btn-default btn-file"><span class="fileinput-new">Resim Seçin</span> <span class="fileinput-exists">Değiştir</span> 
                                <input type="file" name="foto_user" accept="image/*" >
                              </span> 
                              <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Kaldır</a> 
                            </div>
                          </div>
                        </div>
                      </div>


<div class="form-group">
                        <label for="Group User" class="control-label col-lg-2">Seviye</label>
                        <div class="col-lg-10">
                          <select name="id_group" data-placeholder="Pilih Group User ..." class="form-control chzn-select" tabindex="2" >
               <option value=""></option>
               <?php foreach ($db->fetch_custom("select * from sys_group_users ") as $isi) {
               		echo "<option value='$isi->id'>$isi->level</option>";
               } ?>
              </select>
                        </div>
                      </div><!-- /.form-group -->
 <div class="form-group">
                        <label for="aktif" class="control-label col-lg-2">Durumu</label>
                        <div class="col-lg-10">
                          <input name="aktif" class="make-switch" type="checkbox" checked>
                        </div>
                      </div><!-- /.form-group -->

                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary" value="Yeni Kullanıcı Oluştur">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
 <a href="<?=base_index();?>user-management" class="btn btn-success">Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
            