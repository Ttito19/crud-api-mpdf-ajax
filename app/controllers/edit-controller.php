<?php

 require  '../models/cn.php'; // <--Nota
 require  '../models/crud.php'; 
 
 
 $crud=new crud();

 $id=$_GET['id'];
 $edit=$crud->EditarId($id, false);

//  $edit2=array($edit);
// print_r($edit2);
//require_once '../views/alumno-reporte.php';
?>