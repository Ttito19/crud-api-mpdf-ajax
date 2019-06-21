<?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>

<div class="container" >
    <div class="col-sm-4 offset-sm-4" align="center" >
        <div  class="jumbotron jumbotron-fluid" > 
        <div>
            <img src="../../public/img/lob.jpg" height="100px" width="100px"> 
        </div>
            <div>
                <label id="alertaVacio"></label>
            </div>
                <form  class="form-group"  id="form" autocomplete="off"  >
                <div  class="form-group" >                 
                    <h4>Recuperacion de Cuenta</h4>
                    <input  type="text"  class="form-control"  id="resetPass" placeholder="Escriba su dni..." required="" name="reset">
                </div>

                <input  type="submit"  class="btn btn-primary"  value="restaurar"  id="btn-enviarReset" >
                <a href="./"  class="btn btn-danger"  id="btn-cancelar" >cancelar</a>

            </form>
        </div>
    </div>
</div>

<?php  include 'footer/footer.php'  ?>
<script src="../../public/style/javascript/app.js"></script>