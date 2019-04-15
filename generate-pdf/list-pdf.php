<?php
require_once '../vendor/autoload.php';

ob_start();
require '../views/inicio.php';
$html= ob_get_clean();
$day = date('d');
$year = date('Y');
$month = date('F');
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

$mpdf->SetHTMLHeader('<div style="text-align: center; color:blue;">Datos del Alumno</div>');

for ($i=1; $i <=3 ; $i++) {
    $mpdf->addPage ('');
    $mpdf->SetHTMLFooter("$day  $month  $year "." Pág:$i/3");
    $mpdf->writeHTML($html);
    
    
}
    




/*
for ($i=0; $i < 5; $i++) { 
   $mpdf->addPage('');
   $mpdf->writeHTML($html);
}*/
/*
$var=0;
while ($var < 4 ) {
   
    $mpdf->addPage(''); 
    $var++;
    $add=0;
while ($add < 3) {
    $mpdf->writeHTML($html);  
        $add++;
     }
  //break ;

}
*/

$mpdf->Output('miprueba.pdf', 'I');



?>