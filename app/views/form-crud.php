<!DOCTYPE html>
<html lang="es">
  <head>
    <?php session_start();?>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="descripcion" content="">
    <meta name="autor" content="">
    <title>Pagina sin nombre</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>

 <body>
<?php include 'header/cabecera.php'  ?>
<div class="container" >
  <div class="content-justify-center">
    <div class="col-sm-4 offset-sm-4"  >
    <form method="post" autocomplete="off" class="form-group" action="../controllers/crud-controller.php" >
    <h1>Crud con Ajax</h1>
    <div class="form-group">
    <label>Dni:</label>
    <input type="text"  name="txtdni" id="dni" class="form-control"/> 
    </div>
    <div class="form-group">
    <label>Apellidos:</label>
    <input type="text"  name="txtape" id="apellido" class="form-control"/> 
    </div>
    <div class="form-group">
    <label>Nombres:</label>
    <input type="text"  name="txtnom" id="nombre" class="form-control" /> 
    </div>
    <div class="form-group"   >
    <label>Celular:</label>
    <input type="tel"  name="txtcel" id="celular" class="form-control"/> 
    </div> 
    <div class="form-group">
    <label>Dirección:</label>
    <input type="text"  name="txtdir" id="direccion" class="form-control"/> 
    </div>
    <div class="form-group">
    <label>Departamento:</label>
    <select  name='txtdepar' id="departamento" class="form-control">
      <option>Seleccion Departamento</option>
      <option value="1">Lima</option>
      <option value="2">Cuzco</option>
      <option value="3">Puno</option>
      <option value="4">Arequipa</option>
    </select>
    </div>
    <div class="form-group">
    <label>Provincia:</label>
    <select  name='txtprov' id="provincia" class="form-control" >
      <option>Selecciones Provincia</option>
      <option value="5" >Lima</option>
      <option value="6" >Urubamba</option>
      <option value="7" >Huancané</option>
      <option value="8" >Islay</option>
    </select>
    </div>
    <div class="form-group">
    <label>Distrito:</label>
    <select  name='txtdis' id="distrito" class="form-control" >
      <option>Seleccione Distrito</option>
      <option value="9">S.J.L</option>
      <option value="10">La Molina</option>
      <option value="11">Miraflores</option>
      <option value="12">Surco</option>
    </select>
    </div>
    <div class="form-group">
    <label>Sexo:</label>
    <input type="text"  name="txtsex" id="sexo" class="form-control"/> 
    </div>
    
    
    <input type="submit" id="btn-enviar" class="btn btn-success" value="Registrar"  />
    </form>
    </div>
  </div>
<div>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
