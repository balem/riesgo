-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: riesgo
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
-- Table structure for table `auditoria_area`
--

DROP TABLE IF EXISTS `auditoria_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_area`
--

LOCK TABLES `auditoria_area` WRITE;
/*!40000 ALTER TABLE `auditoria_area` DISABLE KEYS */;
INSERT INTO `auditoria_area` VALUES (1,'Prueba');
/*!40000 ALTER TABLE `auditoria_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_circuito`
--

DROP TABLE IF EXISTS `auditoria_circuito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_circuito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `proceso` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_circuito_bcba950c` (`proceso`),
  CONSTRAINT `proceso_refs_id_a7d22592` FOREIGN KEY (`proceso`) REFERENCES `auditoria_proceso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_circuito`
--

LOCK TABLES `auditoria_circuito` WRITE;
/*!40000 ALTER TABLE `auditoria_circuito` DISABLE KEYS */;
INSERT INTO `auditoria_circuito` VALUES (11,'Control de elaboracion de PAC',100,1),(12,'Control de elaboracion de Pliego de Bases y Condiciones',30,1),(13,'Control de Espeficaciones Tecnicas',70,1),(14,'Control de Espeficaciones Técnicas de Bienes de Uso',15,1),(15,'Control de Especificaciones Tecnicas de Bienes de Consumo',15,1),(16,'Control de Especificaciones Tecnicas de Infraestructura',20,1),(17,'Control de Especificaciones Tecnicas de Consultorias Varias',20,1),(18,'Control sobre la presentación de Ofertas Varias',50,1),(19,'Control sobre la adjudicacion de Contratos',70,1),(20,'Seguimiento a ejecución de Contratos de Infraestructura',35,1),(21,'Seguimiento de Ejecución de Contratos de Servicios',35,1),(22,'ConTrol de Recepción de Bienes y Servicios',70,1),(23,'Control de Recepción de Bienes de Uso',10,1),(24,'Control de Recepción de Bienes de Consumo',10,1),(25,'Control de Recepción de Bienes de Infraestructura',30,1),(26,'Control de Recepción de Servicios',20,1),(27,'Control sobre distribucion de Bienes',60,1),(28,'Control sobre distribucion de Bienes de Uso',30,1),(29,'Control sobre distribución de Bienes de Consumo',30,1),(30,'Control sobre contratos de Servicios de Alquileres',40,1),(31,'Presupuesto',90,2),(32,'Control de Antecedentes y Calculos presupuestarios',20,2),(33,'Control de ajustes presupuestarios',20,2),(34,'Control sobre reprogramaciones presupuestarias',20,2),(35,'Conrol sobre de ampliaciones presupuestarias',20,2),(36,'Control sobre ejecución presupuestaria',10,2),(37,'Ingresos institucionales',70,2),(38,'Tasas por ingresos judiciales',35,2),(39,'Tasas por registros públicos',35,2),(40,'Control de Pagos',70,2),(41,'Control de Pagos de Pasajes y Viaticos',20,2);
/*!40000 ALTER TABLE `auditoria_circuito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_circunscripcion`
--

DROP TABLE IF EXISTS `auditoria_circunscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_circunscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_circunscripcion`
--

LOCK TABLES `auditoria_circunscripcion` WRITE;
/*!40000 ALTER TABLE `auditoria_circunscripcion` DISABLE KEYS */;
INSERT INTO `auditoria_circunscripcion` VALUES (1,'Capital'),(2,'Misiones'),(3,'Guairá'),(4,'Paraguarí'),(5,'Itapúa'),(6,'Caazapá'),(7,'Concepción'),(8,'San Pedro'),(9,'Amambay'),(10,'Cordillera'),(11,'Alto Paraná'),(12,'Presidente Hayes'),(13,'Caaguazú'),(14,'Circunscripción'),(15,'Ñeembucú'),(16,'Central');
/*!40000 ALTER TABLE `auditoria_circunscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_factor`
--

DROP TABLE IF EXISTS `auditoria_factor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_factor`
--

LOCK TABLES `auditoria_factor` WRITE;
/*!40000 ALTER TABLE `auditoria_factor` DISABLE KEYS */;
INSERT INTO `auditoria_factor` VALUES (1,'FACTOR PERTINENCIA'),(2,'FACTOR VIGENCIA'),(3,'FACTOR AUTENTICIDAD');
/*!40000 ALTER TABLE `auditoria_factor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_hojacontrol`
--

DROP TABLE IF EXISTS `auditoria_hojacontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_hojacontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `fecha_public` date NOT NULL,
  `activa` varchar(10) NOT NULL,
  `circuito` int(11) NOT NULL,
  `circunscripcion` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_hojacontrol_6ecba166` (`circuito`),
  KEY `auditoria_hojacontrol_1c0ab5cf` (`circunscripcion`),
  KEY `auditoria_hojacontrol_a4563695` (`area`),
  CONSTRAINT `area_refs_id_b296048e` FOREIGN KEY (`area`) REFERENCES `auditoria_area` (`id`),
  CONSTRAINT `circuito_refs_id_0607ddd6` FOREIGN KEY (`circuito`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `circunscripcion_refs_id_629a6faa` FOREIGN KEY (`circunscripcion`) REFERENCES `auditoria_circunscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol`
--

LOCK TABLES `auditoria_hojacontrol` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol` VALUES (2,'Control de compras','2013-07-24','inactivo',12,1,1),(3,'fggggv','2013-08-24','Inactivo',14,9,1),(4,'descripcion encuesta','2013-08-02','Inactivo',29,5,1),(5,'ksksskksks','2013-08-03','Inactivo',13,7,1),(6,'Nueva Hoja de control','2013-08-12','activo',15,5,1),(7,'Nueva Hoja de control 2','2013-08-14','activo',22,1,1),(8,'Otra Hoja de control','2013-08-14','Inactivo',31,1,1);
/*!40000 ALTER TABLE `auditoria_hojacontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_hojacontrol_variables`
--

DROP TABLE IF EXISTS `auditoria_hojacontrol_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_hojacontrol_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hojacontrol_id` int(11) NOT NULL,
  `variable_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hojacontrol_id` (`hojacontrol_id`,`variable_id`),
  KEY `auditoria_hojacontrol_variables_117cc298` (`hojacontrol_id`),
  KEY `auditoria_hojacontrol_variables_5a46c4bf` (`variable_id`),
  CONSTRAINT `hojacontrol_id_refs_id_50ceab69` FOREIGN KEY (`hojacontrol_id`) REFERENCES `auditoria_hojacontrol` (`id`),
  CONSTRAINT `variable_id_refs_id_b218259d` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol_variables`
--

LOCK TABLES `auditoria_hojacontrol_variables` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol_variables` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol_variables` VALUES (117,2,112),(118,2,113),(86,3,111),(87,3,112),(88,3,113),(78,3,115),(92,3,121),(93,3,122),(94,3,123),(95,3,124),(82,3,234),(83,3,235),(84,3,236),(85,3,237),(89,3,242),(90,3,243),(91,3,244),(74,3,264),(75,3,265),(76,3,266),(77,3,267),(79,3,319),(80,3,321),(81,3,322),(101,4,111),(102,4,112),(103,4,113),(104,4,114),(105,4,115),(106,4,121),(107,4,122),(108,4,123),(109,4,124),(100,4,125),(111,4,126),(112,4,127),(110,4,221),(96,4,225),(97,4,227),(98,4,232),(99,4,233),(113,5,112),(114,5,113),(115,5,114),(116,5,121),(187,6,112),(188,6,113),(189,6,114),(190,6,115),(192,6,121),(193,6,122),(194,6,123),(195,6,124),(186,6,125),(191,6,126),(185,6,127),(196,6,221),(197,6,222),(198,6,223),(179,6,224),(180,6,225),(181,6,226),(182,6,227),(183,6,228),(184,6,229),(216,7,222),(217,7,223),(199,7,224),(200,7,225),(201,7,226),(202,7,227),(203,7,228),(204,7,229),(205,7,230),(206,7,231),(207,7,232),(208,7,233),(209,7,234),(210,7,235),(211,7,236),(212,7,237),(213,7,238),(214,7,239),(215,7,240),(220,8,111),(221,8,113),(222,8,114),(224,8,121),(225,8,122),(226,8,123),(227,8,124),(219,8,125),(223,8,126),(218,8,127),(228,8,221),(229,8,222),(230,8,223);
/*!40000 ALTER TABLE `auditoria_hojacontrol_variables` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tresultadoInsert AFTER INSERT ON auditoria_hojacontrol_variables

FOR EACH ROW BEGIN

    INSERT INTO auditoria_resultado (hoja_id, variable_id) values 

    (new.hojacontrol_id, new.variable_id);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tresultadoUpdate AFTER UPDATE ON auditoria_hojacontrol_variables

FOR EACH ROW BEGIN

    UPDATE auditoria_resultado SET hoja_id = new.hojacontrol_id, variable_id = new.variable_id;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tresultadoDelete
AFTER DELETE ON auditoria_hojacontrol_variables
FOR EACH ROW
BEGIN

    DELETE FROM auditoria_resultado WHERE hoja_id = old.hojacontrol_id and variable_id = old.variable_id;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `auditoria_indicador`
--

DROP TABLE IF EXISTS `auditoria_indicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_indicador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `factor` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_indicador_ebe94448` (`factor`),
  CONSTRAINT `factor_refs_id_3c1a7b9e` FOREIGN KEY (`factor`) REFERENCES `auditoria_factor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_indicador`
--

LOCK TABLES `auditoria_indicador` WRITE;
/*!40000 ALTER TABLE `auditoria_indicador` DISABLE KEYS */;
INSERT INTO `auditoria_indicador` VALUES (11,'Oportunidad del Tramite',1),(12,' Asertividad',1),(21,'Normativas',2),(22,'Datos de la Operación',2),(23,'Aplicación de tecnologia',2),(31,'Autenticidad de Documentos',3),(32,'Autenticidad de firmas y sellos',3);
/*!40000 ALTER TABLE `auditoria_indicador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_proceso`
--

DROP TABLE IF EXISTS `auditoria_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_proceso`
--

LOCK TABLES `auditoria_proceso` WRITE;
/*!40000 ALTER TABLE `auditoria_proceso` DISABLE KEYS */;
INSERT INTO `auditoria_proceso` VALUES (1,'Control de Contraciones y Suministros'),(2,'Control Financiero'),(3,'Control Tecnico Administrativo');
/*!40000 ALTER TABLE `auditoria_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_resultado`
--

DROP TABLE IF EXISTS `auditoria_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_resultado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoja_id` int(11) NOT NULL,
  `variable_id` int(11) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_resultado_4d4a0558` (`hoja_id`),
  KEY `auditoria_resultado_5a46c4bf` (`variable_id`),
  CONSTRAINT `hoja_id_refs_id_161f9007` FOREIGN KEY (`hoja_id`) REFERENCES `auditoria_hojacontrol` (`id`),
  CONSTRAINT `variable_id_refs_id_1addb316` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resultado`
--

LOCK TABLES `auditoria_resultado` WRITE;
/*!40000 ALTER TABLE `auditoria_resultado` DISABLE KEYS */;
INSERT INTO `auditoria_resultado` VALUES (63,3,264,0),(64,3,265,0),(65,3,266,0),(66,3,267,0),(67,3,115,10),(68,3,319,0),(69,3,321,0),(70,3,322,0),(71,3,234,10),(72,3,235,0),(73,3,236,0),(74,3,237,10),(75,3,111,10),(76,3,112,10),(77,3,113,10),(78,3,242,0),(79,3,243,0),(80,3,244,0),(81,3,121,10),(82,3,122,10),(83,3,123,10),(84,3,124,10),(85,4,225,10),(86,4,227,10),(87,4,232,10),(88,4,233,0),(89,4,125,0),(90,4,111,10),(91,4,112,0),(92,4,113,10),(93,4,114,0),(94,4,115,0),(95,4,121,0),(96,4,122,0),(97,4,123,0),(98,4,124,0),(99,4,221,10),(100,4,126,10),(101,4,127,0),(102,5,112,10),(103,5,113,10),(104,5,114,10),(105,5,121,10),(106,2,112,0),(107,2,113,0),(168,6,224,0),(169,6,225,0),(170,6,226,0),(171,6,227,0),(172,6,228,0),(173,6,229,0),(174,6,127,0),(175,6,125,0),(176,6,112,0),(177,6,113,0),(178,6,114,0),(179,6,115,0),(180,6,126,0),(181,6,121,0),(182,6,122,0),(183,6,123,0),(184,6,124,0),(185,6,221,0),(186,6,222,0),(187,6,223,0),(188,7,224,0),(189,7,225,0),(190,7,226,0),(191,7,227,0),(192,7,228,0),(193,7,229,0),(194,7,230,0),(195,7,231,0),(196,7,232,0),(197,7,233,0),(198,7,234,0),(199,7,235,0),(200,7,236,0),(201,7,237,0),(202,7,238,0),(203,7,239,0),(204,7,240,0),(205,7,222,0),(206,7,223,0),(207,8,127,10),(208,8,125,0),(209,8,111,10),(210,8,113,0),(211,8,114,0),(212,8,126,0),(213,8,121,0),(214,8,122,0),(215,8,123,0),(216,8,124,10),(217,8,221,10),(218,8,222,10),(219,8,223,10);
/*!40000 ALTER TABLE `auditoria_resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_variable`
--

DROP TABLE IF EXISTS `auditoria_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `indicador` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_variable_1ada7d08` (`indicador`),
  CONSTRAINT `indicador_refs_id_d2c9e067` FOREIGN KEY (`indicador`) REFERENCES `auditoria_indicador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_variable`
--

LOCK TABLES `auditoria_variable` WRITE;
/*!40000 ALTER TABLE `auditoria_variable` DISABLE KEYS */;
INSERT INTO `auditoria_variable` VALUES (111,'Se ha cumplido con los plazos establecidos para el tramite en tiempo y forma aceptables',10,11),(112,'Las fechas que presentan los antecedentes certifican el cumplimiento de los plazos previstos para el tramite',10,11),(113,'Existen evidencias en el expediente que indican que el tramite se ha adelantado a los plazos y tiempos establecidos',10,11),(114,'Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',10,11),(115,'Existen evidencias en el tramite que se realizaron los controles en las fechas de los documentos',10,11),(121,'Se identifica con claridad la procedencia de origen del expediente y destino final',10,12),(122,'El tramite esta claramente identificado con un numero de orden secuencial asignado en su inicio',10,12),(123,'El tramite respeta la logica secuencial de acciones desde su inicio',10,12),(124,'Las evidencias demuestran que un dato significativo del tramite ha sido modificado en la secuencia de acciones desde su origen',10,12),(125,'El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',10,12),(126,'El tramite esta sujeto al cumplimiento de un contrato y responde a los terminos establecidos',10,12),(127,'El tramite presenta evidencias de control interno por parte de sus operadores y responsables',10,12),(221,'La caratula de expediente contiene los datos que permiten identificar la operación ',10,22),(222,'En el expediente se identifica el sistema de adjudicación utilizado para la operación',10,22),(223,'Las evidencias indican que el expediente se encuentra organizado en un orden secuencial ascendente',10,22),(224,'En el expediente se encuentran los antecedentes del tramite o referencia a traves de la cual se pueda determinar la operación',10,22),(225,'Se tiene acceso a datos historicos que permitan controlar las cifras o acciones comprometidas en el expediente',10,22),(226,'Se identifica el numero asignado a la operación a realizarse',10,22),(227,'Se identifican con claridad los montos de la operación',10,22),(228,'Se identifica el programa presupuestario asignado para la operación',10,22),(229,'Se identifica la fuente de financiamiento asignada para la operación',10,22),(230,'Se identifica el rubro a ser imputado por la operación',10,22),(231,'Los montos asignados en el expediente coinciden con los montos registrados en la operación del tramite',10,22),(232,'Los montos asignados en el expediente coinciden con el/ los monto/s obligado/s',10,22),(233,'Los calculos realizados corresponden a los montos registrados en los documentos que integran el expediente',10,22),(234,'Se identifica con claridad la fecha estimada de la concresión de la operación ',10,22),(235,'Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',10,22),(236,'Estan establecidos los criterios o estandares de calidad de la operación',10,22),(237,'Estan establecidos los documentos que conforman la operación a realizarse en los posteriores circuitos del proceso',10,22),(238,'Estan establecidods los criterios de evaluación para las diferentes etapas de la operación',10,22),(239,'Estan establecidos los criterios o estandares de calificacion de la operación /circuitos',10,22),(240,'Estan claras las especificaciones tecnicas en los documentos que conforman el tramite /operación',10,22),(241,'Esta establecido el ambito solicitante de la operación',10,22),(242,'Esta establecido el ambito responsable de la operación',10,22),(243,'Esta establecido el ambito beneficiario de la operación',10,22),(244,'Estan especificadas las garantias necesarias paraconcluir la operacion ',10,22),(245,'Las garantias solicitadas son suficientes para la conclusion de la operación ',10,22),(246,'Las condiciones de pago de la operación estan ajustadas a las garantias previstas',10,22),(247,'Se han cumplido las garantias previstas para los riesgos de la operación',10,22),(248,'Se ha ejecutado alguna garantia en el marco de la operación',10,22),(249,'Se han aplicado multas a la operación por imcumplimiento de una de las partes',10,22),(250,'Se ha reformulado o ajustado el plazo original de la operación',10,22),(251,'Se encuentra presente en el expediente la hoja de control del tramite de carácter administrativo',10,22),(261,'El tramite esta totalmente informatizado desde su inicio hasta su finalización',10,23),(262,'El expediente al ingresar ha sido registrado en el sistema informatico de control de documentos',10,23),(263,'El expediente contiene documentos scaneados que se encuentran almacenados en la base de datos respectiva',10,23),(264,'La operacion ha sido registrada en un sistema informatico especifico',10,23),(265,'La revision del expediente permite el acceso a los historicos por tramite / beneficiario / responsable',10,23),(266,'Los antecedentes han sido presentados en medios digitales o magneticos',10,23),(267,'Las fechas de registro de datos concuerdan con las fechas de los documentos controlados',10,23),(268,'Se puede observar en los documentos el resposable del registro en medios informatizados',10,23),(269,'Se puede constatar la hora de registro y esta concuerda con el horario de trabajo',10,23),(270,'Se puede acceder a verificar los registros de los diferentes operadores del tramite en calidad de consulta',10,23),(311,'El expediente contiene documentos originales o copias autenticadas de los mismos',10,31),(312,'Todos los documentos del expediente son legibles',10,31),(313,'Todos los documentos del expediente estan foliados',10,31),(314,'El expediente contiene copias autenticadas por el responsable del tramite',10,31),(315,'Los archivos digitales que acompañan el expediente corresponden al tramite en su totalidad',10,31),(316,'Los archivos digitales que acompañan el expediente estan registrados de forma tal que son asociados con facilidad al tramite',10,31),(317,'Los archivos digitales que acompañan el expediente estan registrados con el numero de version o version final',10,31),(318,'Los archivos digitales remitidos pueden ser considerados como la ultima version',10,31),(319,'En caso de recomendaciones realizadas a la operación estas fueron adicionadas a los datos/documentos del tramite',10,31),(321,'Las firmas de los documentos corresponden al registro de firmas de responsables del tramite',10,32),(322,'Esta presente de forma legible el nombre, apellido y cargo de la firma presente en los documentos',10,32),(323,'Esta presente el sello del área en los diversos documentos que conforman el tramite y corresponde a la matriz de control',10,32),(324,'Esta presente el sello del responsable debajo de su firma y corresponde a la matiz de control',10,32),(325,'Esta presente la media firma del responsable en los demas documentos del expediente',10,32),(326,'Uno de los sellos impide identificar con seguridad la firma del responsable',10,32),(327,'variable de prueba',10,21);
/*!40000 ALTER TABLE `auditoria_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add circuito',7,'add_circuito'),(20,'Can change circuito',7,'change_circuito'),(21,'Can delete circuito',7,'delete_circuito'),(22,'Can add area',8,'add_area'),(23,'Can change area',8,'change_area'),(24,'Can delete area',8,'delete_area'),(25,'Can add circunscripcion',9,'add_circunscripcion'),(26,'Can change circunscripcion',9,'change_circunscripcion'),(27,'Can delete circunscripcion',9,'delete_circunscripcion'),(28,'Can add factor',10,'add_factor'),(29,'Can change factor',10,'change_factor'),(30,'Can delete factor',10,'delete_factor'),(31,'Can add indicador',11,'add_indicador'),(32,'Can change indicador',11,'change_indicador'),(33,'Can delete indicador',11,'delete_indicador'),(34,'Can add proceso',12,'add_proceso'),(35,'Can change proceso',12,'change_proceso'),(36,'Can delete proceso',12,'delete_proceso'),(37,'Can add variable',13,'add_variable'),(38,'Can change variable',13,'change_variable'),(39,'Can delete variable',13,'delete_variable'),(40,'Can add hoja control',14,'add_hojacontrol'),(41,'Can change hoja control',14,'change_hojacontrol'),(42,'Can delete hoja control',14,'delete_hojacontrol'),(43,'Can add resultado',15,'add_resultado'),(44,'Can change resultado',15,'change_resultado'),(45,'Can delete resultado',15,'delete_resultado'),(46,'Can add log entry',16,'add_logentry'),(47,'Can change log entry',16,'change_logentry'),(48,'Can delete log entry',16,'delete_logentry');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$FBTA6vFR3Upi$NA/IW9gy+ULGk2EyB2iZKlf339NnSaOdhkYRLbh0Mmg=','2013-08-15 00:29:49',1,'admin','','','erodriguez@cej.org.py',1,1,'2013-07-24 15:47:06'),(2,'pbkdf2_sha256$10000$rCLz3HSaDxL1$akhP9i2jsbn5eiqbPt3a83qhlU2mT1SFqDoIKc/IH68=','2013-08-14 12:49:54',0,'auditor','Juan','Perez','',0,1,'2013-08-11 16:07:37');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,41);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-07-24 16:24:05',1,8,'1','Prueba',1,''),(2,'2013-07-24 16:26:59',1,14,'1','Control de compras',1,''),(3,'2013-07-24 16:37:14',1,14,'1','Control de compras',3,''),(4,'2013-07-24 16:37:41',1,14,'2','Control de compras',1,''),(5,'2013-07-24 21:54:32',1,14,'3','Otro control',1,''),(6,'2013-07-26 15:47:50',1,14,'2','Control de compras',2,'Modificado/a variables.'),(7,'2013-08-01 19:31:54',1,14,'3','Otro control',2,'Modificado/a variables.'),(8,'2013-08-01 19:31:59',1,14,'2','Control de compras',2,'Modificado/a variables.'),(9,'2013-08-01 19:44:00',1,15,'56','Resultado object',2,'Modificado/a valor.'),(10,'2013-08-01 19:46:38',1,14,'3','Otro control',3,''),(11,'2013-08-02 01:08:46',1,14,'3','fggggv',1,''),(12,'2013-08-02 18:11:17',1,14,'3','fggggv',2,'Modificado/a variables.'),(13,'2013-08-02 21:45:18',1,14,'4','descripcion encuesta',1,''),(14,'2013-08-03 17:50:35',1,14,'5','ksksskksks',1,''),(15,'2013-08-06 21:16:36',1,13,'326','Uno de los sellos impide identificar con seguridad la firma del responsable',2,'Modificado/a valor.'),(16,'2013-08-11 16:07:38',1,3,'2','auditor',1,''),(17,'2013-08-11 16:12:42',1,3,'2','auditor',2,'Modificado/a password, first_name, last_name y user_permissions.'),(18,'2013-08-11 18:59:32',1,14,'2','Control de compras',2,'Modificado/a activa.'),(19,'2013-08-12 15:14:24',1,14,'6','Nueva Hoja de control',1,''),(20,'2013-08-12 17:13:20',1,14,'6','Nueva Hoja de control',2,'Modificado/a activa.'),(21,'2013-08-12 17:16:06',1,14,'6','Nueva Hoja de control',2,'Modificado/a activa.'),(22,'2013-08-14 12:59:15',1,14,'6','Nueva Hoja de control',2,'Modificado/a activa.'),(23,'2013-08-14 14:39:28',1,14,'7','Nueva Hoja de control 2',1,''),(24,'2013-08-14 15:42:20',1,13,'327','variable de prueba',1,''),(25,'2013-08-14 15:47:04',1,14,'8','Otra Hoja de control',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'circuito','auditoria','circuito'),(8,'area','auditoria','area'),(9,'circunscripcion','auditoria','circunscripcion'),(10,'factor','auditoria','factor'),(11,'indicador','auditoria','indicador'),(12,'proceso','auditoria','proceso'),(13,'variable','auditoria','variable'),(14,'hoja control','auditoria','hojacontrol'),(15,'resultado','auditoria','resultado'),(16,'log entry','admin','logentry');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5oh40r0ae1lbjy09xyuldtn0qbirmp4m','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-09 13:46:40'),('5p1rqbvab1cg42jbq3sdigpq9owajyrn','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-26 21:08:23'),('69ikpq5ynqrfgvi38w2ed1rq9mtapvgv','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-07 15:55:43'),('80soik6psafvu49vye92idp2n6hxrgis','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-07 15:56:35'),('bsgbkmyxfxmt6xambsdrvvo047b32wqg','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-07 15:55:28'),('fqkknv15mmid32dci88fjtmbdyxo4g4s','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-29 00:35:21'),('igkhc8ohsijlcmcb2gsdfrasdlrd2o02','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-29 00:24:58'),('j80uc9lxhnneib01v5dy5clp7q4dqk1v','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-28 13:56:52'),('jnjbfh4uemxqkdklf96t4oop20x56wtt','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-25 23:33:31'),('k1sq4z92i3c0xnswyueerkhxj2lglit9','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-07 15:55:38'),('kyiuxbhd7jgmckz2z2ci4vu70plf1f9t','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-07 15:53:12'),('l1bqqepvre5w2rojj224p4dj0werrdde','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-26 20:22:29'),('s4b90rldd1m62drxyvqzmeseiywum3m8','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-28 14:35:02'),('ts14lxutxcos2x9exee9wzz37ya6zruk','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-29 00:27:55'),('vgen731q7oiz5vpovboraw36nuv78r1n','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-16 01:06:37'),('vpotwhunzgh9g8g6loz1s0yuhrbcqd4z','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-29 00:21:47'),('zgpk9n9p5ztd8lmlvembbdht81gxp6d4','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-08-07 15:52:29');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-16 16:24:10
