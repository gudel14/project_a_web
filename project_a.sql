-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 06:05 AM
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
('0123456', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('0987654', '1', '25d55ad283aa400af464c76d713c07ad'),
('1234567', '12', '25d55ad283aa400af464c76d713c07ad'),
('7654321', '12', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `water_pump`
--

CREATE TABLE `water_pump` (
  `id` int(10) NOT NULL,
  `water_pump` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `shift` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `water_pump`
--

INSERT INTO `water_pump` (`id`, `water_pump`, `status`, `shift`) VALUES
(1, '1', '1', '1'),
(2, '1', '1', '1'),
(3, '1', '1', '1'),
(4, 'wp7107', 'stb', 'siang'),
(5, 'wp7107', 'stb', 'siang'),
(6, 'wp7107', 'stb', 'siang'),
(7, 'wp7107', 'stb', 'siang'),
(8, 'wp7107', 'stb', 'siang'),
(9, 'wp7107', 'stb', 'siang'),
(10, 'wp7107', 'stb', 'siang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`nrp`);

--
-- Indexes for table `water_pump`
--
ALTER TABLE `water_pump`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `water_pump`
--
ALTER TABLE `water_pump`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
