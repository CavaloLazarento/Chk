-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29-Jul-2023 às 21:27
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `centraltropa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chk`
--

CREATE TABLE `chk` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chk`
--

INSERT INTO `chk` (`id`, `nome`, `estado`) VALUES
(1, 'AMAZON', 1),
(2, 'CIELO', 0),
(3, 'EREDE', 0),
(4, 'ASAAS', 1),
(5, 'CIELO', 0),
(6, 'EREDE', 0),
(7, 'E-mail v1', 0),
(8, 'E-mail v2', 0),
(9, 'E-mail v3', 0),
(10, 'XTRACER', 1),
(11, 'MARELLI', 1),
(12, 'NBA', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gift`
--

CREATE TABLE `gift` (
  `id` int(11) NOT NULL,
  `gift` varchar(30) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gift`
--

INSERT INTO `gift` (`id`, `gift`, `valor`) VALUES
(6, '9P4UBISCSW6O9ALV85H-', 100),
(8, 'UC7B5EPE0L2LOV6H6VF3', 1000),
(10, 'SNJFWX1M5XL6X2G5F7EW', 50),
(11, 'MJN1SJ4UI127B1QP8F75', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `giftusado`
--

CREATE TABLE `giftusado` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `giftusado` varchar(30) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `giftusado`
--

INSERT INTO `giftusado` (`id`, `user`, `giftusado`, `valor`) VALUES
(1, 'Kleber', '0CWSBP6FQIYOKLRKFENB', 100),
(2, 'Kleber', '0CWSBP6FQIYOKLRKFENB', 100),
(3, 'Kleber15', 'FOYLCHBYQWGC2QQPXT3V', 1000),
(4, 'Kleber155', 'ZG5MJKSOS9Q3CAMCESH7', 1000),
(5, 'Kleber155', '8GASKBYDEHK7JTYNCXLY', 100),
(6, 'Kleber1555', 'BJGF1B3HRMR111UMZJLM', 1000),
(7, 'Kleber1555', 'X5UTR6XZBAQJHQ8YDUTG', 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `idtelegram` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `saldo` int(11) NOT NULL,
  `lives` int(11) NOT NULL,
  `device_id` varchar(200) NOT NULL,
  `bloqueado` int(11) NOT NULL,
  `saldototal` int(11) NOT NULL,
  `tipologin` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `ip` varchar(200) NOT NULL,
  `host` varchar(200) NOT NULL,
  `banido` int(11) NOT NULL,
  `dias` int(11) NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `idtelegram`, `senha`, `saldo`, `lives`, `device_id`, `bloqueado`, `saldototal`, `tipologin`, `data`, `hora`, `ip`, `host`, `banido`, `dias`, `foto`) VALUES
(1, 'kw_systemdanger', '1872812343', 'kleber155', 100, 0, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 0, 150, 1, '2023-07-22', '11:22:00', '::1', '', 0, 8, 'fotosdeperfil/64c581f353cd9_Kw_systemdanger.png'),
(39, 'Kleber155', '1234567891', 'kleber155', 0, 0, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', 2, 0, 1, '2023-07-31', '08:42:00', '10.0.0.174', '10.0.0.174', 0, 8, 'fotosdeperfil/64c5815a7176e_Kleber155.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chk`
--
ALTER TABLE `chk`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `giftusado`
--
ALTER TABLE `giftusado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chk`
--
ALTER TABLE `chk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `giftusado`
--
ALTER TABLE `giftusado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
