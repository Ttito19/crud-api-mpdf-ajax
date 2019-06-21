<?php
session_start();
if(isset($_SESSION["rol"])){
    header("Location:./rutas.php");
}else{
?>
<?php

include 'header/header.php'  ?>
    <?php include 'menu/cabecera-login.php'  ?>
        <div class="container" style="margin-top: 100px">
            <div class="row justify-content-center">
                <div class="col-md-6 col-offset-3" align="center" style="background-color: #eeeeee; padding: 50px;">
                    <i class="far fa-user-circle fa-8x"></i>
                    <form method="POST" autocomplete="off"  >
                        <h1>Página Principal</h1>
                        <label id="alertVacio" ></label>
                        <div class="form-group">
                            <label id="alertCorreo" >Correo:</label>
                            <input type="text" name="txtcorreo" id="correoLogin"  class="form-control" style="width:50%;">
                            <span id="correcto"></span>

                        </div>
                        <div class="form-group">
                            <label id="alertClave">Clave:</label>
                            <input type="password" name="txtclave" id="passwordLogin"  class="form-control" style="width:50%;">
                        </div>
                        <input type="submit" id="btn-sesión" class="btn btn-primary">
                        <input type="submit" id="btn-google" value="Google" class="btn btn-danger">

                    </form>
                    <br>
                    <a href="form-resetPassword.php">¿Has olvidado tu contraseña?</a>
                </div>
            </div>
        </div>

        <?php  include 'footer/footer.php'  ?>

            <script src='../../public/style/javascript/app.js'></script>
            <?php
            }