-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:46 AM
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
  `div_id` varchar(200) NOT NULL,
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

INSERT INTO `feedback_temp` (`fbt_id`, `teacher_id`, `sub_id`, `div_id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques10`, `ques11`, `ques12`, `remark`) VALUES
(1, '74', '63', 'B', '4', '4', '3', '4', '3', '5', '5', '5', '5', '5', '5', '5', 'good'),
(2, '89', '64', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'excellent'),
(3, '83', '65', 'B', '4', '4', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '--'),
(4, '75', '66', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'excellent'),
(5, '74', '63', 'B', '4', '4', '4', '4', '4', '4', '5', '5', '4', '5', '5', '5', 'excellent\r\n'),
(6, '89', '64', 'B', '5', '4', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', 'good\r\n'),
(7, '83', '65', 'B', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', 'great\r\n'),
(8, '75', '66', 'B', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', 'ff'),
(9, '74', '63', 'B', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(10, '89', '64', 'B', '5', '5', '4', '5', '4', '4', '5', '5', '4', '5', '5', '5', '--'),
(11, '83', '65', 'B', '5', '5', '5', '4', '4', '4', '5', '5', '4', '5', '5', '5', '--'),
(12, '75', '66', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(13, '74', '63', 'B', '5', '5', '1', '5', '1', '5', '5', '5', '5', '5', '5', '5', '--'),
(14, '89', '64', 'B', '5', '5', '5', '5', '1', '5', '5', '5', '5', '5', '5', '5', '--'),
(15, '83', '65', 'B', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(16, '75', '66', 'B', '5', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '5', '--'),
(17, '74', '63', 'B', '4', '3', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', 'GOOD'),
(18, '89', '64', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'GOOD'),
(19, '83', '65', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'GOOD'),
(20, '75', '66', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'GOOD'),
(21, '74', '63', 'B', '1', '2', '2', '3', '2', '5', '5', '5', '5', '5', '5', '5', '--'),
(22, '89', '64', 'B', '4', '3', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(23, '83', '65', 'B', '1', '2', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(24, '75', '66', 'B', '3', '3', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(25, '74', '63', 'B', '3', '3', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(26, '89', '64', 'B', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(27, '83', '65', 'B', '4', '3', '4', '5', '3', '5', '5', '5', '4', '5', '5', '5', '--'),
(28, '75', '66', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(29, '74', '63', 'B', '2', '1', '2', '2', '2', '1', '4', '5', '3', '5', '5', '5', 'OK'),
(30, '89', '64', 'B', '1', '1', '1', '2', '2', '4', '4', '5', '3', '2', '2', '5', '.'),
(31, '83', '65', 'B', '4', '3', '4', '5', '3', '4', '4', '5', '4', '5', '2', '4', 'OK'),
(32, '75', '66', 'B', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'GOOD'),
(33, '74', '63', 'B', '2', '2', '2', '2', '3', '2', '3', '2', '3', '2', '3', '4', '--'),
(34, '74', '63', 'B', '2', '2', '3', '4', '2', '2', '5', '4', '1', '4', '3', '5', '--'),
(35, '89', '64', 'B', '4', '3', '4', '3', '3', '3', '5', '3', '4', '4', '3', '4', '--'),
(36, '89', '64', 'B', '1', '1', '1', '1', '1', '1', '5', '1', '5', '2', '3', '5', '--'),
(37, '83', '65', 'B', '1', '2', '2', '3', '3', '3', '4', '2', '2', '3', '3', '3', '--'),
(38, '83', '65', 'B', '4', '3', '5', '5', '4', '4', '5', '5', '1', '4', '3', '5', '--'),
(39, '75', '66', 'B', '5', '5', '5', '5', '4', '5', '5', '4', '5', '5', '3', '5', '--'),
(40, '75', '66', 'B', '4', '4', '5', '5', '4', '3', '5', '4', '2', '4', '3', '4', '--'),
(41, '74', '63', 'B', '2', '2', '2', '4', '2', '2', '4', '5', '5', '5', '5', '5', '--'),
(42, '89', '64', 'B', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(43, '83', '65', 'B', '4', '4', '4', '4', '4', '2', '5', '5', '4', '5', '5', '4', '--'),
(44, '75', '66', 'B', '4', '4', '4', '4', '4', '5', '5', '5', '4', '5', '5', '4', '--'),
(45, '74', '63', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(46, '85', '64', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(47, '69', '65', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(48, '75', '66', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(49, '74', '63', 'B', '2', '3', '4', '4', '2', '5', '5', '5', '5', '5', '5', '5', 'Google classroom initiative is very good initiative by faculty but should give time to a certain topic to let student understand the topic.'),
(50, '89', '64', 'B', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(51, '83', '65', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(52, '75', '66', 'B', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(53, '74', '63', 'B', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(54, '89', '64', 'B', '5', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(55, '83', '65', 'B', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(56, '75', '66', 'B', '4', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(57, '74', '63', 'B', '3', '4', '4', '4', '3', '4', '5', '5', '5', '5', '5', '5', 'i liked sirs online assesment system it should be continued, also to complete the vast syllabus class gone little bit fast but it is okay lets try to minimize and make in short the quick revision note'),
(58, '89', '64', 'B', '5', '4', '4', '4', '4', '4', '5', '5', '5', '4', '5', '5', '\r\nprofessor handles excedingly well the whole semester, very good approach throughout the semester as far as the final year importance is concerned.  i will recommend the teacher to ask more questions'),
(59, '83', '65', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'he is best teacher/ guide/motivator for stuents not only curriculi but he teaches how to intereact respond, and be mature, how to behave like engineer. and many things lacking words for him ...much re'),
(60, '75', '66', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'he is best teacher/ guide/motivator for stuents not only curriculi but he teaches how to intereact respond, and be mature, how to behave like engineer. he teaches us practically\r\n\r\n  i will recommend '),
(61, '74', '63', 'B', '2', '3', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', 'The sir is very helpful towards the students and understand the daily problems of students also helps to solve them. Provides digital notes on google classroom which i personally find very unique and '),
(62, '89', '64', 'B', '4', '3', '4', '4', '3', '5', '4', '5', '4', '5', '5', '5', 'Sir is very helpful and is precise about the questions that are important and comes in university paper.'),
(63, '83', '65', 'B', '3', '3', '5', '5', '4', '4', '5', '5', '5', '5', '5', '5', 'Sir always guide us to be technically sound and speak only what\'s necessary pertaining to subject. Overall approach of the sir towards subject is good.'),
(64, '75', '66', 'B', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', 'Sir is very helpul and imterested towards to new methods of studies '),
(65, '74', '63', 'B', '2', '3', '2', '4', '3', '4', '5', '4', '4', '5', '5', '4', '--'),
(66, '89', '64', 'B', '3', '3', '3', '4', '3', '4', '5', '4', '3', '5', '5', '4', '--'),
(67, '83', '65', 'B', '3', '4', '4', '5', '4', '5', '5', '4', '3', '5', '5', '4', '--'),
(68, '75', '66', 'B', '5', '4', '5', '4', '3', '5', '5', '5', '3', '5', '5', '4', '--');

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
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
