-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:34 AM
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
(1, '4', '1', 'E', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'his teaching is awesome, makes subject really interesting and exciting'),
(2, '20', '2', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', 'sir really teaches well, makes mechanics a piece of cake, which anyone can eat'),
(3, '15', '3', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'thank you mam'),
(4, '9', '4', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'really well way of explaining subject'),
(5, '13', '5', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'extremely well'),
(6, '4', '1', 'E', '3', '3', '4', '3', '2', '3', '4', '5', '5', '5', '5', '5', '--'),
(7, '20', '2', 'E', '4', '4', '5', '5', '3', '3', '5', '4', '5', '4', '5', '5', '--'),
(8, '15', '3', 'E', '3', '2', '5', '3', '2', '5', '5', '5', '5', '5', '5', '5', '--'),
(9, '9', '4', 'E', '5', '5', '5', '5', '4', '5', '5', '4', '5', '5', '5', '5', '--'),
(10, '13', '5', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '3', '--'),
(11, '4', '1', 'E', '4', '3', '4', '5', '4', '4', '4', '5', '3', '4', '5', '5', '--'),
(12, '20', '2', 'E', '4', '4', '5', '5', '5', '4', '4', '5', '4', '4', '5', '4', '--'),
(13, '15', '3', 'E', '3', '3', '4', '4', '3', '5', '3', '4', '3', '3', '5', '5', '--'),
(14, '9', '4', 'E', '5', '4', '5', '4', '4', '4', '4', '5', '3', '4', '5', '5', '--'),
(15, '13', '5', 'E', '4', '3', '4', '4', '4', '4', '4', '4', '3', '5', '5', '4', '--'),
(16, '4', '1', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(17, '20', '2', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(18, '15', '3', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(19, '9', '4', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(20, '13', '5', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(21, '4', '1', 'E', '3', '2', '4', '5', '2', '5', '4', '5', '5', '2', '5', '5', '--'),
(22, '20', '2', 'E', '5', '5', '2', '5', '3', '5', '5', '5', '4', '4', '5', '5', '--'),
(23, '15', '3', 'E', '2', '3', '4', '3', '2', '5', '4', '5', '5', '5', '5', '5', '--'),
(24, '9', '4', 'E', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '--'),
(25, '13', '5', 'E', '4', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '4', '--'),
(26, '4', '1', 'E', '5', '4', '4', '3', '3', '2', '5', '5', '5', '5', '5', '5', 'perfect and polite'),
(27, '20', '2', 'E', '2', '3', '3', '3', '1', '2', '3', '4', '5', '4', '5', '5', 'very good'),
(28, '15', '3', 'E', '3', '4', '1', '1', '2', '1', '4', '5', '5', '5', '5', '5', 'very good'),
(29, '9', '4', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'excellent'),
(30, '13', '5', 'E', '3', '5', '4', '5', '3', '4', '4', '4', '4', '5', '5', '5', 'very good'),
(31, '4', '1', 'E', '5', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(32, '20', '2', 'E', '5', '4', '4', '4', '4', '5', '5', '5', '5', '4', '5', '4', '--'),
(33, '15', '3', 'E', '4', '4', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '--'),
(34, '9', '4', 'E', '4', '3', '4', '4', '4', '4', '3', '5', '4', '4', '5', '5', '--'),
(35, '13', '5', 'E', '4', '4', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '--'),
(36, '4', '1', 'E', '4', '3', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(37, '20', '2', 'E', '3', '2', '4', '3', '3', '3', '4', '4', '4', '5', '5', '5', '--'),
(38, '15', '3', 'E', '3', '2', '3', '2', '3', '3', '5', '5', '5', '5', '5', '5', '--'),
(39, '9', '4', 'E', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '--'),
(40, '13', '5', 'E', '4', '4', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '--'),
(41, '4', '1', 'E', '3', '3', '3', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(42, '20', '2', 'E', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(43, '15', '3', 'E', '4', '3', '3', '4', '4', '4', '4', '5', '5', '5', '5', '5', '--'),
(44, '9', '4', 'E', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '--'),
(45, '13', '5', 'E', '5', '4', '4', '5', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(46, '4', '1', 'E', '5', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(47, '20', '2', 'E', '4', '4', '4', '4', '3', '4', '5', '4', '4', '4', '5', '4', '--'),
(48, '15', '3', 'E', '4', '3', '4', '3', '4', '4', '5', '4', '4', '5', '5', '4', ' must improve sound and communication'),
(49, '9', '4', 'E', '5', '4', '4', '4', '5', '5', '5', '5', '4', '5', '4', '5', '--'),
(50, '13', '5', 'E', '5', '4', '4', '5', '5', '5', '5', '5', '4', '5', '4', '5', '--'),
(51, '4', '1', 'E', '5', '4', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(52, '20', '2', 'E', '4', '3', '4', '5', '4', '4', '5', '3', '5', '3', '5', '5', '--'),
(53, '15', '3', 'E', '4', '3', '5', '4', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(54, '9', '4', 'E', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(55, '13', '5', 'E', '5', '4', '5', '5', '4', '5', '5', '5', '4', '5', '5', '5', '--'),
(56, '74', '63', 'B', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '3', '5', '--'),
(57, '89', '64', 'B', '5', '5', '4', '4', '3', '4', '5', '5', '5', '5', '5', '5', '--'),
(58, '83', '65', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(59, '75', '66', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(60, '4', '1', 'E', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(61, '20', '2', 'E', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(62, '15', '3', 'E', '4', '3', '3', '4', '2', '5', '4', '5', '4', '5', '5', '5', '--'),
(63, '9', '4', 'E', '5', '4', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(64, '13', '5', 'E', '5', '4', '4', '5', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(65, '4', '1', 'E', '3', '4', '4', '3', '3', '5', '4', '3', '5', '5', '5', '5', 'can make the subject more intersting which he does not do usualy'),
(66, '20', '2', 'E', '2', '1', '4', '3', '1', '5', '2', '5', '5', '5', '5', '5', 'he teaches well,but the way he speaks cant be understan by us. he gives good notes'),
(67, '15', '3', 'E', '3', '5', '1', '1', '1', '2', '3', '5', '5', '5', '5', '5', 'she should change her attitude towards students.she should try to solve the dout of students.she is very harh towards the student.'),
(68, '9', '4', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'the perfect person to be a teacher.completes portion before many days of exam which gives time for self study'),
(69, '13', '5', 'E', '1', '3', '1', '1', '1', '1', '1', '5', '4', '5', '3', '4', 'he teaches everthing except bee. sloves hardly 1 sum in a lecture.competes portion before 2 to 3 days before exam which does not gives time for revision.'),
(70, '4', '1', 'E', '4', '3', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(71, '20', '2', 'E', '4', '5', '4', '4', '3', '5', '4', '4', '5', '4', '5', '5', '--'),
(72, '15', '3', 'E', '4', '5', '5', '3', '3', '5', '5', '4', '4', '3', '5', '5', '--'),
(73, '9', '4', 'E', '3', '3', '2', '3', '3', '2', '5', '4', '5', '3', '5', '5', '--'),
(74, '13', '5', 'E', '4', '4', '5', '5', '4', '5', '4', '4', '4', '5', '5', '5', '--'),
(75, '4', '1', 'E', '4', '3', '1', '3', '2', '5', '3', '5', '5', '5', '5', '5', 'the sirs teaching is phenomenal but he runs the portion just to complete the syllabus. '),
(76, '20', '2', 'E', '3', '3', '3', '5', '2', '4', '4', '4', '5', '1', '5', '5', 'the sir teaching us is very helpful but the only thing that triggers me is the way he goes on writing the notes by missing out important points to explain '),
(77, '15', '3', 'E', '4', '2', '4', '4', '2', '1', '3', '4', '5', '5', '5', '5', '--'),
(78, '9', '4', 'E', '4', '2', '5', '5', '3', '2', '5', '4', '5', '5', '5', '5', 'the sir teaching us is the best, but he never keeps his phone on silent mode while teaching thus distracting the class'),
(79, '13', '5', 'E', '3', '3', '4', '3', '4', '5', '4', '5', '3', '5', '5', '5', '--'),
(80, '4', '1', 'E', '5', '4', '5', '3', '5', '5', '5', '5', '5', '5', '5', '5', 'I really understand what teacher teaches in the class . no complain about the teacher and about the teachers knowledge . enjoyable teaching . this the best  teacher of maths i ever had'),
(81, '20', '2', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'very help-full in nature . able to understand 100% of the sirs explanation . best sir ever for physics . '),
(82, '15', '3', 'E', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', 'very helpful and great teaching . keep it up'),
(83, '9', '4', 'E', '3', '3', '3', '4', '2', '3', '4', '3', '4', '1', '5', '5', 'not satisfied by the teaching and the attitude of teacher . very often demotivates us . '),
(84, '13', '5', 'E', '5', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', 'great knowledge . helps us to see the problems in different aspects and always motivates us for the 100%. shares practical applications and knowledge . great teacher '),
(85, '4', '1', 'E', '5', '4', '5', '4', '4', '5', '5', '4', '5', '5', '5', '5', 'Excellent sir!!  I understands his teaching and he solves doubts \r\n'),
(86, '20', '2', 'E', '5', '4', '4', '5', '5', '5', '5', '4', '4', '5', '5', '5', 'Helpful , Sir is down to earth and solves our doubts'),
(87, '15', '3', 'E', '1', '1', '1', '1', '1', '1', '3', '3', '3', '5', '5', '3', 'Always in hurry not allowing to ask doubts ,should be retired.'),
(88, '9', '4', 'E', '4', '3', '5', '5', '4', '2', '5', '4', '5', '4', '5', '5', 'Sometimes speaks very harshly, should known how to talk to students'),
(89, '13', '5', 'E', '4', '5', '5', '5', '5', '5', '4', '4', '4', '4', '5', '5', 'Shares knowledge and experience . Helps to see the subject in pratical use'),
(90, '4', '1', 'E', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', ' Have some patience and let students solve the example.'),
(91, '20', '2', 'E', '5', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', 'HELPFUL '),
(92, '15', '3', 'E', '4', '3', '1', '1', '2', '2', '5', '4', '5', '3', '5', '5', 'ALWAYS IN A HURRY FOR COMPLETION OF THE SUBJECT.'),
(93, '9', '4', 'E', '5', '5', '5', '5', '5', '4', '4', '4', '5', '4', '5', '5', 'THE TEACHER GOT NO CHILL.'),
(94, '13', '5', 'E', '3', '4', '5', '5', '5', '4', '4', '4', '3', '4', '5', '4', 'Share\'s knowledge and experience of in and outside the world.');

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
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
