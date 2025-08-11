-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:54
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
CREATE TABLE `atendimento` (
  `codos` int(11) NOT NULL,
  `totalgeral` decimal(10,2) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `fk_carro_codcarro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codos`, `totalgeral`, `data`, `fk_carro_codcarro`) VALUES
(11, 500.75, '2025-08-01 10:00:00', NULL),
(12, 350.20, '2025-08-02 14:30:00', NULL),
(13, 400.50, '2025-08-03 16:45:00', NULL),
(14, 600.30, '2025-08-04 12:15:00', NULL),
(15, 250.00, '2025-08-05 09:00:00', NULL),
(16, 320.10, '2025-08-06 11:00:00', NULL),
(17, 550.90, '2025-08-07 13:30:00', NULL),
(18, 275.80, '2025-08-08 10:45:00', NULL),
(19, 460.60, '2025-08-09 15:00:00', NULL),
(20, 390.00, '2025-08-10 17:30:00', NULL),
(21, 500.75, '2025-08-01 10:00:00', NULL),
(22, 350.20, '2025-08-02 14:30:00', NULL),
(23, 400.50, '2025-08-03 16:45:00', NULL),
(24, 600.30, '2025-08-04 12:15:00', NULL),
(25, 250.00, '2025-08-05 09:00:00', NULL),
(26, 320.10, '2025-08-06 11:00:00', NULL),
(27, 550.90, '2025-08-07 13:30:00', NULL),
(28, 275.80, '2025-08-08 10:45:00', NULL),
(29, 460.60, '2025-08-09 15:00:00', NULL),
(30, 390.00, '2025-08-10 17:30:00', NULL),
(31, 500.75, '2025-08-01 10:00:00', NULL),
(32, 350.20, '2025-08-02 14:30:00', NULL),
(33, 400.50, '2025-08-03 16:45:00', NULL),
(34, 600.30, '2025-08-04 12:15:00', NULL),
(35, 250.00, '2025-08-05 09:00:00', NULL),
(36, 320.10, '2025-08-06 11:00:00', NULL),
(37, 550.90, '2025-08-07 13:30:00', NULL),
(38, 275.80, '2025-08-08 10:45:00', NULL),
(39, 460.60, '2025-08-09 15:00:00', NULL),
(40, 390.00, '2025-08-10 17:30:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

DROP TABLE IF EXISTS `atendimento_servico`;
CREATE TABLE `atendimento_servico` (
  `fk_servico_codservico` int(11) DEFAULT NULL,
  `fk_atendimento_codos` int(11) DEFAULT NULL,
  `totalserv` decimal(10,2) DEFAULT NULL,
  `qtde` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`fk_servico_codservico`, `fk_atendimento_codos`, `totalserv`, `qtde`) VALUES
(NULL, NULL, 150.00, '2'),
(NULL, NULL, 200.00, '3'),
(NULL, NULL, 100.00, '1'),
(NULL, NULL, 250.00, '1'),
(NULL, NULL, 120.00, '2'),
(NULL, NULL, 180.00, '2'),
(NULL, NULL, 275.00, '3'),
(NULL, NULL, 180.00, '1'),
(NULL, NULL, 220.00, '2'),
(NULL, NULL, 150.00, '2'),
(NULL, NULL, 150.00, '2'),
(NULL, NULL, 200.00, '3'),
(NULL, NULL, 100.00, '1'),
(NULL, NULL, 250.00, '1'),
(NULL, NULL, 120.00, '2'),
(NULL, NULL, 180.00, '2'),
(NULL, NULL, 275.00, '3'),
(NULL, NULL, 180.00, '1'),
(NULL, NULL, 220.00, '2'),
(NULL, NULL, 150.00, '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

DROP TABLE IF EXISTS `carro`;
CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `ano` char(6) DEFAULT NULL,
  `fk_modelo_codmodelo` int(11) DEFAULT NULL,
  `fk_cliente_codcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `ano`, `fk_modelo_codmodelo`, `fk_cliente_codcliente`) VALUES
(1, '2021', NULL, NULL),
(2, '2020', NULL, NULL),
(3, '2019', NULL, NULL),
(4, '2022', NULL, NULL),
(5, '2023', NULL, NULL),
(6, '2021', NULL, NULL),
(7, '2020', NULL, NULL),
(8, '2019', NULL, NULL),
(9, '2022', NULL, NULL),
(10, '2023', NULL, NULL),
(11, '2021', NULL, NULL),
(12, '2020', NULL, NULL),
(13, '2019', NULL, NULL),
(14, '2022', NULL, NULL),
(15, '2023', NULL, NULL),
(16, '2021', NULL, NULL),
(17, '2020', NULL, NULL),
(18, '2019', NULL, NULL),
(19, '2022', NULL, NULL),
(20, '2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` char(9) DEFAULT NULL,
  `codcliente` int(11) NOT NULL,
  `fk_edereco_codendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `email`, `telefone`, `codcliente`, `fk_edereco_codendereco`) VALUES
('João Silva', 'joao@gmail.com', '319999999', 1, NULL),
('Maria Souza', 'maria@gmail.com', '319888888', 2, NULL),
('Carlos Oliveira', 'carlos@gmail.com', '319777777', 3, NULL),
('Ana Pereira', 'ana@gmail.com', '319666666', 4, NULL),
('Lucas Costa', 'lucas@gmail.com', '319555555', 5, NULL),
('Fernanda Lima', 'fernanda@gmail.com', '319444444', 6, NULL),
('Marcos Santos', 'marcos@gmail.com', '319333333', 7, NULL),
('Patrícia Rocha', 'patricia@gmail.com', '319222222', 8, NULL),
('Rafael Almeida', 'rafael@gmail.com', '319111111', 9, NULL),
('Juliana Mendes', 'juliana@gmail.com', '319000000', 10, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `edereco`
--

DROP TABLE IF EXISTS `edereco`;
CREATE TABLE `edereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `num` char(6) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `edereco`
--

INSERT INTO `edereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua A', '123', 'Centro', 'Belo Horizonte', 'MG', '30123000'),
(2, 'Rua B', '456', 'Savassi', 'Belo Horizonte', 'MG', '30124000'),
(3, 'Rua C', '789', 'Floresta', 'Belo Horizonte', 'MG', '30125000'),
(4, 'Rua D', '321', 'Santo Antônio', 'Belo Horizonte', 'MG', '30126000'),
(5, 'Rua E', '654', 'Funcionários', 'Belo Horizonte', 'MG', '30127000'),
(6, 'Rua F', '987', 'Boa Vista', 'Belo Horizonte', 'MG', '30128000'),
(7, 'Rua G', '135', 'Pampulha', 'Belo Horizonte', 'MG', '30129000'),
(8, 'Rua H', '246', 'Cidade Nova', 'Belo Horizonte', 'MG', '30130000'),
(9, 'Rua I', '369', 'Barro Preto', 'Belo Horizonte', 'MG', '30131000'),
(10, 'Rua J', '420', 'Jardim Canadá', 'Belo Horizonte', 'MG', '30132000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(1, 'Fiat'),
(2, 'Chevrolet'),
(3, 'Volkswagen'),
(4, 'Ford'),
(5, 'Honda'),
(6, 'Hyundai'),
(7, 'Toyota'),
(8, 'Nissan'),
(9, 'BMW'),
(10, 'Mercedes-Benz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `fk_marca_codmarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `fk_marca_codmarca`) VALUES
(1, 'Uno', NULL),
(2, 'Corsa', NULL),
(3, 'Gol', NULL),
(4, 'Fusca', NULL),
(5, 'Civic', NULL),
(6, 'Elantra', NULL),
(7, 'Corolla', NULL),
(8, 'Sentra', NULL),
(9, '320i', NULL),
(10, 'Classe A', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

DROP TABLE IF EXISTS `servico`;
CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`) VALUES
(1, 'Troca de óleo', 50.00),
(2, 'Alinhamento', 80.00),
(3, 'Balanceamento', 60.00),
(4, 'Troca de filtro', 40.00),
(5, 'Revisão geral', 150.00),
(6, 'Troca de pastilhas de freio', 100.00),
(7, 'Troca de pneus', 300.00),
(8, 'Lavagem de carro', 30.00),
(9, 'Polimento', 120.00),
(10, 'Troca de bateria', 180.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codos`),
  ADD KEY `FK_atendimento_2` (`fk_carro_codcarro`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD KEY `FK_atendimento_servico_1` (`fk_servico_codservico`),
  ADD KEY `FK_atendimento_servico_2` (`fk_atendimento_codos`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `FK_carro_2` (`fk_modelo_codmodelo`),
  ADD KEY `FK_carro_3` (`fk_cliente_codcliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `FK_cliente_2` (`fk_edereco_codendereco`);

--
-- Índices de tabela `edereco`
--
ALTER TABLE `edereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `FK_modelo_2` (`fk_marca_codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `edereco`
--
ALTER TABLE `edereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `FK_atendimento_2` FOREIGN KEY (`fk_carro_codcarro`) REFERENCES `carro` (`codcarro`);

--
-- Restrições para tabelas `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `FK_atendimento_servico_1` FOREIGN KEY (`fk_servico_codservico`) REFERENCES `servico` (`codservico`),
  ADD CONSTRAINT `FK_atendimento_servico_2` FOREIGN KEY (`fk_atendimento_codos`) REFERENCES `atendimento` (`codos`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `FK_carro_2` FOREIGN KEY (`fk_modelo_codmodelo`) REFERENCES `modelo` (`codmodelo`),
  ADD CONSTRAINT `FK_carro_3` FOREIGN KEY (`fk_cliente_codcliente`) REFERENCES `cliente` (`codcliente`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_cliente_2` FOREIGN KEY (`fk_edereco_codendereco`) REFERENCES `edereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `FK_modelo_2` FOREIGN KEY (`fk_marca_codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
