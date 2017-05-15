-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2017 at 09:21 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `position_ENG` varchar(30) NOT NULL,
  `name_ENG` varchar(30) CHARACTER SET utf8 NOT NULL,
  `surname_ENG` varchar(30) CHARACTER SET utf8 NOT NULL,
  `position_TH` varchar(30) CHARACTER SET utf8 NOT NULL,
  `name_TH` varchar(30) CHARACTER SET utf8 NOT NULL,
  `surname_TH` varchar(30) CHARACTER SET utf8 NOT NULL,
  `graduate` text CHARACTER SET utf8 NOT NULL,
  `specialist` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8 NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `position_ENG`, `name_ENG`, `surname_ENG`, `position_TH`, `name_TH`, `surname_TH`, `graduate`, `specialist`, `email`, `phone`, `img`) VALUES
(1, 'Ph.D.,Asst. Prof.', 'Kenneth', 'Cosh', 'Ph.D.,Asst. Prof.', 'Kenneth', 'Cosh', 'BBA Business Management, Lancaster University\r\nPhD. Computer Science, Lancaster University', 'Software Engineering, Requirements Engineering, Natural Language Processing, Information Systems in Tourism,', '', '', 'img/teacher/Kenneth.jpg'),
(2, 'Ph.D.,Asst. Prof.', 'Karn', 'Patanukhom', 'ผศ.ดร.', 'กานต์', 'ปทานุคม', 'B.Eng. (Electrical Engineering) , Chiang Mai University, Chiang Mai, Thailand, 2003\r\nM.Eng. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2006\r\nPh.D. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2009', 'Image Processing\r\nDigital Signal Processing', 'karn@eng.cmu.ac.th', '053-942072', 'img/teacher/Karn.jpg'),
(3, 'Ph.D.,Asst. Prof. ', 'Juggapong', 'Natwichai', 'ผศ.ดร.', 'จักรพงศ์', 'นาทวิชัย', 'The University of Queensland, Queensland, Australia', 'Database systems\r\nData Mining\r\nInformation \r\nSystems', 'juggapong@chiangnai.ac.th', '053 942024', 'img/teacher/Juggapong.jpg'),
(4, 'Ph.D., Assoc.Prof.', 'Trasapong', 'Thaiupathump', 'รศ.ดร.', 'ตรัสพงศ์', 'ไทยอุปถัมภ์', 'B.Eng. (Computer Engineering with Honors)King Mongkut\'s Institute of Technology, Ladkrabang, Bangkok, Thailand, 1993\r\nM.S. (Computer Engineering) University of Southern California, California, USA, 1996\r\nPh.D. (Data Communications), University of Pennsylvania, Pennsylvania, USA, 2002', 'Digital Signal Processing\r\nData Communications\r\n', 'trasapong@eng.cmu.ac.th', '053-942023', 'img/teacher/Trasapong.jpg'),
(5, 'Ph.D.,Asst. Prof.', 'Narathip', 'Tiangtae', 'ผศ.ดร.', 'นราธิป', 'เที่ยงแท้', 'B.Eng. (Information Engineering) Tohoku University, Sendai, Japan, 1995\r\nM.Eng. (Information Engineering) Nagoya University, Nagoya, Japan, 1997\r\nD.Eng. (Information Engineering) Nagoya University, Nagoya, Japan, 2001', 'Computer Graphics\r\nNumerical Simulation\r\nHigh Performance Computing', '-', '053-942078 ต่อ 2078', 'img/teacher/Narathip.jpg'),
(6, 'Ph.D.,Asst. Prof.', 'Narissara', 'Eiamkanitchat', 'ผศ.ดร.', 'นริศรา', 'เอี่ยมคณิตชาติ', 'B.Eng.(Computer Engineering) Chiang Mai University, Chiang Mai, Thailand, 1997\r\nM.Eng.(Electrical Engineering) Chiang Mai University, Chiang Mai, Thailand\r\nPh.D.(Electrical Engineering),Chiang Mai University, 2010​', 'Data Mining\r\nNeuro-fuzzy system\r\nBusiness Intelligence', '', '053 942076 ต่อ 203', 'img/teacher/Narissara.jpg'),
(7, 'Ph.D.', 'Navadon', 'Khunlertgit', 'อ.ดร.', 'นวดนย์', 'คุณเลิศกิจ', 'Ph.D. (Electrical Engineering), Texas A&M University, College Station, TX, USA, 2016\r\nM.Eng. (Computer Engineering), Chiang Mai University, Chiang Mai, Thailand, 2009\r\nB.Eng. (Computer Engineering), Chiang Mai University, Chiang Mai, Thailand, 2006', 'Computational Biology\r\nGenomic Signal Processing (GSP)\r\nEarth Science Modeling Education', '', '', 'img/teacher/Navadon.jpg'),
(8, 'Ph.D.', 'Patiwet', 'Wuttisarnwattana', 'อ.ดร.', 'ปฏิเวธ', 'วุฒิสารวัฒนา', 'Doctor of Philosophy (Biomedical Engineering), Case Western Reserve University, Ohio, USA\r\nMaster of Science (Biomedical Engineering), Case Western Reserve University, Ohio, USA \r\nBachelor of Engineering (Computer Engineering) with first class honors, Chiang Mai University, Chiang Mai, Thailand', 'Medical Imaging\r\nBiomedical Image Processing and Analysis\r\nBiomedical Engineering\r\nStem Cell Therapy, Immunology, and Histopathology', 'patiwet @ eng.cmu.ac.th', '053 942 023', 'img/teacher/Patiwet.jpg'),
(9, 'Ph.D.', 'Pruet', 'Boonma', 'อ.ดร.', 'พฤษภ์', 'บุญมา', 'Ph.D. (Computer Science), University of Massachusetts Boston, MA, USA, 2009\r\nM.IT. (Computer Science and Software Engineering) Monash University, Victoria, Australia, 2003\r\nB.Eng. (Computer Engineering) , Chiang Mai University, Chiang Mai, Thailand, 1997', 'ระบบประมวลผลแบบกระจาย และ แบบขนาน\r\nการออกแบบ ติดตั้ง และจัดการระบบเครือข่าย\r\nระบบสารสนเทศหลายสื่อ\r\nการพัฒนาซอฟท์แวร์โอเพนซอร์ส และ ระบบภาษาไทย', 'pruet@eng.cmu.ac.th', '053 942073 ต่อ 110', 'img/teacher/Pruet.jpg'),
(10, 'Ph.D.', 'Paskorn', 'Champrasert', 'อ.ดร.', 'ภาสกร', 'แช่มประเสริฐ', 'Ph.D. Computer Science, University of Massachusetts Boston\r\nMS. Industrial and Organization Psychology, Chiang Mai University \r\nB.Eng Computer, Chaing Mai University ', 'Heuristics Algorithms\r\nBio-Inspired Computing ', 'paskorn@eng.cmu.ac.th', '053 942076 ต่อ 107', 'img/teacher/Paskorn.jpg'),
(11, 'Ph.D.,Asst. Prof.', 'Yuthapong', 'Somchit', 'ผศ.ดร.', 'ยุทธพงษ์', 'สมจิต', 'B.Eng. (Electrical Engineering) , Chiang Mai University, Chiang Mai, Thailand, 1999\r\nM.Eng. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2003\r\nPh.D. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2006\r\n', 'Computer Networks\r\nCloud Computing\r\nCisco IOS/ Cisco IOS-XR', '', '053 942024 ต่อ 218', 'img/teacher/Yuthapong.jpg'),
(12, 'Ph.D.,Asst. Prof. ', 'Lachana', 'Ramingwong', 'ผศ.ดร.', 'ลัชนา', 'ระมิงค์วงศ์', 'Ph.D. in Software Process Management (Computer Science), University of\r\nNew England, Australia', 'Software Engineering, Software Process Management, Requirements\r\nEngineering, Usability Engineering, Human-Computer Interaction.', 'lachana@eng.cmu.ac.th', '053 942024 ต่อ 210', 'img/teacher/Lachana.jpg'),
(13, 'Ph.D.', 'Sakgasit', 'Ramingwong', 'รศ.ดร.', 'ศักดิ์กษิต', 'ระมิงค์วงศ์​', '(Ph.D.) School of Science and Technology, University of New England, Australia\r\n(M.Sc. in Information Technology for Manufacture) Warwick Manufacturing Group, University of Warwick, United Kingdom\r\n(B.Eng. in Computer Engineering) Faculty of Engineering, Chiang Mai University, Thailand', 'Software project management\r\nSoftware risk management\r\nSoftware process improvement\r\nGlobal system development\r\nGame-based learning\r\nQuality management', 'sakgasit@eng.cmu.ac.th', '053 942073 ต่อ 209', 'img/teacher/Sakgasit.jpg'),
(14, 'Ph.D., Assoc. Prof.', 'Sansanee', 'Auephanwiriyakul', 'รศ.ดร.', 'ศันสนีย์', 'เอื้อพันธ์วิริยะกุล', 'B.Eng (Electrical Engineering) Chiang Mai University, Chiang Mai, Thailand, 1993\r\nM.S. (Electrical and Computer Engineering) University of Missouri-Columbia, Missouri, USA, 1996\r\nPh.D. (Computer Engineering and Computer Science) University of Missouri-Columbia, Missouri, USA, 2000', 'Computer Vision\r\nNeural Networks\r\nPattern Recognition\r\nFuzzy Set Theory', 'sansanee@eng.cmu.ac.th', '053 942076 ต่อ 204', 'img/teacher/Sansanee.jpg'),
(15, 'Ph.D., Assoc.Prof.', 'Sanpawat', 'Kantabutra', 'รศ.ดร.', 'สรรพวรรธน์', 'กันตะบุตร', 'Ph.D. in Theoretical Computer Science, Tufts University, USA', 'Complexity Theory, Design and Analysis of Algorithms, Graph Theory', 'sanpawat@alumni.tufts.edu', '053-942023', 'img/teacher/Sanpawat.jpg'),
(16, 'Ph.D.,Asst. Prof.', 'Santi', 'Phithakkitnukoon', 'ผศ.ดร.', 'สันติ', 'พิทักษ์กิจนุกูร', 'Ph.D. Computer Science and Engineering, University of North Texas, Texas, USA, 2009\r\nMS Electrical Engineering, Southern Methodist University, Texas, USA, 2005\r\nBS Electrical Engineering (hons), Southern Methodist University, Texas, USA, 2003', 'Urban computing\r\nSocial computing\r\nMobile sensing', 'santi@eng.cmu.ac.th', '053 942 023 ต่อ 210', 'img/teacher/Santi.jpg'),
(17, 'Ph.D.,Asst. Prof.', 'Anya', 'Apavatjrut', 'ผศ.ดร.', 'อัญญา', 'อาภาวัชรุตม์', 'Ph.D. (Telecommunications), Institut National des Sciences Appliquées de Lyon, France, 2011\r\nM.Res. (Instrument systems, signals and images), Institut National des Sciences Appliquées de Lyon, France, 2007\r\nM.Eng.[+B.Eng.] (Telecommunications engineering), Institut National des Sciences Appliquées de Lyon, France, 2007', 'Wireless Communications\r\nWireless Sensor Networks\r\nChannel Codings\r\nCooperative Communications', 'anya@eng.cmu.ac.th', '053 942024 ต่อ 205', 'img/teacher/Anya.jpg'),
(18, 'Ph.D.', 'Arnan', 'Sipitakiat', 'อ.ดร.', 'อานันท์', 'สีห์พิทักษ์เกียรติ', 'Ph.D., Massachusetts Institute of Technology, USA.(2008)', 'Microprocesser', 'arnans@gmail.com', '053 942024 ต่อ 105', 'img/teacher/Arnan.jpg'),
(19, 'Ph.D.', 'Dome', 'Potikanond', 'อ.', 'โดม', 'โพธิกานนท์', '', '', '', '053 942073 ต่อ 102', 'img/teacher/Dome.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
