<div id="wrapper">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav" style="margin-left:0;">
            <li class="sidebar-brand"> 
                <a href="#menu-toggle"  id="menu-toggle" style="margin-top:20px;float:right;" > <i class="fa fa-bars " style="font-size:20px !Important;" aria-hidden="true" aria-hidden="true"></i> 
            </li>
            <li>
                <a href="index.php?controle=Professeur&action=accueil"><i class="fa fa-home " aria-hidden="true"> </i> <span style="margin-left:10px;">Accueil</span>  </a>
            </li>
            <li>
                <a href="index.php?controle=Professeur&action=getTestProf"> <i class="fa fa-book " aria-hidden="true"> </i> <span style="margin-left:10px;">Creation test</span> </a>
            </li>
            <li>
                <a href="index.php?controle=Professeur&action=getResEtudiant"> <i class="fa fa-address-card" aria-hidden="true"> </i> <span style="margin-left:10px;"> Résultat</span> </a>
            </li>
            <li>
                <a href="index.php?controle=Professeur&action=getProfil"><i class="fa fa-user " aria-hidden="true"> </i> <span style="margin-left:10px;">Profil </span> </a>
            </li>
            <li>
                <a href="index.php?controle=Professeur&action=bye"> <i class="fa fa-power-off" aria-hidden="true"> </i> <span style="margin-left:10px;"> Déconnexion</span> </a>
            </li>
        </ul>
    </div>
    
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script> 
</div>