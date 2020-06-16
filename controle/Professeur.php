<?php
$nom = $_SESSION['profil']['nom'];
$prenom = $_SESSION['profil']['prenom'];

function accueil()
{
	global $nom, $prenom;
	require("./vue/Professeur/accueilProfesseur.tpl");
}

function bye()
{
	session_destroy();
	$nexturl = "index.php?controle=utilisateur&action=ident";
	header("Location:" . $nexturl);
}

function getTestProf(){

	require("./vue/professeur/Question.tpl");
}

function getquestion(){
require("./vue/Professeur/Question.tpl");
}

function setA_B_V_Question(){
	global $nom, $prenom;
	require('./modele/ProfesseurBD.php');
	if(isset($_POST['idq']) && isset($_POST['mode'])){
		$idtheme = $_POST['idq'];
		$mode = $_POST['mode'];
		if($mode=="valider"){
			setA_B_V_Question_BD(1,0,0,$idtheme);
		}else if($mode=="bloquer"){
			setA_B_V_Question_BD(0,1,0,$idtheme);
		}else if($mode=="annuler"){
			setA_B_V_Question_BD(0,0,1,$idtheme);
		}
	}else{
		echo'Erreur';
	}   
	$nexturl = "index.php?controle=Professeur&action=getTestProf";
	header("Location:" . $nexturl);   	
}

function getResEtudiant(){
	global $nom, $prenom;
	require('./modele/ProfesseurBD.php');
	$ResEtudiant = getResEtudiant_BD();
	require("./vue/professeur/ResEtudiant.tpl");
}

function setEtatTest(){
	global $nom, $prenom;
	require('./modele/ProfesseurBD.php');
	if(isset($_POST['idq']) && isset($_POST['mode'])){
		$idtest = $_POST['idq'];
		$btnm = $_POST['mode'];
		if($btnm == "Lancer le test"){		
			setEtatTest_BD(1,$idtest);
		}else if($btnm == "Arrêter le test"){
			setEtatTest_BD(0,$idtest);
		}

	}else{
		echo'erreur';
	}
	$nexturl = "index.php?controle=Professeur&action=getTestProf";
	header("Location:" . $nexturl);
}

function getProfil(){
	global $nom, $prenom;
	require('./modele/ProfesseurBD.php');
	$idprof = $_SESSION['profil']['id_prof'];
	$profil = getProfil_BD($idprof);
	require("./vue/professeur/Profil.tpl");
}

function setprofilprof(){
	global $nom, $prenom;
	require('./modele/ProfesseurBD.php');
	$idprof = $_SESSION['profil']['id_prof'];
	$profil = getProfil_BD($idprof);
	require("./vue/professeur/SetProfil.tpl");
}

function setProfil(){
	require('./modele/ProfesseurBD.php');

	$idprofesseur = $_POST['idq'];
	$n = isset($_POST['n'])?($_POST['n']):'';
	$p = isset($_POST['p'])?($_POST['p']):'';
	$em = isset($_POST['em'])?($_POST['em']):'';
	$lp = isset($_POST['lp'])?($_POST['lp']):'';
	$pass = isset($_POST['pass'])?($_POST['pass']):'';
	if(!(empty($idprofesseur) && Empty($n) && Empty($p) && Empty($em) && Empty($lp) && Empty($pass))){
		setProfil_BD($n,$p,$em,$lp,$pass,$idprofesseur);
	}else{
		echo 'Vide ou pas valide';
	}
	
	
	$nexturl = "index.php?controle=Professeur&action=getProfil";
	header("Location:" . $nexturl);  
}

?>