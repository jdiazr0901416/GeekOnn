CREATE DATABASE  IF NOT EXISTS `geekonn` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `geekonn`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: geekonn
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Table structure for table `tabla_amigos_1`
--

DROP TABLE IF EXISTS `tabla_amigos_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabla_amigos_1` (
  `idAmigo` int(11) NOT NULL,
  `bloqueado` varchar(45) DEFAULT '0',
  PRIMARY KEY (`idAmigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_amigos_1`
--

LOCK TABLES `tabla_amigos_1` WRITE;
/*!40000 ALTER TABLE `tabla_amigos_1` DISABLE KEYS */;
INSERT INTO `tabla_amigos_1` VALUES (1,'1'),(2,'0'),(3,'0');
/*!40000 ALTER TABLE `tabla_amigos_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_amigos_4`
--

DROP TABLE IF EXISTS `tabla_amigos_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabla_amigos_4` (
  `idAmigo` int(11) NOT NULL AUTO_INCREMENT,
  `bloqueado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAmigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_amigos_4`
--

LOCK TABLES `tabla_amigos_4` WRITE;
/*!40000 ALTER TABLE `tabla_amigos_4` DISABLE KEYS */;
INSERT INTO `tabla_amigos_4` VALUES (1,1),(2,1),(3,0);
/*!40000 ALTER TABLE `tabla_amigos_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariosgeekonn`
--

DROP TABLE IF EXISTS `usuariosgeekonn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariosgeekonn` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `estudios` varchar(45) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariosgeekonn`
--

LOCK TABLES `usuariosgeekonn` WRITE;
/*!40000 ALTER TABLE `usuariosgeekonn` DISABLE KEYS */;
INSERT INTO `usuariosgeekonn` VALUES (1,'julio','julio','julio','sgde','weg','m'),(2,'rivera','rivera','rivera','AGS','EWG','m'),(3,'bouchan','bouchan','bouchan','EWG','weFG','m'),(4,'jdiazr','Julio Diaz Rodriguez','46D999EA1551','jdiazr0901416@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `usuariosgeekonn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-30 11:52:05
