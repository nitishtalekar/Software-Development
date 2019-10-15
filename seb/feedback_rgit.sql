-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 10:18 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
('feedback_admin', 'mctrgit123');

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

-- --------------------------------------------------------

--
-- Table structure for table `feedback_count`
--

CREATE TABLE `feedback_count` (
  `fc_id` int(200) NOT NULL,
  `teacher_id` varchar(200) NOT NULL,
  `sub_id` varchar(200) NOT NULL,
  `question_no` varchar(200) NOT NULL,
  `count_1` varchar(200) NOT NULL,
  `count_2` varchar(200) NOT NULL,
  `count_3` varchar(200) NOT NULL,
  `count_4` varchar(200) NOT NULL,
  `count_5` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ques`
--

CREATE TABLE `feedback_ques` (
  `fbq_id` int(200) NOT NULL,
  `question` varchar(300) NOT NULL,
  `ans1` varchar(200) NOT NULL,
  `ans2` varchar(200) NOT NULL,
  `ans3` varchar(200) NOT NULL,
  `ans4` varchar(200) NOT NULL,
  `ans5` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_ques`
--

INSERT INTO `feedback_ques` (`fbq_id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`) VALUES
(1, 'HOW DOES THE TEACHER EXPLAIN THE SUBJECT ?', 'Exceedingly Well', 'Adequately Well', 'Reasonably Well', 'Inadequate', 'Totally Inadequate'),
(2, 'HOW IS THE LANGUAGE AND COMMUNICATION OF THE TEACHER ?', 'Excellent', 'Very Good', 'Good', 'Satisfactory', 'Poor'),
(3, 'HOW MUCH OPPORTUNITY DOES THE TEACHER GIVE FOR Q & A ?', 'Ample Opportunity', 'Sufficient Opportunity', 'Occasional Opportunity', 'Rare Opportunity', 'Never'),
(4, 'HOW IS THE TEACHER\'S CONTROL AND COMMAND OVER THE CLASS ?', 'Maintains Good Discipline', 'Maintains Reasonable Discipline', 'Some Disorder in class', 'Class is Frequently Disordered', 'Class is Noisy'),
(5, 'HOW DOES THE TEACHER STIMULATE YOU TO THINK ABOUT THE SUBJECT ?', 'Highly Stimulating', 'Adequately Stimulating', ' Stimulating', 'Rarely Stimulating', 'Never'),
(6, 'WHAT IS THE ATTITUDE OF THE TEACHER TOWARDS YOU ?', 'Usually Sympathetic and Helpful', 'Sometimes Sympathetic and Helpful', 'Sympathetic', 'Avoids Personal Contact', 'Appears Indifferent'),
(7, 'HOW MUCH OF THE SYLLABUS DOES THE TEACHER COMPLETE ?', 'Above 90%', '75% - 90%', '60% - 75%', '50% - 60%', 'Below 50%'),
(8, 'DOES THE TEACHER VICTIMIZE SOME STUDENTS ?', 'Always', 'Very Often', 'Frequently', 'Occasionally', 'Never'),
(9, 'HOW MUCH OF CLASS TIME DOES TEACHER USE FOR TEACHING THE SUBJECT AND DOESNT DIVIATE ?', 'Above 90%', '75% - 90%', '60% - 75%', '50% - 60%', 'Below 50%'),
(10, 'DOES THE TEACHER SHOW FAVOURITEISM TOWARDS THE STUDENTS IN OR OUTSIDE CLASS ?', 'Always', 'Very Often', 'Frequently', 'Occasionally', 'Never'),
(11, 'WHEN DOES THE TEACHER RETURN THE CORRECTED PERIODIC TEST OR ASSIGNMENT ?', 'Within a Week', 'Within a Fortnight', 'Within 3 Weeks', 'After a Month', 'Never'),
(12, 'HOW PUNTUAL IS THE TEACHER WHEN COMING TO THE CLASS ?', 'Always on time', 'Occasionally Late', 'Frequently Late', 'Often Late', 'Never on Time');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_temp`
--

CREATE TABLE `feedback_temp` (
  `fbt_id` int(200) NOT NULL,
  `teacher_id` varchar(200) NOT NULL,
  `sub_id` varchar(200) NOT NULL,
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

INSERT INTO `feedback_temp` (`fbt_id`, `teacher_id`, `sub_id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques10`, `ques11`, `ques12`, `remark`) VALUES
(1, '5', '6', '4', '4', '4', '5', '3', '5', '5', '1', '3', '1', '5', '5', 'good'),
(2, '32', '7', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
(3, '33', '8', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
(4, '37', '9', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
(5, '39', '10', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
(6, '117', '11', '1', '1', '1', '5', '1', '1', '3', '4', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
(7, '5', '6', '4', '5', '4', '4', '3', '5', '5', '2', '5', '2', '5', '5', '--'),
(8, '32', '7', '1', '1', '1', '1', '1', '3', '4', '1', '3', '1', '3', '4', 'He doesn\'t the subject quite well'),
(9, '33', '8', '5', '5', '5', '5', '5', '5', '5', '4', '5', '1', '3', '5', '--'),
(10, '37', '9', '5', '2', '3', '4', '3', '5', '5', '1', '4', '1', '5', '5', '--'),
(11, '39', '10', '5', '5', '5', '3', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(12, '117', '11', '1', '3', '3', '1', '1', '5', '5', '1', '5', '1', '4', '4', '--'),
(13, '5', '6', '5', '5', '4', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'INSTITUTE:\r\nVERY POOR VENTILATION\r\n'),
(14, '32', '7', '3', '4', '4', '4', '2', '5', '4', '1', '4', '1', '5', '5', '--'),
(15, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(16, '37', '9', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(17, '39', '10', '4', '4', '5', '4', '5', '5', '4', '1', '4', '1', '4', '5', '--'),
(18, '117', '11', '2', '4', '4', '3', '2', '5', '5', '1', '4', '1', '5', '5', '--'),
(19, '5', '6', '4', '4', '4', '5', '4', '5', '5', '2', '4', '2', '4', '5', 'Institute:- ventilation is  very poor please improve light connections\r\n                 '),
(20, '32', '7', '3', '3', '3', '2', '3', '3', '3', '4', '3', '2', '5', '4', 'PC\'s are very slow \r\nsome PC\'s are not even in working condition'),
(21, '33', '8', '5', '5', '5', '5', '5', '5', '5', '2', '5', '2', '5', '5', 'institute:- plz improve the lab conditions'),
(22, '37', '9', '5', '5', '5', '5', '5', '5', '5', '2', '5', '2', '5', '5', '--'),
(23, '39', '10', '5', '5', '5', '3', '3', '3', '5', '1', '5', '3', '3', '4', '--'),
(24, '117', '11', '3', '3', '3', '1', '3', '3', '3', '3', '3', '2', '4', '4', '--'),
(25, '5', '6', '4', '4', '5', '4', '5', '5', '5', '1', '5', '1', '5', '5', 'Good command over the subject but should not take tutorials seriously!'),
(26, '32', '7', '1', '1', '1', '3', '1', '1', '2', '5', '4', '2', '5', '5', 'Needs to improve his English .Fails to explain the concepts well. Doesnot have command over the class .Lacks adequate knowledge in the subject. Should be more organised and focus on relevant things ov'),
(27, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Excellent command over the subject . Encourages us to do new things and learn new things .Very supportive .The best teacher in comps !'),
(28, '37', '9', '3', '4', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', 'Perfect !'),
(29, '39', '10', '3', '4', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', 'Perfect !'),
(30, '117', '11', '3', '4', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', 'Perfect !'),
(31, '5', '6', '5', '5', '4', '5', '4', '5', '5', '4', '4', '1', '5', '5', '--'),
(32, '32', '7', '3', '3', '5', '3', '2', '3', '4', '2', '3', '1', '5', '5', '--'),
(33, '33', '8', '5', '5', '5', '5', '5', '5', '5', '4', '5', '1', '5', '5', '--'),
(34, '37', '9', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(35, '39', '10', '3', '3', '5', '3', '2', '3', '2', '2', '4', '1', '3', '5', '--'),
(36, '117', '11', '2', '2', '3', '2', '2', '3', '4', '4', '4', '3', '5', '2', '--'),
(37, '5', '6', '5', '5', '5', '4', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(38, '32', '7', '2', '3', '5', '4', '2', '5', '2', '4', '4', '2', '5', '5', '--'),
(39, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'EXCELLENT..!'),
(40, '37', '9', '5', '5', '5', '5', '5', '5', '4', '1', '4', '1', '5', '5', '--'),
(41, '39', '10', '3', '2', '5', '4', '4', '5', '2', '1', '5', '1', '5', '5', '--'),
(42, '117', '11', '1', '2', '2', '2', '1', '1', '4', '1', '5', '1', '3', '2', '--'),
(43, '5', '6', '3', '4', '5', '3', '3', '5', '5', '1', '5', '1', '5', '5', '--'),
(44, '32', '7', '3', '2', '5', '3', '3', '5', '5', '1', '4', '1', '5', '5', '--'),
(45, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(46, '37', '9', '4', '5', '5', '5', '4', '5', '5', '1', '5', '1', '5', '5', '--'),
(47, '39', '10', '4', '4', '5', '4', '3', '5', '5', '1', '5', '1', '5', '5', '--'),
(48, '117', '11', '3', '3', '4', '3', '2', '3', '5', '1', '5', '1', '5', '5', '--'),
(49, '5', '6', '3', '3', '4', '4', '4', '3', '5', '2', '4', '2', '5', '5', '--'),
(50, '32', '7', '2', '2', '3', '4', '2', '3', '3', '2', '3', '2', '3', '4', '--'),
(51, '33', '8', '4', '5', '5', '5', '4', '5', '4', '3', '4', '4', '5', '5', '--'),
(52, '37', '9', '5', '5', '5', '5', '5', '5', '5', '1', '5', '2', '5', '5', 'Heplful and generous.'),
(53, '39', '10', '3', '4', '4', '4', '2', '5', '4', '2', '4', '1', '3', '4', '--'),
(54, '117', '11', '3', '3', '2', '3', '2', '3', '3', '1', '4', '1', '5', '5', '--'),
(55, '5', '6', '5', '5', '4', '4', '3', '5', '5', '1', '4', '1', '5', '5', 'Very good '),
(56, '32', '7', '3', '3', '3', '3', '3', '3', '4', '1', '4', '1', '5', '4', 'good\r\n'),
(57, '33', '8', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', 'Excellent'),
(58, '37', '9', '5', '5', '4', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'very good'),
(59, '39', '10', '4', '4', '4', '5', '4', '5', '5', '1', '5', '2', '5', '5', 'Good\r\n'),
(60, '117', '11', '2', '2', '1', '2', '2', '2', '4', '1', '4', '2', '5', '4', 'Teacher needs to explain more clearly and definite '),
(61, '5', '6', '4', '5', '4', '4', '5', '4', '5', '1', '5', '1', '5', '5', 'Her explaination are excellent & also clears our doubts.'),
(62, '32', '7', '3', '1', '2', '3', '2', '3', '4', '1', '5', '1', '3', '4', '--'),
(63, '33', '8', '5', '5', '5', '5', '5', '4', '5', '2', '4', '1', '5', '5', 'His explainations are exceedingly well. He also makes us to think to solve problems due to which interest in that subject increases.'),
(64, '37', '9', '4', '4', '4', '4', '4', '3', '5', '1', '4', '1', '5', '5', '--'),
(65, '39', '10', '3', '1', '2', '2', '2', '3', '4', '1', '5', '1', '3', '4', '--'),
(66, '117', '11', '2', '2', '2', '2', '2', '2', '4', '1', '5', '1', '5', '4', '--'),
(67, '5', '6', '4', '4', '4', '4', '4', '5', '5', '2', '4', '4', '5', '5', 'Depth of knowledge is good but sometimes speed of teaching is fast.'),
(68, '32', '7', '2', '3', '2', '2', '2', '2', '4', '3', '4', '4', '5', '5', 'Has the depth of knowledge but can\'t explain well enough.'),
(69, '33', '8', '5', '5', '5', '5', '5', '4', '5', '3', '5', '2', '5', '5', 'Has the depth of knowledge and explains the concept well. Also creates interest towards subject.'),
(70, '37', '9', '4', '4', '4', '4', '4', '4', '5', '2', '4', '4', '5', '5', 'Is very friendly with students. Very helpful as a class advisor.'),
(71, '39', '10', '4', '4', '4', '4', '3', '3', '5', '4', '5', '1', '4', '5', '--'),
(72, '117', '11', '1', '3', '2', '1', '1', '1', '4', '4', '4', '3', '5', '5', 'Has the depth of knowledge but can\'t explain the topic well . Also she is very rude with students often.'),
(73, '5', '6', '5', '5', '5', '5', '5', '5', '5', '2', '5', '1', '5', '5', '--'),
(74, '32', '7', '2', '3', '4', '2', '4', '2', '3', '4', '3', '2', '3', '5', '--'),
(75, '33', '8', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '--'),
(76, '37', '9', '5', '5', '5', '5', '5', '5', '5', '1', '4', '5', '3', '5', '--'),
(77, '39', '10', '5', '5', '5', '5', '4', '5', '5', '5', '5', '1', '5', '5', '--'),
(78, '117', '11', '2', '1', '1', '3', '3', '3', '3', '1', '3', '1', '3', '5', '--'),
(79, '5', '6', '3', '3', '4', '4', '4', '4', '5', '3', '4', '2', '1', '5', '--'),
(80, '32', '7', '2', '3', '2', '3', '3', '4', '3', '4', '4', '1', '5', '5', 'Not so much interactive and sometimes fail to help us with the questions like the submission dates.'),
(81, '33', '8', '5', '5', '4', '5', '5', '5', '5', '2', '4', '1', '5', '5', '--'),
(82, '37', '9', '5', '4', '4', '4', '4', '5', '5', '2', '4', '3', '5', '5', '--'),
(83, '39', '10', '4', '5', '4', '4', '5', '5', '4', '1', '4', '3', '1', '5', '--'),
(84, '117', '11', '3', '2', '2', '2', '2', '2', '4', '4', '3', '1', '5', '4', '--'),
(85, '5', '6', '3', '3', '5', '2', '2', '3', '5', '1', '4', '1', '5', '5', '--'),
(86, '32', '7', '2', '2', '5', '4', '2', '5', '5', '1', '4', '1', '5', '5', '--'),
(87, '33', '8', '5', '5', '5', '5', '3', '5', '5', '1', '5', '1', '5', '5', 'note:\r\ninfrastrure is very poor\r\npc are not working'),
(88, '37', '9', '3', '3', '4', '4', '2', '4', '5', '1', '4', '1', '5', '4', 'washroom are unhygienic '),
(89, '39', '10', '4', '3', '5', '4', '3', '5', '5', '1', '5', '1', '5', '5', '--'),
(90, '117', '11', '2', '3', '5', '4', '1', '5', '4', '1', '4', '1', '5', '5', 'should work on teaching methodology'),
(91, '5', '6', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'I guess there  is nothing bad i can say.'),
(92, '32', '7', '3', '4', '4', '4', '3', '3', '5', '1', '5', '1', '5', '5', 'He needs to teach by taking more Examples. The infrastructure of OOPM Lab is not satisfactory  (Some of the Pc\'s DONT WORK).I would recommend instead of Assignments we would like to have projects excl'),
(93, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Sir is outstanding. only issue is related to infrastructure of Data Structure Lab.\r\nthe PC\'s are really old. due to high humidity it sometimes suffocated, hence i would like to recommend installation '),
(94, '37', '9', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Well met best Sir till Date.'),
(95, '39', '10', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '5', '5', 'nothing here.'),
(96, '117', '11', '3', '4', '4', '4', '3', '5', '4', '1', '4', '1', '5', '5', 'Well i would say i learnt 35% of my syllabus. She needs a lot of work in conveying the theory.'),
(97, '5', '6', '3', '3', '4', '4', '3', '5', '5', '1', '5', '1', '1', '5', '--'),
(98, '32', '7', '2', '3', '3', '3', '3', '4', '4', '1', '5', '1', '5', '4', '--'),
(99, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'learning Data structure...never had been boring.....it\'s very interesting...due to This SIR'),
(100, '37', '9', '4', '4', '4', '4', '4', '4', '5', '1', '4', '1', '4', '4', '--'),
(101, '39', '10', '4', '4', '4', '5', '4', '5', '5', '1', '5', '1', '5', '5', '--'),
(102, '117', '11', '2', '2', '2', '2', '2', '2', '3', '2', '4', '1', '3', '4', 'IN THIS 3rd SEMISTER....the only subject which i haven\'t understood ....is eccf...teacher was unable to make this subject interesting.....'),
(103, '5', '6', '3', '3', '3', '4', '3', '1', '5', '4', '4', '4', '4', '5', '--'),
(104, '32', '7', '2', '2', '2', '3', '2', '3', '4', '1', '4', '1', '4', '4', '--'),
(105, '33', '8', '5', '4', '4', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(106, '37', '9', '3', '3', '4', '4', '4', '3', '5', '1', '4', '2', '5', '4', '--'),
(107, '39', '10', '3', '2', '3', '3', '2', '3', '5', '4', '4', '4', '4', '5', '--'),
(108, '117', '11', '1', '2', '1', '1', '1', '1', '4', '4', '4', '4', '4', '5', '--'),
(109, '5', '6', '4', '5', '5', '4', '5', '5', '5', '1', '5', '1', '5', '5', 'Almost good, but sometimes explanation is not so good.'),
(110, '32', '7', '1', '3', '2', '4', '4', '1', '4', '3', '4', '1', '4', '4', 'Does not know in depth knowledge of the subject. Always writes every program by seeing into the notebook. Mostly talks in tapori language.'),
(111, '33', '8', '5', '5', '5', '5', '5', '5', '5', '2', '5', '1', '5', '5', 'Every thing is perfect.\r\n'),
(112, '37', '9', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Everything is perfect.'),
(113, '39', '10', '3', '4', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Cant explains well.\r\n '),
(114, '117', '11', '1', '3', '2', '3', '3', '3', '4', '1', '5', '1', '4', '3', 'Very much bad at teaching. Targets our class and personly says she will deduct marks of internal.'),
(115, '5', '6', '4', '4', '4', '4', '3', '5', '5', '1', '5', '1', '1', '5', '--'),
(116, '32', '7', '2', '3', '3', '4', '2', '5', '5', '1', '5', '2', '5', '5', 'Not able to explain the topics to us and usually makes mistakes while explaining. '),
(117, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(118, '37', '9', '5', '5', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', '--'),
(119, '39', '10', '5', '4', '5', '4', '4', '5', '4', '1', '5', '1', '1', '5', '--'),
(120, '117', '11', '1', '1', '2', '2', '1', '3', '4', '1', '4', '1', '5', '5', 'She has knowledge infact a lots of knowledge but she doesn\'t know how to teach us the subject. She uses very high level terms that are difficult to understand.'),
(121, '5', '6', '5', '5', '5', '5', '5', '5', '5', '2', '5', '3', '5', '5', '--'),
(122, '32', '7', '1', '1', '1', '1', '2', '1', '2', '3', '1', '1', '3', '3', '--'),
(123, '33', '8', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
(124, '37', '9', '5', '5', '5', '5', '5', '5', '5', '3', '5', '5', '5', '5', '--'),
(125, '39', '10', '5', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '--'),
(126, '117', '11', '1', '1', '1', '1', '1', '1', '2', '5', '1', '5', '1', '1', '--'),
(127, '5', '6', '3', '3', '4', '4', '3', '1', '5', '5', '4', '4', '5', '5', '--'),
(128, '32', '7', '2', '2', '2', '2', '2', '3', '4', '2', '3', '2', '4', '4', '--'),
(129, '33', '8', '4', '5', '4', '5', '5', '4', '5', '1', '5', '2', '4', '5', '--'),
(130, '37', '9', '3', '3', '2', '4', '4', '4', '5', '1', '4', '2', '5', '4', '--'),
(131, '39', '10', '3', '3', '2', '4', '4', '4', '5', '1', '4', '2', '5', '4', '--'),
(132, '117', '11', '3', '3', '2', '1', '2', '2', '4', '4', '4', '3', '4', '4', '--');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(200) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sub_sem` varchar(100) NOT NULL,
  `sub_dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `sub_sem`, `sub_dept`) VALUES
(1, 'Engineering Maths - 1', '1', 'Applied Sciences'),
(2, 'Engineering Physics - 1', '1', 'Applied Sciences'),
(3, 'Engineering Chemistry - 1', '1', 'Applied Sciences'),
(4, 'Engineering Mechanics', '1', 'Applied Sciences'),
(5, 'BEE', '1', 'Applied Sciences'),
(6, 'Applied Mathematics', '3', 'Computer Engineering'),
(7, 'Object Oriented Programming Methodology', '3', 'Computer Engineering'),
(8, 'Data Structures', '3', 'Computer Engineering'),
(9, 'Digital Logic Desing & Analysis', '3', 'Computer Engineering'),
(10, 'Discrete Mathematics', '3 ', 'Computer Engineering'),
(11, 'Electronic Ckts', '3', 'Computer Engineering'),
(12, 'Business Communication & Ethics', '5', 'Computer Engineering'),
(13, 'Computer Network', '5', 'Computer Engineering'),
(14, 'Database Management System', '5', 'Computer Engineering'),
(15, 'Microprocessor', '5', 'Computer Engineering'),
(16, 'Theory Of Computer Science', '5', 'Computer Engineering'),
(17, 'Web Design (Lab)', '5', 'Computer Engineering'),
(18, 'Advanced Algorithms', '5', 'Computer Engineering'),
(19, 'Multimedia Systems', '5', 'Computer Engineering'),
(20, 'Artificial Intelligence And Soft Computing', '7', 'Computer Engineering'),
(21, 'Digital Signal And Image Processing', '7', 'Computer Engineering'),
(22, 'Mobile Communication And Computation', '7', 'Computer Engineering'),
(23, 'Big Data Analytics', '7', 'Computer Engineering'),
(24, 'Management Information Systems', '7', 'Computer Engineering'),
(25, 'Cyber Security Laws', '7', 'Computer Engineering'),
(26, 'Thermodynamics', '3', 'Mechanical Engineering'),
(27, 'Strength Of Material', '3', 'Mechanical Engineering'),
(28, 'Computer Aided Machine Drawing', '3', 'Mechanical Engineering'),
(29, 'Production Process', '3', 'Mechanical Engineering'),
(30, 'Material Technology', '3', 'Mechanical Engineering'),
(31, 'Applied Mathematics', '3', 'Mechanical Engineering'),
(32, 'Internal Combustion Engines', '5', 'Mechanical Engineering'),
(33, 'Heat Transfer', '5', 'Mechanical Engineering'),
(34, 'Dynamics Of Machinery', '5', 'Mechanical Engineering'),
(35, 'Mechanical Measurements & Control', '5', 'Mechanical Engineering'),
(36, 'Design Of Jigs & Fixtures', '5', 'Mechanical Engineering'),
(37, 'Press Tool Design', '5', 'Mechanical Engineering'),
(38, 'Manufacturing Science Lab', '5', 'Mechanical Engineering'),
(39, 'Business Communication And Ethics', '5', 'Mechanical Engineering'),
(40, 'Production, Planning Control', '7', 'Mechanical Engineering'),
(41, 'Cad/Cam/Cae', '7', 'Mechanical Engineering'),
(42, 'Vii Machine Design-I', '7', 'Mechanical Engineering'),
(43, 'Automobile Engineering', '7', 'Mechanical Engineering'),
(44, 'Energy Audit & Management', '7', 'Mechanical Engineering'),
(45, 'Operation Research', '7', 'Mechanical Engineering'),
(46, 'Digital System Design', '3', 'Electronics and Telecommunication'),
(47, 'Circuit Theory and Networks', '3', 'Electronics and Telecommunication'),
(48, 'Electronic Instrumentation and Control', '3', 'Electronics and Telecommunication'),
(49, 'OOP using JAVA Laboratory', '3', 'Electronics and Telecommunication'),
(50, 'Applied Mathematics', '3', 'Electronics and Telecommunication'),
(51, 'Electronic Devices and Circuits-I', '3', 'Electronics and Telecommunication'),
(55, 'Microprocessor & Peripherals Interfacing', '5', 'Electronics and Telecommunication'),
(56, 'Digital Communication', '5', 'Electronics and Telecommunication'),
(57, 'Electromagnetic Engineering', '5 ', 'Electronics and Telecommunication'),
(58, 'Discrete Time Signal Processing', '5', 'Electronics and Telecommunication'),
(59, 'Microelectronics', '5', 'Electronics and Telecommunication'),
(60, 'Data Compression and Encryption', '5', 'Electronics and Telecommunication'),
(61, 'Business Communication & Ethics', '5', 'Electronics and Telecommunication'),
(63, 'Mobile Communication System', '7', 'Electronics and Telecommunication'),
(64, 'Optical Communication', '7', 'Electronics and Telecommunication'),
(65, 'Microwave Engineering', '7', 'Electronics and Telecommunication'),
(66, 'Cyber Security and Laws', '7', 'Electronics and Telecommunication'),
(67, 'Big Data Analytics', '7', 'Electronics and Telecommunication'),
(68, 'Embedded System', '7', 'Electronics and Telecommunication'),
(69, 'Analog Electronics', '3', 'Instumentation Engineering'),
(70, 'Transducers', '3', 'Instumentation Engineering'),
(71, 'Electrical Networks', '3', 'Instumentation Engineering'),
(72, 'Digital Electronics', '3', 'Instumentation Engineering'),
(73, 'OOPM', '3', 'Instumentation Engineering'),
(74, 'Applied Maths', '3', 'Instumentation Engineering'),
(75, 'Application of microprocessors', '5', 'Instumentation Engineering'),
(76, 'Signal System', '5', 'Instumentation Engineering'),
(77, 'Control System Design', '5', 'Instumentation Engineering'),
(78, 'Control System Components', '5', 'Instumentation Engineering'),
(79, 'Business Communication and Ethics', '5', 'Instumentation Engineering'),
(80, 'Advanced Sensors', '5', 'Instumentation Engineering'),
(81, 'FOI', '5', 'Instumentation Engineering'),
(82, 'Biomedical Instrumentation', '7', 'Instumentation Engineering'),
(83, 'Industrial Automation', '7', 'Instumentation Engineering'),
(84, 'Reliability Engineering', '7', 'Instumentation Engineering'),
(85, 'Industrial Process Control', '7', 'Instumentation Engineering'),
(86, 'Image Processing', '7', 'Instumentation Engineering'),
(87, 'Data Structures & Analysis', '3', 'Information Technology'),
(88, 'Database Management System', '3', 'Information Technology'),
(89, 'Applied Mathematics-', '3', 'Information Technology'),
(90, 'Logic Design', '3', 'Information Technology'),
(91, 'Java Programming', '3', 'Information Technology'),
(92, 'Principles of Communications', '3', 'Information Technology'),
(93, 'Microcontroller & Embedded Programming', '5', 'Information Technology'),
(94, 'E-Commerce & E-Business', '5', 'Information Technology'),
(95, 'Advanced Database Management Technology', '5', 'Information Technology'),
(96, 'Internet Programming', '5', 'Information Technology'),
(97, 'Business Communication and Ethics', '5', 'Information Technology'),
(98, 'Cryptography & Network Security', '5', 'Information Technology'),
(99, 'Management Information System', '7', 'Information Technology'),
(100, 'Artificial Intelligence', '7', 'Information Technology'),
(101, 'Infrastructure Security', '7', 'Information Technology'),
(102, 'Soft Computing', '7', 'Information Technology'),
(103, 'Enterprise Network Design', '7', 'Information Technology'),
(104, 'Software Testing Quality Assurance', '7', 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(200) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_dept`) VALUES
(1, 'Prof. N. S. Chame', 'Applied Sciences'),
(2, 'Prof. Chhaya Hinge', 'Applied Sciences'),
(3, 'Prof. Prasad Soman', 'Applied Sciences'),
(4, 'Prof. B. B. Sawant', 'Applied Sciences'),
(5, 'Prof. Rohini Ghule', 'Applied Sciences'),
(6, 'Prof. R.N.Shanmukha', 'Applied Sciences'),
(7, 'Prof. A.G.Ingole', 'Applied Sciences'),
(8, 'Dr. Neeta Kapse ', 'Applied Sciences'),
(9, 'Prof. Chetan Rane', 'Applied Sciences'),
(10, 'Prof. Sanjana Repal', 'Applied Sciences'),
(11, 'Prof. Shalini Sharma', 'Applied Sciences'),
(12, 'Prof. Nikhil V S', 'Applied Sciences'),
(13, 'Prof. Shashank Gothankar', 'Applied Sciences'),
(14, 'Prof.Shashikant Patil', 'Applied Sciences'),
(15, 'Dr. Mala Chatterjee', 'Applied Sciences'),
(16, 'Dr. Pallavi Mahalle', 'Applied Sciences'),
(17, 'Prof.Priyanka Deshmukh', 'Applied Sciences'),
(18, 'Dr. S. K. Chaudhari', 'Applied Sciences'),
(19, 'Prof. Rahul Chaurasiya', 'Applied Sciences'),
(20, 'Dr. Y.S. Patil ', 'Applied Sciences'),
(21, 'Prof.J.Deshmukh', 'Computer Engineering'),
(22, 'Prof.Naina Kaushik', 'Computer Engineering'),
(23, 'Prof.A.Lahane', 'Computer Engineering'),
(24, 'Prof.Sharmila S. Gaikwad', 'Computer Engineering'),
(25, 'Prof. Priya Parate', 'Computer Engineering'),
(26, 'Prof. Kaajal Sharma', 'Computer Engineering'),
(27, 'Prof.Suresh Mestry	', 'Computer Engineering'),
(28, 'Prof.D.S.Kale', 'Computer Engineering'),
(29, 'Prof.Priyanka Bhilare', 'Computer Engineering'),
(30, 'Prof. B.M. Patil', 'Computer Engineering'),
(31, 'Prof. Bhavesh Panchal', 'Computer Engineering'),
(32, 'Prof.Dipak Gaikar', 'Computer Engineering'),
(33, 'Prof. Dilip Dalgade', 'Computer Engineering'),
(34, 'Prof.Savita Lade', 'Computer Engineering'),
(35, 'Prof.S.P.Khachane', 'Computer Engineering'),
(36, 'Prof.Dnyaneshwar Kapse', 'Computer Engineering'),
(37, 'Prof.Dyaneshwar Dhanagar', 'Computer Engineering'),
(38, 'Prof.Preeti Satao', 'Computer Engineering'),
(39, 'Prof.Sumitra Sadhukhan', 'Computer Engineering'),
(40, 'Prof. P. R. Potdar', 'Mechanical Engineering'),
(41, 'Prof. A. V. Gotmare', 'Mechanical Engineering'),
(42, 'Prof. R. M. Siddiqui', 'Mechanical Engineering'),
(43, 'Dr. A. G. Londhekar', 'Mechanical Engineering'),
(44, 'Prof. N. B. Shahapure', 'Mechanical Engineering'),
(45, 'Prof. R. R. Gujar', 'Mechanical Engineering'),
(46, 'Prof. P. R. Paul', 'Mechanical Engineering'),
(47, 'Prof. C. R. Rane', 'Mechanical Engineering'),
(48, 'Prof. N.J. Panaskar', 'Mechanical Engineering'),
(49, 'Dr. K. M. Chaudhari', 'Mechanical Engineering'),
(50, 'Dr. S. U. Bokade', 'Mechanical Engineering'),
(52, 'Prof. S. R. Sharma', 'Mechanical Engineering'),
(53, 'Prof. V. B. Sawant', 'Mechanical Engineering'),
(54, 'Prof. S. D. Gaikwad', 'Mechanical Engineering'),
(55, 'Prof. D.S. Pandey', 'Mechanical Engineering'),
(56, 'Prof. M. R. Valse', 'Mechanical Engineering'),
(57, 'Prof. R Gujar', 'Mechanical Engineering'),
(58, 'Prof. Nikhil.S', 'Mechanical Engineering'),
(59, 'Prof. R.Y. Kurane', 'Mechanical Engineering'),
(60, 'Dr. R. V. Kale', 'Mechanical Engineering'),
(61, 'Prof. N. K. Deshmukh', 'Mechanical Engineering'),
(62, 'Prof. N. N. Bhostekar', 'Mechanical Engineering'),
(63, 'Prof. A.L.Mangrulkar', 'Mechanical Engineering'),
(66, 'Prof. D. K. Chakradev', 'Mechanical Engineering'),
(69, 'Prof.N.J.Balur', 'Electronics and Telecommunication'),
(70, 'Prof.S.V.Kulkarni', 'Electronics and Telecommunication'),
(72, 'Prof.S.Y.Gothankar', 'Electronics and Telecommunication'),
(73, 'Prof.M.U.Mokashi', 'Electronics and Telecommunication'),
(74, 'Prof. S.D.Patil', 'Electronics and Telecommunication'),
(75, 'Prof. P.N.Dave', 'Electronics and Telecommunication'),
(76, 'Prof.J.R.Mahajan', 'Electronics and Telecommunication'),
(77, 'Prof.M.K.Ahirrao ', 'Electronics and Telecommunication'),
(78, 'Prof.P.N.Sonar', 'Electronics and Telecommunication'),
(81, 'Prof.S.T.Sutar', 'Electronics and Telecommunication'),
(82, 'Prof. P.A.Rokde', 'Electronics and Telecommunication'),
(83, 'Prof.K.G.Sawarkar', 'Electronics and Telecommunication'),
(84, 'Dr.S.D.Deshmukh', 'Electronics and Telecommunication'),
(85, 'Prof.P.S.Patil', 'Electronics and Telecommunication'),
(86, 'Prof.S.R.Bhoyar', 'Electronics and Telecommunication'),
(87, 'Prof.A.R.Sagale', 'Electronics and Telecommunication'),
(88, 'Prof.Ganesh Tilve', 'Electronics and Telecommunication'),
(89, 'Prof.P.G.Pawar', 'Electronics and Telecommunication'),
(91, 'Prof. S.K.Gabhane', 'Electronics and Telecommunication'),
(92, 'Prof.S.S.Repal', 'Electronics and Telecommunication'),
(95, 'Prof.D.Joshi Jain', 'Instumentation Engineering'),
(96, 'Prof.N.S.Chame', 'Instumentation Engineering'),
(97, 'Prof.P.B. Gawande', 'Instumentation Engineering'),
(98, 'Prof. Vinita Vartak', 'Instumentation Engineering'),
(99, 'Prof.S.D.Sadala', 'Instumentation Engineering'),
(100, 'Prof.V.V.Kamankar', 'Instumentation Engineering'),
(101, 'Dr. Rinku Sharma', 'Instumentation Engineering'),
(102, 'Prof.Anuja Kadam', 'Instumentation Engineering'),
(103, 'Prof.R.G.Sharma', 'Instumentation Engineering'),
(104, 'Prof.A.B.Bedke', 'Instumentation Engineering'),
(105, 'Prof.S.P.Sadala', 'Instumentation Engineering'),
(106, 'Prof.V.Kamalakar', 'Instumentation Engineering'),
(107, 'Prof.G.K.Shende', 'Instumentation Engineering'),
(108, 'Prof. Tidve', 'Instumentation Engineering'),
(109, 'Prof. S.K.Sabnis', 'Information Technology'),
(110, 'Prof. Minal Awazekar', 'Information Technology'),
(111, 'Prof. Anushree Deshmukh', 'Information Technology'),
(112, 'Prof. Nilesh Rathod', 'Information Technology'),
(113, 'Prof. Ankush Hutke', 'Information Technology'),
(114, 'Prof. Swapnil Gharat', 'Information Technology'),
(115, 'Prof. Yogita Ganage', 'Information Technology'),
(116, 'Prof. A.E.Patil', 'Information Technology'),
(117, 'Prof. Ankita Malhotra', 'Information Technology'),
(118, 'Dr. S.B.Wankhade', 'Information Technology'),
(119, 'Prof. Ganesh Tilave', 'Information Technology'),
(121, 'Prof. Rinku Sharma', 'Information Technology'),
(122, 'Prof. Govind Wakure', 'Information Technology'),
(123, 'Dr. K. G. Chaudhari', 'Applied Sciences'),
(124, 'Prof. Ankur Ganorkar', 'Electronics and Telecommunication'),
(125, 'Dr. S. Y. Ket', 'Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `lec_id` int(100) NOT NULL,
  `dept` varchar(200) NOT NULL,
  `sem` varchar(200) NOT NULL,
  `lec_div` varchar(100) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `sub_id` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaching`
--

INSERT INTO `teaching` (`lec_id`, `dept`, `sem`, `lec_div`, `teacher_id`, `sub_id`, `status`) VALUES
(1, 'Applied Sciences', '1', 'A', '4', '1', '00'),
(2, 'Applied Sciences', '1', 'A', '20', '2', '00'),
(3, 'Applied Sciences', '1', 'A', '16', '3', '00'),
(4, 'Applied Sciences', '1', 'A', '17', '4', '00'),
(5, 'Applied Sciences', '1', 'A', '2', '5', '00'),
(6, 'Applied Sciences', '1', 'B', '5', '1', '00'),
(7, 'Applied Sciences', '1', 'B', '123', '2', '00'),
(8, 'Applied Sciences', '1', 'B', '8', '3', '00'),
(9, 'Applied Sciences', '1', 'B', '6', '4', '00'),
(10, 'Applied Sciences', '1', 'B', '1', '5', '00'),
(11, 'Applied Sciences', '1', 'C', '19', '1', '00'),
(12, 'Applied Sciences', '1', 'C', '20', '2', '00'),
(13, 'Applied Sciences', '1', 'C', '8', '3', '00'),
(14, 'Applied Sciences', '1', 'C', '54', '4', '00'),
(15, 'Applied Sciences', '1', 'C', '3', '5', '00'),
(16, 'Applied Sciences', '1', 'D', '19', '1', '00'),
(17, 'Applied Sciences', '1', 'D', '123', '2', '00'),
(18, 'Applied Sciences', '1', 'D', '16', '3', '00'),
(19, 'Applied Sciences', '1', 'D', '6', '4', '00'),
(20, 'Applied Sciences', '1', 'D', '2', '5', '00'),
(21, 'Applied Sciences', '1', 'E', '4', '1', '00'),
(22, 'Applied Sciences', '1', 'E', '20', '2', '00'),
(23, 'Applied Sciences', '1', 'E', '15', '3', '00'),
(24, 'Applied Sciences', '1', 'E', '9', '4', '00'),
(25, 'Applied Sciences', '1', 'E', '13', '5', '00'),
(26, 'Applied Sciences', '1', 'F', '11', '1', '00'),
(27, 'Applied Sciences', '1', 'F', '123', '2', '00'),
(28, 'Applied Sciences', '1', 'F', '15', '3', '00'),
(29, 'Applied Sciences', '1', 'F', '12', '4', '00'),
(30, 'Applied Sciences', '1', 'F', '10', '5', '00'),
(31, 'Applied Sciences', '1', 'G', '4', '1', '00'),
(32, 'Applied Sciences', '1', 'G', '123', '2', '00'),
(33, 'Applied Sciences', '1', 'G', '8', '3', '00'),
(34, 'Applied Sciences', '1', 'G', '17', '4', '00'),
(35, 'Applied Sciences', '1', 'G', '3', '5', '00'),
(36, 'Mechanical Engineering', '3', 'A', '60', '26', '01'),
(37, 'Mechanical Engineering', '3', 'A', '46', '26', '01'),
(38, 'Mechanical Engineering', '3', 'A', '40', '27', '00'),
(39, 'Mechanical Engineering', '3', 'A', '44', '28', '00'),
(40, 'Mechanical Engineering', '3', 'A', '55', '29', '00'),
(41, 'Mechanical Engineering', '3', 'A', '59', '30', '00'),
(42, 'Mechanical Engineering', '3', 'A', '52', '31', '00'),
(43, 'Mechanical Engineering', '3', 'B', '45', '26', '00'),
(44, 'Mechanical Engineering', '3', 'B', '63', '27', '00'),
(45, 'Mechanical Engineering', '3', 'B', '47', '28', '00'),
(46, 'Mechanical Engineering', '3', 'B', '62', '29', '00'),
(47, 'Mechanical Engineering', '3', 'B', '44', '30', '00'),
(48, 'Mechanical Engineering', '3', 'B', '52', '31', '00'),
(49, 'Mechanical Engineering', '5', 'A', '46', '32', '00'),
(50, 'Mechanical Engineering', '5', 'A', '49', '33', '00'),
(51, 'Mechanical Engineering', '5', 'A', '54', '34', '00'),
(52, 'Mechanical Engineering', '5', 'A', '53', '35', '00'),
(53, 'Mechanical Engineering', '5', 'A', '62', '36', '10'),
(54, 'Mechanical Engineering', '5', 'A', '55', '37', '10'),
(55, 'Mechanical Engineering', '5', 'A', '62', '38', '00'),
(56, 'Mechanical Engineering', '5', 'A', '66', '39', '00'),
(57, 'Mechanical Engineering', '5', 'B', '45', '32', '00'),
(58, 'Mechanical Engineering', '5', 'B', '56', '33', '00'),
(59, 'Mechanical Engineering', '5', 'B', '42', '34', '00'),
(60, 'Mechanical Engineering', '5', 'B', '12', '35', '00'),
(61, 'Mechanical Engineering', '5', 'B', '59', '37', '10'),
(62, 'Mechanical Engineering', '5', 'B', '59', '38', '00'),
(63, 'Mechanical Engineering', '5', 'B', '66', '39', '00'),
(64, 'Mechanical Engineering', '7', 'A', '50', '40', '01'),
(65, 'Mechanical Engineering', '7', 'A', '41', '40', '01'),
(66, 'Mechanical Engineering', '7', 'A', '63', '41', '00'),
(67, 'Mechanical Engineering', '7', 'A', '42', '42', '00'),
(68, 'Mechanical Engineering', '7', 'A', '61', '43', '00'),
(69, 'Mechanical Engineering', '7', 'A', '43', '44', '10'),
(70, 'Mechanical Engineering', '7', 'A', '48', '45', '10'),
(71, 'Mechanical Engineering', '7', 'B', '48', '40', '00'),
(72, 'Mechanical Engineering', '7', 'B', '53', '41', '00'),
(73, 'Mechanical Engineering', '7', 'B', '41', '42', '00'),
(74, 'Mechanical Engineering', '7', 'B', '43', '43', '00'),
(75, 'Mechanical Engineering', '7', 'B', '40', '45', '10'),
(76, 'Computer Engineering', '3', 'A', '5', '6', '00'),
(77, 'Computer Engineering', '3', 'A', '33', '7', '00'),
(78, 'Computer Engineering', '3', 'A', '38', '8', '00'),
(79, 'Computer Engineering', '3', 'A', '34', '9', '00'),
(80, 'Computer Engineering', '3', 'A', '39', '10', '00'),
(81, 'Computer Engineering', '3', 'A', '124', '11', '00'),
(82, 'Computer Engineering', '3', 'B', '5', '6', '00'),
(83, 'Computer Engineering', '3', 'B', '32', '7', '00'),
(84, 'Computer Engineering', '3', 'B', '33', '8', '00'),
(85, 'Computer Engineering', '3', 'B', '37', '9', '00'),
(86, 'Computer Engineering', '3', 'B', '39', '10', '00'),
(87, 'Computer Engineering', '3', 'B', '117', '11', '00'),
(88, 'Computer Engineering', '5', 'A', '14', '12', '00'),
(89, 'Computer Engineering', '5', 'A', '35', '13', '00'),
(90, 'Computer Engineering', '5', 'A', '25', '14', '00'),
(91, 'Computer Engineering', '5', 'A', '36', '15', '00'),
(92, 'Computer Engineering', '5', 'A', '22', '16', '00'),
(93, 'Computer Engineering', '5', 'A', '24', '17', '00'),
(94, 'Computer Engineering', '5', 'A', '26', '18', '10'),
(95, 'Computer Engineering', '5', 'B', '14', '12', '00'),
(96, 'Computer Engineering', '5', 'B', '30', '13', '00'),
(97, 'Computer Engineering', '5', 'B', '29', '14', '00'),
(98, 'Computer Engineering', '5', 'B', '36', '15', '00'),
(99, 'Computer Engineering', '5', 'B', '22', '16', '00'),
(100, 'Computer Engineering', '5', 'B', '24', '17', '00'),
(101, 'Computer Engineering', '5', 'B', '31', '19', '10'),
(102, 'Computer Engineering', '7', 'A', '27', '20', '01'),
(103, 'Computer Engineering', '7', 'A', '28', '20', '01'),
(104, 'Computer Engineering', '7', 'A', '21', '21', '00'),
(105, 'Computer Engineering', '7', 'A', '125', '22', '01'),
(106, 'Computer Engineering', '7', 'A', '34', '22', '01'),
(107, 'Computer Engineering', '7', 'A', '31', '23', '00'),
(108, 'Computer Engineering', '7', 'A', '24', '24', '10'),
(109, 'Computer Engineering', '7', 'B', '28', '20', '01'),
(110, 'Computer Engineering', '7', 'B', '27', '20', '01'),
(111, 'Computer Engineering', '7', 'B', '21', '21', '00'),
(112, 'Computer Engineering', '7', 'B', '125', '22', '01'),
(113, 'Computer Engineering', '7', 'B', '34', '22', '01'),
(114, 'Computer Engineering', '7', 'B', '23', '23', '00'),
(115, 'Computer Engineering', '7', 'B', '35', '25', '10'),
(116, 'Electronics and Telecommunication', '3', 'A', '91', '46', '00'),
(117, 'Electronics and Telecommunication', '3', 'A', '81', '47', '00'),
(118, 'Electronics and Telecommunication', '3', 'A', '72', '48', '00'),
(119, 'Electronics and Telecommunication', '3', 'A', '22', '49', '01'),
(120, 'Electronics and Telecommunication', '3', 'A', '38', '49', '01'),
(121, 'Electronics and Telecommunication', '3', 'A', '27', '49', '01'),
(122, 'Electronics and Telecommunication', '3', 'A', '88', '50', '00'),
(123, 'Electronics and Telecommunication', '3', 'A', '76', '51', '00'),
(124, 'Electronics and Telecommunication', '3', 'B', '70', '46', '00'),
(125, 'Electronics and Telecommunication', '3', 'B', '81', '47', '00'),
(126, 'Electronics and Telecommunication', '3', 'B', '85', '48', '00'),
(127, 'Electronics and Telecommunication', '3', 'B', '22', '49', '01'),
(128, 'Electronics and Telecommunication', '3', 'B', '38', '49', '01'),
(129, 'Electronics and Telecommunication', '3', 'B', '25', '49', '01'),
(130, 'Electronics and Telecommunication', '3', 'B', '19', '50', '00'),
(131, 'Electronics and Telecommunication', '3', 'B', '76', '51', '00'),
(132, 'Electronics and Telecommunication', '5', 'A', '82', '55', '00'),
(133, 'Electronics and Telecommunication', '5', 'A', '84', '56', '00'),
(134, 'Electronics and Telecommunication', '5', 'A', '86', '57', '00'),
(135, 'Electronics and Telecommunication', '5', 'A', '78', '58', '00'),
(136, 'Electronics and Telecommunication', '5', 'A', '92', '59', '10'),
(137, 'Electronics and Telecommunication', '5', 'A', '77', '60', '10'),
(138, 'Electronics and Telecommunication', '5', 'A', '7', '61', '00'),
(143, 'Electronics and Telecommunication', '5', 'B', '91', '55', '00'),
(144, 'Electronics and Telecommunication', '5', 'B', '84', '56', '00'),
(145, 'Electronics and Telecommunication', '5', 'B', '70', '57', '00'),
(146, 'Electronics and Telecommunication', '5', 'B', '87', '58', '00'),
(147, 'Electronics and Telecommunication', '5', 'B', '92', '59', '10'),
(148, 'Electronics and Telecommunication', '5', 'B', '77', '60', '10'),
(149, 'Electronics and Telecommunication', '5', 'B', '7', '61', '00'),
(150, 'Electronics and Telecommunication', '7', 'A', '74', '63', '00'),
(151, 'Electronics and Telecommunication', '7', 'A', '85', '64', '00'),
(152, 'Electronics and Telecommunication', '7', 'A', '69', '65', '00'),
(153, 'Electronics and Telecommunication', '7', 'A', '75', '66', '10'),
(154, 'Electronics and Telecommunication', '7', 'A', '73', '67', '10'),
(155, 'Electronics and Telecommunication', '7', 'A', '82', '68', '10'),
(156, 'Electronics and Telecommunication', '7', 'B', '74', '63', '00'),
(157, 'Electronics and Telecommunication', '7', 'B', '89', '64', '00'),
(158, 'Electronics and Telecommunication', '7', 'B', '83', '65', '00'),
(159, 'Electronics and Telecommunication', '7', 'B', '75', '66', '10'),
(160, 'Electronics and Telecommunication', '7', 'B', '73', '67', '10'),
(161, 'Electronics and Telecommunication', '7', 'B', '82', '68', '10'),
(162, 'Instumentation Engineering', '3', 'A', '97', '69', '00'),
(163, 'Instumentation Engineering', '3', 'A', '100', '70', '00'),
(164, 'Instumentation Engineering', '3', 'A', '104', '71', '00'),
(165, 'Instumentation Engineering', '3', 'A', '105', '72', '00'),
(166, 'Instumentation Engineering', '3', 'A', '32', '73', '00'),
(167, 'Instumentation Engineering', '3', 'A', '108', '74', '00'),
(168, 'Instumentation Engineering', '5', 'A', '98', '75', '00'),
(169, 'Instumentation Engineering', '5', 'A', '1', '76', '00'),
(170, 'Instumentation Engineering', '5', 'A', '105', '77', '00'),
(171, 'Instumentation Engineering', '5', 'A', '107', '78', '00'),
(172, 'Instumentation Engineering', '5', 'A', '101', '79', '00'),
(173, 'Instumentation Engineering', '5', 'A', '102', '80', '10'),
(174, 'Instumentation Engineering', '5', 'A', '100', '81', '10'),
(175, 'Instumentation Engineering', '7', 'A', '102', '82', '00'),
(176, 'Instumentation Engineering', '7', 'A', '98', '83', '00'),
(177, 'Instumentation Engineering', '7', 'A', '103', '84', '00'),
(178, 'Instumentation Engineering', '7', 'A', '107', '85', '00'),
(179, 'Instumentation Engineering', '7', 'A', '95', '86', '00'),
(180, 'Information Technology', '3', 'A', '113', '87', '00'),
(181, 'Information Technology', '3', 'A', '111', '88', '00'),
(182, 'Information Technology', '3', 'A', '119', '89', '00'),
(183, 'Information Technology', '3', 'A', '109', '90', '00'),
(184, 'Information Technology', '3', 'A', '113', '91', '00'),
(185, 'Information Technology', '3', 'A', '117', '92', '00'),
(186, 'Information Technology', '5', 'A', '114', '93', '00'),
(187, 'Information Technology', '5', 'A', '118', '94', '01'),
(188, 'Information Technology', '5', 'A', '116', '94', '01'),
(189, 'Information Technology', '5', 'A', '111', '95', '00'),
(190, 'Information Technology', '5', 'A', '110', '96', '00'),
(191, 'Information Technology', '5', 'A', '101', '97', '00'),
(192, 'Information Technology', '5', 'A', '109', '98', '00'),
(193, 'Information Technology', '7', 'A', '116', '99', '00'),
(194, 'Information Technology', '7', 'A', '112', '100', '00'),
(195, 'Information Technology', '7', 'A', '115', '101', '00'),
(196, 'Information Technology', '7', 'A', '118', '102', '00'),
(197, 'Information Technology', '7', 'A', '122', '103', '00'),
(198, 'Information Technology', '7', 'A', '112', '104', '01'),
(199, 'Information Technology', '7', 'A', '115', '104', '01'),
(200, 'Computer Engineering', '7', 'B', '24', '24', '10'),
(201, 'Computer Engineering', '7', 'A', '35', '25', '10'),
(202, 'Computer Engineering', '5', 'A', '31', '19', '10'),
(203, 'Computer Engineering', '5', 'B', '26', '18', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fb_id`),
  ADD UNIQUE KEY `t_id` (`teacher_id`,`sub_id`,`year`);

--
-- Indexes for table `feedback_count`
--
ALTER TABLE `feedback_count`
  ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `feedback_ques`
--
ALTER TABLE `feedback_ques`
  ADD PRIMARY KEY (`fbq_id`);

--
-- Indexes for table `feedback_temp`
--
ALTER TABLE `feedback_temp`
  ADD PRIMARY KEY (`fbt_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `teacher_name` (`teacher_name`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`lec_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fb_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_count`
--
ALTER TABLE `feedback_count`
  MODIFY `fc_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_ques`
--
ALTER TABLE `feedback_ques`
  MODIFY `fbq_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback_temp`
--
ALTER TABLE `feedback_temp`
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `lec_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
