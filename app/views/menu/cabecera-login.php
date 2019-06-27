

<nav class="navbar navbar-expand-lg  navbar-dark" style="background-color:#0C082B;" >
    <a class="navbar-brand" href="#">Los Lobos</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="#">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Servicios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contactos</a>
          </li>
          <?php         
          if(isset($_SESSION['rol']))
          if($_SESSION["rol"] == 1){?>
          <li class="nav-item">
            <a class="nav-link " href="./form-crud.php">Registrar Usuarios</a>
          </li>
          <?php }   ?>
          <?php         
          if(isset($_SESSION['rol']))
          if($_SESSION["rol"] == 1){?>
          <li class="nav-item">
            <a class="nav-link " href="./table-search.php">Datos del Alumno</a>
          </li>
          <?php }   ?>

          <?php         
          if(isset($_SESSION['rol'])){
          ?>
          <li class="nav-item">
            <a class="nav-link " href="./destruir.php">Cerra Session</a>
          </li>
          <?php
          }
          ?>
        </ul>     
        <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Buscar</button>
        </form>    
        </div>
      </nav>
