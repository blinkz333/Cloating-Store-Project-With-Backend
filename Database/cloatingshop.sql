-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 12:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloatingshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Car_ID` int(11) NOT NULL,
  `Mem_ID` int(11) NOT NULL,
  `Pro_ID` int(11) NOT NULL,
  `Car_Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `count_page`
--

CREATE TABLE `count_page` (
  `Cou_ID` int(11) NOT NULL,
  `Cou_IP` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Cou_Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count_page`
--

INSERT INTO `count_page` (`Cou_ID`, `Cou_IP`, `Cou_Date`) VALUES
(1, '::1', '2018-09-09'),
(2, '::1', '2018-09-09'),
(3, '::1', '2018-09-09'),
(4, '::1', '2018-09-09'),
(5, '::1', '2018-09-09'),
(6, '::1', '2018-09-09'),
(7, '::1', '2020-02-11'),
(8, '::1', '2020-02-11'),
(9, '::1', '2020-02-11'),
(10, '::1', '2020-02-11'),
(11, '::1', '2020-02-11'),
(12, '::1', '2020-02-11'),
(13, '::1', '2020-02-11'),
(14, '::1', '2020-02-11'),
(15, '::1', '2020-02-11'),
(16, '::1', '2020-02-11'),
(17, '::1', '2020-02-11'),
(18, '::1', '2020-02-11'),
(19, '::1', '2020-02-11'),
(20, '::1', '2020-02-11'),
(21, '::1', '2020-02-11'),
(22, '::1', '2020-02-11'),
(23, '::1', '2020-02-11'),
(24, '::1', '2020-02-11'),
(25, '::1', '2020-02-11'),
(26, '::1', '2020-02-11'),
(27, '::1', '2020-02-11'),
(28, '::1', '2020-02-11'),
(29, '::1', '2020-02-11'),
(30, '::1', '2020-02-11'),
(31, '::1', '2020-02-11'),
(32, '::1', '2020-02-11'),
(33, '::1', '2020-02-11'),
(34, '::1', '2020-02-11'),
(35, '::1', '2020-02-11'),
(36, '::1', '2020-02-11'),
(37, '::1', '2020-02-11'),
(38, '::1', '2020-02-11'),
(39, '::1', '2020-02-11'),
(40, '::1', '2020-02-11'),
(41, '::1', '2020-02-11'),
(42, '::1', '2020-02-11'),
(43, '::1', '2020-02-11'),
(44, '::1', '2020-02-11'),
(45, '::1', '2020-02-11'),
(46, '::1', '2020-02-11'),
(47, '::1', '2020-02-11'),
(48, '::1', '2020-02-11'),
(49, '::1', '2020-02-11'),
(50, '::1', '2020-02-11'),
(51, '::1', '2020-02-11'),
(52, '::1', '2020-02-11'),
(53, '::1', '2020-02-11'),
(54, '::1', '2020-02-11'),
(55, '::1', '2020-02-11'),
(56, '::1', '2020-02-11'),
(57, '::1', '2020-02-11'),
(58, '::1', '2020-02-11'),
(59, '::1', '2020-02-11'),
(60, '::1', '2020-02-11'),
(61, '::1', '2020-02-11'),
(62, '::1', '2020-02-11'),
(63, '::1', '2020-02-11'),
(64, '::1', '2020-02-11'),
(65, '::1', '2020-02-11'),
(66, '::1', '2020-02-11'),
(67, '::1', '2020-02-11'),
(68, '::1', '2020-02-11'),
(69, '::1', '2020-02-11'),
(70, '::1', '2020-02-11'),
(71, '::1', '2020-02-11'),
(72, '::1', '2020-02-11'),
(73, '::1', '2020-02-11'),
(74, '::1', '2020-02-11'),
(75, '::1', '2020-02-11'),
(76, '::1', '2020-02-11'),
(77, '::1', '2020-02-11'),
(78, '::1', '2020-02-11'),
(79, '::1', '2020-02-11'),
(80, '::1', '2020-02-11'),
(81, '::1', '2020-02-11'),
(82, '::1', '2020-02-11'),
(83, '::1', '2020-02-11'),
(84, '::1', '2020-02-11'),
(85, '::1', '2020-02-11'),
(86, '::1', '2020-02-11'),
(87, '::1', '2020-02-11'),
(88, '::1', '2020-02-11'),
(89, '::1', '2020-02-11'),
(90, '::1', '2020-02-11'),
(91, '::1', '2020-02-11'),
(92, '::1', '2020-02-11'),
(93, '::1', '2020-02-12'),
(94, '::1', '2020-02-12'),
(95, '::1', '2020-02-12'),
(96, '::1', '2020-02-12'),
(97, '::1', '2020-02-12'),
(98, '::1', '2020-02-12'),
(99, '::1', '2020-02-12'),
(100, '::1', '2020-02-12'),
(101, '::1', '2020-02-13'),
(102, '::1', '2020-02-13'),
(103, '::1', '2020-02-13'),
(104, '::1', '2020-02-13'),
(105, '::1', '2020-02-13'),
(106, '::1', '2020-02-13'),
(107, '::1', '2020-02-13'),
(108, '::1', '2020-02-13'),
(109, '::1', '2020-02-13'),
(110, '::1', '2020-02-13'),
(111, '::1', '2020-02-13'),
(112, '::1', '2020-02-13'),
(113, '::1', '2020-02-13'),
(114, '::1', '2020-02-13'),
(115, '::1', '2020-02-13'),
(116, '::1', '2020-02-13'),
(117, '::1', '2020-02-13'),
(118, '::1', '2020-02-13'),
(119, '::1', '2020-02-13'),
(120, '::1', '2020-02-13'),
(121, '::1', '2020-02-13'),
(122, '::1', '2020-02-13'),
(123, '::1', '2020-02-13'),
(124, '::1', '2020-02-13'),
(125, '::1', '2020-02-13'),
(126, '::1', '2020-02-13'),
(127, '::1', '2020-02-13'),
(128, '::1', '2020-02-13'),
(129, '::1', '2020-02-13'),
(130, '::1', '2020-02-13'),
(131, '::1', '2020-02-13'),
(132, '::1', '2020-02-13'),
(133, '::1', '2020-02-13'),
(134, '::1', '2020-02-13'),
(135, '::1', '2020-02-13'),
(136, '::1', '2020-02-13'),
(137, '::1', '2020-02-13'),
(138, '::1', '2020-02-13'),
(139, '::1', '2020-02-13'),
(140, '::1', '2020-02-13'),
(141, '::1', '2020-02-13'),
(142, '::1', '2020-02-13'),
(143, '::1', '2020-02-13'),
(144, '::1', '2020-02-13'),
(145, '::1', '2020-02-13'),
(146, '::1', '2020-02-13'),
(147, '::1', '2020-02-13'),
(148, '::1', '2020-02-13'),
(149, '::1', '2020-02-13'),
(150, '::1', '2020-02-13'),
(151, '::1', '2020-02-13'),
(152, '::1', '2020-02-13'),
(153, '::1', '2020-02-13'),
(154, '::1', '2020-02-13'),
(155, '::1', '2020-02-13'),
(156, '::1', '2020-02-13'),
(157, '::1', '2020-02-13'),
(158, '::1', '2020-02-13'),
(159, '::1', '2020-02-13'),
(160, '::1', '2020-02-13'),
(161, '::1', '2020-02-13'),
(162, '::1', '2020-02-13'),
(163, '::1', '2020-02-13'),
(164, '::1', '2020-02-13'),
(165, '::1', '2020-02-13'),
(166, '::1', '2020-02-14'),
(167, '::1', '2020-02-14'),
(168, '::1', '2020-02-14'),
(169, '::1', '2020-02-14'),
(170, '::1', '2020-02-14'),
(171, '::1', '2020-02-14'),
(172, '::1', '2020-02-14'),
(173, '::1', '2020-02-14'),
(174, '::1', '2020-02-14'),
(175, '::1', '2020-02-14'),
(176, '::1', '2020-02-14'),
(177, '::1', '2020-02-14'),
(178, '::1', '2020-02-14'),
(179, '::1', '2020-02-14'),
(180, '::1', '2020-02-14'),
(181, '::1', '2020-02-14'),
(182, '::1', '2020-02-14'),
(183, '::1', '2020-02-14'),
(184, '::1', '2020-02-14'),
(185, '::1', '2020-02-14'),
(186, '::1', '2020-02-14'),
(187, '::1', '2020-02-14'),
(188, '::1', '2020-02-14'),
(189, '::1', '2020-02-14'),
(190, '::1', '2020-02-14'),
(191, '::1', '2020-02-14'),
(192, '::1', '2020-02-14'),
(193, '::1', '2020-02-14'),
(194, '::1', '2020-02-14'),
(195, '::1', '2020-02-14'),
(196, '::1', '2020-02-14'),
(197, '::1', '2020-02-14'),
(198, '::1', '2020-02-14'),
(199, '::1', '2020-02-14'),
(200, '::1', '2020-02-14'),
(201, '::1', '2020-02-14'),
(202, '::1', '2020-02-14'),
(203, '::1', '2020-02-14'),
(204, '::1', '2020-02-14'),
(205, '::1', '2020-02-14'),
(206, '::1', '2020-02-14'),
(207, '::1', '2020-02-14'),
(208, '::1', '2020-02-14'),
(209, '::1', '2020-02-14'),
(210, '::1', '2020-02-14'),
(211, '::1', '2020-02-14'),
(212, '::1', '2020-02-14'),
(213, '::1', '2020-02-14'),
(214, '::1', '2020-02-14'),
(215, '::1', '2020-02-14'),
(216, '::1', '2020-02-14'),
(217, '::1', '2020-02-14'),
(218, '::1', '2020-02-14'),
(219, '::1', '2020-02-14'),
(220, '::1', '2020-02-14'),
(221, '::1', '2020-02-14'),
(222, '::1', '2020-02-14'),
(223, '::1', '2020-02-14'),
(224, '::1', '2020-02-14'),
(225, '::1', '2020-02-14'),
(226, '::1', '2020-02-14'),
(227, '::1', '2020-02-14'),
(228, '::1', '2020-02-14'),
(229, '::1', '2020-02-14'),
(230, '::1', '2020-02-14'),
(231, '::1', '2020-02-14'),
(232, '::1', '2020-02-14'),
(233, '::1', '2020-02-14'),
(234, '::1', '2020-02-14'),
(235, '::1', '2020-02-14'),
(236, '::1', '2020-02-14'),
(237, '::1', '2020-02-14'),
(238, '::1', '2020-02-14'),
(239, '::1', '2020-02-14'),
(240, '::1', '2020-02-14'),
(241, '::1', '2020-02-14'),
(242, '::1', '2020-02-14'),
(243, '::1', '2020-02-14'),
(244, '::1', '2020-02-14'),
(245, '::1', '2020-02-14'),
(246, '::1', '2020-02-14'),
(247, '::1', '2020-02-14'),
(248, '::1', '2020-02-14'),
(249, '::1', '2020-02-14'),
(250, '::1', '2020-02-14'),
(251, '::1', '2020-02-14'),
(252, '::1', '2020-02-14'),
(253, '::1', '2020-02-14'),
(254, '::1', '2020-02-14'),
(255, '::1', '2020-02-14'),
(256, '::1', '2020-02-14'),
(257, '::1', '2020-02-14'),
(258, '::1', '2020-02-14'),
(259, '::1', '2020-02-14'),
(260, '::1', '2020-02-14'),
(261, '::1', '2020-02-14'),
(262, '::1', '2020-02-15'),
(263, '::1', '2020-02-15'),
(264, '::1', '2020-02-15'),
(265, '::1', '2020-02-15'),
(266, '::1', '2020-02-15'),
(267, '::1', '2020-02-15'),
(268, '::1', '2020-02-15'),
(269, '::1', '2020-02-15'),
(270, '::1', '2020-02-15'),
(271, '::1', '2020-02-15'),
(272, '::1', '2020-02-15'),
(273, '::1', '2020-02-15'),
(274, '::1', '2020-02-15'),
(275, '::1', '2020-02-15'),
(276, '::1', '2020-02-15'),
(277, '::1', '2020-02-15'),
(278, '::1', '2020-02-15'),
(279, '::1', '2020-02-15'),
(280, '::1', '2020-02-15'),
(281, '::1', '2020-02-15'),
(282, '::1', '2020-02-15'),
(283, '::1', '2020-02-15'),
(284, '::1', '2020-02-15'),
(285, '::1', '2020-02-15'),
(286, '::1', '2020-02-15'),
(287, '::1', '2020-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Mem_ID` int(11) NOT NULL,
  `Mem_User` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Address` text COLLATE utf8_unicode_ci NOT NULL,
  `Mem_Date` date NOT NULL,
  `Mem_Permission` int(11) NOT NULL COMMENT '1 = ใช้งาน 2 = ยกเลิก',
  `Mem_Status` int(11) NOT NULL COMMENT '1 = admin 2 = user'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Mem_ID`, `Mem_User`, `Mem_Pass`, `Mem_Name`, `Mem_Email`, `Mem_Tel`, `Mem_Address`, `Mem_Date`, `Mem_Permission`, `Mem_Status`) VALUES
(1, 'admin', '1234', 'administrator', 'admin@mail.com', '', '', '2017-03-11', 1, 1),
(5, 'member', '1234', 'member1', 'member@mail.com', '0111111111', 'Dev Address', '2017-03-19', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Ord_ID` int(11) NOT NULL,
  `Ord_Number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Mem_ID` int(11) NOT NULL,
  `Ord_Note` text COLLATE utf8_unicode_ci NOT NULL,
  `Ord_AddressSend` text COLLATE utf8_unicode_ci NOT NULL,
  `Ord_Shipping` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_AmountTotal` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_PriceTotal` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_DateShipping` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_NumberShipping` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ord_DateBuy` date NOT NULL,
  `Ord_Status` int(11) NOT NULL COMMENT '0 = รอชำระเงิน 1= ตรวจสอบชำระเงิน 2 = ชำระเงินเรียบร้อย 3 = จัดส่งเรียบร้อย 4 = ยกเลิกรายการ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Ord_ID`, `Ord_Number`, `Mem_ID`, `Ord_Note`, `Ord_AddressSend`, `Ord_Shipping`, `Ord_AmountTotal`, `Ord_PriceTotal`, `Ord_DateShipping`, `Ord_NumberShipping`, `Ord_DateBuy`, `Ord_Status`) VALUES
(1, '110220213258', 5, 'dev', 'dev', '50', '1', '100', '2020-02-07', 'EEEEEEE', '2020-02-11', 3),
(2, '110220234732', 5, 'dev', '34/567', '80', '2', '340', '2020-02-15', 'EEEEEEE', '2020-02-11', 3),
(4, '150220171635', 5, '', 'Dev Address', '80', '1', '330', '', '', '2020-02-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `Odd_ID` int(11) NOT NULL,
  `Ord_ID` int(11) NOT NULL,
  `Pro_ID` int(11) NOT NULL,
  `Odd_Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`Odd_ID`, `Ord_ID`, `Pro_ID`, `Odd_Amount`) VALUES
(1, 1, 8, 1),
(2, 2, 8, 1),
(3, 2, 4, 1),
(4, 3, 6, 1),
(5, 3, 8, 1),
(6, 3, 4, 1),
(7, 4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_ID` int(11) NOT NULL,
  `Ord_ID` int(11) NOT NULL,
  `Pay_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_File` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Price` double(9,2) NOT NULL,
  `Pay_Bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Detail` text COLLATE utf8_unicode_ci NOT NULL,
  `Pay_Date` date NOT NULL,
  `Pay_Time` time NOT NULL,
  `Pay_Status` int(11) NOT NULL COMMENT '0 = ตรวจสอบ1 = ชำระเรียบร้อย'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pay_ID`, `Ord_ID`, `Pay_Name`, `Pay_Tel`, `Pay_File`, `Pay_Price`, `Pay_Bank`, `Pay_Detail`, `Pay_Date`, `Pay_Time`, `Pay_Status`) VALUES
(2, 1, 'aa bb ', '0814567899', '110220_215259.jpg', 100.00, 'กรุงเทพ', '', '2020-02-11', '23:59:00', 1),
(3, 2, 'aa bb ', '0814567899', '110220_234839.JPG', 340.00, 'ไทยพาณิชย์', 'dev', '2013-12-23', '23:59:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pro_ID` int(6) UNSIGNED ZEROFILL NOT NULL,
  `Pro_Img` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Pro_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pro_Detail` text COLLATE utf8_unicode_ci NOT NULL,
  `Pro_Price` double(7,2) NOT NULL,
  `Pro_Amount` int(11) NOT NULL,
  `Pro_Buy` int(11) NOT NULL,
  `Pro_Promotion` int(2) NOT NULL COMMENT 'ถ้าเป็น 0 คือไม่อยู่ในโปรโมชั่น / 1 คือจัดโปรโมชั่น',
  `Pro_Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pro_ID`, `Pro_Img`, `Pro_Name`, `Pro_Detail`, `Pro_Price`, `Pro_Amount`, `Pro_Buy`, `Pro_Promotion`, `Pro_Date`) VALUES
(000002, '140220_201330.jpg', 'เสื้อสีเทา', 'เสื้อสีเทา งานแฮนด์เใด', 850.00, 99, 1, 0, '2018-09-09'),
(000003, '140220_201415.jpg', 'เสื้อสีชมพู', 'เสื้อสีชมพู', 230.00, 99, 0, 0, '2018-09-09'),
(000004, '140220_201438.jpg', 'เสื้อลาย', 'เสื้อลาย', 210.00, 99, 1, 0, '2018-09-09'),
(000005, '140220_201501.jpg', 'เสื้อสีเหลือง', 'เสื้อสีเหลือง', 190.00, 99, 0, 0, '2018-09-09'),
(000006, '140220_201521.jpg', 'เสื้อสีน้ำเงิน', 'เสื้อสีน้ำเงิน', 250.00, 97, 2, 1, '2018-09-09'),
(000008, '110220_213207.jpg', 'เป็ด', 'เป็ดน้อย', 50.00, 98, 2, 1, '2020-02-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Car_ID`);

--
-- Indexes for table `count_page`
--
ALTER TABLE `count_page`
  ADD PRIMARY KEY (`Cou_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Mem_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Ord_ID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Odd_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pro_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Car_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `count_page`
--
ALTER TABLE `count_page`
  MODIFY `Cou_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Mem_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Ord_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Odd_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Pay_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pro_ID` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
