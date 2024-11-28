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
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_accounts` (
  `user_name` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `consumer_no` varchar(100) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`email_id`,`consumer_no`),
  KEY `consumer_no` (`consumer_no`),
  CONSTRAINT `user_accounts_ibfk_1` FOREIGN KEY (`consumer_no`) REFERENCES `customer_registry` (`consumer_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` VALUES ('Alice Brown','alice@email.com','1004','West','pass321','321 Elm St'),('Amy Grant','amy@charity.org','1010','South','charity654','555 Charity Ln'),('Bob Johnson','bob@email.com','1003','East','pass789','789 Pine Rd'),('David Kim','david@govt.gov','1015','North','govt202','202 State St'),('Dr. James Wilson','dr.wilson@hospital.med','1007','East','med456','222 Hospital Ave'),('Jane Doe','jane@email.com','1002','South','pass456','456 Oak Ave'),('John Smith','john@email.com','1001','North','pass123','123 Main St'),('Kevin Patel','kevin@farm.com','1013','South','farm999','999 Farm Lane'),('Lisa Wong','lisa@factory.com','1012','West','factory888','888 Factory Rd'),('Mike Wilson','mike@email.com','1005','North','pass654','654 Maple Dr'),('Peter Chen','peter@email.com','1011','North','home777','777 Lake View'),('Rachel Green','rachel@shop.com','1014','East','shop101','101 Shop Ave'),('Rev. Mary Davis','rev.mary@church.org','1008','West','church789','333 Church Rd'),('Sarah Lee','sarah@school.edu','1006','South','edu123','111 School St'),('Tom Baker','tom@bakery.com','1009','North','baker321','444 Market St');
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
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
