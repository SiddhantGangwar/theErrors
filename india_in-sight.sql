-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 02:24 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `india_in-sight`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact us`
--

CREATE TABLE `contact us` (
  `Sr.no` int(4) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone no` varchar(10) NOT NULL,
  `Queries` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact us`
--

INSERT INTO `contact us` (`Sr.no`, `Name`, `Age`, `Gender`, `Email`, `Phone no`, `Queries`, `Date`) VALUES
(1, 'kkkk', 18, 'Male', 'kkk@gmail.com', '9999999999', 'kkk', '2021-05-18 17:30:31'),
(32, 'hi', 0, '', '', '', '', '2021-05-19 14:34:58'),
(33, 'shubham', 18, 'male', 'da@gmail.com', 'jii', 'dfsg', '2021-05-20 13:22:27'),
(34, '', 0, '', '', '', '', '2021-05-20 17:39:32'),
(35, '', 0, '', '', '', '', '2021-05-20 17:39:34'),
(36, 'shubham', 18, 'male', 'shubhammarathe1503@gmail.com', '8999382468', 'hi', '2021-05-20 17:40:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact us`
--
ALTER TABLE `contact us`
  ADD PRIMARY KEY (`Sr.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact us`
--
ALTER TABLE `contact us`
  MODIFY `Sr.no` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
