<?php require  '../controllers/crudControlador.php'; ?>

<!DOCTYPE html>
<html>
<head>
    <title>Listar en Pdf </title>
    <link rel="stylesheet" type="text/css" href="../style/css/bootstrap.min.css">
</head>
<body>
	<table class="table" border="1">
		<thead>
			<tr>
				<td width="20" >Codigo</td>
				<td width="20">Alumno</td>
				<td width="20">Apellido</td>
				<td width="20">Direcion</td>
				<td width="20">Telefono</td>
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
				</tr>
				<?php } ?>
				
			</tr>
			
		</tbody>
	</table>

</body>
<script src="../style/js/bootstrap.min.js"></script>
</html>