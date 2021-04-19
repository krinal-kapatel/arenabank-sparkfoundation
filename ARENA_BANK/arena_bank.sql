-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 12:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arena_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `s_name`, `s_email`, `s_phone`) VALUES
(1, 'john kapatel', 'jk@gmail.com', '9858745624'),
(3, 'shruti', 'shruti@gmaol.com', '2147483647'),
(5, 'komal', 'komal@gmail.com', '9876543210'),
(6, 'mohan patel', 'mohanpatel@gmail.com', '9874536540'),
(7, 'krina', 'krinapatel@gmail.com', '9624795448'),
(8, 'jiya', 'jiyagandhi@gmail.com', '8200712567'),
(9, 'janvi', 'janvipatel@gmail.com', '9874536482'),
(10, 'smita', 'smitapatel1995@gmail.com', '9785369875'),
(11, 'pallavi patel', 'pallavipatel@gmail.com', '8875963245');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(10) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `reciver_name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `transaction_date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `sender_name`, `reciver_name`, `amount`, `transaction_date_time`) VALUES
(1, 'Krinal patel', 'princy patel', '500', '2021-04-13 20:50:52'),
(2, 'sonal patel', 'bhumika kapatel', '5000', '2021-04-14 14:18:31'),
(3, 'shailesh patel', 'manish patel', '3000', '2021-04-14 14:21:58'),
(4, 'dharmik patel', 'sonal patel', '500', '2021-04-17 12:49:05'),
(5, 'john ', 'manish patel', '5000', '2021-04-19 15:08:25'),
(11, 'prit gandhi', 'dharmik patel', '5000', '2021-04-19 16:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `view_all_customer`
--

CREATE TABLE `view_all_customer` (
  `id` int(10) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_email` varchar(200) NOT NULL,
  `current_balance` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `view_all_customer`
--

INSERT INTO `view_all_customer` (`id`, `c_name`, `c_email`, `current_balance`) VALUES
(1, 'Krinal patel', 'patelkina@gmail.com', 5000),
(2, 'princy patel', 'princypatel@gmail.com', 6000),
(3, 'dharmik patel', 'pateldharmik@gmail.com', 8000),
(4, 'manish patel', 'patelmanish@gmail.com', 5000),
(5, 'bhumika kapatel', 'kapatelbhumika@gmail.com', 8500),
(6, 'pravina kapatel', 'pravinapatel@gmail.com', 70000),
(7, 'sonal patel', 'patelsonal@gmail.com', 5000),
(8, 'shailesh patel', 'shaileshpatel@gmail.com', 7000),
(9, 'john ', 'jh@gmail.com', 20000),
(15, 'prit gandhi', 'pritgandhi@gmail.com', 9000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_all_customer`
--
ALTER TABLE `view_all_customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `view_all_customer`
--
ALTER TABLE `view_all_customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
