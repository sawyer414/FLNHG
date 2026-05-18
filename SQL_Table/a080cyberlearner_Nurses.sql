-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2026 at 08:55 AM
-- Server version: 8.0.45
-- PHP Version: 8.1.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a080cyberlearner_Nurses`
--

-- --------------------------------------------------------

--
-- Table structure for table `ContactForm`
--

CREATE TABLE `ContactForm` (
  `ID` int NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Message` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSponsers`
--

CREATE TABLE `GroupSponsers` (
  `ID` int NOT NULL,
  `Community` varchar(255) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `GroupSponsers`
--

INSERT INTO `GroupSponsers` (`ID`, `Community`, `CreateDate`, `isActive`) VALUES
(13, 'Seneca Falls Rotary', '2025-09-18 08:27:07', 1),
(18, 'admin', '2025-12-06 14:59:37', 1),
(14, 'Sons American Legion', '2025-09-18 08:27:17', 1),
(15, 'Canandaigua Rotary', '2025-09-18 08:27:30', 1),
(16, 'American Legion Auxiliary', '2025-09-18 08:27:46', 1),
(17, 'Harper Family Farms', '2025-09-18 08:27:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE `Images` (
  `Number` int NOT NULL,
  `ImageID` varchar(255) DEFAULT NULL,
  `Image` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Images`
--

INSERT INTO `Images` (`Number`, `ImageID`, `Image`) VALUES
(5, 'Screenshot 2025-09-23 090243.png', 0x2e2f75706c6f616473363865353166656261623838302e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `Memories`
--

CREATE TABLE `Memories` (
  `Year` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Photo` blob,
  `Birth` date DEFAULT NULL,
  `Death` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SingleSponsers`
--

CREATE TABLE `SingleSponsers` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` tinyint DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SingleSponsers`
--

INSERT INTO `SingleSponsers` (`ID`, `Name`, `LastName`, `CreateDate`, `IsActive`) VALUES
(41, '', '', '2025-12-06 14:59:37', 1),
(38, '', '', '2025-09-18 08:27:30', 1),
(37, '', '', '2025-09-18 08:27:17', 1),
(12, 'Bark', 'Family', '2025-06-10 12:41:48', 1),
(13, 'Miller', 'Family', '2025-06-10 12:42:03', 1),
(14, 'Zeth', 'Family', '2025-06-10 12:42:16', 1),
(15, 'Herren', 'Family', '2025-06-10 12:42:34', 1),
(16, 'Pieters', 'Family', '2025-06-10 12:42:50', 1),
(17, 'Seregeant', 'Family', '2025-06-10 12:43:01', 1),
(40, '', '', '2025-09-18 08:27:58', 1),
(39, '', '', '2025-09-18 08:27:46', 1),
(36, '', '', '2025-09-18 08:27:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TributeWall`
--

CREATE TABLE `TributeWall` (
  `id` int NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Born` varchar(255) DEFAULT NULL,
  `Died` varchar(255) DEFAULT NULL,
  `YearsServed` varchar(255) DEFAULT NULL,
  `YearFrom` int DEFAULT NULL,
  `Member` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `TributeWall`
--

INSERT INTO `TributeWall` (`id`, `FirstName`, `LastName`, `Born`, `Died`, `YearsServed`, `YearFrom`, `Member`, `Title`, `image_path`, `created_at`) VALUES
(14, 'Alyssa', 'Coleman', '5/14/1988', '4/6/2025', 'N/A', 2025, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(15, 'Benita', 'Maio', '11/27/1940', '6/13/2025', '45', 2025, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(16, 'Bonnie', 'Bergstresser', '1941', '4/1/2025', 'N/A', 2025, NULL, 'BSN, RN', NULL, '2025-12-16 15:06:45'),
(17, 'Carin', 'Herron', '1941', '3/21/2025', '20', 2025, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(18, 'Debbie', 'Grinnel', '11/7/1952', '3/25/2025', 'N/A', 2025, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(19, 'Elizabeth', 'Meaker', '4/12/1935', '8/23/2025', '50', 2025, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(20, 'Jane', 'DeCracker', '5/20/1934', '6/17/2025', 'N/A', 2025, NULL, NULL, NULL, '2025-12-16 15:06:45'),
(21, 'Mary', 'Donahue', '10/13/1952', '2/9/2025', 'N/A', 2025, 1, 'MS, RN, CNE', '', '2025-12-16 15:06:45'),
(22, 'Mary', 'Jackson', '6/8/1949', '3/2/2025', '38', 2025, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(23, 'Sandra', 'Sergeant', '12/24/1943', '2/21/2025', 'N/A', 2025, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(24, 'Suzanne', 'Fenner', '4/1/1943', '5/12/2025', 'N/A', 2025, NULL, 'MSN, RN, CWOCN', NULL, '2025-12-16 15:06:45'),
(25, 'Toni', 'McGhan', '6/20/1967', '9/1/2025', '32', 2025, NULL, 'MSN, RN', NULL, '2025-12-16 15:06:45'),
(26, 'Barbara', 'Morehouse Keyser', '1954', '2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(27, 'Calvin', 'Battle', '1/7/1957', '12/21/2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(28, 'Cathy Ann', 'Emmel', '12/7/1954', '10/21/2024', 'N/A', 2024, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(29, 'Cherylanne', 'Gray', '12/30/1961', '10/22/2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(30, 'Dorthea C', 'Whitcomb', '8/9/1953', '7/11/2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(31, 'Eileen Marie', 'Jones', '7/29/1954', '6/29/2024', 'N/A', 2024, NULL, 'BSN, RN', NULL, '2025-12-16 15:06:45'),
(32, 'Elanor', 'De Fisher', '12/5/1941', '9/24/2024', 'N/A', 2024, 0, 'LPN', NULL, '2025-12-16 15:06:45'),
(33, 'Jeanne L', 'Boise', '1/9/1946', '5/2/2024', 'N/A', 2024, NULL, 'NP', NULL, '2025-12-16 15:06:45'),
(34, 'Jeanne Margaret', 'Miller', '3/5/1921', '7/11/2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(35, 'Karen', 'Courtney', '1966', '2024', '26', 2024, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(36, 'Lindsey', 'Craft', '3/15/1983', '9/1/2024', 'N/A', 2024, NULL, 'NP', NULL, '2025-12-16 15:06:45'),
(37, 'Margaret Ann', 'Murphy', '5/22/1933', '7/19/2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(38, 'Mary', 'Burris', '1921', '12/25/2024', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(39, 'Mary Ann', 'Platania', '7/7/1944', '7/13/2024', 'N/A', 2024, NULL, 'BSN, RN', NULL, '2025-12-16 15:06:45'),
(40, 'Nancy', 'Poormon', '8/31/1943', '4/29/2024', 'N/A', 2024, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(41, 'Sara Jane', 'Fullagar Hunt', '1/18/1941', '3/15/2024', 'N/A', 2024, NULL, 'NP', NULL, '2025-12-16 15:06:45'),
(42, 'Betty J', 'Morehouse Zeth', '1927', '11/21/2023', '45', 2023, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(43, 'Caroline', 'Bark', '11/29/1950', '10/11/2023', '50', 2023, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(44, 'Deborah', 'Nou', 'N/A', 'Living Tribute', '40', 2025, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(45, 'Mary Ann', 'Andrews', 'N/A', 'Living Tribute', '30+', 2025, NULL, 'MS, RN', NULL, '2025-12-16 15:06:45'),
(46, 'Patricia', 'Rank', 'N/A', '1/16/2025', 'N/A', 2025, NULL, 'LPN', NULL, '2025-12-16 15:06:45'),
(47, 'Barbara', 'N/A', '1952', '2024', '40', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(48, 'Ellen', 'Shuyler', 'N/A', 'Living Tribute', '40', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(49, 'Karen', 'N/A', 'N/A', 'Living Tribute', '60', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(50, 'Nancey', 'Reed', 'N/A', 'Living Tribute', 'N/A', 2024, NULL, 'RN', NULL, '2025-12-16 15:06:45'),
(76, 'Francis', 'Cooper', 'N/A', 'Living Tribute', '20', 2025, 0, 'LPN', '', '2026-02-02 14:35:57'),
(80, 'Lucille', 'Stevens', '7/4/1928', '9/11/2025', 'N/A', 2025, 0, 'RN', '', '2026-02-02 14:39:24'),
(81, 'Frances \"Frankie\"', 'McCormick Cooper', '9/26/1946', '10/10/2025', 'N/A', 2025, 0, 'LPN', '', '2026-02-02 14:39:56'),
(82, 'Ellen', 'Baker', '1/11/1951', '10/12/2025', 'N/A', 2025, 0, 'RN', '', '2026-02-02 14:40:49'),
(83, 'Leo', 'Meath', 'N/A', 'Living Tribute', 'N/A', 2025, 0, 'LPN', '', '2026-02-02 14:41:25'),
(84, 'Teresa A.', 'Sweeney', '9/17/1961', '12/8/2025', 'N/A', 2025, 0, 'LPN', '', '2026-02-02 14:42:00'),
(85, 'Katherine \"Kitty\"', 'J. McDaniels', '6/24/1948', '11/22/2025', 'N/A', 2025, 0, 'RN', '', '2026-02-02 14:42:48'),
(86, 'Monica J.', 'Barry-Hamann', '6/24/1937', '12/21/2025', 'N/A', 2026, 0, 'MS, RN', '', '2026-02-02 14:44:26'),
(87, 'Mary Ann', 'Mengee', 'N/A', 'Living Tribute', '32', 2026, 0, 'RN', '', '2026-02-02 14:44:59'),
(88, 'Martha', 'Sullivan', '4/9/1968', '1/3/2026', '40+', 2026, 0, 'RN', '', '2026-02-02 14:45:56'),
(89, 'Janet', 'Easterbrooks.', '4/9/1968', '1/3/2026', '20+', 2026, 0, 'BSN, RN', '', '2026-02-02 14:46:34'),
(90, 'Betty', 'McDonald', 'N/A', 'Living Tribute', 'N/A', 2026, 0, 'N/A', '', '2026-02-02 14:47:03'),
(91, 'Carolyn', 'Wilson', 'N/A', 'Living Tribute', '44+', 2026, 0, 'RN', '', '2026-02-02 14:47:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ContactForm`
--
ALTER TABLE `ContactForm`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupSponsers`
--
ALTER TABLE `GroupSponsers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`Number`);

--
-- Indexes for table `Memories`
--
ALTER TABLE `Memories`
  ADD PRIMARY KEY (`Year`);

--
-- Indexes for table `SingleSponsers`
--
ALTER TABLE `SingleSponsers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TributeWall`
--
ALTER TABLE `TributeWall`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ContactForm`
--
ALTER TABLE `ContactForm`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `GroupSponsers`
--
ALTER TABLE `GroupSponsers`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Images`
--
ALTER TABLE `Images`
  MODIFY `Number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SingleSponsers`
--
ALTER TABLE `SingleSponsers`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `TributeWall`
--
ALTER TABLE `TributeWall`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
