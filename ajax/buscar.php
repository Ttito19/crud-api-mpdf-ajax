<?php 
require '../app/models/cn.php';
require '../app/models/crud.php';
$crud=new crud();
$nom= ($_POST['txtnom'])?"":$_POST['txtnom'] ;
$res1=$crud->BuscarXnom($nom);
//print_r($res1);





?>

