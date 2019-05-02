

<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->

<?php include 'header/header.php';  ?>

<?php include 'menu/cabecera-login.php'  ?>
<div class="container"> 
<div class="form-group" style="margin-top:5px;" >
<a href="form-crud.php" class="btn btn-secondary mb-2" >Registrar Datos </a>
<a href="table-buscar.php" class="btn btn-primary mb-2" >Buscar</a>
</div>





<?php require  '../controllers/listar-controller.php'; //Ruta del controlador ?>


	<table class="table table-bordered " >
		<thead>
			<tr class="table-primary">
				<td style="color:green">Codigo</td>
				<td style="color:green">Dni</td>
				<td style="color:green">Apellido</td>
				<td style="color:green">Nombre</td>
				<td style="color:green">Telefono</td>
				<td style="color:green">Direccion</td>
				<td style="color:green">Departamento</td>
				<td style="color:green">Provicia</td>
				<td style="color:green">Distrito</td>
				<td style="color:green">Sexo</td>
				<td style="color:green">Editar</td>
				<td style="color:green">Eliminar</td>
			</tr>	
		</thead>
		<tbody>
			<tr>
			<!-- la variable $res1 esta definida en el controlador-->
			<!-- foreach recorre arrays(si pudes mirate un video corto de como funciona el foreach; es muy pero muy útil)-->
			    
				<?php foreach ($res1 as $value) {  ?>
			
				<tr id="tr-<?php echo $value['id']?>">
					<td width="10"><?php echo $value['id']?></td>
					<td width="10"><?php echo $value['dni']?></td>
					<td width="10"><?php echo $value['apellido']?></td>
					<td width="10"><?php echo $value['nombre']?></td>
					<td width="10"><?php echo $value['telefono']?></td>
					<td width="10"><?php echo $value['Direccion']?></td>
					<td width="10"><?php echo $value['idDepa']?></td>
					<td width="10"><?php echo $value['idProv']?></td>
					<td width="10"><?php echo $value['idDist']?></td>
					<td width="10"><?php echo $value['Sexo']?></td>
				<!--	<td width="10"><a  class="btn btn-success" id="btn-editar"  href="../controllers/edit-controller.php?id=<?php ?> ">Editar</a></td>			

					<td width="10"><a  class="btn btn-danger"  id="btn-eliminar"   href="../controllers/eliminar-controller.php?id=<?php ?>">Eliminar</a></td>		-->	
					<td width="10"><a  class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#exampleModalLong"  data-editar="<?php echo $value["id"]?>">Editar</a></td>			
					<td width="10"><button class="btn btn-danger"  id="btn-eliminar" data-eliminar="<?php echo $value["id"]?>" >Eliminar</button></td>			
				</tr>
			

				<?php } 	 ?>
				
			</tr>
			
		</tbody>
	</table>
</div>

<!-- <button type="button" class="btn btn-primary"  id="desplegar"  data-toggle="modal" data-target="#exampleModalLong">
  Para editar
</button> -->

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Editar Formulario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	  	<div class="container" >
			<div class="content-justify-center">
				<div class="col-sm-8 offset-sm-2"  >
				<form  autocomplete="off" class="form-group" >
				<h3>Editar a <?php echo $value['nombre']?> </h4>
				
				<div class="form-group">
				<label>Dni:</label>
				<input type="text"  name="txtdni" id="dni" value=""  class="form-control"/> 
				</div>
				<div class="form-group">
				<label>Apellidos:</label>
				<input type="text"  name="txtape" id="apellido" value="" class="form-control"/> 
				</div>
				<div class="form-group">
				<label>Nombres:</label>
				<input type="text"  name="txtnom" id="nombre" value="" class="form-control" /> 
				</div>
				<div class="form-group">
				<label>Celular:</label>
				<input type="tel"  name="txtcel" id="celular" value="" class="form-control"/> 
				</div> 
				<div class="form-group">
				<label>Dirección:</label>
				<input type="text"  name="txtdir" id="direccion" value="" class="form-control"/> 
				</div>
				<div class="form-group">
				<label>Departamento:</label>			
				<select  name='txtdepar' id="departamento"  class="form-control">
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
				<option value="1" >Lima</option>
				<option value="2" >Urubamba</option>
				<option value="3">Huancané</option>
				<option value="4">Islay</option>
				</select>
				</div>
				<div class="form-group">
				<label>Distrito:</label>
				<select  name='txtdis' id="distrito"  class="form-control" >
				<option>Seleccione Distrito</option>
				<option value="1">S.J.L</option>
				<option value="2" >La Molina</option>
				<option value="3" >Miraflores</option>
				<option value="4" >Surco</option>
				</select>
				</div>
				<div class="form-group">
				<label>Sexo:</label>
				<input type="text"  name="txtsex" id="sexo" value="" class="form-control"/> 
				</div>
			
				
				
				</form>
				</div>
			</div>
			<div>
			<div class="modal-footer">
	  <input type="submit" id="btn-actualizar" class="btn btn-success" value="Actualizar"   />
				<a  href="../views/table-search.php" class="btn btn-danger">Cancelar</a>
      </div>
		 
      </div>
      
    </div>
  </div>
</div>
<?php  include 'footer/footer.php'  ?>
<script  src="../../public/style/javascript/app.js"></script>
<script  src="../../public/style/javascript/eliminar.js"></script>
