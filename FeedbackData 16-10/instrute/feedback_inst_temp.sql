-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:06 AM
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
(1, 'Instumentation Engineering', '5', 'A', '--'),
(2, 'Instumentation Engineering', '5', 'A', 'College should improve infrastructure , software need to be updated '),
(3, 'Instumentation Engineering', '5', 'A', '--'),
(4, 'Instumentation Engineering', '5', 'A', '--'),
(5, 'Instumentation Engineering', '5', 'A', '--'),
(6, 'Instumentation Engineering', '5', 'A', '--'),
(7, 'Instumentation Engineering', '5', 'A', '--'),
(8, 'Instumentation Engineering', '5', 'A', '--'),
(9, 'Instumentation Engineering', '5', 'A', '--'),
(10, 'Instumentation Engineering', '5', 'A', 'CAN IMPROVE'),
(11, 'Instumentation Engineering', '5', 'A', 'CAN DO BETTER, BUT I KNOW YOU WONT!'),
(12, 'Instumentation Engineering', '5', 'A', 'CAN DO BETTER'),
(13, 'Instumentation Engineering', '5', 'A', 'Make necessary for all teachers to have minimum 2 years industry experience before teaching.'),
(14, 'Instumentation Engineering', '5', 'A', '--'),
(15, 'Instumentation Engineering', '5', 'A', '--'),
(16, 'Instumentation Engineering', '5', 'A', 'nothing'),
(17, 'Instumentation Engineering', '5', 'A', '--');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
