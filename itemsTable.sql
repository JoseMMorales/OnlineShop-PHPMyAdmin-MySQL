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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_item` int(15) NOT NULL,
  `name_item` varchar(100) NOT NULL,
  `id_category` varchar(100) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_item`, `name_item`, `id_category`, `price`) VALUES
(90000, 'Nike Air', 'c001', 120),
(90001, 'Waterproof Boots', 'c001', 90),
(90002, 'Security Shoes', 'c001', 55),
(90003, 'NB Brown Sneaker ', 'c001', 100),
(90004, 'Quiksilver Black Sandals', 'c002', 25),
(90005, 'CK Style Gold Sandals', 'c002', 45),
(90006, 'Hairy Black Slippers', 'c002', 15),
(90007, 'Cool Beach Sandals', 'c002', 20),
(90008, 'Black basic socks', 'c003', 10),
(90009, 'Dolce Gabbana Silver Bag', 'c003', 250),
(90010, 'Leather black belt ', 'c003', 30),
(90011, 'One-Strap Sandals', 'c002', 90),
(90012, 'Martinelli Black Shoes', 'c001', 120),
(90013, 'Lace-Up Pink Shoes', 'c001', 75),
(90014, 'Replacement Footbeds ', 'c003', 12),
(90015, 'Thong Sandals', 'c002', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `price` (`price`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items-category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id-category`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
