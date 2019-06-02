<?php 
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new Crud();
$dis=$_POST['cbodistrito'];
$listarDir=$crud->distrito($dis);
echo $listarDir;
?>