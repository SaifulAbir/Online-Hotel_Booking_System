-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ezest
-- ------------------------------------------------------
-- Server version	8.0.3-rc-log

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
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation` (
  `LocationID` varchar(100) NOT NULL,
  `LocationName` varchar(200) DEFAULT NULL,
  `LocationImage` varchar(200) DEFAULT NULL,
  `LocationDesc` tinytext,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES ('L001','Gulshan','Gulshang.jpg','Gulshan is an affluent neighbourhood in Dhaka, the capital of Bangladesh. A residential area, Gulshan is now home to a number of the citys restaurants, shopping centres, schools and members clubs.'),('L002','Chattogram','484704182-chittagong-crowded-city-view-metropolis-city.png','Chattogram is a major coastal seaport city and financial centre in southeastern Bangladesh. '),('L003','Sylhet','canva-photo-editor (8).png','Sylhet, also known as Jalalabad, the spiritual capital; is a metropolitan city in northeastern Bangladesh. It is the administrative seat of Sylhet Division.');
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingsinfo`
--

DROP TABLE IF EXISTS `bookingsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookingsinfo` (
  `BookingID` varchar(100) NOT NULL,
  `ResortID` varchar(100) DEFAULT NULL,
  `RoomID` varchar(100) DEFAULT NULL,
  `LocationName` varchar(100) DEFAULT NULL,
  `UserID` varchar(100) DEFAULT NULL,
  `MemberType` varchar(100) DEFAULT NULL,
  `RoomCharges` float DEFAULT NULL,
  `From` date DEFAULT NULL,
  `To` date DEFAULT NULL,
  `BookingStatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingsinfo`
--

LOCK TABLES `bookingsinfo` WRITE;
/*!40000 ALTER TABLE `bookingsinfo` DISABLE KEYS */;
INSERT INTO `bookingsinfo` VALUES ('B01','R001','R0011','Gulshan','abir','Platinum',896,'2018-04-08','2018-04-11','Booked');
/*!40000 ALTER TABLE `bookingsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `FId` int(10) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(100) DEFAULT NULL,
  `Feedback` text,
  `DateSubmitted` date DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (2,'abir','We are very happy with their service.','2018-04-07');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `From` varchar(200) NOT NULL DEFAULT '',
  `To` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `UserID` varchar(200) NOT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Auth` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('abir','123456','1'),('admin','admin','0'),('admin00','admin00','0'),('admina','admina','0'),('dipa','dipa','1'),('Rayhan','rayhan','1'),('sykhul','123456','1');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resortsinfo`
--

DROP TABLE IF EXISTS `resortsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resortsinfo` (
  `ResortID` varchar(100) NOT NULL,
  `LocationName` varchar(100) DEFAULT NULL,
  `ResortImage` varchar(200) DEFAULT NULL,
  `NoOfRooms` int(50) DEFAULT NULL,
  `NoOfRoomsAvailable` int(50) DEFAULT NULL,
  `Restaurant` varchar(100) DEFAULT NULL,
  `Swimmingpool` varchar(100) DEFAULT NULL,
  `GamesRoom` varchar(100) DEFAULT NULL,
  `Casino` varchar(100) DEFAULT NULL,
  `YogaandMeditation` varchar(100) DEFAULT NULL,
  `SteamBath` varchar(100) DEFAULT NULL,
  `GymandHealthCenter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ResortID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resortsinfo`
--

LOCK TABLES `resortsinfo` WRITE;
/*!40000 ALTER TABLE `resortsinfo` DISABLE KEYS */;
INSERT INTO `resortsinfo` VALUES ('R001','Gulshan','pacificlogo.png',11,11,'Yes','Yes','Yes','No','Yes','Yes','Yes'),('R002','Chattogram','canva-photo-editor (4).png',5,5,'Yes','Yes','Yes','Yes','Yes','Yes','Yes');
/*!40000 ALTER TABLE `resortsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomsinfo`
--

DROP TABLE IF EXISTS `roomsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomsinfo` (
  `Sno` varchar(100) NOT NULL,
  `RoomID` varchar(100) DEFAULT NULL,
  `ResortID` varchar(100) DEFAULT NULL,
  `LocationName` varchar(100) DEFAULT NULL,
  `RoomType` varchar(100) DEFAULT NULL,
  `RoomArea` varchar(100) DEFAULT NULL,
  `DryKitchenette` varchar(100) DEFAULT NULL,
  `SofacumBed` varchar(100) DEFAULT NULL,
  `DoubleBeds` varchar(100) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Television` varchar(100) DEFAULT NULL,
  `RoomCharges` float DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomsinfo`
--

LOCK TABLES `roomsinfo` WRITE;
/*!40000 ALTER TABLE `roomsinfo` DISABLE KEYS */;
INSERT INTO `roomsinfo` VALUES ('1','R0011','R001','Gulshan','StudioApartment','1450','Yes','Yes','Yes','Yes','Yes',1000),('2','R0022','R002','Chattogram','DoubleBedRoomApartment','1423','Yes','No','Yes','Yes','Yes',2000);
/*!40000 ALTER TABLE `roomsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `RegID` varchar(50) NOT NULL,
  `UserID` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Age` varchar(100) DEFAULT NULL,
  `EmailAddress` varchar(100) DEFAULT NULL,
  `Address` tinytext,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Occupation` varchar(100) DEFAULT NULL,
  `MemberType` varchar(100) DEFAULT NULL,
  `AmountDeposited` float DEFAULT NULL,
  `approve` int(10) DEFAULT NULL,
  PRIMARY KEY (`RegID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` VALUES ('M001','abir','Saiful','Islam','21','saifulislamlk@gmail.com','Uttara, Dhaka','01626296800','Student','',13208,1),('M004','Rayhan','si','rayhan','22','sirayhan87@gmail.com','hjasgdjhagdjh','01521441735','student','Blocked',0,1),('M005','dipa','dipa','paul','20','dipaiubat@gmail.com','asdfhgjh','0152144173','stu','',-985.6,1);
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-07 19:24:35
