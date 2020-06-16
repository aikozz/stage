</html>
<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>Question </title>
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
		<?php  require("./vue/Etudiant/menuEtudiant.tpl"); ?>
	</nav> 
	<!-- fin du menu nav -->

	<div class="container" >
        <div class="row heading heading-icon">
            <h2>Liste question</h2>
        </div>
		<div class="row align-items-center" >
            <?php
                if($question != false){
                    foreach($question as $th){                  	
                        setlocale(LC_TIME, "fr_FR", "French");	
                        echo ' 
                        <div class="col-sm" style="margin-bottom:5%;">
                            <div class="card" style="width: 20rem;">
                                    <div class="card-body">
                                        <h5 class="card-title">Theme : '.utf8_encode ($th['titre_theme']).'</h5>
                                        <p class="card-text">Question : '.utf8_encode ($th['texte']).'</p>
                                        <form method="POST" action="index.php?controle=Etudiant&action=faireQuestion" >	
                                            <input name="idq" type="hidden" value="'.$th['id_test'].'">			
                                            <input name="idquestion" type="hidden" value="'.$th['id_quest'].'">
											<input class="btn btn-outline-success" type="submit" name="Afficher" value="Traiter la question" style="margin-top:3%;">
                                        </form>
                                        ';
                                        //if
                                        echo'
                                    </div>
                            </div>
                        </div>
                        ';
                    }			
                }else{
                    echo '
                        <h1> Pas de question pour ce theme</h1>
                    ';
                }							
			?>
		</div>
	</div>
</body>
</html>
