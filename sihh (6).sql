-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 11:21 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sihh_nargis`
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
(1, 'A.b.M Degree College', 'degree@gmail.com', '081ae14af7435811b6df78d40a45d0ff', NULL, '2020-07-24 09:25:24', '2020-07-28 04:56:36'),
(2, 'A.G.K.M College', 'agkm@gmail.com', '08199cec6b7dfc617c0a3148b39daf02', NULL, '2020-07-24 09:25:24', '2020-07-28 04:57:23'),
(3, 'A.J. College of Education', 'aj@gmail.com', '87fe7ca061ef2bf8173d178a40bb84a3', NULL, '2020-07-24 09:26:23', '2020-07-28 04:57:49'),
(4, 'A.J. Kalasala', 'kalasala@gmail.com', '521a7b1188adfe50929716e3bff67276', NULL, '2020-07-24 09:26:23', '2020-07-28 04:58:24'),
(5, 'A.N.R College', 'anr@gmail.com', '48c6da88a8f531ebb10e7edb5bc7f925', NULL, '2020-07-24 09:27:01', '2020-07-28 04:58:48'),
(6, 'A.P. residential Degree College', 'ap@gmail.com', 'd32292faf6208571605cba2587d76fed', NULL, '2020-07-24 09:27:01', '2020-07-28 04:59:10'),
(7, 'Andhra Christian College', 'andhra@gmail.com', '47c549456d92c93d5e38f8369b76f850', NULL, '2020-07-24 09:27:36', '2020-07-28 04:59:40'),
(8, 'B.B.H. College', 'bbh@gmail.com', '898a63b3bd88dfa69821d44201f41da8', NULL, '2020-07-24 09:27:36', '2020-07-28 05:00:03'),
(9, 'Government Degree College', 'gov@gmail.com', 'ce0c0e764e89b4846a4bf87f97171dec', NULL, '2020-07-24 09:28:39', '2020-07-28 05:01:08'),
(10, 'K.L. College of Engineering', 'kl@gmail.com', 'b18caa50327ce3d6f531309f6d7a6806', NULL, '2020-07-24 09:28:39', '2020-07-28 05:01:42'),
(12, 'Woodbine Modern School', 'modern@gmail.com', '2b25e83495060d52b3bcb8051245222d', NULL, '2020-07-28 03:41:36', '2020-07-28 05:02:12'),
(13, 'Rose Public School', 'rose@gmail.com', 'rose@123', NULL, '2020-07-31 11:10:55', NULL);

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
(1, 'sunainasuman2001@gmail.com', 'eecbb8ba64dcceb2d1fe40cc419f21b9', '2020-07-25 11:18:35'),
(2, 'nasreennargisamu@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2020-07-25 12:54:49'),
(3, 'abc@gmail.com', 'abc@123', '');

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
(1, 'Ragging', 'bvgvcgdhv', '2020-07-23 12:41:21', NULL),
(2, 'Harrasment', NULL, '2020-07-23 12:41:21', NULL),
(3, 'Faculty Behaviour', NULL, '2020-07-23 12:42:16', NULL),
(4, 'Academic Probations', NULL, '2020-07-23 12:42:16', NULL),
(5, 'Hostel', NULL, '2020-07-23 12:42:44', NULL),
(6, 'SC/ST', NULL, '2020-07-23 12:42:44', NULL),
(7, 'Canteen', NULL, '2020-07-23 12:43:10', NULL),
(8, 'Transport', NULL, '2020-07-23 12:43:10', NULL),
(9, 'Cleanliness', NULL, '2020-07-23 12:43:39', NULL),
(10, 'Fees', NULL, '2020-07-23 12:43:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `grievanceId` varchar(30) DEFAULT NULL,
  `complain` mediumtext DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `isAnonymous` int(11) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`complaintNumber`, `userId`, `grievanceId`, `complain`, `proof`, `isAnonymous`, `regDate`, `status`, `lastUdationDate`) VALUES
(7, NULL, 'Harassment', 'ccgch', 'ceaserw.jpg', 0, '2020-07-23 11:36:22', '', NULL),
(8, NULL, 'FacultyBehaviour', 'mnbdfbds', 'chen.jpg', 0, '2020-07-23 11:36:22', '', NULL),
(9, NULL, 'Harassment', 'vcjhvhg', '2-Louis-Hofmann.jpg', 0, '2020-07-23 11:36:22', '', NULL),
(10, NULL, 'Hostel', 'bv,bv,nbv', 'Screenshot (2).png', 0, '2020-07-23 11:36:22', '', NULL),
(11, NULL, 'AcademicProbations', 'nknkcnkjn', '', 0, '2020-07-23 11:36:22', '', NULL),
(12, NULL, 'Ragging', 'bvjhbvjhbh', '', 0, '2020-07-23 11:36:22', '', NULL),
(13, NULL, 'CasteIssue', 'lol', 'babu.jpg', 0, '2020-07-23 11:36:22', '', NULL),
(14, NULL, 'AcademicProbations', 'bbvjvb', '', 0, '2020-07-23 11:36:22', '', NULL),
(15, NULL, 'Harassment', 'bckjkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(16, NULL, 'Harassment', 'jvjv', '', 0, '2020-07-23 11:36:22', '', NULL),
(17, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(18, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(19, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(20, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(21, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(22, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(23, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(24, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(25, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(26, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(27, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(28, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(29, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(30, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(31, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(32, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(33, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(34, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(35, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(36, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(37, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(38, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(39, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(40, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(41, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(42, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(43, NULL, 'FacultyBehaviour', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(44, NULL, 'CasteIssue', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(55, NULL, 'CasteIssue', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(56, NULL, '', '', '', 0, '2020-07-23 11:36:22', '', NULL),
(57, NULL, 'CasteIssue', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(58, NULL, '', '', '', 0, '2020-07-23 11:36:22', '', NULL),
(59, NULL, 'CasteIssue', 'bmbbkj', '', 0, '2020-07-23 11:36:22', '', NULL),
(60, NULL, 'Canteen', 'nbvhg', '', 0, '2020-07-23 11:36:22', '', NULL),
(61, NULL, 'Canteen', 'nbvhg', '', 0, '2020-07-23 11:36:22', '', NULL),
(62, NULL, 'AcademicProbations', 'nbvhg', '', 0, '2020-07-23 11:36:22', '', NULL),
(63, NULL, 'Hostel', 'nbvhg', '', 0, '2020-07-23 11:36:22', '', NULL),
(64, NULL, 'Transport', 'nbvhg', '', 0, '2020-07-23 11:36:22', '', NULL),
(65, NULL, 'Cleanliness', 'ghvkhgvhg', '', 0, '2020-07-23 11:36:22', '', NULL),
(66, NULL, 'Transport', 'nargis', '', 0, '2020-07-23 11:36:22', '', NULL),
(67, NULL, 'Transport', 'nargis', '', 0, '2020-07-23 11:36:22', '', NULL),
(68, NULL, 'Hostel', 'nargis nasreen', '', 0, '2020-07-23 11:36:22', '', NULL),
(69, NULL, 'FacultyBehaviour', 'vhvhkgkh', '', 0, '2020-07-23 11:36:22', '', NULL),
(70, NULL, 'Hostel', 'nkjcvnf', '', 0, '2020-07-23 11:36:22', '', NULL),
(71, NULL, 'Hostel', 'bjvbj', '', 0, '2020-07-23 11:36:22', '', NULL),
(72, NULL, 'Harassment', 'nbvjv,', '', 0, '2020-07-23 11:36:22', '', NULL),
(73, NULL, 'Harassment', 'nbvjv,', '', 0, '2020-07-23 11:36:22', '', NULL),
(74, NULL, 'CasteIssue', 'mn', '', 0, '2020-07-23 11:36:22', '', NULL),
(75, NULL, 'FacultyBehaviour', 'bnnb', '', 0, '2020-07-23 11:36:22', '', NULL),
(76, NULL, 'AcademicProbations', 'bcv,', '', 0, '2020-07-23 11:36:22', '', NULL),
(77, NULL, 'FacultyBehaviour', 'bjhbbj', '', 0, '2020-07-23 11:36:22', '', NULL),
(78, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(79, NULL, 'Ragging', 'nngvn', '', 0, '2020-07-23 11:36:22', '', NULL),
(80, NULL, 'Harassment', 'nbvjv', '', 0, '2020-07-23 11:36:22', '', NULL),
(81, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(82, NULL, 'AcademicProbations', 'bjvhbhv', '', 0, '2020-07-23 11:36:22', '', NULL),
(83, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(84, NULL, 'Harassment', 'bgn', '', 0, '2020-07-23 11:36:22', '', NULL),
(85, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(86, NULL, 'Harassment', 'bgn', '', 0, '2020-07-23 11:36:22', '', NULL),
(87, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(88, NULL, 'Harassment', 'bgn', '', 0, '2020-07-23 11:36:22', '', NULL),
(89, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(90, NULL, 'Harassment', 'bgn', '', 0, '2020-07-23 11:36:22', '', NULL),
(91, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(92, NULL, 'Harassment', 'bbnb', '', 0, '2020-07-23 11:36:22', '', NULL),
(93, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(94, NULL, 'Harassment', 'bbnb', '', 0, '2020-07-23 11:36:22', '', NULL),
(95, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(96, NULL, 'Harassment', 'bbnb', '', 0, '2020-07-23 11:36:22', '', NULL),
(97, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(98, NULL, 'CasteIssue', 'b b ', '', 0, '2020-07-23 11:36:22', '', NULL),
(99, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(100, NULL, 'AcademicProbations', 'bnn', '', 0, '2020-07-23 11:36:22', '', NULL),
(101, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(102, NULL, 'Hostel', 'bjshdbjh', '', 0, '2020-07-23 11:36:22', '', NULL),
(103, NULL, '', '', 'images/', 0, '2020-07-23 11:36:22', '', NULL),
(104, NULL, 'Hostel', 'kjnjv', '', 0, '2020-07-23 11:36:22', '', NULL),
(105, NULL, 'Harassment', 'cvxcv', '', 0, '2020-07-23 11:36:22', '', NULL),
(106, NULL, '', '', 'assests/images/', 0, '2020-07-23 11:36:22', '', NULL),
(107, NULL, 'Canteen', '', '', 0, '2020-07-23 11:36:22', '', NULL),
(108, NULL, '', '', 'assests/images/', 0, '2020-07-23 11:36:22', '', NULL),
(109, NULL, 'Hostel', '', '', 0, '2020-07-23 11:36:22', '', NULL),
(110, NULL, '', '', 'assests/images/', 0, '2020-07-23 11:36:22', '', NULL),
(111, NULL, '', '', 'assests/images/', 0, '2020-07-23 11:36:22', '', NULL),
(112, NULL, '', '', 'assests/images/', 0, '2020-07-23 11:36:22', '', NULL),
(113, NULL, 'AcademicProbations', 'bjhbkh', '', 0, '2020-07-23 11:36:22', '', NULL),
(114, NULL, '', '', 'assests/images/', 0, '2020-07-23 11:36:22', '', NULL),
(115, NULL, 'AcademicProbations', 'bjhbkh', '', 0, '2020-07-23 11:36:22', '', NULL),
(118, 3, '2', 'bvvvvvvvvhv', '', 0, '2020-07-23 23:49:10', NULL, NULL),
(119, 3, '6', 'vbvbvba', '', 0, '2020-07-23 23:54:55', NULL, NULL),
(120, 3, '2', 'gcgzscgsc', '', 0, '2020-07-24 01:27:54', NULL, NULL),
(121, 0, '4', 'kbkb', '', 0, '2020-07-24 03:48:55', NULL, NULL),
(122, 0, '4', 'cbjhvbjdv', '', 0, '2020-07-24 03:54:11', NULL, NULL),
(123, 0, '2', 'hhhhhhhhhhhhhhn', '', 0, '2020-07-24 05:41:40', NULL, NULL),
(124, 0, '4', 'jhhghhjgkhfg', '', 0, '2020-07-24 07:50:23', NULL, NULL),
(125, 0, '1', 'vhvhvh', '', 0, '2020-07-24 08:01:21', NULL, NULL),
(126, 0, '10', 'mjhe paise ni dena h', '+91 87891 04652 20190810_211232.jpg', 0, '2020-07-24 08:02:41', NULL, NULL),
(127, 93, '4', 'bhjbhjcbjbc', 'IMG-20200415-WA0024.jpg', 0, '2020-07-24 10:56:56', 'in process', '2020-07-28 20:04:44'),
(128, 96, '2', 'mjhe ni pta', 'Screenshot (1).png', 0, '2020-07-24 11:08:33', NULL, NULL),
(129, 97, '5', 'kab khulega???', 'Screenshot (3).png', 0, '2020-07-24 11:14:03', NULL, NULL),
(130, 97, '1', 'hbhkkvv', '', 0, '2020-07-25 02:41:44', 'closed', '2020-07-25 04:56:51'),
(131, 72, '1', 'bjjbgjhejbvjh', '', 0, '2020-07-25 03:47:05', 'closed', '2020-07-25 05:34:03'),
(132, 97, '1', 'ragging', 'common.jpg', 0, '2020-07-25 06:02:53', 'closed', '2020-07-25 06:13:36'),
(133, 7, '1', 'jhbdhjvhjfdv', '', 0, '2020-07-25 06:11:49', NULL, NULL),
(134, 94, '1', 'help', '', 0, '2020-07-25 06:27:10', 'closed', '2020-07-25 06:46:58'),
(135, 7, '1', 'try', '', 0, '2020-07-25 07:00:14', NULL, NULL),
(136, 98, '1', 'bcccjgcgf', '', 0, '2020-07-25 09:26:33', 'in process', '2020-07-25 09:27:18'),
(137, 10, '1', 'bcccjgcgf', '', 0, '2020-07-25 09:27:35', NULL, NULL),
(138, 10, '1', 'vchgmchm', '', 0, '2020-07-25 09:30:08', NULL, NULL),
(139, 97, '1', 'jbjhbjhbfh', '', 0, '2020-07-25 09:31:04', 'in process', '2020-07-25 09:32:01'),
(140, 99, '1', 'chgcgc', '', 0, '2020-07-25 09:37:32', 'closed', '2020-07-25 09:39:20'),
(141, 99, '1', 'vchkvshvhva', '', 0, '2020-07-25 09:44:45', 'in process', '2020-07-25 09:45:11'),
(142, 99, '1', 'vhvhvjh', '', 0, '2020-07-25 09:58:28', NULL, NULL),
(143, 99, '1', 'vcgcgc', '', 0, '2020-07-25 10:49:13', NULL, NULL),
(144, 99, '1', 'vdbdb', '', 0, '2020-07-25 11:07:56', NULL, NULL),
(145, 99, '1', 'India, officially the Republic of India (Hindi: Bhārat Gaṇarājya),[23] is a country in South Asia. It is the second-most populous country, the seventh-largest country by area, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[f] China, Nepal, and Bhutan to the north; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; its Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia.\r\n\r\nModern humans arrived on the Indian subcontinent from Africa no later than 55,000 years ago.[24] Their long occupation, initially in varying forms of isolation as hunter-gatherers, has made the region highly diverse, second only to Africa in human genetic diversity.[25] Settled life emerged on the subcontinent in the western margins of the Indus river basin 9,000 years ago, evolving gradually into the Indus Valley Civilisation of the third millennium BCE.[26] By 1200 BCE, an archaic form of Sanskrit, an Indo-European language, had diffused into India from the northwest, unfolding as the language of the Rigveda, and recording the dawning of Hinduism in India.[27] The Dravidian languages of India were supplanted in the northern regions.[28] By 400 BCE, stratification and exclusion by caste had emerged within Hinduism,[29] and Buddhism and Jainism had arisen, proclaiming social orders unlinked to heredity.[30] Early political consolidations gave rise to the loose-knit Maurya and Gupta Empires based in the Ganges Basin.[31] Their collective era was suffused with wide-ranging creativity,[32] but also marked by the declining status of women,[33] and the incorporation of untouchability into an organised system of belief.[g][34] In South India, the Middle kingdoms exported Dravidian-languages scripts and religious cultures to the kingdoms of Southeast Asia.', '', 0, '2020-07-25 11:22:03', NULL, NULL),
(146, 99, '1', 'bjkvv', 'Screenshot (2).png', 0, '2020-07-26 00:34:39', NULL, NULL),
(147, 99, '3', 'vhgjvh', '', 0, '2020-07-26 11:33:56', NULL, NULL),
(148, 11, '5', 'hvhkv', '', 0, '2020-07-26 11:38:59', NULL, NULL),
(149, 11, '4', 'bjhbjbkb', '', 0, '2020-07-26 11:39:31', NULL, NULL),
(150, 11, '5', 'jbjjhhj', '', 0, '2020-07-26 11:40:59', NULL, NULL),
(151, 11, '1', 'jb jbj j', '', 0, '2020-07-26 11:42:22', NULL, NULL),
(152, 99, '4', 'vhgcvg', '', 0, '2020-07-26 11:46:39', NULL, NULL),
(153, 99, '3', 'vhvkvg', '', 0, '2020-07-26 11:50:59', NULL, NULL),
(154, 99, '1', 'hvhgvg', '', 0, '2020-07-26 11:52:28', NULL, NULL),
(155, 99, '10', 'hgvhgvghv', '', 0, '2020-07-26 11:54:47', NULL, NULL),
(156, 99, '10', 'bjbjhb', '', 0, '2020-07-26 11:56:31', NULL, NULL),
(157, 99, '7', 'ncj bv lj', '', 0, '2020-07-26 11:57:28', NULL, NULL),
(158, 99, '2', 'hbjhbbb', '', 0, '2020-07-26 12:18:11', NULL, NULL),
(159, 99, '1', 'nbdjn jb', '', 0, '2020-07-26 12:23:18', NULL, NULL),
(160, 99, '2', 'hjhjjvjh', '', 0, '2020-07-27 02:55:12', NULL, NULL),
(161, 99, '2', 'ghgchgchc', '', 0, '2020-07-27 03:00:35', NULL, NULL),
(162, 99, '1', 'nbvjvj', '4th sem Syllabus 2019.pdf', 0, '2020-07-27 09:11:38', NULL, NULL),
(163, 99, '1', 'b c c vc hc', '', 0, '2020-07-27 09:11:54', NULL, NULL),
(164, 99, '3', 'cvhvhvf', '', 0, '2020-07-27 09:12:05', NULL, NULL),
(165, 99, '2', 'bvbvhfwd', '', 0, '2020-07-27 09:13:51', NULL, NULL),
(166, 99, '1', 'bcbvcb s', '5_6273750031681978724.pdf', 0, '2020-07-27 09:14:07', NULL, NULL),
(167, 11, '1', 'India, officially the Republic of India (Hindi: Bhārat Gaṇarājya),[23] is a country in South Asia. It is the second-most populous country, the seventh-largest country by area, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[f] China, Nepal, and Bhutan to the north; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; its Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia.\r\n\r\nModern humans arrived on the Indian subcontinent from Africa no later than 55,000 years ago.[24] Their long occupation, initially in varying forms of isolation as hunter-gatherers, has made the region highly diverse, second only to Africa in human genetic diversity.[25] Settled life emerged on the subcontinent in the western margins of the Indus river basin 9,000 years ago, evolving gradually into the Indus Valley Civilisation of the third millennium BCE.[26] By 1200 BCE, an archaic form of Sanskrit, an Indo-European language, had diffused into India from the northwest, unfolding as the language of the Rigveda, and recording the dawning of Hinduism in India.[27] The Dravidian languages of India were supplanted in the northern regions.[28] By 400 BCE, stratification and exclusion by caste had emerged within Hinduism,[29] and Buddhism and Jainism had arisen, proclaiming social orders unlinked to heredity.[30] Early political consolidations gave rise to the loose-knit Maurya and Gupta Empires based in the Ganges Basin.[31] Their collective era was suffused with wide-ranging creativity,[32] but also marked by the declining status of women,[33] and the incorporation of untouchability into an organised system of belief.[g][34] In South India, the Middle kingdoms exported Dravidian-languages scripts and religious cultures to the kingdoms of Southeast Asia', '', 0, '2020-07-27 09:30:39', NULL, NULL),
(168, 11, '1', 'bjhhjjh', '', 0, '2020-07-27 10:11:36', NULL, NULL),
(169, 99, '1', 'fbvbjhbvf', '', 0, '2020-07-28 06:41:59', NULL, NULL),
(170, 99, '1', 'cvnbn', '', 0, '2020-07-28 07:01:16', NULL, NULL),
(171, 1, '6', 'i want caste certificate', '', 1, '2020-07-28 18:31:48', NULL, NULL),
(172, 1, '9', 'clean the corridors', 'Sih1.png', 1, '2020-07-28 18:33:57', NULL, NULL),
(173, 100, '4', 'hello', '', 1, '2020-07-28 21:09:21', 'closed', '2020-07-29 10:57:09'),
(174, 100, '4', 'pta snfmsfkjsk', '', 1, '2020-07-28 21:09:34', NULL, NULL),
(175, 100, '6', 'jafsdfashfjdfkhuwewjf', '', 1, '2020-07-28 21:09:47', 'closed', '2020-07-29 14:36:12'),
(176, 100, '1', 'jdhsfkdmfkhdskfdajkfds', '', 1, '2020-07-28 21:10:05', NULL, NULL),
(177, 100, '2', 'kjsfndjkfdmfjhdsjfmndjc', '', 1, '2020-07-28 21:10:19', 'in process', '2020-07-29 10:55:18'),
(178, 100, '3', 'jkmfkkduik,mfkjdikf,dsjoifk', '', 1, '2020-07-28 21:10:32', NULL, NULL),
(179, 100, '7', 'nadkjnfm,dskjfkc,dcjkdfskalllllllllllcdljsm,fckdljfc,dksjfcds,kfcjfdslf,.l;>NCkjdlfjkd', '', 1, '2020-07-28 21:10:59', NULL, NULL),
(180, 100, '8', 'hdfsakjdkfa', '', 1, '2020-07-28 21:11:11', 'in process', '2020-07-29 10:54:31'),
(181, 100, '9', 'ajkdsfjhkadlsflhdmckk  jkafjkdf', '', 1, '2020-07-28 21:11:29', NULL, NULL),
(182, 100, '10', 'dfjjdsfmdfess', '', 1, '2020-07-28 21:11:44', NULL, NULL),
(183, 100, '5', 'fgbgbv', '', 1, '2020-07-29 06:45:45', NULL, NULL),
(184, 100, '7', 'canteen', '', 1, '2020-07-29 06:46:33', NULL, NULL),
(185, 100, '6', 'bngcbn', '', 0, '2020-07-29 06:47:12', NULL, NULL),
(186, 100, '1', 'hello last hai na?', 'Screenshot (457).png', 1, '2020-07-29 17:30:06', 'in process', '2020-07-29 17:33:41'),
(187, 100, '7', 'canteen wale bhaiya', 'Screenshot (529).png', 1, '2020-07-29 17:31:18', 'closed', '2020-07-29 17:40:53'),
(188, 99, '1', 'hfghfg', '', 0, '2020-07-31 07:15:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2019-06-30 20:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2019-07-01 07:37:59'),
(3, 3, 'in process', 'test', '2019-05-02 04:57:43'),
(4, 19, 'closed', 'case solved', '2019-06-11 00:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2019-09-05 06:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-23 20:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-23 23:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-23 23:37:08'),
(9, 2, 'closed', 'dfsfsf', '2019-08-05 15:37:57'),
(10, 20, 'in process', 'bvhv', '2020-07-23 08:29:07'),
(11, 25, 'closed', 'nbv,bv,jb,hjvb', '2020-07-23 10:57:27'),
(12, 131, 'in process', 'b jbvdjh jhbvhj bhjv', '2020-07-25 04:52:41'),
(13, 130, 'closed', 'solved', '2020-07-25 04:56:51'),
(14, 131, 'closed', 'done', '2020-07-25 05:34:03'),
(15, 132, 'in process', 'we will try to solve it...', '2020-07-25 06:10:28'),
(16, 132, 'closed', 'nnvbfb', '2020-07-25 06:13:36'),
(17, 134, 'in process', 'we are working on it', '2020-07-25 06:28:16'),
(18, 134, 'closed', 'done', '2020-07-25 06:46:58'),
(19, 140, 'closed', 'nbvv', '2020-07-25 09:39:20'),
(20, 141, 'in process', 'wait', '2020-07-25 09:45:11'),
(21, 0, 'in process', 'ngbjjbf', '2020-07-28 05:47:23'),
(22, 0, 'in process', 'njvknkvf', '2020-07-28 05:53:29'),
(23, 127, 'in process', 'nhi ho rha hai', '2020-07-28 20:04:44'),
(24, 180, 'in process', 'dekh rhe hain', '2020-07-29 10:54:31'),
(25, 177, 'in process', 'kdsfkhdsfdsf', '2020-07-29 10:55:18'),
(26, 180, 'in process', 'fvcfhgn ,h', '2020-07-29 10:56:06'),
(27, 173, 'closed', 'try kr rhe hain', '2020-07-29 10:57:09'),
(28, 175, 'closed', 'ho gya hai', '2020-07-29 14:36:12'),
(29, 186, 'in process', 'haa ,hai toh', '2020-07-29 17:33:41'),
(30, 187, 'in process', 'kya hua ?bolo', '2020-07-29 17:35:41'),
(31, 187, 'closed', 'case bnd kr dete hain', '2020-07-29 17:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `pushcomplaint`
--

CREATE TABLE `pushcomplaint` (
  `id` int(11) NOT NULL,
  `complaintnumber` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `reason` varchar(255) CHARACTER SET latin1 NOT NULL,
  `work` varchar(255) NOT NULL,
  `pushdate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pushcomplaint`
--

INSERT INTO `pushcomplaint` (`id`, `complaintnumber`, `status`, `reason`, `work`, `pushdate`) VALUES
(1, 142, '0', 'bfbvbhfbhv', '', '2020-07-28 08:06:42.727834'),
(2, 128, '0', 'c bncb b', '', '2020-07-28 08:21:45.155847'),
(3, 127, 'not started yet', 'kch samajh nhi aa rha hai', '', '2020-07-28 20:05:09.729098'),
(4, 180, 'not started yet', 'dekh lijeye ek baar aap v', '', '2020-07-29 10:54:59.243784'),
(5, 177, 'in process', 'fksdmfldsjfmdsfdsmkf', '', '2020-07-29 10:55:34.764730'),
(6, 180, 'in process', 'ho gya aakhirkar', '', '2020-07-29 10:56:28.471916'),
(7, 173, 'in process', 'kosis jaari rhne chahiye kya', '', '2020-07-29 10:57:41.414152'),
(8, 166, 'not started yet', 'ksfjdsfm', '', '2020-07-29 17:12:23.774261'),
(9, 186, 'not started yet', 'last hai \r\nlast hai', '', '2020-07-29 17:34:02.618022'),
(10, 186, 'in process', 'haaaaaaaaaaaaaa', '', '2020-07-29 17:34:58.939953'),
(11, 187, 'in process', 'bta nhi rhe hai kch', '', '2020-07-29 17:36:06.395313');

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

--
-- Dumping data for table `pushsolution`
--

INSERT INTO `pushsolution` (`id`, `complaintnumber`, `reason`, `pushdate`) VALUES
(1, 127, 'hghghf', '2020-07-28 12:56:20'),
(2, 187, 'dekhte hai kya ho pata hai', '2020-07-29 17:38:58'),
(3, 174, 'isko dekheye jara', '2020-07-29 17:39:34'),
(4, 177, 'jdsfksm,jfsdk,f', '2020-07-29 17:41:46');

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
(4, 'nhgchg', 'admin@gmail.com', 'admin', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234-4321', 0, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(5, 'nhgchg', 'admin@gmail.com', '1234', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234-4321', 0, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(9, 'n', 'a@gmail.com', '1', '123', '123456654321', 5, 'mbn', 'nm m ', '2018-2022', 0, 'mn m', 'nbnm,b', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:18:20', NULL),
(14, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082861', 13, 'btech', 'cse', '2018', 2022, 'darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-08-01 08:49:20', NULL),
(15, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(16, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(17, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '123456654321', 1, 'nbv,', 'c', '1234', 1, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(18, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(19, 'nhgchg', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'c', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(20, 'nargis', 'pamu@gmail.com', '202cb962ac', '1234567890', '399811082861', 1, 'nbv,', 'bnvhvhkv', '2018', 1, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(21, 'saima', 'snasreen001@gmail.com', '81dc9bdb52', '7004305640', '399811082860', 1, 'btech', 'ece', '2016', 2020, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(22, 'nargis', 'c@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(23, 'Nargis Nasreen', 'h@gmail.com', 'd2490f048d', '1234567890', '399811082860', 1, 'btech', 'c', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(24, 'nargis', 'au@gmail.com', '202cb962ac', '7004305640', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '2018', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(25, 'nhgchg', 'ab@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'n', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(26, 'nhgchg', 'abb@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'n', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(27, 'Nargis', 'nargis@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(28, 'nhgchg', 'as@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(29, 'nargis', '1amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(30, 'nargis', 'r@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(31, 'muskan', 'm@gmai.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(32, 'nargis', 's@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(33, 'nargis', 'z@gmail.com', '202cb962ac', '7004305640', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 1, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(34, 'nargis', 'amu@gmail.com', '', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(35, 'nargis', 'amu@gmail.com', '123', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(36, 'nargis', 'amu@gmail.com', '123', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(37, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(38, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(39, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(40, 'nhgchg', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'gfn', '1234', 4321, 'Darbhanga', 'bmjjk', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(41, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 1, 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(42, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 1, 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(43, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 1, 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(44, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 1, 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(45, 'bjjbh', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452nbcj', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(46, 'nargis', 'u@gmail.com', '202cb962ac', '7004305640', '399811082860', 1, 'btech', 'bnvhvhkv', '2018', 1, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(47, 'nk nkc', 'njkcnkj@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'nbcbc', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(48, 'nk nkc', 'njnkj@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'nbcbc', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(49, 'nargis', 'vchb@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'cx bncc', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(51, 'nargis', 'bcjh@gmail.com', '202cb962ac', '1234567890', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(52, '', '', '', '', '', 1, '', '', '', 0, '', '', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(53, 'Nargis Nasreen', 'p@gmail.com', '202cb962ac', '9835050340', '399811082860', 1, 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(54, 'Nargis Nasreen', 'google@gmail.com', '202cb962ac', '9835050340', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(55, 'Nargis Nasreen', 'k@gmail.com', '202cb962ac', '9835050340', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(56, 'Nargis Nasreen', 'fi@gmail.com', '202cb962ac', '9835050340', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(57, 'Nargis Nasreen', 'da@gmail.com', '202cb962ac', '9835050340', '399811082860', 1, 'c', 'c', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(58, 'Nargis Nasreen', 'dsv@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9835050340', '123456654321', 1, 'nbv,', 'c', '1234', 1, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(59, 'Nargis Nasreen', 'na@gmail.com', '202cb962ac59075b964b07152d234b70', '9835050340', '399811082860', 1, 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(60, 'Nargis Nasreen', 'to@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '9835050340', '399811082860', 1, 'c', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(61, 'Nargis Nasreen', 'eggman@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '9835050340', '399811082860', 1, 'nbv,', 'c', '1234', 4321, 'Darbhanga', 'Bihar', 2147483647, NULL, '2020-07-23 13:37:41', '2020-07-31 17:16:48', NULL),
(69, 'Nargis Nasreen', 'anda@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9835050340', '756767856873', 1, 'mtech', 'bgfbd', '6565', 4534, 'ggggf', 'Bihar', 56466343, '8e8e21df441a2e11ef35ca017769f706.jpg', '2020-07-23 22:31:55', '2020-07-31 17:16:48', 1),
(72, 'Nargis Nasreen', 'nasreennargisamu@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9835050340', '756767856873', 1, 'mtech', 'bgfbd', '6565', 4534, 'ggggf', 'Bihar', 56466343, '8e8e21df441a2e11ef35ca017769f706.jpg', '2020-07-23 23:10:42', '2020-07-31 17:16:48', 1),
(78, 'bhbhvjb', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', '', 1, '', '', '', 0, '', '', 0, NULL, '2020-07-24 06:16:48', '2020-07-31 17:16:48', 1),
(84, 'nbnbvnb', 'nda@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '', '', 1, '', '', '', 0, '', '', 0, NULL, '2020-07-24 09:31:41', '2020-07-31 17:16:48', 1),
(89, 'Inayat', 'nasreennargis204@gmail.com', '9710fa2bc72b24cc00917e65284dd502', '', '', 1, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:14:15', '2020-07-31 17:16:48', 1),
(90, 'nasreen', 'nargisnasreen36@gmail.com', '70b7efbc69f58f682a0014b53d70f929', '', '', 1, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:16:17', '2020-07-31 17:16:48', 1),
(91, 'nasree', 'nawaz@gmail.com', '2bcb86101ac5b414c2866e7fa670f1b6', '', '', 1, '', '', '', 0, '', '', 1234567890, NULL, '2020-07-24 10:38:07', '2020-07-31 17:16:48', 1),
(93, 'jabir', 'jabir@gmail.com', '9d521df85be3e30b9163daece191e805', '', '', 1, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:55:23', '2020-07-31 17:16:48', 1),
(94, 'ammi', 'ammi@gmail.com', '708dbbf173640039e537c26d8a317eaa', '', '', 1, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:59:44', '2020-07-31 17:16:48', 1),
(95, 'abbu', 'abbu@gmail.com', 'c1a635a03762bff6ff865994fd178a78', '', '', 1, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 11:05:32', '2020-07-31 17:16:48', 1),
(96, 'Nargis Nasreen', 'aapi@gmail.com', '3a42fc7702125321d8847cd2d829968c', '9835050340', '399811082860', 1, 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, 'd5fae34f0e93dd539a7d3c43d6740169.png', '2020-07-24 11:07:20', '2020-07-31 17:16:48', 1),
(97, 'Nargis Nasreen', 'alia@gmail.com', '86c8c6c90abd00c209e39736da1ec1fd', '9835050340', '399811075687', 1, 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, 'd5fae34f0e93dd539a7d3c43d6740169.png', '2020-07-24 11:13:28', '2020-07-31 17:16:48', 1),
(98, 'nargis', 'no@gmail.com', '7fa3b767c460b54a2be4d49030b349c7', '', '', 13, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-25 09:25:35', '2020-08-01 08:49:57', 1),
(99, 'saima', 'saim@gmail.com', '844f9ee41a83411bb8464b0a0d02f1c6', '9835050340', '399811082860', 13, 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, NULL, '2020-07-25 09:36:49', '2020-08-01 08:49:52', 1),
(100, 'Suman Kumari', 'sunainasuman2002@gmail.com', 'e4df832538d8f1476564191196a67fcd', '', '', 13, '', '', '', 0, '', '', 2147483647, NULL, '2020-07-28 21:08:37', '2020-08-01 08:49:47', 1);

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
(4, 'nhgchg', 'admin@gmail.com', 'admin', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234-4321', 0, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(5, 'nhgchg', 'admin@gmail.com', '1234', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234-4321', 0, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(9, 'n', 'a@gmail.com', '1', '123', '123456654321', '  mnb,mnbmb', 'mbn', 'nm m ', '2018-2022', 0, 'mn m', 'nbnm,b', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(14, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082861', 'darbhanga college of engineering', 'btech', 'cse', '2018', 2022, 'darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(15, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082860', 'darbhanga college of engineering', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(16, 'nargis', 'amu@gmail.com', '202cb962ac', '8789104652', '399811082860', 'darbhanga college of engineering', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(17, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '123456654321', 'hhgchg', 'nbv,', 'c', '1234', 1, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(18, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(19, 'nhgchg', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'c', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'b', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(20, 'nargis', 'pamu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'gfn', 'nbv,', 'bnvhvhkv', '2018', 1, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(21, 'saima', 'snasreen001@gmail.com', '81dc9bdb52', '7004305640', '399811082860', 'jamia Millia Islamia', 'btech', 'ece', '2016', 2020, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(22, 'nargis', 'c@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(23, 'Nargis Nasreen', 'h@gmail.com', 'd2490f048d', '1234567890', '399811082860', 'hhgchg', 'btech', 'c', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(24, 'nargis', 'au@gmail.com', '202cb962ac', '7004305640', '399811082860', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '2018', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(25, 'nhgchg', 'ab@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'n', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(26, 'nhgchg', 'abb@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'n', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(27, 'Nargis', 'nargis@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(28, 'nhgchg', 'as@gmail.com', '202cb962ac', '1234567890', '399811082860', 'cvxnvcx', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(29, 'nargis', '1amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(30, 'nargis', 'r@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(31, 'muskan', 'm@gmai.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(32, 'nargis', 's@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(33, 'nargis', 'z@gmail.com', '202cb962ac', '7004305640', '399811082860', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1', 1, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(34, 'nargis', 'amu@gmail.com', '', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(35, 'nargis', 'amu@gmail.com', '123', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(36, 'nargis', 'amu@gmail.com', '123', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(37, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(38, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(39, 'nargis', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1', 4321, 'Darbhanga', '452bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(40, 'nhgchg', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'gfn', '1234', 4321, 'Darbhanga', 'bmjjk', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(41, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(42, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(43, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(44, 'jhdkfjk', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082861', 'cvxnvcx', 'vhvhk', 'bnvhvhkv', '1234', 2022, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(45, 'bjjbh', 'amu@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452nbcj', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(46, 'nargis', 'u@gmail.com', '202cb962ac', '7004305640', '399811082860', 'darbhanga college of engineering', 'btech', 'bnvhvhkv', '2018', 1, 'Darbhanga', 'bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(47, 'nk nkc', 'njkcnkj@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'nbcbc', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(48, 'nk nkc', 'njnkj@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'nbcbc', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(49, 'nargis', 'vchb@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'cx bncc', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(51, 'nargis', 'bcjh@gmail.com', '202cb962ac', '1234567890', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', '452', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(52, '', '', '', '', '', '', '', '', '', 0, '', '', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(53, 'Nargis Nasreen', 'p@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'btech', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(54, 'Nargis Nasreen', 'google@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(55, 'Nargis Nasreen', 'k@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(56, 'Nargis Nasreen', 'fi@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(57, 'Nargis Nasreen', 'da@gmail.com', '202cb962ac', '9835050340', '399811082860', 'hhgchg', 'c', 'c', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(58, 'Nargis Nasreen', 'dsv@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9835050340', '123456654321', 'h', 'nbv,', 'c', '1234', 1, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(59, 'Nargis Nasreen', 'na@gmail.com', '202cb962ac59075b964b07152d234b70', '9835050340', '399811082860', 'hhgchg', 'vhvhk', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(60, 'Nargis Nasreen', 'to@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '9835050340', '399811082860', 'hhgchg', 'c', 'bnvhvhkv', '1234', 4321, 'Darbhanga', 'Bihar', 0, NULL, '2020-07-23 13:37:41', NULL, NULL),
(61, 'Nargis Nasreen', 'eggman@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '9835050340', '399811082860', 'A.b.M Degree College', 'nbv,', 'c', '1234', 4321, 'Darbhanga', 'Bihar', 2147483647, NULL, '2020-07-23 13:37:41', '2020-07-24 10:35:02', NULL),
(69, 'Nargis Nasreen', 'anda@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9835050340', '756767856873', 'A.J. College of Education', 'mtech', 'bgfbd', '6565', 4534, 'ggggf', 'Bihar', 56466343, '8e8e21df441a2e11ef35ca017769f706.jpg', '2020-07-23 22:31:55', '2020-07-24 10:05:50', 1),
(72, 'Nargis Nasreen', 'nasreennargisamu@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9835050340', '756767856873', 'A.G.K.M College', 'mtech', 'bgfbd', '6565', 4534, 'ggggf', 'Bihar', 56466343, '8e8e21df441a2e11ef35ca017769f706.jpg', '2020-07-23 23:10:42', '2020-07-24 09:57:18', 1),
(78, 'bhbhvjb', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', '', 'bcb chv', '', '', '', 0, '', '', 0, NULL, '2020-07-24 06:16:48', NULL, 1),
(84, 'nbnbvnb', 'nda@gmail.com', 'd878c179fbeef70c7ff44efb1b7c6582', '', '', 'Andhra Christian College', '', '', '', 0, '', '', 0, NULL, '2020-07-24 09:31:41', NULL, 1),
(89, 'Inayat', 'nasreennargis204@gmail.com', '9710fa2bc72b24cc00917e65284dd502', '', '', 'Government Degree College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:14:15', NULL, 1),
(90, 'nasreen', 'nargisnasreen36@gmail.com', '70b7efbc69f58f682a0014b53d70f929', '', '', 'B.B.H. College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:16:17', NULL, 1),
(91, 'nasree', 'nawaz@gmail.com', '2bcb86101ac5b414c2866e7fa670f1b6', '', '', 'Government Degree College', '', '', '', 0, '', '', 1234567890, NULL, '2020-07-24 10:38:07', NULL, 1),
(93, 'jabir', 'jabir@gmail.com', '9d521df85be3e30b9163daece191e805', '', '', 'K.L. College of Engineering', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:55:23', NULL, 1),
(94, 'ammi', 'ammi@gmail.com', '708dbbf173640039e537c26d8a317eaa', '', '', 'B.B.H. College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 10:59:44', NULL, 1),
(95, 'abbu', 'abbu@gmail.com', 'c1a635a03762bff6ff865994fd178a78', '', '', 'A.J. College of Education', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-24 11:05:32', NULL, 1),
(96, 'Nargis Nasreen', 'aapi@gmail.com', '3a42fc7702125321d8847cd2d829968c', '9835050340', '399811082860', 'B.B.H. College', 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, 'd5fae34f0e93dd539a7d3c43d6740169.png', '2020-07-24 11:07:20', '2020-07-24 11:09:32', 1),
(97, 'Nargis Nasreen', 'alia@gmail.com', '86c8c6c90abd00c209e39736da1ec1fd', '9835050340', '399811075687', 'A.J. College of Education', 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, 'd5fae34f0e93dd539a7d3c43d6740169.png', '2020-07-24 11:13:28', '2020-07-24 11:14:53', 1),
(98, 'nargis', 'no@gmail.com', '7fa3b767c460b54a2be4d49030b349c7', '', '', '9', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-25 09:25:35', NULL, 1),
(99, 'saima', 'saim@gmail.com', '844f9ee41a83411bb8464b0a0d02f1c6', '9835050340', '399811082860', 'K.L. College of Engineering', 'mtech', 'cse', '2018', 2022, 'Darbhanga', 'Bihar', 2147483647, NULL, '2020-07-25 09:36:49', '2020-07-26 22:32:30', 1),
(100, 'Suman Kumari', 'sunainasuman2002@gmail.com', 'e4df832538d8f1476564191196a67fcd', '', '', 'B.B.H. College', '', '', '', 0, '', '', 2147483647, NULL, '2020-07-28 21:08:37', NULL, 1);

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
(1, 'aryabhatta knowlegde university', 'aku@gmail.com', 'aku@123', '2020-08-02 04:12:13', NULL);

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
(1, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:21:28', '', 0),
(2, 0, 'anda', 0x3a3a3100000000000000000000000000, '2020-07-23 23:21:29', '', 0),
(3, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:22:06', '', 0),
(4, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:23:14', '', 1),
(5, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:23:36', '', 1),
(6, 0, 'anda', 0x3a3a3100000000000000000000000000, '2020-07-23 23:23:47', '', 0),
(7, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:23:51', '', 1),
(8, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:24:08', '', 1),
(9, 0, 'nasrnnargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:25:21', '', 0),
(10, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-23 23:25:28', '', 1),
(11, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:38:23', '24-07-2020 05:30:07 PM', 1),
(12, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 03:38:53', '', 1),
(13, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 04:49:21', '', 1),
(14, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 05:01:17', '', 1),
(15, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 05:06:46', '24-07-2020 05:33:19 PM', 1),
(16, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 06:33:21', '24-07-2020 05:33:24 PM', 1),
(17, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 07:23:16', '', 1),
(18, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 09:45:24', '', 0),
(19, 0, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 09:45:35', '', 1),
(20, 0, 'nasreennargis204@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:14:39', '24-07-2020 09:15:28 PM', 1),
(21, 0, 'nargisnasreen36@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:16:45', '24-07-2020 09:19:18 PM', 1),
(22, 0, 'anda@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:19:36', '', 0),
(23, 0, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:19:40', '', 0),
(24, 0, 'anda', 0x3a3a3100000000000000000000000000, '2020-07-24 10:19:52', '', 0),
(25, 0, 'nasreennargis204@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:19:57', '24-07-2020 09:34:15 PM', 1),
(26, 0, 'eggman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:34:28', '', 1),
(27, 0, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:38:21', '', 1),
(28, 0, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:44:41', '24-07-2020 09:45:12 PM', 1),
(29, 93, 'jabir@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 10:55:41', '24-07-2020 09:59:15 PM', 1),
(30, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 11:00:00', '24-07-2020 10:03:46 PM', 1),
(31, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 11:04:40', '24-07-2020 10:04:53 PM', 1),
(32, 96, 'aapi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 11:07:32', '24-07-2020 10:09:42 PM', 1),
(33, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 11:13:41', '', 1),
(34, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 23:41:04', '', 1),
(35, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 02:41:18', '25-07-2020 01:41:29 PM', 1),
(36, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 02:41:34', '', 1),
(37, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 03:46:56', '', 1),
(38, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 05:56:59', '25-07-2020 04:57:09 PM', 1),
(39, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 05:57:14', '25-07-2020 05:14:40 PM', 1),
(40, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:14:46', '25-07-2020 05:20:04 PM', 1),
(41, 96, 'aapi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:20:09', '25-07-2020 05:20:59 PM', 1),
(42, 0, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:21:04', '', 0),
(43, 91, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:21:09', '', 1),
(44, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:26:38', '25-07-2020 05:54:55 PM', 1),
(45, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:55:01', '25-07-2020 05:57:07 PM', 1),
(46, 94, 'ammi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:57:11', '25-07-2020 05:57:32 PM', 1),
(47, 91, 'nawaz@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:57:40', '25-07-2020 05:57:42 PM', 1),
(48, 96, 'aapi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 06:57:46', '', 1),
(49, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 07:57:55', '', 1),
(50, 98, 'no@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:25:48', '25-07-2020 08:30:45 PM', 1),
(51, 97, 'alia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:30:51', '25-07-2020 08:36:04 PM', 1),
(52, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:37:04', '', 1),
(53, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:44:27', '25-07-2020 08:45:20 PM', 1),
(54, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:45:23', '', 1),
(55, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 09:58:18', '', 1),
(56, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:30:25', '25-07-2020 09:30:30 PM', 1),
(57, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 10:47:43', '', 1),
(58, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-25 23:27:17', '', 1),
(59, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 11:33:40', '', 1),
(60, 0, 'ccc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 11:45:47', '', 0),
(61, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 11:45:52', '', 1),
(62, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 22:15:40', '', 1),
(63, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-26 22:40:52', '27-07-2020 11:25:49 AM', 1),
(64, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 00:53:25', '27-07-2020 11:53:35 AM', 1),
(65, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 00:53:51', '', 1),
(66, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 02:12:06', '', 1),
(67, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 02:32:01', '', 1),
(68, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-27 09:11:11', '', 1),
(69, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 00:43:36', '', 1),
(70, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 06:41:47', '', 1),
(71, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 07:01:05', '', 1),
(72, 0, 'nargis@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 21:06:46', '', 0),
(73, 0, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 21:07:11', '', 0),
(74, 0, 'amu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 21:07:38', '', 0),
(75, 100, 'sunainasuman2002@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 21:09:04', '', 1),
(76, 0, 'sunainasuman2001@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 05:24:07', '', 0),
(77, 100, 'sunainasuman2002@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 05:24:28', '', 1),
(78, 0, 'admin', 0x3132372e302e302e3100000000000000, '2020-07-29 17:28:53', '', 0),
(79, 100, 'sunainasuman2002@gmail.com', 0x3132372e302e302e3100000000000000, '2020-07-29 17:29:08', '', 1),
(80, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 07:14:08', '31-07-2020 12:59:54 PM', 1),
(81, 0, 'modern@gmail.com', 0x00000000000000000000000000000000, '2020-07-31 07:29:59', '', 0),
(82, 0, 'nasreennargisamu@gmail.com', 0x00000000000000000000000000000000, '2020-07-31 07:30:05', '', 0),
(83, 0, '', 0x00000000000000000000000000000000, '2020-07-31 07:32:17', '', 0),
(84, 0, '', 0x00000000000000000000000000000000, '2020-07-31 07:36:05', '', 0),
(85, 0, '', 0x00000000000000000000000000000000, '2020-07-31 08:46:33', '', 0),
(86, 0, '', 0x00000000000000000000000000000000, '2020-07-31 08:46:38', '', 0),
(87, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:47:00', '', 1),
(88, 0, '', 0x00000000000000000000000000000000, '2020-07-31 08:48:59', '', 0),
(89, 0, '', 0x00000000000000000000000000000000, '2020-07-31 08:52:38', '', 0),
(90, 0, '', 0x00000000000000000000000000000000, '2020-07-31 08:52:40', '', 0),
(91, 0, '', 0x00000000000000000000000000000000, '2020-07-31 08:52:41', '', 0),
(92, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:53:38', '31-07-2020 02:25:01 PM', 1),
(93, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:03', '', 1),
(94, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:04', '', 1),
(95, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:05', '', 1),
(96, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:06', '', 1),
(97, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:08', '', 1),
(98, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:09', '', 1),
(99, 99, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:10', '', 1),
(100, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:32', '31-07-2020 02:25:38 PM', 1),
(101, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:41', '31-07-2020 02:25:44 PM', 1),
(102, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:55:48', '31-07-2020 02:26:15 PM', 1),
(103, 99, 'saim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:56:21', '31-07-2020 02:26:25 PM', 1),
(104, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:56:29', '31-07-2020 02:27:12 PM', 1),
(105, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:57:14', '31-07-2020 02:27:17 PM', 1),
(106, 0, 'ccc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:57:23', '', 0),
(107, 0, 'dbg', 0x3a3a3100000000000000000000000000, '2020-07-31 08:57:32', '', 0),
(108, 0, 'modern@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:58:18', '', 0),
(109, 0, 'modern@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:59:07', '', 0),
(110, 72, 'nasreennargisamu@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-31 08:59:19', '31-07-2020 02:29:22 PM', 1),
(111, 0, '', 0x3a3a3100000000000000000000000000, '2020-07-31 08:59:26', '', 0),
(112, 99, 'saim@gmail.com', 0x00000000000000000000000000000000, '2020-07-31 09:14:20', '', 1),
(113, 0, '', 0x00000000000000000000000000000000, '2020-08-01 08:06:31', '', 0),
(114, 0, '', 0x00000000000000000000000000000000, '2020-08-01 10:00:45', '', 0),
(115, 0, '', 0x00000000000000000000000000000000, '2020-08-01 10:00:46', '', 0),
(116, 0, '', 0x00000000000000000000000000000000, '2020-08-01 10:01:53', '', 0),
(117, 0, '', 0x00000000000000000000000000000000, '2020-08-02 05:47:42', '', 0),
(118, 0, '', 0x00000000000000000000000000000000, '2020-08-02 05:47:48', '', 0),
(119, 0, '', 0x00000000000000000000000000000000, '2020-08-02 05:47:53', '', 0),
(120, 0, '', 0x00000000000000000000000000000000, '2020-08-02 05:48:14', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy`
--
ALTER TABLE `academy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pushcomplaint`
--
ALTER TABLE `pushcomplaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pushsolution`
--
ALTER TABLE `pushsolution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `college` (`college`);

--
-- Indexes for table `student_old`
--
ALTER TABLE `student_old`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pushcomplaint`
--
ALTER TABLE `pushcomplaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pushsolution`
--
ALTER TABLE `pushsolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

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
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`college`) REFERENCES `academy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
