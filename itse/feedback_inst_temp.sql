-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 10:21 AM
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
(1, 'Information Technology', '3', 'A', '--'),
(2, 'Information Technology', '3', 'A', '--'),
(3, 'Information Technology', '3', 'A', '--'),
(4, 'Information Technology', '3', 'A', 'Shit Desktops. Get those changed as soon as possible'),
(5, 'Information Technology', '3', 'A', 'EQUIPMENTS ARE OUTDATED'),
(6, 'Information Technology', '3', 'A', '--'),
(7, 'Information Technology', '3', 'A', '--'),
(8, 'Information Technology', '3', 'A', 'get changes'),
(9, 'Information Technology', '3', 'A', '--'),
(10, 'Information Technology', '3', 'A', '--'),
(11, 'Information Technology', '3', 'A', '--'),
(12, 'Information Technology', '3', 'A', 'lab condition is not good most of the pc\'s doesn\'t work well.'),
(13, 'Information Technology', '3', 'A', 'LAB CONDITION IS NOT WELL MAINTAINED \r\nCOMPUTERS ARE NOT WORKING PROPERLY'),
(14, 'Information Technology', '3', 'A', 'only few PC\'s work in the lab.'),
(15, 'Information Technology', '3', 'A', 'please provide good sanitation facilities especially for girls'),
(16, 'Information Technology', '3', 'A', 'lab conditions are worsts and majorities of pc\'s are not working.there is no cleanliness in washroom as well as classrooms.'),
(17, 'Information Technology', '3', 'A', 'please provide good working computers for student'),
(18, 'Information Technology', '3', 'A', 'lab condition are worst and there is no maintenance of commodities in the college'),
(19, 'Information Technology', '3', 'A', 'Lots computers aren\'t fumctional for DSA and JAVA '),
(20, 'Information Technology', '3', 'A', 'Professors are student-friendly. Increase in number of practical sessions is required. Some students are taken away from attending lecture to attend seminars which are meant for higher years. This is wrong...');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
