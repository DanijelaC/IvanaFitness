CREATE DATABASE  IF NOT EXISTS `ivana` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ivana`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: ivana
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise` (
  `ID_EXERCISE` int(11) NOT NULL AUTO_INCREMENT,
  `EXERCISE_NAME` varchar(50) NOT NULL,
  `EXERCISE_DESCRIPTION` varchar(100) DEFAULT NULL,
  `ID_TERM_DAY` int(11) NOT NULL,
  `ID_TERM` int(11) NOT NULL,
  PRIMARY KEY (`ID_EXERCISE`),
  KEY `fk_exercise_term_day1_idx` (`ID_TERM_DAY`),
  KEY `fk_exercise_term_for_exercise1_idx` (`ID_TERM`),
  CONSTRAINT `fk_exercise_term_day1` FOREIGN KEY (`ID_TERM_DAY`) REFERENCES `term_day` (`ID_TERM_DAY`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_exercise_term_for_exercise1` FOREIGN KEY (`ID_TERM`) REFERENCES `term_for_exercise` (`ID_TERM`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `ID_MEMBER` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  `ID_USER` int(11) NOT NULL,
  `PHONE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_MEMBER`),
  KEY `fk_MEMBERS_USER1_idx` (`ID_USER`),
  CONSTRAINT `fk_MEMBERS_USER1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Dragana','Peric','dragana@mts.rs','Sarajevska 5',9,NULL),(16,'vdsvs','fsdf','DASDA','A',9,'011123456'),(17,'vdsvs','fsdf','DASDA','A',9,'011123456'),(18,'vdsvs','fsdf','DASDA','A',9,'011123456');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_exercise`
--

DROP TABLE IF EXISTS `member_exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_exercise` (
  `ID_EXERCISE` int(11) NOT NULL,
  `ID_MEMBER` int(11) NOT NULL,
  KEY `fk_USER_EXERCISE_EXERCISE1_idx` (`ID_EXERCISE`),
  KEY `fk_MEMBER_EXERCISE_MEMBERS1_idx` (`ID_MEMBER`),
  CONSTRAINT `fk_MEMBER_EXERCISE_MEMBERS1` FOREIGN KEY (`ID_MEMBER`) REFERENCES `member` (`ID_MEMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_USER_EXERCISE_EXERCISE1` FOREIGN KEY (`ID_EXERCISE`) REFERENCES `exercise` (`ID_EXERCISE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_exercise`
--

LOCK TABLES `member_exercise` WRITE;
/*!40000 ALTER TABLE `member_exercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `ID_MESSAGE` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `EMAIL` varchar(40) CHARACTER SET utf8 NOT NULL,
  `MESSAGE` varchar(256) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID_MESSAGE`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (4,'dasd','dadas@ddd','dasdasd'),(5,'aaa','aaa','aaaa'),(6,'aaa','aaa@aa','asdasfdas'),(7,'ssss','sss@aa.com','ddafs'),(8,'aaa','aaa@aa','aaaa'),(9,'aaa','aaa@aa','aaaa'),(10,'adas','dadas@ddd','dassaf'),(11,'dada','dadas@ddd','dasdasd'),(12,'dD','dadas@ddd.com','AdaD');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `ID_PAYMENT` int(11) NOT NULL,
  `PAYMENT_START` date DEFAULT NULL,
  `PAYMENT_TYPE` varchar(45) DEFAULT NULL,
  `P_DESCRIPTION` varchar(100) DEFAULT NULL,
  `ID_MEMBERS` int(11) NOT NULL,
  `ID_STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ID_PAYMENT`),
  KEY `fk_PAYMENT_MEMBERS1_idx` (`ID_MEMBERS`),
  KEY `fk_payment_payment_status1_idx` (`ID_STATUS`),
  CONSTRAINT `fk_PAYMENT_MEMBERS1` FOREIGN KEY (`ID_MEMBERS`) REFERENCES `member` (`ID_MEMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_payment_status1` FOREIGN KEY (`ID_STATUS`) REFERENCES `payment_status` (`ID_STATUS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_status` (
  `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `ID_PHOTO` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ID_TYPE` int(11) NOT NULL,
  PRIMARY KEY (`ID_PHOTO`),
  KEY `fk_photo_photo_type1_idx1` (`ID_TYPE`),
  CONSTRAINT `fk_photo_photo_type` FOREIGN KEY (`ID_TYPE`) REFERENCES `photo_type` (`ID_TYPE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'1.jpg',1),(2,'2.jpg',1),(3,'1.jpg',2),(4,'2.jpg',2),(10,'Nikola',1),(11,'da',1),(12,'Nikola',1),(13,'Nikola',1),(14,'Nikola',1),(15,'10.jpg',1),(16,'11.jpg',1),(17,'18557109_1917754981814505_4836032759751545400_n.jpg',2),(18,'18557109_1917754981814505_4836032759751545400_n.jpg',1);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_type`
--

DROP TABLE IF EXISTS `photo_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_type` (
  `ID_TYPE` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_type`
--

LOCK TABLES `photo_type` WRITE;
/*!40000 ALTER TABLE `photo_type` DISABLE KEYS */;
INSERT INTO `photo_type` VALUES (1,'Thumbnail'),(2,'Large');
/*!40000 ALTER TABLE `photo_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_day`
--

DROP TABLE IF EXISTS `term_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_day` (
  `ID_TERM_DAY` int(11) NOT NULL AUTO_INCREMENT,
  `DAYS` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID_TERM_DAY`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_day`
--

LOCK TABLES `term_day` WRITE;
/*!40000 ALTER TABLE `term_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_for_exercise`
--

DROP TABLE IF EXISTS `term_for_exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_for_exercise` (
  `ID_TERM` int(11) NOT NULL AUTO_INCREMENT,
  `TERM_TIME` time NOT NULL,
  `TERM_DESCRIPTION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TERM`),
  UNIQUE KEY `ID_TERM_UNIQUE` (`ID_TERM`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_for_exercise`
--

LOCK TABLES `term_for_exercise` WRITE;
/*!40000 ALTER TABLE `term_for_exercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_for_exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `F_NAME` varchar(45) DEFAULT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `LAST_LOGIN_DATE` datetime DEFAULT NULL,
  `ID_STATUS` int(11) NOT NULL,
  `ID_ROLE` int(11) NOT NULL,
  PRIMARY KEY (`ID_USER`),
  KEY `fk_USER_USER_STATUS1_idx` (`ID_STATUS`),
  KEY `fk_USER_USER_ROLE1_idx` (`ID_ROLE`),
  CONSTRAINT `fk_USER_USER_ROLE1` FOREIGN KEY (`ID_ROLE`) REFERENCES `user_role` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_USER_USER_STATUS1` FOREIGN KEY (`ID_STATUS`) REFERENCES `user_status` (`ID_STATUS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'Ivana','Ivana83','IvanaT',NULL,7,9),(9,'Danijela','Dani75','DaniC',NULL,7,10);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (12,'admin',NULL),(13,'admin1',NULL),(14,'posetilac',NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_status` (
  `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID_STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` VALUES (10,'aktivan',NULL),(11,'neaktivan',NULL),(12,'blokiran',NULL);
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-01 18:55:45
