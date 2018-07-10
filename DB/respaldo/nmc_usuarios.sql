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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuario` varchar(150) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('aasuppendi@bestel.com.mx','1234','Alberto Antonio Suppen Dimas','Supervisor','Transporte'),('aavazquez@izzi.mx','1234','Generico','Generico','Generico'),('afigueroaesc@bestel.com.mx','1234','Generico','Generico','Generico'),('aperezq@bestel.com.mx','1234','Generico','Generico','Generico'),('apmoranro@bestel.com.mx','1234','Generico','Generico','Generico'),('cflores@bestel.com.mx','1234','Generico','Generico','Generico'),('cfrancori@bestel.com.mx','1234','Generico','Generico','Generico'),('cjvelascogu@bestel.com.mx','1234','Generico','Generico','Generico'),('cmondragonm@bestel.com.mx','1234','Generico','Generico','Generico'),('dlperezu@bestel.com.mx','1234','Generico','Generico','Generico'),('dudiazg@bestel.com.mx','1234','Generico','Generico','Generico'),('ealcantara@bestel.com.mx','1234','Generico','Generico','Generico'),('eblancasp@bestel.com.mx','1234','Generico','Generico','Generico'),('elperdomofl@bestel.com.mx','1234','Generico','Generico','Generico'),('embarongo@bestel.com.mx','1234','Generico','Generico','Generico'),('fgarciapi@bestel.com.mx','1234','Fidel Garcia Pina','Generico','Generico'),('gaisawaf@bestel.com.mx','1234','Generico','Generico','Generico'),('hgarciam@bestel.com.mx','1234','Hector Garcia Maturano','Supervisor','Telefonia'),('ieresendiz@bestel.com.mx','1234','Generico','Generico','Generico'),('jamartinezz@bestel.com.mx','1234','Generico','Generico','Generico'),('jcgamboah@bestel.com.mx','1234','Jorge Carlos Gamboa Huerta','Supervisor','Siar'),('jjaguilarac@bestel.com.mx','1234','Jorge De Jesus Aguilar Acevedo','Supervisor','Tier1'),('jjimenezra@bestel.com.mx','1234','Generico','Generico','Generico'),('jlmartinezol@bestel.com.mx','1234','Generico','Generico','Generico'),('lereyes@bestel.com.mx','1234','Generico','Generico','Generico'),('mariveraf@bestel.com.mx','1234','Generico','Generico','Generico'),('ojsaucedop@bestel.com.mx','1234','Generico','Generico','Generico'),('p-anoguchi@bestel.com.mx','1234','Generico','Generico','Generico'),('p-cmondragonm@bestel.com.mx','1234','Claudia Mondragon Mercado','Ejecutiva Atencion a Clientes','Atencion a Clientes'),('p-daleman@bestel.com.mx','1234','Generico','Generico','Generico'),('p-jdfuentes@bestel.com.mx','1234','Jose de Jesus Fuentes Galindo','Ingeniero de Gestion','NMC'),('p-rreskala@izzi.mx','1234','Generico','Generico','Generico'),('phjimeneza@bestel.com.mx','1234','Generico','Generico','Generico'),('rmartinezbe@izzitelco.onmicrosoft.com','1234','Generico','Generico','Generico'),('rmenaal@bestel.com.mx','1234','Generico','Generico','Generico'),('srtorresto@bestel.com.mx','1234','Generico','Generico','Generico'),('ssanchezro@bestel.com.mx','1234','Sergio Sanchez Rojas','Ejecutivo Servicio a Clientes','Servicio a Clientes'),('yasiain@bestel.com.mx','1234','Generico','Generico','Generico');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 23:58:10
