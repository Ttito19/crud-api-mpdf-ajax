<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->

<?php include 'header/header.php';  ?>

    <?php include 'menu/cabecera-login.php'  ?>
    
        <div class="offset-sm-3" style="margin-top:5px">

            <!--<a  href="form-crud.php"  class="btn btn-secondary"  id="btn-registrar" >Registrar Usuario</a>-->

            <div class="form-inline">
                <h4>Buscar por Nombre:</h4>
                <div class="form-group mx-sm-3 mb-2">

                    <input type="text" class="form-control" id="nom" name="txtnom">
                </div>
                <button type="submit" class="btn btn-primary mb-2 " id="btn-buscar">Buscar</button>
            </div>
        </div>
<style>
#table thead tr td{
    color:green;
    
}
    
    </style>
        <div class="container">     
        <table class="table table-bordered" id=table>
                <thead>
                    <tr class="table-primary" id="td">
                        <td >Codigo</td>
                        <td >Dni</td>
                        <td >Apellido</td>
                        <td >Nombre</td>
                        <td >Telefono</td>
                        <td >Direccion</td>
                        <td >Departamento</td>
                        <td >Provicia</td>
                        <td >Distrito</td>
                        <td >Sexo</td>
                        <td >Editar</td>
                        <td >Eliminar</td>
                        <td   >Generar PDF</td>
                    </tr>
                </thead>
                <tbody id="list">

                </tbody>
            </table>
            <div class="pagination-container" id="pagination-container"></div>
        </div>










     <!--   <a href="logout.php" class="btn btn-warning">Cerrar Sesión</a>-->

        <!-- <button type="button" class="btn btn-primary"  id="desplegar"  data-toggle="modal" data-target="#exampleModalLong">
  Para editar
</button> -->

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
                                        <h3 id="nom"></h3>
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
                                            <select name='cboregion' id="region" class="form-control"></select>
                                        </div>
                                        <div class="form-group" >
                                            <label>Provincia:</label>
                                            <select name='cboprovincia' id="provincia" class="form-control" ></select>
                                        </div>

                                        <div class="form-group"  >
                                            <label>Distrito:</label>
                                            <select name='cbodistrito' id="distrito" class="form-control"> </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo:</label>
                                            <input type="text" name="txtsex" id="sexo" value="" class="form-control" />
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
                    <script src="../../public/style/javascript/eliminar.js"></script>
                    <script  src="../../public/style/js/pagination.js"></script>
                    <script src="../../public/style/js/pagination.min.js"></script>

               