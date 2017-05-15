-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2017 at 10:41 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

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
(1, 'NOKWAN', 'PINTHONG', 'กนกวรรณ', 'พินทอง', 'นก', '580610615', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'omagiclifeo252@gmail.com', 24, ''),
(2, 'KAWEWUT', 'CHUJIT', 'กวีวุฒิ', 'ชูจิตร', 'จ๊าบ', '580610616', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการพิเศษ', 'kawewut.chu@gmail.com', 24, ''),
(3, 'KITTITORN', 'RAKPANYAKAEO', 'กิตติธร', 'รักปัญญาแก้ว', 'เจเจ ', '580610617', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'koonjj@gmail.com', 24, ''),
(4, 'KITTITAT ', 'BOONKARN', 'กิตติธัช', 'บุญกาญจน์', 'เวฟ', '580610618', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'wave_tome@hotmail.com', 24, ''),
(5, 'KITTIPHON', 'KANJINA', 'กิตติพล', 'กันจินะ', 'โด่ง', '580610619', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'dd-dong@hotmail.com', 24, ''),
(6, 'KAIWIT', 'MANEEWONG', 'ไกรวิชญ์', 'มณีวงค์', 'วิช', '580610620', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'Kraiwich2015@gmail.com', 24, ''),
(7, 'KANIN ', 'SUKAROTE', 'คณิน', 'สุขโรจน์', 'คิน', '580610622', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'kinlllzab@gmail.com', 24, ''),
(8, 'NGAMSIRI', 'BUAMAN', 'งามสิริ', 'บัวมั่น', 'เฟม', '580610624', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการเรียนดี', 'Fame0833@gmail.com', 24, ''),
(9, 'JANTAKARN', 'SIVILIZE', 'จันทกานติ์', 'ศิวิลัยซ์', 'ขิม', '580610625', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'annani12@hotmail.com', 24, ''),
(10, 'JARUPRON ', 'SUPIYAPANICH', 'จารุพร', 'สุปิยะพาณิชย์', 'หมู', '580610626', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'Jarupron_21@hotmail.com', 24, ''),
(11, 'JIRAYUS ', 'SIRICHANTARAPONG', 'จิรายุส', 'ศิริจันทรพงค์', 'บีม', '580610627', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'beam555@hotmail.com', 24, ''),
(12, 'CHETSADA ', 'CHAIPRASOB', 'เจษฎา', 'ชัยประสพ', 'โอ้ต', '580610629', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการเรียนดี', 'ood9842@hotmail.com', 24, ''),
(13, 'CHALITPHOL', 'KUENSUWAN', 'ชลิตพล', 'เขื่อนสุวรรณ', 'ขนุน', '580610630', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'chalitphol@gmail.com', 24, ''),
(14, 'CHAWASIT ', 'TENGTRAIRATANA', 'ชวศิษฐ์', 'เต็งไตรรัตน์', 'อิก', '580610631', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โครงการพิเศษ', 't.turtle_no.1@hotmail.com', 24, ''),
(15, 'NATCHAPON ', 'PETAITIEMTHONG', 'ณัชพล', 'เพทายเทียมทอง', 'อาร์ค', '580610633', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'แอดมิชชั่น', 'ark.natchapon@gmail.com', 24, ''),
(16, 'NUTTINEE ', 'DUANGHONG', 'ณัฎฐินี', 'ดวงโฮ้ง', 'อูม', '580610634', 'ตรัสพงศ์ ไทยอุปถัมภ์', '', 'โควตา', 'D.nuttinee@hotmail.com', 24, ''),
(17, 'NATTAKIT ', 'TRIMAT', 'ณัฐกิตติ์', 'ไตรเมศ', 'นาย', '580610636', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'nattakit_trimat@gmail.com', 24, ''),
(18, 'NATNICHA ', 'SOMSAK', 'ณัฐณิชา', 'สมศักดิ์', 'บีม', '580610639', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'bns-04@hotmail.com', 24, ''),
(19, 'NATTHAPHON ', 'KHAMFONG', 'ณัฐพล', 'คำฟอง', 'ทิว', '580610640', 'ยุทธพงษ์ สมจิต', '', 'โครงการเรียนดี', 'tam3393@hotmail.co.th', 24, ''),
(20, 'NATTAWUT ', 'KHAMCHAI', 'ณัฐวุฒิ', 'คำไชย', 'อ๊อฟ', '580610641', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'aofoon0824@outlook.com', 24, ''),
(21, 'DARUNPHOP', 'PENGKUMTA', 'ดรันภพ', 'เป็งคำตา', 'โอปอ', '580610642', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'cute_cloudian@hotmail.com', 24, ''),
(22, 'THATCHAYUT', 'UNJITWATTANA', 'ทัตชยุตม์', 'อุ่นจิตต์วรรธนะ', 'โตเต', '580610643', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'thatchayut.tay@gmail.com', 24, ''),
(23, 'THANAPHOM', 'DHUMMAWONG', 'ธนภูมิ', 'ธรรมวงศ์', 'แปม', '580610644', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'pam-duma@hotmail.com', 24, ''),
(24, 'TANAWAT', 'KLOMKLOM', 'ธนวัฒน์', 'กลมกลอม', 'เฟิร์ส', '580610645', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'nuneymar@gmail.com', 24, ''),
(25, 'TANIN', 'WANWILRAN', 'ธนิน', 'วรรณวิไลรัตน์', 'บูม', '580610646', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'apboomao@outlook.com', 24, ''),
(26, 'THERATAT', 'SOMPRASERT', 'ธีรทัศน์', 'สมประเสริฐ', 'นนท์', '580610647', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'de-tell@hotmail.com', 24, ''),
(27, 'THEERAPAT', 'SATTHAJARUPONG', 'ธีราพัฒน์', 'ศรัทธาจารุพงศ์', 'ออม', '580610648', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'makoto.diva@gmail.com', 24, ''),
(28, 'NALUEDOM', 'MOORAWONG', 'นฤดม', 'มูระวงษ์', 'เกส', '580610649', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'naluedomgest@gmail.com', 24, ''),
(29, 'NARUMON', 'SETDUSIT', 'นฤมล', 'เศรษฐ์ดุสิต', 'หยก', '580610650', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'mssetdusit@hotmail.co.th', 24, ''),
(30, 'NIRAMOL', 'WATCHARAPRINGAM', 'นิรมล', 'วัชรไพรงาม', 'เมย์', '580610652', 'ยุทธพงษ์ สมจิต', '', 'โควตา', 'mayni_cb@hotmail.com', 24, ''),
(31, 'PING-ARRAK', 'WANNAWONG', 'ปิงอารักข์', 'วรรณวงศ์', 'ปิง', '580610655', 'ยุทธพงษ์ สมจิต', '', 'แอดมิชชั่น', 'ping31345@gmail.com', 24, ''),
(32, 'PHONGSATHON', 'PHASSAWAT', 'พงศธร', 'ภาสวัต', 'เนตร', '580610656', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'phongsathorn90@gmail.com', 24, ''),
(33, 'PANATCHAKORN', 'THANYALAKSANAKUL', 'พนัชกร', 'ธัญลักษณากุล', 'บีม', '580610658', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'kaoklong_beam@hotmail.com', 24, ''),
(34, 'PROMYOT', 'KATARAT', 'พร้อมยศ', 'กตารัตน์', 'เนม', '580610659', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'pro21808@gmail.com', 24, ''),
(35, 'POTSAWAT', 'CHUENPET', 'พศวัฒน์', 'ชื่นเพ็ชร', 'เนตร', '580610660', 'นริศรา เอี่ยมคณิตชาติ', '', 'โครงการพิเศษ', 'potsawat_3232@hotmail.com', 24, ''),
(36, 'PIMUKTHEE', 'JAIKLA', 'พิมุกต์ธีร์', 'ใจกล้า', 'เเว๊บ', '580610662', 'นริศรา เอี่ยมคณิตชาติ', '', 'โครงการพิเศษ', 'pimukthee@gmail.com', 24, ''),
(37, 'PHAKIN', 'CHUKIATKAJOHN', 'ภคิน', 'ชูเกียรติขจร', 'เจิ้น', '580610664', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'pakin_lovedog@hotmail.com', 24, ''),
(38, 'PATDANAI', 'DUANGWAROPAS', 'ภัทร์ดนัย', 'ดวงวโรภาส', 'บอส', '580610665', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'sssbossja@hotmail.com', 24, ''),
(39, 'PANUWIT', 'MOTANA', 'ภาณุวิชญ์', 'โมทนา', 'บีม', '580610666', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'beampanuwit@hotmail.com', 24, ''),
(40, 'PHUMIPHAT', 'CHIRAPIRIYAKUL', 'ภูมิพัฒน์', 'จิรพิริยะกุล', 'ต้า', '580610667', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'guitar11161@gmail.com', 24, ''),
(41, 'POOMMIPAT', 'SETTHAKORN', 'ภูมิพัฒน์', 'เศรษฐกร', 'ภูมิ', '580610668', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'poom17345@gmail.com', 24, ''),
(42, 'ROYBURA', 'BURARAK', 'รอยบุรา', 'บุรารักษ์', 'รอย', '580610670', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'aroiiwpairt5@msn.com', 24, ''),
(43, 'RATCHAPONG', 'THONGSUK', 'รัชพงศ์', 'ทองสุข', 'เอ', '580610671', 'นริศรา เอี่ยมคณิตชาติ', '', 'โครงการเรียนดี', 'Ratchapongr@hotmail.com', 24, ''),
(44, 'LALITA', 'BANDASAK', 'ลลิตา', 'บรรดาศักดิ์', 'รส', '580610672', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'ros003@hotmail.com', 24, ''),
(45, 'WACHIRAWIT', 'KANPANLUK', 'วชิรวิทย์', 'กาฬพรรณลึก', 'วินเนอร์', '580610673', 'นริศรา เอี่ยมคณิตชาติ', '', 'แอดมิชชั่น', 'jokopoppo@gmail.com', 24, ''),
(46, 'VORASON', 'SIRIPANKUL', 'วรศร', 'ศิริพานกุล', 'ไนท์', '580610674', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'nice.dark@hotmail.com', 24, ''),
(47, 'WARAKORN', 'MEAKPATTANAPINYO', 'วรากร', 'เมฆพัฒนาภิญโญ', 'แชมป์', '580610675', 'นริศรา เอี่ยมคณิตชาติ', '', 'โควตา', 'warakornchamp@gmail.com', 24, ''),
(48, 'WATCHARA', 'PHORUNG', 'วัชระ', 'โพธิ์รุ้ง', 'กล้วย', '580610676', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการเรียนดี', 'ifreez.url@gmail.com', 24, ''),
(49, 'WIPHOB', 'KAOIAN', 'วิภพ', 'เก้าเอี้ยน', 'ได', '580610677', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'freedom_life1996@hotmail.com', 24, ''),
(50, 'WIMONWAN', 'SRIJANPROM', 'วิมลวรรณ', 'ศรีจันทร์พรม', 'วิวิ', '580610678', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'Kingdom-bow@hotmail.com', 24, ''),
(51, 'SATRARIN', 'SAEJEW', 'ศาสน์ตริน', 'แซ่จิว', 'โก้', '580610679', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'negi.flypang@gmail.com', 24, ''),
(52, 'SUPAKARN', 'CHAIDAROON', 'ศุภการ', 'ชัยดรุณ', 'คอม', '580610680', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'supakarn39@hotmail.com', 24, ''),
(53, 'SATETHAPAN', 'NAOWASATE', 'เศรษฐพันธ์', 'เนาวเศรษฐ์', 'เล็ก', '580610681', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการพิเศษ', 'sattapan.l@hotmail.com', 24, ''),
(54, 'SUTTAWEE', 'LUKUAN', 'สุทธวีร์', 'ลู่ควร', 'รอส', '580610683', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'kogureaw@yahoo.com', 24, ''),
(55, 'SUPITCHA', 'SAWASDIWARAPA', 'สุพิชฌาย์', 'สวัสดิวราภา', 'สมาย', '580610684', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการเรียนดี', 'kogolo_netar@hotmail.com', 24, ''),
(56, 'SUPITCH', 'ANGCHANPEN', 'สุพิชย์', 'อังจันทร์เพ็ญ', 'อาร์ท', '580610685', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'sudukutoto@hotmail.com', 24, ''),
(57, 'SATHIANPORN', 'KHAMDEE', 'เสถียรพร', 'คำดี', 'โดโด้', '580610686', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'satiando5826@gmail.com', 24, ''),
(58, 'ORAYA', 'SRIDOWRUANG', 'อรยา', 'ศรีดาวเรือง', 'เจน', '580610687', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'ritzjane@gmail.com', 24, ''),
(59, 'AKKHAPORN', 'THUEANROT', 'อรรฆพร', 'เถื่อนรอด', 'บอล', '580610688', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'akkhaporn@gmail.com', 24, ''),
(60, 'AUNNOP', 'KATTIYANET', 'อรรณพ', 'ขัติยเนตร', 'อัน', '580610689', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'aunnop_kattiyanet@hotmail.com', 24, ''),
(61, 'UTTAKRAN', 'RENUMAN', 'อรรถกรานต์', 'เรณุมาร', 'อัฒฑ์', '580610690', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'qowieury_kidmaioak@hotmail.com', 24, ''),
(62, 'ARINCHAI', 'NANJARUWONG', 'อริญชัย', 'นันต์จารุวงศ์', 'โจ๋', '580610692', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'timecrisis1995@live.com', 24, ''),
(63, 'AKKARAPORN', 'LERTPIPUTSAKUL', 'อัครพร', 'เลิศพิพัฒน์สกุล', 'อาร์ท', '580610693', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โควตา', 'ahar0007@hotmail.co.th', 24, ''),
(64, 'ISSARAPONG', 'BOONSONG', 'อิสระพงษ์', 'บุญส่ง', 'ตูมตาม', '580610694', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'แอดมิชชั่น', 'tumtamlove01@gmail.com', 24, ''),
(65, 'EAKKAPHOP', 'WONGSORN', 'เอกภพ', 'วงค์สอน', 'โอ', '580610695', 'ปฏิเวธ วุฒิสารวัฒนา', '', 'โครงการพิเศษ', 'overeakkapop@gmail.com', 24, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student2`
--
ALTER TABLE `student2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
