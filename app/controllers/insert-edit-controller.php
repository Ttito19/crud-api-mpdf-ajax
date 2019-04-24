<?php
require  '../models/cn.php'; // <--Nota
require  '../models/crud.php'; 
$crud=new crud();



$dni=$_POST['txtdni'];
$ape=$_POST['txtape'];
$nom=$_POST['txtnom'];
$cel=$_POST['txtcel'];
$dir=$_POST['txtdir'];
$depar=$_POST['txtdepar'];
$prov=$_POST['txtprov'];
$dis=$_POST['txtdis'];
$sex=$_POST['txtsex'];

if (!$cod=$_POST['txtid']) {
    
    
    $res2=$crud->Insertar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex);
    echo header('location:../views/table-search.php');
}else{
    $res3=$crud->Editar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex,$cod);
    echo header('location:../views/table-search.php');
    
}








?>