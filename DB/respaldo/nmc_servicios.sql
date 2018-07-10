CREATE DATABASE  IF NOT EXISTS `nmc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nmc`;
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
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `circuito` varchar(100) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `servicio` varchar(100) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `circuitoM6` varchar(100) DEFAULT NULL,
  `circuitoSolar` varchar(100) DEFAULT NULL,
  `circuitoSicab` varchar(100) DEFAULT NULL,
  `estadoDestino` varchar(100) NOT NULL,
  `sitio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`circuito`),
  KEY `fk_servicios_cliente` (`idCliente`),
  CONSTRAINT `fk_servicios_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES ('10001-FO-01',27185,'Fibra Oscura','Fibra Oscura',NULL,NULL,NULL,'Ciudad de Mexico',NULL),('10090-INT-001',33183,'Internet Dedicado 10 Mbps','Internet','100/INTF/2051215525TLBZMX001','225119',NULL,'Estado de Mexico','Av. Hidalgo 110'),('10208-INT-001',33241,'Internet Dedicado 10 Mbps','Internet','100/INTF/2057296300AZCPDF001','239563',NULL,'Ciudad de Mexico','AV SAN ISIDRO 110'),('10237-INT-012',33273,'Internet Dedicado 4 Mbps','Internet','101/INTF/2014072414SLTLXD001',NULL,NULL,'Coahuila','CALLE 17 S/N'),('10253-MPL-268',33512,'MPLS Datos 10 Mbps','MPLS','100/MPLS/0027612CHTMDF001','RENAPO_KIO_ARCOS_MPLS_M6_231780',NULL,'Ciudad de Mexico','Arcos De Belen 19'),('10253-MPL-312',33512,'MPLS Datos 2 Mbps','MPLS',NULL,NULL,NULL,'Baja California Norte','Calz. Independencia 994'),('10253-MPL-339',33512,'MPLS Datos 2 Mbps','MPLS',NULL,NULL,NULL,'Tabasco','Jose Narciso Rovirosa S/N'),('10253-MPL-352',33512,'MPLS Datos 2 Mbps','MPLS','100/MPLS/0002282OTBLQO001','RENAPO_KIO_QUINTANA_ROO_MPLS_M6_231792',NULL,'Quintana Roo','Av. Ignacio Zaragoza 151'),('10253-MPL-359',33512,'MPLS Datos 10 Mbps','MPLS',NULL,NULL,NULL,'Nuevo Leon','Washington S/N'),('10253-MPL-363',33512,'MPLS Datos 6 Mbps','MPLS',NULL,'RENAPO_KIO_GUERRERO_MPLS_231782',NULL,'Guerrero','16 de Septiembre S/N'),('10352-DID-007',33304,'100DIDs','Numeros de Directorio','100/INTF/2009242361ALOBDF001',NULL,NULL,'Morelos','Teopanzolco 107'),('10352-INT-001',33304,'Internet Dedicado 1 GB','Internet','100/INTF/2009242361ALOBDF001',NULL,NULL,'Ciudad de Mexico','Iztaccihuatl 178'),('10891-ACL-001',33536,'MPLS - Acceso Local 6144 Kbps (Enlace Estandar)','MPLS','100/MPLS/0018838BNJRQO001','233123',NULL,'Quintana Roo','Matamoros 7'),('11133-TIP-058',33672,'30 Troncales SIP','Troncales SIP','100/TKIP/4045129804MGHDDF001',NULL,NULL,'Ciudad de Mexico','Corporativo Diamante Santa Fe'),('11327-INT-074',33551,'Internet Dedicado 10 Mbps','Internet','100/INTF/4017116000NVLRXT002','234017',NULL,'Tamaulipas','Carr. al Aeropuerto 1001'),('11404-ETH-043',32699,'Ethernet Link Nacional 1 Gbps','Ethernet Link','100/ETHNAC/1012237532MTPCMX001/1012237532ALOBDF001','234261',NULL,'Ciudad de Mexico','Barranca del Muerto 280'),('11495-ETH-250',30935,'Ethernet Link 10 Mbps','Ethernet Link',NULL,NULL,NULL,'Baja California Norte','Nogal 405'),('11534-INT-002',33783,'Internet Dedicado 10 Mbps','Internet',NULL,NULL,NULL,'San Luis Potosi','Cto. San Cristobal Norte 100'),('11620-ETH-295',31514,'Ethernet Link Local 10 Mbps','Ethernet Link',NULL,NULL,NULL,'Chihuahua','Carr. Panamericana Delicias Camargo Km. 130'),('11636-ETH-032',31011,'Ethernet Link Nacional 2 Gbps','Ethernet Link',NULL,NULL,NULL,'Queretaro','Datacenter Banamex Queretaro'),('11732-ETH-006',33710,'Ethernet Link 50 Mbps','Ethernet Link','100/ETHNAC/4116890837HXQLMX001/4116890837CLYAGJ001',NULL,NULL,'Guanajuato','Carr. Panamericana Km. 284'),('12544-ACL-013',32420,'MPLS - Acceso Local 4 Mbps','MPLS',NULL,NULL,NULL,'Baja California Norte','Av Ferrocarril km 14.5'),('12544-MPL-014',32420,'MPLS Multimedia 4 Mbps','MPLS',NULL,NULL,NULL,'Baja California Norte',NULL),('12685-INT-002',34064,'Internet Dedicado 30 Mbps','Internet',NULL,NULL,NULL,'San Luis Potosi','Eje 140 No. 203'),('12933-ETH-001',30801,'Ethernet','Ethernet','100/ETHINT/0030801DLLSTX001/0030801ESCNXS001',NULL,NULL,'Ciudad de Mexico',NULL),('3650-ETH-030',31804,'Ethernet Link Nacional 6 Mbps','Ethernet Link',NULL,NULL,NULL,'Ciudad de Mexico','Carr. Fed. Lagos de Moreno- Aguascalientes Km. 75'),('4307-TKD-006',31536,'20 Troncales Digitales R2M','Troncales Digitales',NULL,NULL,NULL,'Ciudad de Mexico','Lucerna 80'),('5732-INT-009',31701,'Internet Dedicado 4 Mbps','Internet',NULL,NULL,NULL,'Ciudad de Mexico','Corporativo Opcion Santa Fe III'),('6228-CCH-136',30935,'Data 2 MBPS PP','Enlace',NULL,NULL,NULL,'Puebla','Atzala'),('7120-CCH-180',30935,'Clear Channel DS3','Clear Channel',NULL,NULL,NULL,'Guanajuato','Av. Guerrero 149'),('7122-CCH-964',31188,'Clear Channel E1','Clear Channel',NULL,NULL,NULL,'Chihuahua','Blvr. Tomas Fernandez Campos 8583'),('7810-ETH-003',32347,'Ethernet Link Nacional 20 Mbps','Ethernet Link',NULL,NULL,NULL,'Jalisco','Morelos S/N'),('7930-ETH-259',30173,'Ethernet Link Local 40 Mbps','Ethernet Link',NULL,NULL,NULL,'Ciudad de Mexico','Banobras'),('8358-ETH-353',32216,'Ethernet Link 1 Gbps','Ethernet Link',NULL,NULL,NULL,'Ciudad de Mexico','Cerro de las Torres 395'),('8499-TKD-142',30138,'30 Troncales Digitales ISDN','Troncales Digitales',NULL,NULL,NULL,'Chihuahua','Edificio Punto Alto E2'),('8499-TKD-147',30138,'30 Troncales Digitales ISDN','Troncales Digitales',NULL,NULL,NULL,'Baja California Norte','Mision de San Javier 10643'),('8499-TKD-190',30138,'30 Troncales Digitales ISDN','Troncales Digitales',NULL,NULL,NULL,'Chihuahua','Baudelio Pelay 8450'),('8499-TKD-210',30138,'10 Troncales Digitales ISDN','Troncales Digitales',NULL,NULL,NULL,'Baja California Norte','Calz. Francisco L. Montejano 1280'),('8499-TKD-222',30138,'10 Troncales Digitales ISDN','Troncales Digitales',NULL,NULL,NULL,'Sonora','Francisco Eusebio Kino 315'),('9251-ETH-477',32216,'Ethernet Link 100 Mbps','Ethernet Link',NULL,NULL,NULL,'Baja California Norte','Carr. Tijuana a Tecate Km. 143 No. 33143'),('9345-CPE-008',32629,'MPLS - Router en Renta - Hasta 10 Mbps','CPE en Renta','1074023915ALOBDF002','230588',NULL,'Ciudad de Mexico','Anillo Periferico Blvr. Adolfo Lopez Mateos 367'),('9382-TKD-001',32807,'30 Troncales Digitales R2M','Troncales Digitales','100/TKD/3035685302OTBLQO001/MRDAYU01',NULL,NULL,'Ciudad de Mexico','Av. Insurgentes 410'),('9401-MPL-021',32821,'MPLS Multimedia 4 Mbps','MPLS','100/MPLS/2011611731TJNACB002','231406',NULL,'Baja California Norte','Luis Cabrera 2033'),('9584-INT-002',32923,'Internet Dedicado 20 Mbps','Internet','100/INTF/0022676GDLJJA001','231674',NULL,'Jalisco','Av. Juarez 123'),('9606-INT-003',32940,'Internet Dedicado 100 Mbps','Internet','102/INTF/2015586473BNJRQO001','230947',NULL,'Quintana Roo','Avenida Bonampak MZ 2'),('9879-MPL-002',34015,'MPLS Multimedia 10 Mbps','MPLS',NULL,NULL,NULL,'Sonora','Carr. a Bahia de Kino Km. 14'),('9959-INT-001',33111,'Internet Dedicado 20 Mbps','Internet','100/INTF/1094524662JRZZXH001',NULL,NULL,'Chihuahua','Hotel Camino Real Ciudad Juarez'),('APUE.GDO42.GDX01.00002',32629,'L2L (Linea privada)',NULL,NULL,NULL,NULL,'Jalisco',NULL),('EN-TNT-CGO-CHA-50MB-1304001',27185,'L2L (Linea privada)',NULL,NULL,NULL,NULL,'Ciudad de Mexico',NULL),('SOFTTEK_ALPHARETTA_MPLS_M6_222114',33604,'MPLS - Acceso Local 10 Mbps','MPLS',NULL,NULL,NULL,'Ciudad de Mexico',NULL);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 12:54:52
