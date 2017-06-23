-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 06:13 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`) VALUES
(1, 'mlm', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `day_bal` int(11) NOT NULL,
  `current_bal` int(11) NOT NULL,
  `total_bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `userid`, `day_bal`, `current_bal`, `total_bal`) VALUES
(1, 'user@tutorialvilla.com', 200, 0, 200),
(6, 'user1@gmail.com', 100, 100, 100),
(7, 'user2@gmail.com', 0, 0, 0),
(8, 'user3@gmail.com', 0, 0, 0),
(9, 'user4@gmail.com', 0, 0, 0),
(10, 'user5@gmail.com', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `income_received`
--

CREATE TABLE `income_received` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_received`
--

INSERT INTO `income_received` (`id`, `userid`, `amount`, `date`) VALUES
(1, 'user@tutorialvilla.com', 200, '2017-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `pin_list`
--

CREATE TABLE `pin_list` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_list`
--

INSERT INTO `pin_list` (`id`, `userid`, `pin`, `status`) VALUES
(1, 'user@tutorialvilla.com', 723913, 'close'),
(2, 'user@tutorialvilla.com', 551895, 'close'),
(3, 'user@tutorialvilla.com', 237823, 'open'),
(4, 'user@tutorialvilla.com', 921200, 'open'),
(5, 'user@tutorialvilla.com', 582739, 'open'),
(6, 'user@tutorialvilla.com', 295144, 'open'),
(7, 'user1@gmail.com', 658270, 'open'),
(8, 'user1@gmail.com', 231149, 'open'),
(9, 'user1@gmail.com', 123400, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `pin_request`
--

CREATE TABLE `pin_request` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_request`
--

INSERT INTO `pin_request` (`id`, `email`, `amount`, `date`, `status`) VALUES
(2, 'user@tutorialvilla.com', 1200, '2016-11-22', 'close'),
(3, 'user@tutorialvilla.com', 1800, '2016-11-22', 'close'),
(4, 'user@tutorialvilla.com', 2100, '2016-12-31', 'close'),
(5, 'user@tutorialvilla.com', 3000, '2017-02-06', 'close'),
(6, 'user@tutorialvilla.com', 2000, '2017-02-09', 'close'),
(7, 'user1@gmail.com', 1000, '2017-02-09', 'close');

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `left` varchar(50) NOT NULL,
  `right` varchar(50) NOT NULL,
  `leftcount` int(11) NOT NULL,
  `rightcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `userid`, `left`, `right`, `leftcount`, `rightcount`) VALUES
(1, 'user@tutorialvilla.com', 'user1@gmail.com', 'user2@gmail.com', 3, 2),
(6, 'user1@gmail.com', 'user3@gmail.com', 'user5@gmail.com', 1, 1),
(7, 'user2@gmail.com', 'user4@gmail.com', '', 1, 0),
(8, 'user3@gmail.com', '', '', 0, 0),
(9, 'user4@gmail.com', '', '', 0, 0),
(10, 'user5@gmail.com', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `account` varchar(20) NOT NULL,
  `under_userid` varchar(50) NOT NULL,
  `side` enum('left','right') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `mobile`, `address`, `account`, `under_userid`, `side`) VALUES
(1, 'user@tutorialvilla.com', '123456', '9897883700', 'Gurgaon', '98978789789', '', 'left'),
(6, 'user1@gmail.com', '123456', '98900809', 'Gurgaon', '08098098', 'user@tutorialvilla.com', 'left'),
(7, 'user2@gmail.com', '123456', '78897890', 'Gurgaon', '890989', 'user@tutorialvilla.com', 'right'),
(8, 'user3@gmail.com', '123456', '80989', 'Gurgaon', 'ou89u89089', 'user1@gmail.com', 'left'),
(9, 'user4@gmail.com', '123456', '97897', 'jkljlj', '089098', 'user2@gmail.com', 'left'),
(10, 'user5@gmail.com', '123456', '9897645676', 'Delhi', '345738974943', 'user1@gmail.com', 'right');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_received`
--
ALTER TABLE `income_received`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_list`
--
ALTER TABLE `pin_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_request`
--
ALTER TABLE `pin_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `income_received`
--
ALTER TABLE `income_received`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pin_list`
--
ALTER TABLE `pin_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pin_request`
--
ALTER TABLE `pin_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
