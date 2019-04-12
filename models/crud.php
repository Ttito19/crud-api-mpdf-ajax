<?php

class  crud {
    private $id;
    private $nombres;
    private $apellidos;
    private $direccion;
    private $telefono;


public function Listar(){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_listar_alumno()");
    $sql->execute();
    $array=[];
    if($sql->{'error'}==''){
    	$result=$sql->get_result();

    	while($myrow=$result->fetch_assoc()){
    		$array[]=$myrow;
 
    	}

    	$res=$array;

    }else{
    	$res=$sql->{'error'};
    }
    return $res;

}
public function Insertar(){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_insertar_alumno(?,?,?,?)");
    $sql->execute();  
}





}
?>