-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 07:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_iote_teacher`
--

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(4) NOT NULL,
  `title_thai` varchar(20) NOT NULL,
  `name_thai` varchar(100) NOT NULL,
  `surname_thai` varchar(100) NOT NULL,
  `title_eng` varchar(20) NOT NULL,
  `name_eng` varchar(100) NOT NULL,
  `surname_eng` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Education` text NOT NULL,
  `Expertise` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `title_thai`, `name_thai`, `surname_thai`, `title_eng`, `name_eng`, `surname_eng`, `Position`, `Education`, `Expertise`, `email`, `Department`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', ''),
(2, 'ผศ.ดร.', 'พิกุลแก้ว', 'ตังติสานนท์', 'Asst.Prof.Dr.', 'Pikulkaew', 'Tangtisanon', 'หัวหน้าภาควิชา', 'วศ.บ. (วิศวกรรมสารสนเทศ) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมสารสนเทศ) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nD.Eng. (Science and Technology) Tokai University, JAPAN', 'Web Application\r\nMobile Application\r\nInformation Security', 'pikulkaew.ta@kmitl.ac.th', 'IoT and Information Engineering'),
(6, 'รศ.ดร.', 'บุณย์ชนะ', 'ภู่ระหงษ์', 'Assoc.Prof.Dr.', 'Boonchana', 'Purahong', 'ประธานหลักสูตรวิศวกรรมระบบไอโอทีและสารสนเทศ', 'อส.บ. (เทคโนโลยีอิเล็กทรอนิกส์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมสารสนเทศ) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Microprocessor Application\r\nMicrocontroller\r\nRobotic\r\nInternet of Things and Smart System', 'boonchana.pu@kmitl.ac.th', 'IoT and Information Engineering'),
(7, 'ศ.ดร.', 'อภิรัฐ', 'ศิริธราธิวัตร', 'Prof. Dr.', 'Apirat', 'Siritaratiwat', 'รองหัวหน้าภาควิชา (ฝ่ายวิจัยและนวัตกรรม)', '-', '-', 'apirat.si@kmitl.ac.th', 'IoT and Information Engineering'),
(8, 'ผศ.ดร.', 'วันวิสา', 'ชัชวงษ์', 'Asst.Prof.Dr.', 'Vanvisa', 'Chutchavong', 'รองหัวหน้าภาควิชา (ฝ่ายการเงิน)', 'อส.บ. เกียรตินิยมอันดับ 2 (เทคโนโลยีอิเล็กทรอนิกส์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมสารสนเทศ) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ด. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Electronic\r\nBernstein Filter\r\nRailway Signaling and Operation\r\nPattern recognition\r\nRailway Communications', 'vanvisa.ch@kmitl.ac.th', 'IoT and Information Engineering'),
(9, 'ผศ.ดร.', 'นัชนัยน์', 'รุ่งเหมือนฟ้า', 'Asst.Prof.Dr.', 'Natchanai', 'Roongmuanpha', 'รองหัวหน้าภาควิชา (ฝ่ายต่างประเทศและกิจกรรมคณะ)', 'B.Eng.(Electronics Engineering) King Mongkuts Institute of Technology Ladkrabang\r\nM.Eng.(Control Engineering) King Mongkuts Institute of Technology Ladkrabang\r\nD.Eng.(Electrical Engineering) King Mongkuts Institute of Technology Ladkrabang', 'immittance function simulators\r\nactive analog filters\r\noscillator design\r\nchaotic circuit realization', 'natchanai.ro@kmitl.ac.th', 'IoT and Information Engineering'),
(10, 'ผศ.ดร.', 'เกล็ดดาว', 'สัตย์เจริญ', 'Asst.Prof.Dr.', 'Kleddao', 'Satcharoen', 'อาจารย์ประจำภาควิชา  (ผู้ช่วยฝ่ายต่างประเทศและกิจกรรมคณะ)', 'Doctoral of Philosophy in Computer Science, University of Buckingham, UK\r\nMaster of Science in Computing (MERIT), University of Buckingham, UK\r\nMaster of Art (Political Science), THAILAND\r\nBachelor of Science in Management Technology, KMITL, THAILAND', 'Human computer interaction\r\nUser Interfaces', 'kleddao.sa@kmitl.ac.th', 'IoT and Information Engineering'),
(11, 'ผศ.', 'นิจจารีย์', 'สัตยารักษ์', 'Asst.Prof.', 'Nitjaree', 'Satayarak', 'รองหัวหน้าภาควิชา (ฝ่ายกิจการนักศึกษา)', 'วศ.บ. (วิศวกรรมคอมพิวเตอร์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Software Engineering\r\nDistributed Testing System', 'nitjaree.sa@kmitl.ac.th', 'IoT and Information Engineering'),
(12, 'ผศ.ดร.', 'ธนวิชญ์', 'อนุวงศ์พินิจ', 'Asst.Prof.Dr.', 'Thanavit', 'Anuwongpinit', 'รองหัวหน้าภาควิชา (ฝ่ายวิชาการ)', 'B.Eng.(Information Engineering) King Mongkuts Institute of Technology Ladkrabang\r\nM.Eng.(Information Engineering) King Mongkuts Institute of Technology Ladkrabang\r\nD.Eng.(Electrical Engineering) King Mongkuts Institute of Technology Ladkrabang', 'Microprocessor Application\r\nInternet of Things\r\nEmbedded Systems\r\nIntegrated System\r\nRailway Signaling, Communication and Operation', 'thanavit.an@kmitl.ac.th', 'IoT and Information Engineering'),
(13, 'ดร.', 'สุวิไล', 'พุ่มโพธิ์', 'Dr.', 'Suwilai', 'Phumpho', 'รองหัวหน้าภาควิชา (ฝ่ายกิจการภายนอก)', '-', '-', 'suwilai.ph@kmitl.ac.th', 'IoT and Information Engineering'),
(14, 'ผศ.ดร.', 'อรรถพล', 'ป้อมสถิตย์', 'Asst.Prof.Dr.', 'Auttapon', 'Pomsathit', 'อาจารย์ประจำภาควิชา (ผู้ช่วยฝ่ายกิจการภายนอก)', 'B.Eng.(Electronics Engineering) King Mongkuts Institute of Technology Ladkrabang\r\nM.Eng.(Information Engineering) King Mongkuts Institute of Technology Ladkrabang\r\nD.Eng.(Electrical Engineering) King Mongkuts Institute of Technology Ladkrabang', 'Cyber Security\r\nInternetworkind Design\r\nInformation Security', 'auttapon.po@kmitl.ac.th', 'IoT and Information Engineering'),
(15, 'ผศ.ดร.', 'พนารัตน์', 'เชิญถนอมวงศ์', 'Asst.Prof.Dr.', 'Panarat', 'Cherntanomwong', 'อาจารย์ประจำภาควิชา (ผู้ช่วยฝ่ายกิจการภายนอก)', '-', '-', 'panarat.ch@kmitl.ac.th', 'IoT and Information Engineering'),
(16, 'ผศ.', 'สรพงษ์', 'วชิรรัตนพรกุล', 'Asst.Prof.', 'Sorapong', 'Wachirarattanapornkul', 'อาจารย์ประจำภาควิชา (ผู้ช่วยฝ่ายกิจการนักศึกษา)', 'อส.บ.(เทคโนโลยีอิเล็กทรอนิกส์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Analog and Digital Filter\r\nEmbedded System\r\nRFID and Application\r\nPattern recognition\r\nInformation for Energy', 'sorapong.wa@kmitl.ac.th', 'IoT and Information Engineering'),
(17, 'ผศ.', 'ไพศาล', 'สิทธิโยภาสกุล', 'Asst.Prof.', 'Paisan', 'Sithiyopasakul', 'อาจารย์พิเศษ', 'อส.บ. (เทคโนโลยีคอมพิวเตอร์อุตสาหกรรม) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'Wireless Communication\r\nMicroprocessor Applications\r\nDigital Filter', 'paisan-si@kmitl.ac.th', 'IoT and Information Engineering'),
(18, 'รศ.ดร.', 'อรรถสิทธิ์', 'หล่าสกุล', 'Assoc.Prof.Dr.', 'Attasit', 'Lasakul', 'อาจารย์พิเศษ', 'อส.บ. (เทคโนโลยีอิเล็กทรอนิกส์) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nวศ.ม. (วิศวกรรมไฟฟ้า) สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง\r\nD.Eng. (Electrical Engineering) Tokai University, JAPAN', 'Digital Processing\r\nImage Watermarking\r\nEmbedded Systems\r\nImage Processing\r\nMachine Vision', 'attasit.la@kmitl.ac.th', 'IoT and Information Engineering'),
(19, 'ศ.ดร.', 'ปิติเขต', 'สู้รักษา', 'Prof.Dr.', 'Pitikhate', 'Sooraksa', 'อาจารย์', 'กศ.บ. เกียรตินิยม (ฟิสิกส์) มหาวิทยาลัยศรีนครินทรวิโรฒ ปทุมวัน\r\nวท.ม. (ฟิสิกส์) มหาวิทยาลัยศรีนครินทรวิโรฒ ประสานมิตร\r\nM.S. (Electrical Engineering) George Washington University, USA\r\nPh.D. (Electrical Engineering) University of Houston, USA', 'IT Automation\r\nIndustrial Informatics', 'pitikhate.so@kmitl.ac.th', 'IoT and Information Engineering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
