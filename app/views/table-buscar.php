

<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->

<?php include '../controllers/buscar-controller.php'?>
<?php include 'header/header.php';  ?>

<?php include 'menu/cabecera-login.php'  ?>
<div class="container"> 
<div class="col-sm-6 offset-sm-1" >
<form method="post" class="form-inline" autocomplete="off" action="../views/table-buscar.php"style="margin-top:30px;" >
<h4>Buscar por Nombre:</h4>
<div class="form-group mx-sm-3 mb-2">
<input  type="text" class="form-control" name="txtnom"> 
</div>
<button type="submit" class="btn btn-primary mb-2">Buscar</button>

</form>





	<table class="table table-bordered horario-tabla" >
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
				<td width="10"><button  class="btn btn-danger"  id="btn-eliminar" data-eliminar="<?php echo $value["id"]?>" >Eliminar</button></td>			
			</tr>
		

			<?php } 	 ?>
				
			</tr>
			
		</tbody>
	</table>
  </div>
</div>
<?php  include 'footer/footer.php'  ?>
<script  src="../../public/style/javascript/app.js"></script>
<script  src="../../public/style/javascript/eliminar.js"></script>