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
                <form  class="form-group"  id="form"  autocomplete="off"  >
                <div  class="form-group" >                 
                    <h4>Recuperacion de Cuenta</h4>
                    <input  type="text"  class="form-control"  id="resetPass" placeholder="Escriba su dni..." required="" name="txtreset">
                </div>
             <div class="d-flex justify-content-center">
                 <label class="text-muted h5"   type="text" id="resetDni"> </label>
                </div>
                <div class="d-flex justify-content-center">
                 <label class="text-muted  h5 "   type="text" id="resetDni" > </label>
                 <label class="text-muted  h5 "   type="text" id="resetCorreo" > </label>
                </div >      
                <div id="input">
                     <input  type="submit"  class="btn btn-primary"  value="restaurar"  id="btn-enviarReset" >
               </div>
            </form>
        </div>
    </div>
</div>

<?php  include 'footer/footer.php'  ?>
<script src="../../public/style/javascript/app.js"></script>