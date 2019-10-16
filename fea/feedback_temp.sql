-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 09:24 AM
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
(1, '4', '1', 'A', '4', '3', '5', '4', '4', '5', '5', '5', '4', '5', '5', '5', 'Teaches very well.'),
(2, '20', '2', 'A', '4', '4', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(3, '16', '3', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(4, '17', '4', 'A', '5', '5', '4', '5', '4', '5', '5', '5', '5', '4', '5', '5', '--'),
(5, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(6, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'understand student well '),
(7, '20', '2', 'A', '3', '2', '2', '3', '2', '3', '4', '1', '3', '2', '5', '5', '--'),
(8, '16', '3', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(9, '17', '4', 'A', '3', '5', '4', '4', '2', '3', '4', '3', '4', '1', '5', '5', '--'),
(10, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(11, '4', '1', 'A', '5', '4', '2', '5', '5', '5', '4', '5', '3', '5', '5', '5', 'good teacher'),
(12, '20', '2', 'A', '4', '4', '4', '4', '4', '3', '4', '5', '5', '5', '1', '3', '--'),
(13, '16', '3', 'A', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(14, '17', '4', 'A', '4', '3', '1', '4', '4', '1', '4', '3', '2', '1', '5', '3', '--'),
(15, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(16, '4', '1', 'A', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', 'He is a very good Teacher'),
(17, '20', '2', 'A', '4', '3', '2', '4', '3', '4', '4', '4', '4', '5', '5', '5', '--'),
(18, '16', '3', 'A', '4', '5', '4', '5', '4', '4', '5', '4', '5', '5', '5', '5', '--'),
(19, '17', '4', 'A', '4', '4', '5', '5', '4', '1', '4', '3', '4', '4', '5', '5', '--'),
(20, '2', '5', 'A', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(21, '4', '1', 'A', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', 'He understands students problems. '),
(22, '20', '2', 'A', '2', '3', '2', '3', '1', '1', '3', '3', '2', '5', '1', '5', '--'),
(23, '16', '3', 'A', '2', '2', '5', '5', '3', '4', '5', '2', '5', '5', '5', '5', '--'),
(24, '17', '4', 'A', '5', '4', '5', '4', '5', '1', '5', '1', '5', '1', '5', '2', 'She boasts about working for certain number of hours and does not usually solve problems giving the reason she is tired .'),
(25, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(26, '4', '1', 'A', '4', '4', '4', '5', '4', '4', '5', '5', '4', '5', '5', '5', 'Teaching is good. I like the way he teach us.'),
(27, '20', '2', 'A', '4', '3', '4', '4', '4', '4', '5', '5', '4', '5', '5', '5', 'the teaching is good but sometimes i did\'t get what he is teaching. Probably he may be fast according to me '),
(28, '16', '3', 'A', '4', '3', '4', '4', '4', '4', '5', '5', '4', '5', '5', '5', 'the teaching is good but sometimes i did\'t get what he is teaching. Probably he may be fast according to me '),
(29, '17', '4', 'A', '4', '5', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', 'she is good but little fast. she gave us time for solving the problems but very limited time'),
(30, '2', '5', 'A', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', 'She teach us very properly.'),
(31, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(32, '20', '2', 'A', '5', '3', '3', '1', '3', '4', '4', '5', '4', '4', '4', '5', '--'),
(33, '16', '3', 'A', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '--'),
(34, '17', '4', 'A', '5', '5', '5', '5', '3', '4', '5', '5', '5', '4', '5', '5', '--'),
(35, '2', '5', 'A', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '4', '5', '--'),
(36, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(37, '20', '2', 'A', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(38, '16', '3', 'A', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(39, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(40, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(41, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(42, '20', '2', 'A', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(43, '16', '3', 'A', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(44, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(45, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(46, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(47, '20', '2', 'A', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(48, '16', '3', 'A', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(49, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(50, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(51, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(52, '20', '2', 'A', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(53, '16', '3', 'A', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(54, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(55, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', 'VERY HELPFUL TEACHER.\r\nWE WANT THEM AS OUR CLASS ADVISER FOR ALL FOUR YEARS.'),
(56, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(57, '20', '2', 'A', '4', '3', '4', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'HELPFUL TEACHER.\r\nGIVE MORE ATTENTION TOWARDS OUR SKILLS RATHER THAN BEING ONLY PORTION ORIENTED.'),
(58, '16', '3', 'A', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'CONDUCTS SEMINAR LIKE PART FOR IMPROVING OUR SKILLS . '),
(59, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'SOLVES \'N\' NUMBER OF  PROBLEMS IN CLASS.\r\nVERY HELPFUL.\r\nGIVES 100% IN CLASS .'),
(60, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'EXPLAINS EACH AHD EVERY CONCEPT  DEEPLY.\r\nTAKE EXTRA LECTURES TO MAKE US UNDERSTAND TOPIC.\r\n'),
(61, '4', '1', 'A', '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Very suportive and best sir of RGIT'),
(62, '20', '2', 'A', '4', '3', '3', '4', '4', '3', '4', '2', '4', '5', '5', '5', 'NEED TO TAKE MORE LECTURES FOT BETTER UNDERSTANDING'),
(63, '16', '3', 'A', '4', '4', '4', '5', '4', '4', '4', '5', '4', '5', '5', '5', 'NERD TO GIVE PROPER DIAGRAMS AND SHE IS GOOD FOR CHEMISTRY'),
(64, '17', '4', 'A', '4', '3', '3', '4', '2', '3', '4', '1', '4', '1', '5', '5', 'SHE HAS EGO'),
(65, '2', '5', 'A', '4', '4', '5', '5', '4', '5', '4', '5', '5', '5', '4', '5', 'PLS GIVE MORE LECTURES'),
(66, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', 'helpful sir....want class adviser for next sem also...'),
(67, '20', '2', 'A', '3', '2', '5', '4', '5', '4', '4', '2', '5', '4', '5', '5', 'lets hoping for good communication from sir ...and understandable language'),
(68, '16', '3', 'A', '5', '4', '4', '4', '3', '5', '3', '5', '5', '5', '5', '4', 'very good mam ...attitude is great towards students '),
(69, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', 'having a great mam ..respect is on high level'),
(70, '2', '5', 'A', '5', '3', '5', '4', '4', '5', '3', '5', '5', '4', '5', '5', 'josh is always high'),
(71, '4', '1', 'A', '5', '5', '2', '3', '4', '4', '5', '3', '5', '5', '5', '5', 'ALL THE TEACHERS ARE GOOD TO TEACH.SOME OF THEM ARE HELPFULL AND SOME OF ARE NOT.'),
(72, '20', '2', 'A', '5', '5', '4', '3', '4', '5', '5', '5', '5', '3', '4', '5', 'PHYSICS TEACHER IS ALWAYS HELPFULL IN HIS SYLLABUS .HE  IS GOOD IN  PHYSICS DEPARTMENT.'),
(73, '16', '3', 'A', '4', '4', '5', '4', '5', '4', '4', '3', '4', '3', '5', '5', 'SHE HAS CLASSICAL SKILL TO TEACH.SHE HAS SOME ATTITUDE TOWARD THE STUDENTS BUT IT IS GOOD.'),
(74, '17', '4', 'A', '3', '3', '2', '3', '5', '3', '5', '3', '5', '1', '4', '5', 'SHE HAS ATTITUDE TO COMMUNICATE TO STUDENTS ;SHE IS VERY HELPFULL IN HER SYLLABUS.'),
(75, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'SHE IS MY FAVOURITE TEACHER.SHE HAS A GOOD QUALITY TO UNDERSTAND STUDENTS REQUIRMENT .'),
(76, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'His teaching skills are excellent.\r\nHe make the enivronment very calm & cool by which we understand the content thought in class.\r\nWe want B.B.Sawant sir to be our class advisor for 4 Years.\r\n'),
(77, '20', '2', 'A', '3', '2', '4', '3', '2', '2', '4', '5', '5', '5', '5', '5', 'He shouldn\'t teach in english. He make the subject interesting he should teach in marathi or hindi.\r\nthe matter is not deliver properly.  '),
(78, '16', '3', 'A', '5', '5', '5', '5', '4', '2', '4', '3', '5', '5', '5', '5', 'better teaching skills but content is not deliver accuratly.\r\n'),
(79, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', 'best teaching skills. \r\nmake the atmos cool \r\nhelp everyone when they are in need'),
(80, '2', '5', 'A', '5', '4', '3', '4', '3', '2', '4', '5', '4', '5', '5', '5', 'good teaching skills.\r\n'),
(81, '4', '1', 'A', '5', '5', '4', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'sawant sir is an extra-ordinary tr, helping and very understanding. \r\nWE REQUEST SAWANT SIR TO BE OUR CLASS ADVISOR FOR THE 4 YRS.\r\n'),
(82, '20', '2', 'A', '4', '5', '5', '4', '5', '5', '3', '5', '5', '5', '5', '5', 'HE NEEDS TO MAKE THE SUBJECT LITTLE INTERESTING ,AS WE FIND IT BORING MANY A TIMES.\r\nNUMERICALS ARE NOT TAKEN IN CLASS'),
(83, '16', '3', 'A', '3', '4', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'PALLAVI MAM PUTS ALOT OF EFFORTS WHILE TEACHING WHICH MAKES THE SUBJECT EASIER FOR US. \r\nWE DONT HAVE TO PUT MORE EFFORTS BECAUSE OF HER REVISION IN CLASS.'),
(84, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'ONE OF THE MOST UNDERSTANDING TR IN RGIT.\r\nSHE KNOWS STUDENTS MENTALITY, AND REALLY THINKS FOR HER STUDENTS.'),
(85, '2', '5', 'A', '5', '5', '5', '5', '4', '3', '4', '5', '5', '5', '5', '5', 'CHHAYA MAN PUTS LOT OF EFFORTS, BUT SHE NEEDS TO UNDERSTAND US AS STUDENTS. SHE TEACHES FOR A LONG TIME WHICH IS BENEFICIAL FOR US, BUT WE REALLY CANT TAKE SO MUCH AT A TIME.'),
(86, '4', '1', 'A', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', 'WE HAVE GOOD TEACHING STAFF FOR MATHS AND  I AM SATISFIED WITH IT.'),
(87, '20', '2', 'A', '3', '3', '3', '4', '2', '4', '3', '5', '4', '4', '5', '5', 'STAFF IS GOOD BUT NEEDS TO GIVE PROPER NOTES AND AMPLE OF SUMS FOR PRACTICE AND MAKE SUBJECT MORE INTERESTING.'),
(88, '16', '3', 'A', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', 'VERY GOOD STAFF FOR CHEMISTRY AND GIVES PROPER NOTES FOR IT AND AMPLE OF SUMS TOO.. NOTES OF STAFF THAT ARE SELF MADE ARE VERY HELPFUL.'),
(89, '17', '4', 'A', '4', '4', '4', '5', '4', '5', '4', '5', '5', '4', '5', '5', 'GOOD STAFF .'),
(90, '2', '5', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'VERY EXCELLENT AND MAKES EACH AND EVERY STUDENT ENTERTAIN WITH THEIR DOUBTS .'),
(91, '4', '1', 'A', '3', '3', '4', '4', '4', '5', '5', '4', '5', '5', '5', '5', 'Always helpful and undertands students problems'),
(92, '20', '2', 'A', '2', '1', '1', '1', '1', '1', '5', '5', '2', '5', '5', '5', 'Gives no proper explanation on any topic'),
(93, '16', '3', 'A', '3', '2', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', 'Good '),
(94, '17', '4', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Solves a lot of of problems in class and clears our doubts '),
(95, '2', '5', 'A', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Solves a lot of problems '),
(96, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'the teching skill is excellent  . we want sawant sir as our class advocator for full course .they solve problem with purfect solution.'),
(97, '20', '2', 'A', '4', '3', '4', '4', '5', '5', '4', '4', '5', '5', '5', '5', 'they are good in maintaining silence in class. never pressure student for any work. some time the lecture also board due to thoretical consecepts.'),
(98, '16', '3', 'A', '5', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', 'teacher give there best in class. solve every students problem in class. the give proper  answer to all things regarding study and other skill.'),
(99, '17', '4', 'A', '5', '4', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', 'best teaching in  mechanics. give all possible ways to solve and understand problem .'),
(100, '2', '5', 'A', '4', '5', '5', '5', '5', '4', '4', '5', '4', '5', '5', '5', 'give best efferts to subject. give more time for one subject. some time lecture become bore and not be helpful to understand what is going on class.'),
(101, '4', '1', 'A', '5', '4', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', 'Teacher teaches very well. Helps to clear concepts. '),
(102, '20', '2', 'A', '4', '1', '2', '3', '2', '5', '4', '4', '5', '4', '5', '5', 'Concepts are not clear. Teacher\'s communication skills are poor.'),
(103, '16', '3', 'A', '4', '4', '5', '5', '4', '5', '5', '3', '5', '5', '5', '5', 'Teaching is good. Gives many sums for practice.  Notes are good.'),
(104, '17', '4', 'A', '3', '5', '5', '5', '4', '4', '4', '4', '4', '1', '5', '5', 'Too fast. Needs to take into consideration that sums take time to solve and cannot be rushed as students might end up not understanding the question.'),
(105, '2', '5', 'A', '5', '4', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', 'Always clears doubts. Gives adequate time to solve problems in class. Enough time given for solving assignments. Teaching is good.'),
(106, '4', '1', 'A', '5', '5', '4', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'I want sawant as my class advicer for all my 4 years of engineering because he is not only supportative but also encourages and motivates everyone. \r\nI KINDLY REQUEST TO LET SAWANT SIR BE OUR CLASS AD'),
(107, '20', '2', 'A', '5', '5', '4', '4', '4', '5', '3', '5', '5', '5', '5', '5', 'Patil sir explains the subject well but he needs to make it little interesting and give little breaks as well.'),
(108, '16', '3', 'A', '4', '4', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', 'Pallavi mam expalins very well but she needs to explain the topic little more in detail and needs to be little slow while solving problems.'),
(109, '17', '4', 'A', '5', '5', '5', '4', '5', '5', '4', '5', '5', '5', '5', '5', 'Priyanka mam needs to be little more patient and needs to go little slow while solving numericals whether the numerical is easy or hard . '),
(110, '2', '5', 'A', '5', '5', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', 'Chhaya mam explains the concept well but she needs to be little patient and slow while solving numericals . she should also give  atleast 10 minutes break.'),
(111, '4', '1', 'A', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(112, '20', '2', 'A', '5', '5', '3', '4', '5', '4', '4', '4', '4', '5', '5', '5', '--'),
(113, '16', '3', 'A', '4', '4', '5', '4', '4', '4', '4', '4', '3', '4', '4', '3', '--'),
(114, '17', '4', 'A', '4', '4', '4', '5', '5', '4', '5', '4', '4', '2', '5', '5', '--'),
(115, '2', '5', 'A', '4', '5', '3', '2', '3', '4', '5', '4', '4', '4', '5', '5', '--');

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
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
