-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 07:04 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplestresult`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `userid` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`userid`, `password`) VALUES
('admin', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `name` varchar(30) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`name`, `id`) VALUES
('FE', 7),
('SE', 8),
('TE', 9),
('BE', 10),
('Demo Class', 88);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `name` varchar(30) NOT NULL,
  `rno` int(3) NOT NULL,
  `class` varchar(30) NOT NULL,
  `sub1` int(3) NOT NULL,
  `sub2` int(3) NOT NULL,
  `sub3` int(3) NOT NULL,
  `sub4` int(3) NOT NULL,
  `sub5` int(3) NOT NULL,
  `marks` int(3) NOT NULL,
  `percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`name`, `rno`, `class`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `marks`, `percentage`) VALUES
('Snehal Bhosale', 10, 'Demo Class', 61, 49, 50, 55, 70, 285, 57),
('Pradnya Kenjale', 5, 'SE', 71, 50, 59, 65, 75, 320, 64),
('Aniket KUmbhar', 11, 'BE', 50, 50, 50, 50, 49, 249, 49.8),
('Gaurav Kadam', 21, 'TE', 72, 68, 82, 59, 76, 357, 71.4),
('Rohit Sharma', 19, 'TE', 71, 78, 73, 82, 85, 389, 77.8);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(30) NOT NULL,
  `rno` int(3) NOT NULL,
  `class_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `rno`, `class_name`) VALUES
('Snehal Bhosale', 10, 'Demo Class'),
('Pradnya Kenjale', 5, 'SE'),
('Aniket Kumbhar', 11, 'BE'),
('Janvhvi Pawar', 9, 'FE'),
('Jeanne Palmer', 2, 'FE'),
('Pratiksha Pramar', 5, 'Nine'),
('Sai Patil', 12, 'SE'),
('Ritu More', 11, 'BE'),
('Pooja David', 15, 'TE'),
('Minu Sathe', 8, 'BE'),
('Sakshi Patil', 9, 'FE'),
('Gaurav Kadam', 21, 'TE'),
('Rohit Sharma', 19, 'TE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `class` (`class`),
  ADD KEY `name` (`name`,`rno`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`name`,`rno`),
  ADD KEY `class_name` (`class_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`name`,`rno`) REFERENCES `students` (`name`, `rno`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`class_name`) REFERENCES `class` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
