-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 02:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CityId` int(11) NOT NULL,
  `StateId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityId`, `StateId`, `Name`) VALUES
(26, 7, 'Mbarara'),
(27, 6, 'Kampala');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryId`, `Name`) VALUES
(11, 'Uganda'),
(12, 'Kenya'),
(13, 'Uganda'),
(14, 'Rwanda'),
(15, 'Sudan');

-- --------------------------------------------------------

--
-- Table structure for table `dailyworkload`
--

CREATE TABLE `dailyworkload` (
  `DailyWorkLoadId` bigint(20) NOT NULL,
  `EmpId` varchar(50) NOT NULL,
  `LoginDate` datetime DEFAULT NULL,
  `LogoutDate` datetime DEFAULT NULL,
  `DailyWorkingminutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dailyworkload`
--

INSERT INTO `dailyworkload` (`DailyWorkLoadId`, `EmpId`, `LoginDate`, `LogoutDate`, `DailyWorkingminutes`) VALUES
(1, '6231410', '2024-09-08 17:55:33', '2024-09-08 17:57:47', 28763308),
(2, '6231411', '2024-09-08 17:57:59', '2024-09-08 17:58:27', 28763308);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` int(10) NOT NULL,
  `Address1` varchar(500) NOT NULL,
  `Address2` varchar(500) NOT NULL,
  `Address3` varchar(500) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `AadharNumber` varchar(25) NOT NULL,
  `MaritalStatus` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` bigint(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `LeaveDate` date DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogout` datetime DEFAULT NULL,
  `StatusId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ImageName` varchar(1000) DEFAULT NULL,
  `MacAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpId`, `EmployeeId`, `FirstName`, `MiddleName`, `LastName`, `Birthdate`, `Gender`, `Address1`, `Address2`, `Address3`, `CityId`, `Mobile`, `Email`, `Password`, `AadharNumber`, `MaritalStatus`, `PositionId`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `JoinDate`, `LeaveDate`, `LastLogin`, `LastLogout`, `StatusId`, `RoleId`, `ImageName`, `MacAddress`) VALUES
(1, '1', 'admin', 'admin', 'admin', '1994-10-09', 1, 'address1', 'address2', 'address3', 1, 9999999999, 'admin@gmail.com', 'admin#123', '12354658496', 2, 1, 1, '2017-01-01 00:00:00', 1, '2017-01-31 10:33:33', '2017-01-11', '2017-01-18', '2024-09-08 16:24:45', '2017-02-09 15:12:09', 1, 1, 'images (2).jpg', ''),
(4, '6231411', 'Turyatunga', '', 'Ronald', '2024-09-08', 1, 'Naguru', 'Kampala', '', 26, 45789565, 'tronald2022@gmail.com', '123456', '', 2, 3, 1, '2024-09-08 04:56:03', NULL, NULL, '2024-07-03', '0000-00-00', '2024-09-08 17:59:46', '2024-09-08 17:58:27', 1, 1, '172883ron.jpg', ''),
(5, '6231410', 'Barugahare', '', 'Balaam', '2002-09-08', 1, 'Bunyoro', 'Hoima', '', 26, 115478512, 'balam@gmail.com', '123456', '', 1, 4, 1, '2024-09-08 05:10:56', NULL, NULL, '2023-09-05', '2024-08-08', '2024-09-08 17:55:33', '2024-09-08 17:57:47', 1, 3, '249124bala.jfif', '');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `GenderId` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`GenderId`, `Name`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `leavedays`
--

CREATE TABLE `leavedays` (
  `LeaveDayId` bigint(20) NOT NULL,
  `LeaveDay` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leavedays`
--

INSERT INTO `leavedays` (`LeaveDayId`, `LeaveDay`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `leavedetails`
--

CREATE TABLE `leavedetails` (
  `Detail_Id` bigint(20) NOT NULL,
  `EmpId` bigint(20) NOT NULL,
  `TypesLeaveId` int(10) NOT NULL,
  `Reason` varchar(500) NOT NULL,
  `StateDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `LeaveStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leavedetails`
--

INSERT INTO `leavedetails` (`Detail_Id`, `EmpId`, `TypesLeaveId`, `Reason`, `StateDate`, `EndDate`, `LeaveStatus`) VALUES
(1, 6231415, 3, 'Sample Reason', '2022-10-12', '2022-10-14', 'Accept'),
(2, 6231410, 1, 'Malaria', '2024-09-09', '2024-11-08', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `maritalstatus`
--

CREATE TABLE `maritalstatus` (
  `MaritalId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `maritalstatus`
--

INSERT INTO `maritalstatus` (`MaritalId`, `Name`) VALUES
(1, 'Married'),
(2, 'Unmarried');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PositinId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`PositinId`, `Name`) VALUES
(1, 'HR'),
(2, 'Web Developer'),
(3, 'Fullstack PHP Developer'),
(4, 'Support Staff'),
(5, 'Manager'),
(6, 'Finance manager');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleId`, `Name`) VALUES
(1, 'admin'),
(2, 'admin-hr'),
(3, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `StateId` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StateId`, `CountryId`, `Name`) VALUES
(6, 11, 'Central '),
(7, 11, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `StatusId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`StatusId`, `Name`) VALUES
(1, 'active'),
(2, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_leave`
--

CREATE TABLE `type_of_leave` (
  `LeaveId` bigint(20) NOT NULL,
  `Type_of_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type_of_leave`
--

INSERT INTO `type_of_leave` (`LeaveId`, `Type_of_Name`) VALUES
(1, 'sick leave'),
(3, 'casual leave'),
(4, 'privilege leave'),
(5, 'half day leave');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CityId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `dailyworkload`
--
ALTER TABLE `dailyworkload`
  ADD PRIMARY KEY (`DailyWorkLoadId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`GenderId`);

--
-- Indexes for table `leavedays`
--
ALTER TABLE `leavedays`
  ADD PRIMARY KEY (`LeaveDayId`);

--
-- Indexes for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD PRIMARY KEY (`Detail_Id`);

--
-- Indexes for table `maritalstatus`
--
ALTER TABLE `maritalstatus`
  ADD PRIMARY KEY (`MaritalId`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PositinId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`StateId`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusId`);

--
-- Indexes for table `type_of_leave`
--
ALTER TABLE `type_of_leave`
  ADD PRIMARY KEY (`LeaveId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dailyworkload`
--
ALTER TABLE `dailyworkload`
  MODIFY `DailyWorkLoadId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `GenderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leavedays`
--
ALTER TABLE `leavedays`
  MODIFY `LeaveDayId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leavedetails`
--
ALTER TABLE `leavedetails`
  MODIFY `Detail_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `PositinId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `StateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type_of_leave`
--
ALTER TABLE `type_of_leave`
  MODIFY `LeaveId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
