-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2019 at 01:49 PM
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
-- Database: `rgit`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `grno` varchar(100) NOT NULL,
  `achievement1` varchar(100) NOT NULL,
  `ach_certi1` varchar(100) NOT NULL,
  `achievement2` varchar(100) NOT NULL,
  `ach_certi2` varchar(100) NOT NULL,
  `achievement3` varchar(100) NOT NULL,
  `ach_certi3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`grno`, `achievement1`, `ach_certi1`, `achievement2`, `ach_certi2`, `achievement3`, `ach_certi3`) VALUES
('12345', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `applied_student`
--

CREATE TABLE `applied_student` (
  `applied_company_id` int(16) NOT NULL,
  `student_grno` int(16) NOT NULL,
  `company_id` int(16) NOT NULL,
  `date` date NOT NULL,
  `selected_notselected` int(4) NOT NULL DEFAULT '-1',
  `selected_notselected_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_student`
--

INSERT INTO `applied_student` (`applied_company_id`, `student_grno`, `company_id`, `date`, `selected_notselected`, `selected_notselected_date`) VALUES
(14, 1, 1, '2019-07-26', -1, '2019-08-15'),
(15, 1, 2, '2019-07-26', 1, '0000-00-00'),
(16, 2, 2, '2019-07-26', 1, '0000-00-01'),
(17, 2, 1, '2019-07-26', 1, '0000-00-00'),
(18, 3, 3, '2019-08-16', 1, '2019-08-16');

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

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`grno`, `course1`, `validity1`, `certificate1`, `course2`, `validity2`, `certificate2`, `course3`, `validity3`, `certificate3`) VALUES
('123', '', 0, '', '', 0, '', '', 0, ''),
('1234', '', 0, '', '', 0, '', '', 0, ''),
('12344', '', 0, '', '', 0, '', '', 0, ''),
('12345', '', 0, '', '', 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(19) NOT NULL,
  `company_name` varchar(11) NOT NULL,
  `minimum_percentage_eng` int(15) NOT NULL,
  `annual_package` float NOT NULL,
  `minimum_percentage_tenth` float NOT NULL,
  `minimum_percentage_twelfth` float NOT NULL,
  `minimum_percentage_diploma` float NOT NULL,
  `minimum_percentage_ug` float NOT NULL,
  `minimum_percentage_pg` float NOT NULL,
  `gap_criteria` int(16) NOT NULL,
  `active_kt` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `minimum_percentage_eng`, `annual_package`, `minimum_percentage_tenth`, `minimum_percentage_twelfth`, `minimum_percentage_diploma`, `minimum_percentage_ug`, `minimum_percentage_pg`, `gap_criteria`, `active_kt`) VALUES
(1, 'L and T', 60, 450000, 60, 60, 60, 60, 60, 2, 1),
(2, 'google', 60, 720000, 60, 60, 60, 60, 60, 2, 1),
(3, 'Facebook', 50, 1200000, 50, 50, 50, 50, 50, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fb_id` int(200) NOT NULL,
  `t_id` varchar(200) NOT NULL,
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
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fb_id`, `t_id`, `sub_id`, `year`, `score1`, `score2`, `score3`, `score4`, `score5`, `score6`, `score7`, `score8`, `score9`, `score10`, `score11`, `score12`, `remark`) VALUES
(1, '201', 'S200', '2019', '4', '3', '3', '4', '4', '4', '4', '4', '3', '3', '3', '3', '<->acsad<->sdfdd<->sd<->--'),
(2, '202', 'S300', '2019', '4', '3', '4', '3', '4', '4', '3', '4', '3', '4', '4', '4', '<->asd<->--<->asd<->jhasjhsagdjhasd'),
(3, '203', 'S400', '2019', '3', '3', '4', '4', '4', '4', '3', '3', '4', '3', '4', '4', '<->asdsad<->asd<->dsa<->hjghgg'),
(4, '204', 'S500', '2019', '4', '4', '3', '3', '3', '5', '3', '5', '3', '4', '4', '4', '<->addfsd<->qwe<->adsad<->--'),
(5, '100', 'S100', '2019', '1', '3', '2', '3', '4', '4', '3', '4', '3', '3', '3', '3', '<->gf'),
(6, '200', 'S200', '2019', '4', '4', '4', '3', '3', '3', '2', '4', '2', '3', '3', '5', '<->fds'),
(7, '300', 'S300', '2019', '3', '3', '4', '5', '2', '4', '3', '2', '3', '3', '4', '5', '<->--'),
(8, '400', 'S400', '2019', '2', '1', '5', '5', '3', '4', '2', '3', '3', '3', '5', '4', '<->--'),
(9, '500', 'S500', '2019', '2', '3', '5', '5', '3', '3', '5', '4', '3', '4', '3', '2', '<->ds');

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
(1, '201', 'S200', '3', '2', '2', '4', '4', '5', '4', '4', '3', '3', '3', '3', 'acsad'),
(2, '202', 'S300', '5', '2', '3', '4', '4', '3', '4', '4', '3', '4', '4', '4', 'asd'),
(3, '203', 'S400', '4', '3', '4', '4', '3', '5', '3', '3', '4', '5', '5', '4', 'asdsad'),
(4, '204', 'S500', '3', '4', '3', '3', '4', '5', '4', '5', '2', '5', '4', '3', 'addfsd'),
(5, '201', 'S200', '4', '4', '3', '5', '3', '3', '5', '4', '4', '1', '2', '5', 'sdfdd'),
(6, '202', 'S300', '2', '3', '5', '3', '2', '4', '5', '5', '4', '5', '5', '5', '--'),
(7, '203', 'S400', '3', '3', '4', '5', '5', '4', '2', '4', '4', '3', '3', '4', 'asd'),
(8, '204', 'S500', '5', '3', '4', '3', '4', '5', '4', '4', '3', '3', '4', '4', 'qwe'),
(9, '201', 'S200', '5', '4', '3', '4', '5', '4', '4', '4', '2', '4', '3', '2', 'sd'),
(10, '202', 'S300', '4', '4', '2', '2', '4', '5', '3', '4', '2', '2', '2', '4', 'asd'),
(11, '203', 'S400', '1', '1', '4', '4', '3', '2', '3', '3', '4', '2', '4', '4', 'dsa'),
(12, '204', 'S500', '4', '5', '3', '4', '4', '4', '2', '5', '4', '5', '4', '4', 'adsad'),
(13, '100', 'S100', '1', '3', '2', '3', '4', '4', '3', '4', '3', '3', '3', '3', 'gf'),
(14, '200', 'S200', '4', '4', '4', '3', '3', '3', '2', '4', '2', '3', '3', '5', 'fds'),
(15, '300', 'S300', '3', '3', '4', '5', '2', '4', '3', '2', '3', '3', '4', '5', '--'),
(16, '400', 'S400', '2', '1', '5', '5', '3', '4', '2', '3', '3', '3', '5', '4', '--'),
(17, '500', 'S500', '2', '3', '5', '5', '3', '3', '5', '4', '3', '4', '3', '2', 'ds'),
(18, '201', 'S200', '3', '3', '4', '2', '3', '4', '4', '3', '4', '3', '4', '2', '--'),
(19, '202', 'S300', '4', '4', '4', '2', '5', '5', '1', '2', '1', '4', '4', '4', 'jhasjhsagdjhasd'),
(20, '203', 'S400', '4', '3', '4', '3', '3', '4', '3', '2', '2', '3', '4', '4', 'hjghgg'),
(21, '204', 'S500', '3', '3', '2', '3', '1', '4', '2', '4', '4', '4', '2', '3', '--');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `grno` varchar(100) NOT NULL,
  `company1` varchar(100) NOT NULL,
  `position1` varchar(100) NOT NULL,
  `date_from1` date NOT NULL,
  `date_till1` date NOT NULL,
  `exp1` varchar(200) NOT NULL,
  `letter1` varchar(200) NOT NULL,
  `company2` int(11) NOT NULL,
  `position2` int(11) NOT NULL,
  `date_from2` int(11) NOT NULL,
  `date_till2` int(11) NOT NULL,
  `exp2` int(11) NOT NULL,
  `letter2` varchar(200) NOT NULL,
  `company3` int(11) NOT NULL,
  `position3` int(11) NOT NULL,
  `date_from3` int(11) NOT NULL,
  `date_till3` int(11) NOT NULL,
  `exp3` int(11) NOT NULL,
  `letter3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`grno`, `company1`, `position1`, `date_from1`, `date_till1`, `exp1`, `letter1`, `company2`, `position2`, `date_from2`, `date_till2`, `exp2`, `letter2`, `company3`, `position3`, `date_from3`, `date_till3`, `exp3`, `letter3`) VALUES
('12345', '', '', '0000-00-00', '0000-00-00', '', '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `placed_student`
--

CREATE TABLE `placed_student` (
  `placed_student_id` int(40) NOT NULL,
  `student_grno` int(16) NOT NULL,
  `company_id` int(11) NOT NULL,
  `placed_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `grno` varchar(200) NOT NULL,
  `sem1` varchar(100) NOT NULL,
  `sem2` varchar(100) NOT NULL,
  `sem3` varchar(100) NOT NULL,
  `sem4` varchar(100) NOT NULL,
  `sem5` varchar(100) NOT NULL,
  `sem6` varchar(100) NOT NULL,
  `sem7` varchar(100) NOT NULL,
  `sem8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `grno` varchar(100) NOT NULL,
  `student_name` text NOT NULL,
  `password` varchar(40) NOT NULL,
  `student_mail` varchar(100) NOT NULL,
  `student_phone` varchar(100) NOT NULL,
  `student_gen` varchar(50) NOT NULL,
  `student_dob` date NOT NULL,
  `tenth_board` varchar(100) NOT NULL,
  `tenth_percent` double NOT NULL,
  `twelfth_board` varchar(100) NOT NULL,
  `twelfth_percent` double NOT NULL,
  `student_doj` date NOT NULL,
  `student_dept` varchar(100) NOT NULL,
  `student_sem` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`grno`, `student_name`, `password`, `student_mail`, `student_phone`, `student_gen`, `student_dob`, `tenth_board`, `tenth_percent`, `twelfth_board`, `twelfth_percent`, `student_doj`, `student_dept`, `student_sem`) VALUES
('1', 'sagar', 'a', 'sagarambilpure@gmail.com', '45454', 'M', '1999-04-27', 'SSC', 79.4, 'HSC', 74.6, '2016-08-08', 'Computer Engineering', 7),
('12345', 'Nitish Pravin Talekar', 'nitish503', 'npt503@gmail.com', '9821340247', 'Male', '1998-11-19', 'SSC', 90, 'HSC', 90, '2019-09-04', 'Computer Engineering', 7),
('2', 'maharaj', 'a', 'lol', '928154', 'M', '1999-04-27', '', 79, '', 74, '2016-08-08', 'Computer Engineering', 7),
('3', 'shano', 'a', '', '9878555', 'M', '2019-08-05', 'ssc', 78, 'hsc', 74, '2019-08-04', 'Computer Engineering', 7),
('4', 'rasp', 'a', 'allkandsonthis@gmail.com', '156488', 'M', '0000-00-00', '', 99, '', 99, '0000-00-00', 'Computer Engineering', 7);

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

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `sub_credits`, `sub_sem`, `sub_dept`, `sub_choicebased`, `sub_internal`, `sub_external`, `sub_termwork`, `sub_oral`, `sub_total`, `sub_duration`) VALUES
('S100', 'DSIP', '100', 7, 'Comps', 1, 20, 80, 50, 50, 100, 120),
('S200', 'AISC', '100', 7, 'Comps', 1, 20, 80, 50, 50, 100, 120),
('S300', 'MS', '100', 7, 'Comps', 1, 20, 80, 50, 50, 100, 120),
('S400', 'MP', '100', 7, 'Comps', 1, 20, 80, 50, 50, 100, 120),
('S500', 'SPA', '100', 7, 'Comps', 1, 20, 80, 50, 50, 100, 230),
('S600', 'JAVA', '200', 7, 'Comps', 0, 30, 70, 90, 110, 100, 234);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_mail` varchar(100) NOT NULL,
  `teacher_phone` varchar(100) NOT NULL,
  `teacher_gen` varchar(100) NOT NULL,
  `teacher_dob` date NOT NULL,
  `teacher_dept` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_privilege` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `password`, `teacher_name`, `teacher_mail`, `teacher_phone`, `teacher_gen`, `teacher_dob`, `teacher_dept`, `teacher_doj`, `teacher_privilege`) VALUES
('100', 'abc', 'Prof. Dilip M Dalgade', 'dmd@g.c', '90909090909', 'Male', '2019-09-07', 'Computer Engineering', '2019-09-07', 'Professor'),
('200', 'abc', 'Mr. Satish Y Ket', 'sdf@gh.b', '98989877665', 'Male', '2019-07-07', 'Computer Engineering', '2019-04-07', 'HOD'),
('201', 'abc', 'Dr. Praniti P Shete', 'afsdads@jghj.cc', '5675675679', 'Female', '2019-06-07', 'Computer Engineering', '2016-07-04', 'Training and Placement'),
('202', 'abc', 'Mr. Anna I Son', 'hgdfhg@dhgf.hh', '9879879877', 'Male', '2019-07-07', 'Computer Engineering', '2019-07-07', 'Professor'),
('203', 'abc', 'Mrs. Priya P Parote', 'fdsd@gdf.v', '23423423457', 'Female', '2019-09-07', 'Computer Engineering', '2016-09-07', 'Cerificate'),
('204', 'abc', 'Mr. Bhushan M Patil', 'gsf@gdgh.k', '6786787890', 'Male', '2019-09-07', 'Computer Engineering', '2019-07-07', 'Professor'),
('205', 'abc', 'Mrs. Savita S Lade', 'ghgjg@e.g', '5674563452', 'Female', '2019-08-07', 'Computer Engineering', '2019-07-07', 'Internship'),
('300', 'abc', 'Dr. Nitish P Talekar', 'asd@gg.v', '7654567654', 'Male', '2019-04-07', 'Computer Engineering', '2019-02-07', 'Timetable'),
('400', 'abc', 'Prof. Aayush I Singh', 'asds@ghg.p', '676897786', 'Male', '2019-09-07', 'Computer Engineering', '2019-05-07', 'Result Analysis'),
('500', 'abc', 'Mrs. Sonal S Sharma', 'esdf@ggg.o', '6786786780', 'Female', '2019-09-07', 'Computer Engineering', '2019-06-07', 'Professor'),
('600', 'abc', 'Ms. Akshi P Saxena', 'ada@gugj.b', '5675675679', 'Female', '2019-08-07', 'Computer Engineering', '2019-06-07', '');

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
  `sub_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaching`
--

INSERT INTO `teaching` (`lec_id`, `dept`, `sem`, `lec_div`, `teacher_id`, `sub_id`) VALUES
(1, 'Comps', '7', 'A', '100', 'S100'),
(2, 'Comps', '7', 'A', '200', 'S200'),
(3, 'Comps', '7', 'A', '300', 'S300'),
(4, 'Comps', '7', 'A', '400', 'S400'),
(5, 'Comps', '7', 'A', '500', 'S500'),
(6, 'Comps', '7', 'A', '600', 'S600'),
(7, 'Comps', '7', 'B', '201', 'S200'),
(8, 'Comps', '7', 'B', '202', 'S300'),
(9, 'Comps', '7', 'B', '203', 'S400'),
(10, 'Comps', '7', 'B', '204', 'S500'),
(11, 'Comps', '7', 'B', '205', 'S600');

-- --------------------------------------------------------

--
-- Table structure for table `tpo`
--

CREATE TABLE `tpo` (
  `tpo_id` int(40) NOT NULL,
  `tpo_name` varchar(40) NOT NULL,
  `tpo_password` varchar(40) NOT NULL,
  `tpo_email` varchar(40) NOT NULL,
  `tpo_phone` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpo`
--

INSERT INTO `tpo` (`tpo_id`, `tpo_name`, `tpo_password`, `tpo_email`, `tpo_phone`) VALUES
(1, 'officer', 'a', 'officer@gmail.com', 9832332);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `applied_student`
--
ALTER TABLE `applied_student`
  ADD PRIMARY KEY (`applied_company_id`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fb_id`),
  ADD UNIQUE KEY `t_id` (`t_id`,`sub_id`,`year`);

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
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`grno`);

--
-- Indexes for table `placed_student`
--
ALTER TABLE `placed_student`
  ADD PRIMARY KEY (`placed_student_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
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
-- Indexes for table `tpo`
--
ALTER TABLE `tpo`
  ADD PRIMARY KEY (`tpo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_student`
--
ALTER TABLE `applied_student`
  MODIFY `applied_company_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fb_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback_ques`
--
ALTER TABLE `feedback_ques`
  MODIFY `fbq_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback_temp`
--
ALTER TABLE `feedback_temp`
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `placed_student`
--
ALTER TABLE `placed_student`
  MODIFY `placed_student_id` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `lec_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tpo`
--
ALTER TABLE `tpo`
  MODIFY `tpo_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
