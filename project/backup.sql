-- MySQL dump 10.13  Distrib 8.0.13, for osx10.14 (x86_64)
--
-- Host: localhost    Database: douban250
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_doubanMovie`
--

DROP TABLE IF EXISTS `t_doubanMovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_doubanMovie` (
  `movieID` int(11) NOT NULL,
  `movieName` varchar(20) NOT NULL,
  `movieScore` float(2,1) DEFAULT NULL,
  `movieJudges` int(11) DEFAULT NULL,
  `movieScenario` text NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieScriptwriter` varchar(50) NOT NULL,
  `movieActor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `movieType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `movieLocation` varchar(20) DEFAULT NULL,
  `movieLanguage` varchar(50) DEFAULT NULL,
  `movieDate` datetime DEFAULT NULL,
  `movieTime` smallint(6) NOT NULL,
  `movieNickname` varchar(50) DEFAULT NULL,
  `movieTag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doubanMovie`
--

LOCK TABLES `t_doubanMovie` WRITE;
/*!40000 ALTER TABLE `t_doubanMovie` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doubanMovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HotTalk`
--

DROP TABLE IF EXISTS `t_HotTalk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_HotTalk` (
  `Hid` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`Hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HotTalk`
--

LOCK TABLES `t_HotTalk` WRITE;
/*!40000 ALTER TABLE `t_HotTalk` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HotTalk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_movieStyle`
--

DROP TABLE IF EXISTS `t_movieStyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_movieStyle` (
  `Sid` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `style` smallint(4) DEFAULT NULL,
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_movieStyle`
--

LOCK TABLES `t_movieStyle` WRITE;
/*!40000 ALTER TABLE `t_movieStyle` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_movieStyle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28 17:24:15
