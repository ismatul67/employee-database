-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
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
-- Table structure for table `t2_employee`
--

DROP TABLE IF EXISTS `t2_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t2_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `birth_date` date NOT NULL,
  `gender` int NOT NULL,
  `id_number` int NOT NULL,
  `is_delete` bit(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2ykcumj64d6cb5u0jei1asubm` (`id_number`),
  KEY `FKepryjeoclaisbkj77g5799wmt` (`position_id`),
  CONSTRAINT `FKepryjeoclaisbkj77g5799wmt` FOREIGN KEY (`position_id`) REFERENCES `t1_position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2_employee`
--

LOCK TABLES `t2_employee` WRITE;
/*!40000 ALTER TABLE `t2_employee` DISABLE KEYS */;
INSERT INTO `t2_employee` VALUES (1,'1990-02-14',0,14021990,_binary '\0','Yogi Lestari',5),(2,'1991-05-10',0,10051991,_binary '\0','Anggi Setiawan',2),(3,'1993-04-20',1,10041993,_binary '\0','Rosiana',4),(4,'1994-01-11',0,11011994,_binary '\0','Yudi Ismiaji',3);
/*!40000 ALTER TABLE `t2_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-28 17:17:33
