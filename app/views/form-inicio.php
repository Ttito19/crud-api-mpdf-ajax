<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->
<?php
session_start();
if(isset($_SESSION["rol"])) {
    if($_SESSION["rol"] == 1 || $_SESSION["rol"] == 2 || $_SESSION["rol"] == 3){?>
       <?php include 'header/header.php';  ?>

<?php include 'menu/cabecera-login.php'  ?>

<h1  style="margin-top:10px;" align="center" >Bienvenido: <?php echo($_SESSION["nomCompleto"]);?></h1>
<div class="container mx-auto">

   <div class="loader-container" >
    <div class="loader" >
        <div class="loader2">
        </div>
    </div>
   </div>
</div>
   












 
   <?php  include 'footer/footer.php'  ?>


             
<?php
}else{
    header("Location:./rutas.php");
}
}else{
header("Location:./rutas.php");
}
?>

               