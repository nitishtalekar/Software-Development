-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 07:52 AM
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
(1, 'Applied Sciences', '1', 'D', 'BEST COLLEGE IN THE UNIVERSE I HAVE EVER SEEN'),
(2, 'Applied Sciences', '1', 'D', '--'),
(3, 'Applied Sciences', '1', 'D', 'Need development in staff'),
(4, 'Applied Sciences', '1', 'F', 'Girls washrooms are not clean and there are lots of mosquitoes in the basement'),
(5, 'Applied Sciences', '1', 'D', 'IT IS PRETTY GOOD '),
(6, 'Applied Sciences', '1', 'D', 'unhygienic washrooms and need some development in staff attitude.\r\n'),
(7, 'Applied Sciences', '1', 'D', '--'),
(8, 'Applied Sciences', '1', 'D', 'WASHROOM FACILITES ARE NOT GOOD CLASSES FANS R NOT WORKING PROPERLY '),
(9, 'Applied Sciences', '1', 'D', 'nice environment, good co-curricular activities; needs to work out on sports '),
(10, 'Applied Sciences', '1', 'D', 'Best college '),
(11, 'Applied Sciences', '1', 'D', 'NO AC,NO PROPER DICIPLINE ,AVERAGE INFRASTRUCTURE,NON HELPFUL NATURE OF THE COLLEGE OFFICE.'),
(12, 'Applied Sciences', '1', 'D', '--'),
(13, 'Applied Sciences', '1', 'D', 'Unhygenic girl\'s washroom, there is no soap/handwash there. Account staf is quite rude .Incomplete equipments in laboratories.No benches in canteen, the canteeen food is below average.Lift are always out of maintanance.'),
(14, 'Applied Sciences', '1', 'D', 'unhyegenic boys washrooms , rude accounts staff , broken devices in electrical lab , broken furniture in classroom , average canteen  food , water dispenser dosent work sometimes , it gets really hot in classrooms :  coolers required, improper seating arrangement in canteen , lift is not maintained (mostly dont work,lack of safety measures in it), no ac in computer lab.\r\nwell maintained chemistry lab.'),
(15, 'Applied Sciences', '1', 'D', '2ND FLOOR BOYS WASHROOM IS SO SMELLY AND SHOULD BE CLEANED REGULARLY '),
(16, 'Applied Sciences', '1', 'D', 'canteen food too oily.. n accounts staff too rude to all.. like they are hell very weird with studentd plz remove tht...specially one who sits inside in the cabin'),
(17, 'Applied Sciences', '1', 'D', 'god experience up till now teachers and nice work is done smoothly just the washrooms could have been more nicer that would contribute a lot in maintain good hygiene '),
(18, 'Applied Sciences', '1', 'D', 'Boys washroom of 1st and 2nd floor is very dirty it should be clean regularly \r\nsome of that seats re also broken in washroom ....'),
(19, 'Applied Sciences', '1', 'D', 'fan do not work properly , it feels suffocating in class'),
(20, 'Applied Sciences', '1', 'D', '--'),
(21, 'Applied Sciences', '1', 'D', 'need improvement'),
(22, 'Applied Sciences', '1', 'D', 'need improvement'),
(23, 'Applied Sciences', '1', 'D', 'need improvement'),
(24, 'Applied Sciences', '1', 'D', 'need improvement'),
(25, 'Applied Sciences', '1', 'D', 'need improvement'),
(26, 'Applied Sciences', '1', 'D', 'need improvement'),
(27, 'Applied Sciences', '1', 'D', 'need improvement'),
(28, 'Applied Sciences', '1', 'D', 'need improvement'),
(29, 'Mechanical Engineering', '3', 'A', '--'),
(30, 'Mechanical Engineering', '3', 'A', 'PLEASE CHECK THE WASHROOM CONDICION AND TRY TO MAINTAIN HYGINE OF THE COLLEGE '),
(31, 'Mechanical Engineering', '3', 'A', '--'),
(32, 'Mechanical Engineering', '3', 'A', '--'),
(33, 'Mechanical Engineering', '3', 'A', 'should provide more practical knowledge than theoretical'),
(34, 'Mechanical Engineering', '3', 'A', 'suffisiently good ,but not excellant'),
(35, 'Mechanical Engineering', '3', 'A', '--'),
(36, 'Mechanical Engineering', '3', 'A', '--'),
(37, 'Mechanical Engineering', '3', 'A', '--'),
(38, 'Mechanical Engineering', '3', 'A', 'Need new machiniries for practicals  or atleast maintain properly '),
(39, 'Applied Sciences', '1', 'D', 'college doesn\'t have proper and cleaned washroom always water shortage,no soap in washroom,no clean drinking water,lifts are not working properly,and moreover college needs painting because infrastructure is good but it looks dull,and no proper equipments in lab.'),
(40, 'Mechanical Engineering', '3', 'A', '--'),
(41, 'Applied Sciences', '1', 'D', '1.boys washrooms are very dirty.\r\n2.very bad infrastruture  and interior.\r\n3.benches are broken.\r\n4.fans of the class doesnt work.\r\n5.ligths in the classrooms are very bad.\r\n6.food price in the canteen are very high.\r\n7.even computer labs doesn\'t have ac\'s.\r\n8.classrooms doesn\'t have proper teaching facility.'),
(42, 'Mechanical Engineering', '3', 'A', '--'),
(43, 'Mechanical Engineering', '3', 'A', '--'),
(44, 'Applied Sciences', '1', 'D', 'college is good, only the some facility of fans are bad '),
(45, 'Mechanical Engineering', '3', 'A', 'when we submit caste documents the sir assigned to it ,doesnt talk very nicely he acts as if the remaining fees is taken from  his salary'),
(46, 'Mechanical Engineering', '3', 'A', '--'),
(47, 'Mechanical Engineering', '3', 'A', 'sufficienty good but infra can be improved'),
(48, 'Mechanical Engineering', '3', 'A', '--'),
(49, 'Mechanical Engineering', '3', 'A', '--'),
(50, 'Mechanical Engineering', '3', 'A', 'STAFF OF THE OFFICE ARE NOT AT ALL POLITE, WHILE TEACHERS ARE EXTREMELY POLITE \r\nFACILITY PROVIDED BY THE INSTITUTE IS EXTREMELY POOR!!!'),
(51, 'Mechanical Engineering', '3', 'A', '--'),
(52, 'Mechanical Engineering', '3', 'A', '--'),
(53, 'Mechanical Engineering', '3', 'A', '--'),
(54, 'Mechanical Engineering', '3', 'A', '--'),
(55, 'Mechanical Engineering', '3', 'A', 'WASHROOM IS VERY DIRTY. LACK OF REGULAR WATER SUPPLY.\r\n'),
(56, 'Mechanical Engineering', '3', 'A', '--'),
(57, 'Mechanical Engineering', '3', 'A', 'our institutes needs to be cleaned properly especially the toilets. teachers and staff needs to be more friendly and helpful. and please install ac as soon as possible....');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
