-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2016 at 03:31 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloggerspot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`username`, `password`) VALUES
('test', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tbl`
--

CREATE TABLE `blog_tbl` (
  `blogid` int(11) NOT NULL,
  `blogtitle` varchar(50) DEFAULT NULL,
  `blogcontent` text,
  `blogcategory` varchar(20) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `blogdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_tbl`
--

CREATE TABLE `comment_tbl` (
  `commentid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `blogid` int(11) DEFAULT NULL,
  `commenttext` varchar(100) DEFAULT NULL,
  `commentdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `emailid` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contactno` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`userid`, `firstname`, `lastname`, `password`, `age`, `gender`, `emailid`, `dob`, `contactno`, `city`, `state`, `country`) VALUES
(11234, 'Harshal', 'Eri', '@four123', 24, 'Male', 'har@t.com', '1991-08-10', 2045454281, 'pune', 'Maharashtra', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `blog_tbl`
--
ALTER TABLE `blog_tbl`
  ADD PRIMARY KEY (`blogid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `comment_tbl`
--
ALTER TABLE `comment_tbl`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `blogid` (`blogid`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_tbl`
--
ALTER TABLE `blog_tbl`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_tbl`
--
ALTER TABLE `comment_tbl`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11235;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_tbl`
--
ALTER TABLE `blog_tbl`
  ADD CONSTRAINT `blog_tbl_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_tbl` (`userid`);

--
-- Constraints for table `comment_tbl`
--
ALTER TABLE `comment_tbl`
  ADD CONSTRAINT `comment_tbl_ibfk_1` FOREIGN KEY (`blogid`) REFERENCES `blog_tbl` (`blogid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
