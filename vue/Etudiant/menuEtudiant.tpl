<script src="./vue/Etudiant/Js/menuEtudiant.js"></script>
<!-- Vertical navbar -->
<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
    <div class="media d-flex align-items-center"><img src="https://static.vecteezy.com/system/resources/previews/000/511/962/non_2x/vector-student-glyph-black-icon.jpg" alt="..." width="65" class="mr-3 rounded-circle img-thumbnail shadow-sm">
      <div class="media-body">
        <h4 class="m-0"><?php echo(utf8_encode ("$nom $prenom")) ?></h4>
        <p class="font-weight-light text-muted mb-0">Etudiant</p>
      </div>
    </div>
  </div>

  <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Principal</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
        <a href="index.php?controle=Etudiant&action=accueil" class="nav-link text-dark font-italic bg-light">
            <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
            Accueil
        </a>
    </li>
  
    <li class="nav-item">
        <a href="index.php?controle=Etudiant&action=getServices" class="nav-link text-dark font-italic">
            <i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
            Services
        </a>
    </li>
  </ul>

  <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Personnel</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="index.php?controle=Etudiant&action=getBilan" class="nav-link text-dark font-italic">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                Mes résultats
            </a>
    </li>
    <li class="nav-item">
        <a href="index.php?controle=Etudiant&action=consulterTest" class="nav-link text-dark font-italic">
            <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
            Mes tests
        </a>
    </li>  
	<li class="nav-item">
        <a href="index.php?controle=Etudiant&action=getProfil" class="nav-link text-dark font-italic">
            <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
            Mon profil
        </a>
    </li>
    <li class="nav-item">
        <a href="index.php?controle=Etudiant&action=bye" class="nav-link text-dark font-italic">
            <i class="fa fa-power-off mr-3 text-primary fa-fw"></i>
            Déconnexion
        </a>
    </li>
  </ul>
</div>
<!-- End vertical navbar -->
<!-- Page content holder -->
<div class="page-content p-5" id="content">
<!-- Toggle button -->
<button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold"></small></button>












