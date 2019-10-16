-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 06:10 AM
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
-- Table structure for table `feedback_inst_temp`
--

CREATE TABLE `feedback_inst_temp` (
  `fi_temp_id` int(200) NOT NULL,
  `dept` varchar(200) NOT NULL,
  `sem` varchar(200) NOT NULL,
  `div_id` varchar(200) NOT NULL,
  `comment` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_inst_temp`
--

INSERT INTO `feedback_inst_temp` (`fi_temp_id`, `dept`, `sem`, `div_id`, `comment`) VALUES
(1, 'Computer Engineering', '7', 'A', 'Needs some serious funds and a new approach to change the institution. '),
(2, 'Computer Engineering', '7', 'A', 'washrooms are too dirty'),
(3, 'Computer Engineering', '7', 'A', '--'),
(4, 'Computer Engineering', '7', 'A', '--'),
(5, 'Computer Engineering', '7', 'A', '--'),
(6, 'Computer Engineering', '7', 'A', 'The mid semester submissions are too stressful'),
(7, 'Computer Engineering', '7', 'A', 'The department is not at all student friendly. There is hardly any relation between student and teachers. The department also does not give any opportunity for  exploring new ventures or challenges. Most of the teachers don\'t have time to take care of student\'s time. The department should strongly start thinking about students as a whole.'),
(8, 'Computer Engineering', '7', 'A', 'Lab systems not updated , no proper sanitation facility , lack of working water purifiers'),
(9, 'Computer Engineering', '7', 'A', 'The first mid-term test could be  held earlier so as to have sufficient time between the two mid-term tests. Usually it gets super hectic after the first mid-term owing to submissions, practicals and the mid-term test two approaching.'),
(10, 'Computer Engineering', '7', 'A', 'Fans not working properly . No proper ventilation. Sometimes the level of suffocation goes above the level of patience. Toilets are not cleaned daily. Fans should be proper in each class.'),
(11, 'Computer Engineering', '7', 'A', '--'),
(12, 'Computer Engineering', '7', 'A', 'CONS :-\r\nNo proper drinking water facility\r\nNeeds to improve Computer Labs (i.e At least i5 processor ,8GB RAM)\r\nCanteen is disguisting\r\n\r\nPROS:\r\nTraining and Placement Cell  is great and well organized \r\n'),
(13, 'Computer Engineering', '7', 'A', 'Very little attention drawn towards practical knowledge for students. Hardly any opportunity towards the fundamental or industrial growth for the students. Resources like the computers and the internet facilities MUST be improved for the departments and especially for the computer department.  '),
(14, 'Computer Engineering', '7', 'A', 'An overall good college to study and the faculty of comps is extremely good towards students just a bit of delay in submissions.'),
(15, 'Computer Engineering', '7', 'A', 'The institute towards student welfare. It is currently failing at this.'),
(16, 'Computer Engineering', '7', 'A', 'Time gap between unit test1 and unit test 2 was quite less. No water in the enitre college.'),
(17, 'Computer Engineering', '7', 'A', 'The mid term submission should be removed and instead time gap between mid-term 1 and mid-term 2 is very less.'),
(18, 'Computer Engineering', '7', 'A', 'Water problems\r\nage old computers and equipment\r\nLots of assignment and experiments which has nothing to do with knowledge, just a copy paste things'),
(19, 'Computer Engineering', '7', 'A', 'The institute can provide better facilities to students including clean bathrooms, and feedback should be conducted between semesters and not just at the end.'),
(20, 'Computer Engineering', '7', 'A', 'good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback_inst_temp`
--
ALTER TABLE `feedback_inst_temp`
  ADD PRIMARY KEY (`fi_temp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback_inst_temp`
--
ALTER TABLE `feedback_inst_temp`
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
