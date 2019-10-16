-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 09:10 AM
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
(1, 'Applied Sciences', '1', 'G', '--'),
(2, 'Applied Sciences', '1', 'G', '--'),
(3, 'Applied Sciences', '1', 'G', '--'),
(4, 'Applied Sciences', '1', 'G', 'Good'),
(5, 'Applied Sciences', '1', 'G', 'infrastructure needs to be upgraded for sure'),
(6, 'Applied Sciences', '1', 'G', '--'),
(7, 'Applied Sciences', '1', 'G', 'good'),
(8, 'Applied Sciences', '1', 'G', '--'),
(9, 'Applied Sciences', '1', 'G', 'A decent institute :)'),
(10, 'Applied Sciences', '1', 'G', 'This is the excellent institute. '),
(11, 'Applied Sciences', '1', 'G', 'cleanliness should be maintained in toilets and other curricular activities such as sports and all should be carried out'),
(12, 'Applied Sciences', '1', 'G', 'extremely dirty toilets facilities \r\nclass rooms are too dark  their should be more ligths  in rooms \r\nand mostly drinkable water is not available '),
(13, 'Applied Sciences', '1', 'G', 'need to have some more facilities and a college ground '),
(14, 'Applied Sciences', '1', 'A', '--'),
(15, 'Applied Sciences', '1', 'G', 'My college name is RGIT. I love my college a lot. My college is very big but there is no ground for any sports activity, so i request the authority to look forward into the sports activities. Otherwise its the bestest college for the studies. And if possible make the whole campus AC. THANK YOU!\r\n\r\n                                                                                                                                   XYZ\r\n                                                                                                                 Your sincearly'),
(16, 'Applied Sciences', '1', 'G', 'Washrooms are never clean and there is also shortage of water supply. The instruments in the lab doesn\'t work properly. Seats in seminar hall are broken. Canteen needs to be improved. Fans in classroom do not work properly. The events organised are not beneficial.'),
(17, 'Applied Sciences', '1', 'G', 'please clean the washroom. washroom water supply sometime does not work. instruments of lab are not working properly . lab are not advance level. account department is very rude . they does not speak properly when child is in trouble. there is no area in canteen to have lunch.  in classroom, fan does not work properly . '),
(18, 'Applied Sciences', '1', 'G', 'Some complaints about the institute.\r\ncollege lags a ground for sports and activities\r\ninfrastructure is good but not the ventilation. some classes are suffocating \r\nneeds to get good computer setups for IT department unlike old CRT monitors that the college has.\r\ndue to such infrastructure need of AC is high. '),
(19, 'Applied Sciences', '1', 'G', 'WATER CRISIS LIKE ALWAYS THERE IS SHORTAGE OF WATER SUPPLY IN THE WASHROOMS.NO CLEAN WASHROOMS . LAB INSTRUMENTS DO NOT WORK . NEED AC ,FANS ARE NOT ENOUGH AT LEAST IN LABS. CANTEEN FOOD IS DISGUSTING .NO CHAIRS IN CANTEEN. THE EVENTS SHOULD BE ORGANISED FREQUENTLY,THE ONE WHICH CAN BENEFIT US AND CAN BE FUN.\r\nTEACHERS ARE GOOD BUT AGAIN NOT ALL'),
(20, 'Applied Sciences', '1', 'G', 'The washrooms are not clean. no sufficient amount of water . canteen food is disgusting. Institute needs to install ac in computer labs.');

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
