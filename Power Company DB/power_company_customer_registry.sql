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
-- Table structure for table `customer_registry`
--

DROP TABLE IF EXISTS `customer_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_registry` (
  `consumer_no` varchar(100) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `service_status` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `plan_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`consumer_no`),
  KEY `plan_type` (`plan_type`),
  CONSTRAINT `customer_registry_ibfk_1` FOREIGN KEY (`plan_type`) REFERENCES `rate_plans` (`plan_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_registry`
--

LOCK TABLES `customer_registry` WRITE;
/*!40000 ALTER TABLE `customer_registry` DISABLE KEYS */;
INSERT INTO `customer_registry` VALUES ('1001','North','active','123 Main St','John Smith','residential'),('1002','South','active','456 Oak Ave','Jane Doe','commercial'),('1003','East','active','789 Pine Rd','Bob Johnson','industrial'),('1004','West','active','321 Elm St','Alice Brown','residential'),('1005','North','active','654 Maple Dr','Mike Wilson','agricultural'),('1006','South','active','111 School St','Sarah Lee','education'),('1007','East','active','222 Hospital Ave','Dr. James Wilson','healthcare'),('1008','West','active','333 Church Rd','Rev. Mary Davis','religious'),('1009','North','active','444 Market St','Tom Baker','small_business'),('1010','South','active','555 Charity Ln','Amy Grant','nonprofit'),('1011','North','active','777 Lake View','Peter Chen','residential'),('1012','West','active','888 Factory Rd','Lisa Wong','industrial'),('1013','South','active','999 Farm Lane','Kevin Patel','agricultural'),('1014','East','active','101 Shop Ave','Rachel Green','commercial'),('1015','North','active','202 State St','David Kim','government');
/*!40000 ALTER TABLE `customer_registry` ENABLE KEYS */;
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
