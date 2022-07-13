-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 05:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `addnewpayee`
--

CREATE TABLE `addnewpayee` (
  `accreg` int(11) NOT NULL,
  `accnumber` int(11) NOT NULL,
  `code` varchar(25) NOT NULL,
  `acchname` varchar(25) NOT NULL,
  `mobile` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addnewpayee`
--

INSERT INTO `addnewpayee` (`accreg`, `accnumber`, `code`, `acchname`, `mobile`, `date`) VALUES
(12345678, 1542032, 'p74', 'Shadaf', 2147483647, '2022-01-02 12:12:42'),
(12345678, 5463202, 'p74', 'Amey', 1235467890, '2021-12-30 02:06:09'),
(12345678, 7845120, 'K120', 'Mukul', 2147483647, '2022-01-02 01:46:23'),
(2147483647, 8654000, 'p74', 'Swapnil', 2147483647, '2021-12-20 03:55:16'),
(12345678, 12345620, 'K120', 'Nazish', 1235467890, '2021-12-30 01:20:14'),
(12345678, 84512065, 'K120', 'Amey', 1235467890, '2021-12-30 12:28:12'),
(12345678, 84512542, '8455', 'Saayli', 2147483647, '2021-12-20 07:24:58'),
(12345678, 86540001, 'K120', 'Meena', 2147483647, '2021-12-30 01:28:06'),
(1234500, 123054120, 'ks785', 'Amey', 2147483647, '2022-01-16 07:21:20'),
(12345678, 451206520, 'ks785', 'Himanshi', 1235467890, '2022-01-17 03:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(11) NOT NULL,
  `accno` int(11) NOT NULL,
  `bill_name` varchar(25) NOT NULL,
  `cons_number` int(11) NOT NULL,
  `unit_code` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `accno`, `bill_name`, `cons_number`, `unit_code`, `date`, `amount`) VALUES
(6, 12345678, 'Electricity Bill', 84523000, 4130, '2021-12-19 13:03:11', 200),
(7, 12345678, 'Electricity Bill', 84512, 2035, '2021-12-20 07:12:06', 200),
(17, 12345678, 'Electricity Bill', 123, 4120, '2021-12-30 02:42:44', 100),
(19, 12345678, 'Water Bill', 412563, 0, '2021-12-30 02:44:40', 100),
(22, 12345678, 'Electricity Bill', 5412000, 1200, '2022-01-02 01:43:30', 20),
(26, 12345678, 'Electricity Bill', 845120, 4120, '2022-01-02 01:47:23', 30),
(31, 12345678, 'Water Bill', 78410000, 0, '2022-01-12 04:56:39', 90),
(33, 12345678, 'Electricity Bill', 8410000, 5120, '2022-01-12 05:36:55', 50),
(34, 12345678, 'Electricity Bill', 4520100, 1500, '2022-01-17 03:27:35', 130),
(35, 12345678, 'Water Bill', 512000, 0, '2022-01-17 03:28:48', 160);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `action` varchar(25) NOT NULL,
  `accnumber` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `action`, `accnumber`, `amount`, `date`) VALUES
(31, 'deposit', 12345678, 1000, '2022-01-16 05:21:52'),
(32, 'withdraw', 12345678, 100, '2022-01-16 05:22:33'),
(33, 'deposit', 12345678, 500, '2022-01-17 03:13:52'),
(34, 'withdraw', 12345678, 100, '2022-01-17 03:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `accnumber` int(11) NOT NULL,
  `branch` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`name`, `address`, `mobile`, `email`, `accnumber`, `branch`) VALUES
('Saayli Yadav', 'Kamothe,Panvel', 2147483647, 'saayli@gmail.com', 12345678, 'kamothe'),
('Swapnil Yadav', 'Kharghar,Navi-Mumbai', 2147483647, 'swapnil@gmail.com', 2147483647, 'kharghar'),
('Amey Gawade', 'Panvel', 2147483647, 'amey@gmail.com', 1234500, 'Panvel'),
('Yadav Saayli', 'kamothe,Pnavel', 2147483647, 'yadavsaayli@gmail.com', 987654321, 'Kamothe');

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `recharge_id` int(11) NOT NULL,
  `accn` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `comp_name` varchar(25) NOT NULL,
  `circle` varchar(25) NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`recharge_id`, `accn`, `name`, `type`, `comp_name`, `circle`, `date`, `amount`) VALUES
(23, 12345678, 'self', 'DTH', 'PlazaDTH', 'Panvel', '2022-01-16 05:21:00', 100),
(24, 12345678, 'Saayli Yadav', 'Mobile', 'Idea', 'Kamothe', '2022-01-17 03:30:15', 200),
(25, 12345678, 'self', 'DTH', 'PlazaDTH', 'Panvel', '2022-01-17 03:31:12', 300);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `accnumber` int(25) NOT NULL,
  `password` varchar(6) NOT NULL,
  `balance` int(25) NOT NULL,
  `wallet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`accnumber`, `password`, `balance`, `wallet`) VALUES
(1234500, '123456', 19900, 0),
(12345678, '123456', 13550, 1800),
(987654321, '123456', 0, 0),
(2147483647, '123456', 19850, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `t_id` int(11) NOT NULL,
  `accnumber` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `payee_name` varchar(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`t_id`, `accnumber`, `name`, `payee_name`, `date`, `amount`) VALUES
(5, 12345678, 'transferred', '8465126', '2021-12-19 12:56:32', 100),
(6, 12345678, 'transferred', '7585121', '2021-12-19 15:24:07', 100),
(8, 12345678, 'transferred', '15423564', '2021-12-21 18:32:45', 300),
(9, 12345678, 'transferred', '456894', '2021-12-25 18:15:12', 50),
(11, 12345678, 'transferred', 'Amey 84512065', '2022-01-01 08:07:58', 100),
(12, 12345678, 'transferred', 'Saayli 84512542', '2022-01-01 08:34:32', 100),
(13, 12345678, 'transferred', 'Meena 86540001', '2022-01-01 08:37:01', 100),
(14, 12345678, 'transferred', 'Shadaf 1542032', '2022-01-02 01:36:42', 100),
(19, 1234500, 'transferred', 'Amey 123054120', '2022-01-16 07:21:39', 100),
(20, 12345678, 'transferred', 'Saayli 84512542', '2022-01-17 03:18:54', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addnewpayee`
--
ALTER TABLE `addnewpayee`
  ADD PRIMARY KEY (`accnumber`),
  ADD KEY `fk_accnum` (`accreg`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_accno` (`accno`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD KEY `fk_accnnumber` (`accnumber`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`recharge_id`),
  ADD KEY `fk_accn` (`accn`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`accnumber`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `fk_accnnum` (`accnumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `recharge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addnewpayee`
--
ALTER TABLE `addnewpayee`
  ADD CONSTRAINT `fk_accnum` FOREIGN KEY (`accreg`) REFERENCES `register` (`accnumber`);

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_accno` FOREIGN KEY (`accno`) REFERENCES `register` (`accnumber`);

--
-- Constraints for table `info`
--
ALTER TABLE `info`
  ADD CONSTRAINT `fk_accnnumber` FOREIGN KEY (`accnumber`) REFERENCES `register` (`accnumber`);

--
-- Constraints for table `recharge`
--
ALTER TABLE `recharge`
  ADD CONSTRAINT `fk_accn` FOREIGN KEY (`accn`) REFERENCES `register` (`accnumber`);

--
-- Constraints for table `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `fk_accnnum` FOREIGN KEY (`accnumber`) REFERENCES `register` (`accnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
