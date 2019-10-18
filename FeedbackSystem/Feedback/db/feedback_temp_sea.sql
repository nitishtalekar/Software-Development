-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 09:42 PM
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
-- Table structure for table `feedback_temp`
--
--
-- Dumping data for table `feedback_temp`
--

INSERT INTO `feedback_temp` (`teacher_id`, `sub_id`,`div_id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques10`, `ques11`, `ques12`, `remark`) VALUES
( '5', '6', 'A', '4', '4', '4', '5', '3', '5', '5', '1', '3', '1', '5', '5', 'good'),
( '32', '7', 'A', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
( '33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
( '37', '9', 'A','5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
( '39', '10', 'A','5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
( '117', '11', 'A','1', '1', '1', '5', '1', '1', '3', '4', '5', '5', '5', '5', 'Institute:\r\nThe labs are not properly equipped,\r\nThe ventilation is not proper atleast provide the classrooms with vents,\r\nThe PCs are really slow, printer\'s not available,\r\nHalf of the PCs dont work\r'),
( '5', '6', 'A','4', '5', '4', '4', '3', '5', '5', '2', '5', '2', '5', '5', '--'),
( '32', '7', 'A','1', '1', '1', '1', '1', '3', '4', '1', '3', '1', '3', '4', 'He doesn\'t the subject quite well'),
( '33', '8', 'A','5', '5', '5', '5', '5', '5', '5', '4', '5', '1', '3', '5', '--'),
( '37', '9', 'A','5', '2', '3', '4', '3', '5', '5', '1', '4', '1', '5', '5', '--'),
('39', '10', 'A','5', '5', '5', '3', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('117', '11', 'A','1', '3', '3', '1', '1', '5', '5', '1', '5', '1', '4', '4', '--'),
('5', '6', 'A','5', '5', '4', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'INSTITUTE:\r\nVERY POOR VENTILATION\r\n'),
('32', '7', 'A','3', '4', '4', '4', '2', '5', '4', '1', '4', '1', '5', '5', '--'),
('33', '8', 'A','5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('37', '9', 'A','5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('39', '10', 'A','4', '4', '5', '4', '5', '5', '4', '1', '4', '1', '4', '5', '--'),
('117', '11', 'A','2', '4', '4', '3', '2', '5', '5', '1', '4', '1', '5', '5', '--'),
('5', '6', 'A','4', '4', '4', '5', '4', '5', '5', '2', '4', '2', '4', '5', 'Institute:- ventilation is  very poor please improve light connections\r\n                 '),
('32', '7', 'A','3', '3', '3', '2', '3', '3', '3', '4', '3', '2', '5', '4', 'PC\'s are very slow \r\nsome PC\'s are not even in working condition'),
('33', '8', 'A','5', '5', '5', '5', '5', '5', '5', '2', '5', '2', '5', '5', 'institute:- plz improve the lab conditions'),
('37', '9', 'A','5', '5', '5', '5', '5', '5', '5', '2', '5', '2', '5', '5', '--'),
('39', '10', 'A','5', '5', '5', '3', '3', '3', '5', '1', '5', '3', '3', '4', '--'),
('117', '11', 'A','3', '3', '3', '1', '3', '3', '3', '3', '3', '2', '4', '4', '--'),
('5', '6', 'A','4', '4', '5', '4', '5', '5', '5', '1', '5', '1', '5', '5', 'Good command over the subject but should not take tutorials seriously!'),
('32', '7', 'A','1', '1', '1', '3', '1', '1', '2', '5', '4', '2', '5', '5', 'Needs to improve his English .Fails to explain the concepts well. Doesnot have command over the class .Lacks adequate knowledge in the subject. Should be more organised and focus on relevant things ov'),
('33', '8', 'A','5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Excellent command over the subject . Encourages us to do new things and learn new things .Very supportive .The best teacher in comps !'),
('37', '9', 'A','3', '4', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', 'Perfect !'),
('39', '10', 'A','3', '4', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', 'Perfect !'),
('117', '11', 'A','3', '4', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', 'Perfect !'),
('5', '6', 'A','5', '5', '4', '5', '4', '5', '5', '4', '4', '1', '5', '5', '--'),
('32', '7', 'A','3', '3', '5', '3', '2', '3', '4', '2', '3', '1', '5', '5', '--'),
('33', '8', 'A','5', '5', '5', '5', '5', '5', '5', '4', '5', '1', '5', '5', '--'),
('37', '9', 'A','5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('39', '10', 'A','3', '3', '5', '3', '2', '3', '2', '2', '4', '1', '3', '5', '--'),
('117', '11', 'A','2', '2', '3', '2', '2', '3', '4', '4', '4', '3', '5', '2', '--'),
('5', '6', 'A','5', '5', '5', '4', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('32', '7', 'A','2', '3', '5', '4', '2', '5', '2', '4', '4', '2', '5', '5', '--'),
('33', '8', 'A','5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'EXCELLENT..!'),
('37', '9', 'A','5', '5', '5', '5', '5', '5', '4', '1', '4', '1', '5', '5', '--'),
('39', '10', 'A','3', '2', '5', '4', '4', '5', '2', '1', '5', '1', '5', '5', '--'),
('117', '11', 'A','1', '2', '2', '2', '1', '1', '4', '1', '5', '1', '3', '2', '--'),
('5', '6', 'A', '3', '4', '5', '3', '3', '5', '5', '1', '5', '1', '5', '5', '--'),
('32', '7', 'A', '3', '2', '5', '3', '3', '5', '5', '1', '4', '1', '5', '5', '--'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('37', '9', 'A', '4', '5', '5', '5', '4', '5', '5', '1', '5', '1', '5', '5', '--'),
('39', '10', 'A', '4', '4', '5', '4', '3', '5', '5', '1', '5', '1', '5', '5', '--'),
('117', '11', 'A', '3', '3', '4', '3', '2', '3', '5', '1', '5', '1', '5', '5', '--'),
('5', '6', 'A', '3', '3', '4', '4', '4', '3', '5', '2', '4', '2', '5', '5', '--'),
('32', '7', 'A', '2', '2', '3', '4', '2', '3', '3', '2', '3', '2', '3', '4', '--'),
('33', '8', 'A', '4', '5', '5', '5', '4', '5', '4', '3', '4', '4', '5', '5', '--'),
('37', '9', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '2', '5', '5', 'Heplful and generous.'),
('39', '10', 'A', '3', '4', '4', '4', '2', '5', '4', '2', '4', '1', '3', '4', '--'),
('117', '11', 'A', '3', '3', '2', '3', '2', '3', '3', '1', '4', '1', '5', '5', '--'),
('5', '6', 'A', '5', '5', '4', '4', '3', '5', '5', '1', '4', '1', '5', '5', 'Very good '),
('32', '7', 'A', '3', '3', '3', '3', '3', '3', '4', '1', '4', '1', '5', '4', 'good\r\n'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', 'Excellent'),
('37', '9', 'A', '5', '5', '4', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'very good'),
('39', '10', 'A', '4', '4', '4', '5', '4', '5', '5', '1', '5', '2', '5', '5', 'Good\r\n'),
('117', '11', 'A', '2', '2', '1', '2', '2', '2', '4', '1', '4', '2', '5', '4', 'Teacher needs to explain more clearly and definite '),
('5', '6', 'A', '4', '5', '4', '4', '5', '4', '5', '1', '5', '1', '5', '5', 'Her explaination are excellent & also clears our doubts.'),
('32', '7', 'A', '3', '1', '2', '3', '2', '3', '4', '1', '5', '1', '3', '4', '--'),
('33', '8', 'A', '5', '5', '5', '5', '5', '4', '5', '2', '4', '1', '5', '5', 'His explainations are exceedingly well. He also makes us to think to solve problems due to which interest in that subject increases.'),
('37', '9', 'A', '4', '4', '4', '4', '4', '3', '5', '1', '4', '1', '5', '5', '--'),
('39', '10', 'A', '3', '1', '2', '2', '2', '3', '4', '1', '5', '1', '3', '4', '--'),
('117', '11', 'A', '2', '2', '2', '2', '2', '2', '4', '1', '5', '1', '5', '4', '--'),
('5', '6', 'A', '4', '4', '4', '4', '4', '5', '5', '2', '4', '4', '5', '5', 'Depth of knowledge is good but sometimes speed of teaching is fast.'),
('32', '7', 'A', '2', '3', '2', '2', '2', '2', '4', '3', '4', '4', '5', '5', 'Has the depth of knowledge but can\'t explain well enough.'),
('33', '8', 'A', '5', '5', '5', '5', '5', '4', '5', '3', '5', '2', '5', '5', 'Has the depth of knowledge and explains the concept well. Also creates interest towards subject.'),
('37', '9', 'A', '4', '4', '4', '4', '4', '4', '5', '2', '4', '4', '5', '5', 'Is very friendly with students. Very helpful as a class advisor.'),
('39', '10', 'A', '4', '4', '4', '4', '3', '3', '5', '4', '5', '1', '4', '5', '--'),
('117', '11', 'A', '1', '3', '2', '1', '1', '1', '4', '4', '4', '3', '5', '5', 'Has the depth of knowledge but can\'t explain the topic well . Also she is very rude with students often.'),
('5', '6', 'A', '5', '5', '5', '5', '5', '5', '5', '2', '5', '1', '5', '5', '--'),
('32', '7', 'A', '2', '3', '4', '2', '4', '2', '3', '4', '3', '2', '3', '5', '--'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '--'),
('37', '9', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '4', '5', '3', '5', '--'),
('39', '10', 'A', '5', '5', '5', '5', '4', '5', '5', '5', '5', '1', '5', '5', '--'),
('117', '11', 'A', '2', '1', '1', '3', '3', '3', '3', '1', '3', '1', '3', '5', '--'),
('5', '6', 'A', '3', '3', '4', '4', '4', '4', '5', '3', '4', '2', '1', '5', '--'),
('32', '7', 'A', '2', '3', '2', '3', '3', '4', '3', '4', '4', '1', '5', '5', 'Not so much interactive and sometimes fail to help us with the questions like the submission dates.'),
('33', '8', 'A', '5', '5', '4', '5', '5', '5', '5', '2', '4', '1', '5', '5', '--'),
('37', '9', 'A', '5', '4', '4', '4', '4', '5', '5', '2', '4', '3', '5', '5', '--'),
('39', '10', 'A', '4', '5', '4', '4', '5', '5', '4', '1', '4', '3', '1', '5', '--'),
('117', '11', 'A', '3', '2', '2', '2', '2', '2', '4', '4', '3', '1', '5', '4', '--'),
('5', '6', 'A', '3', '3', '5', '2', '2', '3', '5', '1', '4', '1', '5', '5', '--'),
('32', '7', 'A', '2', '2', '5', '4', '2', '5', '5', '1', '4', '1', '5', '5', '--'),
('33', '8', 'A', '5', '5', '5', '5', '3', '5', '5', '1', '5', '1', '5', '5', 'note:\r\ninfrastrure is very poor\r\npc are not working'),
('37', '9', 'A', '3', '3', '4', '4', '2', '4', '5', '1', '4', '1', '5', '4', 'washroom are unhygienic '),
('39', '10', 'A', '4', '3', '5', '4', '3', '5', '5', '1', '5', '1', '5', '5', '--'),
('117', '11', 'A', '2', '3', '5', '4', '1', '5', '4', '1', '4', '1', '5', '5', 'should work on teaching methodology'),
('5', '6', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'I guess there  is nothing bad i can say.'),
('32', '7', 'A', '3', '4', '4', '4', '3', '3', '5', '1', '5', '1', '5', '5', 'He needs to teach by taking more Examples. The infrastructure of OOPM Lab is not satisfactory  (Some of the Pc\'s DONT WORK).I would recommend instead of Assignments we would like to have projects excl'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Sir is outstanding. only issue is related to infrastructure of Data Structure Lab.\r\nthe PC\'s are really old. due to high humidity it sometimes suffocated, hence i would like to recommend installation '),
('37', '9', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Well met best Sir till Date.'),
('39', '10', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '5', '5', 'nothing here.'),
('117', '11', 'A', '3', '4', '4', '4', '3', '5', '4', '1', '4', '1', '5', '5', 'Well i would say i learnt 35% of my syllabus. She needs a lot of work in conveying the theory.'),
('5', '6', 'A', '3', '3', '4', '4', '3', '5', '5', '1', '5', '1', '1', '5', '--'),
('32', '7', 'A', '2', '3', '3', '3', '3', '4', '4', '1', '5', '1', '5', '4', '--'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'learning Data structure...never had been boring.....it\'s very interesting...due to This SIR'),
('37', '9', 'A', '4', '4', '4', '4', '4', '4', '5', '1', '4', '1', '4', '4', '--'),
('39', '10', 'A', '4', '4', '4', '5', '4', '5', '5', '1', '5', '1', '5', '5', '--'),
('117', '11', 'A', '2', '2', '2', '2', '2', '2', '3', '2', '4', '1', '3', '4', 'IN THIS 3rd SEMISTER....the only subject which i haven\'t understood ....is eccf...teacher was unable to make this subject interesting.....'),
('5', '6', 'A', '3', '3', '3', '4', '3', '1', '5', '4', '4', '4', '4', '5', '--'),
('32', '7', 'A', '2', '2', '2', '3', '2', '3', '4', '1', '4', '1', '4', '4', '--'),
('33', '8', 'A', '5', '4', '4', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('37', '9', 'A', '3', '3', '4', '4', '4', '3', '5', '1', '4', '2', '5', '4', '--'),
('39', '10', 'A', '3', '2', '3', '3', '2', '3', '5', '4', '4', '4', '4', '5', '--'),
('117', '11', 'A', '1', '2', '1', '1', '1', '1', '4', '4', '4', '4', '4', '5', '--'),
('5', '6', 'A', '4', '5', '5', '4', '5', '5', '5', '1', '5', '1', '5', '5', 'Almost good, but sometimes explanation is not so good.'),
('32', '7', 'A', '1', '3', '2', '4', '4', '1', '4', '3', '4', '1', '4', '4', 'Does not know in depth knowledge of the subject. Always writes every program by seeing into the notebook. Mostly talks in tapori language.'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '2', '5', '1', '5', '5', 'Every thing is perfect.\r\n'),
('37', '9', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Everything is perfect.'),
('39', '10', 'A', '3', '4', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', 'Cant explains well.\r\n '),
('117', '11', 'A', '1', '3', '2', '3', '3', '3', '4', '1', '5', '1', '4', '3', 'Very much bad at teaching. Targets our class and personly says she will deduct marks of internal.'),
('5', '6', 'A', '4', '4', '4', '4', '3', '5', '5', '1', '5', '1', '1', '5', '--'),
('32', '7', 'A', '2', '3', '3', '4', '2', '5', '5', '1', '5', '2', '5', '5', 'Not able to explain the topics to us and usually makes mistakes while explaining. '),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('37', '9', 'A', '5', '5', '5', '5', '4', '5', '4', '1', '4', '1', '5', '5', '--'),
('39', '10', 'A', '5', '4', '5', '4', '4', '5', '4', '1', '5', '1', '1', '5', '--'),
('117', '11', 'A', '1', '1', '2', '2', '1', '3', '4', '1', '4', '1', '5', '5', 'She has knowledge infact a lots of knowledge but she doesn\'t know how to teach us the subject. She uses very high level terms that are difficult to understand.'),
('5', '6', 'A', '5', '5', '5', '5', '5', '5', '5', '2', '5', '3', '5', '5', '--'),
('32', '7', 'A', '1', '1', '1', '1', '2', '1', '2', '3', '1', '1', '3', '3', '--'),
('33', '8', 'A', '5', '5', '5', '5', '5', '5', '5', '1', '5', '1', '5', '5', '--'),
('37', '9', 'A', '5', '5', '5', '5', '5', '5', '5', '3', '5', '5', '5', '5', '--'),
('39', '10', 'A', '5', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '--'),
('117', '11', 'A', '1', '1', '1', '1', '1', '1', '2', '5', '1', '5', '1', '1', '--'),
('5', '6', 'A', '3', '3', '4', '4', '3', '1', '5', '5', '4', '4', '5', '5', '--'),
('32', '7', 'A', '2', '2', '2', '2', '2', '3', '4', '2', '3', '2', '4', '4', '--'),
('33', '8', 'A', '4', '5', '4', '5', '5', '4', '5', '1', '5', '2', '4', '5', '--'),
('37', '9', 'A', '3', '3', '2', '4', '4', '4', '5', '1', '4', '2', '5', '4', '--'),
('39', '10', 'A', '3', '3', '2', '4', '4', '4', '5', '1', '4', '2', '5', '4', '--'),
('117', '11', 'A', '3', '3', '2', '1', '2', '2', '4', '4', '4', '3', '4', '4', '--');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback_temp`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
