<?php

require  '../app/models/cn.php'; // <--Nota
require  '../app/models/crud.php'; 
 
 
 $crud=new crud();
 $_POST=[''];
 $listRegion=$crud->provincia();
echo $listRegion;
//print_r($listRegion);

?>