-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:26 AM
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
(1, '5', '1', 'B', '4', '3', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(2, '123', '2', 'B', '4', '3', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(3, '8', '3', 'B', '4', '4', '4', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(4, '6', '4', 'B', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(5, '1', '5', 'B', '5', '5', '5', '5', '5', '5', '3', '5', '5', '5', '5', '5', '--'),
(6, '5', '1', 'B', '4', '4', '5', '5', '4', '4', '4', '5', '5', '5', '5', '5', '--'),
(7, '123', '2', 'B', '3', '3', '3', '4', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(8, '8', '3', 'B', '5', '5', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', 'Got good opportunity to learn a lot with ample knowledge'),
(9, '6', '4', 'B', '4', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', 'knowledge gained is beyond expectations'),
(10, '1', '5', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'Extremely appreciative and highly respected'),
(11, '5', '1', 'B', '5', '4', '4', '4', '5', '4', '4', '2', '3', '4', '5', '5', '--'),
(12, '123', '2', 'B', '5', '4', '5', '2', '5', '5', '4', '4', '3', '5', '5', '5', '--'),
(13, '8', '3', 'B', '5', '4', '5', '4', '5', '4', '4', '3', '3', '4', '5', '5', '--'),
(14, '5', '1', 'B', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', 'She is a little confused somtimes.'),
(15, '6', '4', 'B', '5', '5', '5', '4', '5', '4', '5', '4', '4', '5', '5', '5', '--'),
(16, '123', '2', 'B', '3', '3', '4', '5', '3', '5', '5', '5', '5', '5', '5', '5', '--'),
(17, '1', '5', 'B', '5', '3', '5', '3', '5', '4', '4', '3', '4', '5', '5', '3', '--'),
(18, '8', '3', 'B', '5', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(19, '6', '4', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'teaching is excellent.'),
(20, '1', '5', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'gives us a lot of practice which makes us confident.'),
(21, '5', '1', 'B', '3', '3', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '--'),
(22, '123', '2', 'B', '4', '3', '3', '3', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(23, '8', '3', 'B', '4', '4', '4', '5', '4', '4', '4', '4', '5', '4', '5', '5', '--'),
(24, '6', '4', 'B', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '--'),
(25, '1', '5', 'B', '4', '3', '4', '4', '4', '4', '3', '4', '4', '5', '5', '5', '--'),
(26, '5', '1', 'B', '4', '3', '4', '4', '3', '3', '5', '5', '5', '5', '5', '5', '--'),
(27, '123', '2', 'B', '3', '3', '4', '5', '3', '5', '4', '5', '5', '4', '5', '5', '--'),
(28, '8', '3', 'B', '5', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '--'),
(29, '6', '4', 'B', '5', '5', '5', '5', '4', '3', '4', '5', '5', '5', '5', '5', '--'),
(30, '1', '5', 'B', '5', '4', '5', '5', '5', '5', '4', '5', '5', '5', '5', '5', '--'),
(31, '5', '1', 'B', '4', '4', '3', '4', '4', '4', '4', '4', '4', '3', '5', '5', '--'),
(32, '123', '2', 'B', '1', '1', '1', '2', '2', '2', '5', '5', '5', '5', '5', '5', '--'),
(33, '8', '3', 'B', '3', '4', '5', '4', '3', '4', '4', '4', '5', '2', '5', '5', '--'),
(34, '6', '4', 'B', '4', '4', '2', '4', '3', '5', '5', '5', '5', '2', '5', '5', '--'),
(35, '1', '5', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '--'),
(36, '5', '1', 'B', '4', '3', '4', '5', '3', '2', '4', '3', '4', '4', '5', '5', 'nice teaching,but do something with your voice its difficult listen from last branch\r\n'),
(37, '123', '2', 'B', '3', '2', '4', '4', '2', '4', '4', '5', '4', '5', '4', '5', 'please improve the english speaking and teaching technique otherwise lectures are quit good\r\n '),
(38, '8', '3', 'B', '4', '4', '4', '4', '4', '4', '4', '5', '5', '4', '5', '5', 'good teaching '),
(39, '6', '4', 'B', '4', '4', '4', '4', '4', '2', '4', '4', '4', '5', '5', '5', 'give more time on explaning then roaming here and there'),
(40, '1', '5', 'B', '4', '4', '4', '5', '4', '4', '5', '4', '5', '5', '5', '5', '--'),
(41, '5', '1', 'B', '3', '3', '2', '4', '2', '3', '4', '4', '5', '5', '5', '5', 'Rohini mam teaches very fast so we can\'t understand her lecture so no one likes to sit in her lecture but we have to sit for attendance'),
(42, '123', '2', 'B', '2', '3', '2', '2', '2', '2', '4', '4', '4', '5', '5', '5', 'sir is to fast so we cant understand'),
(43, '8', '3', 'B', '3', '3', '4', '4', '3', '3', '4', '5', '5', '4', '4', '5', 'very god mam '),
(44, '6', '4', 'B', '3', '3', '4', '4', '3', '3', '4', '5', '5', '4', '4', '5', 'very god mam '),
(45, '1', '5', 'B', '4', '3', '4', '4', '5', '4', '4', '5', '5', '5', '3', '5', '--'),
(46, '5', '1', 'B', '4', '4', '5', '5', '4', '4', '4', '5', '5', '5', '5', '5', 'COMES TO CLASS BEFORE TIME.\r\nEXPLAINS WELL.\r\n'),
(47, '123', '2', 'B', '3', '4', '3', '4', '4', '5', '4', '5', '5', '5', '5', '5', '--'),
(48, '8', '3', 'B', '4', '3', '5', '5', '4', '4', '4', '5', '4', '5', '5', '5', 'KK'),
(49, '6', '4', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'EXTREMELY WELL'),
(50, '1', '5', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'EXCELLENT .'),
(51, '5', '1', 'B', '3', '2', '2', '3', '2', '5', '3', '4', '5', '5', '5', '4', 'very very fast madam, so fast that even before we learn first topic she would reach 3rd topic.'),
(52, '123', '2', 'B', '2', '2', '2', '1', '2', '3', '3', '5', '4', '4', '4', '2', ' a complain towards physics sir is that , he goes on teaching topics , not knowing whether we are understanding or not. he goes on saying therefore therefore , such that such that'),
(53, '8', '3', 'B', '4', '2', '4', '4', '3', '3', '4', '2', '3', '3', '3', '5', 'good mam.'),
(54, '6', '4', 'B', '4', '3', '4', '5', '4', '3', '4', '4', '3', '4', '5', '5', 'classic sir.'),
(55, '1', '5', 'B', '5', '4', '3', '4', '4', '1', '4', '2', '3', '4', '3', '2', 'chame is very strict, and he is so fast in teaching though we are not able to cope up with his speed, he solves every question by himself , not allowing students to try, it\'s good that he takes many p'),
(56, '5', '1', 'B', '3', '2', '3', '4', '2', '2', '5', '3', '1', '2', '5', '5', '--'),
(57, '123', '2', 'B', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '5', '5', '--'),
(58, '8', '3', 'B', '3', '3', '4', '4', '3', '4', '4', '3', '3', '1', '5', '5', '--'),
(59, '6', '4', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '4', '5', '--'),
(60, '1', '5', 'B', '5', '4', '4', '5', '5', '5', '4', '2', '4', '5', '5', '5', '--'),
(61, '5', '1', 'B', '3', '3', '5', '3', '3', '5', '5', '4', '4', '1', '1', '5', 'IMPROVE BASIC CALCULATIONS AND SOLVE UNSOLVED EXAMPLES.EXAMPLES  FROM OTHER BOOK SHOULD TAKE'),
(62, '123', '2', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', 'TEACHING IS EXCELLENT.COMES WITH HUGE ENTHUSIASM.'),
(63, '8', '3', 'B', '4', '4', '4', '4', '3', '4', '4', '5', '5', '4', '5', '5', 'TEACHING IS GOOD.GIVES A PRACTICE OF SUMS.'),
(64, '6', '4', 'B', '5', '5', '5', '5', '5', '5', '5', '4', '4', '4', '5', '5', 'EXCELLENT TEACHING.GIVES A PRACTICE OF SUMS AND POLISHES BASIC IDEAS.'),
(65, '1', '5', 'B', '4', '5', '5', '4', '5', '5', '5', '4', '4', '2', '5', '5', 'TEACHING IS GOOD.GIVES A GRIP OVER CONCEPTS AND IDES.LEARNING BECOMES EASY.'),
(66, '5', '1', 'B', '3', '3', '2', '1', '1', '5', '2', '5', '4', '5', '5', '5', 'TAKES LOT OF EXTRA LECTURE'),
(67, '123', '2', 'B', '3', '5', '5', '5', '3', '5', '5', '5', '1', '5', '5', '5', 'HELPFUL KABHI KABHI TO LAGATA HAI SIR HE BHAGWAN HAI'),
(68, '8', '3', 'B', '4', '1', '3', '2', '1', '2', '3', '1', '1', '4', '5', '5', 'SHOULD WORK ON HER ATTITUDE AND SHOULD BE MORE ACTIVE'),
(69, '6', '4', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '1', '5', '5', '5', 'BEST TEACHER OF RGIT AND BEHAVE LIKE GENTALMAN'),
(70, '1', '5', 'B', '5', '2', '5', '5', '5', '2', '3', '4', '1', '3', '5', '5', 'SHOULD LEARN FROM OTHER TEACHER HOW TO TAKE ATTENDANCE'),
(71, '5', '1', 'B', '3', '3', '3', '5', '4', '3', '5', '4', '5', '4', '5', '5', '--'),
(72, '123', '2', 'B', '4', '3', '3', '5', '4', '3', '5', '4', '5', '4', '5', '5', 'attendence should be taken after the lecture gets completed some students who are just 15 to 20 mins late wont get attendence and some times if teacher didnt heard the present call even if we are pres'),
(73, '8', '3', 'B', '3', '3', '4', '5', '4', '3', '5', '4', '5', '4', '5', '5', 'mam is teaching very good loved it '),
(74, '6', '4', 'B', '5', '5', '5', '5', '5', '4', '5', '4', '5', '4', '5', '5', '--'),
(75, '1', '5', 'B', '5', '5', '5', '5', '5', '3', '5', '4', '5', '4', '5', '5', '--'),
(76, '5', '1', 'B', '3', '2', '2', '2', '3', '4', '4', '5', '4', '5', '5', '5', ' Too many extra lectures, sometimes unable to solve the questions. other ways one of the best teachers.'),
(77, '123', '2', 'B', '5', '5', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', 'very good teacher. teacher can try some interesting methods to teach as he constantly speaks which can make the class a hit boring. AND THEREFORE, the BEST teacher'),
(78, '8', '3', 'B', '4', '4', '4', '4', '4', '4', '4', '5', '4', '5', '5', '4', 'A GOOD TEACHER. CONDUCTS EXCELLENT PRACTICALS, COMES UP WITH NEW WAYS OF TEACHING LIKE PPT PRESENTATION.\r\n'),
(79, '6', '4', 'B', '5', '5', '5', '4', '5', '5', '5', '5', '4', '5', '5', '5', 'A GOOD TEACHER.CONDUCTS NEW AND EFFICIENT WAYS OF TEACHING.TAKES ROUND AROUND THE CLASS TO MAKE SURE A STUDENT IS NOT FACING ANY DIFFICULTY AND HELPS THE STUDENT HAPPILY.'),
(80, '1', '5', 'B', '5', '5', '4', '5', '5', '4', '5', '5', '4', '5', '5', '5', 'CANT HEAR STUDENTS VOICE PROPERLY.TAKES THE ATTENDANCE PRIOR TO TEACHING WHICH MAKES STUDENTS A BIT UNCOMFORTABLE AS EVEN IF A STUDENT MISSES THE ROLL NO. OR IS VERY SOFT SPOKEN ATTENDANCE IS NOT GIVE'),
(81, '5', '1', 'B', '2', '2', '3', '1', '2', '4', '3', '3', '3', '2', '5', '4', 'Uses complex methods to solve basic sums, gets distracted very easily, extremely low productivity and hence it requires extra lectures in order to complete the syllabus.'),
(82, '123', '2', 'B', '3', '1', '1', '2', '4', '5', '3', '4', '3', '3', '5', '5', 'Extremely intelligent teacher but it becomes little difficult for students to cope up with the teacher. Teacher is usually very fast in explanation and hence if we miss even one line, we miss a lot of'),
(83, '8', '3', 'B', '4', '4', '5', '5', '4', '3', '4', '4', '3', '3', '5', '5', 'A very sharp and intelligent prof. Sometimes a little inaccurate but she corrects herself not too late. '),
(84, '6', '4', 'B', '5', '5', '4', '4', '4', '5', '4', '3', '3', '3', '5', '5', 'A very helpful teacher, always solves each and every question and helps us with our mistakes as soon as we ask him for help and also gives us adequate amount of questions to give us a good hold of all'),
(85, '1', '5', 'B', '5', '5', '4', '5', '5', '5', '2', '4', '5', '5', '5', '5', 'Helps us connect with subject very well, however we still are lagging the syllabus compared to divisions. The probability of completing the syllabus before the University exam is very low. Sir usually'),
(86, '5', '1', 'B', '3', '4', '3', '4', '3', '5', '4', '5', '4', '5', '5', '5', 'VERY NICE TEACHER  BUT LECTURE BECOMES BORING AND SOMETIMES WE DONT UNDERSTAND THE TOPIC AS SHE TEACHES LITTLE FAST'),
(87, '123', '2', 'B', '5', '5', '5', '5', '3', '5', '5', '5', '5', '5', '5', '5', 'AND THEREFORE THE BEST SIR FOR PHYSICS ANYONE CAN GET.......'),
(88, '8', '3', 'B', '2', '2', '2', '2', '2', '3', '3', '2', '1', '5', '5', '5', 'TEACHING IS NOT VERY GOOD ...USUALLY BORING LEC ... AND WE WANT PALLAVI MISS FOR NEXT SEM'),
(89, '6', '4', 'B', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', 'SHOULD SPEAK LITTLE LOUDLY ....BUT HE IS THE BEST'),
(90, '1', '5', 'B', '4', '4', '4', '4', '4', '5', '5', '5', '4', '5', '5', '5', 'SHOULD TAKE THE ATTENDANCE AFTER THE TEACHING IS OVER AND NOT BEFORE ...BUT THE TEACHING IS BEST ...THE BEST SIR FOR BEE'),
(91, '5', '1', 'B', '5', '5', '5', '4', '3', '5', '5', '3', '4', '3', '5', '5', 'NO COMMENTS.'),
(92, '123', '2', 'B', '5', '5', '5', '4', '3', '5', '5', '3', '5', '3', '5', '5', 'NO .'),
(93, '8', '3', 'B', '5', '5', '5', '4', '3', '5', '5', '3', '5', '3', '5', '5', 'NO.'),
(94, '6', '4', 'B', '5', '5', '5', '4', '3', '5', '5', '3', '5', '3', '5', '5', 'NO.'),
(95, '1', '5', 'B', '5', '5', '5', '4', '3', '5', '4', '3', '5', '3', '5', '5', 'NO.');

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
  MODIFY `fbt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
