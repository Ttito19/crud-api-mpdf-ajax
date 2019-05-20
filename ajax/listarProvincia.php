<?php

require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
 
 //print_r($_POST);
 $crud=new crud();
$cboProv=$_POST['cboprovincia'];
 $listRegion=$crud->provincia($cboProv);
echo $listRegion;
//print_r($listRegion);

?>