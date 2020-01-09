-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 11:31 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dependent_dropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_status` varchar(25) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_status`) VALUES
(1, 'Web Desining', 'ACTIVE'),
(2, 'Web Development', 'ACTIVE'),
(3, 'Software Development', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `lang_id` int(11) NOT NULL,
  `lang_cors_id` int(25) NOT NULL,
  `lang_name` varchar(25) NOT NULL,
  `lang_status` varchar(25) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`lang_id`, `lang_cors_id`, `lang_name`, `lang_status`) VALUES
(1, 1, 'html 5', 'ACTIVE'),
(2, 1, 'css 3', 'ACTIVE'),
(3, 1, 'Java Script', 'ACTIVE'),
(4, 1, 'Jquery', 'ACTIVE'),
(5, 1, 'Bootstrap', 'ACTIVE'),
(6, 2, 'PHP', 'ACTIVE'),
(7, 2, 'ASP', 'ACTIVE'),
(8, 2, 'JSP', 'ACTIVE'),
(9, 2, 'Python', 'ACTIVE'),
(10, 2, 'Node js', 'ACTIVE'),
(11, 3, 'C   Language', 'ACTIVE'),
(12, 3, 'C ++', 'ACTIVE'),
(13, 3, 'JAVA', 'ACTIVE'),
(14, 3, 'Dot Net', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`lang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
