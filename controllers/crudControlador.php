<?php
require  '../models/cn.php';
require  '../models/crud.php';

$list=new crud();

$res1= $list->Listar();
//print_r($res1);


?>