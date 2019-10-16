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
(1, '74', '63', 'A', '3', '2', '3', '3', '3', '3', '4', '5', '4', '5', '5', '5', '--'),
(2, '85', '64', 'A', '3', '3', '1', '3', '2', '1', '5', '4', '4', '4', '4', '5', 'bad attitude\r\n'),
(3, '69', '65', 'A', '5', '5', '4', '5', '5', '5', '5', '4', '5', '4', '5', '5', 'better than others'),
(4, '75', '66', 'A', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(5, '74', '63', 'A', '4', '4', '4', '4', '4', '4', '5', '3', '4', '3', '5', '5', '--'),
(6, '85', '64', 'A', '3', '4', '4', '4', '4', '4', '4', '1', '5', '3', '5', '5', '--'),
(7, '69', '65', 'A', '5', '5', '5', '5', '5', '5', '5', '2', '5', '3', '5', '5', '--'),
(8, '74', '63', 'A', '5', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '--'),
(9, '75', '66', 'A', '5', '5', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '--'),
(10, '85', '64', 'A', '2', '3', '2', '3', '3', '3', '4', '3', '4', '3', '3', '3', '--'),
(11, '69', '65', 'A', '4', '4', '4', '4', '4', '4', '5', '5', '5', '4', '5', '5', '--'),
(12, '75', '66', 'A', '4', '4', '4', '5', '4', '4', '5', '5', '5', '5', '5', '5', '--'),
(13, '74', '63', 'A', '4', '3', '4', '4', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(14, '85', '64', 'A', '3', '3', '4', '5', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(15, '69', '65', 'A', '3', '4', '4', '5', '4', '5', '5', '4', '5', '5', '5', '5', '--'),
(16, '75', '66', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(17, '74', '63', 'A', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(18, '85', '64', 'A', '4', '4', '4', '4', '3', '4', '5', '5', '5', '5', '5', '5', '--'),
(19, '69', '65', 'A', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(20, '75', '66', 'A', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(21, '74', '63', 'A', '3', '3', '3', '4', '4', '5', '5', '5', '4', '5', '5', '5', '--'),
(22, '85', '64', 'A', '4', '3', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(23, '69', '65', 'A', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(24, '75', '66', 'A', '4', '3', '3', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(25, '74', '63', 'A', '1', '1', '2', '4', '1', '3', '5', '4', '5', '5', '5', '5', '--'),
(26, '85', '64', 'A', '3', '3', '3', '4', '3', '3', '3', '4', '5', '5', '5', '5', '--'),
(27, '69', '65', 'A', '4', '4', '4', '4', '3', '4', '5', '4', '5', '4', '5', '5', '--'),
(28, '75', '66', 'A', '3', '3', '3', '4', '4', '4', '5', '5', '3', '5', '5', '4', '--'),
(29, '74', '63', 'A', '2', '4', '2', '4', '4', '3', '4', '5', '4', '5', '5', '5', 'uses ppt for teaching which student are unable to understnd'),
(30, '85', '64', 'A', '2', '4', '2', '4', '4', '3', '4', '5', '4', '5', '5', '5', 'uses ppt for teaching which student are unable to understand'),
(31, '69', '65', 'A', '2', '4', '3', '3', '3', '4', '3', '5', '2', '3', '5', '4', 'need to be less strict and focus more on subject. '),
(32, '75', '66', 'A', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'he never teaches about subject instead talk about something else only.\r\ndemotivate student  '),
(33, '74', '63', 'A', '1', '1', '3', '1', '3', '4', '4', '3', '5', '4', '5', '5', 'Need to change the teaching techniques and need to explain well '),
(34, '85', '64', 'A', '3', '3', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', 'The above Feedback was given by keeping Pratiksha Ma\'am in mind. We don\'t like Boyar sir\'s teaching. '),
(35, '69', '65', 'A', '4', '3', '4', '4', '4', '4', '4', '3', '4', '4', '5', '5', ' Need to be less strict and show more sympathy towards students.'),
(36, '75', '66', 'A', '2', '2', '3', '4', '2', '3', '4', '5', '3', '5', '1', '4', 'No interest was developed in this subject. Poor\r\n'),
(37, '74', '63', 'A', '3', '4', '2', '5', '4', '4', '5', '5', '4', '5', '4', '5', '--'),
(38, '85', '64', 'A', '3', '3', '5', '5', '5', '4', '5', '5', '5', '5', '4', '5', '--'),
(39, '69', '65', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(40, '75', '66', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(41, '74', '63', 'A', '4', '3', '3', '5', '4', '5', '4', '5', '4', '5', '5', '5', '--'),
(42, '85', '64', 'A', '4', '4', '4', '4', '4', '4', '4', '5', '4', '4', '4', '5', '--'),
(43, '69', '65', 'A', '3', '2', '1', '4', '4', '1', '3', '1', '4', '1', '1', '4', 'Annoying. Always victimizes the students and acts as if she is the trustee of the college, bossing around and taunting the students all the time'),
(44, '75', '66', 'A', '4', '4', '5', '5', '4', '5', '4', '5', '4', '5', '4', '3', '--'),
(45, '74', '63', 'A', '2', '3', '4', '4', '3', '2', '5', '4', '4', '2', '5', '5', 'too much delay in giving assignment questions which makes submissions hectic'),
(46, '85', '64', 'A', '4', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '--'),
(47, '69', '65', 'A', '3', '4', '4', '4', '3', '1', '5', '1', '4', '1', '4', '4', 'victimizes students frequently for negligible reasons making things extremely hectic for students. focuses a lot on unnecessary things rather then on teaching '),
(48, '75', '66', 'A', '3', '4', '4', '4', '4', '3', '4', '3', '4', '1', '4', '4', '--'),
(49, '74', '63', 'A', '2', '3', '4', '3', '2', '3', '4', '4', '5', '5', '5', '5', 'want some improvement for explaining the  topics from syllabus. also sir always come with 1 presentation and read only in lecture. so this method should avoid bcz everyone not understand by that metho'),
(50, '85', '64', 'A', '4', '4', '5', '4', '4', '3', '5', '4', '4', '4', '5', '5', 'good teacher, kind and helping.'),
(51, '69', '65', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'excellent teacher. good communication skill. mam never show attitude towards students.'),
(52, '75', '66', 'A', '4', '3', '1', '3', '5', '3', '3', '1', '3', '1', '3', '4', 'teach good but teaching by examples. they are not talking about proper topics which are included in syllabus. teaching contents are not sufficient.'),
(53, '74', '63', 'A', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', 'teacher can,t control the classroom and not teach properly.'),
(54, '85', '64', 'A', '4', '3', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(55, '69', '65', 'A', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', 'Teaching good but sometimes teach very fasly.'),
(56, '75', '66', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(57, '74', '63', 'A', '2', '1', '3', '2', '2', '2', '4', '4', '3', '5', '4', '4', '--'),
(58, '85', '64', 'A', '2', '1', '2', '2', '2', '2', '3', '3', '2', '4', '4', '4', '--'),
(59, '69', '65', 'A', '3', '4', '4', '4', '3', '3', '4', '4', '4', '5', '4', '4', '--'),
(60, '75', '66', 'A', '2', '2', '2', '2', '2', '2', '3', '3', '2', '2', '4', '4', '--'),
(61, '74', '63', 'A', '4', '4', '4', '3', '3', '4', '5', '4', '5', '5', '5', '4', '--'),
(62, '85', '64', 'A', '5', '4', '4', '4', '4', '4', '5', '3', '5', '5', '5', '4', 'there are two teaching staff so we are little confuse in syallabus'),
(63, '69', '65', 'A', '5', '4', '4', '3', '4', '4', '4', '4', '5', '5', '5', '5', '--'),
(64, '75', '66', 'A', '4', '4', '3', '4', '3', '3', '4', '4', '5', '5', '5', '5', '2 sided face where he says he he will give a question bank and in the end he says is not in the rule'),
(65, '74', '63', 'A', '3', '3', '1', '3', '2', '1', '5', '3', '5', '5', '5', '3', '\r\nSir write one paper and read that only in whole lecture never include any other important things which are necessary for course and never stop in saying something he always say and say and never sto'),
(66, '85', '64', 'A', '4', '3', '4', '4', '3', '4', '5', '4', '5', '5', '5', '5', 'Good teacher help us whenever needed.'),
(67, '69', '65', 'A', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Good teacher.'),
(68, '75', '66', 'A', '3', '4', '4', '4', '3', '5', '5', '4', '5', '5', '5', '5', 'Teach good but always say by giving examples and do more activity which is not necessary and including in the course and has a 2 sided face where he says i\'ll give question bank and in the end he says'),
(69, '74', '63', 'A', '4', '5', '4', '5', '5', '5', '5', '5', '4', '5', '5', '5', 'some concepts are not clear. '),
(70, '85', '64', 'A', '5', '3', '4', '5', '5', '4', '4', '5', '5', '5', '5', '5', 'english speaking is not good .'),
(71, '69', '65', 'A', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'very good prof. in EXTC department. very nice mam'),
(72, '75', '66', 'A', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', 'very nice professor.');

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
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
