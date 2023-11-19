-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 06:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kleber155`
--

-- --------------------------------------------------------

--
-- Table structure for table `chk`
--

CREATE TABLE `chk` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chk`
--

INSERT INTO `chk` (`id`, `nome`, `estado`) VALUES
(1, 'AMAZON (V1)', 1),
(2, 'GG V1', 0),
(3, 'GG V2', 0),
(4, 'CC v1', 0),
(5, 'CC v2', 0),
(6, 'Cc v3', 0),
(7, 'E-mail v1', 1),
(8, 'E-mail v2', 0),
(9, 'E-mail v3', 0),
(10, 'Lojas v1', 0),
(11, 'Lojas v2', 0),
(12, 'Lojas v3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gift`
--

CREATE TABLE `gift` (
  `id` int(11) NOT NULL,
  `gift` varchar(30) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gift`
--

INSERT INTO `gift` (`id`, `gift`, `valor`) VALUES
(6, '9P4UBISCSW6O9ALV85H-', 100),
(8, 'UC7B5EPE0L2LOV6H6VF3', 1000),
(10, 'SNJFWX1M5XL6X2G5F7EW', 50);

-- --------------------------------------------------------

--
-- Table structure for table `giftusado`
--

CREATE TABLE `giftusado` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `giftusado` varchar(30) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `giftusado`
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
-- Table structure for table `usuarios`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `idtelegram`, `senha`, `saldo`, `lives`, `device_id`, `bloqueado`, `saldototal`, `tipologin`, `data`, `hora`, `ip`, `host`, `banido`, `dias`, `foto`) VALUES
(1, 'KW_SystemDanger', '5728280837', 'kleber155', 0, 55, '', 0, 300, 0, '0000-00-00', '00:00:00', '0', '0', 0, 0, 'fotosdeperfil/64baadb611336_Kw_systemdanger.png'),
(6, 'Patinhas', '5410042013', 'Deus2004', 0, 0, 'Mozilla/5.0 (Linux; Android 11) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile DuckDuckGo/5 Safari/537.36', 0, 0, 0, '0000-00-00', '00:00:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, ''),
(11, 'Nyuademir', '5624665245', 'Ademir171', 0, 0, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 0, 50, 1, '2023-07-21', '20:54:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, ''),
(12, 'AberamaGold', '5766101724', 'Santiago960', 0, 0, 'Mozilla/5.0 (Linux; Android 11; SM-A205G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 0, 50, 1, '2023-07-21', '20:53:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, ''),
(13, 'Rhavy20', '6077942918', '12345679', 0, 0, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 0, 50, 1, '2023-07-21', '20:53:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, ''),
(14, 'Thianinho', '1793495330', '130822', 0, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 0, 50, 1, '2023-07-21', '20:53:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, ''),
(39, 'Kleber155', '1872812345', 'kleber155', 100, 0, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 0, 150, 1, '2023-07-28', '11:22:00', '::1', '10.0.0.174', 0, 8, 'fotosdeperfil/64bb49836e908_Kleber155.png'),
(106, 'Jvdusete', '1740949494', '102030', 0, 0, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 0, 0, 0, '0000-00-00', '00:00:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, ''),
(107, 'h4s0ftelite', '1721874157', 'tata2020', 0, 0, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', 0, 0, 0, '0000-00-00', '00:00:00', '::1', '3e82-20-195-162-167.ngrok-free.app', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chk`
--
ALTER TABLE `chk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftusado`
--
ALTER TABLE `giftusado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chk`
--
ALTER TABLE `chk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `giftusado`
--
ALTER TABLE `giftusado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
