-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 08:26 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `regdate` text NOT NULL,
  `first_name` varchar(75) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `father_name` varchar(75) NOT NULL,
  `mother_name` varchar(75) NOT NULL,
  `dob` text NOT NULL,
  `gender` varchar(15) NOT NULL,
  `course` varchar(25) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `register_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin` int(11) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`regdate`, `first_name`, `last_name`, `father_name`, `mother_name`, `dob`, `gender`, `course`, `sem`, `register_no`, `address`, `city`, `pin`, `phno`, `email`, `photo`, `username`, `password`, `status`) VALUES
('27/01/2021', 'Feke', 'Hailemariam', 'Wagayelew', 'Etenesh', '14/05/2000', 'MALE', 'MCA', 'FIRST', '12', 'Adiss abeba', 'Adiss abeba', 7, '+251948309006', 'softwarefeke@gmail.com', 'WIN_20201215_12_20_26_Pro.jpg', 'feke', 'feke', 'accept');

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE `subject_master` (
  `sub_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`sub_id`, `subject`, `logo`) VALUES
(2, 'JAVA', 'Desert.jpg'),
(5, 'CPP', 'p1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notes_details`
--

CREATE TABLE `tbl_notes_details` (
  `notes_id` int(11) NOT NULL,
  `course` text NOT NULL,
  `subject` text NOT NULL,
  `topic` text NOT NULL,
  `date` text NOT NULL,
  `notes` text NOT NULL,
  `video` text NOT NULL,
  `summary` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notes_details`
--

INSERT INTO `tbl_notes_details` (`notes_id`, `course`, `subject`, `topic`, `date`, `notes`, `video`, `summary`) VALUES
(7, 'MCA', 'JAVA', 'INTRODUCTION', '30/04/2016', 'os_linux.pdf', 'bomb.mp4', ''),
(10, 'MCA', 'CPP', 'Try this', '28/01/2021', 'SRS-Impl.pdf', 'perfect.mp4', 'Here is the summary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`register_no`);

--
-- Indexes for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `tbl_notes_details`
--
ALTER TABLE `tbl_notes_details`
  ADD PRIMARY KEY (`notes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject_master`
--
ALTER TABLE `subject_master`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_notes_details`
--
ALTER TABLE `tbl_notes_details`
  MODIFY `notes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
