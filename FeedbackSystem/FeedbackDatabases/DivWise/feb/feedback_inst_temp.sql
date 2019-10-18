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
(1, 'Applied Sciences', '1', 'B', '--'),
(2, 'Applied Sciences', '1', 'B', 'Overall faculty and facilities are good enough.'),
(3, 'Applied Sciences', '1', 'B', 'IMPROVE WASHROOM, REMOVE THE 34MB LIMIT OF WIFI, LAB ASSISTANT OF BEE IS VERY ARROGANT AND RUDE '),
(4, 'Applied Sciences', '1', 'B', 'It\'s good. Staff and infrastructure are appreciable.'),
(5, 'Applied Sciences', '1', 'B', 'It gets really hot in the class. The fan speed is slow in most classes. The washrooms are not well maintained. Most of the times there is no water in the taps. Most of the seats in the Seminar Hall need to be fixed.'),
(6, 'Applied Sciences', '1', 'B', 'IMPROVE WASHROOM, THE FEES DEPARTMENT WHICH ALSO HANDLES SCHOLARSHIP FORMS HAVE VERY ATTITUDE AND RUDE AND DOESN\'T GIVES INFORMATION ABOUT HOW TO FILL FORM, LAB ASSISTANT OF BEE IS ALSO VERY RUDE, EXCEED WIFI LIMIT,   '),
(7, 'Applied Sciences', '1', 'B', 'some teachers teaches well while some are poor at it.'),
(8, 'Applied Sciences', '1', 'B', 'IMPROVE WASHROOM,INSTALL A.C,CHANGE BEE LAB ASSISTANT,PROVIDE WI-FI FACILITY , IMPROVE BENCHES,LEAVE ON PROPER TIME '),
(9, 'Applied Sciences', '1', 'B', 'clasroom is to hot too sit for the lecture '),
(10, 'Applied Sciences', '1', 'B', '1)VERY BAD CONDITION OF WASHROOM\r\n2)ACCOUNT OFFICER WHO HANDLES SCHOLARSHIP FORMS  SPEAKS VERY RUDELY WITH EVERYONE EVEN WITH PARENTS AND USES VERY ABUSIVE LANGUAGE.TELLS THAT HE DID NOT GET TRAINING FOR HIS WORK.\r\n3)EXCEED THE WIFI LIMIT \r\n4)LAB ASSISTANT OF BEE DOESN\'T HAVE COMMUNICATION SKLLS.\r\n5)VENTILATION IN CLASS IS NOT GOOD .PLEASE REPLACE THE FANS WITH AC\r\n6)COMPUTERS DON\'T WORK IN COMPUTER LAB'),
(11, 'Applied Sciences', '1', 'B', 'don\'t have comfortable campus. class room is horrible . fans not working well. lifts stucks always. stucking students on doors. don\'t have proper canteen food. not proper place to eat. don\'t have ground to play.'),
(12, 'Applied Sciences', '1', 'B', 'its really hot for every one in classroom ,even for teachers . it makes teachers as well student to weaken their concentration... so kindly requesting put some ac (air conditioner) in a classroom ...so we can concentrate more for students as well as for teachers'),
(13, 'Applied Sciences', '1', 'B', 'INSTITUTION IS GOOD.PLEASE INSTALL AIR CONDITIONER AS THE CLASSES ARE SUFFOCATING.EVEN TEACHERS ARE ALSO FED UP.PLEASE DO NOT IGNORE AND INSTALL AIR CONDITIONERS.THE CLASSROOMS ARE EXHAUSTED AND ALSO INSTALL AC IN COMPUTER LAB.IN COMPUTER LAB THE COMPUTERS ARE NOT WORKING.INSTALL AC IN EVERY CLASS ROOM.THE TOILET CONDITIONS ARE WORST ON THE SECOND FLOOR.PLEASE CLEAN IT REGULARLY AND FREQUENTLY.WATER IS NOT THERE AFTER RECESS.THE ACCOUNT OFFICER IS VERY RUDE.HE DO NOT KNOW HOWTO TALK TO PARENTS.'),
(14, 'Applied Sciences', '1', 'B', 'PLEASE IMPROVE THE INFRASTRUCTURE AND REPLACE THE FAN WIT AC CHANGE THE NON TEACHING STAFF THEY ARE WORST DON\'T HAVE PROPER LANGUAGE THEY ALWAYS SHOUT DOESN\'T THINK ABOUT STUDENT AND BEHAVE LIKE THE COLLEGE IS THEIR'),
(15, 'Applied Sciences', '1', 'B', 'washrooms are not kept clean'),
(16, 'Applied Sciences', '1', 'B', 'CLASS IS VERY SUFFOCATING, MAKE SURE FANS WORK PROPERLY AND IF POSSIBLE  PLACE AC s. THE NON TEACHING STAFF AND LAB ASSISTANTS ARE VERY RUDE TO STUDENTS, THEY DON\'T KNOW HOW TO TALK TO A STUDENT. THE COLLEGE IS NICE BUT ITS VERY SUFFOCATING, IT COULD BE THE BEST COLLEGE IF NON TEACHING STAFF ARE REPLACED BY SOME WELL SPOKEN PERSONS AND SUFFOCATING PROBLEM IS RESOLVED. THE WASHROOM IS ALSO VERY BAD, EVEN IF ITS URGENT ITS REALLY NOT POSSIBLE TO GO TO WASHROOM. LIFT DOESN\'T WORK SOMETIME, WASHROOMS SHOULD BE WELL CLEANED AND COLLEGE SHOULD BE A LITTLE MORE VENTILATED. PLEASE TRY TO FIX AC s. AS IT BECOMES TOO HOT IN OCTOBER, WE CANT EVEN ABOUT WHAT HAPPENS IN SUMMERS. THANK YOU.\r\n'),
(17, 'Applied Sciences', '1', 'B', 'Classes require new fans as it is quite suffocation for the teachers as well, it also disturbs the flow of the class as the teachers sweat out a lot. Also the workshop is extremely suffocation, as I feel nauseating there. also Basis Electrical Engineering And Basic Engineering Workshop lab assistant are extremely very rude and refuse to cooperate and help most of the time. Also we need new plates in canteen as those plates seems very unhygienic. '),
(18, 'Applied Sciences', '1', 'B', '1) THE CLASS IS VERY HOT DUE TO INSUFFICIENT FANS AND VENTILATION IS VERY BAD ...PLZ ADD MORE FANS TO CLASS AND IF POSSIBLE PLEASE ADD AC AS MOST CLLG IN MUMBAI ARE STARTING TO PUT AC IN THEIR CLASSROOMS\r\n\r\n2)WORKSHOP SIR ARE VERY RUDE AND ITS VERY HOT IN WORKSHOP...WE SWEAT ALOT IN LAB SO PLZ  DO SOMETHING \r\n\r\n3) THE BOYS WASHROOMS DONT NOT HAVE A PROPER WESTERN STYLE TOILET ...PLZ ADD JET SPRAY AND IMPROVE THE CONDITIONS OF TOILETS \r\n\r\n4)THE BEE ASSISTANT IS VERY RUDE AND DONT HAVE ANY KNOWLEDGE AND TEACHES VERY BAD\r\n\r\n5)THE WATER COOLERS ARE NOT WORKING ON 1ST AND 2ND FLOOR ...PLZ MAKE THEM WORK\r\n\r\n6)THE LIFT ARE NOT IN WORKING CONDITIONS SO PLZ REPLACE THEM AS THEY ARE VERY OLD AND VERY RISKY AS SOMEONE ENTERS IT THEY CLOSE AND SOMEONE CAN GET HURT SO PLZ REPAIR OR CHANGE LIFTS\r\n\r\n7)THE CANTEEN FOOD IS NOT HYGENIC AND VERY LIMITED OPTIONS FOR JAIN FOOD IS AVAILABLE.SO I REQEST YOU TO MAKE A SEPERATE KITCHEN FOR JAIN AS IT GETS MIX EVERYTIME THEY MAKE REGULAR AND JAIN FOOD \r\n\r\n8)PLZ ADD CHAIRS AND TABLES IN CANTEEN AREA AS THE ONES ARE ALWAYS HOT DUE TO NO SHADE\r\n\r\n9)THE COLLEGE SHLD START BUS SERVICES FROM STATION TO CLLG AS THE BEST BUSES ARE NOT CONVINIENT ARE FULL PACK \r\n\r\n10)THE CAMPUS SHOULD HAVE A PLACE FOR INDOORS GAMES AS WE DO NOT HAVE ANY PLACE TO CHILL (CARROM , TABLE TENIS,CHESS)ETC'),
(19, 'Applied Sciences', '1', 'B', 'NO.'),
(20, 'Applied Sciences', '1', 'E', 'CLASSROOM SHOULD BE COLOURED \r\n'),
(21, 'Applied Sciences', '1', 'E', 'WASHROOMS\' CLEANLINESS NOT UP TO THE MARK.\r\nCLASSROOM CLEANLINESS REQUIRED SOON.\r\n'),
(22, 'Applied Sciences', '1', 'E', '--');

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
