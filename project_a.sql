-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 03:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `cek`
--

CREATE TABLE `cek` (
  `id` int(11) NOT NULL,
  `pompa` int(11) NOT NULL,
  `shift` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `nrp` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`nrp`, `nama`, `pass`) VALUES
('0119090', 'gudel astika', 'cbe78a87010d5893c19b601b8d15917a'),
('1234567', 'rr', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cek`
--

CREATE TABLE `tb_cek` (
  `id` int(11) NOT NULL,
  `pompa` varchar(10) NOT NULL,
  `shift` int(10) NOT NULL,
  `nama` text NOT NULL,
  `hm` int(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_cek`
--

INSERT INTO `tb_cek` (`id`, `pompa`, `shift`, `nama`, `hm`, `tanggal`) VALUES
(1, '1', 1, '1', 1, '2020-10-29'),
(2, '1', 1, '1', 1, '2020-10-29'),
(3, '1', 1, '1', 1, '2020-10-29'),
(4, '1', 1, '1', 1, '2020-10-29'),
(5, '1', 1, '1', 1, '2020-10-29'),
(6, '7103', 1, '487', 111, '2020-11-01'),
(7, '1', 1, '1', 1, '0000-00-00'),
(8, '22', 2, '222', 22, '2020-11-01'),
(9, '22', 2, '222', 22, '2020-11-01'),
(10, '22', 2, '222', 22, '2020-11-01'),
(11, 'WP7105', 1, 'GUDEL ASTIKA', 7777, '0000-00-00'),
(12, 'WP7105', 1, 'GUDEL ASTIKA', 7777, '0000-00-00'),
(13, 'WP7105', 1, 'GUDEL ASTIKA', 7777, '2020-11-02'),
(14, '1', 1, 'GUDEL ASTIKA', 1, '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `tower_lamp`
--

CREATE TABLE `tower_lamp` (
  `id` int(10) NOT NULL,
  `lamp` varchar(10) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `hm` varchar(10) NOT NULL,
  `fuel` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `water_pump`
--

CREATE TABLE `water_pump` (
  `id` int(10) NOT NULL,
  `water_pump` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `shift` int(6) NOT NULL,
  `rpm` int(10) NOT NULL,
  `hm` decimal(7,1) NOT NULL,
  `fuel_rate` int(10) NOT NULL,
  `engine_load` int(10) NOT NULL,
  `preasure` int(10) NOT NULL,
  `debit` decimal(10,2) NOT NULL,
  `elevasi` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `water_pump`
--

INSERT INTO `water_pump` (`id`, `water_pump`, `status`, `shift`, `rpm`, `hm`, `fuel_rate`, `engine_load`, `preasure`, `debit`, `elevasi`, `tanggal`, `keterangan`) VALUES
(238, 'wp7105', 'run', 1, 1100, '7581.0', 61, 74, 400, '0.00', 0, '2020-07-27', 'Running 07.30 - 13.30'),
(239, 'wp7103', 'stb', 1, 0, '13287.0', 0, 0, 0, '0.00', 0, '2020-07-27', ''),
(240, 'wp786', 'stb', 1, 0, '15013.0', 0, 0, 0, '0.00', 0, '2020-07-27', ''),
(241, 'wp7104', 'stb', 1, 0, '13651.8', 0, 0, 0, '0.00', 0, '2020-07-27', ''),
(242, 'wp779', 'stb', 1, 0, '6094.0', 0, 0, 0, '0.00', 0, '2020-07-27', ''),
(243, 'wp7104', 'stb', 1, 0, '13651.8', 0, 0, 0, '0.00', 0, '2020-07-27', '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1'),
(244, 'wp7104', 'stb', 1, 0, '13651.8', 0, 0, 0, '0.00', 0, '2020-07-27', '1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890'),
(246, 'wp779', 'stb', 1, 0, '6094.0', 0, 0, 0, '0.00', 12, '2020-07-27', ''),
(247, '12', '1', 1, 11, '1.0', 1, 1, 1, '1.00', 1, '2020-07-06', ''),
(256, 'wp111', '11', 1, 1, '1.0', 1, 11, 1, '1.00', 1, '2020-08-02', 'wwww'),
(257, 'gudel', '1', 1, 12, '1.2', 1, 1, 1, '1.00', 1, '2020-08-03', ''),
(258, 'gudel', '1', 1, 12, '1.2', 1, 1, 1, '1.00', 1, '0000-00-00', ''),
(259, '12', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-08-03', ''),
(260, '1', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-12-12', '1'),
(261, '1', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-08-03', ''),
(263, '1234', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-08-12', '1'),
(264, '1234', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-08-13', '1'),
(265, '1234', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-08-13', '1'),
(266, '', '', 0, 0, '0.0', 0, 0, 0, '0.00', 0, '0000-00-00', ''),
(267, '', '', 0, 0, '0.0', 0, 0, 0, '0.00', 0, '0000-00-00', ''),
(268, '1', '1', 1, 1, '1.0', 1, 111, 1, '11.00', 1, '2020-10-09', ''),
(269, '1', '1', 1, 1, '1.0', 1, 111, 1, '11.00', 1, '2020-10-09', ''),
(270, 'wpku', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-10-15', ''),
(271, '1', '112', 1, 0, '112.0', 0, 0, 0, '0.00', 0, '0000-00-00', ''),
(272, '1', '112', 1, 0, '112.0', 0, 0, 0, '0.00', 0, '0000-00-00', ''),
(273, '1', '112', 1, 0, '112.0', 0, 0, 0, '0.00', 0, '0000-00-00', ''),
(274, '1', '112', 1, 0, '112.0', 0, 0, 0, '0.00', 0, '0000-00-00', ''),
(275, '1', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-10-26', ''),
(276, '1', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-10-26', ''),
(277, '11', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-10-29', ''),
(278, '11', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-10-31', ''),
(279, '11', '1', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-10-31', ''),
(282, '1', '11', 1, 1, '1.0', 1, 1, 1, '1.00', 1, '2020-11-02', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek`
--
ALTER TABLE `cek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`nrp`);

--
-- Indexes for table `tb_cek`
--
ALTER TABLE `tb_cek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tower_lamp`
--
ALTER TABLE `tower_lamp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fuel` (`id`);

--
-- Indexes for table `water_pump`
--
ALTER TABLE `water_pump`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek`
--
ALTER TABLE `cek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_cek`
--
ALTER TABLE `tb_cek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tower_lamp`
--
ALTER TABLE `tower_lamp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `water_pump`
--
ALTER TABLE `water_pump`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
