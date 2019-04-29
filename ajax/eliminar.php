<?php
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new crud();
// print_r($_POST);
$id=$_POST['id'];
 echo $res4=$crud->Eliminar($id);
// echo "bien";


?>