-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 02:59 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classerp`
--
CREATE DATABASE IF NOT EXISTS `classerp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `classerp`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance entry` varchar(100) NOT NULL,
  `lectureid` varchar(100) NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `Attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance entry`, `lectureid`, `studentid`, `Attendance`) VALUES
('EN1', '1', '123', 'P'),
('EN10', '10', '123', 'P'),
('EN11', '11', '123', 'P'),
('EN12', '12', '123', 'A'),
('EN13', '13', '123', 'P'),
('EN14', '14', '123', 'P'),
('EN15', '15', '123', 'P'),
('EN16', '16', '123', 'P'),
('EN17', '17', '123', 'A'),
('EN18', '18', '123', 'P'),
('EN19', '19', '123', 'P'),
('EN2', '2', '123', 'P'),
('EN20', '20', '123', 'P'),
('EN21', '21', '123', 'P'),
('EN22', '22', '123', 'A'),
('EN23', '23', '123', 'P'),
('EN24', '24', '123', 'P'),
('EN25', '25', '123', 'P'),
('EN26', '26', '123', 'A'),
('EN27', '27', '123', 'P'),
('EN28', '28', '123', 'A'),
('EN29', '29', '123', 'P'),
('EN3', '3', '123', 'A'),
('EN30', '30', '123', 'P'),
('EN31', '31', '123', 'P'),
('EN32', '32', '123', 'P'),
('EN33', '33', '123', 'P'),
('EN34', '34', '123', 'P'),
('EN35', '35', '123', 'A'),
('EN36', '1', '124', 'P'),
('EN37', '2', '124', 'P'),
('EN38', '3', '124', 'P'),
('EN39', '4', '124', 'P'),
('EN4', '4', '123', 'P'),
('EN40', '5', '124', 'P'),
('EN41', '6', '124', 'P'),
('EN42', '7', '124', 'P'),
('EN43', '8', '124', 'P'),
('EN44', '9', '124', 'A'),
('EN45', '10', '124', 'P'),
('EN46', '11', '124', 'P'),
('EN47', '12', '124', 'P'),
('EN48', '13', '124', 'P'),
('EN49', '14', '124', 'P'),
('EN5', '5', '123', 'P'),
('EN50', '15', '124', 'P'),
('EN51', '16', '124', 'A'),
('EN52', '17', '124', 'P'),
('EN53', '18', '124', 'P'),
('EN54', '19', '124', 'P'),
('EN55', '20', '124', 'P'),
('EN56', '21', '124', 'P'),
('EN57', '22', '124', 'P'),
('EN58', '23', '124', 'P'),
('EN59', '24', '124', 'A'),
('EN6', '6', '123', 'P'),
('EN60', '25', '124', 'P'),
('EN61', '26', '124', 'P'),
('EN62', '27', '124', 'A'),
('EN63', '28', '124', 'P'),
('EN64', '29', '124', 'P'),
('EN65', '30', '124', 'P'),
('EN66', '31', '124', 'P'),
('EN67', '32', '124', 'P'),
('EN68', '33', '124', 'A'),
('EN69', '34', '124', 'P'),
('EN7', '7', '123', 'A'),
('EN70', '35', '124', 'P'),
('EN8', '8', '123', 'P'),
('EN9', '9', '123', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `lectureid` varchar(100) NOT NULL,
  `teacherid` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`lectureid`, `teacherid`, `date`, `time`, `batch`, `subject`, `topic`) VALUES
('1', '2', '18-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('10', '1', '19-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('11', '1', '19-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('12', '1', '19-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('13', '1', '20-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('14', '1', '20-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('15', '1', '20-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('16', '1', '20-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('17', '1', '20-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('18', '1', '21-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('19', '1', '21-09-2016', '11', '1111', 'Chem', 'Some Topic'),
('2', '2', '18-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('20', '3', '21-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('21', '3', '21-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('22', '3', '21-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('23', '3', '21-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('24', '3', '21-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('25', '3', '22-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('26', '3', '23-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('27', '3', '24-09-2016', '11', '1111', 'Bio', 'Some Topic'),
('28', '4', '25-09-2016', '11', '1111', 'Math', 'Some Topic'),
('29', '4', '26-09-2016', '11', '1111', 'Math', 'Some Topic'),
('3', '2', '18-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('30', '4', '27-09-2016', '11', '1111', 'Math', 'Some Topic'),
('31', '4', '28-09-2016', '11', '1111', 'Math', 'Some Topic'),
('32', '4', '28-09-2016', '11', '1111', 'Math', 'Some Topic'),
('33', '4', '28-09-2016', '11', '1111', 'Math', 'Some Topic'),
('34', '4', '28-09-2016', '11', '1111', 'Math', 'Some Topic'),
('35', '4', '28-09-2016', '11', '1111', 'Math', 'Some Topic'),
('4', '2', '18-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('5', '2', '18-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('6', '2', '19-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('7', '2', '19-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('8', '2', '19-09-2016', '11', '1111', 'Physics', 'Some Topic'),
('9', '2', '19-09-2016', '11', '1111', 'Physics', 'Some Topic');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('123', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('admin', 'e86f78a8a3caf0b60d8e74e5942aa6d86dc150cd3c03338aef25b7d2d7e3acc7');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `parentphone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `name`, `phone`, `batch`, `dob`, `address`, `parentphone`) VALUES
('123', 'Shivam Mishra', '9998887776', '1111', '18-08-1995', '15 Yemen Road, Yemen', '9988776655'),
('124', 'Lorem Ipsum', '9988776644', '1111', '18-09-1995', '145 Mumbai', '7788996655');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `subject`) VALUES
('1', 'Teacher1', 'Physics'),
('2', 'Teacher2', 'Chemistry'),
('3', 'Teacher3', 'Biology'),
('4', 'Teacher4', 'Math');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance entry`),
  ADD KEY `lectureid` (`lectureid`),
  ADD KEY `studentid` (`studentid`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`lectureid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`lectureid`) REFERENCES `lecture` (`lectureid`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
