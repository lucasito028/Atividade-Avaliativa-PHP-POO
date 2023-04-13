<?php

include("Conn.php");

class Livro{

    public $conect;

    public function listarlivro(){

        $conn = new Conn();

        $this->conect = $conn->conectar();
        $query = "SELECT codigo, titulo, autor, preco FROM livro ORDER BY codigo DESC LIMIT 40";
        $result = $this->conect->prepare($query);
        $result->execute();
        return $result->fetchAll();
    }
    
}
