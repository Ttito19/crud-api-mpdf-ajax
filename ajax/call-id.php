<?php

require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
 
 
 $crud=new crud();
// print_r();
 $id=$_POST['id'];
 $edit=$crud->EditarId($id, false);

 $idRegion= json_decode($crud->provincia($edit['region']),1);
 $idProv= json_decode($crud->distrito($edit['provincia']),1);
// print_r($idProv);
 $array=[$edit,$idRegion,$idProv];
echo json_encode($array);


?>