<div class="container">
	<div class="jumbotron" style="background-color:#fff; margin-top:50px;">
        <h2>Merhaba <?=ucwords($db->fetch_single_row('sys_users','id',$_SESSION['id_user'])->first_name)?></h2>
        <p>Kontrol panelinize <b>hoşgeldiniz!</b>. Yapmak istediğiniz değişiklikler için sol menüden seçim yapabilirsiniz. Aşağıdaki butondan profiline girebilir yada sistemden güvenle çıkış yapabilirsin. Günün 24 saati destek sistemimizden talep açarak destek isteyebilirsiniz. </p>
        <p>
          <a class="btn btn-lg btn-success" href="<?=base_index();?>profil" role="button">Profilim</a> <a class="btn btn-lg btn-danger" href="<?=base_admin();?>logout.php" role="button">Çıkış Yap!</a>
        </p>
      </div>
</div>