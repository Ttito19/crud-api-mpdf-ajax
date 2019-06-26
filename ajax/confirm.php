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
// $clave=$_POST['txtclave'];
// $idr=$_POST['txtidrol'];
// $clave_cifrado=password_hash($clave,PASSWORD_DEFAULT,array("cost"=>12));

$id=(isset($_POST['id']))?$_POST['id']:"";
$clave=(isset($_POST['txtclave']))?$_POST['txtclave']:"";
$idr=(isset($_POST['txtidrol']))?$_POST['txtidrol']:"";

if($id==""  ){
    if ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex) ||  !empty($correo) ||  !empty($clave) ||  !empty($idr) ) {
        echo $res2=$crud->Insertar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex,$correo,$clave,$idr);
    }else{
         echo "campos vacios";
    }

}elseif($clave=="" || $idr==""){
        if  ( !empty( $dni) || !empty($ape) || !empty($nom) || !empty($cel) ||  !empty($dir)  ||  !empty($sex)   ||  !empty($correo) ||  !empty($id) )  {
        echo $res2=$crud->Editar($dni,$ape,$nom,$cel,$dir,$depar,$prov,$dis,$sex,$correo,$id);
    }
}

   // echo "bien";




   
   



    

   









?>