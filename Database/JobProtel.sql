CREATE DATABASE  IF NOT EXISTS `jobportal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jobportal`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: jobportal
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `p_applay`
--

DROP TABLE IF EXISTS `p_applay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_applay` (
  `ID` bigint(20) NOT NULL,
  `recruiterId` bigint(20) DEFAULT NULL,
  `jobId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `applayDate` timestamp NULL DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_applay`
--

LOCK TABLES `p_applay` WRITE;
/*!40000 ALTER TABLE `p_applay` DISABLE KEYS */;
INSERT INTO `p_applay` VALUES (1,5,2,4,'2019-01-30 16:58:26','Aiko Waller'),(2,5,2,6,'2019-01-30 17:24:41','Maite Lee');
/*!40000 ALTER TABLE `p_applay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_job`
--

DROP TABLE IF EXISTS `p_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_job` (
  `ID` bigint(20) NOT NULL,
  `companyName` varchar(225) DEFAULT NULL,
  `language` varchar(225) DEFAULT NULL,
  `Description` varchar(225) DEFAULT NULL,
  `postDate` date DEFAULT NULL,
  `postByRecId` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_job`
--

LOCK TABLES `p_job` WRITE;
/*!40000 ALTER TABLE `p_job` DISABLE KEYS */;
INSERT INTO `p_job` VALUES (2,'DDDD','FF','GHIGHhqbovbt48vyboq  w hvtia  hwui4tb','2018-01-12','Hariomukati741@gmail.com','fff','Hariomukati741@gmail.com','Hariomukati741@gmail.com','2019-01-29 15:44:23','2019-01-30 08:05:10'),(3,'FFF','DD','fbb','2018-01-12','Hariomukati741@gmail.com','DD','Hariomukati741@gmail.com','Hariomukati741@gmail.com','2019-01-30 09:26:42','2019-01-30 09:26:42');
/*!40000 ALTER TABLE `p_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_role`
--

DROP TABLE IF EXISTS `p_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_role`
--

LOCK TABLES `p_role` WRITE;
/*!40000 ALTER TABLE `p_role` DISABLE KEYS */;
INSERT INTO `p_role` VALUES (1,'Admin','Administration',NULL,NULL,'2019-01-28 07:39:06','2019-01-28 07:37:40'),(2,'Recruiter','Recruiter',NULL,NULL,'2019-01-28 07:37:43','2019-01-28 07:37:47'),(3,'Candidate','Candidate',NULL,NULL,'2019-01-28 07:37:49','2019-01-28 07:37:53');
/*!40000 ALTER TABLE `p_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_user`
--

DROP TABLE IF EXISTS `p_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_user` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_user`
--

LOCK TABLES `p_user` WRITE;
/*!40000 ALTER TABLE `p_user` DISABLE KEYS */;
INSERT INTO `p_user` VALUES (1,'Brian','Buchanan','Hariom@gmail.com','123','1997-10-06','9165415598',1,'Male','root','root','2019-01-28 11:53:22','2019-01-28 11:27:33'),(3,'Vijay','Bhayre','Vijay@gmail.com','123','1998-10-06','9865475655',2,'Male','Hariom@gmail.com','Hariom@gmail.com','2019-01-28 11:53:04','2019-01-29 07:07:49'),(4,'Aiko','Waller','savanmukati739@gmail.com','123','1998-10-06','9926884704',3,'Male','root','root','2019-01-30 11:35:22','2019-01-29 14:57:07'),(5,'Karleigh','Hurst','Hariomukati741@gmail.com','Hari@om!97m','1997-10-06','9165415598',2,'Male','Hariom@gmail.com','Hariom@gmail.com','2019-01-30 11:38:32','2019-01-29 15:43:33'),(6,'Maite','Lee','Allistair@gmail.com','123','1997-10-06','Charlotte',3,'Male','root','root','2019-01-30 17:24:12','2019-01-30 17:24:12'),(7,'Adara','Michael','Wyatt@gmail.com','Pa$$w0rd!','1997-01-01','8585858585',3,'m','root','root','2019-02-22 15:35:22','2019-02-22 15:35:46');
/*!40000 ALTER TABLE `p_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-22 21:13:38
