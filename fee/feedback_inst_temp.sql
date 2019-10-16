-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:35 AM
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
(1, 'Applied Sciences', '1', 'E', 'good looks after students future'),
(2, 'Applied Sciences', '1', 'E', 'need cleanliness, classrooms are sometimes too dirty, website needs to be more regularly updated with latest information'),
(3, 'Applied Sciences', '1', 'E', '--'),
(4, 'Applied Sciences', '1', 'E', '--'),
(5, 'Applied Sciences', '1', 'E', 'its a good institute till now . practical labs have required materials and thats sufficient .'),
(6, 'Applied Sciences', '1', 'E', 'dirty and unclean washrooms.  very rude and irresponsible office staffs'),
(7, 'Applied Sciences', '1', 'E', 'college must install ac, and no extra lectures should be taken by any faculty'),
(8, 'Applied Sciences', '1', 'E', 'Cleanliness is to be maintain through the INSTITUTE.'),
(9, 'Applied Sciences', '1', 'E', 'I have face promblems in accounts work as they were not that helpfull. In class room feels suffocation as fans are not properly working and also the doors are kept closed by teachers so ,it distracts a lot.'),
(10, 'Applied Sciences', '1', 'E', 'must install AC,  maintain proper timetable for events, repair lifts, light issues'),
(11, 'Applied Sciences', '1', 'E', 'proper fans must be present in some classes and clean toilets'),
(12, 'Electronics and Telecommunication', '7', 'B', '--'),
(13, 'Applied Sciences', '1', 'E', 'FANS ARE NOT WORKING PROPERLY AND FEELING SUFFOCATION IN CLASS.'),
(14, 'Applied Sciences', '1', 'E', 'very good,the washroom can be made more clean'),
(15, 'Applied Sciences', '1', 'E', 'Fans in the classroom should be changed as soon as possible. It causes suffocation sometimes. '),
(16, 'Applied Sciences', '1', 'E', 'the college building is very good but in some areas such as labs and corridors, the tiles are coming out from the wall, and I request you to please clean the toilets because they are very smelly. overall the college infrastructure is very good\r\n'),
(17, 'Applied Sciences', '1', 'E', 'needs improvement at accounts office '),
(18, 'Applied Sciences', '1', 'E', 'Need to improve the accounts office , '),
(19, 'Applied Sciences', '1', 'E', 'Have a good campus.');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
