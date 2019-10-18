-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 06:23 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_rgit`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback_inst_temp`
--

CREATE TABLE `feedback_inst_temp` (
  `fi_temp_id` int(200) NOT NULL,
  `dept` varchar(200) NOT NULL,
  `sem` varchar(200) NOT NULL,
  `div_id` varchar(200) NOT NULL,
  `comment` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_inst_temp`
--

INSERT INTO `feedback_inst_temp` (`fi_temp_id`, `dept`, `sem`, `div_id`, `comment`) VALUES
(1, 'Computer Engineering', '7', 'B', '--'),
(2, 'Computer Engineering', '7', 'B', '--'),
(3, 'Computer Engineering', '7', 'B', '--'),
(4, 'Computer Engineering', '7', 'B', '--'),
(5, 'Computer Engineering', '7', 'B', '--'),
(6, 'Computer Engineering', '7', 'B', '--'),
(7, 'Computer Engineering', '7', 'B', '--'),
(8, 'Computer Engineering', '7', 'B', '--'),
(9, 'Computer Engineering', '7', 'B', '--'),
(10, 'Computer Engineering', '7', 'B', 'yo'),
(11, 'Computer Engineering', '7', 'B', '--'),
(12, 'Computer Engineering', '7', 'B', '--'),
(13, 'Computer Engineering', '7', 'B', '--'),
(14, 'Computer Engineering', '7', 'B', '--'),
(15, 'Computer Engineering', '7', 'B', '--'),
(16, 'Computer Engineering', '7', 'B', 'door handles are missing in class doors, some fans are not working in the class and the computers in the lab are not up to date and are some are not even working!!!!'),
(17, 'Computer Engineering', '7', 'B', '--'),
(18, 'Computer Engineering', '7', 'B', '--'),
(19, 'Computer Engineering', '7', 'B', 'Upgrade systems in the department.They are outdated'),
(20, 'Computer Engineering', '7', 'B', 'Walls are getting black, water is not good for drinking, Not enough common rooms for students, There is no proper place for eating food.'),
(21, 'Computer Engineering', '7', 'B', '--');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback_inst_temp`
--
ALTER TABLE `feedback_inst_temp`
  ADD PRIMARY KEY (`fi_temp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback_inst_temp`
--
ALTER TABLE `feedback_inst_temp`
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
