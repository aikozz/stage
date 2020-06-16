<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>Question </title>
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

		<!-- fin du menu nav -->
        
        <section class="our-webcoderskull padding-lg">
        <div class="container">
        <input type="button" id="more_fields" onclick="add_fields();" value="Add More" />
        <input type="button" id="more_fields" onclick="add_fieldss();" value="ajouter sous partie " />
		<input type="button"  href="index.php?controle=professeur&action=creertest" value="enregistrer " />
<div id="room_fileds">
    <form class="content" id="wrapper" method="post"> 
        <p id = "nombre" ></p> </br> <p> question(s) crée(s)</p>
    </form>
</div>

        </div>
        </section>
           


        <script>
		var clicks = 0;
		var idquest = "question" + clicks;
		var idpos="pos" +clicks;
		var radid = "rad" +clicks;
        function add_fields() {
			var quest = document.createElement('span');
			
			quest.innerHTML='<span>Questions: <input id=idquest type="text" ></span>'
			document.getElementById('wrapper').appendChild(quest);
			var pos = document.createElement('span');

			pos.innerHTML = '<span>position: <input id=idpos type="text" ></span>';
			document.getElementById('wrapper').appendChild(pos);
			var rad = document.createElement('select');
			
			rad.innerHTML = ' <select name="typeCompte" id=radid  class="form-control"> <option id="libre" value="libre">Client</option> <option id="coche" value="coche">Livreur</option> </select></br> ';
			document.getElementById('wrapper').appendChild(rad);
			
			clicks += 1;
			document.getElementById("nombre").innerHTML = clicks;
			
		}
function add_fieldss() {
        
        document.getElementById('wrapper').innerHTML += '<span>Titre de la (sous-)partie  <input type="text" ></span>  <span>position: <input type="text" ></span>   </br>';
        clicks += 1;
            document.getElementById("nombre").innerHTML = clicks;
    }
</script>

<form action="../controleur" method="post">


   
</body>
</html>
