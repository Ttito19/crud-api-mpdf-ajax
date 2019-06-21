<?php
session_start();
if(isset($_SESSION["rol"])) {
if($_SESSION["rol"] == 1){
    header("Location:/crud-api-mpdf-ajax/app/views/table-search.php");
}else if($_SESSION["rol"] == 2){
    header("Location:/crud-api-mpdf-ajax/app/views/form-docente.php");
}else if($_SESSION["rol"] == 3){
    header("Location:/crud-api-mpdf-ajax/app/views/form-alumno.php");
}
}else{
    header("Location:./");
}//http://localhost/crud-api-mpdf-ajax/app/views/