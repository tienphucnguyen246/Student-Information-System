-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 02:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_staff`
--

CREATE TABLE `academic_staff` (
  `staff_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_staff`
--

INSERT INTO `academic_staff` (`staff_id`, `username`, `fullname`, `gender`, `address`, `phone`, `role`) VALUES
(1, 'Richard', 'Richard Turner', 'Male', 'Ho Chi Minh City', '0934564987', 'staff'),
(2, 'Lauren', 'Lauren Mitchell', 'Male', 'Ho Chi Minh City', '0398646218', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `username`, `fullname`, `gender`, `address`, `phone`, `role`) VALUES
(1, 'Alex', 'Alex Reynolds', 'Male', 'Ho Chi Minh City', '0934564987', 'accountant'),
(2, 'Morgan', 'Morgan Anderson', 'Male', 'Ho Chi Minh City', '0398646218', 'accountant');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `role`) VALUES
(1, 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `shift` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `class`, `teacher_name`, `subject`, `date`, `shift`, `code`, `status`) VALUES
(1, '10A1', 'Ms. Allison Williams', 'English', '2023-11-24', 1, '', 'Absence'),
(2, '10A2', 'Dr. Benjamin Mitchell', 'Math', '2023-11-24', 1, '', 'Absence'),
(3, '10A3', 'Professor Eleanor Thompson', 'Literature', '2023-11-24', 1, '', 'Absence'),
(4, '11A1', 'Mrs. Olivia Chang', 'Math', '2023-11-24', 1, '', 'Absence'),
(5, '11A2', 'Ms. Gabriel Hayes', 'Literature', '2023-11-24', 1, '', 'Present'),
(6, '11A3', 'Mr. Jonathan Turner', 'English', '2023-11-24', 1, '', 'Present'),
(7, '12A1', 'Mr. Christopher Rodriguez', 'Math', '2023-11-24', 1, '', 'Present'),
(8, '12A2', 'Mr. Samuel Reynolds', 'Literature', '2023-11-24', 1, '', 'Present'),
(12, '12A3', 'Mrs. Emily Anderson', 'English', '2023-11-27', 1, '', 'Present'),
(28, '12A1', 'Mrs. Emily Anderson', 'English', '2023-11-23', 1, '123456', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_history`
--

CREATE TABLE `attendance_history` (
  `attendance_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `shift` int(11) NOT NULL,
  `date` date NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_status` varchar(30) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_history`
--

INSERT INTO `attendance_history` (`attendance_id`, `class`, `subject`, `shift`, `date`, `teacher_name`, `teacher_status`, `student_id`, `student_name`, `student_status`) VALUES
(27, '12A1', 'English', 3, '2023-11-19', 'Mrs. Emily Anderson', 'Absence', 0, '', ''),
(35, '12A1', 'English', 1, '2023-11-19', 'Mrs. Emily Anderson', 'Absence', 0, '', ''),
(36, '12A1', 'English', 2, '2023-11-19', 'Mrs. Emily Anderson', 'Present', 0, '', ''),
(37, '12A1', 'English', 2, '2023-11-19', 'Mrs. Emily Anderson', 'Present', 1211, 'Ly Van A', 'Present'),
(38, '12A1', 'English', 2, '2023-11-19', 'Mrs. Emily Anderson', 'Present', 1212, 'Ly Van B ', 'Absence'),
(39, '12A1', 'English', 2, '2023-11-19', 'Mrs. Emily Anderson', 'Present', 1213, 'Ly Thi C', 'Absence'),
(40, '12A1', 'English', 2, '2023-11-19', 'Mrs. Emily Anderson', 'Present', 1214, 'Ly Van D', 'Absence'),
(41, '12A1', 'English', 2, '2023-11-19', 'Mrs. Emily Anderson', 'Present', 1215, 'Ly Thi E', 'Absence'),
(43, '12A1', 'English', 4, '2023-11-20', 'Mrs. Emily Anderson', 'Present', 0, '', ''),
(44, '12A1', 'English', 4, '2023-11-20', 'Mrs. Emily Anderson', 'Present', 1211, 'Ly Van A', 'Present'),
(45, '12A1', 'English', 4, '2023-11-20', 'Mrs. Emily Anderson', 'Present', 1212, 'Ly Van B ', 'Absence'),
(46, '12A1', 'English', 4, '2023-11-20', 'Mrs. Emily Anderson', 'Present', 1213, 'Ly Thi C', 'Absence'),
(47, '12A1', 'English', 4, '2023-11-20', 'Mrs. Emily Anderson', 'Present', 1214, 'Ly Van D', 'Absence'),
(48, '12A1', 'English', 4, '2023-11-20', 'Mrs. Emily Anderson', 'Present', 1215, 'Ly Thi E', 'Absence'),
(49, '12A1', 'English', 2, '2023-11-21', 'Mrs. Emily Anderson', 'Present', 0, '', ''),
(50, '12A1', 'English', 2, '2023-11-21', 'Mrs. Emily Anderson', 'Present', 1211, 'Ly Van A', 'Absence'),
(51, '12A1', 'English', 2, '2023-11-21', 'Mrs. Emily Anderson', 'Present', 1212, 'Ly Van B ', 'Absence'),
(52, '12A1', 'English', 2, '2023-11-21', 'Mrs. Emily Anderson', 'Present', 1213, 'Ly Thi C', 'Absence'),
(53, '12A1', 'English', 2, '2023-11-21', 'Mrs. Emily Anderson', 'Present', 1214, 'Ly Van D', 'Absence'),
(54, '12A1', 'English', 2, '2023-11-21', 'Mrs. Emily Anderson', 'Present', 1215, 'Ly Thi E', 'Absence'),
(55, '12A1', 'English', 1, '2023-11-23', 'Mrs. Emily Anderson', 'Present', 0, '', ''),
(56, '12A1', 'English', 1, '2023-11-23', 'Mrs. Emily Anderson', 'Present', 1211, 'Ly Van A', 'Absence'),
(57, '12A1', 'English', 1, '2023-11-23', 'Mrs. Emily Anderson', 'Present', 1212, 'Ly Van B ', 'Absence'),
(58, '12A1', 'English', 1, '2023-11-23', 'Mrs. Emily Anderson', 'Present', 1213, 'Ly Thi C', 'Absence'),
(59, '12A1', 'English', 1, '2023-11-23', 'Mrs. Emily Anderson', 'Present', 1214, 'Ly Van D', 'Absence'),
(60, '12A1', 'English', 1, '2023-11-23', 'Mrs. Emily Anderson', 'Present', 1215, 'Ly Thi E', 'Absence');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class`, `section`) VALUES
(1, '10A1', '10'),
(2, '10A2', '10'),
(3, '10A3', '10'),
(4, '11A1', '11'),
(5, '11A2', '11'),
(6, '11A3', '11'),
(7, '12A1', '12'),
(8, '12A2', '12'),
(9, '12A3', '12');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `type`, `title`, `class`, `subject`, `date`) VALUES
(1, 'mid', 'Mid-term Hk1 2023', '10A1', 'Math', '2023-12-20'),
(2, 'mid', 'Mid-term Hk1 2023', '10A2', 'English', '2023-12-19'),
(3, 'mid', 'Mid-term Hk1 2023', '10A3', 'Literature', '2023-12-21'),
(4, 'mid', 'Mid-term Hk1 2023', '11A1', 'English', '2023-12-21'),
(5, 'mid', 'Mid-term Hk1 2023', '11A2', 'Math', '2023-12-19'),
(6, 'mid', 'Mid-term Hk1 2023', '11A3', 'Literature', '2023-12-20'),
(7, 'mid', 'Mid-term Hk1 2023', '12A1', 'Literature', '2023-12-20'),
(8, 'mid', 'Mid-term Hk1 2023', '12A2', 'Math', '2023-12-21'),
(9, 'mid', 'Mid-term Hk1 2023', '12A3', 'English', '2023-12-19'),
(10, 'final', 'Final-term Hk1 2023', '10A1', 'Math', '2023-12-20'),
(11, 'final', 'Final-term Hk1 2023', '10A2', 'English', '2023-12-19'),
(12, 'final', 'Final-term Hk1 2023', '10A3', 'Literature', '2023-12-21'),
(13, 'final', 'Final-term Hk1 2023', '11A1', 'English', '2023-12-21'),
(14, 'final', 'Final-term Hk1 2023', '11A2', 'Math', '2023-12-19'),
(15, 'final', 'Final-term Hk1 2023', '11A3', 'Literature', '2023-12-20'),
(16, 'final', 'Final-term Hk1 2023', '12A1', 'Literature', '2023-12-20'),
(17, 'final', 'Final-term Hk1 2023', '12A2', 'Math', '2023-12-21'),
(18, 'final', 'Final-term Hk1 2023', '12A3', 'English', '2023-12-19'),
(19, 'mid', 'Mid-term Hk2 2023', '10A1', 'Math', '2023-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(11) NOT NULL,
  `accountant_name` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `fee` float NOT NULL,
  `title` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `accountant_name`, `class`, `student_id`, `student_name`, `fee`, `title`, `date`, `status`) VALUES
(31, 'Alex Reynolds', '10A1', 1011, 'Nguyen Van A', 5000, 'Tuition Fee 2023', '2023-11-22', 'Unpaid'),
(32, 'Alex Reynolds', '10A1', 1012, 'Nguyen Van B ', 5000, 'Tuition Fee 2023', '2023-11-22', 'Unpaid'),
(33, 'Alex Reynolds', '10A1', 1013, 'Nguyen Thi C', 5000, 'Tuition Fee 2023', '2023-11-22', 'Unpaid'),
(34, 'Alex Reynolds', '10A1', 1014, 'Nguyen Van D', 5000, 'Tuition Fee 2023', '2023-11-22', 'Unpaid'),
(35, 'Alex Reynolds', '10A1', 1015, 'Nguyen Thi E', 5000, 'Tuition Fee 2023', '2023-11-22', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `homework_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `link` varchar(120) NOT NULL,
  `deadline` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`homework_id`, `teacher_name`, `class`, `subject`, `title`, `link`, `deadline`, `status`) VALUES
(1, 'Ms. Allison Williams', '10A1', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-19', ''),
(2, 'Ms. Allison Williams', '10A2', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-26', ''),
(3, 'Ms. Allison Williams', '10A3', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-26', ''),
(4, 'Mr. Jonathan Turner', '11A1', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-27', ''),
(5, 'Mr. Jonathan Turner', '11A2', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-27', ''),
(6, 'Mr. Jonathan Turner', '11A3', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-27', ''),
(7, 'Mrs. Emily Anderson', '12A1', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.instagram.com/', '2023-11-16', 'Overdue'),
(8, 'Mrs. Emily Anderson', '12A2', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-25', 'Active'),
(9, 'Mrs. Emily Anderson', '12A3', 'English', 'Exercise 1, 2, 3 - Unit 1', 'https://www.youtube.com/', '2023-11-25', 'Active'),
(10, 'Dr. Benjamin Mitchell', '10A3', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-25', ''),
(11, 'Dr. Benjamin Mitchell', '10A2', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-25', ''),
(12, 'Dr. Benjamin Mitchell', '10A3', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-25', ''),
(13, 'Mrs. Olivia Chang', '11A1', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-25', ''),
(14, 'Mrs. Olivia Chang', '11A2', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-25', ''),
(15, 'Mrs. Olivia Chang', '11A3', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-26', ''),
(16, 'Mr. Christopher Rodriguez', '12A1', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-27', ''),
(17, 'Mr. Christopher Rodriguez', '12A2', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-26', ''),
(18, 'Mr. Christopher Rodriguez', '12A3', 'Math', 'Part 1, 2 - Workboook p.100', 'https://www.youtube.com/', '2023-11-26', ''),
(19, 'Professor Eleanor Thompson', '10A1', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-26', ''),
(20, 'Professor Eleanor Thompson', '10A2', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-27', ''),
(21, 'Professor Eleanor Thompson', '10A3', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-26', ''),
(22, 'Ms. Gabriel Hayes', '11A1', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-27', ''),
(23, 'Ms. Gabriel Hayes', '11A2', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-25', ''),
(24, 'Ms. Gabriel Hayes', '11A3', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-27', ''),
(25, 'Mr. Samuel Reynolds', '12A1', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-26', ''),
(26, 'Mr. Samuel Reynolds', '12A2', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-27', ''),
(27, 'Mr. Samuel Reynolds', '12A3', 'Literature', 'write a review test - ebook p.11', 'https://www.youtube.com/', '2023-11-26', '');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `relationship` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`student_id`, `student_name`, `name`, `relationship`, `phone`, `email`) VALUES
(1011, 'Nguyen Van A', 'Christopher Taylor', 'Mother', '0934564987', 'abc@gmail.com'),
(1012, 'Nguyen Van B', 'Andrew White', 'Father', '0987653210', 'abc@gmail.com'),
(1013, 'Nguyen Thi C', 'Nicholas Moore', 'Father', '05551234567', 'abc@gmail.com'),
(1014, 'Nguyen Van D', 'Samuel Clark', 'Father', '1112223333', 'abc@gmail.com'),
(1015, 'Nguyen Thi E', 'Aiden King', 'Father', '7778889999', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `score_before` float NOT NULL,
  `score_after` float NOT NULL,
  `date` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`score_id`, `student_id`, `student_name`, `teacher_name`, `class`, `type`, `subject`, `score_before`, `score_after`, `date`, `status`) VALUES
(26, 1211, 'Ly Van A', 'Mrs. Emily Anderson', '12A1', '15p Test', 'English', 7.5, 0, '2023-11-21', 'Initial'),
(27, 1212, 'Ly Van B ', 'Mrs. Emily Anderson', '12A1', '15p Test', 'English', 0, 0, '2023-11-21', ''),
(28, 1213, 'Ly Thi C', 'Mrs. Emily Anderson', '12A1', '15p Test', 'English', 0, 0, '2023-11-21', ''),
(29, 1214, 'Ly Van D', 'Mrs. Emily Anderson', '12A1', '15p Test', 'English', 0, 0, '2023-11-21', ''),
(30, 1215, 'Ly Thi E', 'Mrs. Emily Anderson', '12A1', '15p Test', 'English', 0, 0, '2023-11-21', ''),
(31, 1211, 'Ly Van A', 'Mrs. Emily Anderson', '12A1', '45p test', 'English', 0, 0, '2023-11-23', 'Initial'),
(32, 1212, 'Ly Van B ', 'Mrs. Emily Anderson', '12A1', '45p test', 'English', 0, 0, '2023-11-23', ''),
(33, 1213, 'Ly Thi C', 'Mrs. Emily Anderson', '12A1', '45p test', 'English', 0, 0, '2023-11-23', ''),
(34, 1214, 'Ly Van D', 'Mrs. Emily Anderson', '12A1', '45p test', 'English', 0, 0, '2023-11-23', ''),
(35, 1215, 'Ly Thi E', 'Mrs. Emily Anderson', '12A1', '45p test', 'English', 8, 0, '2023-11-23', 'Initial');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `fullname`, `gender`, `address`, `phone`, `class`, `section`, `role`) VALUES
(1011, 'Van A10', 'Nguyen Van A', 'Male', 'Ho Chi Minh City', '0934564987', '10A1', '10', 'student'),
(1012, 'Van B10', 'Nguyen Van B ', 'Male', 'Ho Chi Minh City', '0398646218', '10A1', '10', 'student'),
(1013, 'Thi C10', 'Nguyen Thi C', 'Female', 'Ho Chi Minh City', '5551234567', '10A1', '10', 'student'),
(1014, 'Van D10', 'Nguyen Van D', 'Male', 'Ho Chi Minh City', '1112223333', '10A1', '10', 'student'),
(1015, 'Thi E10', 'Nguyen Thi E', 'Female', 'Ho Chi Minh City', '7778889999', '10A1', '10', 'student'),
(1021, 'Van F10', 'Nguyen Van F', 'Male', 'Ho Chi Minh City', '0934564987', '10A2', '10', 'student'),
(1022, 'Thi G10', 'Nguyen Thi G', 'Female', 'Ho Chi Minh City', '9876543210', '10A2', '10', 'student'),
(1023, 'Thi H10', 'Nguyen Thi H ', 'Female', 'Ho Chi Minh City', '5551234567', '10A2', '10', 'student'),
(1024, 'Van I10', 'Nguyen Van I ', 'Male', 'Ho Chi Minh City', '1112223333', '10A2', '10', 'student'),
(1025, 'Van J10', 'Nguyen Van J ', 'Male', 'Ho Chi Minh City', '7778889999', '10A2', '10', 'student'),
(1031, 'Van K10', 'Nguyen Van K ', 'Male', 'Ho Chi Minh City', '0954234654', '10A3', '10', 'student'),
(1032, 'Thi L10', 'Nguyen Thi L', 'Female', 'Ho Chi Minh City', '0945323464', '10A3', '10', 'student'),
(1033, 'Van M10', 'Nguyen Van M ', 'Male', 'Ho Chi Minh City', '093245256', '10A3', '10', 'student'),
(1034, 'Thi N10', 'Nguyen Thi N ', 'Female', 'Ho Chi Minh City', '0934234265', '10A3', '10', 'student'),
(1035, 'Van O10', 'Nguyen Van O ', 'Male', 'Ho Chi Minh City', '093534562', '10A3', '10', 'student'),
(1111, 'Van A11', 'Le Van A', 'Male', 'Ho Chi Minh City', '0934564987', '11A1', '11', 'student'),
(1112, 'Van B11', 'Le Van B ', 'Male', 'Ho Chi Minh City', '0398646218', '11A1', '11', 'student'),
(1113, 'Thi C11', 'Le Thi C', 'Female', 'Ho Chi Minh City', '5551234567', '11A1', '11', 'student'),
(1114, 'Van D11', 'Le Van D', 'Male', 'Ho Chi Minh City', '1112223333', '11A1', '11', 'student'),
(1115, 'Thi E11', 'Le Thi E', 'Female', 'Ho Chi Minh City', '7778889999', '11A1', '11', 'student'),
(1121, 'Van F11', 'Le Van F', 'Male', 'Ho Chi Minh City', '0934564987', '11A2', '11', 'student'),
(1122, 'Thi G11', 'Le Thi G', 'Female', 'Ho Chi Minh City', '9876543210', '11A2', '11', 'student'),
(1123, 'Thi H11', 'Le Thi H ', 'Female', 'Ho Chi Minh City', '5551234567', '11A2', '11', 'student'),
(1124, 'Van I11', 'Le Van I ', 'Male', 'Ho Chi Minh City', '1112223333', '11A2', '11', 'student'),
(1125, 'Van J11', 'Le Van J ', 'Male', 'Ho Chi Minh City', '7778889999', '11A2', '11', 'student'),
(1131, 'Van K11', 'Le Van K ', 'Male', 'Ho Chi Minh City', '0954234654', '11A3', '11', 'student'),
(1132, 'Thi L11', 'Le Thi L', 'Female', 'Ho Chi Minh City', '0945323464', '11A3', '11', 'student'),
(1133, 'Van M11', 'Le Van M ', 'Male', 'Ho Chi Minh City', '093245256', '11A3', '11', 'student'),
(1134, 'Thi N11', 'Le Thi N ', 'Female', 'Ho Chi Minh City', '0934234265', '11A3', '11', 'student'),
(1135, 'Van O11', 'Le Van O ', 'Male', 'Ho Chi Minh City', '093534562', '11A3', '11', 'student'),
(1211, 'Van A12', 'Ly Van A', 'Male', 'Ho Chi Minh City', '0934564987', '12A1', '12', 'student'),
(1212, 'Van B12', 'Ly Van B ', 'Male', 'Ho Chi Minh City', '0398646218', '12A1', '12', 'student'),
(1213, 'Thi C12', 'Ly Thi C', 'Female', 'Ho Chi Minh City', '5551234567', '12A1', '12', 'student'),
(1214, 'Van D12', 'Ly Van D', 'Male', 'Ho Chi Minh City', '1112223333', '12A1', '12', 'student'),
(1215, 'Thi E12', 'Ly Thi E', 'Female', 'Ho Chi Minh City', '7778889999', '12A1', '12', 'student'),
(1221, 'Van F12', 'Ly Van F', 'Male', 'Ho Chi Minh City', '0934564987', '12A2', '12', 'student'),
(1222, 'Thi G12', 'Ly Thi G', 'Female', 'Ho Chi Minh City', '9876543210', '12A2', '12', 'student'),
(1223, 'Thi H12', 'Ly Thi H ', 'Female', 'Ho Chi Minh City', '5551234567', '12A2', '12', 'student'),
(1224, 'Van I12', 'Ly Van I ', 'Male', 'Ho Chi Minh City', '1112223333', '12A2', '12', 'student'),
(1225, 'Van J12', 'Ly Van J ', 'Male', 'Ho Chi Minh City', '7778889999', '12A2', '12', 'student'),
(1231, 'Van K12', 'Ly Van K ', 'Male', 'Ho Chi Minh City', '0954234654', '12A3', '12', 'student'),
(1232, 'Thi L12', 'Ly Thi L', 'Female', 'Ho Chi Minh City', '0945323464', '12A3', '12', 'student'),
(1233, 'Van M12', 'Ly Van M ', 'Male', 'Ho Chi Minh City', '093245256', '12A3', '12', 'student'),
(1234, 'Thi N12', 'Ly Thi N ', 'Female', 'Ho Chi Minh City', '0934234265', '12A3', '12', 'student'),
(1235, 'Van O12', 'Ly Van O ', 'Male', 'Ho Chi Minh City', '093534562', '12A3', '12', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `shift` int(11) NOT NULL,
  `date` date NOT NULL,
  `code` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`) VALUES
(1, 'Math'),
(2, 'Literature'),
(3, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `fullname`, `gender`, `phone`, `address`, `subject`, `role`) VALUES
(101, 'Allison', 'Ms. Allison Williams', 'Female', '0934564987', 'Ho Chi Minh City', 'English', 'teacher'),
(102, 'Jonathan', 'Mr. Jonathan Turner', 'Male', '9876543210', 'Ho Chi Minh City', 'English', 'teacher'),
(103, 'Emily', 'Mrs. Emily Anderson', 'Female', '5551234567', 'Ho Chi Minh City', 'English', 'teacher'),
(201, 'Benjamin', 'Dr. Benjamin Mitchell', 'Male', '1112223333', 'Ho Chi Minh City', 'Math', 'teacher'),
(202, 'Olivia', 'Mrs. Olivia Chang', 'Female', '7778889999', 'Ho Chi Minh City', 'Math', 'teacher'),
(203, 'Christopher', 'Mr. Christopher Rodriguez', 'Male', '0954234654', 'Ho Chi Minh City', 'Math', 'teacher'),
(301, 'Eleanor', 'Professor Eleanor Thompson', 'Male', '0945323464', 'Ho Chi Minh City', 'Literature', 'teacher'),
(302, 'Gabriel', 'Ms. Gabriel Hayes', 'Female', '0953452353', 'Ho Chi Minh City', 'Literature', 'teacher'),
(303, 'Samuel', 'Mr. Samuel Reynolds', 'Male', '0934234265', 'Ho Chi Minh City', 'Literature', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`id`, `teacher_id`, `teacher_name`, `class`, `subject`) VALUES
(1, 101, 'Ms. Allison Williams', '10A1', 'English'),
(2, 101, 'Ms. Allison Williams', '10A2', 'English'),
(3, 101, 'Ms. Allison Williams', '10A3', 'English'),
(4, 102, 'Mr. Jonathan Turner', '11A1', 'English'),
(5, 102, 'Mr. Jonathan Turner', '11A2', 'English'),
(6, 102, 'Mr. Jonathan Turner', '11A3', 'English'),
(7, 103, 'Mrs. Emily Anderson', '12A1', 'English'),
(8, 103, 'Mrs. Emily Anderson', '12A2', 'English'),
(9, 103, 'Mrs. Emily Anderson', '12A3', 'English'),
(10, 201, 'Dr. Benjamin Mitchell', '10A1', 'Math'),
(11, 201, 'Dr. Benjamin Mitchell', '10A2', 'Math'),
(12, 201, 'Dr. Benjamin Mitchell', '10A3', 'Math'),
(13, 202, 'Mrs. Olivia Chang', '11A1', 'Math'),
(14, 202, 'Mrs. Olivia Chang', '11A2', 'Math'),
(15, 202, 'Mrs. Olivia Chang', '11A3', 'Math'),
(16, 203, 'Mr. Christopher Rodriguez', '12A1', 'Math'),
(17, 203, 'Mr. Christopher Rodriguez', '12A2', 'Math'),
(18, 203, 'Mr. Christopher Rodriguez', '12A3', 'Math'),
(19, 301, 'Professor Eleanor Thompson', '10A1', 'Literature'),
(20, 301, 'Professor Eleanor Thompson', '10A2', 'Literature'),
(21, 301, 'Professor Eleanor Thompson', '10A3', 'Literature'),
(22, 302, 'Ms. Gabriel Hayes', '11A1', 'Literature'),
(23, 302, 'Ms. Gabriel Hayes', '11A2', 'Literature'),
(24, 302, 'Ms. Gabriel Hayes', '11A3', 'Literature'),
(25, 303, 'Mr. Samuel Reynolds', '12A1', 'Literature'),
(26, 303, 'Mr. Samuel Reynolds', '12A2', 'Literature'),
(27, 303, 'Mr. Samuel Reynolds', '12A3', 'Literature');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `monday` varchar(30) NOT NULL,
  `tuesday` varchar(30) NOT NULL,
  `wednesday` varchar(30) NOT NULL,
  `thursday` varchar(30) NOT NULL,
  `friday` varchar(30) NOT NULL,
  `saturday` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `shift` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `class`, `shift`) VALUES
(1, 'Math', 'Literature', 'English', '', '', '', '10A1', 1),
(2, 'Math', 'Literature', 'English', '', '', '', '10A1', 2),
(3, '', '', 'Math', 'Literature', 'English', '', '10A1', 3),
(4, '', '', 'Math', 'Literature', 'English', '', '10A1', 4),
(9, 'English', 'Math', 'Literature', '', '', '', '10A2', 1),
(10, 'English', 'Math', 'Literature', '', '', '', '10A2', 2),
(11, '', '', 'English', 'Math', 'Literature', '', '10A2', 3),
(12, '', '', 'English', 'Math', 'Literature', '', '10A2', 4),
(13, 'Literature', 'English', 'Math', '', '', '', '10A3', 1),
(14, 'Literature', 'English', 'Math', '', '', '', '10A3', 2),
(15, '', '', 'Literature', 'English', 'Math', '', '10A3', 3),
(16, '', '', 'Literature', 'English', 'Math', '', '10A3', 4),
(17, 'Math', 'Literature', 'English', '', '', '', '11A1', 1),
(18, 'Math', 'Literature', 'English', '', '', '', '11A1', 2),
(19, '', '', 'Math', 'Literature', 'English', '', '11A1', 3),
(20, '', '', 'Math', 'Literature', 'English', '', '11A1', 4),
(21, 'English', 'Math', 'Literature', '', '', '', '11A2', 1),
(22, 'English', 'Math', 'Literature', '', '', '', '11A2', 2),
(23, '', '', 'English', 'Math', 'Literature', '', '11A2', 3),
(24, '', '', 'English', 'Math', 'Literature', '', '11A2', 4),
(25, 'Literature', 'English', 'Math', '', '', '', '11A3', 1),
(26, 'Literature', 'English', 'Math', '', '', '', '11A3', 2),
(27, '', '', 'Literature', 'English', 'Math', '', '11A3', 3),
(28, '', '', 'Literature', 'English', 'Math', '', '11A3', 4),
(29, 'Math', 'Literature', 'English', '', '', '', '12A1', 1),
(30, 'Math', 'Literature', 'English', '', '', '', '12A1', 2),
(31, '', '', 'Math', 'Literature', 'English', '', '12A1', 3),
(32, '', '', 'Math', 'Literature', 'English', '', '12A1', 4),
(33, 'English', 'Math', 'Literature', '', '', '', '12A2', 1),
(34, 'English', 'Math', 'Literature', '', '', '', '12A2', 2),
(35, '', '', 'English', 'Math', 'Literature', '', '12A2', 3),
(36, '', '', 'English', 'Math', 'Literature', '', '12A2', 4),
(37, 'Literature', 'English', 'Math', '', '', '', '12A3', 1),
(38, 'Literature', 'English', 'Math', '', '', '', '12A3', 2),
(39, '', '', 'Literature', 'English', 'Math', '', '12A3', 3),
(40, '', '', 'Literature', 'English', 'Math', '', '12A3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `verify_account`
--

CREATE TABLE `verify_account` (
  `account_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify_account`
--

INSERT INTO `verify_account` (`account_id`, `username`, `password`, `role`) VALUES
(1, 'Admin', '123', 'admin'),
(2, 'Alex', '123', 'accountant'),
(3, 'Morgan', '123', 'accountant'),
(4, 'Richard', '123', 'staff'),
(5, 'Lauren', '123', 'staff'),
(6, 'Allison', '123', 'teacher'),
(7, 'Jonathan', '123', 'teacher'),
(8, 'Emily', '123', 'teacher'),
(9, 'Benjamin', '123', 'teacher'),
(10, 'Olivia', '123', 'teacher'),
(11, 'Christopher', '123', 'teacher'),
(12, 'Eleanor', '123', 'teacher'),
(13, 'Gabriel', '123', 'teacher'),
(14, 'Samuel', '123', 'teacher'),
(15, 'Van A10', '123', 'student'),
(16, 'Van B10', '123', 'student'),
(17, 'Thi C10', '123', 'student'),
(18, 'Van D10', '123', 'student'),
(19, 'Thi E10', '123', 'student'),
(20, 'Van F10', '123', 'student'),
(21, 'Thi G10', '123', 'student'),
(22, 'Thi H10', '123', 'student'),
(23, 'Van I10', '123', 'student'),
(24, 'Van J10', '123', 'student'),
(25, 'Van K10', '123', 'student'),
(26, 'Thi L10', '123', 'student'),
(27, 'Van M10', '123', 'student'),
(28, 'Thi N10', '123', 'student'),
(29, 'Van O10', '123', 'student'),
(30, 'Van A11', '123', 'student'),
(31, 'Van B11', '123', 'student'),
(32, 'Thi C11', '123', 'student'),
(33, 'Van D11', '123', 'student'),
(34, 'Thi E11', '123', 'student'),
(35, 'Van F11', '123', 'student'),
(36, 'Thi G11', '123', 'student'),
(37, 'Thi H11', '123', 'student'),
(38, 'Van I11', '123', 'student'),
(39, 'Van J11', '123', 'student'),
(40, 'Van K11', '123', 'student'),
(41, 'Thi L11', '123', 'student'),
(42, 'Van M11', '123', 'student'),
(43, 'Thi N11', '123', 'student'),
(44, 'Van O11', '123', 'student'),
(45, 'Van A12', '123', 'student'),
(46, 'Van B12', '123', 'student'),
(47, 'Thi C12', '123', 'student'),
(48, 'Van D12', '123', 'student'),
(49, 'Thi E12', '123', 'student'),
(50, 'Van F12', '123', 'student'),
(51, 'Thi G12', '123', 'student'),
(52, 'Thi H12', '123', 'student'),
(53, 'Van I12', '123', 'student'),
(54, 'Van J12', '123', 'student'),
(55, 'Van K12', '123', 'student'),
(56, 'Thi L12', '123', 'student'),
(57, 'Van M12', '123', 'student'),
(58, 'Thi N12', '123', 'student'),
(59, 'Van O12', '123', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_staff`
--
ALTER TABLE `academic_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `attendance_history`
--
ALTER TABLE `attendance_history`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`homework_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`);

--
-- Indexes for table `verify_account`
--
ALTER TABLE `verify_account`
  ADD PRIMARY KEY (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_staff`
--
ALTER TABLE `academic_staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `attendance_history`
--
ALTER TABLE `attendance_history`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `homework_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `verify_account`
--
ALTER TABLE `verify_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
