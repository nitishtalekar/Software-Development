-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 11:07 AM
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
-- Table structure for table `feedback_temp`
--

CREATE TABLE `feedback_temp` (
  `fbt_id` int(200) NOT NULL,
  `teacher_id` varchar(200) NOT NULL,
  `sub_id` varchar(200) NOT NULL,
  `ques1` varchar(200) NOT NULL,
  `ques2` varchar(200) NOT NULL,
  `ques3` varchar(200) NOT NULL,
  `ques4` varchar(200) NOT NULL,
  `ques5` varchar(200) NOT NULL,
  `ques6` varchar(200) NOT NULL,
  `ques7` varchar(200) NOT NULL,
  `ques8` varchar(200) NOT NULL,
  `ques9` varchar(200) NOT NULL,
  `ques10` varchar(200) NOT NULL,
  `ques11` varchar(200) NOT NULL,
  `ques12` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_temp`
--

INSERT INTO `feedback_temp` (`fbt_id`, `teacher_id`, `sub_id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques10`, `ques11`, `ques12`, `remark`) VALUES
(8, '14', '12', '5', '4', '5', '3', '3', '4', '5', '4', '5', '4', '3', '5', 'good overall'),
(9, '35', '13', '5', '4', '5', '3', '3', '4', '5', '4', '5', '4', '3', '5', 'good overall'),
(10, '25', '14', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'good overall'),
(11, '36', '15', '3', '3', '3', '5', '3', '3', '5', '3', '5', '2', '5', '5', 'good overall'),
(12, '22', '16', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'good overall'),
(13, '24', '17', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'good overall'),
(14, '26', '18', '3', '3', '3', '5', '5', '3', '4', '1', '4', '1', '5', '3', '--');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback_temp`
--
ALTER TABLE `feedback_temp`
  ADD PRIMARY KEY (`fbt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback_temp`
--
ALTER TABLE `feedback_temp`
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
