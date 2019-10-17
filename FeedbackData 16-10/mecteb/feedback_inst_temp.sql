-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 11:13 AM
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
(1, 'Mechanical Engineering', '5', 'B', '--'),
(2, 'Mechanical Engineering', '5', 'B', '--'),
(3, 'Mechanical Engineering', '5', 'B', '--'),
(4, 'Mechanical Engineering', '5', 'B', 'Best Institution'),
(5, 'Mechanical Engineering', '5', 'B', '--'),
(6, 'Mechanical Engineering', '5', 'B', '--'),
(7, 'Mechanical Engineering', '5', 'B', ' SOME LAB EQUIPMENTS IN LABS SUCH AS MMC,HT,ICE,DOM ARE NOT WORKING PROPERLY.\r\n'),
(8, 'Mechanical Engineering', '5', 'B', 'Lab equipmentS are not working properly in MMC LAB and some in DOM,HT'),
(9, 'Mechanical Engineering', '5', 'B', 'Lab equipments of Heat Transfer and Mechanical Measurements and control need to be working properly.  Assignments and experiments must be given in the beginning of the semester.'),
(10, 'Mechanical Engineering', '5', 'B', '--'),
(11, 'Mechanical Engineering', '5', 'B', 'lab equipments are not working.'),
(12, 'Mechanical Engineering', '5', 'B', '--'),
(13, 'Mechanical Engineering', '5', 'B', 'Lab equipments of heat transfer and dynamics of machinery should be proper.'),
(14, 'Mechanical Engineering', '5', 'B', '--'),
(15, 'Mechanical Engineering', '5', 'B', '--'),
(16, 'Mechanical Engineering', '5', 'B', 'water issue in washroom');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
