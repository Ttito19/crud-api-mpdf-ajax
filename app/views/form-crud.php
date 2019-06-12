<?php //require  '../controllers/insertar-controller.php'; //Ruta del controlador ?>

    <?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>

                            <div class="container">
                                <div class="content-justify-center">
                                    <div class="col-sm-8 offset-sm-2">

                                        <form method="post" autocomplete="off" class="form-group" id="form" ">
                                            <h3>Crud con Ajax</h3>
                                            <div  class="form-group" >
                                                <label>Dni:</label>
                                                <input type="text" name="txtdni" id="dni" class="form-control" />
                                                <label style="display:none" id="message">*Ya existe usuario</label>
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
                                      
                                            <div class="form-group">
                                                <label>Departamento:</label>
                                                <select name='cboregion' id="region" class="form-control"></select>
                                            </div>
                                            <div class="form-group" id="div-prov" hidden>
                                                <label>Provincia:</label>
                                                <select name='cboprovincia' id="provincia" class="form-control"></select>
                                            </div>

                                            <div class="form-group" id="div-dis" hidden>
                                                <label>Distrito:</label>
                                                <select name='cbodistrito' id="distrito" class="form-control"></select>
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
                       
                            </div>
                        </div>
                    </div>

                    <?php  include 'footer/footer.php'  ?>
                    <script src="../../public/style/javascript/combos.js"></script>
                    <script src="../../public/style/javascript/app.js"></script>
                    <script src="../../public/style/javascript/actualizar.js"></script>
                       
               