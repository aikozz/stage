<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <!--CSS-->
	<link rel="stylesheet" href="./vue/utilisateur/styleCSS/Ident.css"/>
	<!--Bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<!--Font awesome-->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<!--JavaScript-->
	<script src="./vue/utilisateur/Js/Ident.js"></script>
</head>
<body class="login">
	<div class="container">
		<div class="login-container-wrapper clearfix" id="vertical">
			<ul class="switcher clearfix">
				<li class="first logo active" data-tab="login">					
					<a>Se connecter</a>			
				</li>
				<li class="second logo" data-tab="sign_up">
					<a>Inscription</a>	
				</li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="login">
					<form class="form-horizontal login-form" action="index.php?controle=utilisateur&action=ident" method="post">
						<div class="form-group relative">
							<input class="form-control input-lg" id="login_username" placeholder="E-mail Address" type="text" name="nom" value= "<?php echo $nom;?>"> <i class="fa fa-user"></i>
						</div>
						<div class="form-group relative">
							<input class="form-control input-lg" id="login_password" placeholder="Password" type="password" name="num" value= "<?php echo $num;?>"> <i class="fa fa-lock"></i>
						</div>
						<fieldset class="filet">
							<input type= "radio"  name='mode' value="etudiant" checked='checked'/> Etudiant<br/> 
							<input type= "radio"  name='mode' value="professeur"/> Professeur 
						</fieldset>
						<div class="error">
							<?php echo $msg;?>
						</div>
						<hr/>
						<div class="form-group">
							<button class="btn btn-success btn-lg btn-block" type="submit">Login</button>
						</div>
            			<hr/>
						<div class="text-center">
							<label><a href="#">Forgot your password?</a></label>
						</div>
					</form>
				</div>
				<div class="tab-pane" id="sign_up">
					<form class="form-horizontal login-form" action="index.php?controle=utilisateur&action=add" method="post">
						
						<fieldset class="filet">
							<input type= "radio"  name='modee' value="madame" checked='checked'/> Madame   
							<input type= "radio"  name='modee' value="monsieur"/> Monsieur 
							<input type= "radio"  name='modee' value="autre"/> non binaire 
						</fieldset></br>
						</fieldset></br><div class="form-group relative">
							<input class="form-control input-lg" id="email" placeholder="E-mail Address" name="email" required="" type="text">  <i class="fa fa-user"></i>	
						</div>
						<div class="form-group relative">
							<input class="form-control input-lg" id="nom" placeholder="nom" name = "nomm" required="" type="text">  <i class="fa fa-user"></i>	
						</div>
						<div class="form-group relative">
							<input class="form-control input-lg" id="prenom" placeholder="prenom" name="prenomm" required="" type="text">  <i class="fa fa-user"></i>	
						</div>
						<div class="form-group relative">
							<input class="form-control input-lg" id="login_username" placeholder="login" name="userr" required="" type="text">  <i class="fa fa-user"></i>	
						</div>
						<div class="form-group relative">
							<input class="form-control input-lg" id="login_password" placeholder="Password" name = "pass" required="" type="password"> <i class="fa fa-lock"></i>
						</div>
						<div class="form-group relative">
							<input class="form-control input-lg" id="login_password" placeholder="Repeat Password" name = "rpass" required="" type="password"> <i class="fa fa-lock"></i>
						</div>
						<div class="form-group">
							<button class="btn btn-success btn-lg btn-block" type="submit">Sign Up</button>
						</div>
					
						<hr>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>