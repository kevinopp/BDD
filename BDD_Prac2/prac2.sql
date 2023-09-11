-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bdd
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `p2_usuarios`
--

DROP TABLE IF EXISTS `p2_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2_usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `No_control` int(11) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Edad` varchar(45) DEFAULT NULL,
  `Oficio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p2_usuarios`
--

LOCK TABLES `p2_usuarios` WRITE;
/*!40000 ALTER TABLE `p2_usuarios` DISABLE KEYS */;
INSERT INTO `p2_usuarios` VALUES (1,12,'Pedro Lopez','Manzanita 100','Ensenada','19','Estudiante'),(2,32,'Jose Rodriguez','Melon 23-4','Mexicali','20','Abogado'),(3,54,'Juan Jimenez','Lechuga 987','Tijuana','21','Abogado'),(4,78,'Mario Vazquez','A. L. Mandarina 2345','Mexicali','21','Estudiante'),(5,29,'Adolfo Alvarez','Jamaica 199','Tecate','21','Abogado'),(6,90,'Alissa Sandoval','Guayaba 987','Tijuana','21','Secretaria'),(7,73,'Sandra Medina','Rio fresa 200','Mexicali','20','Secretaria'),(8,99,'Carmen Garcia','A. 1. Limones 234','Ensenada','19','Secretaria'),(9,34,'Rocio Ortiz','Pina 987','Tecate','20','Estudiante');
/*!40000 ALTER TABLE `p2_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 11:39:31
