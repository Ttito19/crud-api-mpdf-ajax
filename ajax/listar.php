<?php
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new crud(); /*Si te das cuenta no se instancia la clase conexión, solo lo haces en tu misma clase crud, pero aún asi se pone la ruta de la conexión 
            para cuando tu clase crud busque la clase conexion al instanciarla la encuentre*/
$id=$_POST['txtpag'];
$buscar=$_POST['txtnom'];
$res1= $crud->ListarPag($id,$buscar); //llamas a tu función listar la cual te retornara el $res(los registros de tu consulta; de lo contrario retornara el mensaje de error)
echo $res1;
//print_r($res1);
//include '../views/table-search.php';
?>