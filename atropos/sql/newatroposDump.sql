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
INSERT INTO `ADDRESS` VALUES (1,'STREET','CITY','PR'),(1100,'W 1ST AVE','Vancouver','BC'),(1101,'N 34TH AVE','Vancouver','BC'),(1102,'S 52ST ST','Vancouver','BC'),(1103,'E 3RD ST','Vancouver','BC'),(1104,'W 20TH AVE','Vancouver','BC'),(4563,'dora St','Vancouver','BC'),(4583,'Street2','City','KO'),(5555,'street','city','pr'),(45453,'asdfaasd St','adfsfadsi','AL'),(45832,'Street3','City','KO');
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
INSERT INTO `ADMINISTRATOR` VALUES ('cornlyfe','Admin'),('MeltedCrayons','Admin'),('pwnjerky','Admin'),('TinyToast','Admin'),('xxSNIP3Zxx','Admin');
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
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Email` (`Email`),
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
INSERT INTO `CUSTOMER` VALUES ('asdfadsf',45453,'s9s 2s','asdfasdf@adsfasdf.com'),('asdfg',45832,'asdfg','asdfg@asdfg.com'),('dora',4563,'v8v 9s',NULL),('iAmGaWd5436',1102,'V4H8D5','feeltheburn@gmail.com'),('pwnjerky',1100,'V5Q4D6','meatmaster512@gmail.com'),('ScrubbaDubb',1101,'V8F2M4','bathbombs@gmail.com'),('TinyToast',1103,'V2M8T4','butterthattoast@gmail.com'),('user',5555,'T8Y 9R',NULL),('xXxLoL4LyfexXx',1104,'V1P6J9','TeemoBestChamp@gmail.com');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `IID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  PRIMARY KEY (`IID`),
  KEY `Username` (`Username`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES (1,'send',0),(2,'send',0),(3,'send',0),(13,'man',20),(14,'asdfghj',80),(15,'dora',0),(16,'dora',0),(17,'dora',0),(18,'dora',0),(19,'dora',0),(20,'dora',0),(21,'dora',0),(22,'dora',0),(23,'dora',0),(24,'dora',0),(25,'dora',0),(26,'dora',0),(27,'dora',0),(28,'dora',0),(29,'dora',0),(30,'dora',0),(31,'dora',0),(32,'dora',0),(33,'dora',0),(34,'dora',0),(35,'dora',0),(36,'dora',0),(37,'dora',0),(38,'dora',0),(39,'dora',0),(40,'dora',0),(41,'dora',0),(42,'dora',0),(43,'dora',0),(44,'dora',0),(45,'dora',80),(46,'dora',80),(47,'dora',80),(48,'dora',80),(49,'dora',80),(50,'dora',80),(51,'dora',80),(52,'dora',80),(53,'dora',80),(54,'dora',80),(55,'dora',80),(56,'dora',80),(57,'dora',80),(58,'dora',80),(59,'dora',80),(60,'dora',80),(61,'dora',80),(62,'dora',80),(63,'dora',80),(64,'dora',80),(65,'dora',80),(66,'dora',80),(67,'dora',80),(68,'dora',80),(69,'dora',80),(70,'dora',80),(71,'dora',80),(72,'dora',80),(73,'dora',80),(74,'dora',80),(75,'dora',80),(76,'dora',80),(77,'dora',80),(78,'dora',80),(79,'dora',80),(80,'dora',80),(81,'dora',80),(82,'dora',80),(83,'dora',80),(84,'dora',80),(85,'dora',80),(86,'dora',80),(87,'dora',80),(88,'dora',80),(89,'dora',80),(90,'dora',80),(91,'dora',80),(92,'dora',80),(93,'dora',80),(94,'dora',80),(95,'dora',80),(96,'dora',80),(97,'dora',80),(98,'dora',80),(99,'dora',80),(100,'dora',80),(101,'dora',80),(103,'dora',80),(105,'dora',130);
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
  KEY `ProdID` (`ProdID`,`Type`),
  CONSTRAINT `JACKETS_ibfk_1` FOREIGN KEY (`ProdID`, `Type`) REFERENCES `PRODUCTS` (`ProdID`, `Type`) ON DELETE CASCADE ON UPDATE CASCADE
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
  KEY `ProdID` (`ProdID`,`Type`),
  CONSTRAINT `PANTS_ibfk_1` FOREIGN KEY (`ProdID`, `Type`) REFERENCES `PRODUCTS` (`ProdID`, `Type`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `Type` varchar(255) NOT NULL DEFAULT '',
  `Color` varchar(255) DEFAULT NULL,
  `Size` varchar(3) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Picture M` varchar(255) DEFAULT NULL,
  `Picture F` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProdID`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES (1,'Hoodie','Grey','XS',10,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8889374048286/5053325-COA00.jpg?w=2500&h=2500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8913035132958/5048215-PHA00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',20),(2,'Down Jacket','Blue','S',20,'https://images.arcteryx.com/F17/1350x1710/Cerium-LT-Jacket-Triton.jpg','https://images.arcteryx.com/F17/450x625/Cerium-LT-Jacket-W-Baja.png',25),(3,'Bomber','Black','M',30,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8882843942942/5053453-BK000.jpg',NULL,30),(4,'Parka','Black','L',40,'https://cdn.mec.ca/medias/sys_master/fallback/fallback/8804832018462/x5037064-BK000-fallback.jpg.pagespeed.ic.UcGBBgaP-0.webp','https://mec.imgix.net/medias/sys_master/high-res/high-res/8804812652574/5037007-BK113.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',35),(5,'WindBreaker','White','XL',50,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8842664607774/5051430-WHT00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8871425277982/5051498-WHT00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',40),(6,'Joggers','Black','XS',10,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8864644857886/5050542-BK000.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8889374801950/5050556-BK000.jpg?w=600&h=600&auto=format&q=40&fit=fill&bg=FFF',20),(7,'JEANS','Blue','S',20,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8867672686622/5048903-STN40.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8867674390558/5048867-STN38.jpg?w=600&h=600&auto=format&q=40&fit=fill&bg=FFF',25),(8,'Dress pants','Grey','M',30,'https://images.arcteryx.com/F17/1350x1710/A2B-Commuter-Pant-Carbon-Fibre.jpg','https://cdn.mec.ca/medias/sys_master/fallback/fallback/8904120926238/5050247-CAR49-fallback.jpg',30),(9,'Cargo Shorts','Red/Orange','L',40,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8864687325214/5044990-RAS00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://images.arcteryx.com/F17/450x625/Parapet-Long-W-Fiesta.png',35),(10,'Board Shorts','Black','XL',50,'https://images.arcteryx.com/F17/450x625/Lefroy-Short-Janus.png','https://images.arcteryx.com/F17/450x625/Ossa-Short-W-Carbon-Copy.png',40),(11,'Dress shirt','Grey/Black','XS',10,'https://images.arcteryx.com/F17/450x625/Merlon-Shirt-LS-Heron.png','https://mec.imgix.net/medias/sys_master/high-res/high-res/8862213537822/5040149-MDB30.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',20),(12,'V-NECK','Blue','S',20,'https://images.arcteryx.com/F17/450x625/A2B-V-Neck-Shirt-SS-Deja-Blue.png','https://images.arcteryx.com/F17/450x625/A2B-V-Neck-Shirt-SS-W-Castaway.png',25),(13,'Dryfit','Blue','M',30,'https://cdn.mec.ca/medias/sys_master/fallback/fallback/8890284408862/5053840-SPB11-fallback.jpg','https://mec.imgix.net/medias/sys_master/high-res/high-res/8875562795038/5042340-ABH01.jpg?w=600&h=600&auto=format&q=40&fit=fill&bg=FFF',30),(14,'Longsleeve','Black','L',40,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8803123789854/5035343-BK000.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8803319709726/5040197-BK113.jpg?w=600&h=600&auto=format&q=40&fit=fill&bg=FFF',35),(15,'Sweater','Light Grey','XL',50,'https://images.arcteryx.com/F17/450x625/Donavan-Crew-Neck-Sweater-Light-Grey-Heather.png','https://mec.imgix.net/medias/sys_master/high-res/high-res/8889373491230/5053330-JUT00.jpg?w=500&h=500&auto=format&q=40&fit=fill&bg=FFF',40),(16,'Flannel','Blue','M',14,'https://mec.imgix.net/medias/sys_master/high-res/high-res/8915204800542/5048854-AQU05.jpg?w=2500&h=2500&auto=format&q=40&fit=fill&bg=FFF','https://mec.imgix.net/medias/sys_master/high-res/high-res/8918711730206/5048207-OUT01.jpg?w=600&h=600&auto=format&q=40&fit=fill&bg=FFF',0);
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
  KEY `ProdID` (`ProdID`,`Type`),
  CONSTRAINT `SHIRTS_ibfk_1` FOREIGN KEY (`ProdID`, `Type`) REFERENCES `PRODUCTS` (`ProdID`, `Type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIRTS`
--

LOCK TABLES `SHIRTS` WRITE;
/*!40000 ALTER TABLE `SHIRTS` DISABLE KEYS */;
INSERT INTO `SHIRTS` VALUES (11,'Dress shirt'),(12,'V-NECK'),(13,'Dryfit'),(14,'Longsleeve'),(15,'Sweater'),(16,'Flannel');
/*!40000 ALTER TABLE `SHIRTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHOPPINGCART`
--

DROP TABLE IF EXISTS `SHOPPINGCART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHOPPINGCART` (
  `SCID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `ProdID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SCID`),
  KEY `ProdID` (`ProdID`),
  KEY `SHOPPINGCART_ibfk_1` (`Username`),
  CONSTRAINT `SHOPPINGCART_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `SHOPPINGCART_ibfk_2` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOPPINGCART`
--

LOCK TABLES `SHOPPINGCART` WRITE;
/*!40000 ALTER TABLE `SHOPPINGCART` DISABLE KEYS */;
INSERT INTO `SHOPPINGCART` VALUES (1,'cornlyfe',2),(2,'MeltedCrayons',2),(3,'send',2),(4,'xXxLoL4LyfexXx',2),(5,'420MLGPR0SK!LLZ',3),(17,'send',1),(18,'send',10),(19,'send',1),(20,'send',2),(28,'send',8),(38,'send',7),(39,'send',7),(42,'man',6),(43,'asdfghj',7),(44,'asdfghj',7),(45,'asdfghj',8),(46,'dora',4),(47,'dora',7),(48,'dora',11),(51,'dora',2),(52,'dora',2),(57,'man',10),(58,'man',1),(59,'man',12);
/*!40000 ALTER TABLE `SHOPPINGCART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `user_id` int(15) NOT NULL AUTO_INCREMENT,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `Username` varchar(256) NOT NULL,
  `PASSWORD` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,'GGPRO','Skilz','','420MLGPR0SK!LLZ','why'),(2,'Corn','Lyfe','','cornlyfe','onthecob'),(3,'i am ','god','','iAmGaWd5436','yup'),(4,'melted','Crayons','','MeltedCrayons','hello'),(5,'pwned','Jerky','','pwnjerky','beef'),(6,'Scrub','Dub','','ScrubbaDubb','rubberducky'),(7,'Send','help','','send','help'),(8,'tiny','toast','','TinyToast','butter'),(9,'xx','xx','','xxSNIP3Zxx','noscope'),(10,'LOL','xx','','xXxLoL4LyfexXx','mhm'),(11,'man','man','','man','$2y$10$wjQEFQuZfUvbSD7sHuK9lewW4MRG1z1M0ikJz.zxnQBreGIOhLRDu'),(12,'Alvin','TheMan','','TheMan','$2y$10$B18YuTZdkM3Ep24dV3FPOuXdQuFKYspBz9Ky8Ks5/EyRl0L33JbB6'),(13,'bob','builder','','bobby','$2y$10$1gAljw.hsaefO4kk6v9z6u3P1idEfvhR1AzfTuwqymvUnhbiPxL8.'),(20,'Alvin','Ng','','alvinoalvin','$2y$10$IYbv1WSs7aUmW89HSfrJv.Ckp3W0Nr5F8uRyV7ptS30d0.V51o/5O'),(21,'sadf','Ngsadf','','asdfadsfasdf','$2y$10$nUdT2ZXvlfsThqtQYFAEmuCkVYLfGpdkB7W.aIuc2Wg8d2S4y9e3G'),(22,'asdfasdf','asdfasdf','','asdfadsf','$2y$10$fqhmZJk0AbglIHIORwYxnOVxL4IW0uw2tonRuZgMS3Mej/UXt.5Pi'),(23,'asdfg','asdfg','','asdfg','$2y$10$aMQnmYlGl8ISUnEuKBnZ4ee2ctksM958UowWQng1A4803/jPvdc/K'),(24,'asdfghj','asdfghj','asdfghj@asdf.com','asdfghj','$2y$10$5adLQ662FVoFwRpJDWg4lOyG1L7mfqX4ItQRuHflzETc/K9LROIZi'),(25,'dora','theExplorer','doraexplores@gmail.com','dora','$2y$10$9J/k/EqPNGGg1Sttq7wEhurzn/9aNQErMrD9w5Oibj2L4XNxn31z6'),(26,'Joe','Smith','userdave@gmail.com','user','$2y$10$UMonwLvk.GEz3Zs5VsmF.Oiek1JDRpuxv6mYzfUXkZf6xs0UX.6PW');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WISHLIST`
--

DROP TABLE IF EXISTS `WISHLIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WISHLIST` (
  `WishID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `ProdID` int(11) DEFAULT NULL,
  PRIMARY KEY (`WishID`),
  KEY `ProdID` (`ProdID`),
  KEY `WISHLIST_ibfk_1` (`Username`),
  CONSTRAINT `WISHLIST_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `WISHLIST_ibfk_2` FOREIGN KEY (`ProdID`) REFERENCES `PRODUCTS` (`ProdID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WISHLIST`
--

LOCK TABLES `WISHLIST` WRITE;
/*!40000 ALTER TABLE `WISHLIST` DISABLE KEYS */;
INSERT INTO `WISHLIST` VALUES (1,'cornlyfe',2),(2,'TinyToast',2),(3,'xxSNIP3Zxx',3),(4,'pwnjerky',3),(5,'send',4),(6,'send',2),(7,'send',3),(9,'send',7),(16,'asdfghj',7),(17,'asdfghj',7),(29,'asdfghj',1),(30,'asdfghj',6),(31,'asdfghj',10),(32,'dora',1),(33,'dora',1);
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

-- Dump completed on 2017-11-21  8:04:35
