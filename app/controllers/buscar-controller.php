<?php 
 require  '../models/cn.php';
 require  '../models/crud.php';
 
$crud=new crud();
$nom=empty($_GET['txtnom'])?"":$_GET['txtnom'];
$res1=$crud->BuscarXnom($nom);
//print_r($res1);




?>

