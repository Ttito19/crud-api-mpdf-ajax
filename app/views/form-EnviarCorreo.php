<?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>

<div class="container" >
    <div class="col-sm-4 offset-sm-4" align="center" >
        <div  class="jumbotron jumbotron-fluid" > 
        <div>
            <img src="../../public/img/lobo.jpg" height="110px" width="100px"> 
        </div>
            <div>
          
            </div>
            <form class="form-group" id="form" autocomplete="off">
                <h4>Recuperacion de Cuenta</h4>
                <div class="d-flex justify-content-center">
                 <label class="text-muted h5"   type="text" id="resetDni"> </label>
                </div>
                <div class="d-flex justify-content-center">
                 <label class="text-muted  h5 "   type="text" id="resetCorreo" > </label>
                </div>

                <input type="submit" class="btn btn-primary" value="restaurar" id="btn-enviarReset">
                <a href="./" class="btn btn-danger" id="btn-cancelar">cancelar</a>

            </form>
        </div>
    </div>
</div>

<?php  include 'footer/footer.php'  ?>
<script src="../../public/style/javascript/app.js"></script>