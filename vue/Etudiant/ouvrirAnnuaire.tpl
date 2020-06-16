</html>
<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>Services</title>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8"/> 
	<!--CSS-->
	<link rel="stylesheet" href="./vue/Etudiant/styleCSS/Annuaire.css">
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
		<?php  require("./vue/Etudiant/menuEtudiant.tpl"); ?>
	</nav> 
	
	<div class="container" >
        <div class="row heading heading-icon">
            <h2>Contacter les professeurs</h2>
        </div>
		<br>
		<div class="row align-items-justify" >
            <?php
                if($annuaire != false){
                    foreach($annuaire as $an){ 
						$destinataire = $an['email'];
                        setlocale(LC_TIME, "fr_FR", "French");
                        echo ' 
                        <div class="col-sm" style="margin-bottom:5%;">
                            <div class="card" style="width: 20rem;">
                                    <div class="card-body">
									<div class="identite">
                                        <h5 class="nom">'.utf8_encode ($an['nom']).' '.utf8_encode ($an['prenom']).'</h5>
										
										</div><hr style="height: 2.5px; background-color: #DDDDDD; width: 100%; border: none;>
										<h5 class="mail">'.utf8_encode ($an['email']).'</h5>
										
										<br>
										<a id="text-bouton" href="mailto:'.utf8_encode ($an['email']).'"> 
										 <input id="contact" type="button" value="Contacter"> </a>
                                        ';
                                        echo'
                                    </div>
                            </div>
                        </div>
                        ';
                    }			
                }else{
                    echo '
                        <h1> Pas de professeurs</h1>
                    ';
                }							
			?>
		</div>
	</div>
</body>
	