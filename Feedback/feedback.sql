-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 09:58 AM
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
-- Database: `feedback_rgit`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fb_id` int(200) NOT NULL,
  `teacher_id` varchar(200) NOT NULL,
  `sub_id` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `score1` varchar(200) NOT NULL,
  `score2` varchar(200) NOT NULL,
  `score3` varchar(200) NOT NULL,
  `score4` varchar(200) NOT NULL,
  `score5` varchar(200) NOT NULL,
  `score6` varchar(200) NOT NULL,
  `score7` varchar(200) NOT NULL,
  `score8` varchar(200) NOT NULL,
  `score9` varchar(200) NOT NULL,
  `score10` varchar(200) NOT NULL,
  `score11` varchar(200) NOT NULL,
  `score12` varchar(200) NOT NULL,
  `remark` varchar(50000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fb_id`),
  ADD UNIQUE KEY `t_id` (`teacher_id`,`sub_id`,`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fb_id` int(200) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
