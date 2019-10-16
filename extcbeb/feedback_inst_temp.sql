-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:46 AM
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
(1, 'Electronics and Telecommunication', '7', 'B', 'lights are not working. computers are not working properly. the practical of BDA is not happening due to lack of computres.'),
(2, 'Electronics and Telecommunication', '7', 'B', 'no computers for bda\r\nno mirror in washroom'),
(3, 'Electronics and Telecommunication', '7', 'B', '--'),
(4, 'Electronics and Telecommunication', '7', 'B', 'Provide AC in all classrooms, CROs not working properly, washroom are not cleaned .'),
(5, 'Electronics and Telecommunication', '7', 'B', 'GOOD'),
(6, 'Electronics and Telecommunication', '7', 'B', '--'),
(7, 'Electronics and Telecommunication', '7', 'B', '--'),
(8, 'Electronics and Telecommunication', '7', 'B', 'K K'),
(9, 'Electronics and Telecommunication', '7', 'B', 'please maintain infrastucture. conduct placement related programs.'),
(10, 'Electronics and Telecommunication', '7', 'B', 'No computers available for BDA practicals!'),
(11, 'Electronics and Telecommunication', '7', 'B', 'Shortage of lab equipments. Toilets are not clean. '),
(12, 'Electronics and Telecommunication', '7', 'A', '--'),
(13, 'Electronics and Telecommunication', '7', 'B', 'Departmental\'s men\'s washroom are not clean and hygienic. Also, Air conditioning should be provided to the labs.'),
(14, 'Electronics and Telecommunication', '7', 'B', '--'),
(15, 'Electronics and Telecommunication', '7', 'B', 'water crisis in college please...help for this, have GARAM PANI IN COLLEGE'),
(16, 'Electronics and Telecommunication', '7', 'B', 'The infrastructure needs renovation and computers are very outdated. The experiments are affected by the less computers and its availability. There is also limit to the time we get for prospering opportunity that helps in life '),
(17, 'Electronics and Telecommunication', '7', 'B', '--');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
