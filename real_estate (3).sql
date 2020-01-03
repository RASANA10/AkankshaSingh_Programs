-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2019 at 01:36 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `real_estate`
--
CREATE DATABASE IF NOT EXISTS `real_estate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `real_estate`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE IF NOT EXISTS `feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `feature`, `status`, `pid`) VALUES
(1, '', '1', 1),
(2, '', '1', 2),
(3, '', '1', 3),
(4, '', '1', 4),
(5, '', '1', 5),
(6, '', '1', 6),
(7, 'on,on,on,on,', '1', 7),
(8, 'on', '1', 8),
(9, 'on', '1', 8),
(10, 'on', '1', 8),
(11, 'on', '1', 8),
(12, 'Fire Place Facility', '1', 9),
(13, 'Marbel Floor', '1', 9),
(14, 'Fire Place Facility', '1', 10),
(15, 'Marbel Floor', '1', 10),
(16, 'Floor Heating System', '1', 10),
(17, 'Fire Place Facility', '1', 11),
(18, 'Marbel Floor', '1', 11),
(19, 'Floor Heating System', '1', 11),
(20, 'Fire Place Facility', '1', 12),
(21, 'Marbel Floor', '1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`, `pid`) VALUES
(1, '', 1),
(2, '', 2),
(3, '', 3),
(4, '', 4),
(5, '', 5),
(6, 'image/610891723.png', 6),
(7, 'image/950259399.png', 7),
(8, 'image/797027587.png', 8),
(9, 'image/561947631.png', 8),
(10, 'image/461669921.png', 8),
(11, 'image/486087036.png', 8),
(12, '', 9),
(13, '', 9),
(14, 'image/312200927.png', 10),
(15, 'image/197091674.png', 10),
(16, 'image/348620605.png', 10),
(17, 'image/560986328.png', 11),
(18, 'image/961575317.png', 11),
(19, 'image/286712646.png', 11),
(20, '', 12),
(21, '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `propertycontact`
--

CREATE TABLE IF NOT EXISTS `propertycontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `propertyinformation`
--

CREATE TABLE IF NOT EXISTS `propertyinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propertytitle` varchar(255) NOT NULL,
  `propertystatus` varchar(255) NOT NULL,
  `propertytypes` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `noofrooms` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `propertyaddress` varchar(255) NOT NULL,
  `propertylocation` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `propertyinformation`
--

INSERT INTO `propertyinformation` (`id`, `propertytitle`, `propertystatus`, `propertytypes`, `area`, `price`, `noofrooms`, `description`, `propertyaddress`, `propertylocation`, `state`, `city`, `zipcode`, `country`, `fullname`, `email`, `phonenumber`) VALUES
(1, '', '', '', '', '', '', '', '', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(2, '', '', '', '', '', '', '', '', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(3, '', '', '', '', '', '', '', '', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(4, '', '', '', '', '', '', '', '', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(5, '', '', '', '', '', '', '', '', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(6, 'uniland', 'active', 'for building', '', '', '', 'hshuhuihiujsku jnkjsjjkjkj', 'indrapuri', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(7, 'h', 'h', 'h', '', '', '', 'hhhh', 'h', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(8, 'h', 'h', 'h', '', '', '', 'hhhh', 'h', 'propertylocation', 'state', 'city', 'zipcode', 'country', '', '', 0),
(9, 'uniland', 'active', 'for building', '', '', '', 'gfvhjnjnkj', 'indrapuri', 'propertylocation', 'state', 'city', 'zipcode', 'country', 'fullname', 'email', 0),
(10, 'tigershroff ', 'active', 'for building', '', '', '', 'fhtghgkuhjijki gugygjuhiuhyiuiuk', 'indrapuri', 'propertylocation', 'state', 'city', 'zipcode', 'country', 'fullname', 'email', 0),
(11, 'tigershroff ', 'active', 'for building', '', '', '', 'fhtghgkuhjijki gugygjuhiuhyiuiuk', 'indrapuri', 'propertylocation', 'state', 'city', 'zipcode', 'country', 'fullname', 'email', 0),
(12, 'uniland', 'active', 'for building', '', '', '', 'gfvhjnjnkj', 'indrapuri', 'propertylocation', 'state', 'city', 'zipcode', 'country', 'fullname', 'email', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `status`, `date`) VALUES
(1, 'akanksha', 'singh', 'akankshasingh8721@gmail.com', '123456789', '', '2019-04-12 11:54:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
