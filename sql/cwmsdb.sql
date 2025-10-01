-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2025 at 07:44 PM
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
-- Database: `cwmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-12-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblcarwashbooking`
--

CREATE TABLE `tblcarwashbooking` (
  `id` int(11) NOT NULL,
  `bookingId` bigint(10) DEFAULT NULL,
  `packageType` varchar(120) DEFAULT NULL,
  `carWashPoint` int(11) DEFAULT NULL,
  `fullName` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `washDate` date DEFAULT NULL,
  `washTime` time DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `adminRemark` mediumtext DEFAULT NULL,
  `paymentMode` varchar(120) DEFAULT NULL,
  `txnNumber` varchar(120) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcarwashbooking`
--

INSERT INTO `tblcarwashbooking` (`id`, `bookingId`, `packageType`, `carWashPoint`, `fullName`, `mobileNumber`, `washDate`, `washTime`, `message`, `status`, `adminRemark`, `paymentMode`, `txnNumber`, `postingDate`, `lastUpdationDate`) VALUES
(1, 316460298, '1', 4, 'Win Htet Yan Naing', 959976134832, '2021-12-16', '11:45:00', 'NA', 'Completed', 'Washing completed', 'e-Wallet', '345345345', '2021-12-13 19:14:22', '2025-03-05 18:27:42'),
(2, 647869499, '3', 3, 'Hein Zayar Win', 959688501779, '2021-12-30', '15:47:00', 'na', 'New', NULL, NULL, NULL, '2021-12-13 19:14:47', '2025-03-05 18:29:11'),
(3, 215755984, '2', 4, 'Aung Sint Naing', 959883590079, '2021-12-19', '15:05:00', 'NA', 'New', NULL, NULL, NULL, '2021-12-13 19:16:19', NULL),
(4, 440337019, '1', 2, 'Zaw Paing Htet', 959695591974, '2022-01-01', '19:37:00', 'NA', 'New', NULL, NULL, NULL, '2021-12-14 17:01:55', NULL),
(5, 783971257, '2', 1, 'Thein Min Htet', 959954807078, '2021-12-25', '13:31:00', 'NA', 'New', NULL, NULL, NULL, '2021-12-14 19:00:44', NULL),
(6, 328979472, '3 ', 2, 'Pyae Phyo Kyaw', 959697264311, '2021-12-18', '10:15:00', 'NA', 'New', NULL, NULL, NULL, '2021-12-14 19:12:37', NULL),
(7, 151983398, '1', 4, 'Ye Myat Aung', 959960128062, '2021-12-15', '19:50:00', 'Car wash', 'Completed', 'Car Wash Completed', 'Debit/Credit Card', 'DSGFS72342834', '2021-12-14 19:15:28', '2025-03-05 18:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(4, 'Win Htet Yan Naing', 'winhtetyannaing@uit.edu.mm', 'General Enquiry', 'I want to know the price of car wash if I wash more than three cars. Is there any discount?', '2021-12-13 18:27:53', 1),
(5, 'Hein Zayar Win', 'heinzayarwin@uit.edu.mm', 'General Enquiry', 'Any service while washing?', '2021-12-14 19:14:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL,
  `openignHrs` varchar(255) DEFAULT NULL,
  `phoneNumber` bigint(20) DEFAULT NULL,
  `emailId` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`, `openignHrs`, `phoneNumber`, `emailId`) VALUES
(3, 'aboutus', '																														<div style=\"text-align: justify;\"><div>We’re transforming the car washing experience with our cutting-edge Car Wash Management System, designed to make vehicle care simple and efficient. With years of industry expertise, we’ve created a platform that lets you book appointments effortlessly, ensuring your car gets top-notch treatment at a time that works for you. Our team is dedicated to providing exceptional service, using advanced tools like high-pressure washers, steam cleaners, and powerful vacuums to keep your vehicle sparkling inside and out. We prioritize convenience, offering an easy-to-use interface with a variety of washing plans tailored to your needs. Whether you want a quick exterior wash or a full detailing package, we provide options for every budget. Our goal is to redefine car care by blending technology with outstanding service, earning us trust within the community. With multiple service locations and a skilled staff, we’re committed to keeping your car in pristine shape. We value your time, which is why our system streamlines scheduling, booking tracking, and the entire process for a stress-free experience. Customer satisfaction drives us, and we strive to ensure your car stays looking newer for longer. Schedule your appointment today and experience the future of car washing!</div></div><div></div>\r\n										\r\n										\r\n										', NULL, NULL, NULL),
(11, 'contact', 'Parami, Yangon', 'Mon - Fri, 8:00 AM - 9:00 PM', 959762991339, 'seinmauklinhtet@uit.edu.mm');

-- --------------------------------------------------------

--
-- Table structure for table `tblwashingpoints`
--

CREATE TABLE `tblwashingpoints` (
  `id` int(11) NOT NULL,
  `washingPointName` varchar(255) DEFAULT NULL,
  `washingPointAddress` varchar(255) DEFAULT NULL,
  `contactNumber` bigint(20) DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblwashingpoints`
--

INSERT INTO `tblwashingpoints` (`id`, `washingPointName`, `washingPointAddress`, `contactNumber`, `creationDate`) VALUES
(1, 'The Mauk Car Washing Point', 'NO. 56, Hlaing Myint Moh 4 Street, 4th St, Yangon 1105 TTTT', 959762991339, '2021-12-13 16:21:20'),
(2, 'Jager Car Washing Point', 'No.6, West, 3 May Kha, Yangon', 959970889435, '2021-12-13 16:22:38'),
(3, ' Nerd Car washing Point ', 'Thamine Junction Mosque, 18B Kyaik Waing Pagoda Rd, Yangon', 959973597202, '2021-12-13 16:24:28'),
(4, ' ZaZa Car washing Point ', 'No. 82, Sin Phyu Shin Avenue, Pyay Road, 6½ Mile, 11051', 959785978183, '2021-12-13 16:24:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carWashPoint` (`carWashPoint`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwashingpoints`
--
ALTER TABLE `tblwashingpoints`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblwashingpoints`
--
ALTER TABLE `tblwashingpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  ADD CONSTRAINT `washingpointid` FOREIGN KEY (`carWashPoint`) REFERENCES `tblwashingpoints` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
