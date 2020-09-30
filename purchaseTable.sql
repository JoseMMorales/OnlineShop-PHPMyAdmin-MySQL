-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2020 at 10:49 AM
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
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id_purchase` varchar(100) NOT NULL,
  `id_user` int(15) NOT NULL,
  `addresses` varchar(100) NOT NULL,
  `id_item` int(15) NOT NULL,
  `date_order` datetime NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` int(15) NOT NULL,
  `subtotal` int(15) NOT NULL,
  `iva` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id_purchase`, `id_user`, `addresses`, `id_item`, `date_order`, `quantity`, `price`, `subtotal`, `iva`) VALUES
('p001', 1, 'C/Rafael Alberti 5 Malaga', 90003, '2020-07-05 08:32:03', 2, 100, 200, '10'),
('p002', 1, 'C/Rafael Alberti 5 Malaga', 90008, '2020-07-05 14:19:00', 4, 10, 40, '10'),
('p003', 2, 'C/ Larios 24 Malaga', 90002, '2020-06-03 14:17:12', 1, 55, 55, '5'),
('p004', 2, 'C/ Larios 24 Malaga', 90007, '2020-05-13 18:07:00', 2, 20, 40, '12'),
('p005', 4, 'Alameda de Capuchinos Malaga\r\n', 90009, '2020-06-17 13:03:00', 1, 250, 250, '55'),
('p006', 8, 'C/ Carrascuca Malaga', 90009, '2020-04-14 09:32:10', 1, 250, 250, '55'),
('p007', 3, 'C/ Nueva BLQ 3 Malaga', 90014, '2020-02-02 15:14:00', 3, 12, 36, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id_purchase`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `price` (`price`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase-item` FOREIGN KEY (`id_item`) REFERENCES `items` (`id_item`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase-price` FOREIGN KEY (`price`) REFERENCES `items` (`price`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase-user` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
