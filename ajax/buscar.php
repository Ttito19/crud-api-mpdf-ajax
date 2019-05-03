<?php 
require '../app/models/cn.php';
require '../app/models/crud.php';
$crud=new crud();
$nom= $_POST['txtnom'];
$res1=$crud->BuscarXnom($nom);
echo $res1;
// print_r($res1);





?>

