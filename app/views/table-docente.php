<!-- En el navegador ejecutas este archivo(inicio.php) pero arriba esta la ruta del controlador, por lo cual ese archivo se ejecutara primero 
y luego continuara con lo de abajo-->

<!-- nota: Ya que el archivo del controlador se ejecuta arriba es posible usar las variables de ese archivo como el caso de $res1
	-Es como si ese archivo se uniera con este.
-->
<?php
session_start();
if(isset($_SESSION["rol"])) {
    if($_SESSION["rol"] == 1){?>
       <?php include 'header/header.php';  ?>

<?php include 'menu/cabecera-login.php'  ?>


   <?php  include 'footer/footer.php'  ?>



<?php
}else{
    header("Location:./rutas.php");
}
}else{
header("Location:./rutas.php");
}
?>

               