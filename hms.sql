-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 07:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin@1234', '24-12-2020 09:45:34 PM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `counsSpecialization` varchar(255) DEFAULT NULL,
  `cosId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `cosStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `counsSpecialization`, `cosId`, `userId`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `cosStatus`, `updationDate`) VALUES
(12, 'mental-health', 15, 15, '2021-04-06', '12:00 PM', '2021-04-02 08:32:33', 1, 1, NULL),
(13, 'career', 0, 15, '2021-04-06', '5:00 PM', '2021-04-02 14:00:55', 1, 1, NULL),
(14, 'mental-health', 15, 15, '2021-04-10', '5:15 PM', '2021-04-02 14:04:39', 1, 1, NULL),
(15, 'mental-health', 15, 15, '2021-04-30', '5:15 PM', '2021-04-02 14:10:38', 1, 1, NULL),
(16, 'substance-abuse', 0, 15, '2021-05-28', '5:15 PM', '2021-04-02 14:11:37', 1, 1, NULL),
(17, 'Family & Relationship', 0, 15, '2021-05-05', '5:15 PM', '2021-04-02 14:12:53', 1, 1, NULL),
(18, 'Family & Relationship', 0, 15, '2021-05-05', '5:15 PM', '2021-04-02 14:13:27', 1, 1, NULL),
(19, 'mental-health', 15, 15, '2021-06-18', '5:15 PM', '2021-04-02 14:13:49', 1, 1, NULL),
(20, 'mental-health', 15, 15, '2021-06-18', '5:15 PM', '2021-04-02 14:17:10', 1, 1, NULL),
(21, 'mental-health', 15, 15, '2021-06-18', '5:15 PM', '2021-04-02 14:17:26', 1, 1, NULL),
(22, 'mental-health', 15, 15, '2021-06-18', '9:30 AM', '2021-04-09 08:16:56', 1, 0, '2021-04-09 10:44:11'),
(23, 'mental-health', 15, 17, '2021-04-19', '11:45 AM', '2021-04-16 08:06:51', 1, 1, NULL),
(24, 'Rehabilitative', 17, 17, '2021-04-20', '11:30 AM', '2021-04-16 08:14:05', 1, 1, NULL),
(25, 'substance-abuse', 18, 31, '2021-04-20', '3:00 PM', '2021-04-19 10:40:47', 1, 1, NULL),
(26, 'career', 19, 31, '2021-05-27', '7:00 PM', '2021-05-20 13:49:53', 1, 1, NULL),
(27, 'substance-abuse', 18, 35, '2021-06-01', '9:00 AM', '2021-05-25 06:15:22', 1, 1, NULL),
(28, 'Rehabilitative', 17, 36, '2021-06-05', '10:15 PM', '2021-05-25 19:32:19', 1, 1, NULL),
(29, 'substance-abuse', 18, 35, '2021-06-04', '10:00 AM', '2021-05-26 07:20:03', 1, 1, NULL),
(30, 'mental-health', 15, 37, '2021-06-10', '1:00 PM', '2021-06-09 10:33:53', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counselor`
--

CREATE TABLE `counselor` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `cosName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `cosFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `cosEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counselor`
--

INSERT INTO `counselor` (`id`, `specilization`, `cosName`, `address`, `cosFees`, `contactno`, `cosEmail`, `password`, `creationDate`, `updationDate`) VALUES
(15, 'mental-health', 'Chris Kioko', '111, Nyeri', '', 711223344, 'chris@gmail.com', '7b657205cf658475f74d1205f3689104', '2021-04-02 08:24:25', NULL),
(16, 'Family & Relationship', 'Enock lai', '222, Nairobi', '', 722334455, 'enock@gmail.com', '54876567f796dfc8326faa081d7fcffd', '2021-04-02 08:25:58', NULL),
(17, 'Rehabilitative', 'Patrick Muia', '333, Nairobi', '', 733445566, 'patrick@gmail.com', '39535f7e1fc9b1ac98cf39892ce4b781', '2021-04-02 08:27:40', NULL),
(18, 'substance-abuse', 'Amina Lubambe', '4567, Nyeri', NULL, 734567965, 'amina@gmail.com', '1032513d7f498fcdac0add5a2d63d4c6', '2021-04-19 10:33:49', NULL),
(19, 'career', 'Popino Lubricante', '2345, Kiambu', NULL, 745348769, 'popino@gmail.com', '8aa4f23abc49f9fc32a240ed2c527662', '2021-04-19 10:35:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counselorlog`
--

CREATE TABLE `counselorlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counselorlog`
--

INSERT INTO `counselorlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(40, 15, 'Chris@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 08:33:36', '02-04-2021 02:05:19 PM', 1),
(41, 15, 'Chris@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 13:03:32', '02-04-2021 07:08:41 PM', 1),
(42, 15, 'chris@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-09 10:43:40', '09-04-2021 04:15:36 PM', 1),
(43, 15, 'chris@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-16 07:17:27', '16-04-2021 01:12:48 PM', 1),
(44, 15, 'chris@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-16 08:07:22', '16-04-2021 01:37:59 PM', 1),
(45, 17, 'patrick@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-16 08:14:39', '16-04-2021 01:44:54 PM', 1),
(46, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 10:37:47', '19-04-2021 04:08:16 PM', 1),
(47, 18, 'amina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 10:38:43', '19-04-2021 04:08:55 PM', 1),
(48, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 11:02:09', NULL, 1),
(49, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 11:02:09', '19-04-2021 04:45:30 PM', 1),
(50, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 11:17:40', '19-04-2021 05:01:22 PM', 1),
(51, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-02 17:36:05', '02-05-2021 11:06:14 PM', 1),
(52, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-05-03 07:48:06', NULL, 0),
(53, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-03 07:48:23', '03-05-2021 01:18:28 PM', 1),
(54, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-03 18:51:19', '04-05-2021 12:36:41 AM', 1),
(55, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-04 10:58:31', '04-05-2021 04:28:52 PM', 1),
(56, NULL, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 13:51:18', NULL, 0),
(57, 19, 'popino@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 13:51:33', '20-05-2021 07:26:26 PM', 1),
(58, 18, 'amina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 06:15:57', '25-05-2021 11:50:21 AM', 1),
(59, 17, 'patrick@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:33:24', '26-05-2021 01:05:01 AM', 1),
(60, 18, 'amina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 07:20:37', '26-05-2021 12:51:18 PM', 1),
(61, 18, 'amina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 08:05:49', '26-05-2021 01:41:47 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `counsspecilization`
--

CREATE TABLE `counsspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counsspecilization`
--

INSERT INTO `counsspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(16, 'career', '2021-03-23 09:24:30', NULL),
(17, 'mental-health', '2021-04-02 08:19:04', NULL),
(18, 'substance-abuse', '2021-04-02 08:19:28', NULL),
(19, 'Family & Relationship', '2021-04-02 08:20:10', NULL),
(20, 'Rehabilitative', '2021-04-02 08:20:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `ClientName` varchar(200) DEFAULT NULL,
  `ClientContno` bigint(10) DEFAULT NULL,
  `ClientEmail` varchar(200) DEFAULT NULL,
  `ClientGender` varchar(50) DEFAULT NULL,
  `ClientAdd` mediumtext DEFAULT NULL,
  `ClientAge` int(10) DEFAULT NULL,
  `Clienthis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `Docid`, `ClientName`, `ClientContno`, `ClientEmail`, `ClientGender`, `ClientAdd`, `ClientAge`, `Clienthis`, `CreationDate`, `UpdationDate`) VALUES
(9, 19, 'patrick muia', 734567846, 'muia@gmail.com', 'male', '564, Nairobi', 20, 'had issues with career choice, \r\nwas guided to a self-test website to test personal capability and understanding,\r\nhe is still under guidance on the same,', '2021-05-03 18:56:22', NULL),
(10, 18, 'Bon matata', 723232323, 'bon@gmail.com', 'male', '222, Limuru', 42, 'Bon has had a long-standing cigarette smoker and alcoholic, but he is peaking up well with couseling sessions in attempt to quit smoking and drinking alcohol.', '2021-05-25 06:18:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcounshistory`
--

CREATE TABLE `tblcounshistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(48, 15, 'maina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 08:30:54', '02-04-2021 02:03:11 PM', 1),
(49, 15, 'maina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 13:39:01', NULL, 1),
(50, 15, 'maina@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-09 08:04:55', '09-04-2021 01:47:20 PM', 1),
(51, 16, 'kitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-14 10:57:37', NULL, 1),
(52, 17, 'akumu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-16 07:09:35', '16-04-2021 12:39:52 PM', 1),
(53, 17, 'akumu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-16 08:05:56', '16-04-2021 01:37:02 PM', 1),
(54, 17, 'akumu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-16 08:12:48', '16-04-2021 01:44:18 PM', 1),
(55, 17, 'akumu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 15:34:33', '17-04-2021 09:04:47 PM', 1),
(56, 18, 'mandela@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 15:37:04', '17-04-2021 09:07:15 PM', 1),
(57, NULL, 'muia@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 17:55:37', NULL, 0),
(58, 31, 'muia@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 17:57:37', '17-04-2021 11:47:31 PM', 1),
(59, NULL, 'mutuka@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 18:20:10', NULL, 0),
(60, 32, 'mutuka@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-17 18:21:44', NULL, 1),
(61, 33, 'pec@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 10:28:58', '19-04-2021 04:01:04 PM', 1),
(62, 31, 'muia@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 10:40:15', '19-04-2021 04:11:54 PM', 1),
(63, 31, 'muia@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-19 11:31:37', '19-04-2021 05:10:31 PM', 1),
(64, NULL, 'kivuva@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 07:43:25', NULL, 0),
(65, 34, 'kivuva@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 07:45:00', '30-04-2021 04:18:11 PM', 1),
(66, 34, 'kivuva@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-30 12:19:04', '30-04-2021 05:50:38 PM', 1),
(67, 31, 'muia@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-03 07:48:45', '03-05-2021 01:19:30 PM', 1),
(68, 31, 'muia@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 13:48:45', '20-05-2021 07:20:55 PM', 1),
(69, NULL, 'bon@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 06:13:03', NULL, 0),
(70, 35, 'bon@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 06:14:23', '25-05-2021 11:45:39 AM', 1),
(71, NULL, 'jim@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:30:09', NULL, 0),
(72, 36, 'jim@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:31:22', '26-05-2021 01:02:59 AM', 1),
(73, 35, 'bon@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 07:19:28', '26-05-2021 12:50:14 PM', 1),
(74, 35, 'bon@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 08:04:45', '26-05-2021 01:35:30 PM', 1),
(75, NULL, 'eldiego@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-09 10:31:46', NULL, 0),
(76, 37, 'eldiego@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-09 10:33:18', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `regNum` varchar(100) NOT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `approve` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `regNum`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`, `approve`) VALUES
(9, 'njnjjjnnj', '', 'jnjjvbvgvg', 'gvgvgjvj', 'jvjgjvg', 'gjvgvjujg', '111111111', '2021-04-17 17:21:27', '2021-04-17 17:27:29', 'yes'),
(15, 'Stephen Maina', '', '444, Nyeri', 'Nyeri', 'male', 'maina@gmail.com', '0c5b4232e8570c6fb7da07acb2da011d', '2021-04-02 08:30:29', '2021-04-14 11:21:40', 'yes'),
(21, 'njnnnjnj', '', 'jnjnjnj', 'jjnnj', 'njnj', 'jnjnjj', 'njnjjnj', '2021-04-17 17:19:43', '2021-04-17 17:31:35', ''),
(27, 'njnnnjnj', '', 'jnjnjnj', 'jjnnj', 'njnj', 'jndrjnjj', 'njnjjnj', '2021-04-17 17:38:18', '2021-04-17 18:18:44', 'yes'),
(28, 'njnjjjnnj', '', 'jnjjvbvgvg', 'gvgvgjvj', 'jvjgjvg', 'gjvgvjujg', '111111111', '2021-04-17 17:38:18', '2021-04-17 17:46:08', 'yes'),
(29, 'njnnnjnj', '', 'jnjnjnj', 'jjnnj', 'njnj', 'jnjnjijj', 'njnjjnj', '2021-04-17 17:38:27', '2021-04-17 17:39:34', 'yes'),
(31, 'patrick muia', '', '3456', 'Nyeri', 'male', 'muia@gmail.com', 'a4057eeee9b53a9b1695ddc38381e6de', '2021-04-17 17:54:59', '2021-04-17 17:57:01', 'yes'),
(32, 'Euphy mutuka', '', '4567', 'Nairobi', 'female', 'mutuka@gmail.com', '00e36f1a004fd8f9717b07fa93857cbc', '2021-04-17 18:19:45', '2021-04-17 18:21:22', 'yes'),
(33, 'Poda pec', 'C027-01-0001/2018', '789', 'Nairobi', 'male', 'pec@gmail.com', 'e3b6c087798926045ad98fd6686afee2', '2021-04-19 10:18:17', '2021-04-19 10:27:40', 'yes'),
(34, 'Stephen Kivuva', 'C027-01-0002/2018', '987', 'Nyeri', 'male', 'kivuva@gmail.com', '01f581a94ff7f861ddc2a8e3d7725467', '2021-04-30 07:42:56', '2021-04-30 07:44:31', 'yes'),
(35, 'bon matata', 'C027-01-0003/2018', '222,', 'Limuru', 'male', 'bon@gmail.com', 'd4004ce950882bf8216778dd9a02c9c0', '2021-05-25 06:12:32', '2021-05-25 06:13:54', 'yes'),
(36, 'Jim kariuki', 'C027-01-0004/2018', '333,', 'Nanyuki', 'male', 'jim@gmail.com', '09d101b1dbb0b8253bc0d7f8546c9fd4', '2021-05-25 19:29:45', '2021-05-25 19:30:39', 'yes'),
(37, 'ediego', 'c027-01-1129/2018', '2223', 'Nairobi', 'male', 'eldiego@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '2021-06-09 10:31:12', '2021-06-09 10:32:42', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counselor`
--
ALTER TABLE `counselor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counselorlog`
--
ALTER TABLE `counselorlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counsspecilization`
--
ALTER TABLE `counsspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcounshistory`
--
ALTER TABLE `tblcounshistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `counselor`
--
ALTER TABLE `counselor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `counselorlog`
--
ALTER TABLE `counselorlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `counsspecilization`
--
ALTER TABLE `counsspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcounshistory`
--
ALTER TABLE `tblcounshistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
