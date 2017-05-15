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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
