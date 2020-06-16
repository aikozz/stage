<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>Mon profil</title>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8"/> 
	<!--CSS-->
	<link rel="stylesheet" href="./vue/Etudiant/styleCSS/menuEtudiant.css">
	<link rel="stylesheet" href="./vue/Professeur/styleCSS/Profil.css">
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
	<section class="our-webcoderskull padding-lg">
        <div class="container">
            <div class="row heading heading-icon">
                <h2>Mon profil</h2>
            </div>
            <ul class="row">
                <li class="col col-md col-lg" >
            <?php
                if($profil != false){
                    foreach($profil as $th){                  	
                        setlocale(LC_TIME, "fr_FR", "French");									
                        echo '                                  
                            <div class="cnt-block equal-hight" style="height: 349px;">
                                <figure><img src="https://static.vecteezy.com/system/resources/previews/000/511/962/non_2x/vector-student-glyph-black-icon.jpg" class="img-responsive" alt=""></figure>
                                <h3><a href="#">'.utf8_encode ($th['nom'])." ".utf8_encode ($th['prenom']).'</a></h3>  
                                <p>Email : '.utf8_encode ($th['email']).'</p> 
                                <p>Login : '.utf8_encode ($th['login_etu']).'</p> 
								<p>Groupe : '.utf8_encode ($th['num_grpe']).'</p> 
								 <br>
                                <form method="POST" action="index.php?controle=Etudiant&action=setprofiletu">	
                                    <input name="idq" type="hidden" value="'.$th['id_etu'].'">   
									<input class="btn btn-outline-secondary" type= "submit"  name="mode" value="Modifier profil" /> 	             
                           					
                                </form>
                            </div>          
                        ';
                    }			
                }
                				
            ?>
            </li>
		 </ul>
  </div>
</section>
</body>
</html>
