-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: TEA
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `acudiente`
--

DROP TABLE IF EXISTS `acudiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acudiente` (
  `id_acudiente` int(10) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(12) NOT NULL,
  `correo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_acudiente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acudiente`
--

LOCK TABLES `acudiente` WRITE;
/*!40000 ALTER TABLE `acudiente` DISABLE KEYS */;
INSERT INTO `acudiente` VALUES (1,1,'Luis','Diaz','3262920','Carrera 69 #','luis.diaz@gmail.com');
/*!40000 ALTER TABLE `acudiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adjuntohistclinica`
--

DROP TABLE IF EXISTS `adjuntohistclinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjuntohistclinica` (
  `id_adjunto` int(10) NOT NULL AUTO_INCREMENT,
  `id_hist` int(10) NOT NULL,
  `observacion` varchar(80) DEFAULT NULL,
  `adjunto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_adjunto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjuntohistclinica`
--

LOCK TABLES `adjuntohistclinica` WRITE;
/*!40000 ALTER TABLE `adjuntohistclinica` DISABLE KEYS */;
INSERT INTO `adjuntohistclinica` VALUES (1,1,'Observacion realizada por especialista','Sin adjunto');
/*!40000 ALTER TABLE `adjuntohistclinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendamiento`
--

DROP TABLE IF EXISTS `agendamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendamiento` (
  `id_agenda` int(10) NOT NULL AUTO_INCREMENT,
  `id_especialista` int(10) NOT NULL,
  `id_paciente` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamiento`
--

LOCK TABLES `agendamiento` WRITE;
/*!40000 ALTER TABLE `agendamiento` DISABLE KEYS */;
INSERT INTO `agendamiento` VALUES (1,1,1);
/*!40000 ALTER TABLE `agendamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnostico` (
  `id_diagnostico` int(10) NOT NULL,
  `id_sesion` int(10) NOT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `fecha_diag` date DEFAULT NULL,
  PRIMARY KEY (`id_diagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,1,'Observacion de diagnostico','2018-03-16');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialista`
--

DROP TABLE IF EXISTS `especialista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialista` (
  `id_especialista` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_esp` varchar(30) NOT NULL,
  PRIMARY KEY (`id_especialista`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialista`
--

LOCK TABLES `especialista` WRITE;
/*!40000 ALTER TABLE `especialista` DISABLE KEYS */;
INSERT INTO `especialista` VALUES (1,'Rodrígo Ramirez');
/*!40000 ALTER TABLE `especialista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulamed`
--

DROP TABLE IF EXISTS `formulamed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulamed` (
  `id_formula` int(10) NOT NULL AUTO_INCREMENT,
  `id_sesion` int(10) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `fechaformula` date DEFAULT NULL,
  PRIMARY KEY (`id_formula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulamed`
--

LOCK TABLES `formulamed` WRITE;
/*!40000 ALTER TABLE `formulamed` DISABLE KEYS */;
INSERT INTO `formulamed` VALUES (1,1,'Descripcion de formula','sin observaciones','2018-03-17');
/*!40000 ALTER TABLE `formulamed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia_clinica`
--

DROP TABLE IF EXISTS `historia_clinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historia_clinica` (
  `id_hist` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_creacion` date NOT NULL,
  `id_paciente` int(10) NOT NULL,
  `observacion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_hist`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia_clinica`
--

LOCK TABLES `historia_clinica` WRITE;
/*!40000 ALTER TABLE `historia_clinica` DISABLE KEYS */;
INSERT INTO `historia_clinica` VALUES (1,'2018-03-16',1,'no tiene observacion');
/*!40000 ALTER TABLE `historia_clinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `id_paciente` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `peso` int(6) NOT NULL,
  `estatura` float DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (2,'Abel','Caranton','Masculino',71,1.67,'1987-05-16');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ressemed`
--

DROP TABLE IF EXISTS `ressemed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ressemed` (
  `id_resumen` int(10) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(10) NOT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_resumen`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ressemed`
--

LOCK TABLES `ressemed` WRITE;
/*!40000 ALTER TABLE `ressemed` DISABLE KEYS */;
INSERT INTO `ressemed` VALUES (1,1,'Tampoco tiene observacion');
/*!40000 ALTER TABLE `ressemed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesion_esp`
--

DROP TABLE IF EXISTS `sesion_esp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sesion_esp` (
  `id_especialista` int(10) NOT NULL,
  `id_sesion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion_esp`
--

LOCK TABLES `sesion_esp` WRITE;
/*!40000 ALTER TABLE `sesion_esp` DISABLE KEYS */;
INSERT INTO `sesion_esp` VALUES (1,1);
/*!40000 ALTER TABLE `sesion_esp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesion_medica`
--

DROP TABLE IF EXISTS `sesion_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sesion_medica` (
  `id_sesion` int(10) NOT NULL AUTO_INCREMENT,
  `id_hist` int(10) NOT NULL,
  `id_paciente` int(10) NOT NULL,
  `id_tipo` int(10) NOT NULL,
  `observacion` varchar(80) DEFAULT NULL,
  `fecha_sesion` date DEFAULT NULL,
  PRIMARY KEY (`id_sesion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion_medica`
--

LOCK TABLES `sesion_medica` WRITE;
/*!40000 ALTER TABLE `sesion_medica` DISABLE KEYS */;
INSERT INTO `sesion_medica` VALUES (1,1,1,1,'no hay observacion hasta el momento','2018-03-16');
/*!40000 ALTER TABLE `sesion_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sesion`
--

DROP TABLE IF EXISTS `tipo_sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_sesion` (
  `id_tipo` int(10) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sesion`
--

LOCK TABLES `tipo_sesion` WRITE;
/*!40000 ALTER TABLE `tipo_sesion` DISABLE KEYS */;
INSERT INTO `tipo_sesion` VALUES (1,'Primera descripcion');
/*!40000 ALTER TABLE `tipo_sesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `clave` int(10) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Especialista',123456);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-18 15:15:04
