-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 08, 2019 at 02:31 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE `tbl_home` (
  `ID` int(11) NOT NULL,
  `Heading` varchar(40) NOT NULL,
  `Paragraph` varchar(1000) NOT NULL,
  `Image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`ID`, `Heading`, `Paragraph`, `Image`) VALUES
(1, 'Secure. Safe.', 'Seeing is believing. Access the home security system on your preferred device to check in on the house occupancy through the remote, portable cameras. You can also stream live video and save recorded clips to watch later. The eyes in the back of your head. You can check on your house, kids, and pets from anywhere around the globe.', 'security.svg'),
(2, 'Home Automation.', 'Save yourself time, stress, and money with our automated controls. Whether you are looking for the independent room temperatures, smoke and carbon monoxide status, or smart lighting control, let the\r\nThermoSecurity™ be your portable assistant when life gets busy.', 'automated.svg'),
(3, 'On The Go.', 'Download the ThermoSecurity™ app (for IOS and Android) to get access to ThermoSecurity™ features from\r\nyour phone or tablet. Watch live feed and save clips wherever you are. Change the temperature of your\r\nhome before you leave work so you can arrive home to the perfect temperature.', 'on_the_go.svg'),
(4, 'Available Everywhere. ', 'Monitor the status of your home on phone, tablet and desktop. Download our app today!', 'multi_platform.jpg'),
(5, 'Plan Bundles.', 'Plans starting at just $24.99/month – Limited time offer! Save money on our AI and Cloud based services compared to outdated services from the past', 'plans.jpg'),
(6, 'Our Advanced Technology.', 'The ThermoSecurity™ runs on your in home wifi connection to control all your smart devices. Our system also uses Bluetooth connectivity as a backup connection even when your internet is out. Plus our powerful and advanced data encryption protects you and your family against hackers.', 'advanced_tech.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
