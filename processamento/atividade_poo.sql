-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Abr-2023 às 21:41
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atividade_poo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `n_pedido` int(11) NOT NULL,
  `dt_pedido` date NOT NULL,
  `valor_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`n_pedido`, `dt_pedido`, `valor_total`) VALUES
(1, '2023-04-13', 222.2),
(2, '2023-04-22', 226.9),
(3, '2023-04-02', 220.5),
(4, '2023-04-04', 250.22),
(5, '2023-04-15', 250.22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `salario` double NOT NULL,
  `dt_admissao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `nome`, `cargo`, `salario`, `dt_admissao`) VALUES
(1, 'Jonas ', 'Padeiro', 1200.9, '2023-04-16'),
(2, 'Claudio', 'Faxineiro', 1500, '2023-04-23'),
(3, 'Geraldo', 'Programador', 2500, '2023-04-24'),
(4, 'Paulo', 'Carpinteiro', 900, '2023-04-12'),
(5, 'Pedro', 'Pedreiro', 1500, '2023-04-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `autor` varchar(25) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`codigo`, `titulo`, `autor`, `preco`) VALUES
(1, 'Diario de um banana 9', 'Pereira', 49.9),
(2, 'Diario de um banana  5', 'Mocreio', 29.9),
(3, 'Diario de um banana  2', 'Teste', 199.9),
(4, 'Diario de um banana ', 'Alô', 89.9),
(5, 'Peter Pan', 'Lucas Ito', 99.9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `cod` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `dt_postagem` date NOT NULL,
  `conteudo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`cod`, `titulo`, `dt_postagem`, `conteudo`) VALUES
(1, 'Assaltante tenta roubar onibus, mulher reage,', '2023-04-02', 'Assaltante tenta roubar onibus, mulher reage, é agredido e chama a policia'),
(2, 'Como Perdi 90 kg em um dia ', '2023-04-03', 'Como Perdi 90 kg em um dia '),
(3, 'Mulher apelida seu filho de Maria Eugênia Lon', '2023-04-04', 'Mulher apelida seu filho de Maria Eugênia Longo Cabelo Campos'),
(4, 'Como Ganhar no Jogo do Bicho', '2023-04-05', 'Como Ganhar no Jogo do Bicho'),
(5, 'Mataram o Coelho de Paulo', '2023-04-06', 'Mataram o Coelho de Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) VALUES
(1, 'Computador', 'Computador Uai', 30.5),
(2, 'Monitor', 'Monitor Uai', 21.5),
(3, 'Teclado ', 'Teclado Uai', 25.5),
(4, 'Vassora', 'Vassora Uai', 23.5),
(5, 'Pistola de Airsoft', 'Pistola de Airsoft Uai', 22.5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`n_pedido`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idfuncionario`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
