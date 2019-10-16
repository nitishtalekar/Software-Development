-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 07:03 AM
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
(1, 'Applied Sciences', '1', 'C', 'THEY SHOULD HAVE PROPER VENTILATION ...!!!!'),
(2, 'Applied Sciences', '1', 'C', '--'),
(3, 'Applied Sciences', '1', 'C', 'The facilities are good but the cleanliness is a big issue!'),
(4, 'Applied Sciences', '1', 'C', 'Washrooms are dirty all the time'),
(5, 'Applied Sciences', '1', 'C', '--'),
(6, 'Applied Sciences', '1', 'C', 'the boys toilet condition is very worst there is no proper maintenance and cleaning of the washroom. Not proper supply of tap water in washbasin. the chairs in the cafeteria are not well they need to be replaced. '),
(7, 'Applied Sciences', '1', 'C', 'AIR CONDITIONERS CAN BE PROVIDED IN ADDITIONAL FACILITIES. \r\nMORE SPORTS ACTIVITES CAN BE SERVED TO STUDENTS.\r\n '),
(8, 'Applied Sciences', '1', 'C', 'the boys toilet condition is very worst there is no proper maintenance and cleaning of the washroom. Not proper supply of tap water in washbasin. the chairs in the cafeteria are not well they need to be replaced. '),
(9, 'Applied Sciences', '1', 'C', 'the boys toilet condition is very worst there is no proper maintenance and cleaning of the washroom. Not proper supply of tap water in washbasin. the chairs in the cafeteria are not well they need to be replaced. '),
(10, 'Applied Sciences', '1', 'C', '--'),
(11, 'Applied Sciences', '1', 'C', 'perfect in their responsibilties and very friendly  towards students '),
(12, 'Applied Sciences', '1', 'C', ' excellent , provides extra lectures when necessary and supportive'),
(13, 'Applied Sciences', '1', 'C', 'the boys toilet condition is pathetic and there is no proper seating arrangement in canteen and the accounts department behaviour is very rude'),
(14, 'Applied Sciences', '1', 'C', '--'),
(15, 'Applied Sciences', '1', 'C', 'Air conditions should be installed due to inconvenience faced by us.  The account office is incooperative'),
(16, 'Applied Sciences', '1', 'C', 'IN ACCOUNT DEPARTMENT SOME PEOPLE ARE INCO OPORATIVE.'),
(17, 'Applied Sciences', '1', 'C', 'it is good to be here but travelling exhaust '),
(18, 'Applied Sciences', '1', 'C', '--'),
(19, 'Applied Sciences', '1', 'C', 'teacher of RGIT are good and helful'),
(20, 'Applied Sciences', '1', 'C', 'Our institution is amazing ..no doubts and queries'),
(21, 'Applied Sciences', '1', 'C', 'The staff from account department is very rude'),
(22, 'Applied Sciences', '1', 'C', 'institute is good for all types of student.');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
