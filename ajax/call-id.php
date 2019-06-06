<?php

require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
 
 
 $crud=new crud();
// print_r();
 $id=$_POST['id'];
 $edit=$crud->EditarId($id);
 echo $edit;


?>