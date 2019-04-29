<?php

 require  '../models/cn.php'; // <--Nota
 require  '../models/crud.php'; 
 
 
 $crud=new crud();

 $id=$_GET['id'];
 $edit=$crud->EditarId($id);
 //print_r($edit['nombre']);

require_once '../views/table-search.php';
?>