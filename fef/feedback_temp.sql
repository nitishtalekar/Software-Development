-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 07:24 AM
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
(1, '11', '1', 'F', '4', '4', '4', '5', '4', '5', '4', '5', '4', '5', '5', '5', '--'),
(2, '123', '2', 'F', '4', '3', '4', '4', '4', '5', '3', '5', '5', '5', '4', '4', '--'),
(3, '15', '3', 'F', '4', '3', '4', '4', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(4, '12', '4', 'F', '4', '3', '5', '4', '5', '5', '4', '5', '4', '5', '5', '5', '--'),
(5, '10', '5', 'F', '3', '3', '4', '4', '5', '4', '4', '5', '4', '5', '5', '5', '--'),
(6, '11', '1', 'F', '3', '3', '4', '5', '5', '3', '4', '5', '5', '3', '5', '5', 'Must teach questions with higher difficulty level.'),
(7, '123', '2', 'F', '3', '2', '2', '2', '2', '2', '4', '4', '4', '5', '4', '4', '--'),
(8, '15', '3', 'F', '3', '1', '2', '1', '1', '2', '4', '4', '4', '4', '4', '4', '--'),
(9, '12', '4', 'F', '3', '2', '4', '4', '3', '3', '4', '5', '5', '5', '4', '5', 'handwriting of teacher is quite poor. we manier times dont get what is written on the board .'),
(10, '10', '5', 'F', '3', '4', '5', '5', '4', '4', '4', '5', '4', '5', '3', '4', 'should complete the syllabus'),
(11, '11', '1', 'F', '3', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', 'Helpful !'),
(12, '123', '2', 'F', '3', '2', '2', '3', '2', '2', '4', '2', '5', '5', '5', '5', 'Never interacts with students and thus make the lecture boring .'),
(13, '15', '3', 'F', '4', '3', '4', '3', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(14, '12', '4', 'F', '3', '2', '5', '4', '4', '4', '5', '5', '5', '5', '5', '5', '--'),
(15, '10', '5', 'F', '4', '4', '5', '4', '4', '4', '4', '5', '4', '5', '5', '5', '--'),
(16, '11', '1', 'F', '4', '3', '3', '4', '3', '3', '5', '4', '5', '3', '5', '5', 'must teach hard level sums'),
(17, '123', '2', 'F', '4', '3', '2', '4', '4', '4', '5', '4', '5', '4', '5', '5', 'should teach more interestingly'),
(18, '15', '3', 'F', '3', '3', '3', '4', '3', '3', '5', '3', '5', '2', '3', '5', '--'),
(19, '12', '4', 'F', '3', '3', '3', '5', '3', '3', '5', '5', '5', '4', '3', '5', '--'),
(20, '10', '5', 'F', '3', '3', '3', '5', '3', '3', '5', '3', '5', '5', '3', '5', '--'),
(21, '11', '1', 'F', '4', '4', '3', '5', '4', '4', '4', '3', '5', '5', '3', '5', '--'),
(22, '123', '2', 'F', '3', '3', '4', '4', '3', '4', '3', '5', '3', '5', '3', '4', '--'),
(23, '15', '3', 'F', '5', '1', '2', '2', '2', '3', '4', '5', '4', '5', '4', '5', '--'),
(24, '12', '4', 'F', '5', '3', '4', '4', '4', '3', '3', '5', '3', '5', '4', '5', '--'),
(25, '10', '5', 'F', '4', '4', '4', '4', '3', '3', '3', '4', '3', '5', '5', '4', '--'),
(26, '11', '1', 'F', '3', '4', '3', '5', '4', '4', '4', '3', '5', '5', '3', '5', '--'),
(27, '123', '2', 'F', '3', '5', '4', '5', '3', '5', '3', '5', '5', '4', '4', '5', '--'),
(28, '15', '3', 'F', '5', '1', '2', '2', '2', '3', '4', '5', '4', '5', '4', '5', '--'),
(29, '12', '4', 'F', '2', '1', '4', '4', '3', '3', '3', '5', '5', '4', '5', '5', '--'),
(30, '10', '5', 'F', '3', '4', '4', '5', '3', '4', '3', '1', '5', '4', '3', '5', '--'),
(31, '11', '1', 'F', '4', '3', '4', '4', '3', '5', '4', '5', '5', '4', '5', '5', 'Teaches well in class.'),
(32, '123', '2', 'F', '4', '3', '4', '3', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(33, '15', '3', 'F', '3', '3', '4', '3', '3', '4', '5', '5', '5', '5', '5', '5', 'Sometimes makes lecture boring '),
(34, '12', '4', 'F', '4', '2', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', 'Communication should be improved'),
(35, '10', '5', 'F', '4', '4', '4', '4', '3', '4', '4', '5', '5', '5', '5', '5', 'Teaches well'),
(36, '11', '1', 'F', '4', '5', '5', '5', '4', '5', '4', '4', '5', '5', '5', '5', 'should teach tutorial sums'),
(37, '123', '2', 'F', '4', '3', '2', '5', '4', '5', '4', '5', '4', '5', '5', '5', 'should bring exciting methods while teaching n make topic understand well'),
(38, '15', '3', 'F', '3', '3', '2', '4', '2', '2', '4', '5', '5', '5', '5', '5', 'teach in proper order n should be clear rather than confused should get the correctd ans and should not correct the answer in class to confuse students'),
(39, '12', '4', 'F', '4', '3', '3', '4', '4', '5', '4', '5', '5', '5', '5', '5', 'improve accent and should be clear on what to teach sums should be explained correctly with proper maeks assign to steps and give us a way of representing our answers well n to manage time '),
(40, '10', '5', 'F', '3', '3', '4', '5', '4', '4', '4', '5', '4', '5', '5', '5', 'should teach in proper order with every exciting methods solve complete sums n should not be left up to us should be good towards solving more tuff problems'),
(41, '11', '1', 'F', '4', '5', '5', '5', '4', '5', '4', '4', '5', '5', '5', '5', 'loving and caring.also teach some tutorial sums...'),
(42, '123', '2', 'F', '4', '3', '2', '5', '4', '5', '4', '5', '4', '5', '5', '5', 'yo,yo very nice...should decease the speed of study..'),
(43, '15', '3', 'F', '4', '4', '4', '5', '4', '5', '4', '5', '5', '5', '5', '5', 'very good,yo ,yo'),
(44, '12', '4', 'F', '5', '2', '5', '4', '2', '5', '4', '5', '5', '5', '5', '5', 'should improve the prounounciation as in rest is rust.... yo,yo.but i,m loving it..'),
(45, '10', '5', 'F', '4', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '--'),
(46, '11', '1', 'F', '4', '5', '4', '4', '4', '5', '5', '4', '5', '2', '5', '5', '--'),
(47, '123', '2', 'F', '4', '3', '3', '5', '4', '4', '4', '4', '5', '3', '5', '5', 'keeps explaining nonstop without any pause.'),
(48, '15', '3', 'F', '4', '4', '4', '4', '4', '5', '5', '4', '5', '4', '5', '5', '--'),
(49, '12', '4', 'F', '4', '4', '5', '4', '5', '5', '5', '5', '5', '4', '5', '5', 'teaching is enough good to understand. '),
(50, '10', '5', 'F', '3', '3', '2', '4', '5', '3', '4', '4', '4', '4', '5', '4', 'should teach in such a way that student can understand.\r\nonly rare amount of students understand her teaching'),
(51, '11', '1', 'F', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(52, '123', '2', 'F', '3', '3', '3', '3', '3', '5', '4', '5', '5', '5', '5', '5', '--'),
(53, '15', '3', 'F', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(54, '12', '4', 'F', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(55, '10', '5', 'F', '4', '4', '4', '5', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(56, '11', '1', 'F', '4', '3', '4', '4', '3', '5', '5', '5', '4', '5', '5', '5', 'Sometimes she speaks fast so it is difficult to understand sometimes but overall lectures are pretty good'),
(57, '123', '2', 'F', '3', '2', '3', '4', '3', '5', '4', '5', '5', '5', '5', '5', 'Teacher most of the time rarely ever does a proper understandable explanation while teaching theory but he teaches sums properly and nicely '),
(58, '15', '3', 'F', '3', '3', '4', '3', '3', '5', '5', '5', '4', '5', '5', '5', 'Nice towards everyone '),
(59, '12', '4', 'F', '4', '3', '4', '4', '3', '5', '5', '5', '4', '5', '5', '5', 'Good teacher'),
(60, '10', '5', 'F', '4', '4', '4', '5', '4', '5', '5', '5', '4', '5', '5', '5', 'Explains theory and sums really well.'),
(61, '11', '1', 'F', '5', '4', '4', '5', '5', '5', '4', '4', '5', '4', '5', '5', 'she has a really nice teaching skills.'),
(62, '123', '2', 'F', '3', '3', '3', '4', '3', '3', '3', '5', '4', '5', '4', '5', 'he should explain more clearly.'),
(63, '15', '3', 'F', '3', '3', '3', '4', '3', '3', '3', '5', '4', '5', '4', '5', 'he should explain more clearly.'),
(64, '12', '4', 'F', '3', '3', '3', '4', '3', '3', '3', '5', '4', '5', '4', '5', 'he should explain more clearly.'),
(65, '10', '5', 'F', '3', '3', '3', '4', '3', '3', '3', '5', '4', '5', '4', '5', 'he should explain more clearly.'),
(66, '97', '69', 'A', '4', '3', '4', '5', '5', '5', '4', '5', '5', '1', '5', '5', '--'),
(67, '100', '70', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(68, '104', '71', 'A', '3', '2', '4', '5', '4', '4', '4', '3', '4', '4', '5', '5', '--'),
(69, '105', '72', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '4', '4', '5', '--'),
(70, '32', '73', 'A', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(71, '108', '74', 'A', '5', '5', '5', '5', '5', '5', '4', '4', '5', '5', '5', '5', '--');

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
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
