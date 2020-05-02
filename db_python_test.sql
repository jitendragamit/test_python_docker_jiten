-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2019 at 09:34 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_python_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mac_address_vendor`
--

CREATE TABLE `tbl_mac_address_vendor` (
  `id` int(11) NOT NULL,
  `address_prefix` varchar(50) NOT NULL,
  `vendor_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mac_address_vendor`
--

INSERT INTO `tbl_mac_address_vendor` (`id`, `address_prefix`, `vendor_name`) VALUES
(1, '00:00:0A', 'Omron'),
(2, '00-0D-4B', 'Roku, LLC'),
(3, '00:00:0c', 'Cisco Systems, Inc'),
(4, '00:01:42', 'Cisco Systems, Inc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mac_address_vendor`
--
ALTER TABLE `tbl_mac_address_vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mac_address_vendor`
--
ALTER TABLE `tbl_mac_address_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
