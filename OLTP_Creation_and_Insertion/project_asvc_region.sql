-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `asvc_region`
--

DROP TABLE IF EXISTS `asvc_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asvc_region` (
  `region_id` varchar(15) NOT NULL,
  `market_id` varchar(50) DEFAULT NULL,
  `region_name` varchar(20) NOT NULL COMMENT 'NAME OF THE REGION\n',
  `tbl_last_dt` date NOT NULL,
  PRIMARY KEY (`region_id`),
  KEY `asvc_region_asvc_market_fk` (`market_id`),
  KEY `idx_region_name` (`region_name`),
  CONSTRAINT `asvc_region_asvc_market_fk` FOREIGN KEY (`market_id`) REFERENCES `asvc_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asvc_region`
--

LOCK TABLES `asvc_region` WRITE;
/*!40000 ALTER TABLE `asvc_region` DISABLE KEYS */;
INSERT INTO `asvc_region` VALUES ('ROO10','MR005','Eastern US','2023-04-21'),('ROO11','MR001','North Africa','2023-04-21'),('ROO12','MR003','Northern Europe','2023-04-21'),('ROO13','MR002','Oceania','2023-04-21'),('ROO14','MR004','South America','2023-04-21'),('ROO15','MR002','Southeastern Asia','2023-04-21'),('ROO16','MR001','Southern Africa','2023-04-21'),('ROO17','MR002','Southern Asia','2023-04-21'),('ROO18','MR003','Southern Europe','2023-04-21'),('ROO19','MR005','Southern US','2023-04-21'),('ROO20','MR001','Western Africa','2023-04-21'),('ROO21','MR002','Western Asia','2023-04-21'),('ROO22','MR003','Western Europe','2023-04-21'),('ROO23','MR005','Western US','2023-04-21'),('ROOO1','MR005','Canada','2023-04-21'),('ROOO2','MR004','Caribbean','2023-04-21'),('ROOO3','MR001','Central Africa','2023-04-21'),('ROOO4','MR004','Central America','2023-04-21'),('ROOO5','MR002','Central Asia','2023-04-21'),('ROOO6','MR005','Central US','2023-04-21'),('ROOO7','MR001','Eastern Africa','2023-04-21'),('ROOO8','MR002','Eastern Asia','2023-04-21'),('ROOO9','MR003','Eastern Europe','2023-04-21');
/*!40000 ALTER TABLE `asvc_region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 10:30:52
