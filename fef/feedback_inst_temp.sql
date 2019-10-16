-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 07:24 AM
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
(1, 'Applied Sciences', '1', 'F', 'The Toilets can be improved. '),
(2, 'Applied Sciences', '1', 'F', 'Should not rush to end the syllabus. '),
(3, 'Applied Sciences', '1', 'F', '--'),
(4, 'Applied Sciences', '1', 'F', 'should not rush the portion ,teach slowly and in proper order'),
(5, 'Applied Sciences', '1', 'F', 'TOILETS SHOULD BE IMPROVED. PINAA KA PAANI KA THANDA HONA CHAHIYE ,CANTEEN MAI BHI AND TOILETS KE UDHAR BHI .'),
(6, 'Applied Sciences', '1', 'F', 'toilet should be improved.We need Ac in our class rooms.classrooms should be neat and clean. '),
(7, 'Applied Sciences', '1', 'F', 'Toilet must be cleaned'),
(8, 'Applied Sciences', '1', 'F', 'there should be friendly staff campus should be developed should help us on time n bring mor opportunities '),
(9, 'Applied Sciences', '1', 'F', 'staff is very slow,and they do  not respect students,very lasy and says to do same again and again'),
(10, 'Applied Sciences', '1', 'F', 'all classes should be provided with ac.'),
(11, 'Applied Sciences', '1', 'F', '--'),
(12, 'Applied Sciences', '1', 'F', '--'),
(13, 'Applied Sciences', '1', 'F', 'They need little more cleanliness.'),
(14, 'Instumentation Engineering', '3', 'A', 'instru SE');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
