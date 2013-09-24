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
-- Table structure for table `auditoria_caracter`
--

DROP TABLE IF EXISTS `auditoria_caracter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_caracter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_caracter`
--

LOCK TABLES `auditoria_caracter` WRITE;
/*!40000 ALTER TABLE `auditoria_caracter` DISABLE KEYS */;
INSERT INTO `auditoria_caracter` VALUES (1,'Plurianual'),(2,'Anual');
/*!40000 ALTER TABLE `auditoria_caracter` ENABLE KEYS */;
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
-- Table structure for table `auditoria_documentos`
--

DROP TABLE IF EXISTS `auditoria_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `docu_path` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_documentos`
--

LOCK TABLES `auditoria_documentos` WRITE;
/*!40000 ALTER TABLE `auditoria_documentos` DISABLE KEYS */;
INSERT INTO `auditoria_documentos` VALUES (1,'PROTOCOLO PARA CONTROL DE ADMINISTRACIÓN DEL RIESGO EN LA GESTIÓN ADMINISTRATIVA FINANCIERA DE LA CORTE SUPREMA DE JUSTICIA','El presente documento ha sido realizado en marco del programa “MAS JUSTICIA” y está conformado por un compendio de normas y procedimientos que definen los pasos a seguir para la aplicación de criterios de control sobre la administración del riesgo para los procesos administrativos financieros considerados críticos para la calidad de gestión de la Corte Suprema de Justicia (CSJ).','2013-09-23 19:32:06','archivos/Protocolo_de_control_en_la_administracion_del_riesgo_Contraloria_Interna_VF.docx'),(2,'Resolución 4481','VISTA: La Resolución nro. 3186 del 28 de junio de 2011 de la Corte Suprema de Justicia; la Resolución nro. 269 del 8 de abril de 2013; y la Planificación Estratégica 2011 - 2015 del Poder Judicial, Objetivo Estratégico nro. 4 que establece \"Fortalecer la Gestión Administrativa Descentralizada hacia la  eficiencia y transparencia, enfocada a responder a las necesidades institucionales con énfacis al sector jurisdiccional','2013-09-23 20:03:22','archivos/Resolucion_4481-21-05-2013_Protocolo_Contraloria.pdf'),(3,'PAC 2013','Resolución nro. 4313, por la que se aprueba el programa anual de contrataciones de la Corte Suprema de Justicia para el ejercicio fiscal 2013','2013-09-23 20:04:04','archivos/20130918163950070_1.pdf');
/*!40000 ALTER TABLE `auditoria_documentos` ENABLE KEYS */;
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
  `circunscripcion` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `pac` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_hojacontrol_300a32bb` (`identificador`),
  KEY `auditoria_hojacontrol_1c0ab5cf` (`circunscripcion`),
  KEY `auditoria_hojacontrol_a4563695` (`area`),
  KEY `auditoria_hojacontrol_591f98ef` (`pac`),
  KEY `auditoria_hojacontrol_c69e2c81` (`usuario`),
  CONSTRAINT `area_refs_id_b296048e` FOREIGN KEY (`area`) REFERENCES `auditoria_area` (`id`),
  CONSTRAINT `circunscripcion_refs_id_629a6faa` FOREIGN KEY (`circunscripcion`) REFERENCES `auditoria_circunscripcion` (`id`),
  CONSTRAINT `identificador_refs_id_8704b958` FOREIGN KEY (`identificador`) REFERENCES `auditoria_identificador` (`id`),
  CONSTRAINT `pac_refs_id_ace78361` FOREIGN KEY (`pac`) REFERENCES `auditoria_pac` (`id`),
  CONSTRAINT `usuario_refs_id_56c3ed8c` FOREIGN KEY (`usuario`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol`
--

LOCK TABLES `auditoria_hojacontrol` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol` VALUES (1,1,'Descripción','2013-09-22','Inactivo',1,1,1,1),(2,1,'Prueba','2013-09-24','activo',1,1,1,1);
/*!40000 ALTER TABLE `auditoria_hojacontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_hojacontrol_circuito`
--

DROP TABLE IF EXISTS `auditoria_hojacontrol_circuito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_hojacontrol_circuito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hojacontrol_id` int(11) NOT NULL,
  `circuito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hojacontrol_id` (`hojacontrol_id`,`circuito_id`),
  KEY `auditoria_hojacontrol_circuito_117cc298` (`hojacontrol_id`),
  KEY `auditoria_hojacontrol_circuito_6ecba166` (`circuito_id`),
  CONSTRAINT `circuito_id_refs_id_c79815c8` FOREIGN KEY (`circuito_id`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `hojacontrol_id_refs_id_812d5655` FOREIGN KEY (`hojacontrol_id`) REFERENCES `auditoria_hojacontrol` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol_circuito`
--

LOCK TABLES `auditoria_hojacontrol_circuito` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol_circuito` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol_circuito` VALUES (1,1,12),(2,1,13),(3,1,14),(4,1,15),(6,2,12),(7,2,13),(8,2,14),(5,2,18);
/*!40000 ALTER TABLE `auditoria_hojacontrol_circuito` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol_variables`
--

LOCK TABLES `auditoria_hojacontrol_variables` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol_variables` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol_variables` VALUES (1,1,328),(2,1,329),(3,1,330),(4,1,331),(5,1,332),(6,1,333),(7,1,334),(8,1,335),(9,1,336),(10,1,337),(11,1,338),(12,1,339),(13,1,340),(14,1,341),(15,1,342),(16,1,343),(17,1,344),(18,1,345),(19,1,346),(20,1,347),(21,1,348),(22,1,349),(23,1,350),(24,1,351),(25,1,352),(26,1,353),(27,1,354),(28,1,355),(29,1,356),(30,1,357),(31,1,362),(32,1,363),(33,1,364),(34,1,365),(35,1,366),(36,1,368),(37,1,369),(38,1,370),(39,1,371),(40,1,372),(41,1,373),(42,1,374),(43,1,375),(44,1,376),(45,1,377),(46,1,378),(47,1,379),(48,1,380),(49,1,381),(50,1,382),(59,2,332),(60,2,333),(61,2,334),(62,2,335),(63,2,336),(64,2,337),(65,2,338),(66,2,342),(67,2,344),(68,2,345),(69,2,347),(70,2,349),(71,2,350),(72,2,366),(73,2,367),(74,2,368),(75,2,369),(76,2,376),(77,2,378),(51,2,394),(52,2,395),(53,2,396),(54,2,397),(55,2,399),(56,2,400),(57,2,401),(58,2,402);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_identificador`
--

LOCK TABLES `auditoria_identificador` WRITE;
/*!40000 ALTER TABLE `auditoria_identificador` DISABLE KEYS */;
INSERT INTO `auditoria_identificador` VALUES (1,'cs012013'),(3,'hc201301'),(2,'hc22013');
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
-- Table structure for table `auditoria_modlidad`
--

DROP TABLE IF EXISTS `auditoria_modlidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_modlidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_modlidad`
--

LOCK TABLES `auditoria_modlidad` WRITE;
/*!40000 ALTER TABLE `auditoria_modlidad` DISABLE KEYS */;
INSERT INTO `auditoria_modlidad` VALUES (1,'Licitación por concurso de ofertas'),(2,'Licitación Pública Nacional'),(3,'Contratación por Excepcion'),(4,'Contratación Directa');
/*!40000 ALTER TABLE `auditoria_modlidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_pac`
--

DROP TABLE IF EXISTS `auditoria_pac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_pac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `caracter_id` int(11) NOT NULL,
  `Modlidad_id` int(11) NOT NULL,
  `resolucion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_pac_07789974` (`caracter_id`),
  KEY `auditoria_pac_fe7b6e0c` (`Modlidad_id`),
  KEY `auditoria_pac_dab36a32` (`resolucion_id`),
  CONSTRAINT `caracter_id_refs_id_bdb7587c` FOREIGN KEY (`caracter_id`) REFERENCES `auditoria_caracter` (`id`),
  CONSTRAINT `Modlidad_id_refs_id_420587a4` FOREIGN KEY (`Modlidad_id`) REFERENCES `auditoria_modlidad` (`id`),
  CONSTRAINT `resolucion_id_refs_id_a377010b` FOREIGN KEY (`resolucion_id`) REFERENCES `auditoria_resolucion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_pac`
--

LOCK TABLES `auditoria_pac` WRITE;
/*!40000 ALTER TABLE `auditoria_pac` DISABLE KEYS */;
INSERT INTO `auditoria_pac` VALUES (1,1,'SERVICIO DE CATERING - CONTRATO ABIERTO - AD REFERENDUM',1,2,1),(2,2,'PROVISIÓN DE ALIMENTOS - CONTRATO ABIERTO - AD REFERENDUM',1,2,1),(3,3,'SERVICIO DE CEREMONIAL - CONTRATO ABIERTO - AD REFERENDUM',1,1,1),(4,5,'Servicio de Lavado, engrace y gomería - Ad Referendum',1,1,1),(5,4,'MANTENIMIENTO PREVENTIVO Y CORRECTIVO DEL SISTEMA EECTROMECANICO, ELECTRICO, SISTEMA DE AGUA POTABLE Y DESAGUE DE ASUNCIÓN Y SAN LORENZO - CONTRATO ABIERTO - AD REFERENDUM',1,2,1),(6,6,'Consultoría para la contratación de servicios profesionales para la eleaboración de materiales de comunicación, impresos, audio visuales y campañas de información pública de la corte suprema de justicia',1,1,1),(7,7,'Contratación de seguro de Responsabilidad civil y Accidentes personales',2,2,1),(8,8,'Mantenimiento y reparacion de vehículos en talleres oficiales - Contrato Abierto - Marcas: Toyota, Nissan, Ford y Volvo',1,3,1),(9,10,'Provisión de pasajes aéreos y servicios conexos',1,2,1),(10,9,'Mantenimiento preventivo y correctivo de servidores',1,4,1),(11,11,'Software para soporte de elaboración e implementación del MECIP',2,4,1);
/*!40000 ALTER TABLE `auditoria_pac` ENABLE KEYS */;
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
-- Table structure for table `auditoria_resolucion`
--

DROP TABLE IF EXISTS `auditoria_resolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_resolucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `fecha` date NOT NULL,
  `ejercicio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resolucion`
--

LOCK TABLES `auditoria_resolucion` WRITE;
/*!40000 ALTER TABLE `auditoria_resolucion` DISABLE KEYS */;
INSERT INTO `auditoria_resolucion` VALUES (1,4313,'Resolución nro. 4313, por la que se aprueba el programa anual de contrataciones de la Corte Suprema de Justicia para el ejercicio fiscal 2013','Creacion','2013-02-26',2013),(5,9999,'Descriçion de prueba','Modificacion','2013-09-23',2013);
/*!40000 ALTER TABLE `auditoria_resolucion` ENABLE KEYS */;
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
  `observacion` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_resultado_4d4a0558` (`hoja_id`),
  KEY `auditoria_resultado_5a46c4bf` (`variable_id`),
  CONSTRAINT `hoja_id_refs_id_161f9007` FOREIGN KEY (`hoja_id`) REFERENCES `auditoria_hojacontrol` (`id`),
  CONSTRAINT `variable_id_refs_id_1addb316` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resultado`
--

LOCK TABLES `auditoria_resultado` WRITE;
/*!40000 ALTER TABLE `auditoria_resultado` DISABLE KEYS */;
INSERT INTO `auditoria_resultado` VALUES (1,1,328,5,''),(2,1,329,5,''),(3,1,330,5,''),(4,1,331,5,''),(5,1,332,10,''),(6,1,333,5,''),(7,1,334,30,''),(8,1,335,15,''),(9,1,336,25,''),(10,1,337,50,''),(11,1,338,50,''),(12,1,339,30,''),(13,1,340,20,''),(14,1,341,20,''),(15,1,342,20,''),(16,1,343,20,''),(17,1,344,15,''),(18,1,345,20,''),(19,1,346,20,''),(20,1,347,25,''),(21,1,348,20,''),(22,1,349,20,''),(23,1,350,5,''),(24,1,351,15,''),(25,1,352,5,''),(26,1,353,20,''),(27,1,354,25,''),(28,1,355,5,''),(29,1,356,5,''),(30,1,357,5,''),(31,1,362,20,''),(32,1,363,30,''),(33,1,364,30,''),(34,1,365,30,''),(35,1,366,25,''),(36,1,368,25,''),(37,1,369,35,''),(38,1,370,20,''),(39,1,371,20,''),(40,1,372,20,''),(41,1,373,20,''),(42,1,374,10,''),(43,1,375,15,''),(44,1,376,20,''),(45,1,377,30,''),(46,1,378,30,''),(47,1,379,50,''),(48,1,380,5,''),(49,1,381,5,''),(50,1,382,5,''),(51,2,394,0,''),(52,2,395,0,''),(53,2,396,0,''),(54,2,397,0,''),(55,2,399,0,''),(56,2,400,0,''),(57,2,401,0,''),(58,2,402,0,''),(59,2,332,0,''),(60,2,333,0,''),(61,2,334,0,''),(62,2,335,0,''),(63,2,336,0,''),(64,2,337,0,''),(65,2,338,0,''),(66,2,342,0,''),(67,2,344,0,''),(68,2,345,0,''),(69,2,347,0,''),(70,2,349,0,''),(71,2,350,0,''),(72,2,366,0,''),(73,2,367,0,''),(74,2,368,0,''),(75,2,369,0,''),(76,2,376,0,''),(77,2,378,0,'');
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
INSERT INTO `auditoria_variable` VALUES (328,'Se ha cumplido con los plazos establecidos para el tramite en tiempo y forma aceptables',5,11),(329,'Las fechas que presentan los antecedentes certifican el cumplimiento de los plazos previstos para el tramite',5,11),(330,'Existen evidencias en el expediente que indican que el tramite ha exicedido los plazos y tiempos establecidos',5,11),(331,'Existen evidencias en el expediente que indican que el tramite se ha adelantado a los plazos y tiempos establecidos',5,11),(332,'Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',10,11),(333,'Existen evidencias en el tramite que se realizaron los controles en las fechas de los documentos',5,11),(334,'Esta presente la media firma del responsable en los demas documentos del expediente',30,32),(335,'Esta presente el sello del responsable debajo de su firma y corresponde a los registros',15,32),(336,'Esta presente el sello del área en los diversos documentos que conforman el tramite y corresponde a la matriz de control',25,32),(337,'Esta presente de forma legible el nombre, apellido y cargo de la firma presente en los documentos',50,32),(338,'Las firmas de los documentos corresponden al registro de firmas de responsables del tramite',50,32),(339,'En caso de recomendaciones realizadas a la operación estas fueron adicionadas a los datos/documentos del tramite',30,31),(340,'Los archivos digitales remitidos pueden ser considerados como la ultima version',20,31),(341,'Los archivos digitales que acompañan el expediente estan registrados con el numero de version o version final',20,31),(342,'Los archivos digitales que acompañan el expediente estan registrados de forma tal que son asociados con facilidad al tramite',20,31),(343,'Los archivos digitales que acompañan el expediente corresponden al tramite en su totalidad',20,31),(344,'El expediente contiene copias autenticadas por el responsable del tramite',15,31),(345,'Todos los documentos del expediente estan foliados',20,31),(346,'Todos los documentos del expediente son legibles',20,31),(347,'El expediente contiene documentos originales o copias autenticadas de los mismos',25,31),(348,'Se puede acceder a verificar los registros de los diferentes operadores del tramite en calidad de consulta',20,23),(349,'Se puede constatar la hora de registro y esta concuerda con el horario de trabajo',20,23),(350,'Se puede observar en los documentos el resposable del registro en medios informatizados',5,23),(351,'Las fechas de registro de datos concuerdan con las fechas de los documentos controlados',15,23),(352,'Los antecedentes han sido presentados en medios digitales o magneticos',5,23),(353,'La revision del expediente permite el acceso a los historicos por tramite / beneficiario / responsable',20,23),(354,'La operacion ha sido registrada en un sistema informatico especifico',25,23),(355,'El expediente contiene documentos scaneados que se encuentran almacenados en la base de datos respectiva',5,23),(356,'El expediente al ingresar ha sido registrado en el sistema informatico de control de documentos',5,23),(357,'El tramite esta totalmente informatizado desde su inicio hasta su finalización',5,23),(358,'Se encuentra presente en el expediente la hoja de control del tramite de carácter administrativo',15,22),(359,'No se ha reformulado o ajustado el plazo original de la operación',15,22),(360,'No se han aplicado multas a la operación por imcumplimiento de una de las partes',20,22),(361,'Se ha ejecutado alguna garantia en el marco de la operación',20,22),(362,'Se han cumplido las garantias previstas para los riesgos de la operación',20,22),(363,'Las condiciones de pago de la operación estan ajustadas a las garantias previstas',30,22),(364,'Las garantias solicitadas son suficientes para la conclusion de la operación ',30,22),(365,'Estan especificadas las garantias necesarias paraconcluir la operacion ',30,22),(366,'Esta establecido el ambito beneficiario de la operación',25,22),(367,'Esta establecido el ambito responsable de la operación',25,22),(368,'Esta establecido el ambito solicitante de la operación',25,22),(369,'Estan claras las especificaciones tecnicas en los documentos que conforman el tramite /operación',35,22),(370,'Estan establecidos los criterios o estandares de calificacion de la operación /circuitos',20,22),(371,'Estan establecidods los criterios de evaluación para las diferentes etapas de la operación',20,22),(372,'Estan establecidos los documentos que conforman la operación a realizarse en los posteriores circuitos del proceso',20,22),(373,'Estan establecidos los criterios o estandares de calidad de la operación',20,22),(374,'Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',10,22),(375,'Se identifica con claridad la fecha estimada de la concresión de la operación ',15,22),(376,'Los calculos realizados corresponden a los montos registrados en los documentos que integran el expediente',20,22),(377,'Los montos asignados en el expediente coinciden con el/ los monto/s obligado/s',30,22),(378,'Los montos asignados en el expediente coinciden con los montos registrados en la operación del tramite',30,22),(379,'Se identifica el rubro a ser imputado por la operación',50,22),(380,'Se identifica la fuente de financiamiento asignada para la operación',5,22),(381,'Se identifica el programa presupuestario asignado para la operación',5,22),(382,'Se identifican con claridad los montos de la operación',5,22),(383,'Se identifica el numero asignado a la operación a realizarse',5,22),(384,'Se tiene acceso a datos historicos que permitan controlar las cifras o acciones comprometidas en el expediente',20,22),(385,'En el expediente se encuentran los antecedentes del tramite o referencia a traves de la cual se pueda determinar la operación',50,22),(386,'Las evidencias indican que el expediente se encuentra organizado en un orden secuencial ascendente',25,22),(387,'En el expediente se identifica el sistema de adjudicación utilizado para la operación',5,22),(388,'La caratula de expediente contiene los datos que permiten identificar la operación ',5,22),(389,'En el expediente se evidencia el cumplimiento de las normas generales y especificas del tramite',40,21),(390,'El tramite ha sido normatizado por Resolución del Pleno de la CSJ',30,21),(391,'El tramite ha sido normatizado por Resolución del Consejo de Administración de la CSJ',30,21),(392,'El tramite no ha sido normatizado conforme los procedimientos de control de riesgo establecidos por el MECIP',30,21),(393,'El tramite se ajusta a los procedimientos de control de riesgo establecidos por el MECIP',30,21),(394,'El tramite se ajusta a las normas y procedimientos establecidos por el DNCP',30,21),(395,'El tramite se ajusta a las normas y procedimientos establecidos por el SIGAF',30,21),(396,'   El tramite presenta evidencias de control interno por parte de sus operadores y responsables',20,12),(397,'El tramite esta sujeto al cumplimiento de un contrato y responde a los terminos establecidos',20,12),(398,'El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',10,12),(399,'Las evidencias demuestran que un dato significativo del tramite ha sido modificado en la secuencia de acciones desde su origen',10,12),(400,'El tramite respeta la logica secuencial de acciones desde su inicio',15,12),(401,'El tramite esta claramente identificado con un numero de orden secuencial asignado en su inicio',15,12),(402,'Se identifica con claridad la procedencia de origen del expediente y destino final',10,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add circuito',7,'add_circuito'),(20,'Can change circuito',7,'change_circuito'),(21,'Can delete circuito',7,'delete_circuito'),(22,'Can add area',8,'add_area'),(23,'Can change area',8,'change_area'),(24,'Can delete area',8,'delete_area'),(25,'Can add circunscripcion',9,'add_circunscripcion'),(26,'Can change circunscripcion',9,'change_circunscripcion'),(27,'Can delete circunscripcion',9,'delete_circunscripcion'),(28,'Can add factor',10,'add_factor'),(29,'Can change factor',10,'change_factor'),(30,'Can delete factor',10,'delete_factor'),(31,'Can add indicador',11,'add_indicador'),(32,'Can change indicador',11,'change_indicador'),(33,'Can delete indicador',11,'delete_indicador'),(34,'Can add proceso',12,'add_proceso'),(35,'Can change proceso',12,'change_proceso'),(36,'Can delete proceso',12,'delete_proceso'),(37,'Can add variable',13,'add_variable'),(38,'Can change variable',13,'change_variable'),(39,'Can delete variable',13,'delete_variable'),(40,'Can add identificador',14,'add_identificador'),(41,'Can change identificador',14,'change_identificador'),(42,'Can delete identificador',14,'delete_identificador'),(43,'Can add resolucion',15,'add_resolucion'),(44,'Can change resolucion',15,'change_resolucion'),(45,'Can delete resolucion',15,'delete_resolucion'),(46,'Can add caracter',16,'add_caracter'),(47,'Can change caracter',16,'change_caracter'),(48,'Can delete caracter',16,'delete_caracter'),(49,'Can add modlidad',17,'add_modlidad'),(50,'Can change modlidad',17,'change_modlidad'),(51,'Can delete modlidad',17,'delete_modlidad'),(52,'Can add pac',18,'add_pac'),(53,'Can change pac',18,'change_pac'),(54,'Can delete pac',18,'delete_pac'),(55,'Can add hoja control',19,'add_hojacontrol'),(56,'Can change hoja control',19,'change_hojacontrol'),(57,'Can delete hoja control',19,'delete_hojacontrol'),(58,'Can add resultado',20,'add_resultado'),(59,'Can change resultado',20,'change_resultado'),(60,'Can delete resultado',20,'delete_resultado'),(61,'Can add log entry',21,'add_logentry'),(62,'Can change log entry',21,'change_logentry'),(63,'Can delete log entry',21,'delete_logentry'),(64,'Can add version',22,'add_version'),(65,'Can change version',22,'change_version'),(66,'Can delete version',22,'delete_version'),(67,'Can add evolution',23,'add_evolution'),(68,'Can change evolution',23,'change_evolution'),(69,'Can delete evolution',23,'delete_evolution'),(70,'Can add documentos',24,'add_documentos'),(71,'Can change documentos',24,'change_documentos'),(72,'Can delete documentos',24,'delete_documentos');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$jnmzvSb88V2L$B/yvXNSI7khtGaW6FBjgZVrwHgyCWqykNFQ7WIBS0J8=','2013-09-24 12:30:49',1,'admin','Enrique','Rodríguez','enriquev.rodriguez@gmail.com',1,1,'2013-09-22 21:24:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-09-23 00:45:00',1,15,'1','Resolución nro. 4313, por la que se aprueba el programa anual de contrataciones de la Corte Suprema de Justicia para el ejercicio fiscal 2013',2,'Modificado/a ejercicio.'),(2,'2013-09-23 19:32:06',1,24,'1','Documentos object',1,''),(3,'2013-09-23 20:01:34',1,24,'2','Resolución 4481',1,''),(4,'2013-09-23 20:03:22',1,24,'2','Resolución 4481',2,'Modificado/a docu_path.'),(5,'2013-09-23 20:04:04',1,24,'3','PAC 2013',1,''),(6,'2013-09-23 23:29:52',1,3,'1','admin',2,'Modificado/a password, first_name y last_name.'),(7,'2013-09-24 01:25:23',1,18,'8','Mantenimiento y reparacion de vehículos en talleres oficiales - Contrato Abierto - Marcas: Toyota, Nissan, Ford y Volvo',1,''),(8,'2013-09-24 01:26:18',1,18,'7','Contratación de seguro de Responsabilidad civil y Accidentes personales',2,'Modificado/a descripcion, caracter y Modlidad.'),(9,'2013-09-24 12:58:37',1,13,'390','El tramite ha sido normatizado por Resolución del Pleno de la CSJ',2,'Modificado/a descripcion.');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'circuito','auditoria','circuito'),(8,'area','auditoria','area'),(9,'circunscripcion','auditoria','circunscripcion'),(10,'factor','auditoria','factor'),(11,'indicador','auditoria','indicador'),(12,'proceso','auditoria','proceso'),(13,'variable','auditoria','variable'),(14,'identificador','auditoria','identificador'),(15,'resolucion','auditoria','resolucion'),(16,'caracter','auditoria','caracter'),(17,'modlidad','auditoria','modlidad'),(18,'pac','auditoria','pac'),(19,'hoja control','auditoria','hojacontrol'),(20,'resultado','auditoria','resultado'),(21,'log entry','admin','logentry'),(22,'version','django_evolution','version'),(23,'evolution','django_evolution','evolution'),(24,'documentos','auditoria','documentos');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_evolution`
--

DROP TABLE IF EXISTS `django_evolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_evolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_id` int(11) NOT NULL,
  `app_label` varchar(200) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_evolution_f516c2b3` (`version_id`),
  CONSTRAINT `version_id_refs_id_946f97c5` FOREIGN KEY (`version_id`) REFERENCES `django_project_version` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_evolution`
--

LOCK TABLES `django_evolution` WRITE;
/*!40000 ALTER TABLE `django_evolution` DISABLE KEYS */;
INSERT INTO `django_evolution` VALUES (1,1,'auth','auth_delete_message'),(2,1,'sessions','session_expire_date_db_index');
/*!40000 ALTER TABLE `django_evolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_project_version`
--

DROP TABLE IF EXISTS `django_project_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_project_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `signature` longtext NOT NULL,
  `when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_project_version`
--

LOCK TABLES `django_project_version` WRITE;
/*!40000 ALTER TABLE `django_project_version` DISABLE KEYS */;
INSERT INTO `django_project_version` VALUES (1,'(dp1\nS\'sessions\'\np2\nccopy_reg\n_reconstructor\np3\n(cdjango.utils.datastructures\nSortedDict\np4\nc__builtin__\ndict\np5\n(dp6\nS\'Session\'\np7\n(dp8\nS\'fields\'\np9\n(dp10\nS\'session_key\'\np11\n(dp12\nS\'field_type\'\np13\ncdjango.db.models.fields\nCharField\np14\nsS\'max_length\'\np15\nI40\nsS\'primary_key\'\np16\nI01\nssS\'expire_date\'\np17\n(dp18\ng13\ncdjango.db.models.fields\nDateTimeField\np19\nsS\'db_index\'\np20\nI01\nssS\'session_data\'\np21\n(dp22\ng13\ncdjango.db.models.fields\nTextField\np23\nsssS\'meta\'\np24\n(dp25\nS\'unique_together\'\np26\n(lp27\nsS\'db_table\'\np28\nS\'django_session\'\np29\nsS\'db_tablespace\'\np30\nS\'\'\nsS\'pk_column\'\np31\ng11\nssstRp32\n(dp33\nS\'keyOrder\'\np34\n(lp35\ng7\nasbsS\'staticfiles\'\np36\ng3\n(g4\ng5\n(dtRp37\n(dp38\ng34\n(lp39\nsbsS\'admindocs\'\np40\ng3\n(g4\ng5\n(dtRp41\n(dp42\ng34\n(lp43\nsbsS\'messages\'\np44\ng3\n(g4\ng5\n(dtRp45\n(dp46\ng34\n(lp47\nsbsS\'sites\'\np48\ng3\n(g4\ng5\n(dp49\nS\'Site\'\np50\n(dp51\ng9\n(dp52\nS\'domain\'\np53\n(dp54\ng13\ng14\nsg15\nI100\nssVid\np55\n(dp56\ng13\ncdjango.db.models.fields\nAutoField\np57\nsg16\nI01\nssS\'name\'\np58\n(dp59\ng13\ng14\nsg15\nI50\nsssg24\n(dp60\ng26\n(lp61\nsg28\nS\'django_site\'\np62\nsg30\nS\'\'\nsg31\ng55\nssstRp63\n(dp64\ng34\n(lp65\ng50\nasbsS\'auth\'\np66\ng3\n(g4\ng5\n(dp67\nS\'Group\'\np68\n(dp69\ng9\n(dp70\nS\'permissions\'\np71\n(dp72\ng13\ncdjango.db.models.fields.related\nManyToManyField\np73\nsS\'related_model\'\np74\nVauth.Permission\np75\nssg55\n(dp76\ng13\ng57\nsg16\nI01\nssg58\n(dp77\ng15\nI80\nsg13\ng14\nsS\'unique\'\np78\nI01\nsssg24\n(dp79\ng26\n(lp80\nsg28\nVauth_group\np81\nsg30\nS\'\'\nsg31\ng55\nsssS\'User\'\np82\n(dp83\ng9\n(dp84\nS\'username\'\np85\n(dp86\ng15\nI30\nsg13\ng14\nsg78\nI01\nssS\'first_name\'\np87\n(dp88\ng13\ng14\nsg15\nI30\nssS\'last_name\'\np89\n(dp90\ng13\ng14\nsg15\nI30\nssS\'is_active\'\np91\n(dp92\ng13\ncdjango.db.models.fields\nBooleanField\np93\nssS\'email\'\np94\n(dp95\ng13\ncdjango.db.models.fields\nEmailField\np96\nsg15\nI75\nssS\'is_superuser\'\np97\n(dp98\ng13\ng93\nssS\'is_staff\'\np99\n(dp100\ng13\ng93\nssS\'last_login\'\np101\n(dp102\ng13\ng19\nssS\'groups\'\np103\n(dp104\ng13\ng73\nsg74\nVauth.Group\np105\nssS\'user_permissions\'\np106\n(dp107\ng13\ng73\nsg74\nVauth.Permission\np108\nssS\'password\'\np109\n(dp110\ng13\ng14\nsg15\nI128\nssg55\n(dp111\ng13\ng57\nsg16\nI01\nssS\'date_joined\'\np112\n(dp113\ng13\ng19\nsssg24\n(dp114\ng26\n(lp115\nsg28\nVauth_user\np116\nsg30\nS\'\'\nsg31\ng55\nsssS\'Permission\'\np117\n(dp118\ng9\n(dp119\nS\'codename\'\np120\n(dp121\ng13\ng14\nsg15\nI100\nssg55\n(dp122\ng13\ng57\nsg16\nI01\nssS\'content_type\'\np123\n(dp124\ng13\ncdjango.db.models.fields.related\nForeignKey\np125\nsg74\nVcontenttypes.ContentType\np126\nssg58\n(dp127\ng13\ng14\nsg15\nI50\nsssg24\n(dp128\ng26\n((Vcontent_type\nVcodename\nttp129\nsg28\nVauth_permission\np130\nsg30\nS\'\'\nsg31\ng55\nssstRp131\n(dp132\ng34\n(lp133\ng117\nag68\nag82\nasbsS\'dajax\'\np134\ng3\n(g4\ng5\n(dtRp135\n(dp136\ng34\n(lp137\nsbsS\'admin\'\np138\ng3\n(g4\ng5\n(dp139\nS\'LogEntry\'\np140\n(dp141\ng9\n(dp142\nS\'action_flag\'\np143\n(dp144\ng13\ncdjango.db.models.fields\nPositiveSmallIntegerField\np145\nssS\'action_time\'\np146\n(dp147\ng13\ng19\nssS\'object_repr\'\np148\n(dp149\ng13\ng14\nsg15\nI200\nssS\'object_id\'\np150\n(dp151\ng13\ng23\nsS\'null\'\np152\nI01\nssS\'change_message\'\np153\n(dp154\ng13\ng23\nssS\'user\'\np155\n(dp156\ng13\ng125\nsg74\nVauth.User\np157\nssg123\n(dp158\ng13\ng125\nsg152\nI01\nsg74\nVcontenttypes.ContentType\np159\nssg55\n(dp160\ng13\ng57\nsg16\nI01\nsssg24\n(dp161\ng26\n(lp162\nsg28\nVdjango_admin_log\np163\nsg30\nS\'\'\nsg31\ng55\nssstRp164\n(dp165\ng34\n(lp166\ng140\nasbsS\'contenttypes\'\np167\ng3\n(g4\ng5\n(dp168\nS\'ContentType\'\np169\n(dp170\ng9\n(dp171\nS\'model\'\np172\n(dp173\ng13\ng14\nsg15\nI100\nssS\'app_label\'\np174\n(dp175\ng13\ng14\nsg15\nI100\nssg55\n(dp176\ng13\ng57\nsg16\nI01\nssg58\n(dp177\ng13\ng14\nsg15\nI100\nsssg24\n(dp178\ng26\n((S\'app_label\'\nS\'model\'\nttp179\nsg28\nS\'django_content_type\'\np180\nsg30\nS\'\'\nsg31\ng55\nssstRp181\n(dp182\ng34\n(lp183\ng169\nasbsS\'auditoria\'\np184\ng3\n(g4\ng5\n(dp185\nS\'Resultado\'\np186\n(dp187\ng9\n(dp188\nS\'hoja\'\np189\n(dp190\ng13\ng125\nsg74\nVauditoria.HojaControl\np191\nssS\'variable\'\np192\n(dp193\ng13\ng125\nsg74\nVauditoria.Variable\np194\nssS\'observacion\'\np195\n(dp196\ng13\ng23\nssg55\n(dp197\ng13\ng57\nsg16\nI01\nssS\'valor\'\np198\n(dp199\ng13\ncdjango.db.models.fields\nFloatField\np200\nsssg24\n(dp201\ng26\n(lp202\nsg28\nVauditoria_resultado\np203\nsg30\nS\'\'\nsg31\ng55\nsssS\'Area\'\np204\n(dp205\ng9\n(dp206\nS\'descripcion\'\np207\n(dp208\ng13\ng14\nsg15\nL255L\nssg55\n(dp209\ng13\ng57\nsg16\nI01\nsssg24\n(dp210\ng26\n(lp211\nsg28\nVauditoria_area\np212\nsg30\nS\'\'\nsg31\ng55\nsssS\'HojaControl\'\np213\n(dp214\ng9\n(dp215\nS\'variables\'\np216\n(dp217\ng13\ng73\nsg74\nVauditoria.Variable\np218\nssS\'area\'\np219\n(dp220\ng13\ng125\nsg74\nVauditoria.Area\np221\nsS\'db_column\'\np222\nVarea\np223\nssS\'identificador\'\np224\n(dp225\ng13\ng125\nsg74\nVauditoria.Identificador\np226\nsg222\nVidentificador\np227\nssS\'usuario\'\np228\n(dp229\ng13\ng125\nsg74\nVauth.User\np230\nsg222\nVusuario\np231\nssS\'pac\'\np232\n(dp233\ng13\ng125\nsg74\nVauditoria.Pac\np234\nsg222\nVpac\np235\nssS\'circuito\'\np236\n(dp237\ng13\ng73\nsg74\nVauditoria.Circuito\np238\nsg222\nVcircuito\np239\nssg207\n(dp240\ng13\ng14\nsg15\nL255L\nssS\'fecha_public\'\np241\n(dp242\ng13\ncdjango.db.models.fields\nDateField\np243\nssS\'circunscripcion\'\np244\n(dp245\ng13\ng125\nsg74\nVauditoria.Circunscripcion\np246\nsg222\nVcircunscripcion\np247\nssS\'activa\'\np248\n(dp249\ng13\ng14\nsg15\nI10\nssg55\n(dp250\ng13\ng57\nsg16\nI01\nsssg24\n(dp251\ng26\n(lp252\nsg28\nVauditoria_hojacontrol\np253\nsg30\nS\'\'\nsg31\ng55\nsssS\'Identificador\'\np254\n(dp255\ng9\n(dp256\ng207\n(dp257\ng15\nL255L\nsg13\ng14\nsg78\nI01\nssg55\n(dp258\ng13\ng57\nsg16\nI01\nsssg24\n(dp259\ng26\n(lp260\nsg28\nVauditoria_identificador\np261\nsg30\nS\'\'\nsg31\ng55\nsssS\'Factor\'\np262\n(dp263\ng9\n(dp264\ng207\n(dp265\ng13\ng14\nsg15\nL255L\nssg55\n(dp266\ng13\ng57\nsg16\nI01\nsssg24\n(dp267\ng26\n(lp268\nsg28\nVauditoria_factor\np269\nsg30\nS\'\'\nsg31\ng55\nsssS\'Modlidad\'\np270\n(dp271\ng9\n(dp272\ng207\n(dp273\ng13\ng14\nsg15\nL255L\nssg55\n(dp274\ng13\ng57\nsg16\nI01\nsssg24\n(dp275\ng26\n(lp276\nsg28\nVauditoria_modlidad\np277\nsg30\nS\'\'\nsg31\ng55\nsssS\'Resolucion\'\np278\n(dp279\ng9\n(dp280\nS\'ejercicio\'\np281\n(dp282\ng13\ncdjango.db.models.fields\nIntegerField\np283\nsg15\nI4\nssS\'nro\'\np284\n(dp285\ng13\ng283\nssS\'accion\'\np286\n(dp287\ng13\ng14\nsg15\nI10\nssS\'fecha\'\np288\n(dp289\ng13\ng243\nssg207\n(dp290\ng13\ng23\nssg55\n(dp291\ng13\ng57\nsg16\nI01\nsssg24\n(dp292\ng26\n(lp293\nsg28\nVauditoria_resolucion\np294\nsg30\nS\'\'\nsg31\ng55\nsssS\'Indicador\'\np295\n(dp296\ng9\n(dp297\ng207\n(dp298\ng13\ng14\nsg15\nL255L\nssg55\n(dp299\ng13\ng57\nsg16\nI01\nssS\'factor\'\np300\n(dp301\ng13\ng125\nsg74\nVauditoria.Factor\np302\nsg222\nVfactor\np303\nsssg24\n(dp304\ng26\n(lp305\nsg28\nVauditoria_indicador\np306\nsg30\nS\'\'\nsg31\ng55\nsssS\'Pac\'\np307\n(dp308\ng9\n(dp309\nS\'numero\'\np310\n(dp311\ng13\ng283\nssg270\n(dp312\ng13\ng125\nsg74\nVauditoria.Modlidad\np313\nssS\'resolucion\'\np314\n(dp315\ng13\ng125\nsg74\nVauditoria.Resolucion\np316\nssS\'caracter\'\np317\n(dp318\ng13\ng125\nsg74\nVauditoria.Caracter\np319\nssg207\n(dp320\ng13\ng14\nsg15\nL255L\nssg55\n(dp321\ng13\ng57\nsg16\nI01\nsssg24\n(dp322\ng26\n(lp323\nsg28\nVauditoria_pac\np324\nsg30\nS\'\'\nsg31\ng55\nsssS\'Proceso\'\np325\n(dp326\ng9\n(dp327\ng207\n(dp328\ng13\ng14\nsg15\nL255L\nssg55\n(dp329\ng13\ng57\nsg16\nI01\nsssg24\n(dp330\ng26\n(lp331\nsg28\nVauditoria_proceso\np332\nsg30\nS\'\'\nsg31\ng55\nsssS\'Caracter\'\np333\n(dp334\ng9\n(dp335\ng207\n(dp336\ng13\ng14\nsg15\nL255L\nssg55\n(dp337\ng13\ng57\nsg16\nI01\nsssg24\n(dp338\ng26\n(lp339\nsg28\nVauditoria_caracter\np340\nsg30\nS\'\'\nsg31\ng55\nsssS\'Variable\'\np341\n(dp342\ng9\n(dp343\ng207\n(dp344\ng13\ng14\nsg15\nL255L\nssS\'indicador\'\np345\n(dp346\ng13\ng125\nsg74\nVauditoria.Indicador\np347\nsg222\nVindicador\np348\nssg55\n(dp349\ng13\ng57\nsg16\nI01\nssg198\n(dp350\ng13\ng200\nsssg24\n(dp351\ng26\n(lp352\nsg28\nVauditoria_variable\np353\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circuito\'\np354\n(dp355\ng9\n(dp356\ng207\n(dp357\ng13\ng14\nsg15\nL255L\nssS\'procesos\'\np358\n(dp359\ng13\ng125\nsg74\nVauditoria.Proceso\np360\nsg222\nVproceso\np361\nssg55\n(dp362\ng13\ng57\nsg16\nI01\nssg198\n(dp363\ng13\ng200\nsssg24\n(dp364\ng26\n(lp365\nsg28\nVauditoria_circuito\np366\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circunscripcion\'\np367\n(dp368\ng9\n(dp369\ng207\n(dp370\ng13\ng14\nsg15\nL255L\nssg55\n(dp371\ng13\ng57\nsg16\nI01\nsssg24\n(dp372\ng26\n(lp373\nsg28\nVauditoria_circunscripcion\np374\nsg30\nS\'\'\nsg31\ng55\nssstRp375\n(dp376\ng34\n(lp377\ng354\nag204\nag367\nag262\nag295\nag325\nag341\nag254\nag278\nag333\nag270\nag307\nag213\nag186\nasbsS\'django_evolution\'\np378\ng3\n(g4\ng5\n(dp379\nS\'Evolution\'\np380\n(dp381\ng9\n(dp382\nS\'label\'\np383\n(dp384\ng13\ng14\nsg15\nI100\nssS\'version\'\np385\n(dp386\ng13\ng125\nsg74\nVdjango_evolution.Version\np387\nssg55\n(dp388\ng13\ng57\nsg16\nI01\nssg174\n(dp389\ng13\ng14\nsg15\nI200\nsssg24\n(dp390\ng26\n(lp391\nsg28\nS\'django_evolution\'\np392\nsg30\nS\'\'\nsg31\ng55\nsssS\'Version\'\np393\n(dp394\ng9\n(dp395\nS\'when\'\np396\n(dp397\ng13\ng19\nssg55\n(dp398\ng13\ng57\nsg16\nI01\nssS\'signature\'\np399\n(dp400\ng13\ng23\nsssg24\n(dp401\ng26\n(lp402\nsg28\nS\'django_project_version\'\np403\nsg30\nS\'\'\nsg31\ng55\nssstRp404\n(dp405\ng34\n(lp406\ng393\nag380\nasbsS\'__version__\'\np407\nI1\nsS\'dajaxice\'\np408\ng3\n(g4\ng5\n(dtRp409\n(dp410\ng34\n(lp411\nsbs.','2013-09-22 21:24:40'),(2,'(dp1\nS\'sessions\'\np2\nccopy_reg\n_reconstructor\np3\n(cdjango.utils.datastructures\nSortedDict\np4\nc__builtin__\ndict\np5\n(dp6\nS\'Session\'\np7\n(dp8\nS\'fields\'\np9\n(dp10\nS\'session_key\'\np11\n(dp12\nS\'field_type\'\np13\ncdjango.db.models.fields\nCharField\np14\nsS\'max_length\'\np15\nI40\nsS\'primary_key\'\np16\nI01\nssS\'session_data\'\np17\n(dp18\ng13\ncdjango.db.models.fields\nTextField\np19\nssS\'expire_date\'\np20\n(dp21\ng13\ncdjango.db.models.fields\nDateTimeField\np22\nsS\'db_index\'\np23\nI01\nsssS\'meta\'\np24\n(dp25\nS\'unique_together\'\np26\n(lp27\nsS\'db_table\'\np28\nS\'django_session\'\np29\nsS\'db_tablespace\'\np30\nS\'\'\nsS\'pk_column\'\np31\ng11\nssstRp32\n(dp33\nS\'keyOrder\'\np34\n(lp35\ng7\nasbsS\'staticfiles\'\np36\ng3\n(g4\ng5\n(dtRp37\n(dp38\ng34\n(lp39\nsbsS\'admindocs\'\np40\ng3\n(g4\ng5\n(dtRp41\n(dp42\ng34\n(lp43\nsbsS\'messages\'\np44\ng3\n(g4\ng5\n(dtRp45\n(dp46\ng34\n(lp47\nsbsS\'sites\'\np48\ng3\n(g4\ng5\n(dp49\nS\'Site\'\np50\n(dp51\ng9\n(dp52\nS\'domain\'\np53\n(dp54\ng13\ng14\nsg15\nI100\nssVid\np55\n(dp56\ng13\ncdjango.db.models.fields\nAutoField\np57\nsg16\nI01\nssS\'name\'\np58\n(dp59\ng13\ng14\nsg15\nI50\nsssg24\n(dp60\ng26\n(lp61\nsg28\nS\'django_site\'\np62\nsg30\nS\'\'\nsg31\ng55\nssstRp63\n(dp64\ng34\n(lp65\ng50\nasbsS\'auth\'\np66\ng3\n(g4\ng5\n(dp67\nS\'Group\'\np68\n(dp69\ng9\n(dp70\ng55\n(dp71\ng13\ng57\nsg16\nI01\nssg58\n(dp72\ng13\ng14\nsS\'unique\'\np73\nI01\nsg15\nI80\nssS\'permissions\'\np74\n(dp75\ng13\ncdjango.db.models.fields.related\nManyToManyField\np76\nsS\'related_model\'\np77\nVauth.Permission\np78\nsssg24\n(dp79\ng26\n(lp80\nsg28\nVauth_group\np81\nsg30\nS\'\'\nsg31\ng55\nsssS\'User\'\np82\n(dp83\ng9\n(dp84\nS\'username\'\np85\n(dp86\ng13\ng14\nsg73\nI01\nsg15\nI30\nssS\'first_name\'\np87\n(dp88\ng13\ng14\nsg15\nI30\nssS\'last_name\'\np89\n(dp90\ng13\ng14\nsg15\nI30\nssS\'is_active\'\np91\n(dp92\ng13\ncdjango.db.models.fields\nBooleanField\np93\nssg55\n(dp94\ng13\ng57\nsg16\nI01\nssS\'is_superuser\'\np95\n(dp96\ng13\ng93\nssS\'is_staff\'\np97\n(dp98\ng13\ng93\nssS\'last_login\'\np99\n(dp100\ng13\ng22\nssS\'groups\'\np101\n(dp102\ng13\ng76\nsg77\nVauth.Group\np103\nssS\'user_permissions\'\np104\n(dp105\ng13\ng76\nsg77\nVauth.Permission\np106\nssS\'password\'\np107\n(dp108\ng13\ng14\nsg15\nI128\nssS\'email\'\np109\n(dp110\ng13\ncdjango.db.models.fields\nEmailField\np111\nsg15\nI75\nssS\'date_joined\'\np112\n(dp113\ng13\ng22\nsssg24\n(dp114\ng26\n(lp115\nsg28\nVauth_user\np116\nsg30\nS\'\'\nsg31\ng55\nsssS\'Permission\'\np117\n(dp118\ng9\n(dp119\nS\'codename\'\np120\n(dp121\ng13\ng14\nsg15\nI100\nssg55\n(dp122\ng13\ng57\nsg16\nI01\nssS\'content_type\'\np123\n(dp124\ng13\ncdjango.db.models.fields.related\nForeignKey\np125\nsg77\nVcontenttypes.ContentType\np126\nssg58\n(dp127\ng13\ng14\nsg15\nI50\nsssg24\n(dp128\ng26\n((Vcontent_type\nVcodename\nttp129\nsg28\nVauth_permission\np130\nsg30\nS\'\'\nsg31\ng55\nssstRp131\n(dp132\ng34\n(lp133\ng117\nag68\nag82\nasbsS\'dajax\'\np134\ng3\n(g4\ng5\n(dtRp135\n(dp136\ng34\n(lp137\nsbsS\'admin\'\np138\ng3\n(g4\ng5\n(dp139\nS\'LogEntry\'\np140\n(dp141\ng9\n(dp142\nS\'action_flag\'\np143\n(dp144\ng13\ncdjango.db.models.fields\nPositiveSmallIntegerField\np145\nssS\'action_time\'\np146\n(dp147\ng13\ng22\nssS\'object_repr\'\np148\n(dp149\ng13\ng14\nsg15\nI200\nssS\'object_id\'\np150\n(dp151\ng13\ng19\nsS\'null\'\np152\nI01\nssS\'change_message\'\np153\n(dp154\ng13\ng19\nssS\'user\'\np155\n(dp156\ng13\ng125\nsg77\nVauth.User\np157\nssg123\n(dp158\ng13\ng125\nsg152\nI01\nsg77\nVcontenttypes.ContentType\np159\nssg55\n(dp160\ng13\ng57\nsg16\nI01\nsssg24\n(dp161\ng26\n(lp162\nsg28\nVdjango_admin_log\np163\nsg30\nS\'\'\nsg31\ng55\nssstRp164\n(dp165\ng34\n(lp166\ng140\nasbsS\'contenttypes\'\np167\ng3\n(g4\ng5\n(dp168\nS\'ContentType\'\np169\n(dp170\ng9\n(dp171\nS\'model\'\np172\n(dp173\ng13\ng14\nsg15\nI100\nssg55\n(dp174\ng13\ng57\nsg16\nI01\nssg58\n(dp175\ng13\ng14\nsg15\nI100\nssS\'app_label\'\np176\n(dp177\ng13\ng14\nsg15\nI100\nsssg24\n(dp178\ng26\n((S\'app_label\'\nS\'model\'\nttp179\nsg28\nS\'django_content_type\'\np180\nsg30\nS\'\'\nsg31\ng55\nssstRp181\n(dp182\ng34\n(lp183\ng169\nasbsS\'auditoria\'\np184\ng3\n(g4\ng5\n(dp185\nS\'Resultado\'\np186\n(dp187\ng9\n(dp188\nS\'hoja\'\np189\n(dp190\ng13\ng125\nsg77\nVauditoria.HojaControl\np191\nssS\'variable\'\np192\n(dp193\ng13\ng125\nsg77\nVauditoria.Variable\np194\nssS\'observacion\'\np195\n(dp196\ng13\ng19\nssg55\n(dp197\ng13\ng57\nsg16\nI01\nssS\'valor\'\np198\n(dp199\ng13\ncdjango.db.models.fields\nFloatField\np200\nsssg24\n(dp201\ng26\n(lp202\nsg28\nVauditoria_resultado\np203\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circunscripcion\'\np204\n(dp205\ng9\n(dp206\nS\'descripcion\'\np207\n(dp208\ng13\ng14\nsg15\nL255L\nssg55\n(dp209\ng13\ng57\nsg16\nI01\nsssg24\n(dp210\ng26\n(lp211\nsg28\nVauditoria_circunscripcion\np212\nsg30\nS\'\'\nsg31\ng55\nsssS\'Area\'\np213\n(dp214\ng9\n(dp215\ng207\n(dp216\ng13\ng14\nsg15\nL255L\nssg55\n(dp217\ng13\ng57\nsg16\nI01\nsssg24\n(dp218\ng26\n(lp219\nsg28\nVauditoria_area\np220\nsg30\nS\'\'\nsg31\ng55\nsssS\'HojaControl\'\np221\n(dp222\ng9\n(dp223\nS\'usuario\'\np224\n(dp225\ng13\ng125\nsS\'db_column\'\np226\nVusuario\np227\nsg77\nVauth.User\np228\nssS\'variables\'\np229\n(dp230\ng13\ng76\nsg77\nVauditoria.Variable\np231\nssS\'area\'\np232\n(dp233\ng13\ng125\nsg226\nVarea\np234\nsg77\nVauditoria.Area\np235\nssg55\n(dp236\ng13\ng57\nsg16\nI01\nssS\'pac\'\np237\n(dp238\ng13\ng125\nsg226\nVpac\np239\nsg77\nVauditoria.Pac\np240\nssS\'circuito\'\np241\n(dp242\ng13\ng76\nsg226\nVcircuito\np243\nsg77\nVauditoria.Circuito\np244\nssg207\n(dp245\ng13\ng14\nsg15\nL255L\nssS\'fecha_public\'\np246\n(dp247\ng13\ncdjango.db.models.fields\nDateField\np248\nssS\'circunscripcion\'\np249\n(dp250\ng13\ng125\nsg226\nVcircunscripcion\np251\nsg77\nVauditoria.Circunscripcion\np252\nssS\'activa\'\np253\n(dp254\ng13\ng14\nsg15\nI10\nssS\'identificador\'\np255\n(dp256\ng13\ng125\nsg226\nVidentificador\np257\nsg77\nVauditoria.Identificador\np258\nsssg24\n(dp259\ng26\n(lp260\nsg28\nVauditoria_hojacontrol\np261\nsg30\nS\'\'\nsg31\ng55\nsssS\'Identificador\'\np262\n(dp263\ng9\n(dp264\ng207\n(dp265\ng13\ng14\nsg73\nI01\nsg15\nL255L\nssg55\n(dp266\ng13\ng57\nsg16\nI01\nsssg24\n(dp267\ng26\n(lp268\nsg28\nVauditoria_identificador\np269\nsg30\nS\'\'\nsg31\ng55\nsssS\'Caracter\'\np270\n(dp271\ng9\n(dp272\ng207\n(dp273\ng13\ng14\nsg15\nL255L\nssg55\n(dp274\ng13\ng57\nsg16\nI01\nsssg24\n(dp275\ng26\n(lp276\nsg28\nVauditoria_caracter\np277\nsg30\nS\'\'\nsg31\ng55\nsssS\'Modlidad\'\np278\n(dp279\ng9\n(dp280\ng207\n(dp281\ng13\ng14\nsg15\nL255L\nssg55\n(dp282\ng13\ng57\nsg16\nI01\nsssg24\n(dp283\ng26\n(lp284\nsg28\nVauditoria_modlidad\np285\nsg30\nS\'\'\nsg31\ng55\nsssS\'Resolucion\'\np286\n(dp287\ng9\n(dp288\nS\'ejercicio\'\np289\n(dp290\ng13\ncdjango.db.models.fields\nIntegerField\np291\nsg15\nI4\nssS\'nro\'\np292\n(dp293\ng13\ng291\nssS\'accion\'\np294\n(dp295\ng13\ng14\nsg15\nI10\nssS\'fecha\'\np296\n(dp297\ng13\ng248\nssg207\n(dp298\ng13\ng19\nssg55\n(dp299\ng13\ng57\nsg16\nI01\nsssg24\n(dp300\ng26\n(lp301\nsg28\nVauditoria_resolucion\np302\nsg30\nS\'\'\nsg31\ng55\nsssS\'Indicador\'\np303\n(dp304\ng9\n(dp305\ng207\n(dp306\ng13\ng14\nsg15\nL255L\nssg55\n(dp307\ng13\ng57\nsg16\nI01\nssS\'factor\'\np308\n(dp309\ng13\ng125\nsg226\nVfactor\np310\nsg77\nVauditoria.Factor\np311\nsssg24\n(dp312\ng26\n(lp313\nsg28\nVauditoria_indicador\np314\nsg30\nS\'\'\nsg31\ng55\nsssS\'Pac\'\np315\n(dp316\ng9\n(dp317\nS\'numero\'\np318\n(dp319\ng13\ng291\nssg278\n(dp320\ng13\ng125\nsg77\nVauditoria.Modlidad\np321\nssS\'resolucion\'\np322\n(dp323\ng13\ng125\nsg77\nVauditoria.Resolucion\np324\nssS\'caracter\'\np325\n(dp326\ng13\ng125\nsg77\nVauditoria.Caracter\np327\nssg207\n(dp328\ng13\ng14\nsg15\nL255L\nssg55\n(dp329\ng13\ng57\nsg16\nI01\nsssg24\n(dp330\ng26\n(lp331\nsg28\nVauditoria_pac\np332\nsg30\nS\'\'\nsg31\ng55\nsssS\'Proceso\'\np333\n(dp334\ng9\n(dp335\ng207\n(dp336\ng13\ng14\nsg15\nL255L\nssg55\n(dp337\ng13\ng57\nsg16\nI01\nsssg24\n(dp338\ng26\n(lp339\nsg28\nVauditoria_proceso\np340\nsg30\nS\'\'\nsg31\ng55\nsssS\'Factor\'\np341\n(dp342\ng9\n(dp343\ng207\n(dp344\ng13\ng14\nsg15\nL255L\nssg55\n(dp345\ng13\ng57\nsg16\nI01\nsssg24\n(dp346\ng26\n(lp347\nsg28\nVauditoria_factor\np348\nsg30\nS\'\'\nsg31\ng55\nsssS\'Variable\'\np349\n(dp350\ng9\n(dp351\ng207\n(dp352\ng13\ng14\nsg15\nL255L\nssS\'indicador\'\np353\n(dp354\ng13\ng125\nsg226\nVindicador\np355\nsg77\nVauditoria.Indicador\np356\nssg55\n(dp357\ng13\ng57\nsg16\nI01\nssg198\n(dp358\ng13\ng200\nsssg24\n(dp359\ng26\n(lp360\nsg28\nVauditoria_variable\np361\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circuito\'\np362\n(dp363\ng9\n(dp364\ng207\n(dp365\ng13\ng14\nsg15\nL255L\nssS\'procesos\'\np366\n(dp367\ng13\ng125\nsg226\nVproceso\np368\nsg77\nVauditoria.Proceso\np369\nssg55\n(dp370\ng13\ng57\nsg16\nI01\nssg198\n(dp371\ng13\ng200\nsssg24\n(dp372\ng26\n(lp373\nsg28\nVauditoria_circuito\np374\nsg30\nS\'\'\nsg31\ng55\nsssS\'Documentos\'\np375\n(dp376\nS\'fields\'\np377\n(dp378\nS\'descripcion\'\np379\n(dp380\nS\'field_type\'\np381\ng19\nssS\'titulo\'\np382\n(dp383\ng381\ng14\nsS\'max_length\'\np384\nL255L\nssS\'docu_path\'\np385\n(dp386\ng381\ncdjango.db.models.fields.files\nFileField\np387\nsg384\nI100\nssVid\np388\n(dp389\ng381\ng57\nsS\'primary_key\'\np390\nI01\nssS\'fecha_registro\'\np391\n(dp392\ng381\ng22\nsssS\'meta\'\np393\n(dp394\nS\'unique_together\'\np395\n(lp396\nsS\'db_table\'\np397\nVauditoria_documentos\np398\nsS\'db_tablespace\'\np399\nS\'\'\nsS\'pk_column\'\np400\ng388\nssstRp401\n(dp402\ng34\n(lp403\ng362\nag213\nag204\nag341\nag303\nag333\nag349\nag262\nag286\nag270\nag278\nag315\nag221\nag186\nag375\nasbsS\'django_evolution\'\np404\ng3\n(g4\ng5\n(dp405\nS\'Evolution\'\np406\n(dp407\ng9\n(dp408\ng176\n(dp409\ng13\ng14\nsg15\nI200\nssS\'version\'\np410\n(dp411\ng13\ng125\nsg77\nVdjango_evolution.Version\np412\nssg55\n(dp413\ng13\ng57\nsg16\nI01\nssS\'label\'\np414\n(dp415\ng13\ng14\nsg15\nI100\nsssg24\n(dp416\ng26\n(lp417\nsg28\nS\'django_evolution\'\np418\nsg30\nS\'\'\nsg31\ng55\nsssS\'Version\'\np419\n(dp420\ng9\n(dp421\nS\'when\'\np422\n(dp423\ng13\ng22\nssg55\n(dp424\ng13\ng57\nsg16\nI01\nssS\'signature\'\np425\n(dp426\ng13\ng19\nsssg24\n(dp427\ng26\n(lp428\nsg28\nS\'django_project_version\'\np429\nsg30\nS\'\'\nsg31\ng55\nssstRp430\n(dp431\ng34\n(lp432\ng419\nag406\nasbsS\'__version__\'\np433\nI1\nsS\'dajaxice\'\np434\ng3\n(g4\ng5\n(dtRp435\n(dp436\ng34\n(lp437\nsbs.','2013-09-23 19:28:53'),(3,'(dp1\nS\'sessions\'\np2\nccopy_reg\n_reconstructor\np3\n(cdjango.utils.datastructures\nSortedDict\np4\nc__builtin__\ndict\np5\n(dp6\nS\'Session\'\np7\n(dp8\nS\'fields\'\np9\n(dp10\nS\'session_key\'\np11\n(dp12\nS\'field_type\'\np13\ncdjango.db.models.fields\nCharField\np14\nsS\'max_length\'\np15\nI40\nsS\'primary_key\'\np16\nI01\nssS\'expire_date\'\np17\n(dp18\ng13\ncdjango.db.models.fields\nDateTimeField\np19\nsS\'db_index\'\np20\nI01\nssS\'session_data\'\np21\n(dp22\ng13\ncdjango.db.models.fields\nTextField\np23\nsssS\'meta\'\np24\n(dp25\nS\'unique_together\'\np26\n(lp27\nsS\'db_table\'\np28\nS\'django_session\'\np29\nsS\'db_tablespace\'\np30\nS\'\'\nsS\'pk_column\'\np31\ng11\nssstRp32\n(dp33\nS\'keyOrder\'\np34\n(lp35\ng7\nasbsS\'staticfiles\'\np36\ng3\n(g4\ng5\n(dtRp37\n(dp38\ng34\n(lp39\nsbsS\'admindocs\'\np40\ng3\n(g4\ng5\n(dtRp41\n(dp42\ng34\n(lp43\nsbsS\'messages\'\np44\ng3\n(g4\ng5\n(dtRp45\n(dp46\ng34\n(lp47\nsbsS\'sites\'\np48\ng3\n(g4\ng5\n(dp49\nS\'Site\'\np50\n(dp51\ng9\n(dp52\nS\'domain\'\np53\n(dp54\ng13\ng14\nsg15\nI100\nssVid\np55\n(dp56\ng13\ncdjango.db.models.fields\nAutoField\np57\nsg16\nI01\nssS\'name\'\np58\n(dp59\ng13\ng14\nsg15\nI50\nsssg24\n(dp60\ng26\n(lp61\nsg28\nS\'django_site\'\np62\nsg30\nS\'\'\nsg31\ng55\nssstRp63\n(dp64\ng34\n(lp65\ng50\nasbsS\'auth\'\np66\ng3\n(g4\ng5\n(dp67\nS\'Group\'\np68\n(dp69\ng9\n(dp70\nS\'permissions\'\np71\n(dp72\ng13\ncdjango.db.models.fields.related\nManyToManyField\np73\nsS\'related_model\'\np74\nVauth.Permission\np75\nssg55\n(dp76\ng13\ng57\nsg16\nI01\nssg58\n(dp77\ng15\nI80\nsg13\ng14\nsS\'unique\'\np78\nI01\nsssg24\n(dp79\ng26\n(lp80\nsg28\nVauth_group\np81\nsg30\nS\'\'\nsg31\ng55\nsssS\'User\'\np82\n(dp83\ng9\n(dp84\nS\'username\'\np85\n(dp86\ng15\nI30\nsg13\ng14\nsg78\nI01\nssS\'first_name\'\np87\n(dp88\ng13\ng14\nsg15\nI30\nssS\'last_name\'\np89\n(dp90\ng13\ng14\nsg15\nI30\nssS\'is_active\'\np91\n(dp92\ng13\ncdjango.db.models.fields\nBooleanField\np93\nssS\'email\'\np94\n(dp95\ng13\ncdjango.db.models.fields\nEmailField\np96\nsg15\nI75\nssS\'is_superuser\'\np97\n(dp98\ng13\ng93\nssS\'is_staff\'\np99\n(dp100\ng13\ng93\nssS\'last_login\'\np101\n(dp102\ng13\ng19\nssS\'groups\'\np103\n(dp104\ng13\ng73\nsg74\nVauth.Group\np105\nssS\'user_permissions\'\np106\n(dp107\ng13\ng73\nsg74\nVauth.Permission\np108\nssS\'password\'\np109\n(dp110\ng13\ng14\nsg15\nI128\nssg55\n(dp111\ng13\ng57\nsg16\nI01\nssS\'date_joined\'\np112\n(dp113\ng13\ng19\nsssg24\n(dp114\ng26\n(lp115\nsg28\nVauth_user\np116\nsg30\nS\'\'\nsg31\ng55\nsssS\'Permission\'\np117\n(dp118\ng9\n(dp119\nS\'codename\'\np120\n(dp121\ng13\ng14\nsg15\nI100\nssg55\n(dp122\ng13\ng57\nsg16\nI01\nssS\'content_type\'\np123\n(dp124\ng13\ncdjango.db.models.fields.related\nForeignKey\np125\nsg74\nVcontenttypes.ContentType\np126\nssg58\n(dp127\ng13\ng14\nsg15\nI50\nsssg24\n(dp128\ng26\n((Vcontent_type\nVcodename\nttp129\nsg28\nVauth_permission\np130\nsg30\nS\'\'\nsg31\ng55\nssstRp131\n(dp132\ng34\n(lp133\ng117\nag68\nag82\nasbsS\'dajax\'\np134\ng3\n(g4\ng5\n(dtRp135\n(dp136\ng34\n(lp137\nsbsS\'admin\'\np138\ng3\n(g4\ng5\n(dp139\nS\'LogEntry\'\np140\n(dp141\ng9\n(dp142\nS\'action_flag\'\np143\n(dp144\ng13\ncdjango.db.models.fields\nPositiveSmallIntegerField\np145\nssS\'action_time\'\np146\n(dp147\ng13\ng19\nssS\'object_repr\'\np148\n(dp149\ng13\ng14\nsg15\nI200\nssS\'object_id\'\np150\n(dp151\ng13\ng23\nsS\'null\'\np152\nI01\nssS\'change_message\'\np153\n(dp154\ng13\ng23\nssS\'user\'\np155\n(dp156\ng13\ng125\nsg74\nVauth.User\np157\nssg123\n(dp158\ng13\ng125\nsg152\nI01\nsg74\nVcontenttypes.ContentType\np159\nssg55\n(dp160\ng13\ng57\nsg16\nI01\nsssg24\n(dp161\ng26\n(lp162\nsg28\nVdjango_admin_log\np163\nsg30\nS\'\'\nsg31\ng55\nssstRp164\n(dp165\ng34\n(lp166\ng140\nasbsS\'contenttypes\'\np167\ng3\n(g4\ng5\n(dp168\nS\'ContentType\'\np169\n(dp170\ng9\n(dp171\nS\'model\'\np172\n(dp173\ng13\ng14\nsg15\nI100\nssS\'app_label\'\np174\n(dp175\ng13\ng14\nsg15\nI100\nssg55\n(dp176\ng13\ng57\nsg16\nI01\nssg58\n(dp177\ng13\ng14\nsg15\nI100\nsssg24\n(dp178\ng26\n((S\'app_label\'\nS\'model\'\nttp179\nsg28\nS\'django_content_type\'\np180\nsg30\nS\'\'\nsg31\ng55\nssstRp181\n(dp182\ng34\n(lp183\ng169\nasbsS\'auditoria\'\np184\ng3\n(g4\ng5\n(dp185\nS\'Resultado\'\np186\n(dp187\ng9\n(dp188\nS\'hoja\'\np189\n(dp190\ng13\ng125\nsg74\nVauditoria.HojaControl\np191\nssS\'variable\'\np192\n(dp193\ng13\ng125\nsg74\nVauditoria.Variable\np194\nssS\'observacion\'\np195\n(dp196\ng13\ng23\nssg55\n(dp197\ng13\ng57\nsg16\nI01\nssS\'valor\'\np198\n(dp199\ng13\ncdjango.db.models.fields\nFloatField\np200\nsssg24\n(dp201\ng26\n(lp202\nsg28\nVauditoria_resultado\np203\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circunscripcion\'\np204\n(dp205\ng9\n(dp206\nS\'descripcion\'\np207\n(dp208\ng13\ng14\nsg15\nL255L\nssg55\n(dp209\ng13\ng57\nsg16\nI01\nsssg24\n(dp210\ng26\n(lp211\nsg28\nVauditoria_circunscripcion\np212\nsg30\nS\'\'\nsg31\ng55\nsssS\'Area\'\np213\n(dp214\ng9\n(dp215\ng207\n(dp216\ng13\ng14\nsg15\nL255L\nssg55\n(dp217\ng13\ng57\nsg16\nI01\nsssg24\n(dp218\ng26\n(lp219\nsg28\nVauditoria_area\np220\nsg30\nS\'\'\nsg31\ng55\nsssS\'HojaControl\'\np221\n(dp222\ng9\n(dp223\nS\'variables\'\np224\n(dp225\ng13\ng73\nsg74\nVauditoria.Variable\np226\nssS\'area\'\np227\n(dp228\ng13\ng125\nsg74\nVauditoria.Area\np229\nsS\'db_column\'\np230\nVarea\np231\nssS\'identificador\'\np232\n(dp233\ng13\ng125\nsg74\nVauditoria.Identificador\np234\nsg230\nVidentificador\np235\nssS\'usuario\'\np236\n(dp237\ng13\ng125\nsg74\nVauth.User\np238\nsg230\nVusuario\np239\nssS\'pac\'\np240\n(dp241\ng13\ng125\nsg74\nVauditoria.Pac\np242\nsg230\nVpac\np243\nssS\'circuito\'\np244\n(dp245\ng13\ng73\nsg74\nVauditoria.Circuito\np246\nsg230\nVcircuito\np247\nssg207\n(dp248\ng13\ng14\nsg15\nL255L\nssS\'fecha_public\'\np249\n(dp250\ng13\ncdjango.db.models.fields\nDateField\np251\nssS\'circunscripcion\'\np252\n(dp253\ng13\ng125\nsg74\nVauditoria.Circunscripcion\np254\nsg230\nVcircunscripcion\np255\nssS\'activa\'\np256\n(dp257\ng13\ng14\nsg15\nI10\nssg55\n(dp258\ng13\ng57\nsg16\nI01\nsssg24\n(dp259\ng26\n(lp260\nsg28\nVauditoria_hojacontrol\np261\nsg30\nS\'\'\nsg31\ng55\nsssS\'Identificador\'\np262\n(dp263\ng9\n(dp264\ng207\n(dp265\ng15\nL255L\nsg13\ng14\nsg78\nI01\nssg55\n(dp266\ng13\ng57\nsg16\nI01\nsssg24\n(dp267\ng26\n(lp268\nsg28\nVauditoria_identificador\np269\nsg30\nS\'\'\nsg31\ng55\nsssS\'Factor\'\np270\n(dp271\ng9\n(dp272\ng207\n(dp273\ng13\ng14\nsg15\nL255L\nssg55\n(dp274\ng13\ng57\nsg16\nI01\nsssg24\n(dp275\ng26\n(lp276\nsg28\nVauditoria_factor\np277\nsg30\nS\'\'\nsg31\ng55\nsssS\'Modlidad\'\np278\n(dp279\ng9\n(dp280\ng207\n(dp281\ng13\ng14\nsg15\nL255L\nssg55\n(dp282\ng13\ng57\nsg16\nI01\nsssg24\n(dp283\ng26\n(lp284\nsg28\nVauditoria_modlidad\np285\nsg30\nS\'\'\nsg31\ng55\nsssS\'Resolucion\'\np286\n(dp287\ng9\n(dp288\nS\'ejercicio\'\np289\n(dp290\ng13\ncdjango.db.models.fields\nIntegerField\np291\nsg15\nI4\nssS\'nro\'\np292\n(dp293\ng13\ng291\nssS\'accion\'\np294\n(dp295\ng13\ng14\nsg15\nI15\nssS\'fecha\'\np296\n(dp297\ng13\ng251\nssg207\n(dp298\ng13\ng23\nssg55\n(dp299\ng13\ng57\nsg16\nI01\nsssg24\n(dp300\ng26\n(lp301\nsg28\nVauditoria_resolucion\np302\nsg30\nS\'\'\nsg31\ng55\nsssS\'Indicador\'\np303\n(dp304\ng9\n(dp305\ng207\n(dp306\ng13\ng14\nsg15\nL255L\nssg55\n(dp307\ng13\ng57\nsg16\nI01\nssS\'factor\'\np308\n(dp309\ng13\ng125\nsg74\nVauditoria.Factor\np310\nsg230\nVfactor\np311\nsssg24\n(dp312\ng26\n(lp313\nsg28\nVauditoria_indicador\np314\nsg30\nS\'\'\nsg31\ng55\nsssS\'Pac\'\np315\n(dp316\ng9\n(dp317\nS\'numero\'\np318\n(dp319\ng13\ng291\nssg278\n(dp320\ng13\ng125\nsg74\nVauditoria.Modlidad\np321\nssS\'resolucion\'\np322\n(dp323\ng13\ng125\nsg74\nVauditoria.Resolucion\np324\nssS\'caracter\'\np325\n(dp326\ng13\ng125\nsg74\nVauditoria.Caracter\np327\nssg207\n(dp328\ng13\ng14\nsg15\nL255L\nssg55\n(dp329\ng13\ng57\nsg16\nI01\nsssg24\n(dp330\ng26\n(lp331\nsg28\nVauditoria_pac\np332\nsg30\nS\'\'\nsg31\ng55\nsssS\'Proceso\'\np333\n(dp334\ng9\n(dp335\ng207\n(dp336\ng13\ng14\nsg15\nL255L\nssg55\n(dp337\ng13\ng57\nsg16\nI01\nsssg24\n(dp338\ng26\n(lp339\nsg28\nVauditoria_proceso\np340\nsg30\nS\'\'\nsg31\ng55\nsssS\'Caracter\'\np341\n(dp342\ng9\n(dp343\ng207\n(dp344\ng13\ng14\nsg15\nL255L\nssg55\n(dp345\ng13\ng57\nsg16\nI01\nsssg24\n(dp346\ng26\n(lp347\nsg28\nVauditoria_caracter\np348\nsg30\nS\'\'\nsg31\ng55\nsssS\'Variable\'\np349\n(dp350\ng9\n(dp351\ng207\n(dp352\ng13\ng14\nsg15\nL255L\nssS\'indicador\'\np353\n(dp354\ng13\ng125\nsg74\nVauditoria.Indicador\np355\nsg230\nVindicador\np356\nssg55\n(dp357\ng13\ng57\nsg16\nI01\nssg198\n(dp358\ng13\ng200\nsssg24\n(dp359\ng26\n(lp360\nsg28\nVauditoria_variable\np361\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circuito\'\np362\n(dp363\ng9\n(dp364\ng207\n(dp365\ng13\ng14\nsg15\nL255L\nssS\'procesos\'\np366\n(dp367\ng13\ng125\nsg74\nVauditoria.Proceso\np368\nsg230\nVproceso\np369\nssg55\n(dp370\ng13\ng57\nsg16\nI01\nssg198\n(dp371\ng13\ng200\nsssg24\n(dp372\ng26\n(lp373\nsg28\nVauditoria_circuito\np374\nsg30\nS\'\'\nsg31\ng55\nsssS\'Documentos\'\np375\n(dp376\ng9\n(dp377\ng207\n(dp378\ng13\ng23\nssS\'titulo\'\np379\n(dp380\ng13\ng14\nsg15\nL255L\nssS\'docu_path\'\np381\n(dp382\ng13\ncdjango.db.models.fields.files\nFileField\np383\nsg15\nI100\nssg55\n(dp384\ng13\ng57\nsg16\nI01\nssS\'fecha_registro\'\np385\n(dp386\ng13\ng19\nsssg24\n(dp387\ng26\n(lp388\nsg28\nVauditoria_documentos\np389\nsg30\nS\'\'\nsg31\ng55\nssstRp390\n(dp391\ng34\n(lp392\ng362\nag213\nag204\nag270\nag303\nag333\nag349\nag262\nag286\nag341\nag278\nag315\nag221\nag186\nag375\nasbsS\'django_evolution\'\np393\ng3\n(g4\ng5\n(dp394\nS\'Evolution\'\np395\n(dp396\ng9\n(dp397\nS\'label\'\np398\n(dp399\ng13\ng14\nsg15\nI100\nssS\'version\'\np400\n(dp401\ng13\ng125\nsg74\nVdjango_evolution.Version\np402\nssg55\n(dp403\ng13\ng57\nsg16\nI01\nssg174\n(dp404\ng13\ng14\nsg15\nI200\nsssg24\n(dp405\ng26\n(lp406\nsg28\nS\'django_evolution\'\np407\nsg30\nS\'\'\nsg31\ng55\nsssS\'Version\'\np408\n(dp409\ng9\n(dp410\nS\'when\'\np411\n(dp412\ng13\ng19\nssg55\n(dp413\ng13\ng57\nsg16\nI01\nssS\'signature\'\np414\n(dp415\ng13\ng23\nsssg24\n(dp416\ng26\n(lp417\nsg28\nS\'django_project_version\'\np418\nsg30\nS\'\'\nsg31\ng55\nssstRp419\n(dp420\ng34\n(lp421\ng408\nag395\nasbsS\'__version__\'\np422\nI1\nsS\'dajaxice\'\np423\ng3\n(g4\ng5\n(dtRp424\n(dp425\ng34\n(lp426\nsbs.','2013-09-23 19:29:59');
/*!40000 ALTER TABLE `django_project_version` ENABLE KEYS */;
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
INSERT INTO `django_session` VALUES ('11udo49dm90ogbdmu3ptvknk7fs7fbn3','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 16:17:39'),('213jr25uwmfyov1jt98xv1jhhalgph07','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 00:08:10'),('2jdodgffveimgamml8bghdpbv9r3hx7k','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 13:30:49'),('6s9uzfzlp8gt2gcjal91igb4w9qviupj','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 02:12:43'),('9oxl7a8gm5q52bljwzjqxfq2an9tunr8','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-09-23 14:28:22'),('eiav5agy3z52avpgoh4fwyswkinmizce','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 18:37:42'),('gdl4m7cujam9n4dmjxk810tht4bq0q1h','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-22 22:34:59'),('ggi5yuu68lu952i60ti6ost4il7n6ouj','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 01:09:44'),('hndqrzz6szs7d129xu1cj8indcuu2em1','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 01:12:34'),('kmndipqgvf0rh6yo2prhl2jvootyz0hk','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 02:35:56'),('lbioi0tgiodykvft9dmrcypej8ecvy8q','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 19:44:11'),('lta39nu61yh4qdu3vvwsfbmsase833jt','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 21:22:18'),('mavanr1dat0h2fj38lrw64xqc332pvmk','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 15:16:47'),('nspn6buopfkhfmxrd9hax3bkp8bhkn41','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 23:07:17'),('s00gbm5b69bxyrqewd90ey4n4e787se5','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-23 00:08:02');
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

-- Dump completed on 2013-09-24 10:03:53
