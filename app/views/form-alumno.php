<?php 
Session_Start();
if(isset($_SESSION["rol"])){
    if($_SESSION["rol"] == 3 || $_SESSION["rol"] == 1){
?>
<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Alumno <?php  echo $_SESSION['nomCompleto']     ?>    </h1>
    <li class="nav-item">
            <a class="nav-link " href="./destruir.php">Cerra Session</a>
          </li>
</body>
</html>
<?php   
    }else{
        header("Location:./rutas.php");
    }
}else{
    header("Location:./rutas.php");
}