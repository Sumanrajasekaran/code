-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: truckscheduling
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `appointment_scheduling`
--

DROP TABLE IF EXISTS `appointment_scheduling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_scheduling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_date` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `dc_number` int NOT NULL,
  `dc_slot` varchar(255) DEFAULT NULL,
  `po_number` double NOT NULL,
  `quantity` int NOT NULL,
  `truck_number` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_scheduling`
--

LOCK TABLES `appointment_scheduling` WRITE;
/*!40000 ALTER TABLE `appointment_scheduling` DISABLE KEYS */;
INSERT INTO `appointment_scheduling` VALUES (1,NULL,NULL,'2020-10-23 11:17:50',9034,'A1',1234567899,9,1234,'vn50ifh','2020-10-27 07:19:12');
/*!40000 ALTER TABLE `appointment_scheduling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_master`
--

DROP TABLE IF EXISTS `dc_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dc_master` (
  `dc_number` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `dc_city` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `dc_type` int DEFAULT NULL,
  PRIMARY KEY (`dc_number`),
  KEY `FK47px4mya9bjvojwdj741iaq0w` (`dc_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_master`
--

LOCK TABLES `dc_master` WRITE;
/*!40000 ALTER TABLE `dc_master` DISABLE KEYS */;
INSERT INTO `dc_master` VALUES (9033,'vn5ifh','2020-10-27 06:50:58','CA',NULL,'2020-10-27 06:51:40',NULL),(9063,'vn5ifh','2020-10-19 15:47:44','US',NULL,'2020-10-26 12:20:58',2),(9062,'vn5ifh','2020-10-19 15:47:44','US',NULL,'2020-10-26 12:20:58',2),(9065,'vn5ifh','2020-10-26 12:23:43','US',NULL,'2020-10-26 12:23:43',2),(9064,'vn5ifh','2020-10-26 12:23:43','US',NULL,'2020-10-26 12:23:43',2),(9043,'vn5ifh','2020-10-27 06:52:26','CA',NULL,'2020-10-27 06:52:29',2);
/*!40000 ALTER TABLE `dc_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_slots`
--

DROP TABLE IF EXISTS `dc_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dc_slots` (
  `dc_number` int NOT NULL,
  `max_trucks` varchar(255) DEFAULT NULL,
  `dc_time_slots` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dc_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_slots`
--

LOCK TABLES `dc_slots` WRITE;
/*!40000 ALTER TABLE `dc_slots` DISABLE KEYS */;
INSERT INTO `dc_slots` VALUES (53,'maxTrucks WM01','8:00-09:00'),(9033,'10','8:00-09:00');
/*!40000 ALTER TABLE `dc_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_type`
--

DROP TABLE IF EXISTS `dc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dc_type` (
  `id` int NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `type_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_type`
--

LOCK TABLES `dc_type` WRITE;
/*!40000 ALTER TABLE `dc_type` DISABLE KEYS */;
INSERT INTO `dc_type` VALUES (1,'2020-10-19 15:20:04','International'),(2,'2020-10-19 15:20:04','Regional'),(3,'2020-10-19 15:20:04','Imports');
/*!40000 ALTER TABLE `dc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (57);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id`
--

DROP TABLE IF EXISTS `id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id` (
  `po_number` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`po_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id`
--

LOCK TABLES `id` WRITE;
/*!40000 ALTER TABLE `id` DISABLE KEYS */;
/*!40000 ALTER TABLE `id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po_master`
--

DROP TABLE IF EXISTS `po_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `po_number` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po_master`
--

LOCK TABLES `po_master` WRITE;
/*!40000 ALTER TABLE `po_master` DISABLE KEYS */;
INSERT INTO `po_master` VALUES (1,12345678,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `po_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_master`
--

DROP TABLE IF EXISTS `vendor_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_master` (
  `id` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `vendor_address` varchar(255) DEFAULT NULL,
  `vendor_email` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_master`
--

LOCK TABLES `vendor_master` WRITE;
/*!40000 ALTER TABLE `vendor_master` DISABLE KEYS */;
INSERT INTO `vendor_master` VALUES (52,'vn5ifh','2020-10-19 16:17:28','vn5ifh','2020-10-27 06:54:15','Chennai','Test2@gmail.com','Test2','12345678');
/*!40000 ALTER TABLE `vendor_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27  9:36:46
