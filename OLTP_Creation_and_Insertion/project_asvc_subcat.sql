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
-- Table structure for table `asvc_subcat`
--

DROP TABLE IF EXISTS `asvc_subcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asvc_subcat` (
  `subcat_id` varchar(4) NOT NULL,
  `cat_id` varchar(4) NOT NULL,
  `subcat_name` varchar(15) NOT NULL,
  `descp` varchar(20) DEFAULT NULL COMMENT 'DESCRIPTION OF SUBCATEGORY',
  `tbl_last_dt` date NOT NULL,
  PRIMARY KEY (`subcat_id`),
  KEY `asvc_subcat_asvc_ctgry_fk` (`cat_id`),
  CONSTRAINT `asvc_subcat_asvc_ctgry_fk` FOREIGN KEY (`cat_id`) REFERENCES `asvc_ctgry` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asvc_subcat`
--

LOCK TABLES `asvc_subcat` WRITE;
/*!40000 ALTER TABLE `asvc_subcat` DISABLE KEYS */;
INSERT INTO `asvc_subcat` VALUES ('S001','M003','Accessories',NULL,'2023-04-21'),('S002','M002','Appliances',NULL,'2023-04-21'),('S003','M002','Art',NULL,'2023-04-21'),('S004','M002','Binders',NULL,'2023-04-21'),('S005','M001','Bookcases',NULL,'2023-04-21'),('S006','M001','Chairs',NULL,'2023-04-21'),('S007','M003','Copiers',NULL,'2023-04-21'),('S008','M002','Envelopes',NULL,'2023-04-21'),('S009','M002','Fasteners',NULL,'2023-04-21'),('S010','M001','Furnishings',NULL,'2023-04-21'),('S011','M002','Labels',NULL,'2023-04-21'),('S012','M003','Machines',NULL,'2023-04-21'),('S013','M002','Paper',NULL,'2023-04-21'),('S014','M003','Phones',NULL,'2023-04-21'),('S015','M002','Storage',NULL,'2023-04-21'),('S016','M002','Supplies',NULL,'2023-04-21'),('S017','M001','Tables',NULL,'2023-04-21');
/*!40000 ALTER TABLE `asvc_subcat` ENABLE KEYS */;
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
