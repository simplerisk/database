SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

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
-- Table structure for table `CVSS_scoring`
--

DROP TABLE IF EXISTS `CVSS_scoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CVSS_scoring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metric_name` varchar(30) NOT NULL,
  `abrv_metric_name` varchar(3) NOT NULL,
  `metric_value` varchar(30) NOT NULL,
  `abrv_metric_value` varchar(3) NOT NULL,
  `numeric_value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CVSS_scoring`
--

LOCK TABLES `CVSS_scoring` WRITE;
/*!40000 ALTER TABLE `CVSS_scoring` DISABLE KEYS */;
INSERT INTO `CVSS_scoring` VALUES (1,'AccessComplexity','AC','Alto','H',0.35),(2,'AccessComplexity','AC','Médio','M',0.61),(3,'AccessComplexity','AC','Baixo','L',0.71),(4,'AccessVector','AV','Local','L',0.395),(5,'AccessVector','AV','Rede adjacente','A',0.646),(6,'AccessVector','AV','Rede','N',1),(7,'Authentication','Au','Nenhum','N',0.704),(8,'Authentication','Au','Única instância','S',0.56),(9,'Authentication','Au','Múltiplas instâncias','M',0.45),(10,'AvailabilityRequirement','AR','Indefinido','ND',1),(11,'AvailabilityRequirement','AR','Baixo','L',0.5),(12,'AvailabilityRequirement','AR','Médio','M',1),(13,'AvailabilityRequirement','AR','Alto','H',1.51),(14,'AvailImpact','A','Nenhum','N',0),(15,'AvailImpact','A','Parcial','P',0.275),(16,'AvailImpact','A','Completo','C',0.66),(17,'CollateralDamagePotential','CDP','Indefinido','ND',0),(18,'CollateralDamagePotential','CDP','Nenhum','N',0),(19,'CollateralDamagePotential','CDP','Baixo (baixa perda)','L',0.1),(20,'CollateralDamagePotential','CDP','Baixo-Médio','LM',0.3),(21,'CollateralDamagePotential','CDP','Médio-Alto','MH',0.4),(22,'CollateralDamagePotential','CDP','Alto','H',0.5),(23,'ConfidentialityRequirement','CR','Indefinido','ND',1),(24,'ConfidentialityRequirement','CR','Baixo','L',0.5),(25,'ConfidentialityRequirement','CR','Médio','M',1),(26,'ConfidentialityRequirement','CR','Alto','H',1.51),(27,'ConfImpact','C','Nenhum','N',0),(28,'ConfImpact','C','Parcial','P',0.275),(29,'ConfImpact','C','Completo','C',0.66),(30,'Exploitability','E','Indefinido','ND',1),(31,'Exploitability','E','Sem exploração existente','U',0.85),(32,'Exploitability','E','Prova de conceito de código','POC',0.9),(33,'Exploitability','E','Exploração funcional existente','F',0.95),(34,'Exploitability','E','Muito difundido','H',1),(35,'IntegImpact','I','Nenhum','N',0),(36,'IntegImpact','I','Parcial','P',0.275),(37,'IntegImpact','I','Completo','C',0.66),(38,'IntegrityRequirement','IR','Indefinido','ND',1),(39,'IntegrityRequirement','IR','Baixo','L',0.5),(40,'IntegrityRequirement','IR','Médio','M',1),(41,'IntegrityRequirement','IR','Alto','H',1.51),(42,'RemediationLevel','RL','Indefinido','ND',1),(43,'RemediationLevel','RL','Oficialmente corrigido','OF',0.87),(44,'RemediationLevel','RL','Temporariamente corrigido','TF',0.9),(45,'RemediationLevel','RL','Solução de contorno','W',0.95),(46,'RemediationLevel','RL','Indisponível','U',1),(47,'ReportConfidence','RC','Indefinido','ND',1),(48,'ReportConfidence','RC','Não confirmado','UC',0.9),(49,'ReportConfidence','RC','Não comprovado','UR',0.95),(50,'ReportConfidence','RC','Confirmado','C',1),(51,'TargetDistribution','TD','Indefinido','ND',1),(52,'TargetDistribution','TD','Nenhum (0%)','N',0),(53,'TargetDistribution','TD','Baixo (0-25%)','L',0.25),(54,'TargetDistribution','TD','Médio (26-75%)','M',0.75),(55,'TargetDistribution','TD','Alto (76-100%)','H',1);
/*!40000 ALTER TABLE `CVSS_scoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_values`
--

DROP TABLE IF EXISTS `asset_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_values` (
  `id` int(11) NOT NULL,
  `min_value` int(11) NOT NULL,
  `max_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_values`
--

LOCK TABLES `asset_values` WRITE;
/*!40000 ALTER TABLE `asset_values` DISABLE KEYS */;
INSERT INTO `asset_values` VALUES (1,0,100000),(2,100001,200000),(3,200001,300000),(4,300001,400000),(5,400001,500000),(6,500001,600000),(7,600001,700000),(8,700001,800000),(9,800001,900000),(10,900001,1000000);
/*!40000 ALTER TABLE `asset_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `value` int(11) DEFAULT '5',
  `location` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_log` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `risk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Acesso'),(2,'Ambiental'),(3,'Monitoração'),(4,'Segurança Física'),(5,'Política e Procedimento'),(6,'Dados Sensíveis'),(7,'Vulnerabilidades'),(8,'Terceiros');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `close_reason`
--

DROP TABLE IF EXISTS `close_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `close_reason` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `close_reason`
--

LOCK TABLES `close_reason` WRITE;
/*!40000 ALTER TABLE `close_reason` DISABLE KEYS */;
INSERT INTO `close_reason` VALUES (0,'Rejeitado'),(1,'Totalmente Mitigada'),(2,'Sistema Removido'),(3,'Cancelado'),(4,'Muito Insignificante');
/*!40000 ALTER TABLE `close_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `closures`
--

DROP TABLE IF EXISTS `closures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `closures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `closure_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `close_reason` int(11) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `closures`
--

LOCK TABLES `closures` WRITE;
/*!40000 ALTER TABLE `closures` DISABLE KEYS */;
/*!40000 ALTER TABLE `closures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_types`
--

DROP TABLE IF EXISTS `file_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_types` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_types`
--

LOCK TABLES `file_types` WRITE;
/*!40000 ALTER TABLE `file_types` DISABLE KEYS */;
INSERT INTO `file_types` VALUES (1,'image/gif'),(2,'image/jpg'),(3,'image/png'),(4,'image/x-png'),(5,'image/jpeg'),(6,'application/x-pdf'),(7,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(8,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),(9,'application/zip'),(10,'text/rtf'),(11,'application/octet-stream'),(12,'text/plain'),(13,'text/xml'),(14,'text/comma-separated-values'),(15,'application/vnd.ms-excel'),(16,'application/msword'),(17,'application/x-gzip'),(18,'application/force-download'),(19,'application/pdf');
/*!40000 ALTER TABLE `file_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) DEFAULT '0',
  `view_type` int(11) DEFAULT '1',
  `name` varchar(100) NOT NULL,
  `unique_name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `content` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impact`
--

DROP TABLE IF EXISTS `impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impact` (
  `name` varchar(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impact`
--

LOCK TABLES `impact` WRITE;
/*!40000 ALTER TABLE `impact` DISABLE KEYS */;
INSERT INTO `impact` VALUES ('Insignificante',1),('Menor',2),('Moderado',3),('Maior',4),('Extremo/Catastrófico',5);
/*!40000 ALTER TABLE `impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2) NOT NULL,
  `full` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'en','English'),(2,'bp','Brazilian Portuguese'),(3,'es','Spanish');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likelihood`
--

DROP TABLE IF EXISTS `likelihood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likelihood` (
  `name` varchar(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likelihood`
--

LOCK TABLES `likelihood` WRITE;
/*!40000 ALTER TABLE `likelihood` DISABLE KEYS */;
INSERT INTO `likelihood` VALUES ('Remoto',1),('Improvável',2),('Acreditável',3),('Provável',4),('Quase Certo',5);
/*!40000 ALTER TABLE `likelihood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Todos os Sites');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgmt_reviews`
--

DROP TABLE IF EXISTS `mgmt_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mgmt_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review` int(11) NOT NULL,
  `reviewer` int(11) NOT NULL,
  `next_step` int(11) NOT NULL,
  `comments` text NOT NULL,
  `next_review` varchar(10) NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgmt_reviews`
--

LOCK TABLES `mgmt_reviews` WRITE;
/*!40000 ALTER TABLE `mgmt_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `mgmt_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigation_effort`
--

DROP TABLE IF EXISTS `mitigation_effort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitigation_effort` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigation_effort`
--

LOCK TABLES `mitigation_effort` WRITE;
/*!40000 ALTER TABLE `mitigation_effort` DISABLE KEYS */;
INSERT INTO `mitigation_effort` VALUES (1,'Trivial'),(2,'Menor'),(3,'Considerável'),(4,'Significativo'),(5,'Excepcional');
/*!40000 ALTER TABLE `mitigation_effort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigations`
--

DROP TABLE IF EXISTS `mitigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `planning_strategy` int(11) NOT NULL,
  `mitigation_effort` int(11) NOT NULL,
  `mitigation_cost` int(11) NOT NULL DEFAULT '1',
  `mitigation_owner` int(11) NOT NULL,
  `mitigation_team` int(11) NOT NULL,
  `current_solution` text NOT NULL,
  `security_requirements` text NOT NULL,
  `security_recommendations` text NOT NULL,
  `submitted_by` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigations`
--

LOCK TABLES `mitigations` WRITE;
/*!40000 ALTER TABLE `mitigations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitigations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `next_step`
--

DROP TABLE IF EXISTS `next_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `next_step` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `next_step`
--

LOCK TABLES `next_step` WRITE;
/*!40000 ALTER TABLE `next_step` DISABLE KEYS */;
INSERT INTO `next_step` VALUES (1,'Aceitar até a Próxima Revisão'),(2,'Considerar para Projeto'),(3,'Enviar como um Problema de Produção');
/*!40000 ALTER TABLE `next_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset` (
  `username` varchar(20) NOT NULL,
  `token` varchar(20) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

LOCK TABLES `password_reset` WRITE;
/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planning_strategy`
--

DROP TABLE IF EXISTS `planning_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planning_strategy` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planning_strategy`
--

LOCK TABLES `planning_strategy` WRITE;
/*!40000 ALTER TABLE `planning_strategy` DISABLE KEYS */;
INSERT INTO `planning_strategy` VALUES (1,'Pesquisa'),(2,'Aceitar'),(3,'Mitigar'),(4,'Observar'),(5,'Transferência');
/*!40000 ALTER TABLE `planning_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '999999',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (0,'Riscos não Atribuídos',0,1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regulation`
--

DROP TABLE IF EXISTS `regulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regulation` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regulation`
--

LOCK TABLES `regulation` WRITE;
/*!40000 ALTER TABLE `regulation` DISABLE KEYS */;
INSERT INTO `regulation` VALUES (1,'PCI DSS'),(2,'Sarbanes-Oxley (SOX)'),(3,'HIPAA'),(4,'ISO 27001');
/*!40000 ALTER TABLE `regulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Aprovar Risco'),(2,'Rechazar Riesgo y Cerrar');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_levels`
--

DROP TABLE IF EXISTS `review_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_levels` (
  `id` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_levels`
--

LOCK TABLES `review_levels` WRITE;
/*!40000 ALTER TABLE `review_levels` DISABLE KEYS */;
INSERT INTO `review_levels` VALUES (2,90,'High'),(3,180,'Medium'),(4,360,'Low'),(5,360,'Insignificant'),(1,90,'Very High');
/*!40000 ALTER TABLE `review_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_levels`
--

DROP TABLE IF EXISTS `risk_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk_levels` (
  `value` decimal(3,1) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_levels`
--

LOCK TABLES `risk_levels` WRITE;
/*!40000 ALTER TABLE `risk_levels` DISABLE KEYS */;
INSERT INTO `risk_levels` VALUES (7.0,'High'),(4.0,'Medium'),(0.0,'Low'),(10.1,'Very High');
/*!40000 ALTER TABLE `risk_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_models`
--

DROP TABLE IF EXISTS `risk_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk_models` (
  `value` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_models`
--

LOCK TABLES `risk_models` WRITE;
/*!40000 ALTER TABLE `risk_models` DISABLE KEYS */;
INSERT INTO `risk_models` VALUES (1,'Probabilidade x Impacto + 2(Impacto)'),(2,'Probabilidade x Impacto + Impacto'),(3,'Probabilidade x Impacto'),(4,'Probabilidade x Impacto + Probabilidade'),(5,'Probabilidade x Impacto + 2(Probabilidade)');
/*!40000 ALTER TABLE `risk_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_scoring`
--

DROP TABLE IF EXISTS `risk_scoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk_scoring` (
  `id` int(11) NOT NULL,
  `scoring_method` int(11) NOT NULL,
  `calculated_risk` float NOT NULL,
  `CLASSIC_likelihood` float NOT NULL DEFAULT '5',
  `CLASSIC_impact` float NOT NULL DEFAULT '5',
  `CVSS_AccessVector` varchar(3) NOT NULL DEFAULT 'N',
  `CVSS_AccessComplexity` varchar(3) NOT NULL DEFAULT 'L',
  `CVSS_Authentication` varchar(3) NOT NULL DEFAULT 'N',
  `CVSS_ConfImpact` varchar(3) NOT NULL DEFAULT 'C',
  `CVSS_IntegImpact` varchar(3) NOT NULL DEFAULT 'C',
  `CVSS_AvailImpact` varchar(3) NOT NULL DEFAULT 'C',
  `CVSS_Exploitability` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_RemediationLevel` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_ReportConfidence` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_CollateralDamagePotential` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_TargetDistribution` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_ConfidentialityRequirement` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_IntegrityRequirement` varchar(3) NOT NULL DEFAULT 'ND',
  `CVSS_AvailabilityRequirement` varchar(3) NOT NULL DEFAULT 'ND',
  `DREAD_DamagePotential` int(11) DEFAULT '10',
  `DREAD_Reproducibility` int(11) DEFAULT '10',
  `DREAD_Exploitability` int(11) DEFAULT '10',
  `DREAD_AffectedUsers` int(11) DEFAULT '10',
  `DREAD_Discoverability` int(11) DEFAULT '10',
  `OWASP_SkillLevel` int(11) DEFAULT '10',
  `OWASP_Motive` int(11) DEFAULT '10',
  `OWASP_Opportunity` int(11) DEFAULT '10',
  `OWASP_Size` int(11) DEFAULT '10',
  `OWASP_EaseOfDiscovery` int(11) DEFAULT '10',
  `OWASP_EaseOfExploit` int(11) DEFAULT '10',
  `OWASP_Awareness` int(11) DEFAULT '10',
  `OWASP_IntrusionDetection` int(11) DEFAULT '10',
  `OWASP_LossOfConfidentiality` int(11) DEFAULT '10',
  `OWASP_LossOfIntegrity` int(11) DEFAULT '10',
  `OWASP_LossOfAvailability` int(11) DEFAULT '10',
  `OWASP_LossOfAccountability` int(11) DEFAULT '10',
  `OWASP_FinancialDamage` int(11) DEFAULT '10',
  `OWASP_ReputationDamage` int(11) DEFAULT '10',
  `OWASP_NonCompliance` int(11) DEFAULT '10',
  `OWASP_PrivacyViolation` int(11) DEFAULT '10',
  `Custom` float DEFAULT '10',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_scoring`
--

LOCK TABLES `risk_scoring` WRITE;
/*!40000 ALTER TABLE `risk_scoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_scoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risks`
--

DROP TABLE IF EXISTS `risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `reference_id` varchar(20) NOT NULL DEFAULT '',
  `regulation` int(11) DEFAULT NULL,
  `control_number` varchar(20) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `technology` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `manager` int(11) NOT NULL,
  `assessment` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mitigation_id` int(11) DEFAULT '0',
  `mgmt_review` int(11) DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `close_id` int(11) DEFAULT NULL,
  `submitted_by` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risks`
--

LOCK TABLES `risks` WRITE;
/*!40000 ALTER TABLE `risks` DISABLE KEYS */;
/*!40000 ALTER TABLE `risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risks_to_assets`
--

DROP TABLE IF EXISTS `risks_to_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risks_to_assets` (
  `risk_id` int(11) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  `asset` varchar(200) NOT NULL,
  UNIQUE KEY `risk_id` (`risk_id`,`asset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risks_to_assets`
--

LOCK TABLES `risks_to_assets` WRITE;
/*!40000 ALTER TABLE `risks_to_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `risks_to_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoring_methods`
--

DROP TABLE IF EXISTS `scoring_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoring_methods` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoring_methods`
--

LOCK TABLES `scoring_methods` WRITE;
/*!40000 ALTER TABLE `scoring_methods` DISABLE KEYS */;
INSERT INTO `scoring_methods` VALUES (1,'Classic'),(2,'CVSS'),(3,'DREAD'),(4,'OWASP'),(5,'Custom');
/*!40000 ALTER TABLE `scoring_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(32) NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(50) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('currency','$'),('db_version','20160124-001'),('default_asset_valuation','5'),('max_upload_size','5120000'),('pass_policy_alpha_required','1'),('pass_policy_digits_required','1'),('pass_policy_enabled','1'),('pass_policy_lower_required','1'),('pass_policy_min_chars','8'),('pass_policy_special_required','1'),('pass_policy_upper_required','1'),('registration_registered','0'),('risk_model','3');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,'Pessoas'),(2,'Processo'),(3,'Sistema'),(4,'Externo');
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Novo'),(2,'Mitigação Planejado'),(3,'Gestão Avaliado'),(4,'Fechadas'),(5,'Reaberta'),(6,'Não Tratada'),(7,'Tratado');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Gestão de Filial'),(2,'Colaboração'),(3,'Data Center & Storage'),(4,'Banco de Dados'),(5,'Segurança da Informação'),(6,'Sistemas de Gestão de TI'),(7,'Rede'),(8,'Unix'),(9,'Sistemas Web'),(10,'Windows');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technology` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'All'),(2,'Anti-Virus'),(3,'Backups'),(4,'Smartphone'),(5,'Switche'),(6,'Datacenter'),(7,'Rota de E-mail'),(8,'Colaboração em Tempo Real'),(9,'Mensagens'),(10,'Dispositivo Móvel'),(11,'Rede'),(12,'Energia'),(13,'Acesso Remoto'),(14,'Servidor de Arquivos'),(15,'Telefonia'),(16,'Unix'),(17,'Virtualização'),(18,'Web'),(19,'Windows');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL DEFAULT 'simplerisk',
  `username` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `password` binary(60) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `teams` varchar(200) NOT NULL DEFAULT 'none',
  `lang` varchar(2) DEFAULT NULL,
  `asset` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `review_veryhigh` tinyint(1) NOT NULL DEFAULT '0',
  `review_high` tinyint(1) NOT NULL DEFAULT '0',
  `review_medium` tinyint(1) NOT NULL DEFAULT '0',
  `review_low` tinyint(1) NOT NULL DEFAULT '0',
  `review_insignificant` tinyint(1) NOT NULL DEFAULT '0',
  `submit_risks` tinyint(1) NOT NULL DEFAULT '0',
  `modify_risks` tinyint(1) NOT NULL DEFAULT '0',
  `plan_mitigations` tinyint(1) NOT NULL DEFAULT '0',
  `close_risks` tinyint(1) NOT NULL DEFAULT '1',
  `multi_factor` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'simplerisk','admin','Admin','user@example.com','sAbwTbIFywWKcheyQw9a','$2a$15$7b2601b4979b1ad031b2fuqf1XkeSa4iNxsHK27tq5Va2jLhzkShW','2015-07-29 09:17:32','all',NULL,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
