<?php

include("Conn.php");

class Produto{

    public $conect;

    public function listarProdutos(){

        $conn = new Conn();

        $this->conect = $conn->conectar();
        $query = "SELECT id, nome, descricao, preco FROM produto ORDER BY id DESC LIMIT 40";
        $result = $this->conect->prepare($query);
        $result->execute();
        return $result->fetchAll();
    }
    
}
