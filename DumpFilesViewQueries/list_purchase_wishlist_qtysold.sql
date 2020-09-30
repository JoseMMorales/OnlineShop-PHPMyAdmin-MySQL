-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2020 at 10:54 AM
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
-- Structure for view `list_purchase/wishlist_qtysold`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`list_purchase/wishlist_qtysold`  AS  (select 'Purchase' AS `Type`,`onlineshop`.`items`.`id_item` AS `ID`,`onlineshop`.`items`.`name_item` AS `NameItem`,sum(`onlineshop`.`purchase`.`quantity`) AS `QTYSold`,0 AS `QTYWishlisted` from (`onlineshop`.`purchase` join `onlineshop`.`items` on(`onlineshop`.`purchase`.`id_item` = `onlineshop`.`items`.`id_item`)) group by `onlineshop`.`purchase`.`id_item`) union (select 'Wishlist' AS `Type`,`onlineshop`.`items`.`id_item` AS `ID`,`onlineshop`.`items`.`name_item` AS `NameItem`,0 AS `0`,count(`onlineshop`.`wishlist`.`id_item`) AS `QTYWishlisted` from (`onlineshop`.`items` join `onlineshop`.`wishlist` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`wishlist`.`id_item`)) group by `onlineshop`.`wishlist`.`id_item`) ;

--
-- VIEW `list_purchase/wishlist_qtysold`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
