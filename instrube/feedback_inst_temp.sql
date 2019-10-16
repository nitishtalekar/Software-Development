-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 06:47 AM
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
(1, 'Instumentation Engineering', '7', 'A', '--'),
(2, 'Instumentation Engineering', '7', 'A', '--'),
(3, 'Instumentation Engineering', '7', 'A', '--'),
(4, 'Instumentation Engineering', '7', 'A', '--'),
(5, 'Computer Engineering', '5', 'B', 'comps TE'),
(6, 'Instumentation Engineering', '7', 'A', '--'),
(7, 'Instumentation Engineering', '7', 'A', 'sufficient lab equipment'),
(8, 'Instumentation Engineering', '7', 'A', '--'),
(9, 'Instumentation Engineering', '7', 'A', 'Boys washrooms are so smelly that it is not possible to enter\r\nDrinking water is not upto the mark as the filter is always OFF\r\nWashrooms should be clean a little bit more.\r\n\r\n'),
(10, 'Instumentation Engineering', '7', 'A', '--'),
(11, 'Instumentation Engineering', '7', 'A', 'department needs to be more co-operative to students'),
(12, 'Instumentation Engineering', '7', 'A', 'department needs to be more co-operative to students'),
(13, 'Instumentation Engineering', '7', 'A', 'gawande aur bedke ko plzz mat bhejo for teaching the subject for next same  (8 sem )\r\n we dony understand what they teach and speak .current staff is very good . plzz work on the washroom cleanliness.'),
(14, 'Instumentation Engineering', '7', 'A', 'more practical and detailed approach is required to understand real life scenarios.'),
(15, 'Computer Engineering', '5', 'B', 'TE B\r\nComputer'),
(16, 'Computer Engineering', '5', 'B', '--'),
(17, 'Computer Engineering', '5', 'B', '--'),
(18, 'Instumentation Engineering', '7', 'A', 'INFRASTRUCTURE DEVELOPMENT IS IN MUCH NEEDED...'),
(19, 'Instumentation Engineering', '7', 'A', 'thank you'),
(20, 'Instumentation Engineering', '7', 'A', '--'),
(21, 'Instumentation Engineering', '7', 'A', 'department should be co-operative with students '),
(22, 'Instumentation Engineering', '7', 'A', '--');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
