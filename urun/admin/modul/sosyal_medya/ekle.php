
           
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     Sosyal Medya
                    </h1>
                           <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>sosyal-medya">Sosyal Medya</a></li>
                        <li class="active">Sosyal Medya</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12"> 
        <div class="box box-solid box-primary">
                                 <div class="box-header">
                                    <h3 class="box-title">Sosyal Medya</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="input" method="post" class="form-horizontal foto_banyak" action="<?=base_admin();?>modul/sosyal_medya/islemler.php?act=in">
                      <div class="form-group">
                        <label for="Başlık" class="control-label col-lg-2">Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="baslik" placeholder="Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İkon" class="control-label col-lg-2">İkon</label>
                        <div class="col-lg-10">
                          <input type="text" name="ikon" placeholder="İkon" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Link" class="control-label col-lg-2">Link</label>
                        <div class="col-lg-10">
                          <input type="text" name="link" placeholder="Link" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                      
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
 <a href="<?=base_index();?>sosyal-medya" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
            