-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 10:59 AM
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
(1, 'Mechanical Engineering', '3', 'B', '--'),
(2, 'Mechanical Engineering', '3', 'B', '--'),
(3, 'Mechanical Engineering', '3', 'B', 'Below Average'),
(4, 'Mechanical Engineering', '3', 'B', 'Below Average'),
(5, 'Mechanical Engineering', '3', 'B', '--'),
(6, 'Mechanical Engineering', '3', 'B', 'Below Average'),
(7, 'Mechanical Engineering', '3', 'B', '--'),
(8, 'Mechanical Engineering', '3', 'B', 'no comment'),
(9, 'Mechanical Engineering', '3', 'B', '--'),
(10, 'Mechanical Engineering', '3', 'B', '--'),
(11, 'Mechanical Engineering', '3', 'B', 'Teachers should learn new teaching techniques '),
(12, 'Mechanical Engineering', '3', 'B', '--'),
(13, 'Mechanical Engineering', '3', 'B', 'Ok ok'),
(14, 'Mechanical Engineering', '3', 'B', '--'),
(15, 'Mechanical Engineering', '3', 'B', '--'),
(16, 'Mechanical Engineering', '3', 'B', 'No water avaliable in the college in 2nd floor'),
(17, 'Mechanical Engineering', '3', 'B', '--'),
(18, 'Mechanical Engineering', '3', 'B', 'Good'),
(19, 'Mechanical Engineering', '3', 'B', 'bad workshop faculty, poorly maintained bathrooms'),
(20, 'Mechanical Engineering', '3', 'B', 'needs major technical and general improvements asap'),
(21, 'Mechanical Engineering', '3', 'B', '--');

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
