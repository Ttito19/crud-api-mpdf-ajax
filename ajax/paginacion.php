
<?php
require '../app/models/cn.php';
require '../app/models/crud.php';

$crud=new Crud(); 
 $buscar=$_POST['txtnom'];
$pagin=$crud->Paginacion($buscar); 
echo $pagin;


?>