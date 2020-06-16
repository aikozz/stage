<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>Modifier profil </title>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8"/> 
	<!--CSS-->
	<link rel="stylesheet" href="./vue/Etudiant/styleCSS/menuEtudiant.css">
	<!--JavaScript-->
	<script src="./vue/Etudiant/Js/menuEtudiant.js"></script>
	<!--Font awesome-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--Bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>

	<nav> 	
		<?php  require ("./vue/Etudiant/menuEtudiant.tpl"); ?>
	</nav> 
	<!-- fin du menu nav -->

	<div class="container" >
        <div class="row ">
            <h2>Modifier mon profil</h2>
        </div>
		<div class="row align-items-center" >
            <form method="POST" action="index.php?controle=Etudiant&action=setProfil" class="needs-validation" novalidate>
                <div class="form-row">
                <input name="idq" type="Hidden" value="<?php echo utf8_encode ($idetu); ?>"> 
                  <div class="form-group col-md-6">
                    <label for="validationCustom01">Nom</label>
                    <input name="n" type="nom" class="form-control" id="validationCustom01" placeholder="" value="<?php foreach($profil as $th){ echo utf8_encode($th['nom']); } ?>" required>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="inputEmail4">Prénom</label>
                    <input name="p" type="Prenom" class="form-control" id="validationCustom01" placeholder="" value="<?php foreach($profil as $th){ echo utf8_encode($th['prenom']) ; } ?>" required>
                  </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input name="em" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="<?php foreach($profil as $th){ echo utf8_encode($th['email']) ; } ?>" required>
                </div>
                <div class="form-group">
                  <label for="inputAddress2">Login</label>
                  <input name="lp" type="text" class="form-control" id="validationCustom01" placeholder="" value="<?php foreach($profil as $th){ echo utf8_encode($th['login_etu']) ; } ?>" required>
                </div>
                <div class="form-group">
                  <label for="inputAddress">Mot de passe</label>
                  <input name="pass" type="password" class="form-control" id="validationCustom01" placeholder="" value="<?php foreach($profil as $th){ echo utf8_encode($th['pass_etu']) ; } ?>" required>
                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block">Enregistrer</button>
            </form>
		</div>
    </div>

    <script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

</body>
</html>
