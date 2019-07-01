<?php //require  '../../ajax/listarReport.php'; //Ruta del controlador ?>
<?php require  '../controllers/listar-controller.php'; //Ruta del controlador ?>

<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->

<!DOCTYPE html>
<html>
<head>
    <title>Listar en Pdf </title>
  

	<link rel="stylesheet" type="text/css" href="../../public/style/css/estilos/reporte.css">



</head>
<body>	
<table class='table-header' >
                        <tr>
                            <td rowspan="3" style='width:45px;'>
                                <img src="../../public/img/lob.jpg" height='100px'>
                            </td>
                            <td>
                              Listado de Reportes
                            </td>
                            <td class="right">
                                <?php echo "FECHA: ".date("d/m/Y") ?>
                            </td>
                        </tr>
                        <tr>
                            <td>El Lobo</td>
                            <td class="right">
                                <?php echo "HORA: ".date("h:m:s A")?>
                            </td>
                        </tr>
                        <tr>
                            <td>:)</td>
                            <td></td>
                        </tr>
                    </table>
                    <h1 align="center">
                       <?php // $period=substr($periodo,0,4)."-".substr($periodo,-1)?>
                        <?php echo "LISTA DE ALUMNOS "?>
                    </h1>   

			<style>
                    .tabla-boleta thead tr th{
                        font-size:12px;
                        padding:7px;
                    }
                    .tabla-boleta tbody tr td{
                        font-size:12px;
                        padding:3px;
                    }
                    .tabla-boleta tr:nth-child(even) {background-color: #f2f2f2e3;}
                    .l {

                        text-align:center;
                    }
            </style>

<table class="tabla-boleta" style="text-align:left" border=1 >
		<thead>
			<tr>
				<th >Codigo</th>
				<th >Nombres</th>
				<th >Apellido</th>
				<th >Direccion</th>
				<th>Telefono</th>
				<th >Sexo</th>
			
			</tr>	
		</thead>
		<tbody>
			
	
			<!-- la variable $res1 esta definida en el controlador-->
			<!-- foreach recorre arrays(si pudes mirate un video corto de como funciona el foreach; es muy pero muy útil)-->
			<?php $SDatos=sizeof($res1);
			//sizeof->es como el count te obtiene la canitdad de elementos 
    $count=0; 
    if($SDatos>0){
			 foreach ($res1 as $value) { $count++; ?>
			
				<tr>
					<td> <?php echo $count ?> </td>	
					<td ><?php echo $value['nombre']?></td>	
					<td ><?php echo $value['apellido']?></td>
					<td ><?php echo $value['direccion']?></td>
					<td ><?php echo $value['telefono']?></td>
					<td ><?php echo $value['Sexo']?></td>
			
				</tr>
				
				<?php  }
			}else{ ?>
				<tr>
				<td colspan=6  align=center> Sin Datos </td>
				
			</tr> 
			<?php  }?>	
	
			
		</tbody>
	</table>
	<h2 style="margin-top:10px">Cantidad de Alumnos Matriculados: <?php echo $count;?></h2>

</body>
</html>