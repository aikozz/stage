<?php
$nom = $_SESSION['profil']['nom'];
$prenom = $_SESSION['profil']['prenom'];

function accueil() {
	$nom = $_SESSION['profil']['nom'];
	$prenom = $_SESSION['profil']['prenom'];
	require ("./vue/Etudiant/accueilEtudiant.tpl");
}

function bye() {
	session_destroy();
	$nexturl="index.php?controle=utilisateur&action=ident";
	header("Location:" . $nexturl);
}

function consulterTest(){
	require("./modele/EtudiantBD.php");
	global $nom, $prenom;
	$profil=$_SESSION['profil'];
	$grpe_etu=$profil['num_grpe'];
	$test=get_test_BD($grpe_etu);
	require("./vue/Etudiant/ConsulterTest.tpl");	
}

function getProfil(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	$idetu = $_SESSION['profil']['id_etu'];
	$profil = getProfil_BD($idetu);
	require("./vue/Etudiant/ProfilEtu.tpl");
}

function setprofiletu(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	$idetu = $_SESSION['profil']['id_etu'];
	$profil = getProfil_BD($idetu);
	require("./vue/Etudiant/SetProfilEtu.tpl");
}


function setProfil(){
	require('./modele/EtudiantBD.php');

	$idetu = $_POST['idq'];
	$n = isset($_POST['n'])?($_POST['n']):'';
	$p = isset($_POST['p'])?($_POST['p']):'';
	$em = isset($_POST['em'])?($_POST['em']):'';
	$lp = isset($_POST['lp'])?($_POST['lp']):'';
	$pass = isset($_POST['pass'])?($_POST['pass']):'';
	if(!(empty($idetu) && Empty($n) && Empty($p) && Empty($em) && Empty($lp) && Empty($pass))){
		setProfil_BD($n,$p,$em,$lp,$pass,$etu);
	}else{
		echo 'Vide ou pas valide';
	}
	
	
	$nexturl = "index.php?controle=Etudiant&action=getProfil";
	header("Location:" . $nexturl);  
}

function ouvrirTest(){
	$nom = $_SESSION['profil']['nom'];
	$prenom = $_SESSION['profil']['prenom'];
	require("./vue/Etudiant/ouvrirTest.tpl");	
}

function getQuestion(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	if(isset($_POST['idq']) ){
		$idtest = $_POST['idq'];
		$question = getQuestionBD($idtest); 
		//$idquestion = $_POST['idquestion'];
		
	}else{
		$idtest="";
	}   
	require("./vue/Etudiant/Question.tpl");
}

function faireQuestion(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	if(isset($_POST['idquestion'])){
		$idquestion = $_POST['idquestion'];
		$question = getQuestionQuestBD($idquestion);
		$reponse = getReponseBD($idquestion);
	}else{
		$idquestion="";
	}    
	require("./vue/Etudiant/TraiterQuestion.tpl");
}

function getBonneResponse(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	if(isset($_POST['mode'])){
		$mode = $_POST['mode'];
		if($mode==1){
			//$etat = "Bonne réponse";
			$nexturl = "index.php?controle=Etudiant&action=consulterTest";
			header("Location:" . $nexturl);
		}else{
			//$etat = "Mauvaise réponse";
			$nexturl = "index.php?controle=Etudiant&action=consulterTest";
			header("Location:" . $nexturl);
		}
	}else{
		echo'Erreur';
	}   
	
}

function getServices(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	$annuaire = get_services_BD();
	require("./vue/Etudiant/ouvrirAnnuaire.tpl");	
}

function getBilan(){
	global $nom, $prenom;
	require('./modele/EtudiantBD.php');
	$idetu = $_SESSION['profil']['id_etu'];
	$bilan = getBilanBD($idetu);
	require("./vue/Etudiant/Bilan.tpl");	
}

?>