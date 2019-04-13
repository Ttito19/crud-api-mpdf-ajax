<?php require  '../controllers/crudControlador.php'; //Ruta del controlador ?>
<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->

<!DOCTYPE html>
<html>
<head>
    <title>Listar en Pdf </title>
    <link rel="stylesheet" type="text/css" href="../style/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../style/css/bootstrap.css">

</head>
<body>
<div class="container">
<div class="content-justify-center">
<div class="col-sm-4">
<form method="post" class="form-group">
<div class="form-group">
<label>Buscar por Nombre:</label> 
<input  type="text" class="form-control" name="txt-buscar"/>
</div>
<input  type="submit" class="btn btn-primary" id="btn-buscar" />

</form>



	<table class="table-bordered" >
		<thead>
			<tr class="table-primary">
				<td width="20" >Codigo</td>
				<td width="20">Alumno</td>
				<td width="20">Apellido</td>
				<td width="20">Direcion</td>
				<td width="20">Telefono</td>
				<td width="20">Editar</td>
				<td width="20">Eliminar</td>
			</tr>	
		</thead>
		<tbody>
			<tr>
			<!-- la variable $res1 esta definida en el controlador-->
			<!-- foreach recorre arrays(si pudes mirate un video corto de como funciona el foreach; es muy pero muy útil)-->
				<?php foreach ($res1 as $value) { ?>
				<tr>
					<td width="10"><?php echo $value['id']?></td>
					<td width="10"><?php echo $value['nombres']?></td>
					<td width="10"><?php echo $value['apellidos']?></td>
					<td width="10"><?php echo $value['direccion']?></td>
					<td width="10"><?php echo $value['telefono']?></td>
					<td width="10"></td>
					<td width="10"></td>
				</tr>
				<?php } ?>
				
			</tr>
			
		</tbody>
	</table>
<!-- B B C I T A-->
	    </div>
	</div>
</div>

</body>
<script src="../style/js/bootstrap.min.js"></script>
<script src="../style/js/bootstrap.js"></script>
</html>