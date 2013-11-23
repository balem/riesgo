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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_circuito`
--

LOCK TABLES `auditoria_circuito` WRITE;
/*!40000 ALTER TABLE `auditoria_circuito` DISABLE KEYS */;
INSERT INTO `auditoria_circuito` VALUES (1,'Control de elaboracion de Pliego de Bases y Condiciones',30,1),(2,'Control de Espeficaciones Tecnicas',70,1);
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
  CONSTRAINT `variable_id_refs_id_84425295` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_circuito_variables`
--

LOCK TABLES `auditoria_circuito_variables` WRITE;
/*!40000 ALTER TABLE `auditoria_circuito_variables` DISABLE KEYS */;
INSERT INTO `auditoria_circuito_variables` VALUES (13,1,330),(14,1,331),(15,1,334),(16,1,335),(17,1,336),(18,1,337),(19,1,338),(20,1,344),(21,1,345),(22,1,346),(23,1,356),(24,1,364),(25,1,365),(26,1,366),(27,1,367),(28,1,368),(29,1,369),(30,1,370),(31,1,371),(32,1,372),(33,1,373),(34,1,374),(35,1,375),(36,1,376),(37,1,379),(38,1,380),(39,1,381),(40,1,382),(41,1,383),(1,1,385),(2,1,386),(3,1,387),(4,1,388),(5,1,389),(6,1,391),(7,1,393),(8,1,394),(9,1,399),(10,1,400),(11,1,401),(12,1,402),(42,2,328),(43,2,330),(44,2,402);
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
  `descripcion` varchar(255) NOT NULL,
  `fecha_public` date NOT NULL,
  `activa` varchar(10) NOT NULL,
  `circuito` int(11) NOT NULL,
  `circunscripcion` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `pac` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auditoria_hojacontrol_6ecba166` (`circuito`),
  KEY `auditoria_hojacontrol_1c0ab5cf` (`circunscripcion`),
  KEY `auditoria_hojacontrol_a4563695` (`area`),
  KEY `auditoria_hojacontrol_591f98ef` (`pac`),
  KEY `auditoria_hojacontrol_c69e2c81` (`usuario`),
  CONSTRAINT `area_refs_id_b296048e` FOREIGN KEY (`area`) REFERENCES `auditoria_area` (`id`),
  CONSTRAINT `circuito_refs_id_0607ddd6` FOREIGN KEY (`circuito`) REFERENCES `auditoria_circuito` (`id`),
  CONSTRAINT `circunscripcion_refs_id_629a6faa` FOREIGN KEY (`circunscripcion`) REFERENCES `auditoria_circunscripcion` (`id`),
  CONSTRAINT `pac_refs_id_ace78361` FOREIGN KEY (`pac`) REFERENCES `auditoria_pac` (`id`),
  CONSTRAINT `usuario_refs_id_56c3ed8c` FOREIGN KEY (`usuario`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol`
--

LOCK TABLES `auditoria_hojacontrol` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol` VALUES (8,'Descripcion de prue','2013-10-08','Inactivo',1,1,2,1,1),(9,'Servicio de Lavado, engrace y gomería - Ad Referendum','2013-10-10','Inactivo',1,1,1,1,1),(10,'1','2013-10-01','Inactivo',1,1,1,3,1),(11,'2','2013-10-02','Inactivo',1,1,1,1,1),(12,'Descrip-prueba','2013-10-16','Inactivo',1,1,1,2,1),(13,'prueba','2013-10-10','Inactivo',1,2,1,1,1),(14,'aaaaaaaaaaa','2013-10-09','Inactivo',1,1,1,10,1),(15,'SERVICIO DE CATERING - CONTRATO ABIERTO - AD REFERENDUM','2013-10-09','Inactivo',1,2,1,1,1),(16,'SERVICIO DE CATERING - CONTRATO ABIERTO - AD REFERENDUM','2013-10-08','Inactivo',2,1,1,1,1),(17,'225/13','2013-10-23','Inactivo',1,1,1,1,1);
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
  CONSTRAINT `variable_id_refs_id_1addb316` FOREIGN KEY (`variable_id`) REFERENCES `auditoria_variable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=715 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resultado`
--

LOCK TABLES `auditoria_resultado` WRITE;
/*!40000 ALTER TABLE `auditoria_resultado` DISABLE KEYS */;
INSERT INTO `auditoria_resultado` VALUES (343,1,330,8,5,''),(344,1,331,8,5,''),(345,1,334,8,30,''),(346,1,335,8,15,''),(347,1,336,8,25,''),(348,1,337,8,50,''),(349,1,338,8,0,''),(350,1,344,8,15,''),(351,1,345,8,0,''),(352,1,346,8,0,''),(353,1,356,8,5,''),(354,1,364,8,0,''),(355,1,365,8,30,''),(356,1,366,8,25,''),(357,1,367,8,0,''),(358,1,368,8,0,''),(359,1,369,8,0,''),(360,1,370,8,0,''),(361,1,371,8,0,''),(362,1,372,8,0,''),(363,1,373,8,0,''),(364,1,374,8,0,''),(365,1,375,8,0,''),(366,1,376,8,0,''),(367,1,379,8,0,''),(368,1,380,8,0,''),(369,1,381,8,0,''),(370,1,382,8,0,''),(371,1,383,8,0,''),(372,1,385,8,0,''),(373,1,386,8,0,''),(374,1,387,8,0,''),(375,1,388,8,0,''),(376,1,389,8,0,''),(377,1,391,8,0,''),(378,1,393,8,0,''),(379,1,394,8,0,''),(380,1,399,8,0,''),(381,1,400,8,0,''),(382,1,401,8,0,''),(383,1,402,8,0,''),(384,1,330,9,0,''),(385,1,331,9,0,''),(386,1,334,9,0,''),(387,1,335,9,0,''),(388,1,336,9,0,''),(389,1,337,9,0,''),(390,1,338,9,0,''),(391,1,344,9,0,''),(392,1,345,9,0,''),(393,1,346,9,0,''),(394,1,356,9,0,''),(395,1,364,9,0,''),(396,1,365,9,0,''),(397,1,366,9,0,''),(398,1,367,9,0,''),(399,1,368,9,0,''),(400,1,369,9,0,''),(401,1,370,9,0,''),(402,1,371,9,0,''),(403,1,372,9,0,''),(404,1,373,9,0,''),(405,1,374,9,0,''),(406,1,375,9,0,''),(407,1,376,9,0,''),(408,1,379,9,0,''),(409,1,380,9,0,''),(410,1,381,9,0,''),(411,1,382,9,0,''),(412,1,383,9,0,''),(413,1,385,9,0,''),(414,1,386,9,0,''),(415,1,387,9,0,''),(416,1,388,9,0,''),(417,1,389,9,0,''),(418,1,391,9,0,''),(419,1,393,9,0,''),(420,1,394,9,0,''),(421,1,399,9,0,''),(422,1,400,9,0,''),(423,1,401,9,0,''),(424,1,402,9,0,''),(425,1,330,10,0,''),(426,1,331,10,0,''),(427,1,334,10,0,''),(428,1,335,10,0,''),(429,1,336,10,0,''),(430,1,337,10,0,''),(431,1,338,10,0,''),(432,1,344,10,0,''),(433,1,345,10,0,''),(434,1,346,10,0,''),(435,1,356,10,0,''),(436,1,364,10,0,''),(437,1,365,10,0,''),(438,1,366,10,0,''),(439,1,367,10,0,''),(440,1,368,10,0,''),(441,1,369,10,0,''),(442,1,370,10,0,''),(443,1,371,10,0,''),(444,1,372,10,0,''),(445,1,373,10,0,''),(446,1,374,10,0,''),(447,1,375,10,0,''),(448,1,376,10,0,''),(449,1,379,10,0,''),(450,1,380,10,0,''),(451,1,381,10,0,''),(452,1,382,10,0,''),(453,1,383,10,0,''),(454,1,385,10,0,''),(455,1,386,10,0,''),(456,1,387,10,0,''),(457,1,388,10,0,''),(458,1,389,10,0,''),(459,1,391,10,0,''),(460,1,393,10,0,''),(461,1,394,10,0,''),(462,1,399,10,0,''),(463,1,400,10,0,''),(464,1,401,10,0,''),(465,1,402,10,0,''),(466,1,330,11,0,''),(467,1,331,11,0,''),(468,1,334,11,0,''),(469,1,335,11,0,''),(470,1,336,11,0,''),(471,1,337,11,0,''),(472,1,338,11,0,''),(473,1,344,11,0,''),(474,1,345,11,0,''),(475,1,346,11,0,''),(476,1,356,11,0,''),(477,1,364,11,0,''),(478,1,365,11,0,''),(479,1,366,11,0,''),(480,1,367,11,0,''),(481,1,368,11,0,''),(482,1,369,11,0,''),(483,1,370,11,0,''),(484,1,371,11,0,''),(485,1,372,11,0,''),(486,1,373,11,0,''),(487,1,374,11,0,''),(488,1,375,11,0,''),(489,1,376,11,0,''),(490,1,379,11,0,''),(491,1,380,11,0,''),(492,1,381,11,0,''),(493,1,382,11,0,''),(494,1,383,11,0,''),(495,1,385,11,0,''),(496,1,386,11,0,''),(497,1,387,11,0,''),(498,1,388,11,0,''),(499,1,389,11,0,''),(500,1,391,11,0,''),(501,1,393,11,0,''),(502,1,394,11,0,''),(503,1,399,11,0,''),(504,1,400,11,0,''),(505,1,401,11,0,''),(506,1,402,11,0,''),(507,1,330,12,0,''),(508,1,331,12,0,''),(509,1,334,12,0,''),(510,1,335,12,0,''),(511,1,336,12,0,''),(512,1,337,12,0,''),(513,1,338,12,0,''),(514,1,344,12,0,''),(515,1,345,12,0,''),(516,1,346,12,0,''),(517,1,356,12,0,''),(518,1,364,12,0,''),(519,1,365,12,0,''),(520,1,366,12,0,''),(521,1,367,12,0,''),(522,1,368,12,0,''),(523,1,369,12,0,''),(524,1,370,12,0,''),(525,1,371,12,0,''),(526,1,372,12,0,''),(527,1,373,12,0,''),(528,1,374,12,0,''),(529,1,375,12,0,''),(530,1,376,12,0,''),(531,1,379,12,0,''),(532,1,380,12,0,''),(533,1,381,12,0,''),(534,1,382,12,0,''),(535,1,383,12,0,''),(536,1,385,12,0,''),(537,1,386,12,0,''),(538,1,387,12,0,''),(539,1,388,12,0,''),(540,1,389,12,0,''),(541,1,391,12,0,''),(542,1,393,12,0,''),(543,1,394,12,0,''),(544,1,399,12,0,''),(545,1,400,12,0,''),(546,1,401,12,0,''),(547,1,402,12,0,''),(548,1,330,14,5,''),(549,1,331,14,5,''),(550,1,334,14,30,''),(551,1,335,14,15,''),(552,1,336,14,25,''),(553,1,337,14,50,''),(554,1,338,14,50,''),(555,1,344,14,15,''),(556,1,345,14,20,''),(557,1,346,14,20,''),(558,1,356,14,0,''),(559,1,364,14,30,''),(560,1,365,14,30,''),(561,1,366,14,25,''),(562,1,367,14,25,''),(563,1,368,14,25,''),(564,1,369,14,35,''),(565,1,370,14,20,''),(566,1,371,14,20,''),(567,1,372,14,20,''),(568,1,373,14,20,''),(569,1,374,14,10,''),(570,1,375,14,15,''),(571,1,376,14,20,''),(572,1,379,14,50,''),(573,1,380,14,5,''),(574,1,381,14,5,''),(575,1,382,14,5,''),(576,1,383,14,0,''),(577,1,385,14,50,''),(578,1,386,14,25,''),(579,1,387,14,5,''),(580,1,388,14,5,''),(581,1,389,14,40,''),(582,1,391,14,30,''),(583,1,393,14,30,''),(584,1,394,14,30,''),(585,1,399,14,10,''),(586,1,400,14,15,''),(587,1,401,14,15,''),(588,1,402,14,10,''),(589,1,330,13,0,''),(590,1,331,13,0,''),(591,1,334,13,0,''),(592,1,335,13,0,''),(593,1,336,13,0,''),(594,1,337,13,0,''),(595,1,338,13,0,''),(596,1,344,13,0,''),(597,1,345,13,0,''),(598,1,346,13,0,''),(599,1,356,13,0,''),(600,1,364,13,0,''),(601,1,365,13,0,''),(602,1,366,13,0,''),(603,1,367,13,0,''),(604,1,368,13,0,''),(605,1,369,13,0,''),(606,1,370,13,0,''),(607,1,371,13,0,''),(608,1,372,13,0,''),(609,1,373,13,0,''),(610,1,374,13,0,''),(611,1,375,13,0,''),(612,1,376,13,0,''),(613,1,379,13,0,''),(614,1,380,13,0,''),(615,1,381,13,0,''),(616,1,382,13,0,''),(617,1,383,13,0,''),(618,1,385,13,0,''),(619,1,386,13,0,''),(620,1,387,13,0,''),(621,1,388,13,0,''),(622,1,389,13,0,''),(623,1,391,13,0,''),(624,1,393,13,0,''),(625,1,394,13,0,''),(626,1,399,13,0,''),(627,1,400,13,0,''),(628,1,401,13,0,''),(629,1,402,13,0,''),(630,1,330,15,5,''),(631,1,331,15,0,''),(632,1,334,15,0,''),(633,1,335,15,0,''),(634,1,336,15,0,''),(635,1,337,15,0,''),(636,1,338,15,0,''),(637,1,344,15,0,''),(638,1,345,15,0,''),(639,1,346,15,0,''),(640,1,356,15,0,''),(641,1,364,15,0,''),(642,1,365,15,0,''),(643,1,366,15,0,''),(644,1,367,15,0,''),(645,1,368,15,25,''),(646,1,369,15,0,''),(647,1,370,15,0,''),(648,1,371,15,0,''),(649,1,372,15,0,''),(650,1,373,15,0,''),(651,1,374,15,0,''),(652,1,375,15,0,''),(653,1,376,15,0,''),(654,1,379,15,50,''),(655,1,380,15,0,''),(656,1,381,15,0,''),(657,1,382,15,0,''),(658,1,383,15,0,''),(659,1,385,15,0,''),(660,1,386,15,0,''),(661,1,387,15,0,''),(662,1,388,15,0,''),(663,1,389,15,0,''),(664,1,391,15,0,''),(665,1,393,15,0,''),(666,1,394,15,0,''),(667,1,399,15,0,''),(668,1,400,15,0,''),(669,1,401,15,15,''),(670,1,402,15,0,''),(671,2,328,16,5,''),(672,2,330,16,5,''),(673,2,402,16,10,''),(674,1,330,17,0,''),(675,1,331,17,0,''),(676,1,334,17,0,''),(677,1,335,17,0,''),(678,1,336,17,0,''),(679,1,337,17,0,''),(680,1,338,17,0,''),(681,1,344,17,0,''),(682,1,345,17,0,''),(683,1,346,17,0,''),(684,1,356,17,0,''),(685,1,364,17,0,''),(686,1,365,17,0,''),(687,1,366,17,0,''),(688,1,367,17,25,'sfsad'),(689,1,368,17,0,'dfasf'),(690,1,369,17,0,''),(691,1,370,17,0,''),(692,1,371,17,0,''),(693,1,372,17,0,'dsaf'),(694,1,373,17,0,''),(695,1,374,17,0,''),(696,1,375,17,0,''),(697,1,376,17,0,''),(698,1,379,17,0,''),(699,1,380,17,0,''),(700,1,381,17,0,''),(701,1,382,17,0,''),(702,1,383,17,0,''),(703,1,385,17,0,''),(704,1,386,17,0,''),(705,1,387,17,0,''),(706,1,388,17,0,''),(707,1,389,17,0,''),(708,1,391,17,0,''),(709,1,393,17,0,''),(710,1,394,17,0,''),(711,1,399,17,0,''),(712,1,400,17,0,''),(713,1,401,17,0,''),(714,1,402,17,0,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'bienes_y_servicios'),(1,'contrataciones'),(3,'control_tecnico'),(4,'ingresos'),(7,'mantenimiento'),(6,'obras'),(5,'pagos');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,34),(2,1,43),(3,1,52),(4,1,55),(5,1,58),(6,1,59),(7,1,60),(8,2,34),(9,2,43),(10,2,52),(11,2,55),(12,2,56),(13,2,58),(14,2,59),(15,2,60),(16,3,34),(17,3,43),(18,3,52),(19,3,55),(20,3,56),(21,3,58),(22,3,59),(23,3,60),(24,4,34),(25,4,43),(26,4,52),(27,4,55),(28,4,58),(29,4,59),(30,4,60),(31,5,34),(32,5,43),(33,5,52),(34,5,55),(35,5,56),(36,5,58),(37,5,59),(38,5,60),(39,6,34),(40,6,43),(41,6,52),(42,6,55),(43,6,56),(44,6,58),(45,6,59),(46,6,60),(47,7,34),(48,7,43),(49,7,52),(50,7,56),(51,7,58),(52,7,59),(53,7,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$GbjBAbvLtXOL$2DYNAwLtpz2kIGBHkY9J9dSAGeT91UTggHpj8k72Bjs=','2013-10-19 15:02:02',1,'admin','Enrique','Rodriguez','enriquev.rodriguez@gmail.com',1,1,'2013-09-24 14:22:31'),(2,'pbkdf2_sha256$10000$WWVl5C4gSPpR$VnapuoVjf5AxdXt+uOTUBpj1FYm7Qqub1mFAqaIJbbo=','2013-10-11 02:19:38',0,'enrique','Enrique','Rodríguez','enriquev.rodriguez@gmail.com',0,1,'2013-09-26 13:13:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-09-24 15:46:06',1,14,'1','Control de elaboracion de Pliego de Bases y Condiciones',1,''),(2,'2013-09-24 20:54:10',1,20,'2','Resultado object',1,''),(3,'2013-09-24 20:55:15',1,20,'3','Resultado object',1,''),(4,'2013-09-25 04:04:21',1,20,'1','Resultado object',1,''),(5,'2013-09-25 04:22:08',1,20,'2','Resultado object',1,''),(6,'2013-09-25 04:25:11',1,20,'2','Resultado object',2,'Modificado/a variable.'),(7,'2013-09-26 12:59:27',1,7,'1','División de Control de Contrataciones',2,'Modificado/a descripcion.'),(8,'2013-09-26 12:59:53',1,7,'2','División de Control de provisiones de bienes y servicios',1,''),(9,'2013-09-26 13:00:42',1,7,'3','Departamento de control técnico',1,''),(10,'2013-09-26 13:01:08',1,7,'4','División de control de ingresos',1,''),(11,'2013-09-26 13:01:22',1,7,'5','División de control de pagos',1,''),(12,'2013-09-26 13:01:37',1,7,'6','División de Control de Obras',1,''),(13,'2013-09-26 13:01:48',1,7,'7','División de Control de Mantenimiento',1,''),(14,'2013-09-26 13:04:45',1,2,'1','contrataciones',1,''),(15,'2013-09-26 13:05:59',1,2,'2','bienes_y_servicios',1,''),(16,'2013-09-26 13:07:33',1,2,'3','control_tecnico',1,''),(17,'2013-09-26 13:08:30',1,2,'4','ingresos',1,''),(18,'2013-09-26 13:09:54',1,2,'5','pagos',1,''),(19,'2013-09-26 13:11:03',1,2,'6','obras',1,''),(20,'2013-09-26 13:12:04',1,2,'7','mantenimiento',1,''),(21,'2013-09-26 13:13:03',1,3,'2','enrique',1,''),(22,'2013-09-26 13:13:38',1,3,'2','enrique',2,'Modificado/a password, first_name, last_name, email y groups.'),(23,'2013-09-26 19:24:22',1,14,'2','Control de Espeficaciones Tecnicas',1,''),(24,'2013-10-11 01:11:40',1,19,'5','jsjsjs',3,''),(25,'2013-10-11 01:11:40',1,19,'4','para dummies',3,''),(26,'2013-10-11 01:11:40',1,19,'3','otro',3,''),(27,'2013-10-11 01:11:40',1,19,'2','Descripcion',3,''),(28,'2013-10-11 01:11:40',1,19,'1','Descripcion',3,''),(29,'2013-10-11 02:01:16',1,19,'7','Contratación',3,''),(30,'2013-10-11 02:01:17',1,19,'6','descripcion',3,''),(31,'2013-10-17 18:41:05',1,18,'13','9999 - 1111- asd',3,''),(32,'2013-10-17 18:41:05',1,18,'12','4313 - 1- Descrip-prueba',3,''),(33,'2013-10-17 18:41:22',1,15,'6','Servicios',3,''),(34,'2013-10-17 18:41:22',1,15,'5','Descriçion de prueba',3,'');
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
INSERT INTO `django_session` VALUES ('0bkrn9fqrbdvzapdvvazxckifh0g5iou','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-02 23:19:43'),('0p8etlsnvj2wn7aekfsm5lw8q2l02808','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 11:44:57'),('0se05ozsowzt41ykgbsjx7rxwh5ukpey','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 18:05:43'),('0w43pkfd1y6u6n35qvpzyflezr897rrx','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-11 23:23:49'),('0xuu5j5hxe0m9gp5rm72i2mpb8stgvi0','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 05:57:20'),('17tnxdutw58q2hjqg2m67efh2ovbt1qh','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-11 12:02:17'),('1wt7lzdflialolfti6k2zqvxazkowlml','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-02 19:56:13'),('1z9fs5d3uaq0zmxq3oqfu8u7dbsqvlyn','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 03:38:26'),('28dx1yyliaqo1g8bakg8wyqb4idrv38f','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 23:11:49'),('2fvndfvz6tu6bucplhxgzbsobg1ggxj5','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-17 14:58:16'),('2olseheco3gdy0ntumhdih90agcmct3l','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-14 13:47:42'),('2t4gnp2zkey8xaghi3jlbvwsvp36g50m','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-09-26 14:14:27'),('3eksj60cohvhgvx9nl5w80qbclgx6uby','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 04:54:28'),('3jm54tltrytnfk9w3l9cp6p7ev119evw','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-17 19:10:26'),('5cq6utuca5qhboja38lokyaivx2al95j','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-30 15:24:02'),('5ua06j15o2qc9kcpitjcwo2bniir4gkx','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 17:12:53'),('5vpyfh3smpqbu7nce8huij33g6g2441e','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 18:50:39'),('69e2zk5pjus1zdfbtf6guz07utsi9zsg','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-07 20:56:55'),('6dy1cajr79vfjoljh4pmauz4nrgertal','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-03 14:47:15'),('6hppoggdiio2vcw8soe58g3gaxbxsyj6','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-03 05:12:17'),('70t1lvixbocjzk62utwo1qku36r8awqu','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-13 22:02:41'),('77gwse6qa2kyp7achacy23dby9bgxzhr','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 15:21:30'),('7a6vdt31u38ocdz0txfnvdrcmoth04an','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-03 14:10:21'),('7b8dp8xrtawdyreru1jf8hldftrphx2v','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-27 02:57:22'),('7d7njmu0lzohrgefup4fwruia75nhf7l','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-19 16:02:02'),('7l0iycnffwoifdqgxs8w2vuujl2ndjdh','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-07 17:18:49'),('7rw21pyfibtx4hcrnl9554kfsb28z8n9','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 18:31:27'),('8m4wwhvau81ytrhf1qgmo63wbxxc5zx3','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 15:26:30'),('a40ba1datz2iemq9k7r6n2qwvkc28s4a','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 15:27:02'),('ahgpki40vfs5bblxu4ct4yzivhzcs307','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-04 18:15:05'),('amhp1ixpo2tlbe10zegzt5tihjfclac1','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-09 20:06:52'),('bevsxh85pfqyfuxh3a92onbrx20n4939','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-09 19:06:30'),('bh47scwb2k00fslieel1hv38h03q03aa','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 16:11:59'),('by49cqn0smfc5kowvraeafmeyntou5sb','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 22:23:03'),('c7djj6xgcwrvc5r15dzcdp4tmqycp392','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-05 03:43:32'),('c9pqn03xgm96rh0l3l10x2mnfyxm9d1b','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-30 16:28:33'),('dpxog4mh767tci1iej3wglua9keowxic','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-17 17:59:36'),('durlt3inbm0ooyzi91byl2tdt8775jiz','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 17:31:09'),('e0zova0r2oojuojg07x1zid4gk3y8b5o','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 00:44:17'),('e442ukcqobdq9hocrvr5vu2e9coq6d5t','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-14 13:37:17'),('e8b5zf4jzw9rnvyn4nzs7g2zc0u5uw9y','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-08 02:16:01'),('edpq2k81pozo4gpy87qz75fidwacwlej','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-16 18:29:37'),('ef8xpdyosmjtuzdfek86rrnsa4lgk2mq','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-03 11:50:02'),('eo12eewfrfyq9lqib0zxxaidu078d93t','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-14 22:19:05'),('f6zxiw7d0hfnsyq339qzmkzjo3q15tqr','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 15:41:00'),('f9bn5hjs581r59t926og9koq1oqqchzn','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 03:02:07'),('fwt2ykdnejmufp5e2whjdp8icrnxue17','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 04:02:27'),('ghnyj6roav0mfhbskjdi88aznhl56fza','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-14 21:52:11'),('gp86xwsz2iznel02afim91lsj6qewdq6','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 15:27:44'),('gsit245jlh7akgmmpmk071t17kgsp6k3','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 13:55:08'),('gv4jf2ag257d7f73yoli6gg5yzbz50a2','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-10-03 19:26:11'),('hinv0dz7zq11dcpdgv6vvtgztl246u0v','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-02 04:13:33'),('hskkxm2d2o2gpei8m1xvrzzgcahzzulo','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-11 14:07:42'),('ik9fwa9yikm71v600skeewhiflihxgu3','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-03 20:50:53'),('iktahu7yqtcm0iqs0ubs2bnbf97dzimr','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-18 13:37:36'),('jfcd86cjbnpj2tewgqt7i2kswln4emtb','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-02 03:12:03'),('jm4dnka6esbxy0xfd0l12uzyn0dk4jpi','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-11 03:00:59'),('jyugauf7br9lubuc1hbid7lb4pz4qlt4','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-30 18:09:46'),('k0lpt5gobzm1a0pcjk8to7eumq85uxf6','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-09 17:20:27'),('k9bmtxfljnde7yw50ef04xe1iidv20x3','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-10-02 21:21:38'),('meyrmjl8i6mq7brz3s2ubq653hl2zm4u','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-07 14:26:32'),('mrikl7toudwtzqhsah0wcbzequiy79l1','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-27 01:56:27'),('mu3pmahun1p5kv6375uw5cvi17xbyesf','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 16:32:45'),('n7tnt3qzuwd7iyfxli63770s39nhjo5n','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 16:49:38'),('nw6s21slxjd5ec22fca33fdlr2bjxxz8','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 20:43:28'),('o7orehn6grc3e5d1qoxcy6evclxpihq7','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-18 16:43:15'),('oev3i723vmikf0i0od7nh4j2j8nfsasf','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-27 02:16:24'),('omfuzxoc52mdmiiyibr0dfa5rhviowxb','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-16 20:30:49'),('potusotq6t6o080jvnsiahcgglcjjrkt','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-16 16:03:05'),('q0oj8e6tndajsz81kituq35ezka9h6mw','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-18 13:51:35'),('rd9m0alnvrkza6s3s5qoz3p0ed9gjo0b','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-19 01:28:41'),('ry1o2uyzs65s0uzhfifvzwv1ldi7abzz','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 16:30:55'),('s1825g82yh240avn9fa0w4un73mae1vo','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 18:13:40'),('s6g98f1zwf0dbz13rzeicv2si5kj0yug','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-17 01:02:41'),('sa1egljp38o1qttgd2plw6enrrmmezjh','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-17 20:14:48'),('sk6dg3heef7r9anwyht9jjfwoth2f72k','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-11 13:02:26'),('tfirqcqgmtxy4rgkbvtz69vjsi0edvj2','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-05 00:39:43'),('ttvcbmonmqjdi79csc5fmn9333urcv8h','NjcyNmY3ZGJkY2NmMTg2NDNmOWFkMzQ3MmMyOGE2Y2I5NTg4ZjMzNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==','2013-10-11 03:19:38'),('u581hbj12sf0i5ut2eav1hs3gd2ozacn','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-10 04:39:25'),('u7p7v8vdae1ef541rm6ony2h65e4dynt','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 15:59:14'),('ucujq2b3kk6zcfflyund9keypzboxizw','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-12 14:05:17'),('vh2j03klbvntx1qvdbfugclzwbt9rwai','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-25 16:59:37'),('vl0efc8dh7qsetuhh9thuardt1lgoavm','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-09 14:56:10'),('w5ru0sefyhtmey1eq0a1a9vt8qq3sguj','ZWY2OTJmYmI1MzM3MjJkZjVkNDQ2ODViN2RlZGQ0YjBhNjM0ZTNjNDqAAn1xAS4=','2013-10-10 19:51:44'),('wamjwhnnwxdvg36f2puo4mqt8peurmy3','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-26 19:35:22'),('x9vi8wn4lj3cygw1257b6egxnwieifup','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-11 01:57:20'),('xb6ybfx2o1ptv9s9duql1rxs51lm3kqw','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-03 19:26:31'),('yama2fazrtvdvdh4qra59gxwiezdczy0','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-17 15:59:22'),('zkgqgkxaosoe9izrfq2k4syvv1l5edqn','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-10-04 14:30:01'),('zwyazuwid71yoa87e2s016s4p4s0brfe','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-24 21:07:35');
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

-- Dump completed on 2013-10-21  8:46:11
