<?php 
Session_Start();
if(isset($_SESSION["rol"])){
    if($_SESSION["rol"] == 2 || $_SESSION["rol"] == 1){
?>

    <?php include 'header/header.php'  ?>
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


