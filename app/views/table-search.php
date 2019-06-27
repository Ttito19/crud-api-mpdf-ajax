<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->
<?php
session_start();
if(isset($_SESSION["rol"])) {
    if($_SESSION["rol"] == 1){?>
       <?php include 'header/header.php';  ?>

<?php include 'menu/cabecera-login.php'  ?>
<style>
#table thead tr td{
color:green;
}
</style> 

<h2  align="center" >Administrador: <?php echo($_SESSION["nomCompleto"]);?></h2>
<div class="d-flex flex-column main-content border px-3 pt-2 rounded">
    <div class="form-row">
    <div  class="form-group col-lg-4 col-md-6" > 
       <div class="form-inline">
           <h4>Buscar por Nombre o Dni:</h4>
           <div class="form-group mx-sm-3 mb-2">

               <input type="text" class="form-control" id="nom" name="txtnom">
           </div>
           <button type="submit" class="btn btn-primary mb-2 " id="btn-buscar">Buscar</button>
       </div>
     </div>
   </div>
   </div>
</div>
  

    


<div class="col-12 col-sm-12 col-md-12 col-lg-12" style="margin: auto;margin-bottom:50px;">
     <div class="table-responsive" style="min-height:600px;"  >
   <table class="table table-sm table-bordered table-hover table-striped" id=table>
           <thead style="text-align:center;">
               <tr class="table-primary" id="td">
                   <th >Codigo</td>
                   <th >Dni</th>               
                   <th >Apellido</th>
                   <th >Nombre</th>
                   <th >Telefono</th>
                   <th >Direccion</th>
                   <th >Departamento</th>
                   <th >Provicia</th>
                   <th >Distrito</th>
                   <th >Sexo</th>
                   <th >Correo</th>
                   <th >Editar</th>
                   <th >Eliminar</th>
                   <th style='width:10%'>Generar PDF</th>
               </tr>
           </thead>
           <tbody id="list" style="text-align:center;">

           </tbody >
       </table>
       <div class="pagination-container" id="pagination-container"></div>
   </div>

   <!-- Modal -->
   <div class="modal fade" id="form-editar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
       <div class="modal-dialog" role="document">
           <div class="modal-content">
               <div class="modal-header">
                   <h5 class="modal-title" id="exampleModalLongTitle">Editar Formulario</h5>
                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                       <span aria-hidden="true">&times;</span>
                   </button>
               </div>
               <div class="modal-body">
                   <div class="container">
                       <div class="content-justify-center">
                           <div class="col-sm-8 offset-sm-2">
                               <form autocomplete="off" class="form-group">
                                   <h3 id="nom-usu"></h3>
                                   <div class="form-group">
                                       <label>Dni:</label>
                                       <input type="text" name="txtdni" id="dni" value="" class="form-control" />
                                   </div>
                                   <div class="form-group">
                                       <label>Apellidos:</label>
                                       <input type="text" name="txtape" id="apellido" value="" class="form-control" />
                                   </div>
                                   <div class="form-group">
                                       <label>Nombres:</label>
                                       <input type="text" name="txtnom" id="nombre" value="" class="form-control" />
                                   </div>
                                   <div class="form-group">
                                       <label>Celular:</label>
                                       <input type="tel" name="txtcel" id="celular" value="" class="form-control" />
                                   </div>
                                   <div class="form-group">
                                       <label>Dirección:</label>
                                       <input type="text" name="txtdir" id="direccion" value="" class="form-control" />
                                   </div>
                                   <div class="form-group">
                                       <label>Departamento:</label>
                                       <select name='cboregion' id="region" class="form-control" style="width: 100%"></select>
                                   </div>
                                   <div class="form-group" >
                                       <label>Provincia:</label>
                                       <select name='cboprovincia' id="provincia" class="form-control" style="width: 100%"></select>
                                   </div>

                                   <div class="form-group"  >
                                       <label>Distrito:</label>
                                       <select name='cbodistrito' id="distrito" class="form-control" style="width: 100%"> </select>
                                   </div>
                                   <div class="form-group">
                                       <label>Sexo:</label>
                                       <input type="text" name="txtsex" id="sexo" value="" class="form-control" />
                                   </div>
                                   <div class="form-group">
                                       <label>Correo:</label>
                                       <input type="text" name="txtcorreo" id="correo" value="" class="form-control" />
                                   </div>

                               </form>
                           </div>
                       </div>
                       <div>
                           <div class="modal-footer">
                               <input type="submit" id="btn-actualizar" class="btn btn-success" value="Actualizar" />
                               <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                           </div>

                       </div>

                   </div>
               </div>
           </div>
       </div>
   </div>

   <?php  include 'footer/footer.php'  ?>



               <script src="../../public/style/javascript/app.js"></script>
               <script src="../../public/style/javascript/combos.js"></script>
               <script src="../../public/style/javascript/paginacion.js"></script>
               <script src="../../public/style/javascript/actualizar.js"></script>
               <script src="../../public/style/javascript/eliminar.js"></script>
               <script  src="../../public/style/js/pagination.js"></script>
               <script src="../../public/style/js/pagination.min.js"></script>
               <?php
}else{
    header("Location:./rutas.php");
}
}else{
header("Location:./rutas.php");
}
?>

               