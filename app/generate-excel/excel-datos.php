<?php
require_once '../../vendor/autoload.php';	





// require_once 'app/model/Cn.php';
// require_once 'app/model/Docente.php';
// require_once 'app/model/Periodo.php';
// require_once 'app/model/Auth.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
\PhpOffice\PhpSpreadsheet\Cell\Cell::setValueBinder( new \PhpOffice\PhpSpreadsheet\Cell\AdvancedValueBinder() );

// $rs=new Auth();
// $data=$rs->verif();
// if($data==false || empty($data->{'acceso_rol'}->{'horario_docente_carga_comision'})){
//     header("location: /home");
// exit();
//     exit();
// }else{
//     $data=$rs->verifPerfil();
// }
// $modo=(isset($_GET['modo']))?$_GET['modo']:1;
// $periodo=$_GET["periodo"];
// $tipo= (isset($_GET['tipo']))?$_GET['tipo']:'%';
// $tipoNombre;
// switch ($tipo) {
//     case 'IA':
//         $tipoNombre="(DAIA)";
//         break;
//     case 'CI':
//         $tipoNombre="(DACI)";
//         break;
//     case 'CB':
//         $tipoNombre="(DACBHCC)";
//         break;
//     default:
//         $tipo="%";
//         $tipoNombre="(TOTAL)";
//         break;
// }
// $Mperiodo=new Periodo();
// $docente=new Docente();

// $docente->setDepAcademico($tipo);
// $Mperiodo->setPerAcademico($periodo);
// $inforPeriodo=$Mperiodo->InformacionPeriodo();
// $estadoText='';

// switch ($inforPeriodo['estado']) {
//     case 2:
//         $estadoText=" PRELIMINAR";
//         break;
//     case 0:
//         $estadoText=" INHABILITADO";
//         break;
//     default:
//         $estadoText="";
//         break;
// }

// $listaDocentes=json_decode($docente->DocentesActivosHorario($periodo),1);

// $spreadsheet = new Spreadsheet();
// $spreadsheet->getDefaultStyle()->getFont()->setSize(8);
// $sheet = $spreadsheet->getActiveSheet();
// $sheet->setTitle("HORARIOS ".$tipoNombre);

// $drawing = new \PhpOffice\PhpSpreadsheet\Worksheet\Drawing();
// $drawing->setName('Paid');
// $drawing->setDescription('Paid');
// $drawing->setPath('public/assets/img/uni_color_xs.png'); // put your path and image here
// $drawing->setCoordinates('B2');
// $drawing->setHeight(80);
// $drawing->setWorksheet($sheet);

// $x=10;
// $n=0;
// $xNombre=10;
// $inicio=$x;

// $richText = new \PhpOffice\PhpSpreadsheet\RichText\RichText();
// $richText->createText('');
// $dist=$richText->createTextRun("DISTRIBUCIÓN DE HORARIOS POR DOCENTE $tipoNombre ");
// $dist->getFont()->applyFromArray(["size"=>15,"bold"=>true]);

// $perText = $richText->createTextRun('( Período Académico '.substr($periodo, 0, 4) . "-" . substr($periodo, -1).")");
// $perText->getFont()->applyFromArray(["size"=>12]);

// $tipoDep = $richText->createTextRun($estadoText);
// $tipoDep->getFont()
//     ->setColor(new \PhpOffice\PhpSpreadsheet\Style\Color(\PhpOffice\PhpSpreadsheet\Style\Color::COLOR_RED))
//     ->setBold(true);

// $sheet->getCell("B".($x-3))->setValue($richText)->getStyle()->applyFromArray([
//             'alignment' => [
//                 'horizontal' => Alignment::HORIZONTAL_CENTER,
//                 'vertical' => Alignment::VERTICAL_CENTER
//             ]
//         ]);
// $sheet->getCell("C".($x-6))->setValue("UNIVERSIDAD NACIONAL DE INGENIERÍA")->getStyle()->getFont()
//     ->setBold(true)
//     ->setSize(12);
// $sheet->getCell("C".($x-5))->setValue("Facultad de Ingeniería Mecánica")->getStyle()->getFont()
//     ->setBold(true)
//     ->setSize(12);

// $sheet->getCell("C".($x-6))->getStyle()->applyFromArray([
//     'alignment' => [
//         'horizontal' => Alignment::HORIZONTAL_CENTER,
//         'vertical' => Alignment::VERTICAL_CENTER
//     ]
// ]);
// $sheet->getCell("C".($x-5))->getStyle()->applyFromArray([
//     'alignment' => [
//         'horizontal' => Alignment::HORIZONTAL_CENTER,
//         'vertical' => Alignment::VERTICAL_CENTER
//     ]
// ]);
// $sheet->mergeCells("C".($x-6).":G".($x-6));
// $sheet->mergeCells("C".($x-5).":G".($x-5));
// $sheet->mergeCells("B".($x-3).":M".($x-3));

// $sheet->getRowDimension($x-1)->setRowHeight(40);

// $sheet->getStyle("D:L")->getAlignment()->setWrapText(true);
// $sheet->getStyle("B".($x-1).":M".($x-1))->getFont()->setBold(true);
// $sheet->getStyle("B".($x-1).":M".($x-1))->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
// $sheet->getStyle("B".($x-1).":M".($x-1))->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// $sheet->getCell('B'.($x-1))->setValue('N°');
// $sheet->getCell('C'.($x-1))->setValue('APELLIDOS Y NOMBRES');
// $sheet->getCell('D'.($x-1))->setValue('COND.');
// $sheet->getCell('E'.($x-1))->setValue('CAT / TIPO CONT.');
// $sheet->getCell('F'.($x-1))->setValue('D.H. ó Clasf.');
// $sheet->getCell('G'.($x-1))->setValue('CÓDIGO CUR-SECC');
// $sheet->getCell('H'.($x-1))->setValue('NOMBRE DEL CURSO');
// $sheet->getCell('I'.($x-1))->setValue('HORARIO DE TEORIA');
// $sheet->getCell('J'.($x-1))->setValue('HORARIO DE PRAC/LAB');
// $sheet->getCell('K'.($x-1))->setValue('AULA O LABORATORIO');
// $sheet->getCell('L'.($x-1))->setValue('CARGA LECTIVA (**)');
// $sheet->getCell('M'.($x-1))->setValue('OBSERVACION (**)');

// foreach ($listaDocentes as $clave => $valor){
//         $n++;
//         $totalSecciones=0;
//         $horLectivasTotal=0;
//         $horario=json_decode($valor['horario'],1);
//         $result = array();
//         if ($valor['incluir']==0)
//         {
//             foreach ($horario as $element) {
//                 $result[$element['codCurso']][] = $element;
//             }
//         }else{
//             $result[""][]=["dia"=>"", "hora"=>"", "teopra"=>"", "codAula"=>"", "codAula2"=>"", "codCurso"=>"", "nomCurso"=>"", "secCurso"=>""];
//         } 
//         ksort($result);
//         foreach ($result as $clHo => $vlHor){

//             $resultSec=array();

//             foreach ($vlHor as $element) {
//                 $resultSec[$element['secCurso']][] = $element;
//             }
//             ksort($resultSec);
//             foreach ($resultSec as $key => $value) {
//                 $totalSecciones++;
//                 if ($valor['incluir']==0){
//                     $sheet->getCell('G'.$x)->setValue($clHo."-".$key);
//                     if(substr($value[0]['nomCurso'],-3)=="(*)"){
//                         $sheet->getCell('G'.$x)->getStyle()->getFont()->getColor()->setARGB(\PhpOffice\PhpSpreadsheet\Style\Color::COLOR_RED);
//                     }
//                 }else{
//                     $sheet->getCell('G'.$x)->setValue("");
//                 }
                
//                 $sheet->getCell('H'.$x)->setValue($value[0]['nomCurso']);
//                 if(substr($value[0]['nomCurso'],-3)=="(*)"){
//                     $sheet->getCell('H'.$x)->getStyle()->getFont()->getColor()->setARGB(\PhpOffice\PhpSpreadsheet\Style\Color::COLOR_RED);
//                 }
//                 // echo $clHo."-".$key."<br>";
//                 $arrayAula=[];
//                 $horLectivas=0;

//                 for ($i=0; $i < count($value); $i++) {
//                     if($valor["incluir"]==1){
//                         $horLectivas=0;
//                     }else{
//                         $horas=explode("-",$value[$i]["hora"]);
//                         $horLectivas+=($horas[1]-$horas[0]);
//                     }
//                     if($valor["incluir"]==1){
//                         $sheet->getCell('I'.$x)->setValue("");
//                         $sheet->getCell('J'.$x)->setValue("");
//                     }else{
//                         if($modo==1){
//                             if($value[$i]['teopra']=="T"){
//                                 $teo=$sheet->getCell('I'.$x)->getValue();
//                                 $sheet->getCell('I'.$x)->setValue($teo+($horas[1]-$horas[0]));
//                             }else{
//                                 $prac=$sheet->getCell('J'.$x)->getValue();
//                                 $sheet->getCell('J'.$x)->setValue($prac+($horas[1]-$horas[0]));
//                             }
//                         }else{
//                             if($value[$i]['teopra']=="T"){
//                                 $teo=$sheet->getCell('I'.$x)->getValue();
//                                 $sheet->getCell('I'.$x)->setValue($teo.(($teo=="")?"":" / ").$value[$i]['dia']." ".$value[$i]['hora']);
//                             }else{
//                                 $prac=$sheet->getCell('J'.$x)->getValue();
//                                 $sheet->getCell('J'.$x)->setValue($prac.(($prac=="")?"":" / ").$value[$i]['dia']." ".$value[$i]['hora']);
//                             }
//                         }
//                     }
//                         (isset($value[$i]['codAula']) && $value[$i]['codAula']!="")?array_push($arrayAula,$value[$i]['codAula']):null;
//                         (isset($value[$i]['codAula2']) && $value[$i]['codAula2']!="")?array_push($arrayAula,$value[$i]['codAula2']):null;
//                     // echo "<br>";
//                 }

//                 $sheet->getCell('L'.$x)->setValue($horLectivas)->getStyle()->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

//                 $horLectivasTotal+=$horLectivas;
//                 $arrayAula = array_unique($arrayAula);
                
//                 if($modo!=1){
//                     foreach ($arrayAula as $k => $valAula) {
//                         $codAula=$sheet->getCell('K'.$x)->getValue();
//                         $sheet->getCell('K'.$x)->setValue($codAula.(($codAula=="")?"":" / ").$valAula);
//                     }
//                 }else{
//                     $sheet->getCell('I'.$x)->getStyle()->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
//                     $sheet->getCell('J'.$x)->getStyle()->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
//                 }
//                 $x++;
//             }
//         }
//     $sheet->getCell("L".($xNombre+$totalSecciones))->setValue($horLectivasTotal)->getStyle()->applyFromArray([
//         'alignment' => [
//             'horizontal' => Alignment::HORIZONTAL_CENTER,
//             'vertical' => Alignment::VERTICAL_CENTER
//         ]
//     ]);

//     $sheet->getCell("L".($xNombre+$totalSecciones))->setValue($horLectivasTotal)->getStyle()->getFont()->setBold(true);
//     $x++;

//     foreach (range("B","F") as $k  => $val){
//         $sheet->mergeCells($val.$xNombre.':'.$val.($xNombre+$totalSecciones));
//         $sheet->getStyle($val.$xNombre)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
//         if($val!="C"){
//             $sheet->getStyle($val.$xNombre)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
//         }
//     }
//     $sheet->mergeCells("M".$xNombre.':'."M".($xNombre+$totalSecciones));

//     $sheet->getCell('B'.$xNombre)->setValue($n);
//     $sheet->getCell('G'.($xNombre+$totalSecciones))->setValue("TOTAL")->getStyle()->applyFromArray([
//         'alignment' => [
//             'horizontal' => Alignment::HORIZONTAL_RIGHT,
//             'vertical' => Alignment::VERTICAL_CENTER
//         ]
//     ]);
//     $sheet->getCell('G'.($xNombre+$totalSecciones))->getStyle()->getFont()->setBold(true);

//     $sheet->mergeCells('G'.($xNombre+$totalSecciones).":K".($xNombre+$totalSecciones));
//     $sheet->getRowDimension(($xNombre+$totalSecciones))->setRowHeight(20);
//     $sheet->getCell('C'.$xNombre)->setValue($valor['apePaterno']." ".$valor['apeMaterno'].", ".$valor['nombres'].
//     ((isset($valor['codUni']))?"\n".$valor['codUni']:"").((isset($valor['codDocente_fk']))?"\n".$valor['codDocente_fk']:""));

//     if($valor['condicion']=="C" && ($valor['categoria']!="RDR" && $valor['categoria']!="OS" && $valor['categoria']!="x")){
//         $sheet->getCell('D'.$xNombre)->setValue("D".$valor['condicion'].substr($valor['categoria'],0,1));
//         $sheet->getCell('E'.$xNombre)->setValue("D".$valor['condicion'].$valor['categoria']);
//     }else{
//         $sheet->getCell('D'.$xNombre)->setValue(($valor['condicion']!="x")?$valor['condicion']:"");
//         $sheet->getCell('E'.$xNombre)->setValue(($valor['categoria']!="x")?$valor['categoria']:"");
//     }

//     $sheet->getCell('F'.$xNombre)->setValue(($valor['dedicacion']!="x")?$valor['dedicacion']." - ".$valor['horas']."H":"");
//     $sheet->getCell('M'.$xNombre)->setValue(($valor['dedicacion']!=NULL)?$valor['observacion']:"")->getStyle()->getFont()->setBold(true);
//     $sheet->getStyle('M'.$xNombre)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
//     $sheet->getStyle('M'.$xNombre)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
//     $sheet->getStyle('M'.$xNombre)->getAlignment()->setWrapText(true);
//     $xNombre+=$totalSecciones+1;
// }

// $styleArray = [
//     'borders' => [
//         'allBorders' => [
//             'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
//             'color' => ['argb' => '#0000'],
//         ],
//     ],
// ];

// $sheet->getStyle('B'.($inicio-1).':M'.($xNombre-1))->applyFromArray($styleArray);

// foreach(range('B','M') as $columnID) {
//     $sheet->getColumnDimension($columnID)->setAutoSize(true);
// }
// $sheet->getColumnDimension("B")->setAutoSize(false)->setWidth(5);

// $sheet->getColumnDimension('A')->setWidth(3);
// $sheet->getColumnDimension('D')->setAutoSize(false);
// $sheet->getColumnDimension('D')->setWidth(7);
// $sheet->getColumnDimension('E')->setAutoSize(false);
// $sheet->getColumnDimension('E')->setWidth(7);
// $sheet->getColumnDimension('F')->setAutoSize(false);
// $sheet->getColumnDimension('F')->setWidth(7);
// $sheet->getColumnDimension('I')->setAutoSize(false);
// $sheet->getColumnDimension('I')->setWidth(20);
// $sheet->getColumnDimension('J')->setAutoSize(false);
// $sheet->getColumnDimension('J')->setWidth(20);
// $sheet->getColumnDimension('L')->setAutoSize(false);
// $sheet->getColumnDimension('L')->setWidth(8);
// $sheet->getColumnDimension('M')->setWidth(40);
// $sheet->getColumnDimension('M')->setAutoSize(false);

date_default_timezone_set('America/Bogota');
setlocale(LC_ALL, 'es_ES.UTF-8');
// /* Opciones de Impresion */
// $sheet->getHeaderFooter()->setOddFooter('&L&B'.ucwords(strftime("%A, %d de %B del %Y a las %I:%M ",time()).((strftime("%H",time())>=12)?"PM":"AM")).'&RPagina &P de &N');
// $sheet->getPageSetup()->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_LANDSCAPE);
// $sheet->getPageSetup()->setPaperSize(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::PAPERSIZE_A4);
// $sheet->getPageSetup()->setFitToWidth(1);
// $sheet->getPageSetup()->setFitToHeight(0);
// $sheet->getPageMargins()->setTop(0.6);
// $sheet->getPageMargins()->setRight(0.3);
// $sheet->getPageMargins()->setLeft(0.3);
// $sheet->getPageMargins()->setBottom(0.6);
// $sheet->getPageMargins()->setFooter(0.3);
// $sheet->getPageMargins()->setHeader(0.3);

/* fin de opciones */
header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment; filename="'.("HORARIOS $periodo POR DOCENTE$estadoText $tipoNombre ").'.xlsx"');

$writer = new Xlsx($spreadsheet);
$writer->save("php://output");

exit;