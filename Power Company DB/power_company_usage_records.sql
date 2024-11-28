-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: power_company
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
-- Table structure for table `usage_records`
--

DROP TABLE IF EXISTS `usage_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usage_records` (
  `consumer_no` varchar(30) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `Consumed_units` varchar(30) DEFAULT NULL,
  KEY `consumer_no` (`consumer_no`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`consumer_no`) REFERENCES `customer_registry` (`consumer_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_records`
--

LOCK TABLES `usage_records` WRITE;
/*!40000 ALTER TABLE `usage_records` DISABLE KEYS */;
INSERT INTO `usage_records` VALUES ('1001','2024-01-01','150'),('1002','2024-01-01','500'),('1003','2024-01-01','1000'),('1004','2024-01-01','200'),('1005','2024-01-01','300'),('1006','2024-01-01','800'),('1007','2024-01-01','1200'),('1008','2024-01-01','250'),('1009','2024-01-01','400'),('1010','2024-01-01','350'),('1011','2024-01-01','175'),('1012','2024-01-01','950'),('1013','2024-01-01','280'),('1014','2024-01-01','480'),('1015','2024-01-01','600');
/*!40000 ALTER TABLE `usage_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27 23:05:08
