-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 09:32 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rgitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `grno` varchar(100) NOT NULL,
  `achievement1` varchar(100) DEFAULT NULL,
  `ach_certi1` varchar(100) DEFAULT NULL,
  `achievement2` varchar(100) DEFAULT NULL,
  `ach_certi2` varchar(100) DEFAULT NULL,
  `achievement3` varchar(100) DEFAULT NULL,
  `ach_certi3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `grno` varchar(100) NOT NULL,
  `course1` varchar(100) DEFAULT NULL,
  `validity1` int(100) DEFAULT NULL,
  `certificate1` varchar(100) DEFAULT NULL,
  `course2` varchar(100) DEFAULT NULL,
  `validity2` int(100) DEFAULT NULL,
  `certificate2` varchar(100) DEFAULT NULL,
  `course3` varchar(100) DEFAULT NULL,
  `validity3` int(100) DEFAULT NULL,
  `certificate3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `grno` varchar(100) NOT NULL,
  `company1` varchar(100) DEFAULT NULL,
  `position1` varchar(100) DEFAULT NULL,
  `date_from1` date DEFAULT NULL,
  `date_till1` date DEFAULT NULL,
  `exp1` varchar(200) DEFAULT NULL,
  `letter1` varchar(100) DEFAULT NULL,
  `company2` varchar(100) DEFAULT NULL,
  `position2` varchar(100) DEFAULT NULL,
  `date_from2` int(100) DEFAULT NULL,
  `date_till2` int(100) DEFAULT NULL,
  `exp2` varchar(200) DEFAULT NULL,
  `letter2` varchar(100) DEFAULT NULL,
  `company3` varchar(100) DEFAULT NULL,
  `position3` varchar(100) DEFAULT NULL,
  `date_from3` int(100) DEFAULT NULL,
  `date_till3` int(100) DEFAULT NULL,
  `exp3` varchar(200) DEFAULT NULL,
  `letter3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `grno` varchar(100) NOT NULL,
  `student_name` text NOT NULL,
  `student_mail` varchar(100) NOT NULL,
  `student_phone` varchar(100) NOT NULL,
  `student_gen` varchar(50) NOT NULL,
  `student_dob` date NOT NULL,
  `ten_board` varchar(100) NOT NULL,
  `ten_percent` double NOT NULL,
  `twelve_board` varchar(100) NOT NULL,
  `twelve_percent` double NOT NULL,
  `student_doj` date NOT NULL,
  `student_dept` varchar(100) NOT NULL,
  `student_sem` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` varchar(100) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sub_credits` varchar(100) NOT NULL,
  `sub_sem` varchar(100) NOT NULL,
  `sub_dept` varchar(100) NOT NULL,
  `sub_choicebased` varchar(100) NOT NULL,
  `sub_internal` varchar(100) NOT NULL,
  `sub_external` varchar(100) NOT NULL,
  `sub_termwork` varchar(100) NOT NULL,
  `sub_oral` varchar(100) NOT NULL,
  `sub_total` varchar(100) NOT NULL,
  `sub_duration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `sub_credits`, `sub_sem`, `sub_dept`, `sub_choicebased`, `sub_internal`, `sub_external`, `sub_termwork`, `sub_oral`, `sub_total`, `sub_duration`) VALUES
('1010', 'xxx', '12', '7', 'EXTC', '1', '9', '2', '3', '4', '6', '5');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_mail` varchar(100) NOT NULL,
  `teacher_phone` varchar(100) NOT NULL,
  `teacher_gen` varchar(100) NOT NULL,
  `teacher_dob` date NOT NULL,
  `teacher_dept` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `lec_id` int(100) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `sub_id` varchar(100) NOT NULL,
  `lec_div` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`lec_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `lec_id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
