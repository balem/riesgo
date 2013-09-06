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
INSERT INTO `auditoria_hojacontrol` VALUES (1,1,'Esto es una prueba','2013-08-18','Inactivo',13,1,1,2),(2,1,'Esta es otra hoja de control','2013-08-19','Inactivo',15,1,1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_hojacontrol_variables`
--

LOCK TABLES `auditoria_hojacontrol_variables` WRITE;
/*!40000 ALTER TABLE `auditoria_hojacontrol_variables` DISABLE KEYS */;
INSERT INTO `auditoria_hojacontrol_variables` VALUES (14,1,111),(13,1,112),(15,2,112),(16,2,113),(17,2,114);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_resultado`
--

LOCK TABLES `auditoria_resultado` WRITE;
/*!40000 ALTER TABLE `auditoria_resultado` DISABLE KEYS */;
INSERT INTO `auditoria_resultado` VALUES (13,1,112,10,'Esto es otra prueba var 112'),(14,1,111,10,'Esto es una prueba 111'),(15,2,112,0,'observación variable 112'),(16,2,113,10,'observacion 113'),(17,2,114,10,'observación variable 114');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$3U7AJup0Ckz1$3MOOHx+cNJYb1j0UaNWr87JyyLySTAEG/DqfZmaP0R4=','2013-08-20 14:54:30',1,'admin','','','erodriguez@cej.org.py',1,1,'2013-08-16 21:10:43'),(2,'pbkdf2_sha256$10000$HolDJWxmXcCw$5N3MubLQAKsddGiMKwAZBtIR96UsPu/v+WCA1jNLi0A=','2013-08-21 14:54:47',0,'enrique','Enrique','Rodríguez','enriquev.rodriguez@gmail.com',0,1,'2013-08-18 15:28:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-08-18 15:27:14',1,2,'1','verificador',1,''),(2,'2013-08-18 15:28:01',1,3,'2','enrique',1,''),(3,'2013-08-18 15:28:25',1,3,'2','enrique',2,'Modificado/a password, first_name, last_name, email y groups.'),(4,'2013-08-18 15:33:36',1,14,'1','cs012013',1,''),(5,'2013-08-18 15:41:51',1,15,'1','Esto es una prueba',1,''),(6,'2013-08-19 00:22:18',1,15,'1','Esto es una prueba',2,'Modificado/a variables.'),(7,'2013-08-19 15:05:44',1,15,'2','Esta es otra hoja de control',1,'');
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
INSERT INTO `django_session` VALUES ('1cnq0xt34hx2mqv6c43vdffb72nmm8ss','NjcyNmY3ZGJkY2NmMTg2NDNmOWFkMzQ3MmMyOGE2Y2I5NTg4ZjMzNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==','2013-09-04 14:54:47'),('caq563j5wqxj8s6bgpwb10aoq84m0rn7','NjcyNmY3ZGJkY2NmMTg2NDNmOWFkMzQ3MmMyOGE2Y2I5NTg4ZjMzNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==','2013-09-01 15:28:48'),('hj38vsierht658735jd8a5thpbhkcb66','YTgyNTZlNjEyZDE4YWUwNDA0YzFkZjkwODE2ZDI2MjQzNjhiZDM1MzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-30 23:58:50');
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
-- Dumping routines for database 'scrg'
--
/*!50003 DROP PROCEDURE IF EXISTS `selectreusl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectreusl`(pid int(11))
SELECT sum(valor) as suma, 
	(SELECT sum(valor) FROM auditoria_resultado where hoja_id =pid) as robtenido,	
	((SELECT sum(valor) FROM auditoria_resultado where hoja_id =pid)*100/sum(valor)) as porcentaje 
FROM 
	auditoria_variable a 
inner join 
	auditoria_hojacontrol_variables hj 
on 
hj.variable_id = a.id and hj.hojacontrol_id = pid ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-22 11:52:54
