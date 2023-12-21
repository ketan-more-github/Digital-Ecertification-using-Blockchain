-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 04:06 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecertificateblockchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept`
--

CREATE TABLE IF NOT EXISTS `accept` (
  `emailid` text,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companyregistertbl`
--

CREATE TABLE IF NOT EXISTS `companyregistertbl` (
  `Cusername` text,
  `Cemail` text,
  `Cpassword` text,
  `CMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyregistertbl`
--

INSERT INTO `companyregistertbl` (`Cusername`, `Cemail`, `Cpassword`, `CMbNo`) VALUES
('ibm', 'ibm@gmail.com', 'IBM@1234', '8888888888');

-- --------------------------------------------------------

--
-- Table structure for table `registertbl`
--

CREATE TABLE IF NOT EXISTS `registertbl` (
  `Uusername` text,
  `Uemail` text,
  `Upassword` text,
  `UMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblidproof`
--

CREATE TABLE IF NOT EXISTS `tblidproof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` text,
  `file_path` text,
  `file_data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblimagemaster`
--

CREATE TABLE IF NOT EXISTS `tblimagemaster` (
  `Email_Id` text,
  `tendata` longblob,
  `FileData` longblob,
  `bedata` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmastersmartcontracts`
--

CREATE TABLE IF NOT EXISTS `tblmastersmartcontracts` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmailId` text,
  `Contract_Data` text,
  `StartTime_Info` text,
  `EndTime_Info` text,
  `Current_Date_Info` text,
  `Status_U` text,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblqrupdateprofile`
--

CREATE TABLE IF NOT EXISTS `tblqrupdateprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` text,
  `file_path` text,
  `file_data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblsmartrs`
--

CREATE TABLE IF NOT EXISTS `tblsmartrs` (
  `emailId` text,
  `amount` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsmart_contracts`
--

CREATE TABLE IF NOT EXISTS `tblsmart_contracts` (
  `Duration_Data` text,
  `Cost_Data` text,
  `Owner_Cost` text,
  `MsgData` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsmart_contracts`
--

INSERT INTO `tblsmart_contracts` (`Duration_Data`, `Cost_Data`, `Owner_Cost`, `MsgData`) VALUES
('30#Min', '0.003', '55', '30 Minutes'),
('25#Min', '0.004', '45', '25 Minutes'),
('20#Min', '0.005', '35', '20 Minutes'),
('15#Min', '0.006', '27', '15 Minutes'),
('10#Min', '0.008', '19', '10 Minutes'),
('5#Min', '0.010', '2', '5 Minutes');

-- --------------------------------------------------------

--
-- Table structure for table `updateprofile`
--

CREATE TABLE IF NOT EXISTS `updateprofile` (
  `emailid` text,
  `firstname` text,
  `middlename` text,
  `lastname` text,
  `address` text,
  `gender` text,
  `mobileno` text NOT NULL,
  `DOB` text NOT NULL,
  `TenEducation` text NOT NULL,
  `tenpercentage` text NOT NULL,
  `tenMarksheet_No` text NOT NULL,
  `tenPassingYear` text NOT NULL,
  `TwelEducation` text NOT NULL,
  `twelpercentage` text NOT NULL,
  `twelMarksheet_No` text NOT NULL,
  `twelPassingYear` text NOT NULL,
  `BEEducation` text NOT NULL,
  `bepercentage` text NOT NULL,
  `beMarksheet_No` text NOT NULL,
  `bePassingYear` text NOT NULL,
  `tenfile` longblob NOT NULL,
  `twelfile` longblob NOT NULL,
  `befile` longblob NOT NULL,
  `Status_Info` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
