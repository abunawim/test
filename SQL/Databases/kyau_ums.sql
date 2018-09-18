-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 192.168.0.106    Database: kyau_ums
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `ac_academic_charge`
--

DROP TABLE IF EXISTS `ac_academic_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_academic_charge` (
  `CHARGE_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `CHARGE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `IS_APP_FEE` tinyint(1) DEFAULT '0',
  `IS_TUTOIN_FEE` tinyint(1) DEFAULT '0',
  `REDUNDENT` tinyint(1) DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CHARGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac_academic_charge`
--

LOCK TABLES `ac_academic_charge` WRITE;
/*!40000 ALTER TABLE `ac_academic_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ac_academic_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_batch`
--

DROP TABLE IF EXISTS `aca_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_batch` (
  `BATCH_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `BATCH_TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `BATCH_DESC` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_batch`
--

LOCK TABLES `aca_batch` WRITE;
/*!40000 ALTER TABLE `aca_batch` DISABLE KEYS */;
INSERT INTO `aca_batch` VALUES (2,'Batch 1','',1,1,'2017-05-30 04:17:04',NULL,NULL),(4,'Batch 2','',1,1,'2017-06-08 09:26:54',NULL,NULL),(8,'Batch 3','',1,1,'2017-06-11 03:11:19',NULL,NULL),(9,'Batch 4','',1,1,'2017-08-21 03:42:57',NULL,NULL),(10,'Batch 5','',1,1,'2017-08-21 03:43:01',NULL,NULL),(11,'Batch 6','',1,1,'2017-08-21 03:43:04',NULL,NULL),(12,'Batch 7','',1,1,'2017-08-21 03:43:08',NULL,NULL),(13,'Batch 8','',1,1,'2017-08-21 03:43:11',NULL,NULL),(14,'Batch 9','',1,1,'2017-08-21 03:43:16',NULL,NULL),(15,'Batch 10','',1,1,'2017-08-21 03:43:21',NULL,NULL),(16,'Batch 11','',1,1,'2017-08-21 03:43:25',NULL,NULL),(17,'Batch 12','',1,1,'2017-08-21 03:43:29',NULL,NULL),(18,'Batch 13','',1,1,'2017-08-21 03:43:33',NULL,NULL);
/*!40000 ALTER TABLE `aca_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_batch_prog`
--

DROP TABLE IF EXISTS `aca_batch_prog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_batch_prog` (
  `BATCH_PROG_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `BATCH_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `YSESSION_ID` int(11) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BATCH_PROG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_batch_prog`
--

LOCK TABLES `aca_batch_prog` WRITE;
/*!40000 ALTER TABLE `aca_batch_prog` DISABLE KEYS */;
INSERT INTO `aca_batch_prog` VALUES (1,'2',1,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(2,'2',2,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(3,'2',3,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(4,'2',4,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(5,'2',5,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(6,'2',6,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(7,'2',7,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(8,'2',8,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(9,'2',9,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(10,'2',10,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(11,'2',11,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(12,'2',12,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(13,'2',13,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(14,'2',14,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(15,'2',15,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(16,'2',16,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(17,'2',17,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(18,'2',18,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(19,'2',19,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(20,'2',20,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(21,'2',21,1,1,15,'2017-06-21 08:08:35',NULL,NULL),(22,'2',22,1,1,15,'2017-06-21 08:08:36',NULL,NULL),(23,'2',23,1,1,15,'2017-06-21 08:08:36',NULL,NULL),(24,'4',2,2,1,1,'2017-08-26 06:01:28',NULL,NULL),(25,'4',1,2,1,1,'2017-08-28 08:42:03',NULL,NULL),(26,'4',3,5,1,1,'2017-12-27 19:21:15',NULL,NULL);
/*!40000 ALTER TABLE `aca_batch_prog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_course`
--

DROP TABLE IF EXISTS `aca_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_course` (
  `COURSE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `DEPT_ID` tinyint(3) DEFAULT NULL,
  `COURSE_CODE` varchar(10) COLLATE utf8_croatian_ci NOT NULL,
  `COURSE_TITLE` varchar(200) COLLATE utf8_croatian_ci NOT NULL,
  `CREDIT` double NOT NULL,
  `COURSE_DESC` text CHARACTER SET latin1,
  `C_CAT_ID` int(11) NOT NULL COMMENT 'Data From Lookup',
  `BOOKS` text CHARACTER SET latin1,
  `TEACHING_METHOD` text CHARACTER SET latin1,
  `MISSION` text CHARACTER SET latin1,
  `VISION` text CHARACTER SET latin1,
  `OBJECTIVE` text CHARACTER SET latin1,
  `GLOBAL_FOR_INSTITUTE` tinyint(1) NOT NULL DEFAULT '0',
  `GLOBAL_FOR_FACULTY` tinyint(1) NOT NULL DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_course`
--

LOCK TABLES `aca_course` WRITE;
/*!40000 ALTER TABLE `aca_course` DISABLE KEYS */;
INSERT INTO `aca_course` VALUES (1,1,'101','subject of TE',3,'',1,'','','','','',0,0,1,25,'2018-05-26 04:17:19',1,'2018-07-04 06:48:09'),(2,2,'102','Test 2',3,'',1,'','','','','',0,0,1,27,'2018-05-26 04:18:20',NULL,NULL),(3,2,'cs1','cse1',3,'',0,'','','','','',0,0,1,1,'2018-07-24 13:04:06',NULL,NULL),(4,2,'cs3','cse3',3,'',0,'','','','','',0,0,1,1,'2018-07-24 13:04:44',NULL,NULL);
/*!40000 ALTER TABLE `aca_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_course_category`
--

DROP TABLE IF EXISTS `aca_course_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_course_category` (
  `C_CAT_ID` tinyint(3) NOT NULL AUTO_INCREMENT,
  `CAT_NAME` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `CAT_DESC` varchar(200) COLLATE utf8_croatian_ci NOT NULL,
  `CAT_COLOR` varchar(20) COLLATE utf8_croatian_ci NOT NULL,
  `SEQUENCE` tinyint(2) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`C_CAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_course_category`
--

LOCK TABLES `aca_course_category` WRITE;
/*!40000 ALTER TABLE `aca_course_category` DISABLE KEYS */;
INSERT INTO `aca_course_category` VALUES (1,'Core','Core','#61FA6E',1,1,1,'2015-10-11 13:00:00',NULL,NULL),(2,'GED','GED','#f3f3f4',2,1,1,'2015-10-12 01:47:55',NULL,NULL),(3,'Major','Major','#fbe4e3',3,1,1,'2015-10-12 03:11:23',NULL,NULL),(4,'Foundation','Foundation','#3597ff',4,1,1,'2015-10-12 03:11:37',NULL,NULL),(5,'IC','IC','#ff0000',5,1,1,'2015-12-20 14:42:35',NULL,NULL),(6,'BFC','BFC','#0000ff',6,1,1,'2015-12-20 14:43:52',NULL,NULL),(7,'BCC','BCC','#ff0000',7,1,1,'2015-12-23 09:07:07',NULL,NULL),(8,'MISCC','MISCC','#ff0000',8,1,1,'2015-12-23 09:07:24',NULL,NULL),(9,'CBC','CBC','#ff0000',9,1,1,'2015-12-23 09:08:11',NULL,NULL),(10,'EC','EC','#004080',10,1,1,'2015-12-23 09:08:36',NULL,NULL),(11,'Dissertation','Dissertation','#ff0000',11,1,1,'2015-12-23 10:03:20',NULL,NULL);
/*!40000 ALTER TABLE `aca_course_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_course_offer`
--

DROP TABLE IF EXISTS `aca_course_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_course_offer` (
  `OFFERED_COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OFFER_TYPE` char(1) CHARACTER SET latin1 DEFAULT NULL COMMENT 'O=OPEN, F=FIXED',
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `DURATION` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `MIN_CR_LIMIT` tinyint(3) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFFERED_COURSE_ID`),
  KEY `FK_CO_COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_course_offer`
--

LOCK TABLES `aca_course_offer` WRITE;
/*!40000 ALTER TABLE `aca_course_offer` DISABLE KEYS */;
INSERT INTO `aca_course_offer` VALUES (1,'F',5,1,1,1,'60',3,1,1,'2018-07-04 06:28:44',NULL,NULL),(2,'F',5,2,2,2,'',0,1,1,'2018-07-08 05:24:54',NULL,NULL),(3,'F',5,2,2,3,'30',3,1,1,'2018-07-24 13:07:59',NULL,NULL),(4,'F',5,2,24,4,'',0,1,1,'2018-07-24 13:09:16',NULL,NULL);
/*!40000 ALTER TABLE `aca_course_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_crs_prerequisite`
--

DROP TABLE IF EXISTS `aca_crs_prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_crs_prerequisite` (
  `CRS_PREREQUISITE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL,
  `PRE_COURSE_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `OFFER_TYPE` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CRS_PREREQUISITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_crs_prerequisite`
--

LOCK TABLES `aca_crs_prerequisite` WRITE;
/*!40000 ALTER TABLE `aca_crs_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `aca_crs_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_email_template`
--

DROP TABLE IF EXISTS `aca_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_email_template` (
  `EMAIL_TEMPLATE_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `EMAIL_SUBJECT` varchar(200) DEFAULT NULL,
  `EMAIL_BODY` text,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TEMPLATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_email_template`
--

LOCK TABLES `aca_email_template` WRITE;
/*!40000 ALTER TABLE `aca_email_template` DISABLE KEYS */;
INSERT INTO `aca_email_template` VALUES (3,'Notification of Employment Termination ','<p><p>Dear All,</p>\r\n<p>This is to bring your kind notice that, effective today; Mr.\r\nGaji Md. Asif-u-Doullah, Programmer - PHP is no longer with ATI Limited. All\r\nare instructed not to make any correspondence or share any information with Mr.\r\nGaji Asif related the matters of ATI Limited. Due to insubordination,\r\nnon-compliance of office rules & regulations and continuous\r\nunderperformance, this termination order has been executed.  </p>\r\n<p>NB: All are instructed not to disclose or share this mail to\r\nanyone or outside of ATI Limited.  </p>\r\n<p>Thank\r\nyou and  Regards</p>\r\n\r\n</p>',1,1,'2018-04-08 07:58:41',1,NULL),(5,'Holiday Notice','<p><p>Dear All,&nbsp;</p>\r\n\r\n<p>Please\r\nbe informed that ATI Business Office shall be closed on Monday, March 26, 2018.\r\nOn this very special occasion, we commemorate the country\'s&nbsp;<a href=\"https://en.wikipedia.org/wiki/Proclamation_of_Bangladeshi_Independence\"><span>declaration of independence</span></a>&nbsp;from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pakistan\">Pakistan</a>&nbsp;in\r\nthe late hours of 25 March 1971.</p>\r\n\r\n<p>Office\r\nshall remain open from Tuesday, March 27, 2018 onwards at regular business\r\nhour.We hope you will enjoy the holiday with your family and friends.</p>\r\n<p>With Thanks</p>\r\n<p>Dewan\r\nHabiba</p>\r\n\r\n<p>Coordinator,\r\nHR &amp; BSE</p>\r\n\r\n<p>Tel- +88 02\r\n58955573; +88 02 48953302</p>\r\n\r\n<p>E-mail- <a href=\"mailto:habiba@atilimited.net\">habiba@atilimited.net</a></p>\r\n\r\n<p><b>ATI </b><b>Limited</b></p>\r\n\r\n<br></p>',1,1,'2018-04-08 08:37:23',NULL,NULL);
/*!40000 ALTER TABLE `aca_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_section`
--

DROP TABLE IF EXISTS `aca_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_section` (
  `SECTION_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `DESC` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SECTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_section`
--

LOCK TABLES `aca_section` WRITE;
/*!40000 ALTER TABLE `aca_section` DISABLE KEYS */;
INSERT INTO `aca_section` VALUES (1,'A','desc',1,NULL,'2017-06-11 04:55:51',NULL,NULL),(2,'None','desc',1,NULL,'2017-06-11 04:56:18',NULL,NULL);
/*!40000 ALTER TABLE `aca_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aca_semester_course`
--

DROP TABLE IF EXISTS `aca_semester_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_semester_course` (
  `SEM_COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `SEMESTER_ID` int(11) DEFAULT NULL,
  `COURSE_ID` int(10) NOT NULL,
  `OFFERED_COURSE_ID` int(11) DEFAULT NULL,
  `SEQUENCE` int(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SEM_COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_semester_course`
--

LOCK TABLES `aca_semester_course` WRITE;
/*!40000 ALTER TABLE `aca_semester_course` DISABLE KEYS */;
INSERT INTO `aca_semester_course` VALUES (1,5,2,2,6,1,2,2,1,1,1,'2018-07-24 13:10:12',NULL,NULL),(2,5,2,2,6,2,3,3,1,1,1,'2018-07-24 13:10:18',NULL,NULL),(3,5,2,24,6,1,4,4,1,1,1,'2018-07-24 13:10:43',NULL,NULL);
/*!40000 ALTER TABLE `aca_semester_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_prgdesc`
--

DROP TABLE IF EXISTS `adm_prgdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_prgdesc` (
  `APRGDESC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADMPRG_TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `ADMPRG_DESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `YSESSION_ID` smallint(5) NOT NULL,
  `REG_PRG_SDT` datetime NOT NULL,
  `REG_PRG_EDT` datetime NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `DATE_TIME_STATUS` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`APRGDESC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_prgdesc`
--

LOCK TABLES `adm_prgdesc` WRITE;
/*!40000 ALTER TABLE `adm_prgdesc` DISABLE KEYS */;
INSERT INTO `adm_prgdesc` VALUES (1,'Fall - 2016','',1,'2017-06-21 00:00:00','2018-02-01 00:00:00',1,15,'2017-06-21 05:58:11',NULL,NULL,'NOTSAME'),(2,'Admission Session : Summer-2017','<p>Admission Session : Summer-2017<br></p>',6,'2017-07-11 00:00:00','2018-06-30 00:00:00',1,1,'2017-07-11 11:03:07',NULL,NULL,'SAME'),(3,'','',6,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,1,'2018-04-21 03:39:43',NULL,NULL,NULL),(4,'','',6,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,1,'2018-04-21 03:39:53',NULL,NULL,NULL);
/*!40000 ALTER TABLE `adm_prgdesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_program`
--

DROP TABLE IF EXISTS `adm_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_program` (
  `ADM_PRG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APRGDESC_ID` int(11) NOT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `PRG_EXM_SDT` datetime DEFAULT NULL,
  `PRG_EXM_STM` time DEFAULT NULL,
  `PRG_EXM_ETM` time DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ADM_PRG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_program`
--

LOCK TABLES `adm_program` WRITE;
/*!40000 ALTER TABLE `adm_program` DISABLE KEYS */;
INSERT INTO `adm_program` VALUES (1,1,3,1,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(2,1,3,2,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(3,1,3,3,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(4,1,3,4,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(5,1,4,5,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(6,1,3,6,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(7,1,3,7,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(8,1,3,8,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(9,1,3,9,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(10,1,4,10,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(11,1,4,11,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(12,1,3,12,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(14,1,4,14,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(15,1,4,15,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:11',NULL,NULL),(16,1,4,16,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(17,1,4,17,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(18,1,4,18,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(19,1,4,19,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(20,1,3,20,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(21,1,3,21,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(22,1,3,22,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(23,1,3,23,'2017-06-30 00:00:00','04:00:00','05:00:00',1,NULL,'2017-06-21 05:58:12',NULL,NULL),(24,2,3,1,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(25,2,3,2,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(26,2,3,3,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(27,2,3,4,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(28,2,4,5,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(29,2,3,6,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(30,2,3,7,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(31,2,3,8,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(32,2,3,9,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(33,2,4,10,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(34,2,4,11,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(35,2,3,12,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(36,2,4,13,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(37,2,4,14,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(38,2,4,15,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(39,2,4,16,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(40,2,4,17,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(41,2,4,18,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(42,2,4,19,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(43,2,3,20,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(44,2,3,21,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(45,2,3,22,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(46,2,3,23,'2017-07-11 00:00:00','01:00:00','02:00:00',1,NULL,'2017-07-11 11:03:07',NULL,NULL),(47,3,3,1,'1970-01-01 00:00:00','00:00:00','00:00:00',0,NULL,'2018-04-21 03:39:43',NULL,NULL);
/*!40000 ALTER TABLE `adm_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_ysession`
--

DROP TABLE IF EXISTS `adm_ysession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_ysession` (
  `YSESSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESSION_ID` tinyint(1) NOT NULL,
  `DINYEAR` varchar(10) NOT NULL,
  `IS_CURRENT` tinyint(1) NOT NULL DEFAULT '1',
  `TRIMESTER` tinyint(1) DEFAULT '1',
  `SEMESTER` tinyint(1) DEFAULT '1',
  `UD_SLNO` int(3) DEFAULT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`YSESSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_ysession`
--

LOCK TABLES `adm_ysession` WRITE;
/*!40000 ALTER TABLE `adm_ysession` DISABLE KEYS */;
INSERT INTO `adm_ysession` VALUES (1,1,'2016',0,1,0,10,1,'2017-05-14 06:02:53',1,'2017-07-11 17:01:01',1),(2,2,'2016',0,1,0,11,1,'2017-05-14 06:02:57',1,'2017-06-15 11:14:42',1),(3,3,'2016',0,1,0,12,1,'2017-05-14 06:03:02',1,'2017-06-15 11:14:51',1),(4,1,'2017',0,1,0,13,1,'2017-05-14 06:03:10',1,'2017-06-15 11:15:07',1),(5,2,'2017',0,1,0,14,1,'2017-05-14 06:03:13',1,'2017-06-15 11:15:16',1),(6,3,'2017',1,1,0,15,1,'2017-05-14 06:03:17',1,'2017-07-12 17:28:54',1),(7,1,'2013',0,1,0,1,1,'2017-06-14 04:40:55',1,'2017-07-12 16:54:48',1),(8,2,'2013',0,1,0,2,1,'2017-06-14 04:41:01',1,'2017-06-15 11:13:17',1),(9,3,'2013',0,1,0,3,1,'2017-06-14 04:41:08',1,'2017-06-15 11:13:27',1),(10,1,'2014',0,0,1,4,1,'2017-06-14 04:42:42',1,'2017-06-15 11:13:38',1),(11,2,'2014',0,0,1,5,1,'2017-06-14 04:42:48',1,'2017-06-15 11:13:49',1),(12,3,'2014',0,0,1,6,1,'2017-06-14 04:42:51',1,'2017-06-15 11:13:57',1),(13,1,'2015',0,0,1,7,1,'2017-06-14 04:42:57',1,'2017-06-15 11:14:06',1),(14,2,'2015',0,0,1,8,1,'2017-06-14 04:43:00',1,'2017-06-15 11:14:13',1),(15,3,'2015',0,0,1,9,1,'2017-06-14 04:43:04',1,'2017-06-15 11:14:21',1);
/*!40000 ALTER TABLE `adm_ysession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_policy`
--

DROP TABLE IF EXISTS `app_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_policy` (
  `POLICY_ID` int(10) NOT NULL AUTO_INCREMENT,
  `POLICY_NAME` varchar(100) NOT NULL,
  `POLICY_VALUE` varchar(100) DEFAULT NULL,
  `POLICY_FLAG` tinyint(1) NOT NULL,
  `POLICY_DESC` text NOT NULL,
  `VALUE_FLAG` tinyint(1) DEFAULT '0',
  `CHANGEAVLE` tinyint(1) DEFAULT '0',
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`POLICY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_policy`
--

LOCK TABLES `app_policy` WRITE;
/*!40000 ALTER TABLE `app_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_acadimicinfo`
--

DROP TABLE IF EXISTS `applicant_acadimicinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_acadimicinfo` (
  `APP_AI_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `APPLICANT_ID` bigint(14) DEFAULT NULL,
  `EXAM_DEGREE_ID` bigint(4) DEFAULT NULL,
  `MAJOR_GROUP_ID` bigint(4) DEFAULT NULL,
  `INSTITUTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BOARD` smallint(4) DEFAULT NULL,
  `RESULT_GRADE` double DEFAULT NULL,
  `RESULT_GRADE_WA` double DEFAULT NULL,
  `CGPA_MARKPCT` double DEFAULT NULL,
  `SCALE_MARKS` float(6,2) DEFAULT NULL,
  `PASSING_YEAR` smallint(4) DEFAULT NULL,
  `DURATION` smallint(4) DEFAULT NULL,
  `ACHIEVEMENT` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`APP_AI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_acadimicinfo`
--

LOCK TABLES `applicant_acadimicinfo` WRITE;
/*!40000 ALTER TABLE `applicant_acadimicinfo` DISABLE KEYS */;
INSERT INTO `applicant_acadimicinfo` VALUES (1,1,27,32,'Natore Govt Boys High School',22,4.63,4.63,NULL,NULL,2004,NULL,NULL,1,NULL,'2017-12-29 13:38:27',NULL,NULL),(2,1,28,32,'Natore Govt Boys High School',22,4.5,4.5,NULL,NULL,2006,NULL,NULL,1,NULL,'2017-12-29 13:38:27',NULL,NULL),(3,2,27,33,'d',21,4,1,NULL,NULL,2004,NULL,NULL,1,NULL,'2018-01-25 05:53:10',NULL,NULL),(4,2,28,33,'4',21,4,4,NULL,NULL,2008,NULL,NULL,1,NULL,'2018-01-25 05:53:10',NULL,NULL),(5,2,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-01-25 05:53:10',NULL,NULL),(6,3,27,32,'Muradpur High school',21,5,1,NULL,NULL,2004,NULL,NULL,1,NULL,'2018-01-25 08:18:20',NULL,NULL),(7,3,28,32,'Govt. Shaeed Soworadi college',21,5,4,NULL,NULL,2008,NULL,NULL,1,NULL,'2018-01-25 08:18:21',NULL,NULL),(8,3,177,32,'Dhaka University',21,4,2,NULL,NULL,2012,NULL,NULL,1,NULL,'2018-01-25 08:18:21',NULL,NULL),(9,4,27,32,'Dhaka',21,3,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2018-01-30 06:28:59',NULL,NULL),(10,4,28,32,'Dhaka',22,4,3,NULL,NULL,2016,NULL,NULL,1,NULL,'2018-01-30 06:28:59',NULL,NULL),(11,4,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-01-30 06:28:59',NULL,NULL),(12,5,27,32,'4',21,4,4,NULL,NULL,2014,NULL,NULL,1,NULL,'2018-03-24 09:40:20',NULL,NULL),(13,5,28,32,'5',21,5,5,NULL,NULL,2015,NULL,NULL,1,NULL,'2018-03-24 09:40:20',NULL,NULL),(14,5,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-03-24 09:40:20',NULL,NULL),(15,6,27,32,'56',21,56,56,NULL,NULL,56,NULL,NULL,1,NULL,'2018-03-25 09:16:01',NULL,NULL),(16,6,27,33,'56',21,56,566,NULL,NULL,56,NULL,NULL,1,NULL,'2018-03-25 09:16:01',NULL,NULL),(17,7,27,32,'Muradpur High school',21,5,5,NULL,NULL,2005,NULL,NULL,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(18,7,28,32,'Govt, Kabi Nazrul college',21,5,5,NULL,NULL,2009,NULL,NULL,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(19,7,177,32,'Dhaka University',21,5,4,NULL,NULL,2014,NULL,NULL,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(20,8,27,32,'Muradpur High School',21,5,4,NULL,NULL,2016,NULL,NULL,1,NULL,'2018-04-12 09:15:15',NULL,NULL),(21,8,28,32,'Govt. Kabi Nazrul College',21,5,4,NULL,NULL,2018,NULL,NULL,1,NULL,'2018-04-12 09:15:15',NULL,NULL),(22,9,27,33,'d',21,3,3,NULL,NULL,2004,NULL,NULL,1,NULL,'2018-05-12 04:32:36',NULL,NULL),(23,9,28,33,'D',22,4,4,NULL,NULL,2006,NULL,NULL,1,NULL,'2018-05-12 04:32:36',NULL,NULL),(24,9,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-12 04:32:36',NULL,NULL),(25,10,27,32,'4',21,4,4,NULL,NULL,4444,NULL,NULL,1,NULL,'2018-05-12 04:35:06',NULL,NULL),(26,10,28,32,'4',23,4,4,NULL,NULL,4444,NULL,NULL,1,NULL,'2018-05-12 04:35:06',NULL,NULL),(27,10,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-12 04:35:06',NULL,NULL),(28,11,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:08:25',NULL,NULL),(29,11,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:08:25',NULL,NULL),(30,11,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:08:25',NULL,NULL),(31,12,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:08:48',NULL,NULL),(32,12,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:08:48',NULL,NULL),(33,12,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:08:48',NULL,NULL),(34,13,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:10:23',NULL,NULL),(35,13,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:10:23',NULL,NULL),(36,13,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:10:23',NULL,NULL),(37,14,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(38,14,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(39,14,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(40,15,27,32,'rr',21,3,4,NULL,NULL,2004,NULL,NULL,1,NULL,'2018-05-14 06:29:53',NULL,NULL),(41,15,28,32,'dfd',22,4,5,NULL,NULL,2006,NULL,NULL,1,NULL,'2018-05-14 06:29:53',NULL,NULL),(42,15,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2018-05-14 06:29:53',NULL,NULL);
/*!40000 ALTER TABLE `applicant_acadimicinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_adressinfo`
--

DROP TABLE IF EXISTS `applicant_adressinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_adressinfo` (
  `APP_ADRESS_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of or_applicant_adress Table.',
  `APPLICANT_ID` bigint(14) NOT NULL COMMENT 'Foreign Key To STUDENT_ID Column Of students_info Table.',
  `ADRESS_TYPE` enum('PS','PR') NOT NULL COMMENT 'Adress Type, PS=Present , PR=Permanent',
  `SAS_PSORPR` enum('PS','PR') NOT NULL COMMENT 'Adress Same As, PS=Present , PR=Permanent',
  `HOUSE_NO_NAME` varchar(100) DEFAULT NULL COMMENT 'House No / Name',
  `ROAD_AVENO_NAME` varchar(100) DEFAULT NULL COMMENT 'Road / Ave No / Name',
  `VILLAGE_WARD` varchar(100) DEFAULT NULL COMMENT 'Villange / Ward  / Municipality',
  `UNION_ID` smallint(6) DEFAULT NULL COMMENT 'Foreign Key To UNION_ID Column Of sa_unions Table.',
  `THANA_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To THANA_ID Column Of sa_thanas Table.',
  `POST_OFFICE_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To POST_OFFICE_ID Column Of sa_post_offices Table.',
  `POLICE_STATION_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To POLICE_STATION_ID Column Of sa_police_station Table.',
  `DISTRICT_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To DISTRICT_ID Column Of sa_districts Table.',
  `DIVISION_ID` tinyint(2) DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`APP_ADRESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_adressinfo`
--

LOCK TABLES `applicant_adressinfo` WRITE;
/*!40000 ALTER TABLE `applicant_adressinfo` DISABLE KEYS */;
INSERT INTO `applicant_adressinfo` VALUES (1,7,'PS','',NULL,NULL,'10',1926,73,0,73,13,3,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(2,7,'PR','',NULL,NULL,'10',204,36,0,36,4,1,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(3,8,'PS','',NULL,NULL,'45',1926,73,0,73,13,3,1,NULL,'2018-04-12 09:15:15',NULL,NULL),(4,8,'PR','',NULL,NULL,'1',202,36,0,36,4,1,1,NULL,'2018-04-12 09:15:15',NULL,NULL),(5,9,'PS','PS',NULL,NULL,'3',252,438,1010,438,3,1,1,NULL,'2018-05-12 04:32:36',NULL,NULL),(6,10,'PS','PS',NULL,NULL,'f',144,29,0,29,3,1,1,NULL,'2018-05-12 04:35:06',NULL,NULL),(7,11,'PS','PS',NULL,NULL,'',284,29,1024,29,3,1,1,NULL,'2018-05-14 06:08:25',NULL,NULL),(8,12,'PS','PS',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,1,NULL,'2018-05-14 06:08:47',NULL,NULL),(9,13,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2018-05-14 06:10:23',NULL,NULL),(10,13,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2018-05-14 06:10:23',NULL,NULL),(11,14,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(12,14,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(13,15,'PS','PS',NULL,NULL,'f',144,29,1023,29,3,1,1,NULL,'2018-05-14 06:29:53',NULL,NULL);
/*!40000 ALTER TABLE `applicant_adressinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_gurdianinfo`
--

DROP TABLE IF EXISTS `applicant_gurdianinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_gurdianinfo` (
  `APP_PARENT_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `APPLICANT_ID` bigint(14) NOT NULL COMMENT 'Foreign Key To STUDENT_ID Column Of students_info Table.',
  `GURDIAN_NAME` varchar(100) DEFAULT NULL,
  `OCCUPATION` varchar(100) DEFAULT NULL,
  `GUARDIAN_TYPE` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `WORKING_ORG` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOBILE_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `EMAIL_ADRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `PASSWORD` varchar(70) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `LOCAL_GUARDIAN_FG` tinyint(1) DEFAULT '0',
  `GUARDIAN_RELATION` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT '1',
  `ADDRESS` varchar(200) DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`APP_PARENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_gurdianinfo`
--

LOCK TABLES `applicant_gurdianinfo` WRITE;
/*!40000 ALTER TABLE `applicant_gurdianinfo` DISABLE KEYS */;
INSERT INTO `applicant_gurdianinfo` VALUES (1,1,'Md.Golam Mostofa','209','F','Dhaka.','01722085398','father@gmail.com',NULL,1,NULL,1,NULL,1,NULL,'2017-12-29 13:38:26',NULL,NULL),(2,1,'Rahatunnesa','211','M','Dhaka.','01722085398','mother@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-12-29 13:38:26',NULL,NULL),(3,2,'FATHER NAME ','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-01-25 05:53:09',NULL,NULL),(4,2,'MOTHER NAME','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-01-25 05:53:09',NULL,NULL),(5,3,'Md.Abdul Barek Miah','195','F','Dhaka.','0174352021','barek@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2018-01-25 08:18:20',NULL,NULL),(6,3,'Sultana Begum','211','M','Dhaka','01918934651','sultana@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2018-01-25 08:18:20',NULL,NULL),(7,4,'Father','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-01-30 06:28:58',NULL,NULL),(8,4,'Mother','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-01-30 06:28:59',NULL,NULL),(9,5,'f','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-03-24 09:40:20',NULL,NULL),(10,5,'f','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-03-24 09:40:20',NULL,NULL),(11,6,'fgh','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-03-25 09:16:01',NULL,NULL),(12,6,'fg','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-03-25 09:16:01',NULL,NULL),(13,3,'Md.Abdul Barek Miah',NULL,'O',NULL,'01714352021',NULL,NULL,1,183,1,'Dhaka',1,NULL,'2018-04-11 04:22:18',NULL,NULL),(14,7,'Md.Abdul Barek Miah','195','F','10/1,Muradpur madrasha road,dhaka','01918934651','abdulbarek@gmail.com',NULL,1,NULL,1,NULL,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(15,7,'Sultana Begum','211','M','10/1,Muradpur madrasha road,Jurain,Dhaka-1204','01720920148','sultana@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2018-04-11 10:23:34',NULL,NULL),(16,8,'Md.Abdul Barek Miah','195','F','Dhaka','01720920148','barek@gmail.com',NULL,1,NULL,1,NULL,1,NULL,'2018-04-12 09:15:15',NULL,NULL),(17,8,'Sultana Begum','211','M','Dhaka','01918934651','sultana@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2018-04-12 09:15:15',NULL,NULL),(18,9,'Father','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-12 04:32:36',NULL,NULL),(19,9,'Mother','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-12 04:32:36',NULL,NULL),(20,10,'f','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-12 04:35:05',NULL,NULL),(21,10,'f','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-12 04:35:06',NULL,NULL),(22,11,'Father','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-14 06:08:25',NULL,NULL),(23,11,'fg','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-14 06:08:25',NULL,NULL),(24,12,'Father','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-14 06:08:47',NULL,NULL),(25,12,'fg','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-14 06:08:47',NULL,NULL),(26,13,'','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-14 06:10:22',NULL,NULL),(27,13,'','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-14 06:10:22',NULL,NULL),(28,14,'','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(29,14,'','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-14 06:23:35',NULL,NULL),(30,15,'Father','','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2018-05-14 06:29:53',NULL,NULL),(31,15,'fg','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2018-05-14 06:29:53',NULL,NULL);
/*!40000 ALTER TABLE `applicant_gurdianinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_personal_info`
--

DROP TABLE IF EXISTS `applicant_personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_personal_info` (
  `APPLICANT_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `ADM_ROLL_NO` varchar(50) NOT NULL,
  `ADM_SESSION_ID` int(11) NOT NULL,
  `ADM_PRG_ID` int(11) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `FACULTY_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) DEFAULT NULL,
  `FULL_NAME_EN` varchar(120) NOT NULL COMMENT 'Student Full Name In English',
  `FULL_NAME_BN` varchar(120) DEFAULT NULL COMMENT 'Student Full Name In Local Language (Bangla)',
  `PHOTO` varchar(30) DEFAULT NULL,
  `SIGNATURE_PHOTO` varchar(200) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `MOBILE_NO` varchar(15) DEFAULT NULL COMMENT 'Student Mobile No',
  `NATIONALITY` varchar(100) DEFAULT NULL COMMENT 'Student Nationality',
  `NATIONAL_ID` bigint(17) DEFAULT NULL COMMENT 'Student Natioanl Id',
  `EMAIL_ADRESS` varchar(50) DEFAULT NULL COMMENT 'Student Email Adress.',
  `FATHER_NAME` varchar(120) DEFAULT NULL COMMENT 'Student Father''''s Name In English',
  `MOTHER_NAME` varchar(120) DEFAULT NULL COMMENT 'Student Mother''''s Name In English',
  `MARITAL_STATUS` bigint(4) DEFAULT NULL,
  `DATH_OF_BIRTH` datetime DEFAULT NULL COMMENT 'Student Date of Birth',
  `PLACE_OF_BIRTH` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Student Place of Birth',
  `BIRTH_CERTIFICATE` varchar(100) DEFAULT NULL,
  `HEIGHT_CM` varchar(10) DEFAULT NULL COMMENT 'Student Hight In Centimeter',
  `BLOOD_GROUP` varchar(3) DEFAULT NULL,
  `HEIGHT_FEET` varchar(5) DEFAULT NULL COMMENT 'Student Height in Feet',
  `HEIGHT_INCHES` tinyint(3) DEFAULT NULL COMMENT 'Student Height in Inches',
  `WEIGHT_KG` varchar(5) DEFAULT NULL COMMENT 'Student Weight In Kilogram',
  `WEIGHT_LBS` varchar(10) DEFAULT NULL COMMENT 'Student Weight In Pound',
  `RELIGION_ID` varchar(3) DEFAULT NULL COMMENT 'Student Religion',
  `PASSPORT_NO` varchar(20) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `ANNUAL_INCOME` varchar(20) DEFAULT NULL,
  `SCHOLARSHIP` varchar(5) DEFAULT NULL,
  `SCHOLARSHIP_DESC` text,
  `EXPELLED` varchar(20) DEFAULT NULL,
  `EXPELLED_DESC` text CHARACTER SET latin1,
  `ARRESTED` varchar(20) DEFAULT NULL,
  `ARRESTED_DESC` text CHARACTER SET latin1,
  `CONVICTED` varchar(20) DEFAULT NULL,
  `CONVICTED_DESC` text CHARACTER SET latin1,
  `APPLY_BEFORE` varchar(20) DEFAULT NULL,
  `APPLY_SEMESTER` varchar(20) DEFAULT NULL,
  `APPLY_YEAR` varchar(20) DEFAULT NULL,
  `SIBLING_EXIST` varchar(20) DEFAULT NULL,
  `SBLN_ROLL_NO` varchar(20) DEFAULT NULL,
  `TERMS_AND_CONDITION` varchar(11) DEFAULT NULL,
  `APPLICANT_USER_ID` int(11) DEFAULT NULL,
  `ELIGIBLE_BY_ADDMISSION_DEPT` int(11) DEFAULT NULL,
  `ELIGIBLE_BY_ADDMISSION_DEPT_STATUS` tinyint(1) DEFAULT NULL,
  `ELIGIBLE_ADDMISSION_DEPT_DT` date DEFAULT NULL,
  `ELIGIBLE_ADM_REMARKS` varchar(200) DEFAULT NULL,
  `ELIGIBLE_BY_DEPT_HEAD` int(11) DEFAULT NULL,
  `ELIGIBLE_BY_DEPT_HEAD_STATUS` tinyint(1) DEFAULT NULL,
  `ELIGIBLE_BY_DEPT_HEAD_DT` date DEFAULT NULL,
  `ELIGIBLE_DEPT_HEAD_REMARKS` varchar(200) DEFAULT NULL,
  `APPROVE_FOR_ADMIT` int(1) DEFAULT NULL,
  `APPROVE_DT` date DEFAULT NULL,
  `APPROVE_REMARKS` varchar(200) DEFAULT NULL,
  `APPROVE_BY` int(11) DEFAULT NULL,
  `ELIGIBLE_STU_FG` varchar(5) DEFAULT '0' COMMENT '1=eligible applicant to student,0=applicant',
  PRIMARY KEY (`APPLICANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_personal_info`
--

LOCK TABLES `applicant_personal_info` WRITE;
/*!40000 ALTER TABLE `applicant_personal_info` DISABLE KEYS */;
INSERT INTO `applicant_personal_info` VALUES (1,'170650303001',6,26,3,5,3,3,'Md. Rakib Mostofa','রাকিব মোস্তোফা','photo_170650303001.jpg','signature_170650303001.jpg','M','01722085398','15',1234567891234,'rakib@atilimited.net','Md.Golam Mostofa','Rahatunnesa',12,'1998-12-02 00:00:00','Natore','1234567891234','185.93','104','6.1',NULL,'88','194.01','1',NULL,1,NULL,'2017-12-29 13:38:26',NULL,NULL,'1000000','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,1,15,1,'2017-12-29','Approved',14,1,'2017-12-29','Approved',1,'2017-12-29','Approved',15,'1'),(3,'170650101001',6,NULL,3,5,1,1,'Md.Reazul Islam','মো: রিয়াজুল ইসলাম','photo_170650101001.png','signature_170650101001.png','M','01722085398','15',9632587412584,'rakib@gmail.vom','FATHER NAME ','MOTHER NAME',12,'2018-01-10 00:00:00','Barisal','9632587412584','','144','5.6',NULL,'9600','','1',NULL,1,NULL,'2018-01-25 08:18:20',NULL,NULL,'20000','YES','KYAU','NO','','NO','NO','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(4,'170650101002',6,NULL,3,5,1,1,'Gazi Asif','নাম ( বাংলা ) ','photo_170650101002.png','signature_170650101002.jpg','M','01722085398','15',7845912456124,'gazi@atilimited.net','Father','Mother',11,'2009-01-01 00:00:00','Dhaka','7845912456125','','14','',NULL,'','','1',NULL,1,NULL,'2018-01-30 06:28:58',NULL,NULL,'5100000','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(5,'170650101003',6,NULL,3,5,1,1,'Rakib Mostofa','f','photo_170650101003.jpg','signature_170650101003.png','M','01722085398','15',2233232111111,'rakib@atilimited.net','f','f',11,'2018-03-22 00:00:00','Dhaka','','0.00','101','',NULL,'','','1',NULL,1,NULL,'2018-03-24 09:40:20',NULL,NULL,'200','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(6,'170650101004',6,24,3,5,1,1,'test demo','45','photo_170650101004.png','signature_170650101004.jpg','M','01827528019','15',0,'test@gmail.com','fgh','fg',11,'2018-03-25 00:00:00','12','','','','',NULL,'','','1',NULL,1,NULL,'2018-03-25 09:16:01',NULL,NULL,'12','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),(7,'170621011001',6,NULL,4,2,10,11,'Md.Reazul Islam','মো: রিয়াজুল ইসলাম','photo_170621011001.png','signature_170621011001.png','M','01720920148','15',2145789945645,'reazulislam651@gmail.com','Md.Abdul Barek Miah','Sultana Begum',12,'2018-04-18 00:00:00','Barisal','2145789945645','170.69','144','5.6',NULL,'60','132.28','1',NULL,1,NULL,'2018-04-11 10:23:34',NULL,NULL,'20,000','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(8,'170650202001',6,25,3,5,2,2,'Md.Reazul Islam','মো: রিয়াজুল ইসলাম','photo_170650202001.png','signature_170650202001.jpg','M','01720920148','15',7845912456124,'reazulislam651@gmail.com','Md.Abdul Barek Miah','Sultana Begum',12,'1990-04-30 00:00:00','Barisal','7845912456125','173.74','144','5.70',NULL,'60','132.28','1',NULL,1,NULL,'2018-04-12 09:15:15',NULL,NULL,'20000','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,8,1,1,'2018-04-13','Approved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),(9,'170650101005',6,NULL,3,5,1,1,'Rakib','ds','','','M','01722085398','15',0,'rakib@gmail.com','Father','Mother',12,'2018-05-12 00:00:00','Dhaka','','','14','',NULL,'','','1',NULL,1,NULL,'2018-05-12 04:32:36',NULL,NULL,'100','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(10,'170650101006',6,NULL,3,5,1,1,'df','df','','','M','01722085398','15',0,'rakib@gmail.com','f','f',11,'2006-05-01 00:00:00','f','','','','',NULL,'','','1',NULL,1,NULL,'2018-05-12 04:35:05',NULL,NULL,'4','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,26,1,'2018-05-12','',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(11,'170650101007',6,NULL,3,5,1,1,'Rakib','ds','','','M','01722085398','15',0,'rakib@gmail.com','Father','fg',11,'1970-01-01 00:00:00','f','','','14','',NULL,'','','1',NULL,1,NULL,'2018-05-14 06:08:25',NULL,NULL,'','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(12,'170650605001',6,NULL,4,5,6,5,'Rakib','ds','','','M','01722085398','15',0,'rakib@gmail.com','Father','fg',11,'1970-01-01 00:00:00','f','','','14','',NULL,'','','1',NULL,1,NULL,'2018-05-14 06:08:47',NULL,NULL,'','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(13,'170650202002',6,NULL,3,5,2,2,'Rakib','ds','','','M','','15',0,'','','',0,NULL,'','','','','',NULL,'','','',NULL,1,NULL,'2018-05-14 06:10:22',NULL,NULL,'','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(14,'170650101008',6,NULL,3,5,1,1,'Rakib','ds','','','M','','15',0,'','','',0,NULL,'','','','','',NULL,'','','',NULL,1,NULL,'2018-05-14 06:23:35',NULL,NULL,'','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'0'),(15,'170650101009',6,NULL,3,5,1,1,'Rakib','রাকিব','','','M','01722085398','15',0,'rakib@gmail.com','Father','fg',11,NULL,'f','','','101','',NULL,'','','1',NULL,1,NULL,'2018-05-14 06:29:53',NULL,NULL,'50000000','NO','','NO','','NO','','NO','','NO','','','NO','',NULL,NULL,26,1,'2018-05-14','ok',25,1,'2018-05-14','ok',1,NULL,NULL,NULL,'0');
/*!40000 ALTER TABLE `applicant_personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_user`
--

DROP TABLE IF EXISTS `applicant_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_user` (
  `APPLICANT_USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `FACULTY_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) DEFAULT NULL,
  `FULL_NAME` varchar(100) NOT NULL,
  `GENDER` varchar(20) DEFAULT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(200) DEFAULT NULL,
  `PASSWORD` varchar(250) DEFAULT NULL,
  `BIRTH_DT` date DEFAULT NULL,
  `CREATE_DT` timestamp NULL DEFAULT NULL,
  `ACT_FG` int(1) DEFAULT '1',
  `FF_COM_STATUS` int(1) DEFAULT '0' COMMENT 'form fillup complete status 1 = complete 0=incomplete',
  `ADM_PRG_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`APPLICANT_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_user`
--

LOCK TABLES `applicant_user` WRITE;
/*!40000 ALTER TABLE `applicant_user` DISABLE KEYS */;
INSERT INTO `applicant_user` VALUES (1,3,5,3,3,'Md. Rakib Mostofa','M','01722085398','rakib@atilimited.net','123456','1998-12-02',NULL,1,1,26),(2,3,2,11,12,'Md. Toufiqur','M','01751075217','toufiqurrahaman86@gmail.com','333301','1995-12-26',NULL,1,0,35),(3,3,5,1,1,'asif','M','01658478973','aa@gmail.com','717130','1994-01-01',NULL,1,0,24),(4,3,5,1,1,'Nipa Monalisha','M','01722085398','monalisha@atilimited.net','801671','1982-01-01',NULL,1,0,24),(5,4,5,6,5,'fff','M','44444444444','re@gmail.com','582916','2018-01-22',NULL,1,0,28),(6,3,5,1,1,'test demo','M','01827528019','test@gmail.com','365390','2018-03-25',NULL,1,1,24),(7,3,5,1,1,'ff','M','01723145678','fff@gmail.com','535367','2018-04-17',NULL,1,0,24),(8,3,5,2,2,'Md.Reazul Islam','M','01720920148','reazulislam651@gmail.com','807692','1990-04-30',NULL,1,1,25);
/*!40000 ALTER TABLE `applicant_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_setting`
--

DROP TABLE IF EXISTS `application_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_setting` (
  `APPLICATION_SETT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICATION_THEME` varchar(100) DEFAULT NULL,
  `LOGO_BACKGROUND` varchar(100) DEFAULT NULL,
  `SIDEBER_M_C` varchar(100) DEFAULT NULL COMMENT 'SIDE BAR MENUE COLOR',
  `OPEN_M_B_C` varchar(100) DEFAULT NULL COMMENT 'OPEN MENUE BACKGROUND COLOR',
  `ON_CLICK_M_B_C` varchar(100) DEFAULT NULL COMMENT 'ON CLICK MENUE BACKGROUND COLOR',
  `ON_MOUSE_O_M_C` varchar(100) DEFAULT NULL COMMENT 'ON MOUSE OVER MENUE COLOR',
  `MENUE_FONT_C` varchar(100) DEFAULT NULL COMMENT 'MENUE FONT COLOR',
  `MENUE_FONT_H_C` varchar(100) DEFAULT NULL COMMENT 'MENUE FONT HOVER COLOR',
  `MENUE_FONT_A_C` varchar(100) DEFAULT NULL COMMENT 'MENUE FONT ACTIVE COLOR',
  `ON_CLICK_T_H_C` varchar(100) DEFAULT NULL COMMENT 'ON CLICK DATA TABLE HEADER OF BODY COLOR',
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1' COMMENT 'active status by default set 1',
  `ACTIVE_BY_AD` bigint(14) DEFAULT NULL COMMENT 'ACTIVE BY ADMIN',
  `ACTIVE_BY_USER` bigint(14) DEFAULT NULL COMMENT 'ACTIVE BY USER',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`APPLICATION_SETT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_setting`
--

LOCK TABLES `application_setting` WRITE;
/*!40000 ALTER TABLE `application_setting` DISABLE KEYS */;
INSERT INTO `application_setting` VALUES (3,'bbhhh','bbb','#ff1a1a','g','cccc','d','mmm','i','e','j',1,1,NULL,1,'2018-03-11 15:05:44',1,'2018-03-11 00:00:00'),(4,'bbhhh','c','d','d','d','d','d','d','d','d',1,1,NULL,1,'2018-03-11 16:24:16',NULL,NULL),(5,'test Edit','b','iii','g','c','d','mmm','i','d','j',1,1,NULL,1,'2018-03-12 09:53:52',1,'2018-03-12 00:00:00');
/*!40000 ALTER TABLE `application_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ati_module_links`
--

DROP TABLE IF EXISTS `ati_module_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ati_module_links` (
  `LINK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LINK_NAME` varchar(60) NOT NULL,
  `LINK_NAME_BN` varchar(500) DEFAULT NULL,
  `ATI_MLINK_PAGES` varchar(10) DEFAULT NULL,
  `MODULE_ID` int(2) DEFAULT NULL,
  `URL_URI` varchar(200) DEFAULT NULL,
  `LINK_DESC` varchar(100) DEFAULT NULL,
  `SL_NO` tinyint(2) NOT NULL,
  `CREATE` tinyint(1) DEFAULT '0',
  `READ` tinyint(1) DEFAULT '0',
  `UPDATE` tinyint(1) DEFAULT '0',
  `DELETE` tinyint(1) DEFAULT '0',
  `STATUS` tinyint(4) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LINK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ati_module_links`
--

LOCK TABLES `ati_module_links` WRITE;
/*!40000 ALTER TABLE `ati_module_links` DISABLE KEYS */;
INSERT INTO `ati_module_links` VALUES (10,'User',NULL,'I,V,U,D,S',24,'admin/users',NULL,0,1,1,1,1,1,1,1,'2015-09-08 02:50:52',NULL,NULL),(25,'Base Setup',NULL,'I,V,U,D,S',24,'lookUp/index',NULL,0,1,1,1,1,1,1,1,'2015-09-18 21:41:52',NULL,NULL),(26,'Existing Student Registration',NULL,'I,V,U,D,S',27,'admission/registration',NULL,0,1,1,1,1,1,1,1,'2015-09-19 03:32:34',NULL,NULL),(43,'Division',NULL,'I,V,U,D,S',29,'setup/division',NULL,0,1,1,1,1,1,1,1,'2015-10-18 00:19:32',NULL,'2015-10-18 12:22:12'),(44,'District',NULL,'I,V,U,D,S',29,'setup/district',NULL,0,1,1,1,1,1,1,1,'2015-10-18 00:22:57',NULL,NULL),(45,'Thana',NULL,'I,V,U,D,S',29,'setup/thana',NULL,0,1,1,1,1,1,1,1,'2015-10-18 00:23:55',NULL,NULL),(47,'Union',NULL,'I,V,U,D,S',29,'setup/union',NULL,0,1,1,1,1,1,1,1,'2015-10-18 00:26:27',NULL,NULL),(80,'Users',NULL,'I,V,U,D,S',24,'admin/userList',NULL,0,1,1,1,1,1,1,31,'2015-12-21 22:46:44',31,'2016-02-29 14:43:10'),(99,'Faculty',NULL,'I,V,U,D,S',44,'setup/faculty',NULL,2,1,1,1,1,1,1,31,'2016-01-27 03:54:12',1,'2017-07-19 12:36:54'),(100,'Department',NULL,'I,V,U,D,S',44,'setup/department',NULL,3,1,1,1,1,1,1,31,'2016-01-27 03:56:26',1,'2017-07-19 12:37:04'),(101,'Programs',NULL,'I,V,U,D,S',44,'setup/program',NULL,4,1,1,1,1,1,1,31,'2016-01-27 03:58:13',1,'2017-07-19 12:37:13'),(102,'Degree',NULL,'I,V,U,D,S',44,'setup/degree',NULL,1,1,1,1,1,1,1,31,'2016-01-27 04:00:00',1,'2017-07-19 12:36:44'),(103,'Session Name',NULL,'I,V,U,D,S',44,'setup/session',NULL,5,1,1,1,1,1,1,31,'2016-01-27 04:02:25',1,'2017-07-19 12:37:20'),(105,'Session Year',NULL,'I,V,U,D,S',44,'setup/yearSetup',NULL,6,1,1,1,1,1,1,31,'2016-01-27 04:40:48',1,'2017-07-19 12:37:32'),(106,'Admission Session',NULL,'I,V,U,D,S',44,'setup/admSession',NULL,7,1,1,1,1,1,1,31,'2016-01-27 04:42:51',1,'2017-07-19 12:37:43'),(107,'Batch',NULL,'I,V,U,D,S',24,'setup/batch',NULL,0,1,1,1,1,1,1,31,'2016-01-27 04:46:17',1,'2017-06-11 08:49:48'),(116,'Exam Marks',NULL,'I,V,U,D,S',41,'coe/addMarkingPolicy',NULL,0,1,1,1,1,1,1,31,'2016-01-31 00:36:32',NULL,NULL),(124,'Applicant Approval',NULL,'I,V,U,D,S',48,'admin/newApplicantList',NULL,1,1,1,1,1,1,1,31,'2016-02-08 23:31:23',1,'2017-07-19 12:33:02'),(125,'Dept. Head Approval',NULL,'I,V,U,D,S',48,'admin/deptApplicantList',NULL,0,1,1,1,1,1,1,31,'2016-02-08 23:31:51',1,'2017-07-19 12:35:45'),(126,'Admit Card Approval',NULL,'I,V,U,D,S',48,'admin/applicant_list_admit_card',NULL,2,1,1,1,1,1,1,31,'2016-02-08 23:32:21',1,'2017-07-19 12:33:16'),(127,'Admission Period',NULL,'I,V,U,D,S',27,'setup/admissionInfo',NULL,0,1,1,1,1,1,1,31,'2016-02-23 03:12:32',NULL,NULL),(128,'Academic Session',NULL,'I,V,U,D,S',44,'setup/examSession',NULL,8,1,1,1,1,1,1,31,'2017-04-25 09:34:18',1,'2017-08-19 15:17:49'),(129,'Employee',NULL,'I,V,U,D,S',49,'employee/employee',NULL,0,1,1,1,1,1,1,31,'2017-04-30 04:45:27',31,'2017-04-30 10:47:08'),(130,'Course List',NULL,'I,V,U,D,S',50,'course/index',NULL,1,1,1,1,1,1,1,1,'2017-05-11 09:11:59',1,'2017-08-03 14:24:47'),(131,'Course Assign',NULL,'I,V,U,D,S',50,'course/courseOffer',NULL,2,1,1,1,1,1,1,1,'2017-05-13 08:54:46',1,'2017-08-03 14:25:00'),(132,'Designation',NULL,'I,V,U,D,S',24,'setup/designation',NULL,0,1,1,1,1,1,1,1,'2017-05-17 11:48:00',NULL,NULL),(133,'Upload Existing Students',NULL,'I,V,U,D,S',51,'Eregistration/importStudent',NULL,0,1,1,1,1,1,1,1,'2017-05-27 09:26:19',NULL,NULL),(134,'Upload Student List',NULL,'I,V,U,D,S',51,'Eregistration/existingStudentList',NULL,0,1,1,1,1,1,1,1,'2017-05-27 11:27:36',NULL,NULL),(135,'Course Offer',NULL,'I,V,U,D,S',50,'Course/semesterCourse',NULL,3,1,1,1,1,1,1,1,'2017-06-06 05:10:00',1,'2017-08-03 14:25:15'),(136,'Course Enrollment',NULL,'I,V,U,D,S',51,'Teacher/courseEnrollment',NULL,1,1,1,1,1,1,1,1,'2017-06-07 04:00:56',1,'2017-08-03 14:25:24'),(138,'Admitted Student',NULL,'I,V,U,D,S',48,'admin/admissionStudent',NULL,3,1,1,1,1,1,1,1,'2017-06-08 06:57:29',1,'2017-07-29 15:58:14'),(139,'Batch Mapping',NULL,'I,V,U,D,S',24,'Setup/batchMap',NULL,0,1,1,1,1,1,1,1,'2017-06-11 03:28:11',NULL,NULL),(140,'Chart Of Account',NULL,'I,V,U,D,S',52,'finance/chartOfAccount',NULL,1,1,1,1,1,1,1,1,'2017-07-23 09:55:05',1,'2017-10-09 16:08:16'),(141,'Grade Policy',NULL,'I,V,U,D,S',53,'exam/policy',NULL,1,1,1,1,1,1,1,1,'2017-07-25 04:01:39',NULL,NULL),(142,'Charge Rate',NULL,'I,V,U,D,S',52,'finance/financeRate',NULL,2,1,1,1,1,1,1,1,'2017-07-26 03:54:27',1,'2017-07-26 12:45:43'),(143,'Grade Setup',NULL,'I,V,U,D,S',53,'exam/grade',NULL,2,1,1,1,1,1,1,1,'2017-07-26 08:10:54',1,'2017-07-26 14:19:59'),(144,'Exam Marks Type',NULL,'I,V,U,D,S',53,'exam/examMarksType',NULL,3,1,1,1,1,1,1,1,'2017-07-27 08:36:54',1,'2018-05-05 10:04:39'),(145,'Mark Entry',NULL,'I,V,U,D,S',53,'exam/grading',NULL,4,1,1,1,1,1,1,1,'2017-07-29 04:20:14',1,'2017-07-31 13:47:30'),(146,'Payments',NULL,'I,V,U,D',52,'finance/payment',NULL,7,1,1,1,1,0,1,1,'2017-07-29 05:55:20',1,'2017-12-26 10:07:27'),(148,'Empoyee Card',NULL,'I,V,U,D,S',49,'employee/employeeCardList',NULL,2,1,1,1,1,1,1,1,'2017-07-31 13:01:13',NULL,NULL),(149,'Exam Application',NULL,'I,V,U,D,S',53,'exam/examApplication',NULL,6,1,1,1,1,1,1,1,'2017-08-01 10:13:58',1,'2017-08-01 16:15:53'),(150,'Grade Sheet Setup',NULL,'I,V,U,D,S',53,'exam/gradeSheet',NULL,5,1,1,1,1,1,1,1,'2017-08-02 09:34:07',1,'2017-08-27 10:04:16'),(151,'Course Mapping',NULL,'I,V,U,D,S',50,'course/courseMap',NULL,4,1,1,1,1,1,1,1,'2017-08-03 08:23:24',1,'2017-08-03 14:27:11'),(152,'Manual Course Enrollment',NULL,'I,V,U,D,S',51,'teacher/manualCourseEnrollment',NULL,2,1,1,1,1,1,1,1,'2017-08-06 08:17:22',NULL,NULL),(153,'Grade Sheet',NULL,'I,V,U,D,S',54,'exam/gradeSheetIndex',NULL,2,1,1,1,1,1,1,1,'2017-08-07 03:43:57',1,'2017-08-28 11:59:01'),(154,'Admission Payment',NULL,'I,V,U,D,S',52,'finance/admissionPayment',NULL,4,1,1,1,1,1,0,1,'2017-08-08 10:14:41',1,'2017-08-27 19:23:02'),(156,'Marks Review',NULL,'I,V,U,D,S',54,'exam/reviewGradeSheetIndex',NULL,1,1,1,1,1,1,1,1,'2017-08-09 06:07:50',1,'2017-08-28 11:58:33'),(157,'Organization',NULL,'I,V,U,D,S',24,'setup/orgIndex',NULL,6,1,1,1,1,1,1,1,'2017-08-10 08:29:39',NULL,NULL),(158,'Academic Transcript',NULL,'I,V,U,D,S',55,'exam/academicTranscriptIndex',NULL,1,1,1,1,1,1,1,1,'2017-08-13 09:24:08',1,'2017-08-28 12:06:22'),(159,'Previous Marks Entry',NULL,'I,V,U,D,S',54,'exam/previousMarksIndex',NULL,3,1,1,1,1,1,1,1,'2017-08-21 04:29:30',1,'2017-08-28 12:00:56'),(160,'Final Exam Transcript',NULL,'I,V,U,D,S',55,'exam/finalExamTranscriptIndex',NULL,2,1,1,1,1,1,1,1,'2017-08-23 06:17:54',1,'2017-08-28 12:07:51'),(161,'Existing Student payment',NULL,'I,V,U,D,S',52,'admin/existing_students',NULL,0,1,1,1,1,1,0,1,'2017-08-23 09:07:48',1,'2017-08-27 19:21:57'),(162,'Campus',NULL,'I,V,U,D,S',24,'setup/campus',NULL,7,1,1,1,1,1,1,1,'2017-08-26 10:12:28',NULL,NULL),(163,'Applicant Payment',NULL,'I,V,U,D,S',52,'payment/getAllApplicant',NULL,0,1,1,1,1,1,1,1,'2017-08-27 09:36:31',NULL,NULL),(164,'Check Eligibilitty',NULL,'I,V,U,D,S',53,'exam/examEligibility',NULL,9,1,1,1,1,1,1,1,'2017-08-28 09:03:04',1,'2017-08-28 15:05:06'),(165,'Building',NULL,'I,V,U,D',24,'setup/building',NULL,8,1,1,1,1,0,1,1,'2017-09-07 04:44:48',1,'2017-09-09 10:00:40'),(166,'Room',NULL,'I,V,U,D,S',24,'setup/room',NULL,9,1,1,1,1,1,1,1,'2017-09-09 04:00:27',NULL,NULL),(167,'Class Schedule',NULL,'I,V,U,D,S',50,'course/classSchedule',NULL,5,1,1,1,1,1,1,1,'2017-09-17 04:11:42',NULL,NULL),(168,'Create Blog',NULL,'I,V,U,D,S',56,'teacher/blogList',NULL,1,1,1,1,1,1,1,1,'2017-09-20 06:32:32',NULL,NULL),(169,'Blog Worklist',NULL,'I,V,U,D,S',56,'teacher/bolgWorkList',NULL,1,1,1,1,1,1,1,1,'2017-09-20 08:24:07',NULL,NULL),(170,'Notice',NULL,'I,V,U,D,S',56,'setup/notice',NULL,3,1,1,1,1,1,1,1,'2017-09-21 03:55:43',NULL,NULL),(171,'Notice Board',NULL,'I,V,U,D,S',56,'teacher/noticeBoard',NULL,4,1,1,1,1,1,1,1,'2017-09-21 06:25:40',NULL,NULL),(172,'Event',NULL,'I,V,U,D,S',56,'calendar/index',NULL,5,1,1,1,1,1,1,1,'2017-09-23 10:06:15',NULL,NULL),(173,'Resident Application',NULL,'I,V,U,D,S',56,'teacher/residentAppAprv',NULL,6,1,1,1,1,1,1,1,'2017-09-27 11:29:34',NULL,NULL),(174,'Resident Provost Permission',NULL,'I,V,U,D,S',56,'teacher/residentAppAprvForProvost',NULL,7,1,1,1,1,1,1,1,'2017-09-28 05:57:56',NULL,NULL),(175,'Seat Mapping',NULL,'I,V,U,D,S',56,'admin/seatMapping',NULL,5,1,1,1,1,1,1,1,'2017-10-02 06:01:20',1,'2017-10-02 12:03:17'),(176,'Resident Bill Generate',NULL,'I,V,U,D,S',52,'finance/residentBill',NULL,4,1,1,1,1,1,1,1,'2017-11-08 08:26:59',1,'2017-12-26 10:08:59'),(177,'Academic Bill Genarate',NULL,'I,V,U,D,S',52,'finance/academicBill',NULL,3,1,1,1,1,1,1,1,'2017-11-09 09:52:20',1,'2017-12-26 10:08:40'),(178,'Leave Application',NULL,'I,V,U,D,S',49,'teacher/leave',NULL,3,1,1,1,1,1,1,1,'2017-11-19 09:09:12',1,'2017-12-27 11:27:38'),(179,'Leave Request List',NULL,'I,V,U,D,S',49,'teacher/getLeaveRequest',NULL,4,1,1,1,1,1,1,1,'2017-11-20 08:32:02',1,'2017-12-06 13:09:48'),(180,'Unit',NULL,'I,V,U,D,S',57,'inventory/unit',NULL,1,1,1,1,1,1,1,1,'2017-11-21 10:45:15',NULL,NULL),(181,'Supplier',NULL,'I,V,U,D,S',57,'inventory/supplier',NULL,2,1,1,1,1,1,1,1,'2017-11-22 09:12:14',NULL,NULL),(182,'Item',NULL,'I,V,U,D,S',57,'inventory/item',NULL,3,1,1,1,1,1,1,1,'2017-11-23 09:01:25',NULL,NULL),(183,'Requisition',NULL,'I,V,U,D,S',57,'inventory/requisition',NULL,4,1,1,1,1,1,1,1,'2017-11-26 11:20:26',NULL,NULL),(184,'Purchase Order',NULL,'I,V,U,D,S',57,'inventory/purchaseOrder',NULL,7,1,1,1,1,1,1,1,'2017-11-27 06:42:46',1,'2017-12-21 21:16:39'),(185,'PO Receive',NULL,'I,V,U,D,S',57,'Inventory/orderReceive',NULL,7,1,1,1,1,1,1,1,'2017-11-30 05:49:40',1,'2017-12-21 21:15:13'),(186,'Waiver',NULL,'I,V,U,D,S',52,'admin/waiverInfo',NULL,6,1,1,1,1,1,1,1,'2017-11-30 09:39:02',1,'2017-12-26 10:10:03'),(187,'Leave Type',NULL,'I,V,U,D,S',49,'teacher/leaveType',NULL,4,1,1,1,1,1,1,1,'2017-11-30 11:12:26',NULL,NULL),(188,'Fresher Bill Generate',NULL,'I,V,U,D,S',52,'finance/fresherBillGenerate',NULL,5,1,1,1,1,1,1,1,'2017-12-03 09:08:35',1,'2017-12-26 10:09:20'),(189,'Issue Item',NULL,'I,V,U,D,S',57,'Inventory/issueItem',NULL,5,1,1,1,1,1,1,1,'2017-12-03 10:37:54',1,'2017-12-04 14:50:34'),(190,'Issue Return',NULL,'I,V,U,D,S',57,'Inventory/issueReturn',NULL,6,1,1,1,1,1,1,1,'2017-12-06 04:57:00',1,'2017-12-06 10:58:11'),(191,'PO Return',NULL,'I,V,U,D,S',57,'Inventory/orderReturn',NULL,11,1,1,1,1,1,1,1,'2017-12-06 10:00:49',1,'2017-12-21 21:15:38'),(192,'Files And Directory',NULL,'I,V,U,D,S',58,'AdminSkillDev/index',NULL,1,1,1,1,1,1,1,1,'2017-12-20 11:10:15',NULL,NULL),(193,'Files  And Directory',NULL,'I,V,U,D,S',58,'AdminSkillDev/index',NULL,16,1,1,1,1,1,1,1,'2017-12-21 05:34:36',NULL,NULL),(194,'Attendance',NULL,'I,V,U,D,S',49,'employee/attendance',NULL,5,1,1,1,1,1,1,1,'2017-12-26 04:07:50',NULL,NULL),(195,'Store',NULL,'I,V,U,D,S',57,'setup/store',NULL,12,1,1,1,1,1,1,1,'2017-12-26 09:35:07',1,'2017-12-26 15:37:23'),(196,'Leave Report',NULL,'I,V,U,D,S',49,'Teacher/leaveReport',NULL,5,1,1,1,1,1,1,1,'2017-12-26 10:52:22',1,'2017-12-26 17:30:44'),(197,'Stock report',NULL,'I,V,U,D,S',57,'Inventory/itemStock',NULL,12,1,1,1,1,1,1,1,'2017-12-26 13:43:42',1,'2017-12-26 19:44:48'),(198,'Admission Form',NULL,'I,V,U,D,S',27,'admission/directAdmission',NULL,3,1,1,1,1,1,1,1,'2018-01-25 06:23:54',NULL,NULL),(199,'User Log',NULL,'I,V,U,D,S',24,'admin/userLog',NULL,10,1,1,1,1,1,1,1,'2018-01-25 08:43:57',NULL,NULL),(200,'Application Setting',NULL,'I,V,U,D,S',24,'ApplicationSetting/index',NULL,10,1,1,1,1,1,1,1,'2018-03-11 06:00:52',NULL,NULL),(201,'Application Settings',NULL,'I,V,U,D,S',24,'ApplicationSetting/index',NULL,15,1,1,1,1,1,0,1,'2018-03-11 11:50:40',1,'2018-03-12 09:52:20'),(202,'Resident Bill Info',NULL,'I,V,U,D,S',52,'finance/residentBillAllShow',NULL,8,1,1,1,1,1,1,1,'2018-03-22 10:34:54',NULL,NULL),(203,'Item',NULL,'I,V,U,D,S',59,'library/itemList',NULL,2,1,1,1,1,1,1,1,'2018-04-01 10:10:22',1,'2018-04-04 16:21:39'),(204,'Dashboard',NULL,'I,V,U,D,S',59,'library/dashboard',NULL,1,1,1,1,1,1,1,1,'2018-04-02 06:14:22',1,'2018-04-02 12:23:45'),(205,'Department Course List',NULL,'I,V,U,D,S',50,'course/departmentWiseCourseMapList',NULL,6,1,1,1,1,1,1,1,'2018-04-02 10:47:30',1,'2018-04-02 16:48:30'),(206,'Library Author',NULL,'I,V,U,D,S',24,'setup/libAuthor',NULL,3,1,1,1,1,1,1,1,'2018-04-05 04:20:19',1,'2018-04-05 14:37:12'),(207,'Library Publisher',NULL,'I,V,U,D',24,'setup/libPublisher',NULL,8,1,1,1,1,0,1,1,'2018-04-05 06:17:59',NULL,NULL),(208,'Direct Item Received',NULL,'I,V,U,D,S',59,'library/stock',NULL,3,1,1,1,1,1,1,1,'2018-04-07 09:17:22',1,'2018-04-07 16:44:04'),(209,'Requisition Report',NULL,'I,V,U,D,S',60,'RequisitionReport/requisitionReport',NULL,1,1,1,1,1,1,1,1,'2018-04-07 10:28:57',1,'2018-04-09 12:55:53'),(210,'Email Template',NULL,'I,V,U,D,S',24,'setup/emailTemplate',NULL,8,1,1,1,1,1,1,1,'2018-04-08 06:15:37',NULL,NULL),(211,'Issue Item Report',NULL,'I,V,U,D,S',57,'IssueItemReport/issueItemReport',NULL,0,1,1,1,1,1,1,1,'2018-04-09 05:00:14',NULL,NULL),(212,'Purchase Order Report',NULL,'I,V,U,D,S',57,'inventory/purchaseOrderReport',NULL,0,1,1,1,1,1,1,1,'2018-04-10 06:42:59',NULL,NULL),(213,'Library Member List',NULL,'I,V,U,D,S',59,'library/applicationForLibraryMember',NULL,4,1,1,1,1,1,1,1,'2018-04-10 08:36:04',1,'2018-04-12 09:19:33'),(214,'PO Receive Report',NULL,'I,V,U,D,S',57,'inventory/purchaseOrderReceiveReport',NULL,0,1,1,1,1,1,1,1,'2018-04-10 10:53:01',NULL,NULL),(215,'PO Return Report',NULL,'I,V,U,D,S',57,'inventory/purchaseOrderReturnReport',NULL,0,1,1,1,1,1,1,1,'2018-04-10 11:39:30',NULL,NULL),(216,'Issue Return Report',NULL,'I,V,U,D,S',57,'inventory/issueReturnReport',NULL,0,1,1,1,1,1,1,1,'2018-04-11 06:57:07',NULL,NULL),(217,'Library Item Borrow',NULL,'I,V,U,D,S',59,'library/libraryBookBorrow',NULL,5,1,1,1,1,1,1,1,'2018-04-12 10:04:15',1,'2018-06-30 15:24:13'),(218,'User List',NULL,'I,V,U,D,S',24,'admin/userMultipleMailSendList',NULL,5,1,1,1,1,1,1,1,'2018-04-15 08:49:26',NULL,NULL),(219,'Opening Balance',NULL,'I,V,U,D,S',57,'inventory/openingBalance',NULL,6,1,1,1,1,1,1,1,'2018-04-19 04:12:51',NULL,NULL),(220,'Exam Type',NULL,'I,V,U,D,S',53,'exam/examType',NULL,4,1,1,1,1,1,1,1,'2018-05-05 04:44:20',NULL,NULL),(221,'Library Item List',NULL,'I,V,U,D,S',59,'library/libraryBookListBarcode',NULL,6,1,1,1,1,1,1,1,'2018-06-06 04:32:55',1,'2018-06-30 15:26:12'),(222,'Item Borrow Return',NULL,'I,V,U,D,S',59,'library/libraryItemBorrowReturn',NULL,7,1,1,1,1,1,1,1,'2018-06-23 11:33:39',NULL,NULL),(223,'Library Current Stock ',NULL,'I,V,U,D,S',59,'library/listStockCurrent',NULL,9,1,1,1,1,1,1,1,'2018-06-27 08:31:57',NULL,NULL),(224,'library Member Application',NULL,'I,V,U,D,S',59,'library/libraryMemberApplicationTeacher',NULL,10,1,1,1,1,1,1,1,'2018-06-28 08:27:11',NULL,NULL),(225,'Issue List',NULL,'I,V,U,D,S',59,'library/borrowList',NULL,11,1,1,1,1,1,1,1,'2018-07-04 10:02:47',NULL,NULL),(226,'Item Borrow By You',NULL,'I,V,U,D,S',59,'library/libraryMemberItemBorrowHistory',NULL,13,1,1,1,1,1,1,1,'2018-07-05 09:10:07',NULL,NULL);
/*!40000 ALTER TABLE `ati_module_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ati_modules`
--

DROP TABLE IF EXISTS `ati_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ati_modules` (
  `MODULE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_NAME` varchar(70) NOT NULL,
  `MODULE_NAME_BN` varchar(500) DEFAULT NULL,
  `CATEGORY` varchar(60) NOT NULL,
  `SL_NO` tinyint(2) NOT NULL,
  `MODULE_ICON` varchar(50) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`MODULE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ati_modules`
--

LOCK TABLES `ati_modules` WRITE;
/*!40000 ALTER TABLE `ati_modules` DISABLE KEYS */;
INSERT INTO `ati_modules` VALUES (24,'Setup','','',1,'fa fa-wrench',1,1,'2015-09-07 03:49:41',1,'2017-09-24 16:36:23'),(27,'Admission','','',5,'fa fa-mortar-board (alias)',1,1,'2015-09-17 03:23:39',31,'2017-03-18 15:25:44'),(29,'Address Setup','','',3,'fa fa-location-arrow',1,1,'2015-10-18 00:17:57',1,'2017-07-11 16:36:23'),(44,'Academic Setup','','',2,'fa fa-cog',1,31,'2016-01-27 03:52:26',31,'2017-03-18 15:25:05'),(48,'Applicant','','',4,'fa fa-users',1,31,'2016-02-03 05:50:43',31,'2017-03-18 15:25:38'),(49,'HR','','',6,'fa fa-users',1,31,'2017-04-30 04:43:59',1,'2017-05-11 15:10:29'),(50,'Academic Course','','',7,'fa fa-book',1,1,'2017-05-11 09:09:40',1,'2017-07-11 16:27:19'),(51,'E-Registration','','',4,'fa fa-recycle',1,1,'2017-05-27 09:24:22',1,'2017-07-11 16:33:28'),(52,'Finance','','',8,'fa fa-dollar',1,1,'2017-07-23 09:52:46',1,'2017-07-23 15:53:29'),(53,'Exam Setup','','',9,'fa fa-navicon',1,1,'2017-07-25 03:58:55',1,'2017-08-28 11:50:58'),(54,'Result Processing','','',10,'fa fa-book',1,1,'2017-08-28 05:54:02',1,'2017-08-28 12:10:38'),(55,'Exam Report','','',11,'fa fa-book',1,1,'2017-08-28 06:02:12',1,'2017-08-28 12:10:43'),(56,'Others','','',12,'',1,1,'2017-09-20 06:31:40',1,'2017-09-21 09:53:38'),(57,'Inventory','','',121,'fa fa-navicon',1,1,'2017-11-21 10:44:10',1,'2017-11-21 16:44:39'),(58,'File Management','','',14,'fa fa-cog',1,1,'2017-12-20 11:06:11',1,'2017-12-21 11:32:09'),(59,'Library Management','','',15,'fa fa-book',1,1,'2018-04-01 10:07:39',1,'2018-04-01 16:08:02'),(60,'Inventory Report','','',16,'',1,1,'2018-04-09 06:55:25',1,'2018-04-09 12:57:24');
/*!40000 ALTER TABLE `ati_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `POST_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POST_TITLE` varchar(350) DEFAULT NULL,
  `POST_CONTENT` text,
  `POST_BANNER` varchar(100) DEFAULT NULL,
  `PUBLISH_DT` datetime DEFAULT NULL,
  `APPROVE_BY_ADMIN` int(11) DEFAULT '0' COMMENT '1=published,2=review ,3=reject,4=pending',
  `REMARKS` text,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`POST_ID`),
  KEY `FK_BLOG_AUTHOR` (`ENTERED_BY`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'test','<p><p>Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just zebra, and my wolves quack! Blowzy red vixens fight for a quick.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the.</p><br></p>','Chrysanthemum.jpg','2017-09-20 00:00:00',1,'',1,18,'2017-09-20 06:12:29',NULL,NULL),(2,'This is blog title ','<p><p>Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just zebra, and my wolves quack! Blowzy red vixens fight for a quick.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the.</p><br></p>','Chrysanthemum.jpg','2017-09-20 00:00:00',1,'',1,18,'2017-09-20 06:18:35',NULL,NULL),(3,' This is blog title ','<p><p>Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just zebra, and my wolves quack! Blowzy red vixens fight for a quick.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the.</p><br></p>','Desert.jpg',NULL,1,'',1,18,'2017-09-20 09:11:14',NULL,NULL),(4,'Blog Title','<p><p>Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just zebra, and my wolves quack! Blowzy red vixens fight for a quick.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the.</p><br></p>','Chrysanthemum.jpg',NULL,1,'',1,18,'2017-09-20 09:12:12',NULL,NULL),(5,'This is blog title','<p><p>Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just zebra, and my wolves quack! Blowzy red vixens fight for a quick.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the.</p><br></p>','Jellyfish.jpg',NULL,1,'',1,18,'2017-09-20 09:12:31',NULL,NULL),(6,'Blog Title','Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack!\" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch \"Jeopardy!\", Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just<p><br></p>','Jellyfish1.jpg',NULL,1,'',1,18,'2017-09-20 09:23:24',NULL,NULL),(7,'This is blog title','<p>Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack!\" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch \"Jeopardy!\", Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just<br></p>','Koala.jpg',NULL,1,'',1,18,'2017-09-20 09:23:36',NULL,NULL),(8,'This is blog title','<p>Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack!\" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch \"Jeopardy!\", Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just<br></p>','Lighthouse.jpg',NULL,1,'',1,18,'2017-09-20 09:23:46',NULL,NULL);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_comment`
--

DROP TABLE IF EXISTS `blog_post_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_comment` (
  `POST_CMT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POST_ID` bigint(20) NOT NULL,
  `REPLY_CMT_ID` bigint(20) DEFAULT NULL,
  `CMT_COMMENT` text,
  `COMMENT_BY` int(11) NOT NULL,
  `COMMENT_DT` datetime DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`POST_CMT_ID`),
  KEY `FK_POST_ID` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_comment`
--

LOCK TABLES `blog_post_comment` WRITE;
/*!40000 ALTER TABLE `blog_post_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `TAG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POST_ID` bigint(20) NOT NULL,
  `POST_TAGS` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`TAG_ID`),
  KEY `FK_TAG_POST_ID` (`POST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (14,1,'C'),(15,2,'C'),(16,3,'C++'),(17,4,'JAVA'),(18,5,'C'),(19,6,'C'),(20,7,'C'),(21,8,'C');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_paymentmst`
--

DROP TABLE IF EXISTS `bm_paymentmst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bm_paymentmst` (
  `TRX_TRAN_NO` bigint(14) NOT NULL DEFAULT '0',
  `TRX_TRAN_DT` date DEFAULT NULL,
  `TRAN_AMT` double DEFAULT NULL,
  `VOUCHER_NO` bigint(14) DEFAULT NULL,
  `TRX_CODE_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `COLLECTED_BY` varchar(16) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `TCANCEL_FG` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(16) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(16) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `UPDATE_TIMESTAMP` date DEFAULT NULL,
  PRIMARY KEY (`TRX_TRAN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_paymentmst`
--

LOCK TABLES `bm_paymentmst` WRITE;
/*!40000 ALTER TABLE `bm_paymentmst` DISABLE KEYS */;
INSERT INTO `bm_paymentmst` VALUES (17000000000006,'2017-09-09',24100,NULL,'PM','1',NULL,'Payment',1,'1','2017-09-09 04:51:18',NULL,NULL),(17000000000007,'2017-09-09',20000,NULL,'PM','1',NULL,'',1,'1','2017-09-09 04:54:38',NULL,NULL);
/*!40000 ALTER TABLE `bm_paymentmst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_paymodeamt`
--

DROP TABLE IF EXISTS `bm_paymodeamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bm_paymodeamt` (
  `MR_TRAN_NO` bigint(14) NOT NULL DEFAULT '0',
  `MR_TRAN_DT` date NOT NULL,
  `TRX_TRAN_NO` bigint(14) NOT NULL,
  `MR_TRAN_AMT` double NOT NULL,
  `VOUCHER_NO` bigint(14) NOT NULL,
  `PAYMENT_MODE` varchar(2) COLLATE utf8_croatian_ci NOT NULL,
  `TRX_CODE_NO` varchar(10) COLLATE utf8_croatian_ci NOT NULL,
  `MRCANCEL_FG` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL,
  `CREATED_BY` varchar(16) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(16) COLLATE utf8_croatian_ci DEFAULT NULL,
  `UPDATE_TIMESTAMP` date DEFAULT NULL,
  PRIMARY KEY (`MR_TRAN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_paymodeamt`
--

LOCK TABLES `bm_paymodeamt` WRITE;
/*!40000 ALTER TABLE `bm_paymodeamt` DISABLE KEYS */;
INSERT INTO `bm_paymodeamt` VALUES (17000000000006,'2017-09-09',17000000000006,24100,17000000000006,'CS','PM',NULL,'Payment',1,'1','2017-09-09 04:51:18',NULL,NULL),(17000000000007,'2017-09-09',17000000000007,20000,17000000000007,'CS','PM',NULL,'',1,'1','2017-09-09 04:54:38',NULL,NULL);
/*!40000 ALTER TABLE `bm_paymodeamt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_trxcode_info`
--

DROP TABLE IF EXISTS `bm_trxcode_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bm_trxcode_info` (
  `TRX_CODE_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL DEFAULT '',
  `NARRATION` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `CRDR_TAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `REG_NO` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`TRX_CODE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_trxcode_info`
--

LOCK TABLES `bm_trxcode_info` WRITE;
/*!40000 ALTER TABLE `bm_trxcode_info` DISABLE KEYS */;
INSERT INTO `bm_trxcode_info` VALUES ('DC','Discount','CR',NULL),('DR','Discount Return','CR',NULL),('GR','Gross Return','DR',NULL),('GS','Gross Sales','CR',NULL),('PM','Payment','DR',NULL),('RF','Refund','CR',NULL),('VA','VAT','CR',NULL),('VR','VAT Return','DR',NULL);
/*!40000 ALTER TABLE `bm_trxcode_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_vn_ledgers`
--

DROP TABLE IF EXISTS `bm_vn_ledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bm_vn_ledgers` (
  `VLEDGER_NO` bigint(14) NOT NULL DEFAULT '0',
  `VLEDGER_DT` date DEFAULT NULL,
  `TRX_CODE_NO` varchar(10) COLLATE utf8_croatian_ci DEFAULT NULL,
  `TRX_TRAN_NO` bigint(14) DEFAULT NULL,
  `MR_TRAN_NO` bigint(14) DEFAULT NULL,
  `VOUCHER_NO` bigint(14) DEFAULT NULL,
  `APPROVAL_NO` bigint(14) DEFAULT NULL,
  `CR_AMT` double DEFAULT NULL,
  `DR_AMT` double DEFAULT NULL,
  `PITEM_TQTY` int(11) DEFAULT NULL,
  `CASH_POINT` int(11) DEFAULT NULL,
  `SHIFT_NO` varchar(5) COLLATE utf8_croatian_ci DEFAULT NULL,
  `SHIFT_NAME` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `LCANCEL_FG` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`VLEDGER_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_vn_ledgers`
--

LOCK TABLES `bm_vn_ledgers` WRITE;
/*!40000 ALTER TABLE `bm_vn_ledgers` DISABLE KEYS */;
INSERT INTO `bm_vn_ledgers` VALUES (17000000000014,'2017-09-09','GS',17000000000009,NULL,17000000000006,NULL,20000,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:51:18',NULL,NULL),(17000000000015,'2017-09-09','GS',17000000000010,NULL,17000000000006,NULL,3000,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:51:18',NULL,NULL),(17000000000016,'2017-09-09','GS',17000000000011,NULL,17000000000006,NULL,1000,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:51:18',NULL,NULL),(17000000000017,'2017-09-09','GS',17000000000012,NULL,17000000000006,NULL,100,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:51:18',NULL,NULL),(17000000000018,'2017-09-09','PM',17000000000006,NULL,17000000000006,NULL,NULL,24100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:51:18',NULL,NULL),(17000000000019,'2017-09-09','GS',17000000000013,NULL,17000000000007,NULL,20000,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:54:38',NULL,NULL),(17000000000020,'2017-09-09','GS',17000000000014,NULL,17000000000007,NULL,3000,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:54:38',NULL,NULL),(17000000000021,'2017-09-09','PM',17000000000007,NULL,17000000000007,NULL,NULL,20000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-09 04:54:38',NULL,NULL);
/*!40000 ALTER TABLE `bm_vn_ledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `building_floor`
--

DROP TABLE IF EXISTS `building_floor`;
/*!50001 DROP VIEW IF EXISTS `building_floor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `building_floor` AS SELECT 
 1 AS `FLOOR_ID`,
 1 AS `FLOOR_NAME`,
 1 AS `ACTIVE_FLAG`,
 1 AS `FLOOR_SL_NO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `class_schedule`
--

DROP TABLE IF EXISTS `class_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_schedule` (
  `SCHEDULE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOM_ID` int(11) DEFAULT NULL,
  `SESSION_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) DEFAULT NULL,
  `BATCH_ID` int(11) DEFAULT NULL,
  `SECTION_ID` int(11) DEFAULT NULL,
  `TEACHER_ID` int(11) DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `DAY` varchar(11) DEFAULT NULL,
  `START_TIME` time NOT NULL,
  `END_TIME` time NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(10) DEFAULT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`SCHEDULE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_schedule`
--

LOCK TABLES `class_schedule` WRITE;
/*!40000 ALTER TABLE `class_schedule` DISABLE KEYS */;
INSERT INTO `class_schedule` VALUES (1,NULL,6,1,2,1,8,105,'SAT','12:00:00','01:00:00',1,NULL,'2017-09-17 06:42:11',NULL,NULL),(2,105,6,1,2,1,8,415,'SAT','01:00:00','02:00:00',1,NULL,'2017-09-17 06:44:01',NULL,NULL),(3,105,6,1,2,1,8,416,'MON','10:00:00','11:00:00',1,NULL,'2017-09-17 09:59:59',NULL,NULL),(4,1002,6,1,2,1,8,417,'THU','09:00:00','10:00:00',1,NULL,'2017-09-17 10:42:30',NULL,NULL);
/*!40000 ALTER TABLE `class_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (2,'Afghanistan','Afghan'),(3,'Albania','Albanian'),(4,'Algeria','Algerian'),(5,'Andorra','Andorran'),(6,'Angola','Angolan'),(7,'Antigua and Barbuda','Antiguans, Barbudans'),(8,'Argentina','Argentinean'),(9,'Armenia','Armenian'),(10,'Australia','Australian'),(11,'Austria','Austrian'),(12,'Azerbaijan','Azerbaijani'),(13,'The Bahamas','Bahamian'),(14,'Bahrain','Bahraini'),(15,'Bangladesh','Bangladeshi'),(16,'Barbados','Barbadian'),(17,'Belarus','Belarusian'),(18,'Belgium','Belgian'),(19,'Belize','Belizean'),(20,'Benin','Beninese'),(21,'Bhutan','Bhutanese'),(22,'Bolivia','Bolivian'),(23,'Bosnia and Herzegovina','Bosnian, Herzegovinian'),(24,'Botswana','Motswana (singular), Batswana (plural)'),(25,'Brazil','Brazilian'),(26,'Brunei','Bruneian'),(27,'Bulgaria','Bulgarian'),(28,'Burkina Faso','Burkinabe'),(29,'Burundi','Burundian'),(30,'Cambodia','Cambodian'),(31,'Cameroon','Cameroonian'),(32,'Canada','Canadian'),(33,'Cape Verde','Cape Verdian'),(34,'Central African Republic','Central African'),(35,'Chad','Chadian'),(36,'Chile','Chilean'),(37,'China','Chinese'),(38,'Colombia','Colombian'),(39,'Comoros','Comoran'),(40,'Congo, Republic of the','Congolese'),(41,'Congo, Democratic Republic of the','Congolese'),(42,'Costa Rica','Costa Rican'),(43,'Cote d\'Ivoire','Ivorian'),(44,'Croatia','Croatian'),(45,'Cuba','Cuban'),(46,'Cyprus','Cypriot'),(47,'Czech Republic','Czech'),(48,'Denmark','Danish'),(49,'Djibouti','Djibouti'),(50,'Dominica','Dominican'),(51,'Dominican Republic','Dominican'),(52,'East Timor','East Timorese'),(53,'Ecuador','Ecuadorean'),(54,'Egypt','Egyptian'),(55,'El Salvador','Salvadoran'),(56,'Equatorial Guinea','Equatorial Guinean'),(57,'Eritrea','Eritrean'),(58,'Estonia','Estonian'),(59,'Ethiopia','Ethiopian'),(60,'Fiji','Fijian'),(61,'Finland','Finnish'),(62,'France','French'),(63,'Gabon','Gabonese'),(64,'The Gambia','Gambian'),(65,'Georgia','Georgian'),(66,'Germany','German'),(67,'Ghana','Ghanaian'),(68,'Greece','Greek'),(69,'Grenada','Grenadian'),(70,'Guatemala','Guatemalan'),(71,'Guinea','Guinean'),(72,'Guinea-Bissau','Guinea-Bissauan'),(73,'Guyana','Guyanese'),(74,'Haiti','Haitian'),(75,'Honduras','Honduran'),(76,'Hungary','Hungarian'),(77,'Iceland','Icelander'),(78,'India','Indian'),(79,'Indonesia','Indonesian'),(80,'Iran','Iranian'),(81,'Iraq','Iraqi'),(82,'Ireland','Irish'),(83,'Israel','Israeli'),(84,'Italy','Italian'),(85,'Jamaica','Jamaican'),(86,'Japan','Japanese'),(87,'Jordan','Jordanian'),(88,'Kazakhstan','Kazakhstani'),(89,'Kenya','Kenyan'),(90,'Kiribati','I-Kiribati'),(91,'Korea, North','North Korean'),(92,'Korea, South','South Korean'),(93,'Kuwait','Kuwaiti'),(94,'Kyrgyz Republic','Kirghiz'),(95,'Laos','Laotian'),(96,'Latvia','Latvian'),(97,'Lebanon','Lebanese'),(98,'Lesotho','Mosotho'),(99,'Liberia','Liberian'),(100,'Libya','Libyan'),(101,'Liechtenstein','Liechtensteiner'),(102,'Lithuania','Lithuanian'),(103,'Luxembourg','Luxembourger'),(104,'Macedonia','Macedonian'),(105,'Madagascar','Malagasy'),(106,'Malawi','Malawian'),(107,'Malaysia','Malaysian'),(108,'Maldives','Maldivan'),(109,'Mali','Malian'),(110,'Malta','Maltese'),(111,'Marshall Islands','Marshallese'),(112,'Mauritania','Mauritanian'),(113,'Mauritius','Mauritian'),(114,'Mexico','Mexican'),(115,'Federated States of Micronesia','Micronesian'),(116,'Moldova','Moldovan'),(117,'Monaco','Monegasque'),(118,'Mongolia','Mongolian'),(119,'Morocco','Moroccan'),(120,'Mozambique','Mozambican'),(121,'Myanmar (Burma)','Burmese'),(122,'Namibia','Namibian'),(123,'Nauru','Nauruan'),(124,'Nepal','Nepalese'),(125,'Netherlands','Dutch'),(126,'New Zealand','New Zealander'),(127,'Nicaragua','Nicaraguan'),(128,'Niger','Nigerien'),(129,'Nigeria','Nigerian'),(130,'Norway','Norwegian'),(131,'Oman','Omani'),(132,'Pakistan','Pakistani'),(133,'Palau','Palauan'),(134,'Panama','Panamanian'),(135,'Papua New Guinea','Papua New Guinean'),(136,'Paraguay','Paraguayan'),(137,'Peru','Peruvian'),(138,'Philippines','Filipino'),(139,'Poland','Polish'),(140,'Portugal','Portuguese'),(141,'Qatar','Qatari'),(142,'Romania','Romanian'),(143,'Russia','Russian'),(144,'Rwanda','Rwandan'),(145,'Saint Kitts and Nevis','Kittian and Nevisian'),(146,'Saint Lucia','Saint Lucian'),(147,'Samoa','Samoan'),(148,'San Marino','Sammarinese'),(149,'Sao Tome and Principe','Sao Tomean'),(150,'Saudi Arabia','Saudi Arabian'),(151,'Senegal','Senegalese'),(152,'Serbia and Montenegro','Serbian'),(153,'Seychelles','Seychellois'),(154,'Sierra Leone','Sierra Leonean'),(155,'Singapore','Singaporean'),(156,'Slovakia','Slovak'),(157,'Slovenia','Slovene'),(158,'Solomon Islands','Solomon Islander'),(159,'Somalia','Somali'),(160,'South Africa','South African'),(161,'Spain','Spanish'),(162,'Sri Lanka','Sri Lankan'),(163,'Sudan','Sudanese'),(164,'Suriname','Surinamer'),(165,'Swaziland','Swazi'),(166,'Sweden','Swedish'),(167,'Switzerland','Swiss'),(168,'Syria','Syrian'),(169,'Taiwan','Taiwanese'),(170,'Tajikistan','Tadzhik'),(171,'Tanzania','Tanzanian'),(172,'Thailand','Thai'),(173,'Togo','Togolese'),(174,'Tonga','Tongan'),(175,'Trinidad and Tobago','Trinidadian'),(176,'Tunisia','Tunisian'),(177,'Turkey','Turkish'),(178,'Turkmenistan','Turkmen'),(179,'Tuvalu','Tuvaluan'),(180,'Uganda','Ugandan'),(181,'Ukraine','Ukrainian'),(182,'United Arab Emirates','Emirian'),(183,'United Kingdom','British'),(184,'United States','American'),(185,'Uruguay','Uruguayan'),(186,'Uzbekistan','Uzbekistani'),(187,'Vanuatu','Ni-Vanuatu'),(188,'Vatican City (Holy See)','none'),(189,'Venezuela','Venezuelan'),(190,'Vietnam','Vietnamese'),(191,'Yemen','Yemeni'),(192,'Zambia','Zambian'),(193,'Zimbabwe','Zimbabwean');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `EVENT_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `E_TYPE_ID` smallint(6) unsigned NOT NULL,
  `E_TITLE` varchar(200) NOT NULL,
  `E_DESC` text CHARACTER SET latin1 NOT NULL,
  `ATTACHMENT` varchar(100) DEFAULT NULL,
  `START_DT` date NOT NULL,
  `END_DT` date NOT NULL,
  `START_TIME` time DEFAULT NULL,
  `END_TIME` time DEFAULT NULL,
  `IS_CANCELED` tinyint(1) DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_type` (
  `E_TYPE_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `E_TYPE_NAME` varchar(100) NOT NULL,
  `E_DESC` varchar(200) DEFAULT NULL,
  `IS_CLASS` tinyint(1) DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`E_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_type`
--

LOCK TABLES `event_type` WRITE;
/*!40000 ALTER TABLE `event_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(7) NOT NULL DEFAULT '#3a87ad',
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(50) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Annual Debate','The move on Saturday came two day before an independence referendum in Iraq\'s semi-autonomous Kurdish region - a vote denounced by Ankara as a \"mistake\" and a threat to its security and regional stability.','#229e3d','2017-10-02 00:00:00','2017-10-03 00:00:00','true'),(2,'KYAU Eid-ul-Fitr holiday schedules','KYAU Eid-ul-Fitr holiday schedules','#cc2db2','2017-10-13 00:00:00','2017-10-14 00:00:00','true'),(3,'Khwaja Yunus Ali University (KYAU) will remain closed on 12th May, 2017 on the occasion of SHAB-E-BARAT.','Khwaja Yunus Ali University (KYAU) will remain closed on 12th May, 2017 on the occasion of SHAB-E-BARAT.','#44c741','2017-10-20 00:00:00','2017-10-21 00:00:00','true'),(4,'The University shall remain closed on Monday 24 April, 2017 on account of Shab e-Meraj.','The University shall remain closed on Monday 24 April, 2017 on account of Shab e-Meraj.','#cc962d','2017-10-24 00:00:00','2017-10-25 00:00:00','true'),(5,'Final Sports','This final sport held for department of cse and EEE','#2db9cc','2017-10-15 00:00:00','2017-10-16 00:00:00','true'),(6,'The University shall remain closed on Monday 24 April, 2017 on account of Shab e-Meraj.','The University shall remain closed on Monday 24 April, 2017 on account of Shab e-Meraj.','#3a87ad','2017-10-10 00:00:00','2017-10-11 00:00:00','true'),(7,'ts','hghg','#36eb3d','2017-10-06 00:00:00','2017-10-07 00:00:00','true'),(8,'Eid ul Azha','Eid','#c71f84','2017-12-04 00:00:00','2017-12-07 00:00:00','true'),(10,'Victory Day','National Holiday','#eb153b','2017-12-16 00:00:00','2017-12-17 00:00:00','true'),(11,'Crismas Day','Crismas Day','#3a87ad','2017-12-25 00:00:00','2017-12-26 00:00:00','true'),(16,'Language Martyrs\' Day','Bangladesh Government Holiday','#cc4980','2018-02-21 00:00:00','2018-02-22 00:00:00','true'),(17,'saraswati puja','saraswati puja','#3a87ad','2018-01-22 00:00:00','2018-01-24 00:00:00','true'),(18,'Annual Metting','Annual Metting','#cc4949','2018-01-25 00:00:00','2018-01-26 00:00:00','true'),(19,'Maghi Purnima','Maghi Purnima','#4d2838','2018-01-31 00:00:00','2018-02-01 00:00:00','true'),(20,'Pre Exam Metting','Pre Exam Metting','#496ecc','2018-01-11 00:00:00','2018-01-12 00:00:00','true'),(21,'Sheikh Mujibur Rahman\'s Birthday','Sheikh Mujibur Rahman\'s Birthday','#496ecc','2018-03-17 00:00:00','2018-03-18 00:00:00','true'),(22,'Bangladesh Independence Day','Bangladesh Independence Day','#cc4949','2018-03-26 00:00:00','2018-03-27 00:00:00','true'),(23,'sri sri shivarathri boruto','sri sri shivarathri boruto','#496ecc','2018-02-18 00:00:00','2018-02-19 00:00:00','true'),(24,'shuvo doljatra','shuvo doljatra','#4ccc49','2018-03-01 00:00:00','2018-03-02 00:00:00','true'),(25,'Post Exam Metting','Post Exam Metting','#000000','2018-02-08 00:00:00','2018-02-09 00:00:00','true'),(26,'gdg','dg','#3a87ad','2018-01-10 00:00:00','2018-01-11 00:00:00','true'),(27,'test','test','#3a87ad','2018-01-02 00:00:00','2018-01-03 00:00:00','true');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_application`
--

DROP TABLE IF EXISTS `exam_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_application` (
  `EX_APP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXAM_APP_TITLE` varchar(200) DEFAULT NULL,
  `EXAM_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `START_DT` date DEFAULT NULL,
  `END_DT` date DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`EX_APP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_application`
--

LOCK TABLES `exam_application` WRITE;
/*!40000 ALTER TABLE `exam_application` DISABLE KEYS */;
INSERT INTO `exam_application` VALUES (1,'Mid Term Examination summer 2017',2,6,'2017-09-07','2017-09-30',19,'2017-09-07 09:21:25',NULL,NULL,1);
/*!40000 ALTER TABLE `exam_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_eligible`
--

DROP TABLE IF EXISTS `exam_eligible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_eligible` (
  `EX_ELIGIBLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EX_APP_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`EX_ELIGIBLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_eligible`
--

LOCK TABLES `exam_eligible` WRITE;
/*!40000 ALTER TABLE `exam_eligible` DISABLE KEYS */;
INSERT INTO `exam_eligible` VALUES (1,1,0,1,1,2,NULL,'2017-09-07 09:21:46',NULL,NULL,NULL),(2,1,0,1,1,7,NULL,'2017-09-07 09:21:47',NULL,NULL,NULL),(3,1,0,1,1,8,NULL,'2017-09-07 09:25:22',NULL,NULL,NULL),(4,1,0,1,1,273,NULL,'2017-09-07 09:25:29',NULL,NULL,NULL),(5,1,0,1,1,9,NULL,'2017-09-07 10:05:11',NULL,NULL,NULL),(6,1,0,1,1,10,NULL,'2017-09-07 10:05:11',NULL,NULL,NULL);
/*!40000 ALTER TABLE `exam_eligible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_grade`
--

DROP TABLE IF EXISTS `exam_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_grade` (
  `GR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GR_POLICY_ID` int(11) DEFAULT NULL,
  `GR_LETTER` char(2) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `GR_MARKS_FROM` double NOT NULL,
  `GR_MARKS_TO` double NOT NULL,
  `GRADE_POINT` double NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`GR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_grade`
--

LOCK TABLES `exam_grade` WRITE;
/*!40000 ALTER TABLE `exam_grade` DISABLE KEYS */;
INSERT INTO `exam_grade` VALUES (10,14,'A+',80,100,4,1,1,'2017-08-01 10:06:55',NULL,NULL),(11,14,'A',75,79,3.75,1,1,'2017-08-01 10:07:42',NULL,NULL),(12,14,'A-',70,74,3.5,1,1,'2017-08-01 10:08:06',NULL,NULL),(13,14,'B+',65,69,3.25,1,1,'2017-08-01 10:08:31',NULL,NULL),(14,14,'B',60,64,3,1,1,'2017-08-01 10:08:51',NULL,NULL),(15,14,'B-',55,59,2.75,1,1,'2017-08-01 10:09:15',NULL,NULL),(16,14,'C+',50,54,2.5,1,1,'2017-08-01 10:09:34',NULL,NULL),(17,14,'C',45,49,2.25,1,1,'2017-08-01 10:09:59',NULL,NULL),(18,14,'D',40,44,2,1,1,'2017-08-01 10:10:24',NULL,NULL),(19,14,'F',0,39,0,1,1,'2017-08-01 10:11:03',NULL,NULL),(20,14,'I',0,0,0,1,1,'2017-08-01 10:11:21',NULL,NULL),(21,14,'W',0,0,0,1,1,'2017-08-01 10:11:27',NULL,NULL);
/*!40000 ALTER TABLE `exam_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_grade_policy`
--

DROP TABLE IF EXISTS `exam_grade_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_grade_policy` (
  `GR_POLICY_ID` tinyint(3) NOT NULL AUTO_INCREMENT,
  `GR_POLICY_NAME` varchar(35) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `GR_POLICY_DESC` text CHARACTER SET utf8 COLLATE utf8_croatian_ci,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`GR_POLICY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_grade_policy`
--

LOCK TABLES `exam_grade_policy` WRITE;
/*!40000 ALTER TABLE `exam_grade_policy` DISABLE KEYS */;
INSERT INTO `exam_grade_policy` VALUES (14,'Summer 2017','Summer 2017 Grading Policy','2017-08-13 00:00:00','2017-08-26 00:00:00',1,1,'2017-08-06 04:38:10',NULL,NULL),(17,'eresr','serser','2017-11-29 00:00:00','2017-11-29 00:00:00',1,1,'2017-11-20 06:48:14',NULL,NULL);
/*!40000 ALTER TABLE `exam_grade_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_grade_sheet`
--

DROP TABLE IF EXISTS `exam_grade_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_grade_sheet` (
  `EXAM_GRADE_SHEET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `EXAM_MARKS_TYPE_ID` int(11) NOT NULL,
  `MARKS_PER` varchar(5) NOT NULL,
  `SL_NO` int(11) DEFAULT NULL,
  `START_DT` date DEFAULT NULL,
  `END_DT` date DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `EXAM_TYPE_ID` varchar(45) DEFAULT NULL,
  `DEGREE_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EXAM_GRADE_SHEET_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_grade_sheet`
--

LOCK TABLES `exam_grade_sheet` WRITE;
/*!40000 ALTER TABLE `exam_grade_sheet` DISABLE KEYS */;
INSERT INTO `exam_grade_sheet` VALUES (1,7,0,9,'10',NULL,NULL,NULL,0,1,'2018-05-14 04:15:11',NULL,NULL,'1','3'),(2,7,0,7,'20',NULL,NULL,NULL,0,1,'2018-05-14 04:15:11',NULL,NULL,'1','3'),(3,7,0,6,'30',NULL,NULL,NULL,0,1,'2018-05-14 04:15:17',NULL,NULL,'1','3'),(4,7,0,9,'10',NULL,NULL,NULL,0,1,'2018-05-14 04:15:21',NULL,NULL,'1','4'),(5,7,0,7,'20',NULL,NULL,NULL,0,1,'2018-05-14 04:15:22',NULL,NULL,'1','4'),(6,7,0,6,'30',NULL,NULL,NULL,0,1,'2018-05-14 04:15:22',NULL,NULL,'1','4'),(7,7,0,9,'10',NULL,NULL,NULL,0,1,'2018-05-14 04:15:26',NULL,NULL,'1','5'),(8,7,0,7,'20',NULL,NULL,NULL,0,1,'2018-05-14 04:15:27',NULL,NULL,'1','5'),(9,7,0,6,'30',NULL,NULL,NULL,0,1,'2018-05-14 04:15:27',NULL,NULL,'1','5'),(10,7,0,9,'10',NULL,NULL,NULL,0,1,'2018-05-14 04:15:32',NULL,NULL,'2','5'),(11,7,0,7,'20',NULL,NULL,NULL,0,1,'2018-05-14 04:15:32',NULL,NULL,'2','5'),(12,7,0,6,'30',NULL,NULL,NULL,0,1,'2018-05-14 04:15:32',NULL,NULL,'2','5'),(13,7,0,9,'10',NULL,NULL,NULL,0,1,'2018-05-14 04:15:35',NULL,NULL,'3','5'),(14,7,0,7,'20',NULL,NULL,NULL,0,1,'2018-05-14 04:15:35',NULL,NULL,'3','5'),(15,7,0,6,'30',NULL,NULL,NULL,0,1,'2018-05-14 04:15:36',NULL,NULL,'3','5');
/*!40000 ALTER TABLE `exam_grade_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_marks_type`
--

DROP TABLE IF EXISTS `exam_marks_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_marks_type` (
  `EXAM_MARKS_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MARKS_TITLE` varchar(200) NOT NULL,
  `EX_DESC` text NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EXAM_MARKS_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_marks_type`
--

LOCK TABLES `exam_marks_type` WRITE;
/*!40000 ALTER TABLE `exam_marks_type` DISABLE KEYS */;
INSERT INTO `exam_marks_type` VALUES (1,'Class Test','Class Test Description',1,1,'2017-07-27 09:53:56',NULL,NULL),(2,'Mid Term','Mid Term Description',1,1,'2017-07-27 10:03:00',NULL,NULL),(3,'Final Term','Final Term Description',1,1,'2017-07-27 10:03:23',NULL,NULL),(5,'Quiz 01','Quiz 01 Description',1,1,'2017-07-27 10:53:05',NULL,NULL),(6,'Quiz 02','Quiz 01 Description',1,1,'2017-07-27 10:56:59',NULL,NULL),(7,'Attendance','Class Attendance',1,1,'2017-07-29 05:49:48',NULL,NULL),(9,'Assignment','Assignment',1,1,'2017-08-02 06:36:19',NULL,NULL);
/*!40000 ALTER TABLE `exam_marks_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_student_marks`
--

DROP TABLE IF EXISTS `exam_student_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_student_marks` (
  `EX_MARKS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MARKS_TYPE_ID` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_FOR` varchar(20) DEFAULT NULL,
  `STUDENT_ID` bigint(14) NOT NULL,
  `ALLOCATION_MARKS` double DEFAULT NULL COMMENT 'Total allocation marks',
  `OBTAIN_MARKS` double DEFAULT NULL,
  `MARKS` double NOT NULL COMMENT 'Obtain Marks Percentage',
  `GRACE_MARKS` double DEFAULT NULL COMMENT 'Grace marks',
  `GRACE_MARKS_PER` double DEFAULT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `FACULTY_ID` int(11) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `BATCH_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `REVIEW_STATUS` int(1) DEFAULT '0',
  `REVIEW_BY` int(11) DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EX_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_student_marks`
--

LOCK TABLES `exam_student_marks` WRITE;
/*!40000 ALTER TABLE `exam_student_marks` DISABLE KEYS */;
INSERT INTO `exam_student_marks` VALUES (1,1,386,'F',256,NULL,NULL,3,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-08 11:45:28',NULL,NULL),(2,1,386,'F',264,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,1,19,'Good',NULL,6,'2017-08-08 11:45:28',NULL,NULL),(3,2,386,'F',264,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,1,19,'Dull',NULL,6,'2017-08-09 04:02:32',NULL,NULL),(4,1,386,'F',260,NULL,NULL,8,NULL,NULL,6,0,2,2,2,1,1,19,'Excellent',NULL,19,'2017-08-09 04:26:56',NULL,NULL),(6,1,386,'F',266,NULL,NULL,6,NULL,NULL,6,0,2,2,2,1,0,0,'Good',NULL,6,'2017-08-09 04:26:56',NULL,NULL),(7,1,386,'F',17,NULL,NULL,9,NULL,NULL,6,0,2,2,2,1,1,19,'Average',NULL,6,'2017-08-09 04:26:56',NULL,NULL),(8,2,386,'F',260,NULL,NULL,28,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:51:53',NULL,NULL),(9,2,386,'F',256,NULL,NULL,28,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,19,'2017-08-09 04:51:53',NULL,NULL),(10,2,386,'F',270,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:51:54',NULL,NULL),(11,2,386,'F',266,NULL,NULL,20,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:51:54',NULL,NULL),(12,2,386,'F',17,NULL,NULL,18,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:51:54',NULL,NULL),(13,3,386,'F',260,NULL,NULL,19,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:52:12',NULL,NULL),(14,3,386,'F',256,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,19,'2017-08-09 04:52:12',NULL,NULL),(15,3,386,'F',264,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:52:12',NULL,NULL),(16,3,386,'F',270,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:52:12',NULL,NULL),(17,3,386,'F',266,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:52:12',NULL,NULL),(18,3,386,'F',17,NULL,NULL,24,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:52:12',NULL,NULL),(19,5,386,'F',260,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:52:40',NULL,NULL),(20,5,386,'F',256,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,19,'2017-08-09 04:52:40',NULL,NULL),(21,5,386,'F',264,NULL,NULL,9,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:52:40',NULL,NULL),(22,5,386,'F',270,NULL,NULL,9,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:52:40',NULL,NULL),(23,5,386,'F',266,NULL,NULL,9,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:52:40',NULL,NULL),(24,5,386,'F',17,NULL,NULL,9,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:52:40',NULL,NULL),(25,7,386,'F',260,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:52:58',NULL,NULL),(26,7,386,'F',256,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,19,'2017-08-09 04:52:58',NULL,NULL),(27,7,386,'F',264,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:52:58',NULL,NULL),(28,7,386,'F',270,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:52:58',NULL,NULL),(29,7,386,'F',266,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:52:58',NULL,NULL),(30,7,386,'F',17,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:52:58',NULL,NULL),(31,9,386,'F',260,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:53:15',NULL,NULL),(32,9,386,'F',256,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:53:15',NULL,NULL),(33,9,386,'F',264,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:53:15',NULL,NULL),(34,9,386,'F',270,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:53:15',NULL,NULL),(35,9,386,'F',266,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:53:15',NULL,NULL),(36,9,386,'F',17,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:53:15',NULL,NULL),(37,6,386,'F',260,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:55:40',NULL,NULL),(38,6,386,'F',256,NULL,NULL,3,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,19,'2017-08-09 04:55:40',NULL,NULL),(39,6,386,'F',264,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:55:40',NULL,NULL),(40,6,386,'F',270,NULL,NULL,3,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-09 04:55:40',NULL,NULL),(41,6,386,'F',266,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-09 04:55:40',NULL,NULL),(42,6,386,'F',17,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-09 04:55:40',NULL,NULL),(43,1,388,'F',260,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-10 04:37:19',NULL,NULL),(44,1,365,'F',274,NULL,NULL,8,NULL,NULL,6,0,3,3,2,1,0,NULL,'',NULL,4,'2017-08-10 09:48:17',NULL,NULL),(45,1,365,'F',275,NULL,NULL,10,NULL,NULL,6,0,3,3,2,1,0,NULL,'',NULL,4,'2017-08-12 09:29:12',NULL,NULL),(46,1,386,'F',270,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 08:25:11',NULL,NULL),(48,1,389,'F',256,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:06:13',NULL,NULL),(49,1,389,'F',255,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:13',NULL,NULL),(50,1,389,'F',264,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:06:13',NULL,NULL),(51,1,389,'F',266,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:13',NULL,NULL),(52,1,389,'F',17,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:13',NULL,NULL),(54,2,389,'F',256,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:06:34',NULL,NULL),(55,2,389,'F',255,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:34',NULL,NULL),(56,2,389,'F',264,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:06:34',NULL,NULL),(57,2,389,'F',266,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:34',NULL,NULL),(58,2,389,'F',17,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:34',NULL,NULL),(60,3,389,'F',256,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:06:53',NULL,NULL),(61,3,389,'F',255,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:53',NULL,NULL),(62,3,389,'F',264,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:06:53',NULL,NULL),(63,3,389,'F',266,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:53',NULL,NULL),(64,3,389,'F',17,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:06:53',NULL,NULL),(66,5,389,'F',256,NULL,NULL,6,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:07:10',NULL,NULL),(67,5,389,'F',255,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:07:10',NULL,NULL),(68,5,389,'F',264,NULL,NULL,3,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 10:07:10',NULL,NULL),(69,5,389,'F',266,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:07:10',NULL,NULL),(70,5,389,'F',17,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:07:10',NULL,NULL),(71,1,389,'F',260,NULL,NULL,10,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 10:19:16',NULL,NULL),(72,2,389,'F',260,NULL,NULL,30,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:29:29',NULL,NULL),(73,3,389,'F',260,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:29:44',NULL,NULL),(74,5,389,'F',260,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:01',NULL,NULL),(75,6,389,'F',260,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:14',NULL,NULL),(76,6,389,'F',256,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 11:30:14',NULL,NULL),(77,6,389,'F',255,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:14',NULL,NULL),(78,6,389,'F',264,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 11:30:14',NULL,NULL),(79,6,389,'F',266,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:14',NULL,NULL),(80,6,389,'F',17,NULL,NULL,9,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:14',NULL,NULL),(81,7,389,'F',260,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:24',NULL,NULL),(82,7,389,'F',256,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 11:30:24',NULL,NULL),(83,7,389,'F',255,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:24',NULL,NULL),(84,7,389,'F',264,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 11:30:24',NULL,NULL),(85,7,389,'F',266,NULL,NULL,3,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:24',NULL,NULL),(86,7,389,'F',17,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:24',NULL,NULL),(87,9,389,'F',260,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:51',NULL,NULL),(88,9,389,'F',256,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 11:30:51',NULL,NULL),(89,9,389,'F',255,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:51',NULL,NULL),(90,9,389,'F',264,NULL,NULL,2,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,6,'2017-08-13 11:30:51',NULL,NULL),(91,9,389,'F',266,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:51',NULL,NULL),(92,9,389,'F',17,NULL,NULL,1,NULL,NULL,6,0,2,2,2,1,0,NULL,'',NULL,6,'2017-08-13 11:30:51',NULL,NULL),(93,9,387,'F',264,NULL,NULL,5,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:20:55',NULL,NULL),(94,1,387,'F',264,NULL,NULL,8,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:21:06',NULL,NULL),(95,2,387,'F',264,NULL,NULL,25,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:21:14',NULL,NULL),(96,3,387,'F',264,NULL,NULL,24,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:21:22',NULL,NULL),(97,5,387,'F',264,NULL,NULL,7,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:21:29',NULL,NULL),(98,6,387,'F',264,NULL,NULL,8,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:21:37',NULL,NULL),(99,7,387,'F',264,NULL,NULL,4,NULL,NULL,6,0,2,2,2,1,1,19,'',NULL,19,'2017-08-16 09:21:44',NULL,NULL),(100,1,415,'F',267,30,25,21,5,4,6,0,1,1,2,1,1,19,'none',NULL,19,'2017-08-27 10:15:47',NULL,NULL),(101,1,415,'F',269,30,20,17,0,0,6,0,1,1,2,1,1,19,'bad',NULL,19,'2017-08-27 10:31:25',NULL,NULL),(102,2,415,'F',267,50,40,20,2,1,6,0,1,1,2,1,1,19,'',NULL,19,'2017-08-27 11:31:47',NULL,NULL),(103,3,415,'F',267,50,45,45,0,0,6,0,1,1,2,1,1,19,'Good',NULL,8,'2017-08-28 03:58:04',NULL,NULL),(104,1,415,'F',18,30,25,21,2,2,6,0,1,1,2,1,1,19,'',NULL,8,'2017-08-28 04:32:54',NULL,NULL),(105,2,415,'F',18,30,27,23,1,1,6,0,1,1,2,1,1,19,'',NULL,8,'2017-08-28 04:33:17',NULL,NULL),(106,3,415,'F',18,60,45,38,5,4,6,0,1,1,2,1,1,19,'',NULL,8,'2017-08-28 04:33:36',NULL,NULL),(107,1,416,'F',277,50,25,13,2,1,6,0,1,1,2,1,0,NULL,'',NULL,8,'2017-10-02 11:16:11',NULL,NULL),(108,1,415,'F',277,30,20,17,0,0,6,0,1,1,2,1,0,NULL,'k',NULL,8,'2017-10-05 06:54:22',NULL,NULL),(109,1,415,'F',273,40,20,13,0,0,6,0,1,1,2,1,0,NULL,'',NULL,8,'2017-11-25 05:59:45',NULL,NULL),(110,2,415,'F',273,50,30,15,2,1,6,0,1,1,2,1,0,NULL,'',NULL,8,'2017-12-03 06:09:16',NULL,NULL);
/*!40000 ALTER TABLE `exam_student_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_tabulation_sheet`
--

DROP TABLE IF EXISTS `exam_tabulation_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_tabulation_sheet` (
  `EX_TABULATION_SHEET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL,
  `MARKS` int(11) NOT NULL,
  `TOTAL_GRACE_MARKS` double DEFAULT NULL,
  `GRADE_POINT` double NOT NULL,
  `GRADE_LETTER` varchar(11) NOT NULL,
  `CREDIT_EARNED` double DEFAULT NULL,
  `POINTS_SEQURED` double DEFAULT NULL,
  `COURSE_FOR` varchar(20) DEFAULT NULL,
  `STUDENT_ID` bigint(14) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `FACULTY_ID` int(11) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `BATCH_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EX_TABULATION_SHEET_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_tabulation_sheet`
--

LOCK TABLES `exam_tabulation_sheet` WRITE;
/*!40000 ALTER TABLE `exam_tabulation_sheet` DISABLE KEYS */;
INSERT INTO `exam_tabulation_sheet` VALUES (42,386,85,NULL,4,'A+',3,12,'R',17,6,5,2,2,2,1,'',NULL,0,'2017-08-13 06:06:41',NULL,NULL),(43,386,82,NULL,4,'A+',3,12,'R',256,6,5,2,2,2,1,'done',NULL,NULL,'2017-08-13 06:09:23',NULL,NULL),(44,386,78,NULL,3.75,'A',3,11.25,'I',264,6,5,2,2,2,1,'ok',NULL,NULL,'2017-08-13 06:10:24',NULL,NULL),(45,386,84,NULL,4,'A+',3,12,'F',270,6,5,2,2,2,1,'reviewed',NULL,NULL,'2017-08-13 08:28:20',NULL,NULL),(46,389,83,NULL,4,'A+',3,12,'R',256,6,5,2,2,2,1,'ok',NULL,NULL,'2017-08-16 08:02:28',NULL,NULL),(47,389,74,NULL,3.5,'A-',3,10.5,'R',264,6,5,2,2,2,1,'all okay',NULL,NULL,'2017-08-16 08:02:40',NULL,NULL),(48,387,81,NULL,4,'A+',3,12,'R',264,6,5,2,2,2,1,'okay',NULL,NULL,'2017-08-16 09:25:04',NULL,NULL),(49,386,80,NULL,4,'A+',3,12,'F',260,6,5,2,2,2,1,'ok all',NULL,NULL,'2017-08-19 03:24:33',NULL,NULL),(50,390,85,NULL,4,'A+',3,12,'F',264,7,5,2,2,2,1,'ok',NULL,NULL,'2017-08-19 09:47:32',NULL,NULL),(51,391,85,NULL,4,'A+',3,12,'F',264,7,5,2,2,2,1,'ok',NULL,NULL,'2017-08-19 09:54:02',NULL,NULL),(52,392,75,NULL,3.75,'A',3,11.25,'F',264,8,5,2,2,2,1,'ok',NULL,NULL,'2017-08-19 18:00:00',NULL,NULL),(53,393,88,NULL,4,'A+',3,12,'F',264,8,5,2,2,2,1,'ok',NULL,NULL,'2017-08-19 18:00:00',NULL,NULL),(54,394,82,NULL,4,'A+',3,12,'F',264,9,5,2,2,2,1,'ok',NULL,NULL,'2017-08-19 18:00:00',NULL,NULL),(119,394,95,NULL,4,'A+',3,12,'R',5,15,5,2,2,2,1,'',NULL,0,'2017-08-22 06:39:52',NULL,NULL),(120,394,78,NULL,3.75,'A',3,11.25,'F',6,15,5,2,2,2,1,'',NULL,0,'2017-08-22 06:39:52',NULL,NULL),(121,394,48,NULL,2.25,'C',3,6.75,'F',16,15,5,2,2,2,1,'',NULL,0,'2017-08-22 06:39:52',NULL,NULL),(122,394,77,NULL,3.75,'A',3,11.25,'I',17,6,5,2,2,2,1,'',NULL,0,'2017-08-22 06:39:52',NULL,NULL),(123,394,85,NULL,4,'A+',3,12,'F',59,15,5,2,2,2,1,'',NULL,0,'2017-08-22 06:39:52',NULL,NULL),(124,365,88,NULL,4,'A+',2,8,'R',11,6,5,3,3,2,1,'',NULL,0,'2017-08-23 10:38:52',NULL,NULL),(125,389,64,NULL,3,'B',3,9,'F',5,4,5,2,2,2,1,'',NULL,0,'2017-08-23 10:52:40',NULL,NULL),(126,386,88,NULL,4,'A+',3,12,'I',16,6,5,2,2,2,1,'',NULL,0,'2017-08-24 10:36:12',NULL,NULL),(127,386,84,NULL,4,'A+',3,12,'I',5,6,5,2,2,2,1,'',NULL,0,'2017-08-24 11:25:09',NULL,NULL),(128,389,47,NULL,2.25,'C',3,6.75,'F',6,6,5,2,2,2,1,'',NULL,0,'2017-08-26 04:51:53',NULL,NULL),(129,389,56,NULL,2.75,'B-',3,8.25,'F',16,6,5,2,2,2,1,'',NULL,0,'2017-08-26 04:51:53',NULL,NULL),(130,389,78,NULL,3.75,'A',3,11.25,'F',17,6,5,2,2,2,1,'',NULL,0,'2017-08-26 04:51:53',NULL,NULL),(131,389,87,NULL,4,'A+',3,12,'F',59,6,5,2,2,2,1,'',NULL,0,'2017-08-26 04:51:53',NULL,NULL),(132,389,100,NULL,4,'A+',3,12,'F',5,6,5,2,2,2,1,'',NULL,0,'2017-08-26 05:27:29',NULL,NULL),(133,386,48,NULL,2.25,'C',3,6.75,'R',6,6,5,2,2,2,1,'',NULL,0,'2017-08-26 05:29:20',NULL,NULL),(134,386,55,NULL,2.75,'B-',3,8.25,'F',59,6,5,2,2,2,1,'',NULL,0,'2017-08-26 05:35:19',NULL,NULL),(135,850,72,NULL,3.5,'A-',3,10.5,'F',154,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:26',NULL,NULL),(136,850,70,NULL,3.5,'A-',3,10.5,'F',155,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:26',NULL,NULL),(137,850,72,NULL,3.5,'A-',3,10.5,'F',156,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:26',NULL,NULL),(138,850,70,NULL,3.5,'A-',3,10.5,'F',157,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:26',NULL,NULL),(139,850,75,NULL,3.75,'A',3,11.25,'F',158,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:26',NULL,NULL),(140,847,50,NULL,2.5,'C+',3,7.5,'F',154,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:59',NULL,NULL),(141,847,88,NULL,4,'A+',3,12,'F',155,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:59',NULL,NULL),(142,847,95,NULL,4,'A+',3,12,'F',156,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:59',NULL,NULL),(143,847,77,NULL,3.75,'A',3,11.25,'F',157,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:59',NULL,NULL),(144,847,65,NULL,3.25,'B+',3,9.75,'F',158,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:11:59',NULL,NULL),(145,644,77,NULL,3.75,'A',2,7.5,'F',154,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:42:48',NULL,NULL),(146,644,65,NULL,3.25,'B+',2,6.5,'F',155,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:42:48',NULL,NULL),(147,644,15,NULL,0,'F',2,0,'F',156,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:42:48',NULL,NULL),(148,644,77,NULL,3.75,'A',2,7.5,'F',157,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:42:48',NULL,NULL),(149,644,95,NULL,4,'A+',2,8,'F',158,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:42:48',NULL,NULL),(150,640,77,NULL,3.75,'A',1,3.75,'F',154,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:43:05',NULL,NULL),(151,640,89,NULL,4,'A+',1,4,'F',155,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:43:05',NULL,NULL),(152,640,58,NULL,2.75,'B-',1,2.75,'F',156,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:43:05',NULL,NULL),(153,640,84,NULL,4,'A+',1,4,'F',157,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:43:05',NULL,NULL),(154,640,89,NULL,4,'A+',1,4,'F',158,7,5,2,2,4,1,'',NULL,0,'2017-08-26 06:43:05',NULL,NULL),(155,636,78,NULL,3.75,'A',4,15,'F',154,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:44:55',NULL,NULL),(156,636,88,NULL,4,'A+',4,16,'F',155,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:44:55',NULL,NULL),(157,636,89,NULL,4,'A+',4,16,'F',156,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:44:55',NULL,NULL),(158,636,85,NULL,4,'A+',4,16,'F',157,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:44:55',NULL,NULL),(159,636,98,NULL,4,'A+',4,16,'F',158,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:44:55',NULL,NULL),(160,395,44,NULL,2,'D',3,6,'F',154,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:10',NULL,NULL),(161,395,56,NULL,2.75,'B-',3,8.25,'F',155,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:10',NULL,NULL),(162,395,88,NULL,4,'A+',3,12,'F',156,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:10',NULL,NULL),(163,395,84,NULL,4,'A+',3,12,'F',157,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:10',NULL,NULL),(164,395,91,NULL,4,'A+',3,12,'F',158,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:10',NULL,NULL),(165,394,55,NULL,2.75,'B-',3,8.25,'F',154,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:24',NULL,NULL),(166,394,44,NULL,2,'D',3,6,'F',155,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:24',NULL,NULL),(167,394,66,NULL,3.25,'B+',3,9.75,'F',156,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:24',NULL,NULL),(168,394,77,NULL,3.75,'A',3,11.25,'F',157,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:24',NULL,NULL),(169,394,88,NULL,4,'A+',3,12,'F',158,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:24',NULL,NULL),(170,393,44,NULL,2,'D',3,6,'F',154,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:44',NULL,NULL),(171,393,20,NULL,0,'F',3,0,'F',155,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:44',NULL,NULL),(172,393,56,NULL,2.75,'B-',3,8.25,'F',156,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:44',NULL,NULL),(173,393,87,NULL,4,'A+',3,12,'F',157,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:44',NULL,NULL),(174,393,45,NULL,2.25,'C',3,6.75,'F',158,15,5,2,2,4,1,'',NULL,0,'2017-08-26 06:45:44',NULL,NULL),(176,415,17,0,0,'F',3,0,'F',269,6,5,1,1,2,1,'ok',NULL,NULL,'2017-08-28 04:30:27',NULL,NULL),(177,415,82,7,4,'A+',3,12,'F',18,6,5,1,1,2,1,'Good Result',NULL,NULL,'2017-08-28 04:38:10',NULL,NULL);
/*!40000 ALTER TABLE `exam_tabulation_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_type`
--

DROP TABLE IF EXISTS `exam_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_type` (
  `EXAM_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXAM_TITLE` varchar(200) NOT NULL,
  `EX_DESC` text NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EXAM_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_type`
--

LOCK TABLES `exam_type` WRITE;
/*!40000 ALTER TABLE `exam_type` DISABLE KEYS */;
INSERT INTO `exam_type` VALUES (1,'Theoritical','',1,NULL,'2018-04-26 06:18:04',NULL,NULL),(2,'Lab','',1,NULL,'2018-04-26 06:18:21',NULL,NULL),(3,'Viva','',1,NULL,'2018-04-26 06:18:21',NULL,NULL);
/*!40000 ALTER TABLE `exam_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_activity_type`
--

DROP TABLE IF EXISTS `extra_activity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra_activity_type` (
  `ACTIVITY_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVITY_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_activity_type`
--

LOCK TABLES `extra_activity_type` WRITE;
/*!40000 ALTER TABLE `extra_activity_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra_activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_academic_charge_rate`
--

DROP TABLE IF EXISTS `fn_academic_charge_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_academic_charge_rate` (
  `RATE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AC_NO` int(11) NOT NULL COMMENT 'ACCOUNT HEAD ID',
  `AMOUNT` float NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `PAYMENT_INTERVAL_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_academic_charge_rate`
--

LOCK TABLES `fn_academic_charge_rate` WRITE;
/*!40000 ALTER TABLE `fn_academic_charge_rate` DISABLE KEYS */;
INSERT INTO `fn_academic_charge_rate` VALUES (1,4,1000,1,6,1,1,'2017-10-16 09:49:09',NULL,NULL,NULL),(2,5,500,1,6,1,1,'2017-10-16 09:49:09',NULL,NULL,NULL),(3,6,500,1,6,1,1,'2017-10-16 09:49:09',NULL,NULL,NULL),(4,4,2000,3,6,1,1,'2017-10-16 09:49:45',NULL,NULL,NULL),(5,5,1000,3,6,1,1,'2017-10-16 09:49:45',NULL,NULL,NULL),(6,6,1000,3,6,1,1,'2017-10-16 09:49:45',NULL,NULL,NULL);
/*!40000 ALTER TABLE `fn_academic_charge_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_acctype`
--

DROP TABLE IF EXISTS `fn_acctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_acctype` (
  `AC_TYPE_NO` int(11) NOT NULL AUTO_INCREMENT,
  `AC_TYPE` varchar(50) DEFAULT NULL,
  `COMPANY_NO` varchar(50) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`AC_TYPE_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_acctype`
--

LOCK TABLES `fn_acctype` WRITE;
/*!40000 ALTER TABLE `fn_acctype` DISABLE KEYS */;
INSERT INTO `fn_acctype` VALUES (1,'CAPITAL',NULL,NULL,'2017-10-05 09:38:43',NULL,NULL),(2,'INCOME',NULL,NULL,'2017-10-05 09:38:56',NULL,NULL),(3,'EXPENSE',NULL,NULL,'2017-10-05 09:39:06',NULL,NULL),(4,'CURRENT ASSET',NULL,NULL,'2017-10-05 09:39:19',NULL,NULL),(5,'FIXED ASSET',NULL,NULL,'2017-10-05 09:39:37',NULL,NULL),(6,'CURRENT LIABILITY',NULL,NULL,'2017-10-05 09:39:50',NULL,NULL),(7,'LIABILITY',NULL,NULL,'2017-10-05 09:39:55',NULL,NULL);
/*!40000 ALTER TABLE `fn_acctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_achead`
--

DROP TABLE IF EXISTS `fn_achead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_achead` (
  `AC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `AC_NO_UD` varchar(20) DEFAULT NULL,
  `AC_NAME` varchar(50) DEFAULT NULL,
  `AC_TYPE_NO` int(20) DEFAULT NULL,
  `PARANT_AC_NO` int(20) DEFAULT '0',
  `TRANS_FLAG` varchar(1) DEFAULT NULL,
  `OPENING_BALANCE` int(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` varchar(16) DEFAULT NULL,
  `ENTRY_TIMESTAMP` date DEFAULT NULL,
  `UPDATED_BY` varchar(16) DEFAULT NULL,
  `UPDATE_TIMESTAMP` date DEFAULT NULL,
  `BILLING_TYPE` varchar(10) DEFAULT NULL COMMENT 'T=Tusion_fee,R=Resident bill,A=admission',
  PRIMARY KEY (`AC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_achead`
--

LOCK TABLES `fn_achead` WRITE;
/*!40000 ALTER TABLE `fn_achead` DISABLE KEYS */;
INSERT INTO `fn_achead` VALUES (1,'','Academic Income',2,0,'0',NULL,1,'1',NULL,NULL,NULL,NULL),(2,'101','Admission Form Fee',2,1,'1',NULL,1,'1',NULL,NULL,NULL,NULL),(3,'102','Admission Fee',2,1,'1',NULL,1,'1',NULL,NULL,NULL,NULL),(4,'103','Tuition Fee',2,1,'1',NULL,1,'1',NULL,NULL,NULL,'T'),(5,'104','Lab Fee',2,1,'1',NULL,1,'1',NULL,NULL,NULL,NULL),(6,'12121','Library Fee',2,1,'1',NULL,1,'1',NULL,NULL,NULL,NULL),(7,'77','Electricity Bill',2,1,'1',NULL,1,NULL,NULL,NULL,NULL,'R'),(8,'23','Hostel Fee',2,1,'1',NULL,1,'1',NULL,NULL,NULL,'R'),(9,'232','Electric Bill',2,1,'1',NULL,1,'1',NULL,NULL,NULL,NULL),(10,'56','Water Bill',2,1,'1',NULL,1,'1',NULL,NULL,NULL,'R'),(11,'TR001','Trust Bank',4,0,'0',NULL,0,'1',NULL,NULL,NULL,NULL),(12,'TB00101','KYAMCH Branch',4,11,'0',NULL,0,'1',NULL,NULL,NULL,NULL),(13,'TB0010101','TB201523652154',4,12,'1',NULL,1,'1',NULL,NULL,NULL,NULL),(17,'gg','Nurullah Hoque',1,16,'1',NULL,1,'1',NULL,NULL,NULL,'A'),(18,'2','Nurullah Hoque',1,17,'0',NULL,0,'1',NULL,NULL,NULL,''),(20,'C1001','Owners Equity',1,0,'1',NULL,1,'1',NULL,NULL,NULL,''),(21,'344','Cash',4,0,'1',NULL,1,'1',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `fn_achead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_billing_chd`
--

DROP TABLE IF EXISTS `fn_billing_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_billing_chd` (
  `BILLING_CHD_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `BILLING_MST_ID` bigint(14) DEFAULT NULL,
  `AC_NO` int(11) NOT NULL,
  `RATE_ID` int(11) NOT NULL,
  `RATE_AMT` double DEFAULT NULL,
  `TOTAL_BILL` double DEFAULT NULL,
  `DISC_AMT` double DEFAULT NULL,
  `VAT_AMT` double DEFAULT NULL,
  `BILL_AMT` double DEFAULT NULL,
  `BILLING_MONTH` date DEFAULT NULL,
  `REMARKS` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BILLING_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_billing_chd`
--

LOCK TABLES `fn_billing_chd` WRITE;
/*!40000 ALTER TABLE `fn_billing_chd` DISABLE KEYS */;
INSERT INTO `fn_billing_chd` VALUES (1,1,4,4,2000,22000,4400,NULL,17600,NULL,NULL,0,1,'2018-01-06 08:28:48',NULL,NULL),(2,1,5,5,1000,1000,0,NULL,1000,NULL,NULL,0,1,'2018-01-06 08:28:48',NULL,NULL),(3,1,6,6,1000,1000,0,NULL,1000,NULL,NULL,0,1,'2018-01-06 08:28:48',NULL,NULL),(4,2,7,0,NULL,1000,NULL,NULL,1000,'2018-01-01',NULL,0,1,'2018-01-06 08:37:27',NULL,NULL),(5,2,8,0,NULL,500,NULL,NULL,500,'2018-01-01',NULL,0,1,'2018-01-06 08:37:27',NULL,NULL),(6,2,10,0,NULL,500,NULL,NULL,500,'2018-01-01',NULL,0,1,'2018-01-06 08:37:27',NULL,NULL),(7,3,7,0,NULL,1500,NULL,NULL,1500,'2018-02-01',NULL,0,1,'2018-01-06 08:38:49',NULL,NULL),(8,3,8,0,NULL,700,NULL,NULL,700,'2018-02-01',NULL,0,1,'2018-01-06 08:38:49',NULL,NULL),(9,3,10,0,NULL,700,NULL,NULL,700,'2018-02-01',NULL,0,1,'2018-01-06 08:38:49',NULL,NULL),(10,4,4,1,1000,11000,0,NULL,11000,NULL,NULL,0,1,'2018-02-27 06:02:39',NULL,NULL),(11,4,5,2,500,500,0,NULL,500,NULL,NULL,0,1,'2018-02-27 06:02:39',NULL,NULL),(12,4,6,3,500,500,0,NULL,500,NULL,NULL,0,1,'2018-02-27 06:02:39',NULL,NULL);
/*!40000 ALTER TABLE `fn_billing_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_billing_mst`
--

DROP TABLE IF EXISTS `fn_billing_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_billing_mst` (
  `BILLING_MST_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `BILLING_DT` date DEFAULT NULL,
  `STUDENT_ID` bigint(14) DEFAULT NULL,
  `APPLICANT_ID` bigint(14) DEFAULT NULL,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `SEMESTER_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL,
  `BILL_CANCEN_FG` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `BILL_TYPE` varchar(20) DEFAULT NULL COMMENT 'R=resident bill A=Academic bill',
  PRIMARY KEY (`BILLING_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_billing_mst`
--

LOCK TABLES `fn_billing_mst` WRITE;
/*!40000 ALTER TABLE `fn_billing_mst` DISABLE KEYS */;
INSERT INTO `fn_billing_mst` VALUES (1,'2018-01-06',278,NULL,5,3,3,6,1,0,NULL,NULL,NULL,'2018-01-06 08:28:48',NULL,NULL,'A'),(2,'2018-01-06',278,NULL,5,3,3,6,1,0,NULL,NULL,NULL,'2018-01-06 08:37:27',NULL,NULL,'R'),(3,'2018-01-06',278,NULL,5,3,3,6,1,0,NULL,NULL,NULL,'2018-01-06 08:38:49',NULL,NULL,'R'),(4,'2018-02-27',18,NULL,5,1,1,6,1,0,NULL,NULL,NULL,'2018-02-27 06:02:39',NULL,NULL,'A');
/*!40000 ALTER TABLE `fn_billing_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_default_transection`
--

DROP TABLE IF EXISTS `fn_default_transection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_default_transection` (
  `DE_TR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AC_NO` int(11) DEFAULT NULL,
  `AC_FOR` varchar(20) DEFAULT NULL,
  `ACTIVE_STATUS` int(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`DE_TR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_default_transection`
--

LOCK TABLES `fn_default_transection` WRITE;
/*!40000 ALTER TABLE `fn_default_transection` DISABLE KEYS */;
INSERT INTO `fn_default_transection` VALUES (1,4,'tusion_fee',1,NULL,'2017-11-27 06:04:06',NULL,NULL),(2,3,'admission_fee',1,NULL,'2017-11-27 06:20:51',NULL,NULL),(3,13,'bank',1,NULL,'2017-11-26 18:00:00',NULL,NULL),(4,21,'cash',1,NULL,'2018-02-28 08:21:17',NULL,NULL);
/*!40000 ALTER TABLE `fn_default_transection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_payment_interval`
--

DROP TABLE IF EXISTS `fn_payment_interval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_payment_interval` (
  `PAYMENT_INTERVAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAYMENT_INTERVAL_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_INTERVAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_payment_interval`
--

LOCK TABLES `fn_payment_interval` WRITE;
/*!40000 ALTER TABLE `fn_payment_interval` DISABLE KEYS */;
INSERT INTO `fn_payment_interval` VALUES (1,'Yearly'),(2,'Monthly'),(3,'Sermister Wise'),(4,'Programme Wise');
/*!40000 ALTER TABLE `fn_payment_interval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_resident_bill_chd`
--

DROP TABLE IF EXISTS `fn_resident_bill_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_resident_bill_chd` (
  `RESIDENT_BILL_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RESIDENT_BILL_MST_ID` int(11) DEFAULT NULL,
  `AC_NO` int(11) DEFAULT NULL,
  `AMOUNT` float DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RESIDENT_BILL_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_resident_bill_chd`
--

LOCK TABLES `fn_resident_bill_chd` WRITE;
/*!40000 ALTER TABLE `fn_resident_bill_chd` DISABLE KEYS */;
INSERT INTO `fn_resident_bill_chd` VALUES (35,13,7,80,1,'2018-04-04 09:28:31',NULL,NULL),(36,13,8,54,1,'2018-04-04 09:28:31',NULL,NULL),(37,13,10,45,1,'2018-04-04 09:28:31',NULL,NULL),(38,14,7,45,1,'2018-04-21 04:35:58',NULL,NULL),(39,14,8,0,1,'2018-04-21 04:35:58',NULL,NULL),(40,14,10,0,1,'2018-04-21 04:35:58',NULL,NULL);
/*!40000 ALTER TABLE `fn_resident_bill_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_resident_bill_mst`
--

DROP TABLE IF EXISTS `fn_resident_bill_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_resident_bill_mst` (
  `RESIDENT_BILL_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESSION_ID` int(11) DEFAULT NULL,
  `RESEDENT_ID` int(11) DEFAULT NULL,
  `BILLING_MONTH` date DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RESIDENT_BILL_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_resident_bill_mst`
--

LOCK TABLES `fn_resident_bill_mst` WRITE;
/*!40000 ALTER TABLE `fn_resident_bill_mst` DISABLE KEYS */;
INSERT INTO `fn_resident_bill_mst` VALUES (1,6,3,'1970-01-01',NULL,'2018-03-25 06:20:09',NULL,NULL),(2,6,3,'2018-06-01',NULL,'2018-03-25 06:21:57',NULL,NULL),(3,6,3,'2018-03-01',NULL,'2018-03-25 06:26:16',NULL,NULL),(4,4,3,'2018-02-01',NULL,'2018-03-25 06:26:50',NULL,NULL),(5,0,0,'2018-04-01',NULL,'2018-03-25 08:18:32',NULL,NULL),(6,5,0,'2018-12-01',NULL,'2018-03-25 08:19:21',NULL,NULL),(7,0,0,'2018-08-01',NULL,'2018-03-25 11:14:57',NULL,NULL),(8,0,0,'1970-01-01',NULL,'2018-03-25 11:16:00',NULL,NULL),(9,5,3,'2018-12-01',NULL,'2018-03-25 11:20:17',NULL,NULL),(10,5,0,'2018-03-01',NULL,'2018-03-25 11:22:00',NULL,NULL),(11,0,0,'2021-03-01',NULL,'2018-03-25 11:26:21',NULL,NULL),(12,6,7,'2018-12-01',NULL,'2018-03-27 05:59:49',NULL,NULL),(13,2,3,'2018-07-01',NULL,'2018-04-04 09:28:31',NULL,NULL),(14,6,3,'2018-04-01',NULL,'2018-04-21 04:35:58',NULL,NULL);
/*!40000 ALTER TABLE `fn_resident_bill_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_voucherchd`
--

DROP TABLE IF EXISTS `fn_voucherchd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_voucherchd` (
  `TRX_TRAN_NO` bigint(14) NOT NULL DEFAULT '0',
  `VOUCHER_NO` bigint(14) DEFAULT NULL,
  `BILLING_CHD_ID` int(11) NOT NULL,
  `AC_NO` int(11) NOT NULL,
  `PAID_AMT` double DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`TRX_TRAN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_voucherchd`
--

LOCK TABLES `fn_voucherchd` WRITE;
/*!40000 ALTER TABLE `fn_voucherchd` DISABLE KEYS */;
INSERT INTO `fn_voucherchd` VALUES (18000000000367,18000000000109,10,4,-10,NULL,0,NULL,'2018-02-28 08:22:01',NULL,NULL),(18000000000368,18000000000109,11,5,-10,NULL,0,NULL,'2018-02-28 08:22:01',NULL,NULL),(18000000000369,18000000000109,12,6,-10,NULL,0,NULL,'2018-02-28 08:22:01',NULL,NULL),(18000000000370,18000000000109,0,21,30,NULL,0,NULL,'2018-02-28 08:22:01',NULL,NULL),(18000000000371,18000000000110,10,4,-20,NULL,0,NULL,'2018-02-28 08:27:33',NULL,NULL),(18000000000372,18000000000110,11,5,-20,NULL,0,NULL,'2018-02-28 08:27:33',NULL,NULL),(18000000000373,18000000000110,12,6,-20,NULL,0,NULL,'2018-02-28 08:27:33',NULL,NULL),(18000000000374,18000000000110,0,13,60,NULL,0,NULL,'2018-02-28 08:27:33',NULL,NULL),(18000000000375,18000000000111,10,4,-500,NULL,0,NULL,'2018-02-28 08:36:17',NULL,NULL),(18000000000376,18000000000111,11,5,-70,NULL,0,NULL,'2018-02-28 08:36:17',NULL,NULL),(18000000000377,18000000000111,12,6,-70,NULL,0,NULL,'2018-02-28 08:36:17',NULL,NULL),(18000000000378,18000000000111,0,13,640,NULL,0,NULL,'2018-02-28 08:36:17',NULL,NULL),(18000000000379,18000000000112,10,4,-5000,NULL,0,NULL,'2018-02-28 10:32:27',NULL,NULL),(18000000000380,18000000000112,11,5,-400,NULL,0,NULL,'2018-02-28 10:32:27',NULL,NULL),(18000000000381,18000000000112,12,6,-400,NULL,0,NULL,'2018-02-28 10:32:27',NULL,NULL),(18000000000382,18000000000112,0,13,5800,NULL,0,NULL,'2018-02-28 10:32:27',NULL,NULL);
/*!40000 ALTER TABLE `fn_voucherchd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_vouchermst`
--

DROP TABLE IF EXISTS `fn_vouchermst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_vouchermst` (
  `VOUCHER_NO` bigint(14) NOT NULL DEFAULT '0',
  `VOUCHER_DT` date DEFAULT NULL,
  `STUDENT_ID` bigint(14) DEFAULT NULL,
  `APPLICANT_ID` bigint(14) DEFAULT NULL,
  `ROLL_NO` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `SEMESTER_ID` int(11) DEFAULT NULL,
  `STU_SEMINFO_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL,
  `VCANCEL_FG` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) COLLATE utf8_croatian_ci DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `PAYMENT_MODE` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL,
  `PAYMENT_DT` date DEFAULT NULL,
  `PAYMENT_SL_NO` varchar(45) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`VOUCHER_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_vouchermst`
--

LOCK TABLES `fn_vouchermst` WRITE;
/*!40000 ALTER TABLE `fn_vouchermst` DISABLE KEYS */;
INSERT INTO `fn_vouchermst` VALUES (18000000000109,'2018-02-28',18,NULL,'2015103010005',5,1,1,0,NULL,NULL,0,NULL,NULL,NULL,'2018-02-28 08:22:01',NULL,NULL,'c','2018-02-28','123'),(18000000000110,'2018-02-28',18,NULL,'2015103010005',5,1,1,0,NULL,NULL,0,NULL,NULL,NULL,'2018-02-28 08:27:33',NULL,NULL,'b','2018-02-28','11111'),(18000000000111,'2018-02-28',18,NULL,'2015103010005',5,1,1,0,NULL,NULL,0,NULL,NULL,NULL,'2018-02-28 08:36:17',NULL,NULL,'b','2018-02-28','2222'),(18000000000112,'2018-02-28',18,NULL,'2015103010005',5,1,1,0,NULL,NULL,0,NULL,NULL,NULL,'2018-02-28 10:32:27',NULL,NULL,'b','2018-02-28','123458');
/*!40000 ALTER TABLE `fn_vouchermst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_attendance`
--

DROP TABLE IF EXISTS `hr_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_attendance` (
  `ATTENDANCE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `BIOMETRIC_ID` varchar(20) DEFAULT NULL,
  `LOG_DATE` date DEFAULT NULL,
  `IN_TIME` datetime DEFAULT NULL,
  `OUT_TIME` datetime DEFAULT NULL,
  `MACHINE_ID` bigint(14) DEFAULT NULL,
  `REASON` text,
  PRIMARY KEY (`ATTENDANCE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_attendance`
--

LOCK TABLES `hr_attendance` WRITE;
/*!40000 ALTER TABLE `hr_attendance` DISABLE KEYS */;
INSERT INTO `hr_attendance` VALUES (2,'1','2017-12-24','2017-12-24 00:00:00','2017-12-24 00:00:00',1,NULL);
/*!40000 ALTER TABLE `hr_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_desig`
--

DROP TABLE IF EXISTS `hr_desig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_desig` (
  `DESIG_ID` int(10) NOT NULL AUTO_INCREMENT,
  `DESIGNATION` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`DESIG_ID`),
  KEY `DESIG_ID` (`DESIG_ID`),
  KEY `DESIG_ID_2` (`DESIG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_desig`
--

LOCK TABLES `hr_desig` WRITE;
/*!40000 ALTER TABLE `hr_desig` DISABLE KEYS */;
INSERT INTO `hr_desig` VALUES (1,'Programmer',1,8,'2017-05-16 18:00:00',NULL,'2017-05-17 00:00:00'),(2,'Professor',1,1,'2017-05-17 11:55:48',NULL,NULL),(3,'Asst. Derector Adm.',1,1,'2017-05-23 10:48:34',NULL,NULL),(4,'Asst. Controller',1,1,'2017-08-09 05:41:49',NULL,NULL);
/*!40000 ALTER TABLE `hr_desig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_edeptdesi`
--

DROP TABLE IF EXISTS `hr_edeptdesi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_edeptdesi` (
  `EDEPTDESI_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EMP_ID` int(11) NOT NULL,
  `DEPT_ID` tinyint(3) NOT NULL,
  `DESIG_ID` int(10) NOT NULL,
  `DEFAULT_FG` tinyint(1) DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EDEPTDESI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_edeptdesi`
--

LOCK TABLES `hr_edeptdesi` WRITE;
/*!40000 ALTER TABLE `hr_edeptdesi` DISABLE KEYS */;
INSERT INTO `hr_edeptdesi` VALUES (4,4,6,1,0,1,NULL,'2017-06-21 04:17:26',NULL,NULL),(5,5,17,3,1,1,NULL,'2017-06-21 04:39:51',NULL,NULL),(6,6,2,2,1,1,NULL,'2017-07-02 04:34:08',NULL,NULL),(7,7,6,2,1,1,NULL,'2017-07-10 10:14:56',NULL,NULL),(8,8,1,2,1,1,NULL,'2017-07-20 10:16:07',NULL,NULL),(9,9,12,2,1,1,NULL,'2017-07-20 10:51:45',NULL,NULL),(10,10,18,4,1,1,NULL,'2017-08-09 05:43:44',NULL,NULL),(11,11,15,2,1,1,NULL,'2017-08-23 10:56:28',NULL,NULL),(12,3,1,2,1,1,NULL,'2018-03-27 06:51:45',NULL,NULL),(13,12,1,1,1,1,NULL,'2018-03-27 09:44:27',NULL,NULL),(14,12,2,1,0,1,NULL,'2018-03-27 09:44:27',NULL,NULL),(16,13,1,1,0,1,NULL,'2018-03-27 11:58:56',NULL,NULL),(17,13,5,4,0,1,NULL,'2018-03-27 11:58:56',NULL,NULL),(18,14,1,1,1,1,NULL,'2018-03-27 12:05:16',NULL,NULL),(19,14,2,2,0,1,NULL,'2018-03-27 12:05:16',NULL,NULL),(20,14,3,2,0,1,NULL,'2018-03-27 12:05:16',NULL,NULL),(21,15,8,2,1,1,NULL,'2018-03-27 12:07:53',NULL,NULL),(22,15,4,3,NULL,1,NULL,'2018-03-27 12:07:53',NULL,NULL),(31,17,2,1,1,1,NULL,'2018-03-28 04:06:19',NULL,NULL),(37,18,2,2,1,1,NULL,'2018-03-28 09:30:22',NULL,NULL),(38,21,1,1,1,1,NULL,'2018-03-29 06:38:19',NULL,NULL),(39,21,2,2,0,1,NULL,'2018-03-29 06:38:19',NULL,NULL),(40,22,2,1,1,1,NULL,'2018-03-29 06:51:52',NULL,NULL),(41,22,2,1,0,1,NULL,'2018-03-29 06:51:52',NULL,NULL),(42,22,1,2,1,1,NULL,'2018-03-29 08:12:43',NULL,NULL),(43,23,2,1,1,1,NULL,'2018-03-29 09:07:16',NULL,NULL),(44,23,2,2,0,1,NULL,'2018-03-29 09:07:16',NULL,NULL),(45,28,2,1,1,1,NULL,'2018-03-29 09:58:53',NULL,NULL),(46,28,3,2,0,1,NULL,'2018-03-29 09:58:53',NULL,NULL),(47,29,1,1,1,1,NULL,'2018-03-29 10:08:03',NULL,NULL),(48,29,2,2,0,1,NULL,'2018-03-29 10:08:04',NULL,NULL),(49,12,15,2,1,1,NULL,'2018-04-28 08:21:42',NULL,NULL),(50,13,15,1,1,1,NULL,'2018-04-28 08:55:11',NULL,NULL),(51,14,15,4,1,1,NULL,'2018-04-28 09:07:05',NULL,NULL),(52,15,15,4,1,1,NULL,'2018-04-28 09:34:28',NULL,NULL),(53,16,15,4,1,1,NULL,'2018-04-28 09:37:06',NULL,NULL),(54,17,15,4,1,1,NULL,'2018-04-28 09:48:28',NULL,NULL);
/*!40000 ALTER TABLE `hr_edeptdesi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_emp`
--

DROP TABLE IF EXISTS `hr_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_emp` (
  `EMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FULL_ENAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `FULL_BNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `SHORT_NAME` varchar(11) DEFAULT NULL,
  `EMP_TYPE` varchar(20) DEFAULT NULL COMMENT 'T="Teacher",S="Stuff"',
  `DEPT_ID` int(11) DEFAULT NULL,
  `DESIG_ID` smallint(5) DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL DEFAULT '1',
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `EMP_IMG` varchar(100) NOT NULL,
  `EMP_SIG` varchar(100) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `AGE` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BLOOD_GROUP` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `TERMINATION_DATE` date DEFAULT NULL,
  `FATHER_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOTHER_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `MARITAL_STATUS` int(11) NOT NULL,
  `SPOUSE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `RELIGION` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `NATIONALITY` varchar(25) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `NATIONAL_ID` bigint(17) DEFAULT NULL,
  `PLACE_OF_BIRTH` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `PASSPORT_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BIOMETRIC_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `WEIGHT_KG` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `WEIGHT_LBS` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `HEIGHT_FEET` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `HEIGHT_CM` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `COLOR_OF_EYES` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Teacher Eyes Color',
  `IDENTIFY_MARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `JOIN_DATE` date DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_emp`
--

LOCK TABLES `hr_emp` WRITE;
/*!40000 ALTER TABLE `hr_emp` DISABLE KEYS */;
INSERT INTO `hr_emp` VALUES (3,'Md. Rakib Mostofa','মোঃ রাকিব মস্তফা','MRM','T',NULL,NULL,1,'rakibronicse@gmail.com','01722085398','10.jpg','rsz_1download.jpg','1970-01-01 00:00:00',NULL,'104','1970-01-01','1970-01-01','FATHER NAME ','MOTHER NAME ',12,NULL,'1','15',963258741369,'Natore                                                                                              ',NULL,NULL,'99','4','5','5',NULL,NULL,NULL,1,0,'2017-06-21 04:14:46',NULL,'2018-04-29 10:05:17'),(4,'Emdad Haque','এমদাদ','EM','T',NULL,NULL,1,'abhi.m.abhijit@gmail.com','01722085398','12.jpg','rsz_1download.jpg','2017-01-06 00:00:00',NULL,'101','2017-07-12','2018-04-04','FATHER NAME ','MOTHER NAME',11,NULL,'1','15',963258741258,'Dhaka     ',NULL,NULL,'55','','5','',NULL,NULL,NULL,1,0,'2017-06-21 04:17:26',NULL,'2018-06-24 14:27:49'),(5,'MD. SHIHAB UDDIN','নরল্লা','NU','S',NULL,NULL,1,'rakibro2nicse@gmail.com','01722085398','13.jpg','','2017-01-06 00:00:00',NULL,'14','2017-08-03','1970-01-01','FATHER NAME ','MOTHER NAME',12,NULL,'1','15',963258741258,' Dhaka   ',NULL,NULL,'66','','6','',NULL,NULL,NULL,1,0,'2017-06-21 04:39:51',NULL,'2018-04-04 13:01:37'),(6,'Shabnam Akhi','','SA','T',NULL,NULL,1,'akhi@atilimited.net','01722085398','5.jpg','','2017-02-07 00:00:00',NULL,'','2017-07-11','1970-01-01','Demo','Demo',0,NULL,'','15',0,'  ',NULL,NULL,'','','','',NULL,NULL,NULL,1,0,'2017-07-02 04:34:08',NULL,'2018-04-04 13:01:57'),(7,'Reazul Islam','','RE','T',NULL,NULL,1,'reazul@atilimited.net','01918934651','11.png','','2017-07-10 00:00:00',NULL,'','2017-08-03','1970-01-01','Hamid','sultana',0,NULL,'','15',0,'     ',NULL,NULL,'','','','',NULL,NULL,NULL,1,0,'2017-07-10 10:14:56',NULL,'2018-04-28 15:54:17'),(8,'Foysal Ahmed','নাম ','FA','T',NULL,NULL,1,'reazulislam0192@gmail.com','01722085398','2.jpg','','1970-01-01 00:00:00',NULL,'','2017-06-28','1970-01-01','Father name','',0,NULL,'','15',0,'  ',NULL,NULL,'','','','',NULL,NULL,NULL,1,0,'2017-07-20 10:16:07',NULL,'2018-04-16 12:18:31'),(9,'Super Admin','সুপার',NULL,'S',NULL,NULL,1,'reazulislam651@gmail.com','01722085398','admin.png','','2017-07-20 00:00:00',NULL,'','2017-07-31',NULL,'Father Name','Mother Name',0,NULL,'','15',0,' ',NULL,NULL,'','','','',NULL,NULL,NULL,1,0,'2017-07-20 10:51:45',NULL,'2018-04-04 12:46:53'),(10,'Siddiqur Islam','সিদ্দিকুর','SI',NULL,NULL,NULL,1,'reazuffl@atilimited.net','01548547542','3.jpg','','1970-01-01 00:00:00',NULL,'','2017-09-17','1970-01-01','My Father','My Mother',11,NULL,'1','15',0,'Dhaka ',NULL,NULL,'75','','5.5','',NULL,NULL,NULL,1,0,'2017-08-09 05:43:44',NULL,'2018-04-28 15:54:24'),(11,'Siam Ahmed','সিয়াম','SA',NULL,NULL,NULL,1,'reazulislam0191@gmail.com','01718475412','8.jpg','','1970-01-01 00:00:00',NULL,'14','2017-09-17','1970-01-01','My Father','My Mother',11,NULL,'1','11',0,' Dhaka      ',NULL,NULL,'48','','5.6','',NULL,NULL,NULL,1,0,'2017-08-23 10:56:28',NULL,'2018-04-16 11:30:43'),(17,'majhar','dd',NULL,NULL,NULL,NULL,1,'reazulislam651@gmail.com','01720920148','reazul (10) (10).png','rsz_1download.jpg','2018-04-17 00:00:00',NULL,'101','2018-04-17',NULL,'Md.Abdul Barek Miah','hh',11,NULL,'2','5',2145789945645,' ree ',NULL,'45','5','5','45','55',NULL,NULL,NULL,1,0,'2018-04-28 09:48:28',NULL,'2018-04-29 10:05:10');
/*!40000 ALTER TABLE `hr_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave`
--

DROP TABLE IF EXISTS `hr_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_leave` (
  `LEAVE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EMP_ID` int(11) NOT NULL,
  `DEPT_ID` tinyint(3) NOT NULL,
  `DESIG_ID` int(10) DEFAULT NULL,
  `LEAVE_FORM` date DEFAULT NULL,
  `LEAVE_TO` date DEFAULT NULL,
  `LEAVE_REASON` varchar(300) NOT NULL,
  `EMR_CONTACT` varchar(15) NOT NULL,
  `ADDRESS_DURING_LEAVE` varchar(150) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `APROVED_STATUS` tinyint(1) DEFAULT NULL,
  `APROVED_BY` tinyint(1) DEFAULT NULL,
  `APPROVED_REMARKS` varchar(100) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave`
--

LOCK TABLES `hr_leave` WRITE;
/*!40000 ALTER TABLE `hr_leave` DISABLE KEYS */;
INSERT INTO `hr_leave` VALUES (3,8,1,2,'2017-12-30','2018-01-01','dsd','434','er',1,1,9,'',18,'2017-12-26 14:19:52',9,NULL),(4,8,1,2,'2018-01-02','2018-01-04','fd','34','df',1,1,9,'ok',18,'2017-12-26 14:20:15',9,NULL),(5,4,3,2,'2017-12-30','2017-12-31','Enjoyment','01722085398','Dhaka,Bangladesh',1,1,9,'Emdad you can enjoy your leave',14,'2017-12-27 05:29:47',9,NULL),(6,4,3,2,'2018-01-04','2018-01-06','Demo leave','01722085398','Dhaka.',1,1,9,'ok',14,'2017-12-28 05:13:31',9,NULL);
/*!40000 ALTER TABLE `hr_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_approved_chd`
--

DROP TABLE IF EXISTS `hr_leave_approved_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_leave_approved_chd` (
  `LEAVE_APPROVED_CHD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `LEAVE_APPROVE_MST_ID` int(10) NOT NULL,
  `EMP_ID` int(11) NOT NULL,
  `LEAVE_CHD_ID` int(11) DEFAULT NULL,
  `LEAVE_TYPE_ID` int(11) DEFAULT NULL,
  `NO_OF_DAYS` int(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVE_APPROVED_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_approved_chd`
--

LOCK TABLES `hr_leave_approved_chd` WRITE;
/*!40000 ALTER TABLE `hr_leave_approved_chd` DISABLE KEYS */;
INSERT INTO `hr_leave_approved_chd` VALUES (17,9,8,5,8,1,1,1,'2017-12-26 14:20:40',NULL,NULL),(18,9,8,6,9,1,1,1,'2017-12-26 14:20:40',NULL,NULL),(19,10,8,7,8,1,1,1,'2017-12-26 14:20:59',NULL,NULL),(20,10,8,8,9,1,1,1,'2017-12-26 14:20:59',NULL,NULL),(21,11,4,9,10,1,1,1,'2017-12-27 05:31:19',NULL,NULL),(22,11,4,10,9,1,1,1,'2017-12-27 05:31:19',NULL,NULL),(23,12,8,5,8,1,1,1,'2017-12-27 06:31:36',NULL,NULL),(24,13,4,11,10,2,1,1,'2017-12-28 05:15:10',NULL,NULL),(25,13,4,12,9,1,1,1,'2017-12-28 05:15:10',NULL,NULL);
/*!40000 ALTER TABLE `hr_leave_approved_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_approved_mst`
--

DROP TABLE IF EXISTS `hr_leave_approved_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_leave_approved_mst` (
  `LEAVE_APPROVE_MST_ID` int(10) NOT NULL AUTO_INCREMENT,
  `LEAVE_ID` int(11) DEFAULT NULL,
  `EMP_ID` int(11) NOT NULL,
  `DEPT_ID` tinyint(3) NOT NULL,
  `DESIG_ID` int(10) DEFAULT NULL,
  `LEAVE_FORM` date DEFAULT NULL,
  `LEAVE_TO` date DEFAULT NULL,
  `LEAVE_REASON` varchar(300) NOT NULL,
  `EMR_CONTACT` varchar(15) NOT NULL,
  `ADDRESS_DURING_LEAVE` varchar(150) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `APROVED_BY` tinyint(1) DEFAULT NULL,
  `APPROVED_REMARKS` varchar(100) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVE_APPROVE_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_approved_mst`
--

LOCK TABLES `hr_leave_approved_mst` WRITE;
/*!40000 ALTER TABLE `hr_leave_approved_mst` DISABLE KEYS */;
INSERT INTO `hr_leave_approved_mst` VALUES (9,3,8,1,2,'2017-12-30','2018-01-01','dsd','434','er',1,NULL,NULL,1,'2017-12-26 14:20:40',NULL,NULL),(10,4,8,1,2,'2018-01-02','2018-01-04','fd','34','df',1,NULL,NULL,1,'2017-12-26 14:20:59',NULL,NULL),(11,5,4,3,2,'2017-12-30','2017-12-31','Enjoyment','01722085398','Dhaka,Bangladesh',1,NULL,NULL,1,'2017-12-27 05:31:19',NULL,NULL),(12,3,8,1,2,'2017-12-30','2018-01-01','dsd','434','er',1,NULL,NULL,1,'2017-12-27 06:31:36',NULL,NULL),(13,6,4,3,2,'2018-01-04','2018-01-06','Demo leave','01722085398','Dhaka.',1,NULL,NULL,1,'2017-12-28 05:15:10',NULL,NULL);
/*!40000 ALTER TABLE `hr_leave_approved_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_chd`
--

DROP TABLE IF EXISTS `hr_leave_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_leave_chd` (
  `LEAVE_CHD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `LEAVE_ID` int(10) NOT NULL,
  `LEAVE_TYPE_ID` int(11) DEFAULT NULL,
  `NO_OF_DAYS` int(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVE_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_chd`
--

LOCK TABLES `hr_leave_chd` WRITE;
/*!40000 ALTER TABLE `hr_leave_chd` DISABLE KEYS */;
INSERT INTO `hr_leave_chd` VALUES (5,3,8,1,1,18,'2017-12-26 14:19:52',NULL,NULL),(7,4,8,2,1,18,'2017-12-26 14:20:15',NULL,NULL),(9,5,10,1,1,14,'2017-12-27 05:29:47',NULL,NULL),(11,6,10,2,1,14,'2017-12-28 05:13:31',NULL,NULL),(12,6,9,1,1,14,'2017-12-28 05:13:31',NULL,NULL);
/*!40000 ALTER TABLE `hr_leave_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_type`
--

DROP TABLE IF EXISTS `hr_leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_leave_type` (
  `LEAVE_TYPE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(300) NOT NULL,
  `LEAVE_DESC` varchar(300) NOT NULL,
  `TOTAL_DAYS` varchar(15) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVE_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_type`
--

LOCK TABLES `hr_leave_type` WRITE;
/*!40000 ALTER TABLE `hr_leave_type` DISABLE KEYS */;
INSERT INTO `hr_leave_type` VALUES (8,'Sick Leave','Sick Leave','10',1,1,'2017-12-26 09:55:49',1,NULL),(9,'Casual Leave','Casual Leave','10',1,1,'2017-12-26 09:56:08',1,NULL),(10,'Earn Leave','Earn Leave','10',1,1,'2017-12-27 05:28:48',NULL,NULL);
/*!40000 ALTER TABLE `hr_leave_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_degree`
--

DROP TABLE IF EXISTS `ins_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_degree` (
  `DEGREE_ID` tinyint(6) NOT NULL AUTO_INCREMENT,
  `DEGREE_NAME` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `CADM_STATUS` tinyint(1) DEFAULT '0',
  `PROSPECTUS` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL,
  `BROCHURE` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_degree`
--

LOCK TABLES `ins_degree` WRITE;
/*!40000 ALTER TABLE `ins_degree` DISABLE KEYS */;
INSERT INTO `ins_degree` VALUES (3,'Undergraduate',1,1,'2017-04-23 04:12:06',NULL,'2017-09-24 16:36:54',0,NULL,NULL),(4,'Postgraduate',1,1,'2017-04-23 09:25:56',NULL,'2017-06-14 14:49:03',0,NULL,NULL),(5,'Diploma',1,1,'2017-04-23 09:26:04',NULL,'2017-11-25 10:11:47',0,NULL,NULL);
/*!40000 ALTER TABLE `ins_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_dept`
--

DROP TABLE IF EXISTS `ins_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dept` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_ABBR` varchar(10) COLLATE utf8_croatian_ci NOT NULL,
  `DEPT_NAME` varchar(200) COLLATE utf8_croatian_ci NOT NULL,
  `UFOR_ACM` tinyint(1) DEFAULT '1' COMMENT 'use for academic',
  `UD_SLNO` tinyint(3) NOT NULL,
  `ACTIVE_STATUS` smallint(1) DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_dept`
--

LOCK TABLES `ins_dept` WRITE;
/*!40000 ALTER TABLE `ins_dept` DISABLE KEYS */;
INSERT INTO `ins_dept` VALUES (1,'TE','Textile Engineering',1,1,1,1,'2017-06-14 08:29:45',NULL,'2017-06-15 10:22:38'),(2,'CSE','Computer Science & Engineering',1,2,1,1,'2017-06-14 08:30:00',NULL,'2017-06-15 10:22:50'),(3,'EEE','Electrical & Electronics Engineering ',1,3,1,1,'2017-06-14 08:30:16',NULL,'2017-06-15 10:22:57'),(4,'ETE','Electronics & Telecommunication Engineering',1,4,1,1,'2017-06-14 08:30:31',NULL,'2017-06-15 10:27:09'),(5,'MME','Mechatronics and Micro-Mechatronics Engineering',1,5,1,1,'2017-06-14 08:31:32',NULL,'2017-06-15 10:27:15'),(6,'MP','Medical Physics',1,6,1,1,'2017-06-14 08:31:52',NULL,'2018-05-14 10:00:00'),(7,'BB','Biochemistry and Biotechnology ',1,7,1,1,'2017-06-14 08:32:44',NULL,'2017-06-15 10:27:29'),(8,'M','Microbiology',1,8,1,1,'2017-06-14 08:33:10',NULL,'2017-06-15 10:27:37'),(9,'P','Pharmacy',1,9,1,1,'2017-06-14 08:33:26',NULL,'2017-06-15 10:27:39'),(10,'BA','Business Administrator',1,10,1,1,'2017-06-14 08:34:06',NULL,'2017-06-15 10:27:41'),(11,'MIS','Management Information System',1,11,1,1,'2017-06-14 08:34:38',NULL,'2017-06-15 10:27:43'),(12,'E','English',1,12,1,1,'2017-06-14 08:34:59',NULL,'2017-06-15 10:27:45'),(13,'LIS','Library and Information Science',1,13,1,1,'2017-06-14 08:35:29',NULL,'2017-06-15 10:27:47'),(14,'IS','Islamic Studies',1,14,1,1,'2017-06-14 08:35:55',NULL,'2017-06-15 10:27:49'),(15,'L','Law',1,15,1,1,'2017-06-14 08:36:06',NULL,'2017-06-15 10:27:52'),(17,'ADM','Admission',0,16,1,1,'2017-06-21 04:38:04',NULL,NULL),(18,'COE','Controller of Examination',0,1,1,1,'2017-08-09 05:35:59',NULL,NULL);
/*!40000 ALTER TABLE `ins_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_fac_dept`
--

DROP TABLE IF EXISTS `ins_fac_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fac_dept` (
  `FAC_DEPT_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`FAC_DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_fac_dept`
--

LOCK TABLES `ins_fac_dept` WRITE;
/*!40000 ALTER TABLE `ins_fac_dept` DISABLE KEYS */;
INSERT INTO `ins_fac_dept` VALUES (1,5,1,0,'2017-06-14 08:29:45',NULL,'2017-06-15 10:31:05'),(2,5,2,0,'2017-06-14 08:30:00',NULL,'2017-06-15 10:31:13'),(3,5,3,0,'2017-06-14 08:30:16',NULL,'2017-06-15 10:31:23'),(4,5,4,0,'2017-06-14 08:30:31',NULL,'2017-06-15 10:31:34'),(5,5,5,0,'2017-06-14 08:31:32',NULL,'2017-06-15 10:33:54'),(6,5,6,0,'2017-06-14 08:31:52',NULL,'2017-06-15 10:33:43'),(7,1,7,0,'2017-06-14 08:32:44',NULL,'2017-06-15 10:33:33'),(8,1,8,0,'2017-06-14 08:33:10',NULL,'2017-06-15 10:33:27'),(9,1,9,0,'2017-06-14 08:33:26',NULL,'2017-06-15 10:33:19'),(10,2,10,0,'2017-06-14 08:34:06',NULL,'2017-06-15 10:33:04'),(11,2,11,0,'2017-06-14 08:34:38',NULL,'2017-06-15 10:32:52'),(12,3,12,0,'2017-06-14 08:34:59',NULL,'2017-06-15 10:32:37'),(13,3,13,0,'2017-06-14 08:35:29',NULL,'2017-06-15 10:32:29'),(14,3,14,0,'2017-06-14 08:35:55',NULL,'2017-06-15 10:32:19'),(15,4,15,0,'2017-06-14 08:36:06',NULL,'2017-06-15 10:31:56'),(16,1,16,0,'2017-06-15 04:16:19',NULL,NULL);
/*!40000 ALTER TABLE `ins_fac_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_faculty`
--

DROP TABLE IF EXISTS `ins_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_faculty` (
  `FACULTY_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `FACULTY_NAME` varchar(150) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UD_SLNO` tinyint(1) NOT NULL COMMENT 'user define serial no',
  `START_DT` date NOT NULL,
  PRIMARY KEY (`FACULTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_faculty`
--

LOCK TABLES `ins_faculty` WRITE;
/*!40000 ALTER TABLE `ins_faculty` DISABLE KEYS */;
INSERT INTO `ins_faculty` VALUES (1,'School of Bio-Medical Science',1,1,'2017-04-23 08:08:00',NULL,'2018-03-28 16:54:32',1,'0000-00-00'),(2,'School of Business Administration',1,1,'2017-04-23 08:08:09',NULL,'2017-06-15 10:07:17',2,'0000-00-00'),(4,'School of Law',1,1,'2017-04-23 09:27:02',NULL,'2017-06-15 10:08:11',4,'0000-00-00'),(5,'School of Science & Engineering',1,1,'2017-04-23 09:27:13',NULL,'2017-06-15 10:08:19',5,'0000-00-00'),(18,'ddfgsdfg',1,1,'2018-03-22 11:33:50',NULL,NULL,127,'0000-00-00');
/*!40000 ALTER TABLE `ins_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_program`
--

DROP TABLE IF EXISTS `ins_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_program` (
  `PROGRAM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROGRAM_NAME` varchar(150) COLLATE utf8_croatian_ci DEFAULT NULL,
  `PROGRAM_SHORT_NAME` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `FACULTY_ID` smallint(6) DEFAULT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SESSION_TYPE` varchar(1) COLLATE utf8_croatian_ci NOT NULL,
  `TOTAL_SESSION` int(11) NOT NULL,
  `DURATION` tinyint(1) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UD_SLNO` smallint(3) NOT NULL COMMENT 'user define serial no',
  PRIMARY KEY (`PROGRAM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_program`
--

LOCK TABLES `ins_program` WRITE;
/*!40000 ALTER TABLE `ins_program` DISABLE KEYS */;
INSERT INTO `ins_program` VALUES (1,'B.Sc. in Textile Engineering','Bsc in TE',3,5,1,'',8,0,1,1,'2017-06-14 08:37:59',NULL,'2017-07-30 16:52:25',1),(2,'B.Sc. in Computer Science & Engineering','Bsc in CSE',3,5,2,'',8,0,1,1,'2017-06-14 08:38:21',NULL,'2017-07-30 16:52:32',2),(3,'B.Sc. in Electrical & Electronics Engineering ','Bsc in EEE',3,5,3,'',8,0,1,1,'2017-06-14 08:39:00',NULL,'2017-07-30 16:52:37',3),(4,'B.Sc. in Electronics & Telecommunication Engineering','Bsc in ETE',3,5,4,'',8,0,1,1,'2017-06-14 08:39:18',NULL,'2017-07-30 16:52:45',4),(5,'M.S. in Medical Physics','Bsc in MP',4,5,6,'',8,0,1,1,'2017-06-14 08:40:03',NULL,'2017-07-30 16:52:51',0),(6,'B.Sc. in Biochemistry and Biotechnology','Bsc in BB',3,1,7,'',8,0,1,1,'2017-06-14 08:40:27',NULL,'2017-07-30 16:53:01',1),(7,'B.Sc. in Microbiology',NULL,3,1,8,'',8,0,1,1,'2017-06-14 08:40:44',NULL,'2017-06-15 10:41:38',2),(8,'B.Sc. in Pharmacy ',NULL,3,1,9,'',8,0,1,1,'2017-06-14 08:40:57',NULL,'2017-06-15 10:41:51',3),(9,'Bachelor of Business Administration',NULL,3,2,10,'',8,0,1,1,'2017-06-14 08:41:34',NULL,'2017-06-15 10:42:15',1),(10,'Master of Business Administration',NULL,4,2,10,'',8,0,1,1,'2017-06-14 08:41:56',NULL,'2017-06-15 10:44:48',0),(11,'Executive Masters of Business Administration',NULL,4,2,10,'',8,0,1,1,'2017-06-14 08:42:27',NULL,'2017-06-15 10:45:19',0),(12,'Bachelor of Management Information Systems',NULL,3,2,11,'',8,0,1,1,'2017-06-14 08:43:31',NULL,'2017-07-23 11:56:49',2),(13,'Master of Arts in English ',NULL,4,3,12,'',8,0,1,1,'2017-06-14 08:45:02',NULL,'2017-06-15 10:46:20',0),(14,'Master of Library & Information Science',NULL,4,3,13,'',8,0,1,1,'2017-06-14 08:45:36',NULL,'2017-06-15 10:46:37',0),(15,'Master of Arts in Islamic Studies',NULL,4,3,14,'',8,0,1,1,'2017-06-14 08:46:40',NULL,'2017-06-15 10:46:51',0),(16,'Master of Law',NULL,4,5,15,'',8,0,1,1,'2017-06-14 08:47:12',NULL,NULL,0),(17,'Postgraduate Diploma in library and Information Science',NULL,4,3,13,'',8,0,1,1,'2017-06-14 08:49:54',NULL,'2017-06-15 10:47:17',0),(18,'Master of Arts Islamic Studies',NULL,4,3,14,'',8,0,1,1,'2017-06-14 08:51:05',NULL,'2017-06-15 10:47:34',0),(19,'M.Sc. Mechatronic and Micro-Mechatronics Engineering',NULL,4,5,5,'',8,0,1,1,'2017-06-14 08:52:32',NULL,'2017-06-15 10:48:03',0),(20,'B.A Hons in English',NULL,3,3,12,'',8,0,1,1,'2017-06-14 08:53:24',NULL,'2017-06-15 10:42:53',1),(21,'Bachelor of Library and Information Science',NULL,3,3,13,'',8,0,1,1,'2017-06-14 08:54:14',NULL,'2017-06-15 10:43:19',2),(22,'B.A  Hons in Islamic Studies ',NULL,3,3,14,'',8,0,1,1,'2017-06-14 08:55:24',NULL,'2017-06-15 10:43:36',3),(23,'Bachelor of Law',NULL,3,4,15,'',8,0,1,1,'2017-06-14 08:56:32',NULL,'2017-06-15 10:43:49',1),(24,'M.Sc In CSE',NULL,4,5,2,'',12,0,1,1,'2018-07-24 13:06:44',NULL,NULL,5);
/*!40000 ALTER TABLE `ins_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_sduration`
--

DROP TABLE IF EXISTS `ins_sduration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_sduration` (
  `SDURATION_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `SESSION_ID` tinyint(1) NOT NULL,
  `SESSION_TYPE` varchar(1) NOT NULL,
  `START_DT` date NOT NULL,
  `END_DT` date NOT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SDURATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_sduration`
--

LOCK TABLES `ins_sduration` WRITE;
/*!40000 ALTER TABLE `ins_sduration` DISABLE KEYS */;
/*!40000 ALTER TABLE `ins_sduration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_session`
--

DROP TABLE IF EXISTS `ins_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_session` (
  `SESSION_ID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `SESSION_NAME` varchar(35) COLLATE utf8_croatian_ci DEFAULT NULL,
  `SEMESTER` tinyint(1) DEFAULT '1',
  `TRIMESTER` tinyint(1) DEFAULT '1',
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UD_SLNO` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_session`
--

LOCK TABLES `ins_session` WRITE;
/*!40000 ALTER TABLE `ins_session` DISABLE KEYS */;
INSERT INTO `ins_session` VALUES (1,'Fall',1,1,1,1,'2017-04-24 05:56:46',NULL,'2017-06-20 10:06:19',1),(2,'Spring',1,1,1,1,'2017-04-24 05:56:54',NULL,'2017-06-20 10:06:35',2),(3,'Summer',1,1,1,1,'2017-04-24 05:57:01',NULL,'2017-06-20 10:08:39',3);
/*!40000 ALTER TABLE `ins_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_years`
--

DROP TABLE IF EXISTS `ins_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_years` (
  `YEAR_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `YEAR_TITLE` varchar(200) NOT NULL,
  `YEAR_DESC` text CHARACTER SET latin1,
  `START_DT` date NOT NULL,
  `END_DT` date NOT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `DINYEAR` smallint(4) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`YEAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_years`
--

LOCK TABLES `ins_years` WRITE;
/*!40000 ALTER TABLE `ins_years` DISABLE KEYS */;
INSERT INTO `ins_years` VALUES (1,'2013','<p>fg</p>','2013-01-01','2013-12-31',0,'2017-04-24 09:14:19',NULL,'2017-05-14 11:59:38',0,1),(2,'2014','<p><br></p>','2014-01-01','2014-12-31',0,'2017-04-24 09:22:53',NULL,'2017-05-14 12:00:09',0,1),(4,'2015','','2015-01-01','2015-12-31',0,'2017-05-14 05:48:51',NULL,'2017-05-14 12:00:53',0,1),(5,'2016','','2016-01-01','2016-12-31',0,'2017-05-14 05:49:26',NULL,'2017-05-14 12:00:26',0,1),(6,'2017','<p>Current year</p>','2017-01-01','2017-12-31',0,'2017-05-14 05:58:12',NULL,NULL,0,1),(7,'2018','','2017-01-06','1970-01-01',0,'2017-06-01 06:16:19',NULL,'2017-06-14 10:39:14',0,1);
/*!40000 ALTER TABLE `ins_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_ysession`
--

DROP TABLE IF EXISTS `ins_ysession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ysession` (
  `YSESSION_ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `SESSION_ID` int(11) NOT NULL,
  `DINYEAR` varchar(10) NOT NULL,
  `IS_CURRENT` tinyint(1) NOT NULL DEFAULT '1',
  `TRIMESTER` tinyint(1) DEFAULT '1',
  `SEMESTER` tinyint(1) DEFAULT '1',
  `UD_SLNO` int(3) DEFAULT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`YSESSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_ysession`
--

LOCK TABLES `ins_ysession` WRITE;
/*!40000 ALTER TABLE `ins_ysession` DISABLE KEYS */;
INSERT INTO `ins_ysession` VALUES (1,1,'2016',0,1,0,10,1,'2017-05-14 06:04:30',NULL,'2017-06-15 11:17:04',1),(2,2,'2016',0,1,0,11,1,'2017-05-14 06:04:34',NULL,'2017-06-15 11:17:07',1),(3,3,'2016',0,1,0,12,1,'2017-05-14 06:04:38',NULL,'2017-06-15 11:17:10',1),(4,1,'2017',0,1,0,13,1,'2017-05-14 06:04:46',NULL,'2017-06-15 11:17:12',1),(5,2,'2017',0,1,0,14,1,'2017-05-14 06:04:49',1,'2017-10-10 15:31:02',1),(6,3,'2017',1,1,0,15,1,'2017-05-14 06:04:52',1,'2017-10-10 15:31:02',1),(7,3,'2015',0,1,0,1,1,'2017-05-15 04:03:47',1,'2017-07-11 17:01:21',1),(8,1,'2013',0,1,0,2,1,'2017-06-14 05:02:05',NULL,'2017-06-15 11:17:33',1),(9,2,'2013',0,1,0,3,1,'2017-06-14 05:02:09',NULL,'2017-06-15 11:17:35',1),(10,3,'2013',0,1,0,4,1,'2017-06-14 05:02:13',NULL,'2017-06-15 11:17:37',1),(11,3,'2014',0,1,0,5,1,'2017-06-14 05:02:16',NULL,'2017-06-15 11:17:38',1),(12,2,'2014',0,1,0,6,1,'2017-06-14 05:02:19',NULL,'2017-06-15 11:17:41',1),(13,1,'2014',0,1,0,7,1,'2017-06-14 05:02:22',NULL,'2017-06-15 11:17:43',1),(14,1,'2015',0,1,0,8,1,'2017-06-14 05:02:26',NULL,'2017-06-15 11:17:45',1),(15,2,'2015',0,1,0,9,1,'2017-06-14 05:02:30',NULL,'2017-06-15 11:17:50',1);
/*!40000 ALTER TABLE `ins_ysession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_issue_chd`
--

DROP TABLE IF EXISTS `inv_issue_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_issue_chd` (
  `ISSUE_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REQ_CHD_ID` int(11) DEFAULT NULL,
  `ISSUE_MST_ID` int(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ISSUED_QTY` varchar(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ISSUE_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_issue_chd`
--

LOCK TABLES `inv_issue_chd` WRITE;
/*!40000 ALTER TABLE `inv_issue_chd` DISABLE KEYS */;
INSERT INTO `inv_issue_chd` VALUES (1,5,1,20,'2',1,1,'2018-04-07 10:06:10',NULL,NULL),(2,6,1,21,'1',1,1,'2018-04-07 10:06:10',NULL,NULL),(3,1,2,22,'10',1,1,'2018-04-12 09:07:07',NULL,NULL),(4,2,2,25,'1',1,1,'2018-04-12 09:07:07',NULL,NULL),(5,3,3,20,'1',1,1,'2018-04-12 09:10:56',NULL,NULL),(6,3,4,20,'2',1,1,'2018-04-12 09:11:28',NULL,NULL),(7,3,5,20,'2',1,1,'2018-04-12 09:12:44',NULL,NULL);
/*!40000 ALTER TABLE `inv_issue_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_issue_mst`
--

DROP TABLE IF EXISTS `inv_issue_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_issue_mst` (
  `ISSUE_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REQ_MST_ID` int(11) DEFAULT NULL,
  `ISSUE_NO` varchar(20) DEFAULT NULL,
  `ISSUE_DT` date DEFAULT NULL,
  `ISSUE_EMP` int(20) DEFAULT NULL,
  `ISSUE_DEPT` int(20) DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `DELIVERED_BY` int(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ISSUE_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_issue_mst`
--

LOCK TABLES `inv_issue_mst` WRITE;
/*!40000 ALTER TABLE `inv_issue_mst` DISABLE KEYS */;
INSERT INTO `inv_issue_mst` VALUES (1,4,'IS2018040001','2018-04-07',9,0,'ok',NULL,1,1,'2018-04-07 10:06:10',NULL,NULL),(2,1,'IS2018040002','2018-04-12',9,0,'Issue complete',NULL,1,1,'2018-04-12 09:07:06',NULL,NULL),(3,2,'IS2018040003','2018-04-12',9,0,'first',NULL,1,1,'2018-04-12 09:10:56',NULL,NULL),(4,2,'IS2018040004','2018-04-12',9,0,'',NULL,1,1,'2018-04-12 09:11:28',NULL,NULL),(5,2,'IS2018040005','2018-04-12',9,0,'',NULL,1,1,'2018-04-12 09:12:44',NULL,NULL);
/*!40000 ALTER TABLE `inv_issue_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_issue_return_chd`
--

DROP TABLE IF EXISTS `inv_issue_return_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_issue_return_chd` (
  `ISSUE_RET_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_RET_MST_ID` int(11) DEFAULT NULL,
  `ISSUE_CHD_ID` int(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ISSUED_RET_QTY` varchar(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ISSUE_RET_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_issue_return_chd`
--

LOCK TABLES `inv_issue_return_chd` WRITE;
/*!40000 ALTER TABLE `inv_issue_return_chd` DISABLE KEYS */;
INSERT INTO `inv_issue_return_chd` VALUES (1,1,1,20,'10',1,0,'2017-12-27 06:32:41',1,'2017-12-27 00:00:00'),(2,2,1,20,'5',1,0,'2017-12-28 15:36:12',1,'2017-12-28 00:00:00'),(3,3,5,32,'5',1,0,'2018-01-02 07:07:21',1,'2018-01-02 00:00:00'),(4,4,5,32,'2',1,0,'2018-01-02 07:08:10',1,'2018-01-02 00:00:00'),(5,5,7,20,'2',1,0,'2018-04-12 09:15:48',1,'2018-04-12 00:00:00');
/*!40000 ALTER TABLE `inv_issue_return_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_issue_return_mst`
--

DROP TABLE IF EXISTS `inv_issue_return_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_issue_return_mst` (
  `ISSUE_RET_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_MST_ID` int(11) DEFAULT NULL,
  `ISSUE_RET_NO` varchar(20) DEFAULT NULL,
  `ISSUE_RET_DT` date DEFAULT NULL,
  `ISSUE_RET_EMP` int(20) DEFAULT NULL,
  `ISSUE_RET_DEPT` int(20) DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `DELIVERED_BY` int(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ISSUE_RET_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_issue_return_mst`
--

LOCK TABLES `inv_issue_return_mst` WRITE;
/*!40000 ALTER TABLE `inv_issue_return_mst` DISABLE KEYS */;
INSERT INTO `inv_issue_return_mst` VALUES (1,1,'IR2017120001','2017-12-27',9,0,NULL,NULL,1,1,'2017-12-27 06:32:41',NULL,NULL),(2,1,'IR2017120002','2017-12-28',9,0,NULL,NULL,1,1,'2017-12-28 15:36:12',NULL,NULL),(5,5,'IR2018040005','2018-04-12',9,0,NULL,NULL,1,1,'2018-04-12 09:15:48',NULL,NULL),(6,5,'IR2018040006','2018-04-15',9,0,NULL,NULL,1,1,'2018-04-15 09:38:01',NULL,NULL),(7,5,'IR2018040007','2018-04-15',9,0,NULL,NULL,1,1,'2018-04-15 09:38:29',NULL,NULL);
/*!40000 ALTER TABLE `inv_issue_return_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_item`
--

DROP TABLE IF EXISTS `inv_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_item` (
  `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `ITEM_NAME` varchar(150) DEFAULT NULL,
  `ITEM_CODE` varchar(20) DEFAULT NULL,
  `DESC` varchar(100) DEFAULT NULL,
  `UNIT_ID` int(11) DEFAULT NULL,
  `IS_ITEM` int(1) NOT NULL DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_item`
--

LOCK TABLES `inv_item` WRITE;
/*!40000 ALTER TABLE `inv_item` DISABLE KEYS */;
INSERT INTO `inv_item` VALUES (1,0,'Paper','101','',21,0,1,1,'2017-11-22 11:03:48',1,'2017-12-21 14:10:33'),(10,0,'Pencil','005','',11,0,1,1,'2017-11-23 09:27:33',1,'2017-12-21 14:12:25'),(12,0,'Basket','007','buy',11,0,1,1,'2017-11-25 06:49:57',1,'2017-11-26 15:04:36'),(13,0,'Marker','','',11,0,1,1,'2017-11-26 09:05:18',NULL,NULL),(14,0,'Stick Glue','00012','',18,0,1,1,'2017-11-26 09:06:08',NULL,NULL),(20,1,'Paper A4','102','',21,1,1,1,'2017-12-04 09:10:40',1,'2017-12-21 14:11:03'),(21,1,'Double Paper A4','103','',21,1,1,1,'2017-12-04 09:14:41',1,'2017-12-21 14:11:29'),(22,10,'Pencil 2B','','',11,1,1,1,'2017-12-04 09:16:11',1,'2017-12-21 14:12:47'),(23,10,'Pencil HB','','',11,1,1,1,'2017-12-04 09:16:41',1,'2017-12-21 14:13:10'),(24,13,'White Marker','w1','',11,1,1,1,'2017-12-21 03:32:25',1,'2017-12-21 14:13:50'),(25,1,'Paper A3','104','',21,1,1,1,'2017-12-21 08:11:50',NULL,NULL),(26,13,'Red Marker','','',11,1,1,1,'2017-12-21 08:14:13',NULL,NULL),(27,13,'Blue Marker','','',11,1,1,1,'2017-12-21 08:14:29',NULL,NULL),(28,13,'Black Marker','','',11,1,1,1,'2017-12-21 08:14:57',NULL,NULL),(31,0,'Book Binding','999','ok',11,0,1,1,'2018-01-02 06:58:47',NULL,NULL),(32,31,'Red cotton','969','ok',11,1,1,1,'2018-01-02 06:59:21',NULL,NULL),(33,1,'Ligal','l01','dff',3,0,1,1,'2018-05-14 06:43:33',NULL,NULL);
/*!40000 ALTER TABLE `inv_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_item_category`
--

DROP TABLE IF EXISTS `inv_item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_item_category` (
  `ITEM_CAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ITEM_CAT_ID` int(11) DEFAULT NULL,
  `CATEGORY_NAME` varchar(100) DEFAULT NULL,
  `DESC` varchar(100) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ITEM_CAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_item_category`
--

LOCK TABLES `inv_item_category` WRITE;
/*!40000 ALTER TABLE `inv_item_category` DISABLE KEYS */;
INSERT INTO `inv_item_category` VALUES (1,0,'Category','desc',1,0,'2017-11-22 09:09:09',NULL,NULL),(2,0,'Category 2','desc',1,0,'2017-01-22 18:00:00',NULL,'2017-11-23 14:21:31');
/*!40000 ALTER TABLE `inv_item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_po_chd`
--

DROP TABLE IF EXISTS `inv_po_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_po_chd` (
  `PO_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_MST_ID` int(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `ORDER_QTY` varchar(20) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PO_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='purchase order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_po_chd`
--

LOCK TABLES `inv_po_chd` WRITE;
/*!40000 ALTER TABLE `inv_po_chd` DISABLE KEYS */;
INSERT INTO `inv_po_chd` VALUES (1,1,20,5,'500',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(2,1,21,6,'400',NULL,29,'2018-04-09 08:28:31',NULL,'2018-04-10 14:34:39'),(3,1,22,6,'1000',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(4,1,23,7,'500',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(5,1,24,6,'500',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(6,1,26,6,'1000',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(7,1,32,6,'400',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(8,1,27,6,'1000',NULL,29,'2018-04-09 08:28:31',NULL,NULL),(9,2,25,6,'500',NULL,29,'2018-04-09 08:41:46',NULL,NULL);
/*!40000 ALTER TABLE `inv_po_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_po_mst`
--

DROP TABLE IF EXISTS `inv_po_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_po_mst` (
  `PO_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_NO` varchar(20) DEFAULT NULL,
  `PO_DATE` date DEFAULT NULL,
  `REMAREK` varchar(250) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PO_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='purchage order ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_po_mst`
--

LOCK TABLES `inv_po_mst` WRITE;
/*!40000 ALTER TABLE `inv_po_mst` DISABLE KEYS */;
INSERT INTO `inv_po_mst` VALUES (1,'P2018040001','2018-04-09','test',1,29,'2018-04-09 08:28:31',NULL,NULL),(2,'P2018040002','2018-04-09','',1,29,'2018-04-09 08:41:46',NULL,NULL);
/*!40000 ALTER TABLE `inv_po_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_pr_chd`
--

DROP TABLE IF EXISTS `inv_pr_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_pr_chd` (
  `PR_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PR_MST_ID` int(11) DEFAULT NULL,
  `PO_CHD_ID` int(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `RECEIVE_QTY` int(20) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UNIT_PRICE` double DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PR_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='purchase receive';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_pr_chd`
--

LOCK TABLES `inv_pr_chd` WRITE;
/*!40000 ALTER TABLE `inv_pr_chd` DISABLE KEYS */;
INSERT INTO `inv_pr_chd` VALUES (1,1,1,20,5,500,1,29,'2018-04-09 08:41:03',NULL,NULL,100,''),(2,1,2,21,6,400,1,29,'2018-04-09 08:41:03',NULL,NULL,50,''),(3,1,3,22,6,1000,1,29,'2018-04-09 08:41:03',NULL,NULL,40,''),(4,1,4,23,7,500,1,29,'2018-04-09 08:41:03',NULL,NULL,50,''),(5,1,5,24,6,500,1,29,'2018-04-09 08:41:03',NULL,NULL,30,''),(6,1,6,26,6,1000,1,29,'2018-04-09 08:41:03',NULL,NULL,20,''),(7,1,7,32,6,400,1,29,'2018-04-09 08:41:03',NULL,NULL,20,''),(8,1,8,27,6,1000,1,29,'2018-04-09 08:41:03',NULL,NULL,50,''),(9,2,9,25,6,500,1,29,'2018-04-09 08:42:01',NULL,NULL,10,'');
/*!40000 ALTER TABLE `inv_pr_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_pr_mst`
--

DROP TABLE IF EXISTS `inv_pr_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_pr_mst` (
  `PR_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PR_MST_NO` varchar(20) DEFAULT NULL,
  `PO_MST_ID` int(11) DEFAULT NULL,
  `PR_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PR_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='purchase receive';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_pr_mst`
--

LOCK TABLES `inv_pr_mst` WRITE;
/*!40000 ALTER TABLE `inv_pr_mst` DISABLE KEYS */;
INSERT INTO `inv_pr_mst` VALUES (1,'OR2018040001',1,'2018-04-09 08:41:03',1,29,'2018-04-09 08:41:03',NULL,NULL),(2,'OR2018040002',2,'2018-04-09 08:42:01',1,29,'2018-04-09 08:42:01',NULL,NULL);
/*!40000 ALTER TABLE `inv_pr_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_pr_return_chd`
--

DROP TABLE IF EXISTS `inv_pr_return_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_pr_return_chd` (
  `PR_RET_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PR_RET_MST_ID` int(11) DEFAULT NULL,
  `PR_CHD_ID` int(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `RET_RECEIVE_QTY` int(20) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PR_RET_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_pr_return_chd`
--

LOCK TABLES `inv_pr_return_chd` WRITE;
/*!40000 ALTER TABLE `inv_pr_return_chd` DISABLE KEYS */;
INSERT INTO `inv_pr_return_chd` VALUES (1,1,181,20,5,10,NULL,0,'2017-12-27 06:30:31',1,'2017-12-27 00:00:00'),(2,2,183,26,7,10,NULL,0,'2017-12-28 04:52:09',1,'2017-12-28 00:00:00');
/*!40000 ALTER TABLE `inv_pr_return_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_pr_return_mst`
--

DROP TABLE IF EXISTS `inv_pr_return_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_pr_return_mst` (
  `PR_RET_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PR_RET_MST_NO` varchar(20) DEFAULT NULL,
  `PR_MST_ID` int(11) DEFAULT NULL,
  `PR_RET_DATE` date DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PR_RET_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_pr_return_mst`
--

LOCK TABLES `inv_pr_return_mst` WRITE;
/*!40000 ALTER TABLE `inv_pr_return_mst` DISABLE KEYS */;
INSERT INTO `inv_pr_return_mst` VALUES (1,'ORE2017120001',1,'2017-12-27',NULL,1,'2017-12-27 06:30:31',NULL,NULL),(2,'ORE2017120002',1,'2017-12-28',NULL,1,'2017-12-28 04:52:09',NULL,NULL);
/*!40000 ALTER TABLE `inv_pr_return_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_requisition_chd`
--

DROP TABLE IF EXISTS `inv_requisition_chd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_requisition_chd` (
  `REQ_CHD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REQ_MST_ID` int(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `REQUIREMENT_QTY` varchar(11) DEFAULT NULL,
  `DELIVERED_QTY` varchar(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`REQ_CHD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_requisition_chd`
--

LOCK TABLES `inv_requisition_chd` WRITE;
/*!40000 ALTER TABLE `inv_requisition_chd` DISABLE KEYS */;
INSERT INTO `inv_requisition_chd` VALUES (1,1,22,'10',NULL,1,25,'2018-04-09 07:04:15',NULL,NULL),(2,1,25,'1',NULL,1,25,'2018-04-09 07:04:15',NULL,'2018-04-09 13:42:53'),(3,2,20,'5',NULL,1,24,'2018-04-12 09:08:40',NULL,NULL),(4,3,22,'3',NULL,1,25,'2018-04-15 06:20:49',NULL,NULL),(5,3,26,'2',NULL,1,25,'2018-04-15 06:20:49',NULL,NULL);
/*!40000 ALTER TABLE `inv_requisition_chd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_requisition_mst`
--

DROP TABLE IF EXISTS `inv_requisition_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_requisition_mst` (
  `REQ_MST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REQ_NO` varchar(20) DEFAULT NULL,
  `REQ_DT` date DEFAULT NULL,
  `REQ_RECEIVE_DT` date DEFAULT NULL,
  `REQ_FOR` varchar(20) DEFAULT NULL,
  `REQ_TYPE` varchar(20) DEFAULT NULL COMMENT 'Argent,Normal',
  `REMARKS` varchar(200) DEFAULT NULL,
  `ISSUED_STATUS` tinyint(1) NOT NULL DEFAULT '0',
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`REQ_MST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_requisition_mst`
--

LOCK TABLES `inv_requisition_mst` WRITE;
/*!40000 ALTER TABLE `inv_requisition_mst` DISABLE KEYS */;
INSERT INTO `inv_requisition_mst` VALUES (1,'R2018040001','2018-04-01','2018-04-09','D','353','Test',1,1,25,'2018-04-09 07:04:15',NULL,'2018-04-12 15:07:07'),(2,'R2018040002','2018-04-12','2018-04-15','P','353','test',1,1,24,'2018-04-12 09:08:40',NULL,'2018-04-12 15:10:56'),(3,'R2018040003','2018-04-15','2018-04-16','D','354','Sourov test',0,1,25,'2018-04-15 06:20:49',NULL,NULL);
/*!40000 ALTER TABLE `inv_requisition_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_stock`
--

DROP TABLE IF EXISTS `inv_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_stock` (
  `STOCK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(11) DEFAULT NULL,
  `STORE_ID` int(11) DEFAULT NULL,
  `OPENING` int(11) DEFAULT NULL,
  `STOCK_IN` int(11) DEFAULT NULL,
  `STOCK_OUT` int(11) DEFAULT NULL,
  `BALANCE` int(11) DEFAULT NULL,
  `TRN_TYPE` varchar(10) DEFAULT NULL COMMENT 'COMMENT ON COLUMN VMS.VMS_MSTOCK.TRAN_FLAG IS ''This Flag Show the Status of Transaction.               ',
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`STOCK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_stock`
--

LOCK TABLES `inv_stock` WRITE;
/*!40000 ALTER TABLE `inv_stock` DISABLE KEYS */;
INSERT INTO `inv_stock` VALUES (1,20,1,500,500,NULL,500,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(2,21,1,400,400,NULL,400,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(3,22,1,1000,1000,NULL,1000,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(4,23,1,500,500,NULL,500,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(5,24,1,500,500,NULL,500,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(6,26,1,1000,1000,NULL,1000,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(7,32,1,400,400,NULL,400,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(8,27,1,1000,1000,NULL,1000,'POR',1,0,'2018-04-09 08:41:03',NULL,NULL),(9,25,1,500,500,NULL,500,'POR',1,0,'2018-04-09 08:42:01',NULL,NULL),(10,22,1,1000,NULL,10,990,'IS',1,0,'2018-04-12 09:07:07',NULL,NULL),(11,25,1,500,NULL,1,499,'IS',1,0,'2018-04-12 09:07:07',NULL,NULL),(12,20,1,500,NULL,1,499,'IS',1,0,'2018-04-12 09:10:56',NULL,NULL),(13,20,1,499,NULL,2,497,'IS',1,0,'2018-04-12 09:11:28',NULL,NULL),(14,20,1,497,NULL,2,495,'IS',1,0,'2018-04-12 09:12:44',NULL,NULL),(15,20,1,495,2,NULL,497,'IR',1,0,'2018-04-12 09:15:48',NULL,NULL),(16,20,NULL,2000,NULL,NULL,2000,'OB',1,1,'2018-04-19 06:43:24',NULL,NULL),(17,21,1,3000,NULL,NULL,3000,'OB',1,1,'2018-04-19 06:47:09',NULL,NULL),(18,26,1,1055,NULL,NULL,1055,'OB',1,1,'2018-04-19 06:54:43',1,'2018-04-19 15:02:34'),(24,20,1,45,NULL,NULL,45,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(25,21,1,40,NULL,NULL,40,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(26,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(27,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(28,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(29,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(30,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(31,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(32,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(33,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 05:22:22',NULL,NULL),(34,20,1,8,NULL,NULL,8,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(35,21,1,2,NULL,NULL,2,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(36,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(37,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(38,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(39,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(40,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(41,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(42,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(43,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:00:08',NULL,NULL),(44,20,1,85,NULL,NULL,85,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(45,21,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(46,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(47,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(48,24,1,80,NULL,NULL,80,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(49,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(50,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(51,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(52,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(53,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:09:20',NULL,NULL),(54,20,1,89,NULL,NULL,89,'OB',0,1,'2018-04-21 06:16:23',NULL,NULL),(55,22,1,90,NULL,NULL,90,'OB',0,1,'2018-04-21 06:16:23',NULL,NULL),(56,20,1,888,NULL,NULL,888,'OB',0,1,'2018-04-21 06:16:44',NULL,NULL),(57,21,1,999,NULL,NULL,999,'OB',0,1,'2018-04-21 06:16:44',NULL,NULL),(58,20,1,999,NULL,NULL,999,'OB',0,1,'2018-04-21 06:18:27',NULL,NULL),(59,21,1,999,NULL,NULL,999,'OB',0,1,'2018-04-21 06:18:27',NULL,NULL),(60,20,1,77,NULL,NULL,77,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(61,21,1,66,NULL,NULL,66,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(62,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(63,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(64,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(65,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(66,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(67,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(68,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(69,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:28',NULL,NULL),(70,20,1,99,NULL,NULL,99,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(71,21,1,22,NULL,NULL,22,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(72,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(73,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(74,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(75,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(76,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(77,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(78,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(79,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:34:44',NULL,NULL),(80,20,1,9,NULL,NULL,9,'OB',0,1,'2018-04-21 06:38:06',NULL,NULL),(81,21,1,6,NULL,NULL,6,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(82,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(83,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(84,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(85,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(86,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(87,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(88,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(89,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:38:07',NULL,NULL),(90,20,1,9,NULL,NULL,9,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(91,21,1,90,NULL,NULL,90,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(92,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(93,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(94,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(95,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(96,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(97,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(98,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(99,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:44',NULL,NULL),(100,20,1,8500,NULL,NULL,8500,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(101,21,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(102,22,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(103,23,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(104,24,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(105,25,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(106,26,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(107,27,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(108,28,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(109,32,1,0,NULL,NULL,0,'OB',0,1,'2018-04-21 06:40:57',NULL,NULL),(110,20,1,99,NULL,NULL,99,'OB',0,1,'2018-04-21 06:43:46',NULL,NULL),(111,21,1,88,NULL,NULL,88,'OB',0,1,'2018-04-21 06:43:46',NULL,NULL),(112,20,1,56,NULL,NULL,56,'OB',0,1,'2018-04-21 07:06:52',NULL,NULL),(113,21,1,9,NULL,NULL,9,'OB',0,1,'2018-04-21 07:06:52',NULL,NULL),(114,20,1,88,NULL,NULL,88,'OB',0,1,'2018-04-21 07:55:02',NULL,NULL),(115,21,1,9,NULL,NULL,9,'OB',0,1,'2018-04-21 07:55:02',NULL,NULL);
/*!40000 ALTER TABLE `inv_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_store`
--

DROP TABLE IF EXISTS `inv_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_store` (
  `STORE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STORE_NAME` varchar(150) DEFAULT NULL,
  `DESC` varchar(100) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`STORE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_store`
--

LOCK TABLES `inv_store` WRITE;
/*!40000 ALTER TABLE `inv_store` DISABLE KEYS */;
INSERT INTO `inv_store` VALUES (6,'General Store','Genarel Store',1,1,'2017-11-29 06:15:51',1,'2017-12-26 15:37:49'),(7,'Medicine Store','Medicine Store',1,1,'2017-12-26 09:38:18',NULL,NULL);
/*!40000 ALTER TABLE `inv_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_supplier`
--

DROP TABLE IF EXISTS `inv_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_supplier` (
  `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FULL_ENAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `FULL_BNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `SHORT_NAME` varchar(11) DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `SUP_IMG` varchar(100) NOT NULL,
  `NATIONALITY` varchar(25) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `NATIONAL_ID` bigint(17) DEFAULT NULL,
  `PASSPORT_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BUSINESS_TYPE` varchar(20) DEFAULT NULL,
  `ORG_NAME` varchar(100) DEFAULT NULL,
  `ORG_EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_WEB` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORG_ADDRESS` text,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_supplier`
--

LOCK TABLES `inv_supplier` WRITE;
/*!40000 ALTER TABLE `inv_supplier` DISABLE KEYS */;
INSERT INTO `inv_supplier` VALUES (5,'Md. Bappa Rahman','নাম ( বাংলা )','BS','bsmmu@email.com','01722085398','','bangladeshi ',1234567891234,'1258963471258','Education','','bsmmu@gmail.com','017220853698','www.kyau.com.bd','dfdf@gmail.com',1,1,'2017-11-22 09:16:11',1,'2017-12-21 14:08:03'),(6,'Al-Amin Enter Prise','','ALA','alamin@gmail.com','01722085398','','',0,'','','','','','','',1,1,'2017-12-04 09:22:15',1,'2017-12-21 14:07:53'),(7,'Rafi Trade International ','Rafi Trade International ','','rafi@gmail.com','0171721658','','',0,'','','','','','','',1,1,'2017-12-21 03:30:55',1,'2017-12-21 09:31:20'),(8,'Hanif store','','','','','','',0,'','','','','','','',1,1,'2018-01-02 06:59:53',NULL,NULL);
/*!40000 ALTER TABLE `inv_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_unit`
--

DROP TABLE IF EXISTS `inv_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_unit` (
  `UNIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UNIT_NAME` varchar(150) DEFAULT NULL,
  `DESC` varchar(100) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UNIT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_unit`
--

LOCK TABLES `inv_unit` WRITE;
/*!40000 ALTER TABLE `inv_unit` DISABLE KEYS */;
INSERT INTO `inv_unit` VALUES (3,'Cm','Centimeter',1,1,'2017-11-21 09:37:02',1,'2017-12-21 14:07:13'),(4,'Gm','Gram',1,1,'2017-11-21 09:42:29',1,'2017-12-21 14:07:05'),(9,'Kg','Kilogram',1,1,'2017-11-21 10:42:09',1,'2017-12-21 14:06:56'),(11,'Pcs','Pieces',1,1,'2017-11-23 08:10:47',1,'2017-12-21 14:06:48'),(17,'Lot','Lot',1,1,'2017-11-26 09:02:11',1,'2017-12-21 14:05:49'),(18,'Dozon','Dozon',1,1,'2017-11-26 09:02:24',1,'2017-12-21 14:06:38'),(21,'Rim','Rim',1,1,'2017-12-21 03:30:01',1,'2017-12-21 09:30:22'),(22,'Box','Box',1,1,'2017-12-21 08:05:07',NULL,NULL);
/*!40000 ALTER TABLE `inv_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_author`
--

DROP TABLE IF EXISTS `lib_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_author` (
  `AUTHOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHOR_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `AUTHOR_COUNTRY` varchar(128) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_author`
--

LOCK TABLES `lib_author` WRITE;
/*!40000 ALTER TABLE `lib_author` DISABLE KEYS */;
INSERT INTO `lib_author` VALUES (1,'kazi nazrul islam','Bangladesh','He is a famous poet in Bangladesh',1,1,'2018-07-05 03:44:58',NULL,NULL),(2,'robindronath thakur','Banglash','this is test',1,1,'2018-07-05 03:46:20',NULL,NULL);
/*!40000 ALTER TABLE `lib_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_borrowers`
--

DROP TABLE IF EXISTS `lib_borrowers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_borrowers` (
  `BORROWER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER_ID` int(11) DEFAULT NULL,
  `MEMBER_TYPE` varchar(11) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `STOCK_ID` int(11) DEFAULT NULL,
  `BORROW_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RETURN_DT` datetime DEFAULT NULL,
  `RETURN_RECIVE_DT` datetime DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BORROWER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_borrowers`
--

LOCK TABLES `lib_borrowers` WRITE;
/*!40000 ALTER TABLE `lib_borrowers` DISABLE KEYS */;
INSERT INTO `lib_borrowers` VALUES (1,510,'f',2,119551440,'2018-07-06 18:00:00','2018-07-09 00:00:00','2018-07-07 00:00:00',0,0,'2018-07-07 03:07:13',NULL,'2018-07-08 11:43:26');
/*!40000 ALTER TABLE `lib_borrowers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_invoice`
--

DROP TABLE IF EXISTS `lib_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_invoice` (
  `LIB_INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INVOICE_NO` varchar(20) NOT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `RECEIVE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LIB_INVOICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_invoice`
--

LOCK TABLES `lib_invoice` WRITE;
/*!40000 ALTER TABLE `lib_invoice` DISABLE KEYS */;
INSERT INTO `lib_invoice` VALUES (1,'966',7,'2018-07-05 00:00:00','',1,0,'2018-07-05 03:52:41',NULL,NULL),(2,'12',6,'2018-07-31 00:00:00','df',1,0,'2018-07-17 10:03:15',NULL,NULL),(3,'12',6,'2018-07-31 00:00:00','df',1,0,'2018-07-17 10:03:20',NULL,NULL);
/*!40000 ALTER TABLE `lib_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_item`
--

DROP TABLE IF EXISTS `lib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_item` (
  `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `ITEM_NAME` varchar(128) DEFAULT NULL,
  `SUB_TITLE` varchar(128) DEFAULT NULL,
  `DEPARTMENT` int(11) DEFAULT NULL,
  `LANGUAGE` varchar(64) DEFAULT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  `EDITOR_NAME` varchar(64) DEFAULT NULL,
  `EDITION_NO` varchar(28) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BOOK_CELL_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BOOK_TYPE_ID` int(11) NOT NULL,
  `SUPPILER_ID` varchar(100) NOT NULL,
  `PRICE` float DEFAULT NULL,
  `NUMBER_OF_PAGE` int(11) DEFAULT NULL,
  `CLUE_PAGE` int(11) DEFAULT NULL,
  `PUBLISHER_ID` int(11) DEFAULT NULL,
  `PUBLICATION_YEAR` varchar(20) DEFAULT NULL,
  `PUBLICATION_PLACE` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BOOK_SIZE` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `PDF_VERSION` varchar(10) DEFAULT NULL,
  `COVER_IMAGE` varchar(25) DEFAULT NULL,
  `COMMENT` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_item`
--

LOCK TABLES `lib_item` WRITE;
/*!40000 ALTER TABLE `lib_item` DISABLE KEYS */;
INSERT INTO `lib_item` VALUES (1,'6547852136','General Textiles & Apparel Merchandising','General Textiles',72,'English',1,NULL,'1st edition','60',359,'5',800,800,8,0,'2015','London',NULL,'','Penguins.jpg','this is test',1,0,'2018-07-05 03:50:30',NULL,NULL),(2,'8756412579','Introduction to Algorithms','Basic book of Introduction to Algorithms',25,'Bangla',2,NULL,'2nd edition','965',359,'7',456,20,2,0,'2013','London',NULL,'','Hydrangeas.jpg','This is another test',1,0,'2018-07-05 03:52:04',NULL,NULL);
/*!40000 ALTER TABLE `lib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_members`
--

DROP TABLE IF EXISTS `lib_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_members` (
  `LIB_MEMBER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `MEBBER_ID` int(11) DEFAULT NULL,
  `MEMBER_TYPE` varchar(11) DEFAULT NULL,
  `START_DT` datetime DEFAULT NULL,
  `END_DT` datetime DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `TERMS_CON_STATUS` int(1) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LIB_MEMBER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_members`
--

LOCK TABLES `lib_members` WRITE;
/*!40000 ALTER TABLE `lib_members` DISABLE KEYS */;
INSERT INTO `lib_members` VALUES (1,'510',9,'f','2018-07-05 00:00:00',NULL,' Please add me',1,0,0,'2018-07-05 03:53:38',NULL,'2018-07-05 12:36:02'),(2,'503',18,'s','2018-07-05 00:00:00',NULL,' Hi , can you add me . Thank you ',1,0,0,'2018-07-05 04:04:47',NULL,'2018-07-05 11:50:40');
/*!40000 ALTER TABLE `lib_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_publisher`
--

DROP TABLE IF EXISTS `lib_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_publisher` (
  `PUBLISHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PUBLISHER_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `PUBLISHER_COUNTRY` varchar(128) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PUBLISHER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_publisher`
--

LOCK TABLES `lib_publisher` WRITE;
/*!40000 ALTER TABLE `lib_publisher` DISABLE KEYS */;
INSERT INTO `lib_publisher` VALUES (1,'Akashic Books','USA','this is test',1,1,'2018-07-05 03:48:24',NULL,NULL),(2,'Dzanc Books','UK','this is another test',1,1,'2018-07-05 03:48:51',NULL,NULL);
/*!40000 ALTER TABLE `lib_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_stock`
--

DROP TABLE IF EXISTS `lib_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_stock` (
  `LIB_STOCK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LIB_INVOICE_ID` varchar(45) DEFAULT NULL,
  `ITEM_ID` int(16) NOT NULL,
  `SKU` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` int(45) DEFAULT NULL,
  PRIMARY KEY (`LIB_STOCK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_stock`
--

LOCK TABLES `lib_stock` WRITE;
/*!40000 ALTER TABLE `lib_stock` DISABLE KEYS */;
INSERT INTO `lib_stock` VALUES (1,'1',1,'506576536','',1,0,'2018-07-05 03:52:41',NULL,NULL),(2,'1',1,'137925880','',1,0,'2018-07-05 03:52:41',NULL,NULL),(3,'1',2,'119551440','88888',1,0,'2018-07-05 03:52:41',NULL,NULL),(4,'1',2,'650430760','88888',1,0,'2018-07-05 03:52:41',NULL,NULL),(5,'1',2,'505715906','88888',1,0,'2018-07-05 03:52:41',NULL,NULL),(6,'2',1,'3135117490','te',1,0,'2018-07-17 10:03:15',NULL,NULL),(7,'2',1,'1829022837','te',1,0,'2018-07-17 10:03:15',NULL,NULL),(8,'2',1,'5665717329','te',1,0,'2018-07-17 10:03:15',NULL,NULL),(9,'2',1,'7243474061','te',1,0,'2018-07-17 10:03:15',NULL,NULL),(10,'2',1,'1642262035','te',1,0,'2018-07-17 10:03:15',NULL,NULL),(11,'2',2,'1932014252','tes',1,0,'2018-07-17 10:03:15',NULL,NULL),(12,'2',2,'395737099','tes',1,0,'2018-07-17 10:03:15',NULL,NULL),(13,'2',2,'5535766442','tes',1,0,'2018-07-17 10:03:15',NULL,NULL),(14,'3',1,'7361118596','te',1,0,'2018-07-17 10:03:20',NULL,NULL),(15,'3',1,'9850793395','te',1,0,'2018-07-17 10:03:20',NULL,NULL),(16,'3',1,'9429925150','te',1,0,'2018-07-17 10:03:20',NULL,NULL),(17,'3',1,'7464402945','te',1,0,'2018-07-17 10:03:20',NULL,NULL),(18,'3',1,'1230137037','te',1,0,'2018-07-17 10:03:20',NULL,NULL),(19,'3',2,'3468532835','tes',1,0,'2018-07-17 10:03:20',NULL,NULL),(20,'3',2,'9985926277','tes',1,0,'2018-07-17 10:03:20',NULL,NULL),(21,'3',2,'8191419824','tes',1,0,'2018-07-17 10:03:20',NULL,NULL);
/*!40000 ALTER TABLE `lib_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `library_item_categoty`
--

DROP TABLE IF EXISTS `library_item_categoty`;
/*!50001 DROP VIEW IF EXISTS `library_item_categoty`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `library_item_categoty` AS SELECT 
 1 AS `LIBRARY_ITEM_CATEGORY_ID`,
 1 AS `LIBRARY_ITEM_CATEGORY_NAME`,
 1 AS `ACTIVE_FLAG`,
 1 AS `LIBRARY_ITEM_CATEGORY_SL_NO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `m00_lkpdata`
--

DROP TABLE IF EXISTS `m00_lkpdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m00_lkpdata` (
  `LKP_ID` int(4) NOT NULL AUTO_INCREMENT,
  `GRP_ID` int(6) NOT NULL,
  `LKP_NAME` varchar(250) NOT NULL,
  `ABBR` varchar(10) NOT NULL,
  `SYS_CODE` varchar(10) NOT NULL,
  `DSCP` text NOT NULL,
  `RMKS` varchar(60) NOT NULL,
  `ACT_FG` int(1) NOT NULL DEFAULT '1',
  `CRE_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRE_BY` int(11) NOT NULL,
  `UPD_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPD_BY` int(11) NOT NULL,
  `SL_NO` int(4) NOT NULL,
  `ORG_ID` int(2) NOT NULL,
  `WAIVER_TYPE_ID` int(2) NOT NULL,
  `NUMB_LKP` tinyint(4) DEFAULT NULL,
  `CHAR_LKP` char(2) CHARACTER SET latin1 DEFAULT NULL COMMENT '"C" VALUE IS USED TO VEW DROPDOWN WHILE CREATE USER',
  PRIMARY KEY (`LKP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m00_lkpdata`
--

LOCK TABLES `m00_lkpdata` WRITE;
/*!40000 ALTER TABLE `m00_lkpdata` DISABLE KEYS */;
INSERT INTO `m00_lkpdata` VALUES (1,3,'Islam','','','','',1,'2018-07-10 03:44:37',0,'2015-09-05 23:44:23',0,0,0,0,1,NULL),(2,3,'Hinduism','','','','',1,'2017-03-04 04:21:24',0,'2015-09-05 23:44:23',0,0,0,0,2,NULL),(3,3,'Christianity','','','','',1,'2015-09-12 21:45:59',0,'2015-09-05 23:44:23',0,0,0,0,3,NULL),(4,1,'Male','','','','',1,'2017-03-02 05:19:08',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(5,1,'Female','','','','',1,'2015-09-19 16:33:19',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(8,2,'Excelent ','','','','',1,'2017-03-03 22:23:02',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(9,21,'Doctor','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(10,21,'Business Man','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(11,8,'Single','','','','',1,'2015-09-16 18:01:29',0,'2015-09-05 23:44:23',0,0,0,0,1,NULL),(12,8,'Married','','','','',1,'2015-09-12 23:33:25',0,'2015-09-05 23:44:23',0,0,0,0,2,NULL),(14,4,'O -','','','','',1,'2018-07-10 03:45:45',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(15,11,'Adult','','','','',1,'2015-09-16 18:31:41',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(16,11,'Child','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(17,11,'Senior','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(18,10,'Days','','','','',1,'2015-09-12 23:33:42',0,'2015-09-05 23:44:23',0,0,0,0,0,NULL),(19,10,'Months','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(20,10,'Years','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,0,0,0,NULL,NULL),(21,24,'Dhaka','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(22,24,'Rajshahi','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,3,0,0,NULL,NULL),(23,24,'Sylhet','','','','',1,'2015-09-13 22:51:04',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(25,15,'Computer Science & Engineering','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(26,15,'Electrical & Electronics Engineering','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(27,13,'S.S.C','','','','',1,'2018-03-04 11:16:30',0,'2015-09-05 23:44:23',0,1,0,0,3,NULL),(28,13,'H.S.C','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(32,25,'Science','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(33,25,'Commerce','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(34,25,'Humanities','','','','',1,'2015-09-13 23:14:04',0,'2015-09-05 23:44:23',0,3,0,0,NULL,NULL),(35,23,'Dhaka College','','','','',1,'2015-03-03 01:47:44',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(36,23,'Dhaka University','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(37,23,'Uttara High School','','','','',1,'2015-09-16 18:20:16',0,'2015-09-05 23:44:23',0,3,0,0,NULL,NULL),(38,12,'Primary','','','','',1,'2015-09-16 18:01:37',0,'2015-09-05 23:44:23',0,1,0,0,1,NULL),(39,12,'Junior Secondary','','','','',1,'2015-09-12 22:36:52',0,'2015-09-05 23:44:23',0,2,0,0,2,NULL),(40,26,'MIT','','','','',1,'2015-03-15 22:59:13',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(41,26,'Harvard University','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(42,26,'State University','','','','',1,'2015-09-16 18:20:30',0,'2015-09-05 23:44:23',0,3,0,0,NULL,NULL),(46,28,'Parents','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(47,28,'Guardian','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(48,28,'Scholarship','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,3,0,0,NULL,NULL),(49,28,'Self','','','','',1,'2015-09-16 18:20:34',0,'2015-09-05 23:44:23',0,4,0,0,NULL,NULL),(50,17,'Fresher','','','','',1,'2015-02-27 22:38:17',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(51,17,'Transfer','','','','',1,'2015-09-16 18:19:58',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(52,14,'Architectural Engineering','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,1,0,0,NULL,NULL),(53,14,'Computer Information Systems','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,2,0,0,NULL,NULL),(54,14,'Information Systems','','','','',1,'2015-09-05 23:44:23',0,'2015-09-05 23:44:23',0,3,0,0,NULL,NULL),(58,14,'Biomedical Engineering','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,4,0,0,NULL,NULL),(59,14,'Chemical Engineering','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,5,0,0,NULL,NULL),(60,14,'Economics','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,6,0,0,NULL,NULL),(61,14,'Management','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,7,0,0,NULL,NULL),(62,14,'Pharmacy','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,8,0,0,NULL,NULL),(63,3,'Buddhism','','','','',1,'2015-09-16 18:01:22',0,'2015-09-05 23:44:24',0,0,0,0,4,NULL),(65,14,'descreate math','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,9,0,0,NULL,NULL),(66,29,'B.sc','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,9,0,0,NULL,NULL),(67,29,'M.sc','','','','',1,'2015-09-16 18:20:38',0,'2015-09-05 23:44:24',0,9,0,0,NULL,NULL),(70,15,'Electronics & Telecommunication Engineering','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,3,0,0,NULL,NULL),(71,15,'Medical Physics','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,4,0,0,NULL,NULL),(72,15,'Textile Engineering','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,5,0,0,NULL,NULL),(73,15,'Biochemistry and Biotechnology','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,6,0,0,NULL,NULL),(74,15,'Microbiology','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,7,0,0,NULL,NULL),(75,15,'Pharmacy','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,8,0,0,NULL,NULL),(76,15,'Business Administration','','','','',1,'2015-09-16 18:19:46',0,'2015-09-05 23:44:24',0,9,0,0,NULL,NULL),(77,15,'Management Information Systems','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,10,0,0,NULL,NULL),(84,14,'Chemistry','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,10,0,0,NULL,NULL),(85,14,'Inorganic Quantitative Analysis	','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,11,0,0,NULL,NULL),(86,14,'Introduction to Computer Systems','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,12,0,0,NULL,NULL),(87,14,'Discrete Mathematics','','','','',1,'2015-09-16 18:19:40',0,'2015-09-05 23:44:24',0,13,0,0,NULL,NULL),(88,14,'Structured Programming Language','','','','',1,'2015-09-05 23:44:24',0,'2015-09-05 23:44:24',0,14,0,0,NULL,NULL),(90,16,'1st Semester','','1','','',1,'2017-05-27 10:11:06',0,'2015-09-05 23:44:24',0,1,0,0,1,NULL),(91,16,'2nd Semester','','2','','',1,'2017-05-27 10:11:08',0,'2015-09-05 23:44:24',0,2,0,0,2,NULL),(92,16,'3rd Semester','','3','','',1,'2017-05-27 10:11:10',0,'2015-09-05 23:44:24',0,3,0,0,3,NULL),(93,31,'Freedom Fighter','','','','',1,'2015-09-30 22:14:23',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(94,31,'Female','','','','',1,'2015-03-07 20:10:44',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(95,31,'Family Member','','','','',1,'2015-09-16 18:20:45',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(98,16,'4th semester','','4','','',1,'2017-05-27 10:11:12',0,'2015-09-05 23:44:24',0,4,0,0,4,NULL),(99,16,'5th semester','','5','','',1,'2017-05-27 10:11:13',0,'2015-09-05 23:44:24',0,5,0,0,5,NULL),(101,4,'A +','','','','',1,'2015-04-04 18:21:56',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(102,4,'AB+','','','','',1,'2016-02-21 23:45:48',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(103,36,'rakib','','','','',1,'2015-03-02 21:00:23',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(104,4,'B +','','','','',1,'2015-04-04 18:22:01',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(105,10,'Weeks','','','','',1,'2015-09-16 18:19:22',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(144,4,'O +','','','','',1,'2015-04-04 18:21:39',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(147,38,'General ','','','','',1,'2015-03-03 17:20:17',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(148,38,'Business Studies','','','','',1,'2015-03-03 17:20:41',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(149,38,'Computer Science','','','','',1,'2015-03-04 22:44:43',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(150,16,'6th semester','','6','','',1,'2017-05-27 10:11:15',0,'2015-09-05 23:44:24',0,6,0,0,6,NULL),(151,16,'7th semester','','7','','',1,'2017-05-27 10:11:17',0,'2015-09-05 23:44:24',0,7,0,0,7,NULL),(152,16,'8th semester','','8','','',1,'2017-05-27 10:11:19',0,'2015-09-05 23:44:24',0,8,0,0,8,NULL),(153,16,'9th semester','','9','','',1,'2017-05-27 10:11:20',0,'2015-09-05 23:44:24',0,9,0,0,9,NULL),(154,16,'10th semester','','10','','',1,'2017-05-27 10:11:22',0,'2015-09-05 23:44:24',0,10,0,0,10,NULL),(155,16,'11th semester','','11','','',1,'2017-05-27 10:11:24',0,'2015-09-05 23:44:24',0,11,0,0,11,NULL),(156,16,'12th semester','','12','','',1,'2017-05-27 10:11:27',0,'2015-09-05 23:44:24',0,12,0,0,12,NULL),(157,8,'Divorced','','','','',1,'2015-09-12 23:33:28',0,'2015-09-05 23:44:24',0,0,0,0,3,NULL),(158,2,'Poor','','','','',1,'2017-03-03 22:23:04',0,'2015-09-05 23:44:24',0,0,0,0,NULL,NULL),(171,31,'Genarel ','','','','',1,'2015-03-06 19:00:59',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(172,38,'Law','','','','',1,'2015-09-16 18:20:50',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(177,13,'B.sc','','','','',1,'2015-04-04 18:10:14',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(178,13,'Dakhil','','','','',1,'2015-04-04 18:11:22',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(179,13,'Alim','','','','',1,'2015-04-04 18:11:48',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(180,13,'Fazil ','','','','',1,'2015-04-04 18:11:57',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(181,13,'O - Label','','','','',1,'2015-09-16 18:19:35',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(182,13,'A - Label','','','','',1,'2015-04-04 18:14:58',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(183,40,'Father','','','','',1,'2015-04-04 18:16:26',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(184,40,'Mother','','','','',1,'2015-04-04 18:18:31',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(185,40,'Uncle','','','','',1,'2015-04-04 18:18:39',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(186,40,'Siblings','','','','',1,'2015-04-04 18:18:52',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(187,40,'Aunty','','','','',1,'2015-04-04 18:19:03',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(188,40,'Cousin','','','','',1,'2015-09-16 18:21:00',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(189,40,'Grand Father ','','','','',1,'2015-04-04 18:20:04',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(190,40,'Grand Mother','','','','',1,'2015-04-04 18:20:14',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(191,4,'AB -','','','','',1,'2015-04-04 18:21:48',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(192,21,'Public Service Holder','','','','',1,'2015-04-04 18:23:55',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(193,21,'Banker','','','','',1,'2015-04-04 18:24:03',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(194,21,'Police','','','','',1,'2015-04-04 18:24:12',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(195,21,'Private Job Holder','','','','',1,'2015-04-04 18:24:24',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(196,21,'Engineer','','','','',1,'2015-04-04 18:24:40',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(197,24,'Chittagong','','','','',1,'2015-04-04 18:25:25',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(198,24,'Khulna','','','','',1,'2015-04-04 18:25:34',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(199,24,'Barisal','','','','',1,'2015-09-13 22:53:13',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(200,24,'Rangpur','','','','',1,'2015-09-16 18:20:21',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(202,41,'CORE','','','','',1,'2015-08-01 21:04:43',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(203,41,'GED','','','','',1,'2015-08-01 21:04:35',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(204,41,'FC','','','','',1,'2015-08-01 15:19:38',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(205,41,'BFC','','','','',1,'2015-09-16 18:21:05',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(206,41,'Foundation','','','','',1,'2015-08-17 22:58:40',0,'2015-09-05 23:44:25',0,0,0,0,NULL,NULL),(207,1,'Others','','','','',1,'2015-09-16 18:05:48',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(208,2,'Bad','','','','',1,'2017-03-03 22:23:06',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(209,21,'Farmer ','','','','',1,'2015-09-12 21:10:10',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(210,21,'Teacher ','','','','',1,'2015-09-12 21:27:08',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(211,21,'Housewife','','','','',1,'2015-09-16 18:20:10',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(212,3,'Others','','','','',1,'2015-09-13 23:31:29',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(236,4,'A -','','','','',1,'2015-09-13 22:13:21',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(237,4,'B -','','','','',1,'2015-09-16 18:19:13',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(238,8,'Widowed  ','','','','',1,'2015-09-16 18:19:17',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(239,24,'Comilla','','','','',1,'2015-09-13 22:52:56',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(240,24,'Jessore','','','','',1,'2015-09-13 22:53:33',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(241,24,'Dinajpur','','','','',1,'2015-09-13 22:53:48',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(242,24,'Madrasah','','','','',1,'2015-09-13 22:54:02',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(243,24,'Technical','','','','',1,'2015-09-13 22:54:28',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(244,24,'Others','','','','',1,'2015-09-13 22:54:42',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(245,21,'Others','','','','',1,'2015-09-13 23:02:26',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(246,40,'Brother ','','','','',1,'2015-09-13 23:17:05',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(247,40,'Sister','','','','',1,'2015-09-13 23:17:20',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(248,40,'Others','','','','',1,'2015-09-13 23:19:22',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(249,13,'Others','','','','',1,'2015-09-13 23:22:51',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(250,56,'Caffeine','','','','',1,'2015-09-14 15:38:26',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(251,56,'Tobacco','','','','',1,'2015-09-16 18:21:10',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(252,56,'Alcohol','','','','',1,'2015-09-13 23:27:42',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(253,56,'Recreational/Street drugs ','','','','',1,'2015-09-13 23:28:02',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(254,12,'Secondary','','','','',1,'2015-09-13 23:35:03',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(255,12,'Higher Secondary ','','','','',1,'2015-09-16 18:19:31',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(256,25,'Others','','','','',1,'2015-09-16 18:20:26',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(257,57,'Test','','','','',1,'2015-09-16 18:21:15',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(267,58,'Other','','','','',1,'2015-09-18 17:14:58',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(275,62,'Academic Event','','','','',1,'2015-09-21 17:34:17',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(276,62,'Text Book Event','','','','',1,'2015-09-21 17:34:30',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(277,63,'PDF','','','','',1,'2015-10-11 16:58:11',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(278,63,'MS Word','','','','',1,'2015-10-11 16:58:33',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(279,63,'Video','','','','',1,'2015-10-11 16:59:08',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(280,63,'Audio','','','','',1,'2015-10-11 16:59:17',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(281,64,'0','','','','',1,'2015-10-25 22:50:05',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(282,65,'Associate Professor','','','','',1,'2015-11-10 16:42:12',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(283,65,'Assistant Professor','','','','',1,'2015-11-10 16:42:23',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(284,65,'Professor','','','','',1,'2015-11-10 16:42:31',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(285,66,'Teaching','','','','',1,'2015-11-22 16:39:30',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(286,66,'Industrial','','','','',1,'2015-11-22 16:39:41',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(287,66,'Research','','','','',1,'2015-11-22 16:39:55',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(288,67,'Teaching','','','','',1,'2015-11-22 16:41:15',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(289,67,'Reasearch','','','','',1,'2015-11-22 16:41:25',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(290,68,'Faculties','','','','',1,'2016-03-11 21:15:58',0,'2016-03-11 06:00:00',0,0,0,0,NULL,'c'),(291,68,'Staff','','','','',1,'2016-03-11 21:16:04',0,'2016-03-11 06:00:00',0,0,0,0,NULL,'c'),(292,68,'Guest teacher','','','','',1,'2016-03-11 21:16:11',0,'2016-03-11 06:00:00',0,0,0,0,NULL,'c'),(293,69,'Class Test','','','','',1,'2016-01-27 21:55:59',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(294,69,'Mid Term','','','','',1,'2016-01-27 21:56:09',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(295,69,'Final','','','','',1,'2016-01-27 21:56:23',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(296,69,'Class Test & Quiz','','','','',1,'2016-01-29 18:44:45',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(297,70,'Bank','','','','',1,'2016-02-10 20:19:17',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(298,70,'Bank Cheque','','','','',1,'2016-02-10 20:19:52',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(299,70,'Pay Order','','','','',1,'2016-02-10 20:20:14',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(300,68,'Student','','','','',1,'2017-03-02 00:43:36',0,'0000-00-00 00:00:00',0,0,0,0,NULL,'c'),(301,65,'Principle','','','','',1,'2016-03-30 22:26:36',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(302,65,'Lecturer','','','','',1,'2016-03-30 22:26:49',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(303,65,'VC','','','','',1,'2016-03-30 22:27:04',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(304,65,'PRO-VC','','','','',1,'2016-03-30 22:27:23',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(305,65,'Pion','','','','',1,'2016-03-30 22:27:48',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(306,65,'Lab Assistance','','','','',1,'2016-03-30 22:28:08',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(308,68,'Test','','','','',1,'2017-03-02 00:40:28',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(310,41,'other','','','','',1,'2017-03-04 03:32:23',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(311,72,'Academic Campus','','','','',1,'2017-08-26 10:49:15',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(312,72,'Administration Campus','','','','',1,'2017-08-26 10:49:28',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(314,74,'Administrative','','','','',1,'2017-12-27 18:41:50',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(315,74,'Teaching','','','','',1,'2017-12-27 18:42:11',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(316,75,'1st Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,1,0,0,NULL,NULL),(317,75,'2nd Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,2,0,0,NULL,NULL),(318,75,'3rd Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,3,0,0,NULL,NULL),(319,75,'4th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,4,0,0,NULL,NULL),(320,75,'5th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,5,0,0,NULL,NULL),(321,75,'6th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,6,0,0,NULL,NULL),(322,75,'7th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,7,0,0,NULL,NULL),(323,75,'8th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,8,0,0,NULL,NULL),(324,75,'9th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,9,0,0,NULL,NULL),(325,75,'10th Floor','','','','',1,'2017-10-25 04:19:06',0,'0000-00-00 00:00:00',0,10,0,0,NULL,NULL),(326,76,'Class Room','','','','',1,'2017-09-09 06:28:06',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(327,76,'Lab','','','','',1,'2017-09-09 06:28:20',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(328,76,'Admin','','','','',1,'2017-09-09 06:28:29',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(329,76,'Rest Room','','','','',1,'2017-09-09 06:28:41',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(330,76,'Study Room','','','','',1,'2017-09-09 06:28:53',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(331,76,'Library','','','','',1,'2017-09-09 06:29:00',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(332,76,'Conference Room','','','','',1,'2017-09-09 06:29:17',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(333,77,'Saturday','SAT','','','',1,'2017-09-17 03:54:14',0,'2017-09-16 18:00:00',0,0,0,0,NULL,NULL),(334,77,'Sunday','SUN','','','',1,'2017-09-17 03:54:55',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(335,77,'Monday','MON','','','',1,'2017-09-17 03:55:12',0,'2017-09-16 18:00:00',0,0,0,0,NULL,NULL),(336,77,'Tuesday','TUE','','','',1,'2017-09-17 03:56:34',0,'2017-09-16 18:00:00',0,0,0,0,NULL,NULL),(337,77,'Wednesday','WED','','','',1,'2017-09-17 03:56:41',0,'2017-09-16 18:00:00',0,0,0,0,NULL,NULL),(338,77,'Thrusday','THU','','','',1,'2017-09-17 03:56:49',0,'2017-09-16 18:00:00',0,0,0,0,NULL,NULL),(339,77,'Friday','FRI','','','',1,'2017-09-17 03:57:02',0,'2017-09-16 18:00:00',0,0,0,0,NULL,NULL),(340,78,' “Accommodation” means such room or apartment in the Student','','','','',1,'2017-09-26 05:59:37',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(341,78,'“Contents” means the fixtures, fittings, appliances, furnitu','','','','',1,'2017-09-26 05:59:49',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(342,78,'“House keys” includes door keys, cabinet keys, mailbox keys,','','','','',1,'2017-09-26 05:59:57',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(343,78,'“Housing Offer” means the letter of offer issued by the Offi','','','','',1,'2017-09-26 06:00:09',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(344,78,'“License Fees” means the prevailing fees established by the ','','','','',1,'2017-09-26 06:00:18',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(345,78,'“Office” means the Office of Housing and Office of Student L','','','','',1,'2017-09-26 06:00:32',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(346,78,'“Resident” refers to the occupier granted the right to occup','','','','',1,'2017-09-26 06:00:43',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(347,74,'Resident','','','','',1,'2017-10-02 05:44:10',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(348,76,'Resident','','','','',1,'2017-10-02 05:45:36',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(349,79,'Seat-1','S1','','','',1,'2017-10-25 04:22:13',0,'2017-10-01 18:00:00',0,1,0,0,NULL,NULL),(350,79,'Seat-2','S2','','','',1,'2017-10-25 04:22:13',0,'2017-10-01 18:00:00',0,2,0,0,NULL,NULL),(351,79,'Seat-3','S3','','','',1,'2017-10-25 04:22:13',0,'2017-10-01 18:00:00',0,3,0,0,NULL,NULL),(352,79,'Seat-4','S4','','','',1,'2017-10-25 04:22:13',0,'2017-10-01 18:00:00',0,4,0,0,NULL,NULL),(353,80,'Argent','','','','',1,'2017-11-28 05:25:55',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(354,80,'Normal','','','','',1,'2017-11-28 05:26:07',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(355,81,'Addmission Bill','A','','','',1,'2017-11-28 11:16:43',0,'2017-11-27 18:00:00',0,0,0,0,NULL,NULL),(356,81,'Tuition Bill','T','','','',1,'2017-11-28 11:16:54',0,'2017-11-27 18:00:00',0,0,0,0,NULL,NULL),(357,81,'Hostel bill','H','','','',1,'2017-11-28 11:17:02',0,'2017-11-27 18:00:00',0,0,0,0,NULL,NULL),(358,74,'Seminer','','','','',1,'2017-12-27 18:42:21',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(359,82,'Book','','','','',1,'2018-04-04 12:13:35',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(360,82,'Magazine','','','','',1,'2018-04-04 12:13:46',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(361,83,' Books may be kept for 1 week renewed once for one week provided these are not on demand.','','','','',1,'2018-04-05 11:22:22',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(362,83,'Borrower\'s will remain responsible for any loss or damage to books issued to them.','','','','',1,'2018-04-05 11:22:51',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(363,83,'Reference books are to be used only in Library.','','','','',1,'2018-04-05 11:23:07',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(364,83,' No book shall be taken from Library without proper entry in Borrower\'s card.','','','','',1,'2018-04-05 11:23:22',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(365,83,'Ordinarily only one book will be issued.','','','','',1,'2018-04-05 11:23:35',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL),(366,83,' Borrower\'s are requested to check their cards at the time they return book, etc.','','','','',1,'2018-04-05 11:23:49',0,'0000-00-00 00:00:00',0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `m00_lkpdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m00_lkpgrp`
--

DROP TABLE IF EXISTS `m00_lkpgrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m00_lkpgrp` (
  `GRP_ID` int(6) NOT NULL AUTO_INCREMENT,
  `GRP_NAME` varchar(60) NOT NULL,
  `ABBR` varchar(10) NOT NULL,
  `SYS_FG` int(1) NOT NULL,
  `SYSCODE_FG` int(1) NOT NULL,
  `SEL_FG` int(1) NOT NULL,
  `UPD_FG` int(1) NOT NULL,
  `DEL_FG` int(1) NOT NULL,
  `RMKS` varchar(60) NOT NULL,
  `ACT_FG` tinyint(1) NOT NULL DEFAULT '1',
  `CRE_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRE_BY` int(11) NOT NULL,
  `UPD_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPD_BY` int(11) NOT NULL,
  `ORG_ID` int(2) NOT NULL,
  `GRP_LEVEL` int(2) NOT NULL,
  `WAIVER` int(2) NOT NULL,
  `USE_CORN` char(1) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m00_lkpgrp`
--

LOCK TABLES `m00_lkpgrp` WRITE;
/*!40000 ALTER TABLE `m00_lkpgrp` DISABLE KEYS */;
INSERT INTO `m00_lkpgrp` VALUES (3,'Religion','',0,0,0,0,1,'',1,'2015-01-20 18:28:50',0,'2015-01-20 18:28:50',0,1,3,0,NULL),(4,'Blood Group','',0,0,0,0,1,'',1,'2015-01-20 22:38:17',0,'2015-01-20 22:38:17',0,1,3,0,NULL),(8,'Marital Status','',0,0,0,0,1,'',1,'2015-01-20 21:37:33',0,'2015-01-20 21:37:33',0,1,3,0,NULL),(10,'Time Unit','',0,0,0,0,1,'',1,'2015-01-20 23:22:01',0,'2015-01-20 23:22:01',0,1,3,0,NULL),(11,'Age Group','',0,0,0,0,1,'',1,'2015-01-20 23:02:50',0,'2015-01-20 23:02:50',0,1,3,0,NULL),(12,'Level of Education','',0,0,0,0,0,'',1,'2015-01-21 23:08:59',0,'2015-01-21 23:08:59',0,1,0,0,NULL),(13,'Education Degree','',1,1,1,1,0,'',1,'2015-01-21 18:37:46',0,'2015-01-21 18:37:46',0,1,0,0,NULL),(14,'Subject','',0,0,0,0,1,'',1,'2015-01-23 17:21:32',0,'2015-01-23 17:21:32',0,1,0,0,NULL),(15,'Department','',1,1,1,1,1,'',1,'2015-01-21 18:05:51',0,'2015-01-21 18:05:51',0,1,0,0,NULL),(16,'Semester','',0,0,0,0,1,'',1,'2015-01-23 16:03:15',0,'2015-01-23 16:03:15',0,1,0,0,NULL),(17,'Student Type','',0,0,0,0,1,'',1,'2015-01-23 16:57:49',0,'2015-01-23 16:57:49',0,1,0,0,NULL),(21,'Occupation','',0,0,0,0,1,'',1,'2015-01-20 21:17:28',0,'2015-01-20 21:17:28',0,1,0,0,NULL),(23,'Institute Type','',0,0,0,0,0,'',1,'2015-01-21 22:30:36',0,'2015-01-21 22:30:36',0,1,0,0,NULL),(24,'Board University','',1,1,1,1,1,'',1,'2015-01-21 19:06:50',0,'2015-01-21 19:06:50',0,1,3,0,NULL),(25,'Education Group','',0,0,0,0,1,'',1,'2015-01-21 21:37:29',0,'2015-01-21 21:37:29',0,1,0,0,NULL),(26,'Previous Institute','',0,0,0,0,1,'',1,'2015-01-23 15:43:07',0,'2015-01-23 15:43:07',0,1,0,0,NULL),(28,'Student\'s Source of Financing','',0,0,0,0,1,'',1,'2015-01-23 16:29:05',0,'2015-01-23 16:29:05',0,1,0,0,NULL),(29,'Degree','',0,0,0,0,1,'',1,'2015-01-23 16:29:05',0,'2015-01-23 16:29:05',0,1,0,0,NULL),(30,'Curent Semester','',0,0,0,0,0,'',1,'2015-09-05 23:43:42',0,'2015-09-05 23:43:42',0,0,0,0,NULL),(31,'Waiver','',0,0,0,0,0,'',1,'2015-09-30 22:15:17',0,'2015-09-30 22:15:17',0,0,0,0,NULL),(38,'Subject Category','',0,0,0,0,0,'',1,'2015-03-02 21:16:18',0,'2015-03-02 21:16:18',0,0,0,0,NULL),(40,'Relation','',0,0,0,0,0,'',1,'2015-04-04 18:16:14',0,'2015-04-04 18:16:14',0,0,0,0,NULL),(41,'Program Part','',0,0,0,0,0,'',1,'2015-08-01 15:19:05',0,'2015-08-01 15:19:05',0,0,0,0,NULL),(56,'Substances','',0,0,0,0,0,'',1,'2015-09-13 22:24:48',0,'2015-09-13 22:24:48',0,0,0,0,NULL),(62,'Event Type','',0,0,0,0,0,'',1,'2015-09-21 17:32:57',0,'2015-09-21 17:32:57',0,0,0,0,NULL),(63,'Course Content Type','',0,0,0,0,0,'',1,'2015-10-11 17:00:14',0,'2015-10-11 17:00:14',0,0,0,0,NULL),(64,'Calendar Start Date','',0,0,0,0,0,'',1,'2015-10-17 15:45:03',0,'2015-10-17 15:45:03',0,0,0,0,NULL),(65,'Designation','',0,0,0,0,0,'',1,'2015-11-10 16:41:02',0,'2015-11-10 16:41:02',0,0,0,0,NULL),(66,'Teacher Experience Type','',0,0,0,0,0,'',1,'2015-11-22 16:38:39',0,'2015-11-22 16:38:39',0,0,0,0,NULL),(67,'Teacher Interest','',0,0,0,0,0,'',1,'2015-11-22 16:40:27',0,'2015-11-22 16:40:27',0,0,0,0,NULL),(68,'Application User Type','',0,0,0,0,0,'',1,'2015-12-11 18:18:52',0,'2015-12-11 18:18:52',0,0,0,0,NULL),(69,'Marking Type','',0,0,0,0,0,'',1,'2016-01-27 21:55:34',0,'2016-01-27 21:55:34',0,0,0,0,NULL),(70,'Payment Type','',0,0,0,0,0,'',1,'2016-02-10 20:19:02',0,'2016-02-10 20:19:02',0,0,0,0,NULL),(71,'Language Proficiency Level ','',0,0,0,0,0,'',1,'2017-03-03 22:27:05',0,'2017-03-03 22:27:05',0,0,0,0,NULL),(72,'Campus Type','',0,0,0,0,0,'',1,'2017-08-26 10:48:43',0,'2017-08-26 10:48:43',0,0,0,0,NULL),(74,'Building Type','',0,0,0,0,0,'',1,'2017-09-07 08:25:14',0,'2017-09-07 08:25:14',0,0,0,0,NULL),(75,'Floor','',0,0,0,0,0,'',1,'2017-09-09 04:38:41',0,'2017-09-09 04:38:41',0,0,0,0,NULL),(76,'Room Type','',0,0,0,0,0,'',1,'2017-09-09 06:27:42',0,'2017-09-09 06:27:42',0,0,0,0,NULL),(77,'Weeks','',0,0,0,0,0,'',1,'2017-09-17 03:51:31',0,'2017-09-17 03:51:31',0,0,0,0,NULL),(78,'Hostel Terms and Condition','',0,0,0,0,0,'',1,'2017-09-26 05:59:22',0,'2017-09-26 05:59:22',0,0,0,0,NULL),(79,'Seat No.','',0,0,0,0,0,'',1,'2017-10-02 06:10:30',0,'2017-10-02 06:10:30',0,0,0,0,NULL),(80,'Requirment Type','',0,0,0,0,0,'',1,'2017-11-28 05:25:28',0,'2017-11-28 05:25:28',0,0,0,0,NULL),(81,'Bill Type','',0,0,0,0,0,'',1,'2017-11-28 11:13:34',0,'2017-11-28 11:13:34',0,0,0,0,NULL),(82,'Library Item Category','',0,0,0,0,0,'',1,'2018-04-04 12:13:21',0,'2018-04-04 12:13:21',0,0,0,0,NULL),(83,'Library Member Rules','',0,0,0,0,0,'',1,'2018-04-05 10:11:24',0,'2018-04-05 10:11:24',0,0,0,0,NULL);
/*!40000 ALTER TABLE `m00_lkpgrp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_05_15_121814_create_rakibs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `NOTICE_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `N_TITLE` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL,
  `N_DESC` text COLLATE utf8_croatian_ci,
  `N_ATTACHMENT` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ACTIVE_STATUS` int(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (25,'Notice Title','<p>Notice description updated</p>\r\n ','Chrysanthemum1.jpg','2017-09-01','2017-09-30',1,NULL,'2017-11-06 18:00:00',NULL,NULL),(26,'Annual Program','<p>English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web<br></p> ','Jellyfish.jpg','2017-09-01','2017-09-05',1,NULL,'2017-11-06 18:00:00',NULL,NULL),(27,'Semester final exam','<p>English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web<br></p>','','2017-09-14','2017-09-28',1,NULL,'2017-09-20 18:00:00',NULL,NULL),(28,'Exam Postpond ','<p>English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web<br></p>','','2017-09-23','2017-09-24',1,NULL,'2017-09-20 18:00:00',NULL,NULL),(29,'Mid Exam','<p>English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web<br></p>','','2017-09-01','2017-09-27',1,NULL,'2017-09-20 18:00:00',NULL,NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organogam`
--

DROP TABLE IF EXISTS `organogam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organogam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organogam`
--

LOCK TABLES `organogam` WRITE;
/*!40000 ALTER TABLE `organogam` DISABLE KEYS */;
INSERT INTO `organogam` VALUES (2,NULL,'test','test'),(3,2,'sohel','dfdf');
/*!40000 ALTER TABLE `organogam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rakibs`
--

DROP TABLE IF EXISTS `rakibs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rakibs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rakibs`
--

LOCK TABLES `rakibs` WRITE;
/*!40000 ALTER TABLE `rakibs` DISABLE KEYS */;
INSERT INTO `rakibs` VALUES (1,'df','df','2018-05-15 07:22:31','2018-05-15 07:22:31'),(2,'Rakib','rakib@atilimited.net','2018-05-15 07:25:26','2018-05-15 07:25:26'),(3,'Test','fdfd','2018-05-15 07:26:30','2018-05-15 07:26:30');
/*!40000 ALTER TABLE `rakibs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_application`
--

DROP TABLE IF EXISTS `resident_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_application` (
  `APP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICATION_TYPE` varchar(11) DEFAULT NULL COMMENT 'A=''''ALOCATION'''',C="CANCELLATION"',
  `APPLICANT_ID` int(11) DEFAULT NULL,
  `APPLICANT_TYPE` varchar(11) DEFAULT NULL COMMENT 'S="STUDENT",E="EMPLOYEE"',
  `APPLICANT_DT` date DEFAULT NULL,
  `REASON_OF_ALLOCATION` varchar(100) DEFAULT NULL,
  `APPROVE_BY_DEPT_HEAD` int(11) DEFAULT NULL,
  `APPROVE_BY_DEPT_HEAD_STATUS` int(11) DEFAULT NULL,
  `REMARK_DEPT_HEAD` varchar(100) DEFAULT NULL,
  `APPROVE_PROVOST` int(11) DEFAULT NULL,
  `APPROVE_PROVOST_STATUS` int(1) DEFAULT NULL,
  `REMARK_PROVOST` varchar(100) DEFAULT NULL,
  `REMARK_HOUSE_TUTOR` varchar(100) DEFAULT NULL,
  `ROOM_NO` int(11) DEFAULT NULL,
  `TERMS` int(1) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`APP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_application`
--

LOCK TABLES `resident_application` WRITE;
/*!40000 ALTER TABLE `resident_application` DISABLE KEYS */;
INSERT INTO `resident_application` VALUES (1,'A',278,'S','2018-01-02',' need',14,1,' ok',14,1,' ok by provost',NULL,NULL,1,1,0,'2018-01-02 05:04:24',NULL,'2018-01-02 11:05:56'),(2,'',18,'S','2018-04-10',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2018-04-10 04:43:42',NULL,NULL),(3,'',18,'S','2018-04-10',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2018-04-10 04:43:49',NULL,NULL),(4,NULL,18,'S','2018-04-10',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2018-04-10 04:43:59',NULL,NULL),(5,NULL,18,'S','2018-04-10',' sadf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2018-04-10 04:45:48',NULL,NULL),(6,NULL,18,'S','2018-04-10',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2018-04-10 04:47:53',NULL,NULL),(7,NULL,18,'S','2018-04-10',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2018-04-10 04:50:22',NULL,NULL);
/*!40000 ALTER TABLE `resident_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_furniture`
--

DROP TABLE IF EXISTS `resident_furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_furniture` (
  `FURNITURE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FUNRNITURE_NAME` varchar(255) DEFAULT NULL,
  `DESC` varchar(255) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  PRIMARY KEY (`FURNITURE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_furniture`
--

LOCK TABLES `resident_furniture` WRITE;
/*!40000 ALTER TABLE `resident_furniture` DISABLE KEYS */;
INSERT INTO `resident_furniture` VALUES (1,'Fan','Ceiling Fan ',NULL,NULL,NULL,NULL),(2,'Tube Light','Tube Light',NULL,NULL,NULL,NULL),(3,'Bed','Bed',NULL,NULL,NULL,NULL),(4,'Table','Table',NULL,NULL,NULL,NULL),(5,'Chair','Chair',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `resident_furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `resident_seat`
--

DROP TABLE IF EXISTS `resident_seat`;
/*!50001 DROP VIEW IF EXISTS `resident_seat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `resident_seat` AS SELECT 
 1 AS `SEAT_ID`,
 1 AS `SEAT_NAME`,
 1 AS `ACTIVE_FLAG`,
 1 AS `SEAT_NO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `resident_seat_allocation`
--

DROP TABLE IF EXISTS `resident_seat_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_seat_allocation` (
  `ALLOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEAT_MAPPING_ID` int(11) DEFAULT NULL,
  `APPLICANT_ID` int(11) DEFAULT NULL,
  `APPLICANT_TYPE` int(11) DEFAULT NULL,
  `ALLOCATION_START_DT` date DEFAULT NULL,
  `ALLOCATION_END_DT` date DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `FURNITURE` varchar(100) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ALLOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_seat_allocation`
--

LOCK TABLES `resident_seat_allocation` WRITE;
/*!40000 ALTER TABLE `resident_seat_allocation` DISABLE KEYS */;
INSERT INTO `resident_seat_allocation` VALUES (1,7,278,NULL,'2018-01-10','2019-01-10','ok',NULL,1,1,'2018-01-02 05:06:57',NULL,NULL);
/*!40000 ALTER TABLE `resident_seat_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_seat_mapping`
--

DROP TABLE IF EXISTS `resident_seat_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_seat_mapping` (
  `SEAT_MAPPING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUILDING_ID` int(11) DEFAULT NULL,
  `ROOM_ID` int(11) DEFAULT NULL,
  `FLOOR_ID` int(11) DEFAULT NULL,
  `SEAT_NO` int(11) DEFAULT NULL,
  `BOOKED_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` bigint(14) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SEAT_MAPPING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_seat_mapping`
--

LOCK TABLES `resident_seat_mapping` WRITE;
/*!40000 ALTER TABLE `resident_seat_mapping` DISABLE KEYS */;
INSERT INTO `resident_seat_mapping` VALUES (1,7,1,1,1,1,1,1,'2017-10-25 04:54:50',NULL,'2017-10-31 10:09:57'),(2,7,1,1,2,0,1,1,'2017-10-25 04:54:50',NULL,'2017-10-31 16:39:48'),(3,7,1,1,3,1,1,1,'2017-10-25 04:54:50',NULL,'2017-10-31 16:56:44'),(4,7,1,1,4,0,1,1,'2017-10-25 04:54:50',NULL,'2017-10-30 12:22:10'),(5,7,2,1,1,0,1,1,'2017-10-25 04:54:55',NULL,'2017-10-30 12:22:10'),(6,7,2,1,2,1,1,1,'2017-10-25 04:54:55',NULL,'2017-12-26 10:25:32'),(7,7,2,1,3,1,1,1,'2017-10-25 04:54:55',NULL,'2018-01-02 11:06:57'),(8,7,2,1,4,0,1,1,'2017-10-25 04:54:55',NULL,'2017-10-30 12:22:10'),(9,7,3,1,1,0,1,1,'2017-10-25 04:54:59',NULL,NULL),(10,7,3,1,2,0,1,1,'2017-10-25 04:54:59',NULL,NULL),(11,7,3,1,3,0,1,1,'2017-10-25 04:54:59',NULL,NULL),(12,7,3,1,4,0,1,1,'2017-10-25 04:54:59',NULL,NULL),(13,7,4,2,1,0,1,1,'2017-10-25 06:31:27',NULL,NULL),(14,7,4,2,2,0,1,1,'2017-10-25 06:31:27',NULL,NULL),(15,7,4,2,3,0,1,1,'2017-10-25 06:31:27',NULL,NULL),(16,7,4,2,4,0,1,1,'2017-10-25 06:31:27',NULL,NULL),(17,7,5,2,1,0,1,1,'2017-10-25 06:31:31',NULL,NULL),(18,7,5,2,2,0,1,1,'2017-10-25 06:31:31',NULL,NULL),(19,7,5,2,3,0,1,1,'2017-10-25 06:31:31',NULL,NULL),(20,7,5,2,4,0,1,1,'2017-10-25 06:31:31',NULL,NULL),(21,7,9,3,1,0,1,1,'2017-10-25 06:32:11',NULL,NULL),(22,7,9,3,2,0,1,1,'2017-10-25 06:32:11',NULL,NULL),(23,3,11,1,1,0,1,1,'2017-12-27 05:42:31',NULL,NULL),(24,3,11,1,2,0,1,1,'2017-12-27 05:42:31',NULL,NULL),(25,3,11,1,3,0,1,1,'2017-12-27 05:42:31',NULL,NULL),(26,3,11,1,4,0,1,1,'2017-12-27 05:42:31',NULL,NULL);
/*!40000 ALTER TABLE `resident_seat_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_building`
--

DROP TABLE IF EXISTS `sa_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_building` (
  `BUILDING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAMPUS_ID` int(11) DEFAULT NULL,
  `BUILDING_NAME` varchar(100) NOT NULL,
  `DESC` text,
  `BUILDING_TYPE` int(11) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(10) DEFAULT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`BUILDING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_building`
--

LOCK TABLES `sa_building` WRITE;
/*!40000 ALTER TABLE `sa_building` DISABLE KEYS */;
INSERT INTO `sa_building` VALUES (3,5,'Female Hostel','Female Hostel',347,1,1,'2017-09-07 09:19:22',NULL,NULL),(6,6,'Main Building T','Main Building Description',315,1,1,'2017-09-09 03:17:30',NULL,NULL),(7,5,'Male Hostel','Male Hostel',347,1,1,'2017-10-02 05:44:44',NULL,NULL);
/*!40000 ALTER TABLE `sa_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_campus`
--

DROP TABLE IF EXISTS `sa_campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_campus` (
  `CAMPUS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAMPUS_NAME` varchar(100) NOT NULL,
  `CAMPUS_DESC` text,
  `CAMPUS_TYPE` int(11) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(10) DEFAULT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_DT` datetime DEFAULT NULL,
  `ORG_ID` int(11) NOT NULL,
  PRIMARY KEY (`CAMPUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_campus`
--

LOCK TABLES `sa_campus` WRITE;
/*!40000 ALTER TABLE `sa_campus` DISABLE KEYS */;
INSERT INTO `sa_campus` VALUES (5,'Admin Campus','Admin Campus Description',312,1,1,'2017-08-27 03:52:39',NULL,NULL,1),(6,'EEE Campus','EEE Campus Description',312,1,1,'2017-08-27 03:54:00',NULL,NULL,1),(7,'CSE Campus','CSE Campus Description',311,1,1,'2017-08-27 04:29:55',NULL,NULL,1),(8,'Textitle Campus 01','Textile Campus Description',311,1,1,'2017-08-27 04:30:55',NULL,NULL,1),(9,'Biochemistry Campus','Biochemistry Campus Description',311,1,1,'2017-08-27 04:32:45',NULL,NULL,1),(10,'Chemistrry Building','Chemistry Building Description',311,1,1,'2017-08-28 09:58:58',NULL,NULL,1),(11,'test tt','test ddeeeeeeee',312,1,1,'2018-04-04 04:18:34',NULL,NULL,1),(12,'test','ttt',311,1,1,'2018-04-05 03:47:14',NULL,NULL,1);
/*!40000 ALTER TABLE `sa_campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_country`
--

DROP TABLE IF EXISTS `sa_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISO` char(2) COLLATE utf8_croatian_ci NOT NULL,
  `NAME` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `NICENAME` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `ISO3` char(3) COLLATE utf8_croatian_ci DEFAULT NULL,
  `NUMCODE` smallint(6) DEFAULT NULL,
  `PHONECODE` int(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_country`
--

LOCK TABLES `sa_country` WRITE;
/*!40000 ALTER TABLE `sa_country` DISABLE KEYS */;
INSERT INTO `sa_country` VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',4,93),(2,'AL','ALBANIA','Albania','ALB',8,355),(3,'DZ','ALGERIA','Algeria','DZA',12,213),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16,1684),(5,'AD','ANDORRA','Andorra','AND',20,376),(6,'AO','ANGOLA','Angola','AGO',24,244),(7,'AI','ANGUILLA','Anguilla','AIA',660,1264),(8,'AQ','ANTARCTICA','Antarctica',NULL,NULL,0),(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,1268),(10,'AR','ARGENTINA','Argentina','ARG',32,54),(11,'AM','ARMENIA','Armenia','ARM',51,374),(12,'AW','ARUBA','Aruba','ABW',533,297),(13,'AU','AUSTRALIA','Australia','AUS',36,61),(14,'AT','AUSTRIA','Austria','AUT',40,43),(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31,994),(16,'BS','BAHAMAS','Bahamas','BHS',44,1242),(17,'BH','BAHRAIN','Bahrain','BHR',48,973),(18,'BD','BANGLADESH','Bangladesh','BGD',50,880),(19,'BB','BARBADOS','Barbados','BRB',52,1246),(20,'BY','BELARUS','Belarus','BLR',112,375),(21,'BE','BELGIUM','Belgium','BEL',56,32),(22,'BZ','BELIZE','Belize','BLZ',84,501),(23,'BJ','BENIN','Benin','BEN',204,229),(24,'BM','BERMUDA','Bermuda','BMU',60,1441),(25,'BT','BHUTAN','Bhutan','BTN',64,975),(26,'BO','BOLIVIA','Bolivia','BOL',68,591),(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,387),(28,'BW','BOTSWANA','Botswana','BWA',72,267),(29,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL,0),(30,'BR','BRAZIL','Brazil','BRA',76,55),(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL,246),(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,673),(33,'BG','BULGARIA','Bulgaria','BGR',100,359),(34,'BF','BURKINA FASO','Burkina Faso','BFA',854,226),(35,'BI','BURUNDI','Burundi','BDI',108,257),(36,'KH','CAMBODIA','Cambodia','KHM',116,855),(37,'CM','CAMEROON','Cameroon','CMR',120,237),(38,'CA','CANADA','Canada','CAN',124,1),(39,'CV','CAPE VERDE','Cape Verde','CPV',132,238),(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,1345),(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,236),(42,'TD','CHAD','Chad','TCD',148,235),(43,'CL','CHILE','Chile','CHL',152,56),(44,'CN','CHINA','China','CHN',156,86),(45,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL,61),(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL,672),(47,'CO','COLOMBIA','Colombia','COL',170,57),(48,'KM','COMOROS','Comoros','COM',174,269),(49,'CG','CONGO','Congo','COG',178,242),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,242),(51,'CK','COOK ISLANDS','Cook Islands','COK',184,682),(52,'CR','COSTA RICA','Costa Rica','CRI',188,506),(53,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384,225),(54,'HR','CROATIA','Croatia','HRV',191,385),(55,'CU','CUBA','Cuba','CUB',192,53),(56,'CY','CYPRUS','Cyprus','CYP',196,357),(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203,420),(58,'DK','DENMARK','Denmark','DNK',208,45),(59,'DJ','DJIBOUTI','Djibouti','DJI',262,253),(60,'DM','DOMINICA','Dominica','DMA',212,1767),(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,1809),(62,'EC','ECUADOR','Ecuador','ECU',218,593),(63,'EG','EGYPT','Egypt','EGY',818,20),(64,'SV','EL SALVADOR','El Salvador','SLV',222,503),(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,240),(66,'ER','ERITREA','Eritrea','ERI',232,291),(67,'EE','ESTONIA','Estonia','EST',233,372),(68,'ET','ETHIOPIA','Ethiopia','ETH',231,251),(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,500),(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234,298),(71,'FJ','FIJI','Fiji','FJI',242,679),(72,'FI','FINLAND','Finland','FIN',246,358),(73,'FR','FRANCE','France','FRA',250,33),(74,'GF','FRENCH GUIANA','French Guiana','GUF',254,594),(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258,689),(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL,0),(77,'GA','GABON','Gabon','GAB',266,241),(78,'GM','GAMBIA','Gambia','GMB',270,220),(79,'GE','GEORGIA','Georgia','GEO',268,995),(80,'DE','GERMANY','Germany','DEU',276,49),(81,'GH','GHANA','Ghana','GHA',288,233),(82,'GI','GIBRALTAR','Gibraltar','GIB',292,350),(83,'GR','GREECE','Greece','GRC',300,30),(84,'GL','GREENLAND','Greenland','GRL',304,299),(85,'GD','GRENADA','Grenada','GRD',308,1473),(86,'GP','GUADELOUPE','Guadeloupe','GLP',312,590),(87,'GU','GUAM','Guam','GUM',316,1671),(88,'GT','GUATEMALA','Guatemala','GTM',320,502),(89,'GN','GUINEA','Guinea','GIN',324,224),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,245),(91,'GY','GUYANA','Guyana','GUY',328,592),(92,'HT','HAITI','Haiti','HTI',332,509),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL,0),(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,39),(95,'HN','HONDURAS','Honduras','HND',340,504),(96,'HK','HONG KONG','Hong Kong','HKG',344,852),(97,'HU','HUNGARY','Hungary','HUN',348,36),(98,'IS','ICELAND','Iceland','ISL',352,354),(99,'IN','INDIA','India','IND',356,91),(100,'ID','INDONESIA','Indonesia','IDN',360,62),(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,98),(102,'IQ','IRAQ','Iraq','IRQ',368,964),(103,'IE','IRELAND','Ireland','IRL',372,353),(104,'IL','ISRAEL','Israel','ISR',376,972),(105,'IT','ITALY','Italy','ITA',380,39),(106,'JM','JAMAICA','Jamaica','JAM',388,1876),(107,'JP','JAPAN','Japan','JPN',392,81),(108,'JO','JORDAN','Jordan','JOR',400,962),(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,7),(110,'KE','KENYA','Kenya','KEN',404,254),(111,'KI','KIRIBATI','Kiribati','KIR',296,686),(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408,850),(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,82),(114,'KW','KUWAIT','Kuwait','KWT',414,965),(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,996),(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418,856),(117,'LV','LATVIA','Latvia','LVA',428,371),(118,'LB','LEBANON','Lebanon','LBN',422,961),(119,'LS','LESOTHO','Lesotho','LSO',426,266),(120,'LR','LIBERIA','Liberia','LBR',430,231),(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,218),(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438,423),(123,'LT','LITHUANIA','Lithuania','LTU',440,370),(124,'LU','LUXEMBOURG','Luxembourg','LUX',442,352),(125,'MO','MACAO','Macao','MAC',446,853),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,389),(127,'MG','MADAGASCAR','Madagascar','MDG',450,261),(128,'MW','MALAWI','Malawi','MWI',454,265),(129,'MY','MALAYSIA','Malaysia','MYS',458,60),(130,'MV','MALDIVES','Maldives','MDV',462,960),(131,'ML','MALI','Mali','MLI',466,223),(132,'MT','MALTA','Malta','MLT',470,356),(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,692),(134,'MQ','MARTINIQUE','Martinique','MTQ',474,596),(135,'MR','MAURITANIA','Mauritania','MRT',478,222),(136,'MU','MAURITIUS','Mauritius','MUS',480,230),(137,'YT','MAYOTTE','Mayotte',NULL,NULL,269),(138,'MX','MEXICO','Mexico','MEX',484,52),(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,691),(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,373),(141,'MC','MONACO','Monaco','MCO',492,377),(142,'MN','MONGOLIA','Mongolia','MNG',496,976),(143,'MS','MONTSERRAT','Montserrat','MSR',500,1664),(144,'MA','MOROCCO','Morocco','MAR',504,212),(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508,258),(146,'MM','MYANMAR','Myanmar','MMR',104,95),(147,'NA','NAMIBIA','Namibia','NAM',516,264),(148,'NR','NAURU','Nauru','NRU',520,674),(149,'NP','NEPAL','Nepal','NPL',524,977),(150,'NL','NETHERLANDS','Netherlands','NLD',528,31),(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,599),(152,'NC','NEW CALEDONIA','New Caledonia','NCL',540,687),(153,'NZ','NEW ZEALAND','New Zealand','NZL',554,64),(154,'NI','NICARAGUA','Nicaragua','NIC',558,505),(155,'NE','NIGER','Niger','NER',562,227),(156,'NG','NIGERIA','Nigeria','NGA',566,234),(157,'NU','NIUE','Niue','NIU',570,683),(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574,672),(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,1670),(160,'NO','NORWAY','Norway','NOR',578,47),(161,'OM','OMAN','Oman','OMN',512,968),(162,'PK','PAKISTAN','Pakistan','PAK',586,92),(163,'PW','PALAU','Palau','PLW',585,680),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL,970),(165,'PA','PANAMA','Panama','PAN',591,507),(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,675),(167,'PY','PARAGUAY','Paraguay','PRY',600,595),(168,'PE','PERU','Peru','PER',604,51),(169,'PH','PHILIPPINES','Philippines','PHL',608,63),(170,'PN','PITCAIRN','Pitcairn','PCN',612,0),(171,'PL','POLAND','Poland','POL',616,48),(172,'PT','PORTUGAL','Portugal','PRT',620,351),(173,'PR','PUERTO RICO','Puerto Rico','PRI',630,1787),(174,'QA','QATAR','Qatar','QAT',634,974),(175,'RE','REUNION','Reunion','REU',638,262),(176,'RO','ROMANIA','Romania','ROM',642,40),(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,70),(178,'RW','RWANDA','Rwanda','RWA',646,250),(179,'SH','SAINT HELENA','Saint Helena','SHN',654,290),(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,1869),(181,'LC','SAINT LUCIA','Saint Lucia','LCA',662,1758),(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,508),(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,1784),(184,'WS','SAMOA','Samoa','WSM',882,684),(185,'SM','SAN MARINO','San Marino','SMR',674,378),(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,239),(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682,966),(188,'SN','SENEGAL','Senegal','SEN',686,221),(189,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL,381),(190,'SC','SEYCHELLES','Seychelles','SYC',690,248),(191,'SL','SIERRA LEONE','Sierra Leone','SLE',694,232),(192,'SG','SINGAPORE','Singapore','SGP',702,65),(193,'SK','SLOVAKIA','Slovakia','SVK',703,421),(194,'SI','SLOVENIA','Slovenia','SVN',705,386),(195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,677),(196,'SO','SOMALIA','Somalia','SOM',706,252),(197,'ZA','SOUTH AFRICA','South Africa','ZAF',710,27),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL,0),(199,'ES','SPAIN','Spain','ESP',724,34),(200,'LK','SRI LANKA','Sri Lanka','LKA',144,94),(201,'SD','SUDAN','Sudan','SDN',736,249),(202,'SR','SURINAME','Suriname','SUR',740,597),(203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,47),(204,'SZ','SWAZILAND','Swaziland','SWZ',748,268),(205,'SE','SWEDEN','Sweden','SWE',752,46),(206,'CH','SWITZERLAND','Switzerland','CHE',756,41),(207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,963),(208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,886),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',762,992),(210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,255),(211,'TH','THAILAND','Thailand','THA',764,66),(212,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL,670),(213,'TG','TOGO','Togo','TGO',768,228),(214,'TK','TOKELAU','Tokelau','TKL',772,690),(215,'TO','TONGA','Tonga','TON',776,676),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,1868),(217,'TN','TUNISIA','Tunisia','TUN',788,216),(218,'TR','TURKEY','Turkey','TUR',792,90),(219,'TM','TURKMENISTAN','Turkmenistan','TKM',795,7370),(220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,1649),(221,'TV','TUVALU','Tuvalu','TUV',798,688),(222,'UG','UGANDA','Uganda','UGA',800,256),(223,'UA','UKRAINE','Ukraine','UKR',804,380),(224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,971),(225,'GB','UNITED KINGDOM','United Kingdom','GBR',826,44),(226,'US','UNITED STATES','United States','USA',840,1),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL,1),(228,'UY','URUGUAY','Uruguay','URY',858,598),(229,'UZ','UZBEKISTAN','Uzbekistan','UZB',860,998),(230,'VU','VANUATU','Vanuatu','VUT',548,678),(231,'VE','VENEZUELA','Venezuela','VEN',862,58),(232,'VN','VIET NAM','Viet Nam','VNM',704,84),(233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,1284),(234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,1340),(235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,681),(236,'EH','WESTERN SAHARA','Western Sahara','ESH',732,212),(237,'YE','YEMEN','Yemen','YEM',887,967),(238,'ZM','ZAMBIA','Zambia','ZMB',894,260),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716,263);
/*!40000 ALTER TABLE `sa_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_districts`
--

DROP TABLE IF EXISTS `sa_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_districts` (
  `DISTRICT_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key of sa_districts Table.',
  `DIVISION_ID` tinyint(2) DEFAULT NULL COMMENT 'Devision Id , Foreign Key To DIVISION_ID Column Of sa_divisions Table.',
  `DISTRICT_ENAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'District Name In English.',
  `DISTRICT_LNAME` varchar(120) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'District Name In Local Language.',
  `UD_DISTRICT_CODE` varchar(6) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'User Define District Code.',
  `ORDER_SL` tinyint(2) DEFAULT '0' COMMENT 'Ascending Serial No.',
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  `TAREA_STATUS` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Thanas Or Upazilla Area Status, T=Thana, U=Upazilla, B=Both',
  PRIMARY KEY (`DISTRICT_ID`),
  KEY `FK01_DIVISION_ID` (`DIVISION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_districts`
--

LOCK TABLES `sa_districts` WRITE;
/*!40000 ALTER TABLE `sa_districts` DISABLE KEYS */;
INSERT INTO `sa_districts` VALUES (1,4,'BAGERHAT',NULL,'0401',0,1,NULL,'2015-05-19 21:19:57',31,'2016-01-21 05:45:36','U'),(2,2,'BANDARBAN',NULL,'0203',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(3,1,'BARGUNA',NULL,'0104',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(4,1,'BARISAL',NULL,'0106',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(5,1,'BHOLA',NULL,'0109',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(6,5,'BOGRA',NULL,'0510',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(7,2,'BRAHAMANBARIA',NULL,'0212',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(8,2,'CHANDPUR',NULL,'0213',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(9,2,'CHITTAGONG                ',NULL,'0215',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(10,4,'CHUADANGA',NULL,'0418',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(11,2,'COMILLA',NULL,'0219',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(12,2,'COX\'S BAZAR',NULL,'0222',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(13,3,'DHAKA',NULL,'0326',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(14,8,'DINAJPUR',NULL,'0527',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(15,3,'FARIDPUR',NULL,'0329',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(16,2,'FENI',NULL,'0230',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(17,8,'GAIBANDHA',NULL,'0532',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(18,3,'GAZIPUR',NULL,'0333',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(19,3,'GOPALGANJ',NULL,'0335',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(20,6,'HABIGANJ',NULL,'0636',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(21,5,'JOYPURHAT',NULL,'0538',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(22,3,'JAMALPUR',NULL,'0339',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(23,4,'JESSORE',NULL,'0441',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(24,1,'JHALOKATI',NULL,'0142',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(25,4,'JHENAIDAH',NULL,'0444',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(26,2,'KHAGRACHHARI',NULL,'0246',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(27,4,'KHULNA',NULL,'0447',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(28,3,'KISHOREGANJ',NULL,'0348',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(29,8,'KURIGRAM',NULL,'0549',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(30,4,'KUSHTIA',NULL,'0450',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(31,2,'LAKSHMIPUR',NULL,'0251',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(32,8,'LALMONIRHAT',NULL,'0552',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(33,3,'MADARIPUR',NULL,'0354',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(34,4,'MAGURA',NULL,'0455',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(35,3,'MANIKGANJ',NULL,'0356',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(36,4,'MEHERPUR',NULL,'0457',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(37,6,'MAULVIBAZAR',NULL,'0658',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(38,3,'MUNSHIGANJ',NULL,'0359',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(39,3,'MYMENSINGH',NULL,'0361',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(40,5,'NAOGAON',NULL,'0564',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(41,4,'NORAIL',NULL,'0465',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(42,3,'NARAYANGANJ',NULL,'0367',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(43,3,'NARSINGDI',NULL,'0368',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(44,5,'NATORE',NULL,'0569',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(45,5,'NAWABGANJ',NULL,'0570',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(46,3,'NETRAKONA',NULL,'0372',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(47,8,'NILPHAMARI',NULL,'0573',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(48,2,'NOAKHALI',NULL,'0275',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(49,5,'PABNA',NULL,'0576',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(50,8,'PANCHAGARH',NULL,'0577',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(51,1,'PATUAKHALI',NULL,'0178',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(52,1,'PIROJPUR',NULL,'0179',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(53,5,'RAJSHAHI',NULL,'0581',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(54,3,'RAJBARI',NULL,'0382',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(55,2,'RANGAMATI',NULL,'0284',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(56,8,'RANGPUR',NULL,'0585',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(57,3,'SHARIATPUR',NULL,'0386',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(58,4,'SATKHIRA',NULL,'0487',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(59,5,'SIRAJGANJ',NULL,'0588',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(60,3,'SHERPUR',NULL,'0389',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(61,6,'SUNAMGANJ',NULL,'0690',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(62,6,'SYLHET',NULL,'0691',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:06:02','B'),(63,3,'TANGAIL',NULL,'0393',0,1,NULL,'2015-05-19 21:19:57',NULL,'2015-05-24 21:05:16','U'),(64,8,'THAKURGAON',NULL,'0594',0,1,NULL,'2015-05-19 21:19:57',1,'2015-10-12 11:41:09','U'),(85,13,'District Name ',NULL,NULL,0,1,1,'2015-10-14 23:30:52',NULL,NULL,NULL),(86,5,'Chapinawabganj',NULL,NULL,0,1,1,'2015-11-29 02:51:06',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sa_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_divisions`
--

DROP TABLE IF EXISTS `sa_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_divisions` (
  `DIVISION_ID` tinyint(2) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of sa_divisions Table.',
  `DIVISION_ENAME` varchar(50) COLLATE utf8_croatian_ci NOT NULL COMMENT 'Devision Name In English.',
  `DIVISION_LNAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Devision Name In Local Language.',
  `ORDER_SL` tinyint(3) DEFAULT '0' COMMENT 'Ascending Serial No.',
  `UD_DIVISION_CODE` varchar(2) COLLATE utf8_croatian_ci NOT NULL COMMENT 'User Define Devision Code.',
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  `COUNTRY_ID` tinyint(3) DEFAULT NULL COMMENT 'Foreign Key To COUNTRY_ID Column Of sa_countrys Table.',
  PRIMARY KEY (`DIVISION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_divisions`
--

LOCK TABLES `sa_divisions` WRITE;
/*!40000 ALTER TABLE `sa_divisions` DISABLE KEYS */;
INSERT INTO `sa_divisions` VALUES (1,'BARISAL',NULL,0,'01',1,1,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(2,'CHITTAGONG',NULL,0,'02',1,NULL,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(3,'DHAKA',NULL,0,'03',1,NULL,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(4,'KHULNA',NULL,0,'04',1,NULL,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(5,'RAJSHAHI',NULL,0,'05',1,NULL,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(6,'SYLHET',NULL,0,'06',1,NULL,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(8,'RANGPUR',NULL,0,'07',1,NULL,'2015-05-19 21:22:37',NULL,'2015-09-13 10:39:43',NULL),(13,'MATMANSING',NULL,0,'',1,1,'2015-10-14 23:29:24',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sa_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_org_mlinks`
--

DROP TABLE IF EXISTS `sa_org_mlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_org_mlinks` (
  `SA_MLINKS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SA_MLINK_NAME` varchar(60) DEFAULT NULL,
  `SA_MLINK_PAGES` varchar(10) DEFAULT NULL,
  `SA_MODULE_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(7) DEFAULT NULL,
  `URL_URI` varchar(200) DEFAULT NULL,
  `CREATE` tinyint(1) DEFAULT '0',
  `READ` tinyint(1) DEFAULT '0',
  `UPDATE` tinyint(1) DEFAULT '0',
  `DELETE` tinyint(1) DEFAULT '0',
  `STATUS` tinyint(4) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SA_MLINKS_ID`),
  KEY `FK02_ORG_ID` (`ORG_ID`),
  KEY `FK01_SA_MODULE_ID` (`SA_MODULE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_org_mlinks`
--

LOCK TABLES `sa_org_mlinks` WRITE;
/*!40000 ALTER TABLE `sa_org_mlinks` DISABLE KEYS */;
INSERT INTO `sa_org_mlinks` VALUES (5,NULL,NULL,9,1,7,NULL,1,1,1,1,1,1,1,'2015-09-07 23:43:50',1,'2015-09-08 07:43:50'),(6,NULL,NULL,10,1,8,NULL,1,1,1,1,1,1,1,'2015-09-07 23:43:54',1,'2015-09-08 07:43:55'),(7,NULL,NULL,10,1,9,NULL,1,1,1,1,1,1,1,'2015-09-07 23:43:58',1,'2015-09-08 07:43:59'),(8,NULL,NULL,9,1,10,NULL,1,1,1,1,1,1,1,'2015-09-08 02:51:42',1,'2017-11-28 18:22:25'),(9,NULL,NULL,9,1,12,NULL,1,1,1,1,1,1,1,'2015-09-09 00:16:38',1,'2015-09-09 08:16:38'),(10,NULL,NULL,9,1,13,NULL,1,1,1,1,1,1,1,'2015-09-09 00:16:42',1,'2015-09-09 08:16:44'),(11,NULL,NULL,9,1,14,NULL,1,1,1,1,1,1,1,'2015-09-09 00:16:42',1,'2015-09-09 08:16:45'),(12,NULL,NULL,9,1,19,NULL,1,1,1,1,1,1,1,'2015-09-09 00:22:39',1,'2015-09-09 08:22:34'),(13,NULL,NULL,10,1,20,NULL,1,1,1,1,1,1,1,'2015-09-12 22:04:05',1,'2015-09-13 06:04:04'),(14,NULL,NULL,20,1,24,NULL,1,1,1,1,1,1,1,'2015-09-17 03:26:06',1,'2015-10-01 15:46:20'),(15,NULL,NULL,9,1,25,NULL,1,1,1,1,1,1,1,'2015-09-18 21:46:53',1,'2015-09-19 05:46:55'),(16,NULL,NULL,20,1,26,NULL,1,1,1,1,1,1,1,'2015-09-19 03:33:14',1,'2015-10-01 15:46:24'),(17,NULL,NULL,20,1,27,NULL,1,1,1,1,1,1,1,'2015-09-19 03:33:18',1,'2015-10-01 15:46:29'),(18,NULL,NULL,19,1,28,NULL,1,1,1,1,1,1,1,'2015-09-21 05:11:54',1,'2015-10-01 15:47:13'),(20,NULL,NULL,19,1,29,NULL,1,1,1,1,1,1,1,'2015-09-21 23:26:26',1,'2015-10-01 15:47:20'),(21,NULL,NULL,9,1,30,NULL,1,1,1,1,1,1,1,'2015-09-21 23:47:11',1,'2015-09-22 07:47:12'),(23,NULL,NULL,9,1,31,NULL,1,1,1,1,1,1,1,'2015-10-01 03:44:35',1,'2015-10-01 11:44:40'),(24,NULL,NULL,9,1,32,NULL,1,1,1,1,1,1,1,'2015-10-03 22:22:01',1,'2015-10-04 06:22:05'),(27,NULL,NULL,9,1,36,NULL,1,1,1,1,1,1,1,'2015-10-06 23:48:29',1,'2015-10-07 07:48:25'),(28,NULL,NULL,9,1,37,NULL,1,1,1,1,1,1,1,'2015-10-06 23:49:29',1,'2015-10-07 07:49:25'),(30,NULL,NULL,9,1,38,NULL,1,1,1,1,1,1,1,'2015-10-07 04:20:21',1,'2015-10-07 12:20:16'),(31,NULL,NULL,9,1,39,NULL,1,1,1,1,1,1,1,'2015-10-07 22:00:16',1,'2015-10-08 06:00:09'),(32,NULL,NULL,9,1,40,NULL,1,1,1,1,1,1,1,'2015-10-11 23:48:37',1,'2015-10-12 07:48:41'),(33,NULL,NULL,9,1,41,NULL,1,1,1,1,1,1,1,'2015-10-12 00:06:10',1,'2015-10-12 08:06:14'),(34,NULL,NULL,9,1,42,NULL,1,1,1,1,1,1,1,'2015-10-12 00:09:00',1,'2015-10-12 08:09:05'),(35,NULL,NULL,21,1,43,NULL,1,1,1,1,1,1,1,'2015-10-18 00:20:02',1,'2015-10-18 08:20:00'),(36,NULL,NULL,21,1,44,NULL,1,1,1,1,1,1,1,'2015-10-18 00:23:08',1,'2015-10-18 08:23:06'),(37,NULL,NULL,21,1,45,NULL,1,1,1,1,1,1,1,'2015-10-18 00:24:07',1,'2015-10-18 08:24:06'),(38,NULL,NULL,21,1,46,NULL,1,1,1,1,1,1,1,'2015-10-18 00:25:20',1,'2015-10-18 08:25:18'),(39,NULL,NULL,21,1,47,NULL,1,1,1,1,1,1,1,'2015-10-18 00:26:38',1,'2015-10-18 08:26:35'),(40,NULL,NULL,9,1,48,NULL,1,1,1,1,1,1,1,'2015-10-18 02:16:04',1,'2015-10-18 10:16:03'),(41,NULL,NULL,10,1,49,NULL,1,1,1,1,1,1,1,'2015-10-19 02:11:07',1,'2015-10-19 10:11:09'),(42,NULL,NULL,10,1,50,NULL,1,1,1,1,1,1,1,'2015-10-19 02:12:48',1,'2015-10-19 10:12:50'),(43,NULL,NULL,9,1,51,NULL,1,1,1,1,1,1,1,'2015-10-20 21:52:54',1,'2015-10-21 05:52:51'),(44,NULL,NULL,10,1,52,NULL,1,1,1,1,1,1,1,'2015-10-25 00:22:58',1,'2015-10-25 07:23:01'),(45,NULL,NULL,9,1,53,NULL,2,2,2,2,2,1,1,'2015-10-26 23:52:02',1,'2015-10-27 09:32:18'),(46,NULL,NULL,10,1,54,NULL,1,1,1,1,1,1,1,'2015-10-27 00:55:47',1,'2015-10-27 07:55:44'),(47,NULL,NULL,10,1,55,NULL,1,1,1,1,1,1,1,'2015-10-27 23:57:45',1,'2015-10-28 06:57:41'),(48,NULL,NULL,10,1,56,NULL,1,1,1,1,1,1,1,'2015-11-01 21:33:53',1,'2015-11-02 04:33:52'),(49,NULL,NULL,10,1,57,NULL,1,1,1,1,1,1,1,'2015-11-02 03:33:28',1,'2015-11-02 10:33:30'),(50,NULL,NULL,9,1,58,NULL,1,1,1,1,1,1,1,'2015-11-03 03:24:44',1,'2015-11-03 10:24:41'),(51,NULL,NULL,20,1,59,NULL,1,1,1,1,1,1,1,'2015-11-08 02:43:42',1,'2015-11-08 09:43:44'),(52,NULL,NULL,20,1,60,NULL,1,1,1,1,1,1,1,'2015-11-08 02:45:27',1,'2015-11-08 09:45:32'),(53,NULL,NULL,22,1,61,NULL,1,1,1,1,1,1,1,'2015-11-09 23:40:55',1,'2015-11-10 06:40:58'),(54,NULL,NULL,9,1,62,NULL,1,1,1,1,1,1,1,'2015-11-19 02:26:40',1,'2015-11-19 09:26:30'),(55,NULL,NULL,23,1,63,NULL,1,1,1,1,1,1,1,'2015-11-23 01:05:59',1,'2015-11-23 08:06:03'),(56,NULL,NULL,9,1,64,NULL,1,1,1,1,1,1,1,'2015-12-01 22:34:18',1,'2015-12-02 05:34:13'),(57,NULL,NULL,10,1,65,NULL,1,1,1,1,1,1,1,'2015-12-03 00:35:08',1,'2015-12-03 07:35:00'),(58,NULL,NULL,22,1,66,NULL,1,1,1,1,1,1,31,'2015-12-08 23:41:10',31,'2015-12-09 06:41:05'),(59,NULL,NULL,24,1,67,NULL,1,1,1,1,1,1,31,'2015-12-09 02:11:49',31,'2015-12-09 09:11:43'),(60,NULL,NULL,22,1,68,NULL,1,1,1,1,1,1,31,'2015-12-09 05:11:23',31,'2015-12-09 12:11:17'),(61,NULL,NULL,9,1,70,NULL,1,1,1,1,1,1,31,'2015-12-13 23:58:36',31,'2015-12-14 06:58:41'),(62,NULL,NULL,9,1,71,NULL,1,1,1,1,1,1,31,'2015-12-14 22:14:33',31,'2015-12-15 05:14:34'),(63,NULL,NULL,9,1,72,NULL,1,1,1,1,1,1,31,'2015-12-14 22:17:49',31,'2015-12-15 05:17:49'),(64,NULL,NULL,25,1,73,NULL,1,1,1,1,1,1,31,'2015-12-15 00:30:45',31,'2015-12-15 07:30:47'),(65,NULL,NULL,9,1,74,NULL,1,1,1,1,1,1,31,'2015-12-16 22:06:33',31,'2015-12-17 05:06:26'),(66,NULL,NULL,27,1,74,NULL,1,1,1,1,1,1,31,'2015-12-18 23:48:46',31,'2015-12-19 09:37:53'),(67,NULL,NULL,27,1,75,NULL,1,1,1,1,1,1,31,'2015-12-19 02:35:41',31,'2015-12-19 09:35:24'),(68,NULL,NULL,9,1,76,NULL,1,1,1,1,1,1,31,'2015-12-19 06:02:27',31,'2015-12-19 13:02:14'),(69,NULL,NULL,28,1,77,NULL,1,1,1,1,1,1,31,'2015-12-20 04:19:57',31,'2015-12-20 11:19:56'),(70,NULL,NULL,28,1,78,NULL,1,1,1,1,1,1,31,'2015-12-20 04:22:15',31,'2015-12-20 11:22:13'),(71,NULL,NULL,28,1,79,NULL,1,1,1,1,1,1,31,'2015-12-20 04:37:31',31,'2015-12-20 11:37:29'),(72,NULL,NULL,9,1,80,NULL,1,1,1,1,1,1,31,'2015-12-21 22:47:06',31,'2015-12-22 05:47:06'),(73,NULL,NULL,30,1,81,NULL,1,1,1,1,1,1,31,'2015-12-21 23:02:43',31,'2015-12-22 06:02:43'),(74,NULL,NULL,29,1,82,NULL,1,1,1,1,1,1,31,'2015-12-21 23:38:08',31,'2015-12-22 06:38:08'),(75,NULL,NULL,28,1,83,NULL,1,1,1,1,1,1,31,'2015-12-22 02:42:30',31,'2015-12-22 09:42:29'),(76,NULL,NULL,31,1,84,NULL,1,1,1,1,1,1,31,'2015-12-23 23:28:20',31,'2015-12-24 06:28:12'),(77,NULL,NULL,33,1,85,NULL,1,1,1,1,1,1,31,'2015-12-27 23:48:56',31,'2015-12-28 06:48:37'),(78,NULL,NULL,33,1,86,NULL,1,1,1,1,1,1,31,'2015-12-28 06:03:50',31,'2015-12-28 13:03:30'),(79,NULL,NULL,33,1,87,NULL,1,1,1,1,1,1,31,'2015-12-29 03:01:34',31,'2015-12-29 10:01:09'),(80,NULL,NULL,33,1,88,NULL,1,1,1,1,1,1,31,'2015-12-30 23:23:55',31,'2015-12-31 06:23:22'),(81,NULL,NULL,33,1,89,NULL,1,1,1,1,1,1,31,'2016-01-03 22:26:59',31,'2016-01-04 05:26:59'),(82,NULL,NULL,34,1,90,NULL,1,1,1,1,1,1,31,'2016-01-08 23:49:52',31,'2016-01-09 06:49:32'),(83,NULL,NULL,22,1,69,NULL,2,2,0,0,0,1,1,'2016-01-11 05:11:29',31,'2016-01-20 06:50:24'),(84,NULL,NULL,33,1,92,NULL,1,1,1,1,1,1,31,'2016-01-19 02:27:27',31,'2016-01-19 09:27:11'),(85,NULL,NULL,9,1,93,NULL,1,1,1,1,1,1,31,'2016-01-20 03:47:01',31,'2016-01-20 10:46:41'),(86,NULL,NULL,9,1,94,NULL,1,1,1,1,1,1,31,'2016-01-20 23:47:45',31,'2016-01-21 06:47:22'),(87,NULL,NULL,9,1,95,NULL,1,1,1,1,1,1,31,'2016-01-23 00:12:57',31,'2016-01-23 07:12:28'),(88,NULL,NULL,9,1,96,NULL,1,1,1,1,1,1,31,'2016-01-25 03:29:29',31,'2016-01-25 10:29:31'),(89,NULL,NULL,9,1,97,NULL,1,1,1,1,1,1,31,'2016-01-25 22:37:03',31,'2016-01-26 05:37:02'),(90,NULL,NULL,33,1,98,NULL,1,1,1,1,1,1,31,'2016-01-27 00:27:30',31,'2016-01-27 07:27:27'),(91,NULL,NULL,36,1,99,NULL,1,1,1,1,1,1,31,'2016-01-27 03:54:29',31,'2016-01-27 10:54:28'),(92,NULL,NULL,36,1,100,NULL,1,1,1,1,1,1,31,'2016-01-27 03:56:39',31,'2016-01-27 10:56:35'),(93,NULL,NULL,36,1,101,NULL,1,1,1,1,1,1,31,'2016-01-27 03:58:24',31,'2016-01-27 10:58:20'),(94,NULL,NULL,36,1,102,NULL,1,1,1,1,1,1,31,'2016-01-27 04:00:21',31,'2016-01-27 11:00:16'),(95,NULL,NULL,36,1,103,NULL,1,1,1,1,1,1,31,'2016-01-27 04:02:41',31,'2016-01-27 11:02:36'),(96,NULL,NULL,25,1,104,NULL,1,1,1,1,1,1,31,'2016-01-27 04:04:20',31,'2016-01-27 11:04:15'),(97,NULL,NULL,36,1,105,NULL,1,1,1,1,1,1,31,'2016-01-27 04:40:55',31,'2016-01-27 11:40:51'),(98,NULL,NULL,36,1,106,NULL,1,1,1,1,1,1,31,'2016-01-27 04:43:10',31,'2016-01-27 11:43:06'),(99,NULL,NULL,36,1,107,NULL,1,1,1,1,1,1,31,'2016-01-27 04:46:29',1,'2017-05-25 08:34:50'),(100,NULL,NULL,28,1,108,NULL,2,2,2,2,2,1,31,'2016-01-27 21:45:25',31,'2016-06-14 06:39:34'),(101,NULL,NULL,37,1,109,NULL,1,1,1,1,1,1,31,'2016-01-27 21:50:57',31,'2016-01-28 04:50:50'),(102,NULL,NULL,37,1,110,NULL,1,1,1,1,1,1,31,'2016-01-27 21:52:32',31,'2016-01-28 04:52:24'),(103,NULL,NULL,37,1,111,NULL,1,1,1,1,1,1,31,'2016-01-27 21:54:01',31,'2016-01-28 04:53:53'),(104,NULL,NULL,37,1,112,NULL,1,1,1,1,1,1,31,'2016-01-27 21:55:20',31,'2016-01-28 04:55:14'),(105,NULL,NULL,37,1,113,NULL,1,1,1,1,1,1,31,'2016-01-27 21:57:46',31,'2016-01-28 04:57:38'),(106,NULL,NULL,37,1,114,NULL,1,1,1,1,1,1,31,'2016-01-27 21:59:39',31,'2016-01-28 04:59:31'),(107,NULL,NULL,33,1,116,NULL,1,1,1,1,1,1,31,'2016-01-31 00:36:53',31,'2016-01-31 07:36:34'),(108,NULL,NULL,38,1,117,NULL,1,1,1,1,1,1,31,'2016-02-02 05:06:43',31,'2016-02-02 12:06:42'),(109,NULL,NULL,39,1,120,NULL,1,1,1,1,1,1,31,'2016-02-03 05:51:39',31,'2016-02-03 12:51:32'),(110,NULL,NULL,33,1,121,NULL,1,1,1,1,1,1,31,'2016-02-03 23:39:04',31,'2016-02-04 06:38:37'),(111,NULL,NULL,40,1,122,NULL,1,1,1,1,1,1,31,'2016-02-08 23:33:26',31,'2016-02-09 06:33:20'),(112,NULL,NULL,40,1,123,NULL,1,1,1,1,1,1,31,'2016-02-08 23:33:31',31,'2016-02-09 06:33:24'),(113,NULL,NULL,39,1,126,NULL,1,1,1,1,1,1,31,'2016-02-08 23:33:34',31,'2016-02-09 06:34:50'),(114,NULL,NULL,39,1,125,NULL,1,1,1,1,1,1,31,'2016-02-08 23:33:36',31,'2016-02-09 06:33:41'),(115,NULL,NULL,39,1,124,NULL,1,1,1,1,1,1,31,'2016-02-08 23:33:36',31,'2016-02-09 06:33:40'),(116,NULL,NULL,20,1,127,NULL,1,1,1,1,1,1,31,'2016-02-23 03:12:52',31,'2016-02-23 10:12:07'),(117,NULL,NULL,23,1,128,NULL,1,1,1,1,1,1,31,'2016-02-23 03:18:15',31,'2016-02-23 10:17:31'),(118,NULL,NULL,41,1,129,NULL,1,1,1,1,1,1,31,'2016-02-23 03:38:58',31,'2016-02-23 10:38:13'),(119,NULL,NULL,41,1,130,NULL,1,1,1,1,1,1,31,'2016-02-23 03:39:02',31,'2016-02-23 10:38:17'),(120,NULL,NULL,42,1,131,NULL,1,1,1,1,1,1,31,'2016-02-24 00:34:45',31,'2016-02-24 07:33:57'),(121,NULL,NULL,41,1,132,NULL,1,1,1,1,1,1,31,'2016-03-08 22:33:11',31,'2016-03-09 05:32:51'),(122,NULL,NULL,34,1,133,NULL,1,1,1,1,1,1,31,'2016-03-16 00:20:40',31,'2016-03-16 07:19:39'),(123,NULL,NULL,22,1,134,NULL,1,1,1,1,1,1,31,'2016-03-27 23:57:47',31,'2016-03-28 07:56:05'),(124,NULL,NULL,43,1,135,NULL,1,1,1,1,1,1,31,'2016-03-31 02:27:14',31,'2016-03-31 10:25:20'),(125,NULL,NULL,43,1,136,NULL,1,1,1,1,1,1,31,'2016-03-31 02:39:03',31,'2016-03-31 10:37:07'),(126,NULL,NULL,43,1,137,NULL,1,1,1,1,1,1,31,'2016-03-31 02:46:02',31,'2016-03-31 10:44:07'),(127,NULL,NULL,43,1,138,NULL,1,1,1,1,1,1,31,'2016-04-03 00:07:55',31,'2016-04-03 08:05:51'),(128,NULL,NULL,36,1,128,NULL,1,1,1,1,1,1,31,'2017-04-25 09:36:35',31,'2017-04-25 11:36:17'),(129,NULL,NULL,45,1,129,NULL,1,1,1,1,1,1,31,'2017-04-30 04:51:15',31,'2017-04-30 06:51:55'),(130,NULL,NULL,46,1,130,NULL,1,1,1,1,1,1,1,'2017-05-11 09:12:33',1,'2017-05-11 11:12:31'),(131,NULL,NULL,46,1,131,NULL,1,1,1,1,1,1,1,'2017-05-13 08:55:09',1,'2017-05-13 10:55:00'),(132,NULL,NULL,9,1,132,NULL,1,1,1,1,1,1,1,'2017-05-17 11:48:39',1,'2017-05-17 13:48:38'),(133,NULL,NULL,47,1,133,NULL,1,1,1,1,1,1,1,'2017-05-27 09:26:37',1,'2017-05-27 11:26:37'),(134,NULL,NULL,47,1,134,NULL,1,1,1,1,1,1,1,'2017-05-27 11:28:40',1,'2017-05-27 11:28:49'),(135,NULL,NULL,46,1,135,NULL,1,1,1,1,1,1,1,'2017-06-06 05:10:36',1,'2017-06-06 07:10:35'),(136,NULL,NULL,47,1,136,NULL,1,1,1,1,1,1,1,'2017-06-07 04:01:35',1,'2017-06-11 10:10:15'),(137,NULL,NULL,46,1,137,NULL,1,1,1,1,1,1,1,'2017-06-07 09:28:35',1,'2017-06-07 11:28:32'),(138,NULL,NULL,39,1,138,NULL,1,1,1,1,1,1,1,'2017-06-08 06:58:13',1,'2017-06-08 06:58:20'),(139,NULL,NULL,9,1,107,NULL,1,1,1,1,1,1,1,'2017-06-11 02:50:09',1,'2017-06-11 04:49:54'),(140,NULL,NULL,9,1,139,NULL,1,1,1,1,1,1,1,'2017-06-11 03:28:42',1,'2017-06-11 05:28:27'),(141,NULL,NULL,48,1,136,NULL,1,1,1,1,1,1,1,'2017-06-13 06:35:45',1,'2017-06-13 08:35:38'),(142,NULL,NULL,48,1,133,NULL,1,1,1,1,1,1,1,'2017-06-13 06:35:46',1,'2017-06-13 08:35:36'),(143,NULL,NULL,48,1,134,NULL,1,1,1,1,1,1,1,'2017-06-13 06:35:47',1,'2017-06-13 08:35:37'),(144,NULL,NULL,9,1,140,NULL,2,2,2,2,0,1,1,'2017-07-12 08:28:15',1,'2017-07-12 10:29:53'),(145,NULL,NULL,49,1,140,NULL,1,1,1,1,1,1,1,'2017-07-23 09:55:59',1,'2017-07-23 09:57:07'),(146,NULL,NULL,50,1,141,NULL,1,1,1,1,1,1,1,'2017-07-25 04:01:58',1,'2017-07-25 04:03:06'),(147,NULL,NULL,49,1,142,NULL,1,1,1,1,1,1,1,'2017-07-26 03:58:40',1,'2017-07-26 05:59:41'),(148,NULL,NULL,50,1,143,NULL,1,1,1,1,1,1,1,'2017-07-26 08:11:09',1,'2017-07-26 08:12:19'),(149,NULL,NULL,50,1,144,NULL,1,1,1,1,1,1,1,'2017-07-27 08:37:51',1,'2017-07-27 08:39:03'),(150,NULL,NULL,50,1,145,NULL,1,1,1,1,1,1,1,'2017-07-29 04:20:44',1,'2017-07-29 04:21:58'),(151,NULL,NULL,49,1,146,NULL,1,1,1,1,1,1,1,'2017-07-29 05:55:38',1,'2017-07-29 07:56:35'),(152,NULL,NULL,50,1,147,NULL,1,1,1,1,1,1,1,'2017-07-31 10:24:26',1,'2017-07-31 10:25:43'),(153,NULL,NULL,45,1,148,NULL,1,1,1,1,1,1,1,'2017-07-31 13:01:55',1,'2017-07-31 15:02:51'),(154,NULL,NULL,50,1,149,NULL,1,1,1,1,1,1,1,'2017-08-01 10:14:37',1,'2017-08-01 10:15:58'),(155,NULL,NULL,50,1,150,NULL,1,1,1,1,1,1,1,'2017-08-02 09:34:20',1,'2017-08-02 09:35:41'),(156,NULL,NULL,46,1,151,NULL,1,1,1,1,1,1,1,'2017-08-03 08:23:36',1,'2017-08-03 10:24:26'),(157,NULL,NULL,48,1,152,NULL,1,1,1,1,1,1,1,'2017-08-06 08:18:03',1,'2017-08-06 08:19:27'),(158,NULL,NULL,50,1,153,NULL,1,1,1,1,1,1,1,'2017-08-07 03:44:23',1,'2017-08-07 05:45:50'),(159,NULL,NULL,49,1,154,NULL,1,1,1,1,1,1,1,'2017-08-08 10:16:02',1,'2017-08-08 12:17:22'),(160,NULL,NULL,51,1,155,NULL,1,1,1,1,1,1,1,'2017-08-09 06:02:08',1,'2017-08-09 06:05:38'),(161,NULL,NULL,50,1,156,NULL,1,1,1,1,1,1,1,'2017-08-09 06:08:04',1,'2017-08-09 08:09:23'),(162,NULL,NULL,9,1,157,NULL,1,1,1,1,1,1,1,'2017-08-10 08:29:57',1,'2017-08-10 10:31:19'),(163,NULL,NULL,50,1,158,NULL,1,1,1,1,1,1,1,'2017-08-13 09:24:25',1,'2017-08-13 09:25:59'),(164,NULL,NULL,50,1,159,NULL,1,1,1,1,1,1,1,'2017-08-21 04:29:45',1,'2017-08-21 04:31:31'),(165,NULL,NULL,50,1,160,NULL,1,1,1,1,1,1,1,'2017-08-23 06:18:08',1,'2017-08-23 06:19:53'),(166,NULL,NULL,49,1,161,NULL,1,1,1,1,1,1,1,'2017-08-23 09:08:06',1,'2017-08-23 11:09:49'),(167,NULL,NULL,9,1,162,NULL,1,1,1,1,1,1,1,'2017-08-26 10:12:50',1,'2017-08-26 10:14:42'),(168,NULL,NULL,49,1,163,NULL,1,1,1,1,1,1,1,'2017-08-27 09:36:56',1,'2017-08-27 11:38:48'),(169,NULL,NULL,51,1,156,NULL,1,1,1,1,1,1,1,'2017-08-28 05:57:04',1,'2017-08-28 05:59:03'),(170,NULL,NULL,51,1,153,NULL,1,1,1,1,1,1,1,'2017-08-28 05:59:26',1,'2017-08-28 06:01:23'),(171,NULL,NULL,51,1,159,NULL,1,1,1,1,1,1,1,'2017-08-28 06:01:05',1,'2017-08-28 06:03:02'),(172,NULL,NULL,52,1,158,NULL,1,1,1,1,1,1,1,'2017-08-28 06:06:55',1,'2017-08-28 06:08:52'),(173,NULL,NULL,52,1,160,NULL,1,1,1,1,1,1,1,'2017-08-28 06:08:00',1,'2017-08-28 06:09:57'),(174,NULL,NULL,50,1,164,NULL,1,1,1,1,1,1,1,'2017-08-28 09:03:17',1,'2017-08-28 11:05:13'),(175,NULL,NULL,9,1,165,NULL,1,1,1,1,1,1,1,'2017-09-07 04:45:12',1,'2017-09-07 04:47:18'),(176,NULL,NULL,9,1,166,NULL,1,1,1,1,1,1,1,'2017-09-09 04:01:38',1,'2017-09-09 04:03:47'),(177,NULL,NULL,46,1,167,NULL,1,1,1,1,1,1,1,'2017-09-17 04:11:58',1,'2017-09-17 06:13:57'),(178,NULL,NULL,53,1,168,NULL,1,1,1,1,1,1,1,'2017-09-20 06:32:46',1,'2017-09-20 08:35:04'),(179,NULL,NULL,53,1,169,NULL,1,1,1,1,1,1,1,'2017-09-20 08:24:16',1,'2017-09-20 10:26:33'),(180,NULL,NULL,53,1,170,NULL,1,1,1,1,1,1,1,'2017-09-21 03:55:54',1,'2017-09-21 05:58:14'),(181,NULL,NULL,53,1,171,NULL,1,1,1,1,1,1,1,'2017-09-21 06:25:49',1,'2017-09-21 08:28:08'),(182,NULL,NULL,53,1,172,NULL,1,1,1,1,1,1,1,'2017-09-23 10:06:24',1,'2017-09-23 12:08:42'),(183,NULL,NULL,53,1,173,NULL,1,1,1,1,1,1,1,'2017-09-27 11:29:45',1,'2017-09-27 13:32:13'),(184,NULL,NULL,53,1,174,NULL,1,1,1,1,1,1,1,'2017-09-28 05:58:08',1,'2017-09-28 08:00:31'),(185,NULL,NULL,53,1,175,NULL,1,1,1,1,1,1,1,'2017-10-02 06:02:30',1,'2017-10-02 06:05:12'),(186,NULL,NULL,49,1,176,NULL,1,1,1,1,1,1,1,'2017-11-08 08:27:22',1,'2017-11-08 09:30:48'),(187,NULL,NULL,49,1,177,NULL,1,1,1,1,1,1,1,'2017-11-09 09:53:12',1,'2017-11-09 10:56:44'),(188,NULL,NULL,45,1,178,NULL,1,1,1,1,1,1,1,'2017-11-19 09:09:37',1,'2017-11-19 10:09:41'),(189,NULL,NULL,45,1,179,NULL,1,1,1,1,1,1,1,'2017-11-20 08:32:13',1,'2017-11-20 09:32:17'),(190,NULL,NULL,54,1,180,NULL,1,1,1,1,1,1,1,'2017-11-21 10:45:39',1,'2017-11-21 11:45:43'),(191,NULL,NULL,54,1,181,NULL,1,1,1,1,1,1,1,'2017-11-22 09:12:32',1,'2017-11-22 10:12:35'),(192,NULL,NULL,54,1,182,NULL,1,1,1,1,1,1,1,'2017-11-23 09:02:40',1,'2017-11-23 10:02:44'),(193,NULL,NULL,54,1,183,NULL,1,1,1,1,1,1,1,'2017-11-26 11:20:46',1,'2017-11-26 12:20:51'),(194,NULL,NULL,54,1,184,NULL,1,1,1,1,1,1,1,'2017-11-27 06:45:03',1,'2017-11-27 07:45:06'),(195,NULL,NULL,54,1,185,NULL,1,1,1,1,1,1,1,'2017-11-30 05:50:19',1,'2017-11-30 06:50:20'),(196,NULL,NULL,49,1,186,NULL,1,1,1,1,1,1,1,'2017-11-30 09:39:23',1,'2017-11-30 10:39:27'),(197,NULL,NULL,45,1,187,NULL,1,1,1,1,1,1,1,'2017-11-30 11:12:44',1,'2017-11-30 12:12:46'),(198,NULL,NULL,49,1,188,NULL,1,1,1,1,1,1,1,'2017-12-03 09:08:55',1,'2017-12-03 10:08:53'),(199,NULL,NULL,54,1,189,NULL,1,1,1,1,1,1,1,'2017-12-03 10:43:10',1,'2017-12-03 11:43:10'),(200,NULL,NULL,54,1,190,NULL,1,1,1,1,1,1,1,'2017-12-06 04:58:34',1,'2017-12-06 05:58:39'),(201,NULL,NULL,54,1,191,NULL,1,1,1,1,1,1,1,'2017-12-06 10:00:59',1,'2017-12-06 11:01:02'),(202,NULL,NULL,55,1,192,NULL,1,1,1,1,1,1,1,'2017-12-20 11:11:18',1,'2017-12-20 12:11:21'),(203,NULL,NULL,56,1,193,NULL,2,0,0,0,0,1,1,'2017-12-21 05:34:59',1,'2017-12-21 06:35:06'),(204,NULL,NULL,57,1,193,NULL,1,1,1,1,1,1,1,'2017-12-21 05:35:34',1,'2017-12-21 06:35:37'),(205,NULL,NULL,45,1,194,NULL,1,1,1,1,1,1,1,'2017-12-26 04:08:33',1,'2017-12-26 05:08:38'),(206,NULL,NULL,54,1,195,NULL,1,1,1,1,1,1,1,'2017-12-26 09:35:31',1,'2017-12-26 09:35:34'),(207,NULL,NULL,45,1,196,NULL,1,1,1,1,1,1,1,'2017-12-26 10:57:00',1,'2017-12-26 11:57:03'),(208,NULL,NULL,54,1,197,NULL,1,1,1,1,1,1,1,'2017-12-26 13:43:52',1,'2017-12-26 13:43:55'),(209,NULL,NULL,20,1,198,NULL,1,1,1,1,1,1,1,'2018-01-25 06:24:03',1,'2018-01-25 06:24:06'),(210,NULL,NULL,9,1,199,NULL,1,1,1,1,1,1,1,'2018-01-25 08:44:09',1,'2018-01-25 08:44:12'),(211,NULL,NULL,9,1,200,NULL,1,1,1,1,1,1,1,'2018-03-11 06:01:05',1,'2018-03-11 07:01:08'),(212,NULL,NULL,9,1,201,NULL,1,1,1,1,1,1,1,'2018-03-11 11:51:02',1,'2018-03-11 11:51:01'),(213,NULL,NULL,49,1,202,NULL,1,1,1,1,1,1,1,'2018-03-22 10:35:09',1,'2018-03-22 10:32:55'),(214,NULL,NULL,58,1,203,NULL,1,1,1,1,1,1,1,'2018-04-01 10:10:35',1,'2018-04-01 10:11:23'),(215,NULL,NULL,58,1,204,NULL,1,1,1,1,1,1,1,'2018-04-02 06:19:55',1,'2018-04-02 06:18:41'),(216,NULL,NULL,46,1,205,NULL,1,1,1,1,1,1,1,'2018-04-02 10:48:04',1,'2018-04-02 12:49:09'),(217,NULL,NULL,9,1,206,NULL,1,1,1,1,1,1,1,'2018-04-05 04:20:50',1,'2018-04-05 06:22:05'),(218,NULL,NULL,9,1,207,NULL,1,1,1,1,1,1,1,'2018-04-05 06:18:15',1,'2018-04-05 08:19:30'),(219,NULL,NULL,58,1,208,NULL,1,1,1,1,1,1,1,'2018-04-07 09:19:11',1,'2018-04-07 09:18:14'),(220,NULL,NULL,54,1,209,NULL,1,1,1,1,1,1,1,'2018-04-07 10:29:20',1,'2018-04-07 12:30:34'),(221,NULL,NULL,9,1,210,NULL,1,1,1,1,1,1,1,'2018-04-08 06:15:52',1,'2018-04-08 21:17:11'),(222,NULL,NULL,54,1,211,NULL,1,1,1,1,1,1,1,'2018-04-09 05:01:00',1,'2018-04-09 07:02:15'),(223,NULL,NULL,60,1,209,NULL,1,1,1,1,1,1,1,'2018-04-09 06:58:30',1,'2018-04-09 06:59:32'),(224,NULL,NULL,54,1,212,NULL,1,1,1,1,1,1,1,'2018-04-10 06:43:39',1,'2018-04-10 08:44:57'),(225,NULL,NULL,58,1,213,NULL,1,1,1,1,1,1,1,'2018-04-10 08:39:02',1,'2018-04-10 08:38:05'),(226,NULL,NULL,54,1,214,NULL,1,1,1,1,1,1,1,'2018-04-10 10:54:17',1,'2018-04-10 12:55:30'),(227,NULL,NULL,54,1,215,NULL,1,1,1,1,1,1,1,'2018-04-10 11:41:00',1,'2018-04-10 13:42:15'),(228,NULL,NULL,54,1,216,NULL,1,1,1,1,1,1,1,'2018-04-11 06:57:51',1,'2018-04-11 08:59:06'),(229,NULL,NULL,58,1,217,NULL,1,1,1,1,1,1,1,'2018-04-12 10:05:16',1,'2018-04-12 10:04:21'),(230,NULL,NULL,9,1,218,NULL,1,1,1,1,1,1,1,'2018-04-15 08:49:36',1,'2018-04-15 23:50:56'),(231,NULL,NULL,54,1,219,NULL,1,1,1,1,1,1,1,'2018-04-19 04:13:23',1,'2018-04-19 19:15:13'),(232,NULL,NULL,50,1,220,NULL,1,1,1,1,1,1,1,'2018-05-05 04:44:59',1,'2018-05-05 19:47:01'),(233,NULL,NULL,58,1,221,NULL,1,1,1,1,1,1,1,'2018-06-06 04:33:47',1,'2018-06-06 04:34:34'),(234,NULL,NULL,58,1,222,NULL,1,1,1,1,1,1,1,'2018-06-23 11:35:33',1,'2018-06-23 11:36:15'),(235,NULL,NULL,58,1,223,NULL,1,1,1,1,1,1,1,'2018-06-27 08:32:34',1,'2018-06-27 08:33:13'),(236,NULL,NULL,58,1,224,NULL,1,1,1,1,1,1,1,'2018-06-28 08:28:19',1,'2018-06-28 08:29:56'),(237,NULL,NULL,58,1,225,NULL,1,1,1,1,1,1,1,'2018-07-04 10:03:28',1,'2018-07-04 10:01:50'),(238,NULL,NULL,58,1,226,NULL,1,1,1,1,1,1,1,'2018-07-05 09:10:29',1,'2018-07-05 09:08:49');
/*!40000 ALTER TABLE `sa_org_mlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_org_modules`
--

DROP TABLE IF EXISTS `sa_org_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_org_modules` (
  `SA_MODULE_ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `SA_MODULE_NAME` varchar(70) NOT NULL,
  `ORG_ID` int(11) NOT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT '1',
  `MODULE_IDS` varchar(70) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SA_MODULE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_org_modules`
--

LOCK TABLES `sa_org_modules` WRITE;
/*!40000 ALTER TABLE `sa_org_modules` DISABLE KEYS */;
INSERT INTO `sa_org_modules` VALUES (9,'Setup',1,1,'24',1,NULL,'2015-09-07 04:07:51',NULL,'0000-00-00 00:00:00'),(20,'Admission',1,1,'27',1,NULL,'2015-10-01 03:14:57',NULL,'0000-00-00 00:00:00'),(21,'Address Setup',1,1,'29',1,NULL,'2015-10-18 00:19:55',NULL,'0000-00-00 00:00:00'),(36,'Academic Setup',1,1,'44',1,NULL,'2016-01-27 03:52:38',NULL,'0000-00-00 00:00:00'),(39,'Applicant',1,1,'48',1,NULL,'2016-02-03 05:51:31',NULL,'0000-00-00 00:00:00'),(45,'HR',1,1,'49',1,NULL,'2017-04-30 04:50:30',NULL,'0000-00-00 00:00:00'),(46,'Academic Course',1,1,'50',1,NULL,'2017-05-11 09:10:56',NULL,'0000-00-00 00:00:00'),(48,'E-Registration',1,1,'51',1,NULL,'2017-06-13 05:20:21',NULL,'0000-00-00 00:00:00'),(49,'Finance',1,1,'52',1,NULL,'2017-07-23 09:53:53',NULL,'0000-00-00 00:00:00'),(50,'Exam Setup',1,1,'53',1,NULL,'2017-07-25 03:59:42',NULL,'2017-08-28 11:52:14'),(51,'Result Processing',1,1,'54',1,NULL,'2017-08-28 05:56:20',NULL,'0000-00-00 00:00:00'),(52,'Exam Report',1,1,'55',1,NULL,'2017-08-28 06:06:48',NULL,'0000-00-00 00:00:00'),(53,'Others',1,1,'56',1,NULL,'2017-09-20 06:32:41',NULL,'2017-09-21 00:00:00'),(54,'Inventory',1,1,'57',1,NULL,'2017-11-21 10:45:33',NULL,'0000-00-00 00:00:00'),(57,'File Management',1,1,'58',1,NULL,'2017-12-21 05:35:20',NULL,'0000-00-00 00:00:00'),(58,'Library Management',1,1,'59',1,NULL,'2018-04-01 10:08:45',NULL,'0000-00-00 00:00:00'),(60,'Inventory Report',1,1,'60',1,NULL,'2018-04-09 06:58:01',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sa_org_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_organizations`
--

DROP TABLE IF EXISTS `sa_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_organizations` (
  `ORG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORG_NAME` varchar(100) NOT NULL,
  `ORG_TYPE` int(11) NOT NULL,
  `SLOGAN` varchar(200) DEFAULT NULL,
  `ABBR` varchar(8) DEFAULT NULL,
  `DSCP` text,
  `REG_NO` varchar(40) DEFAULT NULL,
  `REG_DT` date DEFAULT NULL,
  `ESTB_DT` date DEFAULT NULL,
  `REG_ADDR1` varchar(160) DEFAULT NULL,
  `REG_ADDR2` varchar(160) DEFAULT NULL,
  `BUSI_ADDR1` varchar(160) DEFAULT NULL,
  `BUSI_ADDR2` varchar(160) DEFAULT NULL,
  `ZIP_CODE` varchar(8) DEFAULT NULL,
  `TEL` varchar(80) DEFAULT NULL,
  `PHONE` varchar(80) DEFAULT NULL,
  `FAX` varchar(80) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `WEBSITE` varchar(40) DEFAULT NULL,
  `LOGO` varchar(100) DEFAULT NULL,
  `TIN` varchar(30) DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_organizations`
--

LOCK TABLES `sa_organizations` WRITE;
/*!40000 ALTER TABLE `sa_organizations` DISABLE KEYS */;
INSERT INTO `sa_organizations` VALUES (1,' Khwaja Yunus Ali University',1,'QUEST FOR KNOWLEDGE','KYAU','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01722085398',NULL,'info@kyau.edu.bd','http://www.kyau.edu.bd/','kyau_web.png',NULL,1,1,'2015-05-11 12:00:00',NULL,NULL);
/*!40000 ALTER TABLE `sa_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_police_station`
--

DROP TABLE IF EXISTS `sa_police_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_police_station` (
  `POLICE_STATION_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of sa_police_station Table.',
  `THANA_ID` int(8) DEFAULT NULL COMMENT 'Foreign Key To THANA_ID Column Of sa_thanas Table.',
  `UD_PS_CODE` varchar(8) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'User Define Police Station Code.',
  `PS_ENAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Police Station English Name.',
  `PS_LNAME` varchar(120) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Police Station Local Name.',
  `ORDER_SL` smallint(4) DEFAULT NULL COMMENT 'Ascending Serial No.',
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`POLICE_STATION_ID`),
  KEY `FK03_THANA_ID` (`THANA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_police_station`
--

LOCK TABLES `sa_police_station` WRITE;
/*!40000 ALTER TABLE `sa_police_station` DISABLE KEYS */;
INSERT INTO `sa_police_station` VALUES (1,1,'022249','MAHESHKHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:58'),(2,2,'022256','PEKUA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:58'),(3,3,'022266','RAMU',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:58'),(4,4,'022290','TEKNAF',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(5,5,'022294','UKHIA UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(6,6,'023014','CHHAGALNAIYA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(7,7,'023025','DAGANBHUIYAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(14,14,'032985','SHALTHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(15,15,'027536','HATIYA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(16,16,'032962','NAGARKANDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(17,17,'034827','HOSSAINPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(18,18,'035944','LOHAJANG',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(19,19,'036758','NARAYANGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(20,20,'038967','NAKLA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(21,21,'052738','FULBARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(22,22,'053874','PANCHBIBI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(23,23,'056469','NIAMATPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(24,24,'057605','ATGHARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(25,25,'058542','KAUNIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(26,26,'059494','THAKURGAON SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(27,27,'069117','BEANI BAZAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(28,28,'032604','BADDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(29,29,'010428','BARGUNA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(30,30,'017852','DASHMINA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(31,31,'027521','COMPANIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(32,32,'038614','BHEDARGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(33,33,'045595','SREEPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(34,34,'056485','RANINAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(35,35,'063668','LAKHAI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(36,36,'010607','BAKERGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(37,37,'069050','JAMALGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(38,38,'032918','BOALMARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(39,39,'036124','HALUAGHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(40,40,'044109','BAGHER PARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(41,41,'041831','DAMURHUDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(42,42,'032665','PALTAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(43,43,'032663','NEW MARKET',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(44,44,'023029','FENI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(45,45,'023041','FULGAZI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(46,46,'023051','PARSHURAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(47,47,'023094','SONAGAZI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(48,48,'024643','DIGHINALA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(49,49,'024649','KHAGRACHHARI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(50,50,'024661','LAKSHMICHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(51,51,'024665','MAHALCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(52,52,'024667','MANIKCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(53,53,'024670','MATIRANGA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(54,54,'024677','PANCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(55,55,'024680','RAMGARH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:40:59'),(56,56,'025133','KAMALNAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(57,57,'025143','LAKSHMIPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(58,58,'025158','ROYPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(59,59,'025165','RAMGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(60,60,'025173','RAMGATI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(61,61,'027507','BEGUMGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(62,62,'027510','CHATKHIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(63,63,'027547','KABIRHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(64,64,'027580','SENBAGH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(65,65,'027583','SONAIMURI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(66,66,'027585','SUBARNACHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(67,67,'027587','NOAKHALI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(68,68,'032666','RAMNA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(69,69,'032668','SABUJBAGH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(70,70,'032672','SAVAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(71,71,'032674','SHAH ALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(72,72,'032675','SHAHBAGH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(73,73,'032676','SHYAMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(74,74,'032688','SUTRAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(75,75,'032690','TEJGAON',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(76,76,'032692','TEJGAON IND. AREA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(77,77,'032693','TURAG',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(78,78,'032695','UTTARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(79,79,'032696','UTTAR KHAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(80,80,'032903','ALFADANGA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(81,81,'032910','BHANGA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(82,82,'032921','CHAR BHADRASAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(83,83,'032947','FARIDPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(84,84,'032956','MADHUKHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(85,85,'032984','SADARPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(86,86,'033330','GAZIPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(87,87,'033332','KALIAKAIR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(88,88,'033334','KALIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(89,89,'033336','KAPASIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(90,90,'033386','SREEPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(91,91,'033532','GOPALGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(92,92,'033543','KASHIANI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(93,93,'033551','KOTALIPARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(94,94,'033558','MUKSUDPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(95,95,'033591','TUNGIPARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(96,96,'033907','BAKSHIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(97,97,'033915','DEWANGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(98,98,'033929','ISLAMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(99,99,'033936','JAMALPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:00'),(100,100,'033958','MADARGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(101,101,'033961','MELANDAHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(102,102,'033985','SARISHABARI UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(103,103,'034802','AUSTAGRAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(104,104,'034806','BAJITPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(105,105,'034811','BHAIRAB',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(106,106,'034833','ITNA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(107,107,'034842','KARIMGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(108,108,'034845','KATIADI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(109,109,'034849','KISHOREGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(110,110,'034854','KULIAR CHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(111,111,'034859','MITHAMAIN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(112,112,'034876','NIKLI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(113,113,'034879','PAKUNDIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(114,114,'034892','TARAIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(115,115,'035440','KALKINI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(116,116,'035454','MADARIPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(117,117,'035480','RAJOIR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(118,118,'035487','SHIB CHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(119,119,'035610','DAULATPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(120,120,'035622','GHIOR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(121,121,'035628','HARIRAMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(122,122,'035646','MANIKGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(123,123,'035670','SATURIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(124,124,'035678','SHIBALAYA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(125,125,'035682','SINGAIR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(126,126,'035924','GAZARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(127,127,'035956','MUNSHIGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(128,128,'035974','SERAJDIKHAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(129,129,'035984','SREENAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(130,130,'035994','TONGIBARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(131,131,'036113','BHALUKA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(132,132,'036116','DHOBAURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(133,133,'036120','FULBARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(134,134,'036122','GAFFARGAON',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(135,135,'036123','GAURIPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(136,136,'036131','ISHWARGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(137,137,'036152','MYMENSINGH SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(138,138,'036165','MUKTAGACHHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(139,139,'036172','NANDAIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(140,140,'036181','PHULPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(141,141,'036194','TRISHAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(142,142,'036702','ARAIHAZAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(143,143,'036704','SONARGAON',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(144,144,'036706','BANDAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(145,145,'036768','RUPGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:01'),(146,146,'036807','BELABO',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(147,147,'036852','MANOHARDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(148,148,'036860','NARSINGDI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(149,149,'036863','PALASH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(150,150,'036864','ROYPURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(151,151,'036876','SHIBPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(152,152,'037204','ATPARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(153,153,'037209','BARHATTA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(154,154,'037218','DURGAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(155,155,'037238','KHALIAJURI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(156,156,'037240','KALMAKANDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(157,157,'037247','KENDUA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(158,158,'037256','MADAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(159,159,'037263','MOHANGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(160,160,'037274','NETROKONA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(161,161,'037283','PURBADHALA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(162,162,'038207','BALIAKANDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(163,163,'038229','GOALANDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(164,164,'038273','PANGSHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(165,165,'038276','RAJBARI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(166,166,'038625','DAMUDYA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(167,167,'038636','GOSAIRHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(168,168,'038665','NARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(169,169,'038669','SHARIATPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(170,170,'038694','ZANJIRA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(171,171,'038937','JHENAIGATI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(172,172,'038970','NALITABARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(173,173,'038988','SHERPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(174,174,'038990','SREEBARDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(175,175,'039309','BASAIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(176,176,'039319','BHUAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(177,177,'039323','DELDUAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(178,178,'039325','DHANBARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(179,179,'039328','GHATAIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(180,180,'039338','GOPALPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(181,181,'039347','KALIHATI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(182,182,'039357','MADHUPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(183,183,'039366','MIRZAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(184,184,'039376','NAGARPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(185,185,'039385','SAKHIPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(186,186,'039395','TANGAIL SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(187,187,'040108','BAGERHAT SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(188,188,'040114','CHITALMARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(189,189,'040134','FAKIRHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(190,190,'040138','KACHUA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(191,191,'040156','MOLLAHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(192,192,'040158','MONGLA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:02'),(193,193,'040160','MORRELGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(194,194,'040173','RAMPAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(195,195,'040177','SARANKHOLA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(196,196,'041807','ALAMDANGA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(197,197,'041823','CHUADANGA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(198,198,'041855','JIBAN NAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(199,199,'044104','ABHAYNAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(200,200,'044111','CHAUGACHHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(201,201,'044123','JHIKARGACHHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(202,202,'044138','KESHABPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(203,203,'044147','KOTWALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(204,204,'044161','MANIRAMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(205,205,'044190','SHARSHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(206,206,'044414','HARINAKUNDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(207,207,'044419','JHENAIDAH SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(208,208,'044433','KALIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(209,209,'044442','KOTCHANDPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(210,210,'044471','MAHESHPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(211,211,'044480','SHAILKUPA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(212,212,'044712','BATIAGHATA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(213,213,'044717','DACOPE',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(214,214,'044721','DAULATPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(215,215,'044730','DUMURIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(216,216,'044740','DIGHALIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(217,217,'044745','KHALISHPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(218,218,'044748','KHAN JAHAN ALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(219,219,'044751','KHULNA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(220,220,'044753','KOYRA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(221,221,'044764','PAIKGACHHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(222,222,'044769','PHULTALA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(223,223,'044775','RUPSA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(224,224,'044785','SONADANGA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(225,225,'044794','TEROKHADA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(226,226,'045015','BHERAMARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(227,227,'045039','DAULATPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(228,228,'045063','KHOKSA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(229,229,'045071','KUMARKHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(230,230,'045079','KUSHTIA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(231,231,'045094','MIRPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(232,232,'045557','MAGURA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(233,233,'045566','MOHAMMADPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(234,234,'045585','SHALIKHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(235,235,'045747','GANGNI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(236,236,'045760','MUJIB NAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:03'),(237,237,'045787','MEHERPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(238,238,'046528','KALIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(239,239,'046552','LOHAGARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(240,240,'046576','NARAIL SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(241,241,'048704','ASSASUNI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(242,242,'048725','DEBHATA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(243,243,'048743','KALAROA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(244,244,'048747','KALIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(245,245,'048782','SATKHIRA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(246,246,'048786','SHYAMNAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(247,247,'048790','TALA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(248,248,'051006','ADAMDIGHI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(249,249,'051020','BOGRA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(250,250,'051027','DHUNAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(251,251,'051033','DHUPCHANCHIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(252,252,'051040','GABTALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(253,253,'051054','KAHALOO',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(254,254,'051067','NANDIGRAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(255,255,'051081','SARIAKANDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(256,256,'051085','SHAJAHANPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(257,257,'051088','SHERPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(258,258,'051094','SHIBGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(259,259,'051095','SONATOLA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(260,260,'052710','BIRAMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(261,261,'052712','BIRGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(262,262,'052717','BIRAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(263,263,'052721','BOCHAGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(264,264,'052730','CHIRIRBANDAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(265,265,'052743','GHORAGHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(266,266,'052747','HAKIMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(267,267,'052756','KAHAROLE',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(268,268,'052760','KHANSAMA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(269,269,'052764','DINAJPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(270,270,'052769','NAWABGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(271,271,'052777','PARBATIPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(272,272,'053221','FULCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(273,273,'053224','GAIBANDHA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(274,274,'053230','GOBINDAGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(275,275,'053267','PALASHBARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(276,276,'053282','SADULLAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(277,277,'053288','SAGHATA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(278,278,'053291','SUNDARGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(279,279,'053813','AKKELPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(280,280,'053847','JOYPURHAT SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(281,281,'053858','KALAI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(282,282,'053861','KHETLAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(283,283,'054906','BHURUNGAMARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:04'),(284,284,'054908','CHAR RAJIBPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(285,285,'054909','CHILMARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(286,286,'054918','PHULBARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(287,287,'054952','KURIGRAM SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(288,288,'054961','NAGESHWARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(289,289,'054977','RAJARHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(290,290,'054979','RAUMARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(291,291,'054994','ULIPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(292,292,'055202','ADITMARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(293,293,'055233','HATIBANDHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(294,294,'055239','KALIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(295,295,'055255','LALMONIRHAT SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(296,296,'055270','PATGRAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(297,297,'056403','ATRAI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(298,298,'056406','BADALGACHHI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(299,299,'056428','DHAMOIRHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(300,300,'056447','MANDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(301,301,'056450','MAHADEBPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(302,302,'056460','NAOGAON SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(303,303,'056475','PATNITALA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(304,304,'056479','PORSHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(305,305,'056486','SAPAHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(306,306,'056909','BAGATIPARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(307,307,'056915','BARAIGRAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(308,308,'056941','GURUDASPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(309,309,'056944','LALPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(310,310,'056963','NATORE SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(311,311,'056991','SINGRA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(312,312,'057018','BHOLAHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(313,313,'057037','GOMASTAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(314,314,'057056','NACHOLE',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(315,315,'057066','CHAPAI NABABGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(316,316,'057088','SHIBGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(317,317,'057312','DIMLA UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(318,318,'057315','DOMAR UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(319,319,'057336','JALDHAKA UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(320,320,'057345','KISHOREGANJ UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(321,321,'057364','NILPHAMARI SADAR UPAZ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(322,322,'057385','SAIDPUR UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(323,323,'057616','BERA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(324,324,'057619','BHANGURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(325,325,'057622','CHATMOHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(326,326,'057633','FARIDPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(327,327,'057639','ISHWARDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(328,328,'057655','PABNA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:05'),(329,329,'057672','SANTHIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(330,330,'057683','SUJANAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(331,331,'057704','ATWARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(332,332,'057725','BODA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(333,333,'057734','DEBIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(334,334,'057773','PANCHAGARH SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(335,335,'057790','TENTULIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(336,336,'058110','BAGHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(337,337,'058112','BAGHMARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(338,338,'058122','BOALIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(339,339,'058125','CHARGHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(340,340,'058131','DURGAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(341,341,'058134','GODAGARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(342,342,'058140','MATIHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(343,343,'058153','MOHANPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(344,344,'058172','PABA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(345,345,'058182','PUTHIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(346,346,'058185','RAJPARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(347,347,'058190','SHAH MAKHDUM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(348,348,'058194','TANORE',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(349,349,'058503','BADARGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(350,350,'058527','GANGACHARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(351,351,'058549','RANGPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(352,352,'058558','MITHA PUKUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(353,353,'058573','PIRGACHHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(354,354,'058576','PIRGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(355,355,'058592','TARAGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(356,356,'058811','BELKUCHI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(357,357,'058827','CHAUHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(358,358,'058844','KAMARKHANDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(359,359,'058850','KAZIPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(360,360,'058861','ROYGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(361,361,'058867','SHAHJADPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(362,362,'058878','SIRAJGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(363,363,'058889','TARASH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(364,364,'058894','ULLAH PARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(365,365,'059408','BALIADANGI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(366,366,'059451','HARIPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(367,367,'059482','PIRGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(368,368,'059486','RANISANKAIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(369,369,'063602','AJMIRIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(370,370,'063605','BAHUBAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(371,371,'063611','BANIACHONG',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(372,372,'063626','CHUNARUGHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(373,373,'063644','HABIGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:06'),(374,374,'063671','MADHABPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(375,375,'063677','NABIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(376,376,'065814','BARLEKHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(377,377,'065835','JURI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(378,378,'065856','KAMALGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(379,379,'065865','KULAURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(380,380,'065874','MAULVIBAZAR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(381,381,'065880','RAJNAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(382,382,'065883','SREEMANGAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(383,383,'069018','BISHWAMBARPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(384,384,'069023','CHHATAK',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(385,385,'069027','DAKSHIN SUNAMGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(386,386,'069029','DERAI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(387,387,'069032','DHARAMPASHA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(388,388,'069033','DOWARABAZAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(389,389,'069047','JAGANNATHPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(390,390,'069086','SULLA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(391,391,'069089','SUNAMGANJ SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(392,392,'069092','TAHIRPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(393,393,'069108','BALAGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(394,394,'069120','BISHWANATH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(395,395,'069127','COMPANIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(396,396,'069131','DAKSHIN SURMA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(397,397,'069135','FENCHUGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(398,398,'069138','GOLAPGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(399,399,'069141','GOWAINGHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(400,400,'069153','JAINTIAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(401,401,'069159','KANAIGHAT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(402,402,'069162','SYLHET SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(403,403,'069194','ZAKIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(404,404,'033387','TONGI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(405,405,'028407','BAGHAICHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(406,406,'028421','BARKAL UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(407,407,'028425','KAWKHALI (BETBUNIA)',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(408,408,'028429','BELAI CHHARI  UPAZI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(409,409,'028436','KAPTAI  UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(410,410,'028447','JURAI CHHARI UPAZIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(411,411,'028458','LANGADU  UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(412,412,'028475','NANIARCHAR  UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(413,413,'028478','RAJASTHALI  UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(414,414,'028487','RANGAMATI SADAR  UP',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(415,415,'032602','ADABOR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(416,416,'032606','BIMAN BANDAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(417,417,'032608','CANTONMENT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(418,418,'032610','DAKSHINKHAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(419,419,'032612','DEMRA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(420,420,'032614','DHAMRAI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:07'),(421,421,'032616','DHANMONDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(422,422,'032618','DOHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(423,423,'032626','GULSHAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(424,424,'032628','HAZARIBAGH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(425,425,'032629','JATRABARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(426,426,'032630','KAFRUL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(427,427,'032634','KAMRANGIR CHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(428,428,'032636','KHILGAON',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(429,429,'032637','KHILKHET',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(430,430,'032638','KERANIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(431,431,'032640','KOTWALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(432,432,'032642','LALBAGH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(433,433,'032648','MIRPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(434,434,'032650','MOHAMMADPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(435,435,'032654','MOTIJHEEL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(436,436,'032662','NAWABGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(437,437,'032664','PALLABI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(438,438,'010409','AMTALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(439,439,'010419','BAMNA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(440,440,'010447','BETAGI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(441,441,'010485','PATHARGHATA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(442,442,'010602','AGAILJHARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(443,443,'010603','BABUGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(444,444,'010610','BANARI PARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(445,445,'010632','GAURNADI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(446,446,'010636','HIZLA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(447,447,'010651','BARISAL SADAR (KOTWALI)',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(448,448,'010662','MHENDIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(449,449,'010669','MULADI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(450,450,'010694','WAZIRPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(451,451,'010918','BHOLA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(452,452,'010921','BURHANUDDIN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(453,453,'010925','CHAR FASSON',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(454,454,'010929','DAULAT KHAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(455,455,'010954','LALMOHAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(456,456,'010965','MANPURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(457,457,'010991','TAZUMUDDIN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(458,458,'014240','JHALOKATI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(459,459,'014243','KANTHALIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(460,460,'014273','NALCHITY',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(461,461,'014284','RAJAPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(462,462,'017838','BAUPHAL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(463,463,'017855','DUMKI UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(464,464,'017857','GALACHIPA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(465,465,'017866','KALA PARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(466,466,'017876','MIRZAGANJ UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:08'),(467,467,'017895','PATUAKHALI SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(468,468,'017914','BHANDARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(469,469,'017947','KAWKHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(470,470,'017958','MATHBARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(471,471,'017976','NAZIRPUR UPAZILA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(472,472,'017980','PIROJPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(473,473,'017987','NESARABAD (SWARUPKATI)',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(474,474,'017990','ZIANAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(475,475,'020304','ALIKADAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(476,476,'020314','BANDARBAN SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(477,477,'020351','LAMA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(478,478,'020373','NAIKHONGCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(479,479,'020389','ROWANGCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(480,480,'020391','RUMA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(481,481,'020395','THANCHI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(482,482,'021202','AKHAURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(483,483,'021204','BANCHHARAMPUR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(484,484,'021213','BRAHMANBARIA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(485,485,'021233','ASHUGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(486,486,'021263','KASBA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(487,487,'021285','NABINAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(488,488,'021290','NASIRNAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(489,489,'021294','SARAIL',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(490,490,'021322','CHANDPUR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(491,491,'021345','FARIDGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(492,492,'021347','HAIM CHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(493,493,'021349','HAJIGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(494,494,'021358','KACHUA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(495,495,'021376','MATLAB DAKSHIN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(496,496,'021379','MATLAB UTTAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(497,497,'021395','SHAHRASTI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(498,498,'021504','ANOWARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(499,499,'021506','BAYEJID BOSTAMI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(500,500,'021508','BANSHKHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(501,501,'021510','BAKALIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(502,502,'021512','BOALKHALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:09'),(503,503,'021518','CHANDANAISH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(504,504,'021519','CHANDGAON',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(505,505,'021520','CHITTAGONG PORT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(506,506,'021528','DOUBLE MOORING',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(507,507,'021533','FATIKCHHARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(508,508,'021535','HALISHAHAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(509,509,'021537','HATHAZARI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(510,510,'021541','KOTWALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(511,511,'021543','KHULSHI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(512,512,'021547','LOHAGARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(513,513,'021553','MIRSHARAI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(514,514,'021555','PAHARTALI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(515,515,'021557','PANCHLAISH',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(516,516,'021561','PATIYA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(517,517,'021565','PATENGA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(518,518,'021570','RANGUNIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(519,519,'021574','RAOZAN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(520,520,'021578','SANDWIP',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(521,521,'021582','SATKANIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(522,522,'021586','SITAKUNDA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(523,523,'021909','BARURA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(524,524,'021915','BRAHMAN PARA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(525,525,'021918','BURICHANG',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(526,526,'021927','CHANDINA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(527,527,'021931','CHAUDDAGRAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(528,528,'021933','COMILLA SADAR DAKSHIN',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(529,529,'021936','DAUDKANDI',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(530,530,'021940','DEBIDWAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(531,531,'021954','HOMNA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(532,532,'021967','COMILLA ADARSHA SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(533,533,'021972','LAKSAM',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(534,534,'021974','MANOHARGANJ',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(535,535,'021975','MEGHNA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(536,536,'021981','MURADNAGAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(537,537,'021987','NANGALKOT',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(538,538,'021994','TITAS',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(539,539,'022216','CHAKARIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(540,540,'022224','COX\'S BAZAR SADAR',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10'),(541,541,'022245','KUTUBDIA',NULL,NULL,1,NULL,'2015-05-19 21:26:05',NULL,'2015-09-13 10:41:10');
/*!40000 ALTER TABLE `sa_police_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_post_offices`
--

DROP TABLE IF EXISTS `sa_post_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_post_offices` (
  `POST_OFFICE_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of sa_post_offices Table.',
  `THANA_ID` int(8) DEFAULT NULL COMMENT 'Foreign Key To THANA_ID Column Of sa_thanas Table.',
  `POST_OFFICE_ENAME` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Post Office Name In English.',
  `POST_CODE` smallint(5) DEFAULT NULL COMMENT 'Post Code.',
  `ORDER_SL` smallint(5) DEFAULT NULL COMMENT 'Ascending Serial No.',
  `UD_POFFICE_ID` int(8) DEFAULT NULL COMMENT 'User Define Post Office Id.',
  `THANA_NAME` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`POST_OFFICE_ID`),
  KEY `FK02_THANA_ID` (`THANA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1350 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_post_offices`
--

LOCK TABLES `sa_post_offices` WRITE;
/*!40000 ALTER TABLE `sa_post_offices` DISABLE KEYS */;
INSERT INTO `sa_post_offices` VALUES (1,154,'Susnng Durgapur',2420,NULL,2420,'Susung Durgapur',0,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(2,80,'Alfadanga',7870,NULL,7870,'Alfadanga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(3,142,'Araihazar',1450,NULL,1450,'Araihazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(4,142,'Gopaldi',1451,NULL,1451,'Araihazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(5,152,'Atpara',2470,NULL,2470,'Atpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(6,NULL,'Baidder Bazar',1440,NULL,1440,'Baidder Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(7,NULL,'Bara Nagar',1441,NULL,1441,'Baidder Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(8,NULL,'Barodi',1442,NULL,1442,'Baidder Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(9,104,'Bajitpur',2336,NULL,2336,'Bajitpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(10,104,'Laksmipur',2338,NULL,2338,'Bajitpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(11,104,'Sararchar',2337,NULL,2337,'Bajitpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:25'),(12,96,'Bakshigonj',2140,NULL,2140,'Bakshigonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(13,162,'Baliakandi',7730,NULL,7730,'Baliakandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(14,162,'Nalia',7731,NULL,7731,'Baliakandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(15,144,'Bandar',1410,NULL,1410,'Bandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(16,144,'BIDS',1413,NULL,1413,'Bandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(17,144,'D.C Mills',1411,NULL,1411,'Bandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(18,144,'Madanganj',1414,NULL,1414,'Bandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(19,144,'Nabiganj',1412,NULL,1412,'Bandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(20,NULL,'Bahadurpur',7932,NULL,7932,'Barhamganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(21,NULL,'Barhamganj',7930,NULL,7930,'Barhamganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(22,NULL,'Nilaksmibandar',7931,NULL,7931,'Barhamganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(23,NULL,'Umedpur',7933,NULL,7933,'Barhamganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(24,153,'Barhatta',2440,NULL,2440,'Barhatta',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(25,175,'Basail',1920,NULL,1920,'Basail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(26,146,'Belabo',1640,NULL,1640,'Belabo',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(27,105,'Bhairab',2350,NULL,2350,'Bhairob',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(28,131,'Bhaluka',2240,NULL,2240,'Bhaluka',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(29,81,'Bhanga',7830,NULL,7830,'Bhanga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(30,32,'Bhedorganj',8030,NULL,8030,'Bhedorganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(31,176,'Bhuapur',1960,NULL,1960,'Bhuapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(32,38,'Boalmari',7860,NULL,7860,'Boalmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(33,38,'Rupatpat',7861,NULL,7861,'Boalmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(34,82,'Charbadrashan',7810,NULL,7810,'Charbhadrasan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(35,166,'Damudhya',8040,NULL,8040,'Damudhya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(36,177,'Delduar',1910,NULL,1910,'Delduar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(37,177,'Elasin',1913,NULL,1913,'Delduar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(38,177,'Hinga Nagar',1914,NULL,1914,'Delduar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(39,177,'Jangalia',1911,NULL,1911,'Delduar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(40,177,'Lowhati',1915,NULL,1915,'Delduar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(41,177,'Patharail',1912,NULL,1912,'Delduar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(42,419,'Demra',1360,NULL,1360,'Demra',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(43,419,'Matuail',1362,NULL,1362,'Demra',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(44,419,'Sarulia',1361,NULL,1361,'Demra',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(45,97,'Dewangonj',2030,NULL,2030,'Dewangonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(46,97,'Dewangonj S. Mills',2031,NULL,2031,'Dewangonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(47,417,'Dhaka CantonmentTSO',1206,NULL,1206,'Dhaka Cantt.',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(48,420,'Dhamrai',1350,NULL,1350,'Dhamrai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(49,420,'Kamalpur',1351,NULL,1351,'Dhamrai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(50,421,'Jigatala TSO',1209,NULL,1209,'Dhanmondi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(51,387,'Dharampasha',2450,NULL,2450,'Dharmapasha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(52,132,'Dhobaura',2416,NULL,2416,'Dhobaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(53,132,'Sakoai',2417,NULL,2417,'Dhobaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(54,119,'Doulatpur',1860,NULL,1860,'Doulatpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(55,83,'Ambikapur',7802,NULL,7802,'Faridpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(56,83,'Baitulaman Politecni',7803,NULL,7803,'Faridpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(57,83,'Faridpursadar',7800,NULL,7800,'Faridpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:26'),(58,83,'Kanaipur',7801,NULL,7801,'Faridpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(59,NULL,'Fatulla Bazar',1421,NULL,1421,'Fatullah',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(60,NULL,'Fatullah',1420,NULL,1420,'Fatullah',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(61,133,'Fulbaria',2216,NULL,2216,'Fulbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(62,134,'Duttarbazar',2234,NULL,2234,'Gaforgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(63,134,'Gaforgaon',2230,NULL,2230,'Gaforgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(64,134,'Kandipara',2233,NULL,2233,'Gaforgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(65,134,'Shibganj',2231,NULL,2231,'Gaforgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(66,134,'Usti',2232,NULL,2232,'Gaforgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(67,126,'Gajaria',1510,NULL,1510,'Gajaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(68,126,'Hossendi',1511,NULL,1511,'Gajaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(69,126,'Rasulpur',1512,NULL,1512,'Gajaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(70,86,'B.O.F',1703,NULL,1703,'Gazipur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(71,86,'B.R.R',1701,NULL,1701,'Gazipur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(72,86,'Chandna',1702,NULL,1702,'Gazipur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(73,86,'Gazipur Sadar',1700,NULL,1700,'Gazipur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(74,86,'National University',1704,NULL,1704,'Gazipur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(75,179,'D. Pakutia',1982,NULL,1982,'Ghatail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(76,179,'Dhalapara',1983,NULL,1983,'Ghatail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(77,179,'Ghatial',1980,NULL,1980,'Ghatail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(78,179,'Lohani',1984,NULL,1984,'Ghatail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(79,179,'Zahidganj',1981,NULL,1981,'Ghatail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(80,120,'Gheor',1840,NULL,1840,'Gheor',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(81,91,'Barfa',8102,NULL,8102,'Gopalganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(82,91,'Chandradighalia',8013,NULL,8013,'Gopalganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(83,91,'Gopalganj Sadar',8100,NULL,8100,'Gopalganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(84,91,'Ulpur',8101,NULL,8101,'Gopalganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(85,180,'Gopalpur',1990,NULL,1990,'Gopalpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(86,180,'Hemnagar',1992,NULL,1992,'Gopalpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(87,180,'Jhowail',1991,NULL,1991,'Gopalpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(88,167,'Gosairhat',8050,NULL,8050,'Gosairhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(89,135,'Gouripur',2270,NULL,2270,'Gouripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(90,135,'Ramgopalpur',2271,NULL,2271,'Gouripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(91,423,'Banani TSO',1213,NULL,1213,'Gulshan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(92,423,'Gulshan Model Town',1212,NULL,1212,'Gulshan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(93,39,'Dhara',2261,NULL,2261,'Haluaghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(94,39,'Haluaghat',2260,NULL,2260,'Haluaghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(95,39,'Munshirhat',2262,NULL,2262,'Haluaghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(96,17,'Hossenpur',2320,NULL,2320,'Hossenpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(97,98,'Durmoot',2021,NULL,2021,'Islampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(98,98,'Gilabari',2022,NULL,2022,'Islampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(99,98,'Islampur',2020,NULL,2020,'Islampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:27'),(100,136,'Atharabari',2282,NULL,2282,'Isshwargonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(101,136,'Isshwargonj',2280,NULL,2280,'Isshwargonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(102,136,'Sohagi',2281,NULL,2281,'Isshwargonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(103,106,'Itna',2390,NULL,2390,'Itna',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(104,NULL,'Jajira',8010,NULL,8010,'Jajira',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(105,99,'Jamalpur',2000,NULL,2000,'Jamalpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(106,99,'Nandina',2001,NULL,2001,'Jamalpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(107,99,'Narundi',2002,NULL,2002,'Jamalpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(108,425,'Dhania TSO',1232,NULL,1232,'Jatrabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(109,171,'Jhinaigati',2120,NULL,2120,'Jhinaigati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(110,NULL,'Joypara',1330,NULL,1330,'Joypara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(111,NULL,'Narisha',1332,NULL,1332,'Joypara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(112,NULL,'Palamganj',1331,NULL,1331,'Joypara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(113,87,'Kaliakaar',1750,NULL,1750,'Kaliakaar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(114,87,'Safipur',1751,NULL,1751,'Kaliakaar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(115,208,'Kaliganj',1720,NULL,1720,'Kaliganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(116,208,'Pubail',1721,NULL,1721,'Kaliganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(117,208,'Santanpara',1722,NULL,1722,'Kaliganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(118,208,'Vaoal Jamalpur',1723,NULL,1723,'Kaliganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(119,181,'Ballabazar',1973,NULL,1973,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(120,181,'Elinga',1974,NULL,1974,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(121,181,'Kalihati',1970,NULL,1970,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(122,181,'Nagarbari',1977,NULL,1977,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(123,181,'Nagarbari SO',1976,NULL,1976,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(124,181,'Nagbari',1972,NULL,1972,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(125,181,'Palisha',1975,NULL,1975,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(126,181,'Rajafair',1971,NULL,1971,'Kalihati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(127,115,'Kalkini',7920,NULL,7920,'kalkini',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(128,115,'Sahabrampur',7921,NULL,7921,'kalkini',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(129,156,'Kalmakanda',2430,NULL,2430,'Kalmakanda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(130,89,'kapashia',1730,NULL,1730,'Kapashia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(131,107,'Karimganj',2310,NULL,2310,'Karimganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(132,92,'Jonapur',8133,NULL,8133,'Kashiani',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(133,92,'Kashiani',8130,NULL,8130,'Kashiani',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(134,92,'Ramdia College',8131,NULL,8131,'Kashiani',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(135,92,'Ratoil',8132,NULL,8132,'Kashiani',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(136,NULL,'Kashkawlia',1930,NULL,1930,'Kashkaolia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(137,108,'Gochhihata',2331,NULL,2331,'Katiadi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(138,108,'Katiadi',2330,NULL,2330,'Katiadi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(139,157,'Kendua',2480,NULL,2480,'Kendua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(140,430,'Ati',1312,NULL,1312,'Keraniganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(141,430,'Dhaka Jute Mills',1311,NULL,1311,'Keraniganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(142,430,'Kalatia',1313,NULL,1313,'Keraniganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(143,430,'Keraniganj',1310,NULL,1310,'Keraniganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(144,155,'Khaliajhri',2460,NULL,2460,'Khaliajuri',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(145,155,'Shaldigha',2462,NULL,2462,'Khaliajuri',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(146,428,'KhilgaonTSO',1219,NULL,1219,'Khilgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(147,429,'KhilkhetTSO',1229,NULL,1229,'Khilkhet',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(148,109,'Kishoreganj S.Mills',2301,NULL,2301,'Kishoreganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:28'),(149,109,'Kishoreganj Sadar',2300,NULL,2300,'Kishoreganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(150,109,'Maizhati',2302,NULL,2302,'Kishoreganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(151,109,'Nilganj',2303,NULL,2303,'Kishoreganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(152,93,'Kotalipara',8110,NULL,8110,'Kotalipara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(153,110,'Chhoysuti',2341,NULL,2341,'Kuliarchar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(154,110,'Kuliarchar',2340,NULL,2340,'Kuliarchar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(155,432,'Posta TSO',1211,NULL,1211,'Lalbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(156,NULL,'Jhitka',1831,NULL,1831,'Lechhraganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(157,NULL,'Lechhraganj',1830,NULL,1830,'Lechhraganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(158,NULL,'Gouragonj',1334,NULL,1334,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(159,NULL,'Gouragonj',1534,NULL,1534,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(160,NULL,'Haldia SO',1532,NULL,1532,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(161,NULL,'Haridia',1333,NULL,1333,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(162,NULL,'Haridia DESO',1533,NULL,1533,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(163,NULL,'Korhati',1531,NULL,1531,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(164,NULL,'Lohajang',1530,NULL,1530,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(165,NULL,'Madini Mandal',1335,NULL,1335,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(166,NULL,'Medini Mandal EDSO',1535,NULL,1535,'Lohajong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(167,158,'Madan',2490,NULL,2490,'Madan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(168,116,'Charmugria',7901,NULL,7901,'Madaripur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(169,116,'Habiganj',7903,NULL,7903,'Madaripur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(170,116,'Kulpaddi',7902,NULL,7902,'Madaripur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(171,116,'Madaripur Sadar',7900,NULL,7900,'Madaripur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(172,116,'Mustafapur',7904,NULL,7904,'Madaripur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(173,182,'Dhobari',1997,NULL,1997,'Madhupur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(174,182,'Madhupur',1996,NULL,1996,'Madhupur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(175,84,'Kamarkali',7851,NULL,7851,'Madukhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(176,84,'Madukhali',7850,NULL,7850,'Madukhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(177,94,'Batkiamari',8141,NULL,8141,'Maksudpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(178,94,'Khandarpara',8142,NULL,8142,'Maksudpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(179,94,'Maksudpur',8140,NULL,8140,'Maksudpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(180,101,'Jamalpur',2011,NULL,2011,'Malandah',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(181,101,'Mahmoodpur',2013,NULL,2013,'Malandah',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(182,101,'Malancha',2012,NULL,2012,'Malandah',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(183,101,'Malandah',2010,NULL,2010,'Malandah',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(184,122,'Barangail',1804,NULL,1804,'Manikganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(185,122,'Gorpara',1802,NULL,1802,'Manikganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(186,122,'Mahadebpur',1803,NULL,1803,'Manikganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(187,122,'Manikganj Bazar',1801,NULL,1801,'Manikganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(188,122,'Manikganj Sadar',1800,NULL,1800,'Manikganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(189,NULL,'Balijhuri',2041,NULL,2041,'Mathargonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(190,NULL,'Mathargonj',2040,NULL,2040,'Mathargonj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(191,231,'Mirpur TSO',1216,NULL,1216,'Mirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(192,183,'Gorai',1941,NULL,1941,'Mirzapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(193,183,'Jarmuki',1944,NULL,1944,'Mirzapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(194,183,'M.C. College',1942,NULL,1942,'Mirzapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(195,183,'Mirzapur',1940,NULL,1940,'Mirzapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(196,183,'Mohera',1945,NULL,1945,'Mirzapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(197,183,'Warri paikpara',1943,NULL,1943,'Mirzapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:29'),(198,111,'Abdullahpur',2371,NULL,2371,'Mithamoin',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(199,111,'MIthamoin',2370,NULL,2370,'Mithamoin',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(200,NULL,'Moddoynagar',2456,NULL,2456,'Moddhynagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(201,233,'Mohammadpur Housing',1207,NULL,1207,'Mohammadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(202,233,'Sangsad BhabanTSO',1225,NULL,1225,'Mohammadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(203,159,'Mohanganj',2446,NULL,2446,'Mohanganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(204,NULL,'Ershad Nagar',1712,NULL,1712,'Monnunagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(205,NULL,'Monnunagar',1710,NULL,1710,'Monnunagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(206,NULL,'Nishat Nagar',1711,NULL,1711,'Monnunagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(207,147,'Hatirdia',1651,NULL,1651,'Monohordi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(208,147,'Katabaria',1652,NULL,1652,'Monohordi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(209,147,'Monohordi',1650,NULL,1650,'Monohordi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(210,435,'BangabhabanTSO',1222,NULL,1222,'Motijheel',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(211,435,'DilkushaTSO',1223,NULL,1223,'Motijheel',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(212,138,'Muktagachha',2210,NULL,2210,'Muktagachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(213,127,'Kathakhali',1503,NULL,1503,'Munshiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(214,127,'Mirkadim',1502,NULL,1502,'Munshiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(215,127,'Munshiganj Sadar',1500,NULL,1500,'Munshiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(216,127,'Rikabibazar',1501,NULL,1501,'Munshiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(217,137,'Agriculture Universi',2202,NULL,2202,'Mymensingh Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(218,137,'Biddyaganj',2204,NULL,2204,'Mymensingh Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(219,137,'Kawatkhali',2201,NULL,2201,'Mymensingh Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(220,137,'Mymensingh Sadar',2200,NULL,2200,'Mymensingh Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(221,137,'Pearpur',2205,NULL,2205,'Mymensingh Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(222,137,'Shombhuganj',2203,NULL,2203,'Mymensingh Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(223,16,'Nagarkanda',7840,NULL,7840,'Nagarkanda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(224,16,'Talma',7841,NULL,7841,'Nagarkanda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(225,184,'Dhuburia',1937,NULL,1937,'Nagarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(226,184,'Nagarpur',1936,NULL,1936,'Nagarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(227,184,'Salimabad',1938,NULL,1938,'Nagarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(228,20,'Gonopaddi',2151,NULL,2151,'Nakla',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(229,20,'Nakla',2150,NULL,2150,'Nakla',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(230,172,'Hatibandha',2111,NULL,2111,'Nalitabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(231,172,'Nalitabari',2110,NULL,2110,'Nalitabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(232,139,'Gangail',2291,NULL,2291,'Nandail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(233,139,'Nandail',2290,NULL,2290,'Nandail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(234,19,'Narayanganj Sadar',1400,NULL,1400,'Narayanganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(235,168,'Bhozeshwar',8021,NULL,8021,'Naria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(236,168,'Gharisar',8022,NULL,8022,'Naria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(237,168,'Kartikpur',8024,NULL,8024,'Naria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(238,168,'Naria',8020,NULL,8020,'Naria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(239,168,'Upshi',8023,NULL,8023,'Naria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:30'),(240,148,'Karimpur',1605,NULL,1605,'Narshingdi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(241,148,'Madhabdi',1604,NULL,1604,'Narshingdi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(242,148,'Narshingdi College',1602,NULL,1602,'Narshingdi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(243,148,'Narshingdi Sadar',1600,NULL,1600,'Narshingdi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(244,148,'Panchdona',1603,NULL,1603,'Narshingdi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(245,148,'UMC Jute Mills',1601,NULL,1601,'Narshingdi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(246,436,'Agla',1323,NULL,1323,'Nawabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(247,436,'Churain',1325,NULL,1325,'Nawabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(248,436,'Daudpur',1322,NULL,1322,'Nawabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(249,436,'Hasnabad',1321,NULL,1321,'Nawabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(250,436,'Khalpar',1324,NULL,1324,'Nawabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(251,436,'Nawabganj',1320,NULL,1320,'Nawabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(252,160,'Baikherhati',2401,NULL,2401,'Netrakona Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(253,160,'Netrakona Sadar',2400,NULL,2400,'Netrakona Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(254,43,'New Market TSO',1205,NULL,1205,'New market',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(255,112,'Nikli',2360,NULL,2360,'Nikli',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(256,103,'Ostagram',2380,NULL,2380,'Ostagram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(257,113,'Pakundia',2326,NULL,2326,'Pakundia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(258,149,'Char Sindhur',1612,NULL,1612,'Palash',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(259,149,'Ghorashal',1613,NULL,1613,'Palash',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(260,149,'Ghorashal Urea Facto',1611,NULL,1611,'Palash',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(261,149,'Palash',1610,NULL,1610,'Palash',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(262,42,'Dhaka GPO',1000,NULL,1000,'Palton',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(263,164,'Mrigibazar',7723,NULL,7723,'Pangsha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(264,164,'Pangsha',7720,NULL,7720,'Pangsha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(265,164,'Ramkol',7721,NULL,7721,'Pangsha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(266,164,'Ratandia',7722,NULL,7722,'Pangsha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(267,140,'Beltia',2251,NULL,2251,'Phulpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(268,140,'Phulpur',2250,NULL,2250,'Phulpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(269,140,'Tarakanda',2252,NULL,2252,'Phulpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(270,161,'Jaria Jhanjhail',2412,NULL,2412,'Purbadhola',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(271,161,'Purbadhola',2410,NULL,2410,'Purbadhola',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(272,161,'Shamgonj',2411,NULL,2411,'Purbadhola',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(273,165,'Goalanda',7710,NULL,7710,'Rajbari Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(274,165,'Khankhanapur',7711,NULL,7711,'Rajbari Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(275,165,'Rajbari Sadar',7700,NULL,7700,'Rajbari Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(276,117,'Khalia',7911,NULL,7911,'Rajoir',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(277,117,'Rajoir',7910,NULL,7910,'Rajoir',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(278,68,'Shantinagr TSO',1217,NULL,1217,'Ramna',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(279,150,'Bazar Hasnabad',1631,NULL,1631,'Raypura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(280,150,'Radhaganj bazar',1632,NULL,1632,'Raypura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(281,150,'Raypura',1630,NULL,1630,'Raypura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(282,145,'Bhulta',1462,NULL,1462,'Rupganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(283,145,'Kanchan',1461,NULL,1461,'Rupganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(284,145,'Murapara',1464,NULL,1464,'Rupganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(285,145,'Nagri',1463,NULL,1463,'Rupganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(286,145,'Rupganj',1460,NULL,1460,'Rupganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(287,69,'Basabo TSO',1214,NULL,1214,'Sabujbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(288,85,'Bishwa jaker Manjil',7822,NULL,7822,'Sadarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(289,85,'Hat Krishapur',7821,NULL,7821,'Sadarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:31'),(290,85,'Sadarpur',7820,NULL,7820,'Sadarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(291,185,'Kochua',1951,NULL,1951,'Sakhipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(292,185,'Sakhipur',1950,NULL,1950,'Sakhipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(293,123,'Baliati',1811,NULL,1811,'Saturia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(294,123,'Saturia',1810,NULL,1810,'Saturia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(295,70,'Amin Bazar',1348,NULL,1348,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(296,70,'Dairy Farm',1341,NULL,1341,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(297,70,'EPZ',1349,NULL,1349,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(298,70,'Jahangirnagar Univer',1342,NULL,1342,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(299,70,'Kashem Cotton Mills',1346,NULL,1346,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(300,70,'Rajphulbaria',1347,NULL,1347,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(301,70,'Savar',1340,NULL,1340,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(302,70,'Savar Canttonment',1344,NULL,1344,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(303,70,'Saver P.A.T.C',1343,NULL,1343,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(304,70,'Shimulia',1345,NULL,1345,'Savar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(305,169,'Angaria',8001,NULL,8001,'Shariatpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(306,169,'Chikandi',8002,NULL,8002,'Shariatpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(307,169,'Shariatpur Sadar',8000,NULL,8000,'Shariatpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(308,173,'Sherpur Shadar',2100,NULL,2100,'Sherpur Shadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(309,124,'Aricha',1851,NULL,1851,'Shibloya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(310,124,'Shibaloy',1850,NULL,1850,'Shibloya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(311,124,'Tewta',1852,NULL,1852,'Shibloya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(312,124,'Uthli',1853,NULL,1853,'Shibloya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(313,151,'Shibpur',1620,NULL,1620,'Shibpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(314,102,'Bausee',2052,NULL,2052,'Shorishabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(315,102,'Gunerbari',2051,NULL,2051,'Shorishabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(316,102,'Jagannath Ghat',2053,NULL,2053,'Shorishabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(317,102,'Jamuna Sar Karkhana',2055,NULL,2055,'Shorishabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(318,102,'Pingna',2054,NULL,2054,'Shorishabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(319,102,'Shorishabari',2050,NULL,2050,'Shorishabari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(320,NULL,'Shriangan',7804,NULL,7804,'Shriangan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(321,174,'Shribardi',2130,NULL,2130,'Shribardi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(322,NULL,'Adamjeenagar',1431,NULL,1431,'Siddirganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(323,NULL,'LN Mills',1432,NULL,1432,'Siddirganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(324,NULL,'Siddirganj',1430,NULL,1430,'Siddirganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:32'),(325,125,'Baira',1821,NULL,1821,'Singari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(326,125,'joymantop',1822,NULL,1822,'Singari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(327,125,'Singair',1820,NULL,1820,'Singari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(328,128,'Ichapur',1542,NULL,1542,'Sirajdikhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(329,128,'Kola',1541,NULL,1541,'Sirajdikhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(330,128,'Malkha Nagar',1543,NULL,1543,'Sirajdikhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(331,128,'Shekher Nagar',1544,NULL,1544,'Sirajdikhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(332,128,'Sirajdikhan',1540,NULL,1540,'Sirajdikhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(333,33,'Barmi',1743,NULL,1743,'Sreepur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(334,33,'Bashamur',1747,NULL,1747,'Sreepur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(335,33,'Boubi',1748,NULL,1748,'Sreepur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(336,33,'Kawraid',1745,NULL,1745,'Sreepur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(337,33,'Satkhamair',1744,NULL,1744,'Sreepur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(338,33,'Sreepur',1740,NULL,1740,'Sreepur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(339,129,'Baghra',1557,NULL,1557,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(340,129,'Barikhal',1551,NULL,1551,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(341,129,'Bhaggyakul',1558,NULL,1558,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(342,129,'Hashara',1553,NULL,1553,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(343,129,'Kolapara',1554,NULL,1554,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(344,129,'Kumarbhog',1555,NULL,1555,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(345,129,'Mazpara',1552,NULL,1552,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(346,129,'Srinagar',1550,NULL,1550,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(347,129,'Vaggyakul SO',1556,NULL,1556,'Srinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(348,257,'Rajendrapur',1741,NULL,1741,'Sripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(349,257,'Rajendrapur Canttome',1742,NULL,1742,'Sripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(350,74,'Dhaka Sadar HO',1100,NULL,1100,'Sutrapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(351,74,'Gendaria TSO',1204,NULL,1204,'Sutrapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(352,74,'Wari TSO',1203,NULL,1203,'Sutrapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(353,186,'Kagmari',1901,NULL,1901,'Tangail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(354,186,'Korotia',1903,NULL,1903,'Tangail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(355,186,'Purabari',1904,NULL,1904,'Tangail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(356,186,'Santosh',1902,NULL,1902,'Tangail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(357,186,'Tangail Sadar',1900,NULL,1900,'Tangail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(358,130,'Bajrajugini',1523,NULL,1523,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(359,130,'Baligao',1522,NULL,1522,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(360,130,'Betkahat',1521,NULL,1521,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(361,130,'Dighirpar',1525,NULL,1525,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(362,130,'Hasail',1524,NULL,1524,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(363,130,'Pura',1527,NULL,1527,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(364,130,'Pura EDSO',1526,NULL,1526,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(365,130,'Tangibari',1520,NULL,1520,'Tangibari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(366,114,'Tarial',2316,NULL,2316,'Tarial',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(367,75,'Tejgaon TSO',1215,NULL,1215,'Tejgaon',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(368,75,'Dhaka Politechnic',1208,NULL,1208,'Tejgaon Industrial Area',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(369,141,'Ahmadbad',2221,NULL,2221,'Trishal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(370,141,'Dhala',2223,NULL,2223,'Trishal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(371,141,'Ram Amritaganj',2222,NULL,2222,'Trishal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(372,141,'Trishal',2220,NULL,2220,'Trishal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(373,95,'Patgati',8121,NULL,8121,'Tungipara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(374,95,'Tungipara',8120,NULL,8120,'Tungipara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(375,78,'Uttara Model TwonTSO',1230,NULL,1230,'Uttara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(376,482,'Akhaura',3450,NULL,3450,'Akhaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:33'),(377,482,'Azampur',3451,NULL,3451,'Akhaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(378,482,'Gangasagar',3452,NULL,3452,'Akhaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(379,475,'Alikadam',4650,NULL,4650,'Alikadam',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(380,498,'Anowara',4376,NULL,4376,'Anawara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(381,498,'Battali',4378,NULL,4378,'Anawara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(382,498,'Paroikora',4377,NULL,4377,'Anawara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(383,483,'Banchharampur',3420,NULL,3420,'Banchharampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(384,476,'Bandarban Sadar',4600,NULL,4600,'Bandarban Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(385,406,'Barakal',4570,NULL,4570,'Barakal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(386,523,'Barura',3560,NULL,3560,'Barura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(387,523,'Murdafarganj',3562,NULL,3562,'Barura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(388,523,'Poyalgachha',3561,NULL,3561,'Barura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(389,NULL,'Basur Hat',3850,NULL,3850,'Basurhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(390,NULL,'Charhajari',3851,NULL,3851,'Basurhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(391,61,'Alaiarpur',3831,NULL,3831,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(392,61,'Amisha Para',3847,NULL,3847,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(393,61,'Banglabazar',3822,NULL,3822,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(394,61,'Bazra',3824,NULL,3824,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(395,61,'Begumganj',3820,NULL,3820,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(396,61,'Bhabani Jibanpur',3837,NULL,3837,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(397,61,'Choumohani',3821,NULL,3821,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(398,61,'Dauti',3843,NULL,3843,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(399,61,'Durgapur',3848,NULL,3848,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(400,61,'Gopalpur',3828,NULL,3828,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(401,61,'Jamidar Hat',3825,NULL,3825,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(403,61,'Joynarayanpur',3829,NULL,3829,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(404,61,'Khalafat Bazar',3833,NULL,3833,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(405,61,'Khalishpur',3842,NULL,3842,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(406,61,'Maheshganj',3838,NULL,3838,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(407,61,'Mir Owarishpur',3823,NULL,3823,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(408,61,'Nadona',3839,NULL,3839,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(409,61,'Nandiapara',3841,NULL,3841,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(410,61,'Oachhekpur',3835,NULL,3835,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(411,61,'Rajganj',3834,NULL,3834,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(412,61,'Sonaimuri',3827,NULL,3827,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(413,61,'Tangirpar',3832,NULL,3832,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(414,61,'Thanar Hat',3845,NULL,3845,'Begumganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(415,NULL,'Bilaichhari',4550,NULL,4550,'Bilaichhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(416,502,'Boalkhali',4366,NULL,4366,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(417,502,'Charandwip',4369,NULL,4369,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(418,502,'Iqbal Park',4365,NULL,4365,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(419,502,'Kadurkhal',4368,NULL,4368,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(420,502,'Kanungopara',4363,NULL,4363,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(421,502,'Sakpura',4367,NULL,4367,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(422,502,'Saroatoli',4364,NULL,4364,'Boalkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:34'),(423,484,'Ashuganj',3402,NULL,3402,'Brahamanbaria Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(424,484,'Ashuganj Share',3403,NULL,3403,'Brahamanbaria Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(425,484,'Brahamanbaria Sadar',3400,NULL,3400,'Brahamanbaria Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(426,484,'Poun',3404,NULL,3404,'Brahamanbaria Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(427,484,'Talshahar',3401,NULL,3401,'Brahamanbaria Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(428,524,'Brahmanpara',3526,NULL,3526,'Brahmanpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(429,525,'Burichang',3520,NULL,3520,'Burichang',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(430,525,'Maynamoti bazar',3521,NULL,3521,'Burichang',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(431,526,'Chandia',3510,NULL,3510,'Chandina',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(432,526,'Madhaiabazar',3511,NULL,3511,'Chandina',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(433,490,'Baburhat',3602,NULL,3602,'Chandpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(434,490,'Chandpur Sadar',3600,NULL,3600,'Chandpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(435,490,'Puranbazar',3601,NULL,3601,'Chandpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(436,490,'Sahatali',3603,NULL,3603,'Chandpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(437,NULL,'Char Alexgander',3730,NULL,3730,'Char Alexgander',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(438,NULL,'Hajirghat',3731,NULL,3731,'Char Alexgander',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(439,NULL,'Ramgatirhat',3732,NULL,3732,'Char Alexgander',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(440,62,'Bansa Bazar',3879,NULL,3879,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(441,62,'Bodalcourt',3873,NULL,3873,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(442,62,'Chatkhil',3870,NULL,3870,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(443,62,'Dosh Gharia',3878,NULL,3878,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(444,62,'Karihati',3877,NULL,3877,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(445,62,'Khilpara',3872,NULL,3872,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(446,62,'Palla',3871,NULL,3871,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(447,62,'Rezzakpur',3874,NULL,3874,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(448,62,'Sahapur',3881,NULL,3881,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(449,62,'Sampara',3882,NULL,3882,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(450,62,'Shingbahura',3883,NULL,3883,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(451,62,'Solla',3875,NULL,3875,'Chatkhil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(452,6,'Chhagalnaia',3910,NULL,3910,'Chhagalnaia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(453,6,'Daraga Hat',3912,NULL,3912,'Chhagalnaia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(454,6,'Maharajganj',3911,NULL,3911,'Chhagalnaia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(455,6,'Puabashimulia',3913,NULL,3913,'Chhagalnaia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(456,NULL,'Badarkali',4742,NULL,4742,'Chiringga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(457,NULL,'Chiringga',4740,NULL,4740,'Chiringga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(458,NULL,'Chiringga S.O',4741,NULL,4741,'Chiringga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(459,NULL,'Malumghat',4743,NULL,4743,'Chiringga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:35'),(460,505,'Al- Amin Baria Madra',4221,NULL,4221,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(461,505,'Amin Jute Mills',4211,NULL,4211,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(462,505,'Anandabazar',4215,NULL,4215,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(463,505,'Bayezid Bostami',4210,NULL,4210,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(464,505,'Chandgaon',4212,NULL,4212,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(465,505,'Chawkbazar',4203,NULL,4203,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(466,505,'Chitt. Cantonment',4220,NULL,4220,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(467,505,'Chitt. Customs Acca',4219,NULL,4219,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(468,505,'Chitt. Politechnic In',4209,NULL,4209,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(469,505,'Chitt. Sailers Colon',4218,NULL,4218,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(470,505,'Chittagong Airport',4205,NULL,4205,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(471,505,'Chittagong Bandar',4100,NULL,4100,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(472,505,'Chittagong GPO',4000,NULL,4000,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(473,505,'Export Processing',4223,NULL,4223,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(474,505,'Firozshah',4207,NULL,4207,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(475,505,'Halishahar',4216,NULL,4216,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(476,505,'Halishshar',4225,NULL,4225,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(477,505,'Jalalabad',4214,NULL,4214,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(478,505,'Jaldia Merine Accade',4206,NULL,4206,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(479,505,'Middle Patenga',4222,NULL,4222,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(480,505,'Mohard',4208,NULL,4208,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(481,505,'North Halishahar',4226,NULL,4226,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(482,505,'North Katuli',4217,NULL,4217,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(483,505,'Pahartoli',4202,NULL,4202,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(484,505,'Patenga',4204,NULL,4204,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(485,505,'Rampura TSO',4224,NULL,4224,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(486,505,'Wazedia',4213,NULL,4213,'Chittagong Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(487,527,'Batisa',3551,NULL,3551,'Chouddagram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(488,527,'Chiora',3552,NULL,3552,'Chouddagram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(489,527,'Chouddagram',3550,NULL,3550,'Chouddagram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(490,528,'Comilla Contoment',3501,NULL,3501,'Comilla Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(491,528,'Comilla Sadar',3500,NULL,3500,'Comilla Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(492,528,'Courtbari',3503,NULL,3503,'Comilla Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(493,528,'Halimanagar',3502,NULL,3502,'Comilla Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(494,528,'Suaganj',3504,NULL,3504,'Comilla Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(495,540,'Coxs Bazar Sadar',4700,NULL,4700,'Coxs Bazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(496,540,'Eidga',4702,NULL,4702,'Coxs Bazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(497,540,'Zhilanja',4701,NULL,4701,'Coxs Bazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(498,7,'Chhilonia',3922,NULL,3922,'Dagonbhuia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(499,7,'Dagondhuia',3920,NULL,3920,'Dagonbhuia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(500,7,'Dudmukha',3921,NULL,3921,'Dagonbhuia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(501,7,'Rajapur',3923,NULL,3923,'Dagonbhuia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(502,529,'Dashpara',3518,NULL,3518,'Daudkandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:36'),(503,529,'Daudkandi',3516,NULL,3516,'Daudkandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:36'),(504,529,'Eliotganj',3519,NULL,3519,'Daudkandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:36'),(505,529,'Gouripur',3517,NULL,3517,'Daudkandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:36'),(506,530,'Barashalghar',3532,NULL,3532,'Davidhar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(507,530,'Davidhar',3530,NULL,3530,'Davidhar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(508,530,'Dhamtee',3533,NULL,3533,'Davidhar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(509,530,'Gangamandal',3531,NULL,3531,'Davidhar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(510,48,'Diginala',4420,NULL,4420,'Diginala',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(511,NULL,'Barma',4383,NULL,4383,'East Joara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:36'),(512,NULL,'Dohazari',4382,NULL,4382,'East Joara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(513,NULL,'East Joara',4380,NULL,4380,'East Joara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(514,NULL,'Gachbaria',4381,NULL,4381,'East Joara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(515,491,'Chandra',3651,NULL,3651,'Faridganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(516,491,'Faridganj',3650,NULL,3650,'Faridganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(517,491,'Gridkaliandia',3653,NULL,3653,'Faridganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(518,491,'Islampur Shah Isain',3655,NULL,3655,'Faridganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(519,491,'Rampurbazar',3654,NULL,3654,'Faridganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(520,491,'Rupsha',3652,NULL,3652,'Faridganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(521,507,'Bhandar Sharif',4352,NULL,4352,'Fatikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(522,507,'Fatikchhari',4350,NULL,4350,'Fatikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(523,507,'Harualchhari',4354,NULL,4354,'Fatikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(524,507,'Najirhat',4353,NULL,4353,'Fatikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(525,507,'Nanupur',4351,NULL,4351,'Fatikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(526,507,'Narayanhat',4355,NULL,4355,'Fatikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(527,44,'Fazilpur',3901,NULL,3901,'Feni Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(528,44,'Feni Sadar',3900,NULL,3900,'Feni Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(529,44,'Laskarhat',3903,NULL,3903,'Feni Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(530,44,'Sharshadie',3902,NULL,3902,'Feni Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(531,265,'Gorakghat',4710,NULL,4710,'Gorakghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(532,493,'Bolakhal',3611,NULL,3611,'Hajiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(533,493,'Hajiganj',3610,NULL,3610,'Hajiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(534,509,'Chitt.University',4331,NULL,4331,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(535,509,'Fatahabad',4335,NULL,4335,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(536,509,'Gorduara',4332,NULL,4332,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(537,509,'Hathazari',4330,NULL,4330,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(538,509,'Katirhat',4333,NULL,4333,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(539,509,'Madrasa',4339,NULL,4339,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(540,509,'Mirzapur',4334,NULL,4334,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(541,509,'Nuralibari',4337,NULL,4337,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(542,509,'Yunus Nagar',4338,NULL,4338,'Hathazari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(543,15,'Afazia',3891,NULL,3891,'Hatiya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(544,15,'Hatiya',3890,NULL,3890,'Hatiya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(545,15,'Tamoraddi',3892,NULL,3892,'Hatiya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(546,492,'Gandamara',3661,NULL,3661,'Hayemchar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(547,492,'Hayemchar',3660,NULL,3660,'Hayemchar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(548,531,'Homna',3546,NULL,3546,'Homna',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(549,NULL,'Banigram',4393,NULL,4393,'Jaldi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(550,NULL,'Gunagari',4392,NULL,4392,'Jaldi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(551,NULL,'Jaldi',4390,NULL,4390,'Jaldi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(552,NULL,'Khan Bahadur',4391,NULL,4391,'Jaldi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(553,NULL,'Jarachhari',4560,NULL,4560,'Jarachhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:37'),(554,190,'Kachua',3630,NULL,3630,'Kachua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(555,190,'Pak Shrirampur',3631,NULL,3631,'Kachua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(556,190,'Rahima Nagar',3632,NULL,3632,'Kachua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(557,190,'Shachar',3633,NULL,3633,'Kachua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(558,NULL,'Betbunia',4511,NULL,4511,'Kalampati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(559,NULL,'Kalampati',4510,NULL,4510,'Kalampati',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(560,409,'Chandraghona',4531,NULL,4531,'kaptai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(561,409,'Kaptai',4530,NULL,4530,'kaptai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(562,409,'Kaptai Nuton Bazar',4533,NULL,4533,'kaptai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(563,409,'Kaptai Project',4532,NULL,4532,'kaptai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(564,486,'Chandidar',3462,NULL,3462,'Kasba',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(565,486,'Chargachh',3463,NULL,3463,'Kasba',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(566,486,'Gopinathpur',3464,NULL,3464,'Kasba',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(567,486,'Kasba',3460,NULL,3460,'Kasba',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(568,486,'Kuti',3461,NULL,3461,'Kasba',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(569,49,'Khagrachari Sadar',4400,NULL,4400,'Khagrachari Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(570,541,'Kutubdia',4720,NULL,4720,'Kutubdia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(571,533,'Bipulasar',3572,NULL,3572,'Laksam',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(572,533,'Laksam',3570,NULL,3570,'Laksam',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(573,533,'Lakshamanpur',3571,NULL,3571,'Laksam',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(574,57,'Amani Lakshimpur',3709,NULL,3709,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(575,57,'Bhabaniganj',3702,NULL,3702,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(576,57,'Chandraganj',3708,NULL,3708,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(577,57,'Choupalli',3707,NULL,3707,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(578,57,'Dalal Bazar',3701,NULL,3701,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(579,57,'Duttapara',3706,NULL,3706,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(580,57,'Keramatganj',3704,NULL,3704,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(581,57,'Lakshimpur Sadar',3700,NULL,3700,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(582,57,'Mandari',3703,NULL,3703,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(583,57,'Rupchara',3705,NULL,3705,'Lakshimpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(584,NULL,'Chhariabazar',3582,NULL,3582,'Langalkot',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(585,NULL,'Dhalua',3581,NULL,3581,'Langalkot',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(586,NULL,'Gunabati',3583,NULL,3583,'Langalkot',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(587,NULL,'Langalkot',3580,NULL,3580,'Langalkot',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(588,50,'Laxmichhari',4470,NULL,4470,'Laxmichhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(589,NULL,'Chunti',4398,NULL,4398,'Lohagara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(590,NULL,'Lohagara',4396,NULL,4396,'Lohagara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(591,NULL,'Padua',4397,NULL,4397,'Lohagara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(592,NULL,'Longachh',4580,NULL,4580,'Longachh',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(593,51,'Mahalchhari',4430,NULL,4430,'Mahalchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(594,52,'Manikchhari',4460,NULL,4460,'Manikchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(595,513,'Marishya',4590,NULL,4590,'Marishya',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(596,53,'Matiranga',4450,NULL,4450,'Matiranga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(597,NULL,'Kalipur',3642,NULL,3642,'Matlobganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(598,NULL,'Matlobganj',3640,NULL,3640,'Matlobganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(599,NULL,'Mohanpur',3641,NULL,3641,'Matlobganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(600,513,'Abutorab',4321,NULL,4321,'Mirsharai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:38'),(603,513,'Darrogahat',4322,NULL,4322,'Mirsharai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(604,513,'Joarganj',4324,NULL,4324,'Mirsharai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(605,513,'Korerhat',4327,NULL,4327,'Mirsharai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(606,513,'Mirsharai',4320,NULL,4320,'Mirsharai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(607,513,'Mohazanhat',4328,NULL,4328,'Mirsharai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(608,536,'Bangra',3543,NULL,3543,'Muradnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(609,536,'Companyganj',3542,NULL,3542,'Muradnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(610,536,'Muradnagar',3540,NULL,3540,'Muradnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(611,536,'Pantibazar',3545,NULL,3545,'Muradnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(612,536,'Ramchandarpur',3541,NULL,3541,'Muradnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(613,536,'Sonakanda',3544,NULL,3544,'Muradnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(614,487,'Jibanganj',3419,NULL,3419,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(615,487,'Kaitala',3417,NULL,3417,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(616,487,'Laubfatehpur',3411,NULL,3411,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(617,487,'Nabinagar',3410,NULL,3410,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(618,487,'Rasullabad',3412,NULL,3412,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(619,487,'Ratanpur',3414,NULL,3414,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(620,487,'Salimganj',3418,NULL,3418,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(621,487,'Shahapur',3415,NULL,3415,'Nabinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(623,NULL,'Naikhong',4660,NULL,4660,'Naikhong',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(624,412,'Nanichhar',4520,NULL,4520,'Naniachhar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(625,488,'Fandauk',3441,NULL,3441,'Nasirnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(626,488,'Nasirnagar',3440,NULL,3440,'Nasirnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(627,67,'Chaprashir Hat',3811,NULL,3811,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(628,67,'Char Jabbar',3812,NULL,3812,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(629,67,'Charam Tua',3809,NULL,3809,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(630,67,'Din Monir Hat',3803,NULL,3803,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(631,67,'Kabirhat',3807,NULL,3807,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(632,67,'Khalifar Hat',3808,NULL,3808,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(633,67,'Mriddarhat',3806,NULL,3806,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(634,67,'Noakhali College',3801,NULL,3801,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(635,67,'Noakhali Sadar',3800,NULL,3800,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(636,67,'Pak Kishoreganj',3804,NULL,3804,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(637,67,'Sonapur',3802,NULL,3802,'Noakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(638,54,'Panchhari',4410,NULL,4410,'Panchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(639,46,'Fulgazi',3942,NULL,3942,'Pashurampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(640,46,'Munshirhat',3943,NULL,3943,'Pashurampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(641,46,'Pashurampur',3940,NULL,3940,'Pashurampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(642,46,'Shuarbazar',3941,NULL,3941,'Pashurampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(643,345,'Budhpara',4371,NULL,4371,'Patia Head Office',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(644,345,'Patia Head Office',4370,NULL,4370,'Patia Head Office',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(645,413,'Rajsthali',4540,NULL,4540,'Rajsthali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(646,59,'Alipur',3721,NULL,3721,'Ramganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(647,59,'Dolta',3725,NULL,3725,'Ramganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(648,59,'Kanchanpur',3723,NULL,3723,'Ramganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:39'),(649,59,'Naagmud',3724,NULL,3724,'Ramganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(650,59,'Panpara',3722,NULL,3722,'Ramganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(651,59,'Ramganj',3720,NULL,3720,'Ramganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(652,55,'Ramghar Head Office',4440,NULL,4440,'Ramghar Head Office',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(653,3,'Ramu',4730,NULL,4730,'Ramu',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(654,414,'Rangamati Sadar',4500,NULL,4500,'Rangamati Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(655,518,'Dhamair',4361,NULL,4361,'Rangunia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(656,518,'Rangunia',4360,NULL,4360,'Rangunia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(657,58,'Bhuabari',3714,NULL,3714,'Raypur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(658,58,'Haydarganj',3713,NULL,3713,'Raypur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(659,58,'Nagerdighirpar',3712,NULL,3712,'Raypur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(660,58,'Rakhallia',3711,NULL,3711,'Raypur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(661,58,'Raypur',3710,NULL,3710,'Raypur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(662,479,'Roanchhari',4610,NULL,4610,'Roanchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(663,519,'B.I.T Post Office',4349,NULL,4349,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(664,519,'Beenajuri',4341,NULL,4341,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(665,519,'Dewanpur',4347,NULL,4347,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(666,519,'Fatepur',4345,NULL,4345,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(667,519,'Gahira',4343,NULL,4343,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(668,519,'Guzra Noapara',4346,NULL,4346,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(669,519,'jagannath Hat',4344,NULL,4344,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(670,519,'Kundeshwari',4342,NULL,4342,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(671,519,'Mohamuni',4348,NULL,4348,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(672,519,'Rouzan',4340,NULL,4340,'Rouzan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(673,480,'Ruma',4620,NULL,4620,'Ruma',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(674,520,'Sandwip',4300,NULL,4300,'Sandwip',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(675,520,'Shiberhat',4301,NULL,4301,'Sandwip',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(676,520,'Urirchar',4302,NULL,4302,'Sandwip',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(677,489,'Chandura',3432,NULL,3432,'Sarail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(678,489,'Sarial',3430,NULL,3430,'Sarail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(679,489,'Shahbajpur',3431,NULL,3431,'Sarail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(680,521,'Baitul Ijjat',4387,NULL,4387,'Satkania',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(681,521,'Bazalia',4388,NULL,4388,'Satkania',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(682,521,'Satkania',4386,NULL,4386,'Satkania',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(683,64,'Beezbag',3862,NULL,3862,'Senbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(684,64,'Chatarpaia',3864,NULL,3864,'Senbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(685,64,'Kallyandi',3861,NULL,3861,'Senbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(686,64,'Kankirhat',3863,NULL,3863,'Senbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(687,64,'Senbag',3860,NULL,3860,'Senbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(688,64,'T.P. Lamua',3865,NULL,3865,'Senbag',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(689,497,'Chotoshi',3623,NULL,3623,'Shahrasti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(690,497,'Islamia Madrasha',3624,NULL,3624,'Shahrasti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(691,497,'Khilabazar',3621,NULL,3621,'Shahrasti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(692,497,'Pashchim Kherihar Al',3622,NULL,3622,'Shahrasti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:40'),(693,497,'Shahrasti',3620,NULL,3620,'Shahrasti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(694,522,'Barabkunda',4312,NULL,4312,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(695,522,'Baroidhala',4311,NULL,4311,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(696,522,'Bawashbaria',4313,NULL,4313,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(697,522,'Bhatiari',4315,NULL,4315,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(698,522,'Fouzdarhat',4316,NULL,4316,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(699,522,'Jafrabad',4317,NULL,4317,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(700,522,'Kumira',4314,NULL,4314,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(701,522,'Sitakunda',4310,NULL,4310,'Sitakunda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(702,47,'Ahmadpur',3932,NULL,3932,'Sonagazi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(703,47,'Kazirhat',3933,NULL,3933,'Sonagazi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(704,47,'Motiganj',3931,NULL,3931,'Sonagazi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(705,47,'Sonagazi',3930,NULL,3930,'Sonagazi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(706,4,'Hnila',4761,NULL,4761,'Teknaf',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(707,4,'St.Martin',4762,NULL,4762,'Teknaf',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(708,4,'Teknaf',4760,NULL,4760,'Teknaf',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(709,481,'Lama',4641,NULL,4641,'Thanchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(710,481,'Thanchi',4630,NULL,4630,'Thanchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(711,5,'Ukhia',4750,NULL,4750,'Ukhia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(712,NULL,'Alaipur',9240,NULL,9240,'Alaipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(713,NULL,'Belphulia',9242,NULL,9242,'Alaipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(714,NULL,'Rupsha',9241,NULL,9241,'Alaipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(715,196,'Alamdanga',7210,NULL,7210,'Alamdanga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(716,196,'Hardi',7211,NULL,7211,'Alamdanga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(717,NULL,'Arpara',7620,NULL,7620,'Arpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(718,241,'Ashashuni',9460,NULL,9460,'Ashashuni',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(719,241,'Baradal',9461,NULL,9461,'Ashashuni',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(720,187,'Targast',9300,NULL,9300,'Bagerhat Sadar',1,NULL,'2015-05-19 21:29:27',1,'2015-10-14 03:22:06'),(721,187,'P.C College',9301,NULL,9301,'Bagerhat Sadar',1,NULL,'2015-05-19 21:29:27',1,'2015-11-24 10:03:05'),(722,187,'Rangdia',9302,NULL,9302,'Bagerhat Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(723,40,'Bagharpara',7470,NULL,7470,'Bagharpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(724,40,'Gouranagar',7471,NULL,7471,'Bagharpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(725,212,'Batiaghat',9260,NULL,9260,'Batiaghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(726,212,'Surkalee',9261,NULL,9261,'Batiaghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(727,226,'Allardarga',7042,NULL,7042,'Bheramara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(728,226,'Bheramara',7040,NULL,7040,'Bheramara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(729,226,'Ganges Bheramara',7041,NULL,7041,'Bheramara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(730,NULL,'Chalna Ankorage',9350,NULL,9350,'Chalna Ankorage',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(731,NULL,'Mongla Port',9351,NULL,9351,'Chalna Ankorage',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(732,NULL,'Bajua',9272,NULL,9272,'Chalna Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(733,NULL,'Chalna Bazar',9270,NULL,9270,'Chalna Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(734,NULL,'Dakup',9271,NULL,9271,'Chalna Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(735,NULL,'Nalian',9273,NULL,9273,'Chalna Bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(736,200,'Chougachha',7410,NULL,7410,'Chaugachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(737,188,'Barabaria',9361,NULL,9361,'Chitalmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(738,188,'Chitalmari',9360,NULL,9360,'Chitalmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:41'),(739,197,'Chuadanga Sadar',7200,NULL,7200,'Chuadanga Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(740,197,'Munshiganj',7201,NULL,7201,'Chuadanga Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(741,41,'Andulbaria',7222,NULL,7222,'Damurhuda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(742,41,'Damurhuda',7220,NULL,7220,'Damurhuda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(743,41,'Darshana',7221,NULL,7221,'Damurhuda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(744,242,'Debbhata',9430,NULL,9430,'Debbhata',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(745,242,'Gurugram',9431,NULL,9431,'Debbhata',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(746,216,'Chandni Mahal',9221,NULL,9221,'Digalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(747,216,'Digalia',9220,NULL,9220,'Digalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(748,216,'Gazirhat',9224,NULL,9224,'Digalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(749,216,'Ghoshghati',9223,NULL,9223,'Digalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(750,216,'Senhati',9222,NULL,9222,'Digalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(751,NULL,'Doulatganj',7230,NULL,7230,'Doulatganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(752,189,'Bhanganpar Bazar',9372,NULL,9372,'Fakirhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(753,189,'Fakirhat',9370,NULL,9370,'Fakirhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(754,189,'Mansa',9371,NULL,9371,'Fakirhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(755,235,'Gangni',7110,NULL,7110,'Gangni',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(756,206,'Harinakundu',7310,NULL,7310,'Harinakundu',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(757,NULL,'Janipur',7020,NULL,7020,'Janipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(758,NULL,'Khoksa',7021,NULL,7021,'Janipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(759,NULL,'Basundia',7406,NULL,7406,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(760,NULL,'Chanchra',7402,NULL,7402,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(761,NULL,'Churamankathi',7407,NULL,7407,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(762,NULL,'Jessore Airbach',7404,NULL,7404,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(763,NULL,'Jessore canttonment',7403,NULL,7403,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(764,NULL,'Jessore Sadar',7400,NULL,7400,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(765,NULL,'Jessore Upa-Shahar',7401,NULL,7401,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(766,NULL,'Rupdia',7405,NULL,7405,'Jessore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(767,201,'Jhikargachha',7420,NULL,7420,'Jhikargachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(768,207,'Jinaidaha Cadet College',7301,NULL,7301,'Jinaidaha Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(769,207,'Jinaidaha Sadar',7300,NULL,7300,'Jinaidaha Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(770,494,'Kachua',9310,NULL,9310,'Kachua UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(771,494,'Sonarkola',9311,NULL,9311,'Kachua UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(772,243,'Chandanpur',9415,NULL,9415,'kalaroa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(773,243,'Hamidpur',9413,NULL,9413,'kalaroa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(774,243,'Jhaudanga',9412,NULL,9412,'kalaroa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(775,243,'kalaroa',9410,NULL,9410,'kalaroa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(776,243,'Khordo',9414,NULL,9414,'kalaroa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(777,243,'Murarikati',9411,NULL,9411,'kalaroa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(778,238,'Kalia',7520,NULL,7520,'Kalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(779,88,'Kaliganj UPO',9440,NULL,9440,'Kaliganj UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(780,88,'Nalta Mubaroknagar',9441,NULL,9441,'Kaliganj UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(781,88,'Ratanpur',9442,NULL,9442,'Kaliganj UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(782,202,'Keshobpur',7450,NULL,7450,'Keshabpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(783,219,'Atra Shilpa Area',9207,NULL,9207,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(784,219,'BIT Khulna',9203,NULL,9203,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(785,219,'Doulatpur',9202,NULL,9202,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:42'),(786,219,'Jahanabad Canttonmen',9205,NULL,9205,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(787,219,'Khula Sadar',9100,NULL,9100,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(788,219,'Khulna G.P.O',9000,NULL,9000,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(789,219,'Khulna Shipyard',9201,NULL,9201,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(790,219,'Khulna University',9208,NULL,9208,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(791,219,'Siramani',9204,NULL,9204,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(792,219,'Sonali Jute Mills',9206,NULL,9206,'Khulna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(793,209,'Kotchandpur',7330,NULL,7330,'Kotchandpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(794,229,'Kumarkhali',7010,NULL,7010,'Kumarkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(795,229,'Panti',7011,NULL,7011,'Kumarkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(796,230,'Islami University',7003,NULL,7003,'Kustia Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(797,230,'Jagati',7002,NULL,7002,'Kustia Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(798,230,'Kushtia Mohini',7001,NULL,7001,'Kustia Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(799,230,'Kustia Sadar',7000,NULL,7000,'Kustia Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(800,NULL,'Baradia',7514,NULL,7514,'Laxmipasha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(801,NULL,'Itna',7512,NULL,7512,'Laxmipasha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(802,NULL,'Laxmipasha',7510,NULL,7510,'Laxmipasha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(803,NULL,'Lohagora',7511,NULL,7511,'Laxmipasha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(804,NULL,'Naldi',7513,NULL,7513,'Laxmipasha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(805,NULL,'Amadee',9291,NULL,9291,'Madinabad',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(806,NULL,'Madinabad',9290,NULL,9290,'Madinabad',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(807,232,'Magura Sadar',7600,NULL,7600,'Magura Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(808,210,'Maheshpur',7340,NULL,7340,'Maheshpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(809,237,'Amjhupi',7101,NULL,7101,'Meherpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(810,237,'Amjhupi',7152,NULL,7152,'Meherpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(811,237,'Meherpur Sadar',7100,NULL,7100,'Meherpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(812,237,'Mujib Nagar Complex',7102,NULL,7102,'Meherpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(813,231,'Amla Sadarpur',7032,NULL,7032,'Mirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(814,231,'Mirpur',7030,NULL,7030,'Mirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(815,231,'Poradaha',7031,NULL,7031,'Mirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(816,NULL,'Mohajan',7521,NULL,7521,'Mohajan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(817,233,'Binodpur',7631,NULL,7631,'Mohammadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(818,233,'Mohammadpur',7630,NULL,7630,'Mohammadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(819,233,'Nahata',7632,NULL,7632,'Mohammadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(820,191,'Charkulia',9383,NULL,9383,'Mollahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(821,191,'Dariala',9382,NULL,9382,'Mollahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(822,191,'Kahalpur',9381,NULL,9381,'Mollahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(823,191,'Mollahat',9380,NULL,9380,'Mollahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(824,191,'Nagarkandi',9384,NULL,9384,'Mollahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(825,191,'Pak Gangni',9385,NULL,9385,'Mollahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(826,204,'Monirampur',7440,NULL,7440,'Monirampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(827,193,'Morelganj',9320,NULL,9320,'Morelganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(828,193,'Sannasi Bazar',9321,NULL,9321,'Morelganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(829,193,'Telisatee',9322,NULL,9322,'Morelganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(830,NULL,'Buri Goalini',9453,NULL,9453,'Nakipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:43'),(831,NULL,'Gabura',9454,NULL,9454,'Nakipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(832,NULL,'Habinagar',9455,NULL,9455,'Nakipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(833,NULL,'Nakipur',9450,NULL,9450,'Nakipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(834,NULL,'Naobeki',9452,NULL,9452,'Nakipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(835,NULL,'Noornagar',9451,NULL,9451,'Nakipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(836,NULL,'Hatbar Bazar',7351,NULL,7351,'Naldanga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(837,NULL,'Naldanga',7350,NULL,7350,'Naldanga',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(838,240,'Narail Sadar',7500,NULL,7500,'Narail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(839,240,'Ratanganj',7501,NULL,7501,'Narail Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(840,NULL,'Bhugilhat',7462,NULL,7462,'Noapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(841,NULL,'Noapara',7460,NULL,7460,'Noapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(842,NULL,'Rajghat',7461,NULL,7461,'Noapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(843,221,'Chandkhali',9284,NULL,9284,'Paikgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(844,221,'Garaikhali',9285,NULL,9285,'Paikgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(845,221,'Godaipur',9281,NULL,9281,'Paikgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(846,221,'Kapilmoni',9282,NULL,9282,'Paikgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(847,221,'Katipara',9283,NULL,9283,'Paikgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(848,221,'Paikgachha',9280,NULL,9280,'Paikgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(849,222,'Phultala',9210,NULL,9210,'Phultala',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(850,NULL,'Khasmathurapur',7052,NULL,7052,'Rafayetpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(851,NULL,'Rafayetpur',7050,NULL,7050,'Rafayetpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(852,NULL,'Taragunia',7051,NULL,7051,'Rafayetpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(853,194,'Foylahat',9341,NULL,9341,'Rampal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(854,194,'Gourambha',9343,NULL,9343,'Rampal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(855,194,'Rampal',9340,NULL,9340,'Rampal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(856,194,'Sonatunia',9342,NULL,9342,'Rampal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(857,NULL,'Rayenda',9330,NULL,9330,'Rayenda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(858,NULL,'Chuknagar',9252,NULL,9252,'Sajiara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(859,NULL,'Ghonabanda',9251,NULL,9251,'Sajiara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(860,NULL,'Sajiara',9250,NULL,9250,'Sajiara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(861,NULL,'Shahapur',9253,NULL,9253,'Sajiara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(862,205,'Bag Achra',7433,NULL,7433,'Sarsa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(863,205,'Benapole',7431,NULL,7431,'Sarsa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(864,205,'Jadabpur',7432,NULL,7432,'Sarsa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(865,205,'Sarsa',7430,NULL,7430,'Sarsa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(866,245,'Budhhat',9403,NULL,9403,'Satkhira Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(867,245,'Gunakar kati',9402,NULL,9402,'Satkhira Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(868,245,'Satkhira Islamia Acc',9401,NULL,9401,'Satkhira Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(869,245,'Satkhira Sadar',9400,NULL,9400,'Satkhira Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:44'),(870,211,'Kumiradaha',7321,NULL,7321,'Shailakupa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(871,211,'Shailakupa',7320,NULL,7320,'Shailakupa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(872,257,'Langalbadh',7611,NULL,7611,'Shripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(873,257,'Nachol',7612,NULL,7612,'Shripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(874,257,'Shripur',7610,NULL,7610,'Shripur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(875,247,'Patkelghata',9421,NULL,9421,'Taala',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(876,247,'Taala',9420,NULL,9420,'Taala',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(877,225,'Pak Barasat',9231,NULL,9231,'Terakhada',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(878,225,'Terakhada',9230,NULL,9230,'Terakhada',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(879,369,'Azmireeganj',3360,NULL,3360,'Azmireeganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(880,370,'Bahubal',3310,NULL,3310,'Bahubal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(881,393,'Balaganj',3120,NULL,3120,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(882,393,'Begumpur',3125,NULL,3125,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(883,393,'Brahman Shashon',3122,NULL,3122,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(884,393,'Gaharpur',3128,NULL,3128,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(885,393,'Goala Bazar',3124,NULL,3124,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(886,393,'Karua',3121,NULL,3121,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(887,393,'Kathal Khair',3127,NULL,3127,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(888,393,'Natun Bazar',3129,NULL,3129,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(889,393,'Omarpur',3126,NULL,3126,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(890,393,'Tajpur',3123,NULL,3123,'Balaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(891,371,'Baniachang',3350,NULL,3350,'Baniachang',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(892,371,'Jatrapasha',3351,NULL,3351,'Baniachang',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(893,371,'Kadirganj',3352,NULL,3352,'Baniachang',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(894,376,'Baralekha',3250,NULL,3250,'Baralekha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(895,376,'Dhakkhinbag',3252,NULL,3252,'Baralekha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(896,376,'Juri',3251,NULL,3251,'Baralekha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(897,376,'Purbashahabajpur',3253,NULL,3253,'Baralekha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(898,27,'Bianibazar',3170,NULL,3170,'Bianibazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(899,27,'Churkai',3175,NULL,3175,'Bianibazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(900,27,'jaldup',3171,NULL,3171,'Bianibazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(901,27,'Kurar bazar',3173,NULL,3173,'Bianibazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(902,27,'Mathiura',3172,NULL,3172,'Bianibazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(903,27,'Salia bazar',3174,NULL,3174,'Bianibazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(904,383,'Bishamsapur',3010,NULL,3010,'Bishamsarpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(905,394,'Bishwanath',3130,NULL,3130,'Bishwanath',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(906,394,'Dashghar',3131,NULL,3131,'Bishwanath',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(907,394,'Deokalas',3133,NULL,3133,'Bishwanath',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(908,394,'Doulathpur',3132,NULL,3132,'Bishwanath',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(909,394,'Singer kanch',3134,NULL,3134,'Bishwanath',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(910,384,'Chhatak',3080,NULL,3080,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(911,384,'Chhatak Cement Facto',3081,NULL,3081,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(912,384,'Chhatak Paper Mills',3082,NULL,3082,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(913,384,'Chourangi Bazar',3893,NULL,3893,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(914,384,'Gabindaganj',3083,NULL,3083,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(915,384,'Gabindaganj Natun Ba',3084,NULL,3084,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(916,384,'Islamabad',3088,NULL,3088,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(917,384,'jahidpur',3087,NULL,3087,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(918,384,'Khurma',3085,NULL,3085,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(919,384,'Moinpur',3086,NULL,3086,'Chhatak',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(920,372,'Chandpurbagan',3321,NULL,3321,'Chunarughat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(921,372,'Chunarughat',3320,NULL,3320,'Chunarughat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(922,372,'Narapati',3322,NULL,3322,'Chunarughat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(923,NULL,'Dhirai Chandpur',3040,NULL,3040,'Dhirai Chandpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:45'),(924,NULL,'Jagdal',3041,NULL,3041,'Dhirai Chandpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(925,388,'Duara bazar',3070,NULL,3070,'Duara bazar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(926,397,'Fenchuganj',3116,NULL,3116,'Fenchuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(927,397,'Fenchuganj SareKarkh',3117,NULL,3117,'Fenchuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(928,NULL,'Ghungiar',3050,NULL,3050,'Ghungiar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(929,399,'Chiknagul',3152,NULL,3152,'Goainhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(930,399,'Goainhat',3150,NULL,3150,'Goainhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(931,399,'Jaflong',3151,NULL,3151,'Goainhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(932,91,'banigram',3164,NULL,3164,'Gopalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(933,91,'Chandanpur',3165,NULL,3165,'Gopalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(934,91,'Dakkhin Bhadashore',3162,NULL,3162,'Gopalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(935,91,'Dhaka Dakkhin',3161,NULL,3161,'Gopalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(936,91,'Gopalgannj',3160,NULL,3160,'Gopalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(937,91,'Ranaping',3163,NULL,3163,'Gopalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(938,373,'Gopaya',3302,NULL,3302,'Hobiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(939,373,'Hobiganj Sadar',3300,NULL,3300,'Hobiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(940,373,'Shaestaganj',3301,NULL,3301,'Hobiganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(941,389,'Atuajan',3062,NULL,3062,'Jagnnathpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(942,389,'Hasan Fatemapur',3063,NULL,3063,'Jagnnathpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(943,389,'Jagnnathpur',3060,NULL,3060,'Jagnnathpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(944,389,'Rasulganj',3064,NULL,3064,'Jagnnathpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(945,389,'Shiramsi',3065,NULL,3065,'Jagnnathpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(946,389,'Syedpur',3061,NULL,3061,'Jagnnathpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(947,400,'Jainthapur',3156,NULL,3156,'Jaintapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(948,NULL,'Ichhamati',3191,NULL,3191,'Jakiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(949,NULL,'Jakiganj',3190,NULL,3190,'Jakiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(950,NULL,'Kalauk',3340,NULL,3340,'Kalauk',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(951,NULL,'Lakhai',3341,NULL,3341,'Kalauk',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(952,378,'Kamalganj',3220,NULL,3220,'Kamalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(953,378,'Keramatnaga',3221,NULL,3221,'Kamalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(954,378,'Munshibazar',3224,NULL,3224,'Kamalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(955,378,'Patrakhola',3222,NULL,3222,'Kamalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(956,378,'Shamsher Nagar',3223,NULL,3223,'Kamalganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(957,401,'Chatulbazar',3181,NULL,3181,'Kanaighat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(958,401,'Gachbari',3183,NULL,3183,'Kanaighat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(959,401,'Kanaighat',3180,NULL,3180,'Kanaighat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(960,401,'Manikganj',3182,NULL,3182,'Kanaighat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(961,NULL,'Kompanyganj',3140,NULL,3140,'Kompanyganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(962,379,'Baramchal',3237,NULL,3237,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(963,379,'Kajaldhara',3234,NULL,3234,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(964,379,'Karimpur',3235,NULL,3235,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(965,379,'Kulaura',3230,NULL,3230,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(966,379,'Langla',3232,NULL,3232,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(967,379,'Prithimpasha',3233,NULL,3233,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(968,379,'Tillagaon',3231,NULL,3231,'Kulaura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(969,374,'Itakhola',3331,NULL,3331,'Madhabpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(970,374,'Madhabpur',3330,NULL,3330,'Madhabpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:46'),(971,374,'Saihamnagar',3333,NULL,3333,'Madhabpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(972,374,'Shahajibazar',3332,NULL,3332,'Madhabpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(973,380,'Afrozganj',3203,NULL,3203,'Moulvibazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(974,380,'Barakapan',3201,NULL,3201,'Moulvibazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(975,380,'Monumukh',3202,NULL,3202,'Moulvibazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(976,380,'Moulvibazar Sadar',3200,NULL,3200,'Moulvibazar Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(977,375,'Digalbak',3373,NULL,3373,'Nabiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(978,375,'Golduba',3372,NULL,3372,'Nabiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(979,375,'Goplarbazar',3371,NULL,3371,'Nabiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(980,375,'Inathganj',3374,NULL,3374,'Nabiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(981,375,'Nabiganj',3370,NULL,3370,'Nabiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(982,381,'Rajnagar',3240,NULL,3240,'Rajnagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(983,NULL,'Sachna',3020,NULL,3020,'Sachna',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(984,382,'Kalighat',3212,NULL,3212,'Srimangal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(985,382,'Khejurichhara',3213,NULL,3213,'Srimangal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(986,382,'Narain Chora',3211,NULL,3211,'Srimangal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(987,382,'Satgaon',3214,NULL,3214,'Srimangal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(988,382,'Srimangal',3210,NULL,3210,'Srimangal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-05-21 09:55:38'),(989,391,'Pagla',3001,NULL,3001,'Sunamganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(990,391,'Patharia',3002,NULL,3002,'Sunamganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(991,391,'Sunamganj Sadar',3000,NULL,3000,'Sunamganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(992,402,'Birahimpur',3106,NULL,3106,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(993,402,'Jalalabad',3107,NULL,3107,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(994,402,'Jalalabad Cantoment',3104,NULL,3104,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(995,402,'Kadamtali',3111,NULL,3111,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(996,402,'Kamalbazer',3112,NULL,3112,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(997,402,'Khadimnagar',3103,NULL,3103,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(998,402,'Lalbazar',3113,NULL,3113,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(999,402,'Mogla',3108,NULL,3108,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1000,402,'Ranga Hajiganj',3109,NULL,3109,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1001,402,'Shahajalal Science &',3114,NULL,3114,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1002,402,'Silam',3105,NULL,3105,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1003,402,'Sylhe Sadar',3100,NULL,3100,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1004,402,'Sylhet Biman Bondar',3102,NULL,3102,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1005,402,'Sylhet Cadet Col',3101,NULL,3101,'Sylhet Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1006,392,'Tahirpur',3030,NULL,3030,'Tahirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1007,NULL,'Agailzhara',8240,NULL,8240,'Agailzhara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1008,NULL,'Gaila',8241,NULL,8241,'Agailzhara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1009,NULL,'Paisarhat',8242,NULL,8242,'Agailzhara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1010,438,'Amtali',8710,NULL,8710,'Amtali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1011,443,'Babuganj',8210,NULL,8210,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:47'),(1012,443,'Barishal Cadet',8216,NULL,8216,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1013,443,'Chandpasha',8212,NULL,8212,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1014,443,'Madhabpasha',8213,NULL,8213,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1015,443,'Nizamuddin College',8215,NULL,8215,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1016,443,'Rahamatpur',8211,NULL,8211,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1017,443,'Thakur Mallik',8214,NULL,8214,'Babuganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1018,439,'Bamna',8730,NULL,8730,'Bamna',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1019,NULL,'Banaripara',8530,NULL,8530,'Banaripara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1020,NULL,'Chakhar',8531,NULL,8531,'Banaripara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1021,NULL,'Barajalia',8260,NULL,8260,'Barajalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1022,NULL,'Osman Manjil',8261,NULL,8261,'Barajalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1023,29,'Barguna Sadar',8700,NULL,8700,'Barguna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1024,29,'Nali Bandar',8701,NULL,8701,'Barguna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1025,NULL,'Barishal Sadar',8200,NULL,8200,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1026,NULL,'Bukhainagar',8201,NULL,8201,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1027,NULL,'Jaguarhat',8206,NULL,8206,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1028,NULL,'Kashipur',8205,NULL,8205,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1029,NULL,'Patang',8204,NULL,8204,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1030,NULL,'Saheberhat',8202,NULL,8202,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1031,NULL,'Sugandia',8203,NULL,8203,'Barishal Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1032,462,'Bagabandar',8621,NULL,8621,'Bauphal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1033,462,'Bauphal',8620,NULL,8620,'Bauphal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1034,462,'Birpasha',8622,NULL,8622,'Bauphal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1035,462,'Kalaia',8624,NULL,8624,'Bauphal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1036,462,'Kalishari',8623,NULL,8623,'Bauphal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1037,440,'Betagi',8740,NULL,8740,'Betagi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1038,440,'Darul Ulam',8741,NULL,8741,'Betagi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1039,468,'Bhandaria',8550,NULL,8550,'Bhandaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1040,468,'Dhaoa',8552,NULL,8552,'Bhandaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1041,468,'Kanudashkathi',8551,NULL,8551,'Bhandaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1042,451,'Bhola Sadar',8300,NULL,8300,'Bhola Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1043,451,'Joynagar',8301,NULL,8301,'Bhola Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1044,NULL,'Borhanuddin UPO',8320,NULL,8320,'Borhanuddin UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1045,NULL,'Mirzakalu',8321,NULL,8321,'Borhanuddin UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1046,NULL,'Charfashion',8340,NULL,8340,'Charfashion',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1047,NULL,'Dularhat',8341,NULL,8341,'Charfashion',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1048,NULL,'Keramatganj',8342,NULL,8342,'Charfashion',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1049,30,'Dashmina',8630,NULL,8630,'Dashmina',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1050,NULL,'Doulatkhan',8310,NULL,8310,'Doulatkhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1051,NULL,'Hajipur',8311,NULL,8311,'Doulatkhan',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1052,464,'Galachipa',8640,NULL,8640,'Galachipa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1053,464,'Gazipur Bandar',8641,NULL,8641,'Galachipa',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1054,NULL,'Batajor',8233,NULL,8233,'Gouranadi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:48'),(1055,NULL,'Gouranadi',8230,NULL,8230,'Gouranadi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1056,NULL,'Kashemabad',8232,NULL,8232,'Gouranadi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1057,NULL,'Tarki Bandar',8231,NULL,8231,'Gouranadi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1058,NULL,'Hajirhat',8360,NULL,8360,'Hajirhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1059,NULL,'Hatshoshiganj',8350,NULL,8350,'Hatshoshiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1060,NULL,'Baukathi',8402,NULL,8402,'Jhalokathi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1061,NULL,'Gabha',8403,NULL,8403,'Jhalokathi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1062,NULL,'Jhalokathi Sadar',8400,NULL,8400,'Jhalokathi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1063,NULL,'Nabagram',8401,NULL,8401,'Jhalokathi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1064,NULL,'Shekherhat',8404,NULL,8404,'Jhalokathi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1065,NULL,'Amua',8431,NULL,8431,'Kathalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1066,NULL,'Kathalia',8430,NULL,8430,'Kathalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1067,NULL,'Niamatee',8432,NULL,8432,'Kathalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1068,NULL,'Shoulajalia',8433,NULL,8433,'Kathalia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1069,NULL,'Jolagati',8513,NULL,8513,'kaukhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1070,NULL,'Joykul',8512,NULL,8512,'kaukhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1071,NULL,'Kaukhali',8510,NULL,8510,'kaukhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1072,NULL,'Keundia',8511,NULL,8511,'kaukhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1073,NULL,'Khepupara',8650,NULL,8650,'Khepupara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1074,NULL,'Mahipur',8651,NULL,8651,'Khepupara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1075,NULL,'Daurihat',8331,NULL,8331,'Lalmohan UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1076,NULL,'Gazaria',8332,NULL,8332,'Lalmohan UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1077,NULL,'Lalmohan UPO',8330,NULL,8330,'Lalmohan UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1078,NULL,'Langutia',8274,NULL,8274,'Mahendiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1079,NULL,'Laskarpur',8271,NULL,8271,'Mahendiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1080,NULL,'Mahendiganj',8270,NULL,8270,'Mahendiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1081,NULL,'Nalgora',8273,NULL,8273,'Mahendiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1082,NULL,'Ulania',8272,NULL,8272,'Mahendiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1083,470,'Betmor Natun Hat',8565,NULL,8565,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1084,470,'Gulishakhali',8563,NULL,8563,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1085,470,'Halta',8562,NULL,8562,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1086,470,'Mathbaria',8560,NULL,8560,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1087,470,'Shilarganj',8566,NULL,8566,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1088,470,'Tiarkhali',8564,NULL,8564,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1089,470,'Tushkhali',8561,NULL,8561,'Mathbaria',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1090,449,'Charkalekhan',8252,NULL,8252,'Muladi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1091,449,'Kazirchar',8251,NULL,8251,'Muladi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1092,449,'Muladi',8250,NULL,8250,'Muladi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1093,NULL,'Beerkathi',8421,NULL,8421,'Nalchhiti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1094,NULL,'Nalchhiti',8420,NULL,8420,'Nalchhiti',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1095,NULL,'Nazirpur',8540,NULL,8540,'Nazirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1096,NULL,'Sriramkathi',8541,NULL,8541,'Nazirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1097,441,'Kakchira',8721,NULL,8721,'Patharghata',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1098,441,'Patharghata',8720,NULL,8720,'Patharghata',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1099,467,'Dumkee',8602,NULL,8602,'Patuakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1100,467,'Moukaran',8601,NULL,8601,'Patuakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:49'),(1101,467,'Patuakhali Sadar',8600,NULL,8600,'Patuakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1102,467,'Rahimabad',8603,NULL,8603,'Patuakhali Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1103,472,'Hularhat',8501,NULL,8501,'Pirojpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1104,472,'Parerhat',8502,NULL,8502,'Pirojpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1105,472,'Pirojpur Sadar',8500,NULL,8500,'Pirojpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1106,461,'Rajapur',8410,NULL,8410,'Rajapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1107,NULL,'Charamandi',8281,NULL,8281,'Sahebganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1108,NULL,'kalaskati',8284,NULL,8284,'Sahebganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1109,55,'Ramgar',4440,NULL,8282,'Sahebganj',1,NULL,'2015-05-19 21:29:27',1,'2015-11-30 12:11:51'),(1110,NULL,'Sahebganj',8280,NULL,8280,'Sahebganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1111,NULL,'Shialguni',8283,NULL,8283,'Sahebganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1112,NULL,'Subidkhali',8610,NULL,8610,'Subidkhali',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1113,NULL,'Darus Sunnat',8521,NULL,8521,'Swarupkathi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1114,NULL,'Jalabari',8523,NULL,8523,'Swarupkathi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1115,NULL,'Kaurikhara',8522,NULL,8522,'Swarupkathi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1116,NULL,'Swarupkathi',8520,NULL,8520,'Swarupkathi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1117,NULL,'Dakuarhat',8223,NULL,8223,'Uzirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1118,NULL,'Dhamura',8221,NULL,8221,'Uzirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1119,NULL,'Jugirkanda',8222,NULL,8222,'Uzirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1120,NULL,'Shikarpur',8224,NULL,8224,'Uzirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1121,NULL,'Uzirpur',8220,NULL,8220,'Uzirpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1122,NULL,'Ahsanganj',6596,NULL,6596,'Ahsanganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1123,NULL,'Bandai',6597,NULL,6597,'Ahsanganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1124,279,'Akklepur',5940,NULL,5940,'Akkelpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1125,279,'jamalganj',5941,NULL,5941,'Akkelpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1126,279,'Tilakpur',5942,NULL,5942,'Akkelpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1127,NULL,'Adamdighi',5890,NULL,5890,'Alamdighi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1128,NULL,'Nasharatpur',5892,NULL,5892,'Alamdighi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1129,NULL,'Santahar',5891,NULL,5891,'Alamdighi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1130,298,'Badalgachhi',6570,NULL,6570,'Badalgachhi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1131,336,'Arani',6281,NULL,6281,'Bagha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1132,336,'Bagha',6280,NULL,6280,'Bagha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1133,NULL,'Baiddya Jam Toil',6730,NULL,6730,'Baiddya Jam Toil',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1134,NULL,'Banwarinagar',6650,NULL,6650,'Banwarinagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1135,356,'Belkuchi',6740,NULL,6740,'Belkuchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1136,356,'Enayetpur',6751,NULL,6751,'Belkuchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1137,356,'Rajapur',6742,NULL,6742,'Belkuchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1138,356,'Sohagpur',6741,NULL,6741,'Belkuchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1139,356,'Sthal',6752,NULL,6752,'Belkuchi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1140,323,'Bera',6680,NULL,6680,'Bera',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1141,323,'Kashinathpur',6682,NULL,6682,'Bera',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1142,323,'Nakalia',6681,NULL,6681,'Bera',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1143,323,'Puran Bharenga',6683,NULL,6683,'Bera',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1144,NULL,'Bhabaniganj',6250,NULL,6250,'Bhabaniganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1145,NULL,'Taharpur',6251,NULL,6251,'Bhabaniganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1146,324,'Bhangura',6640,NULL,6640,'Bhangura',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:50'),(1147,312,'Bholahat',6330,NULL,6330,'Bholahat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1148,249,'Bogra Canttonment',5801,NULL,5801,'Bogra Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1149,249,'Bogra Sadar',5800,NULL,5800,'Bogra Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1150,NULL,'Amnura',6303,NULL,6303,'Chapinawabganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1151,NULL,'Chapinawbganj Sadar',6300,NULL,6300,'Chapinawabganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1152,NULL,'Rajarampur',6301,NULL,6301,'Chapinawabganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1153,NULL,'Ramchandrapur',6302,NULL,6302,'Chapinawabganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1154,339,'Charghat',6270,NULL,6270,'Charghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1155,339,'Sarda',6271,NULL,6271,'Charghat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1156,325,'Chatmohar',6630,NULL,6630,'Chatmohar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1157,NULL,'Debottar',6610,NULL,6610,'Debottar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1158,NULL,'Dhamuirhat',6580,NULL,6580,'Dhamuirhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1159,NULL,'Dhangora',6720,NULL,6720,'Dhangora',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1160,NULL,'Malonga',6721,NULL,6721,'Dhangora',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1161,250,'Dhunat',5850,NULL,5850,'Dhunat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1162,250,'Gosaibari',5851,NULL,5851,'Dhunat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1163,NULL,'Dupchachia',5880,NULL,5880,'Dupchachia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1164,NULL,'Talora',5881,NULL,5881,'Dupchachia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1165,NULL,'Durgapur',6240,NULL,6240,'Durgapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1166,NULL,'Gabtoli',5820,NULL,5820,'Gabtoli',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1167,NULL,'Sukhanpukur',5821,NULL,5821,'Gabtoli',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1168,341,'Godagari',6290,NULL,6290,'Godagari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1169,341,'Premtoli',6291,NULL,6291,'Godagari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1170,NULL,'Abdulpur',6422,NULL,6422,'Gopalpur UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1171,NULL,'Gopalpur U.P.O',6420,NULL,6420,'Gopalpur UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1172,NULL,'Lalpur S.O',6421,NULL,6421,'Gopalpur UPO',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1173,NULL,'Baraigram',6432,NULL,6432,'Harua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1174,NULL,'Dayarampur',6431,NULL,6431,'Harua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1175,NULL,'Harua',6430,NULL,6430,'Harua',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1176,NULL,'Hatgurudaspur',6440,NULL,6440,'Hatgurudaspur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1177,327,'Dhapari',6621,NULL,6621,'Ishwardi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1178,327,'Ishwardi',6620,NULL,6620,'Ishwardi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1179,327,'Pakshi',6622,NULL,6622,'Ishwardi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1180,327,'Rajapur',6623,NULL,6623,'Ishwardi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1181,280,'Joypurhat Sadar',5900,NULL,5900,'Joypurhat Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1182,NULL,'Kahalu',5870,NULL,5870,'Kahalu',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1183,281,'kalai',5930,NULL,5930,'kalai',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1184,359,'Gandail',6712,NULL,6712,'Kazipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1185,359,'Kazipur',6710,NULL,6710,'Kazipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1186,359,'Shuvgachha',6711,NULL,6711,'Kazipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1187,282,'Khetlal',5920,NULL,5920,'Khetlal',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1188,NULL,'Khodmohanpur',6220,NULL,6220,'Khod Mohanpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1189,NULL,'Lalitganj',6210,NULL,6210,'Lalitganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1190,NULL,'Rajshahi Sugar Mills',6211,NULL,6211,'Lalitganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1191,NULL,'Shyampur',6212,NULL,6212,'Lalitganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:51'),(1192,NULL,'Laxman',6410,NULL,6410,'Laxman',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1193,301,'Mahadebpur',6530,NULL,6530,'Mahadebpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1194,NULL,'Mandumala',6311,NULL,6311,'Nachol',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1195,NULL,'Nachol',6310,NULL,6310,'Nachol',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1196,254,'Nandigram',5860,NULL,5860,'Nandigram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1197,302,'Naogaon Sadar',6500,NULL,6500,'Naogaon Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1198,310,'Baiddyabal Gharia',6402,NULL,6402,'Natore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1199,310,'Digapatia',6401,NULL,6401,'Natore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1200,310,'Madhnagar',6403,NULL,6403,'Natore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1201,310,'Natore Sadar',6400,NULL,6400,'Natore Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1202,23,'Niamatpur',6520,NULL,6520,'Niamatpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1203,NULL,'Nitpur',6550,NULL,6550,'Nitpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1204,NULL,'Panguria',6552,NULL,6552,'Nitpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1205,NULL,'Porsa',6551,NULL,6551,'Nitpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1206,328,'Hamayetpur',6602,NULL,6602,'Pabna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1207,328,'Kaliko Cotton Mills',6601,NULL,6601,'Pabna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1208,328,'Pabna Sadar',6600,NULL,6600,'Pabna Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1209,22,'Panchbibi',5910,NULL,5910,'panchbibi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1210,303,'Patnitala',6540,NULL,6540,'Patnitala',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1211,NULL,'Balihar',6512,NULL,6512,'Prasadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1212,NULL,'Manda',6511,NULL,6511,'Prasadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1213,NULL,'Prasadpur',6510,NULL,6510,'Prasadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1214,NULL,'Putia',6260,NULL,6260,'Putia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1215,NULL,'Binodpur Bazar',6206,NULL,6206,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1216,NULL,'Ghuramara',6100,NULL,6100,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1217,NULL,'Kazla',6204,NULL,6204,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1218,NULL,'Rajshahi Canttonment',6202,NULL,6202,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1219,NULL,'Rajshahi Court',6201,NULL,6201,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1220,NULL,'Rajshahi Sadar',6000,NULL,6000,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1221,NULL,'Rajshahi University',6205,NULL,6205,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1222,NULL,'Sapura',6203,NULL,6203,'Rajshahi Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1223,34,'Kashimpur',6591,NULL,6591,'Raninagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1224,34,'Raninagar',6590,NULL,6590,'Raninagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1225,NULL,'Gomashtapur',6321,NULL,6321,'Rohanpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1226,NULL,'Rohanpur',6320,NULL,6320,'Rohanpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1227,305,'Moduhil',6561,NULL,6561,'Sapahar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1228,305,'Sapahar',6560,NULL,6560,'Sapahar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1229,255,'Chandan Baisha',5831,NULL,5831,'Sariakandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1230,255,'Sariakandi',5830,NULL,5830,'Sariakandi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1231,NULL,'Sathia',6670,NULL,6670,'Sathia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1232,361,'Jamirta',6772,NULL,6772,'Shahjadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1233,361,'Kaijuri',6773,NULL,6773,'Shahjadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1234,361,'Porjana',6771,NULL,6771,'Shahjadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1235,361,'Shahjadpur',6770,NULL,6770,'Shahjadpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1236,257,'Chandaikona',5841,NULL,5841,'Sherpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1237,257,'Palli Unnyan Accadem',5842,NULL,5842,'Sherpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:52'),(1238,257,'Sherpur',5840,NULL,5840,'Sherpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1239,NULL,'Shibganj',5810,NULL,5810,'Shibganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1240,NULL,'Kansart',6341,NULL,6341,'Shibganj U.P.O',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1241,NULL,'Manaksha',6342,NULL,6342,'Shibganj U.P.O',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1242,NULL,'Shibganj U.P.O',6340,NULL,6340,'Shibganj U.P.O',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1243,311,'Singra',6450,NULL,6450,'Singra',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1244,362,'Raipur',6701,NULL,6701,'Sirajganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1245,362,'Rashidabad',6702,NULL,6702,'Sirajganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1246,362,'Sirajganj Sadar',6700,NULL,6700,'Sirajganj Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1247,259,'Sonatola',5826,NULL,5826,'Sonatola',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1248,330,'Sagarkandi',6661,NULL,6661,'Sujanagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1249,330,'Sujanagar',6660,NULL,6660,'Sujanagar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1250,NULL,'Tanor',6230,NULL,6230,'Tanor',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1251,363,'Tarash',6780,NULL,6780,'Tarash',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1252,NULL,'Lahiri Mohanpur',6762,NULL,6762,'Ullapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1253,NULL,'Salap',6763,NULL,6763,'Ullapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1254,NULL,'Ullapara',6760,NULL,6760,'Ullapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1255,NULL,'Ullapara R.S',6761,NULL,6761,'Ullapara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1256,292,'Aditmari',5510,NULL,5510,'Aditmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1257,349,'Badarganj',5430,NULL,5430,'Badarganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1258,349,'Shyampur',5431,NULL,5431,'Badarganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1259,365,'Baliadangi',5140,NULL,5140,'Baliadangi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1260,365,'Lahiri',5141,NULL,5141,'Baliadangi',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1261,NULL,'Bangla Hili',5270,NULL,5270,'Bangla Hili',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1262,283,'Bhurungamari',5670,NULL,5670,'Bhurungamari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1263,262,'Biral',5210,NULL,5210,'Biral',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1264,260,'Birampur',5266,NULL,5266,'Birampur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1265,261,'Birganj',5220,NULL,5220,'Birganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1266,332,'Boda',5010,NULL,5010,'Boda',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1267,NULL,'Bonarpara',5750,NULL,5750,'Bonarpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1268,NULL,'saghata',5751,NULL,5751,'Bonarpara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1269,285,'Chilmari',5630,NULL,5630,'Chilmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1270,285,'Jorgachh',5631,NULL,5631,'Chilmari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1271,NULL,'Chotto Dab',5040,NULL,5040,'Chotto Dab',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1272,NULL,'Mirjapur',5041,NULL,5041,'Chotto Dab',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1273,NULL,'Chrirbandar',5240,NULL,5240,'Chrirbandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1274,NULL,'Ranirbandar',5241,NULL,5241,'Chrirbandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1275,NULL,'Dabiganj',5020,NULL,5020,'Dabiganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1276,NULL,'Dimla',5350,NULL,5350,'Dimla',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1277,NULL,'Ghaga Kharibari',5351,NULL,5351,'Dimla',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1278,269,'Dinajpur Rajbari',5201,NULL,5201,'Dinajpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1279,269,'Dinajpur Sadar',5200,NULL,5200,'Dinajpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1280,NULL,'Chilahati',5341,NULL,5341,'Domar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1281,NULL,'Domar',5340,NULL,5340,'Domar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1282,273,'Gaibandha Sadar',5700,NULL,5700,'Gaibandha Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1283,350,'Gangachara',5410,NULL,5410,'Gangachara',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:53'),(1284,274,'Gobindhaganj',5740,NULL,5740,'Gobindaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1285,274,'Mahimaganj',5741,NULL,5741,'Gobindaganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1286,293,'Hatibandha',5530,NULL,5530,'Hatibandha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1287,NULL,'Jaldhaka',5330,NULL,5330,'Jaldhaka',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1288,NULL,'Jibanpur',5130,NULL,5130,'Jibanpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1289,25,'Haragachh',5441,NULL,5441,'Kaunia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1290,25,'Kaunia',5440,NULL,5440,'Kaunia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1291,268,'Khansama',5230,NULL,5230,'Khansama',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1292,268,'Pakarhat',5231,NULL,5231,'Khansama',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1293,NULL,'Kishoriganj',5320,NULL,5320,'Kishoriganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1294,287,'Kurigram Sadar',5600,NULL,5600,'Kurigram Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1295,287,'Pandul',5601,NULL,5601,'Kurigram Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1296,287,'Phulbari',5680,NULL,5680,'Kurigram Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1297,295,'Kulaghat SO',5502,NULL,5502,'Lalmonirhat Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1298,295,'Lalmonirhat Sadar',5500,NULL,5500,'Lalmonirhat Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1299,295,'Moghalhat',5501,NULL,5501,'Lalmonirhat Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1300,NULL,'Maharajganj',5226,NULL,5226,'Maharajganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1301,NULL,'Mithapukur',5460,NULL,5460,'Mithapukur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1302,NULL,'Daudpur',5281,NULL,5281,'Nababganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1303,NULL,'Gopalpur',5282,NULL,5282,'Nababganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1304,NULL,'Nababganj',5280,NULL,5280,'Nababganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1305,NULL,'Nageshwar',5660,NULL,5660,'Nageshwar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1306,NULL,'Nilphamari Sadar',5300,NULL,5300,'Nilphamari Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1307,NULL,'Nilphamari Sugar Mil',5301,NULL,5301,'Nilphamari Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1308,NULL,'Ghoraghat',5291,NULL,5291,'Osmanpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1309,NULL,'Osmanpur',5290,NULL,5290,'Osmanpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1310,275,'Palashbari',5730,NULL,5730,'Palashbari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1311,NULL,'Panchagar Sadar',5000,NULL,5000,'Panchagra Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1312,271,'Parbatipur',5250,NULL,5250,'Parbatipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1313,296,'Baura',5541,NULL,5541,'Patgram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1314,296,'Burimari',5542,NULL,5542,'Patgram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1315,296,'Patgram',5540,NULL,5540,'Patgram',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1316,286,'Phulbari',5260,NULL,5260,'Phulbari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1317,NULL,'Bharatkhali',5761,NULL,5761,'Phulchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1318,NULL,'Phulchhari',5760,NULL,5760,'Phulchhari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1319,353,'Pirgachha',5450,NULL,5450,'Pirgachha',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1320,NULL,'Pirganj',5110,NULL,5110,'Pirganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1321,NULL,'Pirganj',5470,NULL,5470,'Pirganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1322,289,'Nazimkhan',5611,NULL,5611,'Rajarhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1323,289,'Rajarhat',5610,NULL,5610,'Rajarhat',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1324,NULL,'Rajibpur',5650,NULL,5650,'Rajibpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1325,351,'Alamnagar',5402,NULL,5402,'Rangpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1326,351,'Mahiganj',5403,NULL,5403,'Rangpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1327,351,'Rangpur Cadet Colleg',5404,NULL,5404,'Rangpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1328,351,'Rangpur Carmiecal Col',5405,NULL,5405,'Rangpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1329,351,'Rangpur Sadar',5400,NULL,5400,'Rangpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:54'),(1330,351,'Rangpur Upa-Shahar',5401,NULL,5401,'Rangpur Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1331,NULL,'Nekmarad',5121,NULL,5121,'Rani Sankail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1332,NULL,'Rani Sankail',5120,NULL,5120,'Rani Sankail',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1333,NULL,'Roumari',5640,NULL,5640,'Roumari',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1334,NULL,'Naldanga',5711,NULL,5711,'Saadullapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1335,NULL,'Saadullapur',5710,NULL,5710,'Saadullapur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1336,NULL,'Setabganj',5216,NULL,5216,'Setabganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1337,278,'Bamandanga',5721,NULL,5721,'Sundarganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1338,278,'Sundarganj',5720,NULL,5720,'Sundarganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1339,NULL,'Syedpur',5310,NULL,5310,'Syedpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1340,NULL,'Syedpur Upashahar',5311,NULL,5311,'Syedpur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1341,355,'Taraganj',5420,NULL,5420,'Taraganj',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1342,NULL,'Tetulia',5030,NULL,5030,'Tetulia',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1343,26,'Ruhia',5103,NULL,5103,'Thakurgaon Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1344,26,'Shibganj',5102,NULL,5102,'Thakurgaon Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1345,26,'Thakurgaon Road',5101,NULL,5101,'Thakurgaon Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1346,26,'Thakurgaon Sadar',5100,NULL,5100,'Thakurgaon Sadar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1347,NULL,'Tushbhandar',5520,NULL,5520,'Tushbhandar',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1348,291,'Bazarhat',5621,NULL,5621,'Ulipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55'),(1349,291,'Ulipur',5620,NULL,5620,'Ulipur',1,NULL,'2015-05-19 21:29:27',NULL,'2015-09-13 10:41:55');
/*!40000 ALTER TABLE `sa_post_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_postoffices`
--

DROP TABLE IF EXISTS `sa_postoffices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_postoffices` (
  `POST_OFFICE_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `POST_OFFICE_ENAME` varchar(100) COLLATE utf8_croatian_ci NOT NULL COMMENT 'Post Office Name In English.',
  `POST_CODE` smallint(5) NOT NULL COMMENT 'Post Code.',
  `THANA_ID` smallint(4) NOT NULL COMMENT 'Foreign Key To THANA_ID Column Of sa_thanas Table.',
  `THANA_NAME` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ORDER_SL` smallint(5) DEFAULT NULL COMMENT 'Ascending Serial No.',
  `UD_POFFICE_ID` int(8) DEFAULT NULL COMMENT 'User Define Post Office Id.',
  `ACTIVE_FLAG` tinyint(1) DEFAULT '0' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`POST_OFFICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1245 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_postoffices`
--

LOCK TABLES `sa_postoffices` WRITE;
/*!40000 ALTER TABLE `sa_postoffices` DISABLE KEYS */;
INSERT INTO `sa_postoffices` VALUES (1,'Bagerhat Sadar',9300,187,NULL,NULL,NULL,NULL,1,'2015-11-22 23:23:40',NULL,NULL),(2,'P.C College',9301,187,NULL,NULL,NULL,NULL,1,'2015-11-22 23:24:37',NULL,NULL),(3,'Rangdia',9302,187,NULL,NULL,NULL,NULL,1,'2015-11-22 23:29:19',NULL,NULL),(4,'Chalna Ankorage',9350,542,NULL,NULL,NULL,NULL,1,'2015-11-22 23:31:50',NULL,NULL),(5,'Mongla Port',9351,542,NULL,NULL,NULL,NULL,1,'2015-11-22 23:32:10',NULL,NULL),(6,'Barabaria',9361,188,NULL,NULL,NULL,NULL,1,'2015-11-22 23:32:46',NULL,NULL),(7,'Chitalmari',9360,188,NULL,NULL,NULL,NULL,1,'2015-11-22 23:33:18',NULL,NULL),(8,'Bhanganpar Bazar',9372,189,NULL,NULL,NULL,NULL,1,'2015-11-22 23:33:48',NULL,NULL),(9,'Fakirhat',9370,189,NULL,NULL,NULL,NULL,1,'2015-11-22 23:34:12',NULL,NULL),(10,'Mansa',9371,189,NULL,NULL,NULL,NULL,1,'2015-11-22 23:34:22',NULL,NULL),(11,'Kachua',9310,190,NULL,NULL,NULL,NULL,1,'2015-11-22 23:34:45',NULL,NULL),(12,'Sonarkola',9311,190,NULL,NULL,NULL,NULL,1,'2015-11-22 23:35:06',NULL,NULL),(13,'Charkulia',9383,191,NULL,NULL,NULL,NULL,1,'2015-11-22 23:35:30',NULL,NULL),(14,'Dariala',9382,191,NULL,NULL,NULL,NULL,1,'2015-11-22 23:35:40',NULL,NULL),(15,'Kahalpur',9381,191,NULL,NULL,NULL,NULL,1,'2015-11-22 23:35:50',NULL,NULL),(16,'Mollahat',9380,191,NULL,NULL,NULL,NULL,1,'2015-11-22 23:35:58',NULL,NULL),(17,'Nagarkandi',9384,191,NULL,NULL,NULL,NULL,1,'2015-11-22 23:36:09',NULL,NULL),(18,'Pak Gangni',9385,191,NULL,NULL,NULL,NULL,1,'2015-11-22 23:36:22',NULL,NULL),(19,'Morelganj',9320,193,NULL,NULL,NULL,NULL,1,'2015-11-22 23:36:51',NULL,NULL),(20,'Sannasi Bazar',9321,193,NULL,NULL,NULL,NULL,1,'2015-11-22 23:37:02',NULL,NULL),(21,'Telisatee',9322,193,NULL,NULL,NULL,NULL,1,'2015-11-22 23:37:11',NULL,NULL),(22,'Foylahat',9341,194,NULL,NULL,NULL,NULL,1,'2015-11-22 23:37:29',NULL,NULL),(23,'Gourambha',9343,194,NULL,NULL,NULL,NULL,1,'2015-11-22 23:37:40',NULL,NULL),(24,'Rampal',9340,194,NULL,NULL,NULL,NULL,1,'2015-11-22 23:37:53',NULL,NULL),(25,'Sonatunia',9342,194,NULL,NULL,NULL,NULL,1,'2015-11-22 23:38:02',NULL,NULL),(26,'Rayenda',9330,543,NULL,NULL,NULL,NULL,1,'2015-11-22 23:38:51',NULL,NULL),(27,'Alamdanga',7210,196,NULL,NULL,NULL,NULL,1,'2015-11-22 23:40:02',NULL,NULL),(28,'Hardi',7211,196,NULL,NULL,NULL,NULL,1,'2015-11-22 23:40:20',NULL,NULL),(29,'Chuadanga Sadar',7200,197,NULL,NULL,NULL,NULL,1,'2015-11-22 23:43:28',NULL,NULL),(30,'Munshiganj',7201,197,NULL,NULL,NULL,NULL,1,'2015-11-22 23:43:42',NULL,NULL),(31,'Andulbaria',7222,41,NULL,NULL,NULL,NULL,1,'2015-11-22 23:44:48',NULL,NULL),(32,'Damurhuda',7220,41,NULL,NULL,NULL,NULL,1,'2015-11-22 23:45:01',NULL,NULL),(33,'Darshana',7221,41,NULL,NULL,NULL,NULL,1,'2015-11-22 23:45:11',NULL,NULL),(34,'Doulatganj',7230,544,NULL,NULL,NULL,NULL,1,'2015-11-22 23:46:08',NULL,NULL),(35,'Bagharpara',7470,40,NULL,NULL,NULL,NULL,1,'2015-11-22 23:46:36',NULL,NULL),(36,'Gouranagar',7471,40,NULL,NULL,NULL,NULL,1,'2015-11-22 23:46:52',NULL,NULL),(37,'Chougachha',7410,200,NULL,NULL,NULL,NULL,1,'2015-11-22 23:47:20',NULL,NULL),(38,'Basundia',7406,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:48:18',NULL,NULL),(39,'Chanchra',7402,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:48:30',NULL,NULL),(40,'Churamankathi',7407,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:48:43',NULL,NULL),(41,'Jessore Airbach',7404,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:49:03',NULL,NULL),(42,'Jessore canttonment',7403,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:49:17',NULL,NULL),(43,'Jessore Sadar',7400,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:49:27',NULL,NULL),(44,'Jessore Upa-Shahar',7401,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:49:36',NULL,NULL),(45,'Rupdia',7405,545,NULL,NULL,NULL,NULL,1,'2015-11-22 23:49:47',NULL,NULL),(46,'Jhikargachha',7420,201,NULL,NULL,NULL,NULL,1,'2015-11-22 23:50:11',NULL,NULL),(47,'Keshobpur',7450,202,NULL,NULL,NULL,NULL,1,'2015-11-22 23:50:27',NULL,NULL),(48,'Monirampur',7440,204,NULL,NULL,NULL,NULL,1,'2015-11-22 23:50:48',NULL,NULL),(49,'Bhugilhat',7462,546,NULL,NULL,NULL,NULL,1,'2015-11-22 23:51:41',NULL,NULL),(50,'Noapara',7460,546,NULL,NULL,NULL,NULL,1,'2015-11-22 23:51:51',NULL,NULL),(51,'Rajghat',7461,546,NULL,NULL,NULL,NULL,1,'2015-11-22 23:52:03',NULL,NULL),(52,'Bag Achra',7433,205,NULL,NULL,NULL,NULL,1,'2015-11-22 23:52:27',NULL,NULL),(53,'Benapole',7431,205,NULL,NULL,NULL,NULL,1,'2015-11-22 23:52:45',NULL,NULL),(54,'Jadabpur',7432,205,NULL,NULL,NULL,NULL,1,'2015-11-22 23:52:59',NULL,NULL),(55,'Sarsa',7430,205,NULL,NULL,NULL,NULL,1,'2015-11-22 23:53:15',NULL,NULL),(56,'Harinakundu',7310,206,NULL,NULL,NULL,NULL,1,'2015-11-22 23:55:29',NULL,NULL),(57,'Jinaidaha Cadet College',7301,207,NULL,NULL,NULL,NULL,1,'2015-11-22 23:56:00',NULL,NULL),(58,'Jinaidaha Sadar',7300,207,NULL,NULL,NULL,NULL,1,'2015-11-22 23:56:15',NULL,NULL),(59,'Kotchandpur',7330,209,NULL,NULL,NULL,NULL,1,'2015-11-22 23:56:39',NULL,NULL),(60,'Maheshpur',7340,210,NULL,NULL,NULL,NULL,1,'2015-11-22 23:56:59',NULL,NULL),(61,'Hatbar Bazar',7351,547,NULL,NULL,NULL,NULL,1,'2015-11-22 23:58:13',NULL,NULL),(62,'Naldanga',7350,547,NULL,NULL,NULL,NULL,1,'2015-11-22 23:58:27',NULL,NULL),(63,'Kumiradaha',7321,211,NULL,NULL,NULL,NULL,1,'2015-11-22 23:58:53',NULL,NULL),(64,'Shailakupa',7320,211,NULL,NULL,NULL,NULL,1,'2015-11-22 23:59:05',NULL,NULL),(65,'Alaipur',9240,548,NULL,NULL,NULL,NULL,1,'2015-11-23 00:00:37',NULL,NULL),(66,'Belphulia',9242,548,NULL,NULL,NULL,NULL,1,'2015-11-23 00:00:50',NULL,NULL),(67,'Rupsha',9241,548,NULL,NULL,NULL,NULL,1,'2015-11-23 00:01:02',NULL,NULL),(68,'Batiaghat',9260,212,NULL,NULL,NULL,NULL,1,'2015-11-23 00:01:19',NULL,NULL),(69,'Surkalee',9261,212,NULL,NULL,NULL,NULL,1,'2015-11-23 00:01:32',NULL,NULL),(70,'Bajua',9272,549,NULL,NULL,NULL,NULL,1,'2015-11-23 00:02:28',NULL,NULL),(71,'Chalna Bazar',9270,549,NULL,NULL,NULL,NULL,1,'2015-11-23 00:02:39',NULL,NULL),(72,'Dakup',9271,549,NULL,NULL,NULL,NULL,1,'2015-11-23 00:02:49',NULL,NULL),(73,'Nalian',9273,549,NULL,NULL,NULL,NULL,1,'2015-11-23 00:02:59',NULL,NULL),(74,'Chandni Mahal',9221,216,NULL,NULL,NULL,NULL,1,'2015-11-23 00:03:18',NULL,NULL),(75,'Digalia',9220,216,NULL,NULL,NULL,NULL,1,'2015-11-23 00:03:31',NULL,NULL),(76,'Gazirhat',9224,216,NULL,NULL,NULL,NULL,1,'2015-11-23 00:03:42',NULL,NULL),(77,'Ghoshghati',9223,216,NULL,NULL,NULL,NULL,1,'2015-11-23 00:04:42',NULL,NULL),(78,'Senhati',9222,216,NULL,NULL,NULL,NULL,1,'2015-11-23 00:04:53',NULL,NULL),(79,'Atra Shilpa Area',9207,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:05:15',NULL,NULL),(80,'BIT Khulna',9203,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:05:31',NULL,NULL),(81,'Doulatpur',9202,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:05:41',NULL,NULL),(82,'Jahanabad Canttonmen',9205,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:05:52',NULL,NULL),(83,'Khula Sadar',9100,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:06:05',NULL,NULL),(84,'Khulna G.P.O',9000,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:06:24',NULL,NULL),(85,'Khulna Shipyard',9201,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:07:08',NULL,NULL),(86,'Khulna University',9208,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:07:18',NULL,NULL),(87,'Siramani',9204,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:07:30',NULL,NULL),(88,'Sonali Jute Mills',9206,219,NULL,NULL,NULL,NULL,1,'2015-11-23 00:07:41',NULL,NULL),(89,'Amadee',9291,550,NULL,NULL,NULL,NULL,1,'2015-11-23 00:08:46',NULL,NULL),(90,'Madinabad',9290,550,NULL,NULL,NULL,NULL,1,'2015-11-23 00:08:59',NULL,NULL),(91,'Chandkhali',9284,221,NULL,NULL,NULL,NULL,1,'2015-11-23 00:09:16',NULL,NULL),(92,'Garaikhali',9285,221,NULL,NULL,NULL,NULL,1,'2015-11-23 00:09:26',NULL,NULL),(93,'Godaipur',9281,221,NULL,NULL,NULL,NULL,1,'2015-11-23 00:09:36',NULL,NULL),(94,'Kapilmoni',9282,221,NULL,NULL,NULL,NULL,1,'2015-11-23 00:09:48',NULL,NULL),(95,'Katipara',9283,221,NULL,NULL,NULL,NULL,1,'2015-11-23 00:10:01',NULL,NULL),(96,'Paikgachha',9280,221,NULL,NULL,NULL,NULL,1,'2015-11-23 00:10:13',NULL,NULL),(97,'Phultala',9210,222,NULL,NULL,NULL,NULL,1,'2015-11-23 00:10:29',NULL,NULL),(98,'Chuknagar',9252,551,NULL,NULL,NULL,NULL,1,'2015-11-23 00:11:15',NULL,NULL),(99,'Ghonabanda',9251,551,NULL,NULL,NULL,NULL,1,'2015-11-23 00:11:26',NULL,NULL),(100,'Sajiara',9250,551,NULL,NULL,NULL,NULL,1,'2015-11-23 00:11:50',NULL,NULL),(101,'Shahapur',9253,551,NULL,NULL,NULL,NULL,1,'2015-11-23 00:12:02',NULL,NULL),(102,'Pak Barasat',9231,225,NULL,NULL,NULL,NULL,1,'2015-11-23 00:12:23',NULL,NULL),(103,'Terakhada',9230,225,NULL,NULL,NULL,NULL,1,'2015-11-23 00:12:58',NULL,NULL),(104,'Allardarga',7042,226,NULL,NULL,NULL,NULL,1,'2015-11-23 00:15:52',NULL,NULL),(105,'Bheramara',7040,226,NULL,NULL,NULL,NULL,1,'2015-11-23 00:16:06',NULL,NULL),(106,'Ganges Bheramara',7041,226,NULL,NULL,NULL,NULL,1,'2015-11-23 00:16:22',NULL,NULL),(107,'Janipur',7020,552,NULL,NULL,NULL,NULL,1,'2015-11-23 00:17:10',NULL,NULL),(108,'Khoksa',7021,552,NULL,NULL,NULL,NULL,1,'2015-11-23 00:17:22',NULL,NULL),(109,'Kumarkhali',7010,229,NULL,NULL,NULL,NULL,1,'2015-11-23 00:17:44',NULL,NULL),(110,'Panti',7011,229,NULL,NULL,NULL,NULL,1,'2015-11-23 00:17:57',NULL,NULL),(111,'Islami University',7003,230,NULL,NULL,NULL,NULL,1,'2015-11-23 00:18:18',NULL,NULL),(112,'Jagati',7002,230,NULL,NULL,NULL,NULL,1,'2015-11-23 00:18:26',NULL,NULL),(113,'Kushtia Mohini',7001,230,NULL,NULL,NULL,NULL,1,'2015-11-23 00:18:38',NULL,NULL),(114,'Kustia Sadar',7000,230,NULL,NULL,NULL,NULL,1,'2015-11-23 00:18:48',NULL,NULL),(115,'Amla Sadarpur',7032,231,NULL,NULL,NULL,NULL,1,'2015-11-23 00:19:22',NULL,NULL),(116,'Mirpur',7030,231,NULL,NULL,NULL,NULL,1,'2015-11-23 00:19:38',NULL,NULL),(117,'Poradaha',7031,231,NULL,NULL,NULL,NULL,1,'2015-11-23 00:19:50',NULL,NULL),(118,'Khasmathurapur',7052,553,NULL,NULL,NULL,NULL,1,'2015-11-23 00:20:38',NULL,NULL),(119,'Rafayetpur',7050,553,NULL,NULL,NULL,NULL,1,'2015-11-23 00:20:51',NULL,NULL),(120,'Taragunia',7051,553,NULL,NULL,NULL,NULL,1,'2015-11-23 00:21:07',NULL,NULL),(121,'Arpara',7620,554,NULL,NULL,NULL,NULL,1,'2015-11-23 00:21:53',NULL,NULL),(122,'Magura Sadar',7600,232,NULL,NULL,NULL,NULL,1,'2015-11-23 00:22:10',NULL,NULL),(123,'Binodpur',7631,233,NULL,NULL,NULL,NULL,1,'2015-11-23 00:22:27',NULL,NULL),(124,'Mohammadpur',7630,233,NULL,NULL,NULL,NULL,1,'2015-11-23 00:22:37',NULL,NULL),(125,'Nahata',7632,233,NULL,NULL,NULL,NULL,1,'2015-11-23 00:23:00',NULL,NULL),(126,'Langalbadh',7611,33,NULL,NULL,NULL,NULL,1,'2015-11-23 00:23:25',NULL,NULL),(127,'Nachol',7612,33,NULL,NULL,NULL,NULL,1,'2015-11-23 00:23:34',NULL,NULL),(128,'Shripur',7610,33,NULL,NULL,NULL,NULL,1,'2015-11-23 00:23:45',NULL,NULL),(129,'Gangni',7110,235,NULL,NULL,NULL,NULL,1,'2015-11-23 00:24:21',NULL,NULL),(130,'Amjhupi',7101,237,NULL,NULL,NULL,NULL,1,'2015-11-23 00:24:43',NULL,NULL),(131,'Meherpur Sadar',7100,237,NULL,NULL,NULL,NULL,1,'2015-11-23 00:25:26',NULL,NULL),(132,'Mujib Nagar Complex',7102,237,NULL,NULL,NULL,NULL,1,'2015-11-23 00:25:41',NULL,NULL),(133,'Kalia',7520,238,NULL,NULL,NULL,NULL,1,'2015-11-23 00:26:10',NULL,NULL),(134,'Baradia',7514,555,NULL,NULL,NULL,NULL,1,'2015-11-23 00:26:59',NULL,NULL),(135,'Itna',7512,555,NULL,NULL,NULL,NULL,1,'2015-11-23 00:27:17',NULL,NULL),(136,'Laxmipasha',7510,555,NULL,NULL,NULL,NULL,1,'2015-11-23 00:27:26',NULL,NULL),(137,'Lohagora',7511,555,NULL,NULL,NULL,NULL,1,'2015-11-23 00:27:40',NULL,NULL),(138,'Naldi',7513,555,NULL,NULL,NULL,NULL,1,'2015-11-23 00:27:49',NULL,NULL),(139,'Mohajan',7521,556,NULL,NULL,NULL,NULL,1,'2015-11-23 00:28:23',NULL,NULL),(140,'Narail Sadar',7500,240,NULL,NULL,NULL,NULL,1,'2015-11-23 00:28:50',NULL,NULL),(141,'Ratanganj',7501,240,NULL,NULL,NULL,NULL,1,'2015-11-23 00:29:01',NULL,NULL),(142,'Ashashuni',9460,241,NULL,NULL,NULL,NULL,1,'2015-11-23 00:29:32',NULL,NULL),(143,'Baradal',9461,241,NULL,NULL,NULL,NULL,1,'2015-11-23 00:29:43',NULL,NULL),(144,'Debbhata',9430,242,NULL,NULL,NULL,NULL,1,'2015-11-23 00:30:01',NULL,NULL),(145,'Gurugram',9431,242,NULL,NULL,NULL,NULL,1,'2015-11-23 00:30:11',NULL,NULL),(146,'Chandanpur',9415,243,NULL,NULL,NULL,NULL,1,'2015-11-23 00:30:36',NULL,NULL),(147,'Hamidpur',9413,243,NULL,NULL,NULL,NULL,1,'2015-11-23 00:30:47',NULL,NULL),(148,'Jhaudanga',9412,243,NULL,NULL,NULL,NULL,1,'2015-11-23 00:30:56',NULL,NULL),(149,'kalaroa',9410,243,NULL,NULL,NULL,NULL,1,'2015-11-23 00:31:08',NULL,NULL),(150,'Khordo',9414,243,NULL,NULL,NULL,NULL,1,'2015-11-23 00:31:19',NULL,NULL),(151,'Murarikati',9411,243,NULL,NULL,NULL,NULL,1,'2015-11-23 00:31:32',NULL,NULL),(152,'Kaliganj UPO',9440,244,NULL,NULL,NULL,NULL,1,'2015-11-23 00:31:47',NULL,NULL),(153,'Nalta Mubaroknagar',9441,244,NULL,NULL,NULL,NULL,1,'2015-11-23 00:32:01',NULL,NULL),(154,'Ratanpur',9442,244,NULL,NULL,NULL,NULL,1,'2015-11-23 00:32:12',NULL,NULL),(155,'Buri Goalini',9453,557,NULL,NULL,NULL,NULL,1,'2015-11-23 00:32:52',NULL,NULL),(156,'Gabura',9454,557,NULL,NULL,NULL,NULL,1,'2015-11-23 00:33:01',NULL,NULL),(157,'Habinagar',9455,557,NULL,NULL,NULL,NULL,1,'2015-11-23 00:33:13',NULL,NULL),(158,'Nakipur',9450,557,NULL,NULL,NULL,NULL,1,'2015-11-23 00:33:21',NULL,NULL),(159,'Naobeki',9452,557,NULL,NULL,NULL,NULL,1,'2015-11-23 00:33:32',NULL,NULL),(160,'Noornagar',9451,557,NULL,NULL,NULL,NULL,1,'2015-11-23 00:33:48',NULL,NULL),(161,'Budhhat',9403,245,NULL,NULL,NULL,NULL,1,'2015-11-23 00:34:04',NULL,NULL),(162,'Gunakar kati',9402,245,NULL,NULL,NULL,NULL,1,'2015-11-23 00:34:13',NULL,NULL),(163,'Satkhira Islamia Acc',9401,245,NULL,NULL,NULL,NULL,1,'2015-11-23 00:34:24',NULL,NULL),(164,'Satkhira Sadar',9400,245,NULL,NULL,NULL,NULL,1,'2015-11-23 00:34:45',NULL,NULL),(165,'Patkelghata',9421,247,NULL,NULL,NULL,NULL,1,'2015-11-23 00:35:10',NULL,NULL),(166,'Taala',9420,247,NULL,NULL,NULL,NULL,1,'2015-11-23 00:35:21',NULL,NULL),(167,'Demra',1360,419,NULL,NULL,NULL,NULL,1,'2015-11-23 00:36:58',NULL,NULL),(168,'Matuail',1362,419,NULL,NULL,NULL,NULL,1,'2015-11-23 00:37:10',NULL,NULL),(169,'Sarulia',1361,419,NULL,NULL,NULL,NULL,1,'2015-11-23 00:37:19',NULL,NULL),(170,'Dhaka Cantonment TSO',1206,417,NULL,NULL,NULL,NULL,1,'2015-11-23 00:37:52',NULL,NULL),(171,'Dhamrai',1350,420,NULL,NULL,NULL,NULL,1,'2015-11-23 00:38:37',NULL,NULL),(172,'Kamalpur',1351,420,NULL,NULL,NULL,NULL,1,'2015-11-23 00:38:49',NULL,NULL),(173,'Jigatala TSO',1209,421,NULL,NULL,NULL,NULL,1,'2015-11-23 00:39:08',NULL,NULL),(174,'Banani TSO',1213,423,NULL,NULL,NULL,NULL,1,'2015-11-23 00:39:31',NULL,NULL),(175,'Gulshan Model Town',1212,423,NULL,NULL,NULL,NULL,1,'2015-11-23 00:39:42',NULL,NULL),(176,'Dhania TSO',1232,425,NULL,NULL,NULL,NULL,1,'2015-11-23 00:40:00',NULL,NULL),(177,'Joypara',1330,558,NULL,NULL,NULL,NULL,1,'2015-11-23 00:40:51',NULL,NULL),(178,'Narisha',1332,558,NULL,NULL,NULL,NULL,1,'2015-11-23 00:41:02',NULL,NULL),(179,'Palamganj',1331,558,NULL,NULL,NULL,NULL,1,'2015-11-23 00:41:12',NULL,NULL),(180,'Ati',1312,430,NULL,NULL,NULL,NULL,1,'2015-11-23 00:41:30',NULL,NULL),(181,'Dhaka Jute Mills',1311,430,NULL,NULL,NULL,NULL,1,'2015-11-23 00:41:40',NULL,NULL),(182,'Kalatia',1313,430,NULL,NULL,NULL,NULL,1,'2015-11-23 00:41:50',NULL,NULL),(183,'Keraniganj',1310,430,NULL,NULL,NULL,NULL,1,'2015-11-23 00:41:59',NULL,NULL),(184,'Khilgaon TSO',1219,428,NULL,NULL,NULL,NULL,1,'2015-11-23 00:43:04',NULL,NULL),(185,'KhilkhetTSO',1229,429,NULL,NULL,NULL,NULL,1,'2015-11-23 00:43:21',NULL,NULL),(186,'Posta TSO',1211,432,NULL,NULL,NULL,NULL,1,'2015-11-23 00:43:37',NULL,NULL),(187,'Mirpur TSO',1216,433,NULL,NULL,NULL,NULL,1,'2015-11-23 00:43:50',NULL,NULL),(188,'Mohammadpur Housing',1207,434,NULL,NULL,NULL,NULL,1,'2015-11-23 00:44:01',NULL,NULL),(189,'Sangsad BhabanTSO',1225,434,NULL,NULL,NULL,NULL,1,'2015-11-23 00:44:14',NULL,NULL),(190,'BangabhabanTSO',1222,435,NULL,NULL,NULL,NULL,1,'2015-11-23 00:44:37',NULL,NULL),(191,'DilkushaTSO',1223,435,NULL,NULL,NULL,NULL,1,'2015-11-23 00:44:50',NULL,NULL),(192,'Agla',1323,436,NULL,NULL,NULL,NULL,1,'2015-11-23 00:45:12',NULL,NULL),(193,'Churain',1325,436,NULL,NULL,NULL,NULL,1,'2015-11-23 02:12:30',NULL,NULL),(194,'Daudpur',1322,436,NULL,NULL,NULL,NULL,1,'2015-11-23 02:12:47',NULL,NULL),(195,'Hasnabad',1321,436,NULL,NULL,NULL,NULL,1,'2015-11-23 02:12:58',NULL,NULL),(196,'Khalpar',1324,436,NULL,NULL,NULL,NULL,1,'2015-11-23 02:13:12',NULL,NULL),(197,'Nawabganj',1320,436,NULL,NULL,NULL,NULL,1,'2015-11-23 02:13:21',NULL,NULL),(198,'New Market TSO',1205,43,NULL,NULL,NULL,NULL,1,'2015-11-23 02:13:56',NULL,NULL),(199,'Dhaka GPO',1000,42,NULL,NULL,NULL,NULL,1,'2015-11-23 02:14:19',NULL,NULL),(200,'Shantinagr TSO',1217,68,NULL,NULL,NULL,NULL,1,'2015-11-23 02:14:36',NULL,NULL),(201,'Basabo TSO',1214,69,NULL,NULL,NULL,NULL,1,'2015-11-23 02:14:49',NULL,NULL),(202,'Amin Bazar',1348,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:15:07',NULL,NULL),(203,'Dairy Farm',1341,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:15:16',NULL,NULL),(204,'EPZ',1349,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:15:28',NULL,NULL),(205,'Jahangirnagar Univer',1342,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:15:37',NULL,NULL),(206,'Kashem Cotton Mills',1346,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:15:49',NULL,NULL),(207,'Rajphulbaria',1347,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:16:01',NULL,NULL),(208,'Savar',1340,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:16:33',NULL,NULL),(209,'Savar Canttonment',1344,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:16:42',NULL,NULL),(210,'Saver P.A.T.C',1343,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:16:51',NULL,NULL),(211,'Shimulia',1345,70,NULL,NULL,NULL,NULL,1,'2015-11-23 02:17:01',NULL,NULL),(212,'Dhaka Sadar HO',1100,74,NULL,NULL,NULL,NULL,1,'2015-11-23 02:17:22',NULL,NULL),(213,'Gendaria TSO',1204,74,NULL,NULL,NULL,NULL,1,'2015-11-23 02:17:35',NULL,NULL),(214,'Wari TSO',1203,74,NULL,NULL,NULL,NULL,1,'2015-11-23 02:17:45',NULL,NULL),(215,'Tejgaon TSO',1215,75,NULL,NULL,NULL,NULL,1,'2015-11-23 02:18:01',NULL,NULL),(216,'Dhaka Politechnic',1208,76,NULL,NULL,NULL,NULL,1,'2015-11-23 02:18:34',NULL,NULL),(217,'Uttara Model TwonTSO',1230,78,NULL,NULL,NULL,NULL,1,'2015-11-23 02:18:51',NULL,NULL),(218,'Alfadanga',7870,80,NULL,NULL,NULL,NULL,1,'2015-11-23 02:19:19',NULL,NULL),(219,'Bhanga',7830,81,NULL,NULL,NULL,NULL,1,'2015-11-23 02:19:36',NULL,NULL),(220,'Boalmari',7860,38,NULL,NULL,NULL,NULL,1,'2015-11-23 02:19:49',NULL,NULL),(221,'Rupatpat',7861,38,NULL,NULL,NULL,NULL,1,'2015-11-23 02:20:02',NULL,NULL),(222,'Charbadrashan',7810,82,NULL,NULL,NULL,NULL,1,'2015-11-23 02:20:13',NULL,NULL),(223,'Ambikapur',7802,83,NULL,NULL,NULL,NULL,1,'2015-11-23 02:20:27',NULL,NULL),(224,'Baitulaman Politecni',7803,83,NULL,NULL,NULL,NULL,1,'2015-11-23 02:20:36',NULL,NULL),(225,'Faridpur Sadar',7800,83,NULL,NULL,NULL,NULL,1,'2015-11-23 02:20:53',NULL,NULL),(226,'Kanaipur',7801,83,NULL,NULL,NULL,NULL,1,'2015-11-23 02:21:05',NULL,NULL),(227,'Kamarkali',7851,84,NULL,NULL,NULL,NULL,1,'2015-11-23 02:21:19',NULL,NULL),(228,'Madukhali',7850,84,NULL,NULL,NULL,NULL,1,'2015-11-23 02:21:30',NULL,NULL),(229,'Nagarkanda',7840,16,NULL,NULL,NULL,NULL,1,'2015-11-23 02:21:46',NULL,NULL),(230,'Talma',7841,16,NULL,NULL,NULL,NULL,1,'2015-11-23 02:21:58',NULL,NULL),(231,'Bishwa jaker Manjil',7822,85,NULL,NULL,NULL,NULL,1,'2015-11-23 02:22:17',NULL,NULL),(232,'Hat Krishapur',7821,85,NULL,NULL,NULL,NULL,1,'2015-11-23 02:22:29',NULL,NULL),(233,'Sadarpur',7820,85,NULL,NULL,NULL,NULL,1,'2015-11-23 02:22:41',NULL,NULL),(234,'Shriangan',7804,559,NULL,NULL,NULL,NULL,1,'2015-11-23 02:23:28',NULL,NULL),(235,'B.O.F',1703,86,NULL,NULL,NULL,NULL,1,'2015-11-23 02:23:44',NULL,NULL),(236,'B.R.R',1701,86,NULL,NULL,NULL,NULL,1,'2015-11-23 02:23:54',NULL,NULL),(237,'Chandna',1702,86,NULL,NULL,NULL,NULL,1,'2015-11-23 02:24:03',NULL,NULL),(238,'Gazipur Sadar',1700,86,NULL,NULL,NULL,NULL,1,'2015-11-23 02:24:12',NULL,NULL),(239,'National University',1704,86,NULL,NULL,NULL,NULL,1,'2015-11-23 02:24:21',NULL,NULL),(240,'Kaliakaar',1705,87,NULL,NULL,NULL,NULL,1,'2015-11-23 02:24:31',NULL,NULL),(241,'Safipur',1751,87,NULL,NULL,NULL,NULL,1,'2015-11-23 02:24:43',NULL,NULL),(242,'Kaliganj',1720,88,NULL,NULL,NULL,NULL,1,'2015-11-23 02:24:58',NULL,NULL),(243,'Pubail',1721,88,NULL,NULL,NULL,NULL,1,'2015-11-23 02:25:07',NULL,NULL),(244,'Santanpara',1722,88,NULL,NULL,NULL,NULL,1,'2015-11-23 02:25:18',NULL,NULL),(245,'Vaoal Jamalpur',1723,88,NULL,NULL,NULL,NULL,1,'2015-11-23 02:25:28',NULL,NULL),(246,'kapashia',1730,89,NULL,NULL,NULL,NULL,1,'2015-11-23 02:25:48',NULL,NULL),(247,'Ershad Nagar',1712,560,NULL,NULL,NULL,NULL,1,'2015-11-23 02:26:31',NULL,NULL),(248,'Monnunagar',1710,560,NULL,NULL,NULL,NULL,1,'2015-11-23 02:26:41',NULL,NULL),(249,'Nishat Nagar',1711,560,NULL,NULL,NULL,1,1,'2015-11-23 02:26:55',NULL,NULL),(250,'Barmi',1743,90,NULL,NULL,NULL,1,1,'2015-11-23 02:27:17',NULL,NULL),(251,'Bashamur',1747,90,NULL,NULL,NULL,1,1,'2015-11-23 02:27:26',NULL,NULL),(252,'Boubi',1748,90,NULL,NULL,NULL,1,1,'2015-11-23 02:27:34',NULL,NULL),(253,'Kawraid',1745,90,NULL,NULL,NULL,1,1,'2015-11-23 02:27:43',NULL,NULL),(254,'Satkhamair',1744,90,NULL,NULL,NULL,1,1,'2015-11-23 02:27:54',NULL,NULL),(255,'Sreepur',1740,90,NULL,NULL,NULL,1,1,'2015-11-23 02:28:07',NULL,NULL),(256,'Rajendrapur',1741,90,NULL,NULL,NULL,1,1,'2015-11-23 02:28:32',NULL,NULL),(257,'Rajendrapur Canttome',1742,90,NULL,NULL,NULL,1,1,'2015-11-23 02:28:41',NULL,NULL),(258,'Barfa',8102,91,NULL,NULL,NULL,1,1,'2015-11-23 02:29:04',NULL,NULL),(259,'Chandradighalia',8013,91,NULL,NULL,NULL,1,1,'2015-11-23 02:29:18',NULL,NULL),(260,'Gopalganj Sadar',8100,91,NULL,NULL,NULL,1,1,'2015-11-23 02:29:29',NULL,NULL),(261,'Ulpur',8101,91,NULL,NULL,NULL,1,1,'2015-11-23 02:29:41',NULL,NULL),(262,'Jonapur',8133,92,NULL,NULL,NULL,1,1,'2015-11-23 02:31:00',NULL,NULL),(263,'Kashiani',8130,92,NULL,NULL,NULL,1,1,'2015-11-23 02:31:12',NULL,NULL),(264,'Ramdia College',8131,92,NULL,NULL,NULL,1,1,'2015-11-23 02:31:22',NULL,NULL),(265,'Ratoil',8132,92,NULL,NULL,NULL,1,1,'2015-11-23 02:31:34',NULL,NULL),(266,'Kotalipara',8110,93,NULL,NULL,NULL,1,1,'2015-11-23 02:32:05',NULL,NULL),(267,'Batkiamari',8141,94,NULL,NULL,NULL,1,1,'2015-11-23 02:32:20',NULL,NULL),(268,'Khandarpara',8142,94,NULL,NULL,NULL,1,1,'2015-11-23 02:32:32',NULL,NULL),(269,'Maksudpur',8140,94,NULL,NULL,NULL,1,1,'2015-11-23 02:32:41',NULL,NULL),(270,'Patgati',8121,95,NULL,NULL,NULL,1,1,'2015-11-23 02:32:59',NULL,NULL),(271,'Tungipara',8120,95,NULL,NULL,NULL,1,1,'2015-11-23 02:33:08',NULL,NULL),(272,'Dewangonj',2030,97,NULL,NULL,NULL,1,1,'2015-11-23 02:33:34',NULL,NULL),(273,'Dewangonj S. Mills',2031,97,NULL,NULL,NULL,1,1,'2015-11-23 02:33:43',NULL,NULL),(274,'Durmoot',2021,98,NULL,NULL,NULL,1,1,'2015-11-23 02:34:01',NULL,NULL),(275,'Gilabari',2022,98,NULL,NULL,NULL,1,1,'2015-11-23 02:34:12',NULL,NULL),(276,'Islampur',2020,98,NULL,NULL,NULL,1,1,'2015-11-23 02:34:23',NULL,NULL),(277,'Jamalpur',2000,99,NULL,NULL,NULL,1,1,'2015-11-23 02:34:47',NULL,NULL),(278,'Nandina',2001,99,NULL,NULL,NULL,1,1,'2015-11-23 02:35:01',NULL,NULL),(279,'Narundi',2002,99,NULL,NULL,NULL,1,1,'2015-11-23 02:35:10',NULL,NULL),(280,'Mahmoodpur',2013,101,NULL,NULL,NULL,1,1,'2015-11-23 02:35:43',NULL,NULL),(281,'Malancha',2012,101,NULL,NULL,NULL,1,1,'2015-11-23 02:35:52',NULL,NULL),(282,'Malandah',2010,101,NULL,NULL,NULL,1,1,'2015-11-23 02:36:10',NULL,NULL),(283,'Balijhuri',2041,100,NULL,NULL,NULL,1,1,'2015-11-23 02:36:34',NULL,NULL),(284,'Mathargonj',2040,100,NULL,NULL,NULL,1,1,'2015-11-23 02:36:46',NULL,NULL),(285,'Bausee',2052,102,NULL,NULL,NULL,1,1,'2015-11-23 02:37:03',NULL,NULL),(286,'Gunerbari',2051,102,NULL,NULL,NULL,1,1,'2015-11-23 02:37:10',NULL,NULL),(287,'Jagannath Ghat',2053,102,NULL,NULL,NULL,1,1,'2015-11-23 02:37:21',NULL,NULL),(288,'Jamuna Sar Karkhana',2055,102,NULL,NULL,NULL,1,1,'2015-11-23 02:37:34',NULL,NULL),(289,'Pingna',2054,102,NULL,NULL,NULL,1,1,'2015-11-23 02:37:55',NULL,NULL),(290,'Shorishabari',2050,102,NULL,NULL,NULL,1,1,'2015-11-23 02:38:32',NULL,NULL),(291,'Bajitpur',2336,104,NULL,NULL,NULL,1,1,'2015-11-23 02:55:30',NULL,NULL),(292,'Laksmipur',2338,104,NULL,NULL,NULL,1,1,'2015-11-23 02:55:47',NULL,NULL),(293,'Sararchar',2337,104,NULL,NULL,NULL,1,1,'2015-11-23 02:56:00',NULL,NULL),(294,'Bhairab',2350,105,NULL,NULL,NULL,1,1,'2015-11-23 02:56:19',NULL,NULL),(295,'Hossenpur',2320,17,NULL,NULL,NULL,1,1,'2015-11-23 02:56:39',NULL,NULL),(296,'Karimganj',2310,107,NULL,NULL,NULL,1,1,'2015-11-23 02:57:06',NULL,NULL),(297,'Gochhihata',2331,108,NULL,NULL,NULL,1,1,'2015-11-23 02:57:23',NULL,NULL),(298,'Katiadi',2330,108,NULL,NULL,NULL,1,1,'2015-11-23 02:57:31',NULL,NULL),(299,'Kishoreganj S.Mills',2301,109,NULL,NULL,NULL,1,1,'2015-11-23 02:57:45',NULL,NULL),(300,'Kishoreganj Sadar',2300,109,NULL,NULL,NULL,1,1,'2015-11-23 02:57:55',NULL,NULL),(301,'Maizhati',2302,109,NULL,NULL,NULL,1,1,'2015-11-23 02:58:08',NULL,NULL),(302,'Nilganj',2303,109,NULL,NULL,NULL,1,1,'2015-11-23 02:58:37',NULL,NULL),(303,'Chhoysuti',2341,110,NULL,NULL,NULL,1,1,'2015-11-23 03:12:07',NULL,NULL),(304,'Kuliarchar',2340,110,NULL,NULL,NULL,1,1,'2015-11-23 03:12:16',NULL,NULL),(305,'Abdullahpur',2371,111,NULL,NULL,NULL,1,1,'2015-11-23 03:12:43',NULL,NULL),(306,'MIthamoin',2370,111,NULL,NULL,NULL,1,1,'2015-11-23 03:12:52',NULL,NULL),(307,'Nikli',2360,112,NULL,NULL,NULL,1,1,'2015-11-23 03:13:59',NULL,NULL),(308,'Ostagram',2380,103,NULL,NULL,NULL,1,1,'2015-11-23 03:14:15',NULL,NULL),(309,'Pakundia',2326,113,NULL,NULL,NULL,1,1,'2015-11-23 03:14:29',NULL,NULL),(310,'Tarial',2316,114,NULL,NULL,NULL,1,1,'2015-11-23 03:14:42',NULL,NULL),(311,'Bahadurpur',7932,561,NULL,NULL,NULL,1,1,'2015-11-23 03:16:01',NULL,NULL),(312,'Barhamganj',7930,561,NULL,NULL,NULL,1,1,'2015-11-23 03:16:12',NULL,NULL),(313,'Nilaksmibandar',7931,561,NULL,NULL,NULL,1,1,'2015-11-23 03:16:22',NULL,NULL),(314,'Umedpur',7933,561,NULL,NULL,NULL,1,1,'2015-11-23 03:16:32',NULL,NULL),(315,'Kalkini',7920,115,NULL,NULL,NULL,1,1,'2015-11-23 03:16:46',NULL,NULL),(316,'Sahabrampur',7921,115,NULL,NULL,NULL,1,1,'2015-11-23 03:17:01',NULL,NULL),(317,'Charmugria',7901,116,NULL,NULL,NULL,1,1,'2015-11-23 03:17:21',NULL,NULL),(318,'Habiganj',7903,116,NULL,NULL,NULL,1,1,'2015-11-23 03:17:29',NULL,NULL),(319,'Kulpaddi',7902,116,NULL,NULL,NULL,1,1,'2015-11-23 03:17:38',NULL,NULL),(320,'Madaripur Sadar',7900,116,NULL,NULL,NULL,1,1,'2015-11-23 03:17:54',NULL,NULL),(321,'Mustafapur',7904,116,NULL,NULL,NULL,1,1,'2015-11-23 03:18:05',NULL,NULL),(322,'Khalia',7911,117,NULL,NULL,NULL,1,1,'2015-11-23 03:18:17',NULL,NULL),(323,'Rajoir',7910,117,NULL,NULL,NULL,1,1,'2015-11-23 03:18:25',NULL,NULL),(324,'Gheor',1840,120,NULL,NULL,NULL,1,1,'2015-11-23 03:19:50',NULL,NULL),(325,'Jhitka',1831,563,NULL,NULL,NULL,1,1,'2015-11-23 03:20:41',NULL,NULL),(326,'Lechhraganj',1830,563,NULL,NULL,NULL,1,1,'2015-11-23 03:20:51',NULL,NULL),(327,'Barangail',1804,122,NULL,NULL,NULL,1,1,'2015-11-23 03:21:06',NULL,NULL),(328,'Gorpara',1802,122,NULL,NULL,NULL,1,1,'2015-11-23 03:21:21',NULL,NULL),(329,'Mahadebpur',1803,122,NULL,NULL,NULL,1,1,'2015-11-23 03:21:31',NULL,NULL),(330,'Manikganj Bazar',1801,122,NULL,NULL,NULL,1,1,'2015-11-23 03:21:42',NULL,NULL),(331,'Manikganj Sadar',1800,122,NULL,NULL,NULL,1,1,'2015-11-23 03:21:51',NULL,NULL),(332,'Baliati',1811,123,NULL,NULL,NULL,1,1,'2015-11-23 03:22:07',NULL,NULL),(333,'Saturia',1810,123,NULL,NULL,NULL,1,1,'2015-11-23 03:22:18',NULL,NULL),(334,'Aricha',1851,124,NULL,NULL,NULL,1,1,'2015-11-23 03:22:37',NULL,NULL),(335,'Shibaloy',1850,124,NULL,NULL,NULL,1,1,'2015-11-23 03:41:13',NULL,NULL),(336,'Tewta',1852,124,NULL,NULL,NULL,1,1,'2015-11-23 03:41:27',NULL,NULL),(337,'Uthli',1853,124,NULL,NULL,NULL,1,1,'2015-11-23 03:41:41',NULL,NULL),(338,'Baira',1821,125,NULL,NULL,NULL,1,1,'2015-11-23 03:42:15',NULL,NULL),(339,'joymantop',1822,125,NULL,NULL,NULL,1,1,'2015-11-23 03:42:27',NULL,NULL),(340,'Singair',1820,125,NULL,NULL,NULL,1,1,'2015-11-23 03:42:45',NULL,NULL),(341,'Gajaria',1510,126,NULL,NULL,NULL,1,1,'2015-11-23 03:43:20',NULL,NULL),(342,'Hossendi',1511,126,NULL,NULL,NULL,1,1,'2015-11-23 03:43:36',NULL,NULL),(343,'Rasulpur',1512,126,NULL,NULL,NULL,1,1,'2015-11-23 03:43:51',NULL,NULL),(344,'Gouragonj',1334,18,NULL,NULL,NULL,1,1,'2015-11-23 03:44:08',NULL,NULL),(345,'Haldia SO',1532,18,NULL,NULL,NULL,1,1,'2015-11-23 03:44:30',NULL,NULL),(346,'Haridia',1333,18,NULL,NULL,NULL,1,1,'2015-11-23 03:44:43',NULL,NULL),(347,'Haridia DESO',1533,18,NULL,NULL,NULL,1,1,'2015-11-23 03:44:55',NULL,NULL),(348,'Korhati',1531,18,NULL,NULL,NULL,1,1,'2015-11-23 03:45:05',NULL,NULL),(349,'Lohajang',1530,18,NULL,NULL,NULL,1,1,'2015-11-23 03:45:19',NULL,NULL),(350,'Madini Mandal',1335,18,NULL,NULL,NULL,1,1,'2015-11-23 03:45:37',NULL,NULL),(351,'Medini Mandal EDSO',1535,18,NULL,NULL,NULL,1,1,'2015-11-23 03:45:53',NULL,NULL),(352,'Kathakhali',1503,127,NULL,NULL,NULL,1,1,'2015-11-23 03:46:04',NULL,NULL),(353,'Mirkadim',1502,127,NULL,NULL,NULL,1,1,'2015-11-23 03:46:13',NULL,NULL),(354,'Munshiganj Sadar',1500,127,NULL,NULL,NULL,1,1,'2015-11-23 03:46:22',NULL,NULL),(355,'Rikabibazar',1501,127,NULL,NULL,NULL,1,1,'2015-11-23 03:46:33',NULL,NULL),(356,'Ichapur',1542,128,NULL,NULL,NULL,1,1,'2015-11-23 03:46:53',NULL,NULL),(357,'Kola',1541,128,NULL,NULL,NULL,1,1,'2015-11-23 03:47:04',NULL,NULL),(358,'Malkha Nagar',1543,128,NULL,NULL,NULL,1,1,'2015-11-23 03:47:17',NULL,NULL),(359,'Shekher Nagar',1544,128,NULL,NULL,NULL,1,1,'2015-11-23 03:47:29',NULL,NULL),(360,'Sirajdikhan',1540,128,NULL,NULL,NULL,1,1,'2015-11-23 03:47:38',NULL,NULL),(361,'Baghra',1557,129,NULL,NULL,NULL,1,1,'2015-11-23 03:47:53',NULL,NULL),(362,'Barikhal',1551,129,NULL,NULL,NULL,1,1,'2015-11-23 03:48:01',NULL,NULL),(363,'Bhaggyakul',1558,129,NULL,NULL,NULL,1,1,'2015-11-23 03:48:12',NULL,NULL),(364,'Hashara',1553,129,NULL,NULL,NULL,1,1,'2015-11-23 03:48:22',NULL,NULL),(365,'Kolapara',1554,129,NULL,NULL,NULL,1,1,'2015-11-23 03:48:31',NULL,NULL),(366,'Kumarbhog',1555,129,NULL,NULL,NULL,1,1,'2015-11-23 03:48:43',NULL,NULL),(367,'Mazpara',1552,129,NULL,NULL,NULL,1,1,'2015-11-23 03:48:54',NULL,NULL),(368,'Srinagar',1550,129,NULL,NULL,NULL,1,1,'2015-11-23 03:49:04',NULL,NULL),(369,'Vaggyakul SO',1556,129,NULL,NULL,NULL,1,1,'2015-11-23 03:49:19',NULL,NULL),(370,'Bajrajugini',1523,130,NULL,NULL,NULL,1,1,'2015-11-23 03:49:37',NULL,NULL),(371,'Baligao',1522,130,NULL,NULL,NULL,1,1,'2015-11-23 03:49:48',NULL,NULL),(372,'Betkahat',1521,130,NULL,NULL,NULL,1,1,'2015-11-23 03:49:58',NULL,NULL),(373,'Dighirpar',1525,130,NULL,NULL,NULL,1,1,'2015-11-23 03:50:05',NULL,NULL),(374,'Hasail',1524,130,NULL,NULL,NULL,1,1,'2015-11-23 03:50:14',NULL,NULL),(375,'Pura',1527,130,NULL,NULL,NULL,1,1,'2015-11-23 03:50:23',NULL,NULL),(376,'Pura EDSO',1526,130,NULL,NULL,NULL,1,1,'2015-11-23 03:50:31',NULL,NULL),(377,'Tangibari',1520,130,NULL,NULL,NULL,1,1,'2015-11-23 03:50:41',NULL,NULL),(378,'Bhaluka',2240,131,NULL,NULL,NULL,1,1,'2015-11-23 03:51:05',NULL,NULL),(379,'Fulbaria',2216,133,NULL,NULL,NULL,1,1,'2015-11-23 04:29:24',NULL,NULL),(380,'Duttarbazar',2234,134,NULL,NULL,NULL,1,1,'2015-11-23 04:29:46',NULL,NULL),(381,'Gaforgaon',2230,134,NULL,NULL,NULL,1,1,'2015-11-23 04:29:56',NULL,NULL),(382,'Kandipara',2233,134,NULL,NULL,NULL,1,1,'2015-11-23 04:30:05',NULL,NULL),(383,'Shibganj',2231,134,NULL,NULL,NULL,1,1,'2015-11-23 04:30:22',NULL,NULL),(384,'Usti',2232,134,NULL,NULL,NULL,1,1,'2015-11-23 04:32:18',NULL,NULL),(385,'Gouripur',2270,135,NULL,NULL,NULL,1,1,'2015-11-23 04:32:34',NULL,NULL),(386,'Ramgopalpur',2271,135,NULL,NULL,NULL,1,1,'2015-11-23 04:32:46',NULL,NULL),(387,'Dhara',2261,39,NULL,NULL,NULL,1,1,'2015-11-23 04:33:00',NULL,NULL),(388,'Haluaghat',2260,39,NULL,NULL,NULL,1,1,'2015-11-23 04:33:11',NULL,NULL),(389,'Munshirhat',2262,39,NULL,NULL,NULL,1,1,'2015-11-23 04:33:23',NULL,NULL),(390,'Atharabari',2282,136,NULL,NULL,NULL,1,1,'2015-11-23 04:33:43',NULL,NULL),(391,'Isshwargonj',2280,136,NULL,NULL,NULL,1,1,'2015-11-23 04:33:51',NULL,NULL),(392,'Sohagi',2281,136,NULL,NULL,NULL,1,1,'2015-11-23 04:34:06',NULL,NULL),(393,'Muktagachha',2210,138,NULL,NULL,NULL,1,1,'2015-11-23 04:34:19',NULL,NULL),(394,'Agriculture Universi',2202,137,NULL,NULL,NULL,1,1,'2015-11-23 04:34:33',NULL,NULL),(395,'Biddyaganj',2204,137,NULL,NULL,NULL,1,1,'2015-11-23 04:34:42',NULL,NULL),(396,'Kawatkhali',2201,137,NULL,NULL,NULL,1,1,'2015-11-23 04:34:50',NULL,NULL),(397,'Mymensingh Sadar',2200,137,NULL,NULL,NULL,1,1,'2015-11-23 04:34:58',NULL,NULL),(398,'Pearpur',2205,137,NULL,NULL,NULL,1,1,'2015-11-23 04:35:07',NULL,NULL),(399,'Shombhuganj',2203,137,NULL,NULL,NULL,1,1,'2015-11-23 04:35:18',NULL,NULL),(400,'Gangail',2291,139,NULL,NULL,NULL,1,1,'2015-11-23 04:35:32',NULL,NULL),(401,'Nandail',2290,139,NULL,NULL,NULL,1,1,'2015-11-23 04:35:41',NULL,NULL),(402,'Beltia',2251,139,NULL,NULL,NULL,1,1,'2015-11-23 04:38:07',NULL,NULL),(403,'Phulpur',2250,140,NULL,NULL,NULL,1,1,'2015-11-23 04:46:51',NULL,NULL),(404,'Tarakanda',2252,140,NULL,NULL,NULL,1,1,'2015-11-23 04:47:43',NULL,NULL),(405,'Ahmadbad',2221,141,NULL,NULL,NULL,1,1,'2015-11-23 04:48:05',NULL,NULL),(406,'Dhala',2223,141,NULL,NULL,NULL,1,1,'2015-11-23 04:48:20',NULL,NULL),(407,'Ram Amritaganj',2222,141,NULL,NULL,NULL,1,1,'2015-11-23 04:48:29',NULL,NULL),(408,'Trishal',2220,141,NULL,NULL,NULL,1,1,'2015-11-23 04:48:40',NULL,NULL),(409,'Araihazar',1450,142,NULL,NULL,NULL,1,1,'2015-11-23 04:49:06',NULL,NULL),(410,'Gopaldi',1451,142,NULL,NULL,NULL,1,1,'2015-11-23 04:49:15',NULL,NULL),(411,'Baidder Bazar',1440,564,NULL,NULL,NULL,1,1,'2015-11-23 04:49:50',NULL,NULL),(412,'Bara Nagar',1441,564,NULL,NULL,NULL,1,1,'2015-11-23 04:50:00',NULL,NULL),(413,'Barodi',1442,564,NULL,NULL,NULL,1,1,'2015-11-23 04:50:10',NULL,NULL),(414,'Bandar',1410,144,NULL,NULL,NULL,1,1,'2015-11-23 04:50:24',NULL,NULL),(415,'BIDS',1413,144,NULL,NULL,NULL,1,1,'2015-11-23 04:50:36',NULL,NULL),(416,'D.C Mills',1411,144,NULL,NULL,NULL,1,1,'2015-11-23 04:50:46',NULL,NULL),(417,'Madanganj',1414,144,NULL,NULL,NULL,1,1,'2015-11-23 04:50:56',NULL,NULL),(418,'Nabiganj',1412,144,NULL,NULL,NULL,1,1,'2015-11-23 04:51:05',NULL,NULL),(419,'Fatulla Bazar',1421,565,NULL,NULL,NULL,1,1,'2015-11-23 04:51:43',NULL,NULL),(420,'Fatullah',1420,565,NULL,NULL,NULL,1,1,'2015-11-23 04:51:53',NULL,NULL),(421,'Narayanganj Sadar',1400,19,NULL,NULL,NULL,1,1,'2015-11-23 04:52:39',NULL,NULL),(422,'Bhulta',1462,145,NULL,NULL,NULL,1,1,'2015-11-23 04:52:56',NULL,NULL),(423,'Kanchan',1461,145,NULL,NULL,NULL,1,1,'2015-11-23 05:02:13',NULL,NULL),(424,'Murapara',1464,145,NULL,NULL,NULL,1,1,'2015-11-23 05:02:23',NULL,NULL),(425,'Nagri',1463,145,NULL,NULL,NULL,1,1,'2015-11-23 05:02:30',NULL,NULL),(426,'Rupganj',1460,145,NULL,NULL,NULL,1,1,'2015-11-23 05:02:39',NULL,NULL),(427,'Adamjeenagar',1431,566,NULL,NULL,NULL,1,1,'2015-11-23 05:03:27',NULL,NULL),(428,'LN Mills',1432,566,NULL,NULL,NULL,1,1,'2015-11-23 05:03:37',NULL,NULL),(429,'Siddirganj',1430,566,NULL,NULL,NULL,1,1,'2015-11-23 05:03:47',NULL,NULL),(430,'Belabo',1640,146,NULL,NULL,NULL,1,1,'2015-11-23 05:04:36',NULL,NULL),(431,'Hatirdia',1651,147,NULL,NULL,NULL,1,1,'2015-11-23 05:04:59',NULL,NULL),(432,'Katabaria',1652,147,NULL,NULL,NULL,1,1,'2015-11-23 05:05:25',NULL,NULL),(433,'Monohordi',1650,147,NULL,NULL,NULL,1,1,'2015-11-23 05:05:46',NULL,NULL),(434,'Karimpur',1605,148,NULL,NULL,NULL,1,1,'2015-11-23 05:10:01',NULL,NULL),(435,'Madhabdi',1604,148,NULL,NULL,NULL,1,1,'2015-11-23 05:10:52',NULL,NULL),(436,'Narshingdi College',1602,148,NULL,NULL,NULL,1,1,'2015-11-23 05:11:02',NULL,NULL),(437,'Narshingdi Sadar',1600,148,NULL,NULL,NULL,1,1,'2015-11-23 05:11:14',NULL,NULL),(438,'Panchdona',1603,148,NULL,NULL,NULL,1,1,'2015-11-23 05:11:22',NULL,NULL),(439,'UMC Jute Mills',1601,148,NULL,NULL,NULL,1,1,'2015-11-23 05:11:30',NULL,NULL),(440,'Char Sindhur',1612,149,NULL,NULL,NULL,1,1,'2015-11-23 05:14:07',NULL,NULL),(441,'Ghorashal',1613,149,NULL,NULL,NULL,1,1,'2015-11-23 05:14:22',NULL,NULL),(442,'Ghorashal Urea Facto',1611,149,NULL,NULL,NULL,1,1,'2015-11-23 05:14:32',NULL,NULL),(443,'Palash',1610,149,NULL,NULL,NULL,1,1,'2015-11-23 05:14:43',NULL,NULL),(444,'Bazar Hasnabad',1631,150,NULL,NULL,NULL,1,1,'2015-11-23 05:14:57',NULL,NULL),(445,'Radhaganj bazar',1632,150,NULL,NULL,NULL,1,1,'2015-11-23 05:15:10',NULL,NULL),(446,'Raypura',1630,150,NULL,NULL,NULL,1,1,'2015-11-23 05:15:20',NULL,NULL),(447,'Shibpur',1620,151,NULL,NULL,NULL,1,1,'2015-11-23 05:15:56',NULL,NULL),(448,'Susnng Durgapur',2420,154,NULL,NULL,NULL,1,1,'2015-11-23 05:16:16',NULL,NULL),(449,'Atpara',2470,152,NULL,NULL,NULL,1,1,'2015-11-23 05:16:28',NULL,NULL),(450,'Barhatta',2440,153,NULL,NULL,NULL,1,1,'2015-11-23 05:16:46',NULL,NULL),(451,'Kalmakanda',2430,156,NULL,NULL,NULL,1,1,'2015-11-23 05:19:33',NULL,NULL),(452,'Kendua',2480,157,NULL,NULL,NULL,1,1,'2015-11-23 05:19:49',NULL,NULL),(453,'Khaliajhri',2460,157,NULL,NULL,NULL,1,1,'2015-11-23 05:20:10',NULL,NULL),(454,'Madan',2490,158,NULL,NULL,NULL,1,1,'2015-11-23 05:21:03',NULL,NULL),(455,'Moddoynagar',2456,159,NULL,NULL,NULL,1,1,'2015-11-23 05:21:32',NULL,NULL),(456,'Mohanganj',2446,159,NULL,NULL,NULL,1,1,'2015-11-23 05:45:02',NULL,NULL),(457,'Baikherhati',2401,160,NULL,NULL,NULL,1,1,'2015-11-23 05:45:18',NULL,NULL),(458,'Netrakona Sadar',2400,160,NULL,NULL,NULL,1,1,'2015-11-23 05:46:42',NULL,NULL),(459,'Jaria Jhanjhail',2412,161,NULL,NULL,NULL,1,1,'2015-11-23 05:47:06',NULL,NULL),(460,'Purbadhola',2410,161,NULL,NULL,NULL,1,1,'2015-11-23 05:47:18',NULL,NULL),(461,'Shamgonj',2411,161,NULL,NULL,NULL,1,1,'2015-11-23 05:47:35',NULL,NULL),(462,'Baliakandi',7730,162,NULL,NULL,NULL,1,1,'2015-11-23 05:48:07',NULL,NULL),(463,'Nalia',7731,162,NULL,NULL,NULL,1,1,'2015-11-23 05:48:16',NULL,NULL),(464,'Mrigibazar',7723,164,NULL,NULL,NULL,1,1,'2015-11-23 05:48:29',NULL,NULL),(465,'Pangsha',7720,164,NULL,NULL,NULL,1,1,'2015-11-23 05:50:43',NULL,NULL),(466,'Ramkol',7721,164,NULL,NULL,NULL,1,1,'2015-11-23 05:50:54',NULL,NULL),(467,'Ratandia',7722,164,NULL,NULL,NULL,1,1,'2015-11-23 05:51:05',NULL,NULL),(468,'Goalanda',7710,165,NULL,NULL,NULL,1,1,'2015-11-23 05:51:21',NULL,NULL),(469,'Khankhanapur',7711,165,NULL,NULL,NULL,1,1,'2015-11-23 05:51:36',NULL,NULL),(470,'Rajbari Sadar',7700,165,NULL,NULL,NULL,1,1,'2015-11-23 05:51:49',NULL,NULL),(471,'Bhedorganj',8030,32,NULL,NULL,NULL,1,1,'2015-11-23 05:52:24',NULL,NULL),(472,'Damudhya',8040,166,NULL,NULL,NULL,1,1,'2015-11-23 05:52:42',NULL,NULL),(473,'Gosairhat',8050,167,NULL,NULL,NULL,1,1,'2015-11-23 05:54:48',NULL,NULL),(474,'Jajira',8010,170,NULL,NULL,NULL,1,1,'2015-11-23 05:55:07',NULL,NULL),(475,'Bhozeshwar',8021,168,NULL,NULL,NULL,1,1,'2015-11-23 05:55:21',NULL,NULL),(476,'Gharisar',8022,168,NULL,NULL,NULL,1,1,'2015-11-23 05:55:33',NULL,NULL),(477,'Kartikpur',8024,168,NULL,NULL,NULL,1,1,'2015-11-23 05:55:44',NULL,NULL),(478,'Naria',8020,168,NULL,NULL,NULL,1,1,'2015-11-23 05:56:02',NULL,NULL),(479,'Upshi',8023,168,NULL,NULL,NULL,1,1,'2015-11-23 05:56:15',NULL,NULL),(480,'Angaria',8001,169,NULL,NULL,NULL,1,1,'2015-11-23 05:56:27',NULL,NULL),(481,'Chikandi',8002,169,NULL,NULL,NULL,1,1,'2015-11-23 05:56:40',NULL,NULL),(482,'Shariatpur Sadar',8000,169,NULL,NULL,NULL,1,1,'2015-11-23 05:56:50',NULL,NULL),(483,'Bakshigonj',2140,567,NULL,NULL,NULL,1,1,'2015-11-23 05:57:42',NULL,NULL),(484,'Jhinaigati',2120,171,NULL,NULL,NULL,1,1,'2015-11-23 05:57:53',NULL,NULL),(485,'Gonopaddi',2151,20,NULL,NULL,NULL,1,1,'2015-11-23 05:58:11',NULL,NULL),(486,'Nakla',2150,20,NULL,NULL,NULL,1,1,'2015-11-23 05:58:19',NULL,NULL),(487,'Hatibandha',2111,172,NULL,NULL,NULL,1,1,'2015-11-23 05:58:33',NULL,NULL),(488,'Nalitabari',2110,172,NULL,NULL,NULL,1,1,'2015-11-23 05:58:46',NULL,NULL),(489,'Sherpur Shadar',2100,173,NULL,NULL,NULL,1,1,'2015-11-23 05:59:13',NULL,NULL),(490,'Shribardi',2130,174,NULL,NULL,NULL,1,1,'2015-11-23 05:59:26',NULL,NULL),(491,'Basail',1920,175,NULL,NULL,NULL,1,1,'2015-11-23 05:59:42',NULL,NULL),(492,'Bhuapur',1960,176,NULL,NULL,NULL,1,1,'2015-11-23 05:59:57',NULL,NULL),(493,'Delduar',1910,177,NULL,NULL,NULL,1,1,'2015-11-23 06:00:12',NULL,NULL),(494,'Elasin',1913,177,NULL,NULL,NULL,1,1,'2015-11-23 06:00:21',NULL,NULL),(495,'Hinga Nagar',1914,177,NULL,NULL,NULL,1,1,'2015-11-23 06:00:36',NULL,NULL),(496,'Jangalia',1911,177,NULL,NULL,NULL,1,1,'2015-11-23 06:00:44',NULL,NULL),(497,'Lowhati',1915,177,NULL,NULL,NULL,1,1,'2015-11-23 06:00:53',NULL,NULL),(498,'Patharail',1912,177,NULL,NULL,NULL,1,1,'2015-11-23 06:01:04',NULL,NULL),(499,'D. Pakutia',1982,179,NULL,NULL,NULL,1,1,'2015-11-23 06:01:18',NULL,NULL),(500,'Dhalapara',1983,179,NULL,NULL,NULL,1,1,'2015-11-23 06:01:28',NULL,NULL),(501,'Ghatial',1980,179,NULL,NULL,NULL,1,1,'2015-11-23 06:01:42',NULL,NULL),(502,'Lohani',1984,179,NULL,NULL,NULL,1,1,'2015-11-23 06:01:54',NULL,NULL),(503,'Zahidganj',1981,179,NULL,NULL,NULL,1,1,'2015-11-23 06:02:05',NULL,NULL),(504,'Gopalpur',1990,180,NULL,NULL,NULL,1,1,'2015-11-23 06:02:17',NULL,NULL),(505,'Hemnagar',1992,180,NULL,NULL,NULL,1,1,'2015-11-23 06:02:25',NULL,NULL),(506,'Jhowail',1991,180,NULL,NULL,NULL,1,1,'2015-11-23 06:02:35',NULL,NULL),(507,'Ballabazar',1973,181,NULL,NULL,NULL,1,1,'2015-11-23 06:02:49',NULL,NULL),(508,'Elinga',1974,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:01',NULL,NULL),(509,'Kalihati',1970,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:08',NULL,NULL),(510,'Nagarbari',1977,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:20',NULL,NULL),(511,'Nagarbari SO',1976,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:30',NULL,NULL),(512,'Nagbari',1972,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:43',NULL,NULL),(513,'Palisha',1975,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:49',NULL,NULL),(514,'Rajafair',1971,181,NULL,NULL,NULL,1,1,'2015-11-23 06:03:56',NULL,NULL),(515,'Kashkawlia',1930,568,NULL,NULL,NULL,1,1,'2015-11-23 06:04:40',NULL,NULL),(516,'Dhobari',1997,182,NULL,NULL,NULL,1,1,'2015-11-23 06:04:58',NULL,NULL),(517,'Madhupur',1996,182,NULL,NULL,NULL,1,1,'2015-11-23 06:05:05',NULL,NULL),(518,'Gorai',1941,183,NULL,NULL,NULL,1,1,'2015-11-23 06:05:19',NULL,NULL),(519,'Jarmuki',1944,183,NULL,NULL,NULL,1,1,'2015-11-23 06:05:30',NULL,NULL),(520,'M.C. College',1942,183,NULL,NULL,NULL,1,1,'2015-11-23 06:05:48',NULL,NULL),(521,'Mirzapur',1940,183,NULL,NULL,NULL,1,1,'2015-11-23 06:06:01',NULL,NULL),(522,'Mohera',1945,183,NULL,NULL,NULL,1,1,'2015-11-23 06:06:12',NULL,NULL),(523,'Warri paikpara',1943,183,NULL,NULL,NULL,1,1,'2015-11-23 06:06:18',NULL,NULL),(524,'Dhuburia',1937,184,NULL,NULL,NULL,1,1,'2015-11-23 06:07:34',NULL,NULL),(525,'Nagarpur',1936,184,NULL,NULL,NULL,1,1,'2015-11-23 06:07:47',NULL,NULL),(526,'Salimabad',1938,184,NULL,NULL,NULL,1,1,'2015-11-23 06:07:55',NULL,NULL),(527,'Kochua',1951,185,NULL,NULL,NULL,1,1,'2015-11-23 06:08:29',NULL,NULL),(528,'Sakhipur',1950,185,NULL,NULL,NULL,1,1,'2015-11-23 06:10:01',NULL,NULL),(529,'Kagmari',1901,186,NULL,NULL,NULL,1,1,'2015-11-23 06:12:37',NULL,NULL),(530,'Korotia',1903,186,NULL,NULL,NULL,1,1,'2015-11-23 06:12:46',NULL,NULL),(531,'Purabari',1904,186,NULL,NULL,NULL,1,1,'2015-11-23 06:12:55',NULL,NULL),(532,'Santosh',1902,186,NULL,NULL,NULL,1,1,'2015-11-23 06:13:07',NULL,NULL),(533,'Tangail Sadar',1900,186,NULL,NULL,NULL,1,1,'2015-11-23 06:13:29',NULL,NULL),(534,'Alikadam',4650,475,NULL,NULL,NULL,1,1,'2015-11-24 02:58:19',NULL,NULL),(535,'Bandarban Sadar',4600,476,NULL,NULL,NULL,1,1,'2015-11-24 03:01:04',NULL,NULL),(536,'Naikhong',4660,478,NULL,NULL,NULL,1,1,'2015-11-24 03:02:35',NULL,NULL),(537,'Roanchhari',4610,479,NULL,NULL,NULL,1,1,'2015-11-24 03:04:38',NULL,NULL),(538,'Ruma',4620,480,NULL,NULL,NULL,1,1,'2015-11-24 03:05:30',NULL,NULL),(539,'Thanchi',4641,481,NULL,NULL,NULL,1,1,'2015-11-24 03:06:12',NULL,NULL),(540,'Kalipur',3642,569,NULL,NULL,NULL,1,1,'2015-11-24 03:47:16',NULL,NULL),(541,'Matlobganj',3640,569,NULL,NULL,NULL,1,1,'2015-11-24 03:47:36',NULL,NULL),(542,'Mohanpur',3641,569,NULL,NULL,NULL,1,1,'2015-11-24 03:47:56',NULL,NULL),(543,'Chotoshi',3623,497,NULL,NULL,NULL,1,1,'2015-11-24 03:48:26',NULL,NULL),(544,'Islamia Madrasha',3624,497,NULL,NULL,NULL,1,1,'2015-11-24 03:48:40',NULL,NULL),(545,'Khilabazar',3621,497,NULL,NULL,NULL,1,1,'2015-11-24 03:48:55',NULL,NULL),(546,'Pashchim Kherihar Al',3622,497,NULL,NULL,NULL,1,1,'2015-11-24 03:49:11',NULL,NULL),(547,'Shahrasti',3620,497,NULL,NULL,NULL,1,1,'2015-11-24 03:49:26',NULL,NULL),(548,'Anowara',4376,498,NULL,NULL,NULL,1,1,'2015-11-24 03:50:46',NULL,NULL),(549,'Battali',4378,498,NULL,NULL,NULL,1,1,'2015-11-24 03:51:01',NULL,NULL),(550,'Paroikora',4377,498,NULL,NULL,NULL,1,1,'2015-11-24 03:51:13',NULL,NULL),(551,'Boalkhali',4366,502,NULL,NULL,NULL,1,1,'2015-11-24 03:51:46',NULL,NULL),(552,'Charandwip',4369,502,NULL,NULL,NULL,1,1,'2015-11-24 03:51:59',NULL,NULL),(553,'Iqbal Park',4365,502,NULL,NULL,NULL,1,1,'2015-11-24 03:52:10',NULL,NULL),(554,'Kadurkhal',4368,502,NULL,NULL,NULL,1,1,'2015-11-24 03:52:25',NULL,NULL),(555,'Kanungopara',4363,502,NULL,NULL,NULL,1,1,'2015-11-24 03:52:35',NULL,NULL),(556,'Sakpura',4367,502,NULL,NULL,NULL,1,1,'2015-11-24 03:52:47',NULL,NULL),(557,'Saroatoli',4364,502,NULL,NULL,NULL,1,1,'2015-11-24 03:52:58',NULL,NULL),(558,'Al- Amin Baria Madra',4221,504,NULL,NULL,NULL,1,1,'2015-11-24 03:54:47',NULL,NULL),(559,'Amin Jute Mills',4211,504,NULL,NULL,NULL,1,1,'2015-11-24 03:55:14',NULL,NULL),(560,'Anandabazar',4215,504,NULL,NULL,NULL,1,1,'2015-11-24 03:55:28',NULL,NULL),(561,'Bayezid Bostami',4210,504,NULL,NULL,NULL,1,1,'2015-11-24 03:55:40',NULL,NULL),(562,'Chawkbazar',4203,504,NULL,NULL,NULL,1,1,'2015-11-24 03:56:07',NULL,NULL),(563,'Chitt. Cantonment',4220,504,NULL,NULL,NULL,1,1,'2015-11-24 03:56:24',NULL,NULL),(564,'Chitt. Customs Acca',4219,504,NULL,NULL,NULL,1,1,'2015-11-24 03:56:36',NULL,NULL),(565,'Chitt. Politechnic In',4209,504,NULL,NULL,NULL,1,1,'2015-11-24 03:56:50',NULL,NULL),(566,'Chitt. Sailers Colon',4218,504,NULL,NULL,NULL,1,1,'2015-11-24 03:57:03',NULL,NULL),(567,'Chittagong Airport',4205,504,NULL,NULL,NULL,1,1,'2015-11-24 03:57:26',NULL,NULL),(568,'Chittagong Bandar',4100,504,NULL,NULL,NULL,1,1,'2015-11-24 03:57:50',NULL,NULL),(569,'Chittagong GPO',4000,504,NULL,NULL,NULL,1,1,'2015-11-24 03:58:07',NULL,NULL),(570,'Export Processing',4223,504,NULL,NULL,NULL,1,1,'2015-11-24 03:58:22',NULL,NULL),(571,'Firozshah',4207,504,NULL,NULL,NULL,1,1,'2015-11-24 03:58:37',NULL,NULL),(572,'Halishahar',4216,504,NULL,NULL,NULL,1,1,'2015-11-24 03:58:51',NULL,NULL),(573,'Halishshar',4225,504,NULL,NULL,NULL,1,1,'2015-11-24 03:59:21',NULL,NULL),(574,'Jalalabad',4214,504,NULL,NULL,NULL,1,1,'2015-11-24 03:59:38',NULL,NULL),(575,'Jaldia Merine Accade',4206,504,NULL,NULL,NULL,1,1,'2015-11-24 03:59:51',NULL,NULL),(576,'Middle Patenga',4222,504,NULL,NULL,NULL,1,1,'2015-11-24 04:00:03',NULL,NULL),(577,'Mohard',4208,504,NULL,NULL,NULL,1,1,'2015-11-24 04:00:15',NULL,NULL),(578,'North Halishahar',4226,504,NULL,NULL,NULL,1,1,'2015-11-24 04:00:27',NULL,NULL),(579,'North Katuli',4217,504,NULL,NULL,NULL,1,1,'2015-11-24 04:00:40',NULL,NULL),(580,'Pahartoli',4202,504,NULL,NULL,NULL,1,1,'2015-11-24 04:00:50',NULL,NULL),(581,'Patenga',4204,504,NULL,NULL,NULL,1,1,'2015-11-24 04:01:01',NULL,NULL),(582,'Rampura TSO',4224,504,NULL,NULL,NULL,1,1,'2015-11-24 04:01:12',NULL,NULL),(583,'Wazedia',4213,504,NULL,NULL,NULL,1,1,'2015-11-24 04:01:26',NULL,NULL),(584,'Bangla Hili',5270,570,NULL,NULL,NULL,1,1,'2015-11-28 23:02:05',NULL,NULL),(585,'Biral',5210,262,NULL,NULL,NULL,1,1,'2015-11-28 23:02:43',NULL,NULL),(586,'Birampur',5266,260,NULL,NULL,NULL,1,1,'2015-11-28 23:24:14',NULL,NULL),(587,'Birganj',5220,261,NULL,NULL,NULL,1,1,'2015-11-28 23:24:35',NULL,NULL),(588,'Chrirbandar',5240,264,NULL,NULL,NULL,1,1,'2015-11-28 23:24:54',NULL,NULL),(589,'Ranirbandar',5241,264,NULL,NULL,NULL,1,1,'2015-11-28 23:25:08',NULL,NULL),(590,'Dinajpur Rajbari',5201,269,NULL,NULL,NULL,1,1,'2015-11-28 23:25:32',NULL,NULL),(591,'Dinajpur Sadar',5200,269,NULL,NULL,NULL,1,1,'2015-11-28 23:25:42',NULL,NULL),(592,'Khansama',5230,268,NULL,NULL,NULL,1,1,'2015-11-28 23:26:00',NULL,NULL),(593,'Pakarhat',5231,268,NULL,NULL,NULL,1,1,'2015-11-28 23:26:11',NULL,NULL),(594,'Maharajganj',5226,571,NULL,NULL,NULL,1,1,'2015-11-28 23:27:01',NULL,NULL),(595,'Nababganj',5280,270,NULL,NULL,NULL,1,1,'2015-11-28 23:27:47',NULL,NULL),(596,'Ghoraghat',5291,572,NULL,NULL,NULL,1,1,'2015-11-28 23:28:59',NULL,NULL),(597,'Osmanpur',5290,572,NULL,NULL,NULL,1,1,'2015-11-28 23:29:12',NULL,NULL),(598,'Parbatipur',5250,271,NULL,NULL,NULL,1,1,'2015-11-28 23:29:28',NULL,NULL),(599,'Fulbari',5260,21,NULL,NULL,NULL,1,1,'2015-11-28 23:30:30',NULL,NULL),(600,'Setabganj',5216,573,NULL,NULL,NULL,1,1,'2015-11-28 23:31:05',NULL,NULL),(601,'Bonarpara',5750,574,NULL,NULL,NULL,1,1,'2015-11-28 23:32:00',NULL,NULL),(602,'saghata',5751,574,NULL,NULL,NULL,1,1,'2015-11-28 23:32:14',NULL,NULL),(603,'Gaibandha Sadar',5700,273,NULL,NULL,NULL,1,1,'2015-11-28 23:36:34',NULL,NULL),(604,'Gobindhaganj',5740,274,NULL,NULL,NULL,1,1,'2015-11-28 23:37:22',NULL,NULL),(605,'Mahimaganj',5741,274,NULL,NULL,NULL,1,1,'2015-11-28 23:37:40',NULL,NULL),(606,'Palashbari',5730,275,NULL,NULL,NULL,1,1,'2015-11-28 23:37:59',NULL,NULL),(607,'Bharatkhali',5761,272,NULL,NULL,NULL,1,1,'2015-11-28 23:38:22',NULL,NULL),(608,'Phulchhari',5760,272,NULL,NULL,NULL,1,1,'2015-11-28 23:38:33',NULL,NULL),(609,'Saadullapur',5710,276,NULL,NULL,NULL,1,1,'2015-11-28 23:39:09',NULL,NULL),(610,'Bamandanga',5721,278,NULL,NULL,NULL,1,1,'2015-11-28 23:39:27',NULL,NULL),(611,'Sundarganj',5720,278,NULL,NULL,NULL,1,1,'2015-11-28 23:39:39',NULL,NULL),(612,'Chilmari',5630,285,NULL,NULL,NULL,1,1,'2015-11-28 23:42:57',NULL,NULL),(613,'Jorgachh',5631,285,NULL,NULL,NULL,1,1,'2015-11-28 23:43:14',NULL,NULL),(614,'Kurigram Sadar',5600,287,NULL,NULL,NULL,1,1,'2015-11-28 23:43:30',NULL,NULL),(615,'Pandul',5601,287,NULL,NULL,NULL,1,1,'2015-11-28 23:43:42',NULL,NULL),(616,'Phulbari',5680,287,NULL,NULL,NULL,1,1,'2015-11-28 23:43:55',NULL,NULL),(617,'Nageshwar',5660,288,NULL,NULL,NULL,1,1,'2015-11-28 23:44:20',NULL,NULL),(618,'Nazimkhan',5611,289,NULL,NULL,NULL,1,1,'2015-11-28 23:44:44',NULL,NULL),(619,'Rajarhat',5610,289,NULL,NULL,NULL,1,1,'2015-11-28 23:45:00',NULL,NULL),(620,'Rajibpur',5650,576,NULL,NULL,NULL,1,1,'2015-11-28 23:45:46',NULL,NULL),(621,'Raumari',5640,290,NULL,NULL,NULL,1,1,'2015-11-28 23:46:08',NULL,NULL),(622,'Bazarhat',5621,576,NULL,NULL,NULL,1,1,'2015-11-28 23:46:57',NULL,NULL),(623,'Ulipur',5620,291,NULL,NULL,NULL,1,1,'2015-11-28 23:48:51',NULL,NULL),(624,'Aditmari',5510,292,NULL,NULL,NULL,1,1,'2015-11-28 23:50:01',NULL,NULL),(625,'Kulaghat SO',5502,295,NULL,NULL,NULL,1,1,'2015-11-28 23:50:44',NULL,NULL),(626,'Lalmonirhat Sadar',5500,295,NULL,NULL,NULL,1,1,'2015-11-28 23:51:00',NULL,NULL),(627,'Moghalhat',5501,295,NULL,NULL,NULL,1,1,'2015-11-28 23:51:16',NULL,NULL),(628,'Baura',5541,296,NULL,NULL,NULL,1,1,'2015-11-28 23:51:38',NULL,NULL),(629,'Burimari',5542,296,NULL,NULL,NULL,1,1,'2015-11-28 23:52:05',NULL,NULL),(630,'Patgram',5540,296,NULL,NULL,NULL,1,1,'2015-11-28 23:52:21',NULL,NULL),(631,'Tushbhandar',5520,577,NULL,NULL,NULL,1,1,'2015-11-28 23:53:18',NULL,NULL),(632,'Dimla',5350,317,NULL,NULL,NULL,1,1,'2015-11-28 23:54:33',NULL,NULL),(633,'Ghaga Kharibari',5351,317,NULL,NULL,NULL,1,1,'2015-11-28 23:55:00',NULL,NULL),(634,'Chilahati',5341,318,NULL,NULL,NULL,1,1,'2015-11-28 23:55:35',NULL,NULL),(635,'Domar',5340,318,NULL,NULL,NULL,1,1,'2015-11-28 23:55:45',NULL,NULL),(636,'Jaldhaka',5330,319,NULL,NULL,NULL,1,1,'2015-11-28 23:56:06',NULL,NULL),(637,'Kishoriganj',5320,320,NULL,NULL,NULL,1,1,'2015-11-29 00:09:00',NULL,NULL),(638,'Nilphamari Sadar',5300,321,NULL,NULL,NULL,1,1,'2015-11-29 00:09:20',NULL,NULL),(639,'Nilphamari Sugar Mil',5301,321,NULL,NULL,NULL,1,1,'2015-11-29 00:09:32',NULL,NULL),(640,'Syedpur',5310,322,NULL,NULL,NULL,1,1,'2015-11-29 00:09:51',NULL,NULL),(641,'Syedpur Upashahar',5311,322,NULL,NULL,NULL,1,1,'2015-11-29 00:10:02',NULL,NULL),(642,'Boda',5010,332,NULL,NULL,NULL,1,1,'2015-11-29 00:10:35',NULL,NULL),(643,'Chotto Dab',5040,578,NULL,NULL,NULL,1,1,'2015-11-29 00:11:56',NULL,NULL),(644,'Mirjapur',5041,578,NULL,NULL,NULL,1,1,'2015-11-29 00:12:22',NULL,NULL),(645,'Dabiganj',5020,333,NULL,NULL,NULL,1,1,'2015-11-29 00:12:55',NULL,NULL),(646,'Panchagar Sadar',5000,334,NULL,NULL,NULL,1,1,'2015-11-29 00:13:08',NULL,NULL),(647,'Tetulia',5030,335,NULL,NULL,NULL,1,1,'2015-11-29 00:13:25',NULL,NULL),(648,'Badarganj',5430,349,NULL,NULL,NULL,1,1,'2015-11-29 00:13:54',NULL,NULL),(649,'Shyampur',5431,349,NULL,NULL,NULL,1,1,'2015-11-29 00:14:04',NULL,NULL),(650,'Gangachara',5410,350,NULL,NULL,NULL,1,1,'2015-11-29 00:14:18',NULL,NULL),(651,'Haragachh',5441,25,NULL,NULL,NULL,1,1,'2015-11-29 00:14:40',NULL,NULL),(652,'Kaunia',5440,25,NULL,NULL,NULL,1,1,'2015-11-29 00:14:49',NULL,NULL),(653,'Mithapukur',5460,352,NULL,NULL,NULL,1,1,'2015-11-29 00:15:04',NULL,NULL),(654,'Pirgachha',5450,353,NULL,NULL,NULL,1,1,'2015-11-29 00:15:26',NULL,NULL),(655,'Alamnagar',5402,351,NULL,NULL,NULL,1,1,'2015-11-29 00:15:46',NULL,NULL),(656,'Mahiganj',5403,351,NULL,NULL,NULL,1,1,'2015-11-29 00:16:02',NULL,NULL),(657,'Rangpur Cadet Colleg',5404,351,NULL,NULL,NULL,1,1,'2015-11-29 00:16:11',NULL,NULL),(658,'Rangpur Carmiecal Col',5405,351,NULL,NULL,NULL,1,1,'2015-11-29 00:16:22',NULL,NULL),(659,'Rangpur Sadar',5400,351,NULL,NULL,NULL,1,1,'2015-11-29 00:16:32',NULL,NULL),(660,'Rangpur Upa-Shahar',5401,351,NULL,NULL,NULL,1,1,'2015-11-29 00:16:45',NULL,NULL),(661,'Taraganj',5420,355,NULL,NULL,NULL,1,1,'2015-11-29 00:43:44',NULL,NULL),(662,'Baliadangi',5140,365,NULL,NULL,NULL,1,1,'2015-11-29 02:34:49',NULL,NULL),(663,'Lahiri',5141,365,NULL,NULL,NULL,1,1,'2015-11-29 02:35:05',NULL,NULL),(664,'Pirganj',5110,367,NULL,NULL,NULL,1,1,'2015-11-29 02:35:30',NULL,NULL),(665,'Nekmarad',5121,368,NULL,NULL,NULL,1,1,'2015-11-29 02:35:49',NULL,NULL),(666,'Rani Sankail',5120,368,NULL,NULL,NULL,1,1,'2015-11-29 02:35:59',NULL,NULL),(667,'Ruhia',5103,26,NULL,NULL,NULL,1,1,'2015-11-29 02:36:14',NULL,NULL),(668,'Thakurgaon Road',5101,26,NULL,NULL,NULL,1,1,'2015-11-29 02:36:37',NULL,NULL),(669,'Thakurgaon Sadar',5100,26,NULL,NULL,NULL,1,1,'2015-11-29 02:36:57',NULL,NULL),(670,'Adamdighi',5890,248,NULL,NULL,NULL,1,1,'2015-11-29 02:38:21',NULL,NULL),(671,'Nasharatpur',5892,248,NULL,NULL,NULL,1,1,'2015-11-29 02:38:40',NULL,NULL),(672,'Santahar',5891,248,NULL,NULL,NULL,1,1,'2015-11-29 02:38:51',NULL,NULL),(673,'Bogra Canttonment',5801,249,NULL,NULL,NULL,1,1,'2015-11-29 02:39:12',NULL,NULL),(674,'Bogra Sadar',5800,249,NULL,NULL,NULL,1,1,'2015-11-29 02:39:24',NULL,NULL),(675,'Dhunat',5850,250,NULL,NULL,NULL,1,1,'2015-11-29 02:39:40',NULL,NULL),(676,'Gosaibari',5851,250,NULL,NULL,NULL,1,1,'2015-11-29 02:39:53',NULL,NULL),(677,'Dupchachia',5880,251,NULL,NULL,NULL,1,1,'2015-11-29 02:40:07',NULL,NULL),(678,'Talora',5881,251,NULL,NULL,NULL,1,1,'2015-11-29 02:40:16',NULL,NULL),(679,'Gabtoli',5820,252,NULL,NULL,NULL,1,1,'2015-11-29 02:40:31',NULL,NULL),(680,'Sukhanpukur',5821,252,NULL,NULL,NULL,1,1,'2015-11-29 02:40:43',NULL,NULL),(681,'Kahaloo',5870,253,NULL,NULL,NULL,1,1,'2015-11-29 02:41:05',NULL,NULL),(682,'Nandigram',5860,254,NULL,NULL,NULL,1,1,'2015-11-29 02:41:17',NULL,NULL),(683,'Chandan Baisha',5831,255,NULL,NULL,NULL,1,1,'2015-11-29 02:42:58',NULL,NULL),(684,'Sariakandi',5830,255,NULL,NULL,NULL,1,1,'2015-11-29 02:43:20',NULL,NULL),(685,'Chandaikona',5841,257,NULL,NULL,NULL,1,1,'2015-11-29 02:43:58',NULL,NULL),(686,'Palli Unnyan Accadem',5842,257,NULL,NULL,NULL,1,1,'2015-11-29 02:44:15',NULL,NULL),(687,'Sherpur',5840,257,NULL,NULL,NULL,1,1,'2015-11-29 02:44:25',NULL,NULL),(688,'Sonatola',5826,259,NULL,NULL,NULL,1,1,'2015-11-29 02:45:35',NULL,NULL),(689,'Amnura',6303,580,NULL,NULL,NULL,1,1,'2015-11-29 02:53:57',NULL,NULL),(690,'Chapinawbganj Sadar',6300,580,NULL,NULL,NULL,1,1,'2015-11-29 02:54:07',NULL,NULL),(691,'Rajarampur',6301,580,NULL,NULL,NULL,1,1,'2015-11-29 02:54:18',NULL,NULL),(692,'Ramchandrapur',6302,580,NULL,NULL,NULL,1,1,'2015-11-29 02:54:25',NULL,NULL),(693,'Mandumala',6311,581,NULL,NULL,NULL,1,1,'2015-11-29 02:54:46',NULL,NULL),(694,'Gomashtapur',6321,582,NULL,NULL,NULL,1,1,'2015-11-29 02:55:10',NULL,NULL),(695,'Rohanpur',6320,582,NULL,NULL,NULL,1,1,'2015-11-29 02:55:20',NULL,NULL),(696,'Kansart',6341,583,NULL,NULL,NULL,1,1,'2015-11-29 02:55:36',NULL,NULL),(697,'Manaksha',6342,583,NULL,NULL,NULL,1,1,'2015-11-29 02:55:47',NULL,NULL),(698,'Shibganj U.P.O',6340,583,NULL,NULL,NULL,1,1,'2015-11-29 02:55:56',NULL,NULL),(699,'Akklepur',5940,279,NULL,NULL,NULL,1,1,'2015-11-29 02:57:42',NULL,NULL),(700,'jamalganj',5941,279,NULL,NULL,NULL,1,1,'2015-11-29 03:15:51',NULL,NULL),(701,'Tilakpur',5942,279,NULL,NULL,NULL,1,1,'2015-11-29 03:16:06',NULL,NULL),(702,'Joypurhat Sadar',5900,280,NULL,NULL,NULL,1,1,'2015-11-29 03:16:28',NULL,NULL),(703,'kalai',5930,281,NULL,NULL,NULL,1,1,'2015-11-29 03:16:44',NULL,NULL),(704,'Khetlal',5920,282,NULL,NULL,NULL,1,1,'2015-11-29 03:23:50',NULL,NULL),(705,'Panchbibi',5910,22,NULL,NULL,NULL,1,1,'2015-11-29 03:24:23',NULL,NULL),(706,'Badalgachhi',6570,298,NULL,NULL,NULL,1,1,'2015-11-29 03:27:51',NULL,NULL),(707,'Dhamuirhat',6580,299,NULL,NULL,NULL,1,1,'2015-11-29 03:28:09',NULL,NULL),(708,'Naogaon Sadar',6500,302,NULL,NULL,NULL,1,1,'2015-11-29 03:28:43',NULL,NULL),(709,'Niamatpur',6520,23,NULL,NULL,NULL,1,1,'2015-11-29 03:29:00',NULL,NULL),(710,'Patnitala',6540,303,NULL,NULL,NULL,1,1,'2015-11-29 03:29:36',NULL,NULL),(711,'Kashimpur',6591,34,NULL,NULL,NULL,1,1,'2015-11-29 03:30:08',NULL,NULL),(712,'Raninagar',6590,34,NULL,NULL,NULL,1,1,'2015-11-29 03:30:21',NULL,NULL),(713,'Moduhil',6561,305,NULL,NULL,NULL,1,1,'2015-11-29 03:30:45',NULL,NULL),(714,'Sapahar',6560,305,NULL,NULL,NULL,1,1,'2015-11-29 03:30:58',NULL,NULL),(715,'Abdulpur',6422,584,NULL,NULL,NULL,1,1,'2015-11-29 03:32:23',NULL,NULL),(716,'Gopalpur U.P.O',6420,584,NULL,NULL,NULL,1,1,'2015-11-29 03:32:38',NULL,NULL),(717,'Lalpur S.O',6421,584,NULL,NULL,NULL,1,1,'2015-11-29 03:32:49',NULL,NULL),(718,'Baraigram',6432,585,NULL,NULL,NULL,1,1,'2015-11-29 03:33:26',NULL,NULL),(719,'Dayarampur',6431,585,NULL,NULL,NULL,1,1,'2015-11-29 03:33:38',NULL,NULL),(720,'Harua',6430,585,NULL,NULL,NULL,1,1,'2015-11-29 03:33:49',NULL,NULL),(721,'Gurudaspur',6440,308,NULL,NULL,NULL,1,1,'2015-11-29 03:34:07',NULL,NULL),(722,'Baiddyabal Gharia',6402,310,NULL,NULL,NULL,1,1,'2015-11-29 03:34:27',NULL,NULL),(723,'Digapatia',6401,310,NULL,NULL,NULL,1,1,'2015-11-29 03:34:38',NULL,NULL),(724,'Madhnagar',6403,310,NULL,NULL,NULL,1,1,'2015-11-29 03:34:48',NULL,NULL),(725,'Natore Sadar',6400,310,NULL,NULL,NULL,1,1,'2015-11-29 03:34:58',NULL,NULL),(726,'Singra',6450,311,NULL,NULL,NULL,1,1,'2015-11-29 03:35:21',NULL,NULL),(727,'Bera',6680,323,NULL,NULL,NULL,1,1,'2015-11-29 03:39:21',NULL,NULL),(728,'Kashinathpur',6682,323,NULL,NULL,NULL,1,1,'2015-11-29 03:39:31',NULL,NULL),(729,'Nakalia',6681,323,NULL,NULL,NULL,1,1,'2015-11-29 03:39:41',NULL,NULL),(730,'Puran Bharenga',6683,323,NULL,NULL,NULL,1,1,'2015-11-29 03:39:56',NULL,NULL),(731,'Bhangura',6640,324,NULL,NULL,NULL,1,1,'2015-11-29 03:40:14',NULL,NULL),(732,'Chatmohar',6630,325,NULL,NULL,NULL,1,1,'2015-11-29 03:40:42',NULL,NULL),(733,'Dhapari',6621,327,NULL,NULL,NULL,1,1,'2015-11-29 03:41:09',NULL,NULL),(734,'Ishwardi',6620,327,NULL,NULL,NULL,1,1,'2015-11-29 03:41:18',NULL,NULL),(735,'Pakshi',6622,327,NULL,NULL,NULL,1,1,'2015-11-29 03:41:27',NULL,NULL),(736,'Rajapur',6623,327,NULL,NULL,NULL,1,1,'2015-11-29 03:41:36',NULL,NULL),(737,'Hamayetpur',6602,328,NULL,NULL,NULL,1,1,'2015-11-29 03:41:47',NULL,NULL),(738,'Kaliko Cotton Mills',6601,328,NULL,NULL,NULL,1,1,'2015-11-29 03:42:00',NULL,NULL),(739,'Pabna Sadar',6600,328,NULL,NULL,NULL,1,1,'2015-11-29 03:42:14',NULL,NULL),(740,'Santhia',6670,329,NULL,NULL,NULL,1,1,'2015-11-29 03:42:36',NULL,NULL),(741,'Sagarkandi',6661,330,NULL,NULL,NULL,1,1,'2015-11-29 03:42:51',NULL,NULL),(742,'Sujanagar',6660,330,NULL,NULL,NULL,1,1,'2015-11-29 03:43:04',NULL,NULL),(743,'Arani',6281,336,NULL,NULL,NULL,1,1,'2015-11-29 03:43:40',NULL,NULL),(744,'Bagha',6280,336,NULL,NULL,NULL,1,1,'2015-11-29 03:43:49',NULL,NULL),(745,'Charghat',6270,340,NULL,NULL,NULL,1,1,'2015-11-29 03:44:27',NULL,NULL),(746,'Sarda',6271,340,NULL,NULL,NULL,1,1,'2015-11-29 03:44:36',NULL,NULL),(747,'Durgapur',6240,340,NULL,NULL,NULL,1,1,'2015-11-29 03:44:51',NULL,NULL),(748,'Godagari',6290,341,NULL,NULL,NULL,1,1,'2015-11-29 03:45:13',NULL,NULL),(749,'Premtoli',6291,341,NULL,NULL,NULL,1,1,'2015-11-29 03:45:23',NULL,NULL),(750,'Putia',6260,345,NULL,NULL,NULL,1,1,'2015-11-29 03:46:00',NULL,NULL),(751,'Binodpur Bazar',6206,586,NULL,NULL,NULL,1,1,'2015-11-29 03:47:03',NULL,NULL),(752,'Ghuramara',6100,586,NULL,NULL,NULL,1,1,'2015-11-29 03:47:16',NULL,NULL),(753,'Kazla',6204,586,NULL,NULL,NULL,1,1,'2015-11-29 03:47:28',NULL,NULL),(754,'Rajshahi Canttonment',6202,586,NULL,NULL,NULL,1,1,'2015-11-29 03:47:42',NULL,NULL),(755,'Rajshahi Court',6201,586,NULL,NULL,NULL,1,1,'2015-11-29 03:47:50',NULL,NULL),(756,'Rajshahi Sadar',6000,586,NULL,NULL,NULL,1,1,'2015-11-29 03:48:03',NULL,NULL),(757,'Rajshahi University',6205,586,NULL,NULL,NULL,1,1,'2015-11-29 03:48:25',NULL,NULL),(758,'Sapura',6203,586,NULL,NULL,NULL,1,1,'2015-11-29 03:48:41',NULL,NULL),(759,'Tanor',6230,348,NULL,NULL,NULL,1,1,'2015-11-29 03:49:00',NULL,NULL),(760,'Belkuchi',6740,356,NULL,NULL,NULL,1,1,'2015-11-29 03:52:07',NULL,NULL),(761,'Enayetpur',6751,356,NULL,NULL,NULL,1,1,'2015-11-29 03:52:18',NULL,NULL),(762,'Sohagpur',6741,356,NULL,NULL,NULL,1,1,'2015-11-29 03:53:04',NULL,NULL),(763,'Sthal',6752,356,NULL,NULL,NULL,1,1,'2015-11-29 03:53:18',NULL,NULL),(764,'Dhangora',6720,587,NULL,NULL,NULL,1,1,'2015-11-29 03:54:04',NULL,NULL),(765,'Malonga',6721,587,NULL,NULL,NULL,1,1,'2015-11-29 03:54:18',NULL,NULL),(766,'Gandail',6712,359,NULL,NULL,NULL,1,1,'2015-11-29 03:54:34',NULL,NULL),(767,'Kazipur',6710,359,NULL,NULL,NULL,1,1,'2015-11-29 03:54:42',NULL,NULL),(768,'Shuvgachha',6711,359,NULL,NULL,NULL,1,1,'2015-11-29 03:54:51',NULL,NULL),(769,'Ullapara R.S',6761,364,NULL,NULL,NULL,1,1,'2015-11-29 22:41:55',NULL,NULL),(770,'Ullapara',6760,364,NULL,NULL,NULL,1,1,'2015-11-29 22:42:08',NULL,NULL),(771,'Salap',6763,364,NULL,NULL,NULL,1,1,'2015-11-29 22:42:28',NULL,NULL),(772,'Lahiri Mohanpur',6762,364,NULL,NULL,NULL,1,1,'2015-11-29 22:42:52',NULL,NULL),(773,'Tarash',6780,363,NULL,NULL,NULL,1,1,'2015-11-29 22:43:08',NULL,NULL),(774,'Sirajganj Sadar',6700,362,NULL,NULL,NULL,1,1,'2015-11-29 22:43:42',NULL,NULL),(775,'Rashidabad',6702,362,NULL,NULL,NULL,1,1,'2015-11-29 22:44:08',NULL,NULL),(776,'Raipur',6701,362,NULL,NULL,NULL,1,1,'2015-11-29 22:44:23',NULL,NULL),(777,'Shahjadpur',6770,361,NULL,NULL,NULL,1,1,'2015-11-29 22:44:42',NULL,NULL),(778,'Porjana',6771,361,NULL,NULL,NULL,1,1,'2015-11-29 22:44:56',NULL,NULL),(779,'Kaijuri',6773,361,NULL,NULL,NULL,1,1,'2015-11-29 22:45:27',NULL,NULL),(780,'Jamirta',6772,361,NULL,NULL,NULL,1,1,'2015-11-29 22:45:46',NULL,NULL),(781,'Swarupkathi',8520,588,NULL,NULL,NULL,1,1,'2015-11-29 22:49:57',NULL,NULL),(782,'Kaurikhara',8522,588,NULL,NULL,NULL,1,1,'2015-11-29 22:50:25',NULL,NULL),(783,'Jalabari',8523,588,NULL,NULL,NULL,1,1,'2015-11-29 22:51:21',NULL,NULL),(784,'Darus Sunnat',8521,588,NULL,NULL,NULL,1,1,'2015-11-29 22:51:36',NULL,NULL),(785,'Pirojpur Sadar',8500,472,NULL,NULL,NULL,1,1,'2015-11-29 22:51:53',NULL,NULL),(786,'Parerhat',8502,472,NULL,NULL,NULL,1,1,'2015-11-29 22:52:06',NULL,NULL),(787,'Hularhat',8501,472,NULL,NULL,NULL,1,1,'2015-11-29 22:52:25',NULL,NULL),(788,'Sriramkathi',8541,471,NULL,NULL,NULL,1,1,'2015-11-29 22:53:01',NULL,NULL),(789,'Nazirpur',8540,471,NULL,NULL,NULL,1,1,'2015-11-29 22:53:15',NULL,NULL),(790,'Tushkhali',8561,470,NULL,NULL,NULL,1,1,'2015-11-29 22:53:47',NULL,NULL),(791,'Tiarkhali',8564,470,NULL,NULL,NULL,1,1,'2015-11-29 22:54:03',NULL,NULL),(792,'Shilarganj',8566,470,NULL,NULL,NULL,1,1,'2015-11-29 22:54:23',NULL,NULL),(793,'Mathbaria',8560,470,NULL,NULL,NULL,1,1,'2015-11-29 22:54:34',NULL,NULL),(794,'Halta',8562,470,NULL,NULL,NULL,1,1,'2015-11-29 22:54:44',NULL,NULL),(795,'Gulishakhali',8563,470,NULL,NULL,NULL,1,1,'2015-11-29 22:54:57',NULL,NULL),(796,'Betmor Natun Hat',8565,470,NULL,NULL,NULL,1,1,'2015-11-29 22:55:13',NULL,NULL),(797,'Keundia',8511,469,NULL,NULL,NULL,1,1,'2015-11-29 22:55:37',NULL,NULL),(798,'Kaukhali',8510,469,NULL,NULL,NULL,1,1,'2015-11-29 22:56:32',NULL,NULL),(799,'Joykul',8512,469,NULL,NULL,NULL,1,1,'2015-11-29 22:56:44',NULL,NULL),(800,'Jolagati',8513,469,NULL,NULL,NULL,1,1,'2015-11-29 22:56:55',NULL,NULL),(801,'Kanudashkathi',8551,468,NULL,NULL,NULL,1,1,'2015-11-29 22:57:16',NULL,NULL),(802,'Dhaoa',8552,468,NULL,NULL,NULL,1,1,'2015-11-29 22:57:28',NULL,NULL),(803,'Bhandaria',8550,468,NULL,NULL,NULL,1,1,'2015-11-29 22:57:40',NULL,NULL),(804,'Chakhar',8531,589,NULL,NULL,NULL,1,1,'2015-11-29 22:58:52',NULL,NULL),(805,'Banaripara',8530,589,NULL,NULL,NULL,1,1,'2015-11-29 22:59:59',NULL,NULL),(806,'Subidkhali',8610,590,NULL,NULL,NULL,1,1,'2015-11-29 23:00:51',NULL,NULL),(807,'Rahimabad',8603,467,NULL,NULL,NULL,1,1,'2015-11-29 23:01:36',NULL,NULL),(808,'Patuakhali Sadar',8600,467,NULL,NULL,NULL,1,1,'2015-11-29 23:40:21',NULL,NULL),(809,'Moukaran',8601,467,NULL,NULL,NULL,1,1,'2015-11-29 23:40:53',NULL,NULL),(810,'Dumkee',8602,467,NULL,NULL,NULL,1,1,'2015-11-29 23:41:05',NULL,NULL),(811,'Mahipur',8651,591,NULL,NULL,NULL,1,1,'2015-11-29 23:41:51',NULL,NULL),(812,'Khepupara',8650,591,NULL,NULL,NULL,1,1,'2015-11-29 23:42:01',NULL,NULL),(813,'Gazipur Bandar',8641,464,NULL,NULL,NULL,1,1,'2015-11-29 23:42:24',NULL,NULL),(814,'Galachipa',8640,464,NULL,NULL,NULL,1,1,'2015-11-29 23:42:37',NULL,NULL),(815,'Dashmina',8630,30,NULL,NULL,NULL,1,1,'2015-11-29 23:42:55',NULL,NULL),(816,'Kalishari',8623,462,NULL,NULL,NULL,1,1,'2015-11-29 23:43:13',NULL,NULL),(817,'Kalaia',8624,462,NULL,NULL,NULL,1,1,'2015-11-29 23:43:22',NULL,NULL),(818,'Birpasha',8622,462,NULL,NULL,NULL,1,1,'2015-11-29 23:43:33',NULL,NULL),(819,'Bauphal',8620,462,NULL,NULL,NULL,1,1,'2015-11-29 23:43:44',NULL,NULL),(820,'Bagabandar',8621,462,NULL,NULL,NULL,1,1,'2015-11-29 23:43:55',NULL,NULL),(821,'Nalchhiti',8420,460,NULL,NULL,NULL,1,1,'2015-11-29 23:44:38',NULL,NULL),(822,'Beerkathi',8421,460,NULL,NULL,NULL,1,1,'2015-11-29 23:44:50',NULL,NULL),(823,'Shoulajalia',8433,459,NULL,NULL,NULL,1,1,'2015-11-29 23:48:43',NULL,NULL),(824,'Niamatee',8432,459,NULL,NULL,NULL,1,1,'2015-11-29 23:48:55',NULL,NULL),(825,'Kathalia',8430,459,NULL,NULL,NULL,1,1,'2015-11-29 23:58:31',NULL,NULL),(826,'Amua',8431,459,NULL,NULL,NULL,1,1,'2015-11-29 23:58:51',NULL,NULL),(827,'Shekherhat',8404,458,NULL,NULL,NULL,1,1,'2015-11-29 23:59:08',NULL,NULL),(828,'Nabagram',8401,458,NULL,NULL,NULL,1,1,'2015-11-29 23:59:17',NULL,NULL),(829,'Jhalokathi Sadar',8400,458,NULL,NULL,NULL,1,1,'2015-11-29 23:59:31',NULL,NULL),(830,'Gabha',8403,458,NULL,NULL,NULL,1,1,'2015-11-29 23:59:47',NULL,NULL),(831,'Baukathi',8402,458,NULL,NULL,NULL,1,1,'2015-11-30 00:00:03',NULL,NULL),(832,'Lalmohan UPO',8330,455,NULL,NULL,NULL,1,1,'2015-11-30 00:00:31',NULL,NULL),(833,'Gazaria',8332,455,NULL,NULL,NULL,1,1,'2015-11-30 00:00:44',NULL,NULL),(834,'Daurihat',8331,455,NULL,NULL,NULL,1,1,'2015-11-30 00:00:56',NULL,NULL),(835,'Hatshoshiganj',8350,592,NULL,NULL,NULL,1,1,'2015-11-30 00:01:31',NULL,NULL),(836,'Hajirhat',8360,593,NULL,NULL,NULL,1,1,'2015-11-30 00:02:19',NULL,NULL),(837,'Hajipur',8311,454,NULL,NULL,NULL,1,1,'2015-11-30 00:02:34',NULL,NULL),(838,'Doulatkhan',8310,454,NULL,NULL,NULL,1,1,'2015-11-30 00:02:46',NULL,NULL),(839,'Keramatganj',8342,453,NULL,NULL,NULL,1,1,'2015-11-30 00:03:07',NULL,NULL),(840,'Dularhat',8341,453,NULL,NULL,NULL,1,1,'2015-11-30 00:03:17',NULL,NULL),(841,'Charfashion',8340,453,NULL,NULL,NULL,1,1,'2015-11-30 00:03:30',NULL,NULL),(842,'Mirzakalu',8321,452,NULL,NULL,NULL,1,1,'2015-11-30 00:03:45',NULL,NULL),(843,'Borhanuddin UPO',8320,452,NULL,NULL,NULL,1,1,'2015-11-30 00:03:54',NULL,NULL),(844,'Joynagar',8301,451,NULL,NULL,NULL,1,1,'2015-11-30 00:04:09',NULL,NULL),(845,'Bhola Sadar',8300,451,NULL,NULL,NULL,1,1,'2015-11-30 00:04:18',NULL,NULL),(846,'Wazirpur',8220,450,NULL,NULL,NULL,1,1,'2015-11-30 00:05:03',NULL,NULL),(847,'Shikarpur',8224,450,NULL,NULL,NULL,1,1,'2015-11-30 00:05:14',NULL,NULL),(848,'Jugirkanda',8222,450,NULL,NULL,NULL,1,1,'2015-11-30 00:05:26',NULL,NULL),(849,'Dhamura',8221,450,NULL,NULL,NULL,1,1,'2015-11-30 00:05:35',NULL,NULL),(850,'Dakuarhat',8223,450,NULL,NULL,NULL,1,1,'2015-11-30 00:05:47',NULL,NULL),(851,'Shialguni',8283,594,NULL,NULL,NULL,1,1,'2015-11-30 00:07:28',NULL,NULL),(852,'Sahebganj',8280,594,NULL,NULL,NULL,1,1,'2015-11-30 00:07:38',NULL,NULL),(853,'Padri Shibpur',8282,594,NULL,NULL,NULL,1,1,'2015-11-30 00:07:50',NULL,NULL),(854,'kalaskati',8284,594,NULL,NULL,NULL,1,1,'2015-11-30 00:08:04',NULL,NULL),(855,'Charamandi',8281,594,NULL,NULL,NULL,1,1,'2015-11-30 00:08:17',NULL,NULL),(856,'Muladi',8250,449,NULL,NULL,NULL,1,1,'2015-11-30 00:08:32',NULL,NULL),(857,'Kazirchar',8251,449,NULL,NULL,NULL,1,1,'2015-11-30 00:08:47',NULL,NULL),(858,'Charkalekhan',8252,449,NULL,NULL,NULL,1,1,'2015-11-30 00:09:01',NULL,NULL),(859,'Ulania',8272,448,NULL,NULL,NULL,1,1,'2015-11-30 00:09:17',NULL,NULL),(860,'Nalgora',8273,448,NULL,NULL,NULL,1,1,'2015-11-30 00:09:27',NULL,NULL),(861,'Mahendiganj',8270,448,NULL,NULL,NULL,1,1,'2015-11-30 00:09:39',NULL,NULL),(862,'Laskarpur',8271,448,NULL,NULL,NULL,1,1,'2015-11-30 00:09:52',NULL,NULL),(863,'Langutia',8274,448,NULL,NULL,NULL,1,1,'2015-11-30 00:10:09',NULL,NULL),(864,'Tarki Bandar',8231,445,NULL,NULL,NULL,1,1,'2015-11-30 00:10:38',NULL,NULL),(865,'Kashemabad',8232,445,NULL,NULL,NULL,1,1,'2015-11-30 00:10:48',NULL,NULL),(866,'Gouranadi',8230,445,NULL,NULL,NULL,1,1,'2015-11-30 00:10:58',NULL,NULL),(867,'Batajor',8233,445,NULL,NULL,NULL,1,1,'2015-11-30 00:11:11',NULL,NULL),(868,'Sugandia',8203,447,NULL,NULL,NULL,1,1,'2015-11-30 00:11:39',NULL,NULL),(869,'Saheberhat',8202,447,NULL,NULL,NULL,1,1,'2015-11-30 00:11:52',NULL,NULL),(870,'Patang',8204,447,NULL,NULL,NULL,1,1,'2015-11-30 00:12:05',NULL,NULL),(871,'Kashipur',8205,447,NULL,NULL,NULL,1,1,'2015-11-30 00:12:14',NULL,NULL),(872,'Jaguarhat',8206,447,NULL,NULL,NULL,1,1,'2015-11-30 00:12:28',NULL,NULL),(873,'Bukhainagar',8201,447,NULL,NULL,NULL,1,1,'2015-11-30 00:12:44',NULL,NULL),(874,'Barishal Sadar',8200,447,NULL,NULL,NULL,1,1,'2015-11-30 00:12:54',NULL,NULL),(875,'Osman Manjil',8261,595,NULL,NULL,NULL,1,1,'2015-11-30 00:13:46',NULL,NULL),(876,'Barajalia',8260,595,NULL,NULL,NULL,1,1,'2015-11-30 00:13:57',NULL,NULL),(877,'Thakur Mallik',8214,443,NULL,NULL,NULL,1,1,'2015-11-30 00:14:23',NULL,NULL),(878,'Rahamatpur',8211,443,NULL,NULL,NULL,1,1,'2015-11-30 00:14:33',NULL,NULL),(879,'Nizamuddin College',8215,443,NULL,NULL,NULL,1,1,'2015-11-30 00:14:43',NULL,NULL),(880,'Madhabpasha',8213,443,NULL,NULL,NULL,1,1,'2015-11-30 00:14:53',NULL,NULL),(881,'Chandpasha',8212,443,NULL,NULL,NULL,1,1,'2015-11-30 00:15:02',NULL,NULL),(882,'Barishal Cadet',8216,443,NULL,NULL,NULL,1,1,'2015-11-30 00:15:12',NULL,NULL),(883,'Babuganj',8210,443,NULL,NULL,NULL,1,1,'2015-11-30 00:15:20',NULL,NULL),(884,'Paisarhat',8242,442,NULL,NULL,NULL,1,1,'2015-11-30 00:15:36',NULL,NULL),(885,'Gaila',8241,442,NULL,NULL,NULL,1,1,'2015-11-30 00:15:45',NULL,NULL),(886,'Agailzhara',8240,442,NULL,NULL,NULL,1,1,'2015-11-30 00:15:53',NULL,NULL),(887,'Patharghata',8720,441,NULL,NULL,NULL,1,1,'2015-11-30 00:16:18',NULL,NULL),(888,'Kakchira',8721,441,NULL,NULL,NULL,1,1,'2015-11-30 00:16:27',NULL,NULL),(889,'Darul Ulam',8741,440,NULL,NULL,NULL,1,1,'2015-11-30 00:16:45',NULL,NULL),(890,'Betagi',8740,440,NULL,NULL,NULL,1,1,'2015-11-30 00:16:57',NULL,NULL),(891,'Nali Bandar',8701,29,NULL,NULL,NULL,1,1,'2015-11-30 00:17:12',NULL,NULL),(892,'Barguna Sadar',8700,29,NULL,NULL,NULL,1,1,'2015-11-30 00:17:22',NULL,NULL),(893,'Bamna',8730,439,NULL,NULL,NULL,1,1,'2015-11-30 00:17:35',NULL,NULL),(894,'Amtali',8710,438,NULL,NULL,NULL,1,1,'2015-11-30 00:17:48',NULL,NULL),(895,'Sylhet Cadet College',3101,402,NULL,NULL,NULL,1,1,'2015-11-30 00:18:29',NULL,NULL),(896,'Sylhet Biman Bondar',3102,402,NULL,NULL,NULL,1,1,'2015-11-30 00:18:37',NULL,NULL),(897,'Sylhe Sadar',3100,402,NULL,NULL,NULL,1,1,'2015-11-30 00:18:46',NULL,NULL),(898,'Silam',3105,402,NULL,NULL,NULL,1,1,'2015-11-30 00:18:56',NULL,NULL),(899,'Shahajalal Science & Eng. University',3114,402,NULL,NULL,NULL,1,1,'2015-11-30 00:19:23',NULL,NULL),(900,'Ranga Hajiganj',3109,402,NULL,NULL,NULL,1,1,'2015-11-30 00:19:38',NULL,NULL),(901,'Mogla',3108,402,NULL,NULL,NULL,1,1,'2015-11-30 00:19:48',NULL,NULL),(902,'Lalbazar',3113,402,NULL,NULL,NULL,1,1,'2015-11-30 00:19:58',NULL,NULL),(903,'Khadimnagar',3103,402,NULL,NULL,NULL,1,1,'2015-11-30 00:20:10',NULL,NULL),(904,'Kamalbazer',3112,402,NULL,NULL,NULL,1,1,'2015-11-30 00:20:22',NULL,NULL),(905,'Kadamtali',3111,402,NULL,NULL,NULL,1,1,'2015-11-30 00:20:32',NULL,NULL),(906,'Jalalabad Cantoment',3104,402,NULL,NULL,NULL,1,1,'2015-11-30 00:20:44',NULL,NULL),(907,'Birahimpur',3106,402,NULL,NULL,NULL,1,1,'2015-11-30 00:21:03',NULL,NULL),(908,'Companiganj',3140,395,NULL,NULL,NULL,1,1,'2015-11-30 00:21:34',NULL,NULL),(909,'Manikganj',3182,401,NULL,NULL,NULL,1,1,'2015-11-30 00:21:52',NULL,NULL),(910,'Kanaighat',3180,401,NULL,NULL,NULL,1,1,'2015-11-30 00:22:06',NULL,NULL),(911,'Gachbari',3183,401,NULL,NULL,NULL,1,1,'2015-11-30 00:22:17',NULL,NULL),(912,'Chatulbazar',3181,401,NULL,NULL,NULL,1,1,'2015-11-30 00:22:29',NULL,NULL),(913,'Jakiganj',3190,596,NULL,NULL,NULL,1,1,'2015-11-30 00:23:14',NULL,NULL),(914,'Ichhamati',3191,596,NULL,NULL,NULL,1,1,'2015-11-30 00:23:23',NULL,NULL),(915,'Jainthapur',3156,400,NULL,NULL,NULL,1,1,'2015-11-30 00:23:39',NULL,NULL),(916,'Ranaping',3163,398,NULL,NULL,NULL,1,1,'2015-11-30 00:24:17',NULL,NULL),(917,'Gopalgannj',3160,398,NULL,NULL,NULL,1,1,'2015-11-30 00:24:34',NULL,NULL),(918,'Dhaka Dakkhin',3161,398,NULL,NULL,NULL,1,1,'2015-11-30 00:25:36',NULL,NULL),(919,'Dakkhin Bhadashore',3162,398,NULL,NULL,NULL,1,1,'2015-11-30 00:25:46',NULL,NULL),(920,'banigram',3164,398,NULL,NULL,NULL,1,1,'2015-11-30 00:26:13',NULL,NULL),(921,'Jaflong',3151,399,NULL,NULL,NULL,1,1,'2015-11-30 00:26:36',NULL,NULL),(922,'Gowainghat',3150,399,NULL,NULL,NULL,1,1,'2015-11-30 00:27:19',NULL,NULL),(923,'Chiknagul',3152,399,NULL,NULL,NULL,1,1,'2015-11-30 00:34:42',NULL,NULL),(924,'Fenchuganj SareKarkh',3117,397,NULL,NULL,NULL,1,1,'2015-11-30 00:35:03',NULL,NULL),(925,'Fenchuganj',3116,397,NULL,NULL,NULL,1,1,'2015-11-30 00:35:17',NULL,NULL),(926,'Singer kanch',3134,394,NULL,NULL,NULL,1,1,'2015-11-30 00:35:39',NULL,NULL),(927,'Doulathpur',3132,394,NULL,NULL,NULL,1,1,'2015-11-30 00:36:03',NULL,NULL),(928,'Deokalas',3133,394,NULL,NULL,NULL,1,1,'2015-11-30 00:36:29',NULL,NULL),(929,'Dashghar',3131,394,NULL,NULL,NULL,1,1,'2015-11-30 00:36:39',NULL,NULL),(930,'Bishwanath',3130,394,NULL,NULL,NULL,1,1,'2015-11-30 00:36:50',NULL,NULL),(931,'Salia bazar',3174,27,NULL,NULL,NULL,1,1,'2015-11-30 00:37:10',NULL,NULL),(932,'Mathiura',3172,27,NULL,NULL,NULL,1,1,'2015-11-30 00:37:29',NULL,NULL),(933,'Kurar bazar',3173,27,NULL,NULL,NULL,1,1,'2015-11-30 00:37:42',NULL,NULL),(934,'jaldup',3171,27,NULL,NULL,NULL,1,1,'2015-11-30 00:38:13',NULL,NULL),(935,'Churkai',3175,27,NULL,NULL,NULL,1,1,'2015-11-30 00:38:26',NULL,NULL),(936,'Beanibazar',3170,27,NULL,NULL,NULL,1,1,'2015-11-30 00:38:55',NULL,NULL),(937,'Tajpur',3123,393,NULL,NULL,NULL,1,1,'2015-11-30 00:39:11',NULL,NULL),(938,'Omarpur',3126,393,NULL,NULL,NULL,1,1,'2015-11-30 00:39:22',NULL,NULL),(939,'Natun Bazar',3129,393,NULL,NULL,NULL,1,1,'2015-11-30 00:39:34',NULL,NULL),(940,'Kathal Khair',3127,393,NULL,NULL,NULL,1,1,'2015-11-30 00:39:45',NULL,NULL),(941,'Karua',3121,393,NULL,NULL,NULL,1,1,'2015-11-30 00:39:54',NULL,NULL),(942,'Goala Bazar',3124,393,NULL,NULL,NULL,1,1,'2015-11-30 00:40:04',NULL,NULL),(943,'Gaharpur',3128,393,NULL,NULL,NULL,1,1,'2015-11-30 00:40:16',NULL,NULL),(944,'Brahman Shashon',3122,393,NULL,NULL,NULL,1,1,'2015-11-30 00:40:29',NULL,NULL),(945,'Begumpur',3125,393,NULL,NULL,NULL,1,1,'2015-11-30 00:40:41',NULL,NULL),(946,'Balaganj',3120,393,NULL,NULL,NULL,1,1,'2015-11-30 00:40:55',NULL,NULL),(947,'Tahirpur',3030,392,NULL,NULL,NULL,1,1,'2015-11-30 00:41:30',NULL,NULL),(948,'Sunamganj Sadar',3000,391,NULL,NULL,NULL,1,1,'2015-11-30 00:41:46',NULL,NULL),(949,'Patharia',3002,391,NULL,NULL,NULL,1,1,'2015-11-30 00:41:58',NULL,NULL),(950,'Pagla',3001,391,NULL,NULL,NULL,1,1,'2015-11-30 00:42:09',NULL,NULL),(951,'  Syedpur  ',3061,389,NULL,NULL,NULL,1,1,'2015-11-30 00:43:09',NULL,NULL),(952,'Shiramsi',3065,389,NULL,NULL,NULL,1,1,'2015-11-30 00:43:36',NULL,NULL),(953,'Rasulganj',3064,389,NULL,NULL,NULL,1,1,'2015-11-30 00:44:08',NULL,NULL),(954,'Jagnnathpur',3060,389,NULL,NULL,NULL,1,1,'2015-11-30 00:44:22',NULL,NULL),(955,'Hasan Fatemapur',3063,389,NULL,NULL,NULL,1,1,'2015-11-30 00:44:43',NULL,NULL),(956,'Atuajan',3062,389,NULL,NULL,NULL,1,1,'2015-11-30 00:45:02',NULL,NULL),(957,'Duara bazar',3070,388,NULL,NULL,NULL,1,1,'2015-11-30 00:45:36',NULL,NULL),(958,'Jagdal',3041,597,NULL,NULL,NULL,1,1,'2015-11-30 00:46:52',NULL,NULL),(959,'Dhirai Chandpur',3040,597,NULL,NULL,NULL,1,1,'2015-11-30 00:47:03',NULL,NULL),(960,'Moinpur',3086,384,NULL,NULL,NULL,1,1,'2015-11-30 03:25:20',NULL,NULL),(961,'Khurma',3085,384,NULL,NULL,NULL,1,1,'2015-11-30 03:25:31',NULL,NULL),(962,'jahidpur',3087,384,NULL,NULL,NULL,1,1,'2015-11-30 03:25:43',NULL,NULL),(963,'Islamabad',3088,384,NULL,NULL,NULL,1,1,'2015-11-30 03:26:03',NULL,NULL),(964,'Gabindaganj Natun Ba',3084,384,NULL,NULL,NULL,1,1,'2015-11-30 03:26:22',NULL,NULL),(965,'Gabindaganj',3083,384,NULL,NULL,NULL,1,1,'2015-11-30 03:26:32',NULL,NULL),(966,'Chourangi Bazar',3893,384,NULL,NULL,NULL,1,1,'2015-11-30 03:26:47',NULL,NULL),(967,'Chhatak Paper Mills',3082,384,NULL,NULL,NULL,1,1,'2015-11-30 03:27:02',NULL,NULL),(968,'Chhatak Cement Facto',3081,384,NULL,NULL,NULL,1,1,'2015-11-30 03:27:13',NULL,NULL),(969,'Chhatak',3080,384,NULL,NULL,NULL,1,1,'2015-11-30 03:27:24',NULL,NULL),(970,'Bishamsapur',3010,383,NULL,NULL,NULL,1,1,'2015-11-30 03:27:43',NULL,NULL),(971,'Sreemangal',3210,382,NULL,NULL,NULL,1,1,'2015-11-30 03:28:25',NULL,NULL),(972,'Satgaon',3214,382,NULL,NULL,NULL,1,1,'2015-11-30 03:28:42',NULL,NULL),(973,'Narain Chora',3211,382,NULL,NULL,NULL,1,1,'2015-11-30 03:28:54',NULL,NULL),(974,'Khejurichhara',3213,382,NULL,NULL,NULL,1,1,'2015-11-30 03:29:05',NULL,NULL),(975,'Kalighat',3212,382,NULL,NULL,NULL,1,1,'2015-11-30 03:29:27',NULL,NULL),(976,'Rajnagar',3240,381,NULL,NULL,NULL,1,1,'2015-11-30 03:29:43',NULL,NULL),(977,'Moulvibazar Sadar',3200,380,NULL,NULL,NULL,1,1,'2015-11-30 03:29:58',NULL,NULL),(978,'Monumukh',3202,380,NULL,NULL,NULL,1,1,'2015-11-30 03:30:12',NULL,NULL),(979,'Barakapan',3201,380,NULL,NULL,NULL,1,1,'2015-11-30 03:30:36',NULL,NULL),(980,'Afrozganj',3203,380,NULL,NULL,NULL,1,1,'2015-11-30 03:30:50',NULL,NULL),(981,'Tillagaon',3231,379,NULL,NULL,NULL,1,1,'2015-11-30 03:31:21',NULL,NULL),(982,'Prithimpasha',3233,379,NULL,NULL,NULL,1,1,'2015-11-30 03:31:31',NULL,NULL),(983,'Langla',3232,379,NULL,NULL,NULL,1,1,'2015-11-30 03:31:45',NULL,NULL),(984,'Kulaura',3230,379,NULL,NULL,NULL,1,1,'2015-11-30 03:32:02',NULL,NULL),(985,'Kajaldhara',3234,379,NULL,NULL,NULL,1,1,'2015-11-30 03:32:25',NULL,NULL),(986,'Baramchal',3237,379,NULL,NULL,NULL,1,1,'2015-11-30 03:33:02',NULL,NULL),(987,'Shamsher Nagar',3223,378,NULL,NULL,NULL,1,1,'2015-11-30 03:34:37',NULL,NULL),(988,'Patrakhola',3222,378,NULL,NULL,NULL,1,1,'2015-11-30 03:34:50',NULL,NULL),(989,'Munshibazar',3224,378,NULL,NULL,NULL,1,1,'2015-11-30 03:35:04',NULL,NULL),(990,'Keramatnaga',3221,378,NULL,NULL,NULL,1,1,'2015-11-30 03:35:19',NULL,NULL),(991,'Kamalganj',3220,378,NULL,NULL,NULL,1,1,'2015-11-30 03:35:36',NULL,NULL),(992,'Purbashahabajpur',3253,376,NULL,NULL,NULL,1,1,'2015-11-30 03:36:02',NULL,NULL),(993,'Juri',3251,376,NULL,NULL,NULL,1,1,'2015-11-30 03:36:22',NULL,NULL),(994,'Dhakkhinbag',3252,376,NULL,NULL,NULL,1,1,'2015-11-30 03:36:58',NULL,NULL),(995,'Baralekha',3250,376,NULL,NULL,NULL,1,1,'2015-11-30 03:38:11',NULL,NULL),(996,'Inathganj',3374,375,NULL,NULL,NULL,1,1,'2015-11-30 03:41:00',NULL,NULL),(997,'Goplarbazar',3371,375,NULL,NULL,NULL,1,1,'2015-11-30 03:41:15',NULL,NULL),(998,'Golduba',3372,375,NULL,NULL,NULL,1,1,'2015-11-30 03:41:31',NULL,NULL),(999,'Digalbak',3373,375,NULL,NULL,NULL,1,1,'2015-11-30 03:41:46',NULL,NULL),(1000,'Shahajibazar',3332,374,NULL,NULL,NULL,1,1,'2015-11-30 03:42:31',NULL,NULL),(1001,'Saihamnagar',3333,374,NULL,NULL,NULL,1,1,'2015-11-30 03:42:44',NULL,NULL),(1002,'Madhabpur',3330,374,NULL,NULL,NULL,1,1,'2015-11-30 03:42:56',NULL,NULL),(1003,'Itakhola',3331,374,NULL,NULL,NULL,1,1,'2015-11-30 03:43:11',NULL,NULL),(1004,'Shaestaganj',3301,373,NULL,NULL,NULL,1,1,'2015-11-30 03:43:41',NULL,NULL),(1005,'Hobiganj Sadar',3300,373,NULL,NULL,NULL,1,1,'2015-11-30 03:43:52',NULL,NULL),(1006,'Gopaya',3302,373,NULL,NULL,NULL,1,1,'2015-11-30 03:44:10',NULL,NULL),(1007,'Narapati',3322,372,NULL,NULL,NULL,1,1,'2015-11-30 03:45:07',NULL,NULL),(1008,'Chunarughat',3320,372,NULL,NULL,NULL,1,1,'2015-11-30 03:45:22',NULL,NULL),(1009,'Chandpurbagan',3321,372,NULL,NULL,NULL,1,1,'2015-11-30 03:45:36',NULL,NULL),(1010,'Azmireeganj',3360,369,NULL,NULL,NULL,1,1,'2015-11-30 04:27:37',NULL,NULL),(1011,'Bahubal',3310,370,NULL,NULL,NULL,1,1,'2015-11-30 04:27:57',NULL,NULL),(1012,'Baniachang',3350,371,NULL,NULL,NULL,1,1,'2015-11-30 04:28:11',NULL,NULL),(1013,'Jatrapasha',3351,371,NULL,NULL,NULL,1,1,'2015-11-30 04:28:26',NULL,NULL),(1014,'Kadirganj',3352,371,NULL,NULL,NULL,1,1,'2015-11-30 04:28:48',NULL,NULL),(1015,'Rangamati Sadar',4500,414,NULL,NULL,NULL,1,1,'2015-11-30 04:30:27',NULL,NULL),(1016,'Rajsthali',4540,413,NULL,NULL,NULL,1,1,'2015-11-30 04:30:45',NULL,NULL),(1017,'Nanichhar',4520,412,NULL,NULL,NULL,1,1,'2015-11-30 04:31:00',NULL,NULL),(1018,'Marishya',4590,599,NULL,NULL,NULL,1,1,'2015-11-30 04:32:00',NULL,NULL),(1019,'Longachh',4580,599,NULL,NULL,NULL,1,1,'2015-11-30 04:32:21',NULL,NULL),(1020,'Kaptai Project',4532,409,NULL,NULL,NULL,1,1,'2015-11-30 04:32:42',NULL,NULL),(1021,'Kaptai Nuton Bazar',4533,409,NULL,NULL,NULL,1,1,'2015-11-30 04:32:52',NULL,NULL),(1022,'Kaptai',4530,409,NULL,NULL,NULL,1,1,'2015-11-30 04:33:03',NULL,NULL),(1023,'Chandraghona',4531,409,NULL,NULL,NULL,1,1,'2015-11-30 04:33:17',NULL,NULL),(1024,'Jarachhari',4560,410,NULL,NULL,NULL,1,1,'2015-11-30 04:33:56',NULL,NULL),(1025,'Kalampati',4510,600,NULL,NULL,NULL,1,1,'2015-11-30 04:34:45',NULL,NULL),(1026,'Betbunia',4511,600,NULL,NULL,NULL,1,1,'2015-11-30 04:34:56',NULL,NULL),(1027,'Baghaaichhari',4550,405,NULL,NULL,NULL,1,1,'2015-11-30 04:35:41',NULL,NULL),(1028,'Barakal',4570,406,NULL,NULL,NULL,1,1,'2015-11-30 04:35:55',NULL,NULL),(1029,'T.P. Lamua',3865,64,NULL,NULL,NULL,1,1,'2015-11-30 04:36:49',NULL,NULL),(1030,'Senbag',3860,64,NULL,NULL,NULL,1,1,'2015-11-30 04:37:02',NULL,NULL),(1031,'Kankirhat',3863,64,NULL,NULL,NULL,1,1,'2015-11-30 04:37:47',NULL,NULL),(1032,'Kallyandi',3861,64,NULL,NULL,NULL,1,1,'2015-11-30 04:38:03',NULL,NULL),(1033,'Chatarpaia',3864,64,NULL,NULL,NULL,1,1,'2015-11-30 04:38:32',NULL,NULL),(1034,'Beezbag',3862,64,NULL,NULL,NULL,1,1,'2015-11-30 04:38:46',NULL,NULL),(1035,'Sonapur',3802,67,NULL,NULL,NULL,1,1,'2015-11-30 04:39:09',NULL,NULL),(1036,'Pak Kishoreganj',3804,67,NULL,NULL,NULL,1,1,'2015-11-30 04:39:24',NULL,NULL),(1037,'Noakhali Sadar',3800,67,NULL,NULL,NULL,1,1,'2015-11-30 04:39:38',NULL,NULL),(1038,'Noakhali College',3801,67,NULL,NULL,NULL,1,1,'2015-11-30 04:39:47',NULL,NULL),(1039,'Mriddarhat',3806,67,NULL,NULL,NULL,1,1,'2015-11-30 04:39:58',NULL,NULL),(1040,'Khalifar Hat',3808,67,NULL,NULL,NULL,1,1,'2015-11-30 04:40:22',NULL,NULL),(1041,'Kabirhat',3807,67,NULL,NULL,NULL,1,1,'2015-11-30 04:40:31',NULL,NULL),(1042,'Din Monir Hat',3803,67,NULL,NULL,NULL,1,1,'2015-11-30 04:40:43',NULL,NULL),(1043,'Charam Tua',3809,67,NULL,NULL,NULL,1,1,'2015-11-30 04:41:03',NULL,NULL),(1044,'Char Jabbar',3812,67,NULL,NULL,NULL,1,1,'2015-11-30 04:41:13',NULL,NULL),(1045,'Chaprashir Hat',3811,67,NULL,NULL,NULL,1,1,'2015-11-30 04:41:28',NULL,NULL),(1046,'Tamoraddi',3892,15,NULL,NULL,NULL,1,1,'2015-11-30 04:42:27',NULL,NULL),(1047,'Hatiya',3890,15,NULL,NULL,NULL,1,1,'2015-11-30 04:42:52',NULL,NULL),(1048,'Afazia',3891,15,NULL,NULL,NULL,1,1,'2015-11-30 04:43:01',NULL,NULL),(1049,'Solla',3875,62,NULL,NULL,NULL,1,1,'2015-11-30 04:43:18',NULL,NULL),(1050,'Shingbahura',3883,62,NULL,NULL,NULL,1,1,'2015-11-30 04:43:29',NULL,NULL),(1051,'Sampara',3882,62,NULL,NULL,NULL,1,1,'2015-11-30 04:43:39',NULL,NULL),(1052,'Sahapur',3881,62,NULL,NULL,NULL,1,1,'2015-11-30 04:43:48',NULL,NULL),(1053,'Rezzakpur',3874,62,NULL,NULL,NULL,1,1,'2015-11-30 04:44:09',NULL,NULL),(1054,'Palla',3871,62,NULL,NULL,NULL,1,1,'2015-11-30 04:44:17',NULL,NULL),(1055,'Khilpara',3872,62,NULL,NULL,NULL,1,1,'2015-11-30 04:44:29',NULL,NULL),(1056,'Karihati',3877,62,NULL,NULL,NULL,1,1,'2015-11-30 04:44:42',NULL,NULL),(1057,'Dosh Gharia',3878,62,NULL,NULL,NULL,1,1,'2015-11-30 04:44:53',NULL,NULL),(1058,'Chatkhil',3870,62,NULL,NULL,NULL,1,1,'2015-11-30 04:45:04',NULL,NULL),(1059,'Bodalcourt',3873,62,NULL,NULL,NULL,1,1,'2015-11-30 04:45:16',NULL,NULL),(1060,'Bansa Bazar',3879,62,NULL,NULL,NULL,1,1,'2015-11-30 04:45:25',NULL,NULL),(1061,'Thanar Hat',3845,61,NULL,NULL,NULL,1,1,'2015-11-30 04:46:03',NULL,NULL),(1062,'Tangirpar',3832,61,NULL,NULL,NULL,1,1,'2015-11-30 04:46:15',NULL,NULL),(1063,'Sonaimuri',3827,61,NULL,NULL,NULL,1,1,'2015-11-30 04:46:25',NULL,NULL),(1064,'Rajganj',3834,61,NULL,NULL,NULL,1,1,'2015-11-30 04:46:38',NULL,NULL),(1065,'Oachhekpur',3835,61,NULL,NULL,NULL,1,1,'2015-11-30 04:46:48',NULL,NULL),(1066,'Nandiapara',3841,61,NULL,NULL,NULL,1,1,'2015-11-30 04:46:59',NULL,NULL),(1067,'Nadona',3839,61,NULL,NULL,NULL,1,1,'2015-11-30 04:47:10',NULL,NULL),(1068,'Mir Owarishpur',3823,61,NULL,NULL,NULL,1,1,'2015-11-30 04:47:25',NULL,NULL),(1069,'Maheshganj',3838,61,NULL,NULL,NULL,1,1,'2015-11-30 04:47:39',NULL,NULL),(1070,'Khalishpur',3842,61,NULL,NULL,NULL,1,1,'2015-11-30 04:47:48',NULL,NULL),(1071,'Khalafat Bazar',3833,61,NULL,NULL,NULL,1,1,'2015-11-30 04:47:58',NULL,NULL),(1072,'Joynarayanpur',3829,61,NULL,NULL,NULL,1,1,'2015-11-30 04:48:11',NULL,NULL),(1073,'Joyag',3844,61,NULL,NULL,NULL,1,1,'2015-11-30 04:48:21',NULL,NULL),(1074,'Jamidar Hat',3825,61,NULL,NULL,NULL,1,1,'2015-11-30 04:49:25',NULL,NULL),(1075,'Gapalpur',3828,61,NULL,NULL,NULL,1,1,'2015-11-30 04:49:53',NULL,NULL),(1076,'Daurgapur',3848,61,NULL,NULL,NULL,1,1,'2015-11-30 04:50:22',NULL,NULL),(1077,'Dauti',3843,61,NULL,NULL,NULL,1,1,'2015-11-30 04:50:39',NULL,NULL),(1078,'Choumohani',3821,61,NULL,NULL,NULL,1,1,'2015-11-30 04:50:51',NULL,NULL),(1079,'Bhabani Jibanpur',3837,61,NULL,NULL,NULL,1,1,'2015-11-30 04:51:06',NULL,NULL),(1080,'Begumganj',3820,61,NULL,NULL,NULL,1,1,'2015-11-30 04:51:17',NULL,NULL),(1081,'Bazra',3824,61,NULL,NULL,NULL,1,1,'2015-11-30 04:51:31',NULL,NULL),(1082,'Banglabazar',3822,61,NULL,NULL,NULL,1,1,'2015-11-30 05:02:22',NULL,NULL),(1083,'Amisha Para',3847,61,NULL,NULL,NULL,1,1,'2015-11-30 05:02:33',NULL,NULL),(1084,'Alaiarpur',3831,61,NULL,NULL,NULL,1,1,'2015-11-30 05:02:44',NULL,NULL),(1085,'Charhajari',3851,601,NULL,NULL,NULL,1,1,'2015-11-30 05:03:43',NULL,NULL),(1086,'Basur Hat',3850,601,NULL,NULL,NULL,1,1,'2015-11-30 05:03:52',NULL,NULL),(1087,'Raypur',3710,58,NULL,NULL,NULL,1,1,'2015-11-30 05:04:22',NULL,NULL),(1088,'Rakhallia',3711,58,NULL,NULL,NULL,1,1,'2015-11-30 05:04:35',NULL,NULL),(1089,'Nagerdighirpar',3712,58,NULL,NULL,NULL,1,1,'2015-11-30 05:04:46',NULL,NULL),(1090,'Haydarganj',3713,58,NULL,NULL,NULL,1,1,'2015-11-30 05:04:57',NULL,NULL),(1091,'Bhuabari',3714,58,NULL,NULL,NULL,1,1,'2015-11-30 05:05:16',NULL,NULL),(1092,'Ramganj',3720,59,NULL,NULL,NULL,1,1,'2015-11-30 05:05:32',NULL,NULL),(1093,'Panpara',3722,59,NULL,NULL,NULL,1,1,'2015-11-30 05:05:43',NULL,NULL),(1094,'Naagmud',3724,59,NULL,NULL,NULL,1,1,'2015-11-30 05:05:56',NULL,NULL),(1095,'Kanchanpur',3723,59,NULL,NULL,NULL,1,1,'2015-11-30 05:06:05',NULL,NULL),(1096,'Dolta',3725,59,NULL,NULL,NULL,1,1,'2015-11-30 05:06:22',NULL,NULL),(1097,'Alipur',3721,59,NULL,NULL,NULL,1,1,'2015-11-30 05:06:29',NULL,NULL),(1098,'Rupchara',3705,57,NULL,NULL,NULL,1,1,'2015-11-30 05:06:46',NULL,NULL),(1099,'Mandari',3703,57,NULL,NULL,NULL,1,1,'2015-11-30 05:06:56',NULL,NULL),(1100,'Lakshimpur Sadar',3700,57,NULL,NULL,NULL,1,1,'2015-11-30 05:07:09',NULL,NULL),(1101,'Duttapara',3706,57,NULL,NULL,NULL,1,1,'2015-11-30 05:07:32',NULL,NULL),(1102,'Dalal Bazar',3701,57,NULL,NULL,NULL,1,1,'2015-11-30 05:07:44',NULL,NULL),(1103,'Choupalli',3707,57,NULL,NULL,NULL,1,1,'2015-11-30 05:07:57',NULL,NULL),(1104,'Chandraganj',3708,57,NULL,NULL,NULL,1,1,'2015-11-30 05:08:54',NULL,NULL),(1105,'Bhabaniganj',3702,57,NULL,NULL,NULL,1,1,'2015-11-30 05:09:06',NULL,NULL),(1106,'Amani Lakshimpur',3709,57,NULL,NULL,NULL,1,1,'2015-11-30 05:09:18',NULL,NULL),(1107,'Hajirghat',3731,602,NULL,NULL,NULL,1,1,'2015-11-30 05:10:37',NULL,NULL),(1108,'Char Alexgander',3730,602,NULL,NULL,NULL,1,1,'2015-11-30 05:10:48',NULL,NULL),(1109,'Ramghar Head Office',4440,603,NULL,NULL,NULL,1,1,'2015-11-30 05:11:03',NULL,NULL),(1110,'Panchhari',4410,54,NULL,NULL,NULL,1,1,'2015-11-30 05:12:15',NULL,NULL),(1111,'Matiranga',4450,53,NULL,NULL,NULL,1,1,'2015-11-30 05:12:30',NULL,NULL),(1112,'Manikchhari',4460,52,NULL,NULL,NULL,1,1,'2015-11-30 05:12:45',NULL,NULL),(1113,'Laxmichhari',4470,50,NULL,NULL,NULL,1,1,'2015-11-30 05:13:05',NULL,NULL),(1114,'Khagrachari Sadar',4400,49,NULL,NULL,NULL,1,1,'2015-11-30 05:13:16',NULL,NULL),(1115,'Diginala',4420,48,NULL,NULL,NULL,1,1,'2015-11-30 05:13:29',NULL,NULL),(1116,'Sonagazi',3930,47,NULL,NULL,NULL,1,1,'2015-11-30 05:13:51',NULL,NULL),(1117,'Motiganj',3931,47,NULL,NULL,NULL,1,1,'2015-11-30 05:14:05',NULL,NULL),(1118,'Kazirhat',3933,47,NULL,NULL,NULL,1,1,'2015-11-30 05:14:13',NULL,NULL),(1119,'Ahmadpur',3932,47,NULL,NULL,NULL,1,1,'2015-11-30 05:14:22',NULL,NULL),(1120,'Shuarbazar',3941,46,NULL,NULL,NULL,1,1,'2015-11-30 05:14:45',NULL,NULL),(1121,'Pashurampur',3940,46,NULL,NULL,NULL,1,1,'2015-11-30 05:14:55',NULL,NULL),(1122,'Fulgazi',3942,46,NULL,NULL,NULL,1,1,'2015-11-30 05:15:13',NULL,NULL),(1123,'Sharshadie',3902,44,NULL,NULL,NULL,1,1,'2015-11-30 05:15:25',NULL,NULL),(1124,'Laskarhat',3903,44,NULL,NULL,NULL,1,1,'2015-11-30 05:15:33',NULL,NULL),(1125,'Feni Sadar',3900,44,NULL,NULL,NULL,1,1,'2015-11-30 05:41:05',NULL,NULL),(1126,'Fazilpur',3901,44,NULL,NULL,NULL,1,1,'2015-11-30 05:41:16',NULL,NULL),(1127,'Dudmukha',3921,7,NULL,NULL,NULL,1,1,'2015-11-30 05:41:55',NULL,NULL),(1128,'Dagondhuia',3920,7,NULL,NULL,NULL,1,1,'2015-11-30 05:42:05',NULL,NULL),(1129,'Chhilonia',3922,7,NULL,NULL,NULL,1,1,'2015-11-30 05:42:16',NULL,NULL),(1130,'Puabashimulia',3913,6,NULL,NULL,NULL,1,1,'2015-11-30 05:42:38',NULL,NULL),(1131,'Daraga Hat',3912,6,NULL,NULL,NULL,1,1,'2015-11-30 05:43:06',NULL,NULL),(1132,'Chhagalnaia',3910,6,NULL,NULL,NULL,1,1,'2015-11-30 05:43:17',NULL,NULL),(1133,'Ukhia',4750,5,NULL,NULL,NULL,1,1,'2015-11-30 05:43:49',NULL,NULL),(1134,'Teknaf',4760,4,NULL,NULL,NULL,1,1,'2015-11-30 05:44:01',NULL,NULL),(1135,'St.Martin',4762,4,NULL,NULL,NULL,1,1,'2015-11-30 05:44:13',NULL,NULL),(1136,'Hnila',4761,4,NULL,NULL,NULL,1,1,'2015-11-30 05:44:25',NULL,NULL),(1137,'Ramu',4730,3,NULL,NULL,NULL,1,1,'2015-11-30 05:44:39',NULL,NULL),(1138,'Kutubdia',4720,541,NULL,NULL,NULL,1,1,'2015-11-30 05:44:57',NULL,NULL),(1139,'Gorakghat',4710,604,NULL,NULL,NULL,1,1,'2015-11-30 05:45:42',NULL,NULL),(1140,'Zhilanja',4701,540,NULL,NULL,NULL,1,1,'2015-11-30 05:45:53',NULL,NULL),(1141,'Eidga',4702,540,NULL,NULL,NULL,1,1,'2015-11-30 05:46:07',NULL,NULL),(1142,'Coxs Bazar Sadar',4700,540,NULL,NULL,NULL,1,1,'2015-11-30 05:46:19',NULL,NULL),(1143,'Malumghat',4743,605,NULL,NULL,NULL,1,1,'2015-11-30 05:47:03',NULL,NULL),(1144,'Chiringga S.O',4741,605,NULL,NULL,NULL,1,1,'2015-11-30 05:47:13',NULL,NULL),(1145,'Chiringga',4740,605,NULL,NULL,NULL,1,1,'2015-11-30 05:47:23',NULL,NULL),(1146,'Badarkali',4742,605,NULL,NULL,NULL,1,1,'2015-11-30 05:47:34',NULL,NULL),(1147,'Sonakanda',3544,536,NULL,NULL,NULL,1,1,'2015-11-30 05:48:05',NULL,NULL),(1148,'Ramchandarpur',3541,536,NULL,NULL,NULL,1,1,'2015-11-30 05:48:19',NULL,NULL),(1149,'Pantibazar',3545,536,NULL,NULL,NULL,1,1,'2015-11-30 05:48:30',NULL,NULL),(1150,'Muradnagar',3540,536,NULL,NULL,NULL,1,1,'2015-11-30 05:48:39',NULL,NULL),(1151,'Companyganj',3542,536,NULL,NULL,NULL,1,1,'2015-11-30 05:48:50',NULL,NULL),(1152,'Bangra',3543,536,NULL,NULL,NULL,1,1,'2015-11-30 05:48:58',NULL,NULL),(1153,'Nangalkot',3580,537,NULL,NULL,NULL,1,1,'2015-11-30 05:49:47',NULL,NULL),(1154,'Gunabati',3583,537,NULL,NULL,NULL,1,1,'2015-11-30 05:50:00',NULL,NULL),(1155,'Dhalua',3581,537,NULL,NULL,NULL,1,1,'2015-11-30 05:50:10',NULL,NULL),(1156,'Chhariabazar',3582,537,NULL,NULL,NULL,1,1,'2015-11-30 05:50:23',NULL,NULL),(1157,'Lakshamanpur',3571,533,NULL,NULL,NULL,1,1,'2015-11-30 05:50:46',NULL,NULL),(1158,'Laksam',3570,533,NULL,NULL,NULL,1,1,'2015-11-30 05:50:54',NULL,NULL),(1159,'Bipulasar',3572,533,NULL,NULL,NULL,1,1,'2015-11-30 05:51:15',NULL,NULL),(1160,'Homna',3546,531,NULL,NULL,NULL,1,1,'2015-11-30 05:51:32',NULL,NULL),(1161,'Gangamandal',3531,530,NULL,NULL,NULL,1,1,'2015-11-30 05:51:48',NULL,NULL),(1162,'Dhamtee',3533,530,NULL,NULL,NULL,1,1,'2015-11-30 05:51:59',NULL,NULL),(1163,'Davidhar',3530,530,NULL,NULL,NULL,1,1,'2015-11-30 05:52:16',NULL,NULL),(1164,'Barashalghar',3532,530,NULL,NULL,NULL,1,1,'2015-11-30 05:52:30',NULL,NULL),(1165,'Eliotganj',3519,529,NULL,NULL,NULL,1,1,'2015-11-30 05:52:55',NULL,NULL),(1166,'Daudkandi',3516,529,NULL,NULL,NULL,1,1,'2015-11-30 05:53:04',NULL,NULL),(1167,'Dashpara',3518,529,NULL,NULL,NULL,1,1,'2015-11-30 05:53:12',NULL,NULL),(1168,'Suaganj',3504,529,NULL,NULL,NULL,1,1,'2015-11-30 05:53:24',NULL,NULL),(1169,'Halimanagar',3502,528,NULL,NULL,NULL,1,1,'2015-11-30 05:53:46',NULL,NULL),(1170,'Courtbari',3503,528,NULL,NULL,NULL,1,1,'2015-11-30 05:53:55',NULL,NULL),(1171,'Comilla Sadar',3500,528,NULL,NULL,NULL,1,1,'2015-11-30 05:54:05',NULL,NULL),(1172,'Comilla Contoment',3501,528,NULL,NULL,NULL,1,1,'2015-11-30 05:54:14',NULL,NULL),(1173,'Chouddagram',3550,527,NULL,NULL,NULL,1,1,'2015-11-30 05:54:28',NULL,NULL),(1174,'Chiora',3552,527,NULL,NULL,NULL,1,1,'2015-11-30 05:54:40',NULL,NULL),(1175,'Batisa',3551,527,NULL,NULL,NULL,1,1,'2015-11-30 05:54:51',NULL,NULL),(1176,'Madhaiabazar',3511,526,NULL,NULL,NULL,1,1,'2015-11-30 05:55:08',NULL,NULL),(1177,'Chandia',3510,526,NULL,NULL,NULL,1,1,'2015-11-30 05:55:19',NULL,NULL),(1178,'Maynamoti bazar',3521,525,NULL,NULL,NULL,1,1,'2015-11-30 05:55:34',NULL,NULL),(1179,'Burichang',3520,525,NULL,NULL,NULL,1,1,'2015-11-30 05:55:44',NULL,NULL),(1180,'Brahmanpara',3526,524,NULL,NULL,NULL,1,1,'2015-11-30 05:55:56',NULL,NULL),(1181,'Poyalgachha',3561,523,NULL,NULL,NULL,1,1,'2015-11-30 05:56:08',NULL,NULL),(1182,'Murdafarganj',3562,523,NULL,NULL,NULL,1,1,'2015-11-30 05:56:17',NULL,NULL),(1183,'Barura',3560,523,NULL,NULL,NULL,1,1,'2015-11-30 05:56:28',NULL,NULL),(1184,'Sitakunda',4310,522,NULL,NULL,NULL,1,1,'2015-11-30 05:57:05',NULL,NULL),(1185,'Kumira',4314,522,NULL,NULL,NULL,1,1,'2015-11-30 05:57:16',NULL,NULL),(1186,'Jafrabad',4317,522,NULL,NULL,NULL,1,1,'2015-11-30 05:57:26',NULL,NULL),(1187,'Fouzdarhat',4316,522,NULL,NULL,NULL,1,1,'2015-11-30 05:57:41',NULL,NULL),(1188,'Bhatiari',4315,522,NULL,NULL,NULL,1,1,'2015-11-30 05:57:51',NULL,NULL),(1189,'Bawashbaria',4313,522,NULL,NULL,NULL,1,1,'2015-11-30 05:58:01',NULL,NULL),(1190,'Baroidhala',4311,522,NULL,NULL,NULL,1,1,'2015-11-30 05:58:10',NULL,NULL),(1191,'Barabkunda',4312,522,NULL,NULL,NULL,1,1,'2015-11-30 05:58:23',NULL,NULL),(1192,'Satkania',4386,522,NULL,NULL,NULL,1,1,'2015-11-30 05:58:36',NULL,NULL),(1193,'Bazalia',4388,522,NULL,NULL,NULL,1,1,'2015-11-30 05:58:46',NULL,NULL),(1194,'Baitul Ijjat',4387,522,NULL,NULL,NULL,1,1,'2015-11-30 05:59:00',NULL,NULL),(1195,'Urirchar',4302,520,NULL,NULL,NULL,1,1,'2015-11-30 05:59:15',NULL,NULL),(1196,'Shiberhat',4301,520,NULL,NULL,NULL,1,1,'2015-11-30 05:59:25',NULL,NULL),(1197,'Sandwip',4300,520,NULL,NULL,NULL,1,1,'2015-11-30 05:59:33',NULL,NULL),(1198,'Rouzan',4340,519,NULL,NULL,NULL,1,1,'2015-11-30 05:59:49',NULL,NULL),(1199,'Mohamuni',4348,519,NULL,NULL,NULL,1,1,'2015-11-30 06:00:02',NULL,NULL),(1200,'Kundeshwari',4342,519,NULL,NULL,NULL,1,1,'2015-11-30 06:00:13',NULL,NULL),(1201,'jagannath Hat',4344,519,NULL,NULL,NULL,1,1,'2015-11-30 06:00:24',NULL,NULL),(1202,'Guzra Noapara',4346,519,NULL,NULL,NULL,1,1,'2015-11-30 06:00:38',NULL,NULL),(1203,'Gahira',4343,519,NULL,NULL,NULL,1,1,'2015-11-30 06:00:49',NULL,NULL),(1204,'Fatepur',4345,519,NULL,NULL,NULL,1,1,'2015-11-30 06:00:57',NULL,NULL),(1205,'Dewanpur',4347,519,NULL,NULL,NULL,1,1,'2015-11-30 06:01:10',NULL,NULL),(1206,'Beenajuri',4341,519,NULL,NULL,NULL,1,1,'2015-11-30 06:01:19',NULL,NULL),(1207,'B.I.T Post Office',4349,519,NULL,NULL,NULL,1,1,'2015-11-30 06:01:30',NULL,NULL),(1208,'Rangunia',4360,519,NULL,NULL,NULL,1,1,'2015-11-30 06:01:41',NULL,NULL),(1209,'Dhamair',4361,519,NULL,NULL,NULL,1,1,'2015-11-30 06:01:49',NULL,NULL),(1210,'Patia Head Office',4370,516,NULL,NULL,NULL,1,1,'2015-11-30 06:02:03',NULL,NULL),(1211,'Budhpara',4371,516,NULL,NULL,NULL,1,1,'2015-11-30 06:02:14',NULL,NULL),(1212,'Mohazanhat',4328,513,NULL,NULL,NULL,1,1,'2015-11-30 06:02:36',NULL,NULL),(1213,'Mirsharai',4320,513,NULL,NULL,NULL,1,1,'2015-11-30 06:02:46',NULL,NULL),(1214,'Korerhat',4327,513,NULL,NULL,NULL,1,1,'2015-11-30 06:02:59',NULL,NULL),(1215,'Joarganj',4324,513,NULL,NULL,NULL,1,1,'2015-11-30 06:03:10',NULL,NULL),(1216,'Darrogahat',4322,513,NULL,NULL,NULL,1,1,'2015-11-30 06:03:23',NULL,NULL),(1217,'Bharawazhat',4323,513,NULL,NULL,NULL,1,1,'2015-11-30 06:03:34',NULL,NULL),(1218,'Azampur',4325,513,NULL,NULL,NULL,1,1,'2015-11-30 06:03:44',NULL,NULL),(1219,'Abutorab',4321,513,NULL,NULL,NULL,1,1,'2015-11-30 06:03:53',NULL,NULL),(1220,'Padua',4397,512,NULL,NULL,NULL,1,1,'2015-11-30 06:04:18',NULL,NULL),(1221,'Lohagara',4396,512,NULL,NULL,NULL,1,1,'2015-11-30 06:04:26',NULL,NULL),(1222,'Chunti',4398,512,NULL,NULL,NULL,1,1,'2015-11-30 06:04:42',NULL,NULL),(1223,'Khan Bahadur',4391,606,NULL,NULL,NULL,1,1,'2015-11-30 06:05:32',NULL,NULL),(1224,'Jaldi',4390,606,NULL,NULL,NULL,1,1,'2015-11-30 06:05:44',NULL,NULL),(1225,'Gunagari',4392,606,NULL,NULL,NULL,1,1,'2015-11-30 06:05:53',NULL,NULL),(1226,'Yunus Nagar',4338,509,NULL,NULL,NULL,1,1,'2015-11-30 06:06:20',NULL,NULL),(1227,'Nuralibari',4337,509,NULL,NULL,NULL,1,1,'2015-11-30 06:06:29',NULL,NULL),(1228,'Mirzapuur',4334,509,NULL,NULL,NULL,1,1,'2015-11-30 06:06:54',NULL,NULL),(1229,'Madrasa',4339,509,NULL,NULL,NULL,1,1,'2015-11-30 06:07:08',NULL,NULL),(1230,'Katirhat',4333,509,NULL,NULL,NULL,1,1,'2015-11-30 06:07:16',NULL,NULL),(1231,'Hathazari',4330,509,NULL,NULL,NULL,1,1,'2015-11-30 06:07:24',NULL,NULL),(1232,'Gorduara',4332,509,NULL,NULL,NULL,1,1,'2015-11-30 06:07:33',NULL,NULL),(1233,'Fatahabad',4335,509,NULL,NULL,NULL,1,1,'2015-11-30 06:07:53',NULL,NULL),(1234,'Chitt.University',4331,509,NULL,NULL,NULL,1,1,'2015-11-30 06:08:02',NULL,NULL),(1235,'Narayanhat',4355,507,NULL,NULL,NULL,1,1,'2015-11-30 06:08:22',NULL,NULL),(1236,'Nanupur',4351,507,NULL,NULL,NULL,1,1,'2015-11-30 06:08:34',NULL,NULL),(1237,'Najirhat',4353,507,NULL,NULL,NULL,1,1,'2015-11-30 06:08:44',NULL,NULL),(1238,'Harualchhari',4354,507,NULL,NULL,NULL,1,1,'2015-11-30 06:08:55',NULL,NULL),(1239,'Fatikchhari',4350,507,NULL,NULL,NULL,1,1,'2015-11-30 06:09:17',NULL,NULL),(1240,'Bhandar Sharif',4352,507,NULL,NULL,NULL,1,1,'2015-11-30 06:29:41',NULL,NULL),(1241,'Gachbaria',4381,607,NULL,NULL,NULL,1,1,'2015-11-30 06:30:26',NULL,NULL),(1242,'East Joara',4380,607,NULL,NULL,NULL,1,1,'2015-11-30 06:30:46',NULL,NULL),(1243,'Dohazari',4382,607,NULL,NULL,NULL,1,1,'2015-11-30 06:31:03',NULL,NULL),(1244,'Barma',4383,607,NULL,NULL,NULL,1,1,'2015-11-30 06:31:15',NULL,NULL);
/*!40000 ALTER TABLE `sa_postoffices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_room`
--

DROP TABLE IF EXISTS `sa_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_room` (
  `ROOM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FLOOR_ID` int(11) DEFAULT NULL,
  `BUILDING_ID` int(11) DEFAULT NULL,
  `CAMPUS_ID` int(11) DEFAULT NULL,
  `ROOM_NAME` varchar(100) NOT NULL,
  `ROOM_NO` varchar(20) DEFAULT NULL,
  `DESC` text,
  `ROOM_TYPE` int(11) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(10) DEFAULT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ROOM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_room`
--

LOCK TABLES `sa_room` WRITE;
/*!40000 ALTER TABLE `sa_room` DISABLE KEYS */;
INSERT INTO `sa_room` VALUES (2,1,7,5,'R-102','R-102','Hostel room',348,1,1,'2017-10-25 04:34:06',NULL,NULL),(3,1,7,5,'R-103','R-103','Room',348,1,1,'2017-10-25 04:34:43',NULL,NULL),(4,2,7,5,'R-201','R-201','Room',348,1,1,'2017-10-25 04:35:02',NULL,NULL),(5,2,7,5,'R-202','R-202','Room',348,1,1,'2017-10-25 04:35:09',NULL,NULL),(6,2,7,5,'R-203','R-203','Room',348,1,1,'2017-10-25 04:35:17',NULL,NULL),(7,3,7,5,'R-303','R-303','Room',348,1,1,'2017-10-25 04:35:29',NULL,NULL),(8,3,7,5,'R-302','R-302','Room',348,1,1,'2017-10-25 04:35:36',NULL,NULL),(9,3,7,5,'R-301','R-301','Room',348,1,1,'2017-10-25 04:35:42',1,'2018-04-04 12:44:49'),(21,1,6,6,'test room','100001','destest',326,1,1,'2018-04-04 11:52:37',1,'2018-04-05 05:18:32');
/*!40000 ALTER TABLE `sa_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_thanas`
--

DROP TABLE IF EXISTS `sa_thanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_thanas` (
  `THANA_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of sa_thanas Table.',
  `DISTRICT_ID` int(8) DEFAULT NULL COMMENT 'Foreign Key To DISTRICT_ID Column Of sa_districts Table.',
  `THANA_ENAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Thanas Or Upazilla Name In English.',
  `THANA_LNAME` varchar(120) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Thanas Or Upazilla Name In Local Language.',
  `ORDER_SL` smallint(4) DEFAULT NULL COMMENT 'Ascending Serial No.',
  `UD_THANA_CODE` varchar(8) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'User Define Thanas Or Upazilla Code.',
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'Record Updated Date And Time',
  `TAREA_STATUS` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Thana Area Status, T=Thana, U=Upazilla, B=Both',
  `UAREA_STATUS` varchar(1) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Union/Ward Area Status, W=Ward, U=Union, B=Both',
  PRIMARY KEY (`THANA_ID`),
  KEY `FK01_DISTRICT_ID` (`DISTRICT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_thanas`
--

LOCK TABLES `sa_thanas` WRITE;
/*!40000 ALTER TABLE `sa_thanas` DISABLE KEYS */;
INSERT INTO `sa_thanas` VALUES (1,12,'MAHESHKHALI',NULL,NULL,'022249',1,NULL,'2015-05-19 21:32:07',1,'2015-10-18 08:24:40','U','B'),(2,12,'PEKUA',NULL,NULL,'022256',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(3,12,'RAMU',NULL,NULL,'022266',1,NULL,'2015-05-19 21:32:07',1,'2015-10-12 03:58:16','U','U'),(4,12,'TEKNAF',NULL,NULL,'022290',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(5,12,'UKHIA UPAZILA',NULL,NULL,'022294',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(6,16,'CHHAGALNAIYA',NULL,NULL,'023014',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(7,16,'DAGANBHUIYAN',NULL,NULL,'023025',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(14,15,'SHALTHA',NULL,NULL,'032985',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(15,48,'HATIYA',NULL,NULL,'027536',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(16,15,'NAGARKANDA',NULL,NULL,'032962',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(17,28,'HOSSAINPUR',NULL,NULL,'034827',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(18,38,'LOHAJANG',NULL,NULL,'035944',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(19,42,'NARAYANGANJ SADAR',NULL,NULL,'036758',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(20,60,'NAKLA',NULL,NULL,'038967',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(21,14,'FULBARI',NULL,NULL,'052738',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(22,21,'PANCHBIBI',NULL,NULL,'053874',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(23,40,'NIAMATPUR',NULL,NULL,'056469',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(24,49,'ATGHARIA',NULL,NULL,'057605',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(25,56,'KAUNIA',NULL,NULL,'058542',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(26,64,'THAKURGAON SADAR',NULL,NULL,'059494',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(27,62,'BEANI BAZAR',NULL,NULL,'069117',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(28,13,'BADDA',NULL,NULL,'032604',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(29,3,'BARGUNA SADAR',NULL,NULL,'010428',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(30,51,'DASHMINA',NULL,NULL,'017852',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(31,48,'COMPANIGANJ',NULL,NULL,'027521',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(32,57,'BHEDARGANJ',NULL,NULL,'038614',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(33,34,'SREEPUR',NULL,NULL,'045595',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(34,40,'RANINAGAR',NULL,NULL,'056485',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(35,20,'LAKHAI',NULL,NULL,'063668',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(36,4,'BAKERGANJ',NULL,NULL,'010607',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(37,61,'JAMALGANJ',NULL,NULL,'069050',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(38,15,'BOALMARI',NULL,NULL,'032918',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(39,39,'HALUAGHAT',NULL,NULL,'036124',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(40,23,'BAGHER PARA',NULL,NULL,'044109',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(41,10,'DAMURHUDA',NULL,NULL,'041831',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(42,13,'PALTAN',NULL,NULL,'032665',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(43,13,'NEW MARKET',NULL,NULL,'032663',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(44,16,'FENI SADAR',NULL,NULL,'023029',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(45,16,'FULGAZI',NULL,NULL,'023041',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(46,16,'PARSHURAM',NULL,NULL,'023051',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(47,16,'SONAGAZI',NULL,NULL,'023094',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(48,26,'DIGHINALA',NULL,NULL,'024643',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(49,26,'KHAGRACHHARI SADAR',NULL,NULL,'024649',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(50,26,'LAKSHMICHHARI',NULL,NULL,'024661',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(51,26,'MAHALCHHARI',NULL,NULL,'024665',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(52,26,'MANIKCHHARI',NULL,NULL,'024667',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(53,26,'MATIRANGA',NULL,NULL,'024670',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(54,26,'PANCHHARI',NULL,NULL,'024677',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(55,26,'RAMGARH',NULL,NULL,'024680',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(56,31,'KAMALNAGAR',NULL,NULL,'025133',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(57,31,'LAKSHMIPUR SADAR',NULL,NULL,'025143',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(58,31,'ROYPUR',NULL,NULL,'025158',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(59,31,'RAMGANJ',NULL,NULL,'025165',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(60,31,'RAMGATI',NULL,NULL,'025173',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(61,48,'BEGUMGANJ',NULL,NULL,'027507',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(62,48,'CHATKHIL',NULL,NULL,'027510',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(63,48,'KABIRHAT',NULL,NULL,'027547',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(64,48,'SENBAGH',NULL,NULL,'027580',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(65,48,'SONAIMURI',NULL,NULL,'027583',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(66,48,'SUBARNACHAR',NULL,NULL,'027585',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(67,48,'NOAKHALI SADAR',NULL,NULL,'027587',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(68,13,'RAMNA',NULL,NULL,'032666',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(69,13,'SABUJBAGH',NULL,NULL,'032668',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(70,13,'SAVAR',NULL,NULL,'032672',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(71,13,'SHAH ALI',NULL,NULL,'032674',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(72,13,'SHAHBAGH',NULL,NULL,'032675',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(73,13,'SHYAMPUR',NULL,NULL,'032676',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(74,13,'SUTRAPUR',NULL,NULL,'032688',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(75,13,'TEJGAON',NULL,NULL,'032690',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(76,13,'TEJGAON IND. AREA',NULL,NULL,'032692',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(77,13,'TURAG',NULL,NULL,'032693',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(78,13,'UTTARA',NULL,NULL,'032695',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(79,13,'UTTAR KHAN',NULL,NULL,'032696',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(80,15,'ALFADANGA',NULL,NULL,'032903',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(81,15,'BHANGA',NULL,NULL,'032910',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(82,15,'CHAR BHADRASAN',NULL,NULL,'032921',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(83,15,'FARIDPUR SADAR',NULL,NULL,'032947',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(84,15,'MADHUKHALI',NULL,NULL,'032956',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(85,15,'SADARPUR',NULL,NULL,'032984',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(86,18,'GAZIPUR SADAR',NULL,NULL,'033330',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(87,18,'KALIAKAIR',NULL,NULL,'033332',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(88,18,'KALIGANJ',NULL,NULL,'033334',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(89,18,'KAPASIA',NULL,NULL,'033336',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(90,18,'SREEPUR',NULL,NULL,'033386',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(91,19,'GOPALGANJ SADAR',NULL,NULL,'033532',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(92,19,'KASHIANI',NULL,NULL,'033543',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(93,19,'KOTALIPARA',NULL,NULL,'033551',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(94,19,'MUKSUDPUR',NULL,NULL,'033558',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(95,19,'TUNGIPARA',NULL,NULL,'033591',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(96,22,'BAKSHIGANJ',NULL,NULL,'033907',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(97,22,'DEWANGANJ',NULL,NULL,'033915',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(98,22,'ISLAMPUR',NULL,NULL,'033929',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(99,22,'JAMALPUR SADAR',NULL,NULL,'033936',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(100,22,'MADARGANJ',NULL,NULL,'033958',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(101,22,'MELANDAHA',NULL,NULL,'033961',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(102,22,'SARISHABARI UPAZILA',NULL,NULL,'033985',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(103,28,'AUSTAGRAM',NULL,NULL,'034802',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(104,28,'BAJITPUR',NULL,NULL,'034806',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(105,28,'BHAIRAB',NULL,NULL,'034811',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(106,28,'ITNA',NULL,NULL,'034833',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(107,28,'KARIMGANJ',NULL,NULL,'034842',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(108,28,'KATIADI',NULL,NULL,'034845',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(109,28,'KISHOREGANJ SADAR',NULL,NULL,'034849',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(110,28,'KULIAR CHAR',NULL,NULL,'034854',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(111,28,'MITHAMAIN',NULL,NULL,'034859',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(112,28,'NIKLI',NULL,NULL,'034876',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(113,28,'PAKUNDIA',NULL,NULL,'034879',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(114,28,'TARAIL',NULL,NULL,'034892',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(115,33,'KALKINI',NULL,NULL,'035440',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(116,33,'MADARIPUR SADAR',NULL,NULL,'035454',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(117,33,'RAJOIR',NULL,NULL,'035480',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(118,33,'SHIB CHAR',NULL,NULL,'035487',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(119,35,'DAULATPUR',NULL,NULL,'035610',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(120,35,'GHIOR',NULL,NULL,'035622',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(121,35,'HARIRAMPUR',NULL,NULL,'035628',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(122,35,'MANIKGANJ SADAR',NULL,NULL,'035646',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(123,35,'SATURIA',NULL,NULL,'035670',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(124,35,'SHIBALAYA',NULL,NULL,'035678',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(125,35,'SINGAIR',NULL,NULL,'035682',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(126,38,'GAZARIA',NULL,NULL,'035924',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(127,38,'MUNSHIGANJ SADAR',NULL,NULL,'035956',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(128,38,'SERAJDIKHAN',NULL,NULL,'035974',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(129,38,'SREENAGAR',NULL,NULL,'035984',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(130,38,'TONGIBARI',NULL,NULL,'035994',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(131,39,'BHALUKA',NULL,NULL,'036113',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(132,39,'DHOBAURA',NULL,NULL,'036116',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(133,39,'FULBARIA',NULL,NULL,'036120',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(134,39,'GAFFARGAON',NULL,NULL,'036122',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(135,39,'GAURIPUR',NULL,NULL,'036123',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(136,39,'ISHWARGANJ',NULL,NULL,'036131',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(137,39,'MYMENSINGH SADAR',NULL,NULL,'036152',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(138,39,'MUKTAGACHHA',NULL,NULL,'036165',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(139,39,'NANDAIL',NULL,NULL,'036172',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(140,39,'PHULPUR',NULL,NULL,'036181',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(141,39,'TRISHAL',NULL,NULL,'036194',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(142,42,'ARAIHAZAR',NULL,NULL,'036702',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(143,42,'SONARGAON',NULL,NULL,'036704',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(144,42,'BANDAR',NULL,NULL,'036706',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(145,42,'RUPGANJ',NULL,NULL,'036768',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(146,43,'BELABO',NULL,NULL,'036807',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(147,43,'MANOHARDI',NULL,NULL,'036852',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(148,43,'NARSINGDI SADAR',NULL,NULL,'036860',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(149,43,'PALASH',NULL,NULL,'036863',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(150,43,'ROYPURA',NULL,NULL,'036864',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(151,43,'SHIBPUR',NULL,NULL,'036876',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(152,46,'ATPARA',NULL,NULL,'037204',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(153,46,'BARHATTA',NULL,NULL,'037209',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(154,46,'DURGAPUR',NULL,NULL,'037218',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(155,46,'KHALIAJURI',NULL,NULL,'037238',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(156,46,'KALMAKANDA',NULL,NULL,'037240',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(157,46,'KENDUA',NULL,NULL,'037247',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(158,46,'MADAN',NULL,NULL,'037256',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(159,46,'MOHANGANJ',NULL,NULL,'037263',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(160,46,'NETROKONA SADAR',NULL,NULL,'037274',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(161,46,'PURBADHALA',NULL,NULL,'037283',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(162,54,'BALIAKANDI',NULL,NULL,'038207',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(163,54,'GOALANDA',NULL,NULL,'038229',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(164,54,'PANGSHA',NULL,NULL,'038273',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(165,54,'RAJBARI SADAR',NULL,NULL,'038276',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(166,57,'DAMUDYA',NULL,NULL,'038625',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(167,57,'GOSAIRHAT',NULL,NULL,'038636',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(168,57,'NARIA',NULL,NULL,'038665',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(169,57,'SHARIATPUR SADAR',NULL,NULL,'038669',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(170,57,'ZANJIRA',NULL,NULL,'038694',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(171,60,'JHENAIGATI',NULL,NULL,'038937',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(172,60,'NALITABARI',NULL,NULL,'038970',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(173,60,'SHERPUR SADAR',NULL,NULL,'038988',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(174,60,'SREEBARDI',NULL,NULL,'038990',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(175,63,'BASAIL',NULL,NULL,'039309',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(176,63,'BHUAPUR',NULL,NULL,'039319',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(177,63,'DELDUAR',NULL,NULL,'039323',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(178,63,'DHANBARI',NULL,NULL,'039325',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(179,63,'GHATAIL',NULL,NULL,'039328',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(180,63,'GOPALPUR',NULL,NULL,'039338',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(181,63,'KALIHATI',NULL,NULL,'039347',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(182,63,'MADHUPUR',NULL,NULL,'039357',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(183,63,'MIRZAPUR',NULL,NULL,'039366',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(184,63,'NAGARPUR',NULL,NULL,'039376',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(185,63,'SAKHIPUR',NULL,NULL,'039385',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(186,63,'TANGAIL SADAR',NULL,NULL,'039395',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(187,1,'BAGERHAT SADAR',NULL,NULL,'040108',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(188,1,'CHITALMARI',NULL,NULL,'040114',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(189,1,'FAKIRHAT',NULL,NULL,'040134',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(190,1,'KACHUA',NULL,NULL,'040138',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(191,1,'MOLLAHAT',NULL,NULL,'040156',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(192,1,'MONGLA',NULL,NULL,'040158',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(193,1,'MORRELGANJ',NULL,NULL,'040160',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(194,1,'RAMPAL',NULL,NULL,'040173',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(195,1,'SARANKHOLA',NULL,NULL,'040177',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(196,10,'ALAMDANGA',NULL,NULL,'041807',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(197,10,'CHUADANGA SADAR',NULL,NULL,'041823',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(198,10,'JIBAN NAGAR',NULL,NULL,'041855',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(199,23,'ABHAYNAGAR',NULL,NULL,'044104',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(200,23,'CHAUGACHHA',NULL,NULL,'044111',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(201,23,'JHIKARGACHHA',NULL,NULL,'044123',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(202,23,'KESHABPUR',NULL,NULL,'044138',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(203,23,'KOTWALI',NULL,NULL,'044147',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(204,23,'MANIRAMPUR',NULL,NULL,'044161',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(205,23,'SHARSHA',NULL,NULL,'044190',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(206,25,'HARINAKUNDA',NULL,NULL,'044414',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(207,25,'JHENAIDAH SADAR',NULL,NULL,'044419',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(208,25,'KALIGANJ',NULL,NULL,'044433',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(209,25,'KOTCHANDPUR',NULL,NULL,'044442',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(210,25,'MAHESHPUR',NULL,NULL,'044471',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(211,25,'SHAILKUPA',NULL,NULL,'044480',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(212,27,'BATIAGHATA',NULL,NULL,'044712',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(213,27,'DACOPE',NULL,NULL,'044717',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(214,27,'DAULATPUR',NULL,NULL,'044721',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','U','W'),(215,27,'DUMURIA',NULL,NULL,'044730',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(216,27,'DIGHALIA',NULL,NULL,'044740',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(217,27,'KHALISHPUR',NULL,NULL,'044745',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(218,27,'KHAN JAHAN ALI',NULL,NULL,'044748',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(219,27,'KHULNA SADAR',NULL,NULL,'044751',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(220,27,'KOYRA',NULL,NULL,'044753',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(221,27,'PAIKGACHHA',NULL,NULL,'044764',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(222,27,'PHULTALA',NULL,NULL,'044769',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(223,27,'RUPSA',NULL,NULL,'044775',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(224,27,'SONADANGA',NULL,NULL,'044785',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(225,27,'TEROKHADA',NULL,NULL,'044794',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(226,30,'BHERAMARA',NULL,NULL,'045015',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(227,30,'DAULATPUR',NULL,NULL,'045039',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(228,30,'KHOKSA',NULL,NULL,'045063',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(229,30,'KUMARKHALI',NULL,NULL,'045071',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(230,30,'KUSHTIA SADAR',NULL,NULL,'045079',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(231,30,'MIRPUR',NULL,NULL,'045094',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(232,34,'MAGURA SADAR',NULL,NULL,'045557',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(233,34,'MOHAMMADPUR',NULL,NULL,'045566',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(234,34,'SHALIKHA',NULL,NULL,'045585',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(235,36,'GANGNI',NULL,NULL,'045747',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(236,36,'MUJIB NAGAR',NULL,NULL,'045760',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(237,36,'MEHERPUR SADAR',NULL,NULL,'045787',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(238,41,'KALIA',NULL,NULL,'046528',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(239,41,'LOHAGARA',NULL,NULL,'046552',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(240,41,'NARAIL SADAR',NULL,NULL,'046576',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(241,58,'ASSASUNI',NULL,NULL,'048704',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(242,58,'DEBHATA',NULL,NULL,'048725',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(243,58,'KALAROA',NULL,NULL,'048743',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(244,58,'KALIGANJ',NULL,NULL,'048747',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(245,58,'SATKHIRA SADAR',NULL,NULL,'048782',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(246,58,'SHYAMNAGAR',NULL,NULL,'048786',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(247,58,'TALA',NULL,NULL,'048790',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(248,6,'ADAMDIGHI',NULL,NULL,'051006',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(249,6,'BOGRA SADAR',NULL,NULL,'051020',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(250,6,'DHUNAT',NULL,NULL,'051027',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(251,6,'DHUPCHANCHIA',NULL,NULL,'051033',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(252,6,'GABTALI',NULL,NULL,'051040',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(253,6,'KAHALOO',NULL,NULL,'051054',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(254,6,'NANDIGRAM',NULL,NULL,'051067',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(255,6,'SARIAKANDI',NULL,NULL,'051081',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(256,6,'SHAJAHANPUR',NULL,NULL,'051085',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(257,6,'SHERPUR',NULL,NULL,'051088',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(258,6,'SHIBGANJ',NULL,NULL,'051094',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(259,6,'SONATOLA',NULL,NULL,'051095',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(260,14,'BIRAMPUR',NULL,NULL,'052710',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(261,14,'BIRGANJ',NULL,NULL,'052712',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(262,14,'BIRAL',NULL,NULL,'052717',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(263,14,'BOCHAGANJ',NULL,NULL,'052721',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(264,14,'CHIRIRBANDAR',NULL,NULL,'052730',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(265,14,'GHORAGHAT',NULL,NULL,'052743',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(266,14,'HAKIMPUR',NULL,NULL,'052747',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(267,14,'KAHAROLE',NULL,NULL,'052756',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(268,14,'KHANSAMA',NULL,NULL,'052760',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(269,14,'DINAJPUR SADAR',NULL,NULL,'052764',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(270,14,'NAWABGANJ',NULL,NULL,'052769',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(271,14,'PARBATIPUR',NULL,NULL,'052777',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(272,17,'FULCHHARI',NULL,NULL,'053221',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(273,17,'GAIBANDHA SADAR',NULL,NULL,'053224',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(274,17,'GOBINDAGANJ',NULL,NULL,'053230',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(275,17,'PALASHBARI',NULL,NULL,'053267',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(276,17,'SADULLAPUR',NULL,NULL,'053282',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(277,17,'SAGHATA',NULL,NULL,'053288',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(278,17,'SUNDARGANJ',NULL,NULL,'053291',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(279,21,'AKKELPUR',NULL,NULL,'053813',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(280,21,'JOYPURHAT SADAR',NULL,NULL,'053847',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(281,21,'KALAI',NULL,NULL,'053858',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(282,21,'KHETLAL',NULL,NULL,'053861',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(283,29,'BHURUNGAMARI',NULL,NULL,'054906',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(284,29,'CHAR RAJIBPUR',NULL,NULL,'054908',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(285,29,'CHILMARI',NULL,NULL,'054909',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(286,29,'PHULBARI',NULL,NULL,'054918',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(287,29,'KURIGRAM SADAR',NULL,NULL,'054952',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(288,29,'NAGESHWARI',NULL,NULL,'054961',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(289,29,'RAJARHAT',NULL,NULL,'054977',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(290,29,'RAUMARI',NULL,NULL,'054979',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(291,29,'ULIPUR',NULL,NULL,'054994',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(292,32,'ADITMARI',NULL,NULL,'055202',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(293,32,'HATIBANDHA',NULL,NULL,'055233',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(294,32,'KALIGANJ',NULL,NULL,'055239',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(295,32,'LALMONIRHAT SADAR',NULL,NULL,'055255',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(296,32,'PATGRAM',NULL,NULL,'055270',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(297,40,'ATRAI',NULL,NULL,'056403',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(298,40,'BADALGACHHI',NULL,NULL,'056406',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(299,40,'DHAMOIRHAT',NULL,NULL,'056428',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(300,40,'MANDA',NULL,NULL,'056447',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(301,40,'MAHADEBPUR',NULL,NULL,'056450',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(302,40,'NAOGAON SADAR',NULL,NULL,'056460',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(303,40,'PATNITALA',NULL,NULL,'056475',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(304,40,'PORSHA',NULL,NULL,'056479',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(305,40,'SAPAHAR',NULL,NULL,'056486',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(306,44,'BAGATIPARA',NULL,NULL,'056909',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(307,44,'BARAIGRAM',NULL,NULL,'056915',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(308,44,'GURUDASPUR',NULL,NULL,'056941',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(309,44,'LALPUR',NULL,NULL,'056944',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(310,44,'NATORE SADAR',NULL,NULL,'056963',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(311,44,'SINGRA',NULL,NULL,'056991',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(312,45,'BHOLAHAT',NULL,NULL,'057018',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(313,45,'GOMASTAPUR',NULL,NULL,'057037',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(314,45,'NACHOLE',NULL,NULL,'057056',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(315,45,'CHAPAI NABABGANJ SADAR',NULL,NULL,'057066',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(316,45,'SHIBGANJ',NULL,NULL,'057088',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(317,47,'DIMLA UPAZILA',NULL,NULL,'057312',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(318,47,'DOMAR UPAZILA',NULL,NULL,'057315',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(319,47,'JALDHAKA UPAZILA',NULL,NULL,'057336',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(320,47,'KISHOREGANJ UPAZILA',NULL,NULL,'057345',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(321,47,'NILPHAMARI SADAR UPAZ',NULL,NULL,'057364',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(322,47,'SAIDPUR UPAZILA',NULL,NULL,'057385',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(323,49,'BERA',NULL,NULL,'057616',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(324,49,'BHANGURA',NULL,NULL,'057619',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(325,49,'CHATMOHAR',NULL,NULL,'057622',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(326,49,'FARIDPUR',NULL,NULL,'057633',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(327,49,'ISHWARDI',NULL,NULL,'057639',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(328,49,'PABNA SADAR',NULL,NULL,'057655',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(329,49,'SANTHIA',NULL,NULL,'057672',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(330,49,'SUJANAGAR',NULL,NULL,'057683',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(331,50,'ATWARI',NULL,NULL,'057704',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(332,50,'BODA',NULL,NULL,'057725',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(333,50,'DEBIGANJ',NULL,NULL,'057734',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(334,50,'PANCHAGARH SADAR',NULL,NULL,'057773',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(335,50,'TENTULIA',NULL,NULL,'057790',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(336,53,'BAGHA',NULL,NULL,'058110',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(337,53,'BAGHMARA',NULL,NULL,'058112',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(338,53,'BOALIA',NULL,NULL,'058122',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(339,53,'CHARGHAT',NULL,NULL,'058125',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(340,53,'DURGAPUR',NULL,NULL,'058131',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(341,53,'GODAGARI',NULL,NULL,'058134',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(342,53,'MATIHAR',NULL,NULL,'058140',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(343,53,'MOHANPUR',NULL,NULL,'058153',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(344,53,'PABA',NULL,NULL,'058172',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(345,53,'PUTHIA',NULL,NULL,'058182',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(346,53,'RAJPARA',NULL,NULL,'058185',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(347,53,'SHAH MAKHDUM',NULL,NULL,'058190',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','U','W'),(348,53,'TANORE',NULL,NULL,'058194',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(349,56,'BADARGANJ',NULL,NULL,'058503',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(350,56,'GANGACHARA',NULL,NULL,'058527',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(351,56,'RANGPUR SADAR',NULL,NULL,'058549',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(352,56,'MITHA PUKUR',NULL,NULL,'058558',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(353,56,'PIRGACHHA',NULL,NULL,'058573',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(354,56,'PIRGANJ',NULL,NULL,'058576',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(355,56,'TARAGANJ',NULL,NULL,'058592',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(356,59,'BELKUCHI',NULL,NULL,'058811',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(357,59,'CHAUHALI',NULL,NULL,'058827',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(358,59,'KAMARKHANDA',NULL,NULL,'058844',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(359,59,'KAZIPUR',NULL,NULL,'058850',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(360,59,'ROYGANJ',NULL,NULL,'058861',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(361,59,'SHAHJADPUR',NULL,NULL,'058867',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(362,59,'SIRAJGANJ SADAR',NULL,NULL,'058878',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(363,59,'TARASH',NULL,NULL,'058889',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(364,59,'ULLAH PARA',NULL,NULL,'058894',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(365,64,'BALIADANGI',NULL,NULL,'059408',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(366,64,'HARIPUR',NULL,NULL,'059451',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(367,64,'PIRGANJ',NULL,NULL,'059482',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(368,64,'RANISANKAIL',NULL,NULL,'059486',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(369,20,'AJMIRIGANJ',NULL,NULL,'063602',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(370,20,'BAHUBAL',NULL,NULL,'063605',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(371,20,'BANIACHONG',NULL,NULL,'063611',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(372,20,'CHUNARUGHAT',NULL,NULL,'063626',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(373,20,'HABIGANJ SADAR',NULL,NULL,'063644',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(374,20,'MADHABPUR',NULL,NULL,'063671',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(375,20,'NABIGANJ',NULL,NULL,'063677',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(376,37,'BARLEKHA',NULL,NULL,'065814',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(377,37,'JURI',NULL,NULL,'065835',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(378,37,'KAMALGANJ',NULL,NULL,'065856',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(379,37,'KULAURA',NULL,NULL,'065865',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(380,37,'MAULVIBAZAR SADAR',NULL,NULL,'065874',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(381,37,'RAJNAGAR',NULL,NULL,'065880',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(382,37,'SREEMANGAL',NULL,NULL,'065883',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(383,61,'BISHWAMBARPUR',NULL,NULL,'069018',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(384,61,'CHHATAK',NULL,NULL,'069023',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(385,61,'DAKSHIN SUNAMGANJ',NULL,NULL,'069027',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(386,61,'DERAI',NULL,NULL,'069029',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(387,61,'DHARAMPASHA',NULL,NULL,'069032',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(388,61,'DOWARABAZAR',NULL,NULL,'069033',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(389,61,'JAGANNATHPUR',NULL,NULL,'069047',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(390,61,'SULLA',NULL,NULL,'069086',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(391,61,'SUNAMGANJ SADAR',NULL,NULL,'069089',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(392,61,'TAHIRPUR',NULL,NULL,'069092',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(393,62,'BALAGANJ',NULL,NULL,'069108',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(394,62,'BISHWANATH',NULL,NULL,'069120',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(395,62,'COMPANIGANJ',NULL,NULL,'069127',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(396,62,'DAKSHIN SURMA',NULL,NULL,'069131',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(397,62,'FENCHUGANJ',NULL,NULL,'069135',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(398,62,'GOPALGANJ',NULL,NULL,'069138',1,NULL,'2015-05-19 21:32:07',1,'2015-11-30 07:25:05','U','B'),(399,62,'GOWAINGHAT',NULL,NULL,'069141',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(400,62,'JAINTIAPUR',NULL,NULL,'069153',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(401,62,'KANAIGHAT',NULL,NULL,'069159',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(402,62,'SYLHET SADAR',NULL,NULL,'069162',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(403,62,'ZAKIGANJ',NULL,NULL,'069194',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(404,18,'TONGI',NULL,NULL,'033387',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','U','W'),(405,55,'BAGHAICHHARI',NULL,NULL,'028407',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(406,55,'BARKAL UPAZILA',NULL,NULL,'028421',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(407,55,'KAWKHALI (BETBUNIA)',NULL,NULL,'028425',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(408,55,'BELAI CHHARI  UPAZI',NULL,NULL,'028429',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(409,55,'KAPTAI  UPAZILA',NULL,NULL,'028436',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(410,55,'JURAI CHHARI UPAZIL',NULL,NULL,'028447',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(411,55,'LANGADU  UPAZILA',NULL,NULL,'028458',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(412,55,'NANIARCHAR  UPAZILA',NULL,NULL,'028475',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(413,55,'RAJASTHALI  UPAZILA',NULL,NULL,'028478',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(414,55,'RANGAMATI SADAR  UP',NULL,NULL,'028487',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(415,13,'ADABOR',NULL,NULL,'032602',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(416,13,'BIMAN BANDAR',NULL,NULL,'032606',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(417,13,'CANTONMENT',NULL,NULL,'032608',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(418,13,'DAKSHINKHAN',NULL,NULL,'032610',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(419,13,'DEMRA',NULL,NULL,'032612',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(420,13,'DHAMRAI',NULL,NULL,'032614',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(421,13,'DHANMONDI',NULL,NULL,'032616',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(422,13,'DOHAR',NULL,NULL,'032618',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(423,13,'GULSHAN',NULL,NULL,'032626',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(424,13,'HAZARIBAGH',NULL,NULL,'032628',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(425,13,'JATRABARI',NULL,NULL,'032629',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(426,13,'KAFRUL',NULL,NULL,'032630',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(427,13,'KAMRANGIR CHAR',NULL,NULL,'032634',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(428,13,'KHILGAON',NULL,NULL,'032636',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(429,13,'KHILKHET',NULL,NULL,'032637',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','T','U'),(430,13,'KERANIGANJ',NULL,NULL,'032638',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(431,13,'KOTWALI',NULL,NULL,'032640',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(432,13,'LALBAGH',NULL,NULL,'032642',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(433,13,'MIRPUR',NULL,NULL,'032648',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(434,13,'MOHAMMADPUR',NULL,NULL,'032650',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(435,13,'MOTIJHEEL',NULL,NULL,'032654',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(436,13,'NAWABGANJ',NULL,NULL,'032662',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(437,13,'PALLABI',NULL,NULL,'032664',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(438,3,'AMTALI',NULL,NULL,'010409',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(439,3,'BAMNA',NULL,NULL,'010419',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(440,3,'BETAGI',NULL,NULL,'010447',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(441,3,'PATHARGHATA',NULL,NULL,'010485',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(442,4,'AGAILJHARA',NULL,NULL,'010602',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(443,4,'BABUGANJ',NULL,NULL,'010603',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(444,4,'BANARI PARA',NULL,NULL,'010610',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(445,4,'GAURNADI',NULL,NULL,'010632',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(446,4,'HIZLA',NULL,NULL,'010636',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(447,4,'BARISAL SADAR (KOTWALI)',NULL,NULL,'010651',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(448,4,'MHENDIGANJ',NULL,NULL,'010662',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(449,4,'MULADI',NULL,NULL,'010669',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(450,4,'WAZIRPUR',NULL,NULL,'010694',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(451,5,'BHOLA SADAR',NULL,NULL,'010918',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(452,5,'BURHANUDDIN',NULL,NULL,'010921',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(453,5,'CHAR FASSON',NULL,NULL,'010925',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(454,5,'DAULAT KHAN',NULL,NULL,'010929',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(455,5,'LALMOHAN',NULL,NULL,'010954',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(456,5,'MANPURA',NULL,NULL,'010965',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(457,5,'TAZUMUDDIN',NULL,NULL,'010991',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(458,24,'JHALOKATI SADAR',NULL,NULL,'014240',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(459,24,'KANTHALIA',NULL,NULL,'014243',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(460,24,'NALCHITY',NULL,NULL,'014273',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(461,24,'RAJAPUR',NULL,NULL,'014284',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(462,51,'BAUPHAL',NULL,NULL,'017838',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(463,51,'DUMKI UPAZILA',NULL,NULL,'017855',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(464,51,'GALACHIPA',NULL,NULL,'017857',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(465,51,'KALA PARA',NULL,NULL,'017866',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(466,51,'MIRZAGANJ UPAZILA',NULL,NULL,'017876',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(467,51,'PATUAKHALI SADAR',NULL,NULL,'017895',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(468,52,'BHANDARIA',NULL,NULL,'017914',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(469,52,'KAWKHALI',NULL,NULL,'017947',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(470,52,'MATHBARIA',NULL,NULL,'017958',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(471,52,'NAZIRPUR UPAZILA',NULL,NULL,'017976',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(472,52,'PIROJPUR SADAR',NULL,NULL,'017980',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(473,52,'NESARABAD (SWARUPKATI)',NULL,NULL,'017987',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(474,52,'ZIANAGAR',NULL,NULL,'017990',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(475,2,'ALIKADAM',NULL,NULL,'020304',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(476,2,'BANDARBAN SADAR',NULL,NULL,'020314',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(477,2,'LAMA',NULL,NULL,'020351',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(478,2,'NAIKHONGCHHARI',NULL,NULL,'020373',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(479,2,'ROWANGCHHARI',NULL,NULL,'020389',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(480,2,'RUMA',NULL,NULL,'020391',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(481,2,'THANCHI',NULL,NULL,'020395',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(482,7,'AKHAURA',NULL,NULL,'021202',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(483,7,'BANCHHARAMPUR',NULL,NULL,'021204',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(484,7,'BRAHMANBARIA SADAR',NULL,NULL,'021213',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(485,7,'ASHUGANJ',NULL,NULL,'021233',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(486,7,'KASBA',NULL,NULL,'021263',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(487,7,'NABINAGAR',NULL,NULL,'021285',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(488,7,'NASIRNAGAR',NULL,NULL,'021290',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(489,7,'SARAIL',NULL,NULL,'021294',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(490,8,'CHANDPUR SADAR',NULL,NULL,'021322',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(491,8,'FARIDGANJ',NULL,NULL,'021345',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(492,8,'HAIM CHAR',NULL,NULL,'021347',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(493,8,'HAJIGANJ',NULL,NULL,'021349',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(494,8,'KACHUA',NULL,NULL,'021358',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(495,8,'MATLAB DAKSHIN',NULL,NULL,'021376',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(496,8,'MATLAB UTTAR',NULL,NULL,'021379',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(497,8,'SHAHRASTI',NULL,NULL,'021395',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(498,9,'ANOWARA',NULL,NULL,'021504',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(499,9,'BAYEJID BOSTAMI',NULL,NULL,'021506',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(500,9,'BANSHKHALI',NULL,NULL,'021508',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(501,9,'BAKALIA',NULL,NULL,'021510',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(502,9,'BOALKHALI',NULL,NULL,'021512',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(503,9,'CHANDANAISH',NULL,NULL,'021518',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','T','B'),(504,9,'CHANDGAON',NULL,NULL,'021519',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(505,9,'CHITTAGONG PORT',NULL,NULL,'021520',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(506,9,'DOUBLE MOORING',NULL,NULL,'021528',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(507,9,'FATIKCHHARI',NULL,NULL,'021533',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(508,9,'HALISHAHAR',NULL,NULL,'021535',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(509,9,'HATHAZARI',NULL,NULL,'021537',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(510,9,'KOTWALI',NULL,NULL,'021541',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(511,9,'KHULSHI',NULL,NULL,'021543',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(512,9,'LOHAGARA',NULL,NULL,'021547',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(513,9,'MIRSHARAI',NULL,NULL,'021553',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(514,9,'PAHARTALI',NULL,NULL,'021555',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(515,9,'PANCHLAISH',NULL,NULL,'021557',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','T','W'),(516,9,'PATIYA',NULL,NULL,'021561',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(517,9,'PATENGA',NULL,NULL,'021565',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:50','U','W'),(518,9,'RANGUNIA',NULL,NULL,'021570',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(519,9,'RAOZAN',NULL,NULL,'021574',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(520,9,'SANDWIP',NULL,NULL,'021578',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(521,9,'SATKANIA',NULL,NULL,'021582',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(522,9,'SITAKUNDA',NULL,NULL,'021586',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(523,11,'BARURA',NULL,NULL,'021909',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(524,11,'BRAHMAN PARA',NULL,NULL,'021915',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(525,11,'BURICHANG',NULL,NULL,'021918',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(526,11,'CHANDINA',NULL,NULL,'021927',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(527,11,'CHAUDDAGRAM',NULL,NULL,'021931',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(528,11,'COMILLA SADAR DAKSHIN',NULL,NULL,'021933',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(529,11,'DAUDKANDI',NULL,NULL,'021936',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(530,11,'DEBIDWAR',NULL,NULL,'021940',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(531,11,'HOMNA',NULL,NULL,'021954',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(532,11,'COMILLA ADARSHA SADAR',NULL,NULL,'021967',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(533,11,'LAKSAM',NULL,NULL,'021972',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(534,11,'MANOHARGANJ',NULL,NULL,'021974',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(535,11,'MEGHNA',NULL,NULL,'021975',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(536,11,'MURADNAGAR',NULL,NULL,'021981',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(537,11,'NANGALKOT',NULL,NULL,'021987',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(538,11,'TITAS',NULL,NULL,'021994',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:13:18','U','U'),(539,12,'CHAKARIA',NULL,NULL,'022216',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(540,12,'COX\'S BAZAR SADAR',NULL,NULL,'022224',1,NULL,'2015-05-19 21:32:07',NULL,'2015-05-24 21:14:33','U','B'),(541,12,'KUTUBDIA',NULL,NULL,'022245',1,NULL,'2015-05-19 21:32:07',1,'2015-10-12 03:01:07','U','U'),(542,1,'Chalna Ankorage',NULL,NULL,NULL,1,1,'2015-11-22 23:30:50',NULL,'0000-00-00 00:00:00',NULL,NULL),(543,1,'Rayenda',NULL,NULL,NULL,1,1,'2015-11-22 23:38:30',NULL,'0000-00-00 00:00:00',NULL,NULL),(544,10,'Doulatganj',NULL,NULL,NULL,1,1,'2015-11-22 23:45:35',NULL,'0000-00-00 00:00:00',NULL,NULL),(545,23,'JESSORE SADAR',NULL,NULL,NULL,1,1,'2015-11-22 23:47:54',NULL,'0000-00-00 00:00:00',NULL,NULL),(546,23,'NOAPARA',NULL,NULL,NULL,1,1,'2015-11-22 23:51:21',NULL,'0000-00-00 00:00:00',NULL,NULL),(547,25,'NALDANGA',NULL,NULL,NULL,1,1,'2015-11-22 23:57:48',NULL,'0000-00-00 00:00:00',NULL,NULL),(548,27,'ALAIPUR',NULL,NULL,NULL,1,1,'2015-11-23 00:00:16',NULL,'0000-00-00 00:00:00',NULL,NULL),(549,27,'CHALNA BAZAR',NULL,NULL,NULL,1,1,'2015-11-23 00:02:05',NULL,'0000-00-00 00:00:00',NULL,NULL),(550,27,'MADINABAD',NULL,NULL,NULL,1,1,'2015-11-23 00:08:14',NULL,'0000-00-00 00:00:00',NULL,NULL),(551,27,'SAJIARA',NULL,NULL,NULL,1,1,'2015-11-23 00:10:51',NULL,'0000-00-00 00:00:00',NULL,NULL),(552,30,'JANIPUR',NULL,NULL,NULL,1,1,'2015-11-23 00:16:45',NULL,'0000-00-00 00:00:00',NULL,NULL),(553,30,'Rafayetpur',NULL,NULL,NULL,1,1,'2015-11-23 00:20:13',NULL,'0000-00-00 00:00:00',NULL,NULL),(554,34,'ARPARA',NULL,NULL,NULL,1,1,'2015-11-23 00:21:30',NULL,'0000-00-00 00:00:00',NULL,NULL),(555,41,'Laxmipasha',NULL,NULL,NULL,1,1,'2015-11-23 00:26:33',NULL,'0000-00-00 00:00:00',NULL,NULL),(556,41,'Mohajan',NULL,NULL,NULL,1,1,'2015-11-23 00:28:05',NULL,'0000-00-00 00:00:00',NULL,NULL),(557,58,'Nakipur',NULL,NULL,NULL,1,1,'2015-11-23 00:32:33',NULL,'0000-00-00 00:00:00',NULL,NULL),(558,13,'Joypara',NULL,NULL,NULL,1,1,'2015-11-23 00:40:27',NULL,'0000-00-00 00:00:00',NULL,NULL),(559,15,'Shriangan',NULL,NULL,NULL,1,1,'2015-11-23 02:23:12',NULL,'0000-00-00 00:00:00',NULL,NULL),(560,18,'Monnunagar',NULL,NULL,NULL,1,1,'2015-11-23 02:26:13',NULL,'0000-00-00 00:00:00',NULL,NULL),(561,33,'Barhamganj',NULL,NULL,NULL,1,1,'2015-11-23 03:15:38',NULL,'0000-00-00 00:00:00',NULL,NULL),(563,35,'Lechhraganj',NULL,NULL,NULL,1,1,'2015-11-23 03:20:14',NULL,'0000-00-00 00:00:00',NULL,NULL),(564,42,'Baidder Bazar',NULL,NULL,NULL,1,1,'2015-11-23 04:49:34',NULL,'0000-00-00 00:00:00',NULL,NULL),(565,42,'Fatullah',NULL,NULL,NULL,1,1,'2015-11-23 04:51:28',NULL,'0000-00-00 00:00:00',NULL,NULL),(566,42,'Siddirganj',NULL,NULL,NULL,1,1,'2015-11-23 05:03:04',NULL,'0000-00-00 00:00:00',NULL,NULL),(567,60,'Bakshigonj',NULL,NULL,NULL,1,1,'2015-11-23 05:57:27',NULL,'0000-00-00 00:00:00',NULL,NULL),(568,63,'Kashkawlia',NULL,NULL,NULL,1,1,'2015-11-23 06:04:22',NULL,'0000-00-00 00:00:00',NULL,NULL),(569,8,'Matlobganj',NULL,NULL,NULL,1,1,'2015-11-24 03:46:29',NULL,'0000-00-00 00:00:00',NULL,NULL),(570,14,'Bangla Hili',NULL,NULL,NULL,1,1,'2015-11-28 23:01:43',NULL,'0000-00-00 00:00:00',NULL,NULL),(571,14,'Maharajganj',NULL,NULL,NULL,1,1,'2015-11-28 23:26:40',NULL,'0000-00-00 00:00:00',NULL,NULL),(572,14,'Osmanpur',NULL,NULL,NULL,1,1,'2015-11-28 23:28:28',NULL,'0000-00-00 00:00:00',NULL,NULL),(573,14,'Setabganj',NULL,NULL,NULL,1,1,'2015-11-28 23:30:51',NULL,'0000-00-00 00:00:00',NULL,NULL),(575,17,'Bonarpara',NULL,NULL,NULL,1,1,'2015-11-28 23:34:46',NULL,'0000-00-00 00:00:00',NULL,NULL),(576,29,'Rajibpur',NULL,NULL,NULL,1,1,'2015-11-28 23:45:25',NULL,'0000-00-00 00:00:00',NULL,NULL),(577,32,'Tushbhandar',NULL,NULL,NULL,1,1,'2015-11-28 23:52:53',NULL,'0000-00-00 00:00:00',NULL,NULL),(578,50,'Chotto Dab',NULL,NULL,NULL,1,1,'2015-11-29 00:11:40',NULL,'0000-00-00 00:00:00',NULL,NULL),(579,53,'Chapinawabganj',NULL,NULL,NULL,1,1,'2015-11-29 02:47:55',NULL,'0000-00-00 00:00:00',NULL,NULL),(580,86,'Chapinawabganj Sadar',NULL,NULL,NULL,1,1,'2015-11-29 02:52:38',NULL,'0000-00-00 00:00:00',NULL,NULL),(581,86,'Nachol',NULL,NULL,NULL,1,1,'2015-11-29 02:52:48',NULL,'0000-00-00 00:00:00',NULL,NULL),(582,86,'Rohanpur',NULL,NULL,NULL,1,1,'2015-11-29 02:52:56',NULL,'0000-00-00 00:00:00',NULL,NULL),(583,86,'Shibganj U.P.O',NULL,NULL,NULL,1,1,'2015-11-29 02:53:05',NULL,'0000-00-00 00:00:00',NULL,NULL),(584,44,'Gopalpur UPO',NULL,NULL,NULL,1,1,'2015-11-29 03:31:57',NULL,'0000-00-00 00:00:00',NULL,NULL),(585,44,'Harua',NULL,NULL,NULL,1,1,'2015-11-29 03:33:03',NULL,'0000-00-00 00:00:00',NULL,NULL),(586,53,'Rajshahi Sadar',NULL,NULL,NULL,1,1,'2015-11-29 03:46:36',NULL,'0000-00-00 00:00:00',NULL,NULL),(587,59,'Dhangora',NULL,NULL,NULL,1,1,'2015-11-29 03:53:45',NULL,'0000-00-00 00:00:00',NULL,NULL),(588,52,'Swarupkathi',NULL,NULL,NULL,1,1,'2015-11-29 22:49:29',NULL,'0000-00-00 00:00:00',NULL,NULL),(589,52,'Banaripara',NULL,NULL,NULL,1,1,'2015-11-29 22:58:15',NULL,'0000-00-00 00:00:00',NULL,NULL),(590,51,'Subidkhali',NULL,NULL,NULL,1,1,'2015-11-29 23:00:29',NULL,'0000-00-00 00:00:00',NULL,NULL),(591,51,'Khepupara',NULL,NULL,NULL,1,1,'2015-11-29 23:41:31',NULL,'0000-00-00 00:00:00',NULL,NULL),(592,5,'Hatshoshiganj',NULL,NULL,NULL,1,1,'2015-11-30 00:01:15',NULL,'0000-00-00 00:00:00',NULL,NULL),(593,5,'Hajirhat',NULL,NULL,NULL,1,1,'2015-11-30 00:02:05',NULL,'0000-00-00 00:00:00',NULL,NULL),(594,4,'SAHEBGANJ',NULL,NULL,NULL,1,1,'2015-11-30 00:06:32',NULL,'0000-00-00 00:00:00',NULL,NULL),(595,4,'Barajalia',NULL,NULL,NULL,1,1,'2015-11-30 00:13:18',NULL,'0000-00-00 00:00:00',NULL,NULL),(596,62,'Jakiganj',NULL,NULL,NULL,1,1,'2015-11-30 00:22:59',NULL,'0000-00-00 00:00:00',NULL,NULL),(597,61,'Dhirai Chandpur',NULL,NULL,NULL,1,1,'2015-11-30 00:46:34',NULL,'0000-00-00 00:00:00',NULL,NULL),(598,55,'Marishya',NULL,NULL,NULL,1,1,'2015-11-30 04:31:27',NULL,'0000-00-00 00:00:00',NULL,NULL),(599,55,'Longachh',NULL,NULL,NULL,1,1,'2015-11-30 04:31:42',NULL,'0000-00-00 00:00:00',NULL,NULL),(600,55,'Kalampati',NULL,NULL,NULL,1,1,'2015-11-30 04:34:21',NULL,'0000-00-00 00:00:00',NULL,NULL),(601,48,'Basurhat',NULL,NULL,NULL,1,1,'2015-11-30 05:03:18',NULL,'0000-00-00 00:00:00',NULL,NULL),(602,31,'Char Alexgander',NULL,NULL,NULL,1,1,'2015-11-30 05:09:51',NULL,'0000-00-00 00:00:00',NULL,NULL),(603,31,'Ramghar',NULL,NULL,NULL,1,1,'2015-11-30 05:10:15',NULL,'0000-00-00 00:00:00',NULL,NULL),(604,12,'Gorakghat',NULL,NULL,NULL,1,1,'2015-11-30 05:45:22',NULL,'0000-00-00 00:00:00',NULL,NULL),(605,12,'Chiringga',NULL,NULL,NULL,1,1,'2015-11-30 05:46:42',NULL,'0000-00-00 00:00:00',NULL,NULL),(606,9,'Jaldi',NULL,NULL,NULL,1,1,'2015-11-30 06:05:11',NULL,'0000-00-00 00:00:00',NULL,NULL),(607,9,'East Joara',NULL,NULL,NULL,1,1,'2015-11-30 06:30:07',NULL,'0000-00-00 00:00:00',NULL,NULL),(608,9,'Chittagong Sadar',NULL,NULL,NULL,1,1,'2015-11-30 06:31:46',NULL,'0000-00-00 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `sa_thanas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_ug_level`
--

DROP TABLE IF EXISTS `sa_ug_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_ug_level` (
  `UG_LEVEL_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `ORG_ID` int(11) DEFAULT '1',
  `USERGRP_ID` bigint(14) DEFAULT NULL,
  `SUB_PROJ_ID` bigint(14) DEFAULT NULL,
  `UGLEVE_NAME` varchar(50) DEFAULT NULL,
  `ORDER_SL` tinyint(2) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`UG_LEVEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_ug_level`
--

LOCK TABLES `sa_ug_level` WRITE;
/*!40000 ALTER TABLE `sa_ug_level` DISABLE KEYS */;
INSERT INTO `sa_ug_level` VALUES (5,1,9,NULL,'Super Admin',NULL,1,1,'2015-09-07 04:08:59',NULL,'2015-09-07 16:08:59'),(6,1,10,NULL,'Finance Manager',NULL,1,1,'2015-12-01 22:09:49',NULL,NULL),(8,1,13,NULL,'Teacher',NULL,1,1,'2015-12-07 23:32:15',NULL,NULL),(9,1,12,NULL,'VC Office',NULL,1,1,'2015-12-07 23:32:30',NULL,NULL),(12,1,12,NULL,'Registrar Office',NULL,1,1,'2015-12-07 23:32:57',NULL,NULL),(14,1,12,NULL,'Library',NULL,1,1,'2015-12-07 23:33:13',NULL,NULL),(15,1,12,NULL,'Information Technology',NULL,1,1,'2015-12-07 23:33:24',NULL,NULL),(21,1,16,NULL,'Assistant Director',NULL,1,1,'2017-05-02 04:42:42',NULL,NULL),(22,1,13,NULL,'Department Head',NULL,1,1,'2017-05-02 04:43:24',NULL,NULL),(24,1,12,NULL,'Provost',NULL,1,1,'2017-09-28 05:33:12',NULL,NULL),(25,1,12,NULL,'House Tutor',NULL,1,1,'2017-09-28 05:33:30',NULL,NULL),(27,1,15,NULL,'HR Admin',NULL,1,1,'2018-04-04 06:35:32',NULL,NULL),(28,1,17,NULL,'Controller',NULL,1,1,'2018-04-04 06:35:50',NULL,NULL),(29,1,17,NULL,'Assitant Controller',NULL,1,1,'2018-04-04 06:36:23',NULL,NULL),(30,1,12,NULL,'Store Manager',NULL,1,1,'2018-04-09 06:51:58',NULL,NULL),(31,1,15,NULL,'test',NULL,1,1,'2018-07-08 06:02:41',NULL,NULL),(32,1,13,NULL,'test',NULL,1,1,'2018-07-26 10:48:40',NULL,NULL);
/*!40000 ALTER TABLE `sa_ug_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_uglw_mlink`
--

DROP TABLE IF EXISTS `sa_uglw_mlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_uglw_mlink` (
  `SA_UGLWM_LINK` int(11) NOT NULL AUTO_INCREMENT,
  `SA_MLINKS_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `USERGRP_ID` int(11) DEFAULT NULL,
  `UG_LEVEL_ID` int(11) DEFAULT NULL,
  `SA_MODULE_ID` int(7) DEFAULT NULL,
  `LINK_ID` int(7) DEFAULT NULL,
  `CREATE` tinyint(1) DEFAULT '0',
  `READ` tinyint(1) DEFAULT '0',
  `UPDATE` tinyint(1) DEFAULT '0',
  `DELETE` tinyint(1) DEFAULT '0',
  `STATUS` tinyint(4) DEFAULT NULL,
  `URL_URI` varchar(200) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `CREATED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(10) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SA_UGLWM_LINK`),
  KEY `FK01_USER_ID` (`USER_ID`),
  KEY `FK02_SA_MODULE_ID` (`SA_MODULE_ID`),
  KEY `FK01_SA_MLINKS_ID` (`SA_MLINKS_ID`),
  KEY `FK02_USERGRP_ID` (`USERGRP_ID`),
  KEY `FK01_UG_LEVEL_ID` (`UG_LEVEL_ID`),
  KEY `FK05_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_uglw_mlink`
--

LOCK TABLES `sa_uglw_mlink` WRITE;
/*!40000 ALTER TABLE `sa_uglw_mlink` DISABLE KEYS */;
INSERT INTO `sa_uglw_mlink` VALUES (14,5,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-07 23:45:13',1,'2015-09-08 07:45:16'),(15,6,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-09-07 23:45:19',1,'2015-12-03 05:59:51'),(16,7,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-09-07 23:45:22',1,'2015-12-03 05:59:58'),(18,9,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-09 00:16:55',1,'2015-09-09 08:17:00'),(19,10,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-09 00:16:56',1,'2015-09-09 08:17:01'),(20,11,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-09 00:16:57',1,'2015-09-09 08:17:02'),(21,12,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-09 00:23:13',1,'2015-10-07 07:35:02'),(22,13,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-09-12 22:04:16',1,'2015-12-03 06:00:03'),(25,15,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-18 21:48:35',1,'2018-03-31 07:00:39'),(26,16,1,NULL,9,5,20,NULL,0,0,0,0,0,NULL,1,1,'2015-09-19 03:33:28',1,'2017-06-12 03:50:43'),(27,17,1,NULL,9,5,20,NULL,1,1,1,1,1,NULL,1,31,'2015-09-19 03:33:29',1,'2015-12-31 11:52:55'),(28,18,1,NULL,9,5,19,NULL,1,1,1,1,1,NULL,1,1,'2015-09-21 05:15:36',1,'2015-10-01 15:59:40'),(29,20,1,NULL,9,5,19,NULL,1,1,1,1,1,NULL,1,1,'2015-09-21 23:27:41',1,'2015-10-01 15:59:47'),(30,21,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-09-21 23:47:37',1,'2015-09-22 07:47:38'),(33,23,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-01 03:45:21',1,'2015-10-01 11:45:27'),(34,24,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-03 22:22:34',1,'2015-10-04 06:22:38'),(37,27,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-06 23:48:44',1,'2015-10-07 07:48:41'),(38,28,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-06 23:49:46',1,'2015-10-07 07:49:41'),(39,30,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-07 04:20:44',1,'2015-10-07 12:20:39'),(40,31,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2015-10-07 22:00:45',1,'2015-12-10 05:15:10'),(41,32,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,27,'2015-10-11 23:48:55',1,'2015-12-08 07:15:18'),(42,33,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,27,'2015-10-12 00:06:25',1,'2015-12-08 07:15:22'),(43,34,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,27,'2015-10-12 00:09:15',1,'2015-12-08 07:15:33'),(44,35,1,NULL,9,5,21,NULL,1,1,1,1,1,NULL,1,1,'2015-10-18 00:20:31',1,'2015-10-18 08:20:29'),(45,36,1,NULL,9,5,21,NULL,1,1,1,1,1,NULL,1,1,'2015-10-18 00:23:20',1,'2015-10-18 08:23:18'),(46,37,1,NULL,9,5,21,NULL,1,1,1,1,1,NULL,1,1,'2015-10-18 00:24:26',1,'2015-10-18 08:24:24'),(47,38,1,NULL,9,5,21,NULL,1,1,1,1,1,NULL,1,1,'2015-10-18 00:25:35',1,'2015-10-18 08:25:34'),(48,39,1,NULL,9,5,21,NULL,1,1,1,1,1,NULL,1,1,'2015-10-18 00:26:49',1,'2015-10-18 08:26:47'),(49,40,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-18 02:17:23',1,'2015-10-18 10:17:21'),(51,42,1,NULL,9,5,10,NULL,0,0,0,0,0,NULL,1,31,'2015-10-19 02:13:16',1,'2016-02-22 09:58:44'),(52,43,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-20 21:53:08',1,'2015-10-21 05:53:06'),(53,44,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-10-25 00:24:42',1,'2015-12-03 06:00:23'),(54,45,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-10-26 23:52:24',1,'2015-10-27 06:52:22'),(55,46,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-10-27 00:56:09',1,'2015-10-27 07:56:07'),(56,47,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-10-27 23:58:09',1,'2015-12-03 06:00:19'),(57,48,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-11-01 21:34:09',1,'2015-11-02 04:34:10'),(58,49,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-11-02 03:34:17',1,'2015-11-02 10:34:19'),(59,50,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-11-03 03:25:03',1,'2015-11-03 10:25:03'),(60,51,1,NULL,9,5,20,NULL,1,1,1,1,1,NULL,1,1,'2015-11-08 02:43:57',1,'2015-11-08 09:44:04'),(61,52,1,NULL,9,5,20,NULL,1,1,1,1,1,NULL,1,1,'2015-11-08 02:45:45',1,'2015-11-08 09:45:48'),(62,53,1,NULL,9,5,22,NULL,1,1,1,1,1,NULL,1,31,'2015-11-09 23:41:13',1,'2015-12-09 06:41:37'),(63,54,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-11-19 02:26:59',1,'2015-11-19 09:26:50'),(64,55,1,NULL,9,5,23,NULL,1,1,1,1,1,NULL,1,31,'2015-11-23 01:06:17',1,'2015-12-23 07:17:56'),(65,32,1,NULL,10,6,9,NULL,1,1,1,1,1,NULL,1,27,'2015-12-01 22:21:45',1,'2015-12-08 07:15:18'),(66,33,1,NULL,10,6,9,NULL,1,1,1,1,1,NULL,1,27,'2015-12-01 22:21:50',1,'2015-12-08 07:15:22'),(67,34,1,NULL,10,6,9,NULL,1,1,1,1,1,NULL,1,27,'2015-12-01 22:21:54',1,'2015-12-08 07:15:33'),(69,56,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-12-01 22:34:38',1,'2015-12-02 05:34:33'),(71,6,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,1,'2015-12-02 22:59:50',1,'2015-12-03 05:59:51'),(72,7,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,1,'2015-12-02 22:59:56',1,'2015-12-03 05:59:58'),(73,13,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,1,'2015-12-02 23:00:01',1,'2015-12-03 06:00:03'),(74,47,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,1,'2015-12-02 23:00:18',1,'2015-12-03 06:00:19'),(75,44,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,1,'2015-12-02 23:00:22',1,'2015-12-03 06:00:23'),(76,57,1,NULL,9,5,10,NULL,1,1,1,1,1,NULL,1,1,'2015-12-03 00:35:29',1,'2015-12-03 07:35:20'),(77,53,1,NULL,13,8,22,NULL,1,1,1,1,1,NULL,1,31,'2015-12-07 23:50:13',27,'2015-12-09 06:41:37'),(78,32,1,NULL,12,10,9,NULL,1,1,1,1,1,NULL,1,27,'2015-12-08 00:15:17',27,'2015-12-08 07:15:18'),(79,33,1,NULL,12,10,9,NULL,1,1,1,1,1,NULL,1,27,'2015-12-08 00:15:22',27,'2015-12-08 07:15:22'),(80,34,1,NULL,12,10,9,NULL,1,1,1,1,1,NULL,1,27,'2015-12-08 00:15:34',27,'2015-12-08 07:15:33'),(83,58,1,NULL,13,8,22,NULL,1,1,1,1,1,NULL,1,31,'2015-12-08 23:42:04',31,'2015-12-12 11:34:59'),(84,59,1,NULL,9,5,24,NULL,1,1,1,1,1,NULL,1,31,'2015-12-09 02:12:28',31,'2015-12-09 09:12:22'),(85,60,1,NULL,13,8,22,NULL,1,1,1,1,1,NULL,1,31,'2015-12-09 05:11:43',31,'2015-12-09 12:11:38'),(86,31,1,NULL,13,8,9,NULL,1,1,1,1,1,NULL,1,31,'2015-12-09 22:15:16',31,'2015-12-23 05:54:55'),(87,61,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2015-12-13 23:58:59',31,'2015-12-14 06:59:02'),(88,62,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2015-12-14 22:18:08',31,'2015-12-15 05:18:08'),(89,63,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2015-12-14 22:18:12',31,'2015-12-15 05:18:13'),(90,64,1,NULL,9,5,25,NULL,1,1,1,1,1,NULL,1,31,'2015-12-15 00:31:15',31,'2015-12-23 05:58:20'),(92,67,1,NULL,13,8,27,NULL,1,1,1,1,1,NULL,1,31,'2015-12-19 02:36:06',31,'2015-12-19 09:35:51'),(93,66,1,NULL,13,8,27,NULL,1,1,1,1,1,NULL,1,31,'2015-12-19 02:36:21',31,'2015-12-19 09:40:18'),(94,68,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2015-12-19 06:02:59',31,'2015-12-19 13:02:45'),(95,69,1,NULL,13,8,28,NULL,1,1,1,1,1,NULL,1,31,'2015-12-20 04:20:34',31,'2015-12-20 11:20:33'),(96,70,1,NULL,13,8,28,NULL,1,1,1,1,1,NULL,1,31,'2015-12-20 04:22:27',31,'2015-12-20 11:22:26'),(97,71,1,NULL,13,8,28,NULL,1,1,1,1,1,NULL,1,31,'2015-12-20 04:37:48',31,'2015-12-22 11:37:41'),(98,72,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2015-12-21 22:47:27',31,'2018-04-05 10:52:03'),(99,73,1,NULL,10,6,30,NULL,1,1,1,1,1,NULL,1,31,'2015-12-21 23:03:04',31,'2015-12-22 06:03:04'),(100,74,1,NULL,10,6,29,NULL,1,1,1,1,1,NULL,1,31,'2015-12-21 23:38:32',31,'2015-12-22 06:38:32'),(102,75,1,NULL,9,5,28,NULL,1,1,1,1,1,NULL,1,31,'2015-12-22 02:42:50',31,'2015-12-22 09:42:49'),(103,76,1,NULL,9,5,31,NULL,1,1,1,1,1,NULL,1,31,'2015-12-23 23:28:42',31,'2015-12-24 06:28:34'),(104,18,1,NULL,12,9,19,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:28:52',31,'2015-12-27 07:28:31'),(105,17,1,NULL,12,9,20,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:29:14',31,'2015-12-27 07:28:54'),(106,53,1,NULL,12,9,22,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:29:24',31,'2015-12-27 07:29:04'),(107,58,1,NULL,12,9,22,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:29:29',31,'2015-12-27 07:29:08'),(108,64,1,NULL,12,9,25,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:29:43',31,'2015-12-27 07:29:26'),(109,16,1,NULL,12,13,20,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:31:34',31,'2015-12-27 07:31:14'),(110,17,1,NULL,12,13,20,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:31:37',31,'2015-12-27 07:31:30'),(111,51,1,NULL,12,13,20,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:31:39',31,'2015-12-27 07:31:31'),(112,52,1,NULL,12,13,20,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 00:31:40',31,'2015-12-27 07:31:32'),(116,41,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 22:31:12',31,'2015-12-28 05:30:52'),(117,42,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 22:31:16',31,'2015-12-28 05:31:03'),(118,46,1,NULL,11,7,10,NULL,1,1,1,1,1,NULL,1,31,'2015-12-27 22:31:22',31,'2015-12-28 05:31:02'),(122,77,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2015-12-29 22:53:26',31,'2015-12-30 05:52:58'),(123,78,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2015-12-29 22:53:30',31,'2015-12-30 05:53:09'),(124,79,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2015-12-29 22:53:31',31,'2015-12-30 05:53:07'),(125,80,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2015-12-30 23:24:12',31,'2015-12-31 06:23:42'),(126,81,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2016-01-03 22:27:27',31,'2016-01-04 05:27:27'),(127,82,1,NULL,9,5,34,NULL,1,1,1,1,1,NULL,1,31,'2016-01-08 23:55:26',31,'2016-07-21 08:31:21'),(128,84,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2016-01-19 02:30:09',31,'2016-01-19 09:29:54'),(129,85,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2016-01-20 03:47:17',31,'2016-01-20 10:46:56'),(130,86,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2016-01-20 23:48:06',31,'2016-01-21 06:47:46'),(131,87,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2016-01-23 00:13:13',31,'2016-01-23 07:12:44'),(132,88,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2016-01-25 03:29:48',31,'2016-01-30 07:02:23'),(133,89,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,31,'2016-01-25 22:37:15',31,'2016-01-26 05:37:15'),(134,90,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 00:27:57',31,'2016-01-27 07:27:54'),(135,91,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 03:54:49',31,'2018-03-28 10:52:02'),(136,92,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 03:56:59',31,'2018-03-28 10:53:26'),(137,93,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 03:58:39',31,'2018-03-28 10:54:51'),(138,94,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 04:00:32',31,'2018-03-31 06:31:03'),(139,95,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 04:02:54',31,'2018-03-28 10:55:30'),(140,96,1,NULL,9,5,25,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 04:04:59',31,'2016-01-27 11:04:55'),(141,97,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 04:41:15',31,'2018-03-28 11:06:08'),(142,98,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2016-01-27 04:44:39',31,'2018-03-28 11:48:17'),(143,99,1,NULL,9,5,36,NULL,0,0,0,0,0,NULL,1,1,'2016-01-27 04:46:44',31,'2017-09-18 06:39:09'),(144,100,1,NULL,9,5,28,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:45:40',31,'2016-01-28 04:45:33'),(145,101,1,NULL,9,5,37,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:51:14',31,'2016-01-28 04:51:08'),(146,102,1,NULL,9,5,37,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:52:45',31,'2016-01-28 04:52:37'),(147,103,1,NULL,9,5,37,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:54:19',31,'2016-01-28 04:54:11'),(148,104,1,NULL,9,5,37,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:55:33',31,'2016-01-28 04:55:25'),(149,105,1,NULL,9,5,37,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:58:01',31,'2016-01-28 04:57:53'),(150,106,1,NULL,9,5,37,NULL,1,1,1,1,1,NULL,1,31,'2016-01-27 21:59:50',31,'2016-01-28 04:59:42'),(151,107,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2016-01-31 00:37:20',31,'2016-01-31 07:37:02'),(152,108,1,NULL,9,5,38,NULL,1,1,1,1,1,NULL,1,31,'2016-02-02 05:07:36',31,'2016-02-02 12:07:32'),(153,109,1,NULL,10,6,39,NULL,1,1,1,1,1,NULL,1,31,'2016-02-03 05:52:01',31,'2016-02-03 12:51:54'),(154,110,1,NULL,12,11,33,NULL,1,1,1,1,1,NULL,1,31,'2016-02-03 23:39:32',31,'2016-02-04 06:39:06'),(155,111,1,NULL,9,5,40,NULL,1,1,1,1,1,NULL,1,31,'2016-02-08 23:34:09',31,'2016-02-09 06:34:04'),(156,112,1,NULL,9,5,40,NULL,1,1,1,1,1,NULL,1,31,'2016-02-08 23:34:14',31,'2016-02-09 06:34:10'),(157,115,1,NULL,9,5,39,NULL,1,1,1,1,1,NULL,1,31,'2016-02-08 23:34:21',31,'2016-02-09 06:34:16'),(158,114,1,NULL,9,5,39,NULL,0,0,0,0,0,NULL,1,1,'2016-02-08 23:34:26',31,'2017-07-09 10:14:40'),(159,113,1,NULL,9,5,39,NULL,1,1,1,1,1,NULL,1,31,'2016-02-08 23:34:27',31,'2016-02-09 06:35:06'),(160,116,1,NULL,9,5,20,NULL,1,1,1,1,1,NULL,1,1,'2016-02-23 03:13:13',31,'2017-06-12 03:52:20'),(161,117,1,NULL,9,5,23,NULL,1,1,1,1,1,NULL,1,31,'2016-02-23 03:18:28',31,'2016-02-23 10:17:43'),(162,118,1,NULL,12,10,41,NULL,0,0,0,0,0,NULL,1,31,'2016-02-23 03:39:30',31,'2016-02-23 10:39:16'),(163,119,1,NULL,12,10,41,NULL,0,0,0,0,0,NULL,1,31,'2016-02-23 03:39:36',31,'2016-02-23 10:39:19'),(164,118,1,NULL,10,6,41,NULL,1,1,1,1,1,NULL,1,31,'2016-02-23 03:40:16',31,'2016-02-23 10:39:34'),(165,119,1,NULL,10,6,41,NULL,1,1,1,1,1,NULL,1,31,'2016-02-23 03:40:17',31,'2016-02-23 10:39:34'),(166,120,1,NULL,10,6,42,NULL,1,1,1,1,1,NULL,1,31,'2016-02-24 00:35:00',31,'2016-02-24 07:34:11'),(167,49,1,NULL,13,8,10,NULL,0,0,0,0,0,NULL,1,31,'2016-02-28 22:23:20',31,'2016-02-29 10:03:51'),(168,121,1,NULL,10,6,41,NULL,1,1,1,1,1,NULL,1,31,'2016-03-08 22:33:44',31,'2016-03-09 05:33:24'),(169,122,1,NULL,9,5,34,NULL,0,0,0,0,0,NULL,1,31,'2016-03-16 00:21:07',31,'2016-07-21 08:31:26'),(170,123,1,NULL,13,8,22,NULL,1,1,1,1,1,NULL,1,31,'2016-03-27 23:58:27',31,'2016-03-28 07:56:45'),(171,124,1,NULL,15,17,43,NULL,1,1,1,1,1,NULL,1,31,'2016-03-31 02:29:23',31,'2016-03-31 10:27:29'),(172,125,1,NULL,9,5,43,NULL,0,0,0,0,0,NULL,1,31,'2016-03-31 02:45:43',31,'2016-04-03 07:47:12'),(173,126,1,NULL,15,17,43,NULL,0,0,0,0,0,NULL,1,31,'2016-03-31 02:46:42',31,'2016-03-31 10:48:01'),(174,125,1,NULL,15,17,43,NULL,1,1,1,1,1,NULL,1,31,'2016-03-31 02:48:46',31,'2016-03-31 10:46:51'),(175,127,1,NULL,9,5,43,NULL,1,1,1,1,1,NULL,1,31,'2016-04-03 00:08:06',31,'2016-04-03 08:06:02'),(176,116,1,NULL,12,13,20,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 09:58:05',31,'2016-07-24 11:58:09'),(177,55,1,NULL,12,13,23,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:35:19',31,'2016-07-24 13:35:21'),(178,117,1,NULL,12,13,23,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:35:22',31,'2016-07-24 13:35:26'),(179,6,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:36:39',31,'2016-07-24 13:36:45'),(180,7,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:36:47',31,'2016-07-24 13:36:49'),(181,13,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:36:50',31,'2016-07-24 13:36:54'),(182,41,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:36:55',31,'2016-07-24 13:37:00'),(183,42,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:01',31,'2016-07-24 13:37:05'),(184,44,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:08',31,'2016-07-24 13:37:11'),(185,46,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:13',31,'2016-07-24 13:37:16'),(186,47,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:17',31,'2016-07-24 13:37:31'),(187,48,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:33',31,'2016-07-24 13:37:35'),(188,49,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:36',31,'2016-07-24 13:37:39'),(189,57,1,NULL,12,13,10,NULL,1,1,1,1,1,NULL,1,31,'2016-07-24 11:37:40',31,'2016-07-24 13:37:43'),(190,72,1,NULL,12,20,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:42:30',31,'2016-07-25 05:42:33'),(191,92,1,NULL,12,20,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:42:50',31,'2016-07-25 05:42:53'),(192,56,1,NULL,12,20,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:42:59',31,'2016-07-25 05:43:02'),(193,15,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:14',31,'2016-07-25 05:47:17'),(194,21,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:19',31,'2016-07-25 05:47:22'),(195,23,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:23',31,'2016-07-25 05:47:26'),(196,27,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:27',31,'2016-07-25 05:47:31'),(197,28,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:33',31,'2016-07-25 05:47:36'),(198,40,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:37',31,'2016-07-25 05:47:40'),(199,43,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:42',31,'2016-07-25 05:47:45'),(200,56,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:46',31,'2016-07-25 05:47:48'),(201,62,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:49',31,'2016-07-25 05:47:53'),(202,63,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:53',31,'2016-07-25 05:47:56'),(203,65,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:47:57',31,'2016-07-25 05:48:00'),(204,72,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:00',31,'2016-07-25 05:48:03'),(205,87,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:04',31,'2016-07-25 05:48:08'),(206,88,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:09',31,'2016-07-25 05:48:13'),(207,89,1,NULL,12,19,9,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:15',31,'2016-07-25 05:48:17'),(208,64,1,NULL,12,19,25,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:27',31,'2016-07-25 05:48:30'),(209,96,1,NULL,12,19,25,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:31',31,'2016-07-25 05:48:34'),(210,82,1,NULL,12,19,34,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:46',31,'2016-07-25 05:48:50'),(211,91,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:55',31,'2016-07-25 05:48:58'),(212,92,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:48:58',31,'2016-07-25 05:49:02'),(213,93,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:49:03',31,'2016-07-25 05:49:06'),(214,94,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:49:07',31,'2016-07-25 05:49:09'),(215,95,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:49:11',31,'2016-07-25 05:49:15'),(216,97,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:49:18',31,'2016-07-25 05:49:22'),(217,98,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:49:23',31,'2016-07-25 05:49:28'),(218,99,1,NULL,12,19,36,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:49:29',31,'2016-07-25 05:49:32'),(219,101,1,NULL,10,6,37,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:55:33',31,'2016-07-25 05:56:40'),(220,102,1,NULL,10,6,37,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:55:48',31,'2016-07-25 05:56:41'),(221,103,1,NULL,10,6,37,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:55:53',31,'2016-07-25 05:56:41'),(222,105,1,NULL,10,6,37,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:56:27',31,'2016-07-25 05:56:42'),(223,106,1,NULL,10,6,37,NULL,1,1,1,1,1,NULL,1,31,'2016-07-25 03:56:29',31,'2016-07-25 05:56:42'),(224,128,1,NULL,9,5,36,NULL,1,1,1,1,1,NULL,1,1,'2017-04-25 09:36:51',31,'2018-03-28 12:15:14'),(225,129,1,NULL,9,5,45,NULL,1,1,1,1,1,NULL,1,1,'2017-04-30 04:52:11',31,'2018-03-29 06:04:10'),(226,113,1,NULL,16,21,39,NULL,1,1,1,1,1,NULL,1,1,'2017-05-09 09:18:49',1,'2017-05-23 12:54:55'),(227,115,1,NULL,16,21,39,NULL,1,1,1,1,1,NULL,1,1,'2017-05-09 09:19:37',1,'2017-05-09 09:19:40'),(228,130,1,NULL,9,5,46,NULL,1,1,1,1,1,NULL,1,1,'2017-05-11 09:12:48',1,'2018-03-29 05:31:54'),(229,131,1,NULL,9,5,46,NULL,1,1,1,1,1,NULL,1,1,'2017-05-13 08:55:28',1,'2017-05-13 10:55:18'),(230,132,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-05-17 11:49:08',1,'2018-03-28 13:18:00'),(231,114,1,NULL,13,8,39,NULL,1,1,1,1,1,NULL,1,1,'2017-05-23 10:24:30',1,'2017-05-23 12:24:30'),(232,133,1,NULL,9,5,47,NULL,1,1,1,1,1,NULL,1,1,'2017-05-27 09:26:51',1,'2017-05-27 11:26:50'),(233,134,1,NULL,9,5,47,NULL,1,1,1,1,1,NULL,1,1,'2017-05-27 11:29:03',1,'2017-05-27 11:29:10'),(234,135,1,NULL,9,5,46,NULL,1,1,1,1,1,NULL,1,1,'2017-06-06 05:10:48',1,'2017-06-06 07:10:46'),(235,136,1,NULL,9,5,47,NULL,1,1,1,1,1,NULL,1,1,'2017-06-07 04:02:25',1,'2017-06-07 04:02:28'),(236,137,1,NULL,9,5,46,NULL,1,1,1,1,1,NULL,1,1,'2017-06-07 09:28:48',1,'2017-06-07 11:28:43'),(237,138,1,NULL,16,21,39,NULL,1,1,1,1,1,NULL,1,1,'2017-06-08 06:58:42',1,'2017-06-08 06:58:48'),(238,139,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-06-11 02:50:21',1,'2018-03-28 10:40:55'),(239,140,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-06-11 03:28:52',1,'2018-03-31 11:45:18'),(240,136,1,NULL,13,22,47,NULL,1,1,1,1,1,NULL,1,1,'2017-06-11 08:09:50',1,'2017-06-11 10:10:31'),(241,136,1,NULL,13,8,47,NULL,1,1,1,1,1,NULL,1,1,'2017-06-11 08:10:56',1,'2017-06-11 10:10:40'),(242,141,1,NULL,13,8,48,NULL,1,1,1,1,1,NULL,1,1,'2017-06-13 06:37:44',1,'2017-06-13 08:37:26'),(243,142,1,NULL,13,8,48,NULL,0,0,0,0,0,NULL,1,1,'2017-06-13 06:37:50',1,'2017-06-13 06:39:35'),(244,143,1,NULL,13,8,48,NULL,0,0,0,0,0,NULL,1,1,'2017-06-13 06:37:54',1,'2017-06-13 06:39:39'),(245,142,1,NULL,9,5,48,NULL,1,1,1,1,1,NULL,1,1,'2017-06-13 06:39:57',1,'2018-03-31 08:31:06'),(246,143,1,NULL,9,5,48,NULL,1,1,0,1,1,NULL,1,1,'2017-06-13 06:40:01',1,'2018-03-31 08:44:43'),(247,116,1,NULL,16,21,20,NULL,1,1,1,1,1,NULL,1,1,'2017-06-21 05:33:53',1,'2017-06-21 07:33:34'),(248,139,1,NULL,16,21,9,NULL,1,1,1,1,1,NULL,1,1,'2017-06-21 08:06:34',1,'2017-06-21 10:06:14'),(249,140,1,NULL,16,21,9,NULL,1,1,1,1,1,NULL,1,1,'2017-06-21 08:06:38',1,'2017-06-21 10:06:19'),(250,8,1,NULL,9,5,9,NULL,0,0,0,0,0,NULL,1,1,'2017-07-12 08:28:38',1,'2018-03-28 09:12:48'),(251,144,1,NULL,9,5,9,NULL,0,0,0,0,0,NULL,1,1,'2017-07-12 08:28:48',1,'2017-07-12 10:29:32'),(252,145,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-07-23 09:56:12',1,'2018-03-31 11:41:34'),(253,146,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-07-25 04:02:26',1,'2018-03-31 11:46:17'),(254,147,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-07-26 03:58:59',1,'2018-03-29 08:23:36'),(255,148,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-07-26 08:11:39',1,'2018-03-29 10:13:31'),(256,149,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-07-27 08:38:14',1,'2018-03-29 10:29:39'),(257,150,1,NULL,9,5,50,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 04:20:58',1,'2017-08-06 05:54:28'),(258,151,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-07-29 05:55:50',1,'2017-07-29 07:56:46'),(259,8,1,NULL,13,8,9,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:32',1,'2017-07-31 07:41:01'),(260,132,1,NULL,13,8,9,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:33',1,'2017-07-31 07:41:03'),(261,16,1,NULL,13,8,20,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:37',1,'2017-07-31 07:41:58'),(262,94,1,NULL,13,8,36,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:40',1,'2017-07-31 07:41:08'),(263,95,1,NULL,13,8,36,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:41',1,'2017-07-31 07:41:09'),(264,98,1,NULL,13,8,36,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:42',1,'2017-07-31 07:41:10'),(265,97,1,NULL,13,8,36,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:43',1,'2017-07-31 07:41:09'),(266,91,1,NULL,13,8,36,NULL,0,0,0,0,0,NULL,1,1,'2017-07-29 11:10:44',1,'2017-07-31 07:41:07'),(267,152,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-07-31 10:25:08',1,'2017-07-31 10:26:25'),(268,153,1,NULL,9,5,45,NULL,1,1,1,1,1,NULL,1,1,'2017-07-31 13:02:18',1,'2017-07-31 15:03:13'),(269,154,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-01 10:14:51',1,'2018-03-29 11:00:16'),(270,155,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-02 09:34:31',1,'2018-03-31 11:47:15'),(271,156,1,NULL,9,5,46,NULL,1,1,1,1,1,NULL,1,1,'2017-08-03 08:23:49',1,'2017-08-03 10:24:40'),(272,150,1,NULL,13,8,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-05 04:22:44',1,'2017-08-05 04:24:09'),(273,157,1,NULL,13,8,48,NULL,1,1,1,1,1,NULL,1,1,'2017-08-06 08:18:27',1,'2017-08-06 08:19:52'),(274,158,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-07 03:44:44',1,'2017-08-07 05:46:11'),(275,159,1,NULL,9,5,49,NULL,0,0,0,0,0,NULL,1,1,'2017-08-08 10:16:31',1,'2017-08-27 15:24:33'),(276,160,1,NULL,17,23,51,NULL,1,1,1,1,1,NULL,1,1,'2017-08-09 06:03:41',1,'2017-08-09 06:05:53'),(277,161,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-09 06:08:16',1,'2017-08-28 05:59:33'),(278,146,1,NULL,17,23,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-09 10:29:49',1,'2017-08-09 12:31:08'),(279,148,1,NULL,17,23,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-09 10:29:53',1,'2017-08-09 12:31:12'),(280,149,1,NULL,17,23,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-09 10:29:57',1,'2017-08-09 12:31:17'),(281,150,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-09 10:30:02',1,'2017-08-09 12:31:19'),(282,152,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-09 10:30:04',1,'2017-08-09 12:31:21'),(283,154,1,NULL,17,23,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-09 10:30:05',1,'2017-08-09 12:31:25'),(284,155,1,NULL,17,23,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-09 10:30:09',1,'2017-08-09 12:31:29'),(285,158,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-09 10:30:15',1,'2017-08-28 06:02:27'),(286,162,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-08-10 08:30:09',1,'2018-03-28 12:55:32'),(287,163,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-13 09:24:41',1,'2017-08-28 06:09:22'),(288,164,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-21 04:30:57',1,'2017-08-28 06:03:19'),(289,165,1,NULL,17,23,50,NULL,0,0,0,0,0,NULL,1,1,'2017-08-23 06:18:24',1,'2017-08-28 06:10:17'),(290,166,1,NULL,9,5,49,NULL,0,0,0,0,0,NULL,1,1,'2017-08-23 09:08:26',1,'2017-08-27 15:24:21'),(291,167,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-08-26 10:13:16',1,'2018-03-28 12:47:51'),(292,168,1,NULL,9,5,49,NULL,0,0,0,0,0,NULL,1,1,'2017-08-27 09:37:21',1,'2017-12-26 04:06:42'),(293,169,1,NULL,17,23,51,NULL,1,1,1,1,1,NULL,1,1,'2017-08-28 05:57:41',1,'2017-08-28 05:59:38'),(294,170,1,NULL,17,23,51,NULL,1,1,1,1,1,NULL,1,1,'2017-08-28 05:59:44',1,'2017-08-28 06:01:40'),(295,171,1,NULL,17,23,51,NULL,1,1,1,1,1,NULL,1,1,'2017-08-28 06:01:17',1,'2017-08-28 06:03:14'),(296,172,1,NULL,17,23,52,NULL,1,1,1,1,1,NULL,1,1,'2017-08-28 06:07:22',1,'2017-08-28 06:09:19'),(297,173,1,NULL,17,23,52,NULL,1,1,1,1,1,NULL,1,1,'2017-08-28 06:08:18',1,'2017-08-28 06:10:13'),(298,174,1,NULL,17,23,50,NULL,1,1,1,1,1,NULL,1,1,'2017-08-28 09:03:35',1,'2017-08-28 11:05:33'),(299,175,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-09-07 04:45:39',1,'2018-03-31 08:07:46'),(300,176,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2017-09-09 04:02:03',1,'2018-04-05 10:52:31'),(301,177,1,NULL,9,5,46,NULL,1,1,1,1,1,NULL,1,1,'2017-09-17 04:12:15',1,'2017-09-17 06:14:14'),(302,178,1,NULL,13,8,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-20 06:33:00',1,'2017-09-20 08:35:17'),(303,179,1,NULL,9,5,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-20 08:24:28',1,'2017-09-20 10:26:46'),(304,180,1,NULL,9,5,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-21 03:56:07',1,'2018-03-29 11:03:20'),(305,181,1,NULL,13,8,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-21 06:26:02',1,'2017-09-21 08:28:20'),(306,172,1,NULL,9,5,52,NULL,0,0,0,0,0,NULL,1,1,'2017-09-23 09:48:51',1,'2017-09-23 11:51:55'),(307,173,1,NULL,9,5,52,NULL,0,0,0,0,0,NULL,1,1,'2017-09-23 09:50:57',1,'2017-09-23 11:53:51'),(308,182,1,NULL,9,5,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-23 10:06:38',1,'2017-09-23 12:08:57'),(309,183,1,NULL,13,8,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-27 11:30:19',1,'2017-09-27 13:32:46'),(310,184,1,NULL,13,8,53,NULL,1,1,1,1,1,NULL,1,1,'2017-09-28 05:58:21',1,'2017-09-28 08:00:45'),(311,185,1,NULL,9,5,53,NULL,1,1,1,1,1,NULL,1,1,'2017-10-02 06:02:47',1,'2018-03-29 11:05:54'),(312,186,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-11-08 08:27:37',1,'2017-11-08 09:31:03'),(313,187,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-11-09 09:53:33',1,'2017-11-09 10:57:03'),(314,188,1,NULL,9,5,45,NULL,0,0,0,0,0,NULL,1,1,'2017-11-19 09:09:54',1,'2017-11-20 11:19:13'),(315,189,1,NULL,9,5,45,NULL,1,1,1,1,1,NULL,1,1,'2017-11-20 08:32:34',1,'2017-11-20 09:32:40'),(316,188,1,NULL,13,8,45,NULL,1,1,1,1,1,NULL,1,1,'2017-11-20 10:18:19',1,'2017-11-20 11:18:21'),(317,190,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-11-21 10:45:57',1,'2018-03-29 11:39:35'),(318,191,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-11-22 09:12:46',1,'2018-03-29 11:47:48'),(319,192,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-11-23 09:02:59',1,'2018-03-31 12:20:02'),(320,193,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-11-26 11:21:05',1,'2018-03-29 12:07:10'),(321,194,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-11-27 06:45:53',1,'2018-03-29 12:14:39'),(322,195,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-11-30 05:50:41',1,'2017-11-30 06:50:42'),(323,196,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-11-30 09:39:49',1,'2017-11-30 10:39:52'),(324,197,1,NULL,9,5,45,NULL,1,1,1,1,1,NULL,1,1,'2017-11-30 11:13:02',1,'2018-04-05 10:47:14'),(325,198,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2017-12-03 09:09:18',1,'2017-12-03 10:09:17'),(326,199,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-12-03 10:43:36',1,'2017-12-03 11:43:36'),(327,200,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-12-06 04:58:55',1,'2017-12-06 05:59:01'),(328,201,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-12-06 10:01:14',1,'2017-12-06 11:01:16'),(329,202,1,NULL,9,5,55,NULL,1,1,1,1,1,NULL,1,1,'2017-12-20 11:12:07',1,'2017-12-20 12:12:09'),(330,204,1,NULL,9,5,57,NULL,1,1,1,1,1,NULL,1,1,'2017-12-21 05:36:01',1,'2017-12-21 06:36:03'),(331,205,1,NULL,9,5,45,NULL,1,1,1,1,1,NULL,1,1,'2017-12-26 04:09:00',1,'2018-03-29 06:39:13'),(332,206,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-12-26 09:35:45',1,'2018-03-29 12:26:58'),(333,207,1,NULL,9,5,45,NULL,1,1,1,1,1,NULL,1,1,'2017-12-26 10:57:30',1,'2017-12-26 11:57:31'),(334,208,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2017-12-26 13:44:13',1,'2017-12-26 13:44:16'),(335,193,1,NULL,13,8,54,NULL,1,1,1,1,1,NULL,1,1,'2017-12-28 04:31:27',1,'2017-12-28 05:31:30'),(336,209,1,NULL,16,21,20,NULL,1,1,1,1,1,NULL,1,1,'2018-01-25 06:24:25',1,'2018-01-25 06:24:27'),(337,210,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2018-01-25 08:44:29',1,'2018-03-28 12:30:41'),(338,211,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2018-03-11 06:01:21',1,'2018-03-28 12:26:50'),(339,212,1,NULL,9,5,9,NULL,0,0,0,0,0,NULL,1,1,'2018-03-11 11:51:12',1,'2018-07-08 06:55:43'),(340,213,1,NULL,9,5,49,NULL,1,1,1,1,1,NULL,1,1,'2018-03-22 10:35:27',1,'2018-03-29 08:29:26'),(341,91,1,NULL,16,21,36,NULL,1,1,1,0,1,NULL,1,1,'2018-03-28 10:54:00',1,'2018-03-28 10:53:53'),(342,214,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-04-01 10:10:53',1,'2018-04-01 10:11:41'),(343,215,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-04-02 06:20:36',1,'2018-04-02 06:19:22'),(344,216,1,NULL,9,5,46,NULL,0,0,0,0,0,NULL,1,1,'2018-04-02 10:48:52',1,'2018-04-03 03:53:37'),(345,216,1,NULL,13,8,46,NULL,1,1,1,1,1,NULL,1,1,'2018-04-02 10:49:29',1,'2018-04-02 12:50:29'),(346,217,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2018-04-05 04:21:16',1,'2018-04-05 10:44:19'),(347,218,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2018-04-05 06:18:37',1,'2018-04-05 10:45:58'),(348,219,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-04-07 09:20:06',1,'2018-04-07 09:19:10'),(349,220,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-07 10:29:41',1,'2018-04-07 12:30:57'),(350,146,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,1,'2018-04-08 05:43:48',1,'2018-04-08 05:44:50'),(351,148,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:43:53',1,'2018-04-08 05:44:50'),(352,149,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:43:57',1,'2018-04-08 05:44:54'),(353,155,1,NULL,17,29,50,NULL,1,1,1,1,1,NULL,1,1,'2018-04-08 05:44:02',1,'2018-04-23 06:33:35'),(354,158,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:44:04',1,'2018-04-08 05:45:01'),(355,161,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:44:11',1,'2018-04-08 05:45:09'),(356,163,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:44:13',1,'2018-04-08 05:45:11'),(357,164,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:44:15',1,'2018-04-08 05:45:13'),(358,165,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:44:20',1,'2018-04-08 05:45:18'),(359,174,1,NULL,17,29,50,NULL,1,0,0,0,0,NULL,1,NULL,'2018-04-08 05:44:21',1,'2018-04-08 05:45:18'),(360,221,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2018-04-08 06:16:09',1,'2018-04-08 21:17:28'),(361,222,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 05:01:21',1,'2018-04-09 07:02:36'),(362,190,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:09',1,'2018-04-09 06:54:11'),(363,191,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:15',1,'2018-04-09 06:54:18'),(364,192,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:22',1,'2018-04-09 06:54:23'),(365,193,1,NULL,12,30,54,NULL,0,0,0,0,0,NULL,1,1,'2018-04-09 06:53:27',1,'2018-04-09 06:54:26'),(366,194,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:30',1,'2018-04-09 06:54:32'),(367,195,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:40',1,'2018-04-09 06:54:41'),(368,199,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:45',1,'2018-04-09 06:54:46'),(369,200,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:51',1,'2018-04-09 06:54:53'),(370,201,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:53:57',1,'2018-04-09 06:55:00'),(371,206,1,NULL,12,30,54,NULL,0,0,0,0,0,NULL,1,1,'2018-04-09 06:54:04',1,'2018-04-09 06:55:16'),(372,208,1,NULL,12,30,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:54:10',1,'2018-04-09 06:55:11'),(373,223,1,NULL,12,30,60,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 06:58:45',1,'2018-04-09 06:59:46'),(374,193,1,NULL,13,22,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-09 07:02:58',1,'2018-04-09 07:03:59'),(375,224,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-10 06:44:21',1,'2018-04-10 08:45:36'),(376,225,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-04-10 08:39:43',1,'2018-04-10 08:38:46'),(377,226,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-10 10:55:10',1,'2018-04-10 12:56:25'),(378,227,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-10 11:41:30',1,'2018-04-10 13:42:45'),(379,228,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-11 06:58:45',1,'2018-04-11 08:59:59'),(380,229,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-04-12 10:05:49',1,'2018-04-12 10:04:52'),(381,230,1,NULL,9,5,9,NULL,1,1,1,1,1,NULL,1,1,'2018-04-15 08:49:53',1,'2018-04-15 23:51:13'),(382,231,1,NULL,9,5,54,NULL,1,1,1,1,1,NULL,1,1,'2018-04-19 04:14:43',1,'2018-04-19 19:16:30'),(383,150,1,NULL,13,22,50,NULL,1,1,1,1,1,NULL,1,1,'2018-04-26 06:07:16',1,'2018-04-26 06:08:49'),(384,232,1,NULL,9,5,50,NULL,1,1,1,1,1,NULL,1,1,'2018-05-05 04:45:34',1,'2018-05-05 19:47:34'),(385,232,1,NULL,17,29,50,NULL,1,1,1,0,1,NULL,1,1,'2018-05-05 05:54:23',1,'2018-05-05 05:55:59'),(386,114,1,NULL,13,22,39,NULL,1,1,1,1,1,NULL,1,1,'2018-05-14 08:08:14',1,'2018-05-14 08:10:11'),(387,216,1,NULL,13,22,46,NULL,1,1,1,0,1,NULL,1,1,'2018-05-26 03:32:48',1,'2018-05-26 03:34:54'),(388,233,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-06-06 04:34:39',1,'2018-06-06 04:35:25'),(389,234,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-06-23 11:37:23',1,'2018-06-23 11:38:03'),(390,235,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-06-27 08:33:06',1,'2018-06-27 08:33:46'),(391,236,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-06-28 08:28:34',1,'2018-06-28 08:30:12'),(392,237,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-07-04 10:04:17',1,'2018-07-04 10:02:38'),(393,238,1,NULL,9,5,58,NULL,1,1,1,1,1,NULL,1,1,'2018-07-05 09:10:51',1,'2018-07-05 09:09:12'),(394,223,1,NULL,9,5,60,NULL,1,1,1,1,1,NULL,1,1,'2018-07-08 06:57:31',1,'2018-07-08 06:56:27');
/*!40000 ALTER TABLE `sa_uglw_mlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_unions`
--

DROP TABLE IF EXISTS `sa_unions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_unions` (
  `THANA_ID` int(8) DEFAULT NULL,
  `UD_UNION_CODE` varchar(10) DEFAULT NULL,
  `UNION_NAME` varchar(100) DEFAULT NULL,
  `ORDER_SL` smallint(5) DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) DEFAULT '1',
  `CREATED_BY` bigint(14) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` bigint(14) DEFAULT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `UNION_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of sa_thanas table.',
  `UAREA_STATUS` varchar(1) DEFAULT NULL COMMENT 'Union/Ward Area Status, W=Ward, U=Union, B=Both',
  PRIMARY KEY (`UNION_ID`),
  KEY `FK01_THANA_ID` (`THANA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7735 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_unions`
--

LOCK TABLES `sa_unions` WRITE;
/*!40000 ALTER TABLE `sa_unions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_unions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_user_education`
--

DROP TABLE IF EXISTS `sa_user_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_user_education` (
  `USER_EDU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `DEGREE` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `INST_NAME` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `SUBJECT` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `PASS_YEAR` year(4) NOT NULL,
  `RESULT` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_EDU_ID`),
  KEY `FK_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_user_education`
--

LOCK TABLES `sa_user_education` WRITE;
/*!40000 ALTER TABLE `sa_user_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_user_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_user_group`
--

DROP TABLE IF EXISTS `sa_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_user_group` (
  `USERGRP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORG_ID` int(11) DEFAULT NULL,
  `USERGRP_NAME` varchar(50) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USERGRP_ID`),
  KEY `FK03_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_user_group`
--

LOCK TABLES `sa_user_group` WRITE;
/*!40000 ALTER TABLE `sa_user_group` DISABLE KEYS */;
INSERT INTO `sa_user_group` VALUES (9,1,'Admin',1,1,'2015-09-07 04:07:26',NULL,NULL),(12,1,'Staff',1,1,'2015-12-07 23:31:56',NULL,NULL),(13,1,'Faculty',1,1,'2015-12-07 23:32:04',NULL,NULL),(14,1,'Student',1,27,'2015-12-08 03:10:03',NULL,NULL),(15,1,'HR',1,31,'2016-03-31 02:27:49',NULL,NULL),(16,1,'Admission',1,1,'2017-05-02 04:41:59',NULL,NULL),(17,1,'Controller of Examination',1,1,'2017-08-09 05:45:15',NULL,NULL);
/*!40000 ALTER TABLE `sa_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_users`
--

DROP TABLE IF EXISTS `sa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERGRP_ID` int(11) NOT NULL,
  `USERLVL_ID` tinyint(2) DEFAULT NULL,
  `USERNAME` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `USERPW` varchar(300) COLLATE utf8_croatian_ci NOT NULL,
  `EMP_ID` int(11) DEFAULT NULL,
  `FULL_NAME` varchar(150) COLLATE utf8_croatian_ci NOT NULL,
  `DEPT_ID` tinyint(3) NOT NULL,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DESIG_ID` smallint(5) DEFAULT NULL,
  `GENDER` enum('M','F') COLLATE utf8_croatian_ci NOT NULL DEFAULT 'M' COMMENT 'M= Male, F= Female',
  `ORG_ID` int(11) NOT NULL DEFAULT '1',
  `FIRST_NAME` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `MIDDLE_NAME` varchar(80) COLLATE utf8_croatian_ci DEFAULT NULL,
  `LAST_NAME` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `EMAIL` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOBILE` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL,
  `NID` varchar(20) COLLATE utf8_croatian_ci NOT NULL,
  `USER_IMG` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `AGE` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `BLOOD_GROUP` varchar(10) COLLATE utf8_croatian_ci DEFAULT NULL,
  `HEIGHT_FEET` varchar(10) COLLATE utf8_croatian_ci DEFAULT NULL,
  `WEIGHT` tinyint(3) DEFAULT NULL,
  `IS_ADMIN` tinyint(1) DEFAULT '0',
  `HIRE_DATE` date NOT NULL,
  `TERMINATION_DATE` date DEFAULT NULL,
  `FATHERS_NAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOTHERS_NAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `MARITAL_STATUS` varchar(1) COLLATE utf8_croatian_ci NOT NULL,
  `SPOUSE_NAME` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `RELIGION` varchar(10) COLLATE utf8_croatian_ci NOT NULL,
  `NATIONALITY` varchar(25) COLLATE utf8_croatian_ci NOT NULL,
  `PLACE_OF_BIRTH` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `PASSPORT_NO` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL,
  `DATE_OF_ISSUE` date DEFAULT NULL,
  `PLACE_OF_ISSUE` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `RELATION` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `BIOMETRIC_ID` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `ENTERED_BY` int(10) DEFAULT NULL,
  `ENTRY_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_BY` int(10) DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `WEIGHT_KG` varchar(10) COLLATE utf8_croatian_ci DEFAULT NULL,
  `WEIGHT_LBS` varchar(10) COLLATE utf8_croatian_ci DEFAULT NULL,
  `HEIGHT_CM` varchar(10) COLLATE utf8_croatian_ci DEFAULT NULL,
  `USER_TYPE` int(11) DEFAULT NULL,
  `COLOR_OF_EYES` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Teacher Eyes Color',
  `IDENTIFY_MARK` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `JOIN_DATE` date DEFAULT NULL,
  `NATIONAL_ID` bigint(17) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `HOBBY` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `PS_GVN_FG` tinyint(1) DEFAULT '0',
  `FULL_NAME_BN` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_users`
--

LOCK TABLES `sa_users` WRITE;
/*!40000 ALTER TABLE `sa_users` DISABLE KEYS */;
INSERT INTO `sa_users` VALUES (1,9,5,'admin','$2y$11$rGFlQIrBolaceGWhIHEaN.nJB/30Oie4LyNSUM2dxihtXIWExqFSu',9,'',0,0,NULL,'M',1,'',NULL,'',NULL,NULL,'','admin.png',NULL,NULL,NULL,NULL,NULL,1,'2017-05-02',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-05-02 04:26:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(24,13,22,'rakib','$2y$11$T.ywXHaaOg/AL9.4GyfeZeRnX7LMJH46jBHWVyz9rnMmqsGKSO3Oe',3,'',1,0,2,'M',1,'',NULL,'',NULL,NULL,'','10.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-04 08:10:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(25,13,22,'foysal','$2y$11$mks5JjMaSvYna43HiprDHel.lwicllK33/Y01mU4CRb2sajA3S1..',8,'',1,0,2,'M',1,'',NULL,'',NULL,NULL,'','2.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-04 11:13:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(26,16,21,'shihab','$2y$11$bVcqho/mhIpsezWdKYG1uO/K1nBR46xu0Hwtn0g/ko1KCPcjT772u',5,'',17,0,3,'M',1,'',NULL,'',NULL,NULL,'','13.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-04 11:20:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(27,13,8,'akhi','$2y$11$/SFVtjgf3RrVJJKkVAPrx.AzbEQTtvUbQTAkEShMJjn7y8eFvzL4q',6,'',2,0,2,'M',1,'',NULL,'',NULL,NULL,'','5.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-05 05:54:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(28,17,29,'coe','$2y$11$mEflfSGcq./AJjdm2LW3oeIANAX2KpQLnrOsXwL84JmKfQ4LIATH2',10,'',18,0,4,'M',1,'',NULL,'',NULL,NULL,'','3.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-05 05:55:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(29,12,30,'inventory','$2y$11$WsvhAwk90L0YUVQCsefyDe67So77vAkMK.WvcivttUShgOApu7DEe',11,'',15,0,2,'M',1,'',NULL,'',NULL,NULL,'','8.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-09 06:52:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(30,12,12,'abhi.m.abhijit@gmail.com','$2y$11$ZLpiQh7q5neX2XCnusJue.lgwm1XEFVe2Sp.3xCR7i0hC8jstLFVu',4,'',6,0,2,'M',1,'',NULL,'',NULL,NULL,'','12.jpg',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-28 08:47:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(87,13,8,'reazulislam651@gmail.com','$2y$11$miK5GRZWh8sspqxH286ujeQQpcBvBHJexIdCxCh8QBkNijmjqVAD6',17,'',2,0,1,'M',1,'',NULL,'',NULL,NULL,'','reazul (10) (10).png',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-04-30 10:36:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `sa_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sav_semester`
--

DROP TABLE IF EXISTS `sav_semester`;
/*!50001 DROP VIEW IF EXISTS `sav_semester`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sav_semester` AS SELECT 
 1 AS `SEMESTER_ID`,
 1 AS `SEMESTER_NAME`,
 1 AS `ACTIVE_FLAG`,
 1 AS `SL_NO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sequence_info`
--

DROP TABLE IF EXISTS `sequence_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence_info` (
  `TABLE_NAME` varchar(30) NOT NULL,
  `START_WITH` bigint(14) NOT NULL,
  `MAX_VALUE` bigint(14) NOT NULL,
  `MIN_VALUE` bigint(14) NOT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_info`
--

LOCK TABLES `sequence_info` WRITE;
/*!40000 ALTER TABLE `sequence_info` DISABLE KEYS */;
INSERT INTO `sequence_info` VALUES ('bm_paymentmst',0,999999999,0),('bm_paymodeamt',0,999999999,0),('bm_vn_ledgers',0,999999999,0),('fn_voucherchd',382,999999999,0),('fn_vouchermst',112,999999999,0);
/*!40000 ALTER TABLE `sequence_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_dev_directory`
--

DROP TABLE IF EXISTS `skill_dev_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_dev_directory` (
  `SD_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SD_NAME` varchar(45) NOT NULL DEFAULT '',
  `ACTIVE_STATUS` enum('Y','N') NOT NULL DEFAULT 'Y',
  `PARENT_SD_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CRE_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `CRE_DT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPD_BY` int(10) unsigned DEFAULT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `DIRECTORY_PATH` text,
  PRIMARY KEY (`SD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_dev_directory`
--

LOCK TABLES `skill_dev_directory` WRITE;
/*!40000 ALTER TABLE `skill_dev_directory` DISABLE KEYS */;
INSERT INTO `skill_dev_directory` VALUES (146,'Office File','Y',0,1,'2017-12-27 01:33:09',NULL,NULL,'skillDoc/Office-File'),(147,'UGC File','Y',0,1,'2017-12-27 01:33:19',NULL,NULL,'skillDoc/UGC-File'),(148,'Financial File','Y',147,1,'2017-12-27 01:36:06',NULL,NULL,'skillDoc/UGC-File/Financial-File'),(149,'Academic File','Y',147,1,'2017-12-27 01:36:23',NULL,NULL,'skillDoc/UGC-File/Academic-File'),(150,'Inventory','Y',146,1,'2017-12-27 01:36:57',NULL,NULL,'skillDoc/Office-File/Inventory-Purchase'),(151,'Confidential File','Y',148,1,'2017-12-27 02:12:07',NULL,NULL,'skillDoc/UGC-File/Financial-File/Confidential-File'),(152,'New folder','Y',146,1,'2017-12-28 00:01:53',NULL,NULL,'skillDoc/Office-File/New-folder'),(153,'Student FIle','Y',0,1,'2017-12-28 00:03:43',NULL,NULL,'skillDoc/Student-FIle'),(154,'EEE Student','Y',153,1,'2017-12-28 00:04:16',NULL,NULL,'skillDoc/Student-FIle/EEE-Student'),(155,'Demo FIle','Y',0,1,'2017-12-28 00:04:35',NULL,NULL,'skillDoc/Demo-FIle');
/*!40000 ALTER TABLE `skill_dev_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_dev_element`
--

DROP TABLE IF EXISTS `skill_dev_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_dev_element` (
  `ELEMENT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ELEMENT_TITLE` varchar(255) NOT NULL DEFAULT '',
  `ELEMENT_TYPE` enum('F','W') NOT NULL DEFAULT 'F',
  `ELEMENT_DESC` varchar(500) DEFAULT NULL,
  `ACTIVE_STATUS` enum('Y','N') NOT NULL DEFAULT 'Y',
  `CRE_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `CRE_DT` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPD_BY` int(10) unsigned DEFAULT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `SD_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ELEMENT_URL` text NOT NULL,
  `ELEMENT_EXT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ELEMENT_ID`),
  KEY `FK_skill_dev_element_1` (`SD_ID`),
  CONSTRAINT `FK_skill_dev_element_1` FOREIGN KEY (`SD_ID`) REFERENCES `skill_dev_directory` (`SD_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_dev_element`
--

LOCK TABLES `skill_dev_element` WRITE;
/*!40000 ALTER TABLE `skill_dev_element` DISABLE KEYS */;
INSERT INTO `skill_dev_element` VALUES (1,'test','F',NULL,'Y',1,'2017-12-27 07:35:13',NULL,NULL,146,'pdf.pdf','pdf'),(2,'resultfile','F',NULL,'Y',1,'2017-12-27 07:35:44',NULL,NULL,147,'pdf.pdf','pdf'),(3,'test2','F',NULL,'Y',1,'2017-12-28 05:06:44',NULL,NULL,146,'pdf1.pdf','pdf'),(4,'test file','F',NULL,'Y',1,'2017-12-28 06:02:12',NULL,NULL,152,'pdf.pdf','pdf');
/*!40000 ALTER TABLE `skill_dev_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_acadimicinfo`
--

DROP TABLE IF EXISTS `student_acadimicinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_acadimicinfo` (
  `STU_AI_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` bigint(14) DEFAULT NULL,
  `EXAM_DEGREE_ID` bigint(4) DEFAULT NULL,
  `MAJOR_GROUP_ID` bigint(4) DEFAULT NULL,
  `INSTITUTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `BOARD` smallint(4) DEFAULT NULL,
  `RESULT_GRADE` double DEFAULT NULL,
  `RESULT_GRADE_WA` double DEFAULT NULL,
  `CGPA_MARKPCT` double DEFAULT NULL,
  `SCALE_MARKS` float(6,2) DEFAULT NULL,
  `PASSING_YEAR` smallint(4) DEFAULT NULL,
  `DURATION` smallint(4) DEFAULT NULL,
  `ACHIEVEMENT` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`STU_AI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_acadimicinfo`
--

LOCK TABLES `student_acadimicinfo` WRITE;
/*!40000 ALTER TABLE `student_acadimicinfo` DISABLE KEYS */;
INSERT INTO `student_acadimicinfo` VALUES (1,234,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(2,234,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(3,234,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(4,1,27,32,'My School',21,5,5,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-01 04:57:27',NULL,NULL),(5,1,28,32,'My College',22,5,5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-01 04:57:27',NULL,NULL),(6,1,177,32,'My University',23,5,5,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-01 04:57:28',NULL,NULL),(7,235,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(8,235,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(9,235,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(10,236,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 03:42:58',NULL,NULL),(11,236,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 03:42:59',NULL,NULL),(12,236,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 03:42:59',NULL,NULL),(13,237,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 04:40:14',NULL,NULL),(14,237,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 04:40:14',NULL,NULL),(15,237,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 04:40:14',NULL,NULL),(16,238,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(17,238,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(18,238,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(22,240,27,32,'Natore',21,3.45,3,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-02 11:05:12',NULL,NULL),(23,240,28,32,'Natore',21,3.45,3,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-02 11:05:12',NULL,NULL),(24,240,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-02 11:05:12',NULL,NULL),(25,241,27,33,'Khilgaon Model High School',21,4.19,3.8,NULL,NULL,2005,NULL,NULL,1,NULL,'2017-07-03 04:15:17',NULL,NULL),(26,241,28,33,'Habibullah Bahar University College ',21,3.8,3.5,NULL,NULL,2007,NULL,NULL,1,NULL,'2017-07-03 04:15:17',NULL,NULL),(27,241,177,32,'CUET',197,3.4,4,NULL,NULL,2011,NULL,NULL,1,NULL,'2017-07-03 04:15:17',NULL,NULL),(28,242,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(29,242,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(30,242,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(31,243,27,32,'Dhaka institute',21,5,5,NULL,NULL,1990,NULL,NULL,1,NULL,'2017-07-03 04:50:12',NULL,NULL),(32,243,28,32,'Dhaka institute',21,5,5,NULL,NULL,1992,NULL,NULL,1,NULL,'2017-07-03 04:50:12',NULL,NULL),(33,243,177,32,'computer science and engineering',21,3.5,4,NULL,NULL,1996,NULL,NULL,1,NULL,'2017-07-03 04:50:12',NULL,NULL),(34,244,27,32,'Holy Cross  School and College',21,5,5,NULL,NULL,2005,NULL,NULL,1,NULL,'2017-07-03 05:53:05',NULL,NULL),(35,244,28,32,'HOly Cross School and  College ',21,5,5,NULL,NULL,2007,NULL,NULL,1,NULL,'2017-07-03 05:53:05',NULL,NULL),(36,244,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 05:53:05',NULL,NULL),(37,245,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 07:08:01',NULL,NULL),(38,245,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 07:08:01',NULL,NULL),(39,245,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-03 07:08:01',NULL,NULL),(40,246,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-04 08:48:03',NULL,NULL),(41,246,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-04 08:48:03',NULL,NULL),(42,246,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-04 08:48:03',NULL,NULL),(43,247,27,32,'My School',21,5,5,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-05 08:23:31',NULL,NULL),(44,247,28,32,'My College',22,5,5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-05 08:23:31',NULL,NULL),(45,248,27,32,'School',21,5,5,NULL,NULL,2006,NULL,NULL,1,NULL,'2017-07-10 08:36:05',NULL,NULL),(46,248,27,32,'College',21,5,5,NULL,NULL,2008,NULL,NULL,1,NULL,'2017-07-10 08:36:05',NULL,NULL),(47,249,27,32,'dhaka',21,4,3.5,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-11 05:09:33',NULL,NULL),(48,249,28,32,'dhaka',21,4,3.5,NULL,NULL,2017,NULL,NULL,1,NULL,'2017-07-11 05:09:33',NULL,NULL),(49,250,27,32,'2',21,2,2,NULL,NULL,22,NULL,NULL,1,NULL,'2017-07-11 05:30:01',NULL,NULL),(50,250,28,33,'2',240,2,2,NULL,NULL,2,NULL,NULL,1,NULL,'2017-07-11 05:30:01',NULL,NULL),(51,251,27,32,'df',21,3,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-11 05:32:28',NULL,NULL),(52,251,28,33,'fhgf',22,2,2,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-11 05:32:28',NULL,NULL),(53,252,27,32,'Natore',21,3.45,3,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-11 05:32:52',NULL,NULL),(54,252,28,32,'Natore',22,3,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-11 05:32:52',NULL,NULL),(55,253,27,32,'Rangpur girl\'s High School',200,5,4.5,NULL,NULL,2002,NULL,NULL,1,NULL,'2017-07-11 05:37:15',NULL,NULL),(56,253,28,32,'Shiddheswari University and College',21,5,5,NULL,NULL,2004,NULL,NULL,1,NULL,'2017-07-11 05:37:15',NULL,NULL),(57,254,27,32,'dhaka',21,5,3.5,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-11 09:23:22',NULL,NULL),(58,254,28,32,'dhaka',21,5,3.5,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-11 09:23:22',NULL,NULL),(59,255,27,32,'Banglabazar High School',21,5,4.5,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-18 05:26:00',NULL,NULL),(60,255,28,32,'Banglabazar School and College',21,5,4.5,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-18 05:26:00',NULL,NULL),(61,256,27,32,'NGBHS',21,4.63,4,NULL,NULL,2008,NULL,NULL,1,NULL,'2017-07-19 10:56:35',NULL,NULL),(62,256,28,32,'NGBHS',21,4.66,4.33,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-19 10:56:35',NULL,NULL),(63,257,27,32,'NGBHS',21,4.63,4,NULL,NULL,2008,NULL,NULL,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(64,257,28,32,'NGBHS',241,4.66,4.33,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(65,258,27,32,'My School',21,5,5,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-20 03:45:52',NULL,NULL),(66,258,28,32,'My College',21,5,5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-20 03:45:52',NULL,NULL),(67,259,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(68,259,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(69,259,0,0,'',0,0,0,NULL,NULL,0,NULL,NULL,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(70,260,27,32,'NGBHS',21,5,4.5,NULL,NULL,2006,NULL,NULL,1,NULL,'2017-07-20 08:18:56',NULL,NULL),(71,260,27,32,'NGBHS',22,5,5,NULL,NULL,2008,NULL,NULL,1,NULL,'2017-07-20 08:18:57',NULL,NULL),(72,261,27,32,'dhaka',21,5,4,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(73,261,27,32,'dhaka',21,5,5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(74,261,28,32,'dhaka',21,4,3,NULL,NULL,2017,NULL,NULL,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(75,262,27,32,'My School',200,5,4.8,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-22 07:07:38',NULL,NULL),(76,262,28,32,'My college',200,50,4.65,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-22 07:07:38',NULL,NULL),(77,263,181,33,'Govt. Boys High School',240,5,5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-22 07:29:32',NULL,NULL),(78,263,180,32,'Govt. Bangla College',241,5,5,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-22 07:29:32',NULL,NULL),(79,264,177,32,'NGBHS',23,4.63,4,NULL,NULL,2008,NULL,NULL,1,NULL,'2017-07-22 08:11:22',NULL,NULL),(80,264,177,32,'NGBHS',22,4.66,4.33,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-22 08:11:22',NULL,NULL),(81,265,28,33,'NGBHS',21,4.63,4,NULL,NULL,2008,NULL,NULL,1,NULL,'2017-07-22 08:17:25',NULL,NULL),(82,265,177,256,'NGBHS',197,4.66,4.33,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-22 08:17:25',NULL,NULL),(83,266,27,32,'55555',21,3,5,NULL,NULL,2005,NULL,NULL,1,NULL,'2017-07-22 09:01:33',NULL,NULL),(84,266,28,32,'22222222',21,5,5,NULL,NULL,2006,NULL,NULL,1,NULL,'2017-07-22 09:01:33',NULL,NULL),(85,267,27,32,'NGBHS',21,3.5,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-25 11:11:16',NULL,NULL),(86,267,28,32,'NGBHS',21,3.6,3,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-25 11:11:16',NULL,NULL),(87,268,27,32,'Uttara Model School, Dhaka.',21,5,4.5,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-07-25 11:49:45',NULL,NULL),(88,268,28,32,'Banglabazar School and College',21,5,4.5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-07-25 11:49:45',NULL,NULL),(89,269,27,32,'NGBHS',21,5,5,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-26 09:56:42',NULL,NULL),(90,269,28,32,'NGBHS',22,3.6,3,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-26 09:56:42',NULL,NULL),(91,270,27,32,'Dhaka',21,23,22,NULL,NULL,2013,NULL,NULL,1,NULL,'2017-07-26 10:56:30',NULL,NULL),(92,270,27,32,'ddddd',21,33,32,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-26 10:56:30',NULL,NULL),(93,271,27,32,'NGBHS',21,3.5,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-29 10:16:06',NULL,NULL),(94,271,28,32,'NGBHS',22,3.6,3,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-29 10:16:06',NULL,NULL),(95,272,27,32,'NGBHS',21,3.5,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-07-31 05:46:57',NULL,NULL),(96,272,28,32,'NGBHS',22,3.6,3,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-07-31 05:46:57',NULL,NULL),(97,273,27,32,'dh',21,3.5,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-08-08 08:40:16',NULL,NULL),(98,273,28,32,'dk',21,4,4,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-08-08 08:40:16',NULL,NULL),(99,274,27,32,'My School',21,5,4.8,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-08-10 09:38:25',NULL,NULL),(100,274,27,32,'Govt. Bangla College',21,5,5,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-08-10 09:38:25',NULL,NULL),(101,275,27,32,'Uttara Model School, Dhaka.',22,5,5,NULL,NULL,2010,NULL,NULL,1,NULL,'2017-08-12 09:03:51',NULL,NULL),(102,275,28,33,'Dhanmondi Boys College, Dhaka.',22,5,4.5,NULL,NULL,2012,NULL,NULL,1,NULL,'2017-08-12 09:03:51',NULL,NULL),(103,276,27,33,'NGBHS',21,3.5,3,NULL,NULL,2014,NULL,NULL,1,NULL,'2017-09-11 07:03:01',NULL,NULL),(104,276,28,33,'NGBHS',198,3.6,3,NULL,NULL,2016,NULL,NULL,1,NULL,'2017-09-11 07:03:02',NULL,NULL),(105,277,27,32,'NGBHS',21,4,4,NULL,NULL,2004,NULL,NULL,1,NULL,'2017-09-13 11:33:36',NULL,NULL),(106,277,28,34,'NGBHS',22,5,5,NULL,NULL,2006,NULL,NULL,1,NULL,'2017-09-13 11:33:36',NULL,NULL),(107,278,27,32,'Natore Govt Boys High School',22,4.63,4.63,NULL,NULL,2004,NULL,NULL,1,NULL,'2017-12-29 13:56:09',NULL,NULL),(108,278,28,32,'Natore Govt Boys High School',22,4.5,4.5,NULL,NULL,2006,NULL,NULL,1,NULL,'2017-12-29 13:56:09',NULL,NULL),(109,40,27,32,'Dh',21,4,4,NULL,NULL,2004,NULL,NULL,1,NULL,'2018-04-12 04:51:19',NULL,NULL),(110,40,28,33,'Dhkaa',22,5,5,NULL,NULL,2006,NULL,NULL,1,NULL,'2018-04-12 04:51:19',NULL,NULL);
/*!40000 ALTER TABLE `student_acadimicinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_adressinfo`
--

DROP TABLE IF EXISTS `student_adressinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_adressinfo` (
  `STU_ADRESS_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of or_applicant_adress Table.',
  `STUDENT_ID` bigint(14) NOT NULL COMMENT 'Foreign Key To STUDENT_ID Column Of students_info Table.',
  `ADRESS_TYPE` enum('PS','PR') NOT NULL COMMENT 'Adress Type, PS=Present , PR=Permanent',
  `SAS_PSORPR` enum('PS','PR') NOT NULL COMMENT 'Adress Same As, PS=Present , PR=Permanent',
  `HOUSE_NO_NAME` varchar(100) DEFAULT NULL COMMENT 'House No / Name',
  `ROAD_AVENO_NAME` varchar(100) DEFAULT NULL COMMENT 'Road / Ave No / Name',
  `VILLAGE_WARD` varchar(100) DEFAULT NULL COMMENT 'Villange / Ward  / Municipality',
  `UNION_ID` smallint(6) DEFAULT NULL COMMENT 'Foreign Key To UNION_ID Column Of sa_unions Table.',
  `THANA_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To THANA_ID Column Of sa_thanas Table.',
  `POST_OFFICE_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To POST_OFFICE_ID Column Of sa_post_offices Table.',
  `POLICE_STATION_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To POLICE_STATION_ID Column Of sa_police_station Table.',
  `DISTRICT_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key To DISTRICT_ID Column Of sa_districts Table.',
  `DIVISION_ID` tinyint(2) DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`STU_ADRESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_adressinfo`
--

LOCK TABLES `student_adressinfo` WRITE;
/*!40000 ALTER TABLE `student_adressinfo` DISABLE KEYS */;
INSERT INTO `student_adressinfo` VALUES (1,234,'PS','',NULL,NULL,'10',144,29,1023,29,3,1,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(2,234,'PR','',NULL,NULL,'105',2,475,379,475,2,2,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(3,1,'PS','PS',NULL,NULL,'My Village',1876,43,254,43,13,3,1,NULL,'2017-07-01 04:56:12',NULL,NULL),(4,235,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(5,235,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(6,236,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-02 03:42:59',NULL,NULL),(7,236,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-02 03:42:59',NULL,NULL),(8,237,'PS','PS',NULL,NULL,'',0,0,0,0,13,3,1,NULL,'2017-07-02 04:40:14',NULL,NULL),(9,238,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(10,238,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(12,240,'PS','PS',NULL,NULL,'6',144,29,1023,29,3,1,1,NULL,'2017-07-02 11:05:12',NULL,NULL),(13,241,'PS','PS',NULL,NULL,'04',2787,428,146,428,13,3,1,NULL,'2017-07-03 04:15:17',NULL,NULL),(14,242,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(15,242,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(16,243,'PS','PS',NULL,NULL,'',0,178,0,178,63,3,1,NULL,'2017-07-03 04:50:12',NULL,NULL),(17,244,'PS','PS',NULL,NULL,'199/A',2747,421,50,421,13,3,1,NULL,'2017-07-03 05:53:05',NULL,NULL),(18,245,'PS','PS',NULL,NULL,'',2704,28,0,28,13,3,1,NULL,'2017-07-03 07:08:01',NULL,NULL),(19,246,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-04 08:48:03',NULL,NULL),(20,246,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-04 08:48:03',NULL,NULL),(21,247,'PS','PS',NULL,NULL,'32',189,443,1013,443,4,1,1,NULL,'2017-07-05 08:23:31',NULL,NULL),(22,248,'PS','',NULL,NULL,'12',344,448,0,448,4,1,1,NULL,'2017-07-10 08:36:05',NULL,NULL),(23,249,'PS','PS',NULL,NULL,'34',202,36,0,36,4,1,1,NULL,'2017-07-11 05:09:33',NULL,NULL),(24,250,'PS','PS',NULL,NULL,'9',144,29,1023,29,3,1,1,NULL,'2017-07-11 05:30:01',NULL,NULL),(25,251,'PS','PS',NULL,NULL,'6',2,475,0,475,2,2,1,NULL,'2017-07-11 05:32:28',NULL,NULL),(26,252,'PS','PS',NULL,NULL,'63',278,29,1023,29,3,1,1,NULL,'2017-07-11 05:32:52',NULL,NULL),(27,253,'PS','',NULL,NULL,'199',2707,28,0,28,13,3,1,NULL,'2017-07-11 05:37:15',NULL,NULL),(28,253,'PR','',NULL,NULL,'Sadinagar,1/3',6623,351,1329,351,56,8,1,NULL,'2017-07-11 05:37:15',NULL,NULL),(29,254,'PS','PS',NULL,NULL,'45',198,36,0,36,4,1,1,NULL,'2017-07-11 09:23:22',NULL,NULL),(31,248,'PR','',NULL,NULL,'85',2183,14,0,14,15,3,1,NULL,'2017-07-12 04:48:26',NULL,NULL),(32,255,'PS','PS',NULL,NULL,'45',2,475,379,475,2,2,1,NULL,'2017-07-18 05:26:00',NULL,NULL),(33,256,'PS','PS',NULL,NULL,'15',144,29,1023,29,3,1,1,NULL,'2017-07-19 10:56:35',NULL,NULL),(34,257,'PS','',NULL,NULL,'15',252,438,1010,438,3,1,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(35,257,'PR','',NULL,NULL,'16',2,475,379,475,2,2,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(36,258,'PS','PS',NULL,NULL,'75',80,484,423,484,7,2,1,NULL,'2017-07-20 03:45:52',NULL,NULL),(37,259,'PS','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(38,259,'PR','',NULL,NULL,'',0,0,0,0,0,0,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(39,260,'PS','PS',NULL,NULL,'200',144,29,1023,29,3,1,1,NULL,'2017-07-20 08:18:57',NULL,NULL),(40,261,'PS','',NULL,NULL,'45',202,36,0,36,4,1,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(41,261,'PR','',NULL,NULL,'45',202,36,0,36,4,1,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(42,262,'PS','PS',NULL,NULL,'85',6618,351,1325,351,56,8,1,NULL,'2017-07-22 07:07:38',NULL,NULL),(43,263,'PS','PS',NULL,NULL,'12',14,476,384,476,2,2,1,NULL,'2017-07-22 07:29:32',NULL,NULL),(44,264,'PS','PS',NULL,NULL,'45',409,452,0,452,5,1,1,NULL,'2017-07-22 08:11:22',NULL,NULL),(45,265,'PS','PS',NULL,NULL,'12',2256,88,779,88,18,3,1,NULL,'2017-07-22 08:17:25',NULL,NULL),(46,266,'PS','PS',NULL,NULL,'hghgfg',7199,370,0,370,20,6,1,NULL,'2017-07-22 09:01:33',NULL,NULL),(47,267,'PS','PS',NULL,NULL,'6',144,29,1023,29,3,1,1,NULL,'2017-07-25 11:11:16',NULL,NULL),(48,268,'PS','PS',NULL,NULL,'75',11,476,384,476,2,2,1,NULL,'2017-07-25 11:49:45',NULL,NULL),(49,269,'PS','PS',NULL,NULL,'15',144,29,1023,29,3,1,1,NULL,'2017-07-26 09:56:42',NULL,NULL),(50,270,'PS','PS',NULL,NULL,'hghgfg',1947,78,375,78,13,3,1,NULL,'2017-07-26 10:56:30',NULL,NULL),(51,271,'PS','PS',NULL,NULL,'200',144,29,1023,29,3,1,1,NULL,'2017-07-29 10:16:06',NULL,NULL),(52,272,'PS','PS',NULL,NULL,'300',144,29,1023,29,3,1,1,NULL,'2017-07-31 05:46:57',NULL,NULL),(53,273,'PS','PS',NULL,NULL,'15',144,29,1023,29,3,1,1,NULL,'2017-08-08 08:40:16',NULL,NULL),(54,274,'PS','PS',NULL,NULL,'12',182,442,0,442,4,1,1,NULL,'2017-08-10 09:38:25',NULL,NULL),(55,275,'PS','PS',NULL,NULL,'12',203,36,0,36,4,1,1,NULL,'2017-08-12 09:03:51',NULL,NULL),(56,276,'PS','PS',NULL,NULL,'100',144,29,1023,29,3,1,1,NULL,'2017-09-11 07:03:02',NULL,NULL),(57,277,'PS','PS',NULL,NULL,'6999',144,29,1023,29,3,1,1,NULL,'2017-09-13 11:33:36',NULL,NULL),(58,278,'PS','',NULL,NULL,'100',144,29,1023,29,3,1,1,NULL,'2017-12-29 13:56:09',NULL,NULL),(59,278,'PR','',NULL,NULL,'200',2,475,379,475,2,2,1,NULL,'2017-12-29 13:56:09',NULL,NULL),(60,18,'PS','',NULL,NULL,'test',2181,14,0,14,15,3,1,NULL,'2018-04-10 05:28:34',NULL,NULL),(61,18,'PR','',NULL,NULL,'525312',2745,421,50,421,13,3,1,NULL,'2018-04-10 05:30:34',NULL,NULL),(62,40,'PS','PS',NULL,NULL,'10',144,29,1023,29,3,1,1,NULL,'2018-04-12 04:50:48',NULL,NULL);
/*!40000 ALTER TABLE `student_adressinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_courseinfo`
--

DROP TABLE IF EXISTS `student_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_courseinfo` (
  `STU_CRS_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` bigint(14) NOT NULL,
  `OFFERED_COURSE_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `SEMISTER_SL_NO` int(11) NOT NULL,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` tinyint(3) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_FOR` varchar(10) DEFAULT 'F' COMMENT 'F="Final",I="Improvement",R="Retake"',
  `IS_CURRENT` tinyint(1) DEFAULT '0',
  `IS_DROPPED` tinyint(1) DEFAULT '0',
  `DROPPED_DATE` date DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT '0',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`STU_CRS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_courseinfo`
--

LOCK TABLES `student_courseinfo` WRITE;
/*!40000 ALTER TABLE `student_courseinfo` DISABLE KEYS */;
INSERT INTO `student_courseinfo` VALUES (1,278,31,6,1,5,3,3,365,'F',1,0,NULL,0,14,'2017-12-29 14:05:04',NULL,NULL),(2,278,32,6,1,5,3,3,382,'F',1,0,NULL,0,14,'2017-12-29 14:05:04',NULL,NULL),(3,278,33,6,1,5,3,3,384,'F',1,0,NULL,0,14,'2017-12-29 14:05:04',NULL,NULL),(4,278,34,6,1,5,3,3,396,'F',1,0,NULL,0,14,'2017-12-29 14:05:04',NULL,NULL),(5,31,35,6,2,5,3,3,398,'F',1,0,NULL,0,14,'2017-12-29 15:13:22',NULL,NULL),(6,31,36,6,2,5,3,3,399,'F',1,0,NULL,0,14,'2017-12-29 15:13:22',NULL,NULL),(7,31,37,6,2,5,3,3,400,'F',1,0,NULL,0,14,'2017-12-29 15:13:22',NULL,NULL),(8,31,38,6,2,5,3,3,401,'F',1,0,NULL,0,14,'2017-12-29 15:13:22',NULL,NULL),(9,18,92,6,1,5,1,1,415,'F',1,0,NULL,0,18,'2018-02-25 09:56:46',NULL,NULL),(10,18,93,6,1,5,1,1,416,'F',1,0,NULL,0,18,'2018-02-25 09:56:46',NULL,NULL),(11,18,94,6,1,5,1,1,417,'F',1,0,NULL,0,18,'2018-02-25 09:56:46',NULL,NULL),(12,18,108,6,1,5,1,1,436,'F',1,0,NULL,0,18,'2018-02-25 09:56:46',NULL,NULL);
/*!40000 ALTER TABLE `student_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_gurdianinfo`
--

DROP TABLE IF EXISTS `student_gurdianinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_gurdianinfo` (
  `STU_PARENT_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` bigint(14) NOT NULL COMMENT 'Foreign Key To STUDENT_ID Column Of students_info Table.',
  `GURDIAN_NAME` varchar(100) DEFAULT NULL,
  `OCCUPATION` varchar(100) DEFAULT NULL,
  `GUARDIAN_TYPE` char(1) DEFAULT NULL,
  `WORKING_ORG` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `MOBILE_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `EMAIL_ADRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `PASSWORD` varchar(70) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `LOCAL_GUARDIAN_FG` tinyint(1) DEFAULT '0',
  `GUARDIAN_RELATION` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT '1',
  `ADDRESS` varchar(200) DEFAULT NULL,
  `ACTIVE_FLAG` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Record Status 1= Active, 0=Inactive',
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`STU_PARENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_gurdianinfo`
--

LOCK TABLES `student_gurdianinfo` WRITE;
/*!40000 ALTER TABLE `student_gurdianinfo` DISABLE KEYS */;
INSERT INTO `student_gurdianinfo` VALUES (1,234,'My Father','192','F','                                                                            ','','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(2,234,'My Mother','','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-06-21 08:57:00',NULL,NULL),(3,1,'My Father','9','F','                                            Dhaka                                                                                                               ','01554584568','fa@gmail.com',NULL,1,NULL,1,NULL,1,NULL,'2017-07-01 04:54:48',NULL,NULL),(4,1,'My Mother','9','M','                                    Rajshahi                                                                                                    ','01874548542','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-01 04:54:48',NULL,NULL),(5,235,'demo','','F','                                                                            ','','demo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(6,235,'dem0','','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-01 10:20:06',NULL,NULL),(7,236,'My Father','','F','                                                                            ','','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 03:42:59',NULL,NULL),(8,236,'My Mother','','M',NULL,'','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 03:42:59',NULL,NULL),(9,237,'Mr. Demo','192','F','                                                                            ','','demon@yahoo.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 04:40:15',NULL,NULL),(10,237,'Mrs. Demo','192','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 04:40:15',NULL,NULL),(11,238,'My Father','','F','                                                                            ','','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(12,238,'My Mother','','M',NULL,'','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 06:04:04',NULL,NULL),(15,240,'FATHER NAME ','10','F','                        Dhaka                                                    ','01722586936','FAF@GAMIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 11:05:12',NULL,NULL),(16,240,'MOTHER NAME','10','M',NULL,'017225869856','MEA@GMAIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-02 11:05:12',NULL,NULL),(17,241,'Late Sherajul Islam','','F','                 House: 317, Road: 04, Block: A, Khilgaon, Tilpapara, Dhaka-1219                                                          ','01719593827','atiltd1@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 04:15:17',NULL,NULL),(18,241,'Rehena Akter','211','M',NULL,'01753332535','hasan1@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 04:15:17',NULL,NULL),(20,242,'FATHER NAME ','9','F','                                                                            ','','FAF@GAMIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(21,242,'MOTHER NAME','','M',NULL,'','MEA@GMAIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 04:37:13',NULL,NULL),(22,243,'Hasan','9','F','                                                                            ','01758926922','akhi@atilimited.net',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 04:50:12',NULL,NULL),(23,243,'Hasina Begum','211','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 04:50:12',NULL,NULL),(24,244,'Md. Harunur Rashid','10','F','                                                                      Dhaka                                    ','0155236598','harunur@yahoo.com',NULL,1,NULL,1,NULL,1,NULL,'2017-07-03 05:53:05',NULL,NULL),(25,244,'Masuma Khanam','210','M','                                                                    ','01832564789','masuma@yahoo.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 05:53:05',NULL,NULL),(26,245,'Rafig','10','F','                                                                            ','','akhi11203003@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 07:08:01',NULL,NULL),(27,245,'santi Begum','9','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-03 07:08:01',NULL,NULL),(28,246,'My Father','','F','                                                                            ','','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-04 08:48:03',NULL,NULL),(29,246,'My Mother','','M',NULL,'','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-04 08:48:04',NULL,NULL),(30,3,'Abdul korim','193','F','                                                                                ','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-04 12:14:36',NULL,NULL),(31,3,'MM','192','M','                                                                    ','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-04 12:14:37',NULL,NULL),(33,247,'Father Name','10','F','                                            Dhaka                                    ','01458458458','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-05 08:23:31',NULL,NULL),(34,247,'Mother Name','10','M','                                                                    ','01454875468','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-05 08:23:31',NULL,NULL),(36,248,'My Father','9','F','Dhaka','01444444444','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-10 08:36:05',NULL,NULL),(37,248,'My Mother','9','M','Rajshahi','01715485421','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-10 08:36:05',NULL,NULL),(38,249,'Hamid','10','F','dhaka','01721457894','reazulislam651@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:09:33',NULL,NULL),(39,249,'sultana','211','M',NULL,'01784512345','reazulislam@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:09:33',NULL,NULL),(40,250,'father name','9','F','','01722085398','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:30:01',NULL,NULL),(41,250,'m','10','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:30:01',NULL,NULL),(42,251,'FATHER NAME ','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:32:28',NULL,NULL),(43,251,'MOTHER NAME','','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:32:28',NULL,NULL),(44,252,'FATHER NAME ','9','F','Dhaka','01722586936','FAF@GAMIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:32:52',NULL,NULL),(45,252,'MOTHER NAME','10','M',NULL,'01722058698','MEA@GMAIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:32:52',NULL,NULL),(47,253,'Md. Harunur Rashid','10','F','Rangpur','01892563478','harun@yahoo.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:37:15',NULL,NULL),(48,253,'Moriam Begum','211','M',NULL,'01552369854','mbegum@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 05:37:15',NULL,NULL),(50,254,'rasel','10','F','dhaka','01978456321','reazulislam651@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 09:23:22',NULL,NULL),(51,254,'maria','211','M','','01896547845','reazulislam651@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-11 09:23:22',NULL,NULL),(62,254,'My ',NULL,'O',NULL,'015555555555',NULL,NULL,1,186,1,'FFF',1,NULL,'2017-07-13 04:51:02',NULL,NULL),(63,255,'Abul Hasan','10','F','Dhaka','01789456123','abulhasanali@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-18 05:26:00',NULL,NULL),(64,255,'Jorna Akther','211','M',NULL,'01789456123','jahanara@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-18 05:26:00',NULL,NULL),(65,3,'',NULL,'O',NULL,'',NULL,NULL,1,0,1,'',1,NULL,'2017-07-18 09:36:49',NULL,NULL),(66,256,'Father name','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-19 10:56:35',NULL,NULL),(67,256,'Mother Name','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-19 10:56:35',NULL,NULL),(68,257,'Father name','9','F','Dhaka','01722085398','father@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(69,257,'Mother Name','9','M','Dhaka','01722085369','mother@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(70,257,'Rana Islam',NULL,'O',NULL,'01722058596',NULL,NULL,0,NULL,1,NULL,1,NULL,'2017-07-19 11:39:22',NULL,NULL),(71,258,'Father Name','192','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 03:45:52',NULL,NULL),(72,258,'Mother Name','193','M',NULL,'','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 03:45:52',NULL,NULL),(73,259,'My Father','','F','                                                                            ','','fa@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(74,259,'My Mother','','M',NULL,'','mo@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 03:50:55',NULL,NULL),(76,248,'My Local Guardian 777',NULL,'O',NULL,'01444444444',NULL,NULL,1,186,1,'Mirpur',1,NULL,'2017-07-20 03:57:20',NULL,NULL),(77,260,'Father Name','192','F','Dhaka','01722058963','f@gmail.com',NULL,1,NULL,1,NULL,1,NULL,'2017-07-20 08:18:57',NULL,NULL),(78,260,'Mother Name','192','M','Raj','01722058963','m@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 08:18:57',NULL,NULL),(79,261,'Hamid','9','F','                                            dhaka                                    ','01918934654','reazulislam651@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(80,261,'sultana','193','M','             dhaka                                                       ','01918963465','reazulislam651@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-20 08:51:45',NULL,NULL),(81,262,'Saiful Islam','193','F','Rangpur District','01717548541','saiful@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 07:07:38',NULL,NULL),(82,262,'Amina Begum','211','M','Rangpur','01719548541','amina@yahoo.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 07:07:38',NULL,NULL),(83,263,'My Father','10','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 07:29:32',NULL,NULL),(84,263,'My Mother','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 07:29:32',NULL,NULL),(85,264,'Father name','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 08:11:22',NULL,NULL),(86,264,'Mother Name','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 08:11:22',NULL,NULL),(87,265,'Father name','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 08:17:25',NULL,NULL),(88,265,'Mother Name','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 08:17:25',NULL,NULL),(89,266,'444444','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 09:01:33',NULL,NULL),(90,266,'4774745454','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 09:01:33',NULL,NULL),(91,23,'Father','9','F','','','',NULL,1,NULL,1,NULL,1,NULL,'2017-07-22 10:45:06',NULL,NULL),(92,23,'My Mother','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-22 10:45:06',NULL,NULL),(93,267,'FATHER NAME ','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-25 11:11:16',NULL,NULL),(94,267,'MOTHER NAME','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-25 11:11:16',NULL,NULL),(95,268,'Father','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-25 11:49:45',NULL,NULL),(96,268,'My Mother','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-25 11:49:45',NULL,NULL),(97,269,'FATHER NAME ','9','F','','01722586936','father@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-26 09:56:42',NULL,NULL),(98,269,'MOTHER NAME','10','M','','01722085398','mother@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-07-26 09:56:42',NULL,NULL),(99,270,'454545455','9','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-26 10:56:30',NULL,NULL),(100,270,'454545445','9','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-07-26 10:56:30',NULL,NULL),(101,271,'FATHER NAME ','9','F','Dhaka','01722586936','FAF@GAMIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-29 10:16:06',NULL,NULL),(102,271,'MOTHER NAME','10','M','Dhaka','01722085398','MEA@GMAIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-29 10:16:06',NULL,NULL),(103,272,'Father Name','9','F','Dhaka','01722586936','FAF@GAMIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-31 05:46:57',NULL,NULL),(104,272,'Mother Name','10','M','Dhaka','01722085398','MEA@GMAIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-07-31 05:46:57',NULL,NULL),(105,273,'Father name','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-08-08 08:40:16',NULL,NULL),(106,273,'Mother Name','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-08-08 08:40:16',NULL,NULL),(107,274,'My Father','9','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-08-10 09:38:25',NULL,NULL),(108,274,'My Mother','9','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-08-10 09:38:25',NULL,NULL),(109,275,'My Father','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-08-12 09:03:51',NULL,NULL),(110,275,'My Mother','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-08-12 09:03:51',NULL,NULL),(111,276,'FATHER NAME ','9','F','Dhaka','01722586936','FAF@GAMIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-09-11 07:03:02',NULL,NULL),(112,276,'MOTHER NAME','9','M','Dhaka','01722085398','MEA@GMAIL.COM',NULL,0,NULL,1,NULL,1,NULL,'2017-09-11 07:03:02',NULL,NULL),(114,270,'',NULL,'O',NULL,'',NULL,NULL,1,0,1,'',1,NULL,'2017-09-11 08:17:03',NULL,NULL),(115,30,'u','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-09-11 08:20:23',NULL,NULL),(116,30,'u','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-09-11 08:20:23',NULL,NULL),(120,277,'Father name','10','F','Dhaka','01722085398','f@email.ocm',NULL,0,NULL,1,NULL,1,NULL,'2017-09-13 11:33:36',NULL,NULL),(121,277,'Mother name','192','M','Dhaka','01722085398','m@email.ocm',NULL,0,NULL,1,NULL,1,NULL,'2017-09-13 11:33:36',NULL,NULL),(124,30,'',NULL,'O',NULL,'',NULL,NULL,1,0,1,'',1,NULL,'2017-11-11 08:36:51',NULL,NULL),(125,31,'f','','F','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-11-28 17:23:34',NULL,NULL),(126,31,'m','','M','','','',NULL,0,NULL,1,NULL,1,NULL,'2017-11-28 17:23:34',NULL,NULL),(127,31,'',NULL,'O',NULL,'',NULL,NULL,1,0,1,'',1,NULL,'2017-11-28 17:23:35',NULL,NULL),(128,278,'Md.Golam Mostofa','209','F','Dhaka.','01722085398','father@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-12-29 13:56:09',NULL,NULL),(129,278,'Rahatunnesa','211','M','Dhaka.','01722085398','mother@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2017-12-29 13:56:09',NULL,NULL),(130,40,'Father name','9','F','Dhaka','01722085398','f@gmail.com',NULL,1,NULL,1,NULL,1,NULL,'2018-04-12 04:50:26',NULL,NULL),(131,40,'MOther name','10','M','Dhaka','01722085398','f@gmail.com',NULL,0,NULL,1,NULL,1,NULL,'2018-04-12 04:50:26',NULL,NULL),(132,278,'Md.Reazul Islam',NULL,'O',NULL,'01720920188',NULL,NULL,1,185,1,'Jurain',1,NULL,'2018-04-12 06:02:43',NULL,NULL);
/*!40000 ALTER TABLE `student_gurdianinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_personal_info`
--

DROP TABLE IF EXISTS `student_personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_personal_info` (
  `STUDENT_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `REGISTRATION_NO` varchar(50) NOT NULL,
  `LOGIN_PASSWORD` varchar(200) DEFAULT NULL,
  `ADM_SESSION_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `FACULTY_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `PROGRAM_ID` int(11) DEFAULT NULL,
  `BATCH_ID` int(11) DEFAULT NULL,
  `SECTION_ID` int(11) DEFAULT NULL,
  `FULL_NAME_EN` varchar(120) NOT NULL COMMENT 'Student Full Name In English',
  `FULL_NAME_BN` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Student Full Name In Local Language (Bangla)',
  `PHOTO` varchar(30) DEFAULT NULL,
  `SIGNATURE_PHOTO` varchar(200) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `MOBILE_NO` varchar(15) DEFAULT NULL COMMENT 'Student Mobile No',
  `NATIONALITY` varchar(100) DEFAULT NULL COMMENT 'Student Nationality',
  `NATIONAL_ID` bigint(17) DEFAULT NULL COMMENT 'Student Natioanl Id',
  `EMAIL_ADRESS` varchar(50) DEFAULT NULL COMMENT 'Student Email Adress.',
  `FATHER_NAME` varchar(120) DEFAULT NULL COMMENT 'Student Father''''s Name In English',
  `MOTHER_NAME` varchar(120) DEFAULT NULL COMMENT 'Student Mother''''s Name In English',
  `MARITAL_STATUS` bigint(4) DEFAULT NULL,
  `DATH_OF_BIRTH` datetime DEFAULT NULL COMMENT 'Student Date of Birth',
  `PLACE_OF_BIRTH` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'Student Place of Birth',
  `BIRTH_CERTIFICATE` varchar(100) DEFAULT NULL,
  `HEIGHT_CM` varchar(10) DEFAULT NULL COMMENT 'Student Hight In Centimeter',
  `BLOOD_GROUP` varchar(3) DEFAULT NULL,
  `HEIGHT_FEET` varchar(5) DEFAULT NULL COMMENT 'Student Height in Feet',
  `HEIGHT_INCHES` tinyint(3) DEFAULT NULL COMMENT 'Student Height in Inches',
  `WEIGHT_KG` varchar(5) DEFAULT NULL COMMENT 'Student Weight In Kilogram',
  `WEIGHT_LBS` varchar(10) DEFAULT NULL COMMENT 'Student Weight In Pound',
  `RELIGION_ID` varchar(3) DEFAULT NULL COMMENT 'Student Religion',
  `PASSPORT_NO` varchar(20) DEFAULT NULL,
  `ANNUAL_INCOME` varchar(20) DEFAULT NULL,
  `SCHOLARSHIP` varchar(5) DEFAULT NULL,
  `SCHOLARSHIP_DESC` varchar(20) DEFAULT NULL,
  `EXPELLED` varchar(20) DEFAULT NULL,
  `EXPELLED_DESC` text,
  `ARRESTED` varchar(20) DEFAULT NULL,
  `ARRESTED_DESC` text,
  `CONVICTED` varchar(20) DEFAULT NULL,
  `CONVICTED_DESC` text,
  `SIBLING_EXIST` varchar(20) DEFAULT NULL,
  `SBLN_ROLL_NO` varchar(20) DEFAULT NULL,
  `TERMS_AND_CONDITION` varchar(11) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `APPLY_BEFORE` varchar(20) DEFAULT NULL,
  `APPLY_SEMESTER` varchar(20) DEFAULT NULL,
  `APPLY_YEAR` varchar(20) DEFAULT NULL,
  `PREVIOUS_STU_FG` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_personal_info`
--

LOCK TABLES `student_personal_info` WRITE;
/*!40000 ALTER TABLE `student_personal_info` DISABLE KEYS */;
INSERT INTO `student_personal_info` VALUES (1,'2015101010001','jz2Hieov',8,9,3,5,2,2,2,2,'Md. Istekhar Reza Shrabon','রেজা','photo_2015101010001.jpg','signature_2015101010001.jpg',NULL,'01625-081433','15',123456123456789456,NULL,NULL,NULL,11,NULL,'Dhaka','12345678974451456278947','170.69','14','5.60',NULL,'70','154.32','1',NULL,'750000','NO','','NO','','NO','','NO','','NO','',NULL,1,NULL,'2017-06-21 04:16:50',NULL,NULL,'NO','','',1),(2,'2015101010002','mcJ6dOxz',8,8,3,5,1,1,2,2,'Al Amin',NULL,NULL,NULL,NULL,'01755-358125',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:50',NULL,NULL,NULL,NULL,NULL,1),(3,'2015105050001','5VMwHRV2',6,6,4,5,6,5,8,2,'Kazi Emon','কাজি ইমন','photo_2015105050001.jpg','signature_2015105050001.jpg',NULL,'01711-376591','15',1234567894561,NULL,NULL,NULL,11,NULL,'Dhaka','','','104','',NULL,'','','1',NULL,'750000',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,1,NULL,'2017-06-21 04:16:50',NULL,NULL,NULL,'','',1),(4,'2015105050002','ftWIt7iE',7,7,3,2,10,9,2,2,'Mst. Humayra Yesmin Ava',NULL,NULL,NULL,NULL,'01716-391072',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:50',NULL,NULL,NULL,NULL,NULL,1),(5,'2015105050003','ACYqjkq9',9,4,3,5,2,2,2,1,'Md. Ziaur Rahman',NULL,NULL,NULL,NULL,'01773-947121',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(6,'2015105050004','R6CqXg2j',9,1,3,5,2,2,2,1,'Md. Mehedi Hasan',NULL,NULL,NULL,NULL,'01755-855543',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(7,'2015105050005','OFDr9ETS',9,1,3,5,1,1,2,1,'Mst. Maksuda Jerin',NULL,NULL,NULL,NULL,'01754-330629',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(8,'2015105030001','b3MeEfKA',7,8,3,5,1,1,2,2,'Md. Saiful Islam',NULL,NULL,NULL,NULL,'01731893984',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(9,'2015105030002','K2MxcNlb',1,7,3,5,1,1,2,1,'Asheak - E - Rabbi',NULL,NULL,NULL,NULL,'01913005529',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(10,'2015105030003','emo7y4qr',8,10,3,5,1,1,2,1,'Md. Ohidul Islam',NULL,NULL,NULL,NULL,'01790524099',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(11,'2015105030004','pMnJtOK5',7,13,3,5,3,3,2,1,'Md. Masud Rana Sohag',NULL,NULL,NULL,NULL,'01740068400',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(12,'2015105030005','01u7HK4T',8,7,3,5,1,1,2,1,'Md. Moniruzzaman',NULL,NULL,NULL,NULL,'01744783138',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(13,'2015105030006','MQs1YE8A',7,1,3,5,1,1,2,1,'Md. Yousuf Ali',NULL,NULL,NULL,NULL,'01738253254',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(14,'2015103010001','u02c2gGV',7,1,3,5,4,4,2,1,'Most. Farhana Alam Bhadhon',NULL,NULL,NULL,NULL,'01792241812',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(15,'2015103010002','Sg0oGltG',7,1,3,5,1,1,2,1,'Most. Sumi Khatun',NULL,NULL,NULL,NULL,'01626214407',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(16,'2015103010003','Gl4nCCgz',6,6,3,5,2,2,2,1,'Md. Al- Amin Sarker',NULL,NULL,NULL,NULL,'01737850930',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(17,'2015103010004','G10SBSNm',15,6,3,5,2,2,2,1,'Md. Iftekar Hasan',NULL,NULL,NULL,NULL,'01770911963',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(18,'2015103010005','1234567',6,6,3,5,1,1,2,1,'Abdul Barik',NULL,NULL,NULL,NULL,'01785463797',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,0),(19,'2015103010006','d7urKf4D',5,5,3,5,2,2,2,1,'Md. Abdul Quader',NULL,NULL,NULL,NULL,'01739981046',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(20,'2015103010007','f3x0pSkD',5,5,3,5,2,2,2,1,'Silvia Shakawat',NULL,NULL,NULL,NULL,'01713026125',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(21,'2015103010008','szr67tkw',5,5,3,5,2,2,2,1,'Md. Monnaf Ali',NULL,NULL,NULL,NULL,'01738032277',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(22,'2015303010001','BqXtDLO3',5,5,3,5,2,2,2,1,'Samina Sharmin Sony',NULL,NULL,NULL,NULL,'1725320258',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(23,'2015303010002','qmRRHxyY',5,5,3,5,2,2,2,1,'Md. Shoriful Islam',NULL,NULL,NULL,NULL,'1763145315',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(24,'2015303010003','G8R15vh3',5,5,3,5,2,2,2,1,'Most. Sumaya Khatun',NULL,NULL,NULL,NULL,'1818837189',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(25,'2015303010004','7uKHvrK2',5,5,3,5,2,2,2,1,'Most. Shahida Khatun',NULL,NULL,NULL,NULL,'1941120150',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(26,'2015303010005','tbeFK5HF',5,5,3,5,2,2,2,1,'Md. Asif Hossain',NULL,NULL,NULL,NULL,'1687730385',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(27,'2015303010006','wY6ExcTH',5,5,3,5,2,2,2,1,'Anika Tabassum',NULL,NULL,NULL,NULL,'1729070113',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(28,'2015203010001','ZA4pCv5S',5,5,3,5,2,2,2,1,'Ishrat Jahan Ila',NULL,NULL,NULL,NULL,'1754265652',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(29,'2015203010002','ENVGMM1W',6,6,3,5,1,1,2,1,'Sheikh Anika Morium',NULL,NULL,NULL,NULL,'1937634388',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(30,'2015203010003','ekneJMsF',6,6,3,5,1,1,2,1,'Juthi Chouduri','fd',NULL,NULL,NULL,'1718835886','2',0,NULL,NULL,NULL,11,NULL,'df','','','14','',NULL,'','','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(31,'2015203010004','uXdOee7M',5,6,3,5,3,3,2,1,'Md. Sohel  Rana',NULL,NULL,NULL,NULL,'1620344390',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(33,'2015203010006','3tY2Uvcd',5,6,3,5,3,3,2,1,'Md. Masud Rana',NULL,NULL,NULL,NULL,'1761381404',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(34,'2015203010007','RQpbAQ52',5,6,3,5,3,3,2,1,'Md. Shoyeab Hassan',NULL,NULL,NULL,NULL,'1833706878',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(35,'2015203010008','kkcmODef',5,6,3,5,3,3,2,1,'Md. Firoz Hossain',NULL,NULL,NULL,NULL,'1796871335',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(36,'2015203010009','fC7ilDmB',5,6,3,5,3,3,2,1,'Md. Omar Faruk',NULL,NULL,NULL,NULL,'1757770440',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(37,'2015203010010','123456',5,6,3,5,3,3,2,1,'Muhammad Ali',NULL,NULL,NULL,NULL,'1755456672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(39,'2015203010012','334hgqc5',6,6,3,5,1,1,2,1,'Md. Raihan Sarker Raju',NULL,NULL,NULL,NULL,'1916996993',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(40,'2015203010013','bdXOwLNx',7,5,3,5,1,1,2,1,'Md. Samrat Hossain','নাম বাংলা','photo_2015203010013.png','signature_2015203010013.png',NULL,'1728587789','15',1234567891234,NULL,NULL,NULL,11,NULL,'Dhaka','1234567891234','182.88','14','6',NULL,'88','194.01','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(41,'2015203010014','uWISO49T',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Manjur Hasan',NULL,NULL,NULL,NULL,'1745599025',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(42,'2015203010015','J04cV6YT',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Akhi Khatun',NULL,NULL,NULL,NULL,'1740924166',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(43,'2015203010016','EaOzAz3i',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S.M. Mejbaul Islam',NULL,NULL,NULL,NULL,'1718414303',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(44,'2015203010017','ZaFHyg7Q',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Abdullah-Al-Masum',NULL,NULL,NULL,NULL,'1773334963',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(45,'2015203010018','wKolAVVi',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Masum Billah',NULL,NULL,NULL,NULL,'1773059245',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(46,'2015203010019','YEJhpheo',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Afsana Sarker',NULL,NULL,NULL,NULL,'1731450572',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(47,'2015203010020','7EqeN7MT',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Abdul Mannan',NULL,NULL,NULL,NULL,'1830306774',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(48,'2015203010021','GufXt9jx',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ajmary Islam Shanta',NULL,NULL,NULL,NULL,'1670787900',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(49,'2014103010001','qVWcd9B4',0,7,3,2,10,9,2,2,'Md.Rubel Ahmed',NULL,NULL,NULL,NULL,'1688300776',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(50,'2014103010002','6GfJLRmg',0,7,3,2,10,9,2,2,'Sharmin Islam',NULL,NULL,NULL,NULL,'1771830004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(51,'2014103010003','swVhS1nR',0,7,3,2,10,9,2,2,'Md.AbdulBaten',NULL,NULL,NULL,NULL,'1740127744',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(52,'2014103010004','ecIAhpoA',0,7,3,2,10,9,2,2,'Ibbrahim Hossain',NULL,NULL,NULL,NULL,'1718783211',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:51',NULL,NULL,NULL,NULL,NULL,1),(53,'2014103010005','ctnrJK8e',0,7,3,2,10,9,2,2,'Owarses Ahmed',NULL,NULL,NULL,NULL,'1735684567',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(54,'2014103010006','64Ey0Nnv',0,7,3,2,10,9,2,2,'Ayesha Siddika',NULL,NULL,NULL,NULL,'1712378864',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(55,'2014103010007','FLhGPjRc',0,7,3,2,10,9,2,2,'Nusrat Jamanna',NULL,NULL,NULL,NULL,'1680874338',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(56,'2014103010008','Gh3BW1k1',0,7,3,2,10,9,2,2,'Sumaiya khatun',NULL,NULL,NULL,NULL,'1741189412',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(57,'2014103010009','RoF28IxK',0,7,3,2,10,9,2,2,'Md.Sabbir Hossain',NULL,NULL,NULL,NULL,'1834940033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(58,'2014103010010','YQUK76f8',0,7,3,2,10,9,2,2,'Md.Rakibul Hasan',NULL,NULL,NULL,NULL,'1718789426',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(59,'2014103010011','123456',15,7,3,5,2,2,2,1,'Md.Tipu Sultan',NULL,NULL,NULL,NULL,'1711903103',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(60,'2014303030001','ZJgZu29P',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Latiful Haque',NULL,NULL,NULL,NULL,'1716772310',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(61,'2014203010001','oHQ1o3PE',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Al-Imran',NULL,NULL,NULL,NULL,'01915778848',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(62,'2014103040001','IY4k6N07',10,6,3,5,1,1,4,1,'Ummul khair',NULL,NULL,NULL,NULL,'1737445864',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(63,'2014103040002','JmEEl0qZ',10,6,3,5,1,1,4,1,'Md.Abu Jar',NULL,NULL,NULL,NULL,'1779794441',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(64,'2014103040003','azlKUpQ0',10,6,3,5,1,1,4,1,'Md Abu Bakkar Siddique',NULL,NULL,NULL,NULL,'1740867074',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(65,'2015203040001','NmUnxMZV',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Abdullah Al Majed',NULL,NULL,NULL,NULL,'1777089204',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(66,'2015203040002','lv5gXREu',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ashraful Alam',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(67,'2015203050001','zIDcVpxs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Humyra Khatun',NULL,NULL,NULL,NULL,'1777089204',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(68,'2015103040001','eMiTdapz',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rashed Hossain',NULL,NULL,NULL,NULL,'01749-886486',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(69,'2015103040002','4pP6yS2A',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Naimul Islam',NULL,NULL,NULL,NULL,'01763-640225',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(70,'2015103040003','QoZBGj9e',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Shakil Hossain',NULL,NULL,NULL,NULL,'01780-504873',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(71,'2015303020001','isv6ncvi',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mukta Khatun',NULL,NULL,NULL,NULL,'1948218088',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(72,'2015303020002','am8oniRv',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Zahangir Alom',NULL,NULL,NULL,NULL,'1744960293',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(73,'2015203020001','eQDdrlWB',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Tarek Noman',NULL,NULL,NULL,NULL,'1757041118',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(74,'2015203020002','dFLii7xm',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Tanbir Rohman',NULL,NULL,NULL,NULL,'1776043464',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(75,'2015203020003','TzfpIlmv',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Joovaer Rahman',NULL,NULL,NULL,NULL,'1776043464',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(76,'2015203020004','ZjQhqNbO',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ashraful Alam',NULL,NULL,NULL,NULL,'1833516385',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(77,'2014103020001','gDjGccJ0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Rabibul Islam',NULL,NULL,NULL,NULL,'1738345200',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(78,'2014103020002','tjpmMjNR',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mariom khatun',NULL,NULL,NULL,NULL,'1823641155',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(79,'2014103020003','m3R4UT56',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Most.Nurjahan khatun',NULL,NULL,NULL,NULL,'1764040163',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(80,'2014103020004','FEqxlFnu',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shamima Akter',NULL,NULL,NULL,NULL,'1827435733',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(81,'2014103020005','aOSxQqoM',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Halima khatun',NULL,NULL,NULL,NULL,'1717126041',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(82,'2013103020001','AkVO8SVJ',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nazmun Nahar',NULL,NULL,NULL,NULL,'1828114472',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(83,'2015104010001','HVl6ZNG4',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Imran Hasan',NULL,NULL,NULL,NULL,'1945894013',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(84,'2015104010002','elTb9Vry',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Raj Kumar',NULL,NULL,NULL,NULL,'1714988469',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(85,'2015104010003','WmiLm1WW',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ferdose Farhan',NULL,NULL,NULL,NULL,'1742163307',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(86,'2015104010004','AIkDnOVY',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'T.M. Riad Rashedin',NULL,NULL,NULL,NULL,'1718667590',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(87,'2015104010005','U9IwW5ap',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ababil Azam Rabi',NULL,NULL,NULL,NULL,'1792917917',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(88,'2015104010006','FqebOynZ',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sabbir Ahmed',NULL,NULL,NULL,NULL,'1725567792',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(89,'2015204010001','BiBnKZls',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Abdullah Al Mamun',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(90,'2015204010002','suBPt8OA',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst. Kohinur Khatun',NULL,NULL,NULL,NULL,'1744196752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(91,'2015204010003','0LXjLJv7',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Muraduzzaman',NULL,NULL,NULL,NULL,'1717225702',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(92,'2015204010004','YTrzmycN',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Omar Faruk',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(93,'2015204010005','8AMm0kDm',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fahima Ferdoust',NULL,NULL,NULL,NULL,'1198230240',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(94,'2015204010006','dDKpsPzA',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Samir Hossain',NULL,NULL,NULL,NULL,'1557719217',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(95,'2015204010007','YK4utMJc',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Shahriar',NULL,NULL,NULL,NULL,'1771004535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(96,'2015204010008','aIwlMWTY',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst. Kamrunnahar',NULL,NULL,NULL,NULL,'1790261460',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(97,'2015204010009','xgPI93ND',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Al-Mamun',NULL,NULL,NULL,NULL,'1705107288',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:52',NULL,NULL,NULL,NULL,NULL,1),(98,'2015204010010','Q9LmkTcX',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'J. M. Noor Afsana',NULL,NULL,NULL,NULL,'1724018669',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(99,'2015204010011','O7413bPF',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sadia Haque Urmy',NULL,NULL,NULL,NULL,'1922384221',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(100,'2014104010001','eVtt4Gtx',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Shofikul Islam',NULL,NULL,NULL,NULL,'1861324807',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(101,'2014104010002','OjLra9Qi',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Most.Rina khatun',NULL,NULL,NULL,NULL,'1858362577',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(102,'2014104010003','k2FG3kHH',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shirajum Munira',NULL,NULL,NULL,NULL,'1770994743',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(103,'2014104010004','xRVWvYOv',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lucky khatun',NULL,NULL,NULL,NULL,'1778968008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(104,'2014104010005','avjZfOUs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sawon Kumar Goush',NULL,NULL,NULL,NULL,'1745914772',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(105,'2014204010001','YJzx3CKj',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ariful Prodhan',NULL,NULL,NULL,NULL,'1743741430',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(106,'2014204010002','IjrnF95P',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst.khuku Mone',NULL,NULL,NULL,NULL,'1759776288',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(107,'2014204010004','8YFeP7FI',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tanjila khatun',NULL,NULL,NULL,NULL,'1720313108',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(108,'2013104010001','Ys1RijeL',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monika Mahzabin',NULL,NULL,NULL,NULL,'1711077654',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(109,'2013104010002','0xf1OtxI',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Most Razia Sultana',NULL,NULL,NULL,NULL,'1715191459',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(110,'2013104010003','XX5s9klj',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sukumar paul',NULL,NULL,NULL,NULL,'1759413302',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(111,'2013104010004','BsiU1Foj',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kawser Hossain',NULL,NULL,NULL,NULL,'1731008995',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(112,'2014105020001','FNC8dcqs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mohammad Mazdah Uddin',NULL,NULL,NULL,NULL,'1923412132',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(113,'2014105020002','UINSsHcu',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Saiful Islam',NULL,NULL,NULL,NULL,'1718055617',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(114,'2014101020001','5YBTvTtb',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monirul Hasan',NULL,NULL,NULL,NULL,'1987656885',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(115,'2014101020002','WjMW6zZh',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monisha Paul',NULL,NULL,NULL,NULL,'1711732551',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(116,'2014101020003','du4L0ruv',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shamima Yasmin',NULL,NULL,NULL,NULL,'1718775840',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(117,'2014101020004','Gge6YiKE',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst.Habiba Sultana',NULL,NULL,NULL,NULL,'1756115213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(118,'2015201020001','5m0JJQuq',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Kaium Khan',NULL,NULL,NULL,NULL,'1754955969',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(119,'2015201020002','9y9m3RsC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sharmin',NULL,NULL,NULL,NULL,'1744693258',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(120,'2015201020003','FApMG4rW',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rabaya Tus Sunny',NULL,NULL,NULL,NULL,'1711284174',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(121,'2015102020001','lbxImg9a',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mousumi Akter',NULL,NULL,NULL,NULL,'01765-612707',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(122,'2015102020002','X8hVQ9m3',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Riadul Islam',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(123,'2015102020003','fao9SvOk',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Most. Resma Khatun',NULL,NULL,NULL,NULL,'01736-002803',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(124,'2015102020004','Y2Cae5gK',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lima Khatun',NULL,NULL,NULL,NULL,'01714-995266',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(125,'2015102020005','SuIHCBr4',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monirul Islam',NULL,NULL,NULL,NULL,'01785-758192',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(126,'2015102020006','HhquPQ73',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Rezaul',NULL,NULL,NULL,NULL,'01918-058476',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(127,'2015102020007','d9vkAx2p',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shamme Akther Min',NULL,NULL,NULL,NULL,'01712-273483',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(128,'2015102020008','9RHVEsXW',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Most. Bani Sarker',NULL,NULL,NULL,NULL,'01740-361861',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(129,'2015302020001','haL3LkBl',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Milton Hossain',NULL,NULL,NULL,NULL,'1621000361',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(130,'2014102020014','kNrrGUKp',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ilias Hossain',NULL,NULL,NULL,NULL,'1763139424',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(131,'2014102020015','3wuRaX8S',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Farjana Akter',NULL,NULL,NULL,NULL,'1798163577',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(132,'2015202020001','d4F3Wdwu',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Motaleb Hossain',NULL,NULL,NULL,NULL,'1776643477',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(133,'2015202020002','ydHMMqE0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Rezaul Karim',NULL,NULL,NULL,NULL,'1771180587',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(134,'2015202020003','PGlLqlga',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Fazlul Haque',NULL,NULL,NULL,NULL,'1756277897',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(135,'2015202020004','MfmMCJ7I',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Moriom Khatun',NULL,NULL,NULL,NULL,'1725690616',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(136,'2015202020005','9Euz7lYq',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Elias Khan',NULL,NULL,NULL,NULL,'1834186018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(137,'2015202020006','IDuSFTy1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Al-Amin',NULL,NULL,NULL,NULL,'1622469830',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(138,'2015202020007','cX7s1aDh',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Mahmudul Hasan',NULL,NULL,NULL,NULL,'1989912635',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(139,'2015202020008','nm64WTYV',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Firoj Kabir',NULL,NULL,NULL,NULL,'1750685654',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(140,'2014102020001','YBcsaQhJ',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Riom Talukder',NULL,NULL,NULL,NULL,'1677524817',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(141,'2014102020002','KrbmrKlq',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Salam Mia',NULL,NULL,NULL,NULL,'1761242116',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(142,'2014102020003','sBLxvmTM',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.khorshed Alam',NULL,NULL,NULL,NULL,'1712992205',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(143,'2014102020005','QRIK9qHw',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S.A.S.M.Ashif',NULL,NULL,NULL,NULL,'1927717421',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(144,'2014102020006','EWNI5Itp',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S.A.M Nasrullah',NULL,NULL,NULL,NULL,'1927717421',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(145,'2014102020007','ECJd4Y0c',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Imran Rahman',NULL,NULL,NULL,NULL,'1740121826',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:53',NULL,NULL,NULL,NULL,NULL,1),(146,'2014102020008','zChZSV2E',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Rubel Shaikh',NULL,NULL,NULL,NULL,'175452628',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(147,'2014102020009','bIdMdliu',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Shahriar Ahmed',NULL,NULL,NULL,NULL,'1771004535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(148,'2014102020010','dEflSYyt',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Aminul Islam',NULL,NULL,NULL,NULL,'1913493938',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(149,'2014102020011','qa9rAyym',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Bomi Amin',NULL,NULL,NULL,NULL,'1713716371',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(150,'2014102020012','z1GO6R2T',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Fahim Sarkar',NULL,NULL,NULL,NULL,'1824951090',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(151,'2014102020013','oXzcaCLP',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Nazrul Islam',NULL,NULL,NULL,NULL,'1784582379',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(152,'2014102020014','EJAmyBuU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Ilias Hossain',NULL,NULL,NULL,NULL,'1763139424',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(153,'2014102010015','55s3YxXS',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FarjanaAkter',NULL,NULL,NULL,NULL,'1798163577',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(154,'2014302020001','rMX0dbVv',10,6,3,5,2,2,4,1,'Md.Abdul Alim',NULL,NULL,NULL,NULL,'1746844968',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(155,'2014302020002','uzOZ0h7x',10,6,3,5,2,2,4,1,'Md.Tofael Ahmed',NULL,NULL,NULL,NULL,'1767531513',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(156,'2014302020003','XbNK6BjI',10,6,3,5,2,2,4,1,'Md.Suzon Reza',NULL,NULL,NULL,NULL,'1742169148',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(157,'2014302020004','CoD1fSfM',10,6,3,5,2,2,4,1,'Md.Abdul Hasnat',NULL,NULL,NULL,NULL,'1728364096',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(158,'2014302020005','cV6AcSGv',10,6,3,5,2,2,4,1,'Symon Das Babu',NULL,NULL,NULL,NULL,'1683963473',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(159,'2015101030001','syW9HjlD',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst. Afrin Akter',NULL,NULL,NULL,NULL,'01705838762',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(160,'2015101030002','91SvwY0T',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lubna Jahan Loboni',NULL,NULL,NULL,NULL,'01623103217',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(161,'2015101030003','13HnnBp3',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Zahidul Islam Sajal',NULL,NULL,NULL,NULL,'01830952386',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(162,'2015101030004','Pr7w3WjS',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ali Akbar',NULL,NULL,NULL,NULL,'01730957406',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(163,'2015101030005','iUVHhJr5',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kawsar Ahmed Anik',NULL,NULL,NULL,NULL,'01830645312',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(164,'2015101030006','ddQEOJzs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tahmina Akter',NULL,NULL,NULL,NULL,'1712609925',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(165,'2015101030007','i7C7oHrI',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'T.M. Shahriar Rahman',NULL,NULL,NULL,NULL,'1677028493',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(166,'2015201030001','kl1QNnOC',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jesmin Akter',NULL,NULL,NULL,NULL,'1687606694',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(167,'2015201030002','1ENCJvqV',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kanij Fatema',NULL,NULL,NULL,NULL,'1966518433',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(168,'2015201030003','9NG9ZR1o',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jhuma parvin',NULL,NULL,NULL,NULL,'1792181138',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(169,'2015201030004','sxqdhamK',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sheikh Zannatul Ferdush Emma',NULL,NULL,NULL,NULL,'1712846254',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(170,'2015201030005','HBNyobcK',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shemo Akter',NULL,NULL,NULL,NULL,'1779920983',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(171,'2015201030006','CLxU3Fh9',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sonia Khatun',NULL,NULL,NULL,NULL,'1776020797',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(172,'2015201030007','XLo21mlH',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sharmin Akter',NULL,NULL,NULL,NULL,'1720400473',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(173,'2015201030008','uk6H3198',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ziaur Rahman',NULL,NULL,NULL,NULL,'1773947121',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(174,'2015201030009','WfrCSnse',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sabina Khatun',NULL,NULL,NULL,NULL,'1773004743',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(175,'2015201030010','5f9zgcZJ',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ashiq Abedin',NULL,NULL,NULL,NULL,'1776641176',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(176,'2015201030011','E5YiXfxn',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Taposi Rabeya',NULL,NULL,NULL,NULL,'1755764432',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(177,'2015201030012','ovFyHeOV',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Moklesur Rahman',NULL,NULL,NULL,NULL,'1729110768',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(178,'2015201030013','4gY4eWA6',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Monirul Islam',NULL,NULL,NULL,NULL,'1760351776',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(179,'2015201030014','q7DCl7BH',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Al Imran Imon',NULL,NULL,NULL,NULL,'1757901314',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(180,'2015201030015','dNqWKuBr',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Azhar Uddin',NULL,NULL,NULL,NULL,'1734221979',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(181,'2015201030016','a35McPl4',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fariha Farzana',NULL,NULL,NULL,NULL,'1716648910',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(182,'2015201030017','4FmTtTAm',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst.Farjana Khatun',NULL,NULL,NULL,NULL,'1623276713',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(183,'2015201030018','Dl02io42',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fatema Khatun Ruma',NULL,NULL,NULL,NULL,'1751895266',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(184,'2015201030019','ESLWp7yR',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Umme Sadia Dristy',NULL,NULL,NULL,NULL,'1791138888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(185,'2015201030020','PZonBOLB',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Most. Nafiza Huda',NULL,NULL,NULL,NULL,'1823246653',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(186,'2015201030021','WqD5ActY',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S.M. Sohag',NULL,NULL,NULL,NULL,'1730613440',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(187,'2015201030022','JXfP73qK',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jubaer Ahmed',NULL,NULL,NULL,NULL,'1794794781',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(188,'2015201030023','XkYkX7mF',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pushpo Rani Basak',NULL,NULL,NULL,NULL,'1725088388',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(189,'2015201030024','mhzmR93u',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Antara Saha',NULL,NULL,NULL,NULL,'1797105032',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(190,'2015201030025','GzMFzTeY',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Chinmonyee Sarker',NULL,NULL,NULL,NULL,'1731826277',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(191,'2014101030001','HXmZP5EQ',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Shariful Islam',NULL,NULL,NULL,NULL,'1557359494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:54',NULL,NULL,NULL,NULL,NULL,1),(192,'2014101030002','8a35nv3R',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Mehedi Hasan',NULL,NULL,NULL,NULL,'1822423967',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(193,'2014101030003','LXCI0SdM',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ashikul Hossain',NULL,NULL,NULL,NULL,'1736071211',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(194,'2014101030004','j5OCqXRl',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. khokon Mia',NULL,NULL,NULL,NULL,'1683076388',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(195,'2014101030005','xjmxovKi',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Motaleb Hossain',NULL,NULL,NULL,NULL,'1785332666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(196,'2014201030001','cn1eGgDp',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Afifa Akter',NULL,NULL,NULL,NULL,'1195398309',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(197,'2014201030002','20yr1Yfq',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Iquebal Hossain',NULL,NULL,NULL,NULL,'1927041467',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(198,'2014201030003','OZHW9on5',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Shamim Hassan',NULL,NULL,NULL,NULL,'1780615840',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(199,'2014201030004','g3dsQhJ8',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rina khatun',NULL,NULL,NULL,NULL,'1751018184',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(200,'2014201030005','8XRKQn4l',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Afia Anjum Nikita',NULL,NULL,NULL,NULL,'1711196146',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(201,'2014201030006','crmyUras',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Sharif Uddin',NULL,NULL,NULL,NULL,'1760521056',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(202,'2014201030007','bgtDLdKc',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Golam Rabby',NULL,NULL,NULL,NULL,'1917682088',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(203,'2014201030008','RaXKbrzm',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Imran Sharif',NULL,NULL,NULL,NULL,'1761513636',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(204,'2014201030009','XUzCTToE',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mst. Monoara Khatun',NULL,NULL,NULL,NULL,'1714572258',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(205,'2014201030010','ee22FiXQ',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Al Mukhtara Nahin',NULL,NULL,NULL,NULL,'1818231060',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(206,'2013101030001','rT7Ifp0H',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Famin Ahmed',NULL,NULL,NULL,NULL,'1681163278',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(207,'2013101030002','kEzpnYiW',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mohammad Ali',NULL,NULL,NULL,NULL,'1715474626',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(208,'2013101030003','De9TOLAl',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Masud Rana',NULL,NULL,NULL,NULL,'1750793079',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(209,'2013101030004','8pATjvCD',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Naznin Aktar',NULL,NULL,NULL,NULL,'1911587783',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(210,'2013101030005','yVE9BY8z',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Mehedi Hasan',NULL,NULL,NULL,NULL,'1727358893',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(211,'2013101030006','Fv4ssTUU',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mukta Akter Dipa',NULL,NULL,NULL,NULL,'1718628005',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(212,'2013101030007','cWBwC1Eo',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Abul kalam Azad',NULL,NULL,NULL,NULL,'1731665352',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(213,'2013101030008','UX17P69M',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Rajibul Bashar',NULL,NULL,NULL,NULL,'1911169446',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(214,'2013101030009','yj2YQU9O',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sudita Gain',NULL,NULL,NULL,NULL,'1914401995',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(215,'2013101030010','SKrSpanf',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Azadul Islam Shsikh',NULL,NULL,NULL,NULL,'1781264045',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(216,'2013101030011','D1WxhEBP',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Khadija khatun Punna',NULL,NULL,NULL,NULL,'1718943211',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(217,'2015105010001','zSkId5zj',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sheikh Ashek -e-Khoda',NULL,NULL,NULL,NULL,'1730714811',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(218,'2015205010001','q5jbWe1r',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S.M Arifuzzaman',NULL,NULL,NULL,NULL,'1682439954',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(219,'2015205010002','YmGFePJX',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Ashif Ikbal Himel',NULL,NULL,NULL,NULL,'1819846259',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(220,'2015205010003','Wt9VPEqD',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Farid Uddin Ahmed',NULL,NULL,NULL,NULL,'1714231158',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(221,'2015205010004','6bvHtqRd',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sree Sanjib Kumer Shaha',NULL,NULL,NULL,NULL,'1775128117',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(222,'2015205010005','besKVUMq',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md. Abul Bashar',NULL,NULL,NULL,NULL,'1743978469',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(223,'2015205010006','WlNPWRX3',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mahbub Sazzad',NULL,NULL,NULL,NULL,'1774054161',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(224,'2014105010001','8jeGf17O',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Yusf Ali',NULL,NULL,NULL,NULL,'1827150710',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(225,'2014105010002','vRy3C91u',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Ariful Haque hriday',NULL,NULL,NULL,NULL,'1951115634',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(226,'2014105010003','OKuHNZpN',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Masud Rana',NULL,NULL,NULL,NULL,'1789036263',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(227,'2014105010004','MIMnwh3v',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ali Hasan',NULL,NULL,NULL,NULL,'1836909611',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(228,'2014105010005','cwcOyMGn',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S.Mmehedi Hasan',NULL,NULL,NULL,NULL,'1756742008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(229,'2014105010006','MUuMDf38',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Shariful Islam',NULL,NULL,NULL,NULL,'1715652734',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(230,'2014105010007','jDn1wqVx',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Salim Hasan',NULL,NULL,NULL,NULL,'1753297258',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(231,'2014205010001','vrEiY32l',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monlasir Ahamned',NULL,NULL,NULL,NULL,'1717954230',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(232,'2013105010001','862kIU8j',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Md.Nazmul Hossain',NULL,NULL,NULL,NULL,'1728518640',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-06-21 04:16:55',NULL,NULL,NULL,NULL,NULL,1),(278,'2017305030001','123456',6,6,3,5,3,3,4,1,'Md. Rakib Mostofa','রাকিব মোস্তোফা','photo_2017305030001.png','signature_2017305030001.png','M','01722085398','15',1234567891234,'rakib@atilimited.net','Md.Golam Mostofa','Rahatunnesa',12,'1998-12-02 00:00:00','Natore','1234567891234','185.93','104','6.1',NULL,'88','194.01','1',NULL,'1000000','NO','','NO','','NO','','NO','','NO','',NULL,1,NULL,'2017-12-29 13:56:09',NULL,NULL,'NO','','',0);
/*!40000 ALTER TABLE `student_personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_semesterinfo`
--

DROP TABLE IF EXISTS `student_semesterinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_semesterinfo` (
  `STU_SEMINFO_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` bigint(14) NOT NULL,
  `FACULTY_ID` smallint(6) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `SEMESTER_SL_NO` int(11) NOT NULL,
  `BATCH_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IS_CURRENT` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`STU_SEMINFO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_semesterinfo`
--

LOCK TABLES `student_semesterinfo` WRITE;
/*!40000 ALTER TABLE `student_semesterinfo` DISABLE KEYS */;
INSERT INTO `student_semesterinfo` VALUES (1,278,5,3,3,6,1,4,1,1,14,'2017-12-29 14:05:04',NULL,NULL),(2,31,5,3,3,6,2,2,1,1,14,'2017-12-29 15:13:22',NULL,NULL),(3,18,5,1,1,6,1,2,1,1,18,'2018-02-25 09:56:46',NULL,NULL);
/*!40000 ALTER TABLE `student_semesterinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_waiver_info`
--

DROP TABLE IF EXISTS `student_waiver_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_waiver_info` (
  `STU_WAIVER_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key Of or_applicant_adress Table.',
  `STUDENT_ID` bigint(14) NOT NULL COMMENT 'Foreign Key To STUDENT_ID Column Of students_info Table.',
  `WAIVER_TYPE` bigint(14) DEFAULT NULL,
  `SESSION_ID` bigint(14) NOT NULL COMMENT 'Foreign Key To STUDENT_ID Column Of students_info Table.',
  `PERCENTAGE` varchar(14) DEFAULT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Create User Id',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record Inserted Date And Time',
  `UPDATED_BY` bigint(14) DEFAULT NULL COMMENT 'Record Updated User Id',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Record Updated Date And Time',
  PRIMARY KEY (`STU_WAIVER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_waiver_info`
--

LOCK TABLES `student_waiver_info` WRITE;
/*!40000 ALTER TABLE `student_waiver_info` DISABLE KEYS */;
INSERT INTO `student_waiver_info` VALUES (1,278,171,6,'20',1,1,'2017-12-29 15:10:54',NULL,NULL),(2,40,93,3,'5',1,NULL,'2018-04-12 04:52:09',NULL,NULL);
/*!40000 ALTER TABLE `student_waiver_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_course_map`
--

DROP TABLE IF EXISTS `teacher_course_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_course_map` (
  `TE_COURSE_MAP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_ID` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `EARN_CREDIT` int(11) NOT NULL,
  `SESSION_ID` int(11) NOT NULL,
  `ACTIVE_STATUS` tinyint(1) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`TE_COURSE_MAP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_course_map`
--

LOCK TABLES `teacher_course_map` WRITE;
/*!40000 ALTER TABLE `teacher_course_map` DISABLE KEYS */;
INSERT INTO `teacher_course_map` VALUES (12,8,415,0,6,1,NULL,'2017-08-05 09:12:56',NULL,NULL),(13,8,416,0,6,1,NULL,'2017-08-05 09:12:56',NULL,NULL),(14,8,417,0,6,1,NULL,'2017-08-05 09:12:56',NULL,NULL),(15,6,311,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(16,6,386,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(17,6,387,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(18,6,388,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(19,6,389,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(20,6,390,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(21,6,391,0,6,1,NULL,'2017-08-08 04:52:25',NULL,NULL),(22,6,203,0,6,1,NULL,'2017-08-10 06:58:42',NULL,NULL),(23,4,365,0,6,1,NULL,'2017-08-10 09:44:27',NULL,NULL),(26,8,2,0,6,1,NULL,'2018-07-04 06:37:20',NULL,NULL),(27,8,1,0,6,1,NULL,'2018-07-04 06:51:52',NULL,NULL);
/*!40000 ALTER TABLE `teacher_course_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logs` (
  `LOG_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `IP_ADDRESS` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LOGIN_DATE` datetime DEFAULT NULL,
  `LOG_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1 - Error, 2 - Success, 3 - Message, 4 - Debug',
  `USER_ID` int(10) DEFAULT NULL,
  `USERNAME` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `URI_STRING` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LOG_MESSAGE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LOG_DESC` text CHARACTER SET utf8,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1351 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
INSERT INTO `user_logs` VALUES (1,'::1',NULL,'2017-12-26 02:12:16','LOG IN',1,'admin',NULL,NULL,NULL),(2,'::1',NULL,'2017-12-26 02:13:20','LOG OUT',1,'admin',NULL,NULL,NULL),(3,'::1',NULL,'2017-12-26 02:29:16','LOG IN',1,'admin',NULL,NULL,NULL),(4,'127.0.0.1',NULL,'2017-12-26 03:53:00',NULL,18,'foysal',NULL,NULL,NULL),(5,'127.0.0.1',NULL,'2017-12-26 03:55:17',NULL,1,'admin',NULL,NULL,NULL),(6,'127.0.0.1',NULL,'2017-12-26 03:56:24',NULL,18,'foysal',NULL,NULL,NULL),(7,'127.0.0.1',NULL,'2017-12-26 03:57:49',NULL,1,'admin',NULL,NULL,NULL),(8,'127.0.0.1',NULL,'2017-12-26 06:49:36',NULL,18,'foysal',NULL,NULL,NULL),(9,'127.0.0.1',NULL,'2017-12-26 06:50:42',NULL,1,'admin',NULL,NULL,NULL),(10,'127.0.0.1',NULL,'2017-12-26 08:18:16',NULL,18,'foysal',NULL,NULL,NULL),(11,'127.0.0.1',NULL,'2017-12-26 08:20:21',NULL,1,'admin',NULL,NULL,NULL),(12,'::1',NULL,'2017-12-27 09:17:42','LOG IN',1,'admin',NULL,NULL,NULL),(13,'::1',NULL,'2017-12-27 09:40:25','LOG OUT',1,'admin',NULL,NULL,NULL),(14,'::1',NULL,'2017-12-27 09:40:31','LOG IN',1,'admin',NULL,NULL,NULL),(15,'127.0.0.1',NULL,'2017-12-27 09:47:29',NULL,1,'admin',NULL,NULL,NULL),(16,'::1',NULL,'2017-12-27 11:27:00','LOG OUT',1,'admin',NULL,NULL,NULL),(17,'::1',NULL,'2017-12-27 11:27:06','LOG IN',14,'emdad',NULL,NULL,NULL),(18,'::1',NULL,'2017-12-27 11:27:17','LOG OUT',14,'emdad',NULL,NULL,NULL),(19,'::1',NULL,'2017-12-27 11:27:22','LOG IN',1,'admin',NULL,NULL,NULL),(20,'::1',NULL,'2017-12-27 11:27:39','LOG OUT',1,'admin',NULL,NULL,NULL),(21,'::1',NULL,'2017-12-27 11:27:44','LOG IN',14,'emdad',NULL,NULL,NULL),(22,'::1',NULL,'2017-12-27 11:27:44','LOG IN',1,'admin',NULL,NULL,NULL),(23,'::1',NULL,'2017-12-27 11:28:00','LOG OUT',14,'emdad',NULL,NULL,NULL),(24,'::1',NULL,'2017-12-27 11:28:10','LOG IN',1,'admin',NULL,NULL,NULL),(25,'::1',NULL,'2017-12-27 11:28:53','LOG OUT',1,'admin',NULL,NULL,NULL),(26,'::1',NULL,'2017-12-27 11:28:58','LOG IN',14,'emdad',NULL,NULL,NULL),(27,'::1',NULL,'2017-12-27 11:29:52','LOG OUT',14,'emdad',NULL,NULL,NULL),(28,'::1',NULL,'2017-12-27 11:29:58','LOG IN',1,'admin',NULL,NULL,NULL),(29,'::1',NULL,'2017-12-27 11:31:25','LOG OUT',1,'admin',NULL,NULL,NULL),(30,'::1',NULL,'2017-12-27 11:31:33','LOG IN',14,'emdad',NULL,NULL,NULL),(31,'::1',NULL,'2017-12-27 11:31:51','LOG OUT',14,'emdad',NULL,NULL,NULL),(32,'::1',NULL,'2017-12-27 11:31:57','LOG IN',1,'admin',NULL,NULL,NULL),(33,'127.0.0.1',NULL,'2017-12-27 12:18:10','LOG OUT',1,'admin',NULL,NULL,NULL),(34,'127.0.0.1',NULL,'2017-12-27 12:18:16','LOG IN',18,'foysal',NULL,NULL,NULL),(35,'127.0.0.1',NULL,'2017-12-27 12:31:05','LOG OUT',18,'foysal',NULL,NULL,NULL),(36,'127.0.0.1',NULL,'2017-12-27 12:31:10','LOG IN',1,'admin',NULL,NULL,NULL),(37,'192.168.0.41',NULL,'2017-12-27 12:49:09','LOG IN',1,'admin',NULL,NULL,NULL),(38,'::1',NULL,'2017-12-27 01:23:52','LOG OUT',1,'admin',NULL,NULL,NULL),(39,'::1',NULL,'2017-12-27 01:43:38','LOG IN',1,'admin',NULL,NULL,NULL),(40,'::1',NULL,'2017-12-28 12:15:40','LOG IN',1,'admin',NULL,NULL,NULL),(41,'::1',NULL,'2017-12-28 12:49:12','LOG OUT',1,'admin',NULL,NULL,NULL),(42,'::1',NULL,'2017-12-28 12:49:24','LOG IN',14,'emdad',NULL,NULL,NULL),(43,'::1',NULL,'2017-12-28 12:50:37','LOG OUT',14,'emdad',NULL,NULL,NULL),(44,'::1',NULL,'2017-12-28 12:50:42','LOG IN',1,'admin',NULL,NULL,NULL),(45,'::1',NULL,'2017-12-28 01:15:29','LOG OUT',1,'admin',NULL,NULL,NULL),(46,'::1',NULL,'2017-12-28 01:15:35','LOG IN',14,'emdad',NULL,NULL,NULL),(47,'::1',NULL,'2017-12-28 01:16:21','LOG OUT',14,'emdad',NULL,NULL,NULL),(48,'::1',NULL,'2017-12-28 01:16:27','LOG IN',1,'admin',NULL,NULL,NULL),(49,'::1',NULL,'2017-12-28 01:18:50','LOG OUT',1,'admin',NULL,NULL,NULL),(50,'::1',NULL,'2017-12-28 01:18:56','LOG IN',14,'emdad',NULL,NULL,NULL),(51,'::1',NULL,'2017-12-28 01:20:28','LOG OUT',14,'emdad',NULL,NULL,NULL),(52,'::1',NULL,'2017-12-28 01:20:33','LOG IN',1,'admin',NULL,NULL,NULL),(53,'::1',NULL,'2017-12-28 01:22:17','LOG OUT',1,'admin',NULL,NULL,NULL),(54,'::1',NULL,'2017-12-28 01:22:23','LOG IN',14,'emdad',NULL,NULL,NULL),(55,'::1',NULL,'2017-12-28 01:30:55','LOG OUT',14,'emdad',NULL,NULL,NULL),(56,'::1',NULL,'2017-12-28 01:31:00','LOG IN',1,'admin',NULL,NULL,NULL),(57,'::1',NULL,'2017-12-28 01:51:44','LOG OUT',1,'admin',NULL,NULL,NULL),(58,'::1',NULL,'2017-12-28 01:51:51','LOG IN',14,'emdad',NULL,NULL,NULL),(59,'::1',NULL,'2017-12-28 01:52:49','LOG OUT',14,'emdad',NULL,NULL,NULL),(60,'::1',NULL,'2017-12-28 01:52:57','LOG IN',1,'admin',NULL,NULL,NULL),(61,'::1',NULL,'2017-12-28 02:05:36','LOG OUT',1,'admin',NULL,NULL,NULL),(62,'::1',NULL,'2017-12-28 02:05:42','LOG IN',14,'emdad',NULL,NULL,NULL),(63,'::1',NULL,'2017-12-28 02:10:42','LOG OUT',14,'emdad',NULL,NULL,NULL),(64,'::1',NULL,'2017-12-28 02:11:21','LOG IN',1,'admin',NULL,NULL,NULL),(65,'::1',NULL,'2017-12-28 02:12:15','LOG OUT',1,'admin',NULL,NULL,NULL),(66,'::1',NULL,'2017-12-28 09:33:25','LOG IN',1,'admin',NULL,NULL,NULL),(67,'::1',NULL,'2017-12-28 10:31:34','LOG OUT',1,'admin',NULL,NULL,NULL),(68,'::1',NULL,'2017-12-28 10:31:42','LOG IN',14,'emdad',NULL,NULL,NULL),(69,'::1',NULL,'2017-12-28 10:32:52','LOG OUT',14,'emdad',NULL,NULL,NULL),(70,'::1',NULL,'2017-12-28 10:33:02','LOG IN',1,'admin',NULL,NULL,NULL),(71,'::1',NULL,'2017-12-28 10:34:56','LOG OUT',1,'admin',NULL,NULL,NULL),(72,'::1',NULL,'2017-12-28 10:35:07','LOG IN',14,'emdad',NULL,NULL,NULL),(73,'::1',NULL,'2017-12-28 10:35:34','LOG OUT',14,'emdad',NULL,NULL,NULL),(74,'::1',NULL,'2017-12-28 10:35:39','LOG IN',1,'admin',NULL,NULL,NULL),(75,'::1',NULL,'2017-12-28 10:37:27','LOG OUT',1,'admin',NULL,NULL,NULL),(76,'::1',NULL,'2017-12-28 10:37:33','LOG IN',14,'emdad',NULL,NULL,NULL),(77,'::1',NULL,'2017-12-28 10:37:51','LOG OUT',14,'emdad',NULL,NULL,NULL),(78,'::1',NULL,'2017-12-28 10:37:56','LOG IN',1,'admin',NULL,NULL,NULL),(79,'::1',NULL,'2017-12-28 11:11:54','LOG OUT',1,'admin',NULL,NULL,NULL),(80,'::1',NULL,'2017-12-28 11:12:01','LOG IN',14,'emdad',NULL,NULL,NULL),(81,'::1',NULL,'2017-12-28 11:14:11','LOG OUT',14,'emdad',NULL,NULL,NULL),(82,'::1',NULL,'2017-12-28 11:14:16','LOG IN',1,'admin',NULL,NULL,NULL),(83,'::1',NULL,'2017-12-28 11:28:33','LOG OUT',1,'admin',NULL,NULL,NULL),(84,'::1',NULL,'2017-12-28 11:28:43','LOG IN',14,'emdad',NULL,NULL,NULL),(85,'::1',NULL,'2017-12-28 11:30:18','LOG OUT',14,'emdad',NULL,NULL,NULL),(86,'::1',NULL,'2017-12-28 11:30:24','LOG IN',1,'admin',NULL,NULL,NULL),(87,'::1',NULL,'2017-12-28 11:33:25','LOG OUT',1,'admin',NULL,NULL,NULL),(88,'::1',NULL,'2017-12-28 11:33:31','LOG IN',14,'emdad',NULL,NULL,NULL),(89,'::1',NULL,'2017-12-28 11:34:03','LOG OUT',14,'emdad',NULL,NULL,NULL),(90,'::1',NULL,'2017-12-28 11:34:10','LOG IN',1,'admin',NULL,NULL,NULL),(91,'::1',NULL,'2017-12-28 09:35:01','LOG IN',1,'admin',NULL,NULL,NULL),(92,'::1',NULL,'2017-12-28 09:54:10','LOG OUT',1,'admin',NULL,NULL,NULL),(93,'::1',NULL,'2017-12-28 09:55:02','LOG IN',1,'admin',NULL,NULL,NULL),(94,'::1',NULL,'2017-12-28 09:55:50','LOG OUT',1,'admin',NULL,NULL,NULL),(95,'::1',NULL,'2017-12-28 09:56:00','LOG IN',14,'emdad',NULL,NULL,NULL),(96,'::1',NULL,'2017-12-28 09:58:42','LOG OUT',14,'emdad',NULL,NULL,NULL),(97,'::1',NULL,'2017-12-28 09:58:51','LOG IN',1,'admin',NULL,NULL,NULL),(98,'::1',NULL,'2017-12-28 10:09:19','LOG OUT',1,'admin',NULL,NULL,NULL),(99,'::1',NULL,'2017-12-28 10:43:42','LOG IN',1,'admin',NULL,NULL,NULL),(100,'::1',NULL,'2017-12-28 10:43:54','LOG OUT',1,'admin',NULL,NULL,NULL),(101,'::1',NULL,'2017-12-28 10:44:07','LOG IN',14,'emdad',NULL,NULL,NULL),(102,'::1',NULL,'2017-12-28 10:45:27','LOG OUT',14,'emdad',NULL,NULL,NULL),(103,'::1',NULL,'2017-12-28 10:45:42','LOG IN',14,'emdad',NULL,NULL,NULL),(104,'::1',NULL,'2017-12-29 07:18:06','LOG IN',1,'admin',NULL,NULL,NULL),(105,'::1',NULL,'2017-12-29 07:29:53','LOG OUT',1,'admin',NULL,NULL,NULL),(106,'::1',NULL,'2017-12-29 07:38:43','LOG IN',1,'admin',NULL,NULL,NULL),(107,'::1',NULL,'2017-12-29 07:38:47','LOG OUT',1,'admin',NULL,NULL,NULL),(108,'::1',NULL,'2017-12-29 07:38:54','LOG IN',15,'nurulla',NULL,NULL,NULL),(109,'::1',NULL,'2017-12-29 07:40:19','LOG OUT',15,'nurulla',NULL,NULL,NULL),(110,'::1',NULL,'2017-12-29 07:40:24','LOG IN',1,'admin',NULL,NULL,NULL),(111,'::1',NULL,'2017-12-29 07:41:33','LOG OUT',1,'admin',NULL,NULL,NULL),(112,'::1',NULL,'2017-12-29 07:41:42','LOG IN',15,'nurulla',NULL,NULL,NULL),(113,'::1',NULL,'2017-12-29 07:42:42','LOG OUT',15,'nurulla',NULL,NULL,NULL),(114,'::1',NULL,'2017-12-29 07:42:48','LOG IN',14,'emdad',NULL,NULL,NULL),(115,'::1',NULL,'2017-12-29 07:43:30','LOG OUT',14,'emdad',NULL,NULL,NULL),(116,'::1',NULL,'2017-12-29 07:43:37','LOG IN',15,'nurulla',NULL,NULL,NULL),(117,'::1',NULL,'2017-12-29 07:56:17','LOG OUT',15,'nurulla',NULL,NULL,NULL),(118,'::1',NULL,'2017-12-29 07:56:25','LOG IN',1,'admin',NULL,NULL,NULL),(119,'::1',NULL,'2017-12-29 07:58:31','LOG OUT',1,'admin',NULL,NULL,NULL),(120,'::1',NULL,'2017-12-29 07:58:39','LOG IN',14,'emdad',NULL,NULL,NULL),(121,'::1',NULL,'2017-12-29 08:02:28','LOG OUT',14,'emdad',NULL,NULL,NULL),(122,'::1',NULL,'2017-12-29 08:02:34','LOG IN',1,'admin',NULL,NULL,NULL),(123,'::1',NULL,'2017-12-29 08:04:34','LOG OUT',1,'admin',NULL,NULL,NULL),(124,'::1',NULL,'2017-12-29 08:04:42','LOG IN',14,'emdad',NULL,NULL,NULL),(125,'::1',NULL,'2017-12-29 08:12:08','LOG OUT',14,'emdad',NULL,NULL,NULL),(126,'::1',NULL,'2017-12-29 08:12:15','LOG IN',1,'admin',NULL,NULL,NULL),(127,'::1',NULL,'2017-12-29 09:12:47','LOG OUT',1,'admin',NULL,NULL,NULL),(128,'::1',NULL,'2017-12-29 09:12:53','LOG IN',14,'emdad',NULL,NULL,NULL),(129,'::1',NULL,'2017-12-29 09:13:26','LOG OUT',14,'emdad',NULL,NULL,NULL),(130,'::1',NULL,'2017-12-29 09:13:49','LOG IN',1,'admin',NULL,NULL,NULL),(131,'::1',NULL,'2018-01-02 10:20:05','LOG IN',1,'admin',NULL,NULL,NULL),(132,'::1',NULL,'2018-01-02 11:02:28','LOG OUT',1,'admin',NULL,NULL,NULL),(133,'::1',NULL,'2018-01-02 11:04:41','LOG IN',14,'emdad',NULL,NULL,NULL),(134,'::1',NULL,'2018-01-02 11:06:00','LOG OUT',14,'emdad',NULL,NULL,NULL),(135,'::1',NULL,'2018-01-02 11:06:10','LOG IN',1,'admin',NULL,NULL,NULL),(136,'::1',NULL,'2018-01-02 01:11:53','LOG OUT',1,'admin',NULL,NULL,NULL),(137,'::1',NULL,'2018-01-02 09:55:28','LOG IN',1,'admin',NULL,NULL,NULL),(138,'::1',NULL,'2018-01-02 09:55:53','LOG OUT',1,'admin',NULL,NULL,NULL),(139,'::1',NULL,'2018-01-02 09:56:05','LOG IN',1,'admin',NULL,NULL,NULL),(140,'::1',NULL,'2018-01-02 10:14:14','LOG OUT',1,'admin',NULL,NULL,NULL),(141,'::1',NULL,'2018-01-02 10:14:22','LOG IN',1,'admin',NULL,NULL,NULL),(142,'::1',NULL,'2018-01-02 10:14:48','LOG OUT',1,'admin',NULL,NULL,NULL),(143,'::1',NULL,'2018-01-02 10:15:31','LOG IN',1,'admin',NULL,NULL,NULL),(144,'::1',NULL,'2018-01-02 10:17:02','LOG OUT',1,'admin',NULL,NULL,NULL),(145,'::1',NULL,'2018-01-02 10:17:19','LOG IN',1,'admin',NULL,NULL,NULL),(146,'::1',NULL,'2018-01-02 10:17:23','LOG OUT',1,'admin',NULL,NULL,NULL),(147,'::1',NULL,'2018-01-02 10:17:38','LOG IN',1,'admin',NULL,NULL,NULL),(148,'::1',NULL,'2018-01-06 10:37:00','LOG OUT',1,'admin',NULL,NULL,NULL),(149,'::1',NULL,'2018-01-06 10:37:30','LOG IN',1,'admin',NULL,NULL,NULL),(150,'::1',NULL,'2018-01-06 10:43:25','LOG OUT',1,'admin',NULL,NULL,NULL),(151,'::1',NULL,'2018-01-06 10:49:08','LOG IN',1,'admin',NULL,NULL,NULL),(152,'::1',NULL,'2018-01-06 11:57:29','LOG IN',1,'admin',NULL,NULL,NULL),(153,'::1',NULL,'2018-01-06 11:59:03','LOG OUT',1,'admin',NULL,NULL,NULL),(154,'::1',NULL,'2018-01-06 11:59:16','LOG IN',1,'admin',NULL,NULL,NULL),(155,'::1',NULL,'2018-01-06 11:59:35','LOG OUT',1,'admin',NULL,NULL,NULL),(156,'::1',NULL,'2018-01-06 11:59:44','LOG IN',1,'admin',NULL,NULL,NULL),(157,'::1',NULL,'2018-01-06 12:08:53','LOG OUT',1,'admin',NULL,NULL,NULL),(158,'::1',NULL,'2018-01-06 12:08:58','LOG IN',1,'admin',NULL,NULL,NULL),(159,'::1',NULL,'2018-01-06 12:48:46','LOG IN',1,'admin',NULL,NULL,NULL),(160,'::1',NULL,'2018-01-06 01:00:44','LOG OUT',1,'admin',NULL,NULL,NULL),(161,'::1',NULL,'2018-01-06 02:05:58','LOG OUT',1,'admin',NULL,NULL,NULL),(162,'::1',NULL,'2018-01-06 02:06:04','LOG IN',1,'admin',NULL,NULL,NULL),(163,'192.168.0.18',NULL,'2018-01-06 02:28:10','LOG IN',1,'admin',NULL,NULL,NULL),(164,'192.168.0.91',NULL,'2018-01-06 02:33:40','LOG IN',1,'admin',NULL,NULL,NULL),(165,'192.168.0.91',NULL,'2018-01-06 03:40:41','LOG OUT',1,'admin',NULL,NULL,NULL),(166,'192.168.0.91',NULL,'2018-01-06 03:40:52','LOG IN',1,'admin',NULL,NULL,NULL),(167,'192.168.0.91',NULL,'2018-01-06 03:41:32','LOG OUT',1,'admin',NULL,NULL,NULL),(168,'192.168.0.91',NULL,'2018-01-06 03:42:32','LOG IN',1,'admin',NULL,NULL,NULL),(169,'::1',NULL,'2018-01-06 04:57:45','LOG OUT',1,'admin',NULL,NULL,NULL),(170,'::1',NULL,'2018-01-06 05:49:28','LOG IN',1,'admin',NULL,NULL,NULL),(171,'::1',NULL,'2018-01-07 09:51:35','LOG IN',1,'admin',NULL,NULL,NULL),(172,'::1',NULL,'2018-01-07 12:03:56','LOG OUT',1,'admin',NULL,NULL,NULL),(173,'192.168.0.91',NULL,'2018-01-07 04:07:34','LOG IN',1,'admin',NULL,NULL,NULL),(174,'::1',NULL,'2018-01-07 04:37:14','LOG IN',1,'admin',NULL,NULL,NULL),(175,'::1',NULL,'2018-01-08 09:12:09','LOG IN',1,'admin',NULL,NULL,NULL),(176,'::1',NULL,'2018-01-08 09:12:25','LOG OUT',1,'admin',NULL,NULL,NULL),(177,'::1',NULL,'2018-01-08 12:23:04','LOG IN',1,'admin',NULL,NULL,NULL),(178,'::1',NULL,'2018-01-09 03:25:42','LOG IN',1,'admin',NULL,NULL,NULL),(179,'::1',NULL,'2018-01-09 03:30:12','LOG OUT',1,'admin',NULL,NULL,NULL),(180,'192.168.0.59',NULL,'2018-01-13 12:54:23','LOG IN',18,'foysal',NULL,NULL,NULL),(181,'192.168.0.59',NULL,'2018-01-13 12:54:56','LOG OUT',18,'foysal',NULL,NULL,NULL),(182,'192.168.0.91',NULL,'2018-01-13 12:57:38','LOG IN',18,'foysal',NULL,NULL,NULL),(183,'192.168.0.91',NULL,'2018-01-13 12:57:50','LOG OUT',18,'foysal',NULL,NULL,NULL),(184,'::1',NULL,'2018-01-15 09:49:38','LOG IN',1,'admin',NULL,NULL,NULL),(185,'192.168.0.43',NULL,'2018-01-16 02:00:09','LOG IN',1,'admin',NULL,NULL,NULL),(186,'::1',NULL,'2018-01-16 02:28:20','LOG IN',1,'admin',NULL,NULL,NULL),(187,'192.168.0.46',NULL,'2018-01-16 02:34:44','LOG IN',1,'admin',NULL,NULL,NULL),(188,'::1',NULL,'2018-01-16 02:41:13','LOG IN',1,'admin',NULL,NULL,NULL),(189,'::1',NULL,'2018-01-16 02:41:16','LOG OUT',1,'admin',NULL,NULL,NULL),(190,'192.168.0.43',NULL,'2018-01-16 03:07:35','LOG OUT',1,'admin',NULL,NULL,NULL),(191,'::1',NULL,'2018-01-16 06:24:52','LOG IN',1,'admin',NULL,NULL,NULL),(192,'::1',NULL,'2018-01-17 09:51:03','LOG IN',1,'admin',NULL,NULL,NULL),(193,'::1',NULL,'2018-01-17 09:51:14','LOG OUT',1,'admin',NULL,NULL,NULL),(194,'::1',NULL,'2018-01-18 12:24:50','LOG IN',1,'admin',NULL,NULL,NULL),(195,'::1',NULL,'2018-01-18 12:56:24','LOG OUT',1,'admin',NULL,NULL,NULL),(196,'::1',NULL,'2018-01-23 09:16:53','LOG IN',1,'admin',NULL,NULL,NULL),(197,'::1',NULL,'2018-01-23 09:17:32','LOG OUT',1,'admin',NULL,NULL,NULL),(198,'::1',NULL,'2018-01-23 09:29:23','LOG IN',1,'admin',NULL,NULL,NULL),(199,'::1',NULL,'2018-01-23 09:31:09','LOG OUT',1,'admin',NULL,NULL,NULL),(200,'::1',NULL,'2018-01-24 09:27:08','LOG IN',1,'admin',NULL,NULL,NULL),(201,'::1',NULL,'2018-01-24 09:34:47','LOG OUT',1,'admin',NULL,NULL,NULL),(202,'::1',NULL,'2018-01-24 09:35:02','LOG IN',15,'shihab',NULL,NULL,NULL),(203,'::1',NULL,'2018-01-24 09:35:15','LOG OUT',15,'shihab',NULL,NULL,NULL),(204,'::1',NULL,'2018-01-24 09:35:28','LOG IN',1,'admin',NULL,NULL,NULL),(205,'::1',NULL,'2018-01-24 09:38:20','LOG OUT',1,'admin',NULL,NULL,NULL),(206,'::1',NULL,'2018-01-24 09:38:26','LOG IN',15,'shihab',NULL,NULL,NULL),(207,'::1',NULL,'2018-01-24 09:38:32','LOG OUT',15,'shihab',NULL,NULL,NULL),(208,'::1',NULL,'2018-01-24 09:40:22','LOG IN',1,'admin',NULL,NULL,NULL),(209,'::1',NULL,'2018-01-24 09:40:59','LOG OUT',1,'admin',NULL,NULL,NULL),(210,'::1',NULL,'2018-01-24 09:41:05','LOG IN',15,'shihab',NULL,NULL,NULL),(211,'::1',NULL,'2018-01-24 11:28:19','LOG OUT',15,'shihab',NULL,NULL,NULL),(212,'127.0.0.1',NULL,'2018-01-24 11:39:44','LOG IN',1,'admin',NULL,NULL,NULL),(213,'::1',NULL,'2018-01-24 02:22:24','LOG IN',15,'shihab',NULL,NULL,NULL),(214,'::1',NULL,'2018-01-24 02:34:53','LOG OUT',15,'shihab',NULL,NULL,NULL),(215,'::1',NULL,'2018-01-24 03:30:21','LOG IN',1,'admin',NULL,NULL,NULL),(216,'::1',NULL,'2018-01-24 03:31:40','LOG OUT',1,'admin',NULL,NULL,NULL),(217,'::1',NULL,'2018-01-24 03:48:19','LOG IN',1,'admin',NULL,NULL,NULL),(218,'::1',NULL,'2018-01-25 09:19:05','LOG IN',1,'admin',NULL,NULL,NULL),(219,'127.0.0.1',NULL,'2018-01-25 11:26:33','LOG IN',1,'admin',NULL,NULL,NULL),(220,'::1',NULL,'2018-01-25 11:55:40','LOG OUT',1,'admin',NULL,NULL,NULL),(221,'::1',NULL,'2018-01-25 11:55:46','LOG IN',15,'shihab',NULL,NULL,NULL),(222,'::1',NULL,'2018-01-25 12:00:13','LOG OUT',15,'shihab',NULL,NULL,NULL),(223,'::1',NULL,'2018-01-25 12:00:17','LOG IN',1,'admin',NULL,NULL,NULL),(224,'::1',NULL,'2018-01-25 12:14:16','LOG OUT',1,'admin',NULL,NULL,NULL),(225,'::1',NULL,'2018-01-25 12:14:22','LOG IN',15,'shihab',NULL,NULL,NULL),(226,'::1',NULL,'2018-01-25 12:22:41','LOG OUT',15,'shihab',NULL,NULL,NULL),(227,'::1',NULL,'2018-01-25 12:22:47','LOG IN',1,'admin',NULL,NULL,NULL),(228,'::1',NULL,'2018-01-25 12:24:31','LOG OUT',1,'admin',NULL,NULL,NULL),(229,'::1',NULL,'2018-01-25 12:24:37','LOG IN',15,'shihab',NULL,NULL,NULL),(230,'::1',NULL,'2018-01-25 12:25:30','LOG OUT',15,'shihab',NULL,NULL,NULL),(231,'::1',NULL,'2018-01-25 12:25:35','LOG IN',1,'admin',NULL,NULL,NULL),(232,'::1',NULL,'2018-01-25 02:14:53','LOG OUT',1,'admin',NULL,NULL,NULL),(233,'::1',NULL,'2018-01-25 02:15:04','LOG IN',15,'shihab',NULL,NULL,NULL),(234,'::1',NULL,'2018-01-25 02:42:49','LOG OUT',15,'shihab',NULL,NULL,NULL),(235,'::1',NULL,'2018-01-25 02:42:55','LOG IN',1,'admin',NULL,NULL,NULL),(236,'::1',NULL,'2018-01-25 02:56:19','LOG OUT',1,'admin',NULL,NULL,NULL),(237,'::1',NULL,'2018-01-25 03:13:22','LOG IN',1,'admin',NULL,NULL,NULL),(238,'::1',NULL,'2018-01-25 03:15:08','LOG OUT',1,'admin',NULL,NULL,NULL),(239,'::1',NULL,'2018-01-25 03:18:18','LOG IN',15,'shihab',NULL,NULL,NULL),(240,'::1',NULL,'2018-01-25 03:26:01','LOG OUT',15,'shihab',NULL,NULL,NULL),(241,'::1',NULL,'2018-01-25 03:26:06','LOG IN',1,'admin',NULL,NULL,NULL),(242,'::1',NULL,'2018-01-25 03:38:32','LOG OUT',1,'admin',NULL,NULL,NULL),(243,'::1',NULL,'2018-01-25 03:38:38','LOG IN',18,'foysal',NULL,NULL,NULL),(244,'::1',NULL,'2018-01-25 03:39:44','LOG OUT',18,'foysal',NULL,NULL,NULL),(245,'::1',NULL,'2018-01-25 03:39:50','LOG IN',1,'admin',NULL,NULL,NULL),(246,'::1',NULL,'2018-01-25 03:42:28','LOG OUT',1,'admin',NULL,NULL,NULL),(247,'::1',NULL,'2018-01-25 04:43:12','LOG IN',1,'admin',NULL,NULL,NULL),(248,'::1',NULL,'2018-01-25 04:46:03','LOG OUT',1,'admin',NULL,NULL,NULL),(249,'::1',NULL,'2018-01-27 09:25:21','LOG IN',1,'admin',NULL,NULL,NULL),(250,'192.168.0.43',NULL,'2018-01-27 09:58:28','LOG IN',1,'admin',NULL,NULL,NULL),(251,'192.168.0.21',NULL,'2018-01-27 09:59:21','LOG IN',1,'admin',NULL,NULL,NULL),(252,'192.168.0.43',NULL,'2018-01-27 10:06:41','LOG OUT',1,'admin',NULL,NULL,NULL),(253,'192.168.0.43',NULL,'2018-01-27 10:06:48','LOG IN',1,'admin',NULL,NULL,NULL),(254,'192.168.0.43',NULL,'2018-01-27 10:39:16','LOG OUT',1,'admin',NULL,NULL,NULL),(255,'::1',NULL,'2018-01-29 05:41:10','LOG IN',1,'admin',NULL,NULL,NULL),(256,'::1',NULL,'2018-01-29 06:04:23','LOG IN',1,'admin',NULL,NULL,NULL),(257,'::1',NULL,'2018-01-29 06:07:02','LOG OUT',1,'admin',NULL,NULL,NULL),(258,'::1',NULL,'2018-01-30 12:21:49','LOG IN',1,'admin',NULL,NULL,NULL),(259,'::1',NULL,'2018-01-30 12:24:12','LOG OUT',1,'admin',NULL,NULL,NULL),(260,'::1',NULL,'2018-01-30 12:24:19','LOG IN',15,'shihab',NULL,NULL,NULL),(261,'::1',NULL,'2018-01-30 12:30:00','LOG OUT',15,'shihab',NULL,NULL,NULL),(262,'::1',NULL,'2018-01-30 12:30:05','LOG IN',1,'admin',NULL,NULL,NULL),(263,'::1',NULL,'2018-01-30 12:36:23','LOG OUT',1,'admin',NULL,NULL,NULL),(264,'::1',NULL,'2018-01-30 12:50:42','LOG IN',1,'admin',NULL,NULL,NULL),(265,'::1',NULL,'2018-01-30 01:08:03','LOG OUT',1,'admin',NULL,NULL,NULL),(266,'::1',NULL,'2018-01-30 01:38:03','LOG IN',1,'admin',NULL,NULL,NULL),(267,'::1',NULL,'2018-01-30 03:05:37','LOG IN',1,'admin',NULL,NULL,NULL),(268,'::1',NULL,'2018-01-30 03:06:47','LOG OUT',1,'admin',NULL,NULL,NULL),(269,'::1',NULL,'2018-01-30 05:29:50','LOG IN',1,'admin',NULL,NULL,NULL),(270,'::1',NULL,'2018-01-30 05:36:15','LOG OUT',1,'admin',NULL,NULL,NULL),(271,'192.168.0.46',NULL,'2018-01-31 03:10:26','LOG IN',1,'admin',NULL,NULL,NULL),(272,'::1',NULL,'2018-02-01 09:40:52','LOG IN',18,'foysal',NULL,NULL,NULL),(273,'::1',NULL,'2018-02-01 09:42:07','LOG OUT',18,'foysal',NULL,NULL,NULL),(274,'::1',NULL,'2018-02-01 09:42:12','LOG IN',1,'admin',NULL,NULL,NULL),(275,'::1',NULL,'2018-02-01 09:44:50','LOG OUT',1,'admin',NULL,NULL,NULL),(276,'::1',NULL,'2018-02-01 09:44:57','LOG IN',15,'shihab',NULL,NULL,NULL),(277,'::1',NULL,'2018-02-01 09:45:35','LOG OUT',15,'shihab',NULL,NULL,NULL),(278,'::1',NULL,'2018-02-01 09:45:41','LOG IN',1,'admin',NULL,NULL,NULL),(279,'::1',NULL,'2018-02-01 10:12:38','LOG OUT',1,'admin',NULL,NULL,NULL),(280,'192.168.0.88',NULL,'2018-02-08 12:33:29','LOG IN',1,'admin',NULL,NULL,NULL),(281,'::1',NULL,'2018-02-08 04:53:41','LOG IN',1,'admin',NULL,NULL,NULL),(282,'192.168.0.63',NULL,'2018-02-08 04:58:43','LOG IN',1,'admin',NULL,NULL,NULL),(283,'192.168.0.63',NULL,'2018-02-11 12:21:30','LOG IN',1,'admin',NULL,NULL,NULL),(284,'::1',NULL,'2018-02-12 04:14:05','LOG IN',1,'admin',NULL,NULL,NULL),(285,'192.168.0.91',NULL,'2018-02-15 02:46:37','LOG IN',1,'admin',NULL,NULL,NULL),(286,'192.168.0.63',NULL,'2018-02-23 11:51:31','LOG IN',1,'admin',NULL,NULL,NULL),(287,'::1',NULL,'2018-02-23 12:06:57','LOG IN',1,'admin',NULL,NULL,NULL),(288,'::1',NULL,'2018-02-23 12:07:03','LOG OUT',1,'admin',NULL,NULL,NULL),(289,'192.168.0.88',NULL,'2018-02-23 12:17:22','LOG IN',1,'admin',NULL,NULL,NULL),(290,'192.168.0.88',NULL,'2018-02-23 12:18:04','LOG OUT',1,'admin',NULL,NULL,NULL),(291,'192.168.0.86',NULL,'2018-02-23 12:18:17','LOG IN',1,'admin',NULL,NULL,NULL),(292,'192.168.0.39',NULL,'2018-02-25 12:54:17','LOG IN',1,'admin',NULL,NULL,NULL),(293,'192.168.0.3',NULL,'2018-02-25 03:36:21','LOG IN',1,'admin',NULL,NULL,NULL),(294,'192.168.0.3',NULL,'2018-02-25 03:38:30','LOG OUT',1,'admin',NULL,NULL,NULL),(295,'192.168.0.3',NULL,'2018-02-25 03:39:23','LOG IN',1,'admin',NULL,NULL,NULL),(296,'192.168.0.3',NULL,'2018-02-25 03:39:35','LOG OUT',1,'admin',NULL,NULL,NULL),(297,'192.168.0.3',NULL,'2018-02-25 03:40:37','LOG IN',18,'foysal',NULL,NULL,NULL),(298,'192.168.0.3',NULL,'2018-02-25 03:40:50','LOG OUT',18,'foysal',NULL,NULL,NULL),(299,'192.168.0.3',NULL,'2018-02-25 03:41:02','LOG IN',1,'admin',NULL,NULL,NULL),(300,'192.168.0.3',NULL,'2018-02-25 03:49:07','LOG OUT',1,'admin',NULL,NULL,NULL),(301,'192.168.0.3',NULL,'2018-02-25 03:49:42','LOG IN',1,'admin',NULL,NULL,NULL),(302,'192.168.0.3',NULL,'2018-02-25 03:54:41','LOG OUT',1,'admin',NULL,NULL,NULL),(303,'192.168.0.3',NULL,'2018-02-25 03:54:48','LOG IN',18,'foysal',NULL,NULL,NULL),(304,'192.168.0.3',NULL,'2018-02-25 03:57:12','LOG OUT',18,'foysal',NULL,NULL,NULL),(305,'192.168.0.3',NULL,'2018-02-25 03:59:42','LOG IN',18,'foysal',NULL,NULL,NULL),(306,'192.168.0.3',NULL,'2018-02-25 04:00:46','LOG OUT',18,'foysal',NULL,NULL,NULL),(307,'192.168.0.3',NULL,'2018-02-25 04:00:56','LOG IN',18,'foysal',NULL,NULL,NULL),(308,'192.168.0.3',NULL,'2018-02-25 04:01:45','LOG OUT',18,'foysal',NULL,NULL,NULL),(309,'192.168.0.3',NULL,'2018-02-25 04:01:51','LOG IN',1,'admin',NULL,NULL,NULL),(310,'192.168.0.3',NULL,'2018-02-25 04:05:13','LOG OUT',1,'admin',NULL,NULL,NULL),(311,'192.168.0.3',NULL,'2018-02-25 04:05:19','LOG IN',18,'foysal',NULL,NULL,NULL),(312,'192.168.0.3',NULL,'2018-02-25 04:05:42','LOG OUT',18,'foysal',NULL,NULL,NULL),(313,'::1',NULL,'2018-02-27 10:22:55','LOG IN',1,'admin',NULL,NULL,NULL),(314,'::1',NULL,'2018-02-27 11:26:16','LOG OUT',1,'admin',NULL,NULL,NULL),(315,'::1',NULL,'2018-02-27 11:31:10','LOG IN',1,'admin',NULL,NULL,NULL),(316,'::1',NULL,'2018-02-27 11:59:17','LOG OUT',1,'admin',NULL,NULL,NULL),(317,'::1',NULL,'2018-02-27 11:59:32','LOG IN',1,'admin',NULL,NULL,NULL),(318,'::1',NULL,'2018-02-27 11:59:45','LOG OUT',1,'admin',NULL,NULL,NULL),(319,'::1',NULL,'2018-02-27 11:59:52','LOG IN',15,'shihab',NULL,NULL,NULL),(320,'::1',NULL,'2018-02-27 12:02:18','LOG OUT',15,'shihab',NULL,NULL,NULL),(321,'::1',NULL,'2018-02-27 12:02:22','LOG IN',1,'admin',NULL,NULL,NULL),(322,'::1',NULL,'2018-02-27 02:29:55','LOG IN',1,'admin',NULL,NULL,NULL),(323,'::1',NULL,'2018-02-27 04:16:44','LOG OUT',1,'admin',NULL,NULL,NULL),(324,'::1',NULL,'2018-02-27 05:13:15','LOG IN',1,'admin',NULL,NULL,NULL),(325,'::1',NULL,'2018-02-28 02:06:03','LOG IN',1,'admin',NULL,NULL,NULL),(326,'192.168.0.58',NULL,'2018-02-28 02:52:41','LOG IN',1,'admin',NULL,NULL,NULL),(327,'192.168.0.18',NULL,'2018-02-28 03:11:40','LOG IN',1,'admin',NULL,NULL,NULL),(328,'::1',NULL,'2018-02-28 03:48:01','LOG OUT',1,'admin',NULL,NULL,NULL),(329,'::1',NULL,'2018-02-28 03:48:42','LOG IN',1,'admin',NULL,NULL,NULL),(330,'::1',NULL,'2018-02-28 03:55:21','LOG OUT',1,'admin',NULL,NULL,NULL),(331,'::1',NULL,'2018-02-28 04:31:35','LOG IN',1,'admin',NULL,NULL,NULL),(332,'::1',NULL,'2018-02-28 04:34:33','LOG OUT',1,'admin',NULL,NULL,NULL),(333,'192.168.0.88',NULL,'2018-03-03 09:42:55','LOG IN',1,'admin',NULL,NULL,NULL),(334,'192.168.0.39',NULL,'2018-03-03 09:44:00','LOG IN',1,'admin',NULL,NULL,NULL),(335,'192.168.0.86',NULL,'2018-03-03 11:38:38','LOG IN',1,'admin',NULL,NULL,NULL),(336,'192.168.0.88',NULL,'2018-03-03 11:39:23','LOG OUT',1,'admin',NULL,NULL,NULL),(337,'192.168.0.86',NULL,'2018-03-03 11:57:55','LOG OUT',1,'admin',NULL,NULL,NULL),(338,'192.168.0.86',NULL,'2018-03-03 12:03:19','LOG IN',18,'foysal',NULL,NULL,NULL),(339,'192.168.0.86',NULL,'2018-03-03 12:18:37','LOG OUT',18,'foysal',NULL,NULL,NULL),(340,'192.168.0.86',NULL,'2018-03-03 12:19:16','LOG IN',1,'admin',NULL,NULL,NULL),(341,'192.168.0.86',NULL,'2018-03-03 02:28:13','LOG IN',1,'admin',NULL,NULL,NULL),(342,'192.168.0.86',NULL,'2018-03-03 02:35:25','LOG OUT',1,'admin',NULL,NULL,NULL),(343,'192.168.0.86',NULL,'2018-03-03 02:39:31','LOG IN',18,'foysal',NULL,NULL,NULL),(344,'192.168.0.86',NULL,'2018-03-03 03:25:55','LOG OUT',18,'foysal',NULL,NULL,NULL),(345,'192.168.0.86',NULL,'2018-03-03 03:26:02','LOG IN',1,'admin',NULL,NULL,NULL),(346,'192.168.0.88',NULL,'2018-03-03 04:32:11','LOG IN',1,'admin',NULL,NULL,NULL),(347,'192.168.0.86',NULL,'2018-03-04 09:59:54','LOG IN',1,'admin',NULL,NULL,NULL),(348,'192.168.0.86',NULL,'2018-03-04 11:41:39','LOG OUT',1,'admin',NULL,NULL,NULL),(349,'192.168.0.86',NULL,'2018-03-04 02:25:27','LOG IN',1,'admin',NULL,NULL,NULL),(350,'192.168.0.86',NULL,'2018-03-04 04:56:48','LOG IN',1,'admin',NULL,NULL,NULL),(351,'192.168.0.86',NULL,'2018-03-05 10:02:57','LOG IN',1,'admin',NULL,NULL,NULL),(352,'::1',NULL,'2018-03-05 10:04:36','LOG IN',1,'admin',NULL,NULL,NULL),(353,'::1',NULL,'2018-03-05 10:05:00','LOG OUT',1,'admin',NULL,NULL,NULL),(354,'192.168.0.86',NULL,'2018-03-05 04:30:29','LOG IN',1,'admin',NULL,NULL,NULL),(355,'::1',NULL,'2018-03-06 12:42:16','LOG IN',1,'admin',NULL,NULL,NULL),(356,'::1',NULL,'2018-03-06 02:18:24','LOG OUT',1,'admin',NULL,NULL,NULL),(357,'::1',NULL,'2018-03-07 02:27:21','LOG IN',19,'coe',NULL,NULL,NULL),(358,'::1',NULL,'2018-03-07 04:37:17','LOG IN',1,'admin',NULL,NULL,NULL),(359,'::1',NULL,'2018-03-07 05:18:34','LOG OUT',1,'admin',NULL,NULL,NULL),(360,'::1',NULL,'2018-03-08 11:41:41','LOG IN',1,'admin',NULL,NULL,NULL),(361,'::1',NULL,'2018-03-08 11:47:19','LOG OUT',1,'admin',NULL,NULL,NULL),(362,'::1',NULL,'2018-03-08 12:28:48','LOG IN',1,'admin',NULL,NULL,NULL),(363,'::1',NULL,'2018-03-08 12:35:32','LOG OUT',1,'admin',NULL,NULL,NULL),(364,'::1',NULL,'2018-03-10 10:21:26','LOG IN',1,'admin',NULL,NULL,NULL),(365,'::1',NULL,'2018-03-10 02:26:36','LOG IN',1,'admin',NULL,NULL,NULL),(366,'::1',NULL,'2018-03-10 02:30:23','LOG OUT',1,'admin',NULL,NULL,NULL),(367,'::1',NULL,'2018-03-10 02:30:54','LOG IN',1,'admin',NULL,NULL,NULL),(368,'::1',NULL,'2018-03-10 02:31:22','LOG OUT',1,'admin',NULL,NULL,NULL),(369,'::1',NULL,'2018-03-10 02:31:35','LOG IN',1,'admin',NULL,NULL,NULL),(370,'::1',NULL,'2018-03-10 02:32:31','LOG OUT',1,'admin',NULL,NULL,NULL),(371,'::1',NULL,'2018-03-10 02:32:45','LOG IN',1,'admin',NULL,NULL,NULL),(372,'::1',NULL,'2018-03-10 02:34:55','LOG OUT',1,'admin',NULL,NULL,NULL),(373,'192.168.0.39',NULL,'2018-03-10 03:45:42','LOG IN',1,'admin',NULL,NULL,NULL),(374,'::1',NULL,'2018-03-10 04:10:19','LOG IN',1,'admin',NULL,NULL,NULL),(375,'::1',NULL,'2018-03-10 04:18:53','LOG OUT',1,'admin',NULL,NULL,NULL),(376,'::1',NULL,'2018-03-10 04:19:02','LOG IN',15,'shihab',NULL,NULL,NULL),(377,'192.168.0.39',NULL,'2018-03-10 04:23:33','LOG OUT',1,'admin',NULL,NULL,NULL),(378,'192.168.0.39',NULL,'2018-03-10 04:23:52','LOG IN',1,'admin',NULL,NULL,NULL),(379,'192.168.0.39',NULL,'2018-03-10 04:24:11','LOG OUT',1,'admin',NULL,NULL,NULL),(380,'192.168.0.39',NULL,'2018-03-10 04:24:18','LOG IN',1,'admin',NULL,NULL,NULL),(381,'::1',NULL,'2018-03-10 04:26:00','LOG OUT',15,'shihab',NULL,NULL,NULL),(382,'192.168.0.39',NULL,'2018-03-10 04:27:58','LOG OUT',1,'admin',NULL,NULL,NULL),(383,'192.168.0.39',NULL,'2018-03-10 04:29:31','LOG IN',1,'admin',NULL,NULL,NULL),(384,'::1',NULL,'2018-03-11 10:27:31','LOG IN',1,'admin',NULL,NULL,NULL),(385,'::1',NULL,'2018-03-11 10:46:06','LOG OUT',1,'admin',NULL,NULL,NULL),(386,'::1',NULL,'2018-03-11 10:46:11','LOG IN',1,'admin',NULL,NULL,NULL),(387,'192.168.0.3',NULL,'2018-03-11 11:48:18','LOG IN',1,'admin',NULL,NULL,NULL),(388,'::1',NULL,'2018-03-11 11:55:44','LOG IN',1,'admin',NULL,NULL,NULL),(389,'192.168.0.3',NULL,'2018-03-11 12:56:56','LOG IN',15,'shihab',NULL,NULL,NULL),(390,'192.168.0.3',NULL,'2018-03-11 01:02:46','LOG OUT',15,'shihab',NULL,NULL,NULL),(391,'::1',NULL,'2018-03-11 04:33:54','LOG IN',1,'admin',NULL,NULL,NULL),(392,'::1',NULL,'2018-03-11 05:09:14','LOG OUT',1,'admin',NULL,NULL,NULL),(393,'::1',NULL,'2018-03-11 05:09:31','LOG IN',1,'admin',NULL,NULL,NULL),(394,'::1',NULL,'2018-03-11 05:26:16','LOG OUT',1,'admin',NULL,NULL,NULL),(395,'::1',NULL,'2018-03-11 05:27:16','LOG IN',1,'admin',NULL,NULL,NULL),(396,'::1',NULL,'2018-03-11 05:54:30','LOG OUT',1,'admin',NULL,NULL,NULL),(397,'::1',NULL,'2018-03-12 09:24:29','LOG IN',1,'admin',NULL,NULL,NULL),(398,'::1',NULL,'2018-03-12 09:36:53','LOG IN',1,'admin',NULL,NULL,NULL),(399,'::1',NULL,'2018-03-12 09:37:19','LOG OUT',1,'admin',NULL,NULL,NULL),(400,'192.168.0.63',NULL,'2018-03-12 11:31:41','LOG IN',1,'admin',NULL,NULL,NULL),(401,'::1',NULL,'2018-03-15 10:05:05','LOG IN',1,'admin',NULL,NULL,NULL),(402,'::1',NULL,'2018-03-15 11:27:16','LOG OUT',1,'admin',NULL,NULL,NULL),(403,'::1',NULL,'2018-03-19 12:15:44','LOG IN',1,'admin',NULL,NULL,NULL),(404,'::1',NULL,'2018-03-19 12:40:09','LOG OUT',1,'admin',NULL,NULL,NULL),(405,'192.168.0.73',NULL,'2018-03-20 03:56:11','LOG IN',1,'admin',NULL,NULL,NULL),(406,'192.168.0.73',NULL,'2018-03-20 04:00:41','LOG OUT',1,'admin',NULL,NULL,NULL),(407,'::1',NULL,'2018-03-21 09:01:28','LOG IN',1,'admin',NULL,NULL,NULL),(408,'::1',NULL,'2018-03-21 11:39:05','LOG IN',1,'admin',NULL,NULL,NULL),(409,'::1',NULL,'2018-03-22 09:12:02','LOG IN',1,'admin',NULL,NULL,NULL),(410,'::1',NULL,'2018-03-24 08:48:46','LOG IN',1,'admin',NULL,NULL,NULL),(411,'::1',NULL,'2018-03-24 03:24:57','LOG IN',1,'admin',NULL,NULL,NULL),(412,'::1',NULL,'2018-03-24 03:35:08','LOG OUT',1,'admin',NULL,NULL,NULL),(413,'::1',NULL,'2018-03-24 03:35:16','LOG IN',15,'shihab',NULL,NULL,NULL),(414,'::1',NULL,'2018-03-25 09:03:33','LOG IN',1,'admin',NULL,NULL,NULL),(415,'::1',NULL,'2018-03-25 12:39:04','LOG OUT',1,'admin',NULL,NULL,NULL),(416,'::1',NULL,'2018-03-25 12:44:32','LOG IN',1,'admin',NULL,NULL,NULL),(417,'::1',NULL,'2018-03-25 02:58:13','LOG OUT',1,'admin',NULL,NULL,NULL),(418,'::1',NULL,'2018-03-25 02:58:41','LOG IN',1,'admin',NULL,NULL,NULL),(419,'::1',NULL,'2018-03-25 03:02:01','LOG OUT',1,'admin',NULL,NULL,NULL),(420,'::1',NULL,'2018-03-25 04:22:31','LOG IN',1,'admin',NULL,NULL,NULL),(421,'::1',NULL,'2018-03-27 09:42:09','LOG IN',1,'admin',NULL,NULL,NULL),(422,'::1',NULL,'2018-03-27 10:14:18','LOG IN',1,'admin',NULL,NULL,NULL),(423,'::1',NULL,'2018-03-27 11:54:27','LOG OUT',1,'admin',NULL,NULL,NULL),(424,'::1',NULL,'2018-03-27 11:54:40','LOG IN',1,'admin',NULL,NULL,NULL),(425,'::1',NULL,'2018-03-27 02:59:13','LOG IN',1,'admin',NULL,NULL,NULL),(426,'::1',NULL,'2018-03-28 08:48:59','LOG IN',1,'admin',NULL,NULL,NULL),(427,'::1',NULL,'2018-03-28 09:19:23','LOG IN',1,'admin',NULL,NULL,NULL),(428,'::1',NULL,'2018-03-28 12:16:27','LOG IN',1,'admin',NULL,NULL,NULL),(429,'::1',NULL,'2018-03-28 12:19:14','LOG OUT',1,'admin',NULL,NULL,NULL),(430,'::1',NULL,'2018-03-28 12:35:38','LOG IN',1,'admin',NULL,NULL,NULL),(431,'::1',NULL,'2018-03-28 12:58:45','LOG IN',1,'admin',NULL,NULL,NULL),(432,'::1',NULL,'2018-03-28 02:13:12','LOG IN',1,'admin',NULL,NULL,NULL),(433,'::1',NULL,'2018-03-28 03:23:10','LOG IN',1,'admin',NULL,NULL,NULL),(434,'::1',NULL,'2018-03-28 03:53:43','LOG OUT',1,'admin',NULL,NULL,NULL),(435,'::1',NULL,'2018-03-28 03:53:49','LOG IN',18,'foysal',NULL,NULL,NULL),(436,'::1',NULL,'2018-03-28 04:15:01','LOG IN',1,'admin',NULL,NULL,NULL),(437,'::1',NULL,'2018-03-28 04:32:42','LOG OUT',18,'foysal',NULL,NULL,NULL),(438,'::1',NULL,'2018-03-28 04:32:51','LOG IN',15,'shihab',NULL,NULL,NULL),(439,'::1',NULL,'2018-03-28 04:32:59','LOG OUT',15,'shihab',NULL,NULL,NULL),(440,'::1',NULL,'2018-03-28 04:33:04','LOG IN',1,'admin',NULL,NULL,NULL),(441,'::1',NULL,'2018-03-28 04:53:12','LOG OUT',1,'admin',NULL,NULL,NULL),(442,'::1',NULL,'2018-03-28 04:53:17','LOG IN',15,'shihab',NULL,NULL,NULL),(443,'::1',NULL,'2018-03-28 04:53:29','LOG OUT',15,'shihab',NULL,NULL,NULL),(444,'::1',NULL,'2018-03-28 04:53:34','LOG IN',1,'admin',NULL,NULL,NULL),(445,'::1',NULL,'2018-03-28 04:53:57','LOG OUT',1,'admin',NULL,NULL,NULL),(446,'::1',NULL,'2018-03-28 04:54:02','LOG IN',15,'shihab',NULL,NULL,NULL),(447,'::1',NULL,'2018-03-28 04:56:24','LOG OUT',15,'shihab',NULL,NULL,NULL),(448,'::1',NULL,'2018-03-28 05:11:48','LOG IN',1,'admin',NULL,NULL,NULL),(449,'::1',NULL,'2018-03-28 05:12:16','LOG OUT',1,'admin',NULL,NULL,NULL),(450,'::1',NULL,'2018-03-29 09:25:32','LOG IN',1,'admin',NULL,NULL,NULL),(451,'::1',NULL,'2018-03-29 09:31:45','LOG IN',1,'admin',NULL,NULL,NULL),(452,'::1',NULL,'2018-03-29 10:15:12','LOG IN',1,'admin',NULL,NULL,NULL),(453,'::1',NULL,'2018-03-29 02:05:01','LOG OUT',1,'admin',NULL,NULL,NULL),(454,'::1',NULL,'2018-03-29 02:05:10','LOG IN',18,'foysal',NULL,NULL,NULL),(455,'::1',NULL,'2018-03-29 02:05:14','LOG OUT',18,'foysal',NULL,NULL,NULL),(456,'::1',NULL,'2018-03-29 02:05:19','LOG IN',1,'admin',NULL,NULL,NULL),(457,'::1',NULL,'2018-03-29 02:05:53','LOG OUT',1,'admin',NULL,NULL,NULL),(458,'::1',NULL,'2018-03-29 02:06:11','LOG IN',18,'foysal',NULL,NULL,NULL),(459,'::1',NULL,'2018-03-29 02:06:44','LOG OUT',18,'foysal',NULL,NULL,NULL),(460,'::1',NULL,'2018-03-29 02:06:58','LOG IN',18,'foysal',NULL,NULL,NULL),(461,'::1',NULL,'2018-03-29 02:07:01','LOG OUT',18,'foysal',NULL,NULL,NULL),(462,'::1',NULL,'2018-03-29 02:07:12','LOG IN',1,'admin',NULL,NULL,NULL),(463,'::1',NULL,'2018-03-29 05:13:16','LOG OUT',1,'admin',NULL,NULL,NULL),(464,'::1',NULL,'2018-03-29 05:14:33','LOG IN',18,'foysal',NULL,NULL,NULL),(465,'::1',NULL,'2018-03-29 05:35:26','LOG OUT',18,'foysal',NULL,NULL,NULL),(466,'::1',NULL,'2018-03-29 05:35:36','LOG IN',18,'foysal',NULL,NULL,NULL),(467,'::1',NULL,'2018-03-29 05:35:42','LOG OUT',18,'foysal',NULL,NULL,NULL),(468,'::1',NULL,'2018-03-29 05:35:53','LOG IN',18,'foysal',NULL,NULL,NULL),(469,'::1',NULL,'2018-03-29 05:43:51','LOG OUT',18,'foysal',NULL,NULL,NULL),(470,'::1',NULL,'2018-03-29 05:43:57','LOG IN',1,'admin',NULL,NULL,NULL),(471,'::1',NULL,'2018-03-29 05:44:31','LOG OUT',1,'admin',NULL,NULL,NULL),(472,'::1',NULL,'2018-03-29 05:44:48','LOG IN',18,'foysal',NULL,NULL,NULL),(473,'::1',NULL,'2018-03-29 05:45:58','LOG OUT',18,'foysal',NULL,NULL,NULL),(474,'::1',NULL,'2018-03-29 05:46:01','LOG IN',1,'admin',NULL,NULL,NULL),(475,'::1',NULL,'2018-03-29 05:46:52','LOG OUT',1,'admin',NULL,NULL,NULL),(476,'::1',NULL,'2018-03-29 05:47:26','LOG IN',1,'admin',NULL,NULL,NULL),(477,'::1',NULL,'2018-03-29 05:47:28','LOG OUT',1,'admin',NULL,NULL,NULL),(478,'::1',NULL,'2018-03-31 08:53:01','LOG IN',1,'admin',NULL,NULL,NULL),(479,'::1',NULL,'2018-03-31 09:27:37','LOG IN',1,'admin',NULL,NULL,NULL),(480,'::1',NULL,'2018-03-31 09:39:09','LOG IN',1,'admin',NULL,NULL,NULL),(481,'::1',NULL,'2018-03-31 12:43:17','LOG OUT',1,'admin',NULL,NULL,NULL),(482,'::1',NULL,'2018-03-31 12:50:38','LOG IN',1,'admin',NULL,NULL,NULL),(483,'::1',NULL,'2018-03-31 12:51:36','LOG OUT',1,'admin',NULL,NULL,NULL),(484,'::1',NULL,'2018-03-31 12:59:25','LOG IN',18,'foysal',NULL,NULL,NULL),(485,'::1',NULL,'2018-03-31 01:59:43','LOG OUT',18,'foysal',NULL,NULL,NULL),(486,'::1',NULL,'2018-03-31 01:59:55','LOG IN',1,'admin',NULL,NULL,NULL),(487,'::1',NULL,'2018-03-31 02:17:23','LOG IN',1,'admin',NULL,NULL,NULL),(488,'::1',NULL,'2018-03-31 02:23:49','LOG OUT',1,'admin',NULL,NULL,NULL),(489,'::1',NULL,'2018-03-31 02:56:41','LOG IN',1,'admin',NULL,NULL,NULL),(490,'::1',NULL,'2018-03-31 03:02:32','LOG OUT',1,'admin',NULL,NULL,NULL),(491,'::1',NULL,'2018-03-31 03:02:38','LOG IN',1,'admin',NULL,NULL,NULL),(492,'::1',NULL,'2018-03-31 03:02:46','LOG OUT',1,'admin',NULL,NULL,NULL),(493,'::1',NULL,'2018-03-31 03:04:32','LOG IN',1,'admin',NULL,NULL,NULL),(494,'::1',NULL,'2018-03-31 03:05:00','LOG IN',1,'admin',NULL,NULL,NULL),(495,'::1',NULL,'2018-03-31 03:05:25','LOG IN',1,'admin',NULL,NULL,NULL),(496,'::1',NULL,'2018-03-31 03:05:28','LOG OUT',1,'admin',NULL,NULL,NULL),(497,'::1',NULL,'2018-03-31 03:05:31','LOG IN',1,'admin',NULL,NULL,NULL),(498,'::1',NULL,'2018-03-31 03:05:49','LOG OUT',1,'admin',NULL,NULL,NULL),(499,'::1',NULL,'2018-03-31 03:05:55','LOG IN',1,'admin',NULL,NULL,NULL),(500,'::1',NULL,'2018-03-31 03:07:37','LOG OUT',1,'admin',NULL,NULL,NULL),(501,'::1',NULL,'2018-03-31 03:19:53','LOG IN',1,'admin',NULL,NULL,NULL),(502,'::1',NULL,'2018-03-31 03:26:36','LOG OUT',1,'admin',NULL,NULL,NULL),(503,'::1',NULL,'2018-03-31 03:37:06','LOG IN',1,'admin',NULL,NULL,NULL),(504,'::1',NULL,'2018-03-31 03:37:45','LOG OUT',1,'admin',NULL,NULL,NULL),(505,'::1',NULL,'2018-03-31 03:37:48','LOG IN',1,'admin',NULL,NULL,NULL),(506,'::1',NULL,'2018-03-31 03:39:33','LOG OUT',1,'admin',NULL,NULL,NULL),(507,'::1',NULL,'2018-03-31 03:48:29','LOG IN',1,'admin',NULL,NULL,NULL),(508,'::1',NULL,'2018-03-31 03:49:30','LOG OUT',1,'admin',NULL,NULL,NULL),(509,'::1',NULL,'2018-03-31 03:49:34','LOG IN',1,'admin',NULL,NULL,NULL),(510,'::1',NULL,'2018-03-31 03:50:00','LOG OUT',1,'admin',NULL,NULL,NULL),(511,'::1',NULL,'2018-03-31 03:50:03','LOG IN',1,'admin',NULL,NULL,NULL),(512,'::1',NULL,'2018-03-31 03:50:16','LOG OUT',1,'admin',NULL,NULL,NULL),(513,'::1',NULL,'2018-03-31 03:50:20','LOG IN',1,'admin',NULL,NULL,NULL),(514,'::1',NULL,'2018-03-31 03:52:30','LOG OUT',1,'admin',NULL,NULL,NULL),(515,'::1',NULL,'2018-03-31 03:52:33','LOG IN',1,'admin',NULL,NULL,NULL),(516,'::1',NULL,'2018-03-31 03:53:03','LOG OUT',1,'admin',NULL,NULL,NULL),(517,'::1',NULL,'2018-03-31 03:53:06','LOG IN',1,'admin',NULL,NULL,NULL),(518,'::1',NULL,'2018-03-31 03:54:50','LOG OUT',1,'admin',NULL,NULL,NULL),(519,'::1',NULL,'2018-03-31 03:54:53','LOG IN',1,'admin',NULL,NULL,NULL),(520,'::1',NULL,'2018-03-31 03:57:09','LOG OUT',1,'admin',NULL,NULL,NULL),(521,'::1',NULL,'2018-03-31 04:01:49','LOG IN',1,'admin',NULL,NULL,NULL),(522,'::1',NULL,'2018-03-31 05:16:35','LOG OUT',1,'admin',NULL,NULL,NULL),(523,'::1',NULL,'2018-03-31 05:20:10','LOG IN',1,'admin',NULL,NULL,NULL),(524,'::1',NULL,'2018-03-31 05:20:13','LOG OUT',1,'admin',NULL,NULL,NULL),(525,'::1',NULL,'2018-03-31 05:22:48','LOG IN',18,'foysal',NULL,NULL,NULL),(526,'::1',NULL,'2018-03-31 05:23:01','LOG OUT',18,'foysal',NULL,NULL,NULL),(527,'::1',NULL,'2018-03-31 05:23:06','LOG IN',1,'admin',NULL,NULL,NULL),(528,'::1',NULL,'2018-03-31 05:23:34','LOG OUT',1,'admin',NULL,NULL,NULL),(529,'::1',NULL,'2018-03-31 05:25:03','LOG IN',1,'admin',NULL,NULL,NULL),(530,'::1',NULL,'2018-03-31 05:25:37','LOG OUT',1,'admin',NULL,NULL,NULL),(531,'::1',NULL,'2018-03-31 05:25:41','LOG IN',1,'admin',NULL,NULL,NULL),(532,'::1',NULL,'2018-03-31 05:27:49','LOG OUT',1,'admin',NULL,NULL,NULL),(533,'::1',NULL,'2018-03-31 05:27:53','LOG IN',18,'foysal',NULL,NULL,NULL),(534,'::1',NULL,'2018-03-31 05:28:03','LOG OUT',18,'foysal',NULL,NULL,NULL),(535,'::1',NULL,'2018-03-31 05:29:00','LOG IN',1,'admin',NULL,NULL,NULL),(536,'::1',NULL,'2018-03-31 05:51:01','LOG OUT',1,'admin',NULL,NULL,NULL),(537,'::1',NULL,'2018-03-31 05:51:04','LOG IN',1,'admin',NULL,NULL,NULL),(538,'::1',NULL,'2018-04-01 08:49:39','LOG IN',1,'admin',NULL,NULL,NULL),(539,'::1',NULL,'2018-04-01 09:01:25','LOG IN',1,'admin',NULL,NULL,NULL),(540,'::1',NULL,'2018-04-01 09:41:57','LOG IN',1,'admin',NULL,NULL,NULL),(541,'::1',NULL,'2018-04-01 12:39:23','LOG IN',1,'admin',NULL,NULL,NULL),(542,'127.0.0.1',NULL,'2018-04-01 12:40:12','LOG IN',1,'admin',NULL,NULL,NULL),(543,'127.0.0.1',NULL,'2018-04-01 12:41:18','LOG OUT',1,'admin',NULL,NULL,NULL),(544,'127.0.0.1',NULL,'2018-04-01 12:41:41','LOG IN',1,'admin',NULL,NULL,NULL),(545,'127.0.0.1',NULL,'2018-04-01 12:41:59','LOG OUT',1,'admin',NULL,NULL,NULL),(546,'127.0.0.1',NULL,'2018-04-01 12:42:50','LOG IN',1,'admin',NULL,NULL,NULL),(547,'127.0.0.1',NULL,'2018-04-01 12:43:07','LOG OUT',1,'admin',NULL,NULL,NULL),(548,'127.0.0.1',NULL,'2018-04-01 12:43:20','LOG IN',18,'foysal',NULL,NULL,NULL),(549,'127.0.0.1',NULL,'2018-04-01 12:43:40','LOG OUT',18,'foysal',NULL,NULL,NULL),(550,'127.0.0.1',NULL,'2018-04-01 12:43:45','LOG IN',1,'admin',NULL,NULL,NULL),(551,'127.0.0.1',NULL,'2018-04-01 12:44:02','LOG OUT',1,'admin',NULL,NULL,NULL),(552,'127.0.0.1',NULL,'2018-04-01 12:44:15','LOG IN',1,'admin',NULL,NULL,NULL),(553,'127.0.0.1',NULL,'2018-04-01 12:44:35','LOG OUT',1,'admin',NULL,NULL,NULL),(554,'127.0.0.1',NULL,'2018-04-01 12:46:12','LOG IN',18,'foysal',NULL,NULL,NULL),(555,'127.0.0.1',NULL,'2018-04-01 12:46:22','LOG OUT',18,'foysal',NULL,NULL,NULL),(556,'127.0.0.1',NULL,'2018-04-01 12:47:09','LOG IN',1,'admin',NULL,NULL,NULL),(557,'127.0.0.1',NULL,'2018-04-01 12:47:54','LOG OUT',1,'admin',NULL,NULL,NULL),(558,'::1',NULL,'2018-04-01 02:52:29','LOG IN',1,'admin',NULL,NULL,NULL),(559,'::1',NULL,'2018-04-01 02:52:35','LOG OUT',1,'admin',NULL,NULL,NULL),(560,'::1',NULL,'2018-04-01 02:53:20','LOG IN',18,'foysal',NULL,NULL,NULL),(561,'::1',NULL,'2018-04-01 02:53:35','LOG OUT',18,'foysal',NULL,NULL,NULL),(562,'::1',NULL,'2018-04-01 02:54:02','LOG IN',18,'foysal',NULL,NULL,NULL),(563,'::1',NULL,'2018-04-01 02:55:28','LOG OUT',18,'foysal',NULL,NULL,NULL),(564,'::1',NULL,'2018-04-01 02:55:34','LOG IN',1,'admin',NULL,NULL,NULL),(565,'::1',NULL,'2018-04-01 03:05:06','LOG OUT',1,'admin',NULL,NULL,NULL),(566,'::1',NULL,'2018-04-01 03:05:19','LOG IN',1,'admin',NULL,NULL,NULL),(567,'::1',NULL,'2018-04-01 03:13:56','LOG OUT',1,'admin',NULL,NULL,NULL),(568,'::1',NULL,'2018-04-01 03:15:31','LOG IN',18,'foysal',NULL,NULL,NULL),(569,'::1',NULL,'2018-04-01 03:16:03','LOG OUT',18,'foysal',NULL,NULL,NULL),(570,'::1',NULL,'2018-04-01 03:16:24','LOG IN',18,'foysal',NULL,NULL,NULL),(571,'::1',NULL,'2018-04-01 04:06:17','LOG IN',1,'admin',NULL,NULL,NULL),(572,'::1',NULL,'2018-04-01 05:44:08','LOG OUT',1,'admin',NULL,NULL,NULL),(573,'::1',NULL,'2018-04-01 05:55:51','LOG IN',1,'admin',NULL,NULL,NULL),(574,'::1',NULL,'2018-04-01 05:57:15','LOG OUT',1,'admin',NULL,NULL,NULL),(575,'::1',NULL,'2018-04-02 09:04:27','LOG IN',1,'admin',NULL,NULL,NULL),(576,'::1',NULL,'2018-04-02 09:12:24','LOG IN',1,'admin',NULL,NULL,NULL),(577,'::1',NULL,'2018-04-02 09:27:00','LOG IN',1,'admin',NULL,NULL,NULL),(578,'::1',NULL,'2018-04-02 09:52:25','LOG OUT',1,'admin',NULL,NULL,NULL),(579,'::1',NULL,'2018-04-02 02:07:23','LOG IN',1,'admin',NULL,NULL,NULL),(580,'::1',NULL,'2018-04-02 04:50:32','LOG OUT',1,'admin',NULL,NULL,NULL),(581,'::1',NULL,'2018-04-02 04:50:39','LOG IN',18,'foysal',NULL,NULL,NULL),(582,'::1',NULL,'2018-04-02 04:50:50','LOG OUT',18,'foysal',NULL,NULL,NULL),(583,'::1',NULL,'2018-04-02 04:50:55','LOG IN',13,'rakib',NULL,NULL,NULL),(584,'::1',NULL,'2018-04-02 05:18:18','LOG OUT',13,'rakib',NULL,NULL,NULL),(585,'::1',NULL,'2018-04-02 05:18:20','LOG IN',1,'admin',NULL,NULL,NULL),(586,'::1',NULL,'2018-04-03 09:09:15','LOG IN',1,'admin',NULL,NULL,NULL),(587,'::1',NULL,'2018-04-03 09:20:29','LOG IN',1,'admin',NULL,NULL,NULL),(588,'::1',NULL,'2018-04-03 09:25:18','LOG OUT',1,'admin',NULL,NULL,NULL),(589,'::1',NULL,'2018-04-03 09:25:27','LOG IN',18,'foysal',NULL,NULL,NULL),(590,'::1',NULL,'2018-04-03 09:25:46','LOG OUT',18,'foysal',NULL,NULL,NULL),(591,'::1',NULL,'2018-04-03 09:25:51','LOG IN',1,'admin',NULL,NULL,NULL),(592,'::1',NULL,'2018-04-03 09:32:14','LOG IN',1,'admin',NULL,NULL,NULL),(593,'::1',NULL,'2018-04-03 09:51:34','LOG OUT',1,'admin',NULL,NULL,NULL),(594,'::1',NULL,'2018-04-03 09:51:36','LOG IN',1,'admin',NULL,NULL,NULL),(595,'::1',NULL,'2018-04-03 09:53:09','LOG OUT',1,'admin',NULL,NULL,NULL),(596,'::1',NULL,'2018-04-03 09:53:15','LOG IN',1,'admin',NULL,NULL,NULL),(597,'::1',NULL,'2018-04-03 09:56:15','LOG OUT',1,'admin',NULL,NULL,NULL),(598,'::1',NULL,'2018-04-03 09:56:21','LOG IN',16,'akhi',NULL,NULL,NULL),(599,'::1',NULL,'2018-04-03 11:42:41','LOG OUT',16,'akhi',NULL,NULL,NULL),(600,'::1',NULL,'2018-04-03 12:42:43','LOG IN',1,'admin',NULL,NULL,NULL),(601,'::1',NULL,'2018-04-03 02:43:35','LOG IN',1,'admin',NULL,NULL,NULL),(602,'::1',NULL,'2018-04-04 09:08:49','LOG IN',1,'admin',NULL,NULL,NULL),(603,'::1',NULL,'2018-04-04 09:27:22','LOG IN',1,'admin',NULL,NULL,NULL),(604,'::1',NULL,'2018-04-04 09:28:28','LOG IN',1,'admin',NULL,NULL,NULL),(605,'::1',NULL,'2018-04-04 12:44:51','LOG OUT',1,'admin',NULL,NULL,NULL),(606,'::1',NULL,'2018-04-04 12:48:00','LOG IN',1,'admin',NULL,NULL,NULL),(607,'::1',NULL,'2018-04-04 12:49:28','LOG OUT',1,'admin',NULL,NULL,NULL),(608,'::1',NULL,'2018-04-04 12:49:33','LOG IN',1,'admin',NULL,NULL,NULL),(609,'::1',NULL,'2018-04-04 12:54:24','LOG OUT',1,'admin',NULL,NULL,NULL),(610,'::1',NULL,'2018-04-04 12:54:49','LOG IN',1,'admin',NULL,NULL,NULL),(611,'::1',NULL,'2018-04-04 12:56:07','LOG OUT',1,'admin',NULL,NULL,NULL),(612,'::1',NULL,'2018-04-04 12:56:12','LOG IN',1,'admin',NULL,NULL,NULL),(613,'::1',NULL,'2018-04-04 02:03:28','LOG OUT',1,'admin',NULL,NULL,NULL),(614,'::1',NULL,'2018-04-04 02:03:33','LOG IN',1,'admin',NULL,NULL,NULL),(615,'::1',NULL,'2018-04-04 05:13:53','LOG IN',1,'admin',NULL,NULL,NULL),(616,'::1',NULL,'2018-04-04 05:14:39','LOG OUT',1,'admin',NULL,NULL,NULL),(617,'::1',NULL,'2018-04-04 05:14:45','LOG IN',24,'rakib',NULL,NULL,NULL),(618,'::1',NULL,'2018-04-04 05:14:49','LOG OUT',24,'rakib',NULL,NULL,NULL),(619,'::1',NULL,'2018-04-04 05:14:56','LOG IN',25,'foysal',NULL,NULL,NULL),(620,'::1',NULL,'2018-04-04 05:14:59','LOG OUT',25,'foysal',NULL,NULL,NULL),(621,'::1',NULL,'2018-04-04 05:15:08','LOG IN',1,'admin',NULL,NULL,NULL),(622,'::1',NULL,'2018-04-04 05:21:28','LOG OUT',1,'admin',NULL,NULL,NULL),(623,'::1',NULL,'2018-04-04 05:21:37','LOG IN',26,'shihab',NULL,NULL,NULL),(624,'::1',NULL,'2018-04-04 05:38:53','LOG OUT',26,'shihab',NULL,NULL,NULL),(625,'::1',NULL,'2018-04-04 05:38:59','LOG IN',1,'admin',NULL,NULL,NULL),(626,'::1',NULL,'2018-04-04 05:55:57','LOG OUT',1,'admin',NULL,NULL,NULL),(627,'::1',NULL,'2018-04-04 05:56:04','LOG IN',1,'admin',NULL,NULL,NULL),(628,'::1',NULL,'2018-04-04 06:16:02','LOG OUT',1,'admin',NULL,NULL,NULL),(629,'::1',NULL,'2018-04-05 09:17:17','LOG IN',1,'admin',NULL,NULL,NULL),(630,'::1',NULL,'2018-04-05 09:31:06','LOG IN',1,'admin',NULL,NULL,NULL),(631,'::1',NULL,'2018-04-05 11:55:16','LOG IN',1,'admin',NULL,NULL,NULL),(632,'::1',NULL,'2018-04-05 02:38:46','LOG IN',1,'admin',NULL,NULL,NULL),(633,'::1',NULL,'2018-04-05 04:32:43','LOG IN',1,'admin',NULL,NULL,NULL),(634,'::1',NULL,'2018-04-05 04:33:54','LOG OUT',1,'admin',NULL,NULL,NULL),(635,'::1',NULL,'2018-04-07 09:09:43','LOG IN',1,'admin',NULL,NULL,NULL),(636,'::1',NULL,'2018-04-07 09:17:42','LOG IN',1,'admin',NULL,NULL,NULL),(637,'::1',NULL,'2018-04-07 09:47:10','LOG IN',1,'admin',NULL,NULL,NULL),(638,'::1',NULL,'2018-04-07 12:06:26','LOG IN',1,'admin',NULL,NULL,NULL),(639,'::1',NULL,'2018-04-07 03:09:46','LOG IN',1,'admin',NULL,NULL,NULL),(640,'127.0.0.1',NULL,'2018-04-07 03:40:39','LOG IN',1,'admin',NULL,NULL,NULL),(641,'127.0.0.1',NULL,'2018-04-07 04:12:57','LOG IN',1,'admin',NULL,NULL,NULL),(642,'127.0.0.1',NULL,'2018-04-07 04:40:08','LOG OUT',1,'admin',NULL,NULL,NULL),(643,'127.0.0.1',NULL,'2018-04-07 04:41:44','LOG IN',1,'admin',NULL,NULL,NULL),(644,'::1',NULL,'2018-04-08 09:14:28','LOG IN',1,'admin',NULL,NULL,NULL),(645,'127.0.0.1',NULL,'2018-04-08 09:36:49','LOG IN',1,'admin',NULL,NULL,NULL),(646,'::1',NULL,'2018-04-08 09:44:51','LOG IN',1,'admin',NULL,NULL,NULL),(647,'127.0.0.1',NULL,'2018-04-08 11:37:56','LOG IN',1,'admin',NULL,NULL,NULL),(648,'::1',NULL,'2018-04-08 11:42:47','LOG OUT',1,'admin',NULL,NULL,NULL),(649,'::1',NULL,'2018-04-08 11:42:53','LOG IN',28,'coe',NULL,NULL,NULL),(650,'::1',NULL,'2018-04-08 11:42:58','LOG OUT',28,'coe',NULL,NULL,NULL),(651,'::1',NULL,'2018-04-08 11:43:02','LOG IN',1,'admin',NULL,NULL,NULL),(652,'::1',NULL,'2018-04-08 11:45:31','LOG OUT',1,'admin',NULL,NULL,NULL),(653,'::1',NULL,'2018-04-08 11:45:37','LOG IN',28,'coe',NULL,NULL,NULL),(654,'::1',NULL,'2018-04-08 12:03:25','LOG IN',1,'admin',NULL,NULL,NULL),(655,'::1',NULL,'2018-04-09 01:09:57','LOG IN',1,'admin',NULL,NULL,NULL),(656,'::1',NULL,'2018-04-08 05:43:56','LOG IN',1,'admin',NULL,NULL,NULL),(657,'::1',NULL,'2018-04-08 05:54:09','LOG OUT',1,'admin',NULL,NULL,NULL),(658,'::1',NULL,'2018-04-08 05:57:03','LOG OUT',1,'admin',NULL,NULL,NULL),(659,'::1',NULL,'2018-04-09 09:19:00','LOG IN',1,'admin',NULL,NULL,NULL),(660,'::1',NULL,'2018-04-09 10:26:55','LOG IN',1,'admin',NULL,NULL,NULL),(661,'::1',NULL,'2018-04-09 09:34:50','LOG IN',1,'admin',NULL,NULL,NULL),(662,'127.0.0.1',NULL,'2018-04-09 09:47:37','LOG IN',1,'admin',NULL,NULL,NULL),(663,'::1',NULL,'2018-04-09 09:57:22','LOG OUT',1,'admin',NULL,NULL,NULL),(664,'::1',NULL,'2018-04-09 09:57:28','LOG IN',26,'shihab',NULL,NULL,NULL),(665,'::1',NULL,'2018-04-09 10:06:18','LOG OUT',26,'shihab',NULL,NULL,NULL),(666,'::1',NULL,'2018-04-09 10:06:23','LOG IN',1,'admin',NULL,NULL,NULL),(667,'::1',NULL,'2018-04-09 11:16:22','LOG OUT',1,'admin',NULL,NULL,NULL),(668,'::1',NULL,'2018-04-09 11:16:29','LOG IN',26,'shihab',NULL,NULL,NULL),(669,'::1',NULL,'2018-04-09 11:31:53','LOG IN',1,'admin',NULL,NULL,NULL),(670,'::1',NULL,'2018-04-09 10:32:12','LOG IN',1,'admin',NULL,NULL,NULL),(671,'::1',NULL,'2018-04-10 12:45:00','LOG OUT',1,'admin',NULL,NULL,NULL),(672,'::1',NULL,'2018-04-09 11:57:07','LOG IN',1,'admin',NULL,NULL,NULL),(673,'::1',NULL,'2018-04-10 01:40:09','LOG IN',1,'admin',NULL,NULL,NULL),(674,'::1',NULL,'2018-04-09 12:52:21','LOG OUT',1,'admin',NULL,NULL,NULL),(675,'::1',NULL,'2018-04-09 12:52:27','LOG IN',1,'admin',NULL,NULL,NULL),(676,'::1',NULL,'2018-04-09 12:53:35','LOG OUT',1,'admin',NULL,NULL,NULL),(677,'::1',NULL,'2018-04-09 12:53:42','LOG IN',29,'inventory',NULL,NULL,NULL),(678,'::1',NULL,'2018-04-09 12:53:47','LOG OUT',29,'inventory',NULL,NULL,NULL),(679,'::1',NULL,'2018-04-09 12:53:51','LOG IN',1,'admin',NULL,NULL,NULL),(680,'::1',NULL,'2018-04-09 12:57:17','LOG OUT',1,'admin',NULL,NULL,NULL),(681,'::1',NULL,'2018-04-09 12:57:32','LOG IN',29,'inventory',NULL,NULL,NULL),(682,'::1',NULL,'2018-04-09 12:57:39','LOG OUT',29,'inventory',NULL,NULL,NULL),(683,'::1',NULL,'2018-04-09 12:57:47','LOG IN',1,'admin',NULL,NULL,NULL),(684,'::1',NULL,'2018-04-09 12:59:50','LOG OUT',1,'admin',NULL,NULL,NULL),(685,'::1',NULL,'2018-04-09 01:00:00','LOG IN',29,'inventory',NULL,NULL,NULL),(686,'::1',NULL,'2018-04-09 01:00:33','LOG OUT',29,'inventory',NULL,NULL,NULL),(687,'::1',NULL,'2018-04-09 01:00:39','LOG IN',25,'foysal',NULL,NULL,NULL),(688,'::1',NULL,'2018-04-09 01:00:45','LOG OUT',25,'foysal',NULL,NULL,NULL),(689,'::1',NULL,'2018-04-09 01:00:52','LOG IN',24,'rakib',NULL,NULL,NULL),(690,'::1',NULL,'2018-04-09 01:00:55','LOG OUT',24,'rakib',NULL,NULL,NULL),(691,'::1',NULL,'2018-04-09 01:01:00','LOG IN',1,'admin',NULL,NULL,NULL),(692,'::1',NULL,'2018-04-09 01:04:03','LOG OUT',1,'admin',NULL,NULL,NULL),(693,'::1',NULL,'2018-04-09 01:04:16','LOG IN',25,'foysal',NULL,NULL,NULL),(694,'::1',NULL,'2018-04-09 01:05:22','LOG OUT',25,'foysal',NULL,NULL,NULL),(695,'::1',NULL,'2018-04-09 01:05:30','LOG IN',24,'rakib',NULL,NULL,NULL),(696,'::1',NULL,'2018-04-09 01:05:59','LOG OUT',24,'rakib',NULL,NULL,NULL),(697,'::1',NULL,'2018-04-09 01:06:07','LOG IN',29,'inventory',NULL,NULL,NULL),(698,'::1',NULL,'2018-04-09 01:07:17','LOG OUT',29,'inventory',NULL,NULL,NULL),(699,'::1',NULL,'2018-04-09 01:07:30','LOG IN',29,'inventory',NULL,NULL,NULL),(700,'::1',NULL,'2018-04-09 02:24:22','LOG OUT',29,'inventory',NULL,NULL,NULL),(701,'::1',NULL,'2018-04-09 02:25:45','LOG IN',25,'foysal',NULL,NULL,NULL),(702,'::1',NULL,'2018-04-09 02:26:51','LOG OUT',25,'foysal',NULL,NULL,NULL),(703,'::1',NULL,'2018-04-09 02:27:49','LOG IN',29,'inventory',NULL,NULL,NULL),(704,'::1',NULL,'2018-04-10 03:28:11','LOG IN',1,'admin',NULL,NULL,NULL),(705,'::1',NULL,'2018-04-09 03:03:20','LOG IN',1,'admin',NULL,NULL,NULL),(706,'::1',NULL,'2018-04-09 03:15:57','LOG OUT',29,'inventory',NULL,NULL,NULL),(707,'::1',NULL,'2018-04-09 03:16:02','LOG IN',1,'admin',NULL,NULL,NULL),(708,'127.0.0.1',NULL,'2018-04-09 04:20:18','LOG OUT',1,'admin',NULL,NULL,NULL),(709,'127.0.0.1',NULL,'2018-04-09 04:20:25','LOG IN',25,'foysal',NULL,NULL,NULL),(710,'127.0.0.1',NULL,'2018-04-09 04:20:40','LOG OUT',25,'foysal',NULL,NULL,NULL),(711,'127.0.0.1',NULL,'2018-04-09 04:22:49','LOG IN',24,'rakib',NULL,NULL,NULL),(712,'127.0.0.1',NULL,'2018-04-09 05:00:02','LOG OUT',24,'rakib',NULL,NULL,NULL),(713,'127.0.0.1',NULL,'2018-04-09 05:00:10','LOG IN',24,'rakib',NULL,NULL,NULL),(714,'127.0.0.1',NULL,'2018-04-09 05:00:24','LOG OUT',24,'rakib',NULL,NULL,NULL),(715,'127.0.0.1',NULL,'2018-04-09 05:00:31','LOG IN',25,'foysal',NULL,NULL,NULL),(716,'127.0.0.1',NULL,'2018-04-09 05:03:42','LOG OUT',25,'foysal',NULL,NULL,NULL),(717,'127.0.0.1',NULL,'2018-04-09 05:03:49','LOG IN',24,'rakib',NULL,NULL,NULL),(718,'::1',NULL,'2018-04-10 06:04:07','LOG IN',1,'admin',NULL,NULL,NULL),(719,'127.0.0.1',NULL,'2018-04-09 05:14:03','LOG OUT',24,'rakib',NULL,NULL,NULL),(720,'127.0.0.1',NULL,'2018-04-09 05:14:11','LOG IN',25,'foysal',NULL,NULL,NULL),(721,'127.0.0.1',NULL,'2018-04-09 05:14:32','LOG OUT',25,'foysal',NULL,NULL,NULL),(722,'127.0.0.1',NULL,'2018-04-09 05:14:45','LOG IN',1,'admin',NULL,NULL,NULL),(723,'127.0.0.1',NULL,'2018-04-09 05:21:43','LOG OUT',1,'admin',NULL,NULL,NULL),(724,'127.0.0.1',NULL,'2018-04-09 05:21:48','LOG IN',1,'admin',NULL,NULL,NULL),(725,'127.0.0.1',NULL,'2018-04-09 05:24:12','LOG OUT',1,'admin',NULL,NULL,NULL),(726,'127.0.0.1',NULL,'2018-04-09 05:24:19','LOG IN',24,'rakib',NULL,NULL,NULL),(727,'127.0.0.1',NULL,'2018-04-09 05:24:29','LOG OUT',24,'rakib',NULL,NULL,NULL),(728,'127.0.0.1',NULL,'2018-04-09 05:24:36','LOG IN',25,'foysal',NULL,NULL,NULL),(729,'127.0.0.1',NULL,'2018-04-09 05:24:43','LOG OUT',25,'foysal',NULL,NULL,NULL),(730,'127.0.0.1',NULL,'2018-04-09 05:24:50','LOG IN',1,'admin',NULL,NULL,NULL),(731,'127.0.0.1',NULL,'2018-04-09 05:30:52','LOG OUT',1,'admin',NULL,NULL,NULL),(732,'127.0.0.1',NULL,'2018-04-09 05:30:59','LOG IN',25,'foysal',NULL,NULL,NULL),(733,'127.0.0.1',NULL,'2018-04-09 05:31:06','LOG OUT',25,'foysal',NULL,NULL,NULL),(734,'127.0.0.1',NULL,'2018-04-09 05:31:13','LOG IN',24,'rakib',NULL,NULL,NULL),(735,'127.0.0.1',NULL,'2018-04-09 05:34:07','LOG OUT',24,'rakib',NULL,NULL,NULL),(736,'127.0.0.1',NULL,'2018-04-09 05:34:17','LOG IN',25,'foysal',NULL,NULL,NULL),(737,'127.0.0.1',NULL,'2018-04-09 05:36:03','LOG OUT',25,'foysal',NULL,NULL,NULL),(738,'127.0.0.1',NULL,'2018-04-09 05:36:10','LOG IN',1,'admin',NULL,NULL,NULL),(739,'::1',NULL,'2018-04-09 05:34:18','LOG OUT',1,'admin',NULL,NULL,NULL),(740,'::1',NULL,'2018-04-09 05:49:46','LOG IN',1,'admin',NULL,NULL,NULL),(741,'::1',NULL,'2018-04-09 05:51:57','LOG OUT',1,'admin',NULL,NULL,NULL),(742,'::1',NULL,'2018-04-10 10:08:40','LOG IN',1,'admin',NULL,NULL,NULL),(743,'::1',NULL,'2018-04-10 10:10:17','LOG OUT',1,'admin',NULL,NULL,NULL),(744,'::1',NULL,'2018-04-10 10:10:24','LOG IN',26,'shihab',NULL,NULL,NULL),(745,'::1',NULL,'2018-04-10 09:16:27','LOG IN',1,'admin',NULL,NULL,NULL),(746,'::1',NULL,'2018-04-10 09:26:19','LOG IN',26,'shihab',NULL,NULL,NULL),(747,'::1',NULL,'2018-04-10 09:26:04','LOG OUT',1,'admin',NULL,NULL,NULL),(748,'127.0.0.1',NULL,'2018-04-10 09:31:04','LOG IN',1,'admin',NULL,NULL,NULL),(749,'::1',NULL,'2018-04-10 09:31:34','LOG OUT',26,'shihab',NULL,NULL,NULL),(750,'::1',NULL,'2018-04-10 09:31:50','LOG IN',1,'admin',NULL,NULL,NULL),(751,'::1',NULL,'2018-04-10 09:32:05','LOG OUT',1,'admin',NULL,NULL,NULL),(752,'::1',NULL,'2018-04-10 09:30:58','LOG IN',1,'admin',NULL,NULL,NULL),(753,'::1',NULL,'2018-04-10 09:31:19','LOG OUT',1,'admin',NULL,NULL,NULL),(754,'::1',NULL,'2018-04-10 09:41:05','LOG IN',1,'admin',NULL,NULL,NULL),(755,'::1',NULL,'2018-04-10 09:47:07','LOG OUT',1,'admin',NULL,NULL,NULL),(756,'::1',NULL,'2018-04-10 09:49:57','LOG IN',1,'admin',NULL,NULL,NULL),(757,'::1',NULL,'2018-04-10 09:50:01','LOG OUT',1,'admin',NULL,NULL,NULL),(758,'::1',NULL,'2018-04-10 09:59:48','LOG IN',1,'admin',NULL,NULL,NULL),(759,'::1',NULL,'2018-04-10 10:00:20','LOG OUT',1,'admin',NULL,NULL,NULL),(760,'::1',NULL,'2018-04-10 10:00:49','LOG IN',1,'admin',NULL,NULL,NULL),(761,'::1',NULL,'2018-04-10 10:01:08','LOG OUT',1,'admin',NULL,NULL,NULL),(762,'::1',NULL,'2018-04-10 10:02:54','LOG IN',1,'admin',NULL,NULL,NULL),(763,'::1',NULL,'2018-04-10 10:26:04','LOG IN',1,'admin',NULL,NULL,NULL),(764,'::1',NULL,'2018-04-10 11:32:28','LOG OUT',1,'admin',NULL,NULL,NULL),(765,'::1',NULL,'2018-04-10 11:32:35','LOG IN',24,'rakib',NULL,NULL,NULL),(766,'::1',NULL,'2018-04-10 11:40:23','LOG IN',1,'admin',NULL,NULL,NULL),(767,'::1',NULL,'2018-04-10 11:41:18','LOG OUT',1,'admin',NULL,NULL,NULL),(768,'::1',NULL,'2018-04-10 11:46:50','LOG OUT',24,'rakib',NULL,NULL,NULL),(769,'::1',NULL,'2018-04-10 11:46:57','LOG IN',1,'admin',NULL,NULL,NULL),(770,'::1',NULL,'2018-04-10 12:01:17','LOG OUT',1,'admin',NULL,NULL,NULL),(771,'::1',NULL,'2018-04-10 12:01:22','LOG IN',26,'shihab',NULL,NULL,NULL),(772,'::1',NULL,'2018-04-10 12:02:12','LOG OUT',26,'shihab',NULL,NULL,NULL),(773,'::1',NULL,'2018-04-10 12:02:18','LOG IN',1,'admin',NULL,NULL,NULL),(774,'::1',NULL,'2018-04-11 01:13:17','LOG IN',1,'admin',NULL,NULL,NULL),(775,'::1',NULL,'2018-04-10 12:42:48','LOG OUT',1,'admin',NULL,NULL,NULL),(776,'::1',NULL,'2018-04-10 12:58:05','LOG IN',1,'admin',NULL,NULL,NULL),(777,'::1',NULL,'2018-04-10 02:19:10','LOG OUT',1,'admin',NULL,NULL,NULL),(778,'::1',NULL,'2018-04-10 02:19:15','LOG IN',1,'admin',NULL,NULL,NULL),(779,'::1',NULL,'2018-04-10 02:19:17','LOG OUT',1,'admin',NULL,NULL,NULL),(780,'::1',NULL,'2018-04-10 02:19:24','LOG IN',26,'shihab',NULL,NULL,NULL),(781,'::1',NULL,'2018-04-10 02:22:24','LOG OUT',26,'shihab',NULL,NULL,NULL),(782,'::1',NULL,'2018-04-10 02:22:30','LOG IN',1,'admin',NULL,NULL,NULL),(783,'::1',NULL,'2018-04-10 02:24:39','LOG IN',1,'admin',NULL,NULL,NULL),(784,'::1',NULL,'2018-04-11 04:01:15','LOG IN',1,'admin',NULL,NULL,NULL),(785,'::1',NULL,'2018-04-10 05:23:26','LOG IN',1,'admin',NULL,NULL,NULL),(786,'::1',NULL,'2018-04-10 06:57:31','LOG OUT',1,'admin',NULL,NULL,NULL),(787,'::1',NULL,'2018-04-10 06:57:37','LOG IN',1,'admin',NULL,NULL,NULL),(788,'::1',NULL,'2018-04-10 06:59:34','LOG OUT',1,'admin',NULL,NULL,NULL),(789,'::1',NULL,'2018-04-10 07:07:05','LOG IN',1,'admin',NULL,NULL,NULL),(790,'::1',NULL,'2018-04-11 09:20:11','LOG IN',1,'admin',NULL,NULL,NULL),(791,'::1',NULL,'2018-04-11 10:26:57','LOG IN',1,'admin',NULL,NULL,NULL),(792,'::1',NULL,'2018-04-11 10:27:07','LOG OUT',1,'admin',NULL,NULL,NULL),(793,'::1',NULL,'2018-04-11 10:27:12','LOG IN',26,'shihab',NULL,NULL,NULL),(794,'::1',NULL,'2018-04-11 10:34:42','LOG OUT',26,'shihab',NULL,NULL,NULL),(795,'::1',NULL,'2018-04-11 10:34:43','LOG IN',1,'admin',NULL,NULL,NULL),(796,'127.0.0.1',NULL,'2018-04-11 09:39:51','LOG IN',1,'admin',NULL,NULL,NULL),(797,'::1',NULL,'2018-04-11 10:46:23','LOG IN',1,'admin',NULL,NULL,NULL),(798,'::1',NULL,'2018-04-11 10:54:19','LOG OUT',1,'admin',NULL,NULL,NULL),(799,'::1',NULL,'2018-04-11 11:12:20','LOG OUT',1,'admin',NULL,NULL,NULL),(800,'::1',NULL,'2018-04-11 11:12:25','LOG IN',26,'shihab',NULL,NULL,NULL),(801,'127.0.0.1',NULL,'2018-04-11 11:56:35','LOG OUT',1,'admin',NULL,NULL,NULL),(802,'127.0.0.1',NULL,'2018-04-11 11:56:43','LOG IN',24,'rakib',NULL,NULL,NULL),(803,'127.0.0.1',NULL,'2018-04-11 12:03:08','LOG OUT',24,'rakib',NULL,NULL,NULL),(804,'127.0.0.1',NULL,'2018-04-11 12:03:18','LOG IN',25,'foysal',NULL,NULL,NULL),(805,'127.0.0.1',NULL,'2018-04-11 12:04:12','LOG OUT',25,'foysal',NULL,NULL,NULL),(806,'127.0.0.1',NULL,'2018-04-11 12:04:19','LOG IN',1,'admin',NULL,NULL,NULL),(807,'::1',NULL,'2018-04-11 12:08:52','LOG IN',1,'admin',NULL,NULL,NULL),(808,'::1',NULL,'2018-04-11 12:18:41','LOG OUT',1,'admin',NULL,NULL,NULL),(809,'127.0.0.1',NULL,'2018-04-11 12:42:55','LOG OUT',1,'admin',NULL,NULL,NULL),(810,'127.0.0.1',NULL,'2018-04-11 12:43:05','LOG IN',25,'foysal',NULL,NULL,NULL),(811,'127.0.0.1',NULL,'2018-04-11 12:43:24','LOG OUT',25,'foysal',NULL,NULL,NULL),(812,'127.0.0.1',NULL,'2018-04-11 12:43:30','LOG IN',24,'rakib',NULL,NULL,NULL),(813,'127.0.0.1',NULL,'2018-04-11 12:43:56','LOG OUT',24,'rakib',NULL,NULL,NULL),(814,'127.0.0.1',NULL,'2018-04-11 12:44:03','LOG IN',1,'admin',NULL,NULL,NULL),(815,'::1',NULL,'2018-04-12 05:51:16','LOG OUT',26,'shihab',NULL,NULL,NULL),(816,'::1',NULL,'2018-04-12 05:51:19','LOG IN',1,'admin',NULL,NULL,NULL),(817,'127.0.0.1',NULL,'2018-04-11 04:57:22','LOG OUT',1,'admin',NULL,NULL,NULL),(818,'127.0.0.1',NULL,'2018-04-11 04:57:32','LOG IN',26,'shihab',NULL,NULL,NULL),(819,'127.0.0.1',NULL,'2018-04-11 05:21:08','LOG OUT',26,'shihab',NULL,NULL,NULL),(820,'127.0.0.1',NULL,'2018-04-11 05:21:13','LOG IN',1,'admin',NULL,NULL,NULL),(821,'::1',NULL,'2018-04-11 06:03:49','LOG OUT',1,'admin',NULL,NULL,NULL),(822,'::1',NULL,'2018-04-12 09:16:16','LOG IN',1,'admin',NULL,NULL,NULL),(823,'127.0.0.1',NULL,'2018-04-12 09:38:14','LOG IN',1,'admin',NULL,NULL,NULL),(824,'::1',NULL,'2018-04-12 09:40:54','LOG IN',26,'shihab',NULL,NULL,NULL),(825,'::1',NULL,'2018-04-12 10:42:52','LOG IN',1,'admin',NULL,NULL,NULL),(826,'::1',NULL,'2018-04-12 09:47:50','LOG IN',1,'admin',NULL,NULL,NULL),(827,'::1',NULL,'2018-04-12 09:49:17','LOG OUT',1,'admin',NULL,NULL,NULL),(828,'::1',NULL,'2018-04-12 10:49:44','LOG IN',26,'shihab',NULL,NULL,NULL),(829,'::1',NULL,'2018-04-12 10:24:34','LOG IN',1,'admin',NULL,NULL,NULL),(830,'::1',NULL,'2018-04-12 10:28:54','LOG IN',1,'admin',NULL,NULL,NULL),(831,'::1',NULL,'2018-04-12 11:33:48','LOG OUT',1,'admin',NULL,NULL,NULL),(832,'::1',NULL,'2018-04-12 11:33:54','LOG IN',26,'shihab',NULL,NULL,NULL),(833,'::1',NULL,'2018-04-12 11:35:01','LOG OUT',26,'shihab',NULL,NULL,NULL),(834,'::1',NULL,'2018-04-12 11:44:32','LOG IN',1,'admin',NULL,NULL,NULL),(835,'::1',NULL,'2018-04-13 12:58:43','LOG OUT',1,'admin',NULL,NULL,NULL),(836,'127.0.0.1',NULL,'2018-04-12 02:09:17','LOG OUT',1,'admin',NULL,NULL,NULL),(837,'127.0.0.1',NULL,'2018-04-12 02:09:24','LOG IN',24,'rakib',NULL,NULL,NULL),(838,'127.0.0.1',NULL,'2018-04-12 02:09:32','LOG OUT',24,'rakib',NULL,NULL,NULL),(839,'127.0.0.1',NULL,'2018-04-12 02:09:42','LOG IN',25,'foysal',NULL,NULL,NULL),(840,'127.0.0.1',NULL,'2018-04-12 02:16:30','LOG OUT',25,'foysal',NULL,NULL,NULL),(841,'127.0.0.1',NULL,'2018-04-12 02:16:37','LOG IN',1,'admin',NULL,NULL,NULL),(842,'::1',NULL,'2018-04-12 02:28:23','LOG IN',1,'admin',NULL,NULL,NULL),(843,'::1',NULL,'2018-04-13 03:56:30','LOG OUT',26,'shihab',NULL,NULL,NULL),(844,'::1',NULL,'2018-04-13 03:56:39','LOG IN',1,'admin',NULL,NULL,NULL),(845,'::1',NULL,'2018-04-13 03:56:52','LOG OUT',1,'admin',NULL,NULL,NULL),(846,'::1',NULL,'2018-04-12 02:58:14','LOG IN',1,'admin',NULL,NULL,NULL),(847,'::1',NULL,'2018-04-12 03:08:51','LOG OUT',1,'admin',NULL,NULL,NULL),(848,'::1',NULL,'2018-04-12 03:09:01','LOG IN',24,'rakib',NULL,NULL,NULL),(849,'::1',NULL,'2018-04-12 03:10:54','LOG OUT',24,'rakib',NULL,NULL,NULL),(850,'::1',NULL,'2018-04-12 03:10:59','LOG IN',1,'admin',NULL,NULL,NULL),(851,'::1',NULL,'2018-04-13 04:17:13','LOG IN',1,'admin',NULL,NULL,NULL),(852,'::1',NULL,'2018-04-12 03:17:56','LOG OUT',1,'admin',NULL,NULL,NULL),(853,'::1',NULL,'2018-04-12 03:18:01','LOG IN',1,'admin',NULL,NULL,NULL),(854,'::1',NULL,'2018-04-12 03:24:57','LOG OUT',1,'admin',NULL,NULL,NULL),(855,'::1',NULL,'2018-04-13 04:30:59','LOG OUT',1,'admin',NULL,NULL,NULL),(856,'::1',NULL,'2018-04-13 04:31:03','LOG IN',26,'shihab',NULL,NULL,NULL),(857,'::1',NULL,'2018-04-13 05:32:27','LOG IN',1,'admin',NULL,NULL,NULL),(858,'::1',NULL,'2018-04-12 05:51:05','LOG IN',1,'admin',NULL,NULL,NULL),(859,'::1',NULL,'2018-04-12 05:51:30','LOG OUT',1,'admin',NULL,NULL,NULL),(860,'127.0.0.1',NULL,'2018-04-15 09:28:26','LOG IN',1,'admin',NULL,NULL,NULL),(861,'::1',NULL,'2018-04-15 10:45:35','LOG IN',1,'admin',NULL,NULL,NULL),(862,'::1',NULL,'2018-04-15 11:06:25','LOG IN',26,'shihab',NULL,NULL,NULL),(863,'::1',NULL,'2018-04-15 11:53:19','LOG OUT',1,'admin',NULL,NULL,NULL),(864,'::1',NULL,'2018-04-15 11:53:24','LOG IN',26,'shihab',NULL,NULL,NULL),(865,'::1',NULL,'2018-04-15 11:55:55','LOG OUT',26,'shihab',NULL,NULL,NULL),(866,'::1',NULL,'2018-04-15 11:56:03','LOG IN',1,'admin',NULL,NULL,NULL),(867,'127.0.0.1',NULL,'2018-04-15 12:21:00','LOG OUT',1,'admin',NULL,NULL,NULL),(868,'127.0.0.1',NULL,'2018-04-15 12:21:08','LOG IN',25,'foysal',NULL,NULL,NULL),(869,'127.0.0.1',NULL,'2018-04-15 12:24:31','LOG OUT',25,'foysal',NULL,NULL,NULL),(870,'127.0.0.1',NULL,'2018-04-15 12:24:38','LOG IN',1,'admin',NULL,NULL,NULL),(871,'::1',NULL,'2018-04-16 01:37:27','LOG OUT',26,'shihab',NULL,NULL,NULL),(872,'::1',NULL,'2018-04-16 01:37:30','LOG IN',1,'admin',NULL,NULL,NULL),(873,'::1',NULL,'2018-04-16 01:49:07','LOG OUT',1,'admin',NULL,NULL,NULL),(874,'::1',NULL,'2018-04-16 01:49:11','LOG IN',26,'shihab',NULL,NULL,NULL),(875,'::1',NULL,'2018-04-16 01:58:58','LOG OUT',26,'shihab',NULL,NULL,NULL),(876,'::1',NULL,'2018-04-16 01:59:03','LOG IN',1,'admin',NULL,NULL,NULL),(877,'::1',NULL,'2018-04-16 02:00:49','LOG OUT',1,'admin',NULL,NULL,NULL),(878,'::1',NULL,'2018-04-16 02:00:52','LOG IN',26,'shihab',NULL,NULL,NULL),(879,'::1',NULL,'2018-04-16 02:04:08','LOG OUT',26,'shihab',NULL,NULL,NULL),(880,'::1',NULL,'2018-04-16 02:04:10','LOG IN',1,'admin',NULL,NULL,NULL),(881,'::1',NULL,'2018-04-16 03:13:04','LOG OUT',1,'admin',NULL,NULL,NULL),(882,'::1',NULL,'2018-04-16 03:13:08','LOG IN',26,'shihab',NULL,NULL,NULL),(883,'::1',NULL,'2018-04-16 03:23:02','LOG OUT',26,'shihab',NULL,NULL,NULL),(884,'::1',NULL,'2018-04-16 03:23:04','LOG IN',1,'admin',NULL,NULL,NULL),(885,'::1',NULL,'2018-04-16 10:38:04','LOG IN',1,'admin',NULL,NULL,NULL),(886,'127.0.0.1',NULL,'2018-04-16 09:56:09','LOG IN',1,'admin',NULL,NULL,NULL),(887,'::1',NULL,'2018-04-17 12:51:53','LOG IN',1,'admin',NULL,NULL,NULL),(888,'::1',NULL,'2018-04-17 03:11:24','LOG IN',1,'admin',NULL,NULL,NULL),(889,'::1',NULL,'2018-04-17 04:42:21','LOG IN',1,'admin',NULL,NULL,NULL),(890,'::1',NULL,'2018-04-17 06:32:26','LOG IN',1,'admin',NULL,NULL,NULL),(891,'127.0.0.1',NULL,'2018-04-17 09:24:54','LOG IN',1,'admin',NULL,NULL,NULL),(892,'::1',NULL,'2018-04-17 10:25:14','LOG IN',1,'admin',NULL,NULL,NULL),(893,'::1',NULL,'2018-04-17 10:57:18','LOG IN',1,'admin',NULL,NULL,NULL),(894,'::1',NULL,'2018-04-17 11:06:11','LOG IN',1,'admin',NULL,NULL,NULL),(895,'::1',NULL,'2018-04-18 10:28:26','LOG IN',1,'admin',NULL,NULL,NULL),(896,'::1',NULL,'2018-04-18 10:01:37','LOG IN',1,'admin',NULL,NULL,NULL),(897,'::1',NULL,'2018-04-18 10:03:36','LOG OUT',1,'admin',NULL,NULL,NULL),(898,'::1',NULL,'2018-04-18 10:03:43','LOG IN',26,'shihab',NULL,NULL,NULL),(899,'::1',NULL,'2018-04-18 10:04:09','LOG OUT',26,'shihab',NULL,NULL,NULL),(900,'::1',NULL,'2018-04-18 10:04:14','LOG IN',1,'admin',NULL,NULL,NULL),(901,'::1',NULL,'2018-04-18 10:24:59','LOG IN',1,'admin',NULL,NULL,NULL),(902,'::1',NULL,'2018-04-18 11:40:27','LOG IN',1,'admin',NULL,NULL,NULL),(903,'::1',NULL,'2018-04-19 10:39:08','LOG IN',1,'admin',NULL,NULL,NULL),(904,'::1',NULL,'2018-04-19 04:58:42','LOG IN',1,'admin',NULL,NULL,NULL),(905,'::1',NULL,'2018-04-19 06:02:14','LOG IN',1,'admin',NULL,NULL,NULL),(906,'::1',NULL,'2018-04-21 10:21:42','LOG IN',1,'admin',NULL,NULL,NULL),(907,'::1',NULL,'2018-04-21 09:24:14','LOG IN',1,'admin',NULL,NULL,NULL),(908,'::1',NULL,'2018-04-21 10:48:05','LOG IN',1,'admin',NULL,NULL,NULL),(909,'::1',NULL,'2018-04-21 09:53:22','LOG IN',1,'admin',NULL,NULL,NULL),(910,'::1',NULL,'2018-04-21 02:19:15','LOG IN',1,'admin',NULL,NULL,NULL),(911,'::1',NULL,'2018-04-22 10:34:11','LOG IN',1,'admin',NULL,NULL,NULL),(912,'::1',NULL,'2018-04-23 12:32:46','LOG IN',28,'coe',NULL,NULL,NULL),(913,'::1',NULL,'2018-04-23 12:33:01','LOG OUT',28,'coe',NULL,NULL,NULL),(914,'::1',NULL,'2018-04-23 12:33:06','LOG IN',1,'admin',NULL,NULL,NULL),(915,'::1',NULL,'2018-04-23 12:33:38','LOG OUT',1,'admin',NULL,NULL,NULL),(916,'::1',NULL,'2018-04-23 12:33:45','LOG IN',28,'coe',NULL,NULL,NULL),(917,'::1',NULL,'2018-04-23 12:39:03','LOG OUT',28,'coe',NULL,NULL,NULL),(918,'::1',NULL,'2018-04-23 12:39:08','LOG IN',1,'admin',NULL,NULL,NULL),(919,'::1',NULL,'2018-04-23 12:56:07','LOG OUT',1,'admin',NULL,NULL,NULL),(920,'::1',NULL,'2018-04-23 02:16:02','LOG IN',1,'admin',NULL,NULL,NULL),(921,'::1',NULL,'2018-04-24 10:30:12','LOG IN',1,'admin',NULL,NULL,NULL),(922,'::1',NULL,'2018-04-24 10:37:51','LOG OUT',1,'admin',NULL,NULL,NULL),(923,'::1',NULL,'2018-04-25 11:44:04','LOG IN',28,'coe',NULL,NULL,NULL),(924,'::1',NULL,'2018-04-25 11:46:36','LOG OUT',28,'coe',NULL,NULL,NULL),(925,'::1',NULL,'2018-04-26 12:47:46','LOG IN',1,'admin',NULL,NULL,NULL),(926,'::1',NULL,'2018-04-26 12:48:14','LOG OUT',1,'admin',NULL,NULL,NULL),(927,'::1',NULL,'2018-04-26 12:50:12','LOG IN',28,'coe',NULL,NULL,NULL),(928,'::1',NULL,'2018-04-26 12:53:41','LOG IN',1,'admin',NULL,NULL,NULL),(929,'::1',NULL,'2018-04-26 01:08:11','LOG IN',1,'admin',NULL,NULL,NULL),(930,'::1',NULL,'2018-04-26 04:09:34','LOG IN',1,'admin',NULL,NULL,NULL),(931,'::1',NULL,'2018-04-26 05:17:34','LOG OUT',1,'admin',NULL,NULL,NULL),(932,'::1',NULL,'2018-04-26 05:17:43','LOG IN',28,'coe',NULL,NULL,NULL),(933,'::1',NULL,'2018-04-26 06:33:20','LOG OUT',28,'coe',NULL,NULL,NULL),(934,'::1',NULL,'2018-04-26 06:33:25','LOG IN',1,'admin',NULL,NULL,NULL),(935,'::1',NULL,'2018-04-25 05:51:30','LOG IN',1,'admin',NULL,NULL,NULL),(936,'::1',NULL,'2018-04-25 05:52:02','LOG OUT',1,'admin',NULL,NULL,NULL),(937,'::1',NULL,'2018-04-25 05:52:13','LOG IN',28,'coe',NULL,NULL,NULL),(938,'::1',NULL,'2018-04-26 09:10:09','LOG IN',28,'coe',NULL,NULL,NULL),(939,'::1',NULL,'2018-04-26 10:28:27','LOG IN',28,'coe',NULL,NULL,NULL),(940,'::1',NULL,'2018-04-26 09:42:51','LOG IN',1,'admin',NULL,NULL,NULL),(941,'::1',NULL,'2018-04-26 09:42:55','LOG OUT',1,'admin',NULL,NULL,NULL),(942,'::1',NULL,'2018-04-26 09:43:00','LOG IN',28,'coe',NULL,NULL,NULL),(943,'::1',NULL,'2018-04-26 10:50:43','LOG IN',1,'admin',NULL,NULL,NULL),(944,'::1',NULL,'2018-04-26 09:53:48','LOG IN',28,'coe',NULL,NULL,NULL),(945,'::1',NULL,'2018-04-26 12:07:46','LOG IN',25,'foysal',NULL,NULL,NULL),(946,'::1',NULL,'2018-04-26 12:07:51','LOG OUT',25,'foysal',NULL,NULL,NULL),(947,'::1',NULL,'2018-04-26 12:07:57','LOG IN',1,'admin',NULL,NULL,NULL),(948,'::1',NULL,'2018-04-26 12:08:53','LOG OUT',1,'admin',NULL,NULL,NULL),(949,'::1',NULL,'2018-04-26 12:09:00','LOG IN',25,'foysal',NULL,NULL,NULL),(950,'::1',NULL,'2018-04-26 12:15:27','LOG OUT',25,'foysal',NULL,NULL,NULL),(951,'::1',NULL,'2018-04-26 12:15:35','LOG IN',1,'admin',NULL,NULL,NULL),(952,'::1',NULL,'2018-04-28 10:34:29','LOG IN',1,'admin',NULL,NULL,NULL),(953,'::1',NULL,'2018-04-28 10:34:37','LOG OUT',1,'admin',NULL,NULL,NULL),(954,'::1',NULL,'2018-04-28 10:34:43','LOG IN',28,'coe',NULL,NULL,NULL),(955,'::1',NULL,'2018-04-28 10:38:19','LOG OUT',28,'coe',NULL,NULL,NULL),(956,'::1',NULL,'2018-04-28 10:38:21','LOG IN',1,'admin',NULL,NULL,NULL),(957,'::1',NULL,'2018-04-28 10:14:49','LOG IN',1,'admin',NULL,NULL,NULL),(958,'::1',NULL,'2018-04-28 10:14:53','LOG OUT',1,'admin',NULL,NULL,NULL),(959,'::1',NULL,'2018-04-28 10:14:59','LOG IN',1,'admin',NULL,NULL,NULL),(960,'::1',NULL,'2018-04-28 10:15:02','LOG OUT',1,'admin',NULL,NULL,NULL),(961,'::1',NULL,'2018-04-28 10:16:22','LOG IN',1,'admin',NULL,NULL,NULL),(962,'::1',NULL,'2018-04-28 10:16:33','LOG IN',1,'admin',NULL,NULL,NULL),(963,'::1',NULL,'2018-04-28 10:16:44','LOG IN',1,'admin',NULL,NULL,NULL),(964,'::1',NULL,'2018-04-28 10:16:53','LOG IN',28,'coe',NULL,NULL,NULL),(965,'::1',NULL,'2018-04-28 10:19:11','LOG IN',1,'admin',NULL,NULL,NULL),(966,'::1',NULL,'2018-04-28 10:23:05','LOG IN',1,'admin',NULL,NULL,NULL),(967,'::1',NULL,'2018-04-28 10:25:03','LOG IN',1,'admin',NULL,NULL,NULL),(968,'::1',NULL,'2018-04-28 10:26:16','LOG IN',1,'admin',NULL,NULL,NULL),(969,'::1',NULL,'2018-04-28 10:26:27','LOG IN',1,'admin',NULL,NULL,NULL),(970,'::1',NULL,'2018-04-28 10:26:42','LOG IN',1,'admin',NULL,NULL,NULL),(971,'::1',NULL,'2018-04-28 10:27:11','LOG IN',1,'admin',NULL,NULL,NULL),(972,'::1',NULL,'2018-04-28 10:27:33','LOG IN',1,'admin',NULL,NULL,NULL),(973,'::1',NULL,'2018-04-28 10:28:38','LOG IN',1,'admin',NULL,NULL,NULL),(974,'::1',NULL,'2018-04-28 10:28:46','LOG IN',1,'admin',NULL,NULL,NULL),(975,'::1',NULL,'2018-04-28 10:28:59','LOG IN',1,'admin',NULL,NULL,NULL),(976,'::1',NULL,'2018-04-28 10:29:09','LOG IN',1,'admin',NULL,NULL,NULL),(977,'::1',NULL,'2018-04-28 10:32:49','LOG IN',1,'admin',NULL,NULL,NULL),(978,'::1',NULL,'2018-04-28 10:32:56','LOG IN',1,'admin',NULL,NULL,NULL),(979,'::1',NULL,'2018-04-28 10:33:02','LOG IN',1,'admin',NULL,NULL,NULL),(980,'::1',NULL,'2018-04-28 10:38:49','LOG IN',1,'admin',NULL,NULL,NULL),(981,'::1',NULL,'2018-04-28 10:38:55','LOG IN',1,'admin',NULL,NULL,NULL),(982,'::1',NULL,'2018-04-28 10:39:12','LOG IN',1,'admin',NULL,NULL,NULL),(983,'::1',NULL,'2018-04-28 10:39:25','LOG IN',1,'admin',NULL,NULL,NULL),(984,'::1',NULL,'2018-04-28 10:39:56','LOG IN',1,'admin',NULL,NULL,NULL),(985,'::1',NULL,'2018-04-28 10:40:07','LOG IN',1,'admin',NULL,NULL,NULL),(986,'::1',NULL,'2018-04-28 10:40:44','LOG IN',1,'admin',NULL,NULL,NULL),(987,'::1',NULL,'2018-04-28 10:58:15','LOG IN',1,'admin',NULL,NULL,NULL),(988,'::1',NULL,'2018-04-28 12:04:01','LOG IN',1,'admin',NULL,NULL,NULL),(989,'::1',NULL,'2018-04-29 01:22:03','LOG IN',1,'admin',NULL,NULL,NULL),(990,'::1',NULL,'2018-04-28 12:28:19','LOG IN',1,'admin',NULL,NULL,NULL),(991,'::1',NULL,'2018-04-28 12:46:08','LOG IN',1,'admin',NULL,NULL,NULL),(992,'::1',NULL,'2018-04-28 12:46:21','LOG IN',1,'admin',NULL,NULL,NULL),(993,'::1',NULL,'2018-04-28 12:51:14','LOG IN',1,'admin',NULL,NULL,NULL),(994,'::1',NULL,'2018-04-28 01:00:27','LOG IN',1,'admin',NULL,NULL,NULL),(995,'::1',NULL,'2018-04-28 01:01:43','LOG IN',1,'admin',NULL,NULL,NULL),(996,'::1',NULL,'2018-04-28 01:03:14','LOG IN',1,'admin',NULL,NULL,NULL),(997,'::1',NULL,'2018-04-28 01:03:23','LOG IN',1,'admin',NULL,NULL,NULL),(998,'::1',NULL,'2018-04-28 01:19:04','LOG IN',1,'admin',NULL,NULL,NULL),(999,'::1',NULL,'2018-04-28 01:20:32','LOG IN',1,'admin',NULL,NULL,NULL),(1000,'::1',NULL,'2018-04-28 01:20:38','LOG IN',1,'admin',NULL,NULL,NULL),(1001,'::1',NULL,'2018-04-28 02:01:10','LOG IN',1,'admin',NULL,NULL,NULL),(1002,'::1',NULL,'2018-04-28 02:01:47','LOG IN',1,'admin',NULL,NULL,NULL),(1003,'::1',NULL,'2018-04-28 02:02:39','LOG IN',1,'admin',NULL,NULL,NULL),(1004,'::1',NULL,'2018-04-28 02:04:14','LOG IN',1,'admin',NULL,NULL,NULL),(1005,'::1',NULL,'2018-04-28 02:11:14','LOG IN',1,'admin',NULL,NULL,NULL),(1006,'::1',NULL,'2018-04-28 02:11:35','LOG IN',1,'admin',NULL,NULL,NULL),(1007,'::1',NULL,'2018-04-28 02:13:36','LOG IN',1,'admin',NULL,NULL,NULL),(1008,'::1',NULL,'2018-04-28 02:14:16','LOG IN',1,'admin',NULL,NULL,NULL),(1009,'127.0.0.1',NULL,'2018-04-28 08:15:47','LOG IN',1,'admin',NULL,NULL,NULL),(1010,'::1',NULL,'2018-04-28 02:17:02','LOG IN',1,'admin',NULL,NULL,NULL),(1011,'::1',NULL,'2018-04-28 02:18:59','LOG OUT',1,'admin',NULL,NULL,NULL),(1012,'::1',NULL,'2018-04-28 02:19:15','LOG IN',1,'admin',NULL,NULL,NULL),(1013,'::1',NULL,'2018-04-28 02:37:03','LOG IN',1,'admin',NULL,NULL,NULL),(1014,'::1',NULL,'2018-04-28 03:28:21','LOG IN',1,'admin',NULL,NULL,NULL),(1015,'::1',NULL,'2018-04-28 04:08:08','LOG IN',1,'admin',NULL,NULL,NULL),(1016,'::1',NULL,'2018-04-28 04:35:23','LOG IN',1,'admin',NULL,NULL,NULL),(1017,'::1',NULL,'2018-04-28 05:46:19','LOG IN',1,'admin',NULL,NULL,NULL),(1018,'::1',NULL,'2018-04-28 07:26:17','LOG IN',1,'admin',NULL,NULL,NULL),(1019,'::1',NULL,'2018-04-28 07:26:28','LOG OUT',1,'admin',NULL,NULL,NULL),(1020,'::1',NULL,'2018-04-29 10:15:17','LOG IN',1,'admin',NULL,NULL,NULL),(1021,'::1',NULL,'2018-04-29 11:02:20','LOG IN',1,'admin',NULL,NULL,NULL),(1022,'::1',NULL,'2018-04-29 12:29:50','LOG IN',1,'admin',NULL,NULL,NULL),(1023,'192.168.0.66',NULL,'2018-04-29 04:52:32','LOG IN',26,'shihab',NULL,NULL,NULL),(1024,'192.168.0.66',NULL,'2018-04-29 04:53:22','LOG OUT',26,'shihab',NULL,NULL,NULL),(1025,'192.168.0.66',NULL,'2018-04-29 04:53:27','LOG IN',1,'admin',NULL,NULL,NULL),(1026,'192.168.0.66',NULL,'2018-04-29 04:57:08','LOG OUT',1,'admin',NULL,NULL,NULL),(1027,'::1',NULL,'2018-04-30 10:28:34','LOG IN',1,'admin',NULL,NULL,NULL),(1028,'::1',NULL,'2018-04-30 10:30:34','LOG OUT',1,'admin',NULL,NULL,NULL),(1029,'::1',NULL,'2018-04-30 10:32:24','LOG IN',1,'admin',NULL,NULL,NULL),(1030,'127.0.0.1',NULL,'2018-04-30 09:33:26','LOG IN',1,'admin',NULL,NULL,NULL),(1031,'::1',NULL,'2018-05-01 12:01:46','LOG IN',28,'coe',NULL,NULL,NULL),(1032,'::1',NULL,'2018-05-05 09:57:39','LOG IN',1,'admin',NULL,NULL,NULL),(1033,'::1',NULL,'2018-05-05 09:51:10','LOG IN',1,'admin',NULL,NULL,NULL),(1034,'::1',NULL,'2018-05-05 10:00:18','LOG OUT',1,'admin',NULL,NULL,NULL),(1035,'::1',NULL,'2018-05-05 11:53:28','LOG IN',1,'admin',NULL,NULL,NULL),(1036,'::1',NULL,'2018-05-05 11:56:03','LOG OUT',1,'admin',NULL,NULL,NULL),(1037,'::1',NULL,'2018-05-05 11:56:16','LOG IN',28,'coe',NULL,NULL,NULL),(1038,'::1',NULL,'2018-05-05 11:56:41','LOG OUT',28,'coe',NULL,NULL,NULL),(1039,'::1',NULL,'2018-05-05 11:56:46','LOG IN',1,'admin',NULL,NULL,NULL),(1040,'::1',NULL,'2018-05-05 02:23:42','LOG OUT',1,'admin',NULL,NULL,NULL),(1041,'::1',NULL,'2018-05-07 10:20:07','LOG IN',1,'admin',NULL,NULL,NULL),(1042,'::1',NULL,'2018-05-07 10:24:15','LOG OUT',1,'admin',NULL,NULL,NULL),(1043,'::1',NULL,'2018-05-09 01:51:15','LOG IN',1,'admin',NULL,NULL,NULL),(1044,'::1',NULL,'2018-05-10 11:53:45','LOG IN',1,'admin',NULL,NULL,NULL),(1045,'::1',NULL,'2018-05-10 12:53:05','LOG IN',1,'admin',NULL,NULL,NULL),(1046,'::1',NULL,'2018-05-10 12:56:55','LOG OUT',1,'admin',NULL,NULL,NULL),(1047,'::1',NULL,'2018-05-10 12:57:01','LOG IN',25,'foysal',NULL,NULL,NULL),(1048,'::1',NULL,'2018-05-10 12:58:47','LOG OUT',25,'foysal',NULL,NULL,NULL),(1049,'::1',NULL,'2018-05-10 12:58:52','LOG IN',1,'admin',NULL,NULL,NULL),(1050,'::1',NULL,'2018-05-10 03:48:04','LOG IN',1,'admin',NULL,NULL,NULL),(1051,'::1',NULL,'2018-05-10 04:07:52','LOG IN',1,'admin',NULL,NULL,NULL),(1052,'::1',NULL,'2018-05-10 04:41:16','LOG IN',28,'coe',NULL,NULL,NULL),(1053,'127.0.0.1',NULL,'2018-05-10 04:45:26','LOG IN',1,'admin',NULL,NULL,NULL),(1054,'::1',NULL,'2018-05-12 10:30:44','LOG IN',1,'admin',NULL,NULL,NULL),(1055,'::1',NULL,'2018-05-12 10:31:14','LOG OUT',1,'admin',NULL,NULL,NULL),(1056,'::1',NULL,'2018-05-12 10:31:22','LOG IN',26,'shihab',NULL,NULL,NULL),(1057,'::1',NULL,'2018-05-12 10:38:26','LOG OUT',26,'shihab',NULL,NULL,NULL),(1058,'::1',NULL,'2018-05-12 10:38:32','LOG IN',25,'foysal',NULL,NULL,NULL),(1059,'::1',NULL,'2018-05-13 05:23:21','LOG IN',1,'admin',NULL,NULL,NULL),(1060,'::1',NULL,'2018-05-14 09:08:16','LOG IN',1,'admin',NULL,NULL,NULL),(1061,'::1',NULL,'2018-05-14 09:41:08','LOG IN',1,'admin',NULL,NULL,NULL),(1062,'::1',NULL,'2018-05-14 11:28:31','LOG OUT',1,'admin',NULL,NULL,NULL),(1063,'::1',NULL,'2018-05-14 11:28:38','LOG IN',26,'shihab',NULL,NULL,NULL),(1064,'::1',NULL,'2018-05-15 12:39:44','LOG IN',1,'admin',NULL,NULL,NULL),(1065,'::1',NULL,'2018-05-14 11:39:07','LOG IN',26,'shihab',NULL,NULL,NULL),(1066,'192.168.0.53',NULL,'2018-05-14 12:44:14','LOG IN',1,'admin',NULL,NULL,NULL),(1067,'::1',NULL,'2018-05-14 02:09:22','LOG OUT',26,'shihab',NULL,NULL,NULL),(1068,'::1',NULL,'2018-05-14 02:09:28','LOG IN',25,'foysal',NULL,NULL,NULL),(1069,'::1',NULL,'2018-05-14 02:09:41','LOG OUT',25,'foysal',NULL,NULL,NULL),(1070,'::1',NULL,'2018-05-14 02:09:46','LOG IN',1,'admin',NULL,NULL,NULL),(1071,'::1',NULL,'2018-05-14 02:10:13','LOG OUT',1,'admin',NULL,NULL,NULL),(1072,'::1',NULL,'2018-05-14 02:10:20','LOG IN',25,'foysal',NULL,NULL,NULL),(1073,'::1',NULL,'2018-05-14 02:10:48','LOG OUT',25,'foysal',NULL,NULL,NULL),(1074,'::1',NULL,'2018-05-14 02:10:54','LOG IN',26,'shihab',NULL,NULL,NULL),(1075,'::1',NULL,'2018-05-14 03:54:38','LOG OUT',26,'shihab',NULL,NULL,NULL),(1076,'::1',NULL,'2018-05-14 03:54:45','LOG IN',1,'admin',NULL,NULL,NULL),(1077,'::1',NULL,'2018-05-14 04:27:01','LOG OUT',1,'admin',NULL,NULL,NULL),(1078,'::1',NULL,'2018-05-14 04:27:07','LOG IN',26,'shihab',NULL,NULL,NULL),(1079,'::1',NULL,'2018-05-14 07:09:18','LOG OUT',26,'shihab',NULL,NULL,NULL),(1080,'::1',NULL,'2018-05-16 11:19:32','LOG IN',1,'admin',NULL,NULL,NULL),(1081,'::1',NULL,'2018-05-17 12:49:16','LOG IN',1,'admin',NULL,NULL,NULL),(1082,'::1',NULL,'2018-05-17 12:51:36','LOG OUT',1,'admin',NULL,NULL,NULL),(1083,'::1',NULL,'2018-05-17 12:51:43','LOG IN',25,'foysal',NULL,NULL,NULL),(1084,'::1',NULL,'2018-05-17 12:52:19','LOG OUT',25,'foysal',NULL,NULL,NULL),(1085,'::1',NULL,'2018-05-26 09:29:26','LOG IN',1,'admin',NULL,NULL,NULL),(1086,'::1',NULL,'2018-05-26 09:29:36','LOG OUT',1,'admin',NULL,NULL,NULL),(1087,'::1',NULL,'2018-05-26 09:29:43','LOG IN',25,'foysal',NULL,NULL,NULL),(1088,'::1',NULL,'2018-05-26 09:30:03','LOG OUT',25,'foysal',NULL,NULL,NULL),(1089,'::1',NULL,'2018-05-26 09:30:15','LOG IN',1,'admin',NULL,NULL,NULL),(1090,'::1',NULL,'2018-05-26 09:33:19','LOG OUT',1,'admin',NULL,NULL,NULL),(1091,'::1',NULL,'2018-05-26 09:33:25','LOG IN',25,'foysal',NULL,NULL,NULL),(1092,'::1',NULL,'2018-05-26 09:33:51','LOG OUT',25,'foysal',NULL,NULL,NULL),(1093,'::1',NULL,'2018-05-26 09:33:56','LOG IN',1,'admin',NULL,NULL,NULL),(1094,'::1',NULL,'2018-05-26 09:35:00','LOG OUT',1,'admin',NULL,NULL,NULL),(1095,'::1',NULL,'2018-05-26 09:35:06','LOG IN',25,'foysal',NULL,NULL,NULL),(1096,'::1',NULL,'2018-05-26 09:35:48','LOG OUT',25,'foysal',NULL,NULL,NULL),(1097,'::1',NULL,'2018-05-26 10:06:39','LOG IN',1,'admin',NULL,NULL,NULL),(1098,'::1',NULL,'2018-05-26 10:18:55','LOG OUT',1,'admin',NULL,NULL,NULL),(1099,'::1',NULL,'2018-05-26 10:19:00','LOG IN',25,'foysal',NULL,NULL,NULL),(1100,'::1',NULL,'2018-05-26 10:19:35','LOG OUT',25,'foysal',NULL,NULL,NULL),(1101,'::1',NULL,'2018-05-26 10:19:40','LOG IN',1,'admin',NULL,NULL,NULL),(1102,'::1',NULL,'2018-05-26 10:19:59','LOG OUT',1,'admin',NULL,NULL,NULL),(1103,'::1',NULL,'2018-05-26 10:20:05','LOG IN',27,'akhi',NULL,NULL,NULL),(1104,'::1',NULL,'2018-05-26 10:20:30','LOG OUT',27,'akhi',NULL,NULL,NULL),(1105,'::1',NULL,'2018-05-26 10:20:36','LOG IN',1,'admin',NULL,NULL,NULL),(1106,'::1',NULL,'2018-05-26 10:24:55','LOG OUT',1,'admin',NULL,NULL,NULL),(1107,'::1',NULL,'2018-05-29 12:15:06','LOG IN',25,'foysal',NULL,NULL,NULL),(1108,'::1',NULL,'2018-05-29 12:15:17','LOG OUT',25,'foysal',NULL,NULL,NULL),(1109,'::1',NULL,'2018-05-29 12:15:21','LOG IN',1,'admin',NULL,NULL,NULL),(1110,'::1',NULL,'2018-05-30 10:31:44','LOG IN',1,'admin',NULL,NULL,NULL),(1111,'::1',NULL,'2018-05-30 10:42:02','LOG IN',1,'admin',NULL,NULL,NULL),(1112,'::1',NULL,'2018-05-30 10:43:21','LOG OUT',1,'admin',NULL,NULL,NULL),(1113,'192.168.0.43',NULL,'2018-05-31 11:06:31','LOG IN',1,'admin',NULL,NULL,NULL),(1114,'192.168.0.43',NULL,'2018-05-31 11:06:59','LOG OUT',1,'admin',NULL,NULL,NULL),(1115,'::1',NULL,'2018-06-04 03:44:28','LOG IN',1,'admin',NULL,NULL,NULL),(1116,'::1',NULL,'2018-06-04 03:44:38','LOG IN',25,'foysal',NULL,NULL,NULL),(1117,'::1',NULL,'2018-06-04 03:44:56','LOG IN',1,'admin',NULL,NULL,NULL),(1118,'::1',NULL,'2018-06-04 03:45:19','LOG IN',1,'admin',NULL,NULL,NULL),(1119,'::1',NULL,'2018-06-04 03:45:37','LOG IN',1,'admin',NULL,NULL,NULL),(1120,'::1',NULL,'2018-06-04 03:45:50','LOG IN',1,'admin',NULL,NULL,NULL),(1121,'::1',NULL,'2018-06-04 03:46:06','LOG IN',1,'admin',NULL,NULL,NULL),(1122,'::1',NULL,'2018-06-04 03:47:30','LOG IN',1,'admin',NULL,NULL,NULL),(1123,'::1',NULL,'2018-06-04 03:47:44','LOG IN',1,'admin',NULL,NULL,NULL),(1124,'::1',NULL,'2018-06-05 08:59:22','LOG IN',1,'admin',NULL,NULL,NULL),(1125,'::1',NULL,'2018-06-05 09:12:38','LOG IN',1,'admin',NULL,NULL,NULL),(1126,'::1',NULL,'2018-06-05 09:19:55','LOG IN',1,'admin',NULL,NULL,NULL),(1127,'::1',NULL,'2018-06-05 10:24:47','LOG OUT',1,'admin',NULL,NULL,NULL),(1128,'::1',NULL,'2018-06-05 10:24:52','LOG IN',25,'foysal',NULL,NULL,NULL),(1129,'::1',NULL,'2018-06-05 10:26:33','LOG OUT',25,'foysal',NULL,NULL,NULL),(1130,'::1',NULL,'2018-06-05 10:26:37','LOG IN',1,'admin',NULL,NULL,NULL),(1131,'::1',NULL,'2018-06-05 10:27:54','LOG OUT',1,'admin',NULL,NULL,NULL),(1132,'::1',NULL,'2018-06-05 10:27:57','LOG IN',25,'foysal',NULL,NULL,NULL),(1133,'::1',NULL,'2018-06-05 10:28:22','LOG OUT',25,'foysal',NULL,NULL,NULL),(1134,'::1',NULL,'2018-06-05 10:28:27','LOG IN',1,'admin',NULL,NULL,NULL),(1135,'::1',NULL,'2018-06-05 10:32:17','LOG IN',25,'foysal',NULL,NULL,NULL),(1136,'::1',NULL,'2018-06-05 10:33:08','LOG OUT',25,'foysal',NULL,NULL,NULL),(1137,'::1',NULL,'2018-06-05 10:33:13','LOG IN',1,'admin',NULL,NULL,NULL),(1138,'::1',NULL,'2018-06-05 10:34:49','LOG IN',25,'foysal',NULL,NULL,NULL),(1139,'::1',NULL,'2018-06-05 10:38:13','LOG OUT',25,'foysal',NULL,NULL,NULL),(1140,'::1',NULL,'2018-06-05 10:38:16','LOG IN',25,'foysal',NULL,NULL,NULL),(1141,'::1',NULL,'2018-06-05 10:42:05','LOG IN',25,'foysal',NULL,NULL,NULL),(1142,'::1',NULL,'2018-06-05 10:43:48','LOG OUT',25,'foysal',NULL,NULL,NULL),(1143,'::1',NULL,'2018-06-05 10:43:59','LOG IN',1,'admin',NULL,NULL,NULL),(1144,'::1',NULL,'2018-06-05 10:46:52','LOG IN',1,'admin',NULL,NULL,NULL),(1145,'::1',NULL,'2018-06-05 10:52:43','LOG OUT',1,'admin',NULL,NULL,NULL),(1146,'::1',NULL,'2018-06-05 10:53:35','LOG IN',25,'foysal',NULL,NULL,NULL),(1147,'::1',NULL,'2018-06-05 10:54:19','LOG OUT',25,'foysal',NULL,NULL,NULL),(1148,'::1',NULL,'2018-06-05 10:55:08','LOG IN',25,'foysal',NULL,NULL,NULL),(1149,'::1',NULL,'2018-06-05 11:00:00','LOG IN',25,'foysal',NULL,NULL,NULL),(1150,'::1',NULL,'2018-06-05 11:00:12','LOG OUT',25,'foysal',NULL,NULL,NULL),(1151,'::1',NULL,'2018-06-05 11:00:15','LOG IN',1,'admin',NULL,NULL,NULL),(1152,'::1',NULL,'2018-06-05 11:03:02','LOG OUT',1,'admin',NULL,NULL,NULL),(1153,'::1',NULL,'2018-06-05 11:03:05','LOG IN',25,'foysal',NULL,NULL,NULL),(1154,'::1',NULL,'2018-06-05 11:15:29','LOG OUT',25,'foysal',NULL,NULL,NULL),(1155,'::1',NULL,'2018-06-05 11:15:34','LOG IN',1,'admin',NULL,NULL,NULL),(1156,'::1',NULL,'2018-06-05 11:19:32','LOG OUT',1,'admin',NULL,NULL,NULL),(1157,'::1',NULL,'2018-06-05 11:22:25','LOG IN',1,'admin',NULL,NULL,NULL),(1158,'::1',NULL,'2018-06-05 11:22:45','LOG OUT',1,'admin',NULL,NULL,NULL),(1159,'::1',NULL,'2018-06-05 11:22:48','LOG IN',25,'foysal',NULL,NULL,NULL),(1160,'::1',NULL,'2018-06-05 11:23:09','LOG OUT',25,'foysal',NULL,NULL,NULL),(1161,'::1',NULL,'2018-06-05 11:23:12','LOG IN',1,'admin',NULL,NULL,NULL),(1162,'::1',NULL,'2018-06-05 11:24:03','LOG OUT',1,'admin',NULL,NULL,NULL),(1163,'::1',NULL,'2018-06-05 11:24:06','LOG IN',25,'foysal',NULL,NULL,NULL),(1164,'::1',NULL,'2018-06-05 11:25:10','LOG OUT',25,'foysal',NULL,NULL,NULL),(1165,'::1',NULL,'2018-06-05 11:25:13','LOG IN',1,'admin',NULL,NULL,NULL),(1166,'::1',NULL,'2018-06-05 11:25:42','LOG OUT',1,'admin',NULL,NULL,NULL),(1167,'::1',NULL,'2018-06-05 11:25:46','LOG IN',25,'foysal',NULL,NULL,NULL),(1168,'::1',NULL,'2018-06-05 11:26:09','LOG OUT',25,'foysal',NULL,NULL,NULL),(1169,'::1',NULL,'2018-06-05 11:26:28','LOG IN',1,'admin',NULL,NULL,NULL),(1170,'::1',NULL,'2018-06-05 11:27:54','LOG OUT',1,'admin',NULL,NULL,NULL),(1171,'::1',NULL,'2018-06-05 11:36:39','LOG IN',1,'admin',NULL,NULL,NULL),(1172,'::1',NULL,'2018-06-05 11:36:45','LOG OUT',1,'admin',NULL,NULL,NULL),(1173,'::1',NULL,'2018-06-05 11:40:43','LOG IN',1,'admin',NULL,NULL,NULL),(1174,'::1',NULL,'2018-06-05 11:41:08','LOG OUT',1,'admin',NULL,NULL,NULL),(1175,'::1',NULL,'2018-06-05 11:42:04','LOG IN',1,'admin',NULL,NULL,NULL),(1176,'::1',NULL,'2018-06-05 11:42:14','LOG IN',1,'admin',NULL,NULL,NULL),(1177,'::1',NULL,'2018-06-05 11:45:11','LOG OUT',1,'admin',NULL,NULL,NULL),(1178,'::1',NULL,'2018-06-05 11:46:58','LOG IN',1,'admin',NULL,NULL,NULL),(1179,'::1',NULL,'2018-06-05 11:48:46','LOG OUT',1,'admin',NULL,NULL,NULL),(1180,'::1',NULL,'2018-06-05 11:49:41','LOG IN',1,'admin',NULL,NULL,NULL),(1181,'::1',NULL,'2018-06-05 11:53:13','LOG OUT',1,'admin',NULL,NULL,NULL),(1182,'::1',NULL,'2018-06-05 11:56:58','LOG IN',1,'admin',NULL,NULL,NULL),(1183,'::1',NULL,'2018-06-05 12:07:09','LOG OUT',1,'admin',NULL,NULL,NULL),(1184,'::1',NULL,'2018-06-05 12:12:22','LOG IN',1,'admin',NULL,NULL,NULL),(1185,'::1',NULL,'2018-06-05 02:38:48','LOG IN',1,'admin',NULL,NULL,NULL),(1186,'::1',NULL,'2018-06-05 02:54:16','LOG OUT',1,'admin',NULL,NULL,NULL),(1187,'::1',NULL,'2018-06-05 03:09:18','LOG IN',1,'admin',NULL,NULL,NULL),(1188,'::1',NULL,'2018-06-06 08:50:40','LOG IN',1,'admin',NULL,NULL,NULL),(1189,'::1',NULL,'2018-06-06 04:43:32','LOG OUT',1,'admin',NULL,NULL,NULL),(1190,'::1',NULL,'2018-06-07 08:34:45','LOG IN',1,'admin',NULL,NULL,NULL),(1191,'::1',NULL,'2018-06-09 08:17:21','LOG IN',1,'admin',NULL,NULL,NULL),(1192,'::1',NULL,'2018-06-10 08:49:09','LOG IN',1,'admin',NULL,NULL,NULL),(1193,'::1',NULL,'2018-06-11 08:58:08','LOG IN',1,'admin',NULL,NULL,NULL),(1194,'::1',NULL,'2018-06-11 09:06:29','LOG IN',1,'admin',NULL,NULL,NULL),(1195,'::1',NULL,'2018-06-11 01:08:36','LOG IN',1,'admin',NULL,NULL,NULL),(1196,'::1',NULL,'2018-06-23 09:20:39','LOG IN',1,'admin',NULL,NULL,NULL),(1197,'::1',NULL,'2018-06-23 04:44:34','LOG IN',1,'admin',NULL,NULL,NULL),(1198,'::1',NULL,'2018-06-23 05:08:40','LOG OUT',1,'admin',NULL,NULL,NULL),(1199,'::1',NULL,'2018-06-24 09:04:21','LOG IN',1,'admin',NULL,NULL,NULL),(1200,'::1',NULL,'2018-06-25 09:34:28','LOG IN',1,'admin',NULL,NULL,NULL),(1201,'::1',NULL,'2018-06-26 09:12:37','LOG IN',1,'admin',NULL,NULL,NULL),(1202,'::1',NULL,'2018-06-26 09:44:19','LOG OUT',1,'admin',NULL,NULL,NULL),(1203,'::1',NULL,'2018-06-26 09:44:30','LOG IN',1,'admin',NULL,NULL,NULL),(1204,'::1',NULL,'2018-06-26 09:45:14','LOG OUT',1,'admin',NULL,NULL,NULL),(1205,'::1',NULL,'2018-06-26 09:45:24','LOG IN',1,'admin',NULL,NULL,NULL),(1206,'::1',NULL,'2018-06-26 09:47:15','LOG OUT',1,'admin',NULL,NULL,NULL),(1207,'::1',NULL,'2018-06-26 11:25:20','LOG IN',1,'admin',NULL,NULL,NULL),(1208,'::1',NULL,'2018-06-26 02:29:24','LOG IN',1,'admin',NULL,NULL,NULL),(1209,'::1',NULL,'2018-06-26 02:29:51','LOG OUT',1,'admin',NULL,NULL,NULL),(1210,'::1',NULL,'2018-06-27 10:02:56','LOG IN',1,'admin',NULL,NULL,NULL),(1211,'::1',NULL,'2018-06-27 10:16:13','LOG IN',1,'admin',NULL,NULL,NULL),(1212,'::1',NULL,'2018-06-27 10:24:27','LOG OUT',1,'admin',NULL,NULL,NULL),(1213,'::1',NULL,'2018-06-27 10:26:15','LOG IN',1,'admin',NULL,NULL,NULL),(1214,'::1',NULL,'2018-06-27 10:55:01','LOG OUT',1,'admin',NULL,NULL,NULL),(1215,'::1',NULL,'2018-06-27 11:27:58','LOG IN',1,'admin',NULL,NULL,NULL),(1216,'127.0.0.1',NULL,'2018-06-27 12:29:59','LOG IN',1,'admin',NULL,NULL,NULL),(1217,'::1',NULL,'2018-06-27 03:20:01','LOG IN',1,'admin',NULL,NULL,NULL),(1218,'::1',NULL,'2018-06-28 08:54:40','LOG IN',1,'admin',NULL,NULL,NULL),(1219,'::1',NULL,'2018-06-28 10:58:20','LOG IN',1,'admin',NULL,NULL,NULL),(1220,'::1',NULL,'2018-06-28 10:58:49','LOG OUT',1,'admin',NULL,NULL,NULL),(1221,'::1',NULL,'2018-06-28 10:58:56','LOG IN',27,'akhi',NULL,NULL,NULL),(1222,'::1',NULL,'2018-06-28 11:01:23','LOG OUT',27,'akhi',NULL,NULL,NULL),(1223,'::1',NULL,'2018-06-28 11:01:28','LOG IN',1,'admin',NULL,NULL,NULL),(1224,'::1',NULL,'2018-06-28 12:40:54','LOG OUT',1,'admin',NULL,NULL,NULL),(1225,'::1',NULL,'2018-06-28 12:42:40','LOG IN',1,'admin',NULL,NULL,NULL),(1226,'::1',NULL,'2018-06-28 12:52:40','LOG IN',27,'akhi',NULL,NULL,NULL),(1227,'::1',NULL,'2018-06-28 02:01:28','LOG OUT',1,'admin',NULL,NULL,NULL),(1228,'::1',NULL,'2018-06-28 02:03:23','LOG IN',1,'admin',NULL,NULL,NULL),(1229,'::1',NULL,'2018-06-28 02:17:08','LOG IN',25,'foysal',NULL,NULL,NULL),(1230,'::1',NULL,'2018-06-28 03:20:20','LOG IN',1,'admin',NULL,NULL,NULL),(1231,'::1',NULL,'2018-06-28 03:40:31','LOG OUT',1,'admin',NULL,NULL,NULL),(1232,'::1',NULL,'2018-06-28 03:41:12','LOG IN',1,'admin',NULL,NULL,NULL),(1233,'::1',NULL,'2018-06-28 03:43:38','LOG OUT',1,'admin',NULL,NULL,NULL),(1234,'::1',NULL,'2018-06-28 03:44:04','LOG IN',1,'admin',NULL,NULL,NULL),(1235,'::1',NULL,'2018-06-28 03:44:22','LOG OUT',1,'admin',NULL,NULL,NULL),(1236,'::1',NULL,'2018-06-28 03:45:26','LOG IN',1,'admin',NULL,NULL,NULL),(1237,'192.168.0.28',NULL,'2018-06-28 03:54:59','LOG IN',1,'admin',NULL,NULL,NULL),(1238,'192.168.0.28',NULL,'2018-06-28 03:57:40','LOG IN',1,'admin',NULL,NULL,NULL),(1239,'192.168.0.28',NULL,'2018-06-28 04:41:33','LOG IN',1,'admin',NULL,NULL,NULL),(1240,'::1',NULL,'2018-06-30 09:13:25','LOG IN',1,'admin',NULL,NULL,NULL),(1241,'192.168.0.28',NULL,'2018-06-30 09:41:05','LOG IN',1,'admin',NULL,NULL,NULL),(1242,'::1',NULL,'2018-06-30 03:04:14','LOG IN',1,'admin',NULL,NULL,NULL),(1243,'::1',NULL,'2018-07-01 09:08:02','LOG IN',1,'admin',NULL,NULL,NULL),(1244,'::1',NULL,'2018-07-02 09:09:21','LOG IN',1,'admin',NULL,NULL,NULL),(1245,'::1',NULL,'2018-07-03 10:05:46','LOG IN',1,'admin',NULL,NULL,NULL),(1246,'::1',NULL,'2018-07-03 01:02:22','LOG IN',1,'admin',NULL,NULL,NULL),(1247,'::1',NULL,'2018-07-03 01:03:37','LOG OUT',1,'admin',NULL,NULL,NULL),(1248,'192.168.0.28',NULL,'2018-07-03 02:57:11','LOG IN',1,'admin',NULL,NULL,NULL),(1249,'::1',NULL,'2018-07-03 05:08:25','LOG IN',1,'admin',NULL,NULL,NULL),(1250,'::1',NULL,'2018-07-03 05:08:39','LOG OUT',1,'admin',NULL,NULL,NULL),(1251,'192.168.0.28',NULL,'2018-07-03 05:32:40','LOG IN',1,'admin',NULL,NULL,NULL),(1252,'::1',NULL,'2018-07-03 05:44:28','LOG IN',1,'admin',NULL,NULL,NULL),(1253,'::1',NULL,'2018-07-04 10:00:31','LOG IN',1,'admin',NULL,NULL,NULL),(1254,'::1',NULL,'2018-07-04 01:58:12','LOG IN',1,'admin',NULL,NULL,NULL),(1255,'::1',NULL,'2018-07-05 09:14:01','LOG IN',1,'admin',NULL,NULL,NULL),(1256,'::1',NULL,'2018-07-05 09:28:14','LOG IN',25,'foysal',NULL,NULL,NULL),(1257,'::1',NULL,'2018-07-05 09:56:00','LOG OUT',25,'foysal',NULL,NULL,NULL),(1258,'::1',NULL,'2018-07-05 09:56:14','LOG OUT',1,'admin',NULL,NULL,NULL),(1259,'::1',NULL,'2018-07-05 09:57:02','LOG IN',1,'admin',NULL,NULL,NULL),(1260,'::1',NULL,'2018-07-05 11:32:17','LOG IN',1,'admin',NULL,NULL,NULL),(1261,'192.168.0.28',NULL,'2018-07-05 01:02:34','LOG IN',1,'admin',NULL,NULL,NULL),(1262,'::1',NULL,'2018-07-05 03:20:16','LOG IN',1,'admin',NULL,NULL,NULL),(1263,'192.168.0.28',NULL,'2018-07-05 04:55:18','LOG IN',1,'admin',NULL,NULL,NULL),(1264,'192.168.0.28',NULL,'2018-07-05 04:55:31','LOG OUT',1,'admin',NULL,NULL,NULL),(1265,'192.168.0.28',NULL,'2018-07-05 05:15:36','LOG IN',1,'admin',NULL,NULL,NULL),(1266,'192.168.0.28',NULL,'2018-07-05 05:17:50','LOG OUT',1,'admin',NULL,NULL,NULL),(1267,'192.168.0.28',NULL,'2018-07-05 05:17:54','LOG IN',26,'shihab',NULL,NULL,NULL),(1268,'::1',NULL,'2018-07-07 09:01:47','LOG IN',1,'admin',NULL,NULL,NULL),(1269,'::1',NULL,'2018-07-08 05:24:47','LOG IN',1,'admin',NULL,NULL,NULL),(1270,'::1',NULL,'2018-07-07 04:34:53','LOG IN',1,'admin',NULL,NULL,NULL),(1271,'::1',NULL,'2018-07-07 04:35:27','LOG OUT',1,'admin',NULL,NULL,NULL),(1272,'::1',NULL,'2018-07-07 04:35:35','LOG IN',26,'shihab',NULL,NULL,NULL),(1273,'::1',NULL,'2018-07-08 09:26:34','LOG IN',1,'admin',NULL,NULL,NULL),(1274,'::1',NULL,'2018-07-08 11:23:49','LOG IN',1,'admin',NULL,NULL,NULL),(1275,'::1',NULL,'2018-07-08 05:45:45','LOG IN',1,'admin',NULL,NULL,NULL),(1276,'::1',NULL,'2018-07-10 09:29:37','LOG IN',26,'shihab',NULL,NULL,NULL),(1277,'::1',NULL,'2018-07-10 09:37:15','LOG OUT',26,'shihab',NULL,NULL,NULL),(1278,'::1',NULL,'2018-07-10 09:37:25','LOG IN',1,'admin',NULL,NULL,NULL),(1279,'::1',NULL,'2018-07-10 09:47:51','LOG OUT',1,'admin',NULL,NULL,NULL),(1280,'192.168.0.69',NULL,'2018-07-10 09:59:59','LOG IN',1,'admin',NULL,NULL,NULL),(1281,'192.168.0.28',NULL,'2018-07-10 11:23:08','LOG IN',1,'admin',NULL,NULL,NULL),(1282,'192.168.0.69',NULL,'2018-07-10 03:25:50','LOG IN',1,'admin',NULL,NULL,NULL),(1283,'192.168.0.28',NULL,'2018-07-11 02:54:23','LOG IN',1,'admin',NULL,NULL,NULL),(1284,'192.168.0.28',NULL,'2018-07-12 09:47:15','LOG IN',1,'admin',NULL,NULL,NULL),(1285,'192.168.0.84',NULL,'2018-07-12 12:21:36','LOG IN',1,'admin',NULL,NULL,NULL),(1286,'192.168.0.84',NULL,'2018-07-12 12:24:13','LOG OUT',1,'admin',NULL,NULL,NULL),(1287,'192.168.0.84',NULL,'2018-07-12 12:24:25','LOG IN',27,'akhi',NULL,NULL,NULL),(1288,'192.168.0.84',NULL,'2018-07-12 12:27:38','LOG OUT',27,'akhi',NULL,NULL,NULL),(1289,'192.168.0.84',NULL,'2018-07-12 12:27:43','LOG IN',1,'admin',NULL,NULL,NULL),(1290,'192.168.0.69',NULL,'2018-07-12 12:28:54','LOG IN',1,'admin',NULL,NULL,NULL),(1291,'192.168.0.84',NULL,'2018-07-12 12:31:38','LOG OUT',1,'admin',NULL,NULL,NULL),(1292,'192.168.0.84',NULL,'2018-07-12 12:39:31','LOG IN',1,'admin',NULL,NULL,NULL),(1293,'192.168.0.28',NULL,'2018-07-12 03:24:54','LOG IN',1,'admin',NULL,NULL,NULL),(1294,'::1',NULL,'2018-07-12 04:10:50','LOG IN',1,'admin',NULL,NULL,NULL),(1295,'::1',NULL,'2018-07-14 10:10:15','LOG IN',1,'admin',NULL,NULL,NULL),(1296,'::1',NULL,'2018-07-15 01:07:20','LOG IN',1,'admin',NULL,NULL,NULL),(1297,'192.168.0.84',NULL,'2018-07-14 04:02:33','LOG IN',1,'admin',NULL,NULL,NULL),(1298,'::1',NULL,'2018-07-15 10:40:11','LOG IN',1,'admin',NULL,NULL,NULL),(1299,'192.168.0.69',NULL,'2018-07-15 11:32:18','LOG IN',1,'admin',NULL,NULL,NULL),(1300,'192.168.0.69',NULL,'2018-07-15 04:25:08','LOG IN',1,'admin',NULL,NULL,NULL),(1301,'192.168.0.68',NULL,'2018-07-17 03:55:41','LOG IN',1,'admin',NULL,NULL,NULL),(1302,'192.168.0.66',NULL,'2018-07-17 04:01:19','LOG IN',1,'admin',NULL,NULL,NULL),(1303,'192.168.0.66',NULL,'2018-07-17 04:04:05','LOG OUT',1,'admin',NULL,NULL,NULL),(1304,'192.168.0.66',NULL,'2018-07-17 04:06:46','LOG IN',1,'admin',NULL,NULL,NULL),(1305,'192.168.0.66',NULL,'2018-07-17 04:07:39','LOG OUT',1,'admin',NULL,NULL,NULL),(1306,'::1',NULL,'2018-07-17 07:46:08','LOG IN',1,'admin',NULL,NULL,NULL),(1307,'192.168.0.69',NULL,'2018-07-18 04:35:27','LOG IN',1,'admin',NULL,NULL,NULL),(1308,'::1',NULL,'2018-07-18 04:41:23','LOG IN',1,'admin',NULL,NULL,NULL),(1309,'::1',NULL,'2018-07-18 05:51:24','LOG OUT',1,'admin',NULL,NULL,NULL),(1310,'::1',NULL,'2018-07-19 10:56:50','LOG IN',1,'admin',NULL,NULL,NULL),(1311,'192.168.0.69',NULL,'2018-07-19 11:35:17','LOG IN',1,'admin',NULL,NULL,NULL),(1312,'::1',NULL,'2018-07-22 03:36:04','LOG IN',1,'admin',NULL,NULL,NULL),(1313,'127.0.0.1',NULL,'2018-07-22 04:40:18','LOG IN',1,'admin',NULL,NULL,NULL),(1314,'::1',NULL,'2018-07-22 04:41:34','LOG IN',1,'admin',NULL,NULL,NULL),(1315,'::1',NULL,'2018-07-22 04:46:13','LOG IN',1,'admin',NULL,NULL,NULL),(1316,'::1',NULL,'2018-07-21 03:51:43','LOG IN',1,'admin',NULL,NULL,NULL),(1317,'192.168.0.28',NULL,'2018-07-21 05:17:50','LOG IN',1,'admin',NULL,NULL,NULL),(1318,'192.168.0.28',NULL,'2018-07-22 10:50:37','LOG IN',1,'admin',NULL,NULL,NULL),(1319,'::1',NULL,'2018-07-23 11:36:33','LOG IN',26,'shihab',NULL,NULL,NULL),(1320,'::1',NULL,'2018-07-24 02:09:06','LOG IN',1,'admin',NULL,NULL,NULL),(1321,'::1',NULL,'2018-07-24 02:14:49','LOG OUT',1,'admin',NULL,NULL,NULL),(1322,'::1',NULL,'2018-07-24 06:56:48','LOG IN',1,'admin',NULL,NULL,NULL),(1323,'::1',NULL,'2018-07-24 07:01:51','LOG OUT',1,'admin',NULL,NULL,NULL),(1324,'::1',NULL,'2018-07-24 07:01:57','LOG IN',27,'akhi',NULL,NULL,NULL),(1325,'::1',NULL,'2018-07-24 07:02:28','LOG OUT',27,'akhi',NULL,NULL,NULL),(1326,'::1',NULL,'2018-07-24 07:02:34','LOG IN',1,'admin',NULL,NULL,NULL),(1327,'::1',NULL,'2018-07-25 12:52:07','LOG IN',1,'admin',NULL,NULL,NULL),(1328,'::1',NULL,'2018-07-25 12:58:42','LOG OUT',1,'admin',NULL,NULL,NULL),(1329,'::1',NULL,'2018-07-25 12:58:49','LOG IN',25,'foysal',NULL,NULL,NULL),(1330,'::1',NULL,'2018-07-25 12:59:22','LOG OUT',25,'foysal',NULL,NULL,NULL),(1331,'::1',NULL,'2018-07-25 12:59:30','LOG IN',1,'admin',NULL,NULL,NULL),(1332,'::1',NULL,'2018-07-25 03:09:49','LOG IN',1,'admin',NULL,NULL,NULL),(1333,'::1',NULL,'2018-07-25 03:11:02','LOG IN',25,'foysal',NULL,NULL,NULL),(1334,'::1',NULL,'2018-07-25 03:53:01','LOG OUT',1,'admin',NULL,NULL,NULL),(1335,'::1',NULL,'2018-07-25 03:55:09','LOG IN',1,'admin',NULL,NULL,NULL),(1336,'::1',NULL,'2018-07-25 05:09:28','LOG OUT',1,'admin',NULL,NULL,NULL),(1337,'::1',NULL,'2018-07-25 05:09:38','LOG IN',25,'foysal',NULL,NULL,NULL),(1338,'::1',NULL,'2018-07-25 05:55:25','LOG OUT',25,'foysal',NULL,NULL,NULL),(1339,'::1',NULL,'2018-07-25 05:55:38','LOG IN',1,'admin',NULL,NULL,NULL),(1340,'::1',NULL,'2018-07-25 07:03:09','LOG OUT',25,'foysal',NULL,NULL,NULL),(1341,'::1',NULL,'2018-07-25 07:03:18','LOG IN',1,'admin',NULL,NULL,NULL),(1342,'::1',NULL,'2018-07-25 07:05:34','LOG IN',25,'foysal',NULL,NULL,NULL),(1343,'::1',NULL,'2018-07-25 07:37:08','LOG IN',1,'admin',NULL,NULL,NULL),(1344,'::1',NULL,'2018-07-25 07:42:00','LOG OUT',1,'admin',NULL,NULL,NULL),(1345,'::1',NULL,'2018-07-25 07:42:05','LOG IN',25,'foysal',NULL,NULL,NULL),(1346,'::1',NULL,'2018-07-25 07:42:54','LOG OUT',25,'foysal',NULL,NULL,NULL),(1347,'::1',NULL,'2018-07-26 04:42:47','LOG IN',1,'admin',NULL,NULL,NULL),(1348,'127.0.0.1',NULL,'2018-07-26 04:55:56','LOG IN',25,'foysal',NULL,NULL,NULL),(1349,'127.0.0.1',NULL,'2018-07-26 05:22:33','LOG OUT',25,'foysal',NULL,NULL,NULL),(1350,'127.0.0.1',NULL,'2018-07-26 05:22:42','LOG IN',25,'foysal',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `waiver_view`
--

DROP TABLE IF EXISTS `waiver_view`;
/*!50001 DROP VIEW IF EXISTS `waiver_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waiver_view` AS SELECT 
 1 AS `WAIVER_ID`,
 1 AS `WAIVER_NAME`,
 1 AS `ACTIVE_FLAG`,
 1 AS `SL_NO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `weeks`
--

DROP TABLE IF EXISTS `weeks`;
/*!50001 DROP VIEW IF EXISTS `weeks`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `weeks` AS SELECT 
 1 AS `DAY_ID`,
 1 AS `DAY_NAME`,
 1 AS `ACTIVE_FLAG`,
 1 AS `ABBR`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `building_floor`
--

/*!50001 DROP VIEW IF EXISTS `building_floor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `building_floor` AS select `m00_lkpdata`.`LKP_ID` AS `FLOOR_ID`,`m00_lkpdata`.`LKP_NAME` AS `FLOOR_NAME`,`m00_lkpdata`.`ACT_FG` AS `ACTIVE_FLAG`,`m00_lkpdata`.`SL_NO` AS `FLOOR_SL_NO` from `m00_lkpdata` where (`m00_lkpdata`.`GRP_ID` = 75) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `library_item_categoty`
--

/*!50001 DROP VIEW IF EXISTS `library_item_categoty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `library_item_categoty` AS select `m00_lkpdata`.`LKP_ID` AS `LIBRARY_ITEM_CATEGORY_ID`,`m00_lkpdata`.`LKP_NAME` AS `LIBRARY_ITEM_CATEGORY_NAME`,`m00_lkpdata`.`ACT_FG` AS `ACTIVE_FLAG`,`m00_lkpdata`.`SL_NO` AS `LIBRARY_ITEM_CATEGORY_SL_NO` from `m00_lkpdata` where (`m00_lkpdata`.`GRP_ID` = 82) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resident_seat`
--

/*!50001 DROP VIEW IF EXISTS `resident_seat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resident_seat` AS select `m00_lkpdata`.`LKP_ID` AS `SEAT_ID`,`m00_lkpdata`.`LKP_NAME` AS `SEAT_NAME`,`m00_lkpdata`.`ACT_FG` AS `ACTIVE_FLAG`,`m00_lkpdata`.`SL_NO` AS `SEAT_NO` from `m00_lkpdata` where (`m00_lkpdata`.`GRP_ID` = 79) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sav_semester`
--

/*!50001 DROP VIEW IF EXISTS `sav_semester`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sav_semester` AS select `m00_lkpdata`.`LKP_ID` AS `SEMESTER_ID`,`m00_lkpdata`.`LKP_NAME` AS `SEMESTER_NAME`,`m00_lkpdata`.`ACT_FG` AS `ACTIVE_FLAG`,`m00_lkpdata`.`SL_NO` AS `SL_NO` from `m00_lkpdata` where (`m00_lkpdata`.`GRP_ID` = 16) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waiver_view`
--

/*!50001 DROP VIEW IF EXISTS `waiver_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `waiver_view` AS select `m00_lkpdata`.`LKP_ID` AS `WAIVER_ID`,`m00_lkpdata`.`LKP_NAME` AS `WAIVER_NAME`,`m00_lkpdata`.`ACT_FG` AS `ACTIVE_FLAG`,`m00_lkpdata`.`SL_NO` AS `SL_NO` from `m00_lkpdata` where (`m00_lkpdata`.`GRP_ID` = 31) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `weeks`
--

/*!50001 DROP VIEW IF EXISTS `weeks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `weeks` AS select `m00_lkpdata`.`LKP_ID` AS `DAY_ID`,`m00_lkpdata`.`LKP_NAME` AS `DAY_NAME`,`m00_lkpdata`.`ACT_FG` AS `ACTIVE_FLAG`,`m00_lkpdata`.`ABBR` AS `ABBR` from `m00_lkpdata` where (`m00_lkpdata`.`GRP_ID` = 77) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-26 20:14:45