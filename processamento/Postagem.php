<?php

include("Conn.php");

class Postagem{

    public $conect;

    public function listarpostagens(){

        $conn = new Conn();

        $this->conect = $conn->conectar();
        $query = "SELECT cod, titulo, dt_postagem, conteudo FROM postagem ORDER BY cod DESC LIMIT 40";
        $result = $this->conect->prepare($query);
        $result->execute();
        return $result->fetchAll();
    }
    
}
