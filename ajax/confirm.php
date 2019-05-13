<?php
require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
$crud=new crud();
$dni=$_POST['txtdni'];
$ape=$_POST['txtape'];
$nom=$_POST['txtnom'];
$cel=$_POST['txtcel'];
$dir=$_POST['txtdir'];
$depar=$_POST['cboregion'];
$prov=$_POST['txtprov'];
$dis=$_POST['txtdis'];
$sex=$_POST['txtsex'];

$id=(isset($_POST['id']))?$_POST['id']:"";

if($id==""){
    if ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex) ) {
        echo $res2=$crud->Insertar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex);
    }else{
         echo "campos vacios";
    }

}else{
        if  ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex)  ||  !empty($id) )  {
        echo $res2=$crud->Editar( $dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex,$id);
    }
}

   // echo "bien";




   
   



    

   









?>