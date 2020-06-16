<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>accueil </title>
</head>

<body>

	<nav> 	
		<?php  require ("./vue/menu.tpl"); ?>
	</nav> <!-- fin du menu nav -->

	<div id ="main"> 
		<h3> 	Bienvenue
				<?php 
					printf ('M. %s', $nom);
					
					
					//debogage
					echo ("</br></br> Profil de $nom : ");
					echo("<pre>");
					print_r ($_SESSION['profil']);
					echo("</pre>");
					
					
				?>
		</h3>
	</div>


</body></html>
