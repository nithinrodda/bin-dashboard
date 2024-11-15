
    CREATE DATABASE  IF NOT EXISTS `binmanagementdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `binmanagementdb`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: binmanagementdb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `bin_management`
--

DROP TABLE IF EXISTS `bin_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bin_management` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BIN_ID` varchar(50) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` text,
  `BIN_CURRENT_LOCATION` varchar(50) DEFAULT NULL,
  `TRANSIT_FACILITY` varchar(50) DEFAULT NULL,
  `BIN_CONDITION` varchar(50) DEFAULT NULL,
  `BIN_STATUS` varchar(50) DEFAULT NULL,
  `REF_NO` varchar(50) DEFAULT NULL,
  `BIN_OWNER` varchar(50) DEFAULT NULL,
  `RTP_CODE` varchar(50) DEFAULT NULL,
  `STATUS_TIMESTAMP` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIN_CURRENT_LOCATION` (`BIN_CURRENT_LOCATION`),
  KEY `TRANSIT_FACILITY` (`TRANSIT_FACILITY`),
  CONSTRAINT `bin_management_ibfk_1` FOREIGN KEY (`BIN_CURRENT_LOCATION`) REFERENCES `facility_master` (`FACILITY_ID`),
  CONSTRAINT `bin_management_ibfk_2` FOREIGN KEY (`TRANSIT_FACILITY`) REFERENCES `facility_master` (`FACILITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bin_management`
--

LOCK TABLES `bin_management` WRITE;
/*!40000 ALTER TABLE `bin_management` DISABLE KEYS */;
INSERT INTO `bin_management` VALUES (4,'B00002','BLACK RUPD TROLLEY','BLACK RUPD TROLLEY (0282 , 0382)','PLANT1','DAIMLER','Good','EMPTY','2425000003','DAIMLER','TR251210GP004','2024-11-14 04:45:23'),(5,'B00003','BLACK RUPD TROLLEY','BLACK RUPD TROLLEY (3823)','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR251210GP005','2024-11-14 05:53:11'),(6,'B00004','DUST GUARD','DUST GUARD','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SF161210GP006','2024-11-14 07:15:54'),(7,'B00005','FUPD','FUPD -New 1','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SF231210GP008','2024-11-14 07:35:39'),(8,'B00006','FUPD Trolley','FUPD Trolley(Reg)','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR241210GP009','2024-11-14 09:20:12'),(9,'B00007','KLT RUPD Trolley','KLT RUPD Trolley','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR241210GP010','2024-11-14 10:02:02'),(10,'B00008','Podest New','Podest New','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SF151010GP012','2024-11-14 10:40:56'),(11,'B00009','Reinforcement Pallet','Reinforcement Pallet','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SC241205GP013','2024-11-14 11:39:31'),(12,'B00010','RUPD Trolley','RUPD Trolley','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR241210GP014','2024-11-14 12:53:42'),(13,'B00011','STD Pallet','STD Pallet(Battery Box)','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SF121010GP015','2024-11-14 14:15:15'),(14,'B00012','RUPD Trolley','RUPD Trolley','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR221210GP016','2024-11-14 15:04:09'),(15,'B00013','KLT FUPD Trolley','KLT FUPD Trolley','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR241210GP017','2024-11-14 15:32:03'),(16,'B00014','SUPD Trolley','SUPD Trolley 4300','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR431210GP018','2024-11-14 16:45:48'),(17,'B00015','SUPD Trolley','SUPD Trolley Model 1','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR291210GP019','2024-11-14 17:57:33'),(18,'B00016','SUPD Trolley','SUPD Trolley Model 2','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR291210GP020','2024-11-14 19:45:27'),(19,'B00017','Black RUPD Trolley (0182)','Black RUPD Trolley (0182)','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR251210GP021','2024-11-14 21:04:08'),(20,'B00018','FUPD','FUPD -New 2','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SF231210GP022','2024-11-14 22:20:19'),(21,'B00019','Podest','Podest','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','SF151012GP023','2024-11-14 22:43:02'),(22,'B00020','SUPD Trolley','SUPD Trolley','MFPLANT4','DAIMLER','Good','EMPTY','2425000001','DAIMLER','TR321211GP024','2024-11-14 23:35:56'),(23,'B00021','Vertical member','Vertical member','PLANT2','DAIMLER','Good','EMPTY','2425000002','DAIMLER','SF106070GP025','2024-11-15 01:15:30'),(24,'B00022','','','PLANT2','DAIMLER','Good','EMPTY','2425000002','PLANT2','','2024-11-15 01:45:10'),(25,'B00023','VBGV','DGHTH','PLANT2','DAIMLER','Good','EMPTY','2425000002','PLANT1','THH5253','2024-11-15 03:04:22');
/*!40000 ALTER TABLE `bin_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_master`
--

DROP TABLE IF EXISTS `facility_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_master` (
  `ID` int NOT NULL,
  `FACILITY_ID` varchar(50) NOT NULL,
  `FACILITY_NAME` varchar(100) NOT NULL,
  `FACILITY_TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `FACILITY_ID_UNIQUE` (`FACILITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_master`
--

LOCK TABLES `facility_master` WRITE;
/*!40000 ALTER TABLE `facility_master` DISABLE KEYS */;
INSERT INTO `facility_master` VALUES (3,'PLANT1','Metal Forms Private Limited-1','PLANT'),(4,'PLANT2','Metal Forms Private Limited Redhills','PLANT'),(5,'PLANT3','METAL FORMS PVT LTD - SPK','PLANT'),(7,'MFPLANT4','metal forms 4','PLANT'),(9,'PLANT4','Metal Forms private limited-Org','PLANT'),(10,'HEXAGON','HEXAGON COATINGS','CUSTOMER'),(11,'DAIMLER','DAIMLER INDIA COMMERCIAL VEHICLES PVT LTD','CUSTOMER'),(12,'TRIDENT','TRIDENT COATING PRIVATE LTD','CUSTOMER');
/*!40000 ALTER TABLE `facility_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14  9:37:44
