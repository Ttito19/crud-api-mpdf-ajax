
<?php include 'header/header.php'  ?>
<?php include 'menu/cabecera-login.php'  ?>
<div class="container" >
  <div class="content-justify-center">
    <div class="col-sm-4 offset-sm-4"  >
    <form method="post" autocomplete="off" class="form-group" action="../controllers/insert-edit-controller.php" >
    <h1>Editar Datos</h1>
    <input  type="hidden" name="txtid"  value="<?php echo $edit['id']  ?>"  />
    <div class="form-group">
    <label>Dni:</label>
    <input type="text"  name="txtdni" id="dni" value="<?php echo $edit['dni'] ?>"  class="form-control"/> 
    </div>
    <div class="form-group">
    <label>Apellidos:</label>
    <input type="text"  name="txtape" id="apellido" value="<?php echo $edit['apellido'] ?>" class="form-control"/> 
    </div>
    <div class="form-group">
    <label>Nombres:</label>
    <input type="text"  name="txtnom" id="nombre" value="<?php echo $edit['nombre'] ?>" class="form-control" /> 
    </div>
    <div class="form-group"   >
    <label>Celular:</label>
    <input type="tel"  name="txtcel" id="celular" value="<?php echo $edit['telefono'] ?>" class="form-control"/> 
    </div> 
    <div class="form-group">
    <label>Dirección:</label>
    <input type="text"  name="txtdir" id="direccion" value="<?php echo $edit['Direccion'] ?>" class="form-control"/> 
    </div>




    <div class="form-group">
    <label>Departamento:</label>

    
    <select  name='txtdepar' id="departamento"  class="form-control">
      <option>Seleccion Departamento</option>
      <option value="1" <?php echo ($edit["idDepa"]=='1')? "selected":"" ?>>Lima</option>
      <option value="2" <?php echo ($edit["idDepa"]=='2')? "selected":"" ?>>Cuzco</option>
      <option value="3" <?php echo ($edit["idDepa"]=='3')? "selected":"" ?>>Puno</option>
      <option value="4" <?php echo ($edit["idDepa"]=='4')? "selected":"" ?>>Arequipa</option>

    </select>
    </div>

    <div class="form-group">
    <label>Provincia:</label>
    <select  name='txtprov' id="provincia" class="form-control" >
      <option>Selecciones Provincia</option>
      <option value="1" <?php echo ($edit["idProv"]=='1')? "selected":"" ?>  >Lima</option>
      <option value="2" <?php echo ($edit["idProv"]=='2')? "selected":"" ?> >Urubamba</option>
      <option value="3" <?php echo ($edit["idProv"]=='3')? "selected":"" ?>>Huancané</option>
      <option value="4" <?php echo ($edit["idProv"]=='4')? "selected":"" ?>>Islay</option>
    </select>
    </div>
    <div class="form-group">
    <label>Distrito:</label>
    <select  name='txtdis' id="distrito"  class="form-control" >
      <option>Seleccione Distrito</option>
      <option value="1" <?php echo ($edit["idDist"]=='1')? "selected":"" ?>>S.J.L</option>
      <option value="2" <?php echo ($edit["idDist"]=='2')? "selected":"" ?>>La Molina</option>
      <option value="3" <?php echo ($edit["idDist"]=='3')? "selected":"" ?>>Miraflores</option>
      <option value="4" <?php echo ($edit["idDist"]=='4')? "selected":"" ?> >Surco</option>
    </select>
    </div>
    <div class="form-group">
    <label>Sexo:</label>
    <input type="text"  name="txtsex" id="sexo" value="<?php echo $edit['Sexo'] ?>" class="form-control"/> 
    </div>
    
    
    <input type="submit" id="btn-enviar" class="btn btn-success" value="Editar"  />
    <a  href="../views/table-search.php" class="btn btn-danger">Cancelar<a/>
    </form>
    </div>
  </div>
<div>

<?php  include 'footer/footer.php'  ?>