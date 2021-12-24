-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 04:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itn1230new`
--

-- --------------------------------------------------------

--
-- Table structure for table `biiling_info`
--

CREATE TABLE `biiling_info` (
  `biid` int(11) NOT NULL,
  `cid` int(100) NOT NULL,
  `date` date NOT NULL,
  `pre_reading` varchar(100) NOT NULL,
  `final_reading` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `paidto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biiling_info`
--

INSERT INTO `biiling_info` (`biid`, `cid`, `date`, `pre_reading`, `final_reading`, `status`, `paidto`) VALUES
(1, 0, '2016-09-08', '0', '0', 'unpaid', ''),
(2, 4, '2016-09-08', '0', '88', 'paid', 'null'),
(3, 5, '2016-09-08', '0', '9', 'paid', 'null'),
(4, 4, '2016-09-08', '88', '6666', 'paid', 'null'),
(5, 5, '2016-09-08', '9', '100', 'unpaid', ''),
(6, 0, '2016-09-08', '0', '0', 'unpaid', ''),
(7, 0, '2016-09-08', '0', '0', 'unpaid', ''),
(8, 7, '2016-09-08', '0', '9', 'unpaid', ''),
(9, 8, '2016-09-08', '0', '8', 'paid', 'null'),
(10, 8, '2016-09-08', '8', '9', 'paid', 'null'),
(11, 8, '2016-09-08', '9', '8', 'paid', 'null'),
(12, 8, '2016-09-08', '9', '88', 'paid', 'null'),
(13, 0, '2016-09-08', '0', '0', 'unpaid', ''),
(14, 0, '2016-09-08', '0', '0', 'unpaid', ''),
(15, 8, '2016-09-08', '9', '66', 'paid', 'null'),
(16, 7, '2016-09-08', '9', '78', 'unpaid', ''),
(17, 7, '2016-09-08', '9', '12', 'unpaid', ''),
(18, 7, '2016-09-08', '9', '6', 'paid', 'null'),
(19, 10, '2016-09-09', '0', '77', 'unpaid', ''),
(20, 9, '2016-09-09', '0', '9', 'paid', 'null'),
(21, 8, '2016-09-09', '9', '10', 'paid', 'null'),
(22, 9, '2016-09-09', '9', '71', 'paid', 'null'),
(23, 8, '2016-09-10', '9', '44', 'paid', 'null'),
(24, 9, '2016-09-13', '9', '11', 'paid', 'null'),
(25, 0, '2016-09-13', '0', '0', 'unpaid', ''),
(26, 11, '2016-09-13', '0', '9', 'paid', 'null'),
(27, 11, '2016-09-13', '9', '10', 'paid', 'null'),
(28, 9, '2016-09-19', '9', '33', 'paid', 'null'),
(29, 11, '2016-09-19', '9', '22', 'paid', 'null'),
(30, 7, '2016-09-19', '9', '10', 'paid', 'null'),
(31, 9, '2016-09-19', '9', '10', 'unpaid', ''),
(32, 9, '2016-09-20', '9', '12', 'paid', 'null'),
(33, 8, '2016-09-20', '9', '88', 'paid', 'null'),
(34, 9, '2016-09-20', '9', '55', 'paid', 'null'),
(35, 9, '2016-09-22', '9', '10', 'paid', 'null'),
(36, 11, '2016-09-23', '9', '9', 'paid', 'null'),
(37, 7, '2016-09-23', '9', '10', 'paid', 'null'),
(38, 8, '2016-09-23', '9', '12', 'paid', 'null'),
(39, 8, '2016-09-23', '9', '11', 'paid', 'null'),
(40, 8, '2016-09-23', '9', '12', 'paid', 'null'),
(41, 8, '2016-09-23', '9', '13', 'paid', 'null'),
(42, 8, '2016-09-24', '9', '12', 'paid', 'null'),
(43, 9, '2016-09-24', '9', '14', 'unpaid', ''),
(44, 8, '2016-09-25', '9', '12', 'paid', 'null'),
(45, 8, '2016-09-25', '9', '12', 'paid', 'null'),
(46, 8, '2016-10-02', '9', '11', 'paid', 'null'),
(47, 7, '2016-10-03', '9', '63', 'unpaid', ''),
(48, 8, '2016-10-03', '9', '10', 'paid', 'null'),
(49, 8, '2016-10-03', '9', '22', 'paid', 'null'),
(50, 11, '2016-10-03', '9', '20', 'paid', 'null'),
(51, 8, '2016-10-14', '9', '3', 'paid', 'null'),
(52, 8, '2016-10-14', '9', '10', 'paid', 'null'),
(53, 9, '2016-10-14', '9', '10', 'unpaid', ''),
(54, 7, '2016-10-14', '9', '44', 'unpaid', ''),
(55, 7, '2016-10-14', '9', '22', 'unpaid', ''),
(56, 7, '2016-10-14', '9', '11', 'unpaid', ''),
(57, 0, '2016-10-14', '0', '0', 'unpaid', ''),
(58, 12, '2016-10-14', '0', '13', 'unpaid', ''),
(59, 12, '2016-10-14', '13', '4', 'paid', 'null'),
(60, 0, '2016-10-23', '0', '0', 'unpaid', ''),
(61, 13, '2016-10-23', '0', '7', 'unpaid', ''),
(62, 13, '2016-10-23', '7', '4', 'unpaid', ''),
(63, 13, '2016-10-23', '7', '12', 'unpaid', ''),
(64, 11, '2016-10-25', '9', '78', 'paid', 'null'),
(65, 8, '2016-11-22', '9', '22', 'paid', 'null'),
(66, 8, '2016-11-22', '9', '12', 'paid', 'null'),
(67, 8, '2016-11-22', '9', '22', 'paid', 'null'),
(68, 11, '2016-11-30', '9', '12', 'paid', 'null'),
(69, 9, '2016-12-03', '9', '9', 'unpaid', ''),
(70, 8, '2016-12-03', '9', '4', 'paid', 'null'),
(71, 8, '2016-12-07', '9', '10', 'paid', 'null'),
(72, 11, '2016-12-07', '9', '4', 'paid', 'null'),
(73, 8, '2016-12-07', '9', '10', 'unpaid', 'null'),
(74, 8, '2016-12-07', '9', '90', 'paid', 'null'),
(75, 13, '2016-12-07', '7', '9', 'unpaid', 'null'),
(76, 11, '2016-12-07', '9', '4', 'unpaid', 'null'),
(77, 8, '2016-12-07', '90', '8', 'unpaid', 'null'),
(78, 8, '2016-12-07', '90', '8', 'unpaid', 'null'),
(79, 7, '2016-12-07', '9', '8', 'unpaid', 'null'),
(80, 11, '2016-12-07', '9', '7', 'unpaid', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `address`, `contactno`, `type`, `date`) VALUES
(1, 'Adit', 'Bahadur', 'Deshar', 'null', 'Chapagaun', '888888', 'Chairman', '2016-09-05'),
(2, 'Mapi', 'ashra', 'Mir', 'null', 'sasa', '11', 'Secretary', '2016-09-06'),
(3, 'Naila', 'a', 'Mir', 'null', 'Lalitpur', '33', 'Manager', '2016-09-08'),
(4, 'Sujiyana', '', 'Deshar', 'null', 'Chapagaun', '34', 'Member', '2016-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `cid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `nationalityconfirmation` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `houseno` varchar(100) NOT NULL,
  `meterno` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`cid`, `firstname`, `middlename`, `lastname`, `gender`, `fathername`, `nationalityconfirmation`, `city`, `address`, `phone`, `email`, `houseno`, `meterno`, `date`) VALUES
(7, 'Catlyn', 'Tully', 'Stark', 'null', 'Edmund Stark', 'Passport', 'Westeroes', 'Winterfell', '123', 'Winter@gmail.com', '1', '1', '2016-09-08'),
(8, 'Lyanna', 'aaa', 'Stark', 'null', 'Ed', 'Election Card', 'Kathmandu', 'sundhara', '567', 'sahg@yahoo.com', '2', '2', '2016-09-08'),
(9, 'Tri', 'Lokesh', 'Roy', 'M', 'gaga Roy', 'Election Card', 'Kathmandu', 'Bansedhwor', '34', 'tree@yahoo.com', '5', '7', '2016-09-08'),
(11, 'Honey', 'Maka', 'Deshar', 'F', 'Narayan', 'Election Card', 'Lalitpur', 'Bajrabarahi', '97', 'jh@hahu.com', '52', '52', '2016-09-13'),
(12, 'maka', 'paka', 'daka', 'M', 'aaa', 'Passport', 'ala', 'sas', 'dsd', 'as', '2', '4', '2016-10-14'),
(13, 'lazy', 'crazy', 'lily', 'F', 'lolo', 'Election Card', 'lalitpur', 'lalitpur', '12222', 'asgjg@hannana10', '10', '3', '2016-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `course`, `price`, `duration`) VALUES
(1, 'Java', '1500', '3 month'),
(2, 'Apple', '200', '3 m'),
(3, 'ljb', 'avadv', 'davd');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `firstname`, `middlename`, `lastname`, `gender`, `address`, `phone`, `email`, `type`) VALUES
(2, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(3, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(4, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(5, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(6, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(7, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(8, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(9, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(10, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(11, 'Shima', 'Maiya', 'Mishra', 'null', 'jawalakhel', '111', 'saf', 'Accountant'),
(12, 'Ashma', 'a', 'shrestga', 'null', 'aa', 'aaa', 'aaa', 'Administrator'),
(13, 's', 'gg', 'gg', 'null', 'bb', '', '', 'Administrator'),
(14, 'Rikesh', 'muni', 'Shakya', 'null', 'Mangalbazar', '3563', 'fhgjfa@yahoo.com', 'Technician'),
(15, 'Reema', 'Loa', 'Lama', 'F', 'Chobar', '5467', 'vhgvd@yahoo.com', 'Bill Boy');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `address`, `gender`, `cid`) VALUES
(1, 'Ball', 'Cat', 'male', 1),
(2, 'Ball', 'Cat', 'male', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `user`, `password`, `type`) VALUES
(1, 'Juned', 'root', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
