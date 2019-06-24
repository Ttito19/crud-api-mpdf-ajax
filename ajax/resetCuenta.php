<?php

require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
 
 $crud=new crud();
 $txtdni=$_POST["txtreset"];

 $reset=$crud->ResetCuenta($txtdni);
 
echo $reset;

 ?>