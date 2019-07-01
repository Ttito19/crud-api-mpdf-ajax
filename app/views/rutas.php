<?php
session_start();
if(isset($_SESSION["rol"])) {
if($_SESSION["rol"] == 1){
    header("Location:/crud-api-mpdf-ajax/app/views/form-inicio.php");
}else if($_SESSION["rol"] == 2){
    header("Location:/crud-api-mpdf-ajax/app/views/form-inicio.php");
}else if($_SESSION["rol"] == 3){
    header("Location:/crud-api-mpdf-ajax/app/views/form-inicio.php");
}
}else{
    header("Location:./");
}