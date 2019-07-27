-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2019 at 09:14 AM
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
-- Database: `rgitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `grno` varchar(100) NOT NULL,
  `achievement1` varchar(100) NOT NULL,
  `ach_certi1` varchar(100) NOT NULL,
  `achievement2` varchar(100) NOT NULL,
  `ach_certi2` varchar(100) NOT NULL,
  `achievement3` varchar(100) NOT NULL,
  `ach_certi3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `grno` varchar(100) NOT NULL,
  `course1` varchar(100) NOT NULL,
  `validity1` int(100) NOT NULL,
  `certificate1` varchar(100) NOT NULL,
  `course2` varchar(100) NOT NULL,
  `validity2` int(100) NOT NULL,
  `certificate2` varchar(100) NOT NULL,
  `course3` varchar(100) NOT NULL,
  `validity3` int(100) NOT NULL,
  `certificate3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `grno` varchar(100) NOT NULL,
  `company1` varchar(100) NOT NULL,
  `position1` varchar(100) NOT NULL,
  `date_from1` date NOT NULL,
  `date_till1` date NOT NULL,
  `exp1` varchar(200) NOT NULL,
  `company2` int(11) NOT NULL,
  `position2` int(11) NOT NULL,
  `date_from2` int(11) NOT NULL,
  `date_till2` int(11) NOT NULL,
  `exp2` int(11) NOT NULL,
  `company3` int(11) NOT NULL,
  `position3` int(11) NOT NULL,
  `date_from3` int(11) NOT NULL,
  `date_till3` int(11) NOT NULL,
  `exp3` int(11) NOT NULL
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
  `sub_sem` int(100) NOT NULL,
  `sub_dept` varchar(100) NOT NULL,
  `sub_choicebased` int(100) NOT NULL,
  `sub_internal` int(100) NOT NULL,
  `sub_external` int(100) NOT NULL,
  `sub_termwork` int(100) NOT NULL,
  `sub_oral` int(100) NOT NULL,
  `sub_total` int(100) NOT NULL,
  `sub_duration` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
