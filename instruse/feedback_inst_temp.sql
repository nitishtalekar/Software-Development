-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 07:22 AM
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
(1, 'Instumentation Engineering', '3', 'A', '--'),
(2, 'Instumentation Engineering', '3', 'A', '--'),
(3, 'Instumentation Engineering', '3', 'A', '--'),
(4, 'Instumentation Engineering', '3', 'A', '--'),
(5, 'Instumentation Engineering', '3', 'A', '--'),
(6, 'Instumentation Engineering', '3', 'A', '--'),
(7, 'Instumentation Engineering', '3', 'A', '--'),
(8, 'Instumentation Engineering', '3', 'A', 'improve washroom conditions\r\nimprove faculties\r\nimprove canteen food \r\n'),
(9, 'Instumentation Engineering', '3', 'A', 'IMPROVE TOILETS \r\nIMPROVE WATER FILTERS \r\nPLEASE INSTALL WORKING LIFTS \r\nPLEASE ADD SEATS OR BENCHES WHERE STUDENTS CAN SIT '),
(10, 'Instumentation Engineering', '3', 'A', 'The Institution is Excellent No doubt about teaching Staff.\r\nCleanliness Should be maintain in Boys Washroom Housekeeping Faculty Are Not Maintaining Cleanliness and Hygeine.'),
(11, 'Instumentation Engineering', '3', 'A', '--'),
(12, 'Instumentation Engineering', '3', 'A', '--'),
(13, 'Instumentation Engineering', '3', 'A', 'IMPROVE TOILETS\r\nIMPROVE THE CANTEEN SERVICE\r\nPLEASE INSTALL WORKING LIFTS\r\nWATER FILTERS AND A PROPER DRINKING WATER AQUAGUARD'),
(14, 'Instumentation Engineering', '3', 'A', 'How about not going too hard on students. Especially those in Office who sometimes feel sadistic.'),
(15, 'Instumentation Engineering', '3', 'A', '--'),
(16, 'Applied Sciences', '1', 'F', 'THE OVERALL MANAGEMENT SHOULD BE MORE SYSTEMATIC AND THERE MUST BE MORE EXTRACURRICULAR ACTIVITIES IN COLLEGE.'),
(17, 'Applied Sciences', '1', 'F', 'institute is good.but faculty is poor.very few teachers are committed while rests just come for teasing students.'),
(18, 'Applied Sciences', '1', 'F', 'TATTI AF'),
(19, 'Applied Sciences', '1', 'F', 'The girls toilet are not so clean and most of the time flush is not working. The classroom are not clean and the basement is full of mosquito. But the area around the staircase is always clean. '),
(20, 'Applied Sciences', '1', 'F', 'girls washroom often does not have water'),
(21, 'Applied Sciences', '1', 'F', '--');

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
