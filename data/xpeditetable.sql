-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 09:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Administrator', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'Administrator', '', 'facebook-profile-image.jpeg', '2018-04-30'),
(2, 'test', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'Test', 'User', 'facebook-profile-image.jpeg', '2018-04-30');

-- --------------------------------------------------------
CREATE TABLE `employees` (
  `idno` int(11) NOT NULL,
  `employee_id` varchar(9) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` VARCHAR(150) CHARACTER SET utf8,
  `gender` varchar(10) NOT NULL,
  `position_id` INT,
  `department_id` INT,
  `photo` varchar(200) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `birthdate` DATETIME,
  `created_on` DATETIME,
  `employment_status` varchar(20)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `payroll-history`
--

CREATE TABLE `payrollhistory` (
  `idpay` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `payroll_period` varchar(50) NOT NULL,
  `income_desc` varchar(150) NOT NULL,
  `income_hrs` varchar(50) NOT NULL,
  `income_amount` varchar(50) NOT NULL,
  `gross_amount` double NOT NULL,
  `deductions_desc` varchar(150) NOT NULL,
  `deductions_amount` varchar(50) NOT NULL,
  `deductions_total` double NOT NULL,
  `net_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `pos_description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dep_description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `manager_email` varchar(50) NOT NULL,
  `ottype` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `filed_date` varchar(50) NOT NULL,
  `approved_date` varchar(50) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `enddate` varchar(50) NOT NULL,
  `totalhrs` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `token` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
-- --------------------------------------------------------

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `employees`
  ADD PRIMARY KEY (`idno`);

ALTER TABLE `payrollhistory`
  ADD PRIMARY KEY (`idpay`);

ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `employees`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `payrollhistory`
  MODIFY `idpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
