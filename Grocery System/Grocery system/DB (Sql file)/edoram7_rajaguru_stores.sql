-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2014 at 07:30 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rajaguru_stores`
--
CREATE DATABASE IF NOT EXISTS `edoram7_rajaguru_stores` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edoram7_rajaguru_stores`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `cus_id` int(10) NOT NULL AUTO_INCREMENT,
  `cus_name` text NOT NULL,
  `cus_phone_no` int(10) NOT NULL,
  `cus_address` varchar(250) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_password` varchar(50) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`cus_id`, `cus_name`, `cus_phone_no`, `cus_address`, `cus_email`, `cus_password`) VALUES
(2, 'Devindri Gunawardane', 7, '995/13,kotte road, rajagiriya', 'devindrig@gmail.com', '12345'),
(3, 'Thanula', 1234567890, 'dasd', 'dadsada@asda.com', '123'),
(5, 'Dhanuka Abeywardhane', 2147483647, '194/57 E, weera mawatha, pannipitiya', 'dansanrox@gmail.com', '1234'),
(6, 'Thanula ramsainghe', 716350089, '995/13,kotte road, rajagiriya', 'ramasinghe@gmail.com', '1234'),
(7, 'hansana jayathisa', 771943040, '995/13,kotte road, rajagiriya', 'hanasa@gmail.com', '123'),
(8, 'Thanula ramsainghe', 716350089, '995/13,kotte road, rajagiriya', 'thanularame@gmail.com', '123'),
(9, 'TEST', 716350089, 'TEST', 'test@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_type` varchar(10) NOT NULL,
  `not_dateTime` datetime NOT NULL,
  `not_message` text NOT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`not_id`, `not_type`, `not_dateTime`, `not_message`) VALUES
(123, 'Low Stock', '2014-11-15 01:09:50', '5 Product in LOW STOCK'),
(124, 'Low Stock', '2014-11-15 01:36:14', '5 Product in LOW STOCK'),
(125, 'Low Stock', '2014-11-15 02:29:05', '5 Product in LOW STOCK'),
(126, 'Low Stock', '2014-11-15 02:36:41', '5 Product in LOW STOCK'),
(127, 'Low Stock', '2014-11-15 03:10:33', '5 Product in LOW STOCK'),
(128, 'Low Stock', '2014-11-15 03:14:20', '5 Product in LOW STOCK'),
(129, 'Low Stock', '2014-11-15 03:38:12', '5 Product in LOW STOCK'),
(130, 'Low Stock', '2014-11-15 03:39:08', '5 Product in LOW STOCK'),
(131, 'Low Stock', '2014-11-15 09:08:59', '5 Product in LOW STOCK'),
(132, 'Low Stock', '2014-11-15 09:16:55', '5 Product in LOW STOCK'),
(133, 'Low Stock', '2014-11-15 09:21:57', '5 Product in LOW STOCK'),
(134, 'Low Stock', '2014-11-15 09:26:43', '5 Product in LOW STOCK'),
(135, 'Low Stock', '2014-11-15 09:28:32', '5 Product in LOW STOCK'),
(136, 'Low Stock', '2014-11-15 09:35:08', '5 Product in LOW STOCK'),
(137, 'Low Stock', '2014-11-15 09:45:05', '4 Product in LOW STOCK'),
(138, 'Low Stock', '2014-11-15 10:30:56', '4 Product in LOW STOCK'),
(139, 'Low Stock', '2014-11-15 10:31:37', '4 Product in LOW STOCK'),
(140, 'Low Stock', '2014-11-15 10:32:45', '4 Product in LOW STOCK'),
(141, 'Low Stock', '2014-11-15 10:39:00', '4 Product in LOW STOCK'),
(142, 'Low Stock', '2014-11-15 10:43:46', '4 Product in LOW STOCK'),
(143, 'Low Stock', '2014-11-15 11:48:24', '4 Product in LOW STOCK'),
(144, 'Low Stock', '2014-11-15 13:02:43', '4 Product in LOW STOCK'),
(145, 'Low Stock', '2014-11-24 10:55:30', '4 Product in LOW STOCK'),
(146, 'New Order', '2014-11-24 11:00:30', '1 New Order...!'),
(147, 'Low Stock', '2014-11-24 11:06:51', '4 Product in LOW STOCK');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product`
--

CREATE TABLE IF NOT EXISTS `ordered_product` (
  `order_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  UNIQUE KEY `ordredProductOderID` (`order_id`,`product_id`),
  KEY `ordered_orderID` (`order_id`),
  KEY `ordered_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered_product`
--

INSERT INTO `ordered_product` (`order_id`, `product_id`, `quantity`) VALUES
(2, NULL, 5),
(5, 1, 6),
(6, 1, 3),
(7, 6, 6),
(8, 1, 2),
(8, 6, 1),
(9, 1, 2),
(9, 6, 6),
(10, 6, 20),
(12, 6, 2),
(13, 7, 10),
(14, 1, 1),
(15, 1, 1),
(16, 1, 1),
(17, 1, 3),
(18, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `cus_id` int(10) DEFAULT NULL,
  `order_cus_name` text NOT NULL,
  `order_cus_address` varchar(50) NOT NULL,
  `order_cus_phone` int(10) NOT NULL,
  `order_dateTime` datetime NOT NULL,
  `order_delivery_date` date NOT NULL,
  `order_delivery_time` varchar(100) NOT NULL,
  `delivery_anytime` text NOT NULL,
  `order_other_messages` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_customer_id` (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `cus_id`, `order_cus_name`, `order_cus_address`, `order_cus_phone`, `order_dateTime`, `order_delivery_date`, `order_delivery_time`, `delivery_anytime`, `order_other_messages`, `order_status`) VALUES
(2, 5, 'Dhanuka Abeywardhane', 'dsa/1asd/,asd2asd/2s,sad2s,asd/asd,sdasd/,asdasd/,', 1234567890, '2014-10-22 10:22:54', '2014-10-18', '00:00:06', '', 'LOl', ''),
(5, 5, 'Dhanuka Abeywardhane', 'dsa/1asd/,asd2asd/2s,sad2s,asd/asd,sdasd/,asdasd/,', 1234567890, '2014-10-23 07:20:41', '2014-10-09', '00:00:06', 'Anytime', '', 'Cancelled'),
(6, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-10-23 07:31:18', '2014-10-18', '00:00:09', '', 'Pleasecall when you came', 'Cancelled'),
(7, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-10-23 08:53:28', '2014-10-08', '00:00:06', 'Anytime', 'i l', 'Delivered'),
(8, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-10-23 09:23:40', '2014-10-17', '00:00:09', 'Anytime', '', 'Delivered'),
(9, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-10-23 10:07:39', '2014-10-18', '00:00:06', '', '', 'Delivered'),
(10, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-10-31 03:56:47', '2014-11-01', '6.00 AM - 9.00 AM', 'Anytime', 'LoL', 'Cancelled'),
(11, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-11-01 08:34:00', '2014-11-03', '6.00 AM - 9.00 AM', 'Anytime', '', ''),
(12, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-11-01 08:34:34', '2014-11-03', '6.00 AM - 9.00 AM', 'Anytime', '', 'Delivered'),
(13, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-11-02 03:54:21', '2014-11-03', '9.00 AM - 4.00 PM', 'Anytime', 'hahahaha', 'Cancelled'),
(14, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-11-10 08:14:13', '2014-11-14', '6.00 AM - 9.00 AM', 'Anytime', '', 'Delivered'),
(15, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-11-11 04:45:50', '2014-11-07', '6.00 AM - 9.00 AM', 'Anytime', '', 'Cancelled'),
(16, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 1234567890, '2014-11-11 04:55:16', '2014-11-07', '6.00 AM - 9.00 AM', '', '', ''),
(17, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 771943040, '2014-11-11 08:59:02', '2014-10-31', '6.00 AM - 9.00 AM', '', '', 'Cancelled'),
(18, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 2147483647, '2014-11-15 10:17:00', '2014-11-16', '6.00 AM - 9.00 AM', '', 'dsa', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `order_notify`
--

CREATE TABLE IF NOT EXISTS `order_notify` (
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_details` text NOT NULL,
  `product_image_name` varchar(60) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_details`, `product_image_name`) VALUES
(1, 'Anchor +', 890.00, 'Anchor (Fonterra) 1 KG', 'anchor.jpg'),
(2, 'Tiarra Layer Cake', 250.00, 'Tiarra Layer Cake (Chocolate) 200g', 'tiarra_layer_cake.jpg'),
(3, 'Lanka Soy ', 55.00, 'Lanka Soy (Soya meat) 80g', 'lanka_soy.jpg'),
(4, 'Brown Sugar', 70.00, 'Brown Sugar 1KG', 'brown_sugar.jpg'),
(5, 'Coca Cola', 220.00, 'Coca Cola Mega 1.5L', 'cocacola.jpg'),
(6, 'Newdele Yoaurghut ', 45.00, 'Newdele Yoaurghut  80g', 'newdele_yourghut.jpg'),
(7, 'Chillie Powder', 35.00, 'Chillie Powder (Wijaya products) 50g', 'wijaya_chillie_powder.JPG'),
(8, 'Lipton Tea ', 250.00, 'Lipton Tea 200g', 'lipton_tea.jpg'),
(9, 'Sunquik Apple Cordial', 325.00, 'Sunquik Apple Cordial 1L', 'sunquik_apple.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchased_products`
--

CREATE TABLE IF NOT EXISTS `purchased_products` (
  `transaction_id` int(10) NOT NULL,
  `bar_code` int(10) NOT NULL,
  `quantity` int(250) NOT NULL,
  `sub_price` double NOT NULL,
  UNIQUE KEY `pp_transID_barcode` (`transaction_id`,`bar_code`),
  KEY `pp_barcode` (`bar_code`),
  KEY `pp_transactionID` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchased_products`
--

INSERT INTO `purchased_products` (`transaction_id`, `bar_code`, `quantity`, `sub_price`) VALUES
(6, 25, 2, 1700),
(7, 26, 6, 1500),
(8, 35, 4, 1000),
(10, 33, 4, 1300),
(11, 26, 5, 1250),
(12, 26, 5, 1250),
(13, 32, 4, 1000),
(14, 32, 2, 500),
(15, 25, 2, 1780),
(19, 27, 10, 550),
(20, 25, 2, 1780),
(21, 25, 2, 1780),
(22, 25, 10, 8900),
(23, 25, 2, 1780),
(24, 25, 2, 1780),
(25, 25, 10, 8900),
(26, 25, 2, 1780),
(27, 25, 3, 2670),
(27, 26, 1, 250),
(27, 27, 2, 110),
(28, 30, 10, 700),
(30, 27, 10, 550),
(31, 25, 2, 1780),
(31, 27, 5, 275),
(32, 24, 1, 890);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `bar_code` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qauntity` int(10) NOT NULL,
  UNIQUE KEY `stockProductBarcode` (`bar_code`,`product_id`),
  KEY `stockProductID` (`product_id`),
  KEY `stockBarcode` (`bar_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`bar_code`, `product_id`, `qauntity`) VALUES
(24, 1, 19),
(25, 1, -17),
(26, 2, 4),
(27, 3, 3),
(28, 6, 20),
(29, 5, 20),
(32, 8, 19),
(33, 9, 1),
(40, 4, -10),
(41, 4, 10),
(42, 1, -12),
(43, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `stock_temp`
--

CREATE TABLE IF NOT EXISTS `stock_temp` (
  `bar_code` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qauntity` int(10) NOT NULL,
  UNIQUE KEY `stockProductBarcode` (`bar_code`,`product_id`),
  KEY `stockProductID` (`product_id`),
  KEY `stockBarcode` (`bar_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_temp`
--

INSERT INTO `stock_temp` (`bar_code`, `product_id`, `qauntity`) VALUES
(24, 1, 19),
(25, 1, -17),
(26, 2, 4),
(27, 3, 3),
(28, 6, 20),
(29, 5, 20),
(32, 8, 19),
(33, 9, 1),
(40, 4, -10),
(41, 4, 10),
(42, 1, -12),
(43, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `supplied_products`
--

CREATE TABLE IF NOT EXISTS `supplied_products` (
  `bar_code` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `supplied_qauntity` int(10) NOT NULL,
  `supplied_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `supplied_total_amount` double NOT NULL,
  PRIMARY KEY (`bar_code`),
  KEY `grnProductID` (`product_id`),
  KEY `grnSupplierID` (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `supplied_products`
--

INSERT INTO `supplied_products` (`bar_code`, `product_id`, `supplier_id`, `supplied_qauntity`, `supplied_date`, `expire_date`, `supplied_total_amount`) VALUES
(23, 3, 10, 20, '2014-01-01', '2015-01-01', 100),
(24, 1, 9, 10, '2014-01-01', '2015-01-01', 7000),
(25, 1, 9, 10, '2014-01-01', '2015-01-01', 5000),
(26, 2, NULL, 20, '2014-01-01', '2013-01-01', 1000),
(27, 3, NULL, 25, '2014-01-01', '2017-01-01', 1000),
(28, 6, 8, 30, '2014-01-01', '2017-01-01', 250),
(29, 5, NULL, 25, '2014-01-01', '2014-11-02', 2000),
(30, 4, 12, 10, '2014-01-01', '2017-01-01', 500),
(31, 7, 9, 20, '2014-01-01', '2017-01-01', 600),
(32, 8, NULL, 4, '2014-01-01', '2017-01-01', 900),
(33, 9, 9, 10, '2014-10-30', '2014-11-04', 2500),
(34, NULL, NULL, 20, '2014-01-01', '2017-01-01', 3000),
(35, NULL, 12, 8, '2014-01-01', '2017-01-01', 1500),
(36, 3, 10, 10, '2014-10-30', '2014-12-01', 400),
(37, 5, 12, 10, '2014-10-30', '2014-11-10', 1000),
(38, 4, 9, 10, '2014-01-01', '2013-01-01', 1000),
(39, 5, 9, 10, '2014-01-01', '2013-01-01', 2555),
(40, 4, 16, -10, '2014-01-01', '2014-01-01', -10000),
(41, 4, 9, 10, '2014-01-01', '2014-01-01', 0),
(42, 1, 10, -12, '2014-01-01', '2014-01-01', 100),
(43, 2, 10, 10, '2014-01-01', '2014-01-01', 20);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_details`
--

CREATE TABLE IF NOT EXISTS `supplier_details` (
  `supplier_id` int(10) NOT NULL,
  `supplier_name` text NOT NULL,
  `sup_nic` varchar(10) NOT NULL,
  `supplier_phone` int(10) NOT NULL,
  `supplier_email` varchar(50) NOT NULL,
  `supplier_address` varchar(250) NOT NULL,
  `other_details` text NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_details`
--

INSERT INTO `supplier_details` (`supplier_id`, `supplier_name`, `sup_nic`, `supplier_phone`, `supplier_email`, `supplier_address`, `other_details`) VALUES
(8, 'Samitha Rajaguru', '123456789V', 1234567890, 'dsad@sda.com', 'sdasdas', 'sdasdasd'),
(9, 'Devindri Gunawardena', '123456789V', 6456456, 'fghjdfg', 'fhjfgj', 'dsgsd'),
(10, 'Dhanuka Abeywardhane', '931682130V', 771943040, 'dansanrox@gmail.com', 'Pannipitiya', 'Good Supplier'),
(12, 'Hansana Jayathissa', '123456789V', 1234567890, 'dasda@dfsa.com', 'dasd', '2dasdasdf'),
(15, 'Navin Ruvinda', '123756789V', 1234567890, 'dasd@csc.com', 'asdsadasd', 'sadsadasd'),
(16, 'Yashan Tharindu', '123456789V', 1234567890, 'afasfa@csc.com', 'sda', 'sad'),
(18, 'hdfdgf', '123456789v', -123456789, 'jhfjghfg', 'fkjkffg', 'ngfjgj');

-- --------------------------------------------------------

--
-- Table structure for table `system_login`
--

CREATE TABLE IF NOT EXISTS `system_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `accesslevel` text NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_login`
--

INSERT INTO `system_login` (`username`, `password`, `accesslevel`) VALUES
('admin', 'admin@123', 'admin'),
('nonadmin', 'nonadmin@123', 'nonadmin');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` int(10) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `total_price` double(10,2) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `dateTime`, `total_price`) VALUES
(6, '2014-01-01 00:00:00', 1700.00),
(7, '2014-01-01 00:00:00', 1725.00),
(8, '2014-01-01 00:00:00', 1000.00),
(9, '2014-01-01 00:00:00', 550.00),
(10, '2014-10-31 00:00:00', 3800.00),
(11, '2014-10-31 00:00:00', 11.00),
(12, '2014-10-31 00:00:00', 1250.00),
(13, '2014-10-31 00:00:00', 3330.00),
(14, '2014-10-31 00:00:00', 610.00),
(15, '2014-10-31 00:00:00', 2505.00),
(16, '2014-10-31 00:00:00', 640.00),
(17, '2014-10-31 00:00:00', 275.00),
(18, '2014-10-31 00:00:00', 640.00),
(19, '2014-10-31 00:00:00', 9450.00),
(20, '2014-10-31 00:00:00', 1780.00),
(21, '2014-01-01 00:00:00', 1890.00),
(22, '2014-01-01 00:00:00', 9010.00),
(23, '2014-10-31 00:00:00', 2330.00),
(24, '2014-10-31 00:00:00', 1780.00),
(25, '2014-10-31 00:00:00', 8900.00),
(26, '2014-10-31 00:00:00', 26.00),
(27, '2014-10-31 00:00:00', 27.00),
(28, '2014-11-05 00:00:00', 700.00),
(29, '2014-11-12 00:00:00', 1000.00),
(30, '2014-11-14 12:17:38', 550.00),
(31, '2014-11-15 03:39:50', 2055.00),
(32, '2014-11-15 09:17:06', 890.00);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD CONSTRAINT `ordered_orderID` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordered_productID` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customer_details` (`cus_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `purchased_products`
--
ALTER TABLE `purchased_products`
  ADD CONSTRAINT `pp_barcode` FOREIGN KEY (`bar_code`) REFERENCES `supplied_products` (`bar_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pp_transactionID` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stockBarcode` FOREIGN KEY (`bar_code`) REFERENCES `supplied_products` (`bar_code`),
  ADD CONSTRAINT `stockProductID` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplied_products`
--
ALTER TABLE `supplied_products`
  ADD CONSTRAINT `grn_productID` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `grn_supplierID` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_details` (`supplier_id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
