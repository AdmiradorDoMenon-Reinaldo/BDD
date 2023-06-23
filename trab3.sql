-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23/06/2023 às 13:09
-- Versão do servidor: 10.11.2-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trab3`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` int(11) NOT NULL,
  `nome` char(20) DEFAULT NULL,
  `cidade` char(20) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_compram_pecas`
--

CREATE TABLE `clientes_compram_pecas` (
  `id_compra` int(5) NOT NULL,
  `cod_peca` int(5) DEFAULT NULL,
  `cpf_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pecas`
--

CREATE TABLE `pecas` (
  `cod_pecas` int(5) NOT NULL,
  `nome` char(20) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `observacoes` char(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `clientes_compram_pecas`
--
ALTER TABLE `clientes_compram_pecas`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `cod_peca` (`cod_peca`),
  ADD KEY `cpf_cliente` (`cpf_cliente`);

--
-- Índices de tabela `pecas`
--
ALTER TABLE `pecas`
  ADD PRIMARY KEY (`cod_pecas`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `clientes_compram_pecas`
--
ALTER TABLE `clientes_compram_pecas`
  ADD CONSTRAINT `clientes_compram_pecas_ibfk_1` FOREIGN KEY (`cod_peca`) REFERENCES `pecas` (`cod_pecas`),
  ADD CONSTRAINT `clientes_compram_pecas_ibfk_2` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
