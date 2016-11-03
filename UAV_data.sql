-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: uav_data
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `image_name` varchar(255) NOT NULL,
  `rasp_no` int(1) NOT NULL,
  `uav_header` varchar(3) NOT NULL,
  `uav_position` double NOT NULL,
  `uav_altitude` double NOT NULL,
  `uav_velocity` double NOT NULL,
  `grid_no` varchar(3) NOT NULL,
  PRIMARY KEY (`image_name`),
  UNIQUE KEY `image_name_UNIQUE` (`image_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES ('A1.jpg',1,'S',101.101,100,0,'A1'),('A2.jpg',1,'S',102.101,100,0,'A2'),('A3.jpg',1,'S',103.101,100,0,'A3'),('A4.jpg',1,'S',104.101,100,0,'A4'),('A5.jpg',1,'S',105.101,100,0,'A5'),('A6.jpg',1,'S',106.101,100,0,'A6'),('A7.jpg',1,'S',107.101,100,0,'A7'),('A8.jpg',1,'E',108.101,100,0,'A8'),('B1.jpg',2,'S',101.102,100,0,'B1'),('B2.jpg',2,'S',102.102,100,0,'B2'),('B3.jpg',2,'S',103.102,100,0,'B3'),('B4.jpg',2,'S',104.102,100,0,'B4'),('B5.jpg',2,'S',105.102,100,0,'B5'),('B6.jpg',2,'S',106.102,100,0,'B6'),('B7.jpg',2,'S',107.102,100,0,'B7'),('B8.jpg',2,'E',108.102,100,0,'B8'),('C1.jpg',3,'S',101.103,100,0,'C1'),('C2.jpg',3,'S',102.103,100,0,'C2'),('C3.jpg',3,'S',103.103,100,0,'C3'),('C4.jpg',3,'S',104.103,100,0,'C4'),('C5.jpg',3,'S',105.103,100,0,'C5'),('C6.jpg',3,'S',106.103,100,0,'C6'),('C7.jpg',3,'S',107.103,100,0,'C7'),('C8.jpg',3,'E',108.103,100,0,'C8'),('D1.jpg',1,'N',101.104,100,0,'D1'),('D2.jpg',1,'N',102.104,100,0,'D2'),('D3.jpg',1,'N',103.104,100,0,'D3'),('D4.jpg',1,'N',104.104,100,0,'D4'),('D5.jpg',1,'N',105.104,100,0,'D5'),('D6.jpg',1,'N',106.104,100,0,'D6'),('D7.jpg',1,'N',107.104,100,0,'D7'),('D8.jpg',1,'E',108.104,100,0,'D8'),('E1.jpg',2,'N',101.105,100,0,'E1'),('E2.jpg',2,'N',102.105,100,0,'E2'),('E3.jpg',2,'N',103.105,100,0,'E3'),('E4.jpg',2,'N',104.105,100,0,'E4'),('E5.jpg',2,'N',105.105,100,0,'E5'),('E6.jpg',2,'N',106.105,100,0,'E6'),('E7.jpg',2,'N',107.105,100,0,'E7'),('E8.jpg',2,'E',108.105,100,0,'E8'),('F1.jpg',3,'N',101.106,100,0,'F1'),('F2.jpg',3,'N',102.106,100,0,'F2'),('F3.jpg',3,'N',103.106,100,0,'F3'),('F4.jpg',3,'N',104.106,100,0,'F4'),('F5.jpg',3,'N',105.106,100,0,'F5'),('F6.jpg',3,'N',106.106,100,0,'F6'),('F7.jpg',3,'N',107.106,100,0,'F7'),('F8.jpg',3,'NW',108.106,100,0,'F8'),('G1.jpg',1,'S',101.107,100,0,'G1'),('G2.jpg',1,'S',102.107,100,0,'G2'),('G3.jpg',1,'S',103.107,100,0,'G3'),('G4.jpg',1,'S',104.107,100,0,'G4'),('G5.jpg',1,'S',105.107,100,0,'G5'),('G6.jpg',1,'S',106.107,100,0,'G6'),('G7.jpg',1,'S',107.107,100,0,'G7'),('G8.jpg',1,'NWW',108.107,100,0,'G8'),('H1.jpg',2,'S',101.108,100,0,'H1'),('H2.jpg',2,'S',102.108,100,0,'H2'),('H3.jpg',2,'S',103.108,100,0,'H3'),('H4.jpg',2,'S',104.108,100,0,'H4'),('H5.jpg',2,'S',105.108,100,0,'H5'),('H6.jpg',2,'S',106.108,100,0,'H6'),('H7.jpg',2,'S',107.108,100,0,'H7'),('H8.jpg',2,'NWW',108.108,100,0,'H8');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-04  0:00:38
