<?php $data_edit=$db->fetch_single_row('sys_users','id',$_SESSION['id_user']);?>
 <div class="row">
              <div class="col-lg-12">
                <div class="box dark">
                  <header>
                    <div class="icons">
                      <i class="fa fa-edit"></i>
                    </div>
                    <h5>Profilimi Düzenle</h5>

                    <!-- .toolbar -->
                    <div class="toolbar">
                      <nav style="padding: 8px;">
                        <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                          <i class="fa fa-minus"></i>
                        </a> 
                        <a href="javascript:;" class="btn btn-default btn-xs full-box">
                          <i class="fa fa-expand"></i>
                        </a> 
                        <a href="javascript:;" class="btn btn-danger btn-xs close-box">
                          <i class="fa fa-times"></i>
                        </a> 
                      </nav>
                    </div><!-- /.toolbar -->
                  </header>
                  <div class="body">
                    <form id="update" method="post" class="form-horizontal" action="<?=base_url();?>modul/parola/islemler.php?act=up_prof">
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
                        <label for="Username" class="control-label col-lg-2">Kullanıcı Adı</label>
                        <div class="col-lg-10">
                          <input type="text" id="username" readonly="" name="username" value="<?=$data_edit->username;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
                     <div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Email</label>
                        <div class="col-lg-10">
                          <input type="text" id="email" name="email" value="<?=$data_edit->email;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Foto" class="control-label col-lg-2">Foto</label>
                        <div class="col-lg-10">
                          <div class="fileinput fileinput-new" data-provides="fileinput">
                    <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;">
                    <img src="../../upload/user/<?=$data_edit->foto_user?>"></div>
                    <div>
                      <span class="btn btn-default btn-file"><span class="fileinput-new">Resim Seç</span> <span class="fileinput-exists">Değiştir</span> 
                        <input type="file" name="foto_user">
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
                    <a href="<?=base_index();?>edit-profil" class="btn btn-success">Önceki Sayfa</a>
                  </div>
                </div>
              </div>


              <!--END SELECT-->
            </div><!-- /.row -->
