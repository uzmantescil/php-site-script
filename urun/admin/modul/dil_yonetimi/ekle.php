
           
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
                     <form id="input" method="post" class="form-horizontal foto_banyak" action="<?=base_admin();?>modul/dil_yonetimi/islemler.php?act=in">
                      <div class="form-group">
                        <label for="Aktif / Pasif" class="control-label col-lg-2">Aktif / Pasif</label>
                        <div class="col-lg-10">
                          <input name="durum" class="make-switch" type="checkbox" checked>
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Dil" class="control-label col-lg-2">Dil</label>
                        <div class="col-lg-10">
                          <input type="text" name="dil" placeholder="Dil" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Dil Adı" class="control-label col-lg-2">Dil Adı</label>
                        <div class="col-lg-10">
                          <input type="text" name="dil_baslik" placeholder="Dil Adı" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa Title" class="control-label col-lg-2">Anasayfa Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="anasayfa_title" placeholder="Anasayfa Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa Desc" class="control-label col-lg-2">Anasayfa Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="anasayfa_desc" placeholder="Anasayfa Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa Keyw" class="control-label col-lg-2">Anasayfa Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="anasayfa_keyw" placeholder="Anasayfa Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Title" class="control-label col-lg-2">Ekibimiz Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="ekibimiz_title" placeholder="Ekibimiz Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Desc" class="control-label col-lg-2">Ekibimiz Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="ekibimiz_desc" placeholder="Ekibimiz Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Keyw" class="control-label col-lg-2">Ekibimiz Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="ekibimiz_keyw" placeholder="Ekibimiz Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS Title" class="control-label col-lg-2">SSS Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="sss_title" placeholder="SSS Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS Desc" class="control-label col-lg-2">SSS Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="sss_desc" placeholder="SSS Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS Keyw" class="control-label col-lg-2">SSS Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="sss_keyw" placeholder="SSS Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler Title" class="control-label col-lg-2">Hizmetler Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="hizmetler_title" placeholder="Hizmetler Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler Desc" class="control-label col-lg-2">Hizmetler Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="hizmetler_desc" placeholder="Hizmetler Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler Keyw" class="control-label col-lg-2">Hizmetler Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="hizmetler_keyw" placeholder="Hizmetler Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri Title" class="control-label col-lg-2">Galeri Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="galeri_title" placeholder="Galeri Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri Desc" class="control-label col-lg-2">Galeri Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="galeri_desc" placeholder="Galeri Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri Keyw" class="control-label col-lg-2">Galeri Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="galeri_keyw" placeholder="Galeri Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Title" class="control-label col-lg-2">Menü Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="menu_title" placeholder="Menü Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Desc" class="control-label col-lg-2">Menü Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="menu_desc" placeholder="Menü Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Keyw" class="control-label col-lg-2">Menü Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="menu_keyw" placeholder="Menü Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Title" class="control-label col-lg-2">Paketler Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="paket_title" placeholder="Paketler Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Desc" class="control-label col-lg-2">Paketler Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="paket_desc" placeholder="Paketler Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Keyw" class="control-label col-lg-2">Paketler Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="paket_keyw" placeholder="Paketler Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog Title" class="control-label col-lg-2">Blog Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="blog_title" placeholder="Blog Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog Desc" class="control-label col-lg-2">Blog Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="blog_desc" placeholder="Blog Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="blog Keyw" class="control-label col-lg-2">blog Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="blog_keyw" placeholder="blog Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Title" class="control-label col-lg-2">İletişim Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim_title" placeholder="İletişim Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Desc" class="control-label col-lg-2">İletişim Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim_desc" placeholder="İletişim Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Keyw" class="control-label col-lg-2">İletişim Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim_keyw" placeholder="İletişim Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Title" class="control-label col-lg-2">Rezervasyon Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="rez_title" placeholder="Rezervasyon Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Desc" class="control-label col-lg-2">Rezervasyon Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="res_desc" placeholder="Rezervasyon Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Keyw" class="control-label col-lg-2">Rezervasyon Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="rez_keyw" placeholder="Rezervasyon Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar Title" class="control-label col-lg-2">Odalar Title</label>
                        <div class="col-lg-10">
                          <input type="text" name="oda_title" placeholder="Odalar Title" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar Desc" class="control-label col-lg-2">Odalar Desc</label>
                        <div class="col-lg-10">
                          <input type="text" name="oda_desc" placeholder="Odalar Desc" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar Keyw" class="control-label col-lg-2">Odalar Keyw</label>
                        <div class="col-lg-10">
                          <input type="text" name="oda_keyw" placeholder="Odalar Keyw" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Anasayfa" class="control-label col-lg-2">Anasayfa</label>
                        <div class="col-lg-10">
                          <input type="text" name="anasayfa" placeholder="Anasayfa" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Kurumsal" class="control-label col-lg-2">Kurumsal</label>
                        <div class="col-lg-10">
                          <input type="text" name="kurumsal" placeholder="Kurumsal" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ürünler" class="control-label col-lg-2">Ürünler</label>
                        <div class="col-lg-10">
                          <input type="text" name="urunler" placeholder="Ürünler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Projeler" class="control-label col-lg-2">Projeler</label>
                        <div class="col-lg-10">
                          <input type="text" name="projeler" placeholder="Projeler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmetler" class="control-label col-lg-2">Hizmetler</label>
                        <div class="col-lg-10">
                          <input type="text" name="hizmetler" placeholder="Hizmetler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Galeri" class="control-label col-lg-2">Galeri</label>
                        <div class="col-lg-10">
                          <input type="text" name="galeri" placeholder="Galeri" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menümüz" class="control-label col-lg-2">Menümüz</label>
                        <div class="col-lg-10">
                          <input type="text" name="menu" placeholder="Menümüz" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler" class="control-label col-lg-2">Paketler</label>
                        <div class="col-lg-10">
                          <input type="text" name="paketler" placeholder="Paketler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog" class="control-label col-lg-2">Blog</label>
                        <div class="col-lg-10">
                          <input type="text" name="blog" placeholder="Blog" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon" class="control-label col-lg-2">Rezervasyon</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon" placeholder="Rezervasyon" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Odalar" class="control-label col-lg-2">Odalar</label>
                        <div class="col-lg-10">
                          <input type="text" name="odalar" placeholder="Odalar" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim" class="control-label col-lg-2">İletişim</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim" placeholder="İletişim" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz" class="control-label col-lg-2">Ekibimiz</label>
                        <div class="col-lg-10">
                          <input type="text" name="ekibimiz" placeholder="Ekibimiz" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="SSS" class="control-label col-lg-2">SSS</label>
                        <div class="col-lg-10">
                          <input type="text" name="sss" placeholder="SSS" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İncele" class="control-label col-lg-2">İncele</label>
                        <div class="col-lg-10">
                          <input type="text" name="incele" placeholder="İncele" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Projeler Başlık" class="control-label col-lg-2">Projeler Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="projeler_baslik" placeholder="Projeler Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Projeler Açıklama" class="control-label col-lg-2">Projeler Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="projeler_aciklama" placeholder="Projeler Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Blog Başlık" class="control-label col-lg-2">Blog Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="blog_baslik" placeholder="Blog Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Duyurular" class="control-label col-lg-2">Duyurular</label>
                        <div class="col-lg-10">
                          <input type="text" name="duyurular" placeholder="Duyurular" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Referanslar Başlık" class="control-label col-lg-2">Referanslar Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="referanslar_baslik" placeholder="Referanslar Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Referanslar Açıklama" class="control-label col-lg-2">Referanslar Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="referanslar_aciklama" placeholder="Referanslar Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Başlık" class="control-label col-lg-2">Ekibimiz Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="ekibimiz_baslik" placeholder="Ekibimiz Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ekibimiz Açıklama" class="control-label col-lg-2">Ekibimiz Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="ekibimiz_aciklama" placeholder="Ekibimiz Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Başlık" class="control-label col-lg-2">Paketler Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="paketler_baslik" placeholder="Paketler Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Paketler Açıklama" class="control-label col-lg-2">Paketler Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="paket_aciklama" placeholder="Paketler Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Bilgi Al" class="control-label col-lg-2">Bilgi Al</label>
                        <div class="col-lg-10">
                          <input type="text" name="bilgi_al" placeholder="Bilgi Al" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Başlık" class="control-label col-lg-2">Menü Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="menu_baslik" placeholder="Menü Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Menü Açıklama" class="control-label col-lg-2">Menü Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="menu_aciklama" placeholder="Menü Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmet Bölgeleri" class="control-label col-lg-2">Hizmet Bölgeleri</label>
                        <div class="col-lg-10">
                          <input type="text" name="bolgeler_baslik" placeholder="Hizmet Bölgeleri" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Hizmet Bölgeleri Açıklama" class="control-label col-lg-2">Hizmet Bölgeleri Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="bolgeler_aciklama" placeholder="Hizmet Bölgeleri Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer Başlık" class="control-label col-lg-2">Footer Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="footer_baslik" placeholder="Footer Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer Açıklama" class="control-label col-lg-2">Footer Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="footer_aciklama" placeholder="Footer Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Linkler" class="control-label col-lg-2">Linkler</label>
                        <div class="col-lg-10">
                          <input type="text" name="footer_linkler" placeholder="Linkler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer Blog" class="control-label col-lg-2">Footer Blog</label>
                        <div class="col-lg-10">
                          <input type="text" name="footer_blog" placeholder="Footer Blog" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Footer İletişim" class="control-label col-lg-2">Footer İletişim</label>
                        <div class="col-lg-10">
                          <input type="text" name="footer_iletisim" placeholder="Footer İletişim" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ürün Kodu" class="control-label col-lg-2">Ürün Kodu</label>
                        <div class="col-lg-10">
                          <input type="text" name="urun_kodu" placeholder="Ürün Kodu" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Fiyat" class="control-label col-lg-2">Fiyat</label>
                        <div class="col-lg-10">
                          <input type="text" name="fiyat" placeholder="Fiyat" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Ürün Bilgisi" class="control-label col-lg-2">Ürün Bilgisi</label>
                        <div class="col-lg-10">
                          <input type="text" name="urun_bilgisi" placeholder="Ürün Bilgisi" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Benzer Ürünler" class="control-label col-lg-2">Benzer Ürünler</label>
                        <div class="col-lg-10">
                          <input type="text" name="benzer_urunler" placeholder="Benzer Ürünler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Proje Bilgileri" class="control-label col-lg-2">Proje Bilgileri</label>
                        <div class="col-lg-10">
                          <input type="text" name="proje_bilgileri" placeholder="Proje Bilgileri" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Proje Sahibi" class="control-label col-lg-2">Proje Sahibi</label>
                        <div class="col-lg-10">
                          <input type="text" name="proje_sahibi" placeholder="Proje Sahibi" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Başlangıç Tarihi" class="control-label col-lg-2">Başlangıç Tarihi</label>
                        <div class="col-lg-10">
                          <input type="text" name="baslangic" placeholder="Başlangıç Tarihi" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Bitiş Tarihi" class="control-label col-lg-2">Bitiş Tarihi</label>
                        <div class="col-lg-10">
                          <input type="text" name="bitis" placeholder="Bitiş Tarihi" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Diğer Projeler" class="control-label col-lg-2">Diğer Projeler</label>
                        <div class="col-lg-10">
                          <input type="text" name="diger_projeler" placeholder="Diğer Projeler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Başlık" class="control-label col-lg-2">Rezervasyon Başlık</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_baslik" placeholder="Rezervasyon Başlık" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Açıklama" class="control-label col-lg-2">Rezervasyon Açıklama</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_aciklama" placeholder="Rezervasyon Açıklama" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon İsim" class="control-label col-lg-2">Rezervasyon İsim</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_isim_soyisim" placeholder="Rezervasyon İsim" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Telefon" class="control-label col-lg-2">Rezervasyon Telefon</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_telefon" placeholder="Rezervasyon Telefon" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Kişi Sayısı" class="control-label col-lg-2">Kişi Sayısı</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_kisi" placeholder="Kişi Sayısı" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Mesaj" class="control-label col-lg-2">Rezervasyon Mesaj</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_mesaj" placeholder="Rezervasyon Mesaj" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Rezervasyon Buton" class="control-label col-lg-2">Rezervasyon Buton</label>
                        <div class="col-lg-10">
                          <input type="text" name="rezervasyon_buton" placeholder="Rezervasyon Buton" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Özellikler" class="control-label col-lg-2">Özellikler</label>
                        <div class="col-lg-10">
                          <input type="text" name="ozellikler" placeholder="Özellikler" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Formu" class="control-label col-lg-2">İletişim Formu</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim_formu" placeholder="İletişim Formu" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Bilgileri" class="control-label col-lg-2">İletişim Bilgileri</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim_bilgileri" placeholder="İletişim Bilgileri" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Konum" class="control-label col-lg-2">Konum</label>
                        <div class="col-lg-10">
                          <input type="text" name="konum" placeholder="Konum" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İsim ve Soyisim" class="control-label col-lg-2">İsim ve Soyisim</label>
                        <div class="col-lg-10">
                          <input type="text" name="isim_soyisim" placeholder="İsim ve Soyisim" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Telefon" class="control-label col-lg-2">Telefon</label>
                        <div class="col-lg-10">
                          <input type="text" name="telefon" placeholder="Telefon" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Email" class="control-label col-lg-2">Email</label>
                        <div class="col-lg-10">
                          <input type="text" name="email" placeholder="Email" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Mesaj" class="control-label col-lg-2">Mesaj</label>
                        <div class="col-lg-10">
                          <input type="text" name="mesaj" placeholder="Mesaj" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Gönder" class="control-label col-lg-2">Gönder</label>
                        <div class="col-lg-10">
                          <input type="text" name="gonder" placeholder="Gönder" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletişim Notu" class="control-label col-lg-2">İletişim Notu</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletisim_not" placeholder="İletişim Notu" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="İletildi Mesajı" class="control-label col-lg-2">İletildi Mesajı</label>
                        <div class="col-lg-10">
                          <input type="text" name="iletildi" placeholder="İletildi Mesajı" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="Proje Linki" class="control-label col-lg-2">Proje Linki</label>
                        <div class="col-lg-10">
                          <input type="text" name="target" placeholder="Proje Linki" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                      
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="Kaydet">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
 <a href="<?=base_index();?>dil-yonetimi" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Önceki Sayfa</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
            