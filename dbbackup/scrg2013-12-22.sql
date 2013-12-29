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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_area`
--

LOCK TABLES `auditoria_area` WRITE;
/*!40000 ALTER TABLE `auditoria_area` DISABLE KEYS */;
INSERT INTO `auditoria_area` VALUES (1,'División de Control de Contrataciones'),(2,'División de Control de provisiones de bienes y servicios'),(3,'Departamento de control técnico'),(4,'División de control de ingresos'),(5,'División de control de pagos'),(6,'División de Control de Obras'),(7,'División de Control de Mantenimiento');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_circuito`
--

LOCK TABLES `auditoria_circuito` WRITE;
/*!40000 ALTER TABLE `auditoria_circuito` DISABLE KEYS */;
INSERT INTO `auditoria_circuito` VALUES (1,'Control de elaboracion de Pliego de Bases y Condiciones',30,1),(2,'Control de Pliego de Bases y condiciones',30,1),(3,'Control de Especificaciones Técnicas',70,1),(4,'Control sobre la presentación de ofertas',50,1),(5,'Control del proceso de adjudicación y firma de contrato',70,1),(6,'Control de las especificaciones técnicas del PBC',0,3),(7,'Ejecución de contrato',0,3);
/*!40000 ALTER TABLE `auditoria_circuito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_circuito_variables`
--

DROP TABLE IF EXISTS `auditoria_circuito_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_circuito_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `circuito_id` int(11) NOT NULL,
  `variable_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `circuito_id` (`circuito_id`,`variable_id`),
  KEY `auditoria_circuito_variables_6ecba166` (`circuito_id`),
  KEY `auditoria_circuito_variables_5a46c4bf` (`variable_id`),
  CONSTRAINT `circuito_id_refs_id_98d7be2b` FOREIGN KEY (`circuito_id`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `variable_id_refs_id_84425295` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_circuito_variables`
--

LOCK TABLES `auditoria_circuito_variables` WRITE;
/*!40000 ALTER TABLE `auditoria_circuito_variables` DISABLE KEYS */;
INSERT INTO `auditoria_circuito_variables` VALUES (13,1,113),(14,1,114),(12,1,121),(11,1,122),(10,1,123),(9,1,124),(5,1,212),(6,1,214),(7,1,216),(8,1,217),(4,1,221),(3,1,222),(2,1,223),(1,1,224),(41,1,226),(40,1,227),(39,1,228),(38,1,229),(23,1,232),(22,1,312),(21,1,313),(20,1,314),(19,1,321),(18,1,322),(17,1,323),(16,1,324),(15,1,325),(37,1,2210),(36,1,2213),(35,1,2214),(34,1,2215),(33,1,2216),(32,1,2217),(31,1,2218),(30,1,2219),(29,1,2220),(28,1,2221),(27,1,2222),(26,1,2223),(25,1,2224),(24,1,2225),(256,2,111),(257,2,112),(258,2,113),(259,2,114),(260,2,115),(255,2,122),(254,2,123),(253,2,124),(248,2,212),(249,2,214),(250,2,215),(251,2,216),(252,2,217),(247,2,221),(246,2,222),(245,2,223),(244,2,224),(292,2,226),(291,2,227),(290,2,228),(289,2,229),(273,2,231),(272,2,232),(271,2,311),(270,2,312),(269,2,313),(268,2,314),(267,2,315),(266,2,319),(265,2,321),(264,2,322),(263,2,323),(262,2,324),(261,2,325),(288,2,2210),(287,2,2211),(286,2,2214),(285,2,2215),(284,2,2216),(283,2,2217),(282,2,2218),(281,2,2219),(280,2,2220),(279,2,2221),(278,2,2222),(277,2,2223),(276,2,2224),(275,2,2225),(274,2,2226),(104,3,111),(105,3,112),(106,3,113),(107,3,115),(108,3,116),(103,3,121),(102,3,122),(101,3,124),(100,3,125),(99,3,127),(93,3,212),(94,3,214),(95,3,215),(96,3,216),(97,3,217),(98,3,218),(92,3,221),(91,3,222),(134,3,226),(133,3,227),(124,3,232),(123,3,235),(122,3,311),(121,3,312),(120,3,313),(119,3,314),(118,3,315),(117,3,316),(116,3,317),(115,3,318),(114,3,319),(113,3,321),(112,3,322),(111,3,323),(110,3,324),(109,3,325),(132,3,2216),(131,3,2217),(130,3,2221),(129,3,2222),(128,3,2223),(127,3,2224),(126,3,2225),(125,3,2227),(148,4,111),(149,4,112),(150,4,113),(151,4,114),(152,4,115),(153,4,116),(147,4,121),(146,4,122),(145,4,123),(144,4,124),(143,4,125),(142,4,127),(138,4,212),(139,4,214),(140,4,216),(141,4,217),(137,4,221),(136,4,224),(135,4,225),(174,4,226),(166,4,231),(165,4,232),(164,4,233),(163,4,234),(162,4,235),(161,4,311),(160,4,312),(159,4,313),(158,4,321),(157,4,322),(156,4,323),(155,4,324),(154,4,325),(173,4,2214),(172,4,2215),(171,4,2216),(170,4,2217),(169,4,2218),(168,4,2221),(167,4,2222),(194,5,111),(195,5,112),(196,5,113),(197,5,114),(198,5,115),(199,5,116),(193,5,121),(192,5,122),(191,5,123),(190,5,124),(189,5,125),(188,5,126),(187,5,127),(180,5,212),(181,5,213),(182,5,214),(183,5,215),(184,5,216),(185,5,217),(186,5,218),(179,5,221),(178,5,222),(177,5,223),(176,5,224),(175,5,225),(243,5,226),(242,5,227),(241,5,228),(240,5,229),(221,5,231),(220,5,232),(219,5,233),(218,5,234),(217,5,235),(216,5,237),(215,5,239),(213,5,311),(212,5,312),(211,5,313),(210,5,314),(209,5,315),(208,5,316),(207,5,317),(206,5,318),(205,5,319),(204,5,321),(203,5,322),(202,5,323),(201,5,324),(200,5,325),(239,5,2210),(238,5,2211),(237,5,2214),(236,5,2215),(235,5,2216),(234,5,2217),(233,5,2218),(232,5,2219),(231,5,2220),(230,5,2221),(229,5,2222),(228,5,2223),(227,5,2224),(226,5,2225),(225,5,2226),(224,5,2227),(223,5,2230),(222,5,2231),(214,5,2310),(376,6,116),(383,6,121),(382,6,122),(381,6,123),(380,6,124),(379,6,125),(378,6,126),(377,6,127),(366,6,212),(367,6,217),(368,6,222),(369,6,224),(370,6,226),(371,6,232),(372,6,233),(373,6,236),(374,6,237),(375,6,238),(360,6,312),(361,6,313),(362,6,315),(363,6,321),(364,6,322),(365,6,323),(353,6,2210),(354,6,2214),(355,6,2217),(356,6,2220),(357,6,2221),(358,6,2222),(359,6,2223),(326,7,111),(327,7,112),(328,7,113),(329,7,114),(330,7,115),(331,7,116),(325,7,124),(324,7,125),(323,7,126),(322,7,127),(321,7,214),(352,7,227),(339,7,311),(338,7,312),(337,7,319),(336,7,321),(335,7,322),(334,7,323),(333,7,324),(332,7,325),(351,7,2211),(350,7,2213),(349,7,2214),(348,7,2215),(347,7,2216),(346,7,2217),(345,7,2218),(344,7,2219),(343,7,2220),(342,7,2228),(341,7,2229),(340,7,2230);
/*!40000 ALTER TABLE `auditoria_circuito_variables` ENABLE KEYS */;
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
  `identificador` int(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_public` date NOT NULL,
  `activa` varchar(10) NOT NULL,
  `circuito` int(11) NOT NULL,
  `circunscripcion` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `pac` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_hojacontrol_300a32bb` (`identificador`),
  KEY `auditoria_hojacontrol_6ecba166` (`circuito`),
  KEY `auditoria_hojacontrol_1c0ab5cf` (`circunscripcion`),
  KEY `auditoria_hojacontrol_a4563695` (`area`),
  KEY `auditoria_hojacontrol_591f98ef` (`pac`),
  KEY `auditoria_hojacontrol_c69e2c81` (`usuario`),
  CONSTRAINT `area_refs_id_b296048e` FOREIGN KEY (`area`) REFERENCES `auditoria_area` (`id`),
  CONSTRAINT `circuito_refs_id_0607ddd6` FOREIGN KEY (`circuito`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `circunscripcion_refs_id_629a6faa` FOREIGN KEY (`circunscripcion`) REFERENCES `auditoria_circunscripcion` (`id`),
  CONSTRAINT `identificador_refs_id_8704b958` FOREIGN KEY (`identificador`) REFERENCES `auditoria_identificador` (`id`),
  CONSTRAINT `pac_refs_id_ace78361` FOREIGN KEY (`pac`) REFERENCES `auditoria_pac` (`id`),
  CONSTRAINT `usuario_refs_id_56c3ed8c` FOREIGN KEY (`usuario`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol`
--

LOCK TABLES `auditoria_hojacontrol` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol` VALUES (24,NULL,'Contratación de seguro de Responsabilidad civil y Accidentes personales','2013-11-08','Inactivo',1,1,1,19,1),(25,NULL,'fsdfas','2013-11-08','Inactivo',1,1,1,15,1),(26,NULL,'prueba','2013-11-08','activo',1,1,1,12,1),(27,NULL,'CONSTRUCCIÓN JUZGADO DE PAZ Y ADQUISICIÓN DE MOBILIARIO - DPTO. CENTRAL  - CAPIATA','2013-11-08','activo',3,1,6,15,1);
/*!40000 ALTER TABLE `auditoria_hojacontrol` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_identificador`
--

LOCK TABLES `auditoria_identificador` WRITE;
/*!40000 ALTER TABLE `auditoria_identificador` DISABLE KEYS */;
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
  CONSTRAINT `factor_refs_id_3c1a7b9e` FOREIGN KEY (`factor`) REFERENCES `auditoria_factor` (`id`) ON UPDATE CASCADE
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_pac`
--

LOCK TABLES `auditoria_pac` WRITE;
/*!40000 ALTER TABLE `auditoria_pac` DISABLE KEYS */;
INSERT INTO `auditoria_pac` VALUES (1,1,'SERVICIO DE CATERING - CONTRATO ABIERTO - AD REFERENDUM',1,2,1),(2,2,'PROVISIÓN DE ALIMENTOS - CONTRATO ABIERTO - AD REFERENDUM',1,2,1),(3,3,'SERVICIO DE CEREMONIAL - CONTRATO ABIERTO - AD REFERENDUM',1,1,1),(4,5,'Servicio de Lavado, engrace y gomería - Ad Referendum',1,1,1),(5,4,'MANTENIMIENTO PREVENTIVO Y CORRECTIVO DEL SISTEMA EECTROMECANICO, ELECTRICO, SISTEMA DE AGUA POTABLE Y DESAGUE DE ASUNCIÓN Y SAN LORENZO - CONTRATO ABIERTO - AD REFERENDUM',1,2,1),(6,6,'Consultoría para la contratación de servicios profesionales para la eleaboración de materiales de comunicación, impresos, audio visuales y campañas de información pública de la corte suprema de justicia',1,1,1),(7,7,'Contratación de seguro de Responsabilidad civil y Accidentes personales',2,2,1),(8,8,'Mantenimiento y reparacion de vehículos en talleres oficiales - Contrato Abierto - Marcas: Toyota, Nissan, Ford y Volvo',1,3,1),(9,10,'Provisión de pasajes aéreos y servicios conexos',1,2,1),(10,9,'Mantenimiento preventivo y correctivo de servidores',1,4,1),(11,11,'Software para soporte de elaboración e implementación del MECIP',2,4,1),(12,12,'SERVICIO DE GUADERÍA INFANTIL',1,1,1),(13,13,'CONTATACIÓN DE SERVICI DE CONSULTORÍA PARA FUNCIONARIOS DE LA DIRECCIÓN DE GESTIÓN ORGANIZACIONAL EN TERMINOS DE CAPACITACIÓN DE CAPACITADORES PARA LA ELABOACIÓN E IMPLEMENTACIÓN DEL MECIP',2,4,1),(14,14,'MANTENIMIENTO DE PURIFICADOR Y DISPENSOR DE AGUA FÍA CALIENTE - CONTRATO ABIERTO',1,2,1),(15,15,'CONSTRUCCIÓN JUZGADO DE PAZ Y ADQUISICIÓN DE MOBILIARIO - DPTO. CENTRAL  - CAPIATA',1,2,1),(16,16,'Consultoría para ampliación y mantenimiento del sistema de información de la base de daos legislativa',1,4,1),(17,17,'Provisión de tintas, cintas y tonner - S.B.E.',2,1,1),(18,18,'Adquisición de equipos de informática - S.B.E.',2,2,1),(19,19,'Servicio de impresión de etiquetas y calcomanías de seguridad',1,1,1),(20,20,'Adquisición de equipos de informática - S.B.E. - Para los registros',2,2,1),(21,21,'Provisión de papel, cartón e impresoj',2,1,1),(22,22,'Adquisición de utensilios y enseres de cocina',2,4,1);
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
  `accion` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `ejercicio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resolucion`
--

LOCK TABLES `auditoria_resolucion` WRITE;
/*!40000 ALTER TABLE `auditoria_resolucion` DISABLE KEYS */;
INSERT INTO `auditoria_resolucion` VALUES (1,4313,'Resolución nro. 4313, por la que se aprueba el programa anual de contrataciones de la Corte Suprema de Justicia para el ejercicio fiscal 2013','Creacion','2013-02-26',2013);
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
  `circuito_id` int(11) NOT NULL,
  `variable_id` int(11) NOT NULL,
  `hoja_id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `observacion` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_resultado_6ecba166` (`circuito_id`),
  KEY `auditoria_resultado_5a46c4bf` (`variable_id`),
  KEY `auditoria_resultado_4d4a0558` (`hoja_id`),
  CONSTRAINT `circuito_id_refs_id_1a0fff7b` FOREIGN KEY (`circuito_id`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `hoja_id_refs_id_161f9007` FOREIGN KEY (`hoja_id`) REFERENCES `auditoria_hojacontrol` (`id`),
  CONSTRAINT `variable_id_refs_id_1addb316` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=995 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resultado`
--

LOCK TABLES `auditoria_resultado` WRITE;
/*!40000 ALTER TABLE `auditoria_resultado` DISABLE KEYS */;
INSERT INTO `auditoria_resultado` VALUES (828,1,113,24,5,''),(829,1,114,24,5,''),(830,1,124,24,0,''),(831,1,123,24,15,''),(832,1,122,24,15,''),(833,1,121,24,10,''),(834,1,217,24,0,''),(835,1,212,24,0,''),(836,1,214,24,0,''),(837,1,216,24,0,''),(838,1,2215,24,10,''),(839,1,2216,24,0,''),(840,1,221,24,0,''),(841,1,2217,24,0,''),(842,1,222,24,0,''),(843,1,2218,24,0,''),(844,1,223,24,0,''),(845,1,2219,24,0,''),(846,1,224,24,0,''),(847,1,2220,24,0,''),(848,1,226,24,0,''),(849,1,2221,24,0,''),(850,1,227,24,0,''),(851,1,2222,24,0,''),(852,1,228,24,0,''),(853,1,2210,24,0,''),(854,1,2223,24,0,''),(855,1,229,24,0,''),(856,1,2213,24,0,''),(857,1,2224,24,0,''),(858,1,2214,24,0,''),(859,1,2225,24,0,''),(860,1,232,24,0,''),(861,1,313,24,0,''),(862,1,314,24,0,''),(863,1,312,24,0,''),(864,1,321,24,0,''),(865,1,322,24,0,''),(866,1,323,24,0,''),(867,1,324,24,0,''),(868,1,325,24,0,''),(869,1,113,25,0,''),(870,1,114,25,5,''),(871,1,124,25,0,''),(872,1,123,25,0,''),(873,1,122,25,0,''),(874,1,121,25,0,''),(875,1,217,25,0,''),(876,1,212,25,0,''),(877,1,214,25,0,''),(878,1,216,25,0,''),(879,1,2215,25,0,''),(880,1,2216,25,0,''),(881,1,221,25,0,''),(882,1,2217,25,0,''),(883,1,222,25,0,''),(884,1,2218,25,0,''),(885,1,223,25,0,''),(886,1,2219,25,0,''),(887,1,224,25,0,''),(888,1,2220,25,0,''),(889,1,226,25,0,''),(890,1,2221,25,0,''),(891,1,227,25,0,''),(892,1,2222,25,0,''),(893,1,228,25,0,''),(894,1,2210,25,0,''),(895,1,2223,25,0,''),(896,1,229,25,0,''),(897,1,2213,25,0,''),(898,1,2224,25,0,''),(899,1,2214,25,0,''),(900,1,2225,25,0,''),(901,1,232,25,0,''),(902,1,313,25,0,''),(903,1,314,25,0,''),(904,1,312,25,0,''),(905,1,321,25,0,''),(906,1,322,25,0,''),(907,1,323,25,0,''),(908,1,324,25,0,''),(909,1,325,25,0,''),(910,1,113,26,0,''),(911,1,114,26,0,''),(912,1,124,26,0,''),(913,1,123,26,0,''),(914,1,122,26,0,''),(915,1,121,26,0,''),(916,1,212,26,0,''),(917,1,214,26,0,''),(918,1,216,26,0,''),(919,1,217,26,0,''),(920,1,2216,26,0,''),(921,1,221,26,0,''),(922,1,2217,26,0,''),(923,1,222,26,0,''),(924,1,2218,26,0,''),(925,1,223,26,0,''),(926,1,2219,26,0,''),(927,1,224,26,0,''),(928,1,2220,26,0,''),(929,1,226,26,0,''),(930,1,2221,26,0,''),(931,1,227,26,0,''),(932,1,2222,26,0,''),(933,1,228,26,0,''),(934,1,2210,26,0,''),(935,1,2223,26,0,''),(936,1,229,26,0,''),(937,1,2213,26,0,''),(938,1,2224,26,0,''),(939,1,2214,26,0,''),(940,1,2225,26,0,''),(941,1,2215,26,0,''),(942,1,232,26,0,''),(943,1,313,26,0,''),(944,1,314,26,0,''),(945,1,312,26,0,''),(946,1,321,26,0,''),(947,1,322,26,0,''),(948,1,323,26,0,''),(949,1,324,26,0,''),(950,1,325,26,0,''),(951,3,111,27,0,''),(952,3,112,27,0,''),(953,3,113,27,0,''),(954,3,115,27,0,''),(955,3,116,27,0,''),(956,3,127,27,0,''),(957,3,125,27,0,''),(958,3,124,27,0,''),(959,3,122,27,0,''),(960,3,121,27,0,''),(961,3,212,27,0,''),(962,3,214,27,0,''),(963,3,215,27,0,''),(964,3,216,27,0,''),(965,3,217,27,0,''),(966,3,218,27,0,''),(967,3,2225,27,0,''),(968,3,2227,27,0,''),(969,3,2216,27,0,''),(970,3,2217,27,0,''),(971,3,221,27,0,''),(972,3,2221,27,0,''),(973,3,222,27,0,''),(974,3,2222,27,0,''),(975,3,226,27,0,''),(976,3,2223,27,0,''),(977,3,227,27,0,''),(978,3,2224,27,0,''),(979,3,232,27,0,''),(980,3,235,27,0,''),(981,3,311,27,0,''),(982,3,312,27,0,''),(983,3,313,27,0,''),(984,3,314,27,0,''),(985,3,315,27,0,''),(986,3,316,27,0,''),(987,3,317,27,0,''),(988,3,318,27,0,''),(989,3,319,27,0,''),(990,3,321,27,0,''),(991,3,322,27,0,''),(992,3,323,27,0,''),(993,3,324,27,0,''),(994,3,325,27,0,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=2311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_variable`
--

LOCK TABLES `auditoria_variable` WRITE;
/*!40000 ALTER TABLE `auditoria_variable` DISABLE KEYS */;
INSERT INTO `auditoria_variable` VALUES (111,'Se ha cumplido con los plazos establecidos para el tramite en tiempo y forma aceptables',5,11),(112,'Las fechas que presentan los antecedentes certifican el cumplimiento de los plazos previstos para el tramite',5,11),(113,'Existen evidencias en el expediente que los plazos y tiempos se han cumplido',5,11),(114,'El tramite respeta los tiempos y plazos establecidos (Cronograma)',5,11),(115,'Si el tramite no se ajusta a los plazos previstos se encuentra en el expediente la justificacion respectiva',10,11),(116,'Existen evidencias en el tramite que se realizaron los controles en las fechas de los documentos',5,11),(121,'Se identifica con claridad la procedencia de origen del expediente y destino final',10,12),(122,'El tramite esta claramente identificado con un numero de orden secuencial asignado en su inicio',15,12),(123,'El tramite respeta la logica secuencial de acciones desde su inicio',15,12),(124,'Se respetan los datos técnicos y financieros desde su origen',10,12),(125,'El expediente esta relacionado a tramites que ya fueron controlados en otro momento y han finalizado',10,12),(126,'El tramite esta sujeto al cumplimiento de un contrato y responde a los terminos establecidos',20,12),(127,'El tramite presenta evidencias de control interno por parte de sus operadores y responsables',20,12),(212,'En el expediente se evidencia el cumplimiento de las normas generales y especificas del tramite',40,21),(213,'El tramite ha sido normatizado por Acordada del Pleno de la CSJ',30,21),(214,'El tramite ha sido normatizado por Resolución del Consejo de Administración de la CSJ',30,21),(215,'El tramite ha sido normatizado conforme los procedimientos de control de riesgo establecidos por el MECIP',30,21),(216,'El tramite se ajusta a los procedimientos de control de riesgo establecidos por el MECIP',30,21),(217,'El tramite se ajusta a las normas y procedimientos establecidos por el DNCP',30,21),(218,'El tramite se ajusta a las normas y procedimientos establecidos por el SIGAF',30,21),(221,'La caratula de expediente contiene los datos que permiten identificar la operación ',5,22),(222,'En el expediente se identifica el sistema de adjudicación utilizado para la operación',5,22),(223,'Las evidencias indican que el expediente se encuentra organizado en un orden secuencial ascendente',25,22),(224,'En el expediente se encuentran los antecedentes del tramite o referencia a traves de la cual se pueda determinar la operación',50,22),(225,'Se tiene acceso a datos historicos que permitan controlar las cifras o acciones comprometidas en el expediente',20,22),(226,'Se identifica el numero asignado a la operación a realizarse',5,22),(227,'Se identifican con claridad los montos de la operación',5,22),(228,'Se identifica el programa presupuestario asignado para la operación',5,22),(229,'Se identifica la fuente de financiamiento asignada para la operación',5,22),(231,'El tramite esta totalmente informatizado desde su inicio hasta su finalización',5,23),(232,'El expediente al ingresar ha sido registrado en el sistema informatico de control de documentos',5,23),(233,'El expediente contiene documentos scaneados que se encuentran almacenados en la base de datos respectiva',5,23),(234,'La operacion ha sido registrada en un sistema informatico especifico',25,23),(235,'La revision del expediente permite el acceso a los historicos por tramite / beneficiario / responsable',20,23),(236,'Los antecedentes han sido presentados en medios digitales o magneticos',5,23),(237,'Las fechas de registro de datos concuerdan con las fechas de los documentos controlados',15,23),(238,'Se puede observar en los documentos el resposable del registro en medios informatizados',5,23),(239,'Se puede constatar la hora de registro y esta concuerda con el horario de trabajo',20,23),(311,'El expediente contiene documentos originales o copias autenticadas de los mismos',25,31),(312,'Todos los documentos del expediente son legibles',20,31),(313,'Todos los documentos del expediente estan foliados',20,31),(314,'El expediente contiene copias autenticadas por el responsable del tramite',15,31),(315,'Los archivos digitales que acompañan el expediente corresponden al tramite en su totalidad',20,31),(316,'Los archivos digitales que acompañan el expediente estan registrados de forma tal que son asociados con facilidad al tramite',20,31),(317,'Los archivos digitales que acompañan el expediente estan registrados con el numero de version o version final',20,31),(318,'Los archivos digitales remitidos pueden ser considerados como la ultima version',20,31),(319,'En caso de recomendaciones realizadas a la operación estas fueron adicionadas a los datos/documentos del tramite',30,31),(321,'Las firmas de los documentos corresponden al registro de firmas de responsables del tramite',50,32),(322,'Esta presente de forma legible el nombre, apellido y cargo de la firma presente en los documentos',50,32),(323,'Esta presente el sello del área en los diversos documentos que conforman el tramite y corresponde a la matriz de control',25,32),(324,'Esta presente el sello del responsable debajo de su firma y corresponde a los registros',15,32),(325,'Esta presente la media firma del responsable en los demas documentos del expediente',30,32),(2210,'Se identifica el rubro a ser imputado por la operación',50,22),(2211,'Los montos asignados en el expediente coinciden con los montos registrados en la operación del tramite',30,22),(2212,'Los montos asignados en el expediente coinciden con el/ los monto/s obligado/s',30,22),(2213,'Los calculos realizados corresponden a los montos registrados en los documentos que integran el expediente',20,22),(2214,'Se identifica los plazos estimados de la finalización del trámite',15,22),(2215,'Se identifica con claridad la fecha del siguiente tramite una vez que el expediente concluya su circuito',10,22),(2216,'Estan establecidos los criterios o estandares de calidad de la operación',20,22),(2217,'Estan establecidos los documentos que conforman la operación a realizarse en los posteriores circuitos del proceso',20,22),(2218,'Estan establecidods los criterios de evaluación para las diferentes etapas de la operación',20,22),(2219,'Estan establecidos los criterios o estandares de calificacion de la operación /circuitos',20,22),(2220,'Estan claras las especificaciones tecnicas en los documentos que conforman el tramite /operación',35,22),(2221,'Esta establecido el ambito solicitante de la operación',25,22),(2222,'Esta establecido el ambito responsable de la operación',25,22),(2223,'Esta establecido el ambito beneficiario de la operación',25,22),(2224,'Estan especificadas las garantias necesarias para concluir la operacion ',30,22),(2225,'Las garantias solicitadas son suficientes para la conclusion de la operación ',30,22),(2226,'Las condiciones de pago de la operación estan ajustadas a las garantias previstas',30,22),(2227,'Se han cumplido las garantias previstas para los riesgos de la operación',20,22),(2228,'Se ha ejecutado alguna garantia en el marco de la operación',20,22),(2229,'No se han aplicado multas a la operación por imcumplimiento de una de las partes',20,22),(2230,'No se ha reformulado o ajustado el plazo original de la operación',15,22),(2231,'Se encuentra presente en el expediente la hoja de control del tramite de carácter administrativo',15,22),(2310,'Se puede acceder a verificar los registros de los diferentes operadores del tramite en calidad de consulta',20,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'bienes_y_servicios'),(1,'contrataciones'),(3,'control_tecnico'),(4,'ingresos'),(7,'mantenimiento'),(6,'obras'),(5,'pagos'),(8,'prueba');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,34),(2,1,43),(3,1,52),(4,1,55),(5,1,58),(6,1,59),(7,1,60),(8,2,34),(9,2,43),(10,2,52),(11,2,55),(12,2,56),(13,2,58),(14,2,59),(15,2,60),(16,3,34),(17,3,43),(18,3,52),(19,3,55),(20,3,56),(21,3,58),(22,3,59),(23,3,60),(24,4,34),(25,4,43),(26,4,52),(27,4,55),(28,4,58),(29,4,59),(30,4,60),(31,5,34),(32,5,43),(33,5,52),(34,5,55),(35,5,56),(36,5,58),(37,5,59),(38,5,60),(39,6,34),(40,6,43),(41,6,52),(42,6,55),(43,6,56),(44,6,58),(45,6,59),(46,6,60),(47,7,34),(48,7,43),(49,7,52),(50,7,56),(51,7,58),(52,7,59),(53,7,60),(54,8,40),(55,8,41),(56,8,42);
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
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add area',7,'add_area'),(20,'Can change area',7,'change_area'),(21,'Can delete area',7,'delete_area'),(22,'Can add circunscripcion',8,'add_circunscripcion'),(23,'Can change circunscripcion',8,'change_circunscripcion'),(24,'Can delete circunscripcion',8,'delete_circunscripcion'),(25,'Can add factor',9,'add_factor'),(26,'Can change factor',9,'change_factor'),(27,'Can delete factor',9,'delete_factor'),(28,'Can add indicador',10,'add_indicador'),(29,'Can change indicador',10,'change_indicador'),(30,'Can delete indicador',10,'delete_indicador'),(31,'Can add proceso',11,'add_proceso'),(32,'Can change proceso',11,'change_proceso'),(33,'Can delete proceso',11,'delete_proceso'),(34,'Can add identificador',12,'add_identificador'),(35,'Can change identificador',12,'change_identificador'),(36,'Can delete identificador',12,'delete_identificador'),(37,'Can add variable',13,'add_variable'),(38,'Can change variable',13,'change_variable'),(39,'Can delete variable',13,'delete_variable'),(40,'Can add circuito',14,'add_circuito'),(41,'Can change circuito',14,'change_circuito'),(42,'Can delete circuito',14,'delete_circuito'),(43,'Can add resolucion',15,'add_resolucion'),(44,'Can change resolucion',15,'change_resolucion'),(45,'Can delete resolucion',15,'delete_resolucion'),(46,'Can add caracter',16,'add_caracter'),(47,'Can change caracter',16,'change_caracter'),(48,'Can delete caracter',16,'delete_caracter'),(49,'Can add modlidad',17,'add_modlidad'),(50,'Can change modlidad',17,'change_modlidad'),(51,'Can delete modlidad',17,'delete_modlidad'),(52,'Can add pac',18,'add_pac'),(53,'Can change pac',18,'change_pac'),(54,'Can delete pac',18,'delete_pac'),(55,'Can add hoja control',19,'add_hojacontrol'),(56,'Can change hoja control',19,'change_hojacontrol'),(57,'Can delete hoja control',19,'delete_hojacontrol'),(58,'Can add resultado',20,'add_resultado'),(59,'Can change resultado',20,'change_resultado'),(60,'Can delete resultado',20,'delete_resultado'),(61,'Can add documentos',21,'add_documentos'),(62,'Can change documentos',21,'change_documentos'),(63,'Can delete documentos',21,'delete_documentos'),(64,'Can add log entry',22,'add_logentry'),(65,'Can change log entry',22,'change_logentry'),(66,'Can delete log entry',22,'delete_logentry'),(67,'Can add version',23,'add_version'),(68,'Can change version',23,'change_version'),(69,'Can delete version',23,'delete_version'),(70,'Can add evolution',24,'add_evolution'),(71,'Can change evolution',24,'change_evolution'),(72,'Can delete evolution',24,'delete_evolution');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$JG9DxXXt7yfP$OKCkUVOIYmcUBzjWBDyC7WwyD72KY9jKgVVJGij2ZsU=','2013-11-17 22:15:07',1,'admin','','','enriquev.rodriguez@gmail.com',1,1,'2013-09-24 14:22:31'),(2,'pbkdf2_sha256$10000$WWVl5C4gSPpR$VnapuoVjf5AxdXt+uOTUBpj1FYm7Qqub1mFAqaIJbbo=','2013-09-26 13:13:02',0,'enrique','Enrique','Rodríguez','enriquev.rodriguez@gmail.com',0,1,'2013-09-26 13:13:02'),(3,'pbkdf2_sha256$10000$m0v2ft4FnuyX$axDbmxnAqkREBUQHy998fVs+GTIbNoqwmtYCeNutc2w=','2013-10-15 14:46:06',0,'antonio','Antonio','Fernández','antonioiris1@hotmail.es',0,1,'2013-10-02 13:28:43'),(4,'pbkdf2_sha256$10000$HelEtxqyway1$uJcfzbov3V6dkw3mxWMU0aHTSZcqjvhukRaedQo1zoA=','2013-11-07 22:02:45',0,'prueba','','','',0,1,'2013-11-07 22:02:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(2,3,1),(3,4,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-09-24 15:46:06',1,14,'1','Control de elaboracion de Pliego de Bases y Condiciones',1,''),(2,'2013-09-24 20:54:10',1,20,'2','Resultado object',1,''),(3,'2013-09-24 20:55:15',1,20,'3','Resultado object',1,''),(4,'2013-09-25 04:04:21',1,20,'1','Resultado object',1,''),(5,'2013-09-25 04:22:08',1,20,'2','Resultado object',1,''),(6,'2013-09-25 04:25:11',1,20,'2','Resultado object',2,'Modificado/a variable.'),(7,'2013-09-26 12:59:27',1,7,'1','División de Control de Contrataciones',2,'Modificado/a descripcion.'),(8,'2013-09-26 12:59:53',1,7,'2','División de Control de provisiones de bienes y servicios',1,''),(9,'2013-09-26 13:00:42',1,7,'3','Departamento de control técnico',1,''),(10,'2013-09-26 13:01:08',1,7,'4','División de control de ingresos',1,''),(11,'2013-09-26 13:01:22',1,7,'5','División de control de pagos',1,''),(12,'2013-09-26 13:01:37',1,7,'6','División de Control de Obras',1,''),(13,'2013-09-26 13:01:48',1,7,'7','División de Control de Mantenimiento',1,''),(14,'2013-09-26 13:04:45',1,2,'1','contrataciones',1,''),(15,'2013-09-26 13:05:59',1,2,'2','bienes_y_servicios',1,''),(16,'2013-09-26 13:07:33',1,2,'3','control_tecnico',1,''),(17,'2013-09-26 13:08:30',1,2,'4','ingresos',1,''),(18,'2013-09-26 13:09:54',1,2,'5','pagos',1,''),(19,'2013-09-26 13:11:03',1,2,'6','obras',1,''),(20,'2013-09-26 13:12:04',1,2,'7','mantenimiento',1,''),(21,'2013-09-26 13:13:03',1,3,'2','enrique',1,''),(22,'2013-09-26 13:13:38',1,3,'2','enrique',2,'Modificado/a password, first_name, last_name, email y groups.'),(23,'2013-09-26 15:16:43',1,19,'3','desde la contraloría',3,''),(24,'2013-09-26 15:16:43',1,19,'2','Descripcion',3,''),(25,'2013-09-26 15:17:18',1,19,'1','Descripcion',2,'Modificado/a activa.'),(26,'2013-10-02 13:28:43',1,3,'3','antonio',1,''),(27,'2013-10-02 13:29:06',1,3,'3','antonio',2,'Modificado/a password, first_name, last_name, email y groups.'),(28,'2013-10-02 13:45:20',1,14,'2','Control de Pliego de Bases y condiciones',1,''),(29,'2013-10-02 14:06:49',1,14,'3','Control de Especificaciones Técnicas',1,''),(30,'2013-10-02 14:16:45',1,14,'4','Control sobre la presentación de ofertas',1,''),(31,'2013-10-02 14:21:50',1,14,'5','Control del proceso de adjudicación y firma de contrato',1,''),(32,'2013-10-02 14:22:02',1,14,'2','Control de Pliego de Bases y condiciones',2,'Modificado/a procesos.'),(33,'2013-10-02 14:23:01',1,15,'5','Descriçion de prueba',3,''),(34,'2013-10-15 13:34:31',1,14,'6','Control de las especificaciones técnicas del PBC',1,''),(35,'2013-10-15 13:54:13',1,14,'7','Ejecución de contrato',1,''),(36,'2013-10-15 14:08:02',1,18,'16','4313 - 16- Consultoría para ampliación y mantenimiento del sistema de información de la base de daos legislativa',1,''),(37,'2013-10-15 14:08:38',1,18,'17','4313 - 17- Provisión de tintas, cintas y tonner - S.B.E.',1,''),(38,'2013-10-15 14:09:31',1,18,'18','4313 - 18- Adquisición de equipos de informática - S.B.E.',1,''),(39,'2013-10-15 14:10:58',1,18,'19','4313 - 19- Servicio de impresión de etiquetas y calcomanías de seguridad',1,''),(40,'2013-10-15 14:12:02',1,18,'20','4313 - 20- Adquisición de equipos de informática - S.B.E. - Para los registros',1,''),(41,'2013-10-15 14:18:13',1,18,'21','4313 - 21- Provisión de papel, cartón e impresoj',1,''),(42,'2013-10-15 14:23:55',1,18,'22','4313 - 22- Adquisición de utensilios y enseres de cocina',1,''),(43,'2013-11-07 16:06:17',1,13,'330','Existen evidencias en el expediente que indican que el tramite no ha excedido los plazos y tiempos establecidos',2,'Modificado/a descripcion.'),(44,'2013-11-07 16:09:23',1,13,'330','Existen evidencias en el expediente que los plazos y tiempos se han cumplido',2,'Modificado/a descripcion.'),(45,'2013-11-07 16:12:29',1,13,'331','El tramite respeta los tiempos y plazos establecidos (Cronograma)',2,'Modificado/a descripcion.'),(46,'2013-11-07 16:26:55',1,13,'365','Estan especificadas las garantias necesarias para concluir la operacion ',2,'Modificado/a descripcion.'),(47,'2013-11-07 16:36:21',1,13,'373','Estan establecidos los criterios o estandares de calidad de la operación',2,'No ha cambiado ningún campo.'),(48,'2013-11-07 16:38:12',1,13,'375','Se identifica con claridad los plazos estimados de la finalización de la operación',2,'Modificado/a descripcion.'),(49,'2013-11-07 16:40:53',1,13,'375','Se identifica los plazos estimados de la finalización del trámite',2,'Modificado/a descripcion.'),(50,'2013-11-07 16:45:27',1,13,'392','El tramite no ha sido normatizado conforme los procedimientos de control de riesgo establecidos por el MECIP',2,'No ha cambiado ningún campo.'),(51,'2013-11-07 16:47:17',1,13,'392','El tramite ha sido normatizado conforme los procedimientos de control de riesgo establecidos por el MECIP',2,'Modificado/a descripcion.'),(52,'2013-11-07 16:53:27',1,13,'399','Se respetan los datos técnicos y financieros desde su origen',2,'Modificado/a descripcion.'),(53,'2013-11-07 22:02:26',1,2,'8','prueba',1,''),(54,'2013-11-07 22:02:46',1,3,'4','prueba',1,''),(55,'2013-11-07 22:03:03',1,3,'4','prueba',2,'Modificado/a password y groups.'),(56,'2013-11-08 11:22:45',1,14,'6','Control de las especificaciones técnicas del PBC',2,'Modificado/a variables.'),(57,'2013-11-08 11:23:23',1,19,'22','en clase',3,''),(58,'2013-11-08 11:23:23',1,19,'21','CONSTRUCCIÓN JUZGADO DE PAZ Y ADQUISICIÓN DE MOBILIARIO - DPTO. CENTRAL  - CAPIATA',3,''),(59,'2013-11-08 11:23:24',1,19,'20','Llamado 124/13',3,''),(60,'2013-11-08 11:23:24',1,19,'19','jsjsjs',3,''),(61,'2013-11-08 11:23:24',1,19,'18','descripcion nueva',3,''),(62,'2013-11-08 11:23:24',1,19,'17','control de pliego de bases y condiciones',3,''),(63,'2013-11-08 11:23:24',1,19,'16','Contratación de seguro de Responsabilidad civil y Accidentes personales',3,''),(64,'2013-11-08 11:23:24',1,19,'15','pac 20 ',3,''),(65,'2013-11-08 11:23:24',1,19,'14','pac 20 ',3,''),(66,'2013-11-08 11:23:24',1,19,'13','MANTENIMIENTO DE PURIFICADOR Y DISPENSOR DE AGUA FÍA CALIENTE - CONTRATO ABIERTO',3,''),(67,'2013-11-08 11:23:24',1,19,'12','servicio de prueba',3,''),(68,'2013-11-08 11:23:24',1,19,'11','servicio de prueba',3,''),(69,'2013-11-08 11:23:24',1,19,'10','CONSTRUCCIÓN JUZGADO DE PAZ Y ADQUISICIÓN DE MOBILIARIO - DPTO. CENTRAL  - CAPIATA',3,''),(70,'2013-11-08 11:23:24',1,19,'9','Mantenimieno y reparación de vehículos en talleres oficiales',3,''),(71,'2013-11-08 11:23:24',1,19,'8','Mantenimieno y reparación de vehículos en talleres oficiales',3,''),(72,'2013-11-08 11:23:24',1,19,'7','Mantenimieno y reparación de vehículos en talleres oficiales',3,''),(73,'2013-11-08 11:23:24',1,19,'6','Nombre del llamado',3,''),(74,'2013-11-08 11:23:24',1,19,'5','desde auditoria',3,''),(75,'2013-11-08 11:23:24',1,19,'4','desde la contraloría',3,''),(76,'2013-11-08 11:23:24',1,19,'1','Descripcion',3,''),(77,'2013-11-08 11:41:55',1,19,'23','Prueba',3,'');
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
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'area','auditoria','area'),(8,'circunscripcion','auditoria','circunscripcion'),(9,'factor','auditoria','factor'),(10,'indicador','auditoria','indicador'),(11,'proceso','auditoria','proceso'),(12,'identificador','auditoria','identificador'),(13,'variable','auditoria','variable'),(14,'circuito','auditoria','circuito'),(15,'resolucion','auditoria','resolucion'),(16,'caracter','auditoria','caracter'),(17,'modlidad','auditoria','modlidad'),(18,'pac','auditoria','pac'),(19,'hoja control','auditoria','hojacontrol'),(20,'resultado','auditoria','resultado'),(21,'documentos','auditoria','documentos'),(22,'log entry','admin','logentry'),(23,'version','django_evolution','version'),(24,'evolution','django_evolution','evolution');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_project_version`
--

LOCK TABLES `django_project_version` WRITE;
/*!40000 ALTER TABLE `django_project_version` DISABLE KEYS */;
INSERT INTO `django_project_version` VALUES (1,'(dp1\nS\'sessions\'\np2\nccopy_reg\n_reconstructor\np3\n(cdjango.utils.datastructures\nSortedDict\np4\nc__builtin__\ndict\np5\n(dp6\nS\'Session\'\np7\n(dp8\nS\'fields\'\np9\n(dp10\nS\'session_key\'\np11\n(dp12\nS\'field_type\'\np13\ncdjango.db.models.fields\nCharField\np14\nsS\'max_length\'\np15\nI40\nsS\'primary_key\'\np16\nI01\nssS\'expire_date\'\np17\n(dp18\ng13\ncdjango.db.models.fields\nDateTimeField\np19\nsS\'db_index\'\np20\nI01\nssS\'session_data\'\np21\n(dp22\ng13\ncdjango.db.models.fields\nTextField\np23\nsssS\'meta\'\np24\n(dp25\nS\'unique_together\'\np26\n(lp27\nsS\'db_table\'\np28\nS\'django_session\'\np29\nsS\'db_tablespace\'\np30\nS\'\'\nsS\'pk_column\'\np31\ng11\nssstRp32\n(dp33\nS\'keyOrder\'\np34\n(lp35\ng7\nasbsS\'staticfiles\'\np36\ng3\n(g4\ng5\n(dtRp37\n(dp38\ng34\n(lp39\nsbsS\'admindocs\'\np40\ng3\n(g4\ng5\n(dtRp41\n(dp42\ng34\n(lp43\nsbsS\'messages\'\np44\ng3\n(g4\ng5\n(dtRp45\n(dp46\ng34\n(lp47\nsbsS\'sites\'\np48\ng3\n(g4\ng5\n(dp49\nS\'Site\'\np50\n(dp51\ng9\n(dp52\nS\'domain\'\np53\n(dp54\ng13\ng14\nsg15\nI100\nssVid\np55\n(dp56\ng13\ncdjango.db.models.fields\nAutoField\np57\nsg16\nI01\nssS\'name\'\np58\n(dp59\ng13\ng14\nsg15\nI50\nsssg24\n(dp60\ng26\n(lp61\nsg28\nS\'django_site\'\np62\nsg30\nS\'\'\nsg31\ng55\nssstRp63\n(dp64\ng34\n(lp65\ng50\nasbsS\'auth\'\np66\ng3\n(g4\ng5\n(dp67\nS\'Group\'\np68\n(dp69\ng9\n(dp70\nS\'permissions\'\np71\n(dp72\ng13\ncdjango.db.models.fields.related\nManyToManyField\np73\nsS\'related_model\'\np74\nVauth.Permission\np75\nssg55\n(dp76\ng13\ng57\nsg16\nI01\nssg58\n(dp77\ng15\nI80\nsg13\ng14\nsS\'unique\'\np78\nI01\nsssg24\n(dp79\ng26\n(lp80\nsg28\nVauth_group\np81\nsg30\nS\'\'\nsg31\ng55\nsssS\'User\'\np82\n(dp83\ng9\n(dp84\nS\'username\'\np85\n(dp86\ng15\nI30\nsg13\ng14\nsg78\nI01\nssS\'first_name\'\np87\n(dp88\ng13\ng14\nsg15\nI30\nssS\'last_name\'\np89\n(dp90\ng13\ng14\nsg15\nI30\nssS\'is_active\'\np91\n(dp92\ng13\ncdjango.db.models.fields\nBooleanField\np93\nssS\'email\'\np94\n(dp95\ng13\ncdjango.db.models.fields\nEmailField\np96\nsg15\nI75\nssS\'is_superuser\'\np97\n(dp98\ng13\ng93\nssS\'is_staff\'\np99\n(dp100\ng13\ng93\nssS\'last_login\'\np101\n(dp102\ng13\ng19\nssS\'groups\'\np103\n(dp104\ng13\ng73\nsg74\nVauth.Group\np105\nssS\'user_permissions\'\np106\n(dp107\ng13\ng73\nsg74\nVauth.Permission\np108\nssS\'password\'\np109\n(dp110\ng13\ng14\nsg15\nI128\nssg55\n(dp111\ng13\ng57\nsg16\nI01\nssS\'date_joined\'\np112\n(dp113\ng13\ng19\nsssg24\n(dp114\ng26\n(lp115\nsg28\nVauth_user\np116\nsg30\nS\'\'\nsg31\ng55\nsssS\'Permission\'\np117\n(dp118\ng9\n(dp119\nS\'codename\'\np120\n(dp121\ng13\ng14\nsg15\nI100\nssg55\n(dp122\ng13\ng57\nsg16\nI01\nssS\'content_type\'\np123\n(dp124\ng13\ncdjango.db.models.fields.related\nForeignKey\np125\nsg74\nVcontenttypes.ContentType\np126\nssg58\n(dp127\ng13\ng14\nsg15\nI50\nsssg24\n(dp128\ng26\n((Vcontent_type\nVcodename\nttp129\nsg28\nVauth_permission\np130\nsg30\nS\'\'\nsg31\ng55\nssstRp131\n(dp132\ng34\n(lp133\ng117\nag68\nag82\nasbsS\'dajax\'\np134\ng3\n(g4\ng5\n(dtRp135\n(dp136\ng34\n(lp137\nsbsS\'admin\'\np138\ng3\n(g4\ng5\n(dp139\nS\'LogEntry\'\np140\n(dp141\ng9\n(dp142\nS\'action_flag\'\np143\n(dp144\ng13\ncdjango.db.models.fields\nPositiveSmallIntegerField\np145\nssS\'action_time\'\np146\n(dp147\ng13\ng19\nssS\'object_repr\'\np148\n(dp149\ng13\ng14\nsg15\nI200\nssS\'object_id\'\np150\n(dp151\ng13\ng23\nsS\'null\'\np152\nI01\nssS\'change_message\'\np153\n(dp154\ng13\ng23\nssS\'user\'\np155\n(dp156\ng13\ng125\nsg74\nVauth.User\np157\nssg123\n(dp158\ng13\ng125\nsg152\nI01\nsg74\nVcontenttypes.ContentType\np159\nssg55\n(dp160\ng13\ng57\nsg16\nI01\nsssg24\n(dp161\ng26\n(lp162\nsg28\nVdjango_admin_log\np163\nsg30\nS\'\'\nsg31\ng55\nssstRp164\n(dp165\ng34\n(lp166\ng140\nasbsS\'contenttypes\'\np167\ng3\n(g4\ng5\n(dp168\nS\'ContentType\'\np169\n(dp170\ng9\n(dp171\nS\'model\'\np172\n(dp173\ng13\ng14\nsg15\nI100\nssS\'app_label\'\np174\n(dp175\ng13\ng14\nsg15\nI100\nssg55\n(dp176\ng13\ng57\nsg16\nI01\nssg58\n(dp177\ng13\ng14\nsg15\nI100\nsssg24\n(dp178\ng26\n((S\'app_label\'\nS\'model\'\nttp179\nsg28\nS\'django_content_type\'\np180\nsg30\nS\'\'\nsg31\ng55\nssstRp181\n(dp182\ng34\n(lp183\ng169\nasbsS\'auditoria\'\np184\ng3\n(g4\ng5\n(dp185\nS\'Resultado\'\np186\n(dp187\ng9\n(dp188\nS\'hoja\'\np189\n(dp190\ng13\ng125\nsg74\nVauditoria.HojaControl\np191\nssS\'variable\'\np192\n(dp193\ng13\ng125\nsg74\nVauditoria.Variable\np194\nssS\'observacion\'\np195\n(dp196\ng13\ng23\nssg55\n(dp197\ng13\ng57\nsg16\nI01\nssS\'valor\'\np198\n(dp199\ng13\ncdjango.db.models.fields\nFloatField\np200\nsssg24\n(dp201\ng26\n(lp202\nsg28\nVauditoria_resultado\np203\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circunscripcion\'\np204\n(dp205\ng9\n(dp206\nS\'descripcion\'\np207\n(dp208\ng13\ng14\nsg15\nL255L\nssg55\n(dp209\ng13\ng57\nsg16\nI01\nsssg24\n(dp210\ng26\n(lp211\nsg28\nVauditoria_circunscripcion\np212\nsg30\nS\'\'\nsg31\ng55\nsssS\'Area\'\np213\n(dp214\ng9\n(dp215\ng207\n(dp216\ng13\ng14\nsg15\nL255L\nssg55\n(dp217\ng13\ng57\nsg16\nI01\nsssg24\n(dp218\ng26\n(lp219\nsg28\nVauditoria_area\np220\nsg30\nS\'\'\nsg31\ng55\nsssS\'HojaControl\'\np221\n(dp222\ng9\n(dp223\nS\'area\'\np224\n(dp225\ng13\ng125\nsg74\nVauditoria.Area\np226\nsS\'db_column\'\np227\nVarea\np228\nssS\'identificador\'\np229\n(dp230\ng13\ng125\nsg74\nVauditoria.Identificador\np231\nsg227\nVidentificador\np232\nssS\'usuario\'\np233\n(dp234\ng13\ng125\nsg74\nVauth.User\np235\nsg227\nVusuario\np236\nssS\'pac\'\np237\n(dp238\ng13\ng125\nsg74\nVauditoria.Pac\np239\nsg227\nVpac\np240\nssS\'circuito\'\np241\n(dp242\ng13\ng125\nsg74\nVauditoria.Circuito\np243\nsg227\nVcircuito\np244\nssg207\n(dp245\ng13\ng14\nsg15\nL255L\nssS\'fecha_public\'\np246\n(dp247\ng13\ncdjango.db.models.fields\nDateField\np248\nssS\'circunscripcion\'\np249\n(dp250\ng13\ng125\nsg74\nVauditoria.Circunscripcion\np251\nsg227\nVcircunscripcion\np252\nssS\'activa\'\np253\n(dp254\ng13\ng14\nsg15\nI10\nssg55\n(dp255\ng13\ng57\nsg16\nI01\nsssg24\n(dp256\ng26\n(lp257\nsg28\nVauditoria_hojacontrol\np258\nsg30\nS\'\'\nsg31\ng55\nsssS\'Identificador\'\np259\n(dp260\ng9\n(dp261\ng207\n(dp262\ng15\nL255L\nsg13\ng14\nsg78\nI01\nssg55\n(dp263\ng13\ng57\nsg16\nI01\nsssg24\n(dp264\ng26\n(lp265\nsg28\nVauditoria_identificador\np266\nsg30\nS\'\'\nsg31\ng55\nsssS\'Factor\'\np267\n(dp268\ng9\n(dp269\ng207\n(dp270\ng13\ng14\nsg15\nL255L\nssg55\n(dp271\ng13\ng57\nsg16\nI01\nsssg24\n(dp272\ng26\n(lp273\nsg28\nVauditoria_factor\np274\nsg30\nS\'\'\nsg31\ng55\nsssS\'Modlidad\'\np275\n(dp276\ng9\n(dp277\ng207\n(dp278\ng13\ng14\nsg15\nL255L\nssg55\n(dp279\ng13\ng57\nsg16\nI01\nsssg24\n(dp280\ng26\n(lp281\nsg28\nVauditoria_modlidad\np282\nsg30\nS\'\'\nsg31\ng55\nsssS\'Resolucion\'\np283\n(dp284\ng9\n(dp285\nS\'ejercicio\'\np286\n(dp287\ng13\ncdjango.db.models.fields\nIntegerField\np288\nsg15\nI4\nssS\'nro\'\np289\n(dp290\ng13\ng288\nssS\'accion\'\np291\n(dp292\ng13\ng14\nsg15\nI15\nssS\'fecha\'\np293\n(dp294\ng13\ng248\nssg207\n(dp295\ng13\ng23\nssg55\n(dp296\ng13\ng57\nsg16\nI01\nsssg24\n(dp297\ng26\n(lp298\nsg28\nVauditoria_resolucion\np299\nsg30\nS\'\'\nsg31\ng55\nsssS\'Indicador\'\np300\n(dp301\ng9\n(dp302\ng207\n(dp303\ng13\ng14\nsg15\nL255L\nssg55\n(dp304\ng13\ng57\nsg16\nI01\nssS\'factor\'\np305\n(dp306\ng13\ng125\nsg74\nVauditoria.Factor\np307\nsg227\nVfactor\np308\nsssg24\n(dp309\ng26\n(lp310\nsg28\nVauditoria_indicador\np311\nsg30\nS\'\'\nsg31\ng55\nsssS\'Pac\'\np312\n(dp313\ng9\n(dp314\nS\'numero\'\np315\n(dp316\ng13\ng288\nssg275\n(dp317\ng13\ng125\nsg74\nVauditoria.Modlidad\np318\nssS\'resolucion\'\np319\n(dp320\ng13\ng125\nsg74\nVauditoria.Resolucion\np321\nssS\'caracter\'\np322\n(dp323\ng13\ng125\nsg74\nVauditoria.Caracter\np324\nssg207\n(dp325\ng13\ng14\nsg15\nL255L\nssg55\n(dp326\ng13\ng57\nsg16\nI01\nsssg24\n(dp327\ng26\n(lp328\nsg28\nVauditoria_pac\np329\nsg30\nS\'\'\nsg31\ng55\nsssS\'Proceso\'\np330\n(dp331\ng9\n(dp332\ng207\n(dp333\ng13\ng14\nsg15\nL255L\nssg55\n(dp334\ng13\ng57\nsg16\nI01\nsssg24\n(dp335\ng26\n(lp336\nsg28\nVauditoria_proceso\np337\nsg30\nS\'\'\nsg31\ng55\nsssS\'Caracter\'\np338\n(dp339\ng9\n(dp340\ng207\n(dp341\ng13\ng14\nsg15\nL255L\nssg55\n(dp342\ng13\ng57\nsg16\nI01\nsssg24\n(dp343\ng26\n(lp344\nsg28\nVauditoria_caracter\np345\nsg30\nS\'\'\nsg31\ng55\nsssS\'Variable\'\np346\n(dp347\ng9\n(dp348\ng207\n(dp349\ng13\ng14\nsg15\nL255L\nssS\'indicador\'\np350\n(dp351\ng13\ng125\nsg74\nVauditoria.Indicador\np352\nsg227\nVindicador\np353\nssg55\n(dp354\ng13\ng57\nsg16\nI01\nssg198\n(dp355\ng13\ng200\nsssg24\n(dp356\ng26\n(lp357\nsg28\nVauditoria_variable\np358\nsg30\nS\'\'\nsg31\ng55\nsssS\'Circuito\'\np359\n(dp360\ng9\n(dp361\ng207\n(dp362\ng13\ng14\nsg15\nL255L\nssS\'variables\'\np363\n(dp364\ng13\ng73\nsg74\nVauditoria.Variable\np365\nssS\'procesos\'\np366\n(dp367\ng13\ng125\nsg74\nVauditoria.Proceso\np368\nsg227\nVproceso\np369\nssg55\n(dp370\ng13\ng57\nsg16\nI01\nssg198\n(dp371\ng13\ng200\nsssg24\n(dp372\ng26\n(lp373\nsg28\nVauditoria_circuito\np374\nsg30\nS\'\'\nsg31\ng55\nsssS\'Documentos\'\np375\n(dp376\ng9\n(dp377\ng207\n(dp378\ng13\ng23\nssS\'titulo\'\np379\n(dp380\ng13\ng14\nsg15\nL255L\nssS\'docu_path\'\np381\n(dp382\ng13\ncdjango.db.models.fields.files\nFileField\np383\nsg15\nI100\nssg55\n(dp384\ng13\ng57\nsg16\nI01\nssS\'fecha_registro\'\np385\n(dp386\ng13\ng19\nsssg24\n(dp387\ng26\n(lp388\nsg28\nVauditoria_documentos\np389\nsg30\nS\'\'\nsg31\ng55\nssstRp390\n(dp391\ng34\n(lp392\ng213\nag204\nag267\nag300\nag330\nag259\nag346\nag359\nag283\nag338\nag275\nag312\nag221\nag186\nag375\nasbsS\'django_evolution\'\np393\ng3\n(g4\ng5\n(dp394\nS\'Evolution\'\np395\n(dp396\ng9\n(dp397\nS\'label\'\np398\n(dp399\ng13\ng14\nsg15\nI100\nssS\'version\'\np400\n(dp401\ng13\ng125\nsg74\nVdjango_evolution.Version\np402\nssg55\n(dp403\ng13\ng57\nsg16\nI01\nssg174\n(dp404\ng13\ng14\nsg15\nI200\nsssg24\n(dp405\ng26\n(lp406\nsg28\nS\'django_evolution\'\np407\nsg30\nS\'\'\nsg31\ng55\nsssS\'Version\'\np408\n(dp409\ng9\n(dp410\nS\'when\'\np411\n(dp412\ng13\ng19\nssg55\n(dp413\ng13\ng57\nsg16\nI01\nssS\'signature\'\np414\n(dp415\ng13\ng23\nsssg24\n(dp416\ng26\n(lp417\nsg28\nS\'django_project_version\'\np418\nsg30\nS\'\'\nsg31\ng55\nssstRp419\n(dp420\ng34\n(lp421\ng408\nag395\nasbsS\'__version__\'\np422\nI1\nsS\'dajaxice\'\np423\ng3\n(g4\ng5\n(dtRp424\n(dp425\ng34\n(lp426\nsbs.','2013-09-24 14:22:32');
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
INSERT INTO `django_session` VALUES ('07d6578e4850ab2a9a0ba06b5b4b3253','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-10 13:44:52'),('0se05ozsowzt41ykgbsjx7rxwh5ukpey','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 18:05:43'),('1io30bwh4r2ocft64x3co7lkox2y3qkl','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-11-01 19:13:52'),('2437f916e4d2cb7c813fdf89814afa6a','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-09-26 15:25:29'),('28dx1yyliaqo1g8bakg8wyqb4idrv38f','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 23:11:49'),('2t4gnp2zkey8xaghi3jlbvwsvp36g50m','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-09-26 14:14:27'),('3eksj60cohvhgvx9nl5w80qbclgx6uby','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 04:54:28'),('424ee214921dbfe4d02740eade3782f1','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-14 16:41:55'),('48f507e58b07430520bccfc38e15d70b','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=\n','2013-10-03 15:09:16'),('4af5ae9f48c7956f0da7f50b937181ed','YWMxYjA2YWVmZGZjZjNiMDc5NDU3MTY0MzE2N2JjYzRkMTM2ZjU5YzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2013-09-27 16:23:20'),('4b6d61e12222f93a6a1fba1b225bc71b','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-15 15:22:47'),('4bdf7225bab59a86d0e6e2529d7ef4b1','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=\n','2013-10-14 19:50:30'),('4o30rwnn9enodg3ohoceuzefgp6sbba5','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-04 14:09:42'),('4qyu26jsyu8gx8bg28kmh39fcwh11ptk','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-23 14:44:02'),('56351136fe8cf92886868a1d9becd616','NTc4NDIwZWNmNzMzZmFkMGNiODY3Y2E1YmEwZTdkNGQ2ZjU0NDllYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n','2013-10-14 18:42:36'),('59d879e568f9e7915301d42e3a71113b','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-14 16:41:16'),('5f85a7f5963e759db80df16d36c6b573','NTc4NDIwZWNmNzMzZmFkMGNiODY3Y2E1YmEwZTdkNGQ2ZjU0NDllYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n','2013-10-15 15:46:06'),('638abjybjcgmotdxari88mthhj43klox','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-21 12:50:52'),('79ogs1xqwkgcm742ztgd9kvc0oray548','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-11-05 02:40:01'),('7fab1d5fca6a362ee27a4c177a8ac465','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-14 17:23:58'),('873168df703564789c9009f41680dc2f','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=\n','2013-10-02 15:27:03'),('8d1f111c6af6ce307ec0bb46d397bf78','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-15 14:20:47'),('97c592515f3e71f339215487c752098b','NjRlNDk5OWRkN2ZiMWZkZjQ5MjAzMTEyZGVmODVhZGIyODZiYmRlZTqAAn1xAShVCnRlc3Rjb29r\naWVVBndvcmtlZFUSX2F1dGhfdXNlcl9iYWNrZW5kcQJVKWRqYW5nby5jb250cmliLmF1dGguYmFj\na2VuZHMuTW9kZWxCYWNrZW5kcQNVDV9hdXRoX3VzZXJfaWRxBIoBA3Uu\n','2013-10-02 15:35:31'),('99111fdb3d55219c0643695fc57ce2f1','NTc4NDIwZWNmNzMzZmFkMGNiODY3Y2E1YmEwZTdkNGQ2ZjU0NDllYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n','2013-10-15 14:40:16'),('9nfmnp78xabc17wr96ceqy5y4ezz0ypr','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-22 12:02:19'),('a40ba1datz2iemq9k7r6n2qwvkc28s4a','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 15:27:02'),('a4305726da55936c8dc76d7f5d55c1ae','NTc4NDIwZWNmNzMzZmFkMGNiODY3Y2E1YmEwZTdkNGQ2ZjU0NDllYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n','2013-10-15 13:38:44'),('a90c5ceeaed492dda4bc2839dfdec0e1','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-09-26 16:29:55'),('b50b4352526967030c409277f8e47c63','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=\n','2013-10-03 16:26:37'),('be0014fdee00b519329e7291978ddf7a','NTc4NDIwZWNmNzMzZmFkMGNiODY3Y2E1YmEwZTdkNGQ2ZjU0NDllYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n','2013-10-03 15:17:41'),('cfa49cd5b236feb6971870af08813f6d','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-02 14:14:19'),('d8inbg43fhqnilkpn4omh9vmfqw3yh43','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-10-30 18:46:02'),('durlt3inbm0ooyzi91byl2tdt8775jiz','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 17:31:09'),('e6a0ce87f95e3ebd3a070752bf57c362','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-14 16:21:43'),('ed4bfb4505812848010dbab65f2182d9','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-14 16:10:47'),('ehqa0sm2qvqqaurwr1apbn7x0m86nn8y','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-01 17:29:50'),('f7b52f9b0259cbdb679c07d9a9de40a5','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-10-14 16:23:12'),('fdi2tvkisoo387jxzle7rglasg6xyr4k','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-24 21:22:38'),('fuvyt5x0x22b6dw8n5c0ws9qiir7u7ov','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-07 17:09:07'),('gsit245jlh7akgmmpmk071t17kgsp6k3','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 13:55:08'),('igiy2pqqumsn1au7uj810u2dk635ee9t','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-07 15:53:25'),('lknjepkubfnh7azsyiku651xncmg267w','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-17 23:15:07'),('mlh24bq0t9j9am9dxxvi1trvms6z5v0v','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-07 18:12:58'),('mwc4rwkdhfmhs55fm9spw3jis395dny6','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-08 15:43:18'),('n41zqsgn7wvphvy71kzkl75ngaup3yta','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-17 18:55:09'),('n5cwji3i9h0us6j4b586rwqsz9fyhxhq','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-07 16:07:37'),('n8edoxs0hksnr1aohibgvv1wzib6avgl','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-21 19:29:47'),('ocwft9yx23kn335oykrcojebd0t9l94u','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-11-01 17:29:16'),('p4m327zsp69fss493hbl86ewmpsejrfb','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-04 14:03:54'),('p81vqo8dx3ztsu1a0lto8nv1ijkk65zk','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-10-30 18:38:13'),('qdr0xzhnb0jt4aloedm2q1xcnczzhkt7','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-31 22:52:43'),('ry1o2uyzs65s0uzhfifvzwv1ldi7abzz','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 16:30:55'),('t4vixlph0gacdxv8qddjulmbx05msznr','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-08 14:43:14'),('t91katw72a5z4vpylnneatpfvin1pjo1','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-30 22:25:18'),('u7p7v8vdae1ef541rm6ony2h65e4dynt','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 15:59:14'),('vh2j03klbvntx1qvdbfugclzwbt9rwai','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 16:59:37'),('vhclvenasbw81rxe63pvhlgtwsvghjci','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-08 12:48:08'),('x0bg4dt2kmlas877db1fpife8avll7wv','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-08 11:11:47'),('z477zwrub2bfmeelrvh04rc9g6rr41ab','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-11-07 22:45:37'),('zwyazuwid71yoa87e2s016s4p4s0brfe','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 21:07:35');
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

--
-- Temporary table structure for view `vresultados`
--

DROP TABLE IF EXISTS `vresultados`;
/*!50001 DROP VIEW IF EXISTS `vresultados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vresultados` (
  `variable_id` tinyint NOT NULL,
  `variable` tinyint NOT NULL,
  `valor_total` tinyint NOT NULL,
  `valor_obtenido` tinyint NOT NULL,
  `observacion` tinyint NOT NULL,
  `circuito_id` tinyint NOT NULL,
  `circuito` tinyint NOT NULL,
  `indicador` tinyint NOT NULL,
  `factor` tinyint NOT NULL,
  `hoja_id` tinyint NOT NULL,
  `hoja_descripcion` tinyint NOT NULL,
  `circunscripcion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vresultados`
--

/*!50001 DROP TABLE IF EXISTS `vresultados`*/;
/*!50001 DROP VIEW IF EXISTS `vresultados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vresultados` AS select `v`.`id` AS `variable_id`,`v`.`descripcion` AS `variable`,`v`.`valor` AS `valor_total`,`r`.`valor` AS `valor_obtenido`,`r`.`observacion` AS `observacion`,`c`.`id` AS `circuito_id`,`c`.`descripcion` AS `circuito`,`i`.`descripcion` AS `indicador`,`f`.`descripcion` AS `factor`,`h`.`id` AS `hoja_id`,`h`.`descripcion` AS `hoja_descripcion`,`cir`.`descripcion` AS `circunscripcion` from ((((((((`auditoria_circuito` `c` join `auditoria_circuito_variables` `cv`) join `auditoria_hojacontrol` `h`) join `auditoria_variable` `v`) join `auditoria_resultado` `r`) join `auditoria_circuito` `p`) join `auditoria_indicador` `i`) join `auditoria_factor` `f`) join `auditoria_circunscripcion` `cir`) where ((`cv`.`circuito_id` = `c`.`id`) and (`cv`.`variable_id` = `v`.`id`) and (`r`.`circuito_id` = `c`.`id`) and (`r`.`variable_id` = `v`.`id`) and (`h`.`id` = `r`.`hoja_id`) and (`c`.`proceso` = `p`.`id`) and (`v`.`indicador` = `i`.`id`) and (`f`.`id` = `i`.`factor`) and (`cir`.`id` = `h`.`circunscripcion`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-22 11:10:43
