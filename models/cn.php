<?php

Class ClassConexion{
    public $cn;
    protected $host;
    protected $usuario;
    protected $bd;
    protected $pass;
    public function  __construct(){
        $this->host='localhost';
        $this->usuario='root';
        $this->bd='ubigeo_peru';
        $this->pass='';
    }
    Public function Conectar(){
        $this->cn=new mysqli($this->host,$this->usuario,$this->pass,$this->bd);
        $this->cn->set_charset("utf8");
        if($this->cn->connect_errno>0){
           return NULL;
            // echo "Error";
        }else{
            return $this->cn;
            //echo "Bien";
        }
    }

    
    


}
?>