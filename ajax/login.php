<?php
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new Crud();
$correo=$_POST['txtcorreo'];
$clave=$_POST['txtclave'];

 




  if (empty($correo) &&  empty($clave)){
     echo  '<script> alert("campos vacios"); window.location.href="../views/index.php";</script>  ';
   } else{
   
    $login=$crud->login($correo,$clave);
    echo $login;
  
   
  } 
  
  
  
   
  




 ?>