<?php //require  '../controllers/insertar-controller.php'; //Ruta del controlador

session_start();
if(isset($_SESSION['rol'])){
    if($_SESSION['rol']==1){ ?>

    <?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>


        <style>
            .contenedor{
               
                padding:10px;
                width: 250px;            
                border: 1px solid #a6a6a6;
                margin-right:60px;
                margin-top:-10px;
                border-radius: 4px;
               
            }

            .titulo-rol{
                position: relative;
                left:7px;
                
            }
            .titulo-rol span{
            background-color:#eef0f4;
            padding: 0px 5px;
       
           
            }
            .contenedor-img{
               
               padding:5px;
               width: 105px;            
               border: 1px solid #000000;
               margin-right:60px;
               
               position:relative;
               left: 65%;
               background: wheat;
               height: 105px;

             
           }

           
            </style>
                                     <h1 align="center">Registrar Usuarios</h1>

                        <div class="container mt-4">
                                    <form method="post" autocomplete="off"    id="form" >                                                                              
                            <div class="form-row col-sm-8 mx-auto" >                                    
                                    <div class="titulo-rol">
                                        <span >Rol</span>
                                    </div>
                                       
                                    <div  class="contenedor">   
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" name="example1"  id="admin"  value="1" >
                                            <label class="custom-control-label" for="admin">Admin</label>
                                        </div>
                                       
                                        <div class="custom-control custom-radio">
                                             <input type="radio" class="custom-control-input" name="example1" id="docente" value="2">
                                             <label class="custom-control-label" for="docente">Docente</label>
                                        </div>
                                         
                                         
                                        <div class="custom-control custom-radio">
                                             <input type="radio" class="custom-control-input" name="example1" id="alumno"  value="3">
                                             <label class="custom-control-label" for="alumno">Alumno</label>
                                        </div>
                                    </div>
                                  

                                    <div  class="contenedor-img">
                                        <img src="../../public/img/usuario.png" height="100px" width="100px">    
                                    </div>
                                    <div  class="form-group col-md-5" >
                                            <label>Dni:</label>
                                            <input type="text" name="txtdni" id="dni" class="form-control" />
                                            <label style="display:none" id="message">*Ya existe usuario</label>
                                    </div>
                                            
                                    <div class="form-group col-md-5">
                                            <label>Apellidos:</label>
                                            <input type="text" name="txtape" id="apellido" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-5">
                                            <label>Nombres:</label>
                                            <input type="text" name="txtnom" id="nombre" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-5">
                                            <label>Celular:</label>
                                            <input type="tel" name="txtcel" id="celular" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-5">
                                            <label>Dirección:</label>
                                            <input type="text" name="txtdir" id="direccion" class="form-control" />
                                    </div>
                                      
                                    <div class="form-group col-md-5">
                                            <label>Departamento:</label>
                                            <select name='cboregion' id="region" class="form-control" style="width: 100%"></select>
                                    </div>

                                    <div class="form-group col-md-5" id="div-prov" hidden>
                                            <label>Provincia:</label>
                                            <select name='cboprovincia' id="provincia" class="form-control" style="width: 100%"></select>
                                    </div>

                                    <div class="form-group col-md-5" id="div-dis" hidden>
                                            <label>Distrito:</label>
                                            <select name='cbodistrito' id="distrito" class="form-control" style="width: 100%"></select>
                                    </div>

                                    <div class="form-group col-md-5">
                                            <label>Sexo:</label>
                                            <input type="text" name="txtsex" id="sexo" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-5">
                                            <label>Correo:</label>
                                            <input type="text" name="txtcorreo" id="correo" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-5">
                                            <label>Clave:</label>
                                            <input type="text" name="txtclave" id="clave" class="form-control" />
                                    </div>
                                            
                            </div>

                                    <div class="form-row col-sm-7 mx-auto" >      
                                            <input type="submit" id="btn-enviar" class="btn btn-success" value="Registrar" />
                                    </div>
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