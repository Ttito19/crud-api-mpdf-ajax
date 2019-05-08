<?php

class  crud {
    private $id;
    private $dni;
    private $apellido;
    private $nombre;
    private $telefono;
    private $direccion;
    private $departamento;
    private $provincia;
    private $distrito;
    private $sexo;
    


public function Listar(){ 
    $cn=new ClassConexion(); //Instancia de la clase conexión
    $mysqli=$cn->Conectar();//se llama a la funcion Conectar; se supone que te retorno el objeto el cúal tiene a la clase mysqli
    $sql=$mysqli->prepare("call sp_listar_alumno()");//prepare: Permite hacer sentencias más preparada como el uso de parametros etc.
    $sql->execute();//Ejecuta una sentencia preparada(*prepare), devuelve el numero de filas afectado, nro de columnas entre otras
    $array=[];
    if($sql->{'error'}==''){//validamos al ejecutar el error es igual a  "" (osea nada)
    	$result=$sql->get_result(); //obtenemos el resultado de la ejecución
        if ($result->num_rows>0) {
            // echo "Existen ".    mysqli_num_rows($result)  . " resultados" ;
        while($myrow=$result->fetch_assoc()){ //fetch_assoc: Devuelve un array asociativo de strings que representa a
            //la fila obtenida del conjunto de resultados, donde cada clave del array representa el nombre de una de las columnas de éste; o NULL si no hubieran más filas en dicho conjunto de resultados.
    		$array[]=$myrow;//insertara los conjuntos de registros por separado en el array
 
    	}
    }else{
        echo "No hay resultados";
    }
    	$res=$array;

    }else{//si hubo error entonces:
    	$res=$sql->{'error'}; //el mensaje de error lo almacenamos en res; es parecido a la validación del mensaje de error de la conexión
    }
    // return $res;
    $json=json_encode($res,JSON_FORCE_OBJECT);
    return $json;//retornara el resultado

}
public function Insertar($dni,$apellido,$nombre,$telefono,$direccion,$departamento,$provincia,$distrito,$sexo){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_insertar_alumno(?,?,?,?,?,?,?,?,?)");
    $sql->bind_param('sssssiiis',$dni,$apellido,$nombre,$telefono,$direccion,
    $departamento,$provincia,$distrito,$sexo);
    $sql->execute();  
    if($sql->{'error'}==""){
        $res=$sql->get_result();
        $result=$res->fetch_assoc();
        // exit;
        //  return $res;
    }else{
        $result=$sql->{'error'};
    }
    $json = json_encode($result);
    return $json;
}


public function EditarId($id){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_procedure_edit_id(?)");
    $sql->bind_param('i',$id);
    $sql->execute();
    if($sql->{'error'}==""){
        $result=$sql->get_result();
        $res=$result->fetch_assoc();
        $rs=json_encode($res,JSON_FORCE_OBJECT);
        return $rs;
    }else{
        $result=$sql->{'error'};
        return $result;
    }
}

public function Editar($dni,$apellido,$nombre,$telefono,$direccion,$departamento,$provincia,$distrito,$sexo,$id){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_actualizar_alumno(?,?,?,?,?,?,?,?,?,?)");
    $sql->bind_param('sssssiiisi',$dni,$apellido,$nombre,$telefono,$direccion,
    $departamento,$provincia,$distrito,$sexo,$id);
    $sql->execute();
    if($sql->{'error'}==""){
        $result=$sql->get_result();
        return true;
    }else{
        $result=$sql->{'error'};
        return $result;
    } 
}

public function Eliminar($id){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare('call	sp_eliminar_alumno(?)');
    $sql->bind_param('i',$id);
    $sql->execute();
    if($sql->{'error'}==""){
        if($sql->affected_rows>0){
            return "bien";
        }else{
            return "mal";
        }
        
    }else{
        $result=$sql->{'error'};
        return $result;
    }
}

public function BuscarXnom($nombre){
    $cn=new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_buscar_alumno(?) ");
    $sql->bind_param('s',$nombre);
    $sql->execute();
    $array=[];
    if($sql->{'error'}==''){
        $result=$sql->get_result();
        
        if ($result->num_rows>0) {
            //echo "Existen ".    mysqli_num_rows($result)  . " resultados" ;
            while($myrow=$result->fetch_assoc()){ 
                $array[]=$myrow; 
            }
        }else{
            $array[]="vacio";
        // echo '<script>  alert("No hay resultados en la BBDD"); </script>' ;

        //   echo "No hay resultados";
        
    }
    $res=$array;
   // print_r($res);  
    }else{
        $res=$sql->{'error'};
    }
    //return $res;
   $json=json_encode($res,JSON_FORCE_OBJECT);
   return $json;//retornara el resultado


}

public function login($correo,$clave){
    $cn= new ClassConexion();
    $mysqli=$cn->Conectar();
    $sql=$mysqli->prepare("call sp_login(?,?)");
    $sql->bind_param('ss',$correo,$clave);
    $sql->execute();
    if($sql->{'error'}==''){
        $result=$sql->get_result();
        
    }else{
        $result=$sql->{'error'};
        
    }
    
return $result;
} 





}
?>