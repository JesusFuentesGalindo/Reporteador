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
-- Table structure for table `rfo`
--

DROP TABLE IF EXISTS `rfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfo` (
  `idRfo` varchar(15) NOT NULL,
  `idIncidente` varchar(15) NOT NULL,
  `estatus` enum('Pendiente','En Revision','N/A','Enviado','Validado','Solicitud Cambios') NOT NULL,
  `fechaSolicitud` datetime NOT NULL,
  `responsableSolicitud` varchar(150) NOT NULL,
  `fechaEnvioValidacion` datetime DEFAULT NULL,
  `responsableEnvioValidacion` varchar(150) DEFAULT NULL,
  `responsableValidacion` varchar(150) DEFAULT NULL,
  `fechaVistoBueno` datetime DEFAULT NULL,
  `responsableVistoBueno` varchar(150) DEFAULT NULL,
  `fechaEnvioRfo` datetime DEFAULT NULL,
  `responsableEnvioRfo` varchar(150) DEFAULT NULL,
  `medio` enum('Mail','Telefono') NOT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idRfo`),
  UNIQUE KEY `idIncidente` (`idIncidente`),
  CONSTRAINT `fk_rfo_incidente` FOREIGN KEY (`idIncidente`) REFERENCES `incidentes` (`idIncidente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfo`
--

LOCK TABLES `rfo` WRITE;
/*!40000 ALTER TABLE `rfo` DISABLE KEYS */;
INSERT INTO `rfo` VALUES ('RFO000000008124','INC000000008124','Enviado','2018-06-25 18:49:00','yasiain@bestel.com.mx','2018-06-26 15:24:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-07-02 20:02:00','aasuppendi@bestel.com.mx','2018-07-03 12:47:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000008341','INC000000008341','Enviado','2018-06-25 18:49:00','yasiain@bestel.com.mx','2018-06-26 15:24:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-07-02 20:02:00','aasuppendi@bestel.com.mx','2018-07-03 12:47:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000011943','INC000000011943','Pendiente','1900-01-01 00:00:00','Generico',NULL,NULL,'jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000016403','INC000000016403','Enviado','2018-06-19 12:53:00','afigueroaesc@bestel.com.mx','2018-06-19 19:23:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 13:20:00','aasuppendi@bestel.com.mx','2018-06-21 17:24:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018194','INC000000018194','En Revision','2018-06-29 17:16:00','dlperezu@bestel.com.mx','2018-07-02 19:14:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000018317','INC000000018317','Enviado','2018-06-14 16:18:00','eblancasp@bestel.com.mx','2018-06-15 12:03:00','elperdomofl@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 13:45:00','aasuppendi@bestel.com.mx','2018-06-21 16:18:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018387','INC000000018387','Enviado','2018-06-20 19:11:00','embarongo@bestel.com.mx','2018-06-25 11:55:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-25 14:19:00','aasuppendi@bestel.com.mx','2018-06-25 19:55:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018496','INC000000018496','Enviado','2018-06-13 17:35:00','cfrancori@bestel.com.mx','2018-06-15 11:27:00','elperdomofl@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 15:03:00','aasuppendi@bestel.com.mx','2018-06-21 16:27:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018528','INC000000018528','N/A','2018-06-15 17:04:00','ojsaucedop@bestel.com.mx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mail','El incidente no aplica debido a que es una falla imputable al cliente.'),('RFO000000018544','INC000000018544','Enviado','2018-06-14 12:41:00','embarongo@bestel.com.mx','2018-06-15 11:44:00','elperdomofl@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 14:44:00','aasuppendi@bestel.com.mx','2018-06-21 14:53:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018574','INC000000018574','Enviado','2018-06-27 12:39:00','cflores@bestel.com.mx','2018-06-28 17:45:00','dudiazg@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-28 17:45:00','aasuppendi@bestel.com.mx','2018-06-29 09:49:00','dudiazg@bestel.com.mx','Mail','Derivado de la ventana de mantenimiento notificada al cliente bajo la CRQ0000001096791, que se ejecutó con la finalidad de eliminar la atenuación en los segmentos 1.9 Km y 1.2 km de Chihuahua- Delicias (mismo segmento del evento de corte de fibra); las alarmas no se actualizaron en la herramienta de monitoreo, lo que causo retrasos para la identificación de la causa raíz de la falla.'),('RFO000000018676','INC000000018676','Enviado','2018-06-21 10:20:00','ojsaucedop@bestel.com.mx','2018-06-21 19:34:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-07-02 19:35:00','aasuppendi@bestel.com.mx','2018-07-03 13:49:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018692','INC000000018692','Enviado','2018-06-19 16:56:00','cjvelascogu@bestel.com.mx','2018-06-19 19:42:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000018854','INC000000018854','N/A','2018-06-19 08:38:00','jamartinezz@bestel.com.mx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000018862','INC000000018862','Enviado','2018-06-19 00:48:00','ieresendiz@bestel.com.mx','2018-06-19 18:02:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 12:58:00','aasuppendi@bestel.com.mx','2018-06-21 14:44:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018873','INC000000018873','Enviado','2018-06-20 14:44:00','aperezq@bestel.com.mx','2018-06-21 19:06:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx','2018-07-02 20:32:00','aasuppendi@bestel.com.mx','2018-07-03 12:36:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018967','INC000000018967','Enviado','2018-06-18 18:46:00','rmartinezbe@izzitelco.onmicrosoft.com','2018-06-19 17:26:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx','2018-07-02 20:45:00','aasuppendi@bestel.com.mx','2018-07-03 12:31:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000018994','INC000000018994','Enviado','2018-06-18 12:01:00','apmoranro@bestel.com.mx','2018-06-18 14:39:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 12:49:00','aasuppendi@bestel.com.mx','2018-06-21 16:44:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019016','INC000000019016','Enviado','2018-06-18 12:57:00','lereyes@bestel.com.mx',NULL,NULL,NULL,NULL,NULL,'2018-06-29 18:24:00','p-jdfuentes@bestel.com.mx','Mail','Se genera RFO informativo, no se envío a validación.'),('RFO000000019117','INC000000019117','Enviado','2018-06-20 10:02:00','mariveraf@bestel.com.mx','2018-06-20 18:16:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 13:41:00','aasuppendi@bestel.com.mx','2018-06-21 16:52:00','p-jdfuentes@bestel.com.mx','Mail','En seguimiento devido a que el cliente solicita cambios al RFO'),('RFO000000019138','INC000000019138','Enviado','2018-06-19 11:35:00','p-rreskala@izzi.mx','2018-06-19 19:05:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 13:14:00','aasuppendi@bestel.com.mx','2018-06-21 16:59:00','p-jdfuentes@bestel.com.mx','Mail','En seguimiento devido a que el cliente solicita cambios al RFO'),('RFO000000019160','INC000000019160','Enviado','2018-06-20 10:46:00','mariveraf@bestel.com.mx','2018-06-20 18:50:00','p-jdfuentes@bestel.com.mx','hgarciam@bestel.com.mx','2018-06-22 17:19:00','hgarciam@bestel.com.mx','2018-06-26 18:56:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019165','INC000000019165','Enviado','2018-06-22 16:35:00','afigueroaesc@bestel.com.mx','2018-06-22 16:45:00','p-jdfuentes@bestel.com.mx','hgarciam@bestel.com.mx','2018-06-22 17:19:00','hgarciam@bestel.com.mx','2018-06-26 18:56:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019180','INC000000019180','Enviado','2018-06-26 18:04:00','phjimeneza@bestel.com.mx','2018-06-28 17:12:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx','2018-07-02 21:55:00','aasuppendi@bestel.com.mx','2018-07-03 12:25:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019185','INC000000019185','Enviado','2018-06-20 10:18:00','jjimenezra@bestel.com.mx','2018-06-15 17:52:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-21 13:31:00','aasuppendi@bestel.com.mx','2018-06-21 17:05:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019274','INC000000019274','Enviado','2018-07-02 09:24:00','lereyes@bestel.com.mx','2018-07-03 11:37:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000019326','INC000000019326','Enviado','2018-06-22 12:21:00','yasiain@bestel.com.mx','2018-06-25 11:25:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-25 16:20:00','aasuppendi@bestel.com.mx','2018-06-25 16:36:00','p-jdfuentes@bestel.com.mx','Mail','Se genera un RFO informativo debido a que el cliente realizo su reporte despues de la falla.'),('RFO000000019336','INC000000019336','Enviado','2018-06-21 13:37:00','p-anoguchi@bestel.com.mx','2018-06-21 18:04:00','p-jdfuentes@bestel.com.mx','jcgamboah@bestel.com.mx','2018-06-21 18:52:00','jcgamboah@bestel.com.mx','2018-06-21 18:56:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019367','INC000000019367','Pendiente','2018-07-06 19:42:00','Generico',NULL,NULL,'jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000019575','INC000000019575','Enviado','2018-06-21 09:36:00','cmondragonm@bestel.com.mx','2018-06-25 11:43:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-25 14:10:00','aasuppendi@bestel.com.mx','2018-06-25 19:30:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019692','INC000000019692','Enviado','2018-06-22 12:21:00','yasiain@bestel.com.mx','2018-06-25 11:25:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-25 16:20:00','aasuppendi@bestel.com.mx','2018-06-25 16:36:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019812','INC000000019812','Enviado','2018-06-28 21:00:00','jjaguilarac@bestel.com.mx','2018-07-02 16:59:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-07-02 16:59:00','aasuppendi@bestel.com.mx','2018-07-02 17:15:00','p-jdfuentes@bestel.com.mx','Mail','Se toman datos del RFO000000019866 validado el cual comparte el INC padre'),('RFO000000019866','INC000000019866','Enviado','2018-06-22 15:46:00','dlperezu@bestel.com.mx','2018-06-25 14:11:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-25 14:39:00','aasuppendi@bestel.com.mx','2018-06-25 20:14:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000019894','INC000000019894','Enviado','2018-06-26 10:15:00','gaisawaf@bestel.com.mx','2018-06-28 17:48:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-07-03 12:23:00','aasuppendi@bestel.com.mx','2018-07-03 13:02:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000020103','INC000000020103','Enviado','2018-06-27 12:29:00','ealcantara@bestel.com.mx','2018-06-28 19:28:00','p-jdfuentes@bestel.com.mx','jcgamboah@bestel.com.mx','2018-06-29 19:40:00','jcgamboah@bestel.com.mx','2018-07-02 13:18:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000020209','INC000000020209','Enviado','2018-06-22 12:21:00','yasiain@bestel.com.mx','2018-06-25 11:25:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx','2018-06-25 16:20:00','aasuppendi@bestel.com.mx','2018-06-25 16:36:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000020387','INC000000020387','Enviado','2018-06-27 14:39:00','jlmartinezol@bestel.com.mx','2018-06-27 17:02:00','p-jdfuentes@bestel.com.mx','jjaguilarac@bestel.com.mx','2018-07-04 20:09:00','jjaguilarac@bestel.com.mx',NULL,NULL,'Mail',NULL),('RFO000000020425','INC000000020425','Enviado','1900-01-01 00:00:00','General',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Telefono',NULL),('RFO000000020438','INC000000020438','Pendiente','1900-01-01 00:00:00','Generico',NULL,NULL,'jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000020577','INC000000020577','Enviado','2018-06-28 13:41:00','p-anoguchi@bestel.com.mx','2018-06-29 17:45:00','p-jdfuentes@bestel.com.mx','jcgamboah@bestel.com.mx','2018-06-29 19:26:00','jcgamboah@bestel.com.mx','2018-06-29 19:33:00','p-jdfuentes@bestel.com.mx','Mail',NULL),('RFO000000020613','INC000000020613','Enviado','2018-07-02 17:03:00','dudiazg@bestel.com.mx','2018-07-02 17:42:00','p-jdfuentes@bestel.com.mx','dudiazg@bestel.com.mx','2018-07-02 18:11:00','dudiazg@bestel.com.mx','2018-07-02 18:34:00','p-jdfuentes@bestel.com.mx','Telefono','Solicita el RFO via WhatsApp'),('RFO000000020709','INC000000020709','Pendiente','1900-01-01 00:00:00','Generico',NULL,NULL,'hgarciam@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000020926','INC000000020926','Enviado','2018-06-29 10:12:00','aavazquez@izzi.mx','2018-07-02 16:35:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000020970','INC000000020970','Enviado','2018-06-30 10:56:00','mariveraf@bestel.com.mx','2018-07-03 11:15:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000020973','INC000000020973','Enviado','2018-06-29 14:31:00','srtorresto@bestel.com.mx','2018-07-02 18:17:00','p-jdfuentes@bestel.com.mx','aasuppendi@bestel.com.mx',NULL,NULL,NULL,NULL,'Telefono',NULL),('RFO000000020994','INC000000020994','Enviado','1900-01-01 00:00:00','Generico',NULL,NULL,'aasuppendi@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000021015','INC000000021015','N/A','2018-07-02 13:44:00','rmenaal@bestel.com.mx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mail','El RFO no procede por tratarse de Falla en Llamadas Entrantes'),('RFO000000021030','INC000000021030','Enviado','1900-01-01 00:00:00','Generico',NULL,NULL,'jcgamboah@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000021224','INC000000021224','Enviado','1900-01-01 00:00:00','Generico',NULL,NULL,'aasuppendi@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000021283','INC000000021283','Enviado','1900-01-01 00:00:00','Generico',NULL,NULL,'jcgamboah@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000021723','INC000000021723','Enviado','1900-01-01 00:00:00','Generico',NULL,NULL,'jcgamboah@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000022161','INC000000022161','Pendiente','1900-01-01 00:00:00','Generico',NULL,NULL,'jjaguilarac@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000022246','INC000000022246','Pendiente','1900-01-01 00:00:00','Generico',NULL,NULL,'jcgamboah@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL),('RFO000000022250','INC000000022250','Pendiente','1900-01-01 00:00:00','Generico',NULL,NULL,'jcgamboah@bestel.com.mx',NULL,NULL,NULL,NULL,'Mail',NULL);
/*!40000 ALTER TABLE `rfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 23:58:11
