-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23/06/2023 às 12:40
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
-- Banco de dados: `trab1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `homem`
--

CREATE TABLE `homem` (
  `cpf` int(11) NOT NULL,
  `nome` char(20) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mulher`
--

CREATE TABLE `mulher` (
  `cpf` int(11) NOT NULL,
  `nome` char(20) DEFAULT NULL,
  `cidade` char(20) DEFAULT NULL,
  `cpf_homem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `homem`
--
ALTER TABLE `homem`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `mulher`
--
ALTER TABLE `mulher`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `cpf_homem` (`cpf_homem`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `mulher`
--
ALTER TABLE `mulher`
  ADD CONSTRAINT `mulher_ibfk_1` FOREIGN KEY (`cpf_homem`) REFERENCES `homem` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
