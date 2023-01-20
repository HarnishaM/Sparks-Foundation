-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 10:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparksbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`First_Name`, `Last_Name`, `Email`, `Message`) VALUES
('Harnisha', 'Munukoti', 'mharnisha49@gmail.com', 'hi'),
('Harnisha', 'Munukoti', 'mharnisha49@gmail.com', 'ji'),
('Harnisha', 'Munukoti', 'mharnisha49@gmail.com', 'SUCCESS'),
('Harnisha', 'Munukoti', 'mharnisha49@gmail.com', 'SUCCESS !!!'),
('Harnisha', 'Munukoti', 'mharnisha49@gmail.com', 'Nice website');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Account_no` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email_id` varchar(100) NOT NULL,
  `Balance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Account_no`, `Name`, `Email_id`, `Balance`) VALUES
(20010200, 'Ritesh Kumar', 'ritesh6@gmail.com', 20000),
(20010201, 'Harshit Raj', 'harshit31@gmail.com', 60000),
(20010202, 'Harnisha Munukoti', 'mharnisha49@gmail.com', 50000),
(20010203, 'Sanchit Sharma', 'Sanchit21@gmail.com', 99999),
(20010204, 'Adersh Singh', 'Adersh91@gmail.com', 30000),
(20010205, 'Shashank Singh', 'Shashank53@gmail.com', 100000),
(20010206, 'Neha Kumari', 'Neha42@gmail.com', 90000),
(20010207, 'Drishti Sinha', 'drishti25@gmail.com', 87),
(20010208, 'Shekhar Bhatia', 'Shekhar3@gmail.com', 89000),
(20010209, 'Praveen Nayak', 'PNayak@gmail.com', 35000),
(20010210, 'Nisha Singh', 'nisha31@gmail.com', 16),
(20010211, 'Rajdeep Kaur', 'Rajdeep@gmail.com', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(100) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Nisha Singh', 'Drishti Sinha', 5, '2022-11-20 11:18:35'),
(2, 'APARNA PANDA', 'Nisha Singh', 1, '2022-11-20 11:19:14'),
(3, 'Nisha Singh', 'Drishti Sinha', 80, '2022-11-20 12:18:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Account_no`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
