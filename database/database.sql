-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 07:43 AM
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
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `UserID` int(3) UNSIGNED ZEROFILL NOT NULL,
  `Username` varchar(20) COLLATE utf8_bin NOT NULL,
  `Password` varchar(20) COLLATE utf8_bin NOT NULL,
  `Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Status` enum('ADMIN','USER') COLLATE utf8_bin NOT NULL DEFAULT 'USER'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`UserID`, `Username`, `Password`, `Name`, `Status`) VALUES
(001, '580610695', '0695', 'EAKKAPHOP WONGSORN', 'ADMIN'),
(002, '580610629', '0629', 'CHETSADA CHAIPRASOB', 'ADMIN'),
(003, '580610630', '0630', 'CHALITPHOL KUENSUWAN', 'ADMIN'),
(004, '580610642', '0642', 'DARUNPHOP PENGKUMTA', 'ADMIN'),
(005, '580610647', '0647', 'THERATAT SOMPRASERT', 'ADMIN'),
(006, '580610667', '0667', 'PHUMIPHAT CHIRAPIRIYAKUL', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `position_TH` varchar(30) CHARACTER SET utf8 NOT NULL,
  `name_TH` varchar(30) CHARACTER SET utf8 NOT NULL,
  `surname_TH` varchar(30) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `position_TH`, `name_TH`, `surname_TH`, `email`, `img`) VALUES
(1, 'เจ้าหน้าที่ธุรการภาควิชาวิศวกร', 'วิภาวรรณ ', 'มีปัญญา', '-', 'img/staff/wipawan.jpg'),
(2, 'พนักงานปฏิบัติงาน (ธุรการ)', 'พรพิมล ', 'พรหมมินทร์', '-', 'img/staff/pornpimon.jpg'),
(3, 'นักวิชาการคอมพิวเตอร์', 'สิทธิชน ', 'อังคุตรานนท์', 'peinakutsuki@gmail.com<br> sit', 'img/staff/sittichon.jpg'),
(4, 'นักวิชาการคอมพิวเตอร์', 'เพ็ญศิริ ', 'กุศลาภรณ์', 'pensiri@eng.cmu.ac.th', 'img/staff/pensiri.jpg'),
(5, 'พนักงานปฏิบัติงาน (ธุรการ)', 'อุรพี ', 'ธรรมโยธิน', 'urapee@eng.cmu.ac.th', 'img/staff/urapee.jpg'),
(6, 'พนักงานปฏิบัติงาน (ธุรการ)', 'เพียงตา ', 'อภิวงศ์', 'A.piangta@gmail.com', 'img/staff/piangta.jpg'),
(7, 'ช่างเทคนิคคอมพิวเตอร์', 'อภิชาติ ', 'รอดเรือน', 'tata1453@hotmail.com<br>tarsta', 'img/staff/apichart.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

CREATE TABLE `student1` (
  `id` int(11) NOT NULL,
  `name_ENG` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_ENG` varchar(19) CHARACTER SET utf8 NOT NULL,
  `name_TH` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_TH` varchar(17) CHARACTER SET utf8 NOT NULL,
  `nick_name` varchar(8) CHARACTER SET utf8 NOT NULL,
  `student_ID` varchar(9) CHARACTER SET utf8 NOT NULL,
  `advisor` varchar(28) CHARACTER SET utf8 NOT NULL,
  `garduate` varchar(50) CHARACTER SET utf8 NOT NULL,
  `entrance` varchar(14) CHARACTER SET utf8 NOT NULL,
  `email` varchar(34) CHARACTER SET utf8 NOT NULL,
  `cpe_group` int(2) NOT NULL,
  `img` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`id`, `name_ENG`, `surname_ENG`, `name_TH`, `surname_TH`, `nick_name`, `student_ID`, `advisor`, `garduate`, `entrance`, `email`, `cpe_group`, `img`) VALUES
(1, 'NJANAPHORN', 'BOONMAK', 'กัญจนพร', 'บุญมาก', 'พิม', '590610600', 'อัญญา อาภาวัชรุตม์', 'เชียงคำวิทยาคม', 'แอดมิชชั่น', 'P.madhero@gmail.com', 25, 'img/student1/590610600.jpg'),
(2, 'KANYARAT', 'TANGKOKAITTIKOOL', 'กัญญารัตน์', 'ตั้งก่อเกียรติกุล', 'ไอซ์', '590610601', 'อัญญา อาภาวัชรุตม์', 'พระหฤทัย เชียงใหม่', 'โควตา', 'quasar_quinto.v@hotmail.com', 25, 'img/student1/590610601.jpg'),
(3, 'KAN', 'TIPPAYAMONTRI', 'กานต์', 'ทิพยมนตรี', 'เฟิร์ส', '590610602', 'อัญญา อาภาวัชรุตม์', 'นครสวรรค์', 'โควตา', 'Kansmarts777@hotmail.com', 25, 'img/student1/590610602.jpg'),
(4, 'KITIYA', 'WISITPONGPUN', 'กิติยา', 'วิสิฐพงศ์พันธ์', 'มุกกี้', '590610604', 'อัญญา อาภาวัชรุตม์', 'ดาราวิทยาลัย', 'แอดมิชชั่น', 'Kitiya_mook@hotmail.com', 25, 'img/student1/590610604.jpg'),
(5, 'KAISORN', 'KACHAI', 'ไกรสร', 'ก๋าใจ', 'บูม', '590610605', 'อัญญา อาภาวัชรุตม์', 'พะเยาพิทยาคม', 'โควตา', '24433@ppk.ac.th', 25, 'img/student1/590610605.jpg'),
(6, 'JARIKKA', 'CHEWACHATREEKASEM', 'จาริกการ์', 'ชีวชาตรีเกษม', 'เจ๋ง', '590610606', 'อัญญา อาภาวัชรุตม์', 'สตรีนนทบุรี', '', 'jrkrolling@gamail.com', 25, 'img/student1/590610606.jpg'),
(7, 'JIRAKIT', 'SAIWANGJIT', 'จิรกิตต์', 'สายวังจิตต์', 'ต้าง', '590610607', 'อัญญา อาภาวัชรุตม์', 'มงฟอร์ตวิทยาลัย', 'รับตรงคณะ', 'reborn_fanclub1@hotmail.com', 25, 'img/student1/590610607.jpg'),
(8, 'CHIRAWAT', 'MALADA', 'จิระวัตร', 'มาละดา', 'อิกคิว', '590610608', 'อัญญา อาภาวัชรุตม์', 'ดาราวิทยาลัย', 'อื่นๆ', 'poomsza2009@hotmail.com', 25, 'img/student1/590610608.jpg'),
(9, 'CAYANAT', 'PANCHON', 'ชยณัฐ', 'พันชน', 'เพียว', '590610609', 'อัญญา อาภาวัชรุตม์', 'ท่าวังผาพิทยาคม', 'รับตรงคณะ', 'nanpeaw44@gmail.com', 25, 'img/student1/590610609.jpg'),
(10, 'CHARIN', 'SANSRI', 'ชรินทร์', 'สรรศรี', 'นัท', '590610610', 'อัญญา อาภาวัชรุตม์', 'เบญจมราชูทิศ จันทบุรี', 'แอดมิชชั่น', 'Nut_charlin@hotmail.co.th', 25, 'img/student1/590610610.jpg'),
(11, 'CHAWALID', 'PUNYAJARERN', 'ชวลิต', 'ปัญญาเจริญ', 'ก๊อต', '590610611', 'อัญญา อาภาวัชรุตม์', 'พานพิทยาคม', 'แอดมิชชั่น', 'chwalidpunyajarern@gmail.com', 25, 'img/student1/590610611.jpg'),
(12, 'YANNAWUT', 'SINGJAI', 'ญาณวุฒิ', 'สิงห์ใจ', 'เอิร์ธ', '590610612', 'อัญญา อาภาวัชรุตม์', 'มงฟอร์ตวิทยาลัย', 'โควตา', 'yanawut.si@gmail.com', 25, 'img/student1/590610612.jpg'),
(13, 'THAPAKORN', 'PERYPORN', 'ฐาปกรณ์', 'เผยพร', 'อาท', '590610613', 'อัญญา อาภาวัชรุตม์', 'เมืองเชลียง', 'แอดมิชชั่น', 'thapakornpheyporn@gmail.com', 25, 'img/student1/590610613.jpg'),
(14, 'NUTTAPONG', 'PONGKAM', 'ณัฐพงษ์', 'พงษ์คำ', 'แบงค์', '590610614', 'อัญญา อาภาวัชรุตม์', 'พะเยาพิทยาคม', 'โควตา', 'nattapong-ppk@hotmail.com', 25, 'img/student1/590610614.jpg'),
(15, 'NATTHAPONG', 'YAEMYUAN', 'ณัฐพงษ์', 'แย้มยวน', 'ก๊อต', '590610615', 'อัญญา อาภาวัชรุตม์', 'สาธิตมหาวิทยาลัยขอนแก่น(มอดินแดง)', 'แอดมิชชั่น', 'gotji.orange@gmail.com', 25, 'img/student1/590610615.jpg'),
(16, 'NATTAPAS', 'ROMPO', 'ณัฐภาส', 'ร่มโพธิ์', 'ตะวัน', '590610616', 'อัญญา อาภาวัชรุตม์', 'บุญวาทย์วิทยาลัย', 'โควตา', 'tawan_352009@live.com', 25, 'img/student1/590610616.jpg'),
(17, 'NATRADA', 'SITTIKORN', 'ณัฐรดา', 'สิทธิกรณ์', 'นัทตี้', '590610617', 'อัญญา อาภาวัชรุตม์', 'นครสวรรค์', '', '', 25, 'img/student1/590610617.jpg'),
(18, 'TIN', 'INPANKAEW', 'ติณณ์', 'อินปั๋นแก้ว', '', '590610618', 'อัญญา อาภาวัชรุตม์', '', 'โควตา', 'oat22@windowslive.com', 25, 'img/student1/590610618.jpg'),
(19, 'TINNAWAT', 'TUIMAN', 'ติณวัตติ์', 'ตุ้ยแม้น', 'ต้าร์', '590610619', 'อัญญา อาภาวัชรุตม์', 'ตาคลีประชาสรรค์', 'โควตา', 'chetar40@hotmail.com', 25, 'img/student1/590610619.jpg'),
(20, 'THIPAKORN', 'MAUNGSING', 'ทิพากร', 'เมืองสิงห์', 'ป่าน', '590610620', 'อัญญา อาภาวัชรุตม์', 'โรงเรียนสามัคคีวิทยาคม', 'แอดมิชชั่น', 'pan_thipakorn@hotmail.com', 25, 'img/student1/590610620.jpg'),
(21, 'THANATAT', 'VORAVEERAVONG', 'ธนทัต', 'วรวีระวงศ์', '', '590610621', 'นราธิป เที่ยงแท้', '', 'โควตา', 'thanatat0621@hotmail.com', 25, 'img/student1/590610621.jpg'),
(22, 'TANAWIT', 'PRASERTSAK', 'ธนวิชญ์', 'ประเสริฐศักดิ์', 'ออมสิน', '590610622', 'นราธิป เที่ยงแท้', 'มาร์มาร่า วิชัยวิทยา', 'โควตา', 'aomsintnw@gmail.com', 25, 'img/student1/590610622.jpg'),
(23, 'TANAT', 'KONCHOM', 'ธนัท', 'คนชม', 'เกียร์', '590610623', 'นราธิป เที่ยงแท้', 'โรงเรียนสามัคคีวิทยาคม', 'แอดมิชชั่น', 'Tanat_konchom@cmu.ac.th', 25, 'img/student1/590610623.jpg'),
(24, 'THANAKOM', 'HATSADEANG', 'ธนาคม', 'หัสแดง', 'ฟลุ๊ค', '590610624', 'นราธิป เที่ยงแท้', 'โรงเรียนหนองฉาง', 'โควตา', '', 25, 'img/student1/590610624.jpg'),
(25, 'THANYARAT', 'SENKHAMWONG', 'ธัญญารัตน์', 'เสนคำวงค์', 'เนียร์', '590610625', 'นราธิป เที่ยงแท้', 'โรงเรียนเถินวิทยา', 'แอดมิชชั่น', 'RAINROOOOH@gmail.com', 25, 'img/student1/590610625.jpg'),
(26, 'TEERAMET', 'EAKWILAI', 'ธีรเมธ', 'เอกวิลัย', 'ปลื้ม', '590610626', 'นราธิป เที่ยงแท้', 'โรงเรียนเวียงสระ', 'ไม่ระบุ', 'ppluz2540@gmail.com', 25, 'img/student1/590610626.jpg'),
(27, 'TEERAYUT', 'PANYOHEANG', 'ธีรยุทธ', 'ปัญโญเหียง', 'ยุทธ', '590610627', 'นราธิป เที่ยงแท้', 'ส่วนบุญโญถัมภ์ ลำพูน', 'แอดมิชชั่น', 'nyxaether11@gmail.com', 25, 'img/student1/590610627.jpg'),
(28, 'NONTAWAT', 'SAIPANG', 'นนทวัฒน์', 'สายแปง', '', '590610628', 'นราธิป เที่ยงแท้', '', 'แอดมิชชั่น', 'newzavb@gmail.com', 25, 'img/student1/590610628.jpg'),
(29, 'NORRANITI', 'YOTHA', 'นรนิติ', 'โยธา', 'ฟิว', '590610630', 'นราธิป เที่ยงแท้', 'โรงเรียนบุญวาทย์วิทยาลัย', 'โควตา', 'few1014@hotmail.com', 25, 'img/student1/590610630.jpg'),
(30, 'NORAWORN', 'HORAWAN', 'นรวร', 'โหราวรรณ์', '', '590610631', 'นราธิป เที่ยงแท้', '', 'โควตา', 'night.innu@gmail.com', 25, 'img/student1/590610631.jpg'),
(31, 'NARINTEP', 'KEAWTHUNG', 'นรินทร์เทพ', 'แก้วถึง', 'เนส', '590610632', 'นราธิป เที่ยงแท้', 'โรงเรียน อุดมดรุณี ', 'โควตา', 'nessix_tap@hotmail.com', 25, 'img/student1/590610632.jpg'),
(32, 'NARUEBET', 'SINGWONGSA', 'นฤเบศ', 'สิงห์วงษา', 'แบงค์', '590610633', 'นราธิป เที่ยงแท้', 'โรงเรีียนเตรียมอุดมศึกษา ภาคตะวันออกเฉียงเหนือ', 'โครงการพิเศษ', '', 25, 'img/student1/590610633.jpg'),
(33, 'NANTANUT', 'CHEIWBANGYANG', 'นันทนัช', 'เชี้ยวบางยาง', 'นิก', '590610634', 'นราธิป เที่ยงแท้', 'โรงเรียน ภ.ป.ร ราชวิทยาลัยในพระบรมราชูปถัมภ์', 'แอดมิชชั่น', 'nick_rv47@hotmail.com', 25, 'img/student1/590610634.jpg'),
(34, 'NUNTAWAT', 'WISEDSUP', 'นันทวัฒน์', 'วิเศษทรัพย์', 'นันท์', '590610635', 'นราธิป เที่ยงแท้', 'โรงเรีียนเตรียมอุดมศึกษา ภาคตะวันออกเฉียงเหนือ', 'โควตา', 'thekalasour@outlook.co.th', 25, 'img/student1/590610635.jpg'),
(35, 'BUNYAPORN', 'BOONSEUB', 'บุณยาพร', 'บุญสืบ', 'จา', '590610636', 'นราธิป เที่ยงแท้', 'เฉลิมขวัญสตรี พิษณุโลก', 'แอดมิชชั่น', 'fc_f_zone@hotmail.com', 25, 'img/student1/590610636.jpg'),
(36, 'BOOTSARIN', 'DORKSONTIA', 'บุศรินทร์', 'ดอกสันเทียะ', 'ป๊อป', '590610637', 'นราธิป เที่ยงแท้', 'โรงเรียนสวรรค์อนันต์วิทยา', 'แอดมิชชั่น', 'Poppy.bt120@gmail.com', 25, 'img/student1/590610637.jpg'),
(37, 'PATHAKORN', 'RUKCHUA', 'ปฐกร', 'รักเชื้อ', 'เบย์', '590610638', 'นราธิป เที่ยงแท้', 'โรงเรียนสวรรค์อนันต์วิทยา', 'แอดมิชชั่น', 'Baybede.i5@gmail.com', 25, 'img/student1/590610638.jpg'),
(38, 'PATHOMPHOB', 'SUNANTA', 'ปฐมภพ', 'สุนันตา', 'บัล', '590610639', 'นราธิป เที่ยงแท้', 'โรงเรียนดำรงราษฎร์สงเคราะห์', 'โควตา', 'Bunbun852@gmail.com', 25, 'img/student1/590610639.jpg'),
(39, 'PITAKARN', 'SAISUWAN', 'ปิตกานต์', 'สายสุวรรณ', 'เอิร์ธ', '590610640', 'นราธิป เที่ยงแท้', 'โรงเรียนลำปางกัลยาณี', 'แอดมิชชั่น', 'poppgela@hotmail.co.th', 25, 'img/student1/590610640.jpg'),
(40, 'PIYACHAI', 'KUMPUAN', 'ปิยะชัย', 'คำปวน', 'ภูมิ', '590610641', 'นราธิป เที่ยงแท้', 'โรงเรียนยุพราชวิทยาลัย', 'โควตา', 'Poompiyachai@gmail.com', 25, 'img/student1/590610641.jpg'),
(41, 'PACHARAPORN', 'VISITPONGPAN', 'พัชรพร', 'วิสิฐพงศ์พันธ์', 'พลอย', '590610642', 'จักรพงศ์ นาทวิชัย', 'เฉลิมขวัญสตรี พิษณุโลก', 'โควตา', 'ploy_pizz_pie@hotmail.com', 25, 'img/student1/590610642.jpg'),
(42, 'PATCHARAWAT', 'SUKRUK', 'พัชรวัฒน์', 'สุขรักษ์', 'โดนัท', '590610643', 'จักรพงศ์ นาทวิชัย', 'เทพบดินทร์วิทยาเชียงใหม่', 'แอดมิชชั่น', 'babyman_2010@hotmail.com', 25, 'img/student1/590610643.jpg'),
(43, 'PATSAKORN', 'TOWATRAKOOL', 'พัสกร', 'โตวตระกูล', '', '590610644', 'จักรพงศ์ นาทวิชัย', '', 'โครงการพิเศษ', 'tusaveeiei@gmail.com', 25, 'img/student1/590610644.jpg'),
(44, 'PISIT', 'BOONKLOD', 'พิสิษฐ์', 'บุญคลอด', 'มายด์', '590610645', 'จักรพงศ์ นาทวิชัย', 'โรงเรียนหนองฉางวิทยา', 'โควตา', 'boonklod@gmail.com', 25, 'img/student1/590610645.jpg'),
(45, 'PEETAKARN', 'KARDUDOM', 'พีธกานต์', 'กาศอุดม', 'พีท', '590610646', 'จักรพงศ์ นาทวิชัย', 'โรงเรีียนสุโขทัยวิทยาคม', 'แอดมิชชั่น', 'peetakarn.peach@me.com', 25, 'img/student1/590610646.jpg'),
(46, 'PAKDEEPUM', 'PIBOONSOMBAT', 'ภักดีภูมิ', 'พิบูลย์สมบัติ', 'ฝา', '590610647', 'จักรพงศ์ นาทวิชัย', 'โรงเรียนสามัคคีวิทยาคม', 'ไม่ระบุ', 'falconskung@gmail.com', 25, 'img/student1/590610647.jpg'),
(47, 'MICK', 'CHEEWARATANAPAN', 'มิค', 'ชีวรัตนาพันธ์', 'มิค', '590610648', 'จักรพงศ์ นาทวิชัย', 'อัสสัมชัญลำปาง', 'แอดมิชชั่น', 'mick_cheewaratanapan@cmu.ac.th', 25, 'img/student1/590610648.jpg'),
(48, 'METEE', 'PIPATJARIYA', 'เมธี', 'พิพัฒน์จริยา', '', '590610649', 'จักรพงศ์ นาทวิชัย', '', 'โควตา', 'meteemeng2@gmail.com', 25, 'img/student1/590610649.jpg'),
(49, 'YOORADET', 'KHAMON', 'ยุรเดช', 'คำอ่อน', 'หรั่ง', '590610650', 'จักรพงศ์ นาทวิชัย', 'มงฟอร์ตวิทยาลัย', 'โครงการพิเศษ', 'yooradet.khamon@hotmail.com', 25, 'img/student1/590610650.jpg'),
(50, 'RACHANON', 'SOMTHA', 'รัชชานนท์', 'สมทา', 'นนท์', '590610651', 'จักรพงศ์ นาทวิชัย', 'ยุพราชวิทยาลัย เชียงใหม่', 'แอดมิชชั่น', 'iopolokoz01@gmail.com', 25, 'img/student1/590610651.jpg'),
(51, 'WONGSATORN', 'RINLA', 'วงศธร', 'รินลา', 'มอส', '590610652', 'จักรพงศ์ นาทวิชัย', 'โรงเรียนดาราวิทยาลัย เชียงใหม่', 'โควตา', 'wongsatorn.rinla@gmail.com', 25, 'img/student1/590610652.jpg'),
(52, 'WORAPHAN', 'INTARUKSA', 'วรพันธ์', 'อินตารักษา', '', '590610654', 'จักรพงศ์ นาทวิชัย', '', 'แอดมิชชั่น', '', 25, 'img/student1/590610654.jpg'),
(53, 'WANNACHAT', 'SRISAWAT', 'วรรณชาติ', 'ศรีสวัสดิ์', 'ฟลุค', '590610655', 'จักรพงศ์ นาทวิชัย', 'สรรพวิทยาคม', 'โควตา', 'fluketaokung@gmail.com', 25, 'img/student1/590610655.jpg'),
(54, 'WANARUT', 'BOONYUNG', 'วรรณรัตน์', 'บุญยัง', 'อั้น', '590610656', 'จักรพงศ์ นาทวิชัย', 'ยุพราชวิทยาลัย เชียงใหม่', 'โควตา', 'supperb00m@hotmail.co.th', 25, 'img/student1/590610656.jpg'),
(55, 'WORWICH', 'CHAMNANKID', 'วรวิช', 'ชำนาญคิด', 'แบงค์', '590610657', 'จักรพงศ์ นาทวิชัย', 'โรงเรียนดาราวิทยาลัย เชียงใหม่', 'โควตา', 'worwich@hotmail.com', 25, 'img/student1/590610657.jpg'),
(56, 'WANPIRUN', 'HAEKAWEE', 'วันพิรุฬ', 'แหกาวี', 'พิรุฬ', '590610659', 'จักรพงศ์ นาทวิชัย', 'ตากพิทยาคม', 'แอดมิชชั่น', 'inwpirun@gmail.com', 25, 'img/student1/590610659.jpg'),
(57, 'WIRACHAI', 'PORIEN', 'วิระชัย', 'ปอเหรียญ', 'เอฟ', '590610660', 'จักรพงศ์ นาทวิชัย', 'โรงเรียนสวรรค์อนันต์วิทยา', 'แอดมิชชั่น', 'wirachai_aefza000@hotmail.co.th', 25, 'img/student1/590610660.jpg'),
(58, 'WEERASAK', 'CHIANGSOI', 'วีระศักดิ์', 'เชียงสร้อย', 'เจมส์', '590610661', 'จักรพงศ์ นาทวิชัย', 'โรงเรียนสันกำแพง', 'โควตา', 'jame25193@gmail.com', 25, 'img/student1/590610661.jpg'),
(59, 'WOOTTHIPONG', 'MAPINTA', 'วุฒิพงษ์', 'มาปินตา', 'ไนท์', '590610662', 'กานต์ ปทานุคม', 'ส่วนบุญโญปถัมภ์ ลำพูน', 'โครงการพิเศษ', 'night.wootthipong@hotmail.com', 25, 'img/student1/590610662.jpg'),
(60, 'SATATAN', 'CHAMBOONCHU', 'ศตธัญญ์', 'ฉ่ำบุญชู', 'แซนด์', '590610663', 'กานต์ ปทานุคม', 'โรงเรียนนวมินทราชูทิศ พายัพ', 'โควตา', 'sand33134@hotmail.com', 25, 'img/student1/590610663.jpg'),
(61, 'SAWITA', 'SRIYONG', 'ศวิตา', 'ศรียอง', 'บีม', '590610664', 'กานต์ ปทานุคม', 'ส่วนบุญโญปถัมภ์ ลำพูน', 'โควตา', 'sawitasriyong@gmail.com', 25, 'img/student1/590610664.jpg'),
(62, 'SIRIPORN', 'BOONSEMA', 'ศิริภรณ์', 'บุญเสมา', 'ป๊อบ', '590610665', 'กานต์ ปทานุคม', 'ดาราวิทยาลัย', 'แอดมิชชั่น', 'pop_siripon@hotmail.com', 25, 'img/student1/590610665.jpg'),
(63, 'SIRIWAT', 'SUEBGINNORN', 'ศิริวัฒน์', 'สืบกินนอน', '', '590610666', 'กานต์ ปทานุคม', '', 'แอดมิชชั่น', '', 25, 'img/student1/590610666.jpg'),
(64, 'SIWAKON', 'CHAIDEE', 'ศิวกร', 'ใจดี', 'ตุลย์', '590610667', 'กานต์ ปทานุคม', 'พิษณุโลกพิทยาคม', 'โควตา', 'zeroevil40104@gmail.com', 25, 'img/student1/590610667.jpg'),
(65, 'SUPACHAI', 'POOKYO', 'ศุภชัย', 'ภู่เขียว', 'บูม', '590610668', 'กานต์ ปทานุคม', 'ส่วนบุญโญปถัมภ์ ลำพูน', 'แอดมิชชั่น', 'Boomza_go@hotmail.com', 25, 'img/student1/590610668.jpg'),
(66, 'SORLAVIT', 'SANSRI', 'สรวิชญ์', 'แสนศรี', 'เจิด', '590610669', 'กานต์ ปทานุคม', 'ดาราวิทยาลัย', 'โควตา', 'sorlavit123@gmail.com', 25, 'img/student1/590610669.jpg'),
(67, 'SAHARAT', 'BUARAWONG', 'สหรัฐ', 'บัวระวงศ์', 'บอม', '590610670', 'กานต์ ปทานุคม', 'รังษีวิทยา', 'โควตา', 'bomb_bomb13585@hotmail.com', 25, 'img/student1/590610670.jpg'),
(68, 'SINGKHON', 'KHONGTHAM', 'สิงขร', 'คงธรรม', 'โดโด้', '590610671', 'กานต์ ปทานุคม', 'ดาราวิทยาลัย', 'แอดมิชชั่น', 'yoshikani77@gmail.com', 25, 'img/student1/590610671.jpg'),
(69, 'SIRAPHOP', 'PURIWATTANAKUL', 'สิรภพ', 'ภูริวัฒนกุล', 'แบงค์', '590610672', 'กานต์ ปทานุคม', 'มอ.วิทยานุสรณ์', 'โครงการพิเศษ', 'mario130@hotmail.com', 25, 'img/student1/590610672.jpg'),
(70, 'SUMITRA', 'KOMLUE', 'สุมิตรา', 'คำลือ', 'ฝ้าย', '590610673', 'กานต์ ปทานุคม', 'โรงเรียนจักรคำคณาทร จังหวัดลำพูน', 'แอดมิชชั่น', 'fai.yamashita29@gmail.com', 25, 'img/student1/590610673.jpg'),
(71, 'SURIYA', 'KHUEANKHAN', 'สุริยา', 'เขื่อนขัน', 'แบงค์', '590610674', 'กานต์ ปทานุคม', 'เทพบดินทร์วิทยาเชียงใหม่', 'โควตา', 'asas2559509@outlook.com', 25, 'img/student1/590610674.jpg'),
(72, 'SETHAWUT', 'THAWONGKLANG', 'เสฏฐวุฒิ', 'ถาวงษ์กลาง', 'จอม', '590610675', 'กานต์ ปทานุคม', 'มงฟอร์ตวิทยาลัย', 'แอดมิชชั่น', 'evenseen@hotmail.com', 25, 'img/student1/590610675.jpg'),
(73, 'ACHIRAWIT', 'RUNNABUTTRA', 'อชิรวิทย์', 'รุณบุตรา', 'เปเปอร์', '590610676', 'กานต์ ปทานุคม', 'ท่าวังผาพิทยาคม', 'โครงการพิเศษ', 'paper.backza@gmail.com', 25, 'img/student1/590610676.jpg'),
(74, 'ATHITAKARN', 'MUANGKEING', 'อฐิตกานต์', 'เมืองเกียง', 'เอิร์ท', '590610677', 'กานต์ ปทานุคม', 'มงฟอร์ดวิทยาลัย', 'โควตา', 'earth_th14906@hotmail.com', 25, 'img/student1/590610677.jpg'),
(75, 'ATITAYA', 'SINPAKDEE', 'อทิตยา', 'สินภักดี', 'ยา', '590610678', 'กานต์ ปทานุคม', 'โรงเรียนดัดดรุณี', 'แอดมิชชั่น', 'kungya1318@gmail.com', 25, 'img/student1/590610678.jpg'),
(76, 'AMONWAN', 'LAPINSEE', 'อมลวรรณ', 'ลาภอินทรี', 'มายด์', '590610679', 'กานต์ ปทานุคม', 'บุญวาทย์วิทยาลัย', 'แอดมิชชั่น', 'mindamonwan@gmail.com', 25, 'img/student1/590610679.jpg'),
(77, 'INGKARAT', 'VAENCHOTECHUONG', 'อิงครัต', 'แหวนโชติช่วง', 'จูเนียร์', '590610680', 'กานต์ ปทานุคม', 'โรงเรียนเฉลิมพระเกียรติสมเด็จพระศรีนครินทร์ ภูเก็ต', 'โควตา', 'Juniorhaha0852@gmail.com', 25, 'img/student1/590610680.jpg'),
(78, 'ITTIPORN', 'KEAWUMPAI', 'อิทธิพร', 'แก้วอำไพ', 'ฟาร์ม', '590610681', 'กานต์ ปทานุคม', 'โรงเรียนพิริยาลัยจังหวัดแพร่', 'โควตา', 'Thunderock01@gmail.com', 25, 'img/student1/590610681.jpg'),
(79, 'KUNNAPAT', 'THIPPAYAPALAPHUNKUL', 'กันต์นภัส', 'ทิพยผลาผลกุล', '', '590612113', 'ภาสกร แช่มประเสริฐ', '', 'แอดมิชชั่น', 'folk_qq@hotmail.com', 25, 'img/student1/590612113.jpg'),
(80, 'JIRAYUT', 'CHONGJAILAN', 'จิรายุส', 'จงใจลาน', '', '590612115', 'ภาสกร แช่มประเสริฐ', '', 'รับตรงคณะ', 'bombbae_18@hotmail.com', 25, 'img/student1/590612115.jpg'),
(81, 'NUTCHAPUN', 'CHAIYARUNGROT', 'ณัชพันธ์', 'ชัยยะรุ่งโรจน์', '', '590612118', 'ภาสกร แช่มประเสริฐ', '', 'รับตรงคณะ', 'ohmohm92@hotmail.com', 25, 'img/student1/590612118.jpg'),
(82, 'NATCHAYA', 'WANKAT', 'ณัฐชยา', 'หวันกาศ', '', '590612119', 'ภาสกร แช่มประเสริฐ', '', 'ไม่ระบุ', 'Natchaya.wankatmaprang@outlook.com', 25, 'img/student1/590612119.jpg'),
(83, 'NATTIDA', 'PHAWANDEE', 'ณัฐธิดา', 'ผาวันดี', '', '590612120', 'ภาสกร แช่มประเสริฐ', '', 'แอดมิชชั่น', 'nattida_phawandee@hotmail.com', 25, 'img/student1/590612120.jpg'),
(84, 'NATASAN', 'BOONJAROEN', 'ณัฐสัณห์', 'บุญเจริญ', '', '590612121', 'ภาสกร แช่มประเสริฐ', '', 'แอดมิชชั่น', 'natasan_onisuka@hotmail.com', 25, 'img/student1/590612121.jpg'),
(85, 'DANUSON', 'KUMMOON', 'ดนุสรณ์', 'คำมูล', '', '590612122', 'ภาสกร แช่มประเสริฐ', '', 'โครงการพิเศษ', 'Danusonhacker191@gmail.com', 25, 'img/student1/590612122.jpg'),
(86, 'DANISH', 'SELAMAN', 'ดานิช', 'เซลามัน', '', '590612123', 'ภาสกร แช่มประเสริฐ', '', '', '', 25, 'img/student1/590612123.jpg'),
(87, 'DECHAWAT', 'ARAMSAENGTHIEN', 'เดชาวัฒน์', 'อร่ามแสงเทียน', '', '590612124', 'ภาสกร แช่มประเสริฐ', '', 'แอดมิชชั่น', 'daechawat_mcknight@hotmail.com', 25, 'img/student1/590612124.jpg'),
(88, 'TANAWAN', 'RUANGKARIN', 'ธนวรรณ', 'เรืองการินทร์', '', '590612125', 'ภาสกร แช่มประเสริฐ', '', 'รับตรงคณะ', 'nestgundam@gmail.com', 25, 'img/student1/590612125.jpg'),
(89, 'THANAWUN', 'SIRIOUAM', 'ธนวันต์์', 'ศิริอ่วม', '', '590612126', 'ภาสกร แช่มประเสริฐ', '', 'โครงการพิเศษ', '', 25, 'img/student1/590612126.jpg'),
(90, 'THANAWUT', 'PREECHARAT', 'ธนาวุฒิ', 'ปรีชารัตน์', '', '590612127', 'ภาสกร แช่มประเสริฐ', '', 'แอดมิชชั่น', 'non.mcfc@hotmail.com', 25, 'img/student1/590612127.jpg'),
(91, 'THANUTHI', 'CHAICHANAYAI', 'ธนุติ', 'ไชยชนะใหญ่', '', '590612128', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'joh_adids601@hotmail.com', 25, 'img/student1/590612128.jpg'),
(92, 'NUNTAWAT', 'SOPHAKUL', 'นันทวัฒน์', 'โสภากุล', '', '590612129', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'nuntawat_s@cmu.ac.th', 25, 'img/student1/590612129.jpg'),
(93, 'PRIN', 'INTORN', 'ปริญ', 'อินทร', '', '590612130', 'สรรพวรรธน์ กันตะบุตร', '', '', '', 25, 'img/student1/590612130.jpg'),
(94, 'PHRUEKSCHART', 'SOMBOONCHAI', 'พฤกษชาติ', 'สมบูรณ์ชัย', '', '590612131', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'phrueksachart1997@hotmail.com', 25, 'img/student1/590612131.jpg'),
(95, 'PATCHARAPON', 'KARDLUNGGA', 'พัชรพล', 'กาศลังกา', '', '590612132', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'mick_zaza5@hotmail.com', 25, 'img/student1/590612132.jpg'),
(96, 'PATTARAPOL', 'HINPROM', 'ภัทรพล', 'หินพรม', '', '590612133', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'engraving09@gmail.com', 25, 'img/student1/590612133.jpg'),
(97, 'MONGKON', 'DOKJAN', 'มงคล', 'ดอกจันทร์', '', '590612134', 'สรรพวรรธน์ กันตะบุตร', '', '', '', 25, 'img/student1/590612134.jpg'),
(98, 'RAKSIN', 'KHAMNGOEN', 'รักษ์ศิลป์', 'คำเงิน', '', '590612136', 'สรรพวรรธน์ กันตะบุตร', '', 'รับตรงคณะ', 'memorie.film@gmail.com', 25, 'img/student1/590612136.jpg'),
(99, 'WARUT', 'TIMPARE', 'วรุตม์', 'ทิมแพร', '', '590612137', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'ffo@outlook.co.th', 25, 'img/student1/590612137.jpg'),
(100, 'WATCHARAWAT', 'YAHPIANG', 'วัชรวัฒน์', 'ยะเปียง', '', '590612138', 'สรรพวรรธน์ กันตะบุตร', '', '', '', 25, 'img/student1/590612138.jpg'),
(101, 'VEJBHISIT', 'THANAVUDHISAWASDI', 'เวชพิสิฐ', 'ธนาวุฒิสวัสดิ์', '', '590612139', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'leo_lionking@hotmail.com', 25, 'img/student1/590612139.jpg'),
(102, 'SETTAWAT', 'BORIRUKLERT', 'เศรษฐวัฒน์', 'บริรักษ์เลิศ', '', '590612140', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', 'z.z.z.z.z.z.z.z.zenith@gmail.com', 25, 'img/student1/590612140.jpg'),
(103, 'SURIYA', 'INTAWONG', 'สุริยา', 'อินทะวงษ์', '', '590612141', 'สรรพวรรธน์ กันตะบุตร', '', '', '', 25, 'img/student1/590612141.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE `student2` (
  `id` int(11) NOT NULL,
  `name_ENG` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_ENG` varchar(19) CHARACTER SET utf8 NOT NULL,
  `name_TH` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_TH` varchar(17) CHARACTER SET utf8 NOT NULL,
  `nick_name` varchar(8) CHARACTER SET utf8 NOT NULL,
  `student_ID` varchar(9) CHARACTER SET utf8 NOT NULL,
  `advisor` varchar(28) CHARACTER SET utf8 NOT NULL,
  `garduate` varchar(50) CHARACTER SET utf8 NOT NULL,
  `entrance` varchar(14) CHARACTER SET utf8 NOT NULL,
  `email` varchar(34) CHARACTER SET utf8 NOT NULL,
  `cpe_group` int(2) NOT NULL,
  `img` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`id`, `name_ENG`, `surname_ENG`, `name_TH`, `surname_TH`, `nick_name`, `student_ID`, `advisor`, `garduate`, `entrance`, `email`, `cpe_group`, `img`) VALUES
(1, 'NOKWAN', 'PINTHONG', 'กนกวรรณ', 'พินทอง', 'นก', '580610615', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'omagiclifeo252@gmail.com', 24, 'img/student2/580610615.jpg'),
(2, 'KAWEWUT', 'CHUJIT', 'กวีวุฒิ', 'ชูจิตร', 'จ๊าบ', '580610616', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการพิเศษ', 'kawewut.chu@gmail.com', 24, 'img/student2/580610616.jpg'),
(3, 'KITTITORN', 'RAKPANYAKAEO', 'กิตติธร', 'รักปัญญาแก้ว', 'เจเจ ', '580610617', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'koonjj@gmail.com', 24, 'img/student2/580610617.jpg'),
(4, 'KITTITAT ', 'BOONKARN', 'กิตติธัช', 'บุญกาญจน์', 'เวฟ', '580610618', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'wave_tome@hotmail.com', 24, 'img/student2/580610618.jpg'),
(5, 'KITTIPHON', 'KANJINA', 'กิตติพล', 'กันจินะ', 'โด่ง', '580610619', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'dd-dong@hotmail.com', 24, 'img/student2/580610619.jpg'),
(6, 'KAIWIT', 'MANEEWONG', 'ไกรวิชญ์', 'มณีวงค์', 'วิช', '580610620', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'Kraiwich2015@gmail.com', 24, 'img/student2/580610620.jpg'),
(7, 'KANIN ', 'SUKAROTE', 'คณิน', 'สุขโรจน์', 'คิน', '580610622', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'kinlllzab@gmail.com', 24, 'img/student2/580610622.jpg'),
(8, 'NGAMSIRI', 'BUAMAN', 'งามสิริ', 'บัวมั่น', 'เฟม', '580610624', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการเรียนดี', 'Fame0833@gmail.com', 24, 'img/student2/580610624.jpg'),
(9, 'JANTAKARN', 'SIVILIZE', 'จันทกานติ์', 'ศิวิลัยซ์', 'ขิม', '580610625', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'annani12@hotmail.com', 24, 'img/student2/580610625.jpg'),
(10, 'JARUPRON ', 'SUPIYAPANICH', 'จารุพร', 'สุปิยะพาณิชย์', 'หมู', '580610626', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'Jarupron_21@hotmail.com', 24, 'img/student2/580610626.jpg'),
(11, 'JIRAYUS ', 'SIRICHANTARAPONG', 'จิรายุส', 'ศิริจันทรพงค์', 'บีม', '580610627', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'beam555@hotmail.com', 24, 'img/student2/580610627.jpg'),
(12, 'CHETSADA ', 'CHAIPRASOB', 'เจษฎา', 'ชัยประสพ', 'โอ้ต', '580610629', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการเรียนดี', 'ood9842@hotmail.com', 24, 'img/student2/580610629.jpg'),
(13, 'CHALITPHOL', 'KUENSUWAN', 'ชลิตพล', 'เขื่อนสุวรรณ', 'ขนุน', '580610630', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'chalitphol@gmail.com', 24, 'img/student2/580610630.jpg'),
(14, 'CHAWASIT ', 'TENGTRAIRATANA', 'ชวศิษฐ์', 'เต็งไตรรัตน์', 'อิก', '580610631', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการพิเศษ', 't.turtle_no.1@hotmail.com', 24, 'img/student2/580610631.jpg'),
(15, 'NATCHAPON ', 'PETAITIEMTHONG', 'ณัชพล', 'เพทายเทียมทอง', 'อาร์ค', '580610633', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'ark.natchapon@gmail.com', 24, 'img/student2/580610633.jpg'),
(16, 'NUTTINEE ', 'DUANGHONG', 'ณัฎฐินี', 'ดวงโฮ้ง', 'อูม', '580610634', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'D.nuttinee@hotmail.com', 24, 'img/student2/580610634.jpg'),
(17, 'NATTAKIT ', 'TRIMAT', 'ณัฐกิตติ์', 'ไตรเมศ', 'นาย', '580610636', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'nattakit_trimat@gmail.com', 24, 'img/student2/580610636.jpg'),
(18, 'NATNICHA ', 'SOMSAK', 'ณัฐณิชา', 'สมศักดิ์', 'บีม', '580610639', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'bns-04@hotmail.com', 24, 'img/student2/580610639.jpg'),
(19, 'NATTHAPHON ', 'KHAMFONG', 'ณัฐพล', 'คำฟอง', 'ทิว', '580610640', 'ยุทธพงษ์ สมจิต', '', 'โครงการเรียนดี', 'tam3393@hotmail.co.th', 24, 'img/student2/580610640.jpg'),
(20, 'NATTAWUT ', 'KHAMCHAI', 'ณัฐวุฒิ', 'คำไชย', 'อ๊อฟ', '580610641', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'aofoon0824@outlook.com', 24, 'img/student2/580610641.jpg'),
(21, 'DARUNPHOP', 'PENGKUMTA', 'ดรันภพ', 'เป็งคำตา', 'โอปอ', '580610642', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'cute_cloudian@hotmail.com', 24, 'img/student2/580610642.jpg'),
(22, 'THATCHAYUT', 'UNJITWATTANA', 'ทัตชยุตม์', 'อุ่นจิตต์วรรธนะ', 'โตเต', '580610643', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'thatchayut.tay@gmail.com', 24, 'img/student2/580610643.jpg'),
(23, 'THANAPHOM', 'DHUMMAWONG', 'ธนภูมิ', 'ธรรมวงศ์', 'แปม', '580610644', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'pam-duma@hotmail.com', 24, 'img/student2/580610644.jpg'),
(24, 'TANAWAT', 'KLOMKLOM', 'ธนวัฒน์', 'กลมกลอม', 'เฟิร์ส', '580610645', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'nuneymar@gmail.com', 24, 'img/student2/580610645.jpg'),
(25, 'TANIN', 'WANWILRAN', 'ธนิน', 'วรรณวิไลรัตน์', 'บูม', '580610646', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'apboomao@outlook.com', 24, 'img/student2/580610646.jpg'),
(26, 'THERATAT', 'SOMPRASERT', 'ธีรทัศน์', 'สมประเสริฐ', 'นนท์', '580610647', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'de-tell@hotmail.com', 24, 'img/student2/580610647.jpg'),
(27, 'THEERAPAT', 'SATTHAJARUPONG', 'ธีราพัฒน์', 'ศรัทธาจารุพงศ์', 'ออม', '580610648', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'makoto.diva@gmail.com', 24, 'img/student2/580610648.jpg'),
(28, 'NALUEDOM', 'MOORAWONG', 'นฤดม', 'มูระวงษ์', 'เกส', '580610649', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'naluedomgest@gmail.com', 24, 'img/student2/580610649.jpg'),
(29, 'NARUMON', 'SETDUSIT', 'นฤมล', 'เศรษฐ์ดุสิต', 'หยก', '580610650', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'mssetdusit@hotmail.co.th', 24, 'img/student2/580610650.jpg'),
(30, 'NIRAMOL', 'WATCHARAPRINGAM', 'นิรมล', 'วัชรไพรงาม', 'เมย์', '580610652', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'mayni_cb@hotmail.com', 24, 'img/student2/580610652.jpg'),
(31, 'PING-ARRAK', 'WANNAWONG', 'ปิงอารักข์', 'วรรณวงศ์', 'ปิง', '580610655', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'ping31345@gmail.com', 24, 'img/student2/580610655.jpg'),
(32, 'PHONGSATHON', 'PHASSAWAT', 'พงศธร', 'ภาสวัต', 'เนตร', '580610656', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'phongsathorn90@gmail.com', 24, 'img/student2/580610656.jpg'),
(33, 'PANATCHAKORN', 'THANYALAKSANAKUL', 'พนัชกร', 'ธัญลักษณากุล', 'บีม', '580610658', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'kaoklong_beam@hotmail.com', 24, 'img/student2/580610658.jpg'),
(34, 'PROMYOT', 'KATARAT', 'พร้อมยศ', 'กตารัตน์', 'เนม', '580610659', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'pro21808@gmail.com', 24, 'img/student2/580610659.jpg'),
(35, 'POTSAWAT', 'CHUENPET', 'พศวัฒน์', 'ชื่นเพ็ชร', 'เนตร', '580610660', 'นริศรา เอี่ยมคณิตชาติ', '', 'โครงการพิเศษ', 'potsawat_3232@hotmail.com', 24, 'img/student2/580610660.jpg'),
(36, 'PIMUKTHEE', 'JAIKLA', 'พิมุกต์ธีร์', 'ใจกล้า', 'เเว๊บ', '580610662', 'นริศรา เอี่ยมคณิตชาติ', '', 'โครงการพิเศษ', 'pimukthee@gmail.com', 24, 'img/student2/580610662.jpg'),
(37, 'PHAKIN', 'CHUKIATKAJOHN', 'ภคิน', 'ชูเกียรติขจร', 'เจิ้น', '580610664', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'pakin_lovedog@hotmail.com', 24, 'img/student2/580610664.jpg'),
(38, 'PATDANAI', 'DUANGWAROPAS', 'ภัทร์ดนัย', 'ดวงวโรภาส', 'บอส', '580610665', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'sssbossja@hotmail.com', 24, 'img/student2/580610665.jpg'),
(39, 'PANUWIT', 'MOTANA', 'ภาณุวิชญ์', 'โมทนา', 'บีม', '580610666', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'beampanuwit@hotmail.com', 24, 'img/student2/580610666.jpg'),
(40, 'PHUMIPHAT', 'CHIRAPIRIYAKUL', 'ภูมิพัฒน์', 'จิรพิริยะกุล', 'ต้า', '580610667', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'guitar11161@gmail.com', 24, 'img/student2/580610667.jpg'),
(41, 'POOMMIPAT', 'SETTHAKORN', 'ภูมิพัฒน์', 'เศรษฐกร', 'ภูมิ', '580610668', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'poom17345@gmail.com', 24, 'img/student2/580610668.jpg'),
(42, 'ROYBURA', 'BURARAK', 'รอยบุรา', 'บุรารักษ์', 'รอย', '580610670', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'aroiiwpairt5@msn.com', 24, 'img/student2/580610670.jpg'),
(43, 'RATCHAPONG', 'THONGSUK', 'รัชพงศ์', 'ทองสุข', 'เอ', '580610671', 'นริศรา เอี่ยมคณิตชาติ', '', 'โครงการเรียนดี', 'Ratchapongr@hotmail.com', 24, 'img/student2/580610671.jpg'),
(44, 'LALITA', 'BANDASAK', 'ลลิตา', 'บรรดาศักดิ์', 'รส', '580610672', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'ros003@hotmail.com', 24, 'img/student2/580610672.jpg'),
(45, 'WACHIRAWIT', 'KANPANLUK', 'วชิรวิทย์', 'กาฬพรรณลึก', 'วินเนอร์', '580610673', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'jokopoppo@gmail.com', 24, 'img/student2/580610673.jpg'),
(46, 'VORASON', 'SIRIPANKUL', 'วรศร', 'ศิริพานกุล', 'ไนท์', '580610674', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'nice.dark@hotmail.com', 24, 'img/student2/580610674.jpg'),
(47, 'WARAKORN', 'MEAKPATTANAPINYO', 'วรากร', 'เมฆพัฒนาภิญโญ', 'แชมป์', '580610675', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'warakornchamp@gmail.com', 24, 'img/student2/580610675.jpg'),
(48, 'WATCHARA', 'PHORUNG', 'วัชระ', 'โพธิ์รุ้ง', 'กล้วย', '580610676', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการเรียนดี', 'ifreez.url@gmail.com', 24, 'img/student2/580610676.jpg'),
(49, 'WIPHOB', 'KAOIAN', 'วิภพ', 'เก้าเอี้ยน', 'ได', '580610677', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'freedom_life1996@hotmail.com', 24, 'img/student2/580610677.jpg'),
(50, 'WIMONWAN', 'SRIJANPROM', 'วิมลวรรณ', 'ศรีจันทร์พรม', 'วิวิ', '580610678', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'Kingdom-bow@hotmail.com', 24, 'img/student2/580610678.jpg'),
(51, 'SATRARIN', 'SAEJEW', 'ศาสน์ตริน', 'แซ่จิว', 'โก้', '580610679', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'negi.flypang@gmail.com', 24, 'img/student2/580610679.jpg'),
(52, 'SUPAKARN', 'CHAIDAROON', 'ศุภการ', 'ชัยดรุณ', 'คอม', '580610680', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'supakarn39@hotmail.com', 24, 'img/student2/580610680.jpg'),
(53, 'SATETHAPAN', 'NAOWASATE', 'เศรษฐพันธ์', 'เนาวเศรษฐ์', 'เล็ก', '580610681', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการพิเศษ', 'sattapan.l@hotmail.com', 24, 'img/student2/580610681.jpg'),
(54, 'SUTTAWEE', 'LUKUAN', 'สุทธวีร์', 'ลู่ควร', 'รอส', '580610683', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'kogureaw@yahoo.com', 24, 'img/student2/580610683.jpg'),
(55, 'SUPITCHA', 'SAWASDIWARAPA', 'สุพิชฌาย์', 'สวัสดิวราภา', 'สมาย', '580610684', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการเรียนดี', 'kogolo_netar@hotmail.com', 24, 'img/student2/580610684.jpg'),
(56, 'SUPITCH', 'ANGCHANPEN', 'สุพิชย์', 'อังจันทร์เพ็ญ', 'อาร์ท', '580610685', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'sudukutoto@hotmail.com', 24, 'img/student2/580610685.jpg'),
(57, 'SATHIANPORN', 'KHAMDEE', 'เสถียรพร', 'คำดี', 'โดโด้', '580610686', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'satiando5826@gmail.com', 24, 'img/student2/580610686.jpg'),
(58, 'ORAYA', 'SRIDOWRUANG', 'อรยา', 'ศรีดาวเรือง', 'เจน', '580610687', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'ritzjane@gmail.com', 24, 'img/student2/580610687.jpg'),
(59, 'AKKHAPORN', 'THUEANROT', 'อรรฆพร', 'เถื่อนรอด', 'บอล', '580610688', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'akkhaporn@gmail.com', 24, 'img/student2/580610688.jpg'),
(60, 'AUNNOP', 'KATTIYANET', 'อรรณพ', 'ขัติยเนตร', 'อัน', '580610689', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'aunnop_kattiyanet@hotmail.com', 24, 'img/student2/580610689.jpg'),
(61, 'UTTAKRAN', 'RENUMAN', 'อรรถกรานต์', 'เรณุมาร', 'อัฒฑ์', '580610690', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'qowieury_kidmaioak@hotmail.com', 24, 'img/student2/580610690.jpg'),
(62, 'ARINCHAI', 'NANJARUWONG', 'อริญชัย', 'นันต์จารุวงศ์', 'โจ๋', '580610692', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'timecrisis1995@live.com', 24, 'img/student2/580610692.jpg'),
(63, 'AKKARAPORN', 'LERTPIPUTSAKUL', 'อัครพร', 'เลิศพิพัฒน์สกุล', 'อาร์ท', '580610693', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'ahar0007@hotmail.co.th', 24, 'img/student2/580610693.jpg'),
(64, 'ISSARAPONG', 'BOONSONG', 'อิสระพงษ์', 'บุญส่ง', 'ตูมตาม', '580610694', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'tumtamlove01@gmail.com', 24, 'img/student2/580610694.jpg'),
(65, 'EAKKAPHOP', 'WONGSORN', 'เอกภพ', 'วงค์สอน', 'โอ', '580610695', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการพิเศษ', 'overeakkapop@gmail.com', 24, 'img/student2/580610695.jpg'),
(67, 'WATCHARA', 'PHORUNG', 'วัชระ', 'โพธิ์รุ้ง', 'กล้วย', '580610676', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการเรียนดี', 'ifreez.url@gmail.com', 24, 'img/student2/580610676.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student3`
--

CREATE TABLE `student3` (
  `id` int(11) NOT NULL,
  `name_ENG` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_ENG` varchar(19) CHARACTER SET utf8 NOT NULL,
  `name_TH` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_TH` varchar(17) CHARACTER SET utf8 NOT NULL,
  `nick_name` varchar(8) CHARACTER SET utf8 NOT NULL,
  `student_ID` varchar(9) CHARACTER SET utf8 NOT NULL,
  `advisor` varchar(28) CHARACTER SET utf8 NOT NULL,
  `garduate` varchar(50) CHARACTER SET utf8 NOT NULL,
  `entrance` varchar(14) CHARACTER SET utf8 NOT NULL,
  `email` varchar(34) CHARACTER SET utf8 NOT NULL,
  `cpe_group` int(2) NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `student3`
--

INSERT INTO `student3` (`id`, `name_ENG`, `surname_ENG`, `name_TH`, `surname_TH`, `nick_name`, `student_ID`, `advisor`, `garduate`, `entrance`, `email`, `cpe_group`, `img`) VALUES
(1, 'RNKAMON', 'SUTTITANAWAT', 'กรกมล', 'สุทธิธนะวัฒน์', '', '570610544', 'สรรพวรรธน์ กันตะบุตร', '', 'โควตา', '', 23, 'img/student3/570610544.jpg'),
(2, 'KRITTEE', 'DEEWAN', 'กฤตธี', 'ดีวัน', '', '570610545', 'สรรพวรรธน์ กันตะบุตร', '', 'โควตา', '', 23, 'img/student3/570610545.jpg'),
(3, 'KAWEPHAT', 'WONGCHAI', 'กวีภัทร', 'วงศ์ไชย', '', '570610547', 'สรรพวรรธน์ กันตะบุตร', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610547.jpg'),
(4, 'KANKAWEE', 'CHALERMCHAI', 'กานท์กวี', 'เฉลิมชัย', '', '570610548', 'สรรพวรรธน์ กันตะบุตร', '', 'โควตา', '', 23, 'img/student3/570610548.jpg'),
(5, 'GAI', 'LOWVAPONG', 'กาย', 'เลาวพงศ์', '', '570610549', 'สรรพวรรธน์ กันตะบุตร', '', 'โควตา', '', 23, 'img/student3/570610549.jpg'),
(6, 'KITTIYA', 'WARISRI', 'กิตติยา', 'วารีศรี', '', '570610550', 'สรรพวรรธน์ กันตะบุตร', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610550.jpg'),
(7, 'KRIANGKAI', 'KOLIBOOT', 'เกรียงไกร', 'โกลิบุตร', '', '570610551', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610551.jpg'),
(8, 'KASEMSAN', 'WANGSAI', 'เกษมสัณห์', 'วังซ้าย', '', '570610552', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610552.jpg'),
(9, 'JANISTA', 'SRILERJAN', 'จณิสตา', 'ศรีเลอจันทร์', '', '570610555', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610555.jpg'),
(10, 'JARUKIT', 'SOMSAMAN', 'จารุกิตติ์', 'สมสมาน', '', '570610556', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610556.jpg'),
(11, 'JIRAPONG', 'SUKONVIJIT', 'จิระพงษ์', 'สุคนธ์วิจิตร', '', '570610557', 'สรรพวรรธน์ กันตะบุตร', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610557.jpg'),
(12, 'JIRAYUT', 'KEAWCHUEN', 'จิรายุส', 'แก้วชื่น', '', '570610558', 'สรรพวรรธน์ กันตะบุตร', '', 'โควตา', '', 23, 'img/student3/570610558.jpg'),
(13, 'CHAYANON', 'ARDKHAM', 'ชญานนท์', 'อาจคำ', '', '570610559', 'จักรพงศ์ นาทวิชัย', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610559.jpg'),
(14, 'CHAYANIN', 'SUATAP', 'ชญานิน', 'เสือทัพ', '', '570610560', 'จักรพงศ์ นาทวิชัย', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610560.jpg'),
(15, 'CHONNAPAT', 'DUANGDEETAWEERATANA', 'ชลนภัส', 'ดวงดีทวีรัตน์', '', '570610562', 'จักรพงศ์ นาทวิชัย', '', 'โควตา', '', 23, 'img/student3/570610562.jpg'),
(16, 'CHAIPICHIT', 'JEK-A-RAM', 'ชัยพิชิต', 'เจ๊กอร่าม', '', '570610563', 'จักรพงศ์ นาทวิชัย', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610563.jpg'),
(17, 'CHANCHAI', 'WISUTTIRUNGSEURAI', 'ชาญชัย', 'วิสุทธิรังษีอุไร', '', '570610564', 'จักรพงศ์ นาทวิชัย', '', 'โควตา', '', 23, 'img/student3/570610564.jpg'),
(18, 'THITIWAT', 'BUATIP', 'ฐิติวัสส์', 'บัวติ๊บ', '', '570610565', 'จักรพงศ์ นาทวิชัย', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610565.jpg'),
(19, 'NATCHAYA', 'PHROMNOI', 'ณัจยา', 'พรหมน้อย', '', '570610566', 'จักรพงศ์ นาทวิชัย', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610566.jpg'),
(20, 'NATCHA', 'LIKITRUNGSAN', 'ณัชชา', 'ลิขิตรังสรรค์', '', '570610567', 'จักรพงศ์ นาทวิชัย', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610567.jpg'),
(21, 'NUDDANAI', 'SUDCHAROEN', 'ณัฐดนัย', 'สุดเจริญ', '', '570610568', 'จักรพงศ์ นาทวิชัย', '', 'โควตา', '', 23, 'img/student3/570610568.jpg'),
(22, 'NATTANON', 'MANEECHOTE', 'ณัฐนนท์', 'มณีโชติ', '', '570610569', 'จักรพงศ์ นาทวิชัย', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610569.jpg'),
(23, 'TARIKA', 'RANGSEEWONG', 'ตาริกา', 'รังษีวงค์', '', '570610570', 'จักรพงศ์ นาทวิชัย', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610570.jpg'),
(24, 'THONGCHAI', 'TANSAO', 'ธงชัย', 'ตันซาว', '', '570610571', 'จักรพงศ์ นาทวิชัย', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610571.jpg'),
(25, 'THANACHAT', 'LERTWIRAM', 'ธนชาติ', 'เลิศวิราม', '', '570610573', 'จักรพงศ์ นาทวิชัย', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610573.jpg'),
(26, 'TANANUT', 'PANYAGOSA', 'ธนณัฐ', 'ปัญญาโกษา', '', '570610574', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610574.jpg'),
(27, 'TANATAT', 'THANEEYANUT', 'ธนทัต', 'ฐานียณัฏฐ์', '', '570610575', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610575.jpg'),
(28, 'THAWANRAT', 'JUNKHUN', 'ธวัลรัตน์', 'จันขัน', '', '570610576', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610576.jpg'),
(29, 'THATCHAI', 'CHUAUBON', 'ธัชชัย', 'เชื้ออุบล', '', '570610577', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610577.jpg'),
(30, 'THATCHAPON', 'WONGSRI', 'ธัชพล', 'วงค์ศรี', '', '570610578', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610578.jpg'),
(31, 'THIRAWAT', 'KHAMSILA', 'ธีรวัชร์', 'คำศิลา', '', '570610579', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610579.jpg'),
(32, 'NONTAPAT', 'KHONGPHAEN', 'นนทภัทร', 'คงแป้น', '', '570610580', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', 'thenut_project@hotmail.com', 23, 'img/student3/570610580.jpg'),
(33, 'NARATID', 'NANAN', 'นราธิศ', 'ณ น่าน', '', '570610581', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610581.jpg'),
(34, 'NATNAWEEN', 'SIRITAP', 'นัทนวีน', 'ศิริทัพ', '', '570610582', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610582.jpg'),
(35, 'NUCHAWEE', 'WEINGYA', 'นุชาวีร์', 'เวียงยา', '', '570610584', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610584.jpg'),
(36, 'BURINTAWAT', 'SITTINUN', 'บุรินทวัส', 'สิทธินันท์', '', '570610585', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610585.jpg'),
(37, 'PLAIFA', 'ATTHAPAIBUL', 'ปลายฟ้า', 'อัตตะไพบูลย์', '', '570610587', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610587.jpg'),
(38, 'PANSIT', 'WATTANAPRASOBSUK', 'พรรษิษฐ์', 'วัฒนาประสบสุข', '', '570610588', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610588.jpg'),
(39, 'PEERANUT', 'PONGPAKATIEN', 'พีรณัฐ', 'พงศ์ภคเธียร', '', '570610589', 'ศันสนีย์ เอื้อพันธ์วิริยะกุล', '', 'โควตา', '', 23, 'img/student3/570610589.jpg'),
(40, 'PAILIN', 'RUNGRUANG', 'ไพลิน', 'รุ่งเรือง', '', '570610590', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610590.jpg'),
(41, 'PAKIN', 'SUWANNAWAT', 'ภคิน', 'สุวรรณวัฒน์', '', '570610591', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โควตา', '', 23, 'img/student3/570610591.jpg'),
(42, 'PAKPOOM', 'RUJIPAN', 'ภาคภูมิ', 'รุจิพรรณ', '', '570610592', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610592.jpg'),
(43, 'BHURIVAT', 'MONTRI', 'ภูริวัชร', 'มนตรี', '', '570610594', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โควตา', '', 23, 'img/student3/570610594.jpg'),
(44, 'PHUWADECH', 'SANTHANAPIROM', 'ภูวเดช', 'สันธนาภิรมย์', '', '570610595', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โควตา', '', 23, 'img/student3/570610595.jpg'),
(45, 'RATTHAPOL', 'KAEWPINJAI', 'รัฐพล', 'แก้วปินใจ', '', '570610596', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โควตา', 'rattapon.kaewpinjai@gmail.com', 23, 'img/student3/570610596.jpg'),
(46, 'WORATHAM', 'KHANGTRAGOOL', 'วรธรรม', 'ฆังตระกูล', '', '570610597', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610597.jpg'),
(47, 'WORAWALAN', 'PINTA', 'วรวลัญช์', 'ปินตา', '', '570610598', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โครงการพิเศษ', 'Nnpiacker@gmail.com', 23, 'img/student3/570610598.jpg'),
(48, 'WASUPON', 'TANGSAKUL', 'วสุพล', 'ตั้งสกุล', '', '570610599', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610599.jpg'),
(49, 'WATCHAKON', 'PHONPHUANG', 'วัจน์กร', 'พรพ่วง', '', '570610600', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โควตา', '', 23, 'img/student3/570610600.jpg'),
(50, 'WATCHANAN', 'CHANTHAPHAKUN', 'วัชนันท์', 'จันทาภากุล', '', '570610601', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โควตา', '', 23, 'img/student3/570610601.jpg'),
(51, 'WIPAWEE', 'KEMMAK', 'วิภาวี', 'เค็มมาก', '', '570610602', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'โครงการพิเศษ', '', 23, 'img/student3/570610602.jpg'),
(52, 'SARANYA', 'CHINSORRANUNT', 'ศรัณยา', 'ชินสรนันท์', '', '570610605', 'ศักดิ์กษิต ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610605.jpg'),
(53, 'SIRAWIT', 'ONPRAPHAI', 'ศิรวิชญ์', 'อ่อนประไพ', '', '570610607', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610607.jpg'),
(54, 'SUPACHAI', 'JUNTAMA', 'ศุภชัย', 'จันทะมา', '', '570610608', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610608.jpg'),
(55, 'SUPANIDA', 'SARAYANTANAWUT', 'ศุภนิดา', 'สรญาณธนาวุธ', '', '570610609', 'พฤษภ์ บุญมา', '', 'โควตา', '', 23, 'img/student3/570610609.jpg'),
(56, 'SIRAWIT', 'TAKAEW', 'สิรวิชญ์', 'ตาแก้ว', '', '570610611', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610611.jpg'),
(57, 'SUCHADA', 'YODYOODEE', 'สุชาดา', 'ยอดอยู่ดี', '', '570610612', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610612.jpg'),
(58, 'SUTTIPAN', 'TAMLUEK', 'สุทธิพันธ์', 'แต้มลึก', '', '570610613', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610613.jpg'),
(59, 'SUPITCHA', 'CHAICHANBOONYASIRI', 'สุพิชญิ์ฌา', 'ชัยชาญบุญญะสิริ', '', '570610614', 'พฤษภ์ บุญมา', '', 'โครงการเรียนดี', '', 23, 'img/student3/570610614.jpg'),
(60, 'SURACHAT', 'SARUTILAWAN', 'สุรชาติ', 'ศรุติลาวัณย์', '', '570610615', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610615.jpg'),
(61, 'ANIRUT', 'YOTSEAN', 'อนิรุทธ์', 'ยศแสน', '', '570610616', 'พฤษภ์ บุญมา', '', 'แอดมิชชั่น', '', 23, 'img/student3/570610616.jpg'),
(62, 'APICHAT', 'KHADSEETALEE', 'อภิชาติ', 'ขัดสีทะลี', '', '570610617', 'พฤษภ์ บุญมา', '', 'โควตา', '', 23, 'img/student3/570610617.jpg'),
(63, 'APINUN', 'UPPANUN', 'อภินันท์', 'อุปนันท์', '', '570610618', 'พฤษภ์ บุญมา', '', 'โควตา', '', 23, 'img/student3/570610618.jpg'),
(64, 'ATTAPON', 'WONWIKITKAN', 'อรรถพล', 'วงษ์วิกิจการ', '', '570610619', 'พฤษภ์ บุญมา', '', 'โควตา', '', 23, 'img/student3/570610619.jpg'),
(65, 'ITSARA', 'TIMAROON', 'อิศรา', 'ทิมอรุณ', '', '570610621', 'พฤษภ์ บุญมา', '', 'โควตา', '', 23, 'img/student3/570610621.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student4`
--

CREATE TABLE `student4` (
  `id` int(11) NOT NULL,
  `name_ENG` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_ENG` varchar(19) CHARACTER SET utf8 NOT NULL,
  `name_TH` varchar(12) CHARACTER SET utf8 NOT NULL,
  `surname_TH` varchar(17) CHARACTER SET utf8 NOT NULL,
  `nick_name` varchar(8) CHARACTER SET utf8 NOT NULL,
  `student_ID` varchar(9) CHARACTER SET utf8 NOT NULL,
  `advisor` varchar(28) CHARACTER SET utf8 NOT NULL,
  `garduate` varchar(50) CHARACTER SET utf8 NOT NULL,
  `entrance` varchar(14) CHARACTER SET utf8 NOT NULL,
  `email` varchar(34) CHARACTER SET utf8 NOT NULL,
  `cpe_group` int(2) NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `student4`
--

INSERT INTO `student4` (`id`, `name_ENG`, `surname_ENG`, `name_TH`, `surname_TH`, `nick_name`, `student_ID`, `advisor`, `garduate`, `entrance`, `email`, `cpe_group`, `img`) VALUES
(1, 'PON', 'SUPAT', 'ณพล', 'สุพัฒน์', '', '560610126', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610126.jpg'),
(2, 'SARANYAPONG', 'TARAMA', 'ศรัณยพงศ์', 'ทะระมา', '', '560610175', 'ลัชนา ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610175.jpg'),
(3, 'KRITTIYA', 'SRISUK', 'กฤติยา', 'ศรีสุข', '', '560610521', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610521.jpg'),
(4, 'KITTICHET', 'OH', 'กิตติเชษฐ์', 'โอ', '', '560610522', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610522.jpg'),
(5, 'KEERATI', 'LAPPHANITPHUNPHON', 'กีรติ', 'ลาภพณิชพูลผล', '', '560610523', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610523.jpg'),
(6, 'KANAYOS', 'SATTARATPAIJIT', 'คณยศ', 'สัตตรัตน์ไพจิตร', '', '560610524', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610524.jpg'),
(7, 'JONGRIT', 'SAIMA', 'จงฤทธิ์', 'สายมา', '', '560610525', 'ลัชนา ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610525.jpg'),
(8, 'JARINEE', 'JITPAYUK', 'จาริณี', 'จิตพยัค', '', '560610526', 'ลัชนา ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610526.jpg'),
(9, 'JARUWAN', 'SREEJUN', 'จารุวรรณ', 'ศรีจันทร์', '', '560610527', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610527.jpg'),
(10, 'JEERADECH', 'SONKOSA', 'จีระเดช', 'สอนโกษา', '', '560610528', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610528.jpg'),
(11, 'CHANAKAN', 'CHAKHOM', 'ชณกันต์', 'ชาคม', '', '560610529', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610529.jpg'),
(12, 'CHAYANGGOON', 'CHARTWIANG', 'ชยางกูร', 'ชาติเวียง', '', '560610531', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610531.jpg'),
(13, 'CHAYANGKOON', 'DOKHOM', 'ชยางกูร', 'ดอกหอม', '', '560610532', 'ลัชนา ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610532.jpg'),
(14, 'CHINNAWAT', 'SIRIMA', 'ชินวัตร', 'ศิริมา', '', '560610533', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610533.jpg'),
(15, 'CHAOWAKRIT', 'WIMON', 'เชาวกฤษณ์', 'วิมล', '', '560610534', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610534.jpg'),
(16, 'NATAPON', 'TANGWACHIRACHAT', 'ณฐพล', 'ตั้งวชิรฉัตร', '', '560610535', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610535.jpg'),
(17, 'NAPONG', 'PLUBPRASONG', 'ณพงศ์', 'พลับประสงค์', '', '560610536', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610536.jpg'),
(18, 'NATTAPAT', 'PAKAGUL', 'ณภัทร', 'ภาคกุล', '', '560610537', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610537.jpg'),
(19, 'NARONGCHAI', 'KHAMCHUEN', 'ณรงค์ชัย', 'คำชื่น', '', '560610538', 'ลัชนา ระมิงค์วงศ์', '', 'โควตา', '', 22, 'img/student4/560610538.jpg'),
(20, 'NATTHAPHONG', 'KANGTHANYAKIG', 'ณัฐพงศ์', 'แข็งธัญญกิจ', '', '560610539', 'ลัชนา ระมิงค์วงศ์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610539.jpg'),
(21, 'NATTAPAT', 'KARAKET', 'ณัฐภัทร', 'การะเกษ', '', '560610540', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610540.jpg'),
(22, 'NICHA', 'KAEWVISAT', 'ณิชา', 'แก้ววิเศษ', '', '560610541', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610541.jpg'),
(23, 'TEEP', 'CHAIRIN', 'ทีปต์', 'ไชยรินทร์', '', '560610542', 'ลัชนา ระมิงค์วงศ์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610542.jpg'),
(24, 'NATHITHON', 'MUEANGWONG', 'นทีธร', 'เมืองวงค์', '', '560610543', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โควตา', '', 22, 'img/student4/560610543.jpg'),
(25, 'NONNADDA', 'SILAMAI', 'นนท์นัดดา', 'ศิลมัย', '', '560610544', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'เรียนดีกีฬา', '', 22, 'img/student4/560610544.jpg'),
(26, 'NARIN', 'JONGJETDEE', 'นรินทร์', 'จงเจตดี', '', '560610546', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610546.jpg'),
(27, 'NARUMON', 'KUNAMA', 'นฤมล', 'กุณามา', '', '560610547', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โควตา', '', 22, 'img/student4/560610547.jpg'),
(28, 'NUCHANARD', 'SYAMIPAK', 'นุชนาถ', 'สยามิภักดิ์', '', '560610549', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610549.jpg'),
(29, 'PATHOMPONG', 'PHAEWSART', 'ปฐมพงศ์', 'แผ้วสาสน์', '', '560610550', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'แอดมิชชั่น', 'imfannies@gmail.com', 22, 'img/student4/560610550.jpg'),
(30, 'PRAVEERAT', 'NITRATHORN', 'ประวีณ์รัชฏ์', 'นิตราธร', '', '560610551', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610551.jpg'),
(31, 'PAWEENA', 'TEJA', 'ปวีณา', 'เตจ๊ะ', '', '560610553', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610553.jpg'),
(32, 'PONGSIRI', 'TRIVITTAYASIL', 'พงศ์ศิริ', 'ไตรวิทยาศิลป์', '', '560610554', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โควตา', '', 22, 'img/student4/560610554.jpg'),
(33, 'PONGSATHORN', 'ROONBONG', 'พงศธร', 'รุนบงค์', '', '560610555', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โควตา', '', 22, 'img/student4/560610555.jpg'),
(34, 'PATCHARA', 'CHUKIATKAJOHN', 'พชร', 'ชูเกียรติขจร', '', '560610556', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610556.jpg'),
(35, 'PHANNACHET', 'BOONYAMANEE', 'พรรณเชษฐ์', 'บุณยมณี', '', '560610557', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610557.jpg'),
(36, 'PONLAWAT', 'WEERAPANPISIT', 'พลวัต', 'วีระพันธุ์พิสิษฐ์', '', '560610558', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โครงการพิเศษ', '', 22, 'img/student4/560610558.jpg'),
(37, 'PATCHARAPON', 'WANGTIYONG', 'พัชรพล', 'วังธิยอง', '', '560610559', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610559.jpg'),
(38, 'PHANTHAKAN', 'KHAWDEE', 'พันธกานต์', 'ขาวดี', '', '560610560', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โควตา', '', 22, 'img/student4/560610560.jpg'),
(39, 'PICHAYAPONG', 'TOONKAEW', 'พิชญพงค์', 'ตุ่นแก้ว', '', '560610561', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610561.jpg'),
(40, 'PICHAYA', 'NORRAPONG', 'พิชยา', 'นรพงษ์', '', '560610562', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610562.jpg'),
(41, 'PITTAYATHON', 'RINKAEWNGAM', 'พิทยาธร', 'รินแก้วงาม', '', '560610564', 'อานันท์ สีห์พิทักษ์เกียรติ', '', 'โควตา', '', 22, 'img/student4/560610564.jpg'),
(42, 'PIRAPON', 'POSUWAN', 'พีรพล', 'โพธิ์สุวรรณ', '', '560610566', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610566.jpg'),
(43, 'PUTTISAN', 'KOMOL', 'พุฒิสรรค์', 'โกมล', '', '560610567', 'โดม โพธิกานนท์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610567.jpg'),
(44, 'PANUWIT', 'PHOLKERD', 'ภาณุวิทย์', 'ผลเกิด', '', '560610569', 'โดม โพธิกานนท์', '', 'โครงการพิเศษ', '', 22, 'img/student4/560610569.jpg'),
(45, 'PHATHORN', 'THAMMASORN', 'ภาธร', 'ธรรมสอน', '', '560610570', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610570.jpg'),
(46, 'PHOOBETH', 'SIRIPRAPHONROJ', 'ภูเบศ', 'ศิริประพนธ์โรจน์', '', '560610571', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610571.jpg'),
(47, 'POOBET', 'JAIKLAM', 'ภูเบศวร์', 'ใจกล่ำ', '', '560610572', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610572.jpg'),
(48, 'MUDTANA', 'WORAPUN', 'มัทนา', 'วรพันธ์', '', '560610574', 'โดม โพธิกานนท์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610574.jpg'),
(49, 'WORAPONG', 'KOMPAIBOONKIT', 'วรพงศ์', 'คมไพบูลย์กิจ', '', '560610575', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610575.jpg'),
(50, 'VARANGKANA', 'ROUANSUPA', 'วรางคณา', 'เรือนสุภา', '', '560610576', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610576.jpg'),
(51, 'WASUPON', 'ANGSUPOKAI', 'วสุพล', 'อังศุโภไคย', '', '560610578', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610578.jpg'),
(52, 'WATCHARAWIT', 'KUMPANGTIP', 'วัชรวิทย์', 'กำแพงทิพย์', '', '560610580', 'โดม โพธิกานนท์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610580.jpg'),
(53, 'WITCHAPON', 'MONGKOLKIATTICHAI', 'วิชญ์พล', 'มงคลเกียรติชัย', '', '560610581', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610581.jpg'),
(54, 'WISSANU', 'JUMREONRUTTANAKORN', 'วิษณุ', 'จำเริญรัตนากร', '', '560610582', 'โดม โพธิกานนท์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610582.jpg'),
(55, 'SOLOT', 'NAKTHONG', 'โสฬส', 'นาคทอง', '', '560610584', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610584.jpg'),
(56, 'HATSANAI', 'DECHA', 'หัสนัย', 'เดชะ', '', '560610585', 'โดม โพธิกานนท์', '', 'โครงการเรียนดี', '', 22, 'img/student4/560610585.jpg'),
(57, 'ANISARA', 'KUMPETCH', 'อณิสรา', 'กุมเพ็ชร', '', '560610586', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610586.jpg'),
(58, 'ADIPORN', 'BINTHAISONG', 'อดิพร', 'บินไธสง', '', '560610587', 'โดม โพธิกานนท์', '', 'แอดมิชชั่น', '', 22, 'img/student4/560610587.jpg'),
(59, 'APARPORN', 'PANYADANG', 'อาปราพร', 'ปัญญาแดง', '', '560610588', 'โดม โพธิกานนท์', '', 'โควตา', '', 22, 'img/student4/560610588.jpg');

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
(1, 'Ph.D.,Asst. Prof.', '', '', 'Ph.D.,Asst. Prof.', 'Kenneth', 'Cosh', 'BBA Business Management, Lancaster University\r\nPhD. Computer Science, Lancaster University', 'Software Engineering, Requirements Engineering, Natural Language Processing, Information Systems in Tourism,', '', '', 'img/teacher/Kenneth.jpg'),
(2, 'Ph.D.,Asst. Prof.', 'Karn', 'Patanukhom', 'ผศ.ดร.', 'กานต์', 'ปทานุคม', 'B.Eng. (Electrical Engineering) , Chiang Mai University, Chiang Mai, Thailand, 2003<br>\r\nM.Eng. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2006<br>\r\nPh.D. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2009', 'Image Processing\r\nDigital Signal Processing', 'karn@eng.cmu.ac.th', '053-942072', 'img/teacher/Karn.jpg'),
(3, 'Ph.D.,Asst. Prof. ', 'Juggapong', 'Natwichai', 'ผศ.ดร.', 'จักรพงศ์', 'นาทวิชัย', 'The University of Queensland, Queensland, Australia', 'Database systems\r\nData Mining\r\nInformation \r\nSystems', 'juggapong@chiangnai.ac.th', '053 942024', 'img/teacher/Juggapong.jpg'),
(4, 'Ph.D., Assoc.Prof.', 'Trasapong', 'Thaiupathump', 'รศ.ดร.', 'ตรัสพงศ์', 'ไทยอุปถัมภ์', 'B.Eng. (Computer Engineering with Honors)King Mongkut\'s Institute of Technology, Ladkrabang, Bangkok, Thailand, 1993<br>\r\nM.S. (Computer Engineering) University of Southern California, California, USA, 1996<br>\r\nPh.D. (Data Communications), University of Pennsylvania, Pennsylvania, USA, 2002', 'Digital Signal Processing\r\nData Communications\r\n', 'trasapong@eng.cmu.ac.th', '053-942023', 'img/teacher/Trasapong.jpg'),
(5, 'Ph.D.,Asst. Prof.', 'Narathip', 'Tiangtae', 'ผศ.ดร.', 'นราธิป', 'เที่ยงแท้', 'B.Eng. (Information Engineering) Tohoku University, Sendai, Japan, 1995<br>\r\nM.Eng. (Information Engineering) Nagoya University, Nagoya, Japan, 1997<br>\r\nD.Eng. (Information Engineering) Nagoya University, Nagoya, Japan, 2001', 'Computer Graphics\r\nNumerical Simulation\r\nHigh Performance Computing', '-', '053-942078 ต่อ 2078', 'img/teacher/Narathip.jpg'),
(6, 'Ph.D.,Asst. Prof.', 'Narissara', 'Eiamkanitchat', 'ผศ.ดร.', 'นริศรา', 'เอี่ยมคณิตชาติ', 'B.Eng.(Computer Engineering) Chiang Mai University, Chiang Mai, Thailand, 1997<br>\r\nM.Eng.(Electrical Engineering) Chiang Mai University, Chiang Mai, Thailand<br>\r\nPh.D.(Electrical Engineering),Chiang Mai University, 2010​', 'Data Mining\r\nNeuro-fuzzy system\r\nBusiness Intelligence', '', '053 942076 ต่อ 203', 'img/teacher/Narissara.jpg'),
(7, 'Ph.D.', 'Navadon', 'Khunlertgit', 'อ.ดร.', 'นวดนย์', 'คุณเลิศกิจ', 'Ph.D. (Electrical Engineering), Texas A&M University, College Station, TX, USA, 2016<br>\r\nM.Eng. (Computer Engineering), Chiang Mai University, Chiang Mai, Thailand, 2009<br>\r\nB.Eng. (Computer Engineering), Chiang Mai University, Chiang Mai, Thailand, 2006', 'Computational Biology\r\nGenomic Signal Processing (GSP)\r\nEarth Science Modeling Education', '', '', 'img/teacher/Navadon.jpg'),
(8, 'Ph.D.', 'Patiwet', 'Wuttisarnwattana', 'อ.ดร.', 'ปฏิเวธ', 'วุฒิสารวัฒนา', 'Doctor of Philosophy (Biomedical Engineering), Case Western Reserve University, Ohio, USA<br>\r\nMaster of Science (Biomedical Engineering), Case Western Reserve University, Ohio, USA <br>\r\nBachelor of Engineering (Computer Engineering) with first class honors, Chiang Mai University, Chiang Mai, Thailand', 'Medical Imaging\r\nBiomedical Image Processing and Analysis\r\nBiomedical Engineering\r\nStem Cell Therapy, Immunology, and Histopathology', 'patiwet @ eng.cmu.ac.th', '053 942 023', 'img/teacher/Patiwet.jpg'),
(9, 'Ph.D.', 'Pruet', 'Boonma', 'อ.ดร.', 'พฤษภ์', 'บุญมา', 'Ph.D. (Computer Science), University of Massachusetts Boston, MA, USA, 2009<br>\r\nM.IT. (Computer Science and Software Engineering) Monash University, Victoria, Australia, 2003<br>\r\nB.Eng. (Computer Engineering) , Chiang Mai University, Chiang Mai, Thailand, 1997', 'ระบบประมวลผลแบบกระจาย และ แบบขนาน\r\nการออกแบบ ติดตั้ง และจัดการระบบเครือข่าย\r\nระบบสารสนเทศหลายสื่อ\r\nการพัฒนาซอฟท์แวร์โอเพนซอร์ส และ ระบบภาษาไทย', 'pruet@eng.cmu.ac.th', '053 942073 ต่อ 110', 'img/teacher/Pruet.jpg'),
(10, 'Ph.D.', 'Paskorn', 'Champrasert', 'อ.ดร.', 'ภาสกร', 'แช่มประเสริฐ', 'Ph.D. Computer Science, University of Massachusetts Boston<br>\r\nMS. Industrial and Organization Psychology, Chiang Mai University <br>\r\nB.Eng Computer, Chaing Mai University ', 'Heuristics Algorithms\r\nBio-Inspired Computing ', 'paskorn@eng.cmu.ac.th', '053 942076 ต่อ 107', 'img/teacher/Paskorn.jpg'),
(11, 'Ph.D.,Asst. Prof.', 'Yuthapong', 'Somchit', 'ผศ.ดร.', 'ยุทธพงษ์', 'สมจิต', 'B.Eng. (Electrical Engineering) , Chiang Mai University, Chiang Mai, Thailand, 1999<br>\r\nM.Eng. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2003<br>\r\nPh.D. (Communication and Integrated Systems) Tokyo Institute of Technology, Tokyo, Japan, 2006\r\n', 'Computer Networks\r\nCloud Computing\r\nCisco IOS/ Cisco IOS-XR', '', '053 942024 ต่อ 218', 'img/teacher/Yuthapong.jpg'),
(12, 'Ph.D.,Asst. Prof. ', 'Lachana', 'Ramingwong', 'ผศ.ดร.', 'ลัชนา', 'ระมิงค์วงศ์', 'Ph.D. in Software Process Management (Computer Science), University of\r\nNew England, Australia', 'Software Engineering, Software Process Management, Requirements\r\nEngineering, Usability Engineering, Human-Computer Interaction.', 'lachana@eng.cmu.ac.th', '053 942024 ต่อ 210', 'img/teacher/Lachana.jpg'),
(13, 'Ph.D.', 'Sakgasit', 'Ramingwong', 'รศ.ดร.', 'ศักดิ์กษิต', 'ระมิงค์วงศ์​', '(Ph.D.) School of Science and Technology, University of New England, Australia\r\n(M.Sc. in Information Technology for Manufacture)<br>\r\n Warwick Manufacturing Group, University of Warwick, United Kingdom<br>\r\n(B.Eng. in Computer Engineering) Faculty of Engineering, Chiang Mai University, Thailand', 'Software project management\r\nSoftware risk management\r\nSoftware process improvement\r\nGlobal system development\r\nGame-based learning\r\nQuality management', 'sakgasit@eng.cmu.ac.th', '053 942073 ต่อ 209', 'img/teacher/Sakgasit.jpg'),
(14, 'Ph.D., Assoc. Prof.', 'Sansanee', 'Auephanwiriyakul', 'รศ.ดร.', 'ศันสนีย์', 'เอื้อพันธ์วิริยะกุล', 'B.Eng (Electrical Engineering) Chiang Mai University, Chiang Mai, Thailand, 1993<br>\r\nM.S. (Electrical and Computer Engineering) University of Missouri-Columbia, Missouri, USA, 1996<br>\r\nPh.D. (Computer Engineering and Computer Science) University of Missouri-Columbia, Missouri, USA, 2000', 'Computer Vision\r\nNeural Networks\r\nPattern Recognition\r\nFuzzy Set Theory', 'sansanee@eng.cmu.ac.th', '053 942076 ต่อ 204', 'img/teacher/Sansanee.jpg'),
(15, 'Ph.D., Assoc.Prof.', 'Sanpawat', 'Kantabutra', 'รศ.ดร.', 'สรรพวรรธน์', 'กันตะบุตร', 'Ph.D. in Theoretical Computer Science, Tufts University, USA', 'Complexity Theory, Design and Analysis of Algorithms, Graph Theory', 'sanpawat@alumni.tufts.edu', '053-942023', 'img/teacher/Sanpawat.jpg'),
(16, 'Ph.D.,Asst. Prof.', 'Santi', 'Phithakkitnukoon', 'ผศ.ดร.', 'สันติ', 'พิทักษ์กิจนุกูร', 'Ph.D. Computer Science and Engineering, University of North Texas, Texas, USA, 2009<br>\r\nMS Electrical Engineering, Southern Methodist University, Texas, USA, 2005<br>\r\nBS Electrical Engineering (hons), Southern Methodist University, Texas, USA, 2003', 'Urban computing\r\nSocial computing\r\nMobile sensing', 'santi@eng.cmu.ac.th', '053 942 023 ต่อ 210', 'img/teacher/Santi.jpg'),
(17, 'Ph.D.,Asst. Prof.', 'Anya', 'Apavatjrut', 'ผศ.ดร.', 'อัญญา', 'อาภาวัชรุตม์', 'Ph.D. (Telecommunications), Institut National des Sciences Appliquées de Lyon, France, 2011<br>\r\nM.Res. (Instrument systems, signals and images), Institut National des Sciences Appliquées de Lyon, France, 2007<br>\r\nM.Eng.[+B.Eng.] (Telecommunications engineering), Institut National des Sciences Appliquées de Lyon, France, 2007', 'Wireless Communications\r\nWireless Sensor Networks\r\nChannel Codings\r\nCooperative Communications', 'anya@eng.cmu.ac.th', '053 942024 ต่อ 205', 'img/teacher/Anya.jpg'),
(18, 'Ph.D.', 'Arnan', 'Sipitakiat', 'อ.ดร.', 'อานันท์', 'สีห์พิทักษ์เกียรติ', 'Ph.D., Massachusetts Institute of Technology, USA.(2008)', 'Microprocesser', 'arnans@gmail.com', '053 942024 ต่อ 105', 'img/teacher/Arnan.jpg'),
(19, 'Ph.D.', 'Dome', 'Potikanond', 'อ.', 'โดม', 'โพธิกานนท์', '', '', '', '053 942073 ต่อ 102', 'img/teacher/Dome.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student1`
--
ALTER TABLE `student1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student2`
--
ALTER TABLE `student2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student3`
--
ALTER TABLE `student3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student4`
--
ALTER TABLE `student4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `UserID` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student1`
--
ALTER TABLE `student1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `student3`
--
ALTER TABLE `student3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `student4`
--
ALTER TABLE `student4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
