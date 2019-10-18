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
(1, 'Applied Sciences', '1', 'A', 'AC should be in the computer labs'),
(2, 'Applied Sciences', '1', 'A', '--'),
(3, 'Applied Sciences', '1', 'A', 'Upgrade computers and labs,A.Cs in every class ,bring good faculties and so on........'),
(4, 'Applied Sciences', '1', 'A', 'Upgrade the lab and computers , '),
(5, 'Applied Sciences', '1', 'A', 'Due to delay in the admission process our semester was shortened but that should not be the reason to get less days to study  and less holidays .'),
(6, 'Applied Sciences', '1', 'A', 'Institute is good. But the campus of the college is very small.'),
(7, 'Applied Sciences', '1', 'A', 'WE REQUIRE A GOOD TEACHER IN ACCOUNT DEPARTMENT.'),
(8, 'Applied Sciences', '1', 'A', 'Accounts department staff should be more patient with us.'),
(9, 'Applied Sciences', '1', 'A', 'Accounts department staff should be more patient with us.'),
(10, 'Applied Sciences', '1', 'A', 'Accounts department staff should be more patient with us.'),
(11, 'Applied Sciences', '1', 'A', 'Accounts department staff should be more patient with us.'),
(12, 'Applied Sciences', '1', 'A', 'COLLEGE CAMPUS IS SMALL.\r\nREST OF THE THINGS ARE VERY GOOD.'),
(13, 'Applied Sciences', '1', 'A', 'NEED A PLAYGROUND,UPGRADE COMPUTERS AND SOME TEACHERS NEE D TO BE MORE FRANK'),
(14, 'Applied Sciences', '1', 'A', 'poor'),
(15, 'Applied Sciences', '1', 'A', 'WE NEED SOME FACILITY IN COLLEGE,SUCH AS WASHROOM FACILITY .'),
(16, 'Applied Sciences', '1', 'A', 'want big campus.\r\nOffice staff are very rude when we want some info about anything.\r\n\r\n '),
(17, 'Applied Sciences', '1', 'A', 'THERE\'S NO PROPER CANTEEN IN  THE COLLEGE.\r\nNO CAMPUS.\r\nACCOUNTS STAFF IS NOT CO-OPERATIVE AT ALL.\r\nTHE BUILDING NEEDS TO BE RENOVATED.\r\n'),
(18, 'Applied Sciences', '1', 'A', 'GOOD AND RESPONSIVE STAFF EXCEPT THE ACCOUNTS OFFICE THE NEED TO, SEE US AS A STUDENT AND MAKE US SOFTLY UNDERSTAND THINGS THE THINGS . AS WE ARE NEW THEY MAKE US UNDERSTAND THINGS NICELY WITHOUT BEING TOOO HARSH.'),
(19, 'Applied Sciences', '1', 'A', 'Classroom needs more more lights and air conditioning. Toilets must be clean .'),
(20, 'Applied Sciences', '1', 'A', 'good in study. its not going on proper time lecture goes after time finish. gives proper knowledge regarding subjects.'),
(21, 'Applied Sciences', '1', 'A', 'Toilets need to be frequently cleaned. Many a times water supply is not available. Handwash soap should be there. Girls washroom should have dustbins in every toilet. Classrooms are dirty and not cleaned. Classrooms need adequate lighting and air conditioning.'),
(22, 'Applied Sciences', '1', 'A', 'NO PROPER CANTEEN . THE CANTEEN SPACE SHOULD BE INCREASED .\r\nTHERE SHOULD BE AC IN THE BASEMENT. \r\nTHE COLLEGE BUILDING AND INTERIORS NEEDS TO BE RENOVATED'),
(23, 'Applied Sciences', '1', 'A', 'VERY GOOD COLLEGE');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
