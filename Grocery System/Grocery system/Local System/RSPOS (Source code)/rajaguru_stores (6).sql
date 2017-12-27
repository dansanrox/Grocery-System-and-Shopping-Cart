-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2014 at 10:02 AM
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
CREATE DATABASE IF NOT EXISTS `rajaguru_stores` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rajaguru_stores`;

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
(5, 'Dhanuka Abeywardhane', 771943040, '194/57 E, weera mawatha, pannipitiya', 'dansanrox@gmail.com', '1234'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`not_id`, `not_type`, `not_dateTime`, `not_message`) VALUES
(1, 'Low Stock', '2014-11-12 10:09:01', '2 Product in LOW STOCK'),
(2, 'Low Stock', '2014-11-12 10:10:23', '2 Product in LOW STOCK'),
(3, 'Low Stock', '2014-11-12 11:08:26', '2 Product in LOW STOCK'),
(4, 'New Order', '2014-11-12 11:13:40', '1 New Order...!'),
(5, 'Low Stock', '2014-11-12 11:20:46', '2 Product in LOW STOCK'),
(6, 'Low Stock', '2014-11-12 19:42:57', '2 Product in LOW STOCK'),
(7, 'Low Stock', '2014-11-12 19:56:04', '2 Product in LOW STOCK'),
(8, 'Low Stock', '2014-11-12 19:57:58', '2 Product in LOW STOCK'),
(9, 'Low Stock', '2014-11-12 21:28:09', '2 Product in LOW STOCK'),
(10, 'Low Stock', '2014-11-12 21:50:56', '2 Product in LOW STOCK'),
(11, 'Low Stock', '2014-11-12 21:52:44', '2 Product in LOW STOCK'),
(12, 'Low Stock', '2014-11-12 21:54:22', '2 Product in LOW STOCK'),
(13, 'Low Stock', '2014-11-12 22:04:34', '2 Product in LOW STOCK'),
(14, 'Low Stock', '2014-11-12 22:04:34', '2 Product in LOW STOCK'),
(15, 'Low Stock', '2014-11-12 22:45:15', '2 Product in LOW STOCK'),
(16, 'Low Stock', '2014-11-12 22:48:28', '2 Product in LOW STOCK'),
(17, 'Low Stock', '2014-11-12 22:51:06', '2 Product in LOW STOCK'),
(18, 'Low Stock', '2014-11-12 22:55:12', '2 Product in LOW STOCK'),
(19, 'Low Stock', '2014-11-12 23:02:40', '2 Product in LOW STOCK'),
(20, 'Low Stock', '2014-11-12 23:03:33', '2 Product in LOW STOCK'),
(21, 'Low Stock', '2014-11-12 23:07:38', '2 Product in LOW STOCK'),
(22, 'Low Stock', '2014-11-12 23:10:33', '2 Product in LOW STOCK'),
(23, 'Low Stock', '2014-11-12 23:26:12', '2 Product in LOW STOCK'),
(24, 'Low Stock', '2014-11-12 23:27:38', '2 Product in LOW STOCK'),
(25, 'Low Stock', '2014-11-12 23:32:10', '2 Product in LOW STOCK'),
(26, 'Low Stock', '2014-11-12 23:35:59', '2 Product in LOW STOCK'),
(27, 'Low Stock', '2014-11-13 00:14:10', '2 Product in LOW STOCK'),
(28, 'Low Stock', '2014-11-13 00:17:24', '2 Product in LOW STOCK'),
(29, 'Low Stock', '2014-11-13 00:18:09', '2 Product in LOW STOCK'),
(30, 'Low Stock', '2014-11-13 00:21:05', '2 Product in LOW STOCK'),
(31, 'Low Stock', '2014-11-13 00:22:10', '2 Product in LOW STOCK'),
(32, 'Low Stock', '2014-11-13 00:22:36', '2 Product in LOW STOCK'),
(33, 'Low Stock', '2014-11-13 00:23:19', '2 Product in LOW STOCK'),
(34, 'Low Stock', '2014-11-13 00:25:03', '2 Product in LOW STOCK'),
(35, 'Low Stock', '2014-11-13 00:28:24', '2 Product in LOW STOCK'),
(36, 'Low Stock', '2014-11-13 00:32:07', '2 Product in LOW STOCK'),
(37, 'Low Stock', '2014-11-13 00:33:43', '2 Product in LOW STOCK'),
(38, 'Low Stock', '2014-11-13 00:46:19', '2 Product in LOW STOCK'),
(39, 'Low Stock', '2014-11-13 00:46:50', '2 Product in LOW STOCK'),
(40, 'Low Stock', '2014-11-13 00:49:41', '2 Product in LOW STOCK'),
(41, 'Low Stock', '2014-11-13 00:52:11', '2 Product in LOW STOCK'),
(42, 'Low Stock', '2014-11-13 00:54:03', '2 Product in LOW STOCK'),
(43, 'Low Stock', '2014-11-13 01:03:46', '2 Product in LOW STOCK'),
(44, 'Low Stock', '2014-11-13 01:12:11', '2 Product in LOW STOCK'),
(45, 'Low Stock', '2014-11-13 01:15:40', '2 Product in LOW STOCK'),
(46, 'Low Stock', '2014-11-13 09:45:04', '2 Product in LOW STOCK'),
(47, 'Low Stock', '2014-11-13 09:53:11', '2 Product in LOW STOCK'),
(48, 'Low Stock', '2014-11-13 09:54:44', '2 Product in LOW STOCK'),
(49, 'Low Stock', '2014-11-13 10:28:37', '2 Product in LOW STOCK'),
(50, 'Low Stock', '2014-11-13 10:31:35', '2 Product in LOW STOCK'),
(51, 'Low Stock', '2014-11-13 10:34:35', '2 Product in LOW STOCK'),
(52, 'Low Stock', '2014-11-13 10:36:14', '2 Product in LOW STOCK'),
(53, 'Low Stock', '2014-11-13 10:39:38', '2 Product in LOW STOCK'),
(54, 'Low Stock', '2014-11-13 10:45:19', '2 Product in LOW STOCK'),
(55, 'Low Stock', '2014-11-13 11:06:39', '2 Product in LOW STOCK'),
(56, 'Low Stock', '2014-11-13 11:07:50', '2 Product in LOW STOCK'),
(57, 'Low Stock', '2014-11-13 11:15:25', '2 Product in LOW STOCK'),
(58, 'Low Stock', '2014-11-13 11:16:03', '2 Product in LOW STOCK'),
(59, 'Low Stock', '2014-11-13 11:47:36', '2 Product in LOW STOCK'),
(60, 'Low Stock', '2014-11-13 12:14:12', '2 Product in LOW STOCK'),
(61, 'Low Stock', '2014-11-13 12:16:32', '2 Product in LOW STOCK'),
(62, 'Low Stock', '2014-11-13 12:21:12', '2 Product in LOW STOCK'),
(63, 'Low Stock', '2014-11-13 12:23:45', '2 Product in LOW STOCK'),
(64, 'Low Stock', '2014-11-13 12:31:32', '2 Product in LOW STOCK'),
(65, 'Low Stock', '2014-11-13 12:33:14', '2 Product in LOW STOCK'),
(66, 'Low Stock', '2014-11-13 12:36:37', '2 Product in LOW STOCK'),
(67, 'Low Stock', '2014-11-13 12:37:44', '2 Product in LOW STOCK'),
(68, 'Low Stock', '2014-11-13 12:38:27', '2 Product in LOW STOCK'),
(69, 'Low Stock', '2014-11-13 13:08:24', '2 Product in LOW STOCK'),
(70, 'Low Stock', '2014-11-13 13:19:48', '2 Product in LOW STOCK'),
(71, 'Low Stock', '2014-11-13 14:23:32', '2 Product in LOW STOCK');

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
(17, 1, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

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
(17, 5, 'Dhanuka Abeywardhane', '194/57 E, weera mawatha, pannipitiya', 771943040, '2014-11-11 08:59:02', '2014-10-31', '6.00 AM - 9.00 AM', '', '', 'Cancelled');

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
(9, 'Sunquik Apple Cordial', 325.00, 'Sunquik Apple Cordial 1L', 'sunquik_apple.jpg'),
(10, 'Harpic', 200.00, 'harpic', 'default.jpg');

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
(9, 36, 10, 550),
(10, 33, 4, 1300),
(11, 26, 5, 1250),
(11, 36, 10, 550),
(12, 26, 5, 1250),
(13, 32, 4, 1000),
(14, 32, 2, 500),
(15, 25, 2, 1780),
(16, 28, 2, 90),
(17, 36, 5, 275),
(18, 28, 2, 90),
(18, 36, 10, 550),
(19, 27, 10, 550),
(20, 25, 2, 1780),
(21, 25, 2, 1780),
(21, 36, 2, 110),
(22, 25, 10, 8900),
(23, 25, 2, 1780),
(24, 25, 2, 1780),
(25, 25, 10, 8900),
(26, 25, 2, 1780),
(26, 28, 6, 270),
(27, 25, 3, 2670),
(27, 26, 1, 250),
(27, 27, 2, 110),
(28, 30, 10, 700);

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
(24, 1, 20),
(25, 1, -5),
(26, 2, 4),
(27, 3, 18),
(28, 6, 20),
(29, 5, 20),
(30, 4, 25),
(31, 7, 40),
(32, 8, 19),
(33, 9, 1);

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
(24, 1, 20),
(25, 1, -5),
(26, 2, 4),
(27, 3, 18),
(28, 6, 20),
(29, 5, 20),
(30, 4, 25),
(31, 7, 40),
(32, 8, 19),
(33, 9, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

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
(39, 5, 9, 10, '2014-01-01', '2013-01-01', 2555);

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
(17, ';--', '123123123V', 1231231231, 'dsa@gasf.ocm', 'asdasd', 'asdsad');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `dateTime`, `total_price`) VALUES
(5, '2014-01-01 00:00:00', 4250.00),
(6, '2014-01-01 00:00:00', 1700.00),
(7, '2014-01-01 00:00:00', 1725.00),
(8, '2014-01-01 00:00:00', 1000.00),
(9, '2014-01-01 00:00:00', 550.00),
(10, '2014-10-31 00:00:00', 3800.00),
(11, '2014-10-31 00:00:00', 1800.00),
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
(26, '2014-10-31 00:00:00', 2050.00),
(27, '2014-10-31 00:00:00', 27.00),
(28, '2014-11-05 00:00:00', 700.00),
(29, '2014-11-12 00:00:00', 1000.00);

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
