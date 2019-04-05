-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: PROJECT
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
-- Table structure for table `HORSE`
--

DROP TABLE IF EXISTS `HORSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HORSE` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `BREED` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `STRENGTH` int(11) DEFAULT NULL,
  `SPEED` int(11) DEFAULT NULL,
  `STAMINA` int(11) DEFAULT NULL,
  `PRICEINGOLD` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HORSE`
--

LOCK TABLES `HORSE` WRITE;
/*!40000 ALTER TABLE `HORSE` DISABLE KEYS */;
INSERT INTO `HORSE` VALUES (1,'Standardbred','imgs/show.jpg','SHOW',4,5,5,15),(2,'Thoroughbred','imgs/war.jpg','WAR',5,4,6,17),(3,'Shire Horse','imgs/work.jpg','WORK',6,6,4,10),(4,'Pecheron','imgs/carriage.jpg','CARRIAGE',5,10,10,20);
/*!40000 ALTER TABLE `HORSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMAGES`
--

DROP TABLE IF EXISTS `IMAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMAGES` (
  `LINK` varchar(255) DEFAULT NULL,
  `PIC` varchar(255) DEFAULT NULL,
  `ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMAGES`
--

LOCK TABLES `IMAGES` WRITE;
/*!40000 ALTER TABLE `IMAGES` DISABLE KEYS */;
INSERT INTO `IMAGES` VALUES ('https://i.pinimg.com/564x/24/d7/ec/24d7ec8bb462a9568a900a22ca57aba4.jpg','https://i.pinimg.com/564x/24/d7/ec/24d7ec8bb462a9568a900a22ca57aba4.jpg',1),('https://media.giphy.com/media/pkiFiVk1uJvb2/source.gif','https://media.giphy.com/media/pkiFiVk1uJvb2/source.gif',2),('https://media.giphy.com/media/OgrvW7OLlqQ6s/giphy.gif','https://media.giphy.com/media/OgrvW7OLlqQ6s/giphy.gif',3),('https://cdn.bulbagarden.net/upload/thumb/1/11/203Girafarig.png/250px-203Girafarig.png','https://cdn.bulbagarden.net/upload/thumb/1/11/203Girafarig.png/250px-203Girafarig.png',4),('https://wikimon.net/images/9/98/Pegasmon.jpg','https://wikimon.net/images/9/98/Pegasmon.jpg',5),('http://i.imgur.com/h7R4eOl.png','http://i.imgur.com/h7R4eOl.png',6),('https://cdn.shopify.com/s/files/1/0267/4223/products/Stabby-The-Unicorn-Pink-clean_800x.jpg?v=1510687035','https://cdn.shopify.com/s/files/1/0267/4223/products/Stabby-The-Unicorn-Pink-clean_800x.jpg?v=1510687035',7),('http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=430695&type=card','http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=430695&type=card',8),('https://i.pinimg.com/736x/16/ae/83/16ae83fc9c39b1760288994b74fcc790--animals-photos-pegasus.jpg','https://i.pinimg.com/736x/16/ae/83/16ae83fc9c39b1760288994b74fcc790--animals-photos-pegasus.jpg',9),('https://i.makeagif.com/media/5-22-2015/_S0pY5.gif','https://i.makeagif.com/media/5-22-2015/_S0pY5.gif',10),('https://i.kinja-img.com/gawker-media/image/upload/s--MxO4JXZh--/c_scale,fl_progressive,q_80,w_800/i9tsyhxnep4j2tq4obse.jpg','https://i.kinja-img.com/gawker-media/image/upload/s--MxO4JXZh--/c_scale,fl_progressive,q_80,w_800/i9tsyhxnep4j2tq4obse.jpg',11),('https://myanimelist.cdn-dena.com/s/common/uploaded_files/1461529168-b0a79ccf63eb81f6f00a86da247e9fdc.png','https://myanimelist.cdn-dena.com/s/common/uploaded_files/1461529168-b0a79ccf63eb81f6f00a86da247e9fdc.png',12),('http://gifimage.net/wp-content/uploads/2017/08/monokuma-gif-18.gif','http://gifimage.net/wp-content/uploads/2017/08/monokuma-gif-18.gif',13),('http://www.queeky.com/share/drawings/fan-art/106366/headless-horseman.jpg','http://www.queeky.com/share/drawings/fan-art/106366/headless-horseman.jpg',14);
/*!40000 ALTER TABLE `IMAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHOPPINGCART`
--

DROP TABLE IF EXISTS `SHOPPINGCART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHOPPINGCART` (
  `SCID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `HID` int(11) NOT NULL,
  PRIMARY KEY (`SCID`),
  KEY `HID` (`HID`),
  KEY `Username` (`Username`),
  CONSTRAINT `SHOPPINGCART_ibfk_1` FOREIGN KEY (`HID`) REFERENCES `HORSE` (`ID`),
  CONSTRAINT `SHOPPINGCART_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `USER` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOPPINGCART`
--

LOCK TABLES `SHOPPINGCART` WRITE;
/*!40000 ALTER TABLE `SHOPPINGCART` DISABLE KEYS */;
INSERT INTO `SHOPPINGCART` VALUES (3,'asdf',4),(4,'asdf',1),(5,'asdf',1),(6,'asdf',1),(7,'asdf',1),(8,'asdf',3),(9,'asdf',3),(10,'asdf',2);
/*!40000 ALTER TABLE `SHOPPINGCART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES ('',''),('1111','1111'),('456','4569'),('4563','4651'),('486986','68461531'),('84355316','8434354534685'),('asdf','asdf'),('asdfg','asdf'),('asdfgh','asdfgh'),('blah','ewww'),('kami','sama'),('newUser','newuser'),('Pooper','1991'),('user','pass'),('why wont u work','asdfasdf');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'PROJECT'
--
/*!50003 DROP PROCEDURE IF EXISTS `createUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `createUser`(IN `user` VARCHAR(255), IN `pass` VARCHAR(255))
    NO SQL
INSERT INTO `USER`(`Username`, `Password`) 
VALUES (user, pass) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `getCart`(IN `user` VARCHAR(255))
    NO SQL
SELECT HORSE.*
FROM SHOPPINGCART, HORSE
WHERE SHOPPINGCART.HID = HORSE.ID
and SHOPPINGCART.Username = user ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `getUser`(IN `user` VARCHAR(255), IN `pass` VARCHAR(255))
    NO SQL
SELECT username 
FROM USER 
WHERE username = user 
and password = pass ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `q1`(IN `HTYPE` VARCHAR(255))
    NO SQL
BEGIN
    SELECT * FROM HORSE
	WHERE TYPE = HTYPE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `q2`()
    NO SQL
SELECT * FROM IMAGES ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `qAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `qAll`()
    NO SQL
BEGIN
Select * from HORSE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `toCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`alvinoalvin`@`%` PROCEDURE `toCart`(IN `user` VARCHAR(255), IN `type` VARCHAR(255))
    NO SQL
INSERT INTO `SHOPPINGCART`(`Username`, `HID`) VALUES ("user",(SELECT ID FROM HORSE WHERE ID = "type")) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-01 10:33:57
