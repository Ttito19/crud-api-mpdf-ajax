<?php require  '../controllers/crudControlador.php'; ?>

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
	    </div>
	</div>
</div>

</body>
<script src="../style/js/bootstrap.min.js"></script>
<script src="../style/js/bootstrap.js"></script>
</html>