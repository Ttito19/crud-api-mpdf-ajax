<?php




?>

<?php include 'header/header.php'  ?>
<?php include 'menu/cabecera-login.php'  ?>
<div class="container"  style="margin-top: 100px">
<div class="row justify-content-center">
<div  class="col-md-6 col-offset-3"  align="center" style="background-color: #eeeeee; padding: 50px;">
<i class="far fa-user-circle fa-8x"   ></i>
<form method="POST"  action="../controllers/loginController.php" autocomplete="off"  onsubmit="return validarLogin();"  >
<h1>Página Principal</h1>
<div class="form-group">
<label>Correo Electronico o Usuario:</label>
<input type="text"  name="txtcorreo"  id="correoLogin"  class="form-control"  style="width:50%;">	
<span  id="correcto" ></span>

</div>
<div class="form-group">
<label>Clave:</label>
<input type="password" name="txtclave" id="passwordLogin"   class="form-control"  style="width:50%;">	
</div>	
<input  type="submit" id="btn-sesión"  class="btn btn-primary"  >
<input  type="submit" id="btn-google"  value="Google"  class="btn btn-danger"  >

</form>
<br>
<a href="olvidarContraseña.php">¿Has olvidado tu contraseña?</a>
</div>
</div>
</div>

<?php  include 'footer/footer.php'  ?>