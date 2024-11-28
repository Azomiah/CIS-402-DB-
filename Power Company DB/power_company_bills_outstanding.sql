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
-- Table structure for table `bills_outstanding`
--

DROP TABLE IF EXISTS `bills_outstanding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills_outstanding` (
  `consumer_no` varchar(30) DEFAULT NULL,
  `plan_type` varchar(100) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `Consumed_units` varchar(30) DEFAULT NULL,
  KEY `consumer_no` (`consumer_no`),
  KEY `plan_type` (`plan_type`),
  CONSTRAINT `bills_outstanding_ibfk_1` FOREIGN KEY (`consumer_no`) REFERENCES `customer_registry` (`consumer_no`),
  CONSTRAINT `bills_outstanding_ibfk_2` FOREIGN KEY (`plan_type`) REFERENCES `rate_plans` (`plan_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills_outstanding`
--

LOCK TABLES `bills_outstanding` WRITE;
/*!40000 ALTER TABLE `bills_outstanding` DISABLE KEYS */;
INSERT INTO `bills_outstanding` VALUES ('1001','residential','2024-02-01','160'),('1002','commercial','2024-02-01','520'),('1003','industrial','2024-02-01','980'),('1004','residential','2024-02-01','210'),('1005','agricultural','2024-02-01','290'),('1006','education','2024-02-01','820'),('1007','healthcare','2024-02-01','1180'),('1008','religious','2024-02-01','260'),('1009','small_business','2024-02-01','420'),('1010','nonprofit','2024-02-01','340'),('1011','residential','2024-02-01','185'),('1012','industrial','2024-02-01','970'),('1013','agricultural','2024-02-01','295'),('1014','commercial','2024-02-01','495'),('1015','government','2024-02-01','610');
/*!40000 ALTER TABLE `bills_outstanding` ENABLE KEYS */;
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