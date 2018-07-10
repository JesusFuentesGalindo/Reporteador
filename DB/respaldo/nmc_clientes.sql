-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 172.27.2.82    Database: nmc
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(200) NOT NULL,
  `giro` varchar(50) NOT NULL,
  `sla` int(11) NOT NULL,
  `empresaGestora` enum('Bestel','Metrored') NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (27185,'Transtelco','Empresas Ciudades',240,'Bestel'),(30138,'Galaz Yamazaki Ruiz Urquiza SC','Corporativo',240,'Metrored'),(30173,'Kio Networks','Corporativo',240,'Metrored'),(30801,'Fispe','Corporativo',240,'Bestel'),(30935,'Sprint','Carrier Internacional',240,'Metrored'),(31011,'Banco Nacional de Mexico SA','Corporativo',240,'Metrored'),(31188,'Verizon','Carrier Internacional',240,'Metrored'),(31514,'Pegaso PCS SA de CV','Carrier Nacional',240,'Metrored'),(31536,'Gonet Mexico SA de CV','Corporativo',240,'Metrored'),(31701,'GNR Apoyo Estrategico SA de CV','Empresas Mexico',240,'Metrored'),(31804,'Servicios Asegurables Agente de Seguros y de Fianzas SA de CV','Empresas Mexico',240,'Metrored'),(32216,'AT&T GNS Mexico','Carrier Internacional',240,'Metrored'),(32347,'Sonda SA de CV','Empresas Mexico',240,'Metrored'),(32420,'KDDI','Carrier Internacional',240,'Metrored'),(32629,'Televisa','Empresas Mexico',240,'Bestel'),(32699,'Scontinuidad Latam','Empresas Mexico',240,'Bestel'),(32807,'Secretaria de Comunicaciones y Transportes Quintana Roo','Gobierno',240,'Bestel'),(32821,'Grupo Mexicano de Seguros','Empresas Mexico',240,'Bestel'),(32923,'Real Inn Guadalajara Centro','Corporativo',240,'Bestel'),(32940,'Viajes BEDA SA de CV','Empresas Mexico',240,'Bestel'),(33111,'Camino Real Inn Ciudad Juarez','Empresas Mexico',240,'Bestel'),(33183,'Fabrica de Harinas Elizondo SA de CV','Empresas Mexico',240,'Bestel'),(33241,'Truper Herramientas SA de CV','Empresas Mexico',240,'Bestel'),(33254,'95/24 Mexico S de RL de CV','Empresas Mexico',240,'Bestel'),(33273,'Iacna Mexico','Empresas Mexico',240,'Bestel'),(33304,'Universidad Latinoamericana SC','Empresas Mexico',240,'Bestel'),(33512,'Kio Networks Renapo','Corporativo',240,'Metrored'),(33536,'INAPESCA','Gobierno',240,'Bestel'),(33551,'Television Internacional SA de CV','Carrier Nacional',240,'Bestel'),(33604,'Softtek Information Services SA de CV','Empresas Mexico',240,'Bestel'),(33672,'Servicios de Cobranza Recuperacion y Seguimiento SA de CV','Carrier Naciona',240,'Bestel'),(33710,'Neutrona Networks','Carrier Internacional',240,'Bestel'),(33783,'CONSTELLIUM','Empresas Ciudades',240,'Metrored'),(34015,'Gas Natural Servicios','Empresas Ciudades',240,'Metrored'),(34064,'Fargos Logistics','Corporativo',240,'Metrored');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 23:58:09
