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
                
                border-radius: 4px;
       
               
            }

            
            .titulo-rol span{
          background: #eef0f4;
            padding: 0px 5px;
            position:absolute;
            margin-top:-22px;
            }
            .contenedor-img{
              
               padding:5px;
               width: 105px;            
               border: 1px solid #000000;
            
               /* margin-top:-11px; */
                /* position:relative; */
                /* left: 250px;  */
                background: wheat; 
               height: 105px;
               border-radius: 4px;
              margin-bottom:20px;
           }


           
            </style>
                              <u>       <h1 align="center">Registrar Usuarios</h1></u>     

                        <div class="container mt-4"  >
                                    <form method="post" autocomplete="off"    id="form" >                                                                              
                            <div class="form-row col-sm-8 mx-auto"  >   
                                    
                            
                                    <div  class="col-md-6" >
                                            <div class="contenedor-img " >
                                                  <img src="../../public/img/usuario.png" height="100px" class="mx-auto" width="100px">    
                                            </div>
                                    </div>
                      
                                    <div  class="contenedor col-md-6"   style="margin-bottom:20px"> 

                                        <div class="titulo-rol">
                                            <span >Rol</span>
                                        </div>

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
                                  
                                  

                                    
                                    <div  class="form-group col-md-6" >
                                            <label>Dni:</label>
                                          
                                            <input type="text" name="txtdni"   maxlength="8" onkeypress="return valida(event)"  placeholder="Introduce tu dni..." class="form-control"  required="" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" id="dni" class="form-control" />
                                            <label style="display:none" id="message">*Ya existe usuario</label>
                                    </div>
                                            
                                    <div class="form-group col-md-6">
                                            <label>Apellidos:</label>
                                            <input type="text" name="txtape"  placeholder="Introduce el Apellidos..." required=""  id="apellido" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-6">
                                            <label>Nombres:</label>
                                            <input type="text" name="txtnom" id="nombre"  placeholder="Introduce el nombre..." required="" class="form-control" />
                                    </div>
                                   
                                    <div class="form-group col-md-6">
                                            <label>Celular:</label>
                                            <input type="tel" name="txtcel"  maxlength="9" onkeypress="return valida(event)" placeholder="Introduce el celular..." required="" class="form-control" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" id="celular" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-6">
                                            <label>Dirección:</label>
                                            <input type="text" name="txtdir" id="direccion"  placeholder="Introduce el Dirección..." required="" class="form-control" />
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
                                            <input type="text" name="txtsex" id="sexo"  placeholder="Introduce el Sexo..." required="" class="form-control" />
                                    </div>

                                    <div class="form-group col-md-6">
                                            <label>Correo:</label>
                                            <input type="email" name="txtcorreo"  placeholder="Introduce el email..." required="" id="correo" class="form-control" />
                                            <label style="display:none"  id="messageCorreo">*Escriba correctamente el correo</label>
                                    </div>

                                    <div class="form-group col-md-6">
                                            <label>Clave:</label>
                                            <input type="password" name="txtclave"  placeholder="******" required=""  id="clave" class="form-control" />
                                    </div>
                                            
                            </div>

                                    <div class="form-row col-sm-8 mx-auto" >      
                                            <input type="submit" id="btn-enviar" class="btn btn-success" value="Registrar" />
                                    </div>
                                    </form>
                        </div>
                               
                   

                    <?php  include 'footer/footer.php'  ?>
                    <script src="../../public/style/javascript/combos.js"></script>
                    <script src="../../public/style/javascript/app.js"></script>
                    <script src="../../public/style/javascript/actualizar.js"></script>
                    <script>
                        function valida(e){tecla = (document.all) ? e.keyCode : e.which;if (tecla==8){return true;}patron =/[0-9]/;tecla_final = String.fromCharCode(tecla);return patron.test(tecla_final);}
                    </script> 
        
                       
          <?php
          }else{
              header("Location:./rutas.php");
          }
}else{
    header("Location:./rutas.php");
}

          ?>