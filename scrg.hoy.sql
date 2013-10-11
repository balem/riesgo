-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: scrg
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
  `identificador` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_public` date NOT NULL,
  `activa` varchar(10) NOT NULL,
  `circuito` int(11) NOT NULL,
  `circunscripcion` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_hojacontrol_300a32bb` (`identificador`),
  KEY `auditoria_hojacontrol_6ecba166` (`circuito`),
  KEY `auditoria_hojacontrol_1c0ab5cf` (`circunscripcion`),
  KEY `auditoria_hojacontrol_a4563695` (`area`),
  KEY `auditoria_hojacontrol_c69e2c81` (`usuario`),
  CONSTRAINT `area_refs_id_b296048e` FOREIGN KEY (`area`) REFERENCES `auditoria_area` (`id`),
  CONSTRAINT `circuito_refs_id_0607ddd6` FOREIGN KEY (`circuito`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `circunscripcion_refs_id_629a6faa` FOREIGN KEY (`circunscripcion`) REFERENCES `auditoria_circunscripcion` (`id`),
  CONSTRAINT `identificador_refs_id_8704b958` FOREIGN KEY (`identificador`) REFERENCES `auditoria_identificador` (`id`),
  CONSTRAINT `usuario_refs_id_56c3ed8c` FOREIGN KEY (`usuario`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol`
--

LOCK TABLES `auditoria_hojacontrol` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol` VALUES (1,1,'fdsfasjd;','2013-08-31','Inactivo',20,2,1,1),(2,1,'Descripcion de hoja de control','2013-09-05','Inactivo',16,3,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol_variables`
--

LOCK TABLES `auditoria_hojacontrol_variables` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol_variables` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol_variables` VALUES (21,1,328),(22,1,329),(23,1,330),(24,1,331),(44,2,328),(45,2,329),(46,2,330),(47,2,331),(48,2,332),(49,2,333),(50,2,334),(51,2,335),(52,2,336),(53,2,337),(54,2,338),(55,2,339),(56,2,340),(57,2,341),(58,2,342),(59,2,343),(60,2,344),(61,2,345),(62,2,346),(63,2,347),(64,2,348),(65,2,349),(66,2,350),(67,2,351),(68,2,352),(69,2,353),(70,2,354),(71,2,355),(72,2,356),(73,2,357),(74,2,358),(75,2,359),(76,2,360),(77,2,361),(78,2,362),(79,2,363),(80,2,364),(81,2,365),(82,2,366),(83,2,367),(84,2,368),(85,2,369),(86,2,370),(87,2,371),(88,2,372),(89,2,373),(90,2,374),(91,2,375),(92,2,376),(93,2,377),(94,2,378),(95,2,379),(96,2,380),(97,2,381),(98,2,382),(99,2,383),(25,2,384),(26,2,385),(27,2,386),(28,2,387),(29,2,388),(30,2,389),(31,2,390),(32,2,391),(33,2,392),(34,2,393),(35,2,394),(36,2,395),(37,2,396),(38,2,397),(39,2,398),(40,2,399),(41,2,400),(42,2,401),(43,2,402);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scrg`.`tresultadoUpdate`
AFTER UPDATE ON `scrg`.`auditoria_hojacontrol_variables`
FOR EACH ROW
BEGIN

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scrg`.`tresultadoDelete`
AFTER DELETE ON `scrg`.`auditoria_hojacontrol_variables`
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
-- Table structure for table `auditoria_identificador`
--

DROP TABLE IF EXISTS `auditoria_identificador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_identificador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_identificador`
--

LOCK TABLES `auditoria_identificador` WRITE;
/*!40000 ALTER TABLE `auditoria_identificador` DISABLE KEYS */;
INSERT INTO `auditoria_identificador` VALUES (1,'cs012013');
/*!40000 ALTER TABLE `auditoria_identificador` ENABLE KEYS */;
UNLOCK TABLES;

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
  `observacion` text,
  PRIMARY KEY (`id`),
  KEY `auditoria_resultado_4d4a0558` (`hoja_id`),
  KEY `auditoria_resultado_5a46c4bf` (`variable_id`),
  CONSTRAINT `hoja_id_refs_id_161f9007` FOREIGN KEY (`hoja_id`) REFERENCES `auditoria_hojacontrol` (`id`),
  CONSTRAINT `variable_id_refs_id_1addb316` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resultado`
--

LOCK TABLES `auditoria_resultado` WRITE;
/*!40000 ALTER TABLE `auditoria_resultado` DISABLE KEYS */;
INSERT INTO `auditoria_resultado` VALUES (21,1,328,0,'dfas'),(22,1,329,5,'fds'),(23,1,330,5,'dfa'),(24,1,331,5,'dfa'),(25,2,384,0,''),(26,2,385,0,''),(27,2,386,0,''),(28,2,387,0,''),(29,2,388,0,''),(30,2,389,0,''),(31,2,390,0,''),(32,2,391,0,''),(33,2,392,0,''),(34,2,393,0,''),(35,2,394,0,''),(36,2,395,0,''),(37,2,396,0,''),(38,2,397,0,''),(39,2,398,0,''),(40,2,399,0,''),(41,2,400,0,''),(42,2,401,0,''),(43,2,402,0,''),(44,2,328,0,''),(45,2,329,0,''),(46,2,330,0,''),(47,2,331,0,''),(48,2,332,0,''),(49,2,333,0,''),(50,2,334,0,''),(51,2,335,0,''),(52,2,336,0,''),(53,2,337,0,''),(54,2,338,0,''),(55,2,339,0,''),(56,2,340,0,''),(57,2,341,0,''),(58,2,342,0,''),(59,2,343,0,''),(60,2,344,0,''),(61,2,345,0,''),(62,2,346,0,''),(63,2,347,0,''),(64,2,348,0,''),(65,2,349,0,''),(66,2,350,0,''),(67,2,351,0,''),(68,2,352,0,''),(69,2,353,0,''),(70,2,354,0,''),(71,2,355,0,''),(72,2,356,0,''),(73,2,357,0,''),(74,2,358,0,''),(75,2,359,0,''),(76,2,360,0,''),(77,2,361,0,''),(78,2,362,0,''),(79,2,363,0,''),(80,2,364,0,''),(81,2,365,0,''),(82,2,366,0,''),(83,2,367,0,''),(84,2,368,0,''),(85,2,369,0,''),(86,2,370,0,''),(87,2,371,0,''),(88,2,372,0,''),(89,2,373,0,''),(90,2,374,0,''),(91,2,375,0,''),(92,2,376,0,''),(93,2,377,0,''),(94,2,378,0,''),(95,2,379,0,''),(96,2,380,0,''),(97,2,381,0,''),(98,2,382,0,''),(99,2,383,0,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_variable`
--

LOCK TABLES `auditoria_variable` WRITE;
/*!40000 ALTER TABLE `auditoria_variable` DISABLE KEYS */;
INSERT INTO `auditoria_variable` VALUES (328,'Se ha cumplido con los plazos establecidos para el tramite en tiempo y forma aceptables',5,11),(329,'Las fechas que presentan los antecedentes certifican el cumplimiento de los plazos previstos para el tramite',5,11),(330,'Existen evidencias en el expediente que indican que el tramite ha exicedido los plazos y tiempos establecidos',5,11),(331,'Existen evidencias en el expediente que indican que el tramite se ha adelantado a los plazos y tiempos establecidos',5,11),(332,'Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',10,11),(333,'Existen evidencias en el tramite que se realizaron los controles en las fechas de los documentos',5,11),(334,'Esta presente la media firma del responsable en los demas documentos del expediente',30,32),(335,'Esta presente el sello del responsable debajo de su firma y corresponde a los registros',15,32),(336,'Esta presente el sello del área en los diversos documentos que conforman el tramite y corresponde a la matriz de control',25,32),(337,'Esta presente de forma legible el nombre, apellido y cargo de la firma presente en los documentos',50,32),(338,'Las firmas de los documentos corresponden al registro de firmas de responsables del tramite',50,32),(339,'En caso de recomendaciones realizadas a la operación estas fueron adicionadas a los datos/documentos del tramite',30,31),(340,'Los archivos digitales remitidos pueden ser considerados como la ultima version',20,31),(341,'Los archivos digitales que acompañan el expediente estan registrados con el numero de version o version final',20,31),(342,'Los archivos digitales que acompañan el expediente estan registrados de forma tal que son asociados con facilidad al tramite',20,31),(343,'Los archivos digitales que acompañan el expediente corresponden al tramite en su totalidad',20,31),(344,'El expediente contiene copias autenticadas por el responsable del tramite',15,31),(345,'Todos los documentos del expediente estan foliados',20,31),(346,'Todos los documentos del expediente son legibles',20,31),(347,'El expediente contiene documentos originales o copias autenticadas de los mismos',25,31),(348,'Se puede acceder a verificar los registros de los diferentes operadores del tramite en calidad de consulta',20,23),(349,'Se puede constatar la hora de registro y esta concuerda con el horario de trabajo',20,23),(350,'Se puede observar en los documentos el resposable del registro en medios informatizados',5,23),(351,'Las fechas de registro de datos concuerdan con las fechas de los documentos controlados',15,23),(352,'Los antecedentes han sido presentados en medios digitales o magneticos',5,23),(353,'La revision del expediente permite el acceso a los historicos por tramite / beneficiario / responsable',20,23),(354,'La operacion ha sido registrada en un sistema informatico especifico',25,23),(355,'El expediente contiene documentos scaneados que se encuentran almacenados en la base de datos respectiva',5,23),(356,'El expediente al ingresar ha sido registrado en el sistema informatico de control de documentos',5,23),(357,'El tramite esta totalmente informatizado desde su inicio hasta su finalización',5,23),(358,'Se encuentra presente en el expediente la hoja de control del tramite de carácter administrativo',15,22),(359,'No se ha reformulado o ajustado el plazo original de la operación',15,22),(360,'No se han aplicado multas a la operación por imcumplimiento de una de las partes',20,22),(361,'Se ha ejecutado alguna garantia en el marco de la operación',20,22),(362,'Se han cumplido las garantias previstas para los riesgos de la operación',20,22),(363,'Las condiciones de pago de la operación estan ajustadas a las garantias previstas',30,22),(364,'Las garantias solicitadas son suficientes para la conclusion de la operación ',30,22),(365,'Estan especificadas las garantias necesarias paraconcluir la operacion ',30,22),(366,'Esta establecido el ambito beneficiario de la operación',25,22),(367,'Esta establecido el ambito responsable de la operación',25,22),(368,'Esta establecido el ambito solicitante de la operación',25,22),(369,'Estan claras las especificaciones tecnicas en los documentos que conforman el tramite /operación',35,22),(370,'Estan establecidos los criterios o estandares de calificacion de la operación /circuitos',20,22),(371,'Estan establecidods los criterios de evaluación para las diferentes etapas de la operación',20,22),(372,'Estan establecidos los documentos que conforman la operación a realizarse en los posteriores circuitos del proceso',20,22),(373,'Estan establecidos los criterios o estandares de calidad de la operación',20,22),(374,'Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',10,22),(375,'Se identifica con claridad la fecha estimada de la concresión de la operación ',15,22),(376,'Los calculos realizados corresponden a los montos registrados en los documentos que integran el expediente',20,22),(377,'Los montos asignados en el expediente coinciden con el/ los monto/s obligado/s',30,22),(378,'Los montos asignados en el expediente coinciden con los montos registrados en la operación del tramite',30,22),(379,'Se identifica el rubro a ser imputado por la operación',50,22),(380,'Se identifica la fuente de financiamiento asignada para la operación',5,22),(381,'Se identifica el programa presupuestario asignado para la operación',5,22),(382,'Se identifican con claridad los montos de la operación',5,22),(383,'Se identifica el numero asignado a la operación a realizarse',5,22),(384,'Se tiene acceso a datos historicos que permitan controlar las cifras o acciones comprometidas en el expediente',20,22),(385,'En el expediente se encuentran los antecedentes del tramite o referencia a traves de la cual se pueda determinar la operación',50,22),(386,'Las evidencias indican que el expediente se encuentra organizado en un orden secuencial ascendente',25,22),(387,'En el expediente se identifica el sistema de adjudicación utilizado para la operación',5,22),(388,'La caratula de expediente contiene los datos que permiten identificar la operación ',5,22),(389,'En el expediente se evidencia el cumplimiento de las normas generales y especificas del tramite',40,21),(390,'El tramite ha sido normatizado por Acordada del Pleno de la CSJ',30,21),(391,'El tramite ha sido normatizado por Resolución del Consejo de Administración de la CSJ',30,21),(392,'El tramite no ha sido normatizado conforme los procedimientos de control de riesgo establecidos por el MECIP',30,21),(393,'El tramite se ajusta a los procedimientos de control de riesgo establecidos por el MECIP',30,21),(394,'El tramite se ajusta a las normas y procedimientos establecidos por el DNCP',30,21),(395,'El tramite se ajusta a las normas y procedimientos establecidos por el SIGAF',30,21),(396,'   El tramite presenta evidencias de control interno por parte de sus operadores y responsables',20,12),(397,'El tramite esta sujeto al cumplimiento de un contrato y responde a los terminos establecidos',20,12),(398,'El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',10,12),(399,'Las evidencias demuestran que un dato significativo del tramite ha sido modificado en la secuencia de acciones desde su origen',10,12),(400,'El tramite respeta la logica secuencial de acciones desde su inicio',15,12),(401,'El tramite esta claramente identificado con un numero de orden secuencial asignado en su inicio',15,12),(402,'Se identifica con claridad la procedencia de origen del expediente y destino final',10,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'verificador');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,1,44),(3,1,46),(4,1,47),(1,1,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add circuito',7,'add_circuito'),(20,'Can change circuito',7,'change_circuito'),(21,'Can delete circuito',7,'delete_circuito'),(22,'Can add area',8,'add_area'),(23,'Can change area',8,'change_area'),(24,'Can delete area',8,'delete_area'),(25,'Can add circunscripcion',9,'add_circunscripcion'),(26,'Can change circunscripcion',9,'change_circunscripcion'),(27,'Can delete circunscripcion',9,'delete_circunscripcion'),(28,'Can add factor',10,'add_factor'),(29,'Can change factor',10,'change_factor'),(30,'Can delete factor',10,'delete_factor'),(31,'Can add indicador',11,'add_indicador'),(32,'Can change indicador',11,'change_indicador'),(33,'Can delete indicador',11,'delete_indicador'),(34,'Can add proceso',12,'add_proceso'),(35,'Can change proceso',12,'change_proceso'),(36,'Can delete proceso',12,'delete_proceso'),(37,'Can add variable',13,'add_variable'),(38,'Can change variable',13,'change_variable'),(39,'Can delete variable',13,'delete_variable'),(40,'Can add identificador',14,'add_identificador'),(41,'Can change identificador',14,'change_identificador'),(42,'Can delete identificador',14,'delete_identificador'),(43,'Can add hoja control',15,'add_hojacontrol'),(44,'Can change hoja control',15,'change_hojacontrol'),(45,'Can delete hoja control',15,'delete_hojacontrol'),(46,'Can add resultado',16,'add_resultado'),(47,'Can change resultado',16,'change_resultado'),(48,'Can delete resultado',16,'delete_resultado'),(49,'Can add log entry',17,'add_logentry'),(50,'Can change log entry',17,'change_logentry'),(51,'Can delete log entry',17,'delete_logentry');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$3U7AJup0Ckz1$3MOOHx+cNJYb1j0UaNWr87JyyLySTAEG/DqfZmaP0R4=','2013-09-06 14:02:26',1,'admin','','','erodriguez@cej.org.py',1,1,'2013-08-16 21:10:43'),(2,'pbkdf2_sha256$10000$HolDJWxmXcCw$5N3MubLQAKsddGiMKwAZBtIR96UsPu/v+WCA1jNLi0A=','2013-08-21 14:54:47',0,'enrique','Enrique','Rodríguez','enriquev.rodriguez@gmail.com',0,1,'2013-08-18 15:28:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-08-18 15:27:14',1,2,'1','verificador',1,''),(2,'2013-08-18 15:28:01',1,3,'2','enrique',1,''),(3,'2013-08-18 15:28:25',1,3,'2','enrique',2,'Modificado/a password, first_name, last_name, email y groups.'),(4,'2013-08-18 15:33:36',1,14,'1','cs012013',1,''),(5,'2013-08-18 15:41:51',1,15,'1','Esto es una prueba',1,''),(6,'2013-08-19 00:22:18',1,15,'1','Esto es una prueba',2,'Modificado/a variables.'),(7,'2013-08-19 15:05:44',1,15,'2','Esta es otra hoja de control',1,''),(8,'2013-08-22 22:31:04',1,15,'1','Esto es una prueba',2,'Modificado/a activa.'),(9,'2013-08-28 15:22:14',1,15,'2','Esta es otra hoja de control',3,''),(10,'2013-08-28 15:22:14',1,15,'1','Esto es una prueba',3,''),(11,'2013-08-28 15:22:45',1,13,'327','variable de prueba',3,''),(12,'2013-08-28 15:22:45',1,13,'326','Uno de los sellos impide identificar con seguridad la firma del responsable',3,''),(13,'2013-08-28 15:22:45',1,13,'325','Esta presente la media firma del responsable en los demas documentos del expediente',3,''),(14,'2013-08-28 15:22:45',1,13,'324','Esta presente el sello del responsable debajo de su firma y corresponde a la matiz de control',3,''),(15,'2013-08-28 15:22:45',1,13,'323','Esta presente el sello del área en los diversos documentos que conforman el tramite y corresponde a la matriz de control',3,''),(16,'2013-08-28 15:22:45',1,13,'322','Esta presente de forma legible el nombre, apellido y cargo de la firma presente en los documentos',3,''),(17,'2013-08-28 15:22:45',1,13,'321','Las firmas de los documentos corresponden al registro de firmas de responsables del tramite',3,''),(18,'2013-08-28 15:22:45',1,13,'319','En caso de recomendaciones realizadas a la operación estas fueron adicionadas a los datos/documentos del tramite',3,''),(19,'2013-08-28 15:22:45',1,13,'318','Los archivos digitales remitidos pueden ser considerados como la ultima version',3,''),(20,'2013-08-28 15:22:45',1,13,'317','Los archivos digitales que acompañan el expediente estan registrados con el numero de version o version final',3,''),(21,'2013-08-28 15:22:45',1,13,'316','Los archivos digitales que acompañan el expediente estan registrados de forma tal que son asociados con facilidad al tramite',3,''),(22,'2013-08-28 15:22:45',1,13,'315','Los archivos digitales que acompañan el expediente corresponden al tramite en su totalidad',3,''),(23,'2013-08-28 15:22:46',1,13,'314','El expediente contiene copias autenticadas por el responsable del tramite',3,''),(24,'2013-08-28 15:22:46',1,13,'313','Todos los documentos del expediente estan foliados',3,''),(25,'2013-08-28 15:22:46',1,13,'312','Todos los documentos del expediente son legibles',3,''),(26,'2013-08-28 15:22:46',1,13,'311','El expediente contiene documentos originales o copias autenticadas de los mismos',3,''),(27,'2013-08-28 15:22:46',1,13,'270','Se puede acceder a verificar los registros de los diferentes operadores del tramite en calidad de consulta',3,''),(28,'2013-08-28 15:22:46',1,13,'269','Se puede constatar la hora de registro y esta concuerda con el horario de trabajo',3,''),(29,'2013-08-28 15:22:46',1,13,'268','Se puede observar en los documentos el resposable del registro en medios informatizados',3,''),(30,'2013-08-28 15:22:46',1,13,'267','Las fechas de registro de datos concuerdan con las fechas de los documentos controlados',3,''),(31,'2013-08-28 15:22:46',1,13,'266','Los antecedentes han sido presentados en medios digitales o magneticos',3,''),(32,'2013-08-28 15:22:46',1,13,'265','La revision del expediente permite el acceso a los historicos por tramite / beneficiario / responsable',3,''),(33,'2013-08-28 15:22:46',1,13,'264','La operacion ha sido registrada en un sistema informatico especifico',3,''),(34,'2013-08-28 15:22:46',1,13,'263','El expediente contiene documentos scaneados que se encuentran almacenados en la base de datos respectiva',3,''),(35,'2013-08-28 15:22:46',1,13,'262','El expediente al ingresar ha sido registrado en el sistema informatico de control de documentos',3,''),(36,'2013-08-28 15:22:46',1,13,'261','El tramite esta totalmente informatizado desde su inicio hasta su finalización',3,''),(37,'2013-08-28 15:22:46',1,13,'251','Se encuentra presente en el expediente la hoja de control del tramite de carácter administrativo',3,''),(38,'2013-08-28 15:22:46',1,13,'250','Se ha reformulado o ajustado el plazo original de la operación',3,''),(39,'2013-08-28 15:22:46',1,13,'249','Se han aplicado multas a la operación por imcumplimiento de una de las partes',3,''),(40,'2013-08-28 15:22:46',1,13,'248','Se ha ejecutado alguna garantia en el marco de la operación',3,''),(41,'2013-08-28 15:22:46',1,13,'247','Se han cumplido las garantias previstas para los riesgos de la operación',3,''),(42,'2013-08-28 15:22:46',1,13,'246','Las condiciones de pago de la operación estan ajustadas a las garantias previstas',3,''),(43,'2013-08-28 15:22:46',1,13,'245','Las garantias solicitadas son suficientes para la conclusion de la operación ',3,''),(44,'2013-08-28 15:22:46',1,13,'244','Estan especificadas las garantias necesarias paraconcluir la operacion ',3,''),(45,'2013-08-28 15:22:47',1,13,'243','Esta establecido el ambito beneficiario de la operación',3,''),(46,'2013-08-28 15:22:47',1,13,'242','Esta establecido el ambito responsable de la operación',3,''),(47,'2013-08-28 15:22:47',1,13,'241','Esta establecido el ambito solicitante de la operación',3,''),(48,'2013-08-28 15:22:47',1,13,'240','Estan claras las especificaciones tecnicas en los documentos que conforman el tramite /operación',3,''),(49,'2013-08-28 15:22:47',1,13,'239','Estan establecidos los criterios o estandares de calificacion de la operación /circuitos',3,''),(50,'2013-08-28 15:22:47',1,13,'238','Estan establecidods los criterios de evaluación para las diferentes etapas de la operación',3,''),(51,'2013-08-28 15:22:47',1,13,'237','Estan establecidos los documentos que conforman la operación a realizarse en los posteriores circuitos del proceso',3,''),(52,'2013-08-28 15:22:47',1,13,'236','Estan establecidos los criterios o estandares de calidad de la operación',3,''),(53,'2013-08-28 15:22:47',1,13,'235','Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',3,''),(54,'2013-08-28 15:22:47',1,13,'234','Se identifica con claridad la fecha estimada de la concresión de la operación ',3,''),(55,'2013-08-28 15:22:47',1,13,'233','Los calculos realizados corresponden a los montos registrados en los documentos que integran el expediente',3,''),(56,'2013-08-28 15:22:47',1,13,'232','Los montos asignados en el expediente coinciden con el/ los monto/s obligado/s',3,''),(57,'2013-08-28 15:22:47',1,13,'231','Los montos asignados en el expediente coinciden con los montos registrados en la operación del tramite',3,''),(58,'2013-08-28 15:22:47',1,13,'230','Se identifica el rubro a ser imputado por la operación',3,''),(59,'2013-08-28 15:22:47',1,13,'229','Se identifica la fuente de financiamiento asignada para la operación',3,''),(60,'2013-08-28 15:22:47',1,13,'228','Se identifica el programa presupuestario asignado para la operación',3,''),(61,'2013-08-28 15:22:47',1,13,'227','Se identifican con claridad los montos de la operación',3,''),(62,'2013-08-28 15:22:47',1,13,'226','Se identifica el numero asignado a la operación a realizarse',3,''),(63,'2013-08-28 15:22:47',1,13,'225','Se tiene acceso a datos historicos que permitan controlar las cifras o acciones comprometidas en el expediente',3,''),(64,'2013-08-28 15:22:47',1,13,'224','En el expediente se encuentran los antecedentes del tramite o referencia a traves de la cual se pueda determinar la operación',3,''),(65,'2013-08-28 15:22:47',1,13,'223','Las evidencias indican que el expediente se encuentra organizado en un orden secuencial ascendente',3,''),(66,'2013-08-28 15:22:47',1,13,'222','En el expediente se identifica el sistema de adjudicación utilizado para la operación',3,''),(67,'2013-08-28 15:22:47',1,13,'221','La caratula de expediente contiene los datos que permiten identificar la operación ',3,''),(68,'2013-08-28 15:22:47',1,13,'127','El tramite presenta evidencias de control interno por parte de sus operadores y responsables',3,''),(69,'2013-08-28 15:22:48',1,13,'126','El tramite esta sujeto al cumplimiento de un contrato y responde a los terminos establecidos',3,''),(70,'2013-08-28 15:22:48',1,13,'125','El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',3,''),(71,'2013-08-28 15:22:48',1,13,'124','Las evidencias demuestran que un dato significativo del tramite ha sido modificado en la secuencia de acciones desde su origen',3,''),(72,'2013-08-28 15:22:48',1,13,'123','El tramite respeta la logica secuencial de acciones desde su inicio',3,''),(73,'2013-08-28 15:22:48',1,13,'122','El tramite esta claramente identificado con un numero de orden secuencial asignado en su inicio',3,''),(74,'2013-08-28 15:22:48',1,13,'121','Se identifica con claridad la procedencia de origen del expediente y destino final',3,''),(75,'2013-08-28 15:22:48',1,13,'115','Existen evidencias en el tramite que se realizaron los controles en las fechas de los documentos',3,''),(76,'2013-08-28 15:22:48',1,13,'114','Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',3,''),(77,'2013-08-28 15:22:48',1,13,'113','Existen evidencias en el expediente que indican que el tramite se ha adelantado a los plazos y tiempos establecidos',3,''),(78,'2013-08-28 15:22:48',1,13,'112','Las fechas que presentan los antecedentes certifican el cumplimiento de los plazos previstos para el tramite',3,''),(79,'2013-08-28 15:22:48',1,13,'111','Se ha cumplido con los plazos establecidos para el tramite en tiempo y forma aceptables',3,''),(80,'2013-08-28 15:23:06',1,13,'328','Se ha cumplido con los plazos establecidos para el tramite en tiempo y forma aceptables',1,''),(81,'2013-08-28 15:23:17',1,13,'329','Las fechas que presentan los antecedentes certifican el cumplimiento de los plazos previstos para el tramite',1,''),(82,'2013-08-28 15:23:26',1,13,'330','Existen evidencias en el expediente que indican que el tramite ha exicedido los plazos y tiempos establecidos',1,''),(83,'2013-08-28 15:23:35',1,13,'331','Existen evidencias en el expediente que indican que el tramite se ha adelantado a los plazos y tiempos establecidos',1,''),(84,'2013-08-28 15:23:45',1,13,'332','Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',1,''),(85,'2013-08-28 15:23:59',1,13,'333','Existen evidencias en el tramite que se realizaron los controles en las fechas de los documentos',1,''),(86,'2013-08-28 15:24:33',1,13,'332','Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',2,'Modificado/a valor.'),(87,'2013-08-28 15:24:52',1,13,'334','Esta presente la media firma del responsable en los demas documentos del expediente',1,''),(88,'2013-08-28 15:25:07',1,13,'335','Esta presente el sello del responsable debajo de su firma y corresponde a los registros',1,''),(89,'2013-08-28 15:25:16',1,13,'334','Esta presente la media firma del responsable en los demas documentos del expediente',2,'Modificado/a indicador.'),(90,'2013-08-28 15:25:28',1,13,'336','Esta presente el sello del área en los diversos documentos que conforman el tramite y corresponde a la matriz de control',1,''),(91,'2013-08-28 15:25:38',1,13,'337','Esta presente de forma legible el nombre, apellido y cargo de la firma presente en los documentos',1,''),(92,'2013-08-28 15:25:49',1,13,'338','Las firmas de los documentos corresponden al registro de firmas de responsables del tramite',1,''),(93,'2013-08-28 15:26:20',1,13,'339','En caso de recomendaciones realizadas a la operación estas fueron adicionadas a los datos/documentos del tramite',1,''),(94,'2013-08-28 15:27:11',1,13,'340','Los archivos digitales remitidos pueden ser considerados como la ultima version',1,''),(95,'2013-08-28 15:27:22',1,13,'341','Los archivos digitales que acompañan el expediente estan registrados con el numero de version o version final',1,''),(96,'2013-08-28 15:27:33',1,13,'342','Los archivos digitales que acompañan el expediente estan registrados de forma tal que son asociados con facilidad al tramite',1,''),(97,'2013-08-28 15:27:42',1,13,'343','Los archivos digitales que acompañan el expediente corresponden al tramite en su totalidad',1,''),(98,'2013-08-28 15:27:50',1,13,'344','El expediente contiene copias autenticadas por el responsable del tramite',1,''),(99,'2013-08-28 15:27:58',1,13,'345','Todos los documentos del expediente estan foliados',1,''),(100,'2013-08-28 15:28:11',1,13,'346','Todos los documentos del expediente son legibles',1,''),(101,'2013-08-28 15:28:21',1,13,'347','El expediente contiene documentos originales o copias autenticadas de los mismos',1,''),(102,'2013-08-28 15:28:43',1,13,'344','El expediente contiene copias autenticadas por el responsable del tramite',2,'Modificado/a valor.'),(103,'2013-08-28 15:29:07',1,13,'348','Se puede acceder a verificar los registros de los diferentes operadores del tramite en calidad de consulta',1,''),(104,'2013-08-28 15:29:16',1,13,'349','Se puede constatar la hora de registro y esta concuerda con el horario de trabajo',1,''),(105,'2013-08-28 15:29:46',1,13,'350','Se puede observar en los documentos el resposable del registro en medios informatizados',1,''),(106,'2013-08-28 15:30:00',1,13,'351','Las fechas de registro de datos concuerdan con las fechas de los documentos controlados',1,''),(107,'2013-08-28 15:30:12',1,13,'352','Los antecedentes han sido presentados en medios digitales o magneticos',1,''),(108,'2013-08-28 15:30:21',1,13,'353','La revision del expediente permite el acceso a los historicos por tramite / beneficiario / responsable',1,''),(109,'2013-08-28 15:30:30',1,13,'354','La operacion ha sido registrada en un sistema informatico especifico',1,''),(110,'2013-08-28 15:30:37',1,13,'355','El expediente contiene documentos scaneados que se encuentran almacenados en la base de datos respectiva',1,''),(111,'2013-08-28 15:30:44',1,13,'356','El expediente al ingresar ha sido registrado en el sistema informatico de control de documentos',1,''),(112,'2013-08-28 15:30:55',1,13,'357','El tramite esta totalmente informatizado desde su inicio hasta su finalización',1,''),(113,'2013-08-28 15:31:59',1,13,'358','Se encuentra presente en el expediente la hoja de control del tramite de carácter administrativo',1,''),(114,'2013-08-28 15:32:34',1,13,'359','No se ha reformulado o ajustado el plazo original de la operación',1,''),(115,'2013-08-28 15:33:15',1,13,'360','No se han aplicado multas a la operación por imcumplimiento de una de las partes',1,''),(116,'2013-08-28 15:33:34',1,13,'361','Se ha ejecutado alguna garantia en el marco de la operación',1,''),(117,'2013-08-28 15:33:51',1,13,'362','Se han cumplido las garantias previstas para los riesgos de la operación',1,''),(118,'2013-08-28 15:34:50',1,13,'363','Las condiciones de pago de la operación estan ajustadas a las garantias previstas',1,''),(119,'2013-08-28 15:35:00',1,13,'364','Las garantias solicitadas son suficientes para la conclusion de la operación ',1,''),(120,'2013-08-28 15:35:14',1,13,'365','Estan especificadas las garantias necesarias paraconcluir la operacion ',1,''),(121,'2013-08-28 15:35:23',1,13,'366','Esta establecido el ambito beneficiario de la operación',1,''),(122,'2013-08-28 15:35:35',1,13,'367','Esta establecido el ambito responsable de la operación',1,''),(123,'2013-08-28 15:35:45',1,13,'368','Esta establecido el ambito solicitante de la operación',1,''),(124,'2013-08-28 15:35:55',1,13,'369','Estan claras las especificaciones tecnicas en los documentos que conforman el tramite /operación',1,''),(125,'2013-08-28 15:36:04',1,13,'370','Estan establecidos los criterios o estandares de calificacion de la operación /circuitos',1,''),(126,'2013-08-28 15:36:13',1,13,'371','Estan establecidods los criterios de evaluación para las diferentes etapas de la operación',1,''),(127,'2013-08-28 15:36:23',1,13,'372','Estan establecidos los documentos que conforman la operación a realizarse en los posteriores circuitos del proceso',1,''),(128,'2013-08-28 15:36:33',1,13,'373','Estan establecidos los criterios o estandares de calidad de la operación',1,''),(129,'2013-08-28 15:36:41',1,13,'374','Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',1,''),(130,'2013-08-28 15:36:55',1,13,'375','Se identifica con claridad la fecha estimada de la concresión de la operación ',1,''),(131,'2013-08-28 15:37:17',1,13,'374','Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',2,'Modificado/a valor.'),(132,'2013-08-28 15:37:27',1,13,'376','Los calculos realizados corresponden a los montos registrados en los documentos que integran el expediente',1,''),(133,'2013-08-28 15:37:36',1,13,'377','Los montos asignados en el expediente coinciden con el/ los monto/s obligado/s',1,''),(134,'2013-08-28 15:37:44',1,13,'378','Los montos asignados en el expediente coinciden con los montos registrados en la operación del tramite',1,''),(135,'2013-08-28 15:37:53',1,13,'379','Se identifica el rubro a ser imputado por la operación',1,''),(136,'2013-08-28 15:38:03',1,13,'380','Se identifica la fuente de financiamiento asignada para la operación',1,''),(137,'2013-08-28 15:38:10',1,13,'381','Se identifica el programa presupuestario asignado para la operación',1,''),(138,'2013-08-28 15:38:19',1,13,'382','Se identifican con claridad los montos de la operación',1,''),(139,'2013-08-28 15:38:26',1,13,'383','Se identifica el numero asignado a la operación a realizarse',1,''),(140,'2013-08-28 15:38:35',1,13,'384','Se tiene acceso a datos historicos que permitan controlar las cifras o acciones comprometidas en el expediente',1,''),(141,'2013-08-28 15:38:46',1,13,'385','En el expediente se encuentran los antecedentes del tramite o referencia a traves de la cual se pueda determinar la operación',1,''),(142,'2013-08-28 15:38:57',1,13,'386','Las evidencias indican que el expediente se encuentra organizado en un orden secuencial ascendente',1,''),(143,'2013-08-28 15:39:06',1,13,'387','En el expediente se identifica el sistema de adjudicación utilizado para la operación',1,''),(144,'2013-08-28 15:39:20',1,13,'388','La caratula de expediente contiene los datos que permiten identificar la operación ',1,''),(145,'2013-08-28 15:39:39',1,13,'389','En el expediente se evidencia el cumplimiento de las normas generales y especificas del tramite',1,''),(146,'2013-08-28 15:39:45',1,13,'390','El tramite ha sido normatizado por Acordada del Pleno de la CSJ',1,''),(147,'2013-08-28 15:39:55',1,13,'391','El tramite ha sido normatizado por Resolución del Consejo de Administración de la CSJ',1,''),(148,'2013-08-28 15:40:04',1,13,'392','El tramite no ha sido normatizado conforme los procedimientos de control de riesgo establecidos por el MECIP',1,''),(149,'2013-08-28 15:40:14',1,13,'393','El tramite se ajusta a los procedimientos de control de riesgo establecidos por el MECIP',1,''),(150,'2013-08-28 15:40:22',1,13,'394','El tramite se ajusta a las normas y procedimientos establecidos por el DNCP',1,''),(151,'2013-08-28 15:40:32',1,13,'395','El tramite se ajusta a las normas y procedimientos establecidos por el SIGAF',1,''),(152,'2013-08-28 15:41:03',1,13,'396','   El tramite presenta evidencias de control interno por parte de sus operadores y responsables',1,''),(153,'2013-08-28 15:41:11',1,13,'397','El tramite esta sujeto al cumplimiento de un contrato y responde a los terminos establecidos',1,''),(154,'2013-08-28 15:41:17',1,13,'398','El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',1,''),(155,'2013-08-28 15:41:25',1,13,'399','Las evidencias demuestran que un dato significativo del tramite ha sido modificado en la secuencia de acciones desde su origen',1,''),(156,'2013-08-28 15:41:38',1,13,'400','El tramite respeta la logica secuencial de acciones desde su inicio',1,''),(157,'2013-08-28 15:42:10',1,13,'399','Las evidencias demuestran que un dato significativo del tramite ha sido modificado en la secuencia de acciones desde su origen',2,'Modificado/a valor.'),(158,'2013-08-28 15:42:46',1,13,'398','El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',2,'Modificado/a valor.'),(159,'2013-08-28 15:43:25',1,13,'401','El tramite esta claramente identificado con un numero de orden secuencial asignado en su inicio',1,''),(160,'2013-08-28 15:43:34',1,13,'402','Se identifica con claridad la procedencia de origen del expediente y destino final',1,''),(161,'2013-08-31 21:57:26',1,15,'1','fdsfasjd;',1,''),(162,'2013-09-01 22:48:36',1,15,'1','fdsfasjd;',2,'Modificado/a activa.'),(163,'2013-09-01 23:03:20',1,15,'1','fdsfasjd;',2,'Modificado/a activa.'),(164,'2013-09-01 23:04:19',1,15,'1','fdsfasjd;',2,'Modificado/a activa.'),(165,'2013-09-01 23:05:08',1,15,'1','fdsfasjd;',2,'Modificado/a activa.'),(166,'2013-09-01 23:06:45',1,15,'1','fdsfasjd;',2,'Modificado/a activa.'),(167,'2013-09-05 18:19:57',1,15,'2','Descripcion de hoja de control',1,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'circuito','auditoria','circuito'),(8,'area','auditoria','area'),(9,'circunscripcion','auditoria','circunscripcion'),(10,'factor','auditoria','factor'),(11,'indicador','auditoria','indicador'),(12,'proceso','auditoria','proceso'),(13,'variable','auditoria','variable'),(14,'identificador','auditoria','identificador'),(15,'hoja control','auditoria','hojacontrol'),(16,'resultado','auditoria','resultado'),(17,'log entry','admin','logentry');
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
INSERT INTO `django_session` VALUES ('1cnq0xt34hx2mqv6c43vdffb72nmm8ss','NjcyNmY3ZGJkY2NmMTg2NDNmOWFkMzQ3MmMyOGE2Y2I5NTg4ZjMzNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==','2013-09-04 14:54:47'),('1qz777sg01ih7rvaexamxl0va0j3a7pt','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-20 14:02:26'),('caq563j5wqxj8s6bgpwb10aoq84m0rn7','NjcyNmY3ZGJkY2NmMTg2NDNmOWFkMzQ3MmMyOGE2Y2I5NTg4ZjMzNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==','2013-09-01 15:28:48'),('g6d711lecgh52iq4801sep9k38owvnvj','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-19 17:53:24'),('hj38vsierht658735jd8a5thpbhkcb66','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-30 23:58:50'),('kfhhk3s88vgts2uwuxk9rpwkanm45v6n','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-19 17:36:00'),('qcj7g7ki9akjl7q55t0ld6sd15zg1qvw','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-14 21:49:57');
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

-- Dump completed on 2013-09-06 12:57:01
