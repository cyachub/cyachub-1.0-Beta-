-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

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
-- Current Database: `asterisk`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `asterisk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `asterisk`;

--
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `src` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dst` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dcontext` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastapp` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastdata` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `duration` float unsigned DEFAULT NULL,
  `billsec` float unsigned DEFAULT NULL,
  `disposition` enum('ANSWERED','BUSY','FAILED','NO ANSWER','CONGESTION') COLLATE utf8_bin DEFAULT NULL,
  `channel` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dstchannel` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `amaflags` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `accountcode` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `uniqueid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `userfield` float unsigned DEFAULT NULL,
  `answer` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `src` (`src`),
  KEY `dcontext` (`dcontext`),
  KEY `clid` (`clid`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
INSERT INTO `cdr` VALUES (1,'2017-08-06 05:25:59','0112700600','0112700600','s','incoming','Dial','SIP/s',40,0,'FAILED','SIP/sipprovider-00000000','','3','','1502011559.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'2017-08-06 05:29:24','0112700600','0112700600','s','incoming','Hangup','',40,0,'FAILED','SIP/sipprovider-00000001','','3','','1502011764.1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'2017-08-06 05:31:12','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000002','','3','','1502011872.2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'2017-08-06 22:40:57','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000003','','3','','1502073657.3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'2017-08-06 22:43:10','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000004','','3','','1502073790.4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'2017-08-08 21:37:51','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000005','','3','','1502208471.5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'2017-08-08 22:16:37','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000006','','3','','1502210797.6',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'2017-08-09 14:06:26','0112700600','0112700600','s','incoming','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-00000000','','3','','1502267786.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'2017-08-09 14:06:48','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000001','','3','','1502267808.1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'2017-08-09 14:11:06','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000002','','3','','1502268066.2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'2017-08-09 14:13:52','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000003','','3','','1502268232.3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'2017-08-09 14:30:27','0112700600','0112700600','s','incoming','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-00000004','','3','','1502269227.4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'2017-08-09 14:37:18','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000005','','3','','1502269638.5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'2017-08-09 14:40:03','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000006','','3','','1502269803.6',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'2017-08-09 14:42:24','0112700600','0112700600','s','incoming','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-00000007','','3','','1502269944.7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'2017-08-09 14:47:32','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000008','','3','','1502270252.8',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'2017-08-09 14:48:13','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000009','','3','','1502270293.9',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'2017-08-09 14:49:11','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000000a','','3','','1502270351.10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'2017-08-09 14:50:04','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000000b','','3','','1502270404.11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'2017-08-09 14:53:01','0112700600','0112700600','s','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000000c','','3','','1502270581.12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'2017-08-09 15:00:34','\"0112700600\" <0112700600>','0112700600','0112700700','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000000d','','3','','1502271034.13',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'2017-08-09 16:01:57','\"0112700600\" <0112700600>','0112700600','0112700700','incoming','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-0000000e','','3','','1502274717.14',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'2017-08-09 16:12:18','\"0112700600\" <0112700600>','0112700600','0112700700','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000000f','','3','','1502275338.15',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'2017-08-09 16:16:18','\"0112700600\" <0112700600>','0112700600','0112700700','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000010','','3','','1502275578.16',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'2017-08-09 16:19:36','\"0112700600\" <0112700600>','0112700600','0112700700','incoming','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000011','','3','','1502275776.17',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'2017-08-09 16:31:14','\"0112700600\" <0112700600>','0112700600','0112700700','incoming','Goto','ring_group,10,1',0,0,'NO ANSWER','SIP/sipprovider-00000012','','3','','1502276474.18',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'2017-08-09 16:32:08','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-00000013','','3','','1502276528.19',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'2017-08-09 16:33:37','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000014','','3','','1502276617.20',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'2017-08-09 17:47:22','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000015','','3','','1502281042.21',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'2017-08-09 17:48:40','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000016','','3','','1502281120.22',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'2017-08-09 17:50:32','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-00000017','','3','','1502281232.23',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'2017-08-09 18:08:33','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000018','','3','','1502282313.24',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'2017-08-09 18:13:58','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',2,0,'NO ANSWER','SIP/sipprovider-00000019','','3','','1502282638.25',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'2017-08-09 18:17:53','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000001a','','3','','1502282873.26',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'2017-08-09 18:18:44','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000001b','','3','','1502282924.27',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'2017-08-09 18:20:59','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',1,0,'NO ANSWER','SIP/sipprovider-0000001c','','3','','1502283059.28',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'2017-08-09 18:33:10','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000001d','','3','','1502283790.29',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'2017-08-09 18:33:28','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000001e','','3','','1502283808.30',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'2017-08-09 18:34:25','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000001f','','3','','1502283865.31',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'2017-08-09 18:36:47','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000020','','3','','1502284007.32',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'2017-08-09 18:45:55','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000021','','3','','1502284555.33',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'2017-08-09 18:48:09','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000022','','3','','1502284689.34',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'2017-08-09 18:49:01','\"0112700600\" <0112700600>','0112700600','10','ring_group','Dial','SIP/2000,60,tTr',13,9,'ANSWERED','SIP/sipprovider-00000023','SIP/2000-00000024','3','','1502284741.35',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'2017-08-09 18:49:55','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',4,0,'BUSY','SIP/sipprovider-00000025','SIP/2000-00000026','3','','1502284795.37',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'2017-08-09 18:51:02','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',7,0,'BUSY','SIP/sipprovider-00000027','SIP/2001-00000029','3','','1502284862.39',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'2017-08-09 18:52:41','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-0000002a','','3','','1502284961.42',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'2017-08-09 18:56:01','\"0112700600\" <0112700600>','0112700600','10','ring_group','Dial','SIP/2000&SIP/2001,60,tTr',9,2,'ANSWERED','SIP/sipprovider-0000002b','SIP/2000-0000002c','3','','1502285161.43',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'2017-08-09 19:07:24','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',3,0,'BUSY','SIP/sipprovider-0000002e','SIP/2001-00000030','3','','1502285844.46',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'2017-08-09 19:08:38','\"Sanura\" <2001>','2001','2000','internal','Hangup','',5,0,'BUSY','SIP/2001-00000031','SIP/2000-00000032','3','','1502285918.49',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'2017-08-11 14:38:31','\"Sanura\" <2001>','2001','2000','internal','Hangup','',0,0,'NO ANSWER','SIP/2001-00000033','','3','','1502442511.51',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'2017-08-11 14:42:10','\"Sanura\" <2001>','2001','2000','internal','Hangup','',5,0,'BUSY','SIP/2001-00000034','SIP/2000-00000035','3','','1502442730.52',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'2017-08-11 14:43:28','\"Sanura\" <2001>','2001','2000','internal','Hangup','',3,0,'BUSY','SIP/2001-00000036','SIP/2000-00000037','3','','1502442808.54',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'2017-08-11 14:44:23','\"Sanura\" <2001>','2001','2000','internal','Hangup','',2,0,'BUSY','SIP/2001-00000038','SIP/2000-00000039','3','','1502442863.56',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'2017-08-11 15:11:56','\"Sanura\" <2001>','2001','2000','internal','AGI','VERBOSE',12,0,'BUSY','SIP/2001-0000003a','SIP/2000-0000003b','3','','1502444516.58',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'2017-08-11 15:13:51','\"Sanura\" <2001>','2001','2000','internal','AGI','VERBOSE',7,0,'BUSY','SIP/2001-0000003c','SIP/2000-0000003d','3','','1502444631.60',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'2017-08-11 15:15:58','\"Sanura\" <2001>','2001','2000','internal','Hangup','',1,0,'BUSY','SIP/2001-0000003e','SIP/2000-0000003f','3','','1502444758.62',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'2017-08-11 15:17:24','\"Sanura\" <2001>','2001','2000','internal','AGI','VERBOSE',8,0,'BUSY','SIP/2001-00000040','SIP/2000-00000041','3','','1502444844.64',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'2017-08-11 15:19:53','\"Sanura\" <2001>','2001','2000','internal','AGI','VERBOSE',6,0,'BUSY','SIP/2001-00000042','SIP/2000-00000043','3','','1502444993.66',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'2017-08-11 15:24:51','\"Sanura\" <2001>','2001','2000','internal','Hangup','',6,0,'NO ANSWER','SIP/2001-00000044','SIP/2000-00000045','3','','1502445291.68',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'2017-08-11 15:25:12','\"Sanura\" <2001>','2001','2000','internal','AGI','VERBOSE',8,0,'BUSY','SIP/2001-00000046','SIP/2000-00000047','3','','1502445312.70',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'2017-08-11 15:28:15','\"Sanura\" <2001>','2001','2000','internal','Hangup','',3,0,'ANSWERED','SIP/2001-00000048','SIP/2000-00000049','3','','1502445495.72',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'2017-08-11 15:50:24','\"Sanura\" <2001>','2001','2000','internal','Hangup','',2,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502446824.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'2017-08-11 15:54:07','\"Sanura\" <2001>','2001','2000','internal','Hangup','',1,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502447047.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'2017-08-11 15:54:50','\"Sanura\" <2001>','2001','2000','internal','Hangup','',2,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502447090.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'2017-08-11 15:56:20','\"Sanura\" <2001>','2001','2000','internal','Hangup','',2,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502447180.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'2017-08-11 16:22:10','\"Sanura\" <2001>','2001','2000','internal','Hangup','',2,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502448730.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'2017-08-11 16:23:47','\"Sanura\" <2001>','2001','2000','internal','Hangup','',2,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502448827.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'2017-08-11 16:36:35','\"Sanura\" <2001>','2001','2000','internal','Hangup','',1,0,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502449595.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'2017-08-11 16:45:26','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000',17,14,'ANSWERED','SIP/2001-00000000','SIP/2000-00000001','3','','1502450126.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'2017-08-11 16:46:54','\"Sanura\" <2001>','2001','2000','internal','Hangup','',14,13,'ANSWERED','SIP/2001-00000002','SIP/2000-00000003','3','','1502450214.2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'2017-08-11 16:53:10','\"Amila\" <2000>','2000','*7','internal','VoiceMailMain','s2000',200,200,'ANSWERED','SIP/2000-00000004','','3','','1502450590.4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'2017-08-11 16:57:47','\"Amila\" <2000>','2000','*7','internal','VoiceMailMain','s2000',77,77,'ANSWERED','SIP/2000-00000005','','3','','1502450867.5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'2017-08-11 16:59:17','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000',18,16,'ANSWERED','SIP/2001-00000006','SIP/2000-00000007','3','','1502450957.6',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'2017-08-11 17:00:42','\"Sanura\" <2001>','2001','2000','internal','Hangup','',5,0,'NO ANSWER','SIP/2001-00000008','SIP/2000-00000009','3','','1502451042.8',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'2017-08-11 17:04:35','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000',21,16,'ANSWERED','SIP/2001-0000000a','SIP/2000-0000000b','3','','1502451275.10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'2017-08-11 17:05:38','\"Amila\" <2000>','2000','*7','internal','VoiceMailMain','s2000',74,74,'ANSWERED','SIP/2000-0000000c','','3','','1502451338.12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'2017-08-11 17:06:58','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000',12,10,'ANSWERED','SIP/2001-0000000d','SIP/2000-0000000e','3','','1502451418.13',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'2017-08-11 17:10:37','\"Sanura\" <2001>','2001','2000','internal','Hangup','',1,0,'ANSWERED','SIP/2001-0000000f','SIP/2000-00000010','3','','1502451637.15',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'2017-08-11 17:12:50','\"Sanura\" <2001>','2001','2000','internal','Hangup','',1,0,'ANSWERED','SIP/2001-00000011','SIP/2000-00000012','3','','1502451770.17',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'2017-08-11 17:13:57','\"Sanura\" <2001>','2001','2000','internal','Hangup','',22,19,'ANSWERED','SIP/2001-00000013','SIP/2000-00000014','3','','1502451837.19',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'2017-08-11 17:14:58','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000,u',18,17,'ANSWERED','SIP/2001-00000015','SIP/2000-00000016','3','','1502451898.21',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'2017-08-11 17:15:25','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000,u',22,17,'ANSWERED','SIP/2001-00000017','SIP/2000-00000018','3','','1502451925.23',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'2017-08-11 17:29:32','\"Sanura\" <2001>','2001','0112700600','internal','Hangup','',9,0,'BUSY','SIP/2001-00000019','SIP/sipprovider-0000001a','3','','1502452772.25',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'2017-08-25 13:32:32','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',11,0,'BUSY','SIP/sipprovider-00000000','SIP/2001-00000002','3','','1503648152.0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'2017-08-25 13:33:20','\"Amila\" <2000>','2000','10','internal','Hangup','',0,0,'NO ANSWER','SIP/2000-00000003','','3','','1503648200.3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'2017-08-25 13:34:44','\"Amila\" <2000>','2000','10','internal','Hangup','',1,0,'NO ANSWER','SIP/2000-00000004','','3','','1503648284.4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'2017-08-25 13:36:42','\"Amila\" <2000>','2000','10','internal','Hangup','',0,0,'NO ANSWER','SIP/2000-00000005','','3','','1503648402.5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'2017-08-25 13:42:03','\"Amila\" <2000>','2000','10','internal','Hangup','',0,0,'NO ANSWER','SIP/2000-00000006','','3','','1503648723.6',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'2017-08-25 13:42:54','\"Amila\" <2000>','2000','10','ring_group','Hangup','',9,0,'BUSY','SIP/2000-00000007','SIP/2001-00000009','3','','1503648774.7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'2017-08-25 15:36:01','\"Amila\" <2000>','2000','2003','internal','Hangup','',0,0,'NO ANSWER','SIP/2000-0000000a','','3','','1503655561.10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'2017-08-25 15:36:14','\"Amila\" <2000>','2000','2002','internal','Hangup','',0,0,'NO ANSWER','SIP/2000-0000000b','','3','','1503655574.11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'2017-08-25 15:37:01','\"Sanura\" <2001>','2001','2000','internal','VoiceMail','2000,u',13,11,'ANSWERED','SIP/2001-0000000c','SIP/2000-0000000d','3','','1503655621.12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'2017-08-25 15:37:20','\"Sanura\" <2001>','2001','2002','internal','Hangup','',0,0,'NO ANSWER','SIP/2001-0000000e','','3','','1503655640.14',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'2017-08-25 15:40:10','\"Sanura\" <2001>','2001','2002','internal','VoiceMail','2002,u',12,12,'ANSWERED','SIP/2001-0000000f','','3','','1503655810.15',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'2017-08-25 16:47:41','\"Sanura\" <2001>','2001','111','internal','Goto','time_condition,1,1',0,0,'NO ANSWER','SIP/2001-00000010','','3','','1503659861.16',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'2017-08-25 16:50:33','\"Sanura\" <2001>','2001','111','internal','Goto','time_condition,1,1',0,0,'NO ANSWER','SIP/2001-00000011','','3','','1503660033.17',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'2017-08-25 16:53:48','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',4,0,'BUSY','SIP/2001-00000012','SIP/2001-00000014','3','','1503660228.18',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'2017-08-25 16:54:17','\"Sanura\" <2001>','2001','111','internal','Goto','time_condition,1,1',0,0,'NO ANSWER','SIP/2001-00000015','','3','','1503660257.21',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'2017-08-25 16:54:30','\"Sanura\" <2001>','2001','01','internal','Hangup','',0,0,'NO ANSWER','SIP/2001-00000016','','3','','1503660270.22',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'2017-08-25 17:02:01','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,yes',13,0,'NO ANSWER','SIP/2001-00000017','','3','','1503660721.23',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'2017-08-25 17:05:13','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,yes',2,0,'NO ANSWER','SIP/2001-00000018','','3','','1503660913.24',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'2017-08-25 17:09:34','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,1',3,0,'NO ANSWER','SIP/2001-00000019','','3','','1503661174.25',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'2017-08-25 17:12:54','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,1',2,0,'NO ANSWER','SIP/2001-0000001a','','3','','1503661374.26',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'2017-08-25 17:17:25','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,1',1,0,'NO ANSWER','SIP/2001-0000001b','','3','','1503661645.27',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'2017-08-25 17:23:42','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',8,0,'BUSY','SIP/2001-0000001c','SIP/2001-0000001e','3','','1503662022.28',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'2017-08-25 17:27:01','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,1',4,0,'NO ANSWER','SIP/2001-0000001f','','3','','1503662221.31',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'2017-08-25 17:27:18','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',3,0,'BUSY','SIP/2001-00000020','SIP/2001-00000022','3','','1503662238.32',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'2017-08-25 17:30:11','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',5,0,'BUSY','SIP/2001-00000023','SIP/2001-00000025','3','','1503662411.35',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'2017-08-25 17:31:50','\"Sanura\" <2001>','2001','1','time_condition','AGI','time_condition.php,no',4,0,'NO ANSWER','SIP/2001-00000026','','3','','1503662510.38',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'2017-08-25 17:33:33','\"Sanura\" <2001>','2001','2002','internal','VoiceMail','2002,u',10,10,'ANSWERED','SIP/2001-00000027','','3','','1503662613.39',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'2017-08-25 19:03:48','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-00000028','','3','','1503668028.40',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'2017-08-25 19:04:32','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-00000029','','3','','1503668072.41',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'2017-08-25 19:06:12','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',2,0,'BUSY','SIP/2001-0000002a','SIP/2001-0000002c','3','','1503668172.42',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'2017-08-25 19:22:59','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',1,0,'BUSY','SIP/2001-0000002d','SIP/2001-0000002f','3','','1503669179.45',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'2017-08-25 19:23:37','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-00000030','','3','','1503669217.48',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'2017-08-25 19:24:56','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-00000031','','3','','1503669296.49',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'2017-08-25 19:40:31','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',2,0,'BUSY','SIP/2001-00000032','SIP/2001-00000034','3','','1503670231.50',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'2017-08-25 19:43:00','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',2,0,'BUSY','SIP/2001-00000035','SIP/2001-00000037','3','','1503670380.53',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'2017-08-25 20:26:46','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',3,0,'BUSY','SIP/2001-00000038','SIP/2001-0000003a','3','','1503673006.56',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'2017-08-25 20:36:29','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-0000003b','','3','','1503673589.59',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'2017-08-25 21:05:48','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-0000003c','','3','','1503675348.60',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'2017-08-25 21:25:32','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-0000003d','','3','','1503676532.61',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'2017-08-25 21:45:45','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-0000003e','','3','','1503677745.62',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'2017-08-25 21:47:11','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-0000003f','','3','','1503677831.63',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'2017-08-25 23:07:13','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/2001-00000040','','3','','1503682633.64',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'2017-08-25 23:20:02','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',2,0,'BUSY','SIP/2001-00000041','SIP/2001-00000043','3','','1503683402.65',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'2017-08-25 23:45:18','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',7,0,'BUSY','SIP/2001-00000044','SIP/2001-00000048','3','','1503684918.68',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'2017-08-25 23:45:40','\"Sanura\" <2001>','2001','10','ring_group','Hangup','',5,0,'BUSY','SIP/2001-00000049','SIP/2001-0000004d','3','','1503684940.73',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'2017-08-25 23:58:15','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',4,0,'BUSY','SIP/sipprovider-0000004e','SIP/2001-00000050','3','','1503685695.78',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'2017-08-26 00:00:55','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000051','','3','','1503685855.81',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'2017-08-26 00:01:02','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',0,0,'NO ANSWER','SIP/sipprovider-00000052','','3','','1503685862.82',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'2017-08-26 00:04:00','\"0112700600\" <0112700600>','0112700600','10','ring_group','Hangup','',3,0,'BUSY','SIP/sipprovider-00000053','SIP/2001-00000055','3','','1503686040.83',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'2017-08-26 00:24:14','\"Amila\" <2000>','2000','2002','internal','VoiceMail','2002,u',3,3,'ANSWERED','SIP/2000-00000056','','3','','1503687254.86',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'2017-08-26 00:38:13','\"Amila\" <2000>','2000','2002','internal','VoiceMail','2002,u',2,2,'ANSWERED','SIP/2000-00000057','','3','','1503688093.87',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'2017-08-26 00:58:54','\"Amila\" <2000>','2000','2002','internal','VoiceMail','2002,u',4,4,'ANSWERED','SIP/2000-00000058','','3','','1503689334.88',0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ring_group`
--

DROP TABLE IF EXISTS `ring_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ring_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `list` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dialing_option` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'simultaneously',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ring_group`
--

LOCK TABLES `ring_group` WRITE;
/*!40000 ALTER TABLE `ring_group` DISABLE KEYS */;
INSERT INTO `ring_group` VALUES (10,'sales_group','2000,2001','simultaneously');
/*!40000 ALTER TABLE `ring_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sip_trunk`
--

DROP TABLE IF EXISTS `sip_trunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sip_trunk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `did` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dst` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dcontext` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sip_trunk`
--

LOCK TABLES `sip_trunk` WRITE;
/*!40000 ALTER TABLE `sip_trunk` DISABLE KEYS */;
INSERT INTO `sip_trunk` VALUES (1,'0112700700','10','ring_group');
/*!40000 ALTER TABLE `sip_trunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_condition`
--

DROP TABLE IF EXISTS `time_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time_group_id` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `context_if_true` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `dst_if_true` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `context_if_false` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `dst_if_false` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_condition`
--

LOCK TABLES `time_condition` WRITE;
/*!40000 ALTER TABLE `time_condition` DISABLE KEYS */;
INSERT INTO `time_condition` VALUES (1,'business time','1','ring_group','10','internal','2002');
/*!40000 ALTER TABLE `time_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_group`
--

DROP TABLE IF EXISTS `time_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time_range` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `days_of_week` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `days_of_month` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  `months` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_group`
--

LOCK TABLES `time_group` WRITE;
/*!40000 ALTER TABLE `time_group` DISABLE KEYS */;
INSERT INTO `time_group` VALUES (1,'working hrs','08:30-17:30','mon-fri','*','*');
/*!40000 ALTER TABLE `time_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_action`
--

DROP TABLE IF EXISTS `user_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(80) COLLATE utf8_bin NOT NULL,
  `status` varchar(80) COLLATE utf8_bin NOT NULL,
  `action` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dst` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_action`
--

LOCK TABLES `user_action` WRITE;
/*!40000 ALTER TABLE `user_action` DISABLE KEYS */;
INSERT INTO `user_action` VALUES (1,'2000','default','dial','2000'),(2,'2000','busy','VoiceMail','2000,u'),(3,'2000','noanswer','VoiceMail','2000,u'),(4,'2000','unavailable','VoiceMail','2000,u'),(5,'2000','inactive','forward','internal,0112700600,1'),(6,'10','default','goto','ring_group,10,1'),(7,'2002','default','VoiceMail','2002,u'),(8,'111','default','goto','time_condition,1,1');
/*!40000 ALTER TABLE `user_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicemail_users`
--

DROP TABLE IF EXISTS `voicemail_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voicemail_users` (
  `uniqueid` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(11) COLLATE utf8_bin NOT NULL,
  `context` varchar(50) COLLATE utf8_bin NOT NULL,
  `mailbox` varchar(11) COLLATE utf8_bin NOT NULL,
  `password` varchar(5) COLLATE utf8_bin NOT NULL,
  `fullname` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pager` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tz` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'central',
  `attach` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'yes',
  `saycid` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'yes',
  `dialout` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `callback` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `review` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `operator` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `envelope` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `sayduration` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `saydurationm` tinyint(4) NOT NULL DEFAULT '1',
  `sendvoicemail` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `delete` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `nextaftercmd` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'yes',
  `forcename` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `forcegreetings` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `hidefromdir` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT 'yes',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uniqueid`),
  KEY `mailbox_context` (`mailbox`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicemail_users`
--

LOCK TABLES `voicemail_users` WRITE;
/*!40000 ALTER TABLE `voicemail_users` DISABLE KEYS */;
INSERT INTO `voicemail_users` VALUES (1,'2000','default','2000','1234','User-A','UserA@myemail.com','','central','yes','yes','','','no','no','no','no',1,'no','no','yes','no','no','yes','2017-08-11 10:08:07'),(2,'2001','default','2001','1234','User-B','UserB@myemail.com','','central','yes','yes','','','no','no','no','no',1,'no','no','yes','no','no','yes','2017-08-11 10:08:07'),(3,'2002','default','2002','1234','User-C','Userc@myemail.com','','central','yes','yes','','','no','no','no','no',1,'no','no','yes','no','no','yes','2017-08-11 04:38:07');
/*!40000 ALTER TABLE `voicemail_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicemessages`
--

DROP TABLE IF EXISTS `voicemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voicemessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `dir` varchar(80) COLLATE utf8_bin DEFAULT '',
  `context` varchar(80) COLLATE utf8_bin DEFAULT '',
  `macrocontext` varchar(80) COLLATE utf8_bin DEFAULT '',
  `callerid` varchar(40) COLLATE utf8_bin DEFAULT '',
  `origtime` varchar(40) COLLATE utf8_bin DEFAULT '',
  `duration` varchar(20) COLLATE utf8_bin DEFAULT '',
  `mailboxuser` varchar(80) COLLATE utf8_bin DEFAULT '',
  `mailboxcontext` varchar(80) COLLATE utf8_bin DEFAULT '',
  `recording` longblob,
  `flag` varchar(128) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dir` (`dir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicemessages`
--

LOCK TABLES `voicemessages` WRITE;
/*!40000 ALTER TABLE `voicemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `voicemessages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-02  7:17:30
