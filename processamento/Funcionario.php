<?php

include("Conn.php");

class Funcionario{

    public $conect;

    public function listarfuncionarios(){

        $conn = new Conn();

        $this->conect = $conn->conectar();
        $query = "SELECT idfuncionario, nome, cargo, salario, dt_admissao FROM funcionario ORDER BY nome ASC LIMIT 40";
        $result = $this->conect->prepare($query);
        $result->execute();
        return $result->fetchAll();
    }
    
}
