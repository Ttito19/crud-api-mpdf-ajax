<?php //require  '../controllers/insertar-controller.php'; //Ruta del controlador

session_start();
if(isset($_SESSION['rol'])){
    if($_SESSION['rol']==1){ ?>

    <?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>

                            
<div class="container">
                                        <form method="post" autocomplete="off"  id="form" ">
                                            <h3 align="center">Registrar Usuarios</h3>
                                            <div class="form-row" >                                    
                                            <div class="form-group col-md-6"">
                                                <label>Rol:</label>
                                                <input type="text" name="txtidrol" id="rol" class="form-control" />
                                            </div>
                                            <div  class="form-group col-md-6" >
                                                <label>Dni:</label>
                                                <input type="text" name="txtdni" id="dni" class="form-control" />
                                                <label style="display:none" id="message">*Ya existe usuario</label>
                                            </div>
                                            
                                            <div class="form-group col-md-6">
                                                <label>Apellidos:</label>
                                                <input type="text" name="txtape" id="apellido" class="form-control" />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Nombres:</label>
                                                <input type="text" name="txtnom" id="nombre" class="form-control" />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Celular:</label>
                                                <input type="tel" name="txtcel" id="celular" class="form-control" />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Dirección:</label>
                                                <input type="text" name="txtdir" id="direccion" class="form-control" />
                                            </div>
                                      
                                            <div class="form-group col-md-6">
                                                <label>Departamento:</label>
                                                <select name='cboregion' id="region" class="form-control" style="width: 100%"></select>
                                            </div>
                                            <div class="form-group col-md-6" id="div-prov" hidden>
                                                <label>Provincia:</label>
                                                <select name='cboprovincia' id="provincia" class="form-control" style="width: 100%"></select>
                                            </div>

                                            <div class="form-group col-md-6" id="div-dis" hidden>
                                                <label>Distrito:</label>
                                                <select name='cbodistrito' id="distrito" class="form-control" style="width: 100%"></select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Sexo:</label>
                                                <input type="text" name="txtsex" id="sexo" class="form-control" />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Correo:</label>
                                                <input type="text" name="txtcorreo" id="correo" class="form-control" />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Clave:</label>
                                                <input type="text" name="txtclave" id="clave" class="form-control" />
                                            </div>
                                           </div>
                                            <input type="submit" id="btn-enviar" class="btn btn-success" value="Registrar" />

                                        </form>
                                
                               
                       </div>
                      

                    <?php  include 'footer/footer.php'  ?>
                    <script src="../../public/style/javascript/combos.js"></script>
                    <script src="../../public/style/javascript/app.js"></script>
                    <script src="../../public/style/javascript/actualizar.js"></script>
                       
          <?php
          }else{
              header("Location:./rutas.php");
          }
}else{
    header("Location:./rutas.php");
}

          ?>