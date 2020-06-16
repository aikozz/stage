<?php 
/*controleur c1.php :
  fonctions-action de gestion (c1)
*/

function ident() {
	$nom=  isset($_POST['nom'])?($_POST['nom']):'';
	$num=  isset($_POST['num'])?($_POST['num']):'';
	$mode= isset($_POST['mode'])?($_POST['mode']):'';
	$msg='';
	

	if  (count($_POST)==0)
              require ("./vue/utilisateur/ident.tpl") ;
    else {
	    if  (! verif_ident($nom,$num,$mode,$profil)) {
			$_SESSION['profil']=array();
			$msg ="Votre adresse e-mail ou votre mot de passe n'est pas valide";
	        require ("./vue/utilisateur/ident.tpl") ;
		}
		else if($mode=="etudiant"){ 
			$_SESSION['profil']= $profil;
			$url = "index.php?controle=Etudiant&action=accueil";
			header ("Location:" .$url) ;
			
			//$url = "accueil.php?no=$nom";
			//header ("Location:" .$url) ;	//echo ("ok, bienvenue"); 
		}else if ($mode=="professeur"){
			$_SESSION['profil']= $profil;
			$url = "index.php?controle=Professeur&action=accueil";
			header ("Location:" .$url) ;
		}
    }	
}
function add(){
	$nom=  isset($_POST['nomm'])?($_POST['nomm']):'';
	$num=  isset($_POST['email'])?($_POST['email']):'';
	$mode= isset($_POST['modee'])?($_POST['modee']):''; 
	$msg='';
	$prenom= isset($_POST['prenomm'])?($_POST['prenomm']):'';
	$ident = isset($_POST['userr'])?($_POST['userr']):'';
	$pass= isset($_POST['pass'])?($_POST['pass']):'';
	$rpass= isset($_POST['rpass'])?($_POST['rpass']):'';

	if  (count($_POST)==0)
			  require ("./vue/utilisateur/ident.tpl") ;
	else{ 
		if( strcmp($pass,$rpass) !==0){
			$msg ="les 2 mots de pass ne sont pas identique";
			require ("./vue/utilisateur/ident.tpl") ;
		}
		else{
			
			if(!enregistrer($nom,$prenom,$num,$mode,$ident,$pass)){
				
				$msg = "Le login est déjà utilisé veuillez changer";
				require ("./vue/utilisateur/ident.tpl") ;
			}
			else{
				require ("./vue/utilisateur/ident.tpl") ;
			}
			
		}

	}

}

function enregistrer($nom,$prenom,$email,$sexe,$ident,$pass)
{
	require ('./modele/utilisateurBD.php');
	return enregistrerr($nom,$prenom,$email,$sexe,$ident,$pass);
}
function verif_ident($nom,$num,$mode,&$profil) {
	require ('./modele/utilisateurBD.php');
	return verif_ident_BD($nom,$num,$mode,$profil); //true ou false en base;
}


function accueil() {
	$nom = $_SESSION['profil']['nom'];
	require ("./vue/utilisateur/accueil.tpl");
}

function liste_u() {
		require ('./modele/utilisateurBD.php');
		//.....;
}

?>
