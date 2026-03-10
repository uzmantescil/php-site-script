<?php $data_edit=$db->fetch_single_row('sys_users','id',$_SESSION['id_user']);

?>
 
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                      Profil Detayı
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>profil">Profil</a></li>
                        <li class="active">Profil</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
                        <div class="col-xs-12">
                            <div class="box" style="padding-bottom:30px;padding-left:10px">
                                <div class="box-header">
                                   
                                   
                                </div><!-- /.box-header -->
                                <span class="foto_profil"><img src="../../upload/kullanicilar/<?=$data_edit->foto_user;?>" class="img-thumbnail"></span>
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">

                                        <tbody>
                                        <tr>
                                            <th class="col-md-2">Kullanıcı Adı</th>
                                            <td><?=$data_edit->username;?></td>
                                            </tr>
                                        <tr>
                                            <th>İsim</th>
                                            <td><?=ucwords($data_edit->first_name);?></td>
                                            </tr>
                                        <tr>
                                            <th>Soyisim</th>
                                            <td><?=ucwords($data_edit->last_name);?></td>
                                            </tr>
                                        <tr>
                                            <th>Email</th>
                                            <td><?=ucwords($data_edit->email);?></td>
                                            </tr>
                                    </tbody></table>
                                </div><!-- /.box-body -->
                                <p></p>
                                <a href="<?=base_index();?>profil/duzenle" class="btn btn-primary">Profilimi Düzenle</a> <a href="<?=base_index();?>profil/parola" class="btn btn-primary">Parolamı Değiştir</a>
                            <p></p>
                            </div><!-- /.box -->
                        </div>
                    </div>
                  
                </section><!-- /.content -->
        
 