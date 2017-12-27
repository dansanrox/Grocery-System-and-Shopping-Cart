-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2014 at 09:25 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hello_food`
--
CREATE DATABASE IF NOT EXISTS `hello_food` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hello_food`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `cus_id` int(10) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(50) NOT NULL,
  `cus_phone_no` int(10) NOT NULL,
  `cus_address` varchar(50) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_password` varchar(50) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`cus_id`, `cus_name`, `cus_phone_no`, `cus_address`, `cus_email`, `cus_password`) VALUES
(14, 'Dhanuka Abeywardhane', 771943040, 'No:190/57 E,weera mawatha, pannipitiya', 'dansanrox@gmail.com', '1234'),
(15, 'Devindri Gunawardane', 716350089, 'Rajagiriya', 'devindrig@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `daily_special`
--

CREATE TABLE IF NOT EXISTS `daily_special` (
  `product_code` varchar(10) NOT NULL,
  `special_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_special`
--

INSERT INTO `daily_special` (`product_code`, `special_price`) VALUES
('hf001', '800.00'),
('hf003', '450.00'),
('hf005', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_special`
--

CREATE TABLE IF NOT EXISTS `holiday_special` (
  `product_code` varchar(10) NOT NULL,
  `special_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday_special`
--

INSERT INTO `holiday_special` (`product_code`, `special_price`) VALUES
('hf010', '700.00'),
('hf014', '100.00'),
('hf015', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoicedproduct`
--

CREATE TABLE IF NOT EXISTS `invoicedproduct` (
  `invoice_id` int(10) NOT NULL,
  `product_code` varchar(10) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  UNIQUE KEY `invoice_id_product_code` (`invoice_id`,`product_code`),
  KEY `invoiceProduct_invoice_id` (`invoice_id`),
  KEY `invoiceProduct_product_code` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicedproduct`
--

INSERT INTO `invoicedproduct` (`invoice_id`, `product_code`, `quantity`) VALUES
(25, 'hf001', 0),
(26, 'hf006', 1),
(27, 'hf006', 1),
(27, 'hf009', 3),
(28, 'hf008', 4),
(28, 'hf013', 1),
(28, 'hf011', 1),
(29, 'hf015', 1),
(30, 'hf015', 1),
(30, 'hf004', 4),
(30, 'hf005', 4);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE IF NOT EXISTS `invoice_details` (
  `invoice_id` int(10) NOT NULL AUTO_INCREMENT,
  `cus_id` varchar(10) NOT NULL,
  `cus_name` text NOT NULL,
  `cus_address` varchar(50) NOT NULL,
  `cus_phone_no` int(10) NOT NULL,
  `ordered_date` datetime NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_specific_time` varchar(50) DEFAULT NULL,
  `delivery_anytime` text NOT NULL,
  `pay_method` text NOT NULL,
  `other_messages` text,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`invoice_id`, `cus_id`, `cus_name`, `cus_address`, `cus_phone_no`, `ordered_date`, `delivery_date`, `delivery_specific_time`, `delivery_anytime`, `pay_method`, `other_messages`) VALUES
(22, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-13 05:52:47', '2014-09-01', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', ''),
(23, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-13 05:54:27', '2014-09-21', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', ''),
(24, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 06:03:20', '2014-09-21', '9.00 AM - 4.00 PM', 'Anytime', 'Credit Card', ''),
(25, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 06:03:52', '2014-09-21', '9.00 AM - 4.00 PM', 'Anytime', 'Credit Card', ''),
(26, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 08:17:41', '2014-09-19', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', ''),
(27, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 08:22:27', '2014-09-19', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', ''),
(28, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 08:23:55', '2014-09-20', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', ''),
(29, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 04:13:28', '2014-09-15', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', ''),
(30, '14', 'Dhanuka Abeywardhane', 'No:190/57 E,weera mawatha, pannipitiya', 771943040, '2014-09-14 05:02:10', '2014-09-20', '6.00 AM - 9.00 AM', 'Anytime', 'Bank transfer', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` text NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `reg_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_code`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_code`, `product_name`, `product_desc`, `product_img_name`, `reg_price`) VALUES
('hf001', 'Chocolate Cheese Cake', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'freshCake1.jpg', '850.00'),
('hf002', 'Cheese Poof', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'freshCake2.jpg', '200.00'),
('hf003', 'Vanilla Ice Cake', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'freshCake3.jpg', '480.00'),
('hf004', 'Cheese Beef Burger', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'cheese_beef_burger.jpg', '350.00'),
('hf005', 'Cherry Pudding', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'cherry_pudding.jpg', '225.00'),
('hf006', 'Italian Cheese Pasta', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'italy_cheese_pasta.jpg', '500.00'),
('hf007', 'Pancake with Honey', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'pan_cake_honey.jpg', '150.00'),
('hf008', 'Strawberry Milk Shake', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'strawbery_milk_shake.jpg', '100.00'),
('hf009', 'Chocolate  Honey Cake ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'chocolate_cake_honey.jpg', '150.00'),
('hf010', 'Deviled Chicken Pizza', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'chicken_deviled_cheese_pizza.jpg', '850.00'),
('hf011', 'Chicken Burger', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'chicken_burger.jpg', '250.00'),
('hf012', 'Corn Cheese Pizza', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'corn_cheese_pizza.jpg', '1200.00'),
('hf013', 'Chips with honey', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'chips_honey.jpg', '120.00'),
('hf014', 'Chocolate Ice Cream', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'chocolate_ice_cream.jpg', '150.00'),
('hf015', 'Special Hello Rice', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'hello_special_rice.jpg', '350.00'),
('hf016', 'Special Hello Dessert', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. vivamus tempor justo sit amet metus cursus consequat. Nulla viverra, felis vel accumsan fermentum, nisl enim aliquam risus, id convallis mauris turpis iaculis felis. Etiam sollucitudin augue et turpis. Vivamus rutrum metus.', 'special_hello_dessert.jpg', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_special`
--

CREATE TABLE IF NOT EXISTS `weekly_special` (
  `product_code` varchar(10) NOT NULL,
  `special_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekly_special`
--

INSERT INTO `weekly_special` (`product_code`, `special_price`) VALUES
('hf006', '480.00'),
('hf007', '100.00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoicedproduct`
--
ALTER TABLE `invoicedproduct`
  ADD CONSTRAINT `invoiceProduct_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `invoice_details` (`invoice_id`),
  ADD CONSTRAINT `invoiceProduct_product_code` FOREIGN KEY (`product_code`) REFERENCES `products` (`product_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
