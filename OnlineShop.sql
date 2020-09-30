-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2020 at 10:38 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id-category` varchar(100) NOT NULL,
  `title_category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id-category`, `title_category`, `description`) VALUES
('c001', 'shoes', 'Autumn and spring models including heels and boot for winter '),
('c002', 'sandals', 'Perfect for the beach comfy and fresh styling combinations '),
('c003', 'accessories', 'Thousands accessories to combine with best outfit for men and women');

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `last_purchase_by_user`
-- (See below for the actual view)
--
CREATE TABLE `last_purchase_by_user` (
`ID_USER` int(15)
,`USER_NAME` varchar(90)
,`LAST PURCHASE` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_purchase/wishlist`
-- (See below for the actual view)
--
CREATE TABLE `list_purchase/wishlist` (
`Option` varchar(8)
,`name_user` varchar(90)
,`name_item` varchar(100)
,`Users` int(15)
,`ID` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_purchase/wishlist_qtysold`
-- (See below for the actual view)
--
CREATE TABLE `list_purchase/wishlist_qtysold` (
`Type` varchar(8)
,`ID` int(15)
,`NameItem` varchar(100)
,`QTYSold` decimal(41,0)
,`QTYWishlisted` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_top_sales`
-- (See below for the actual view)
--
CREATE TABLE `list_top_sales` (
`ID` int(15)
,`Item Name` varchar(100)
,`Total Sales` decimal(41,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `lis_purchase/wishlist_by_user`
-- (See below for the actual view)
--
CREATE TABLE `lis_purchase/wishlist_by_user` (
`Option` varchar(8)
,`Name_User` varchar(90)
,`Name_Item` varchar(100)
,`Users` int(15)
,`ID` varchar(100)
);

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

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id_user` int(15) NOT NULL,
  `name_user` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id_user`, `name_user`) VALUES
(1, 'John Leningrad'),
(2, 'Michael Callahan'),
(3, 'Isabel Garcia'),
(4, 'Isabel Garcia'),
(5, 'Jose Monolite'),
(6, 'Jay Phillips'),
(7, 'Simon Polonus'),
(8, 'Patricia Alarcon');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id_wish` varchar(15) NOT NULL,
  `id_user` int(15) NOT NULL,
  `id_item` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id_wish`, `id_user`, `id_item`) VALUES
('w001', 1, 90000),
('w002', 3, 90008),
('w003', 6, 90005),
('w004', 8, 90003),
('w005', 1, 90001),
('w006', 5, 90005),
('w007', 8, 90005);

-- --------------------------------------------------------

--
-- Structure for view `last_purchase_by_user`
--
DROP TABLE IF EXISTS `last_purchase_by_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`last_purchase_by_user`  AS  select `onlineshop`.`users`.`id_user` AS `ID_USER`,`onlineshop`.`users`.`name_user` AS `USER_NAME`,`onlineshop`.`purchase`.`date_order` AS `LAST PURCHASE` from ((`onlineshop`.`purchase` join `onlineshop`.`items` on(`onlineshop`.`purchase`.`id_item` = `onlineshop`.`items`.`id_item`)) join `onlineshop`.`users` on(`onlineshop`.`users`.`id_user` = `onlineshop`.`purchase`.`id_user`)) where `onlineshop`.`users`.`id_user` = 1 group by `onlineshop`.`purchase`.`id_item` order by `onlineshop`.`purchase`.`date_order` desc limit 1 ;

-- --------------------------------------------------------

--
-- Structure for view `list_purchase/wishlist`
--
DROP TABLE IF EXISTS `list_purchase/wishlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`list_purchase/wishlist`  AS  select 'Purchase' AS `Option`,`onlineshop`.`users`.`name_user` AS `name_user`,`onlineshop`.`items`.`name_item` AS `name_item`,`onlineshop`.`users`.`id_user` AS `Users`,`onlineshop`.`purchase`.`id_purchase` AS `ID` from ((`onlineshop`.`users` join `onlineshop`.`purchase` on(`onlineshop`.`users`.`id_user` = `onlineshop`.`purchase`.`id_user`)) join `onlineshop`.`items` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`purchase`.`id_item`)) union select 'Wishlist' AS `Option`,`onlineshop`.`users`.`name_user` AS `name_user`,`onlineshop`.`items`.`name_item` AS `name_item`,`onlineshop`.`users`.`id_user` AS `Users`,`onlineshop`.`wishlist`.`id_wish` AS `ID` from ((`onlineshop`.`users` join `onlineshop`.`wishlist` on(`onlineshop`.`users`.`id_user` = `onlineshop`.`wishlist`.`id_user`)) join `onlineshop`.`items` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`wishlist`.`id_item`)) ;

-- --------------------------------------------------------

--
-- Structure for view `list_purchase/wishlist_qtysold`
--
DROP TABLE IF EXISTS `list_purchase/wishlist_qtysold`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`list_purchase/wishlist_qtysold`  AS  (select 'Purchase' AS `Type`,`onlineshop`.`items`.`id_item` AS `ID`,`onlineshop`.`items`.`name_item` AS `NameItem`,sum(`onlineshop`.`purchase`.`quantity`) AS `QTYSold`,0 AS `QTYWishlisted` from (`onlineshop`.`purchase` join `onlineshop`.`items` on(`onlineshop`.`purchase`.`id_item` = `onlineshop`.`items`.`id_item`)) group by `onlineshop`.`purchase`.`id_item`) union (select 'Wishlist' AS `Type`,`onlineshop`.`items`.`id_item` AS `ID`,`onlineshop`.`items`.`name_item` AS `NameItem`,0 AS `0`,count(`onlineshop`.`wishlist`.`id_item`) AS `QTYWishlisted` from (`onlineshop`.`items` join `onlineshop`.`wishlist` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`wishlist`.`id_item`)) group by `onlineshop`.`wishlist`.`id_item`) ;

-- --------------------------------------------------------

--
-- Structure for view `list_top_sales`
--
DROP TABLE IF EXISTS `list_top_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`list_top_sales`  AS  select `onlineshop`.`items`.`id_item` AS `ID`,`onlineshop`.`items`.`name_item` AS `Item Name`,sum(`onlineshop`.`purchase`.`quantity`) AS `Total Sales` from (`onlineshop`.`items` join `onlineshop`.`purchase` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`purchase`.`id_item`)) group by `onlineshop`.`purchase`.`id_item` order by sum(`onlineshop`.`purchase`.`quantity`) desc limit 1 ;

-- --------------------------------------------------------

--
-- Structure for view `lis_purchase/wishlist_by_user`
--
DROP TABLE IF EXISTS `lis_purchase/wishlist_by_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onlineshop`.`lis_purchase/wishlist_by_user`  AS  select 'Purchase' AS `Option`,`onlineshop`.`users`.`name_user` AS `Name_User`,`onlineshop`.`items`.`name_item` AS `Name_Item`,`onlineshop`.`users`.`id_user` AS `Users`,`onlineshop`.`purchase`.`id_purchase` AS `ID` from ((`onlineshop`.`users` join `onlineshop`.`purchase` on(`onlineshop`.`users`.`id_user` = `onlineshop`.`purchase`.`id_user`)) join `onlineshop`.`items` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`purchase`.`id_item`)) where `onlineshop`.`users`.`id_user` = 1 union select 'Wishlist' AS `Option`,`onlineshop`.`users`.`name_user` AS `Name_User`,`onlineshop`.`items`.`name_item` AS `Name_Item`,`onlineshop`.`users`.`id_user` AS `Users`,`onlineshop`.`wishlist`.`id_wish` AS `ID` from ((`onlineshop`.`users` join `onlineshop`.`wishlist` on(`onlineshop`.`users`.`id_user` = `onlineshop`.`wishlist`.`id_user`)) join `onlineshop`.`items` on(`onlineshop`.`items`.`id_item` = `onlineshop`.`wishlist`.`id_item`)) where `onlineshop`.`users`.`id_user` = 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id-category`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id_purchase`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_wish`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `wish-address` (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `address-users` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items-category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id-category`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase-item` FOREIGN KEY (`id_item`) REFERENCES `items` (`id_item`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase-price` FOREIGN KEY (`price`) REFERENCES `items` (`price`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase-user` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wish-address` FOREIGN KEY (`id_user`) REFERENCES `addresses` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `wish-item` FOREIGN KEY (`id_item`) REFERENCES `items` (`id_item`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
