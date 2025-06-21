CREATE DATABASE  IF NOT EXISTS `mykraken` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mykraken`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mykraken
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `activity_type` varchar(100) NOT NULL,
  `activity_description` text NOT NULL,
  `target_id` int DEFAULT NULL,
  `target_table` varchar(100) DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-05 17:28:19'),(2,3,'Josh Realino','Add Event','Josh Realino successfully added an event named \'PSU Night\'.',NULL,NULL,'2025-05-05 17:29:11'),(3,3,'Josh Realino','Start Event','Josh Realino started an event named \'PSU Night\' with an event ID of 1.',NULL,NULL,'2025-05-05 17:29:20'),(4,3,'Josh Realino','Add Event','Josh Realino successfully added an event named \'PSU Foundation Day\'.',NULL,NULL,'2025-05-05 17:30:07'),(5,3,'Josh Realino','Start Event','Josh Realino started an event named \'PSU Foundation Day\' with an event ID of 2.',NULL,NULL,'2025-05-05 17:30:14'),(6,3,'Josh Realino','End Event','Josh Realino ended an event named \'PSU Foundation Day\' with an event ID of 2.',NULL,NULL,'2025-05-05 17:42:01'),(7,3,'Josh Realino','End Event','Josh Realino ended an event named \'PSU Night\' with an event ID of 1.',NULL,NULL,'2025-05-05 17:45:58'),(8,3,'Josh Gardose Realino','Add User','Josh Gardose Realino added a User named Beshie Mong Sariwa.',NULL,NULL,'2025-05-05 17:48:58'),(9,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-05 18:31:21'),(10,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-05 18:52:15'),(11,3,'Josh Realino','Add Event','Josh Realino successfully added an event named \'FOUNDATION\'.',NULL,NULL,'2025-05-05 18:52:46'),(12,3,'Josh Realino','Start Event','Josh Realino started an event named \'FOUNDATION\' with an event ID of 3.',NULL,NULL,'2025-05-05 18:52:58'),(13,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-06 15:22:34'),(14,3,'Josh Realino','Disable Event','Josh Realino disabled an event named \'FOUNDATION\' with an event ID of 3.',NULL,NULL,'2025-05-06 15:26:34'),(15,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-06 18:47:54'),(16,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 17:32:17'),(17,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:19:33'),(18,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:20:49'),(19,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:22:31'),(20,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:24:38'),(21,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:27:40'),(22,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:33:00'),(23,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:40:33'),(24,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 18:48:39'),(25,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 20:37:51'),(26,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 20:48:40'),(27,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 20:54:04'),(28,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:06:32'),(29,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:07:06'),(30,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:09:14'),(31,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:18:37'),(32,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:22:29'),(33,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:24:46'),(34,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:32:19'),(35,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:33:31'),(36,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:35:45'),(37,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 21:44:48'),(38,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 22:04:11'),(39,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 22:06:49'),(40,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 22:11:12'),(41,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 22:16:51'),(42,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 22:33:12'),(43,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 22:59:45'),(44,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:11:43'),(45,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:19:19'),(46,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:22:56'),(47,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:24:32'),(48,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:28:41'),(49,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:31:01'),(50,3,'Josh Realino','Status Change','FAC-2025-000001 changed the status of CS-2025-000004 into \'inactive\' because of asdasd.',4,'Users','2025-05-07 23:34:59'),(51,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:35:20'),(52,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-07 23:41:09'),(53,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 00:03:14'),(54,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 00:08:58'),(55,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 00:11:35'),(56,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 00:15:19'),(57,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 00:19:24'),(58,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 09:51:37'),(59,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 09:53:33'),(60,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 10:02:37'),(61,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 11:45:00'),(62,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 12:23:07'),(63,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 12:32:25'),(64,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 12:35:01'),(65,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 12:58:17'),(66,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 13:41:09'),(67,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 18:54:16'),(68,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:11:26'),(69,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:12:19'),(70,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:14:30'),(71,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:17:07'),(72,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:19:12'),(73,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:21:35'),(74,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:22:35'),(75,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:27:21'),(76,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:29:20'),(77,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:30:15'),(78,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:30:48'),(79,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:33:19'),(80,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:51:36'),(81,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:56:45'),(82,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:57:27'),(83,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 19:59:50'),(84,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 20:09:35'),(85,3,'Josh Realino','Status Change','FAC-2025-000001 changed the status of CS-2025-000004 into \'alumni\' because of heheh.',4,'Users','2025-05-08 20:10:59'),(86,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-08 20:52:11'),(87,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-09 20:06:34'),(88,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-09 20:10:30'),(89,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-09 21:10:30'),(90,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:21:25'),(91,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:23:23'),(92,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:24:32'),(93,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:33:56'),(94,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:36:53'),(95,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:39:37'),(96,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:42:06'),(97,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:43:04'),(98,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:47:12'),(99,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:48:58'),(100,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:50:46'),(101,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:53:17'),(102,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:55:30'),(103,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 09:56:15'),(104,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 10:09:13'),(105,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 10:16:26'),(106,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 10:18:39'),(107,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 10:20:15'),(108,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 10:42:01'),(109,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 10:45:58'),(110,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 11:11:47'),(111,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 11:40:33'),(112,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 11:43:41'),(113,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 11:45:03'),(114,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 11:48:08'),(115,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:25:18'),(116,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:26:18'),(117,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:26:29'),(118,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:27:38'),(119,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:27:55'),(120,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:28:04'),(121,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:30:47'),(122,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:31:46'),(123,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 12:33:18'),(124,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 13:04:41'),(125,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 13:05:29'),(126,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 13:35:55'),(127,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 13:37:06'),(128,3,'Josh Gardose Realino','Login','User Josh Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 13:40:19'),(129,3,'Josh Gardose Realino','Add User','Josh Gardose Realino added a User named Joshua Gardose Realino.',NULL,NULL,'2025-05-10 13:41:09'),(130,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 13:43:00'),(131,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 14:27:53'),(132,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:12:34'),(133,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:13:07'),(134,5,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a User named Joshua Gardose Realino.',NULL,NULL,'2025-05-10 15:13:53'),(135,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:26:13'),(136,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:27:35'),(137,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:28:16'),(138,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:31:27'),(139,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:39:04'),(140,5,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a User named Josh Gardose Real.',NULL,NULL,'2025-05-10 15:39:46'),(141,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:45:43'),(142,5,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a User named Keme Kek Lek.',NULL,NULL,'2025-05-10 15:46:05'),(143,8,'Keme Kek Lek','Login','User Keme Kek Lek logged in successfully.',NULL,NULL,'2025-05-10 15:46:11'),(144,8,'Keme Kek Lek','Login','User Keme Kek Lek logged in successfully.',NULL,NULL,'2025-05-10 15:49:56'),(145,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 15:58:25'),(146,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:00:58'),(147,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:03:45'),(148,6,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a user named Kisris zxczxc asd.',NULL,NULL,'2025-05-10 16:04:34'),(149,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:07:20'),(150,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:10:35'),(151,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:11:24'),(152,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:12:56'),(153,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:14:18'),(154,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:26:49'),(155,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:31:38'),(156,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:36:37'),(157,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:39:06'),(158,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:41:46'),(159,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:45:38'),(160,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 16:50:10'),(161,6,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a user named asd asd asd.',NULL,NULL,'2025-05-10 16:50:40'),(162,6,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a user named asd asd asd.',NULL,NULL,'2025-05-10 16:51:07'),(163,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:09:46'),(164,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:10:49'),(165,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:14:11'),(166,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:16:06'),(167,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:18:34'),(168,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:24:42'),(169,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 17:27:32'),(170,6,'Joshua Realino','End Event','Joshua Realino ended an event named \'Kems\' with an event ID of 4.',NULL,NULL,'2025-05-10 17:27:47'),(171,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 19:05:50'),(172,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 20:12:31'),(173,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 20:57:33'),(174,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 21:01:34'),(175,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 21:03:30'),(176,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 21:26:16'),(177,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 21:44:01'),(178,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 21:47:26'),(179,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 21:53:18'),(180,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 22:14:13'),(181,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 22:25:43'),(182,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 22:37:13'),(183,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 22:42:21'),(184,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 22:50:28'),(185,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 22:57:07'),(186,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:01:19'),(187,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:02:34'),(188,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:04:24'),(189,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:26:14'),(190,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:30:34'),(191,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:33:39'),(192,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-10 23:36:25'),(193,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 00:40:45'),(194,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 00:41:43'),(195,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 00:46:58'),(196,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 00:51:36'),(197,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:14:03'),(198,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:16:02'),(199,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:17:24'),(200,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:24:03'),(201,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:27:26'),(202,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:29:27'),(203,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:31:40'),(204,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:32:24'),(205,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:48:46'),(206,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 01:52:36'),(207,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-11 19:13:00'),(208,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 06:50:53'),(209,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 07:06:06'),(210,6,'Joshua Realino','Add Event','Joshua Realino successfully added an event named \'Hey\'.',NULL,NULL,'2025-05-12 07:06:56'),(211,6,'Joshua Realino','Start Event','Joshua Realino started an event named \'Hey\' with an event ID of 5.',NULL,NULL,'2025-05-12 07:07:03'),(212,6,'Joshua Realino','End Event','Joshua Realino ended an event named \'Hey\' with an event ID of 5.',NULL,NULL,'2025-05-12 07:07:18'),(213,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 10:58:46'),(214,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:01:24'),(215,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:09:07'),(216,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:10:42'),(217,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:12:49'),(218,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:17:46'),(219,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:25:27'),(220,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:31:42'),(221,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:32:36'),(222,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:46:24'),(223,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:50:04'),(224,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:51:58'),(225,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:52:44'),(226,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:53:56'),(227,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 11:59:13'),(228,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 12:01:38'),(229,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 12:07:19'),(230,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 12:08:27'),(231,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 12:50:30'),(232,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:33:28'),(233,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:35:46'),(234,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:41:45'),(235,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:42:42'),(236,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:44:54'),(237,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:46:18'),(238,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:46:57'),(239,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 13:55:22'),(240,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 14:01:28'),(241,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 14:10:06'),(242,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-12 14:11:36'),(243,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-13 13:31:28'),(244,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-13 17:48:22'),(245,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-13 21:50:47'),(246,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-13 22:32:12'),(247,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 12:37:56'),(248,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 18:53:18'),(249,6,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a user named kath pal isoc.',NULL,NULL,'2025-05-14 18:55:00'),(250,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 22:39:55'),(251,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 22:48:39'),(252,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 22:54:48'),(253,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 23:07:22'),(254,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 23:11:47'),(255,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 23:14:55'),(256,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 23:35:03'),(257,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-14 23:40:52'),(258,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 00:06:55'),(259,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 00:35:22'),(260,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 07:58:05'),(261,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 08:28:27'),(262,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 09:03:57'),(263,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 09:08:26'),(264,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 09:15:55'),(265,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 09:38:25'),(266,6,'Joshua Realino','Add Event','Joshua Realino successfully added an event named \'Birthday ni Nath\'.',NULL,NULL,'2025-05-15 09:39:10'),(267,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 10:16:42'),(268,6,'Joshua Realino','Add Event','Joshua Realino successfully added an event named \'PSU Nighy\'.',NULL,NULL,'2025-05-15 10:18:57'),(269,6,'Joshua Realino','Start Event','Joshua Realino started an event named \'PSU Nighy\' with an event ID of 7.',NULL,NULL,'2025-05-15 10:19:40'),(270,6,'Joshua Realino','End Event','Joshua Realino ended an event named \'PSU Nighy\' with an event ID of 7.',NULL,NULL,'2025-05-15 10:21:58'),(271,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 10:27:23'),(272,5,'Joshua Realino','Status Change','FAC-2025-000005 changed the status of CS-2025-000012 into \'inactive\' because of adsasd.',12,'Users','2025-05-15 10:27:49'),(273,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 10:52:04'),(274,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 12:02:19'),(275,5,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-15 22:49:17'),(276,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-16 20:05:19'),(277,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-17 20:39:41'),(278,6,'Joshua Realino','Start Event','Joshua Realino started an event named \'Birthday ni Nath\' with an event ID of 6.',NULL,NULL,'2025-05-17 20:39:56'),(279,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-25 19:57:36'),(280,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-25 19:58:49'),(281,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-25 19:59:46'),(282,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-26 11:08:24'),(283,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-26 11:08:42'),(284,6,'Joshua Realino','Add Event','Joshua Realino successfully added an event named \'asdasd\'.',NULL,NULL,'2025-05-26 11:09:00'),(285,6,'Joshua Realino','Start Event','Joshua Realino started an event named \'asdasd\' with an event ID of 8.',NULL,NULL,'2025-05-26 11:09:07'),(286,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-05-27 08:53:28'),(287,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-06-10 11:36:44'),(288,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-06-10 23:14:11'),(289,6,'Joshua Realino','End Event','Joshua Realino ended an event named \'asdasd\' with an event ID of 8.',NULL,NULL,'2025-06-10 23:21:13'),(290,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-06-11 13:03:03'),(291,6,'Joshua Gardose Realino','Add User','Joshua Gardose Realino added a user named Alfred Marinas Laya.',NULL,NULL,'2025-06-11 13:05:30'),(292,6,'Joshua Gardose Realino','Login','User Joshua Gardose Realino logged in successfully.',NULL,NULL,'2025-06-13 09:49:01');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `attendance_summary`
--

DROP TABLE IF EXISTS `attendance_summary`;
/*!50001 DROP VIEW IF EXISTS `attendance_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `attendance_summary` AS SELECT 
 1 AS `full_name`,
 1 AS `student_number`,
 1 AS `year_level`,
 1 AS `event_id`,
 1 AS `session_1`,
 1 AS `session_2`,
 1 AS `session_3`,
 1 AS `session_4`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `borrowing_logs`
--

DROP TABLE IF EXISTS `borrowing_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowing_logs` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `ItemID` int NOT NULL,
  `BorrowerID` varchar(100) DEFAULT NULL,
  `QuantityBorrowed` int NOT NULL,
  `BorrowDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ExpectedReturnDate` datetime DEFAULT NULL,
  `ActualReturnDate` datetime DEFAULT NULL,
  `ReturnStatus` enum('Pending','Returned','Lost','Damaged','Consumed') DEFAULT 'Pending',
  `Remarks` text,
  PRIMARY KEY (`LogID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `borrowing_logs_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`),
  CONSTRAINT `borrowing_logs_chk_1` CHECK ((`QuantityBorrowed` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing_logs`
--

LOCK TABLES `borrowing_logs` WRITE;
/*!40000 ALTER TABLE `borrowing_logs` DISABLE KEYS */;
INSERT INTO `borrowing_logs` VALUES (1,1,'cs-2025-000001',1,'2025-05-05 18:04:46','2025-05-16 17:05:52','2025-05-08 12:38:13','Returned','Good'),(2,1,'cs-2025-000001',1,'2025-05-08 12:38:53','2025-05-09 16:05:52',NULL,'Pending',NULL),(3,2,'cs-2025-000006',1,'2025-05-12 14:08:31','2025-05-13 18:05:53','2025-05-12 14:09:27','Returned','Good'),(4,2,'cs-2025-000006',1,'2025-05-12 14:09:53','2025-05-29 14:05:53',NULL,'Pending',NULL),(5,3,'INV-2025-000003',1,'2025-05-15 09:30:17','2025-05-23 14:05:53',NULL,'Pending',NULL),(6,4,'CS-2025-000006',1,'2025-05-15 10:40:35','2025-05-31 14:05:53',NULL,'Pending',NULL);
/*!40000 ALTER TABLE `borrowing_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `borrowingreport`
--

DROP TABLE IF EXISTS `borrowingreport`;
/*!50001 DROP VIEW IF EXISTS `borrowingreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `borrowingreport` AS SELECT 
 1 AS `LogID`,
 1 AS `ItemID`,
 1 AS `ItemNumber`,
 1 AS `ItemType`,
 1 AS `BorrowerName`,
 1 AS `BorrowerID`,
 1 AS `QuantityBorrowed`,
 1 AS `BorrowDate`,
 1 AS `ExpectedReturnDate`,
 1 AS `ActualReturnDate`,
 1 AS `ReturnStatus`,
 1 AS `LateStatus`,
 1 AS `Remarks`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `status` enum('Future','Active','Ended','Disabled') DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `duration` enum('Whole','Half') DEFAULT NULL,
  `half_period` enum('Morning','Afternoon') DEFAULT NULL,
  `participants` set('1','2','3','4') DEFAULT NULL,
  `fine_per_absent` decimal(10,2) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` text,
  `created_by_student_id` int DEFAULT NULL,
  `created_by_faculty_id` int DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `created_by_faculty_id` (`created_by_faculty_id`),
  KEY `events_ibfk_1` (`created_by_student_id`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`created_by_student_id`) REFERENCES `mystudents` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Ended','C:\\Users\\imjos\\Downloads\\cam.gif','PSU Night','2025-05-10','Half','Morning','1',10.00,'Narra Palawan','Hello',NULL,NULL),(2,'Ended','C:\\Users\\imjos\\Downloads\\cameraholdergif.gif','PSU Foundation Day','2025-06-07','Half','Morning','1,2,3,4',20.00,'PSU Narra','Hello bes',NULL,NULL),(3,'Disabled','C:\\Users\\imjos\\Downloads\\receive.gif','FOUNDATION','2025-05-10','Whole',NULL,'1,2,3,4',10.00,'Narra','Hey Baby',NULL,NULL),(4,'Ended','C:\\Users\\imjos\\Downloads\\CSE.png','Kems','2025-05-11','Whole',NULL,'1,2,3,4',100.00,'asd','qwe',NULL,NULL),(5,'Ended','C:\\Users\\imjos\\Downloads\\bscs logo.jpg','Hey','2025-05-12','Whole',NULL,'1,2,3,4',123.00,'qwe','wqewqe',NULL,NULL),(6,'Active','C:\\Users\\imjos\\Downloads\\people-line.png','Birthday ni Nath','2025-06-11','Half','Afternoon','1,2,3,4',25.00,'PSU','HEHEHE',NULL,NULL),(7,'Ended','C:\\Users\\imjos\\Downloads\\F7154081-01.jpg','PSU Nighy','2025-05-17','Half','Afternoon','1,2,3,4',20.00,'Narra Gym','PSU Night the celebration of unity',NULL,NULL),(8,'Ended','C:\\Users\\imjos\\Downloads\\494689997_1299791598372916_7003858214820307062_n.jpg','asdasd','2025-05-31','Whole',NULL,'2,3',123.00,'aasd','weqwe',NULL,NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excuses`
--

DROP TABLE IF EXISTS `excuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excuses` (
  `excuse_id` int NOT NULL AUTO_INCREMENT,
  `student_number` varchar(20) DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `reason` text,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`excuse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excuses`
--

LOCK TABLES `excuses` WRITE;
/*!40000 ALTER TABLE `excuses` DISABLE KEYS */;
INSERT INTO `excuses` VALUES (1,'cs-2025-000001',2,NULL,'Pending','2025-05-10 11:17:26');
/*!40000 ALTER TABLE `excuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `TargetType` enum('FreePrinting','AutomatedAttendance','Events','AutomatedFines','StudentInfoChecking','InventorySystem','FreeInternetAccess','FreeComputerUsage') NOT NULL,
  `TargetID` int DEFAULT NULL,
  `FeedbackText` text NOT NULL,
  `Rating` int DEFAULT NULL,
  `IsAnonymous` tinyint(1) DEFAULT '0',
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FeedbackID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`user_id`),
  CONSTRAINT `feedback_chk_1` CHECK ((`Rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (2,1,'Events',1,'22222',5,0,'2025-05-06 15:34:17'),(3,1,'FreeInternetAccess',NULL,'bulok',1,1,'2025-05-08 12:40:26'),(4,1,'Events',3,'hhehehe',5,1,'2025-05-10 13:04:06'),(5,1,'FreeComputerUsage',NULL,'asdasdasd',1,0,'2025-05-11 01:52:01'),(6,1,'FreePrinting',NULL,'qweqweasd',1,0,'2025-05-11 01:52:15'),(7,1,'AutomatedFines',NULL,'asdasd',1,0,'2025-05-11 01:52:20'),(8,1,'Events',3,'Ang saya bes kaso wala meryenda',4,0,'2025-05-12 13:35:36'),(9,1,'InventorySystem',NULL,'masyadong mabaagl ung system',1,1,'2025-05-15 10:43:20'),(10,1,'Events',6,'unti lang handa',5,0,'2025-05-15 10:43:39'),(11,1,'InventorySystem',NULL,'bagal po',1,0,'2025-05-25 19:58:15'),(12,1,'AutomatedFines',NULL,'hehe',5,1,'2025-05-25 19:58:32'),(13,1,'FreePrinting',NULL,'umai',2,1,'2025-05-25 19:59:36');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `ItemNumber` varchar(50) NOT NULL,
  `ItemName` varchar(100) NOT NULL,
  `ItemDescription` text,
  `ItemType` enum('Returnable','Non-Returnable') NOT NULL,
  `QuantityTotal` int NOT NULL DEFAULT '0',
  `QuantityAvailable` int NOT NULL DEFAULT '0',
  `ItemConditionStatus` enum('Good','Damaged','Missing') DEFAULT 'Good',
  `Location` varchar(100) DEFAULT NULL,
  `DateAcquired` date DEFAULT NULL,
  `MinimumStock` int DEFAULT '0',
  `ItemImagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'INV-2025-000001','Camera 3D','Camera for detecting ghost.','Returnable',1,0,'Good','Cabinet #1','2025-05-05',0,'C:\\Users\\imjos\\Downloads\\Animation - 1746317166948.gif'),(2,'INV-2025-000002','asd','asdasd','Returnable',1,0,'Good','Cabinet #3','2025-04-12',0,'C:\\Users\\imjos\\Downloads\\CSE.png'),(3,'INV-2025-000003','Arduino','Arduino Kit','Returnable',1,0,'Good','Cabinet #1','2025-04-12',0,'C:\\Users\\imjos\\Downloads\\F7154081-01.jpg'),(4,'INV-2025-000004','Tester','Tester','Returnable',1,0,'Good','Cabinet #1','2025-04-12',0,'C:\\Users\\imjos\\Downloads\\testo-current-voltage-tester-product-range.png');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_entries`
--

DROP TABLE IF EXISTS `log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entry_type` enum('Member','Outsider') NOT NULL,
  `person` varchar(100) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `purpose` text NOT NULL,
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_entries`
--

LOCK TABLES `log_entries` WRITE;
/*!40000 ALTER TABLE `log_entries` DISABLE KEYS */;
INSERT INTO `log_entries` VALUES (1,'Outsider','Kemds','BS in Criminology','Use Computer','2025-05-08 00:10:50'),(2,'Outsider','qweqwe','BS in Business Management','Check My Information','2025-05-08 00:10:57'),(3,'Outsider','asdasd','B Elementary Education','Scan or Copy Documents','2025-05-08 00:11:04'),(4,'Outsider','asdasdqweqwe','BS in Entrepreneurship','Submit Requirements','2025-05-08 00:11:10'),(5,'Outsider','eqwe','B Elementary Education','Use Design or Development Software','2025-05-08 00:11:17'),(6,'Outsider','asdas','BS in Computer Science','Use Computer','2025-05-08 00:18:53'),(7,'Outsider','asdasd','BS in Criminology','Scan or Copy Documents','2025-05-08 00:19:01'),(8,'Outsider','zxczxc','BS in Business Management','Use Design or Development Software','2025-05-08 00:19:07'),(9,'Member','cs-2025-000001','BS in Computer Science','Group Study','2025-05-08 12:39:35'),(10,'Member','cs-2025-000001','BS in Computer Science','Use Computer','2025-05-10 13:05:20'),(11,'Outsider','Nath Betita','B Elementary Education','Access Internet','2025-05-15 10:41:51');
/*!40000 ALTER TABLE `log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myattendance`
--

DROP TABLE IF EXISTS `myattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myattendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `attended_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Present','Absent') DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `student_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `student_id` (`student_id`),
  KEY `session_id` (`session_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `myattendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `mystudents` (`student_id`),
  CONSTRAINT `myattendance_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`),
  CONSTRAINT `myattendance_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myattendance`
--

LOCK TABLES `myattendance` WRITE;
/*!40000 ALTER TABLE `myattendance` DISABLE KEYS */;
INSERT INTO `myattendance` VALUES (1,1,3,2,NULL,'Absent',NULL,'CS-2025-000001'),(2,1,4,2,'2025-05-05 09:41:36','Present','C:\\Users\\imjos\\source\\repos\\Information System Project\\bin\\Debug\\CapturedImages\\Attendance_CS-2025-000001_20250505174136.jpg','CS-2025-000001'),(12,1,12,4,NULL,'Absent',NULL,'CS-2025-000001'),(13,1,11,4,NULL,'Absent',NULL,'CS-2025-000001'),(14,1,10,4,NULL,'Absent',NULL,'CS-2025-000001'),(15,1,9,4,NULL,'Absent',NULL,'CS-2025-000001'),(16,2,12,4,NULL,'Absent',NULL,'CS-2025-000004'),(17,2,11,4,NULL,'Absent',NULL,'CS-2025-000004'),(18,2,10,4,NULL,'Absent',NULL,'CS-2025-000004'),(19,2,9,4,NULL,'Absent',NULL,'CS-2025-000004'),(20,3,12,4,NULL,'Absent',NULL,'CS-2025-000006'),(21,3,11,4,NULL,'Absent',NULL,'CS-2025-000006'),(22,3,10,4,NULL,'Absent',NULL,'CS-2025-000006'),(23,3,9,4,NULL,'Absent',NULL,'CS-2025-000006'),(24,4,12,4,NULL,'Absent',NULL,'CS-2025-000007'),(25,4,11,4,NULL,'Absent',NULL,'CS-2025-000007'),(26,4,10,4,NULL,'Absent',NULL,'CS-2025-000007'),(27,4,9,4,NULL,'Absent',NULL,'CS-2025-000007'),(28,5,12,4,NULL,'Absent',NULL,'CS-2025-000009'),(29,5,11,4,NULL,'Absent',NULL,'CS-2025-000009'),(30,5,10,4,NULL,'Absent',NULL,'CS-2025-000009'),(31,5,9,4,NULL,'Absent',NULL,'CS-2025-000009'),(32,6,12,4,NULL,'Absent',NULL,'CS-2025-000010'),(33,6,11,4,NULL,'Absent',NULL,'CS-2025-000010'),(34,6,10,4,NULL,'Absent',NULL,'CS-2025-000010'),(35,6,9,4,NULL,'Absent',NULL,'CS-2025-000010'),(36,7,12,4,NULL,'Absent',NULL,'CS-2025-000011'),(37,7,11,4,NULL,'Absent',NULL,'CS-2025-000011'),(38,7,10,4,NULL,'Absent',NULL,'CS-2025-000011'),(39,7,9,4,NULL,'Absent',NULL,'CS-2025-000011'),(40,1,16,5,NULL,'Absent',NULL,'CS-2025-000001'),(41,1,15,5,NULL,'Absent',NULL,'CS-2025-000001'),(42,1,14,5,NULL,'Absent',NULL,'CS-2025-000001'),(43,1,13,5,NULL,'Absent',NULL,'CS-2025-000001'),(44,2,16,5,NULL,'Absent',NULL,'CS-2025-000004'),(45,2,15,5,NULL,'Absent',NULL,'CS-2025-000004'),(46,2,14,5,NULL,'Absent',NULL,'CS-2025-000004'),(47,2,13,5,NULL,'Absent',NULL,'CS-2025-000004'),(48,3,16,5,NULL,'Absent',NULL,'CS-2025-000006'),(49,3,15,5,NULL,'Absent',NULL,'CS-2025-000006'),(50,3,14,5,NULL,'Absent',NULL,'CS-2025-000006'),(51,3,13,5,NULL,'Absent',NULL,'CS-2025-000006'),(52,4,16,5,NULL,'Absent',NULL,'CS-2025-000007'),(53,4,15,5,NULL,'Absent',NULL,'CS-2025-000007'),(54,4,14,5,NULL,'Absent',NULL,'CS-2025-000007'),(55,4,13,5,NULL,'Absent',NULL,'CS-2025-000007'),(56,5,16,5,NULL,'Absent',NULL,'CS-2025-000009'),(57,5,15,5,NULL,'Absent',NULL,'CS-2025-000009'),(58,5,14,5,NULL,'Absent',NULL,'CS-2025-000009'),(59,5,13,5,NULL,'Absent',NULL,'CS-2025-000009'),(60,6,16,5,NULL,'Absent',NULL,'CS-2025-000010'),(61,6,15,5,NULL,'Absent',NULL,'CS-2025-000010'),(62,6,14,5,NULL,'Absent',NULL,'CS-2025-000010'),(63,6,13,5,NULL,'Absent',NULL,'CS-2025-000010'),(64,7,16,5,NULL,'Absent',NULL,'CS-2025-000011'),(65,7,15,5,NULL,'Absent',NULL,'CS-2025-000011'),(66,7,14,5,NULL,'Absent',NULL,'CS-2025-000011'),(67,7,13,5,NULL,'Absent',NULL,'CS-2025-000011'),(68,1,20,7,NULL,'Absent',NULL,'CS-2025-000001'),(69,1,19,7,NULL,'Absent',NULL,'CS-2025-000001'),(70,2,20,7,NULL,'Absent',NULL,'CS-2025-000004'),(71,2,19,7,NULL,'Absent',NULL,'CS-2025-000004'),(72,3,20,7,NULL,'Absent',NULL,'CS-2025-000006'),(73,3,19,7,'2025-05-15 02:21:21','Present','C:\\Users\\imjos\\source\\repos\\Information System Project\\bin\\Debug\\CapturedImages\\Attendance_cs-2025-000006_20250515102121.jpg','CS-2025-000006'),(74,4,20,7,NULL,'Absent',NULL,'CS-2025-000007'),(75,4,19,7,NULL,'Absent',NULL,'CS-2025-000007'),(76,5,20,7,NULL,'Absent',NULL,'CS-2025-000009'),(77,5,19,7,NULL,'Absent',NULL,'CS-2025-000009'),(78,6,20,7,NULL,'Absent',NULL,'CS-2025-000010'),(79,6,19,7,NULL,'Absent',NULL,'CS-2025-000010'),(80,7,20,7,NULL,'Absent',NULL,'CS-2025-000011'),(81,7,19,7,NULL,'Absent',NULL,'CS-2025-000011'),(82,8,20,7,NULL,'Absent',NULL,'CS-2025-000012'),(83,8,19,7,NULL,'Absent',NULL,'CS-2025-000012'),(84,1,18,6,NULL,NULL,NULL,'CS-2025-000001'),(85,1,17,6,'2025-06-11 05:03:50','Present','C:\\Users\\imjos\\source\\repos\\Information System Project\\bin\\Debug\\CapturedImages\\Attendance_CS-2025-000001_20250611130351.jpg','CS-2025-000001'),(86,2,18,6,NULL,NULL,NULL,'CS-2025-000004'),(87,2,17,6,NULL,NULL,NULL,'CS-2025-000004'),(88,3,18,6,'2025-05-17 12:40:23','Present','C:\\Users\\imjos\\source\\repos\\Information System Project\\bin\\Debug\\CapturedImages\\Attendance_CS-2025-000006_20250517204024.jpg','CS-2025-000006'),(89,3,17,6,NULL,NULL,NULL,'CS-2025-000006'),(90,4,18,6,NULL,NULL,NULL,'CS-2025-000007'),(91,4,17,6,NULL,NULL,NULL,'CS-2025-000007'),(92,5,18,6,NULL,NULL,NULL,'CS-2025-000009'),(93,5,17,6,NULL,NULL,NULL,'CS-2025-000009'),(94,6,18,6,NULL,NULL,NULL,'CS-2025-000010'),(95,6,17,6,NULL,NULL,NULL,'CS-2025-000010'),(96,7,18,6,NULL,NULL,NULL,'CS-2025-000011'),(97,7,17,6,NULL,NULL,NULL,'CS-2025-000011'),(98,8,18,6,NULL,NULL,NULL,'CS-2025-000012'),(99,8,17,6,NULL,NULL,NULL,'CS-2025-000012'),(100,1,24,8,'2025-06-10 15:17:03','Present','C:\\Users\\imjos\\source\\repos\\Information System Project\\bin\\Debug\\CapturedImages\\Attendance_CS-2025-000001_20250610231703.jpg','CS-2025-000001'),(101,1,23,8,NULL,'Absent',NULL,'CS-2025-000001'),(102,1,22,8,NULL,'Absent',NULL,'CS-2025-000001'),(103,1,21,8,NULL,'Absent',NULL,'CS-2025-000001'),(104,3,24,8,NULL,'Absent',NULL,'CS-2025-000006'),(105,3,23,8,NULL,'Absent',NULL,'CS-2025-000006'),(106,3,22,8,NULL,'Absent',NULL,'CS-2025-000006'),(107,3,21,8,NULL,'Absent',NULL,'CS-2025-000006'),(108,4,24,8,NULL,'Absent',NULL,'CS-2025-000007'),(109,4,23,8,NULL,'Absent',NULL,'CS-2025-000007'),(110,4,22,8,NULL,'Absent',NULL,'CS-2025-000007'),(111,4,21,8,NULL,'Absent',NULL,'CS-2025-000007'),(112,5,24,8,NULL,'Absent',NULL,'CS-2025-000009'),(113,5,23,8,NULL,'Absent',NULL,'CS-2025-000009'),(114,5,22,8,NULL,'Absent',NULL,'CS-2025-000009'),(115,5,21,8,NULL,'Absent',NULL,'CS-2025-000009'),(116,7,24,8,NULL,'Absent',NULL,'CS-2025-000011'),(117,7,23,8,NULL,'Absent',NULL,'CS-2025-000011'),(118,7,22,8,NULL,'Absent',NULL,'CS-2025-000011'),(119,7,21,8,NULL,'Absent',NULL,'CS-2025-000011');
/*!40000 ALTER TABLE `myattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfaculty`
--

DROP TABLE IF EXISTS `myfaculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfaculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `faculty_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `faculty_number` (`faculty_number`),
  CONSTRAINT `myfaculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfaculty`
--

LOCK TABLES `myfaculty` WRITE;
/*!40000 ALTER TABLE `myfaculty` DISABLE KEYS */;
INSERT INTO `myfaculty` VALUES (1,3,'Josh','Gardose','Realino','Instructor','FAC-2025-000001'),(2,5,'Joshua','Gardose','Realino','Program Head','FAC-2025-000005'),(3,8,'Keme','Kek','Lek','Program Head','FAC-2025-000008');
/*!40000 ALTER TABLE `myfaculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mypayments`
--

DROP TABLE IF EXISTS `mypayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mypayments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `student_number` varchar(20) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `received_by` varchar(20) DEFAULT NULL,
  `recipient_type` enum('Officer','Faculty') DEFAULT NULL,
  `receipt_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mypayments`
--

LOCK TABLES `mypayments` WRITE;
/*!40000 ALTER TABLE `mypayments` DISABLE KEYS */;
INSERT INTO `mypayments` VALUES (2,'cs-2025-000001',NULL,10.00,'CS-2025-000006','Officer',NULL),(3,'cs-2025-000001',NULL,20.00,'CS-2025-000006','Officer',NULL),(4,'cs-2025-000001',NULL,20.00,'CS-2025-000006','Officer',NULL),(6,'cs-2025-000011','2025-05-10 19:09:01',100.00,'CS-2025-000006','Officer','REC-2025-000006'),(7,'cs-2025-000010','2025-05-10 20:57:51',200.00,'CS-2025-000006','Officer','REC-2025-000007'),(9,'cs-2025-000011','2025-05-10 21:03:52',100.00,'CS-2025-000006','Officer','REC-2025-000009'),(10,'cs-2025-000004','2025-05-10 21:26:50',100.00,'CS-2025-000006','Officer','REC-2025-000010'),(11,'cs-2025-000001','2025-05-10 21:44:34',90.00,'CS-2025-000006','Officer','REC-2025-000011'),(12,'cs-2025-000007','2025-05-10 21:47:58',150.00,'CS-2025-000006','Officer','REC-2025-000012'),(13,'cs-2025-000006','2025-05-10 21:53:51',142.21,'CS-2025-000006','Officer','REC-2025-000013'),(14,'cs-2025-000001','2025-05-10 22:14:35',21.21,'CS-2025-000006','Officer','REC-2025-000014'),(15,'cs-2025-000004','2025-05-10 22:26:37',202.00,'CS-2025-000006','Officer','REC-2025-000015'),(16,'cs-2025-000009','2025-05-10 22:37:42',251.21,'CS-2025-000006','Officer','REC-2025-000016'),(17,'cs-2025-000009','2025-05-10 22:43:01',0.79,'CS-2025-000006','Officer','REC-2025-000017'),(18,'cs-2025-000001','2025-05-10 22:51:51',0.00,'CS-2025-000006','Officer','REC-2025-000018'),(19,'cs-2025-000010','2025-05-10 22:57:47',0.00,'CS-2025-000006','Officer','REC-2025-000019'),(20,'cs-2025-000001','2025-05-10 23:04:48',278.79,'CS-2025-000006','Officer','REC-2025-000020'),(21,'cs-2025-000004','2025-05-10 23:26:35',8.00,'CS-2025-000006','Officer','REC-2025-000021'),(22,'cs-2025-000004','2025-05-10 23:30:50',10.00,'CS-2025-000006','Officer','REC-2025-000022'),(23,'cs-2025-000010','2025-05-10 23:33:53',100.00,'CS-2025-000006','Officer','REC-2025-000023'),(24,'cs-2025-000010','2025-05-10 23:36:42',50.00,'CS-2025-000006','Officer','REC-2025-000024'),(25,'cs-2025-000010','2025-05-10 23:44:26',50.00,'CS-2025-000006','Officer','REC-2025-000025'),(26,'cs-2025-000009','2025-05-11 00:47:15',8.00,'CS-2025-000006','Officer','REC-2025-000026'),(27,'cs-2025-000009','2025-05-11 00:49:24',40.00,'CS-2025-000006','Officer','REC-2025-000027'),(28,'cs-2025-000006','2025-05-11 00:49:40',0.79,'CS-2025-000006','Officer','REC-2025-000028'),(29,'cs-2025-000011','2025-05-11 01:19:01',49.00,'CS-2025-000006','Officer','REC-2025-000029'),(30,'cs-2025-000007','2025-05-11 19:14:50',50.00,'CS-2025-000006','Officer','REC-2025-000030'),(31,'cs-2025-000011','2025-05-12 13:46:37',3.00,'CS-2025-000006','Officer','REC-2025-000031'),(33,'cs-2025-000011','2025-05-12 13:55:33',10.00,'FAC-2025-000005','Faculty','REC-2025-000033'),(36,'cs-2025-000011','2025-05-14 23:42:19',50.00,'CS-2025-000006','Officer','REC-2025-000036'),(38,'CS-2025-000006','2025-05-15 10:28:52',46.00,'FAC-2025-000005','Faculty','REC-2025-000038'),(39,'CS-2025-000011','2025-05-25 20:01:12',20.00,'CS-2025-000006','Officer','REC-2025-000039'),(40,'CS-2025-000012','2025-06-11 13:04:40',40.00,'CS-2025-000006','Officer','REC-2025-000040');
/*!40000 ALTER TABLE `mypayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mystudents`
--

DROP TABLE IF EXISTS `mystudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mystudents` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `year_level` int NOT NULL,
  `power` varchar(20) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `student_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `student_number` (`student_number`),
  CONSTRAINT `mystudents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `mystudents_chk_1` CHECK ((`year_level` between 1 and 4)),
  CONSTRAINT `mystudents_chk_2` CHECK ((`power` in (_utf8mb4'student',_utf8mb4'officer')))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mystudents`
--

LOCK TABLES `mystudents` WRITE;
/*!40000 ALTER TABLE `mystudents` DISABLE KEYS */;
INSERT INTO `mystudents` VALUES (1,1,'Josh','Gardose','Realino',2,'Officer','Governor','CS-2025-000001'),(2,4,'Beshie','Mong','Sariwa',1,'Officer','Governor','CS-2025-000004'),(3,6,'Joshua','Gardose','Realino',2,'Officer','Vice Governor','CS-2025-000006'),(4,7,'Josh','Gardose','Real',2,'Officer','Governor','CS-2025-000007'),(5,9,'Keke','ko','sad',2,'Student','None','CS-2025-000009'),(6,10,'Kisris','zxczxc','asd',4,'Student','None','CS-2025-000010'),(7,11,'asd','asd','asd',2,'Officer','3rd Year Representative','CS-2025-000011'),(8,12,'kath','pal','isoc',1,'Officer','Secretary','CS-2025-000012'),(9,13,'Alfred','Marinas','Laya',2,'Officer','Governor','CS-2025-000013');
/*!40000 ALTER TABLE `mystudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `session_type` enum('In','Out') DEFAULT NULL,
  `session_time` time DEFAULT NULL,
  `session_period` varchar(20) DEFAULT NULL,
  `session_number` int DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'In','17:29:12','Morning',1),(2,1,'Out','17:29:12','Morning',2),(3,2,'In','17:30:07','Morning',1),(4,2,'Out','17:30:08','Morning',2),(5,3,'In','18:52:46','Morning',1),(6,3,'Out','18:52:46','Morning',2),(7,3,'In','18:52:46','Afternoon',3),(8,3,'Out','18:52:46','Afternoon',4),(9,4,'In','16:46:34','Morning',1),(10,4,'Out','16:46:34','Morning',2),(11,4,'In','16:46:34','Afternoon',3),(12,4,'Out','16:46:34','Afternoon',4),(13,5,'In','07:06:56','Morning',1),(14,5,'Out','07:06:56','Morning',2),(15,5,'In','07:06:56','Afternoon',3),(16,5,'Out','07:06:56','Afternoon',4),(17,6,'In','09:39:10','Afternoon',3),(18,6,'Out','09:39:10','Afternoon',4),(19,7,'In','10:18:57','Afternoon',3),(20,7,'Out','10:18:57','Afternoon',4),(21,8,'In','11:09:01','Morning',1),(22,8,'Out','11:09:01','Morning',2),(23,8,'In','11:09:01','Afternoon',3),(24,8,'Out','11:09:01','Afternoon',4);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_code` varchar(10) DEFAULT NULL,
  `role` varchar(10) NOT NULL,
  `status` enum('active','inactive','banned','alumni') DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `users_chk_1` CHECK ((`role` in (_utf8mb4'student',_utf8mb4'faculty'))),
  CONSTRAINT `users_chk_2` CHECK ((`status` in (_utf8mb4'active',_utf8mb4'inactive',_utf8mb4'banned',_utf8mb4'alumni')))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','1234','student','active','2025-05-05 17:08:46','2025-05-05 17:08:46',NULL),(3,'boss','admin','1234','faculty','active','2025-05-05 17:27:02',NULL,'C:\\Users\\imjos\\Downloads\\kraken.gif'),(4,'beshie','$2a$11$c998NkfQIuRFW0.jb.KqL.SYDGRcDq.SMu0olbaeHahzDQoLpBFYG','1234','student','alumni','2025-05-05 17:48:57',NULL,'C:\\Users\\imjos\\Downloads\\giving.gif'),(5,'bossing','$2a$11$iMT.8H0XZuijdnFr5U5gmuV0Ibt0IeFPFntIzxJ.7ddkQoE3G1eee','1234','faculty','active','2025-05-10 13:41:08',NULL,'C:\\Users\\imjos\\Downloads\\Animation - 1746317166948.gif'),(6,'imjosh1234','$2a$11$8fw1v4VuduiWRaoEQuyF2OYfTSY6gGNRfilQR4nfNSsepSJW2iqva','1234','student','active','2025-05-10 15:13:52',NULL,'C:\\Users\\imjos\\Downloads\\7dffcd6e-2184-4a30-856a-6cb7f3fea61a.jpg'),(7,'imjosh','$2a$11$m3/B2M6SUgPfFNFUO2PUVOoXvADtvE2WnmKZBNWjkgZCx10Unt09.','1234','student','active','2025-05-10 15:39:45',NULL,'C:\\Users\\imjos\\Downloads\\teacher.png'),(8,'ems','$2a$11$ENVlwwQIxe5FCoHNTY9s5eGCkGfUc6g7HBIWogooUZsWbEMQ2f.C.','1234','faculty','active','2025-05-10 15:46:04',NULL,'C:\\Users\\imjos\\Downloads\\PSITE Certificates.png'),(9,'zxc','$2a$11$VKx5zMs5FAS7TY7ibXsdC.kVeLfXf8cASV9g9SPFLKx7MBAVscjie','123','student','active','2025-05-10 16:01:21',NULL,'C:\\Users\\imjos\\Downloads\\CSE.png'),(10,'asd','$2a$11$DnrkvTIxgVqbUId05N9KoOaHwJvNN29q8ZEQZOZEvWtJ.XeCHdhCy','123','student','active','2025-05-10 16:04:33',NULL,'C:\\Users\\imjos\\Downloads\\student.png'),(11,'asdzxc','$2a$11$iIeBEGql03/QgtZPfFNKyu.8lLQHrhT3SCXOq1jFCjAGWn0sHHql.','123','student','active','2025-05-10 16:51:06',NULL,'C:\\Users\\imjos\\Downloads\\PSITE Certificates.png'),(12,'qweq','$2a$11$et4KJqJD.5P8Q2FM.f4nceIZrO/THXwRUb5qG0jzSFoihCe/V/HDy','1234','student','inactive','2025-05-14 18:55:00',NULL,'C:\\Users\\imjos\\Downloads\\455207054_1996704527452284_3997693237090205081_n.jpg'),(13,'laya123','$2a$11$9ujs7ZaztO0Ld7jdM4n.M.QLDq2nK/TfUa8Xy5WAXQCQkgBqeHHOO','1234','student','active','2025-06-11 13:05:29',NULL,'C:\\Users\\imjos\\Downloads\\2fac3aa3-01a3-4535-b407-bddf6ce46585.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_student_balances`
--

DROP TABLE IF EXISTS `v_student_balances`;
/*!50001 DROP VIEW IF EXISTS `v_student_balances`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_student_balances` AS SELECT 
 1 AS `student_number`,
 1 AS `student_name`,
 1 AS `total_fines`,
 1 AS `total_paid`,
 1 AS `balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `attendance_summary`
--

/*!50001 DROP VIEW IF EXISTS `attendance_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendance_summary` AS select concat(`m`.`first_name`,' ',`m`.`middle_name`,' ',`m`.`last_name`) AS `full_name`,`m`.`student_number` AS `student_number`,`m`.`year_level` AS `year_level`,`a`.`event_id` AS `event_id`,max((case when (`s`.`session_number` = 1) then `a`.`status` end)) AS `session_1`,max((case when (`s`.`session_number` = 2) then `a`.`status` end)) AS `session_2`,max((case when (`s`.`session_number` = 3) then `a`.`status` end)) AS `session_3`,max((case when (`s`.`session_number` = 4) then `a`.`status` end)) AS `session_4` from (((`myattendance` `a` join `mystudents` `m` on((`a`.`student_id` = `m`.`student_id`))) join `sessions` `s` on((`a`.`session_id` = `s`.`session_id`))) join `events` `e` on((`s`.`event_id` = `e`.`event_id`))) group by `m`.`student_id`,`m`.`student_number`,`m`.`year_level`,`a`.`event_id` order by `m`.`student_number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `borrowingreport`
--

/*!50001 DROP VIEW IF EXISTS `borrowingreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `borrowingreport` AS select `bl`.`LogID` AS `LogID`,`bl`.`ItemID` AS `ItemID`,`i`.`ItemNumber` AS `ItemNumber`,(case when (`i`.`ItemType` = 'non-returnable') then 'Non-returnable' else 'Returnable' end) AS `ItemType`,concat(`ms`.`first_name`,' ',`ms`.`middle_name`,' ',`ms`.`last_name`) AS `BorrowerName`,`bl`.`BorrowerID` AS `BorrowerID`,`bl`.`QuantityBorrowed` AS `QuantityBorrowed`,`bl`.`BorrowDate` AS `BorrowDate`,`bl`.`ExpectedReturnDate` AS `ExpectedReturnDate`,(case when (`i`.`ItemType` = 'non-returnable') then NULL else `bl`.`ActualReturnDate` end) AS `ActualReturnDate`,(case when (`i`.`ItemType` = 'non-returnable') then 'Consumed' else `bl`.`ReturnStatus` end) AS `ReturnStatus`,(case when (`i`.`ItemType` = 'non-returnable') then 'N/A' when (`bl`.`ActualReturnDate` is null) then 'Pending' when (`bl`.`ActualReturnDate` > `bl`.`ExpectedReturnDate`) then 'Late' else 'On time' end) AS `LateStatus`,`bl`.`Remarks` AS `Remarks` from ((`borrowing_logs` `bl` join `items` `i` on((`bl`.`ItemID` = `i`.`ItemID`))) join `mystudents` `ms` on((`bl`.`BorrowerID` = `ms`.`student_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_student_balances`
--

/*!50001 DROP VIEW IF EXISTS `v_student_balances`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_student_balances` AS select `m`.`student_number` AS `student_number`,concat(`m`.`first_name`,' ',`m`.`last_name`) AS `student_name`,ifnull(sum((case when ((`e`.`fine_per_absent` is not null) and (`exc`.`student_number` is null)) then `e`.`fine_per_absent` else 0 end)),0) AS `total_fines`,ifnull(`p`.`total_paid`,0) AS `total_paid`,(ifnull(sum((case when ((`e`.`fine_per_absent` is not null) and (`exc`.`student_number` is null)) then `e`.`fine_per_absent` else 0 end)),0) - ifnull(`p`.`total_paid`,0)) AS `balance` from ((((`mystudents` `m` left join `myattendance` `a` on(((`m`.`student_number` = `a`.`student_number`) and (`a`.`status` = 'Absent')))) left join `events` `e` on((`a`.`event_id` = `e`.`event_id`))) left join (select `excuses`.`student_number` AS `student_number`,`excuses`.`event_id` AS `event_id` from `excuses` where (`excuses`.`status` = 'Approved')) `exc` on(((`a`.`student_number` = `exc`.`student_number`) and (`a`.`event_id` = `exc`.`event_id`)))) left join (select `mypayments`.`student_number` AS `student_number`,sum(`mypayments`.`amount`) AS `total_paid` from `mypayments` group by `mypayments`.`student_number`) `p` on((`m`.`student_number` = `p`.`student_number`))) group by `m`.`student_number`,`m`.`first_name`,`m`.`last_name`,`p`.`total_paid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:34:12
