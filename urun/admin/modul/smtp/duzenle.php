

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
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Smtp</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/smtp/islemler.php?act=up">
                      <div class="form-group">
                        <label for="Sunucu" class="control-label col-lg-2">Sunucu</label>
                        <div class="col-lg-10">
                          <input type="text" name="sunucu" value="<?=$data_edit->sunucu;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Port" class="control-label col-lg-2">Port</label>
                        <div class="col-lg-10">
                          <input type="text" name="smtp_port" value="<?=$data_edit->smtp_port;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Kullanıcı adı" class="control-label col-lg-2">Kullanıcı adı</label>
                        <div class="col-lg-10">
                          <input type="text" name="username" value="<?=$data_edit->username;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Parola" class="control-label col-lg-2">Parola</label>
                        <div class="col-lg-10">
                          <input type="text" name="sifre" value="<?=$data_edit->sifre;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Gelen Mail" class="control-label col-lg-2">Gelen Mail</label>
                        <div class="col-lg-10">
                          <input type="text" name="mail" value="<?=$data_edit->mail;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Mail Başlığı" class="control-label col-lg-2">Mail Başlığı</label>
                        <div class="col-lg-10">
                          <input type="text" name="baslik" value="<?=$data_edit->baslik;?>" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                      <input type="hidden" name="id" value="<?=$data_edit->id;?>">
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
                    <a href="<?=base_index();?>smtp" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
 