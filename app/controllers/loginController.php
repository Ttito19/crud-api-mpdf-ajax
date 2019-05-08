<?php

require  '../models/cn.php';
require  '../models/crud.php';

$crud=new Crud();
$correo=$_POST['txtcorreo'];
$clave=$_POST['txtclave'];

if(isset($correo) && isset($clave) ){
    $login=$crud->login($correo,$clave);
  echo  header('location:../views/table-search.php');
}else{
echo "incorrecto";

}
//include '../views/table-search.php'








 ?>