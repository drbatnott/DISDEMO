-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: mysql.cs.nott.ac.uk    Database: pszpxb
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `SaturnModules`
--

DROP TABLE IF EXISTS `SaturnModules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SaturnModules` (
  `id` varchar(6) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SaturnModules`
--

LOCK TABLES `SaturnModules` WRITE;
/*!40000 ALTER TABLE `SaturnModules` DISABLE KEYS */;
INSERT INTO `SaturnModules` VALUES ('G51DBI','Databases and Interfaces'),('G52GRP','Software Engineering Group Project'),('G53IND','Industrial Experience'),('G54DIS','Databases, Interfaces and Software Design Principles'),('G54SPM','Software Engineering Management');
/*!40000 ALTER TABLE `SaturnModules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `uid` int(11) NOT NULL,
  `mid` varchar(10) NOT NULL,
  PRIMARY KEY (`uid`,`mid`),
  KEY `mid` (`mid`),
  CONSTRAINT `link_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  CONSTRAINT `link_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `modules` (`modid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `modid` varchar(10) NOT NULL,
  `modname` varchar(256) NOT NULL,
  PRIMARY KEY (`modid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `schoolid` varchar(10) NOT NULL,
  `schoolsid` varchar(2) DEFAULT NULL,
  `schoolname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`schoolid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES ('ABEE','K1','Architecture and Built Environment'),('AMCS','Q4','American and Canadian Studies'),('COMP','G5','Computer Science'),('EEEE','H6','Electrical and Electronic Engineering');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smodules`
--

DROP TABLE IF EXISTS `smodules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smodules` (
  `sid` varchar(6) NOT NULL,
  `modname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smodules`
--

LOCK TABLES `smodules` WRITE;
/*!40000 ALTER TABLE `smodules` DISABLE KEYS */;
/*!40000 ALTER TABLE `smodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `id` int(11) NOT NULL,
  `cid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-20 15:52:13
