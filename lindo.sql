-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18/10/2023 às 11:29
-- Versão do servidor: 11.0.2-MariaDB
-- Versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lindo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `gastos`
--

CREATE TABLE `gastos` (
  `cod_gasto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `gastos`
--

INSERT INTO `gastos` (`cod_gasto`, `nome`, `data_vencimento`, `valor`) VALUES
(1, 'luz', '2023-10-10', 137),
(2, 'agua', '2023-10-05', 231.8),
(3, 'internet', '2023-10-08', 119),
(4, 'cartao', '2023-10-02', 2879.32),
(5, 'netflix', '2023-10-07', 29.9),
(6, 'boleto', '2023-10-04', 851.87),
(7, 'tupperware', '2023-10-03', 50),
(8, 'celular', '2023-10-05', 79.9),
(9, 'transporte', '2023-10-04', 250);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`cod_gasto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gastos`
--
ALTER TABLE `gastos`
  MODIFY `cod_gasto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
