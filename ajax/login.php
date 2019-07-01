<?php
require '../app/models/cn.php';
require '../app/models/crud.php';
$crud=new Crud();
$correo=$_POST['txtcorreo'];
$clave=$_POST['txtclave'];
$login=$crud->login($correo,$clave);

if(isset($login["res"]) && $login["res"] == "Usuario no encontrado"){
  print_r($login["res"]);
}else{
  session_start();
  $_SESSION["rol"] = $login["idRol"];
if($login["idRol"] == 1 ||$login["idRol"] == 2 || $login["idRol"] == 3){
  $_SESSION["nomCompleto"] = $login["apellido"] . " ". $login["nombre"]; 
}
// else if ($login["idRol"] == 2){
//   $_SESSION["nomCompleto"] = $login["apepro"] . " ". $login["nompro"]; 
// }
 
  // print_r("usuario encontrado");
}
  
 ?>