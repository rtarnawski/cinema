CREATE DATABASE  IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `cinema`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `age_categories`
--

DROP TABLE IF EXISTS `age_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age_limit` int(11) DEFAULT NULL,
  `limit_description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_categories`
--

LOCK TABLES `age_categories` WRITE;
/*!40000 ALTER TABLE `age_categories` DISABLE KEYS */;
INSERT INTO `age_categories` VALUES (1,0,'dla wszystkich'),(2,6,'od 6 lat'),(3,3,'Emisja dla dzieci od lat 3'),(4,3,'Emisja bez ograniczeń'),(5,7,'Dla małoletnich od lat 7'),(6,12,'Dla małoletnich od lat 12'),(7,15,'Dla małoletnich od lat 15'),(8,18,'Dla osob doroslych'),(11,65,'dla emerytów');
/*!40000 ALTER TABLE `age_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema_rooms`
--

DROP TABLE IF EXISTS `cinema_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cinema_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(120) DEFAULT NULL,
  `number_of_seats` int(11) DEFAULT NULL,
  `id_movie_technology` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movie_technology_fkey` (`id_movie_technology`),
  CONSTRAINT `id_movie_technology_fkey` FOREIGN KEY (`id_movie_technology`) REFERENCES `movie_technologies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema_rooms`
--

LOCK TABLES `cinema_rooms` WRITE;
/*!40000 ALTER TABLE `cinema_rooms` DISABLE KEYS */;
INSERT INTO `cinema_rooms` VALUES (1,'kinder bueno',125,1),(2,'prince polo',356,2),(3,'Kasztanowa komnata',150,3),(4,'Hala mocnych wrażeń',250,3),(5,'Przybudówka',30,3),(6,'Turbosala',350,2),(7,'Otchłań',300,1),(8,'Bezpieczna przestrzeń',20,1),(9,'Bananowa izba',100,1),(10,'Twarde krzesła',200,2),(11,'Niebieska sala',50,2),(12,'Sala inna niż niebieska',170,1);
/*!40000 ALTER TABLE `cinema_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_logs`
--

DROP TABLE IF EXISTS `event_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_description` varchar(500) NOT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_logs`
--

LOCK TABLES `event_logs` WRITE;
/*!40000 ALTER TABLE `event_logs` DISABLE KEYS */;
INSERT INTO `event_logs` VALUES (1,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:41'),(2,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:42'),(3,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:43'),(4,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:43'),(5,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:43'),(6,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:43'),(7,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:44'),(8,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:44'),(9,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:44'),(10,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:44'),(11,'Wstawiono nowy seans dla filmu o id19','2018-09-16 09:59:45'),(12,'Próbowano wstawić nowy seans z ceną 320 dla seansu z filmem 19','2018-09-16 10:09:47'),(13,'Wstawiono nowy seans dla filmu o id19','2018-09-16 10:09:47'),(14,'Próbowano wstawić nowy seans z ceną -20 dla seansu z filmem 19','2018-09-16 10:11:30'),(15,'Wstawiono nowy seans dla filmu o id19','2018-09-16 10:11:30'),(16,'Zmieniono informację o filmieSzrek','2018-09-16 10:54:29'),(17,'Zmineniono z Shrek na Szrek','2018-09-16 10:54:29'),(18,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:12'),(19,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:12'),(20,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:12'),(21,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:12'),(22,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:12'),(23,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(24,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(25,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(26,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(27,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(28,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(29,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(30,'Wstawiono nowy seans dla filmu o id32','2018-09-23 13:48:13'),(31,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(32,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(33,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(34,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(35,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(36,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(37,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(38,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(39,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(40,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(41,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(42,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(43,'Wstawiono nowy seans dla filmu o id34','2018-09-23 13:51:19'),(44,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(45,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(46,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(47,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(48,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(49,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(50,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(51,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(52,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(53,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(54,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(55,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(56,'Wstawiono nowy seans dla filmu o id36','2018-09-23 13:51:42'),(57,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(58,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(59,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(60,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(61,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(62,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(63,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(64,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(65,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(66,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(67,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(68,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(69,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(70,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(71,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(72,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(73,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(74,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(75,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(76,'Wstawiono nowy seans dla filmu o id40','2018-10-06 09:25:28'),(77,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(78,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(79,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(80,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(81,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(82,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(83,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:45'),(84,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(85,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(86,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(87,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(88,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(89,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(90,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(91,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(92,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(93,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(94,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(95,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(96,'Wstawiono nowy seans dla filmu o id41','2018-10-06 09:30:46'),(97,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(98,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(99,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(100,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(101,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(102,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(103,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(104,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(105,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(106,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(107,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(108,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(109,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(110,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(111,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(112,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(113,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(114,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(115,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(116,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(117,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:48'),(118,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(119,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(120,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(121,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(122,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(123,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(124,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(125,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(126,'Wstawiono nowy seans dla filmu o id46','2018-10-06 10:26:49'),(127,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(128,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(129,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(130,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(131,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(132,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(133,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(134,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(135,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(136,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(137,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(138,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(139,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(140,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(141,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(142,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(143,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(144,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(145,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(146,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(147,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(148,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(149,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(150,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(151,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(152,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(153,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(154,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(155,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(156,'Wstawiono nowy seans dla filmu o id47','2018-10-06 10:27:45'),(157,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(158,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(159,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(160,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(161,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(162,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(163,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(164,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(165,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(166,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(167,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(168,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(169,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(170,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(171,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(172,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(173,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(174,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(175,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(176,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:20'),(177,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(178,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(179,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(180,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(181,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(182,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(183,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(184,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(185,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21'),(186,'Wstawiono nowy seans dla filmu o id48','2018-10-06 11:10:21');
/*!40000 ALTER TABLE `event_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'horror'),(2,'Akcja'),(3,'Animacja'),(4,'Dokument'),(5,'Dramat'),(6,'Familijny'),(7,'Fantasy'),(8,'Komedia'),(9,'Krotkometrazowy'),(10,'Kryminal'),(11,'Melodramat'),(12,'Niemy'),(13,'Przygodowy'),(14,'Romans'),(15,'Sci-fi'),(16,'Thriller');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_options`
--

DROP TABLE IF EXISTS `language_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `language_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_audio` varchar(120) DEFAULT NULL,
  `subtitles` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_options`
--

LOCK TABLES `language_options` WRITE;
/*!40000 ALTER TABLE `language_options` DISABLE KEYS */;
INSERT INTO `language_options` VALUES (1,'Wersja polska',0),(2,'Wersja niemiecka',1),(3,'Wersja angielska',1);
/*!40000 ALTER TABLE `language_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_technologies`
--

DROP TABLE IF EXISTS `movie_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_name` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_technologies`
--

LOCK TABLES `movie_technologies` WRITE;
/*!40000 ALTER TABLE `movie_technologies` DISABLE KEYS */;
INSERT INTO `movie_technologies` VALUES (1,'2D'),(2,'4D'),(3,'3D');
/*!40000 ALTER TABLE `movie_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(600) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `director` varchar(600) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `actors` varchar(600) DEFAULT NULL,
  `movie_description` varchar(10000) DEFAULT NULL,
  `id_age_category` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_age_category` (`id_age_category`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`id_age_category`) REFERENCES `age_categories` (`id`),
  CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (18,'Szrek','2005-06-01','Jaś Fasola','01:50:00','Postacie animowane','Bajka o ogrze i jego przygodach',1,1),(19,'Predator','2018-09-14','Shane Black','01:47:00','Boyd Holbrook',' Widowiskowy film science fiction, który rewolucjonizuje serię o Predatorze. Tym razem spektakularne polowanie przenosi się z odległych zakątków kosmosu wprost na ulice niewielkiego miasteczka na amerykańskiej prowincji. Najgroźniejsi łowcy wszechświata są silniejsi, mądrzejsi i bardziej śmiercionośni niż kiedykolwiek wcześniej, ulegli bowiem modyfikacji genetycznej, wzbogacając się o DNA innych gatunków. Kiedy mały chłopiec przypadkowo sprowadza ich ponownie na Ziemię, jedynie oddział byłych żołnierzy i skromny nauczyciel mogą zapobiec zagładzie rasy ludzkiej',1,15),(20,'Mission Impossible - Fallout','2018-08-10','Christopher McQuarrie','01:47:00','Tom Cruise','Bajka',2,2),(21,'Gladiator','2000-01-10','Ridley Scott','01:30:00','Russel Crowe','O Rzymie i jego losach',3,13),(22,'Toy Story','1995-11-19','John Lesseter','01:21:00','Tom Hanks','Super bajka o zabawkach',8,3),(23,'Ojciec Chrzestny','1972-12-31','Francis Ford Coppola','01:55:00','Marlon Brando','O gangsterach',7,10),(24,'Gwiezdne wojny: Ostatni Jedi','2017-12-17','Rian Johnson','01:58:00','Harrison Ford','Kolejna część sagi o gwezdnych wojnach',5,15),(25,'Obcy','1979-04-08','Ridley Scott','02:00:00','Sigourney Weaver','Kosmos i jego mieszkańcy',1,15),(26,'Indiana Jones i ostatnia krucjata','1989-05-24','Steven Spielberg','02:24:00','Harrison Ford','Film o niezwykłych perypetiach Indiany Jonesa, archeologa i poszukiwacza przygód',2,13),(27,'Władca Pierścieni: Drużyna Pierścienia','2002-02-15','Peter Jackson','03:00:00','Elijah Wood','Podróż hobbita z Shire i jego ośmiu towarzyszy, której celem jest zniszczenie potężnego pierścienia pożądanego przez Czarnego Władcę - Saurona.',3,7),(28,'Przeminęło z wiatrem','1939-12-15','Sam Wood','03:52:00','Vivien Leigh','Ekranizacja powieści Margaret Mitchell. Beztroska i bogata Scarlett wikła się w burzliwy związek z Rhettem Butlerem.',1,14),(30,'Kler','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(31,'Kler','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(32,'Kler','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(33,'Kler','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(34,'Klerycy kontratakują','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(35,'Klerycy kontratakują','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(36,'Klerycy kontratakują II','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(37,'Klerycy kontratakują II','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(38,'Kler','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(39,'Terminator','1994-01-01','James Cameron','02:00:00','Arnold Schwarzenegger','Film o maszynie',NULL,15),(40,'Terminator','1994-01-01','James Cameron','02:00:00','Arnold Schwarzenegger','Film o maszynie',NULL,15),(41,'Terminator','1994-01-01','James Cameron','02:00:00','Arnold Schwarzenegger','Film o maszynie',NULL,15),(42,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(43,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(44,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(45,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(46,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(47,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(48,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(49,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(50,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(51,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(52,'Psy','1992-02-02','Władysław Pasikowski','00:50:00','Bogusław Linda','Przygoda o psach',NULL,NULL),(53,'Kler','2018-08-08','Wojciech Smarzowski','01:40:00','Janusz Gajos, Arkadiusz Jakubik','Film o księżach',NULL,5),(54,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(55,'Psy','1992-02-02','Władysław Pasikowski','00:50:00','Bogusław Linda','Przygoda o psach',NULL,NULL),(56,'Terminator 2','1995-01-01','James Cameron','02:05:00','Arnold Schwarzenegger i inni','Film o robocie, który powraca znowu',NULL,15),(57,'Psy','1992-02-02','Władysław Pasikowski','00:50:00','Bogusław Linda','Przygoda o psach',NULL,NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_movies` BEFORE UPDATE ON `movies` FOR EACH ROW begin
		insert into event_logs(event_description)
		values (concat('Zmieniono informację o filmie', new.title));
        
	 if new.title != old.title then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.title, ' na ', new.title));
		end if;
        
     if new.release_date != old.release_date then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.release_date, ' na ', new.release_date));
		end if;
        
         if new.director != old.director then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.director, ' na ', new.director));
		end if;
        
           if new.duration != old.duration then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.duration, ' na ', new.duration));
		end if;
        
               if new.actors != old.actors then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.actors, ' na ', new.actors));
		end if;
        
                       if new.movie_description != old.movie_description then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.movie_description, ' na ', new.movie_description));
		end if;
        
                      if new.id_age_category != old.id_age_category then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.id_age_category, ' na ', new.id_age_category));
		end if;
        
                         if new.id_genre != old.id_genre then
     insert into event_logs(event_description)
		values (concat('Zmineniono z ', old.id_genre, ' na ', new.id_genre));
		end if;
	
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `screenings`
--

DROP TABLE IF EXISTS `screenings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `screenings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cinema_room` int(11) DEFAULT NULL,
  `id_movie` int(11) DEFAULT NULL,
  `id_language_option` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `screening_date` date DEFAULT NULL,
  `screening_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cinema_room` (`id_cinema_room`),
  KEY `id_movie` (`id_movie`),
  KEY `id_language_option` (`id_language_option`),
  CONSTRAINT `screenings_ibfk_1` FOREIGN KEY (`id_cinema_room`) REFERENCES `cinema_rooms` (`id`),
  CONSTRAINT `screenings_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`),
  CONSTRAINT `screenings_ibfk_4` FOREIGN KEY (`id_language_option`) REFERENCES `language_options` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenings`
--

LOCK TABLES `screenings` WRITE;
/*!40000 ALTER TABLE `screenings` DISABLE KEYS */;
INSERT INTO `screenings` VALUES (1,3,18,1,24,'2018-09-15','09:00:00'),(2,4,18,1,30,'2018-09-15','09:00:00'),(3,7,18,3,30,'2018-09-15','00:00:00'),(4,4,19,3,24,'2018-09-16','21:00:00'),(5,3,19,3,30,'2018-09-16','18:00:00'),(6,4,19,1,12,'2018-09-24','20:00:00'),(7,11,25,3,30,'2018-09-27','12:00:00'),(8,10,25,1,30,'2018-09-29','12:00:00'),(9,3,19,3,30,'2018-09-24','18:00:00'),(10,3,19,3,30,'2018-09-24','18:00:00'),(11,3,19,3,30,'2018-09-24','18:00:00'),(12,3,19,3,30,'2018-09-24','18:00:00'),(13,3,19,3,30,'2018-09-24','18:00:00'),(14,3,19,3,30,'2018-09-24','18:00:00'),(15,3,19,3,30,'2018-09-24','18:00:00'),(16,3,19,3,30,'2018-09-24','18:00:00'),(17,3,19,3,30,'2018-09-24','18:00:00'),(18,3,19,3,30,'2018-09-24','18:00:00'),(19,3,19,3,30,'2018-09-24','18:00:00'),(20,3,19,3,40,'2018-09-24','18:00:00'),(21,3,19,3,15,'2018-09-25','18:00:00'),(22,NULL,32,NULL,NULL,'2018-09-23','21:00:00'),(23,NULL,32,NULL,NULL,'2018-09-24','21:00:00'),(24,NULL,32,NULL,NULL,'2018-09-25','21:00:00'),(25,NULL,32,NULL,NULL,'2018-09-26','21:00:00'),(26,NULL,32,NULL,NULL,'2018-09-27','21:00:00'),(27,NULL,32,NULL,NULL,'2018-09-28','21:00:00'),(28,NULL,32,NULL,NULL,'2018-09-29','21:00:00'),(29,NULL,32,NULL,NULL,'2018-09-30','21:00:00'),(30,NULL,32,NULL,NULL,'2018-10-01','21:00:00'),(31,NULL,32,NULL,NULL,'2018-10-02','21:00:00'),(32,NULL,32,NULL,NULL,'2018-10-03','21:00:00'),(33,NULL,32,NULL,NULL,'2018-10-04','21:00:00'),(34,NULL,32,NULL,NULL,'2018-10-05','21:00:00'),(35,NULL,34,NULL,NULL,'2018-09-23','21:00:00'),(36,NULL,34,NULL,NULL,'2018-09-24','21:00:00'),(37,NULL,34,NULL,NULL,'2018-09-25','21:00:00'),(38,NULL,34,NULL,NULL,'2018-09-26','21:00:00'),(39,NULL,34,NULL,NULL,'2018-09-27','21:00:00'),(40,NULL,34,NULL,NULL,'2018-09-28','21:00:00'),(41,NULL,34,NULL,NULL,'2018-09-29','21:00:00'),(42,NULL,34,NULL,NULL,'2018-09-30','21:00:00'),(43,NULL,34,NULL,NULL,'2018-10-01','21:00:00'),(44,NULL,34,NULL,NULL,'2018-10-02','21:00:00'),(45,NULL,34,NULL,NULL,'2018-10-03','21:00:00'),(46,NULL,34,NULL,NULL,'2018-10-04','21:00:00'),(47,NULL,34,NULL,NULL,'2018-10-05','21:00:00'),(48,NULL,36,NULL,NULL,'2018-09-23','21:00:00'),(49,NULL,36,NULL,NULL,'2018-09-24','21:00:00'),(50,NULL,36,NULL,NULL,'2018-09-25','21:00:00'),(51,NULL,36,NULL,NULL,'2018-09-26','21:00:00'),(52,NULL,36,NULL,NULL,'2018-09-27','21:00:00'),(53,NULL,36,NULL,NULL,'2018-09-28','21:00:00'),(54,NULL,36,NULL,NULL,'2018-09-29','21:00:00'),(55,NULL,36,NULL,NULL,'2018-09-30','21:00:00'),(56,NULL,36,NULL,NULL,'2018-10-01','21:00:00'),(57,NULL,36,NULL,NULL,'2018-10-02','21:00:00'),(58,NULL,36,NULL,NULL,'2018-10-03','21:00:00'),(59,NULL,36,NULL,NULL,'2018-10-04','21:00:00'),(60,NULL,36,NULL,NULL,'2018-10-05','21:00:00'),(61,1,40,1,24,'2018-10-07','20:00:00'),(62,1,40,1,24,'2018-10-08','20:00:00'),(63,1,40,1,24,'2018-10-09','20:00:00'),(64,1,40,1,24,'2018-10-10','20:00:00'),(65,1,40,1,24,'2018-10-11','20:00:00'),(66,1,40,1,24,'2018-10-12','20:00:00'),(67,1,40,1,24,'2018-10-13','20:00:00'),(68,1,40,1,24,'2018-10-14','20:00:00'),(69,1,40,1,24,'2018-10-15','20:00:00'),(70,1,40,1,24,'2018-10-16','20:00:00'),(71,1,40,1,24,'2018-10-17','20:00:00'),(72,1,40,1,24,'2018-10-18','20:00:00'),(73,1,40,1,24,'2018-10-19','20:00:00'),(74,1,40,1,24,'2018-10-20','20:00:00'),(75,1,40,1,24,'2018-10-21','20:00:00'),(76,1,40,1,24,'2018-10-22','20:00:00'),(77,1,40,1,24,'2018-10-23','20:00:00'),(78,1,40,1,24,'2018-10-24','20:00:00'),(79,1,40,1,24,'2018-10-25','20:00:00'),(80,1,40,1,24,'2018-10-26','20:00:00'),(81,1,41,1,24,'2018-10-07','20:00:00'),(82,1,41,1,24,'2018-10-08','20:00:00'),(83,1,41,1,24,'2018-10-09','20:00:00'),(84,1,41,1,24,'2018-10-10','20:00:00'),(85,1,41,1,24,'2018-10-11','20:00:00'),(86,1,41,1,24,'2018-10-12','20:00:00'),(87,1,41,1,24,'2018-10-13','20:00:00'),(88,1,41,1,24,'2018-10-14','20:00:00'),(89,1,41,1,24,'2018-10-15','20:00:00'),(90,1,41,1,24,'2018-10-16','20:00:00'),(91,1,41,1,24,'2018-10-17','20:00:00'),(92,1,41,1,24,'2018-10-18','20:00:00'),(93,1,41,1,24,'2018-10-19','20:00:00'),(94,1,41,1,24,'2018-10-20','20:00:00'),(95,1,41,1,24,'2018-10-21','20:00:00'),(96,1,41,1,24,'2018-10-22','20:00:00'),(97,1,41,1,24,'2018-10-23','20:00:00'),(98,1,41,1,24,'2018-10-24','20:00:00'),(99,1,41,1,24,'2018-10-25','20:00:00'),(100,1,41,1,24,'2018-10-26','20:00:00'),(101,5,46,1,24,'2018-10-09','19:00:00'),(102,5,46,1,24,'2018-10-10','19:00:00'),(103,5,46,1,24,'2018-10-11','19:00:00'),(104,5,46,1,24,'2018-10-12','19:00:00'),(105,5,46,1,24,'2018-10-13','19:00:00'),(106,5,46,1,24,'2018-10-14','19:00:00'),(107,5,46,1,24,'2018-10-15','19:00:00'),(108,5,46,1,24,'2018-10-16','19:00:00'),(109,5,46,1,24,'2018-10-17','19:00:00'),(110,5,46,1,24,'2018-10-18','19:00:00'),(111,5,46,1,24,'2018-10-19','19:00:00'),(112,5,46,1,24,'2018-10-20','19:00:00'),(113,5,46,1,24,'2018-10-21','19:00:00'),(114,5,46,1,24,'2018-10-22','19:00:00'),(115,5,46,1,24,'2018-10-23','19:00:00'),(116,5,46,1,24,'2018-10-24','19:00:00'),(117,5,46,1,24,'2018-10-25','19:00:00'),(118,5,46,1,24,'2018-10-26','19:00:00'),(119,5,46,1,24,'2018-10-27','19:00:00'),(120,5,46,1,24,'2018-10-28','19:00:00'),(121,5,46,1,24,'2018-10-29','19:00:00'),(122,5,46,1,24,'2018-10-30','19:00:00'),(123,5,46,1,24,'2018-10-31','19:00:00'),(124,5,46,1,24,'2018-11-01','19:00:00'),(125,5,46,1,24,'2018-11-02','19:00:00'),(126,5,46,1,24,'2018-11-03','19:00:00'),(127,5,46,1,24,'2018-11-04','19:00:00'),(128,5,46,1,24,'2018-11-05','19:00:00'),(129,5,46,1,24,'2018-11-06','19:00:00'),(130,5,46,1,24,'2018-11-07','19:00:00'),(131,9,47,1,24,'2018-10-09','19:00:00'),(132,9,47,1,24,'2018-10-10','19:00:00'),(133,9,47,1,24,'2018-10-11','19:00:00'),(134,9,47,1,24,'2018-10-12','19:00:00'),(135,9,47,1,24,'2018-10-13','19:00:00'),(136,9,47,1,24,'2018-10-14','19:00:00'),(137,9,47,1,24,'2018-10-15','19:00:00'),(138,9,47,1,24,'2018-10-16','19:00:00'),(139,9,47,1,24,'2018-10-17','19:00:00'),(140,9,47,1,24,'2018-10-18','19:00:00'),(141,9,47,1,24,'2018-10-19','19:00:00'),(142,9,47,1,24,'2018-10-20','19:00:00'),(143,9,47,1,24,'2018-10-21','19:00:00'),(144,9,47,1,24,'2018-10-22','19:00:00'),(145,9,47,1,24,'2018-10-23','19:00:00'),(146,9,47,1,24,'2018-10-24','19:00:00'),(147,9,47,1,24,'2018-10-25','19:00:00'),(148,9,47,1,24,'2018-10-26','19:00:00'),(149,9,47,1,24,'2018-10-27','19:00:00'),(150,9,47,1,24,'2018-10-28','19:00:00'),(151,9,47,1,24,'2018-10-29','19:00:00'),(152,9,47,1,24,'2018-10-30','19:00:00'),(153,9,47,1,24,'2018-10-31','19:00:00'),(154,9,47,1,24,'2018-11-01','19:00:00'),(155,9,47,1,24,'2018-11-02','19:00:00'),(156,9,47,1,24,'2018-11-03','19:00:00'),(157,9,47,1,24,'2018-11-04','19:00:00'),(158,9,47,1,24,'2018-11-05','19:00:00'),(159,9,47,1,24,'2018-11-06','19:00:00'),(160,9,47,1,24,'2018-11-07','19:00:00'),(161,5,48,1,24,'2018-10-09','19:00:00'),(162,5,48,1,24,'2018-10-10','19:00:00'),(163,5,48,1,24,'2018-10-11','19:00:00'),(164,5,48,1,24,'2018-10-12','19:00:00'),(165,5,48,1,24,'2018-10-13','19:00:00'),(166,5,48,1,24,'2018-10-14','19:00:00'),(167,5,48,1,24,'2018-10-15','19:00:00'),(168,5,48,1,24,'2018-10-16','19:00:00'),(169,5,48,1,24,'2018-10-17','19:00:00'),(170,5,48,1,24,'2018-10-18','19:00:00'),(171,5,48,1,24,'2018-10-19','19:00:00'),(172,5,48,1,24,'2018-10-20','19:00:00'),(173,5,48,1,24,'2018-10-21','19:00:00'),(174,5,48,1,24,'2018-10-22','19:00:00'),(175,5,48,1,24,'2018-10-23','19:00:00'),(176,5,48,1,24,'2018-10-24','19:00:00'),(177,5,48,1,24,'2018-10-25','19:00:00'),(178,5,48,1,24,'2018-10-26','19:00:00'),(179,5,48,1,24,'2018-10-27','19:00:00'),(180,5,48,1,24,'2018-10-28','19:00:00'),(181,5,48,1,24,'2018-10-29','19:00:00'),(182,5,48,1,24,'2018-10-30','19:00:00'),(183,5,48,1,24,'2018-10-31','19:00:00'),(184,5,48,1,24,'2018-11-01','19:00:00'),(185,5,48,1,24,'2018-11-02','19:00:00'),(186,5,48,1,24,'2018-11-03','19:00:00'),(187,5,48,1,24,'2018-11-04','19:00:00'),(188,5,48,1,24,'2018-11-05','19:00:00'),(189,5,48,1,24,'2018-11-06','19:00:00'),(190,5,48,1,24,'2018-11-07','19:00:00');
/*!40000 ALTER TABLE `screenings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_screenings` BEFORE INSERT ON `screenings` FOR EACH ROW begin
	 IF NEW.price > 40 THEN
        INSERT INTO event_logs(event_description)
            VALUES (concat('Próbowano wstawić nowy seans z ceną ',NEW.price,' dla seansu z filmem ', NEW.id_movie));
        SET NEW.price = 40;
   END IF;
   IF NEW.price < 15 THEN
        INSERT INTO event_logs(event_description)
            VALUES (concat('Próbowano wstawić nowy seans z ceną ',NEW.price,' dla seansu z filmem ', NEW.id_movie));
        SET NEW.price = 15;
   END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_screenings` AFTER INSERT ON `screenings` FOR EACH ROW begin
	insert into event_logs(event_description)
    values(concat('Wstawiono nowy seans dla filmu o id', new.id_movie));

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(120) DEFAULT NULL,
  `percentage_discount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_types`
--

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;
INSERT INTO `ticket_types` VALUES (1,'normalny',0),(2,'studenci',30),(3,'uczniowie',50),(4,'seniorzy',50);
/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_screening` int(11) DEFAULT NULL,
  `id_ticket_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_screening` (`id_screening`),
  KEY `id_ticket_type` (`id_ticket_type`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_screening`) REFERENCES `screenings` (`id`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`id_ticket_type`) REFERENCES `ticket_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2018-09-15 11:00:54',1,3),(2,'2018-09-15 11:00:54',1,2),(3,'2018-09-15 11:00:54',1,1),(4,'2018-09-15 11:00:54',NULL,2),(5,'2018-09-15 11:00:54',NULL,4),(6,'2018-09-15 11:00:54',NULL,1),(7,'2018-09-15 11:00:54',NULL,3),(8,'2018-09-15 11:00:54',NULL,2),(9,'2018-09-15 11:00:54',NULL,1),(10,'2018-09-16 10:49:27',NULL,3),(11,'2018-09-16 10:49:27',NULL,2),(12,'2018-09-16 10:49:30',NULL,3),(13,'2018-09-16 10:49:30',NULL,2),(14,'2018-09-16 10:49:33',NULL,3),(15,'2018-09-16 10:49:33',NULL,2),(16,'2018-09-16 10:49:34',NULL,3),(17,'2018-09-16 10:49:34',NULL,2),(18,'2018-09-16 10:49:34',NULL,3),(19,'2018-09-16 10:49:34',NULL,2),(20,'2018-09-16 10:49:34',NULL,3),(21,'2018-09-16 10:49:35',NULL,2),(22,'2018-09-16 10:49:35',NULL,3),(23,'2018-09-16 10:49:35',NULL,2),(24,'2018-09-16 10:49:35',NULL,3),(25,'2018-09-16 10:49:35',NULL,2),(26,'2018-09-16 10:49:35',NULL,3),(27,'2018-09-16 10:49:35',NULL,2),(28,'2018-09-16 10:49:36',NULL,3),(29,'2018-09-16 10:49:36',NULL,2),(30,'2018-09-16 10:49:36',NULL,3),(31,'2018-09-16 10:49:36',NULL,2),(32,'2018-09-16 10:49:36',NULL,3),(33,'2018-09-16 10:49:36',NULL,2);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cinema'
--

--
-- Dumping routines for database 'cinema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-15 10:29:18
