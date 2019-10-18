-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 06:47 AM
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
(1, 'Information Technology', '7', 'A', '--'),
(2, 'Information Technology', '7', 'A', 'very good '),
(3, 'Information Technology', '7', 'A', '--'),
(4, 'Information Technology', '7', 'A', 'Labs need upgrades for the subjects needed for study'),
(5, 'Information Technology', '7', 'A', 'Computer Systems Should be upgraded.'),
(6, 'Information Technology', '7', 'A', 'machines should be upgraded'),
(7, 'Information Technology', '7', 'A', 'Labs need updating'),
(8, 'Information Technology', '7', 'A', 'PC doesnt work\r\ntoilets smell'),
(9, 'Information Technology', '7', 'A', 'Need to upgrade the computers in lab as well as lab infrastructure.'),
(10, 'Information Technology', '7', 'A', 'The computers in the IT department are not functioning and are not upto the required standards.'),
(11, 'Information Technology', '7', 'A', '--'),
(12, 'Information Technology', '7', 'A', 'Please upgrade the labs.'),
(13, 'Information Technology', '7', 'A', 'lab upgradation required'),
(14, 'Information Technology', '7', 'A', 'computer lab needs to be upgraded\r\n'),
(15, 'Information Technology', '7', 'A', 'Poor lab infrastructure '),
(16, 'Information Technology', '7', 'A', 'poor washrooms, poor infrastructure.\r\nnot supportive with placements\r\n\r\n\r\n\r\n\r\n'),
(17, 'Information Technology', '7', 'A', '--'),
(18, 'Information Technology', '7', 'A', '--'),
(19, 'Information Technology', '7', 'A', 'Lab and infrastructure changes need to be made.No working PC.'),
(20, 'Information Technology', '5', 'A', '--'),
(21, 'Information Technology', '5', 'A', 'need working computers.'),
(22, 'Information Technology', '5', 'A', 'Washrooms has no water. There is no adequate water for drinking. Canteens are not so good. Food is not available all the time.Labs dont have computers.Leakage on the ceiling. Lifts dont work properly.'),
(23, 'Information Technology', '5', 'A', 'Washrooms does not have water and also they are not clean , lifts don\'t work properly , PCs in the labs also don\'t work properly , there is leakage during monsoons. Drinking water not available in the cooler. '),
(24, 'Information Technology', '5', 'A', '--'),
(25, 'Information Technology', '5', 'A', 'Computer Labs need upgrade in IT'),
(26, 'Information Technology', '5', 'A', 'Drinking water not available.'),
(27, 'Information Technology', '5', 'A', '--'),
(28, 'Information Technology', '5', 'A', '--'),
(29, 'Information Technology', '5', 'A', '--'),
(30, 'Information Technology', '5', 'A', 'Need working PC\'s in Labs'),
(31, 'Information Technology', '5', 'A', 'GENUINE AND CARING PROFESSORS . GOOD DEPARTMENT'),
(32, 'Information Technology', '5', 'A', 'water is not available in washrooms and sometimes the washrooms are not cleaned as well as pc is not working in lab'),
(33, 'Information Technology', '5', 'A', 'somtimes water is not available in the washrooms. Many computers are not working in the lab.'),
(34, 'Information Technology', '5', 'A', 'somtimes water is not available in the washrooms. Many computers are not working in the lab.'),
(35, 'Information Technology', '7', 'A', 'please keep the toilets clean, hire people to maintain hygiene\r\nplease provide edible water!!!!\r\nimprove and repair lifts, its difficult to climb 6 floors with laptops '),
(36, 'Information Technology', '5', 'A', 'Good'),
(37, 'Information Technology', '5', 'A', 'please maintain the toilets. Sometimes even water supply isnt there. Especially the boys washroom needs to be cleaned.\r\n'),
(38, 'Information Technology', '5', 'A', 'washrooms are not cleaned regurally and arent provided with water. Labs do not have working pc .'),
(39, 'Information Technology', '5', 'A', 'good'),
(40, 'Mechanical Engineering', '7', 'A', '--'),
(41, 'Mechanical Engineering', '7', 'A', '--'),
(42, 'Mechanical Engineering', '7', 'A', '--'),
(43, 'Mechanical Engineering', '7', 'A', '--'),
(44, 'Mechanical Engineering', '7', 'A', '--'),
(45, 'Mechanical Engineering', '7', 'A', '--'),
(46, 'Mechanical Engineering', '7', 'A', 'VERY POOR MANAGEMENT OF CANTEEN AND WASHROOMS.'),
(47, 'Mechanical Engineering', '7', 'A', '--'),
(48, 'Mechanical Engineering', '7', 'A', '--'),
(49, 'Mechanical Engineering', '7', 'A', '--'),
(50, 'Mechanical Engineering', '7', 'A', 'Poor infrastructure, dirty washrooms, poor taste and hygienic food of canteen'),
(51, 'Mechanical Engineering', '7', 'A', '--'),
(52, 'Mechanical Engineering', '7', 'A', '--'),
(53, 'Mechanical Engineering', '7', 'A', 'infrastructure was not environment friendly.not proper ventilation in class. their for students not sit for the lecture.required to improve teaching faculty'),
(54, 'Mechanical Engineering', '7', 'A', 'providing a good lab for practical sessions \r\nmaintenance of infrastructure especially in B62 and A26 class, leakage problem in rainy season'),
(55, 'Mechanical Engineering', '7', 'A', '--'),
(56, 'Mechanical Engineering', '7', 'A', 'cleanliness issues. washrooms are never  satisfactory clean and drinking water is never available. hygiene issues. have complained many  times no improvement seen'),
(57, 'Mechanical Engineering', '7', 'A', '--'),
(58, 'Mechanical Engineering', '7', 'A', '--'),
(59, 'Mechanical Engineering', '7', 'A', '--'),
(60, 'Mechanical Engineering', '7', 'B', '--'),
(61, 'Mechanical Engineering', '7', 'B', '--'),
(62, 'Mechanical Engineering', '7', 'B', 'Satisfied'),
(63, 'Mechanical Engineering', '7', 'B', '--'),
(64, 'Mechanical Engineering', '7', 'B', '--'),
(65, 'Mechanical Engineering', '7', 'B', '--'),
(66, 'Mechanical Engineering', '7', 'B', '--'),
(67, 'Mechanical Engineering', '7', 'B', '--'),
(68, 'Mechanical Engineering', '7', 'B', '--'),
(69, 'Mechanical Engineering', '7', 'A', '--'),
(70, 'Mechanical Engineering', '7', 'B', '--'),
(71, 'Mechanical Engineering', '7', 'B', '--'),
(72, 'Mechanical Engineering', '7', 'B', 'All teachers teach only theory part but no one give the practical example. College never organise Industrial visit for the subject like automobile engineering.We have the lack of practical knowledge so college has to look upon these.'),
(73, 'Mechanical Engineering', '7', 'B', '--'),
(74, 'Mechanical Engineering', '7', 'B', 'teaching is only for marks not for knowledge. library persons start book bank at the end of the semester. worst behavior of accounts department sends wrong message about the institute. Many times feedback has been taken but there is not improvement in teachers as well as infrastructure of the institute. After visiting NBA college administration even remove pen and papers from complaint box. lab pcs are not working .there is not any practical session where we can say its a practical class. '),
(75, 'Electronics and Telecommunication', '5', 'A', '--'),
(76, 'Mechanical Engineering', '7', 'B', 'The PC are not working in the CAD/Cam lab. There are no softwares installed in the PC which are in working conditions. There is no water in the washroom and cleanliness is not there. Students should be motivated other than academic activities as well.'),
(77, 'Electronics and Telecommunication', '5', 'A', '--'),
(78, 'Mechanical Engineering', '7', 'B', 'very poor management and attitude toward the student is rud '),
(79, 'Electronics and Telecommunication', '5', 'A', ' '),
(80, 'Mechanical Engineering', '7', 'B', 'no use of practical session since no PCs is working'),
(81, 'Mechanical Engineering', '5', 'B', 'Maintain hygiene in washroom '),
(82, 'Mechanical Engineering', '7', 'B', '--'),
(83, 'Mechanical Engineering', '5', 'B', 'Washrooms should have permanent water supply.');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
