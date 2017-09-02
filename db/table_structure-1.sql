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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-02  7:17:02
