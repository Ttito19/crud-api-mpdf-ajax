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
$prov=$_POST['cboprovincia'];
$dis=$_POST['cbodistrito'];
$sex=$_POST['txtsex'];
$correo=$_POST['txtcorreo'];
$clave=$_POST['txtclave'];
$idr=$_POST['txtidrol'];
$clave_cifrado=password_hash($clave,PASSWORD_DEFAULT,array("cost"=>12));

$id=(isset($_POST['id']))?$_POST['id']:"";

if($id==""){
    if ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex) ||  !empty($correo) ||  !empty($clave_cifrado) ||  !empty($idr) ) {
        echo $res2=$crud->Insertar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex,$correo,$clave_cifrado,$idr);
    }else{
         echo "campos vacios";
    }

}else{
        if  ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex)   ||  !empty($correo) ||  !empty($id) )  {
        echo $res2=$crud->Editar( $dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex,$id,$correo);
    }
}

   // echo "bien";




   
   



    

   









?>