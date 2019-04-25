<?php 

 require  '../models/cn.php';
 require  '../models/crud.php';
 
$crud=new crud();
$nom=$_POST['txtnom'];
$res1=$crud->BuscarXnom($nom);
//print_r($res1);
include '../views/table-search.php';
?>


