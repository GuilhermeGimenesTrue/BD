-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/09/2025 às 23:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 60, '1º Andar'),
(3, 55, '2º Andar'),
(4, 40, '3º Andar'),
(5, 45, '4º Andar'),
(6, 50, '5º Andar'),
(7, 35, '6º Andar'),
(8, 30, '7º Andar'),
(9, 25, '8º Andar'),
(10, 20, 'Subsolo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `datnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `cpf`, `datnasc`, `nome`) VALUES
(1, '12345678901', '1985-05-10 00:00:00', 'João da Silva'),
(2, '23456789012', '1990-07-22 00:00:00', 'Maria Oliveira'),
(4, '45678901234', '1995-03-30 00:00:00', 'Ana Paula'),
(5, '56789012345', '1978-09-05 00:00:00', 'Roberto Lima'),
(6, '67890123456', '1988-11-11 00:00:00', 'Fernanda Costa'),
(7, '78901234567', '2000-01-20 00:00:00', 'Lucas Mendes'),
(8, '89012345678', '1993-06-14 00:00:00', 'Juliana Rocha'),
(9, '90123456789', '1987-08-25 00:00:00', 'Ricardo Santos'),
(10, '01234567890', '1999-10-02 00:00:00', 'Patrícia Nunes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `codVeiculo` int(11) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `codVeiculo`, `codLugar`) VALUES
(1, '2025-09-01 10:30:00', '2025-09-01 00:00:00', '2025-09-01 08:00:00', '2025-09-01 00:00:00', 1, 1),
(2, '2025-09-01 11:45:00', '2025-09-01 00:00:00', '2025-09-01 09:15:00', '2025-09-01 00:00:00', 2, 2),
(4, '2025-09-01 13:20:00', '2025-09-01 00:00:00', '2025-09-01 11:00:00', '2025-09-01 00:00:00', 4, 4),
(5, '2025-09-01 14:10:00', '2025-09-01 00:00:00', '2025-09-01 12:30:00', '2025-09-01 00:00:00', 5, 5),
(6, '2025-09-01 15:40:00', '2025-09-01 00:00:00', '2025-09-01 13:15:00', '2025-09-01 00:00:00', 6, 6),
(7, '2025-09-01 16:00:00', '2025-09-01 00:00:00', '2025-09-01 14:00:00', '2025-09-01 00:00:00', 7, 7),
(8, '2025-09-01 17:30:00', '2025-09-01 00:00:00', '2025-09-01 15:10:00', '2025-09-01 00:00:00', 8, 8),
(9, '2025-09-01 18:45:00', '2025-09-01 00:00:00', '2025-09-01 16:20:00', '2025-09-01 00:00:00', 9, 9),
(10, '2025-09-01 19:00:00', '2025-09-01 00:00:00', '2025-09-01 17:40:00', '2025-09-01 00:00:00', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Gol'),
(2, 'Palio'),
(3, 'Civic'),
(4, 'Corolla'),
(5, 'Onix'),
(6, 'Uno'),
(7, 'Fiesta'),
(8, 'HB20'),
(9, 'Suzuki'),
(10, 'Compass');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `codVeiculo` int(11) NOT NULL,
  `placa` char(7) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`codVeiculo`, `placa`, `cor`, `codCliente`, `codModelo`) VALUES
(1, 'ABC1234', 'Preto', 1, 1),
(2, 'DEF5678', 'Verde', 2, 2),
(4, 'JKL3456', 'Azul', 4, 4),
(5, 'MNO7890', 'Vermelho', 5, 5),
(6, 'PQR2345', 'Verde', 6, 6),
(7, 'STU6789', 'Cinza', 7, 7),
(8, 'VWX0123', 'Amarelo', 8, 8),
(9, 'YZA4567', 'Preto', 9, 9),
(10, 'BCD8901', 'Branco', 10, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `codVeiculo` (`codVeiculo`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codVeiculo`),
  ADD KEY `codCliente` (`codCliente`),
  ADD KEY `codModelo` (`codModelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `codVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`codVeiculo`) REFERENCES `veiculo` (`codVeiculo`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
