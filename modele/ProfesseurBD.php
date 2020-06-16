<?php

function get_themeQcm_BD(){
    require ("./modele/connect.php"); 
    $sql_qcm = " SELECT q.id_theme, q.titre_theme, q.desc_theme FROM theme q";
    try{
        $cde_qcm = $pdo->prepare($sql_qcm);
        $b_qcm = $cde_qcm->execute();
        $tabIdQcm = array();
        if($b_qcm){
            while($tab = $cde_qcm->fetch()){
                $tabIdQcm[] = $tab;
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabIdQcm;
}


function testProff($id_prof){
    require ("./modele/connect.php"); 
    $sql_test = " SELECT * 
                        FROM professeur p
                        INNER JOIN test t
                        ON p.id_prof = t.id_prof
                        WHERE t.id_prof = :idp
                        ";
    try{
        $cde_test = $pdo->prepare($sql_test);
        $cde_test->bindParam(':idp', $id_prof);
        $b_test = $cde_test->execute();
        $tabtest = array();
        if($b_test){
            $index = 0;
            while($tab = $cde_test->fetch()){
                $tabtest[$index] = $tab;
                $index += 1 ;    
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabtest;
}

function testProf_BD($id_prof){
    require ("./modele/connect.php"); 
    $sql_test = " SELECT * 
                FROM test t 
                INNER JOIN qcm q 
                ON t.id_test = q.id_test 
                INNER JOIN question quest 
                ON q.id_quest = quest.id_quest 
                INNER JOIN theme the 
                ON quest.id_theme = the.id_theme 
                WHERE t.id_prof = :idp
                GROUP BY the.titre_theme
                        ";
    try{
        $cde_test = $pdo->prepare($sql_test);
        $cde_test->bindParam(':idp', $id_prof);
        $b_test = $cde_test->execute();
        $tabtest = array();
        if($b_test){
            $index = 0;
            while($tab = $cde_test->fetch()){
                $tabtest[$index] = $tab;
                $index += 1 ;    
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabtest;
}

function testQuestion_BD($id_theme){
    require ("./modele/connect.php"); 
    $sql_test = " SELECT * 
                FROM test t 
                INNER JOIN qcm q 
                ON t.id_test = q.id_test 
                INNER JOIN question quest 
                ON q.id_quest = quest.id_quest 
                INNER JOIN theme the 
                ON quest.id_theme = the.id_theme 
                WHERE the.id_theme = :idtheme
                        ";
    try{
        $cde_test = $pdo->prepare($sql_test);
        $cde_test->bindParam(':idtheme', $id_theme);
        $b_test = $cde_test->execute();
        $tabtest = array();
        if($b_test){
            $index = 0;
            while($tab = $cde_test->fetch()){
                $tabtest[$index] = $tab;
                $index += 1 ;    
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabtest;
}

function setA_B_V_Question_BD($v,$b,$a,$idqcm){
    require ("./modele/connect.php"); 
    $sql_set = " UPDATE qcm q 
                SET `bAutorise`= :v ,`bBloque`= :b ,`bAnnule`= :a 
                WHERE q.id_qcm = :idqcm
                ";
    try{
        $cde_set = $pdo->prepare($sql_set);
        $cde_set->bindParam(':v', $v);
        $cde_set->bindParam(':b', $b);
        $cde_set->bindParam(':a', $a);
        $cde_set->bindParam(':idqcm', $idqcm);
        $b_set = $cde_set->execute();
        $tabset = array();
        if($b_set){
            $index = 0;
            while($tab = $cde_set->fetch()){
                $tabset[$index] = $tab;
                $index += 1 ;    
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabset;
}

function getResEtudiant_BD(){
    require ("./modele/connect.php"); 
    $sql_ResEtudiant = " SELECT * 
                        FROM bilan b
                        INNER JOIN etudiant e
                        ON b.id_etu = e.id_etu
                        INNER JOIN test t
                        ON b.id_test = t.id_test
                        INNER JOIN qcm q 
                        ON t.id_test = q.id_test 
                        INNER JOIN question quest 
                        ON q.id_quest = quest.id_quest 
                        INNER JOIN theme the 
                        ON quest.id_theme = the.id_theme
                        GROUP BY e.nom
                        ";
    try{
        $cde_ResEtudiant = $pdo->prepare($sql_ResEtudiant);
        $b_ResEtudiant = $cde_ResEtudiant->execute();
        $tabResEtudiant= array();
        if($b_ResEtudiant){
            while($tab = $cde_ResEtudiant->fetch()){
                $tabResEtudiant[] = $tab;
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabResEtudiant;
}
    
function setEtatTest_BD($v,$idtest){
    require ("./modele/connect.php"); 
    $sql_set = " UPDATE test t 
                SET t.bActif = :v
                WHERE t.id_test = :id_test
                ";
    try{
        $cde_set = $pdo->prepare($sql_set);
        $cde_set->bindParam(':v', $v);
        $cde_set->bindParam(':id_test', $idtest);
        $b_set = $cde_set->execute();
        $tabset = array();
        if($b_set){
            $index = 0;
            while($tab = $cde_set->fetch()){
                $tabset[$index] = $tab;
                $index += 1 ;    
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabset;
}

function getProfil_BD($id){
    require ("./modele/connect.php"); 
    $sql_prof = " SELECT * 
                FROM professeur p
                WHERE p.id_prof = :v
                ";
    try{
        $cde_prof  = $pdo->prepare($sql_prof );
        $cde_prof->bindParam(':v', $id);
        $b_prof  = $cde_prof ->execute();
        $tabIdprof = array();
        if($b_prof ){
            while($tab = $cde_prof->fetch()){
                $tabIdprof [] = $tab;
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabIdprof ;
}

function setProfil_BD($n,$p,$em,$lp,$pf,$id){
    require ("./modele/connect.php"); 
    $sql_set = " UPDATE professeur p
                SET `nom`=:n,
                `prenom`=:p,
                `email`= :em,
                `login_prof`=:lp,
                `pass_prof`= :pf
                WHERE p.id_prof = :idp
                ";
    try{
        $cde_set = $pdo->prepare($sql_set);
        $cde_set->bindParam(':n', $n);
        $cde_set->bindParam(':p', $p);
        $cde_set->bindParam(':em', $em);
        $cde_set->bindParam(':lp', $lp);
        $cde_set->bindParam(':pf', $pf);
        $cde_set->bindParam(':idp', $id);
        $b_set = $cde_set->execute();
        $tabset = array();
        if($b_set){
            $index = 0;
            while($tab = $cde_set->fetch()){
                $tabset[$index] = $tab;
                $index += 1 ;    
            }
        }
    }
    catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
    }
    return $tabset;
}



?>