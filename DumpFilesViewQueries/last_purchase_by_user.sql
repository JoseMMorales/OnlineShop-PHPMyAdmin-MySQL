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
-- Structure for view `last_purchase_by_user`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`last_purchase_by_user`  AS  select `onlineshop`.`users`.`id_user` AS `ID_USER`,`onlineshop`.`users`.`name_user` AS `USER_NAME`,`onlineshop`.`purchase`.`date_order` AS `LAST PURCHASE` from ((`onlineshop`.`purchase` join `onlineshop`.`items` on(`onlineshop`.`purchase`.`id_item` = `onlineshop`.`items`.`id_item`)) join `onlineshop`.`users` on(`onlineshop`.`users`.`id_user` = `onlineshop`.`purchase`.`id_user`)) where `onlineshop`.`users`.`id_user` = 1 group by `onlineshop`.`purchase`.`id_item` order by `onlineshop`.`purchase`.`date_order` desc limit 1 ;

--
-- VIEW `last_purchase_by_user`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
