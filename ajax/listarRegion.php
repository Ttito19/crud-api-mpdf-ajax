<?php

require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
 
 
 $crud=new crud();
 $listRegion=$crud->region(); //llamas a tu función listar la cual te retornara el $res(los registros de tu consulta; de lo contrario retornara el mensaje de error)
echo $listRegion;
//print_r($listRegion);

?>