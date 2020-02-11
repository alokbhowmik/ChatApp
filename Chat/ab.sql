-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2020 at 01:31 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ab`
--

-- --------------------------------------------------------

--
-- Table structure for table `public_chat`
--

CREATE TABLE `public_chat` (
  `public_chat_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_chat`
--

INSERT INTO `public_chat` (`public_chat_id`, `post`, `username`, `date`, `status`) VALUES
(1, 'Hi this is alok new in php and database connection ', 'alok123', '2020-02-06 10:27:53', 1),
(2, 'This is today\'s news', 'alok123', '2020-02-07 12:31:28', 1),
(3, 'dfghjkllkjhgfd', 'alok123', '2020-02-09 12:40:35', 1),
(4, 'vbnm', 'Alok Bhowmik', '2020-02-09 12:41:08', 1),
(5, 'nbvc', 'Alok Bhowmik', '2020-02-09 12:42:22', 1),
(6, 'lkjhg', 'Alok Bhowmik', '2020-02-09 12:47:02', 1),
(7, 'lkjhg', 'Alok Bhowmik', '2020-02-09 12:48:31', 1),
(8, 'lkjhgf', 'Alok Bhowmik', '2020-02-09 12:50:48', 1),
(9, 'kjhvc', 'Alok Bhowmik', '2020-02-09 12:51:32', 1),
(10, 'kjhgf', 'Alok Bhowmik', '2020-02-09 12:54:56', 1),
(11, 'lkjhgf', 'Alok Bhowmik', '2020-02-09 12:55:21', 1),
(12, 'mnb', 'Alok Bhowmik', '2020-02-09 12:55:54', 1),
(13, 'kjhgf', 'Alok Bhowmik', '2020-02-09 13:04:02', 1),
(14, ',mnbv', 'Alok Bhowmik', '2020-02-09 13:04:09', 1),
(15, ',mnbv', 'Alok Bhowmik', '2020-02-09 13:04:11', 1),
(16, ',mnbv', 'Alok Bhowmik', '2020-02-09 13:04:11', 1),
(17, 'gfds', 'Alok Bhowmik', '2020-02-09 13:05:48', 1),
(18, 'lkjhgf', 'Alok Bhowmik', '2020-02-09 13:07:06', 1),
(19, 'jhgfds', 'Alok Bhowmik', '2020-02-09 13:11:39', 1),
(20, 'hi it is alok ', 'Alok Bhowmik', '2020-02-09 13:14:43', 1),
(21, 's', 'Alok Bhowmik', '2020-02-09 13:15:29', 1),
(22, 'sdfghj', 'Alok Bhowmik', '2020-02-09 13:16:07', 1),
(23, 'gfdxz', 'Alok Bhowmik', '2020-02-09 13:16:48', 1),
(24, 'mnbv', 'Alok Bhowmik', '2020-02-09 13:20:05', 1),
(25, 'sdfghj', 'Alok Bhowmik', '2020-02-09 13:20:10', 1),
(26, '', 'Alok Bhowmik', '2020-02-09 13:20:44', 1),
(27, 'vbnm', 'Alok Bhowmik', '2020-02-09 13:20:47', 1),
(28, 'vbnm', 'Alok Bhowmik', '2020-02-09 13:23:31', 1),
(29, 'ghj', 'Alok Bhowmik', '2020-02-09 13:24:53', 1),
(30, 'ghj', 'Alok Bhowmik', '2020-02-09 13:25:04', 1),
(31, 'fgh', 'Alok Bhowmik', '2020-02-09 13:26:58', 1),
(32, 'dcvbnm', 'Alok Bhowmik', '2020-02-09 13:28:23', 1),
(33, 'xcvbnm', 'Alok Bhowmik', '2020-02-09 13:29:41', 1),
(34, '/lkjhgf', 'Alok Bhowmik', '2020-02-09 13:34:00', 1),
(35, ',mnbvc', 'Alok Bhowmik', '2020-02-09 13:34:02', 1),
(36, 'asdfghjk', 'Alok Bhowmik', '2020-02-09 13:34:06', 1),
(37, 'kjhgfd', 'Alok Bhowmik', '2020-02-09 13:34:50', 1),
(38, '.,mnbvcx', 'Alok Bhowmik', '2020-02-09 13:37:00', 1),
(39, '.,mnbvc', 'Alok Bhowmik', '2020-02-09 13:37:25', 1),
(40, '.,mnbvc', 'undefined', '2020-02-09 13:37:27', 1),
(41, ',mnbvc', 'Alok Bhowmik', '2020-02-09 13:46:03', 1),
(42, 'hi it is alok', 'Alok Bhowmik', '2020-02-09 13:50:44', 1),
(43, 'hi it is alok ', 'alok1', '2020-02-09 14:17:01', 1),
(44, 'hi it is alok', 'alok1', '2020-02-09 14:25:14', 1),
(45, ';lkjhg', 'alok1', '2020-02-09 15:16:01', 1),
(46, 'dsa', 'alok1', '2020-02-09 15:23:09', 1),
(47, 'good evening', 'alok1', '2020-02-09 15:24:38', 1),
(48, 'ddd', 'alok1', '2020-02-09 15:29:02', 1),
(49, 'hi', 'alok1', '2020-02-10 05:31:01', 1),
(50, 'hello', 'alok1', '2020-02-10 05:31:09', 1),
(51, 'hi', 'alok1', '2020-02-10 05:34:38', 1),
(52, 'good morning kolkata', 'alok1', '2020-02-10 05:59:49', 1),
(53, '', 'alok1', '2020-02-10 05:59:49', 1),
(54, 'sdfghjhi', 'alok1', '2020-02-10 06:29:59', 1),
(55, 'hi', 'alok1', '2020-02-10 06:30:12', 1),
(56, 'welcome', 'alok1', '2020-02-10 06:36:44', 1),
(57, 'alok', 'alok1', '2020-02-10 07:17:53', 1),
(58, 'geotech', 'alok1', '2020-02-10 07:23:22', 1),
(59, 'abc1', 'alok1', '2020-02-10 07:23:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `name`, `role`) VALUES
(1, 'admin', '', 'e20f517179e9cd52ae29dae43c121b95', 'Admin', 1),
(2, 'alok123', 'alok@gm.in', 'alok@1997', 'Alok', 0),
(3, 'alok1', 'alokbhowmic01@gmail.com', 'cd7946a95bf808bd3b64059cb50da9dc', 'alok', 0),
(4, 'fghfgh', 'fgh@gh.gh', '0f98df87c7440c045496f705c7295344', '', 0),
(5, 'alok1', '', 'cd7946a95bf808bd3b64059cb50da9dc', '', 0),
(6, 'Alok@123', 'alok@gm.in', 'cd7946a95bf808bd3b64059cb50da9dc', 'Alokx', 0),
(7, 'Alok@123', 'alok@gm.in', 'cd7946a95bf808bd3b64059cb50da9dc', 'Alokx', 0),
(8, 'Alok@123', 'alok@gm.in', 'cd7946a95bf808bd3b64059cb50da9dc', 'Alokx', 0),
(9, 'Alok@123', 'alok@gm.in', 'cd7946a95bf808bd3b64059cb50da9dc', 'Alokx', 0),
(10, 'Alok@123', 'alok@gm.in', 'cd7946a95bf808bd3b64059cb50da9dc', 'Alokx', 0),
(11, 'Alokbhowmic01@gmail.com', 'alokbhowmic01@gmail.com', 'cd7946a95bf808bd3b64059cb50da9dc', 'alok', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `public_chat`
--
ALTER TABLE `public_chat`
  ADD PRIMARY KEY (`public_chat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `public_chat`
--
ALTER TABLE `public_chat`
  MODIFY `public_chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
