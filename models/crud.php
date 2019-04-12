<?php

class  crud {
    private $id;
    private $nombres;
    private $apellidos;
    private $direccion;
    private $telefono;


public function Listar(){ 
    $cn=new ClassConexion(); //Instancia de la clase conexión
    $mysqli=$cn->Conectar();//se llama a la funcion Conectar; se supone que te retorno el objeto el cúal tiene a la clase mysqli
    $sql=$mysqli->prepare("call sp_listar_alumo()");//prepare: Permite hacer sentencias más preparada como el uso de parametros etc.
    $sql->execute();//Ejecuta una sentencia preparada(*prepare), devuelve el numero de filas afectado, nro de columnas entre otras
    $array=[];
    if($sql->{'error'}==''){//validamos al ejecutar el error es igual a  "" (osea nada)
    	$result=$sql->get_result(); //obtenemos el resultado de la ejecución

        while($myrow=$result->fetch_assoc()){ //fetch_assoc: Devuelve un array asociativo de strings que representa a
            //la fila obtenida del conjunto de resultados, donde cada clave del array representa el nombre de una de las columnas de éste; o NULL si no hubieran más filas en dicho conjunto de resultados.
    		$array[]=$myrow;//insertara los conjuntos de registros por separado en el array
 
    	}

    	$res=$array;

    }else{//si hubo error entonces:
    	$res=$sql->{'error'}; //el mensaje de error lo almacenamos en res; es parecido a la validación del mensaje de error de la conexión
    }
    return $res;//retornara el resultado

}

}
?>