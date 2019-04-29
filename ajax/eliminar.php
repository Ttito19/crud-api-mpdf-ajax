<?php
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new crud();

$id=$_GET['id'];
$res4=$crud->Eliminar($id);


?>