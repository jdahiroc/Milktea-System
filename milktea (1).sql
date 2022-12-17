-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 09:45 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milktea`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorytbl`
--

CREATE TABLE `categorytbl` (
  `cat_id` int(15) NOT NULL,
  `cat_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorytbl`
--

INSERT INTO `categorytbl` (`cat_id`, `cat_name`) VALUES
(5, 'Classic'),
(6, 'Overload Series');

-- --------------------------------------------------------

--
-- Table structure for table `producttbl`
--

CREATE TABLE `producttbl` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `cat_id` varchar(50) DEFAULT NULL,
  `product_status` varchar(50) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttbl`
--

INSERT INTO `producttbl` (`product_id`, `product_name`, `cat_id`, `product_status`, `product_price`) VALUES
(1, 'Classic', 'Classic', 'In stocks', 64),
(2, 'Milktea', 'Classic', 'In stocks', 64),
(3, 'Wintermelon', 'Classic Series', 'In Stocks', 65),
(4, 'Milktea UwU', 'Classic Series', 'Single', 54),
(5, 'Oreo Milktea', 'Overload Series', 'Single', 64);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorytbl`
--
ALTER TABLE `categorytbl`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `producttbl`
--
ALTER TABLE `producttbl`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorytbl`
--
ALTER TABLE `categorytbl`
  MODIFY `cat_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `producttbl`
--
ALTER TABLE `producttbl`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
