<?php include  '../controllers/edit-controller.php'; //Ruta del controlador ?>


<!DOCTYPE html>
<html>
<head>
    <title>Listar en Pdf </title>
  

	<link rel="stylesheet" type="text/css" href="../../public/style/css/estilos/reporte.css">



</head>
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
                     <?php 
                     $nomMayus=$edit['nombre'];
                     $apeMayus=$edit['apellido'] ?>
                        <?php echo "Datos ".ucfirst($nomMayus).' '. ucfirst($apeMayus) ?>
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
                        <th>Codigo</td>
                        <th>Dni</th>
                        <th>Apellido</th>
                        <th>Nombre</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                        <th>Departamento</th>
                        <th>Provicia</th>
                        <th>Distrito</th>
                        <th>Sexo</td>  
			
			</tr>	
		</thead>
		<tbody>           
                <?php //foreach($edit as $val){  ?>
                       <!-- <td width="10"><?php // echo $val   //-->muestra todo el arreglo pero no te permite especificar cual quieres q te muestre  ?></td>-->
                     
                <?php  //}?>  
                <?php // foreach($edit as $index => $val){
                  //  echo $index."=".$val;//--->me muestrar el indice y su valor
                    ?>
 

            <tr>
				<td width="10"><?php echo $edit['idalumno']?></td>
				<td width="10"><?php echo $edit['dni']?></td>
				<td width="10"><?php echo $edit['apellido']?></td>
				<td width="10"><?php echo $edit['nombre']?></td>
				<td width="10"><?php echo $edit['telefono']?></td>
				<td width="10"><?php echo $edit['direccion']?></td>
				<td width="10"><?php echo $edit['region']?></td>
				<td width="10"><?php echo $edit['provincia']?></td>
				<td width="10"><?php echo $edit['distrito']?></td>
				<td width="10"><?php echo $edit['sexo']   ///-->te permite especificar cual deseas mostrar ?></td> 
			</tr>
		
           
				
		
			
		</tbody>
            </table>
            <div class="pagination-container" id="pagination-container"></div>
 


</body>
</html>