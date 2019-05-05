

<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->

<?php include 'header/header.php';  ?>

<?php include 'menu/cabecera-login.php'  ?>

<div class="offset-sm-3" style="margin-top:5px" >


<button type="button" class="btn btn-primary" id="btn-registrar-modal" >
 Registro
</button>

<div class="form-inline">
<h4>Buscar por Nombre:</h4>
<div class="form-group mx-sm-3 mb-2">

<input  type="text" class="form-control" id="nom"  name="txtnom"> 
</div>
<button type="submit" class="btn btn-primary mb-2 " id="btn-buscar" >Buscar</button>
</div>
</div>


<div class="container"> 




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
		<tbody id="list" >
		
			
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
				<h3 id="nom" ></h3>
				
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
