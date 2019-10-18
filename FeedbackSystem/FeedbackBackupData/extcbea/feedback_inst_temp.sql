-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:57 AM
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
(1, 'Electronics and Telecommunication', '7', 'A', 'the system is not well maintained, students are always made to do lot of assignments and don\'t get time for studies '),
(2, 'Electronics and Telecommunication', '7', 'A', 'no proper campus no proper canteen no scope available for sports field at university level'),
(3, 'Electronics and Telecommunication', '7', 'A', 'not proper facility for sports activity and canteen prices are high.'),
(4, 'Electronics and Telecommunication', '7', 'A', '--'),
(5, 'Electronics and Telecommunication', '7', 'A', '--'),
(6, 'Electronics and Telecommunication', '7', 'A', '--'),
(7, 'Electronics and Telecommunication', '7', 'A', 'improve infrastructure'),
(8, 'Electronics and Telecommunication', '7', 'A', 'equipment in the lab are not working properly need to be fixed\r\ncomputers are rarely working\r\nthere no water in washroom\r\n'),
(9, 'Electronics and Telecommunication', '7', 'A', 'Need to provide water in toilets.'),
(10, 'Electronics and Telecommunication', '7', 'A', 'NO COMPUTERS IN THE PRACTICAL LAB.'),
(11, 'Electronics and Telecommunication', '7', 'A', '1. PATHETIC INFRASTRUCTURE MAINTENANCE\r\n2. DIRTY AND DISGUSTING WASHROOMS\r\n3. NO CHAIRS IN THE CAFETERIA FOR STUDENTS TO SIT AND EAT.\r\n4. IT\'S NOT ACCEPTABLE TO TELL STUDENTS TO VACATE THE CAFE WHEN THE PRINCIPLE ARRIVES.\r\n5. BAD LABS WITH NO COMPUTERS WORKING'),
(12, 'Electronics and Telecommunication', '7', 'A', 'unsatisfactory services in return are given back by the institute. total waste of 4 lacs of 4 years. unmaintained lifts and classes. unmanaged canteen and its maintenance. uncleaned classes. get 2 xerox centers! please provide clean water in washroom and clean them on time. the staff on ground floor is rude. please bring learnt professors who have upgraded knowledge and dont irritate students for unnecessary things and rather give more importance to projects '),
(13, 'Electronics and Telecommunication', '7', 'A', 'maintaining is required'),
(14, 'Electronics and Telecommunication', '7', 'A', '--'),
(15, 'Electronics and Telecommunication', '7', 'A', 'POOR WASHROOM FACILITIES,'),
(16, 'Electronics and Telecommunication', '7', 'A', 'good'),
(17, 'Electronics and Telecommunication', '7', 'A', 'Coperating but don\'t look in the studen5t feedback'),
(18, 'Electronics and Telecommunication', '7', 'A', 'good ');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
