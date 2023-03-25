-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2023 at 05:36 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `password`) VALUES
('admin', 'b59c67bf196a4758191e42f76670ceba\r\n'),
('admin', 'b59c67bf196a4758191e42f76670ceba\r\n'),
('admin1', '1111'),
('admin1', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'email',
  `email` varchar(255) NOT NULL COMMENT 'message',
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Chamith Anjula', 'chamithanjula01@gmail.com', 'weeeeeeeeee'),
(2, 'Chamith Anjula', 'chamithanjula01@gmail.com', 'weeeeeeeeee'),
(3, 'Chamith Anjula', 'chamithanjula01@gmail.com', 'wwww'),
(4, 'password', 'coacna201p003@student.nibm.lk', 'fgfdhrjfkfjkg'),
(5, 'chamith Anjula', 'chamithanjula01@gmail.com', 'weeeeeeeeee');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tno` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `uname`, `email`, `password`, `tno`) VALUES
(1, 'chamith', 'chamithanjula01@gmail.com', 'b59c67bf196a4758191e42f76670ceba', ''),
(2, 'liduli', 'chamithanjula01@gmail.com', 'b59c67bf196a4758191e42f76670ceba', ''),
(3, 'anjula', 'chamithanjula01@gmail.com', 'b59c67bf196a4758191e42f76670ceba', ''),
(4, 'hansi', 'chamithanjula01@gmail.com', 'b59c67bf196a4758191e42f76670ceba', '912234123'),
(5, 'chamodi', 'chamodikavindhya@gmail.com', '202cb962ac59075b964b07152d234b70', '071426785'),
(6, 'admin1', 'sachininavodya01@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0713245679');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plocation` varchar(255) NOT NULL,
  `rlocation` varchar(255) NOT NULL,
  `pdate` varchar(255) NOT NULL,
  `rdate` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tno` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`id`, `plocation`, `rlocation`, `pdate`, `rdate`, `uname`, `email`, `tno`) VALUES
(1, '234', '234', '111', '111', 'chamith', 'chamithanjula01@gmail.com', '+94912234123'),
(2, '234', '234', '111', '111', 'hansi', 'chamithanjula01@gmail.com', '912234123');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tno` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `email`, `tno`, `type`, `city`, `country`, `date`) VALUES
(1, '', 'chamithanjula01@gmail.com', '567567', 'deluxe', 'galle', 'india', '2021-10-14'),
(2, '', 'chamithanjula01@gmail.com', '912234123', 'signature', 'galle', 'england', '2021-10-14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
