<?php
require_once '../vendor/autoload.php';

ob_start();
require '../views/form-crud.php';
$html= ob_get_clean();

$mpdf = new \Mpdf\Mpdf([
    'mode' => 'utf-8', 
    'format' => [297, 210], 
'margin_bottom' => 25,
'margin_left' => 10,
'margin_right' => 10,
'margin_top' =>48,
'margin_header' => 10,
'margin_footer' => 5,
'orientation' => 'L'//P o L
]);
//print_r($html);
$mpdf->writeHTML($html);
$mpdf->Output('miprueba.pdf', 'I');



?>