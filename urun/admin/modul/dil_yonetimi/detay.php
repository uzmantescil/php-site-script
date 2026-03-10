

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     Dil Yonetimi
                    </h1>
                   <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
                        <li><a href="<?=base_index();?>dil-yonetimi">Dil Yonetimi</a></li>
                        <li class="active">Dil Yonetimi</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Dil Yonetimi</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                   <form class="form-horizontal">
                      <div class="form-group">
                        <label for="Aktif / Pasif" class="control-label col-lg-2">Aktif / Pasif</label>
                        <div class="col-lg-10">
                          <?php if ($data_edit->durum=="1") {
      ?>
      <input name="durum" class="make-switch" disabled type="checkbox" checked>
      <?php
    } else {
      ?>
      <input name="durum" class="make-switch" disabled type="checkbox">
      <?php
    }?>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Dil" class="control-label col-lg-2">Dil</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->dil;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Dil Adı" class="control-label col-lg-2">Dil Adı</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->dil_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa Title" class="control-label col-lg-2">Anasayfa Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->anasayfa_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa Desc" class="control-label col-lg-2">Anasayfa Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->anasayfa_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa Keyw" class="control-label col-lg-2">Anasayfa Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->anasayfa_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Title" class="control-label col-lg-2">Ekibimiz Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ekibimiz_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Desc" class="control-label col-lg-2">Ekibimiz Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ekibimiz_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Keyw" class="control-label col-lg-2">Ekibimiz Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ekibimiz_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS Title" class="control-label col-lg-2">SSS Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->sss_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS Desc" class="control-label col-lg-2">SSS Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->sss_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS Keyw" class="control-label col-lg-2">SSS Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->sss_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler Title" class="control-label col-lg-2">Hizmetler Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->hizmetler_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler Desc" class="control-label col-lg-2">Hizmetler Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->hizmetler_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler Keyw" class="control-label col-lg-2">Hizmetler Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->hizmetler_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri Title" class="control-label col-lg-2">Galeri Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->galeri_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri Desc" class="control-label col-lg-2">Galeri Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->galeri_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri Keyw" class="control-label col-lg-2">Galeri Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->galeri_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Title" class="control-label col-lg-2">Menü Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->menu_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Desc" class="control-label col-lg-2">Menü Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->menu_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Keyw" class="control-label col-lg-2">Menü Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->menu_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Title" class="control-label col-lg-2">Paketler Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->paket_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Desc" class="control-label col-lg-2">Paketler Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->paket_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Keyw" class="control-label col-lg-2">Paketler Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->paket_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog Title" class="control-label col-lg-2">Blog Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->blog_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog Desc" class="control-label col-lg-2">Blog Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->blog_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="blog Keyw" class="control-label col-lg-2">blog Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->blog_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Title" class="control-label col-lg-2">İletişim Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Desc" class="control-label col-lg-2">İletişim Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Keyw" class="control-label col-lg-2">İletişim Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Title" class="control-label col-lg-2">Rezervasyon Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rez_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Desc" class="control-label col-lg-2">Rezervasyon Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->res_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Keyw" class="control-label col-lg-2">Rezervasyon Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rez_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar Title" class="control-label col-lg-2">Odalar Title</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->oda_title;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar Desc" class="control-label col-lg-2">Odalar Desc</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->oda_desc;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar Keyw" class="control-label col-lg-2">Odalar Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->oda_keyw;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa" class="control-label col-lg-2">Anasayfa</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->anasayfa;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Kurumsal" class="control-label col-lg-2">Kurumsal</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->kurumsal;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ürünler" class="control-label col-lg-2">Ürünler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->urunler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Projeler" class="control-label col-lg-2">Projeler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->projeler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler" class="control-label col-lg-2">Hizmetler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->hizmetler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri" class="control-label col-lg-2">Galeri</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->galeri;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menümüz" class="control-label col-lg-2">Menümüz</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->menu;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler" class="control-label col-lg-2">Paketler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->paketler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog" class="control-label col-lg-2">Blog</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->blog;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon" class="control-label col-lg-2">Rezervasyon</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar" class="control-label col-lg-2">Odalar</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->odalar;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim" class="control-label col-lg-2">İletişim</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz" class="control-label col-lg-2">Ekibimiz</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ekibimiz;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS" class="control-label col-lg-2">SSS</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->sss;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İncele" class="control-label col-lg-2">İncele</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->incele;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Projeler Başlık" class="control-label col-lg-2">Projeler Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->projeler_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Projeler Açıklama" class="control-label col-lg-2">Projeler Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->projeler_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog Başlık" class="control-label col-lg-2">Blog Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->blog_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Duyurular" class="control-label col-lg-2">Duyurular</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->duyurular;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Referanslar Başlık" class="control-label col-lg-2">Referanslar Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->referanslar_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Referanslar Açıklama" class="control-label col-lg-2">Referanslar Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->referanslar_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Başlık" class="control-label col-lg-2">Ekibimiz Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ekibimiz_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Açıklama" class="control-label col-lg-2">Ekibimiz Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ekibimiz_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Başlık" class="control-label col-lg-2">Paketler Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->paketler_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Açıklama" class="control-label col-lg-2">Paketler Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->paket_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Bilgi Al" class="control-label col-lg-2">Bilgi Al</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->bilgi_al;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Başlık" class="control-label col-lg-2">Menü Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->menu_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Açıklama" class="control-label col-lg-2">Menü Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->menu_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmet Bölgeleri" class="control-label col-lg-2">Hizmet Bölgeleri</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->bolgeler_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmet Bölgeleri Açıklama" class="control-label col-lg-2">Hizmet Bölgeleri Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->bolgeler_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer Başlık" class="control-label col-lg-2">Footer Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->footer_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer Açıklama" class="control-label col-lg-2">Footer Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->footer_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Linkler" class="control-label col-lg-2">Linkler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->footer_linkler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer Blog" class="control-label col-lg-2">Footer Blog</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->footer_blog;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer İletişim" class="control-label col-lg-2">Footer İletişim</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->footer_iletisim;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ürün Kodu" class="control-label col-lg-2">Ürün Kodu</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->urun_kodu;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Fiyat" class="control-label col-lg-2">Fiyat</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->fiyat;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ürün Bilgisi" class="control-label col-lg-2">Ürün Bilgisi</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->urun_bilgisi;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Benzer Ürünler" class="control-label col-lg-2">Benzer Ürünler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->benzer_urunler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Proje Bilgileri" class="control-label col-lg-2">Proje Bilgileri</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->proje_bilgileri;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Proje Sahibi" class="control-label col-lg-2">Proje Sahibi</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->proje_sahibi;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Başlangıç Tarihi" class="control-label col-lg-2">Başlangıç Tarihi</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->baslangic;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Bitiş Tarihi" class="control-label col-lg-2">Bitiş Tarihi</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->bitis;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Diğer Projeler" class="control-label col-lg-2">Diğer Projeler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->diger_projeler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Başlık" class="control-label col-lg-2">Rezervasyon Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_baslik;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Açıklama" class="control-label col-lg-2">Rezervasyon Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_aciklama;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon İsim" class="control-label col-lg-2">Rezervasyon İsim</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_isim_soyisim;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Telefon" class="control-label col-lg-2">Rezervasyon Telefon</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_telefon;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Kişi Sayısı" class="control-label col-lg-2">Kişi Sayısı</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_kisi;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Mesaj" class="control-label col-lg-2">Rezervasyon Mesaj</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_mesaj;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Buton" class="control-label col-lg-2">Rezervasyon Buton</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->rezervasyon_buton;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Özellikler" class="control-label col-lg-2">Özellikler</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->ozellikler;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Formu" class="control-label col-lg-2">İletişim Formu</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim_formu;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Bilgileri" class="control-label col-lg-2">İletişim Bilgileri</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim_bilgileri;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Konum" class="control-label col-lg-2">Konum</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->konum;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İsim ve Soyisim" class="control-label col-lg-2">İsim ve Soyisim</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->isim_soyisim;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Telefon" class="control-label col-lg-2">Telefon</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->telefon;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Email</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->email;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Mesaj" class="control-label col-lg-2">Mesaj</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->mesaj;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Gönder" class="control-label col-lg-2">Gönder</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->gonder;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Notu" class="control-label col-lg-2">İletişim Notu</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletisim_not;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletildi Mesajı" class="control-label col-lg-2">İletildi Mesajı</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->iletildi;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Proje Linki" class="control-label col-lg-2">Proje Linki</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->target;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->

                   
                    </form>
                    <a href="<?=base_index();?>dil-yonetimi" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
