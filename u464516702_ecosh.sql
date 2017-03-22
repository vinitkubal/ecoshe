
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2017 at 03:35 PM
-- Server version: 10.0.28-MariaDB-wsrep
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u464516702_ecosh`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_email` varchar(100) NOT NULL,
  `prod_id` int(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_img` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `prod_price` int(100) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE IF NOT EXISTS `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `prod_img` varchar(250) NOT NULL,
  `sal` varchar(100) NOT NULL,
  `current` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `f_name`, `l_name`, `address`, `pin`, `prod_img`, `sal`, `current`) VALUES
(5, 'Omprakash', 'Sharma', 'Vasai Mumbai', '403301', 'farmer.jpg', '15000', '500');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(50) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(100) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`) VALUES
(1, 'Sanitary Pad', 'sanitary-pads.gif', 'Eco friendly pads and they are easily disposable', '3'),
(2, 'Crepe Bandage', 'creap.jpg', 'Eco friendly bandage and they are easily disposable', '100'),
(3, 'Panty Liner', 'idk.png', 'Eco friendly Liner and they are easily disposable', '3');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `te_id` int(11) NOT NULL AUTO_INCREMENT,
  `te_name` varchar(100) NOT NULL,
  `te_img` varchar(200) NOT NULL,
  `te_desg` varchar(100) NOT NULL,
  PRIMARY KEY (`te_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`te_id`, `te_name`, `te_img`, `te_desg`) VALUES
(1, 'Omik Save', 'photo.jpg', ' Chief Executing Officer'),
(3, 'Urvi Sanghavi', 'urvi.JPG', 'Chief Operating Officer'),
(4, 'Vinit Kubal', 'vinit.jpg', 'Chief Information Officer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(100) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_pwd` varchar(100) NOT NULL,
  `u_address` varchar(100) NOT NULL,
  `u_pin` varchar(100) NOT NULL,
  `u_contact` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `u_name`, `u_email`, `u_pwd`, `u_address`, `u_pin`, `u_contact`) VALUES
(1, 'Vinit Kubal', 'vinitkubal93@gmail.com', 'qwerty', 'Mumbai', '400049', '9833756446');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
