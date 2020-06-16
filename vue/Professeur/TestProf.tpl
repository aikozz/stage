<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>accueil </title>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8"/> 
	<!--CSS-->
	<link rel="stylesheet" href="./vue/Professeur/styleCSS/menuProfesseur.css">
	<link rel="stylesheet" href="./vue/Professeur/styleCSS/ListeQuestion.css">
	<!--JavaScript-->
	<script src="./vue/Professeur/Js/menuPfrofesseur.js"></script>
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
		<?php  require ("./vue/Professeur/menuProfesseur.tpl"); ?>
	</nav> 
	<!-- fin du menu nav -->

	<div class="container" id="carte">
		<div class="row align-items-center" >
            <?php
                if($test != false){
                    foreach($test as $th){                  	
                        setlocale(LC_TIME, "fr_FR", "French");									
                        echo ' 
                        <div class="col-sm" style="margin-bottom:5%;">
                            <div class="card" style="width: 20rem;">
								<img src="https://res.cloudinary.com/mhmd/image/upload/v1556074849/avatar-1_tcnd60.png" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">'.utf8_encode ($th['titre_theme']).'</h5>
									<p class="card-text">'.utf8_encode ($th['num_grpe']).'</p>
									<p class="card-text">Date test : '.utf8_encode (strftime("%d %B %G", strtotime($th['date_test']))).'</p>

									<form method="POST" action="index.php?controle=Professeur&action=getquestion" >															
										<input name="id" type="hidden" value="'.$th['id_theme'].'">
										<input class="btn btn-outline-secondary btn-lg btn-block" type="submit" name="Afficher" value="Afficher les questions" >											
									</form>

									<form method="POST" action="index.php?controle=Professeur&action=setEtatTest" >				
										<input name="idq" type="hidden" value="'.$th['id_test'].'">
										<fieldset class="filet" style="margin-top: 3%;">
											<input class="btn btn-outline-success btn-lg btn-block" type= "submit"  name="mode" value="Lancer le test" />
											<input class="btn btn-outline-danger btn-lg btn-block" type= "submit"  name="mode" value="Arrêter le test"/> 
										</fieldset>
                                    </form>
									';
									if($th['bActif']==1){
										echo '
											<p class="card-text">Etat : en cours <i class="fa fa-check" style="color:green;margin-top: 3%;"></i></p>
										';
									}else if($th['bActif']==0){
										echo '
										<p class="card-text">Etat : Fin <i class="fa fa-times" style="color:red;margin-top: 3%;"></i></p>
										';
									}
									echo'	
								</div>
                            </div>
                        </div>
						';
                    }			
                }else{
                    echo '
                        <h1> Pas de Test pour ce prof</h1>
                    ';
                }
						
								
			?>
		</div>
	</div>
</body>
</html>
