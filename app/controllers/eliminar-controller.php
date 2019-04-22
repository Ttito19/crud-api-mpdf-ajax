
<?php
require  '../models/cn.php'; // <--Nota
require  '../models/crud.php'; 


$crud=new crud();
$id=$_GET['id'];
$res4=$crud->Eliminar($id);
header('location:../views/table-search.php');

?>