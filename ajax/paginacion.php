
<?php
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new Crud(); 
 //$id=$_POST[''];
$pagin=$crud->Paginacion(); 
echo $pagin;


?>