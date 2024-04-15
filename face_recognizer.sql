-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 04:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_recognizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Account`, `Password`) VALUES
('26565', 'e10adc3949ba59abbe56e057f20f883e'),
('admin', '12345678'),
('chicken', '*6966A21D66C4C35D44C0187345DB9CF8A66512A8'),
('chicken1', 'e6053eb8d35e02ae40beeeacef203c1a'),
('chicken2', 'e6053eb8d35e02ae40beeeacef203c1a'),
('chicken29', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `IdAuttendance` varchar(45) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) DEFAULT NULL,
  `Time_in` time DEFAULT NULL,
  `Time_out` time DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Lesson_id` int(11) NOT NULL,
  `AttendanceStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`IdAuttendance`, `Student_id`, `Name`, `Class`, `Time_in`, `Time_out`, `Date`, `Lesson_id`, `AttendanceStatus`) VALUES
('SV1110320241', 1, 'Phạm Quốc Lịnh', 'CNTT', '23:21:40', NULL, '11/03/2024', 1, 'Vắng'),
('SV1130320243', 1, 'Phạm Quốc Lịnh', 'CNTT', '23:14:40', NULL, '13/03/2024', 3, 'Vắng');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class`, `Name`) VALUES
('CNTT', 'Cong nghe thong tin');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `Lesson_id` int(11) NOT NULL,
  `Time_start` time DEFAULT NULL,
  `Time_end` time DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  `Class` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`Lesson_id`, `Time_start`, `Time_end`, `Date`, `Class`) VALUES
(1, '00:00:00', '23:59:59', '11/03/2024', 'CNTT'),
(2, '00:00:00', '23:59:59', '12/03/2024', 'CNTT'),
(3, '00:00:00', '23:59:59', '13/03/2024', 'CNTT'),
(4, '00:00:00', '23:59:59', '14/03/2024', 'CNTT'),
(5, '00:00:00', '23:59:59', '15/03/2024', 'CNTT');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) NOT NULL,
  `Roll` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhotoSample` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Year`, `Semester`, `Name`, `Class`, `Roll`, `Gender`, `Dob`, `Email`, `Phone`, `Address`, `PhotoSample`) VALUES
(1, 'Chọn khóa học', 'Chọn cơ sở', 'Pham Quoc Linh', 'CNTT', '381931420', 'Nam', '25/02/2002', 'phamlinhquoc31@gmail.com', '859146489', 'ĐH Cửu Long', 'Yes'),
(2, 'Chọn khóa học', 'Chọn cơ sở', 'ngoc', 'CNTT', '756788990', 'Nữ', '10/01/2002', 'ngoc@gmai.com', '9867896', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `SecurityQ` varchar(45) NOT NULL,
  `SecurityA` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_id`, `Name`, `Phone`, `Email`, `SecurityQ`, `SecurityA`, `Password`) VALUES
(0, 'Admin', '19001235', '', '', '', ''),
(1, 'Canh Phuong Van', '6958592698', 'canhpv@epu.edu.com', 'Sở thích của bạn', 'Code', '123456'),
(2, 'Dungx', '098889221', 'dung@gmail.com', 'Sở thích của bạn', 'Kiếm tiền', '123'),
(3, 'Lea', '06958592', 'ca@gmail.com', 'Bạn thích ăn gì', 'chiu', '123456'),
(4, 'abc', '0988', 'ssas', 'Bạn thích ăn gì', 'meo', '123'),
(5, 'Nhat', '055565656', 'nhat2@gmail.com', 'Sở thích của bạn', 'code', '123'),
(6, '233', '23', '23', 'Bạn thích ăn gì', 'ko', '123'),
(7, 'nhat minh', '13123', 'da', 'Bạn thích ăn gì', '12', '123'),
(8, 'ád', '123', '123', 'Bạn thích ăn gì', '123', '123'),
(9, '12322', '123', '1231', 'Sở thích của bạn', 'a', '1'),
(10, '123', '123', '123', 'Sở thích của bạn', '123', '123'),
(11, 'Linh', '0859146489', 'phamlinhquoc31@gmail.com', 'Bạn thích ăn gì', 'com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Account`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`IdAuttendance`),
  ADD KEY `Student_id` (`Student_id`) USING BTREE,
  ADD KEY `Lesson_id` (`Lesson_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`Lesson_id`),
  ADD KEY `Class` (`Class`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Class` (`Class`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
