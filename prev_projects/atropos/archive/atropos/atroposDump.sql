-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: atropos
-- ------------------------------------------------------
-- Server version	5.5.58-0ubuntu0.14.04.1

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
-- Table structure for table `ADDRESS`
--

DROP TABLE IF EXISTS `ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDRESS` (
  `HouseNum` int(11) NOT NULL DEFAULT '0',
  `Street` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Province` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`HouseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESS`
--

LOCK TABLES `ADDRESS` WRITE;
/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
INSERT INTO `ADDRESS` VALUES (1100,'W 1ST AVE','Vancouver','BC'),(1101,'N 34TH AVE','Vancouver','BC'),(1102,'S 52ST ST','Vancouver','BC'),(1103,'E 3RD ST','Vancouver','BC'),(1104,'W 20TH AVE','Vancouver','BC');
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ADMINISTRATOR`
--

DROP TABLE IF EXISTS `ADMINISTRATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMINISTRATOR` (
  `Username` varchar(30) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`),
  CONSTRAINT `ADMINISTRATOR_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMINISTRATOR`
--

LOCK TABLES `ADMINISTRATOR` WRITE;
/*!40000 ALTER TABLE `ADMINISTRATOR` DISABLE KEYS */;
INSERT INTO `ADMINISTRATOR` VALUES ('cornlyfe','Manager'),('MeltedCrayons','Employee'),('pwnjerky','Mod'),('TinyToast','Owner'),('xxSNIP3Zxx','Employee');
/*!40000 ALTER TABLE `ADMINISTRATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `Username` varchar(30) NOT NULL DEFAULT '',
  `HouseNum` int(11) DEFAULT NULL,
  `Postal_CODE` varchar(6) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PhoneNum` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `PhoneNum` (`PhoneNum`),
  KEY `HouseNum` (`HouseNum`),
  CONSTRAINT `CUSTOMER_ibfk_1` FOREIGN KEY (`HouseNum`) REFERENCES `ADDRESS` (`HouseNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CUSTOMER_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES ('iAmGaWd5436',1102,'V4H8D5','feeltheburn@gmail.com',7784569638),('pwnjerky',1100,'V5Q4D6','meatmaster512@gmail.com',6047513259),('ScrubbaDubb',1101,'V8F2M4','bathbombs@gmail.com',7786243218),('TinyToast',1103,'V2M8T4','butterthattoast@gmail.com',6047831248),('xXxLoL4LyfexXx',1104,'V1P6J9','TeemoBestChamp@gmail.com',6049517536);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `IID` int(11) NOT NULL DEFAULT '0',
  `SCID` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  PRIMARY KEY (`IID`),
  KEY `SCID` (`SCID`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`SCID`) REFERENCES `SHOPPINGCART` (`SCID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES (1001,1,1000),(1002,5,1001),(1003,2,1002),(1004,3,1003),(1005,4,1004);
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JACKETS`
--

DROP TABLE IF EXISTS `JACKETS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JACKETS` (
  `ProdID` int(11) NOT NULL DEFAULT '0',
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProdID`),
  CONSTRAINT `JACKETS_ibfk_1` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JACKETS`
--

LOCK TABLES `JACKETS` WRITE;
/*!40000 ALTER TABLE `JACKETS` DISABLE KEYS */;
INSERT INTO `JACKETS` VALUES (1,'Hoodie'),(2,'Down Jacket'),(3,'Bomber'),(4,'Parka'),(5,'WindBreaker');
/*!40000 ALTER TABLE `JACKETS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PANTS`
--

DROP TABLE IF EXISTS `PANTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PANTS` (
  `ProdID` int(11) NOT NULL DEFAULT '0',
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProdID`),
  CONSTRAINT `PANTS_ibfk_1` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PANTS`
--

LOCK TABLES `PANTS` WRITE;
/*!40000 ALTER TABLE `PANTS` DISABLE KEYS */;
INSERT INTO `PANTS` VALUES (6,'Joggers'),(7,'JEANS'),(8,'Dress pants'),(9,'Cargo Shorts'),(10,'Board Shorts');
/*!40000 ALTER TABLE `PANTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTS` (
  `ProdID` int(11) NOT NULL DEFAULT '0',
  `Color` varchar(255) DEFAULT NULL,
  `Size` varchar(3) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Picture M` varchar(255) DEFAULT NULL,
  `Picture F` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES (1,'Blue','XS',10,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8891493842974/5053325-DBU00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8913035132958/5048215-PHA00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',20,'M'),(2,'Black','S',20,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8912395599902/5047695-BK000.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://images.arcteryx.com/F17/450x625/Cerium-LT-Jacket-W-Baja.png',25,'F'),(3,'Black','M',30,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8882843942942/5053453-BK000.jpg',NULL,30,'M'),(4,'Black','L',40,'https://cdn.mec.ca/medias/sys_master/fallback/fallback/8804832018462/x5037064-BK000-fallback.jpg.pagespeed.ic.UcGBBgaP-0.webp','https://mec.imgix.net/medias/sys_master/high-res/high-res/8804812652574/5037007-BK113.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',35,'F'),(5,'White','XL',50,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8842664607774/5051430-WHT00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8871425277982/5051498-WHT00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',40,'M'),(6,'Red','XS',10,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8864644857886/5050542-BK000.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8867669442590/5050556-COA00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',20,'M'),(7,'Blue','S',20,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8867672686622/5048903-STN40.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8800405782558/5048867-BK000.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',25,'F'),(8,'Green','M',30,'https://images.arcteryx.com/F17/450x625/A2B-Commuter-Pant-Nighthawk.png','https://cdn.mec.ca/medias/sys_master/fallback/fallback/8904120926238/5050247-CAR49-fallback.jpg',30,'M'),(9,'Yellow','L',40,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8864687325214/5044990-RAS00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://images.arcteryx.com/F17/450x625/Parapet-Long-W-Fiesta.png',35,'F'),(10,'Orange','XL',50,'https://images.arcteryx.com/F17/450x625/Lefroy-Short-Janus.png','https://images.arcteryx.com/F17/1350x1710/Ossa-Short-W-Scarlet.jpg',40,'M'),(11,'Red','XS',10,'https://images.arcteryx.com/F17/450x625/Merlon-Shirt-LS-Heron.png','https://mec.imgix.net/medias/sys_master/high-res/high-res/8862213537822/5040149-MDB30.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',20,'M'),(12,'Blue','S',20,'https://images.arcteryx.com/F17/450x625/A2B-V-Neck-Shirt-SS-Admiral.png','https://images.arcteryx.com/F17/450x625/A2B-V-Neck-Shirt-SS-W-Castaway.png',25,'F'),(13,'Green','M',30,'https://cdn.mec.ca/medias/sys_master/fallback/fallback/8890284408862/5053840-SPB11-fallback.jpg','https://mec.imgix.net/medias/sys_master/high-res/high-res/8802234335262/5042340-DGR09.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',30,'M'),(14,'Yellow','L',40,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8803123789854/5035343-BK000.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8892799615006/5040197-MDB05.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',35,'F'),(15,'Orange','XL',50,'https://images.arcteryx.com/F17/450x625/Donavan-Crew-Neck-Sweater-Black.png','https://mec.imgix.net/medias/sys_master/high-res/high-res/8889373491230/5053330-JUT00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',40,'M'),(16,'Grey','M',14,' https://mec.imgix.net/medias/sys_master/high-res/high-res/8892250882078/5048854-SPT01.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',' https://mec.imgix.net/medias/sys_master/high-res/high-res/8918711730206/5048207-OUT01.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',0,'M');
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIRTS`
--

DROP TABLE IF EXISTS `SHIRTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIRTS` (
  `ProdID` int(11) NOT NULL DEFAULT '0',
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProdID`),
  CONSTRAINT `SHIRTS_ibfk_1` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIRTS`
--

LOCK TABLES `SHIRTS` WRITE;
/*!40000 ALTER TABLE `SHIRTS` DISABLE KEYS */;
INSERT INTO `SHIRTS` VALUES (11,'Dress shirt\r\n'),(12,'V-NECK'),(13,'Dryfit'),(14,'Longsleeve'),(15,'Sweater'),(16,'Flannel');
/*!40000 ALTER TABLE `SHIRTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHOPPINGCART`
--

DROP TABLE IF EXISTS `SHOPPINGCART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHOPPINGCART` (
  `SCID` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(255) DEFAULT NULL,
  `ProdID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SCID`),
  UNIQUE KEY `Username` (`Username`),
  KEY `ProdID` (`ProdID`),
  CONSTRAINT `SHOPPINGCART_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `SHOPPINGCART_ibfk_2` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOPPINGCART`
--

LOCK TABLES `SHOPPINGCART` WRITE;
/*!40000 ALTER TABLE `SHOPPINGCART` DISABLE KEYS */;
INSERT INTO `SHOPPINGCART` VALUES (1,'cornlyfe',2),(2,'MeltedCrayons',2),(3,'send',2),(4,'xXxLoL4LyfexXx',2),(5,'420MLGPR0SK!LLZ',3);
/*!40000 ALTER TABLE `SHOPPINGCART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `Username` varchar(30) NOT NULL DEFAULT '',
  `PASSWORD` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES ('420MLGPR0SK!LLZ','why'),('cornlyfe','onthecob'),('iAmGaWd5436','yup'),('MeltedCrayons','hello'),('pwnjerky','beef'),('ScrubbaDubb','rubberducky'),('send','help'),('TinyToast','butter'),('xxSNIP3Zxx','noscope'),('xXxLoL4LyfexXx','mhm');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WISHLIST`
--

DROP TABLE IF EXISTS `WISHLIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WISHLIST` (
  `WishID` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(255) DEFAULT NULL,
  `ProdID` int(11) DEFAULT NULL,
  PRIMARY KEY (`WishID`),
  UNIQUE KEY `Username` (`Username`),
  KEY `ProdID` (`ProdID`),
  CONSTRAINT `WISHLIST_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `WISHLIST_ibfk_2` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WISHLIST`
--

LOCK TABLES `WISHLIST` WRITE;
/*!40000 ALTER TABLE `WISHLIST` DISABLE KEYS */;
INSERT INTO `WISHLIST` VALUES (1,'cornlyfe',2),(2,'TinyToast',2),(3,'xxSNIP3Zxx',3),(4,'pwnjerky',3),(5,'send',4);
/*!40000 ALTER TABLE `WISHLIST` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-17  8:02:39
