-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2020 at 10:48 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `OnlineShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id_address` int(15) NOT NULL,
  `id_user` int(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id_address`, `id_user`, `address`, `postcode`) VALUES
(2341, 1, 'C/Rafael Alberti 5 Malaga', 29130),
(2345, 2, 'C/ Larios 24 Malaga', 29123),
(3456, 1, 'Poligono Guadalhorce Malaga', 23455),
(1234, 3, 'C/ Edison Malaga', 98980),
(5678, 3, 'C/ Nueva BLQ 3 Malaga', 23180),
(8769, 4, 'Alameda de Capuchinos Malaga', 45697),
(6574, 5, 'C/ Competa BLQ2 4A Malaga', 56473),
(9801, 5, 'Poligono la Estrella Malaga', 29210),
(7654, 6, 'C/ Ayala Malaga', 90872),
(5012, 7, 'C/ Edisson 24 Malaga', 46255),
(2990, 8, 'C/ Carrascuca Malaga', 45637);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD KEY `id_user` (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `address-users` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
