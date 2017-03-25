-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 05:54 PM
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

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `attendance entry` varchar(100) NOT NULL,
  `lectureid` varchar(100) NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `Attendance` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance entry`, `lectureid`, `studentid`, `Attendance`, `Subject`) VALUES
('EN1', '1', '123', 'P', 'Physics'),
('EN10', '10', '123', 'P', 'Chem'),
('EN11', '11', '123', 'P', 'Chem'),
('EN12', '12', '123', 'A', 'Chem'),
('EN13', '13', '123', 'P', 'Chem'),
('EN14', '14', '123', 'P', 'Chem'),
('EN15', '15', '123', 'P', 'Chem'),
('EN16', '16', '123', 'P', 'Chem'),
('EN17', '17', '123', 'A', 'Chem'),
('EN18', '18', '123', 'P', 'Chem'),
('EN19', '19', '123', 'P', 'Chem'),
('EN2', '2', '123', 'P', 'Physics'),
('EN20', '20', '123', 'P', 'Bio'),
('EN21', '21', '123', 'P', 'Bio'),
('EN22', '22', '123', 'A', 'Bio'),
('EN23', '23', '123', 'P', 'Bio'),
('EN24', '24', '123', 'P', 'Bio'),
('EN25', '25', '123', 'P', 'Bio'),
('EN26', '26', '123', 'A', 'Bio'),
('EN27', '27', '123', 'P', 'Bio'),
('EN28', '28', '123', 'A', 'Math'),
('EN29', '29', '123', 'P', 'Math'),
('EN3', '3', '123', 'A', 'Physics'),
('EN30', '30', '123', 'P', 'Math'),
('EN31', '31', '123', 'P', 'Math'),
('EN32', '32', '123', 'P', 'Math'),
('EN33', '33', '123', 'P', 'Math'),
('EN34', '34', '123', 'P', 'Math'),
('EN35', '35', '123', 'A', 'Math'),
('EN36', '1', '124', 'P', 'Physics'),
('EN37', '2', '124', 'P', 'Physics'),
('EN38', '3', '124', 'P', 'Physics'),
('EN39', '4', '124', 'P', 'Physics'),
('EN4', '4', '123', 'P', 'Physics'),
('EN40', '5', '124', 'P', 'Physics'),
('EN41', '6', '124', 'P', 'Physics'),
('EN42', '7', '124', 'P', 'Physics'),
('EN43', '8', '124', 'P', 'Physics'),
('EN44', '9', '124', 'A', 'Physics'),
('EN45', '10', '124', 'P', 'Chem'),
('EN46', '11', '124', 'P', 'Chem'),
('EN47', '12', '124', 'P', 'Chem'),
('EN48', '13', '124', 'P', 'Chem'),
('EN49', '14', '124', 'P', 'Chem'),
('EN5', '5', '123', 'P', 'Physics'),
('EN50', '15', '124', 'P', 'Chem'),
('EN51', '16', '124', 'A', 'Chem'),
('EN52', '17', '124', 'P', 'Chem'),
('EN53', '18', '124', 'P', 'Chem'),
('EN54', '19', '124', 'P', 'Chem'),
('EN55', '20', '124', 'P', 'Bio'),
('EN56', '21', '124', 'P', 'Bio'),
('EN57', '22', '124', 'P', 'Bio'),
('EN58', '23', '124', 'P', 'Bio'),
('EN59', '24', '124', 'A', 'Bio'),
('EN6', '6', '123', 'P', 'Physics'),
('EN60', '25', '124', 'P', 'Bio'),
('EN61', '26', '124', 'P', 'Bio'),
('EN62', '27', '124', 'A', 'Bio'),
('EN63', '28', '124', 'P', 'Math'),
('EN64', '29', '124', 'P', 'Math'),
('EN65', '30', '124', 'P', 'Math'),
('EN66', '31', '124', 'P', 'Math'),
('EN67', '32', '124', 'P', 'Math'),
('EN68', '33', '124', 'A', 'Math'),
('EN69', '34', '124', 'P', 'Math'),
('EN7', '7', '123', 'A', 'Physics'),
('EN70', '35', '124', 'P', 'Math'),
('EN8', '8', '123', 'P', 'Physics'),
('EN9', '9', '123', 'P', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
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

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('123', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('124', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('125', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('126', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('127', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('128', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('129', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('130', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('131', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('132', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('133', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('134', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('135', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('136', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('137', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('138', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('139', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('140', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('141', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('142', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('143', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('144', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('145', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('146', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('147', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('148', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('149', '9a900403ac313ba27a1bc81f0932652b8020dac92c234d98fa0b06bf0040ecfd'),
('admin', 'e86f78a8a3caf0b60d8e74e5942aa6d86dc150cd3c03338aef25b7d2d7e3acc7');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
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
('124', 'Lorem Ipsum', '9988776644', '1111', '18-09-1995', '145 Mumbai', '7788996655'),
('125', 'Basil Sandoval', '9988776655', '1111', '18-08-1995', '15 Yemen Road Yemen', '9988776655'),
('126', 'Chase Gamble', '9988776655', '1111', '18-08-1995', '16 Yemen Road Yemen', '9988776655'),
('127', 'Jordan James', '9988776655', '1111', '18-08-1995', '17 Yemen Road Yemen', '9988776655'),
('128', 'Chancellor Meyer', '9988776655', '1111', '18-08-1995', '18 Yemen Road Yemen', '9988776655'),
('129', 'Xavier Rich', '9988776655', '1111', '18-08-1995', '19 Yemen Road Yemen', '9988776655'),
('130', 'Xander Knight', '9988776655', '1111', '18-08-1995', '20 Yemen Road Yemen', '9988776655'),
('131', 'Joshua Davenport', '9988776655', '1111', '18-08-1995', '21 Yemen Road Yemen', '9988776655'),
('132', 'Perry William', '9988776655', '1111', '18-08-1995', '22 Yemen Road Yemen', '9988776655'),
('133', 'Cruz Sheppard', '9988776655', '1111', '18-08-1995', '23 Yemen Road Yemen', '9988776655'),
('134', 'Felix Holloway', '9988776655', '1111', '18-08-1995', '24 Yemen Road Yemen', '9988776655'),
('135', 'Caleb George', '9988776655', '1110', '18-08-1995', '25 Yemen Road Yemen', '9988776655'),
('136', 'Austin Drake', '9988776655', '1110', '18-08-1995', '26 Yemen Road Yemen', '9988776655'),
('137', 'Laith Nielsen', '9988776655', '1110', '18-08-1995', '27 Yemen Road Yemen', '9988776655'),
('138', 'Keith Solomon', '9988776655', '1110', '18-08-1995', '28 Yemen Road Yemen', '9988776655'),
('139', 'Emerson Wong', '9988776655', '1110', '18-08-1995', '29 Yemen Road Yemen', '9988776655'),
('140', 'Arthur Rush', '9988776655', '1110', '18-08-1995', '30 Yemen Road Yemen', '9988776655'),
('141', 'Baker Myers', '9988776655', '1110', '18-08-1995', '31 Yemen Road Yemen', '9988776655'),
('142', 'Charles Nguyen', '9988776655', '1110', '18-08-1995', '32 Yemen Road Yemen', '9988776655'),
('143', 'William Wilkerson', '9988776655', '1110', '18-08-1995', '33 Yemen Road Yemen', '9988776655'),
('144', 'Ezekiel Rose', '9988776655', '1101', '18-08-1995', '34 Yemen Road Yemen', '9988776655'),
('145', 'Harding Workman', '9988776655', '1101', '18-08-1995', '35 Yemen Road Yemen', '9988776655'),
('146', 'Lamar Dalton', '9988776655', '1101', '18-08-1995', '36 Yemen Road Yemen', '9988776655'),
('147', 'Dale Hawkins', '9988776655', '1101', '18-08-1995', '37 Yemen Road Yemen', '9988776655'),
('148', 'Warren Townsend', '9988776655', '1101', '18-08-1995', '38 Yemen Road Yemen', '9988776655'),
('149', 'Dieter Wilkins', '9988776655', '1101', '18-08-1995', '39 Yemen Road Yemen', '9988776655');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `subject`) VALUES
('1', 'Chandler Bing', 'Physics'),
('2', 'Ross Gellar', 'Chemistry'),
('3', 'Joey Tribbiani', 'Biology'),
('4', 'Rachael Green', 'Math');

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
