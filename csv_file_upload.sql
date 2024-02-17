-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 05:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csv_file_upload`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_product`
--

CREATE TABLE `daily_product` (
  `daily_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_category` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `daily_product`
--

INSERT INTO `daily_product` (`daily_product_id`, `product_id`, `product_category`, `product_name`, `product_price`) VALUES
(1, 101, 'Home and Garden', 'Fashionoma Hobby Toolkit', 199.00),
(2, 102, 'Electronics', 'Samsung EVO 32 GB', 749.00),
(3, 103, 'Fashion', 'Nova NHT Trimmer', 349.00),
(4, 104, 'Mobiles', 'Cases and Safeguard', 299.00),
(5, 105, 'Fashions', 'Womens Bag', 180.00),
(6, 106, 'Home and Garden', 'Insects Repellents', 99.00),
(7, 107, 'Home and Garden', 'Pressure Cookers and pans', 499.00),
(8, 108, 'Electronis', 'Mitashi TV', 6999.00),
(9, 109, 'Home and Garden', 'Water Gas Graysers', 2499.00),
(10, 110, 'Office', 'HP Deskjet Ink Advantage', 3999.00);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `first`, `last`, `age`) VALUES
(109, 'aaaa', 'aaa', 1),
(110, 'bbb', 'bbbb', 2),
(111, 'ccc', 'cccc', 3),
(112, 'ddd', 'dddd', 4);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_product`
--
ALTER TABLE `daily_product`
  ADD PRIMARY KEY (`daily_product_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_product`
--
ALTER TABLE `daily_product`
  MODIFY `daily_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
