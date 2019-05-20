<?php //require  '../controllers/insertar-controller.php'; //Ruta del controlador ?>

    <?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>

            <!-- Modal -->
    <!--        <div class="modal fade" id="modal-registrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Registro Usuario</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">-->
                            <div class="container">
                                <div class="content-justify-center">
                                    <div class="col-sm-8 offset-sm-2">

                                        <form method="post" autocomplete="off" class="form-group" id="form" ">
                                            <h3>Crud con Ajax</h3>
                                            <div class="form-group">
                                                <label>Dni:</label>
                                                <input type="text" name="txtdni" id="dni" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label>Apellidos:</label>
                                                <input type="text" name="txtape" id="apellido" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label>Nombres:</label>
                                                <input type="text" name="txtnom" id="nombre" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label>Celular:</label>
                                                <input type="tel" name="txtcel" id="celular" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label>Dirección:</label>
                                                <input type="text" name="txtdir" id="direccion" class="form-control" />
                                            </div>
                                          <!--  <div class="form-group">
                                                <label>Departamento:</label>
                                                <select name='txtdepar' id="departamento" class="form-control">
                                                    <option>Seleccion Departamento</option>
                                                    <option value="1">Lima</option>
                                                    <option value="2">Cuzco</option>
                                                    <option value="3">Puno</option>
                                                    <option value="4">Arequipa</option>

                                                </select>
                                            </div>-->
                                            <div class="form-group">
                                                <label>Departamento:</label>
                                                <select name='cboregion' id="region" class="form-control"></select>
                                            </div>
                                            <div class="form-group">
                                                <label>Provincia:</label>
                                                <select name='cboprovincia' id="provincia" class="form-control"></select>
                                            </div>

                                      <!--      <div class="form-group">
                                                <label>Provincia:</label>
                                                <select name='txtprov' id="provincia" class="form-control">
                                                    <option>Selecciones Provincia</option>
                                                    <option value="1">Lima</option>
                                                    <option value="2">Urubamba</option>
                                                    <option value="3">Huancané</option>
                                                    <option value="4">Islay</option>
                                                </select>
                                            </div>-->
                                            <div class="form-group">
                                                <label>Distrito:</label>
                                                <select name='cbodistrito' id="distrito" class="form-control">
                                                <option>Selecciones Provincia</option>
                                                    <option value="1">Lima</option>
                                                    <option value="2">Urubamba</option>
                                                    <option value="3">Huancané</option>
                                                    <option value="4">Islay</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Sexo:</label>
                                                <input type="text" name="txtsex" id="sexo" class="form-control" />
                                            </div>
                                            <input type="submit" id="btn-enviar" class="btn btn-success" value="Registrar" />

                                        </form>
                                    </div>
                                </div>
                                <div>
                                </div>
                       <!--         <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <input type="submit" id="btn-enviar" class="btn btn-success" value="Registrar" />
                                </div>-->
                            </div>
                        </div>
                    </div>

                    <?php  include 'footer/footer.php'  ?>

                        <script src="../../public/style/javascript/app.js"></script>
                       
               