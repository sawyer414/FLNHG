-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: a080cyberlearner.cyberlearner.com    Database: a080cyberlearner_Nurses
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ContactForm`
--

DROP TABLE IF EXISTS `ContactForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ContactForm` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactForm`
--

LOCK TABLES `ContactForm` WRITE;
/*!40000 ALTER TABLE `ContactForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContactForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSponsers`
--

DROP TABLE IF EXISTS `GroupSponsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GroupSponsers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Community` varchar(255) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSponsers`
--

LOCK TABLES `GroupSponsers` WRITE;
/*!40000 ALTER TABLE `GroupSponsers` DISABLE KEYS */;
INSERT INTO `GroupSponsers` VALUES (13,'Seneca Falls Rotary','2025-09-18 08:27:07',1),(19,'Brenda & Dave Rickey Foundation','2026-05-04 07:57:50',1),(14,'Sons American Legion','2025-09-18 08:27:17',1),(15,'Canandaigua Rotary','2025-09-18 08:27:30',1),(16,'American Legion Auxiliary','2025-09-18 08:27:46',1),(17,'Harper Family Farms','2025-09-18 08:27:58',1);
/*!40000 ALTER TABLE `GroupSponsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Images` (
  `Number` int NOT NULL AUTO_INCREMENT,
  `ImageID` varchar(255) DEFAULT NULL,
  `Image` longblob,
  PRIMARY KEY (`Number`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (5,'Screenshot 2025-09-23 090243.png',_binary './uploads68e51febab880.png');
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Memories`
--

DROP TABLE IF EXISTS `Memories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Memories` (
  `Year` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Photo` blob,
  `Birth` date DEFAULT NULL,
  `Death` date DEFAULT NULL,
  PRIMARY KEY (`Year`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Memories`
--

LOCK TABLES `Memories` WRITE;
/*!40000 ALTER TABLE `Memories` DISABLE KEYS */;
/*!40000 ALTER TABLE `Memories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SingleSponsers`
--

DROP TABLE IF EXISTS `SingleSponsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SingleSponsers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` tinyint DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SingleSponsers`
--

LOCK TABLES `SingleSponsers` WRITE;
/*!40000 ALTER TABLE `SingleSponsers` DISABLE KEYS */;
INSERT INTO `SingleSponsers` VALUES (42,'','','2026-05-04 07:57:50',1),(41,'','','2025-12-06 14:59:37',1),(38,'','','2025-09-18 08:27:30',1),(37,'','','2025-09-18 08:27:17',1),(12,'Bark','Family','2025-06-10 12:41:48',1),(13,'Miller','Family','2025-06-10 12:42:03',1),(14,'Zeth','Family','2025-06-10 12:42:16',1),(15,'Herren','Family','2025-06-10 12:42:34',1),(16,'Pieters','Family','2025-06-10 12:42:50',1),(17,'Seregeant','Family','2025-06-10 12:43:01',1),(40,'','','2025-09-18 08:27:58',1),(39,'','','2025-09-18 08:27:46',1),(36,'','','2025-09-18 08:27:07',1);
/*!40000 ALTER TABLE `SingleSponsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TributeWall`
--

DROP TABLE IF EXISTS `TributeWall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TributeWall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Born` varchar(255) DEFAULT NULL,
  `Died` varchar(255) DEFAULT NULL,
  `YearsServed` varchar(255) DEFAULT NULL,
  `YearFrom` int DEFAULT NULL,
  `Member` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TributeWall`
--

LOCK TABLES `TributeWall` WRITE;
/*!40000 ALTER TABLE `TributeWall` DISABLE KEYS */;
INSERT INTO `TributeWall` VALUES (14,'Alyssa','Coleman','5/14/1988','4/6/2025','N/A',2025,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(15,'Benita','Maio','11/27/1940','6/13/2025','45',2025,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(16,'Bonnie','Bergstresser','1941','4/1/2025','N/A',2025,NULL,'BSN, RN',NULL,'2025-12-16 15:06:45'),(17,'Carin','Herron','1941','3/21/2025','20',2025,NULL,'RN',NULL,'2025-12-16 15:06:45'),(18,'Debbie','Grinnel','11/7/1952','3/25/2025','N/A',2025,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(19,'Elizabeth','Meaker','4/12/1935','8/23/2025','50',2025,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(20,'Jane','DeCracker','5/20/1934','6/17/2025','N/A',2025,NULL,NULL,NULL,'2025-12-16 15:06:45'),(21,'Mary','Donahue','10/13/1952','2/9/2025','N/A',2025,1,'MS, RN, CNE','','2025-12-16 15:06:45'),(22,'Mary','Jackson','6/8/1949','3/2/2025','38',2025,NULL,'RN',NULL,'2025-12-16 15:06:45'),(23,'Sandra','Sergeant','12/24/1943','2/21/2025','N/A',2025,NULL,'RN',NULL,'2025-12-16 15:06:45'),(24,'Suzanne','Fenner','4/1/1943','5/12/2025','N/A',2025,NULL,'MSN, RN, CWOCN',NULL,'2025-12-16 15:06:45'),(25,'Toni','McGhan','6/20/1967','9/1/2025','32',2025,NULL,'MSN, RN',NULL,'2025-12-16 15:06:45'),(26,'Barbara','Morehouse Keyser','1954','2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(27,'Calvin','Battle','1/7/1957','12/21/2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(28,'Cathy Ann','Emmel','12/7/1954','10/21/2024','N/A',2024,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(29,'Cherylanne','Gray','12/30/1961','10/22/2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(30,'Dorthea C','Whitcomb','8/9/1953','7/11/2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(31,'Eileen Marie','Jones','7/29/1954','6/29/2024','N/A',2024,NULL,'BSN, RN',NULL,'2025-12-16 15:06:45'),(32,'Elanor','De Fisher','12/5/1941','9/24/2024','N/A',2024,0,'LPN',NULL,'2025-12-16 15:06:45'),(33,'Jeanne L','Boise','1/9/1946','5/2/2024','N/A',2024,NULL,'NP',NULL,'2025-12-16 15:06:45'),(34,'Jeanne Margaret','Miller','3/5/1921','7/11/2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(35,'Karen','Courtney','1966','2024','26',2024,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(36,'Lindsey','Craft','3/15/1983','9/1/2024','N/A',2024,NULL,'NP',NULL,'2025-12-16 15:06:45'),(37,'Margaret Ann','Murphy','5/22/1933','7/19/2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(38,'Mary','Burris','1921','12/25/2024','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(39,'Mary Ann','Platania','7/7/1944','7/13/2024','N/A',2024,NULL,'BSN, RN',NULL,'2025-12-16 15:06:45'),(40,'Nancy','Poormon','8/31/1943','4/29/2024','N/A',2024,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(41,'Sara Jane','Fullagar Hunt','1/18/1941','3/15/2024','N/A',2024,NULL,'NP',NULL,'2025-12-16 15:06:45'),(42,'Betty J','Morehouse Zeth','1927','11/21/2023','45',2023,NULL,'RN',NULL,'2025-12-16 15:06:45'),(43,'Caroline','Bark','11/29/1950','10/11/2023','50',2023,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(44,'Deborah','Nou','N/A','Living Tribute','40',2025,NULL,'RN',NULL,'2025-12-16 15:06:45'),(45,'Mary Ann','Andrews','N/A','Living Tribute','30+',2025,NULL,'MS, RN',NULL,'2025-12-16 15:06:45'),(46,'Patricia','Rank','N/A','1/16/2025','N/A',2025,NULL,'LPN',NULL,'2025-12-16 15:06:45'),(47,'Barbara','N/A','1952','2024','40',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(48,'Ellen','Shuyler','N/A','Living Tribute','40',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(49,'Karen','N/A','N/A','Living Tribute','60',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(50,'Nancey','Reed','N/A','Living Tribute','N/A',2024,NULL,'RN',NULL,'2025-12-16 15:06:45'),(76,'Francis','Cooper','N/A','Living Tribute','20',2025,0,'LPN','','2026-02-02 14:35:57'),(80,'Lucille','Stevens','7/4/1928','9/11/2025','N/A',2025,0,'RN','','2026-02-02 14:39:24'),(81,'Frances \"Frankie\"','McCormick Cooper','9/26/1946','10/10/2025','N/A',2025,0,'LPN','','2026-02-02 14:39:56'),(82,'Ellen','Baker','1/11/1951','10/12/2025','N/A',2025,0,'RN','','2026-02-02 14:40:49'),(83,'Leo','Meath','N/A','Living Tribute','N/A',2025,0,'LPN','','2026-02-02 14:41:25'),(84,'Teresa A.','Sweeney','9/17/1961','12/8/2025','N/A',2025,0,'LPN','','2026-02-02 14:42:00'),(85,'Katherine \"Kitty\"','J. McDaniels','6/24/1948','11/22/2025','N/A',2025,0,'RN','','2026-02-02 14:42:48'),(86,'Monica J.','Barry-Hamann','6/24/1937','12/21/2025','N/A',2026,0,'MS, RN','','2026-02-02 14:44:26'),(87,'Mary Ann','Mengee','N/A','Living Tribute','32',2026,0,'RN','','2026-02-02 14:44:59'),(89,'Janet','Easterbrooks.','4/9/1968','1/3/2026','20+',2026,0,'BSN, RN','','2026-02-02 14:46:34'),(90,'Betty','McDonald','N/A','Living Tribute','N/A',2026,0,'N/A','','2026-02-02 14:47:03'),(91,'Carolyn','Wilson','N/A','Living Tribute','44+',2026,0,'RN','','2026-02-02 14:47:34'),(94,'Martha','Sullivan','5/31/1936','12/28/2025','40',2026,0,'RN','','2026-04-20 12:59:26'),(98,'Brittany','Tay','1/10/1992','2/17/2026','12',2026,0,'RN','','2026-04-20 13:03:14'),(99,'Georgine','Rosata','10/1/1937','2/1/2026','40',2026,0,'N/A','','2026-04-20 13:03:41'),(100,'Gloria','Huling','7/27/1941','2/25/2026','0',2026,0,'LPN','','2026-04-20 13:04:45'),(101,'Marie','McCarthy','','Living Tribute','29',2026,0,'LPN','','2026-04-20 13:05:24');
/*!40000 ALTER TABLE `TributeWall` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 11:34:07
