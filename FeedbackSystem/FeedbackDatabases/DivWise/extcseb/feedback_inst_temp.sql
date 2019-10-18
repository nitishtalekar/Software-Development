-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 08:03 AM
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
(83, 'Mechanical Engineering', '5', 'B', 'Washrooms should have permanent water supply.'),
(84, 'Electronics and Telecommunication', '5', 'A', 'new equipments requires and better toilets and canteen needed. '),
(85, 'Electronics and Telecommunication', '5', 'A', 'no proper management lack of facilities and need many new components in lab as there are not in working condition and then teachers see as students fault and tend to five less marks in exams a lot of biasness can be seen among techers'),
(86, 'Electronics and Telecommunication', '5', 'A', 'the lab equipments do not work, espically the computers.\r\nthe fans in the classroom do not work properly.\r\n'),
(87, 'Electronics and Telecommunication', '5', 'A', 'lab equipment are old they can change it\r\n'),
(88, 'Electronics and Telecommunication', '5', 'A', '--'),
(89, 'Electronics and Telecommunication', '5', 'A', '--'),
(90, 'Mechanical Engineering', '7', 'B', 'We want better computers for Solidworks, ANsys, etc. Rarely any computer works properly. Professors should stop targeting students. Watchmen asks for ID card at gate thats annoying. Why will i go to some other college at 8:30 am in morning. Very stupid rule. We expect to have more books in library which are up to date. Better placements are required. Water filters are bad. Washrooms are bad. We need better facility for the amount we pay. Overall i will rate college 2/5.'),
(91, 'Mechanical Engineering', '7', 'B', 'In practical there is no such lab where we can actually perform the experiments. Not a single computer works in labs. No facilities are provided to us hence after paying such a huge amount of fees. No seriousness towards the practical learning. No proper software available. Many classrooms and not properly maintained. No proper projector in classes. Drinking water is the worst, We have to fill water from outside or purchase from canteen. When we pay such a huge amount so we at least expect to get some basic facilities like proper drinking water, clean toilet, Proper classrooms, Working computers, cad, cam software, proper maintained Practical labs. Rest all things are good. '),
(92, 'Electronics and Telecommunication', '5', 'A', 'lab maintance is not proper, pc\'s are not working, No fresh water and yeah we need ac'),
(93, 'Electronics and Telecommunication', '5', 'A', 'washroom water issue. computers in lab are not working,'),
(94, 'Electronics and Telecommunication', '5', 'A', 'Although faculty is good ,With lack of good and working lab equipments. The college has been highly ignorant about the infrastructure and equipments available to student. The college spirit is killed then and there.\r\ninfrastructure also lacks cleanliness. No purified water is available .\r\nThe college is not at all responsive about the needs of the student .\r\nalthough complaining hundreds of time nothing is considered or acted upon.  \r\nNo regards for the pressure put on the students  during the final weeks .\r\n'),
(95, 'Electronics and Telecommunication', '5', 'A', 'Poor facilities such as bad washrooms,no water facility,poor infrastructure,Aged tools and equipment,No computers working in labs.'),
(96, 'Electronics and Telecommunication', '5', 'A', 'Fix bathroom,add ACs,cleanliness could be better,no computer working in computer lab.'),
(97, 'Electronics and Telecommunication', '5', 'A', 'classes ,washrooms are not clean.\r\nno water facility in washrooms\r\nonly 2 computers work out of 25 computers\r\n\r\n'),
(98, 'Electronics and Telecommunication', '5', 'A', 'Less equipments , no proper washroom facility. Provide sufficient amount of computers so that students can have a good experience and perform their practical well.'),
(99, 'Electronics and Telecommunication', '5', 'A', 'No good hygienic facility,no water facility,bad quality of drinking water,no action is taken after many complaints,no sports ground or no physical activity conducted by college '),
(100, 'Mechanical Engineering', '7', 'B', 'more placements are needed in mechanical engineering. '),
(101, 'Electronics and Telecommunication', '5', 'A', '1. motivate students for various competitions and provide facilities.\r\n2. poor infrastructure and less electronic equipments in practicals which leads in  decreasing our practical knowledge.\r\n3. provide appropriate schedulde for project work. \r\n4. toilets and water facilities should be improved.\r\n5. lack of teaching skills in some faculties.\r\n6. should provide us an internship which will helps us in building a good cv .'),
(102, 'Mechanical Engineering', '7', 'B', 'The institute doesn\'t provide safe drinking water and hygienic restrooms. Institute should also support different teams and committees working in the different fields of engineering. The knowledge they gain from those stuff is much more important than the outdated knowledge they are gaining in lecture. '),
(103, 'Electronics and Telecommunication', '5', 'A', 'Washrooms are PATHETIC. Doesnt feel like we are in a college in mumbai versova. The attitude of most of the staff and peons is not satisfactory. They have alot of attitude. Computers dont work at all. ALSO THESE FEEDBACKS WONT BE LOOKED UPON TO'),
(104, 'Mechanical Engineering', '7', 'B', 'The washrooms aren\'t maintained properly at all ! Hygiene is a very important aspect of life and it should be given the highest priority. The working student bodies in the institute should be provided with moral and financial support as they represent the institute in various national and international level programs and competitions. '),
(105, 'Electronics and Telecommunication', '5', 'A', '1.washrooms are inadequate\r\n2.no mirrors in any washroom of the college\r\n3.less availability of latest books in library\r\n4.lack of computers in library\r\n5.no internet connections\r\n6.we have to give our own internet connection for use\r\n7.In some class room fans are not working, and after complaining it to HOD he is like \"you should write a letter to me about this \"\r\n8.In labs most of the COMPUTERS  (APPROXIMATELY 8/10) are not in working conditions.\r\n9.no proper supply of water\r\naur wo railway concession wale ko kis baat ki akad hai pata nahi\r\nprincipal se jyada akad mai toh wo rehta hai............'),
(106, 'Electronics and Telecommunication', '5', 'A', 'Toilets aren\'t clean and at times there is no water supply. Lack of computer instruments in the lab which makes it difficult for the students to get the practical knowledge of the softwares which are being used. Administration, accounts and examination cell staffs are very rude and not helpful at times.  '),
(107, 'Mechanical Engineering', '7', 'B', '--'),
(108, 'Electronics and Telecommunication', '5', 'B', 'fans are not working properly,computer in the labs are not working,lab assistants of few labs should behave properly'),
(109, 'Electronics and Telecommunication', '5', 'B', 'please instruct the faculty inform the students regarding the presentations,mini projects,etc work at the beginning to the sem as it becomes a burden on the students to cope with all these stuffs collectively at the end'),
(110, 'Electronics and Telecommunication', '5', 'B', 'journals and assignments should be given before so that the exams and submissions would not collapse so as to get ample amount of time for self study and also the laboratory equipment should be provided sufficiently.'),
(111, 'Electronics and Telecommunication', '5', 'B', 'I think the  practical materials should be provided.'),
(112, 'Electronics and Telecommunication', '5', 'B', 'AVERAGE\r\n'),
(113, 'Electronics and Telecommunication', '5', 'B', 'How do you all expect us to to do practicals when there are only 3-4 PC\'s of the total PC\'s working in Signal processing and MES lab?'),
(114, 'Electronics and Telecommunication', '5', 'B', '--'),
(115, 'Electronics and Telecommunication', '5', 'B', 'Practical knowledge should be provided more.Infrastructure problem.should be more concentrated on real time projects.'),
(116, 'Electronics and Telecommunication', '5', 'B', 'Please install AC\'s in the classrooms, the class strength is 75. Please buy new PC\'s for all the labs as everyone of them is obsolete and all of them have stopped working and our work is delayed. Please clean the washrooms more frequently and PLEASE PUT PARTITIONS BETWEEN THE URINALS.'),
(117, 'Electronics and Telecommunication', '5', 'B', 'most of the computers in labs are not working. washrooms are not clean'),
(118, 'Electronics and Telecommunication', '5', 'B', 'need basic facilties indeed in a institution\r\n-proper working PC\'s, better CRO\'s\r\n-clean washrooms\r\n-better ventilation in labs as well as classroom\r\n'),
(119, 'Electronics and Telecommunication', '5', 'B', 'practical is something very crucial. but in out institue for performing practicaly hardly there is one or two pc works between 30students and institute is not paying attention to this problem. also mini project and lot of assignment are bombared at the end of semester which puts pressure on students and due to which we get less time for studying so all this works should be given before hand so there is no last moment burden.'),
(120, 'Electronics and Telecommunication', '5', 'B', 'majority computers do not work in the labs which causes difficulties in performing. fans do not work. '),
(121, 'Electronics and Telecommunication', '5', 'B', 'very good'),
(122, 'Electronics and Telecommunication', '5', 'B', '1. Lots of Pc\'s are not working properly\r\n'),
(123, 'Electronics and Telecommunication', '5', 'B', 'practical labs should be well maintain.'),
(124, 'Electronics and Telecommunication', '5', 'B', 'please install pcs that are working and please insatll AC'),
(125, 'Electronics and Telecommunication', '5', 'B', 'lack of computers in every lab , nor recent version of softwareis used, computer are not in operating mode during practical session only 4 to 5 working computer in batch of 30 students. subject also becomes burden full when teacher ask for presentation , report, assignment ,tutorial ,project everything for one subject. '),
(126, 'Electronics and Telecommunication', '5', 'B', 'please maintain some equipment in the practical lab & please encourage sports in college. Give some funds to sports commity '),
(127, 'Electronics and Telecommunication', '5', 'B', 'nurture sports in college that is the elementary need of student to perform well in mental health.give some more fund to sports commitee. provide good equipments in lab especially computers'),
(128, 'Electronics and Telecommunication', '3', 'A', '--'),
(129, 'Electronics and Telecommunication', '3', 'A', 'proper drinking water is not available.'),
(130, 'Electronics and Telecommunication', '3', 'A', '--'),
(131, 'Electronics and Telecommunication', '3', 'B', 'EXCELLENT'),
(132, 'Electronics and Telecommunication', '3', 'A', '--'),
(133, 'Electronics and Telecommunication', '3', 'A', 'should maintain labs \r\nwashroom should be clean\r\nmaintance of classrom \r\nsome of instruments in lab should be change'),
(134, 'Electronics and Telecommunication', '3', 'A', 'washroom is untidy and drinking water is not available\r\nfans are not working properly\r\n'),
(135, 'Electronics and Telecommunication', '3', 'B', '--'),
(136, 'Electronics and Telecommunication', '3', 'B', 'very good'),
(137, 'Electronics and Telecommunication', '3', 'B', 'fans were not working properly.\r\nmany there is no water in washroom.\r\n'),
(138, 'Electronics and Telecommunication', '3', 'A', 'can improve sanitation in washroom and improve management behavior\r\nand management   '),
(139, 'Electronics and Telecommunication', '3', 'B', 'good'),
(140, 'Electronics and Telecommunication', '3', 'B', 'faculties can be improved\r\nwater purifier need to be be installed \r\n'),
(141, 'Electronics and Telecommunication', '3', 'A', '--'),
(142, 'Electronics and Telecommunication', '3', 'B', 'none'),
(143, 'Electronics and Telecommunication', '3', 'A', ' sitting arrangement in college premises. \r\nno drinking water available.'),
(144, 'Electronics and Telecommunication', '3', 'A', 'Sitting arrangement in cafeteria should be provided, usually girls washrooms are not clean  '),
(145, 'Electronics and Telecommunication', '3', 'A', '--'),
(146, 'Electronics and Telecommunication', '3', 'A', 'seating arrangement in College Premises\r\nno drinking water available\r\nfans not working in Classroom'),
(147, 'Electronics and Telecommunication', '3', 'A', 'we wnt new fans and tubelights \r\nwe want edc teacher change asap\r\nwe want good light connection\r\nexamination cell is anoying and dont help us \r\nand last thing sir who provide us train pass is is mad you should change him '),
(148, 'Electronics and Telecommunication', '3', 'B', 'Faculty change must be considered, as some teachers are below par in their teaching ability, and often are not sympathetic with student problems as submissions and assignment overload affects us deeply/\r\n\r\nOther issues include water filter not providing clean or drinkable water, ventilation in college often very poor, e.t.c. Lesser assignment/submissions and more extra-curricular activities should be considered.'),
(149, 'Electronics and Telecommunication', '3', 'B', '--'),
(150, 'Electronics and Telecommunication', '3', 'A', 'kindly replace the fan '),
(151, 'Electronics and Telecommunication', '3', 'B', 'moderate '),
(152, 'Electronics and Telecommunication', '3', 'B', 'modaret'),
(153, 'Electronics and Telecommunication', '3', 'B', 'meh'),
(154, 'Electronics and Telecommunication', '3', 'B', 'NOT THE GREATEST BUT I AM HAPPY WITH INSTITUTE'),
(155, 'Electronics and Telecommunication', '3', 'B', '--'),
(156, 'Electronics and Telecommunication', '3', 'B', '--'),
(157, 'Electronics and Telecommunication', '3', 'A', '--'),
(158, 'Electronics and Telecommunication', '3', 'B', '--'),
(159, 'Electronics and Telecommunication', '3', 'B', 'PLEASE IMPROVE REST ROOM AND WATER FACILITIES IN INSTITUTE'),
(160, 'Electronics and Telecommunication', '3', 'B', '--'),
(161, 'Electronics and Telecommunication', '3', 'A', '--'),
(162, 'Electronics and Telecommunication', '3', 'A', ' Fans and lights in classes aren\'t working properly and please clean washroom ,DS lab beside 4th floor boys washroom always smell bad . Beside this faculty are very helpful regarding subjects and helps us with management and also cmputers during practical are not sufficient for practicing ,Else everything is satifactorily good'),
(163, 'Electronics and Telecommunication', '3', 'B', '--'),
(164, 'Electronics and Telecommunication', '3', 'A', '--'),
(165, 'Electronics and Telecommunication', '3', 'A', 'bhathrooms not clean should clean them and there is always guthka spitted in bathroom abviosly it is not any stydent who eats it and does it it must be the staff of the college every thing else in college is the best'),
(166, 'Electronics and Telecommunication', '3', 'B', 'Poor infrastructure. poor supply of water sometimes there is no water available for drinking as well as in the washrooms which can be dangerous to the health of the student . No ACs in the lab. Not  Sufficient  PCs . LIfts are no working etc etc....... '),
(167, 'Electronics and Telecommunication', '3', 'A', 'college is very good only the some of the EXTC faculty are very bad and do not have much knowledge about their subject and and having the bad attitude with the students and do not give the question banks'),
(168, 'Electronics and Telecommunication', '3', 'B', 'The infrastructure is very poor. There isn\'t proper supply for water. The PC are very old and few we have to do our Java practical in a noisy environment with 3 students on one PC. The lifts are not working properly. The recess time should be increase to 1 hour.'),
(169, 'Electronics and Telecommunication', '3', 'A', 'better infrasrtucture'),
(170, 'Electronics and Telecommunication', '3', 'A', 'institute is great, loved it. Please expand the Canteen.');

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
  MODIFY `fi_temp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
