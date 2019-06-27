<?php

Class ClassConexion{
    public $cn; 
    protected $host;
    protected $usuario;
    protected $bd;
    protected $pass;
    public function  __construct(){  //El constructor siempre es lo primero a ejecutarse cuando se instancia una clase(Su uso es opcional); se puede parametros si se desea
        $this->host='localhost';
        $this->usuario='root';  //En este caso al instanciar esta clase lo primero que se hará es asignarle valores a tus variables(también llamadas propiedades)
        $this->bd='bdgoodpartner';
        $this->pass='123456';
    }
    Public function Conectar(){
        $this->cn=new mysqli($this->host,$this->usuario,$this->pass,$this->bd); /*En la variable cn se instancia la clase mysqli
        Al igual que tu clase conexion, la clase mysqli tiene un constructor la cual le pide párametros, los cuales son las de arriba(host, user, etc)
        */
        $this->cn->set_charset("utf8"); //set_charset es una función de esa clase, para mandarle el tippo de cotejamiento(es opcional usarla)
        if($this->cn->connect_errno>0){ //connect_errno función que devuelve un mensaje en caso de error, de lo contrario no devuelve nada
            //Nota sobre If de arriba: si reconoce que el mensaje de error fue mayor a 0, entonces si hubo error
           return NULL;
            // echo "Error";
        }else{
            return $this->cn; //si no hubo error estarías retornando el objeto cn(La cual es una instancia de la clase mysqli)
            //echo "Bien";
        }
    }

    
    /* public: Tanto tus propiedades como tus funciones son accesibles desde cualquier lugar, ejem: otras clases u instancias*/
    /* private: La variable/función solo puede ser utilizada desde la misma clase que la definio, no en una instancia ni similares*/
    /* protected: Similar a private pero también te da la opción de acceder a una clase que hereda de ella(Eso ya es herencia de clases)*/


}
?>