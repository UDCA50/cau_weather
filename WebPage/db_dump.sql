-- MySQL dump 10.13  Distrib 5.1.41, for Win32 (ia32)
--
-- Host: localhost    Database: jung_db
-- ------------------------------------------------------
-- Server version	5.1.41-community

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
-- Table structure for table `busi_1`
--

DROP TABLE IF EXISTS `busi_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busi_1` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busi_1`
--

LOCK TABLES `busi_1` WRITE;
/*!40000 ALTER TABLE `busi_1` DISABLE KEYS */;
INSERT INTO `busi_1` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:28:14');
/*!40000 ALTER TABLE `busi_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busi_2`
--

DROP TABLE IF EXISTS `busi_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busi_2` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busi_2`
--

LOCK TABLES `busi_2` WRITE;
/*!40000 ALTER TABLE `busi_2` DISABLE KEYS */;
INSERT INTO `busi_2` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:28:19');
/*!40000 ALTER TABLE `busi_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busi_3`
--

DROP TABLE IF EXISTS `busi_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busi_3` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busi_3`
--

LOCK TABLES `busi_3` WRITE;
/*!40000 ALTER TABLE `busi_3` DISABLE KEYS */;
INSERT INTO `busi_3` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:28:24');
/*!40000 ALTER TABLE `busi_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorm_1`
--

DROP TABLE IF EXISTS `dorm_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dorm_1` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm_1`
--

LOCK TABLES `dorm_1` WRITE;
/*!40000 ALTER TABLE `dorm_1` DISABLE KEYS */;
INSERT INTO `dorm_1` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:28:39');
/*!40000 ALTER TABLE `dorm_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorm_2`
--

DROP TABLE IF EXISTS `dorm_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dorm_2` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm_2`
--

LOCK TABLES `dorm_2` WRITE;
/*!40000 ALTER TABLE `dorm_2` DISABLE KEYS */;
INSERT INTO `dorm_2` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:28:44');
/*!40000 ALTER TABLE `dorm_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorm_3`
--

DROP TABLE IF EXISTS `dorm_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dorm_3` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm_3`
--

LOCK TABLES `dorm_3` WRITE;
/*!40000 ALTER TABLE `dorm_3` DISABLE KEYS */;
INSERT INTO `dorm_3` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:28:47');
/*!40000 ALTER TABLE `dorm_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_eng_1`
--

DROP TABLE IF EXISTS `first_eng_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_eng_1` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_eng_1`
--

LOCK TABLES `first_eng_1` WRITE;
/*!40000 ALTER TABLE `first_eng_1` DISABLE KEYS */;
INSERT INTO `first_eng_1` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:29:14');
/*!40000 ALTER TABLE `first_eng_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_eng_2`
--

DROP TABLE IF EXISTS `first_eng_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_eng_2` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_eng_2`
--

LOCK TABLES `first_eng_2` WRITE;
/*!40000 ALTER TABLE `first_eng_2` DISABLE KEYS */;
INSERT INTO `first_eng_2` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:29:18');
/*!40000 ALTER TABLE `first_eng_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_eng_3`
--

DROP TABLE IF EXISTS `first_eng_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_eng_3` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_eng_3`
--

LOCK TABLES `first_eng_3` WRITE;
/*!40000 ALTER TABLE `first_eng_3` DISABLE KEYS */;
INSERT INTO `first_eng_3` VALUES (1,'208-6floor',30.3,20.3,'2016-05-12 23:29:22');
/*!40000 ALTER TABLE `first_eng_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `hp` char(20) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('caunic','carbon14','±èÁ¤¿í','¼Ò°ø³¡³²','010-8619-5909','1508everyday@gmail.com','built_in_command',1),('user01','carbon14','°©','°©´Ð','010-8619-5909','1508everyday@gmail.com','2016-05-09 (14:34)',9),('user02','carbon14','À»','À»´Ð','010-8619-5909','1508everyday@gmail.com','2016-05-09 (14:35)',9);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo_build`
--

DROP TABLE IF EXISTS `memo_build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo_build` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo_build`
--

LOCK TABLES `memo_build` WRITE;
/*!40000 ALTER TABLE `memo_build` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo_build` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo_build_ripple`
--

DROP TABLE IF EXISTS `memo_build_ripple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo_build_ripple` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo_build_ripple`
--

LOCK TABLES `memo_build_ripple` WRITE;
/*!40000 ALTER TABLE `memo_build_ripple` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo_build_ripple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo_ripple`
--

DROP TABLE IF EXISTS `memo_ripple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo_ripple` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo_ripple`
--

LOCK TABLES `memo_ripple` WRITE;
/*!40000 ALTER TABLE `memo_ripple` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo_ripple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `second_eng_1`
--

DROP TABLE IF EXISTS `second_eng_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `second_eng_1` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `second_eng_1`
--

LOCK TABLES `second_eng_1` WRITE;
/*!40000 ALTER TABLE `second_eng_1` DISABLE KEYS */;
INSERT INTO `second_eng_1` VALUES (1,'208-101',30.3,20.3,'2016-05-12 23:09:51');
/*!40000 ALTER TABLE `second_eng_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `second_eng_2`
--

DROP TABLE IF EXISTS `second_eng_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `second_eng_2` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `second_eng_2`
--

LOCK TABLES `second_eng_2` WRITE;
/*!40000 ALTER TABLE `second_eng_2` DISABLE KEYS */;
INSERT INTO `second_eng_2` VALUES (2,'208-514',30.3,20.3,'2016-05-12 23:10:41');
/*!40000 ALTER TABLE `second_eng_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `second_eng_3`
--

DROP TABLE IF EXISTS `second_eng_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `second_eng_3` (
  `log_num` int(11) NOT NULL AUTO_INCREMENT,
  `b_location` char(10) DEFAULT NULL,
  `b_temper` float DEFAULT NULL,
  `b_moist` float DEFAULT NULL,
  `calcul_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_num`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `second_eng_3`
--

LOCK TABLES `second_eng_3` WRITE;
/*!40000 ALTER TABLE `second_eng_3` DISABLE KEYS */;
INSERT INTO `second_eng_3` VALUES (2,'208-6floor',30.3,20.3,'2016-05-12 23:11:07');
/*!40000 ALTER TABLE `second_eng_3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-13  8:37:49
