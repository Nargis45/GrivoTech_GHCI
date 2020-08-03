-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2020 at 04:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sihh4`
--

-- --------------------------------------------------------

--
-- Table structure for table `academy`
--

CREATE TABLE `academy` (
  `id` int(11) NOT NULL,
  `collegeName` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academy`
--

INSERT INTO `academy` (`id`, `collegeName`, `email`, `password`, `role`, `postingDate`, `updationDate`) VALUES
(1, '', 'aku@gmail.com', 'b91d16cd195b61d2c81339e7b0f0ea78', NULL, '2020-07-24 13:25:24', '2020-08-02 14:18:49'),
(2, 'A.G.K.M College', 'college@grivo.com', '12345', NULL, '2020-07-24 13:25:24', '2020-08-02 23:08:25'),
(3, 'A.J. College of Education', 'aj@gmail.com', '87fe7ca061ef2bf8173d178a40bb84a3', NULL, '2020-07-24 13:26:23', '2020-07-28 08:57:49'),
(4, 'A.J. Kalasala', 'kalasala@gmail.com', '521a7b1188adfe50929716e3bff67276', NULL, '2020-07-24 13:26:23', '2020-07-28 08:58:24'),
(5, 'A.N.R College', 'anr@gmail.com', '48c6da88a8f531ebb10e7edb5bc7f925', NULL, '2020-07-24 13:27:01', '2020-07-28 08:58:48'),
(6, 'A.P. residential Degree College', 'ap@gmail.com', 'd32292faf6208571605cba2587d76fed', NULL, '2020-07-24 13:27:01', '2020-07-28 08:59:10'),
(7, 'Andhra Christian College', 'andhra@gmail.com', '47c549456d92c93d5e38f8369b76f850', NULL, '2020-07-24 13:27:36', '2020-07-28 08:59:40'),
(8, 'B.B.H. College', 'bbh@gmail.com', '898a63b3bd88dfa69821d44201f41da8', NULL, '2020-07-24 13:27:36', '2020-07-28 09:00:03'),
(9, 'Government Degree College', 'gov@gmail.com', 'ce0c0e764e89b4846a4bf87f97171dec', NULL, '2020-07-24 13:28:39', '2020-07-28 09:01:08'),
(10, 'K.L. College of Engineering', 'kl@gmail.com', 'b18caa50327ce3d6f531309f6d7a6806', NULL, '2020-07-24 13:28:39', '2020-07-28 09:01:42'),
(12, 'Woodbine Modern School', 'modern@gmail.com', '2b25e83495060d52b3bcb8051245222d', NULL, '2020-07-28 07:41:36', '2020-07-28 09:02:12'),
(13, 'Rose Public School', 'rose@gmail.com', 'rose@123', NULL, '2020-07-31 15:10:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `updationDate` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `updationDate`) VALUES
(3, 'admin@grivo.com', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Ragging', 'bvgvcgdhv', '2020-07-23 16:41:21', NULL),
(2, 'Harrasment', NULL, '2020-07-23 16:41:21', NULL),
(3, 'Faculty Behaviour', NULL, '2020-07-23 16:42:16', NULL),
(4, 'Academic Probations', NULL, '2020-07-23 16:42:16', NULL),
(5, 'Hostel', NULL, '2020-07-23 16:42:44', NULL),
(6, 'SC/ST', NULL, '2020-07-23 16:42:44', NULL),
(7, 'Canteen', NULL, '2020-07-23 16:43:10', NULL),
(8, 'Transport', NULL, '2020-07-23 16:43:10', NULL),
(9, 'Cleanliness', NULL, '2020-07-23 16:43:39', NULL),
(10, 'Fees', NULL, '2020-07-23 16:43:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `grievanceId` int(11) DEFAULT NULL,
  `complain` mediumtext DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `isAnonymous` int(11) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(30) DEFAULT NULL,
  `lastUdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isGroupComplaint` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`complaintNumber`, `userId`, `grievanceId`, `complain`, `proof`, `isAnonymous`, `regDate`, `status`, `lastUdationDate`, `isGroupComplaint`) VALUES
(192, 110, 2, 'This is a harassment complaint.', '', 0, '2020-08-02 23:04:36', 'closed', '2020-08-03 10:26:59', 0),
(193, 110, 3, 'This is a petition regarding change of principal.', '', 0, '2020-08-02 23:05:01', NULL, NULL, 1),
(197, 110, 8, 'I have to travel long distance', '', 0, '2020-08-03 07:54:09', NULL, NULL, 0),
(198, 110, 5, 'washroom is not clean', '', 0, '2020-08-03 07:55:21', NULL, NULL, 1),
(199, 110, 5, 'hostel complaint 1', '', 0, '2020-08-03 08:46:18', NULL, NULL, 0),
(200, 110, 7, 'food not good', '', 0, '2020-08-03 09:10:15', NULL, NULL, 0),
(201, 110, 1, 'this is ragging case 3', '', 0, '2020-08-03 10:13:47', 'in process', '2020-08-03 10:17:38', 0),
(202, 110, 2, 'this is harrasment case 3', '', 0, '2020-08-03 10:14:00', 'closed', '2020-08-03 10:18:13', 0),
(203, 110, 3, 'this is faculty case 3', '', 0, '2020-08-03 10:14:36', 'in process', '2020-08-03 10:20:04', 0),
(204, 110, 4, 'this is academic case 3', '', 0, '2020-08-03 10:14:54', 'closed', '2020-08-03 10:20:36', 0),
(205, 110, 5, 'this is hostel case 3', '', 0, '2020-08-03 10:15:08', 'in process', '2020-08-03 10:20:57', 0),
(206, 110, 6, 'this is sc/st case 3', '', 0, '2020-08-03 10:15:23', NULL, NULL, 0),
(207, 110, 7, 'this is canteen case 3', '', 0, '2020-08-03 10:15:50', NULL, NULL, 0),
(208, 110, 8, 'this is transport case 3', '', 0, '2020-08-03 10:16:04', NULL, NULL, 0),
(209, 110, 9, 'this is cleanliness case 3', '', 0, '2020-08-03 10:16:19', NULL, NULL, 0),
(210, 110, 10, 'this is fees case 3', '', 0, '2020-08-03 10:16:31', 'closed', '2020-08-03 10:26:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(33) DEFAULT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(35, 192, 'in process', 'will work on it', '2020-08-03 08:36:50'),
(36, 201, 'in process', 'case in progress', '2020-08-03 10:17:38'),
(37, 202, 'closed', 'case in solved', '2020-08-03 10:18:13'),
(38, 203, 'in process', 'case in progress', '2020-08-03 10:20:04'),
(39, 204, 'closed', 'case in closed', '2020-08-03 10:20:35'),
(40, 205, 'in process', 'case in progress', '2020-08-03 10:20:57'),
(41, 210, 'closed', 'case is closed', '2020-08-03 10:26:16'),
(42, 192, 'closed', 'solved', '2020-08-03 10:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `student_id` int(11) NOT NULL,
  `ragging` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `womens` int(11) NOT NULL,
  `faculty` int(11) NOT NULL,
  `accounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`student_id`, `ragging`, `exam`, `womens`, `faculty`, `accounts`) VALUES
(110, 4, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_old`
--

CREATE TABLE `feedback_old` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `grievanceId` int(11) NOT NULL,
  `complain` text NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pushcomplaint`
--

CREATE TABLE `pushcomplaint` (
  `id` int(11) NOT NULL,
  `complaintnumber` int(255) NOT NULL,
  `status` varchar(33) DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pushdate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pushcomplaint`
--

INSERT INTO `pushcomplaint` (`id`, `complaintnumber`, `status`, `reason`, `pushdate`) VALUES
(15, 199, 'not started yet', 'not able to solve', '2020-08-03 08:48:11.275262');

-- --------------------------------------------------------

--
-- Table structure for table `pushsolution`
--

CREATE TABLE `pushsolution` (
  `id` int(11) NOT NULL,
  `complaintnumber` int(11) NOT NULL,
  `reason` varchar(2000) NOT NULL,
  `pushdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `aadhar` varchar(16) NOT NULL,
  `college` int(11) DEFAULT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `registration` int(50) NOT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `email`, `password`, `mobile`, `aadhar`, `college`, `course`, `branch`, `start`, `end`, `city`, `state`, `registration`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(110, 'Gita', 'student1@gmail.com', '12345', '987654321', '', 2, 'BTech', 'Information Technology', '2018', 2020, 'Amravati', 'Andhra Pradesh', 2018001, NULL, '2020-08-02 23:00:49', '2020-08-02 23:02:22', NULL),
(111, 'Sita', 'student2@gmail.com', '12345', '987654321', '', 2, 'BTech', 'Computer Science', '2018', 2020, 'Amravati', 'Andhra Pradesh', 2018002, NULL, '2020-08-02 23:01:21', '2020-08-02 23:02:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_old`
--

CREATE TABLE `student_old` (
  `student_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `aadhar` varchar(16) NOT NULL,
  `college` varchar(80) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `registration` int(50) NOT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_old`
--

INSERT INTO `student_old` (`student_id`, `name`, `email`, `password`, `mobile`, `aadhar`, `college`, `course`, `branch`, `start`, `end`, `city`, `state`, `registration`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(4, 'nhgchg', 'admin@gmail.com', 'admin', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234-4321', 0, 'Darbhanga', 'b', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(5, 'nhgchg', 'admin@gmail.com', '1234', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234-4321', 0, 'Darbhanga', 'b', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(9, 'n', 'a@gmail.com', '1', '123', '123456654321', '  mnb,mnbmb', 'mbn', 'nm m ', '2018-2022', 0, 'mn m', 'nbnm,b', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(14, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082861', 'darbhanga college of engineering', 'btech', 'cse', '2018', 2022, 'darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(15, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082860', 'darbhanga college of engineering', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(16, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082860', 'darbhanga college of engineering', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(17, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '123456654321', 'hhgchg', 'nbv,', 'c', '1234', 1, 'Darbhanga', 'b', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(18, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'b', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(19, 'nhgchg', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'c', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'b', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(20, 'nargis', 'pamu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'gfn', 'nbv,', 'bnvhvhkv', '2018', 1, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(21, 'saima', 'snasreen001@gmail.com', '81dc9bdb52', '7004305640', '399811082860', 'jamia Millia Islamia', 'btech', 'ece', '2016', 2020, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(22, 'nargis', 'c@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(23, 'Nargis Nasreen', 'h@gmail.com', 'd2490f048d', '1234567890', '399811082860', 'hhgchg', 'btech', 'c', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(24, 'nargis', 'au@gmail.com', '202cb962ac', '7004305640', '399811082860', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '2018', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(25, 'nhgchg', 'ab@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'n', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(26, 'nhgchg', 'abb@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'n', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(27, 'Nargis', 'nargis@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(28, 'nhgchg', 'as@gmail.com', '202cb962ac', '1234567890', '399811082860', 'cvxnvcx', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(29, 'nargis', '1amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(30, 'nargis', 'r@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(31, 'muskan', 'm@gmai.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(32, 'nargis', 's@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(33, 'nargis', 'z@gmail.com', '202cb962ac', '7004305640', '399811082860', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1', 1, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(34, 'nargis', 'amu@gmail.com', '', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(35, 'nargis', 'amu@gmail.com', '123', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(36, 'nargis', 'amu@gmail.com', '123', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(37, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(38, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(39, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(40, 'nhgchg', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'gfn', '1234', 4321, 'Darbhanga', 'bmjjk', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(41, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(42, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(43, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(44, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(45, 'bjjbh', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452nbcj', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(46, 'nargis', 'u@gmail.com', '202cb962ac', '7004305640', '399811082860', 'darbhanga college of engineering', 'btech', 'bnvhvhkv', '2018', 1, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(47, 'nk nkc', 'njkcnkj@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'nbcbc', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(48, 'nk nkc', 'njnkj@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'nbcbc', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(49, 'nargis', 'vchb@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'cx bncc', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(51, 'nargis', 'bcjh@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(52, '', '', '', '', '', '', '', '', '', 0, '', '', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(53, 'Nargis Nasreen', 'p@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(54, 'Nargis Nasreen', 'google@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(55, 'Nargis Nasreen', 'k@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(56, 'Nargis Nasreen', 'fi@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(57, 'Nargis Nasreen', 'da@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'c', 'c', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(58, 'Nargis Nasreen', 'dsv@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9835050340', '123456654321', 'h', 'nbv,', 'c', '1234', 1, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(59, 'Nargis Nasreen', 'na@gmail.com', '202cb962ac59075b964b07152d234b70', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(60, 'Nargis Nasreen', 'to@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '9835050340', '399811082860', 'hhgchg', 'c', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 17:37:41', NULL, NULL),
(61, 'Nargis Nasreen', 'eggman@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '9835050340', '399811082860', 'A.b.M Degree College', 'nbv,', 'c', '1234', 4321, 'Darbhanga', 'Bihar', 2147483647, NULL, '2020-07-23 17:37:41', '2020-07-24 14:35:02', NULL),
(69, 'Nargis Nasreen', 'anda@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9835050340', '756767856873', 'A.J. College of Education', 'mtech', 'bgfbd', '6565', 4534, 'ggggf', 'Bihar', 56466343, '8e8e21df441a2e11ef35ca017769f706.jpg', '2020-07-24 02:31:55', '2020-07-24 14:05:50', 1),
(72, 'Nargis Nasreen', 'nasreennargisamu@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9835050340', '756767856873', 'A.G.K.M College', 'mtech', 'bgfbd', '6565', 4534, 'ggggf', 'Bihar', 56466343, '8e8e21df441a2e11ef35ca017769f706.jpg', '2020-07-24 03:10:42', '2020-07-24 13:57:18', 1),
(78, 'bhbhvjb', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', '', 'bcb chv', '', '', '', 0, '', '', 0, NULL, '2020-07-24 10:16:48', NULL, 1),
(84, 'nbnbvnb', 'nda@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '', '', 'Andhra Christian College', '', '', '', 0, '', '', 0, NULL, '2020-07-24 13:31:41', NULL, 1),
(89, 'Inayat', 'nasreennargis204@gmail.com', '9710fa2bc72b24cc00917e65284dd502', '', '', 'Government Degree College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 14:14:15', NULL, 1),
(90, 'nasreen', 'nargisnasreen36@gmail.com', '70b7efbc69f58f682a0014b53d70f929', '', '', 'B.B.H. College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 14:16:17', NULL, 1),
(91, 'nasree', 'nawaz@gmail.com', '2bcb86101ac5b414c2866e7fa670f1b6', '', '', 'Government Degree College', '', '', '', 0, '', '', 1234567890, NULL, '2020-07-24 14:38:07', NULL, 1),
(93, 'jabir', 'jabir@gmail.com', '9d521df85be3e30b9163daece191e805', '', '', 'K.L. College of Engineering', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 14:55:23', NULL, 1),
(94, 'ammi', 'ammi@gmail.com', '708dbbf173640039e537c26d8a317eaa', '', '', 'B.B.H. College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 14:59:44', NULL, 1),
(95, 'abbu', 'abbu@gmail.com', 'c1a635a03762bff6ff865994fd178a78', '', '', 'A.J. College of Education', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 15:05:32', NULL, 1),
(96, 'Nargis Nasreen', 'aapi@gmail.com', '3a42fc7702125321d8847cd2d829968c', '9835050340', '399811082860', 'B.B.H. College', 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, 'd5fae34f0e93dd539a7d3c43d6740169.png', '2020-07-24 15:07:20', '2020-07-24 15:09:32', 1),
(97, 'Nargis Nasreen', 'alia@gmail.com', '86c8c6c90abd00c209e39736da1ec1fd', '9835050340', '399811075687', 'A.J. College of Education', 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, 'd5fae34f0e93dd539a7d3c43d6740169.png', '2020-07-24 15:13:28', '2020-07-24 15:14:53', 1),
(98, 'nargis', 'no@gmail.com', '7fa3b767c460b54a2be4d49030b349c7', '', '', '9', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-25 13:25:35', NULL, 1),
(99, 'saima', 'saim@gmail.com', '844f9ee41a83411bb8464b0a0d02f1c6', '9835050340', '399811082860', 'K.L. College of Engineering', 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, NULL, '2020-07-25 13:36:49', '2020-07-27 02:32:30', 1),
(100, 'Suman Kumari', 'sunainasuman2002@gmail.com', 'e4df832538d8f1476564191196a67fcd', '', '', 'B.B.H. College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-29 01:08:37', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supporters`
--

CREATE TABLE `supporters` (
  `userId` int(11) NOT NULL,
  `complaintId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supporters`
--

INSERT INTO `supporters` (`userId`, `complaintId`) VALUES
(110, 193),
(110, 198);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `univName` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `univName`, `email`, `password`, `postingDate`, `updationDate`) VALUES
(1, 'aryabhatta knowlegde university', 'aku@gmail.com', 'aku@123', '2020-08-02 08:12:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `univpush`
--

CREATE TABLE `univpush` (
  `id` int(11) NOT NULL,
  `complaintnumber` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reason` varchar(100) NOT NULL,
  `pushDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `univpush`
--

INSERT INTO `univpush` (`id`, `complaintnumber`, `status`, `reason`, `pushDate`) VALUES
(4, 199, 'in process', 'not able to solve', '2020-08-03 08:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `univsolution`
--

CREATE TABLE `univsolution` (
  `id` int(11) NOT NULL,
  `complaintnumber` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `pushDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:21:28', '', 0),
(2, 0, 'anda', 0x3a3a3100000000000000000000000000, '2020-07-24 03:21:29', '', 0),
(3, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:22:06', '', 0),
(4, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:23:14', '', 1),
(5, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:23:36', '', 1),
(6, 0, 'anda', 0x3a3a3100000000000000000000000000, '2020-07-24 03:23:47', '', 0),
(7, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:23:51', '', 1),
(8, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:24:08', '', 1),
(9, 0, 'nasrnnargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:25:21', '', 0),
(10, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:25:28', '', 1),
(11, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 07:38:23', '24-07-2020 05:30:07 PM', 1),
(12, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 07:38:53', '', 1),
(13, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 08:49:21', '', 1),
(14, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 09:01:17', '', 1),
(15, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 09:06:46', '24-07-2020 05:33:19 PM', 1),
(16, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:33:21', '24-07-2020 05:33:24 PM', 1),
(17, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 11:23:16', '', 1),
(18, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 13:45:24', '', 0),
(19, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 13:45:35', '', 1),
(20, 0, 'nasreennargis204@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:14:39', '24-07-2020 09:15:28 PM', 1),
(21, 0, 'nargisnasreen36@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:16:45', '24-07-2020 09:19:18 PM', 1),
(22, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:19:36', '', 0),
(23, 0, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:19:40', '', 0),
(24, 0, 'anda', 0x3a3a3100000000000000000000000000, '2020-07-24 14:19:52', '', 0),
(25, 0, 'nasreennargis204@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:19:57', '24-07-2020 09:34:15 PM', 1),
(26, 0, 'eggman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:34:28', '', 1),
(27, 0, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:38:21', '', 1),
(28, 0, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:44:41', '24-07-2020 09:45:12 PM', 1),
(29, 93, 'jabir@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 14:55:41', '24-07-2020 09:59:15 PM', 1),
(30, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 15:00:00', '24-07-2020 10:03:46 PM', 1),
(31, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 15:04:40', '24-07-2020 10:04:53 PM', 1),
(32, 96, 'aapi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 15:07:32', '24-07-2020 10:09:42 PM', 1),
(33, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 15:13:41', '', 1),
(34, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 03:41:04', '', 1),
(35, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:41:18', '25-07-2020 01:41:29 PM', 1),
(36, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:41:34', '', 1),
(37, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 07:46:56', '', 1),
(38, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:56:59', '25-07-2020 04:57:09 PM', 1),
(39, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:57:14', '25-07-2020 05:14:40 PM', 1),
(40, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:14:46', '25-07-2020 05:20:04 PM', 1),
(41, 96, 'aapi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:20:09', '25-07-2020 05:20:59 PM', 1),
(42, 0, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:21:04', '', 0),
(43, 91, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:21:09', '', 1),
(44, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:26:38', '25-07-2020 05:54:55 PM', 1),
(45, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:55:01', '25-07-2020 05:57:07 PM', 1),
(46, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:57:11', '25-07-2020 05:57:32 PM', 1),
(47, 91, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:57:40', '25-07-2020 05:57:42 PM', 1),
(48, 96, 'aapi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:57:46', '', 1),
(49, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 11:57:55', '', 1),
(50, 98, 'no@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 13:25:48', '25-07-2020 08:30:45 PM', 1),
(51, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 13:30:51', '25-07-2020 08:36:04 PM', 1),
(52, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 13:37:04', '', 1),
(53, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 13:44:27', '25-07-2020 08:45:20 PM', 1),
(54, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 13:45:23', '', 1),
(55, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 13:58:18', '', 1),
(56, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 14:30:25', '25-07-2020 09:30:30 PM', 1),
(57, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 14:47:43', '', 1),
(58, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 03:27:17', '', 1),
(59, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 15:33:40', '', 1),
(60, 0, 'ccc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 15:45:47', '', 0),
(61, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 15:45:52', '', 1),
(62, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 02:15:40', '', 1),
(63, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 02:40:52', '27-07-2020 11:25:49 AM', 1),
(64, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 04:53:25', '27-07-2020 11:53:35 AM', 1),
(65, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 04:53:51', '', 1),
(66, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 06:12:06', '', 1),
(67, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 06:32:01', '', 1),
(68, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 13:11:11', '', 1),
(69, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 04:43:36', '', 1),
(70, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 10:41:47', '', 1),
(71, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 11:01:05', '', 1),
(72, 0, 'nargis@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 01:06:46', '', 0),
(73, 0, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 01:07:11', '', 0),
(74, 0, 'amu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 01:07:38', '', 0),
(75, 100, 'sunainasuman2002@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 01:09:04', '', 1),
(76, 0, 'sunainasuman2001@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 09:24:07', '', 0),
(77, 100, 'sunainasuman2002@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 09:24:28', '', 1),
(78, 0, 'admin', 0x3132372e302e302e3100000000000000, '2020-07-29 21:28:53', '', 0),
(79, 100, 'sunainasuman2002@gmail.com', 0x3132372e302e302e3100000000000000, '2020-07-29 21:29:08', '', 1),
(80, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 11:14:08', '31-07-2020 12:59:54 PM', 1),
(81, 0, 'modern@gmail.com', 0x00000000000000000000000000000000, '2020-07-31 11:29:59', '', 0),
(82, 0, 'nasreennargisamu@gmail.com', 0x00000000000000000000000000000000, '2020-07-31 11:30:05', '', 0),
(83, 0, '', 0x00000000000000000000000000000000, '2020-07-31 11:32:17', '', 0),
(84, 0, '', 0x00000000000000000000000000000000, '2020-07-31 11:36:05', '', 0),
(85, 0, '', 0x00000000000000000000000000000000, '2020-07-31 12:46:33', '', 0),
(86, 0, '', 0x00000000000000000000000000000000, '2020-07-31 12:46:38', '', 0),
(87, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:47:00', '', 1),
(88, 0, '', 0x00000000000000000000000000000000, '2020-07-31 12:48:59', '', 0),
(89, 0, '', 0x00000000000000000000000000000000, '2020-07-31 12:52:38', '', 0),
(90, 0, '', 0x00000000000000000000000000000000, '2020-07-31 12:52:40', '', 0),
(91, 0, '', 0x00000000000000000000000000000000, '2020-07-31 12:52:41', '', 0),
(92, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:53:38', '31-07-2020 02:25:01 PM', 1),
(93, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:03', '', 1),
(94, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:04', '', 1),
(95, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:05', '', 1),
(96, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:06', '', 1),
(97, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:08', '', 1),
(98, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:09', '', 1),
(99, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:10', '', 1),
(100, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:32', '31-07-2020 02:25:38 PM', 1),
(101, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:41', '31-07-2020 02:25:44 PM', 1),
(102, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:55:48', '31-07-2020 02:26:15 PM', 1),
(103, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:56:21', '31-07-2020 02:26:25 PM', 1),
(104, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:56:29', '31-07-2020 02:27:12 PM', 1),
(105, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:57:14', '31-07-2020 02:27:17 PM', 1),
(106, 0, 'ccc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:57:23', '', 0),
(107, 0, 'dbg', 0x3a3a3100000000000000000000000000, '2020-07-31 12:57:32', '', 0),
(108, 0, 'modern@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:58:18', '', 0),
(109, 0, 'modern@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:59:07', '', 0),
(110, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 12:59:19', '31-07-2020 02:29:22 PM', 1),
(111, 0, '', 0x3a3a3100000000000000000000000000, '2020-07-31 12:59:26', '', 0),
(112, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-07-31 13:14:20', '', 1),
(113, 0, '', 0x00000000000000000000000000000000, '2020-08-01 12:06:31', '', 0),
(114, 0, '', 0x00000000000000000000000000000000, '2020-08-01 14:00:45', '', 0),
(115, 0, '', 0x00000000000000000000000000000000, '2020-08-01 14:00:46', '', 0),
(116, 0, '', 0x00000000000000000000000000000000, '2020-08-01 14:01:53', '', 0),
(117, 0, '', 0x00000000000000000000000000000000, '2020-08-02 09:47:42', '', 0),
(118, 0, '', 0x00000000000000000000000000000000, '2020-08-02 09:47:48', '', 0),
(119, 0, '', 0x00000000000000000000000000000000, '2020-08-02 09:47:53', '', 0),
(120, 0, '', 0x00000000000000000000000000000000, '2020-08-02 09:48:14', '', 0),
(121, 72, 'nasreennargisamu@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 09:55:27', '', 1),
(122, 72, 'nasreennargisamu@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 14:17:40', '', 1),
(123, 72, 'nasreennargisamu@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 14:30:10', '02-08-2020 04:00:14 PM', 1),
(124, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 14:30:18', '02-08-2020 04:08:32 PM', 1),
(125, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 14:38:37', '', 1),
(126, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 15:37:42', '02-08-2020 05:21:06 PM', 1),
(127, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 15:51:09', '02-08-2020 06:09:22 PM', 1),
(128, 0, '', 0x00000000000000000000000000000000, '2020-08-02 16:39:48', '', 0),
(129, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 16:39:50', '', 1),
(130, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-08-02 16:41:21', '', 1),
(131, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 02:14:47', '03-08-2020 07:47:05 AM', 1),
(132, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 02:17:09', '03-08-2020 09:30:13 AM', 1),
(133, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 04:00:15', '03-08-2020 09:42:26 AM', 1),
(134, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 04:12:48', '', 1),
(135, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 07:53:20', '03-08-2020 01:27:32 PM', 1),
(136, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 07:57:34', '', 1),
(137, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 08:31:42', '', 1),
(138, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 08:45:50', '', 1),
(139, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 08:51:41', '', 1),
(140, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 09:14:48', '', 1),
(141, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 10:13:25', '', 1),
(142, 110, 'student1@gmail.com', 0x00000000000000000000000000000000, '2020-08-03 10:30:33', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy`
--
ALTER TABLE `academy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complaintNumber`),
  ADD KEY `userId` (`userId`),
  ADD KEY `grievanceId` (`grievanceId`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaintNumber` (`complaintNumber`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `feedback_old`
--
ALTER TABLE `feedback_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`,`grievanceId`);

--
-- Indexes for table `pushcomplaint`
--
ALTER TABLE `pushcomplaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaintnumber` (`complaintnumber`);

--
-- Indexes for table `pushsolution`
--
ALTER TABLE `pushsolution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaintnumber` (`complaintnumber`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `registration` (`registration`),
  ADD KEY `college` (`college`);

--
-- Indexes for table `student_old`
--
ALTER TABLE `student_old`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `supporters`
--
ALTER TABLE `supporters`
  ADD KEY `userId` (`userId`),
  ADD KEY `complaintId` (`complaintId`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `univpush`
--
ALTER TABLE `univpush`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaintnumber` (`complaintnumber`);

--
-- Indexes for table `univsolution`
--
ALTER TABLE `univsolution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaintnumber` (`complaintnumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy`
--
ALTER TABLE `academy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `feedback_old`
--
ALTER TABLE `feedback_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pushcomplaint`
--
ALTER TABLE `pushcomplaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pushsolution`
--
ALTER TABLE `pushsolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `student_old`
--
ALTER TABLE `student_old`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `univpush`
--
ALTER TABLE `univpush`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `univsolution`
--
ALTER TABLE `univsolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complain`
--
ALTER TABLE `complain`
  ADD CONSTRAINT `complain_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `complain_ibfk_2` FOREIGN KEY (`grievanceId`) REFERENCES `category` (`id`);

--
-- Constraints for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD CONSTRAINT `complaintremark_ibfk_1` FOREIGN KEY (`complaintNumber`) REFERENCES `complain` (`complaintNumber`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `pushcomplaint`
--
ALTER TABLE `pushcomplaint`
  ADD CONSTRAINT `pushcomplaint_ibfk_1` FOREIGN KEY (`complaintnumber`) REFERENCES `complain` (`complaintNumber`);

--
-- Constraints for table `pushsolution`
--
ALTER TABLE `pushsolution`
  ADD CONSTRAINT `pushsolution_ibfk_1` FOREIGN KEY (`complaintnumber`) REFERENCES `complain` (`complaintNumber`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`college`) REFERENCES `academy` (`id`);

--
-- Constraints for table `supporters`
--
ALTER TABLE `supporters`
  ADD CONSTRAINT `supporters_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `supporters_ibfk_2` FOREIGN KEY (`complaintId`) REFERENCES `complain` (`complaintNumber`);

--
-- Constraints for table `univpush`
--
ALTER TABLE `univpush`
  ADD CONSTRAINT `univpush_ibfk_1` FOREIGN KEY (`complaintnumber`) REFERENCES `complain` (`complaintNumber`);

--
-- Constraints for table `univsolution`
--
ALTER TABLE `univsolution`
  ADD CONSTRAINT `univsolution_ibfk_1` FOREIGN KEY (`complaintnumber`) REFERENCES `complain` (`complaintNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
