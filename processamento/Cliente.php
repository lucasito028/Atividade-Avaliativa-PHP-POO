<?php

include("Conn.php");

class Cliente{

    public $conect;

    public function getPedidos(){

        $conn = new Conn();

        $this->conect = $conn->conectar();
        $query = "SELECT n_pedido, dt_pedido, valor_total FROM cliente ORDER BY n_pedido DESC LIMIT 40";
        $result = $this->conect->prepare($query);
        $result->execute();
        return $result->fetchAll();
    }
    
}
