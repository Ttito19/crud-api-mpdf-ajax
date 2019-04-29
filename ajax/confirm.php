<?php
require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
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

   
if ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex) ) {
    echo $res2=$crud->Insertar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex);
   // echo "bien";
}else{
    echo "campos vacios ";
}

    

   









?>