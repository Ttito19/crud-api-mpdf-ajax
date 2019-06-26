<?php 
Session_Start();
if(isset($_SESSION["rol"])){
    if($_SESSION["rol"] == 3 || $_SESSION["rol"] == 1){
?>

    <?php include 'header/header.php'  ?>
        <?php include 'menu/cabecera-login.php'  ?>

    <h1>Alumno <?php  echo $_SESSION['nomCompleto']     ?>    </h1>
 
 <?php  include 'footer/footer.php'  ?>
<?php   
    }else{
        header("Location:./rutas.php");
    }

}else{
    header("Location:./rutas.php");
}
?>


