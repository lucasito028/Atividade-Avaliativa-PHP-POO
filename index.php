<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parte do Front-End da atividade</title>
</head>
<body>
    <?php

    /* Obs: Caso queira testar só tirar a "barra e asterisco()" que está comentado e caso queira voltar a não funcionar 
    e testar outro é só colocar */

    /*
    */
    
    //1.Produto
    /*include("processamento/Produto.php");
    echo "Produto<br>";
    $listar = new Produto();

    $resultado = $listar->listarProdutos();

    foreach($resultado as $linhas){
        extract($linhas);

        echo "$id <br>";
        echo "$nome <br>";
        echo "$descricao <br>";
        echo "$preco <br>";
        echo "<hr>";
    }*/


    //2.Cliente
    /*include("processamento/Cliente.php");
    echo "Clientes/Pedidos:<br>";
    $listar = new Cliente();

    $resultado = $listar->getPedidos();

    foreach($resultado as $linhas){
        extract($linhas);

        echo "$n_pedido <br>";
        echo "$dt_pedido <br>";
        echo "$valor_total <br>";
        echo "<hr>";
    }*/


    //3.Postagem
    /*include("processamento/Postagem.php");

    $listar = new Postagem();
    echo "Postagem:<br>";
    $resultado = $listar->listarpostagens();

    foreach($resultado as $linhas){
        extract($linhas);

        echo "$cod <br>";
        echo "$titulo <br>";
        echo "$dt_postagem <br>";
        echo "$conteudo <br>";
        echo "<hr>";
    }*/


    //4.Livro
    /*include("processamento/Livro.php");

    $listar = new Livro();
    echo "Livros:<br>";
    $resultado = $listar->listarlivro();

    foreach($resultado as $linhas){
        extract($linhas);

        echo "$codigo <br>";
        echo "$titulo <br>";
        echo "$autor <br>";
        echo "$preco <br>";
        echo "<hr>";
    }*/


    //5. Funcionario
    /*include("processamento/Funcionario.php");
    echo "Funcionario:<br>";
    $listar = new Funcionario();

    $resultado = $listar->listarfuncionarios();

    foreach($resultado as $linhas){
        extract($linhas);

        echo "$idfuncionario <br>";
        echo "$nome <br>";
        echo "$salario <br>";
        echo "$dt_admissao <br>";
        echo "<hr>";
    }*/
    ?>
</body>
</html>