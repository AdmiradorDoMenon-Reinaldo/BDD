-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16-Jun-2023 às 10:27
-- Versão do servidor: 8.0.25-0ubuntu0.20.04.1
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cliente_produto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int NOT NULL,
  `nome` char(50) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `rua` char(20) DEFAULT NULL,
  `cidade` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codproduto` int NOT NULL,
  `nome` char(50) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `descricao` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_cliente`
--

CREATE TABLE `produto_cliente` (
  `codprod_cli` int NOT NULL,
  `codproduto` int DEFAULT NULL,
  `codcliente` int DEFAULT NULL,
  `data_compra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codproduto`);

--
-- Índices para tabela `produto_cliente`
--
ALTER TABLE `produto_cliente`
  ADD PRIMARY KEY (`codprod_cli`),
  ADD KEY `codproduto` (`codproduto`),
  ADD KEY `codcliente` (`codcliente`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto_cliente`
--
ALTER TABLE `produto_cliente`
  ADD CONSTRAINT `produto_cliente_ibfk_1` FOREIGN KEY (`codproduto`) REFERENCES `produto` (`codproduto`),
  ADD CONSTRAINT `produto_cliente_ibfk_2` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
