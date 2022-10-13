SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CVSS_scoring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metric_name` varchar(30) NOT NULL,
  `abrv_metric_name` varchar(3) NOT NULL,
  `metric_value` varchar(30) NOT NULL,
  `abrv_metric_value` varchar(3) NOT NULL,
  `numeric_value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CVSS_scoring`
--

LOCK TABLES `CVSS_scoring` WRITE;
/*!40000 ALTER TABLE `CVSS_scoring` DISABLE KEYS */;
INSERT INTO `CVSS_scoring` VALUES (1,'AccessComplexity','AC','High','H',0.35),(2,'AccessComplexity','AC','Medium','M',0.61),(3,'AccessComplexity','AC','Low','L',0.71),(4,'AccessVector','AV','Local','L',0.395),(5,'AccessVector','AV','Adjacent Network','A',0.646),(6,'AccessVector','AV','Network','N',1),(7,'Authentication','Au','None','N',0.704),(8,'Authentication','Au','Single Instance','S',0.56),(9,'Authentication','Au','Multiple Instances','M',0.45),(10,'AvailabilityRequirement','AR','Undefined','ND',1),(11,'AvailabilityRequirement','AR','Low','L',0.5),(12,'AvailabilityRequirement','AR','Medium','M',1),(13,'AvailabilityRequirement','AR','High','H',1.51),(14,'AvailImpact','A','None','N',0),(15,'AvailImpact','A','Partial','P',0.275),(16,'AvailImpact','A','Complete','C',0.66),(17,'CollateralDamagePotential','CDP','Undefined','ND',0),(18,'CollateralDamagePotential','CDP','None','N',0),(19,'CollateralDamagePotential','CDP','Low (light loss)','L',0.1),(20,'CollateralDamagePotential','CDP','Low-Medium','LM',0.3),(21,'CollateralDamagePotential','CDP','Medium-High','MH',0.4),(22,'CollateralDamagePotential','CDP','High','H',0.5),(23,'ConfidentialityRequirement','CR','Undefined','ND',1),(24,'ConfidentialityRequirement','CR','Low','L',0.5),(25,'ConfidentialityRequirement','CR','Medium','M',1),(26,'ConfidentialityRequirement','CR','High','H',1.51),(27,'ConfImpact','C','None','N',0),(28,'ConfImpact','C','Partial','P',0.275),(29,'ConfImpact','C','Complete','C',0.66),(30,'Exploitability','E','Undefined','ND',1),(31,'Exploitability','E','Unproven that exploit exists','U',0.85),(32,'Exploitability','E','Proof of concept code','POC',0.9),(33,'Exploitability','E','Functional exploit exists','F',0.95),(34,'Exploitability','E','Widespread','H',1),(35,'IntegImpact','I','None','N',0),(36,'IntegImpact','I','Partial','P',0.275),(37,'IntegImpact','I','Complete','C',0.66),(38,'IntegrityRequirement','IR','Undefined','ND',1),(39,'IntegrityRequirement','IR','Low','L',0.5),(40,'IntegrityRequirement','IR','Medium','M',1),(41,'IntegrityRequirement','IR','High','H',1.51),(42,'RemediationLevel','RL','Undefined','ND',1),(43,'RemediationLevel','RL','Official fix','OF',0.87),(44,'RemediationLevel','RL','Temporary fix','TF',0.9),(45,'RemediationLevel','RL','Workaround','W',0.95),(46,'RemediationLevel','RL','Unavailable','U',1),(47,'ReportConfidence','RC','Undefined','ND',1),(48,'ReportConfidence','RC','Unconfirmed','UC',0.9),(49,'ReportConfidence','RC','Uncorroborated','UR',0.95),(50,'ReportConfidence','RC','Confirmed','C',1),(51,'TargetDistribution','TD','Undefined','ND',1),(52,'TargetDistribution','TD','None (0%)','N',0),(53,'TargetDistribution','TD','Low (0-25%)','L',0.25),(54,'TargetDistribution','TD','Medium (26-75%)','M',0.75),(55,'TargetDistribution','TD','High (76-100%)','H',1);
/*!40000 ALTER TABLE `CVSS_scoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_answers`
--

DROP TABLE IF EXISTS `assessment_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assessment_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(200) NOT NULL,
  `submit_risk` tinyint(1) NOT NULL DEFAULT '0',
  `risk_subject` blob NOT NULL,
  `risk_score` float NOT NULL,
  `assessment_scoring_id` int NOT NULL,
  `risk_owner` int DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1281 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_answers`
--

LOCK TABLES `assessment_answers` WRITE;
/*!40000 ALTER TABLE `assessment_answers` DISABLE KEYS */;
INSERT INTO `assessment_answers` VALUES (1,1,1,'Yes',0,'',0,1,0,1),(2,1,1,'No',1,_binary 'Attackers can use unauthorized and unmanaged devices to gain access to network',10,2,0,2),(3,1,2,'Yes',0,'',0,3,0,1),(4,1,2,'No',1,_binary 'Attackers can use unauthorized and unmanaged software to collect sensitive information from compromised systems and other systems connected to them',10,4,0,2),(5,1,3,'Yes',0,'',0,5,0,1),(6,1,3,'No',1,_binary 'Attackers can exploit vulnerable services and settings to compromise operating systems and applications',10,6,0,2),(7,1,4,'Yes',0,'',0,7,0,1),(8,1,4,'No',1,_binary 'Attackers can take advantage of gaps between the appearance of new knowledge and remediation to compromise computer systems',10,8,0,2),(9,1,5,'Yes',0,'',0,9,0,1),(10,1,5,'No',1,_binary 'Attackers can misuse administrative privileges to spread inside the enterprise',10,10,0,2),(11,1,6,'Yes',0,'',0,11,0,1),(12,1,6,'No',1,_binary 'Attackers can hide their location, malicious software, and activities on victim machines due to deficiencies in security logging and analysis',10,12,0,2),(13,1,7,'Yes',0,'',0,13,0,1),(14,1,7,'No',1,_binary 'Attackers can craft content to entice or spoof users into taking actions that greatly increase risk and allow introduction of malicious code, loss of valuable data, and other attacks',10,14,0,2),(15,1,8,'Yes',0,'',0,15,0,1),(16,1,8,'No',1,_binary 'Attackers can use malicious software to attack our systems, devices, and data',10,16,0,2),(17,1,9,'Yes',0,'',0,17,0,1),(18,1,9,'No',1,_binary 'Attackers can scan for remotely accessible network services that are vulnerable to exploitation',10,18,0,2),(19,1,10,'Yes',0,'',0,19,0,1),(20,1,10,'No',1,_binary 'Attackers can make significant changes to configurations and software on compromised machines and it may be extremely difficult to remove all aspects of their presence',10,20,0,2),(21,1,11,'Yes',0,'',0,21,0,1),(22,1,11,'No',1,_binary 'Attackers can gain access to sensitive data, alter important information, or use compromised machines to pose as trusted systems on our network by exploiting vulnerable services and settings',10,22,0,2),(23,1,12,'Yes',0,'',0,23,0,1),(24,1,12,'No',1,_binary 'Attackers can exploit vulnerable systems on extranet perimeters to gain access inside our network',10,24,0,2),(25,1,13,'Yes',0,'',0,25,0,1),(26,1,13,'No',1,_binary 'Attackers can exfiltrate data from our networks compromising the privacy and integrity of sensitive information',10,26,0,2),(27,1,14,'Yes',0,'',0,27,0,1),(28,1,14,'No',1,_binary 'Attackers can find and exfiltrate important information, cause physical damage, or disrupt operations due to improper separation of sensitive and critical assets from less sensitive information',10,28,0,2),(29,1,15,'Yes',0,'',0,29,0,1),(30,1,15,'No',1,_binary 'Attackers can gain wireless access and bypass our security perimeters in order to steal data',10,30,0,2),(31,1,16,'Yes',0,'',0,31,0,1),(32,1,16,'No',1,_binary 'Attackers can impersonate legitimate users by exploting legitimate but inactive user accounts',10,32,0,2),(33,1,17,'Yes',0,'',0,33,0,1),(34,1,17,'No',1,_binary 'Attackers can exploit employee knowledge gaps to compromise systems and networks',10,34,0,2),(35,1,18,'Yes',0,'',0,35,0,1),(36,1,18,'No',1,_binary 'Attackers can take advantage of vulnerabilities in software to gain control over vulnerable machines',10,36,0,2),(37,1,19,'Yes',0,'',0,37,0,1),(38,1,19,'No',1,_binary 'An attacker may have a greater impact, cause more damage, infect more systems, and exfiltrate more sensitive data due to a poor incident response plan',10,38,0,2),(39,1,20,'Yes',0,'',0,39,0,1),(40,1,20,'No',1,_binary 'Attackers can take advantage of unknown vulnerabilities due to a lack of testing of organization defenses',10,40,0,2),(41,2,21,'Yes',0,'',10,41,0,999999),(42,2,21,'No',1,_binary 'Information system access is not limited to authorized users, processes acting on behalf of authorized users, or devices resulting in unauthorized access to sensitive data. (3.1.1)',10,42,0,999999),(43,2,22,'Yes',0,'',10,43,0,999999),(44,2,22,'No',1,_binary 'We do not limit transactions and functions to authorized users. (3.1.2)',10,44,0,999999),(45,2,23,'Yes',0,'',10,45,0,999999),(46,2,23,'No',1,_binary 'We do not control CUI in accordance with approved authorizations. (3.1.3)',10,46,0,999999),(47,2,24,'Yes',0,'',10,47,0,999999),(48,2,24,'No',1,_binary 'We do not keep duties of individuals separated to reduce the risk of malevolent activity without collusion. (3.1.4)',10,48,0,999999),(49,2,25,'Yes',0,'',10,49,0,999999),(50,2,25,'No',1,_binary 'We do not employ the principle of least privilege is not in practice resulting in unauthorized access to system functions outside the users roll. (3.1.5)',10,50,0,999999),(51,2,26,'Yes',0,'',10,51,0,999999),(52,2,26,'No',1,_binary 'Users do not use non-privileged accounts for non-security functions. (3.1.6)',10,52,0,999999),(53,2,27,'Yes',0,'',10,53,0,999999),(54,2,27,'No',1,_binary 'We do not prevent non-privileged users from executing privileged functions and audit the execution of such functions. (3.1.7)',10,54,0,999999),(55,2,28,'Yes',0,'',10,55,0,999999),(56,2,28,'No',1,_binary 'We do not limit unsuccessful logon attempts. (3.1.8)',10,56,0,999999),(57,2,29,'Yes',0,'',10,57,0,999999),(58,2,29,'No',1,_binary 'We do not provide privacy and security notices consistent with applicable CUI rules. (3.1.9)',10,58,0,999999),(59,2,30,'Yes',0,'',10,59,0,999999),(60,2,30,'No',1,_binary 'We do not use session lock with pattern hiding displays to prevent access/unwanted viewing of data after periods of inactivity. (3.1.10)',10,60,0,999999),(61,2,31,'Yes',0,'',10,61,0,999999),(62,2,31,'No',1,_binary 'We do not automatically terminate sessions after periods of inactivity and or any defined conditions. (3.1.11)',10,62,0,999999),(63,2,32,'Yes',0,'',10,63,0,999999),(64,2,32,'No',1,_binary 'We do not monitor and control remote access sessions. (3.1.12)',10,64,0,999999),(65,2,33,'Yes',0,'',10,65,0,999999),(66,2,33,'No',1,_binary 'We do not employ cryptographic mechanisms to protect the confidentiality of remote access sessions. (3.1.13)',10,66,0,999999),(67,2,34,'Yes',0,'',10,67,0,999999),(68,2,34,'No',1,_binary 'We do not route remote access through managed access control points. (3.1.14)',10,68,0,999999),(69,2,35,'Yes',0,'',10,69,0,999999),(70,2,35,'No',1,_binary 'The system does not require authorization of remote execution of privileged commands and remote access to security relevant information. (3.1.15)',0,70,0,999999),(71,2,36,'Yes',0,'',0,71,0,999999),(72,2,36,'No',1,_binary 'We do not authorize wireless access prior to allowing such connections. (3.1.16)',10,72,0,999999),(73,2,37,'Yes',0,'',0,73,0,999999),(74,2,37,'No',1,_binary 'We do not protect wireless access using authentication and encryption. (3.1.17)',10,74,0,999999),(75,2,38,'Yes',0,'',10,75,0,999999),(76,2,38,'No',1,_binary '(3.1.18) We do not have guidelines and procedures in place to restrict the operation and connection of mobile devices?',10,76,0,999999),(77,2,39,'Yes',0,'',10,77,0,999999),(78,2,39,'No',1,_binary 'We do not encrypt CUI on mobile devices. (3.1.19)',10,78,0,999999),(79,2,40,'Yes',0,'',10,79,0,999999),(80,2,40,'No',1,_binary 'We do not verify and control/limit connections to and use of external information systems. (3.1.20)',10,80,0,999999),(81,2,41,'Yes',0,'',10,81,0,999999),(82,2,41,'No',1,_binary 'We do not limit use of organizational portable storage devices on external information systems. (3.1.21)',10,82,0,999999),(83,2,42,'Yes',0,'',10,83,0,999999),(84,2,42,'No',1,_binary 'We do not prohibit posting or processing control information on publicly accessible information systems. (3.1.22)',10,84,0,999999),(85,2,43,'Yes',0,'',10,85,0,999999),(86,2,43,'No',1,_binary 'We do not ensure that managers, systems administrators, and users of organizational information systems are made aware of the security risks associated with their activities and of the applicable policies, standards, and procedures related to the security of organizational information systems. (3.2.1)',10,86,0,999999),(87,2,44,'Yes',0,'',10,87,0,999999),(88,2,44,'No',1,_binary 'We do not ensure that organizational personnel are adequately trained to carry out their assigned information security-related duties and responsibilities. (3.2.2)',10,88,0,999999),(89,2,45,'Yes',0,'',10,89,0,999999),(90,2,45,'No',1,_binary 'We do not provide security awareness training on recognizing and reporting potential indicators of insider threats. (3.2.3)',10,90,0,999999),(91,2,46,'Yes',0,'',10,91,0,999999),(92,2,46,'No',1,_binary 'We do not create, protect, and retain information system audit records to enable the monitoring, analysis, investigation, and reporting of unlawful, unauthorized, or inappropriate information system activity. (3.3.1)',10,92,0,999999),(93,2,47,'Yes',0,'',10,93,0,999999),(94,2,47,'No',1,_binary 'We do not ensure that the actions of individual information system users can be uniquely traced so that users can be held accountable. (3.3.2)',10,94,0,999999),(95,2,48,'Yes',0,'',10,95,0,999999),(96,2,48,'No',1,_binary 'We do not review and update audited events. (3.3.3)',10,96,0,999999),(97,2,49,'Yes',0,'',10,97,0,999999),(98,2,49,'No',1,_binary 'We do not have an alert in the event of an audit process failure. (3.3.4)',10,98,0,999999),(99,2,50,'Yes',0,'',10,99,0,999999),(100,2,50,'No',1,_binary 'We do not use automated mechanisms to integrate and correlate audit review, analysis, and reporting processes for investigation and response to indications of inappropriate, suspicious, or unusual activity. (3.3.5)',10,100,0,999999),(101,2,51,'Yes',0,'',10,101,0,999999),(102,2,51,'No',1,_binary 'We do not provide audit reduction and report generation to support on-demand analysis and reporting. (3.3.6)',10,102,0,999999),(103,2,52,'Yes',0,'',10,103,0,999999),(104,2,52,'No',1,_binary 'We do not provide an information system capability that compares and synchronizes internal system clocks with an authoritative source to generate time stamps for audit records. (3.3.7)',10,104,0,999999),(105,2,53,'Yes',0,'',10,105,0,999999),(106,2,53,'No',1,_binary 'We do not protect audit information and audit tools from unauthorized access, modification, and deletion. (3.3.8)',10,106,0,999999),(107,2,54,'Yes',0,'',10,107,0,999999),(108,2,54,'No',1,_binary 'We do not limit management of audit functionality to a subset of privileged users. (3.3.9)',10,108,0,999999),(109,2,55,'Yes',0,'',10,109,0,999999),(110,2,55,'No',1,_binary 'We have not established and maintained baseline configurations and inventories of organizational information systems (including hardware, software, firmware, and documentation) throughout the respective system development life cycles. (3.4.1.)',10,110,0,999999),(111,2,56,'Yes',0,'',10,111,0,999999),(112,2,56,'No',1,_binary 'We do not establish and enforce security configuration settings for information technology products employed in organizational information systems. (3.4.2)',10,112,0,999999),(113,2,57,'Yes',0,'',10,113,0,999999),(114,2,57,'No',1,_binary 'We do not track, review, approve/disapprove, and audit changes to information systems. (3.4.3)',10,114,0,999999),(115,2,58,'Yes',0,'',10,115,0,999999),(116,2,58,'No',1,_binary 'We do not analyze the security impact of changes prior to implementation. (3.4.4)',10,116,0,999999),(117,2,59,'Yes',0,'',10,117,0,999999),(118,2,59,'No',1,_binary 'We do not define, document, approve, and enforce physical and logical access restrictions associated with changes to the information system. (3.4.5)',10,118,0,999999),(119,2,60,'Yes',0,'',10,119,0,999999),(120,2,60,'No',1,_binary 'We do not employ the principle of least functionality by configuring the information system to provide only essential capabilities. (3.4.6)',10,120,0,999999),(121,2,61,'Yes',0,'',10,121,0,999999),(122,2,61,'No',1,_binary 'We do not restrict, disable, and prevent the use of nonessential programs, functions, ports, protocols, and services. (3.4.7)',10,122,0,999999),(123,2,62,'Yes',0,'',10,123,0,999999),(124,2,62,'No',1,_binary 'We do not apply deny-by-exception (blacklisting) policy to prevent the use of unauthorized software or deny-all, permit-by-exception (whitelisting) policy to allow the execution of authorized software. (3.4.8)',10,124,0,999999),(125,2,63,'Yes',0,'',10,125,0,999999),(126,2,63,'No',1,_binary 'We do not control and monitor user-installed software. (3.4.9)',10,126,0,999999),(127,2,64,'Yes',0,'',10,127,0,999999),(128,2,64,'No',1,_binary 'We do not identify information system users, processes acting on behalf of users, or devices. (3.5.1)',10,128,0,999999),(129,2,65,'Yes',0,'',10,129,0,999999),(130,2,65,'No',1,_binary 'We do not authenticate (or verify) the identities of those users, processes, or devices, as a prerequisite to allowing access to organizational information systems. (3.5.2)',10,130,0,999999),(131,2,66,'Yes',0,'',10,131,0,999999),(132,2,66,'No',1,_binary 'We do not use multi-factor authentication for local and network access to privileged accounts and for network access to non-privileged accounts. (3.5.3)',10,132,0,999999),(133,2,67,'Yes',0,'',10,133,0,999999),(134,2,67,'No',1,_binary 'We do not employ replay-resistant authentication mechanisms for network access to privileged and non-privileged accounts. (3.5.4)',10,134,0,999999),(135,2,68,'Yes',0,'',10,135,0,999999),(136,2,68,'No',1,_binary 'We do not prevent the reuse of identifiers for a defined period. (3.5.5)',10,136,0,999999),(137,2,69,'Yes',0,'',10,137,0,999999),(138,2,69,'No',1,_binary 'We do not disable identifiers after a defined period of inactivity. (3.5.5)',10,138,0,999999),(139,2,70,'Yes',0,'',10,139,0,999999),(140,2,70,'No',1,_binary 'We do not enforce a minimum password complexity and change of characters when new passwords are created? (3.5.7)',10,140,0,999999),(141,2,71,'Yes',0,'',0,141,0,999999),(142,2,71,'No',1,_binary 'We do not prohibit password reuse for a specified number of generations. (3.5.8)',10,142,0,999999),(143,2,72,'Yes',0,'',10,143,0,999999),(144,2,72,'No',1,_binary 'We do not allow temporary password use for system logons with an immediate change to a permanent password. (3.5.9)',10,144,0,999999),(145,2,73,'Yes',0,'',10,145,0,999999),(146,2,73,'No',1,_binary 'We do not store and transmit only encrypted representation of passwords. (3.5.10)',10,146,0,999999),(147,2,74,'Yes',0,'',10,147,0,999999),(148,2,74,'No',1,_binary 'We do not obscure feedback of authentication information. (3.5.11)',10,148,0,999999),(149,2,75,'Yes',0,'',10,149,0,999999),(150,2,75,'No',1,_binary 'We have not established an operational incident handling capability for organizational information systems that includes adequate preparation, detection, analysis, containment, recovery, and user response activities. (3.6.1)',10,150,0,999999),(151,2,76,'Yes',0,'',10,151,0,999999),(152,2,76,'No',1,_binary 'We do not track, document, and report incidents to appropriate officials and/or authorities both internal and external to the organizations. (3.6.2)',10,152,0,999999),(153,2,77,'Yes',0,'',10,153,0,999999),(154,2,77,'No',1,_binary 'We do not test the organizational incident response capability. (3.6.3)',10,154,0,999999),(155,2,78,'Yes',0,'',10,155,0,999999),(156,2,78,'No',1,_binary 'We do not perform maintenance on organizational information systems. (3.7.1)',10,156,0,999999),(157,2,79,'Yes',0,'',10,157,0,999999),(158,2,79,'No',1,_binary 'We do not provide effective controls on the tools, techniques, mechanisms, and personnel used to conduct information system maintenance. (3.7.2)',10,158,0,999999),(159,2,80,'Yes',0,'',10,159,0,999999),(160,2,80,'No',1,_binary 'We do not ensure equipment removed for off-site maintenance is sanitized of any CUI. (3.7.3)',10,160,0,999999),(161,2,81,'Yes',0,'',10,161,0,999999),(162,2,81,'No',1,_binary 'We do not check media containing diagnostic and test programs for malicious code before the media are used in the information system. (3.7.4)',10,162,0,999999),(163,2,82,'Yes',0,'',10,163,0,999999),(164,2,82,'No',1,_binary 'We do not require multifaction authentication to establish non-local maintenance sessions via external network connections when non-local maintenance is complete. (3.7.5) ',10,164,0,999999),(165,2,83,'Yes',0,'',10,165,0,999999),(166,2,83,'No',1,_binary 'We do not supervise the maintenance activities of maintenance personnel without required access authorization. (3.7.6)',10,166,0,999999),(167,2,84,'Yes',0,'',10,167,0,999999),(168,2,84,'No',1,_binary 'We do not protect (i.e., physically control and securely store) information system media  containing CUI, both paper and digital. (3.8.1)',10,168,0,999999),(169,2,85,'Yes',0,'',10,169,0,999999),(170,2,85,'No',1,_binary 'We do not limit access to CUI on information system media to authorized users. (3.8.2)',10,170,0,999999),(171,2,86,'Yes',0,'',10,171,0,999999),(172,2,86,'No',1,_binary 'We do not sanitize or destroy information system media containing CUI before disposal or release for reuse. (3.8.3)',10,172,0,999999),(173,2,87,'Yes',0,'',10,173,0,999999),(174,2,87,'No',1,_binary 'We do not mark media with the necessary CUI markings and distribution limitations. (3.8.4)',10,174,0,999999),(175,2,88,'Yes',0,'',10,175,0,999999),(176,2,88,'No',1,_binary 'We do not control access to media containing CUI and maintain accountability for media during transport outside of controlled areas. (3.8.5)',10,176,0,999999),(177,2,89,'Yes',0,'',10,177,0,999999),(178,2,89,'No',1,_binary 'We do not implement cryptographic mechanisms to protect the confidentiality of CUI stored on digital media during transport unless otherwise protected by alternative physical safeguards. (3.8.6)',10,178,0,999999),(179,2,90,'Yes',0,'',10,179,0,999999),(180,2,90,'No',1,_binary 'We do not control the use of removable media on information system components. (3.8.7)',10,180,0,999999),(181,2,91,'Yes',0,'',10,181,0,999999),(182,2,91,'No',1,_binary 'We do not prohibit the use of portable storage devices when such devices have no identifiable owner. (3.8.8)',10,182,0,999999),(183,2,92,'Yes',0,'',10,183,0,999999),(184,2,92,'No',1,_binary 'We do not protect the confidentiality of backup CUI at storage locations. (3.8.9)',10,184,0,999999),(185,2,93,'Yes',0,'',10,185,0,999999),(186,2,93,'No',1,_binary 'We do not screen individuals prior to authorizing access to information systems containing CUI. (3.9.1)',10,186,0,999999),(187,2,94,'Yes',0,'',10,187,0,999999),(188,2,94,'No',1,_binary 'We do not ensure that CUI and information systems containing CUI are protected during and after personnel actions such as terminations and transfers. (3.9.2)',0,188,0,999999),(189,2,95,'Yes',0,'',10,189,0,999999),(190,2,95,'No',1,_binary 'We do not limit physical access to organizational information systems, equipment, and the respective operating environments to authorized individuals. (3.10.1)',10,190,0,999999),(191,2,96,'Yes',0,'',10,191,0,999999),(192,2,96,'No',1,_binary 'We do not protect and monitor the physical facility and support infrastructure for those information systems. (3.10.2)',10,192,0,999999),(193,2,97,'Yes',0,'',10,193,0,999999),(194,2,97,'No',1,_binary 'We do not escort visitors and monitor visitor activity. (3.10.3)',10,194,0,999999),(195,2,98,'Yes',0,'',10,195,0,999999),(196,2,98,'No',1,_binary '(3.10.4) We do not maintain audit logs of physical access. (3.10.4)',0,196,0,999999),(197,2,99,'Yes',0,'',10,197,0,999999),(198,2,99,'No',1,_binary 'We do not control and manage physical access devices. (3.10.5)',10,198,0,999999),(199,2,100,'Yes',0,'',10,199,0,999999),(200,2,100,'No',1,_binary 'We do not enforce safeguarding measures for CUI at alternate work sites. (3.10.6)',10,200,0,999999),(201,2,101,'Yes',0,'',10,201,0,999999),(202,2,101,'No',1,_binary 'We do not periodically assess the risk to organizational operations (including mission, functions, image, or reputation), organizational assets, and individuals, resulting from the operation of organizational information systems and the associated processing, storage, or transmission of CUI. (3.11.1)',10,202,0,999999),(203,2,102,'Yes',0,'',10,203,0,999999),(204,2,102,'No',1,_binary 'We do not scan for vulnerabilities in the information system and applications periodically and when new vulnerabilities affecting the system are identified. (3.11.2)',10,204,0,999999),(205,2,103,'Yes',0,'',10,205,0,999999),(206,2,103,'No',1,_binary 'We do not remediate vulnerabilities in accordance with assessments of risk. (3.11.3)',10,206,0,999999),(207,2,104,'Yes',0,'',10,207,0,999999),(208,2,104,'No',1,_binary 'We do not periodically assess the security controls in organizational information systems to determine if the controls are effective in their application. (3.12.1)',10,208,0,999999),(209,2,105,'Yes',0,'',10,209,0,999999),(210,2,105,'No',1,_binary 'We do not develop and implement plans of action designed to correct deficiencies and reduce or eliminate vulnerabilities in organizational information systems. (3.12.2)',10,210,0,999999),(211,2,106,'Yes',0,'',10,211,0,999999),(212,2,106,'No',1,_binary 'We do not monitor information system security controls on an ongoing basis to ensure the continued effectiveness of the controls. (3.12.3)',10,212,0,999999),(213,2,107,'Yes',0,'',10,213,0,999999),(214,2,107,'No',1,_binary 'We do not monitor, control, and protect organizational communications (i.e. information transmitted or received by organizational information systems) at the external boundaries and key internal boundaries of the information systems. (3.13.1)',10,214,0,999999),(215,2,108,'Yes',0,'',10,215,0,999999),(216,2,108,'No',1,_binary 'We do not employ architectural designs, software development techniques, and systems engineering principles that promote effective information security within organizations information systems. (3.13.2)',10,216,0,999999),(217,2,109,'Yes',0,'',10,217,0,999999),(218,2,109,'No',1,_binary 'We do not separate user functionality from information system management functionality. (3.13.3)',10,218,0,999999),(219,2,110,'Yes',0,'',10,219,0,999999),(220,2,110,'No',1,_binary 'We do not prevent unauthorized and unintended information transfer via shared system resources. (3.13.4)',10,220,0,999999),(221,2,111,'Yes',0,'',10,221,0,999999),(222,2,111,'No',1,_binary 'We do not implement subnetworks for publicly accessible system components that are physically or logically separated from internal networks. (3.13.5)',10,222,0,999999),(223,2,112,'Yes',0,'',10,223,0,999999),(224,2,112,'No',1,_binary 'We do not deny network communications traffic by default and allow network communications by exception. (3.13.6)',10,224,0,999999),(225,2,113,'Yes',0,'',10,225,0,999999),(226,2,113,'No',1,_binary 'We do not prevent remote devices from simultaneously establishing non-remote connections with the information system and communicating via some other connection to resources in external networks. (3.13.7)',10,226,0,999999),(227,2,114,'Yes',0,'',10,227,0,999999),(228,2,114,'No',1,_binary 'We do not implement cryptographic mechanisms to prevent unauthorized disclosure of CUI during transmission unless otherwise protected by alternative physical safeguards. (3.13.8)',10,228,0,999999),(229,2,115,'Yes',0,'',10,229,0,999999),(230,2,115,'No',1,_binary 'We do not terminate network connections associated with communications sessions at the end of the sessions or after a defined period of inactivity. (3.13.9)',10,230,0,999999),(231,2,116,'Yes',0,'',10,231,0,999999),(232,2,116,'No',1,_binary 'We do not establish and manage cryptographic keys for cryptography employed in the information system. (3.13.10)',10,232,0,999999),(233,2,117,'Yes',0,'',10,233,0,999999),(234,2,117,'No',1,_binary 'We do not prohibit remote activation of collaborative computing devices and provide indication of devices in use to users present at the device. (3.13.12)',10,234,0,999999),(235,2,118,'Yes',0,'',10,235,0,999999),(236,2,118,'No',1,_binary 'We do not control and monitor the use of mobile code. (3.13.13)',10,236,0,999999),(237,2,119,'Yes',0,'',10,237,0,999999),(238,2,119,'No',1,_binary 'We do not control and monitor the use of voice over internet protocol (VOIP) technologies. (3.13.14)',10,238,0,999999),(239,2,120,'Yes',0,'',10,239,0,999999),(240,2,120,'No',1,_binary 'We do not protect the authenticity of communications sessions. (3.13.15)',10,240,0,999999),(241,2,121,'Yes',0,'',10,241,0,999999),(242,2,121,'No',1,_binary 'We do not protect the confidentiality of CUI at rest. (3.13.16)',10,242,0,999999),(243,2,122,'Yes',0,'',10,243,0,999999),(244,2,122,'No',1,_binary 'We do not identify, report, and correct information and information system flaws in a timely manner. (3.14.1)',10,244,0,999999),(245,2,123,'Yes',0,'',10,245,0,999999),(246,2,123,'No',1,_binary 'We do not provide protection from malicious code at appropriate locations within organizational information systems. (3.14.2)',10,246,0,999999),(247,2,124,'Yes',0,'',10,247,0,999999),(248,2,124,'No',1,_binary 'We do not monitor information system security alerts and advisories and take appropriate actions in response. (3.14.3)',10,248,0,999999),(249,2,125,'Yes',0,'',10,249,0,999999),(250,2,125,'No',1,_binary 'We do not update malicious code protection mechanisms when new releases are available. (3.14.4)',10,250,0,999999),(251,2,126,'Yes',0,'',10,251,0,999999),(252,2,126,'No',1,_binary 'We do not perform periodic scans of the information system and real-time scans of files from external sources as files are downloaded, opened, or executed. (3.14.5)',10,252,0,999999),(253,2,127,'Yes',0,'',10,253,0,999999),(254,2,127,'No',1,_binary 'We do not monitor the information system including inbound and outbound communications traffic, to detect attacks and indicators of potential attacks. (3.14.6)',10,254,0,999999),(255,2,128,'Yes',0,'',10,255,0,999999),(256,2,128,'No',1,_binary 'We do not identify unauthorized use of the information system. (3.14.7)',10,256,0,999999),(257,3,129,'Yes',0,'',10,257,0,999999),(258,3,129,'No',1,_binary 'We have not established and implemented firewall and router configuration standards that include a formal process for approving and testing all network connections and changes to the firewall and router configurations. (1.1.1)',10,258,0,999999),(259,3,130,'Yes',0,'',10,259,0,999999),(260,3,130,'No',1,_binary 'We have not established and implemented firewall and router configuration standards that include a current network diagram that identifies all connections between the cardholder data environment and other networks, including any wireless networks. (1.1.2)',10,260,0,999999),(261,3,131,'Yes',0,'',10,261,0,999999),(262,3,131,'No',1,_binary 'We have not created a diagram that shows the flow all cardholder data across systems and networks. (1.1.3)',10,262,0,999999),(263,3,132,'Yes',0,'',10,263,0,999999),(264,3,132,'No',1,_binary 'There are not firewalls in place at each and every internet connection and between any demilitarized zone (DMZ) and any internal network zone. (1.1.4)',10,264,0,999999),(265,3,133,'Yes',0,'',10,265,0,999999),(266,3,133,'No',1,_binary 'We do not have procedures in place for the description of groups, roles, and responsibilities for management of network components. (1.1.5)',10,266,0,999999),(267,3,134,'Yes',0,'',10,267,0,999999),(268,3,134,'No',1,_binary 'We do not have documentation of business justification and approval for use of all services, protocols, and ports allowed, including documentation of security features implemented for those protocols considered to be insecure. (1.1.6)',10,268,0,999999),(269,3,135,'Yes',0,'',10,269,0,999999),(270,3,135,'No',1,_binary 'We do not review firewall and router rule sets at least every six months. (1.1.7)',10,270,0,999999),(271,3,136,'Yes',0,'',10,271,0,999999),(272,3,136,'No',1,_binary 'We have not created firewall and router configurations that restrict connections between untrusted networks and any system components in the cardholder data environment. (1.2)',10,272,0,999999),(273,3,137,'Yes',0,'',10,273,0,999999),(274,3,137,'No',1,_binary 'There are not restrictions on inbound and outbound traffic to only that which is necessary for the cardholder data environment, and specifically deny all other traffic. (1.2.1)',10,274,0,999999),(275,3,138,'Yes',0,'',10,275,0,999999),(276,3,138,'No',1,_binary 'Router configuration files are not kept secure and synchronized. (1.2.2)',10,276,0,999999),(277,3,139,'Yes',0,'',10,277,0,999999),(278,3,139,'No',1,_binary 'We have not installed perimeter firewalls between all wireless networks and the cardholder data environment, and configured these firewalls to deny or, if traffic is necessary for business purposes, permit only authorized traffic between the wireless environment and the cardholder data environment. (1.2.3)',10,278,0,999999),(279,3,140,'Yes',0,'',10,279,0,999999),(280,3,140,'No',1,_binary 'We do not prohibit direct public access between the internet and any system component in the cardholder data environment. (1.3)',10,280,0,999999),(281,3,141,'Yes',0,'',10,281,0,999999),(282,3,141,'No',1,_binary 'We have not  implemented a DMZ to limit inbound traffic to only system components that provide authorized publicly accessible services, protocols, and ports. (1.3.1)',10,282,0,999999),(283,3,142,'Yes',0,'',10,283,0,999999),(284,3,142,'No',1,_binary 'We do not limit inbound internet traffic to IP addresses within the DMZ. (1.3.2)',10,284,0,999999),(285,3,143,'Yes',0,'',10,285,0,999999),(286,3,143,'No',1,_binary 'We have not implemented anti-spoofing measures to detect and block forged source IP addresses from entering the network. (1.3.3)',10,286,0,999999),(287,3,144,'Yes',0,'',10,287,0,999999),(288,3,144,'No',1,_binary 'We do not require authorization of outbound traffic from the cardholder data environment to the internet. (1.3.4)',10,288,0,999999),(289,3,145,'Yes',0,'',10,289,0,999999),(290,3,145,'No',1,_binary 'We do not permit only \"established\" connections to the internet. (1.3.5)',10,290,0,999999),(291,3,146,'Yes',0,'',10,291,0,999999),(292,3,146,'No',1,_binary 'We have not placed system components that store cardholder data (such as a database) in an internal network zone, segregated from the DMZ and other untrusted networks. (1.3.6)',10,292,0,999999),(293,3,147,'Yes',0,'',10,293,0,999999),(294,3,147,'No',1,_binary 'Private IP addresses and routing information is accessible to unauthorized parties. (1.3.7)',10,294,0,999999),(295,3,148,'Yes',0,'',10,295,0,999999),(296,3,148,'No',1,_binary 'We have not a installed personal firewall software or equivalent functionality on all portable computing devices that connect to the internet when outside the network, and which are also used to access the CDE. (1.4)',10,296,0,999999),(297,3,149,'Yes',0,'',10,297,0,999999),(298,3,149,'No',1,_binary 'We do not ensure that security policies and operational procedures for managing firewalls are documented, in use, and known to all affected parties. (1.5) ',10,298,0,999999),(299,3,150,'Yes',0,'',10,299,0,999999),(300,3,150,'No',1,_binary 'We have not changed all vendor-supplied defaults and removed or disabled unnecessary default accounts before installing systems onto the network. (2.1)',10,300,0,999999),(301,3,151,'Yes',0,'',10,301,0,999999),(302,3,151,'No',1,_binary 'We do not change all of the wireless vendor defaults at the time of installation, including but not limited to default wireless encryption keys, passwords, and SNMP community strings. (2.1.1)',10,302,0,999999),(303,3,152,'Yes',0,'',10,303,0,999999),(304,3,152,'No',1,_binary 'We have not developed configuration standards for all system components, assured that these standards address all known security vulnerabilities and are consistent with industry-accepted system hardening standards. (2.2)',10,304,0,999999),(305,3,153,'Yes',0,'',10,305,0,999999),(306,3,153,'No',1,_binary 'We have not implemented only one primary function per server to prevent functions that require different security levels from co-existing on the same server. (2.2.1)',10,306,0,999999),(307,3,154,'Yes',0,'',10,307,0,999999),(308,3,154,'No',1,_binary 'We do not enable only necessary services, protocols, daemons, etc., as required to for the function of the system. (2.2.2)',10,308,0,999999),(309,3,155,'Yes',0,'',10,309,0,999999),(310,3,155,'No',1,_binary 'We have not implemented additional security features for any required services, protocols, or daemons that are considered to be insecure. (2.2.3)',10,310,0,999999),(311,3,156,'Yes',0,'',10,311,0,999999),(312,3,156,'No',1,_binary 'We have not configured security parameters to prevent misuse. (2.2.4)',10,312,0,999999),(313,3,157,'Yes',0,'',10,313,0,999999),(314,3,157,'No',1,_binary 'We have not removed all unnecessary functionality, such as scripts, drivers, features, subsystems, file systems, and unnecessary web servers. (2.2.5)',10,314,0,999999),(315,3,158,'Yes',0,'',10,315,0,999999),(316,3,158,'No',1,_binary 'Have you encrypted all non-console administrative access using strong cryptography. (2.3)',10,316,0,999999),(317,3,159,'Yes',0,'',10,317,0,999999),(318,3,159,'No',1,_binary 'We do not maintain an inventory of system components that are in scope for PCI DSS. (2.4)',10,318,0,999999),(319,3,160,'Yes',0,'',10,319,0,999999),(320,3,160,'No',1,_binary 'We have not ensured that security policies and operational procedures for managing vendor defaults and other security parameters are documented, in use, and known to all affected parties. (2.5)',10,320,0,999999),(321,3,161,'Yes',0,'',10,321,0,999999),(322,3,161,'No',1,_binary 'Shared hosting providers are not protecting each entity\'s hosted environment and cardholder data. (2.6)',10,322,0,999999),(323,3,162,'Yes',0,'',10,323,0,999999),(324,3,162,'No',1,_binary 'We do not keep cardholder data storage to a minimum by implementing data retention and disposal policies, procedures and processes that include at least limiting data storage amount and retention time, processes for secure deletion of data when no longer needed, specific retention requirements for cardholder data, and a quarterly process for identifying and securely deleting stored cardholder data that exceeds defined retention. (3.1)',10,324,0,999999),(325,3,163,'Yes',0,'',10,325,0,999999),(326,3,163,'No',1,_binary 'We are storing sensitive authentication data after authorization (even if encrypted). (3.2a)',10,326,0,999999),(327,3,164,'Yes',0,'',10,327,0,999999),(328,3,164,'No',1,_binary 'If sensitive authentication data is received, we do not render all data unrecoverable upon completion of the the authorization request. (3.2b)',10,328,0,999999),(329,3,165,'Yes',0,'',10,329,0,999999),(330,3,165,'No',1,_binary 'We store the full contents of any track (from the magnetic stripe located on the back of a card, equivalent data contained on a chip, or elsewhere) after authorization. (3.2.1)',10,330,0,999999),(331,3,166,'Yes',0,'',10,331,0,999999),(332,3,166,'No',1,_binary 'We are storing the card verification code or value (three-digit or four-digit number printed on the front or back of a payment card used to verify card-not-present transactions) after authorization. (3.2.2)',10,332,0,999999),(333,3,167,'Yes',0,'',10,333,0,999999),(334,3,167,'No',1,_binary 'We store the personal identification number (PIN) or the encrypted PIN block after authorization. (3.2.3) ',10,334,0,999999),(335,3,168,'Yes',0,'',10,335,0,999999),(336,3,168,'No',1,_binary 'We do not mask PAN when displayed (the first six and last four digits are the maximum number of digits to be displayed), such that only personnel with legitimate business need can see more than the first six/last four digits of the PAN. (3.3)',10,336,0,999999),(337,3,169,'Yes',0,'',10,337,0,999999),(338,3,169,'No',1,_binary 'We do not render PAN unreadable anywhere it is stores (including on portable digital media, backup media, and in logs) by any of the following: One-way Hashes based on strong cryptography, truncation, index tokens and pads, strong cryptography with associated key-management processes and procedures. (3.4)',10,338,0,999999),(339,3,170,'Yes',0,'',10,339,0,999999),(340,3,170,'No',1,_binary 'When disk encryption is used,logical access is not managed separately and independently of native operating system authentication and access control mechanisms. (decryption keys must not be associated with user accounts.) (3.4.1) ',10,340,0,999999),(341,3,171,'Yes',0,'',10,341,0,999999),(342,3,171,'No',1,_binary 'We do not document and implement procedures to protect keys used to secure stored cardholder data against disclosure and misuse. (3.5) ',10,342,0,999999),(343,3,172,'Yes',0,'',10,343,0,999999),(344,3,172,'No',1,_binary 'We do not maintain a documented description of the cryptographic architecture that includes details of all algorithms, protocols, and keys used for the protection of card holder data, including key strength and expiry date, description of the key usage for each key, inventory of any HSMs and other SCDs used for key management. (3.5.1) ',10,344,0,999999),(345,3,173,'Yes',0,'',10,345,0,999999),(346,3,173,'No',1,_binary 'We do not restrict access to cryptographic keys to the fewest number of custodians necessary. (3.5.2)',10,346,0,999999),(347,3,174,'Yes',0,'',10,347,0,999999),(348,3,174,'No',1,_binary 'We do not store secret and private keys used to encrypt/decrypt cardholder data in one (or more) of the following forms at all times: Encrypted with a key-encrypting key that is at least as strong as the data encrypting key, and that is stored separately from the data-encrypting key. Within a secure cryptographic device. As at least two full-length key components or key shares, in accordance with an industry-accepted method. (3.5.3)',10,348,0,999999),(349,3,175,'Yes',0,'',10,349,0,999999),(350,3,175,'No',1,_binary 'Cryptographic keys are not stored in the fewest possible locations. (3.5.4)',10,350,0,999999),(351,3,176,'Yes',0,'',10,351,0,999999),(352,3,176,'No',1,_binary 'We do not fully document and implement all key-management processes and procedures for cryptographic keys used for encryption of cardholder data including generation of strong cryptographic keys. (3.6.1) ',10,352,0,999999),(353,3,177,'Yes',0,'',10,353,0,999999),(354,3,177,'No',1,_binary 'We do not fully document and implement all key-management processes and procedures for cryptographic keys used for encryption of cardholder data including secure cryptographic key distribution. (3.6.2)',10,354,0,999999),(355,3,178,'Yes',0,'',10,355,0,999999),(356,3,178,'No',1,_binary 'We do not fully document and implement all key-management processes and procedures for cryptographic keys used for encryption of cardholder data including secure cryptographic key storage. (3.6.3)',10,356,0,999999),(357,3,179,'Yes',0,'',10,357,0,999999),(358,3,179,'No',1,_binary 'We do not perform cryptographic key changes for keys that have reached the end of their cryptoperiod based on industry best practices and guidelines. (3.6.4)',10,358,0,999999),(359,3,180,'Yes',0,'',10,359,0,999999),(360,3,180,'No',1,_binary 'We do not have practices in place for the retirement or replacement of keys as deemed necessary when the integrity of the key has been weakened, or keys are suspected of being compromised. (3.6.5)',10,360,0,999999),(361,3,181,'Yes',0,'',10,361,0,999999),(362,3,181,'No',1,_binary 'When manual clear-text cryptographic key-management operations are used, these operations are not being managed by using split knowledge and dual control. (3.6.6)',10,362,0,999999),(363,3,182,'Yes',0,'',10,363,0,999999),(364,3,182,'No',1,_binary 'We do not have procedures in places to prevent unauthorized substitution of cryptographic keys. (3.6.7)',10,364,0,999999),(365,3,183,'Yes',0,'',10,365,0,999999),(366,3,183,'No',1,_binary 'We do not require cryptographic key custodians to formally acknowledge that they understand and accept their key-custodian responsibilities. (3.6.8) ',10,366,0,999999),(367,3,184,'Yes',0,'',10,367,0,999999),(368,3,184,'No',1,_binary 'We do not ensure that security policies and operational procedures for protecting stored cardholder data are documented, in use, and known to all affected parties. (3.7)',10,368,0,999999),(369,3,185,'Yes',0,'',10,369,0,999999),(370,3,185,'No',1,_binary 'We do not use strong cryptography and security protocols to safeguard sensitive cardholder data during transmission over open, public networks, including only trusted keys and certificates are accepted.(4.1a)',10,370,0,999999),(371,3,186,'Yes',0,'',10,371,0,999999),(372,3,186,'No',1,_binary 'We do not use strong cryptography and security protocols to safeguard sensitive cardholder data during transmission over open, public networks, including the protocol in use only supports secure versions or configurations. (4.1b)',10,372,0,999999),(373,3,187,'Yes',0,'',10,373,0,999999),(374,3,187,'No',1,_binary 'We do not use strong cryptography and security protocols to safeguard sensitive cardholder data during transmission over open, public networks, including encryption strength that is appropriate for the encryption methodology in use. (4.1c)',10,374,0,999999),(375,3,188,'Yes',0,'',10,375,0,999999),(376,3,188,'No',1,_binary 'We have not ensured wireless networks transmitting cardholder data or connected to the cardholder data environment, used industry best practices to implement strong encryption for authentication and transmission.(4.1.1) ',10,376,0,999999),(377,3,189,'Yes',0,'',10,377,0,999999),(378,3,189,'No',1,_binary 'We send unprotected PANs by end-user messaging technologies. (4.2) ',10,378,0,999999),(379,3,190,'Yes',0,'',10,379,0,999999),(380,3,190,'No',1,_binary 'We have not ensured that security policies and operational procedures for encrypting transmissions of cardholder data are documented, in use, and known to all affected parties. (4.3)',10,380,0,999999),(381,3,191,'Yes',0,'',10,381,0,999999),(382,3,191,'No',1,_binary 'We have not deployed anti-virus software on all systems commonly affected by malicious software. (Particularly personal computers and servers.) (5.1)',10,382,0,999999),(383,3,192,'Yes',0,'',10,383,0,999999),(384,3,192,'No',1,_binary 'We have not ensured that anti-virus programs are capable of detecting, removing, and protecting against all known types of malicious software. (5.1.1)',10,384,0,999999),(385,3,193,'Yes',0,'',10,385,0,999999),(386,3,193,'No',1,_binary 'We do not periodically reevaluate systems considered to not be commonly affected by malicious software in order to confirm whether such systems continue to not require anti-virus software. (5.1.2)',10,386,0,999999),(387,3,194,'Yes',0,'',10,387,0,999999),(388,3,194,'No',1,_binary 'We do not ensure all anti-virus mechanisms are kept current. (5.2a)',10,388,0,999999),(389,3,195,'Yes',0,'',10,389,0,999999),(390,3,195,'No',1,_binary 'We do not ensure all anti-virus mechanisms perform periodic scans. (5.2b)',10,390,0,999999),(391,3,196,'Yes',0,'',10,391,0,999999),(392,3,196,'No',1,_binary 'We do not ensure that all anti-virus mechanisms generate audit logs which are retained per PCI DSS requirement 10.7. (5.2c)',10,392,0,999999),(393,3,197,'Yes',0,'',10,393,0,999999),(394,3,197,'No',1,_binary 'We have not ensured that anti-virus mechanisms are actively running and cannot be disabled or altered by users, unless specifically authorized by management on a case-by-case basis for a limited time period. (5.3) ',10,394,0,999999),(395,3,198,'Yes',0,'',10,395,0,999999),(396,3,198,'No',1,_binary 'We have not ensured that security policies and operational procedures for protecting systems against malware are documented, in use, and known to all affected parties. (5.4)',10,396,0,999999),(397,3,199,'Yes',0,'',10,397,0,999999),(398,3,199,'No',1,_binary 'We have not established a process to identify security vulnerabilities, using reputable outside sources for security vulnerability information, and as assign a risk ranking to newly discovered security vulnerabilities. (6.1) ',10,398,0,999999),(399,3,200,'Yes',0,'',10,399,0,999999),(400,3,200,'No',1,_binary 'We have not ensured that all system components and software are protected from known vulnerabilities by installing applicable vendor-supplied security patches within one month of release. (6.2) ',10,400,0,999999),(401,3,201,'Yes',0,'',10,401,0,999999),(402,3,201,'No',1,_binary 'We have not developed internal and external software applications (including web-based administrative access to applications) securely in accordance with PCI DSS. (6.3a)',10,402,0,999999),(403,3,202,'Yes',0,'',10,403,0,999999),(404,3,202,'No',1,_binary 'We have not developed internal and external software applications (including web-based administrative access to applications based on industry standards and/or best practices. (6.3b)',10,404,0,999999),(405,3,203,'Yes',0,'',10,405,0,999999),(406,3,203,'No',1,_binary 'We have not developed internal and external software applications (including web-based administrative access to applications incorporating information security throughout the software-development life cycle. (6.3c)',10,406,0,999999),(407,3,204,'Yes',0,'',10,407,0,999999),(408,3,204,'No',1,_binary 'We do not remove development, test and/or custom application accounts, user IDs, and passwords before applications become active or are released to customers. (6.3.1)',10,408,0,999999),(409,3,205,'Yes',0,'',10,409,0,999999),(410,3,205,'No',1,_binary 'We do not review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include code changes are reviewed by individuals other than the originating code author, and by individuals knowledgeable about code-review techniques and secure coding practices. (6.3.2a)',10,410,0,999999),(411,3,206,'Yes',0,'',10,411,0,999999),(412,3,206,'No',1,_binary 'We do not review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include code reviews to ensure code is developed according to secure coding guidelines. (6.3.2b)',10,412,0,999999),(413,3,207,'Yes',0,'',10,413,0,999999),(414,3,207,'No',1,_binary 'We do not review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include appropriate corrections are implemented prior to release. (6.3.2c)',10,414,0,999999),(415,3,208,'Yes',0,'',10,415,0,999999),(416,3,208,'No',1,_binary 'We do not review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include code-review results are reviewed and approved by management prior to release. (6.3.2d)',10,416,0,999999),(417,3,209,'Yes',0,'',10,417,0,999999),(418,3,209,'No',1,_binary 'We do not follow change control processes and procedures for all changes to system components. (6.4)',10,418,0,999999),(419,3,210,'Yes',0,'',10,419,0,999999),(420,3,210,'No',1,_binary 'We do not separate development/test environments from production environments, and enforce the separation with access controls. (6.4.1)',10,420,0,999999),(421,3,211,'Yes',0,'',10,421,0,999999),(422,3,211,'No',1,_binary 'We do not have separation of duties between development/test and production environments. (6.4.2)',10,422,0,999999),(423,3,212,'Yes',0,'',10,423,0,999999),(424,3,212,'No',1,_binary 'Is production data being used for testing and development. (6.4.3) ',10,424,0,999999),(425,3,213,'Yes',0,'',10,425,0,999999),(426,3,213,'No',1,_binary 'We do not ensure removal of test data and accounts from system components before the system becomes active / goes into production. (6.4.4)',10,426,0,999999),(427,3,214,'Yes',0,'',10,427,0,999999),(428,3,214,'No',1,_binary 'Our change control procedures do not document impact. (6.4.5.1)',10,428,0,999999),(429,3,215,'Yes',0,'',10,429,0,999999),(430,3,215,'No',1,_binary 'Our change control procedures do not document change approval by authorized parties. (6.4.5.2)',10,430,0,999999),(431,3,216,'Yes',0,'',10,431,0,999999),(432,3,216,'No',1,_binary 'Our change control procedures do not functionally test to verify that the change does not adversely impact the security of the system. (6.4.5.3)',10,432,0,999999),(433,3,217,'Yes',0,'',10,433,0,999999),(434,3,217,'No',1,_binary 'Our change control procedures do not contain back-out procedures. (6.4.5.4)',10,434,0,999999),(435,3,218,'Yes',0,'',10,435,0,999999),(436,3,218,'No',1,_binary 'Upon completion of a significant change, we do not reevaluate all relevant PCI DSS requirements and re-implement the requirements of PCI DSS in all new or changed systems and networks, and documentation updated as applicable. (6.4.6)',10,436,0,999999),(437,3,219,'Yes',0,'',10,437,0,999999),(438,3,219,'No',1,_binary 'We do not address common coding vulnerabilities in software-development processes by training developers at least annually in up-to-date secure coding techniques, including how to avoid common coding vulnerabilities. (6.5) ',10,438,0,999999),(439,3,220,'Yes',0,'',10,439,0,999999),(440,3,220,'No',1,_binary 'We have not developed software-development policies and procedures to prevent injection flaws, particularly SQL injection as well as OS Command injection, LDAP and Xpath injection flaws as well as other injection flaws. (6.5.1)',10,440,0,999999),(441,3,221,'Yes',0,'',10,441,0,999999),(442,3,221,'No',1,_binary 'We do not have software-development policies and procedures to prevent the use of buffer overflows by validating buffer boundaries and truncating input strings. (6.5.2) ',10,442,0,999999),(443,3,222,'Yes',0,'',10,443,0,999999),(444,3,222,'No',1,_binary 'We do not have software-development policies and procedures to prevent insecure cryptographic storage. (6.5.3) ',10,444,0,999999),(445,3,223,'Yes',0,'',10,445,0,999999),(446,3,223,'No',1,_binary 'We do not have software-development policies and procedures to prevent the occurrence of insecure communications. (6.5.4)',10,446,0,999999),(447,3,224,'Yes',0,'',10,447,0,999999),(448,3,224,'No',1,_binary 'We do not have software-development policies and procedures to prevent improper error handling. (6.5.5)',10,448,0,999999),(449,3,225,'Yes',0,'',10,449,0,999999),(450,3,225,'No',1,_binary 'All \"high risk\" vulnerabilities are not identified in the vulnerability identification process. (6.5.6) ',10,450,0,999999),(451,3,226,'Yes',0,'',10,451,0,999999),(452,3,226,'No',1,_binary 'We do not have software-development policies and procedures to prevent cross-site scripting (XSS). (6.5.7)',10,452,0,999999),(453,3,227,'Yes',0,'',10,453,0,999999),(454,3,227,'No',1,_binary 'We do not have software-development policies and procedures to prevent improper access control (such as insecure direct object references, failure to restrict URL access, directory traversal, and failure to restrict user access to functions). (6.5.8)',10,454,0,999999),(455,3,228,'Yes',0,'',10,455,0,999999),(456,3,228,'No',1,_binary 'We do not have software-development policies and procedures to prevent cross-site request forgery (CSRF). (6.5.9) ',10,456,0,999999),(457,3,229,'Yes',0,'',10,457,0,999999),(458,3,229,'No',1,_binary 'We do not have software-development policies and procedures to prevent the use of broken authentication and session management. (6.5.10)',10,458,0,999999),(459,3,230,'Yes',0,'',10,459,0,999999),(460,3,230,'No',1,_binary 'For public-facing web applications, our organization does not address new threats and vulnerabilities on an ongoing basis and ensure these applications are protected against known attacks by either reviewing public-facing web applications via manual or automated application vulnerability security assessment tools or methods, at least annually and after any change or by installing an automated technical solution that detects and prevents web-based attacks in front of public facing web applications, to continually check all traffic. (6.6)',10,460,0,999999),(461,3,231,'Yes',0,'',10,461,0,999999),(462,3,231,'No',1,_binary 'We do not ensure that security policies and operational procedures for developing and maintaining secure systems and applications are documented, in use, and known to all affected parties. (6.7)',10,462,0,999999),(463,3,232,'Yes',0,'',10,463,0,999999),(464,3,232,'No',1,_binary 'We do not limit access to system components and cardholder data to only those individuals whose job requires such access. (7.1)',10,464,0,999999),(465,3,233,'Yes',0,'',10,465,0,999999),(466,3,233,'No',1,_binary 'We have not defined access needs for each role, including: System components and data resources that each role needs to access for their job function, Level of privilege required for accessing resources. (7.1.1)',10,466,0,999999),(467,3,234,'Yes',0,'',10,467,0,999999),(468,3,234,'No',1,_binary 'We do not restrict access to privileged user IDs to least privileges necessary to perform job responsibility. (7.1.2)',10,468,0,999999),(469,3,235,'Yes',0,'',10,469,0,999999),(470,3,235,'No',1,_binary 'We do not assign access based on individual personnelís job classification and function. (7.1.3)',10,470,0,999999),(471,3,236,'Yes',0,'',10,471,0,999999),(472,3,236,'No',1,_binary 'We do not require documented approval by authorized parties specifying required privileges. (7.1.4)',10,472,0,999999),(473,3,237,'Yes',0,'',10,473,0,999999),(474,3,237,'No',1,_binary 'We have not established an access control system(s) for systems components that restricts access based on a user\'s need to know, and is set to ìdeny allî unless specifically allowed. (7.2)',10,474,0,999999),(475,3,238,'Yes',0,'',10,475,0,999999),(476,3,238,'No',1,_binary 'Our access control system(s) do not include coverage of all system components. (7.2.1)',10,476,0,999999),(477,3,239,'Yes',0,'',10,477,0,999999),(478,3,239,'No',1,_binary 'Our access control system(s) do not include assignment of privileges to individuals based on job classification and function. (7.2.2)',10,478,0,999999),(479,3,240,'Yes',0,'',10,479,0,999999),(480,3,240,'No',1,_binary 'Our access control system(s) do not include default \"deny-all\" settings. (7.2.3)',10,480,0,999999),(481,3,241,'Yes',0,'',10,481,0,999999),(482,3,241,'No',1,_binary 'We do not ensure that security policies and operational procedures for restricting access to cardholder data are documented, in use, and known to all affected parties. (7.3)',10,482,0,999999),(483,3,242,'Yes',0,'',10,483,0,999999),(484,3,242,'No',1,_binary 'We have not defined and implemented policies and procedures to ensure proper user identification management for non-consumer users and administrators on all system components by assigning all users a unique ID before allowing them to access system components or cardholder data. (8.1.1)',10,484,0,999999),(485,3,243,'Yes',0,'',10,485,0,999999),(486,3,243,'No',1,_binary 'We have not defined and implemented policies and procedures to ensure proper user identification management for non-consumer users and administrators on all system components by control addition, deletion, and modification of user IDs, credentials, and other identifier objects. (8.1.2)',10,486,0,999999),(487,3,244,'Yes',0,'',10,487,0,999999),(488,3,244,'No',1,_binary 'We have not defined and implemented policies and procedures to ensure proper user identification management for non-consumer users and administrators on all system components by immediately revoking access for any terminated users. (8.1.3)',10,488,0,999999),(489,3,245,'Yes',0,'',10,489,0,999999),(490,3,245,'No',1,_binary 'We do not remove/disable inactive user accounts within 90 days. (8.1.4)',10,490,0,999999),(491,3,246,'Yes',0,'',10,491,0,999999),(492,3,246,'No',1,_binary 'We do not manage IDs used by third parties to access, support, or maintain system components via remote access by enabling only during the time period needed and disabled when not in use and by monitoring when in use. (8.1.5)',10,492,0,999999),(493,3,247,'Yes',0,'',10,493,0,999999),(494,3,247,'No',1,_binary 'We do not limit repeated access attempts by locking out the user ID after not more than six attempts. (8.1.6)',10,494,0,999999),(495,3,248,'Yes',0,'',10,495,0,999999),(496,3,248,'No',1,_binary 'We have not set the lockout duration to a minimum of 30 minutes or until an administrator enables the user ID. (8.1.7)',10,496,0,999999),(497,3,249,'Yes',0,'',10,497,0,999999),(498,3,249,'No',1,_binary 'If a session has been idle for more than 15 minutes, we do not require the user to re-authenticate to re-activate the terminal or session. (8.1.8)',10,498,0,999999),(499,3,250,'Yes',0,'',10,499,0,999999),(500,3,250,'No',1,_binary 'We do not in addition to assigning a unique ID, ensure proper user-authentication management for non-consumer users and administrators on all system components by employing at least one of the following method to authenticate all users: 1) Something you know, such as a password or passphrase, 2) Something you have, such as a token device or smart card, 3) Something you are, such as a biometric. (8.2)',10,500,0,999999),(501,3,251,'Yes',0,'',10,501,0,999999),(502,3,251,'No',1,_binary 'We do not use strong cryptography to render all authentication credentials unreadable during transmission and storage on all system components. (8.2.1)',10,502,0,999999),(503,3,252,'Yes',0,'',10,503,0,999999),(504,3,252,'No',1,_binary 'We do not verify user identity before modifying any authentication credential. (8.2.2)',10,504,0,999999),(505,3,253,'Yes',0,'',10,505,0,999999),(506,3,253,'No',1,_binary 'Our passwords/passphrases do not meet the following requirement, passwords require a minimum length of at least seven characters and contain both numeric and alphabetic characters. (8.2.3)',10,506,0,999999),(507,3,254,'Yes',0,'',10,507,0,999999),(508,3,254,'No',1,_binary 'We do not require users to change passwords/passphrases at least once every 90 days. (8.2.4) ',10,508,0,999999),(509,3,255,'Yes',0,'',10,509,0,999999),(510,3,255,'No',1,_binary 'We allow an individual to submit a new password/passphrase that is the same as any of the last four passwords/passphrases he or she has used. (8.2.5)',10,510,0,999999),(511,3,256,'Yes',0,'',10,511,0,999999),(512,3,256,'No',1,_binary 'We do not set passwords/passphrases for first-time use and upon reset to a unique value for each user, and change immediately after the first use. (8.2.6)',10,512,0,999999),(513,3,257,'Yes',0,'',10,513,0,999999),(514,3,257,'No',1,_binary 'We do not secure all individual non-console administrative access and all remote access to the CDE using multi-factor authentication. (8.3) ',10,514,0,999999),(515,3,258,'Yes',0,'',10,515,0,999999),(516,3,258,'No',1,_binary 'We do not incorporate multi-factor authentication for all non-console access into the CDE for personnel with administrative access. (8.3.1)',10,516,0,999999),(517,3,259,'Yes',0,'',10,517,0,999999),(518,3,259,'No',1,_binary 'We do not incorporate multi-factor authentication for all remote network access (both user and administrator, and including third-party access for support or maintenance) originating from outside the entityîs network. (8.3.2)',10,518,0,999999),(519,3,260,'Yes',0,'',10,519,0,999999),(520,3,260,'No',1,_binary 'We do not document and communicate authentication policies and procedures to all users including guidance on selecting strong authentication credentials. (8.4a)',10,520,0,999999),(521,3,261,'Yes',0,'',10,521,0,999999),(522,3,261,'No',1,_binary 'We do not document and communicate authentication policies and procedures to all users including guidance for how users should protect their authentication credentials. (8.4b)',10,522,0,999999),(523,3,262,'Yes',0,'',10,523,0,999999),(524,3,262,'No',1,_binary 'We do not document and communicate authentication policies and procedures to all users including instructions not to reuse previously used passwords. (8.4c)',10,524,0,999999),(525,3,263,'Yes',0,'',10,525,0,999999),(526,3,263,'No',1,_binary 'We do not document and communicate authentication policies and procedures to all users including instruction to change passwords if there is any suspicion  the password could be compromised. (8.4d)',10,526,0,999999),(527,3,264,'Yes',0,'',10,527,0,999999),(528,3,264,'No',1,_binary 'We do not prevent the use of group, shared, or generic IDs, passwords, or other authentication methods by use of the following policies and procedures: Generic user IDs are disabled or removed, shared user IDs do not exist for system administration and other critical functions, Shared and generic user IDs are not used to administer any system components. (8.5)',10,528,0,999999),(529,3,265,'Yes',0,'',10,529,0,999999),(530,3,265,'No',1,_binary 'As a service provider when using remote access to customer premises we do not use a unique authentication credential for each customer. (8.5.1) ',10,530,0,999999),(531,3,266,'Yes',0,'',10,531,0,999999),(532,3,266,'No',1,_binary 'When using other authentication mechanisms, do you assign authentication mechanisms to an individual account and not share among multiple accounts. (8.6a)',10,532,0,999999),(533,3,267,'Yes',0,'',10,533,0,999999),(534,3,267,'No',1,_binary 'When using other authentication mechanisms we do not ensure physical and/or logical controls must be in place to require that only the intended account can use that mechanism to gain access. (8.6b)',10,534,0,999999),(535,3,268,'Yes',0,'',10,535,0,999999),(536,3,268,'No',1,_binary 'We do not ensure all access to any database containing cardholder data is restricted so that all user access to, user queries of, and user actions on databases are through programmatic methods. (8.7a)',10,536,0,999999),(537,3,269,'Yes',0,'',10,537,0,999999),(538,3,269,'No',1,_binary 'We do not ensure all access to any database containing cardholder data is restricted to only database administrators having the ability to directly access or query databases. (8.7b)',10,538,0,999999),(539,3,270,'Yes',0,'',10,539,0,999999),(540,3,270,'No',1,_binary 'We do not ensure all access to any database containing cardholder data uses application IDs for database applications that can only be used by the database application. (8.7c)',10,540,0,999999),(541,3,271,'Yes',0,'',10,541,0,999999),(542,3,271,'No',1,_binary 'We do not ensure that security policies and operational procedures for identification and authentication are documented, in use, and known to all affected parties. (8.8)',10,542,0,999999),(543,3,272,'Yes',0,'',10,543,0,999999),(544,3,272,'No',1,_binary 'We do not use appropriate facility entry controls to limit and monitor physical access to systems in the cardholder data environment. (9.1)',10,544,0,999999),(545,3,273,'Yes',0,'',10,545,0,999999),(546,3,273,'No',1,_binary 'We do not use either video cameras or access control mechanisms to monitor individual physical access to sensitive areas and review collected data to correlate with other entries and store this data for at least three months, unless otherwise restricted by law. (9.1.1)',10,546,0,999999),(547,3,274,'Yes',0,'',10,547,0,999999),(548,3,274,'No',1,_binary 'We do not restrict physical access to wireless access points, gateways, handheld devices, networking/communications hardware, and telecommunication lines. (9.1.2)',10,548,0,999999),(549,3,275,'Yes',0,'',10,549,0,999999),(550,3,275,'No',1,_binary 'We do not have procedures to easily distinguish between onsite personnel and visitors by identifying onsite personnel and visitors visibly. (9.2a)',10,550,0,999999),(551,3,276,'Yes',0,'',10,551,0,999999),(552,3,276,'No',1,_binary 'We do not have procedures to easily distinguish between onsite personnel and visitors to include the use of changes to access requirements. (9.2b)',10,552,0,999999),(553,3,277,'Yes',0,'',10,553,0,999999),(554,3,277,'No',1,_binary 'We do not have procedures to easily distinguish between onsite personnel and visitors to include revoking or terminating onsite personnel and expired visitor identification. (9.2c)',10,554,0,999999),(555,3,278,'Yes',0,'',10,555,0,999999),(556,3,278,'No',1,_binary 'We do not control physical access for onsite personnel to sensitive areas by ensuring access must be authorized and based on individual job function. (9.3a)',10,556,0,999999),(557,3,279,'Yes',0,'',10,557,0,999999),(558,3,279,'No',1,_binary 'We do not control physical access for onsite personnel to sensitive areas by ensuring access is revoked immediately upon termination, and all physical access mechanisms, such as keys, access cards, etc., are returned or disabled. (9.3b)',10,558,0,999999),(559,3,280,'Yes',0,'',10,559,0,999999),(560,3,280,'No',1,_binary 'Visitors are not authorized before entering, and escorted at all times within, areas where cardholder data is processed and maintained. (9.4.1) ',10,560,0,999999),(561,3,281,'Yes',0,'',10,561,0,999999),(562,3,281,'No',1,_binary 'Visitors are not identified and given a badge or other identification that expires and that visibly distinguished the visitors from onsite personnel. (9.4.2)',10,562,0,999999),(563,3,282,'Yes',0,'',10,563,0,999999),(564,3,282,'No',1,_binary 'Visitors are not asked to surrender the badge or other identification before leaving the facility or at the date of expiration. (9.4.3)',10,564,0,999999),(565,3,283,'Yes',0,'',10,565,0,999999),(566,3,283,'No',1,_binary 'We do not make use of a visitor log to maintain a physical audit trail of visitor activity to the facility as well as computer rooms and data centers where cardholder data is stored or transmitted by documenting the visitorís name, the firm represented, and the onsite personnel authorizing physical access on the log and retain this log for a minimum of three months, unless otherwise restricted by law. (9.4.4)',10,566,0,999999),(567,3,284,'Yes',0,'',10,567,0,999999),(568,3,284,'No',1,_binary 'We do not physically secure all media. (9.5)',10,568,0,999999),(569,3,285,'Yes',0,'',10,569,0,999999),(570,3,285,'No',1,_binary 'We do not store media backups in a secure location, preferably an offsite facility, such as an alternate or backup site, or a commercial storage facility and review the locationís security at least annually. (9.5.1)',10,570,0,999999),(571,3,286,'Yes',0,'',10,571,0,999999),(572,3,286,'No',1,_binary 'We do not maintain strict control over the internal or external distribution of any kind of media as well as classify media so the sensitivity of the data can be determined. (9.6.1)',10,572,0,999999),(573,3,287,'Yes',0,'',10,573,0,999999),(574,3,287,'No',1,_binary 'We do not send media only by secured courier or other delivery method that can be accurately tracked. (9.6.2)',10,574,0,999999),(575,3,288,'Yes',0,'',10,575,0,999999),(576,3,288,'No',1,_binary 'We do not ensure management approves any and all media that is moved from a secured area. (9.6.3)',10,576,0,999999),(577,3,289,'Yes',0,'',10,577,0,999999),(578,3,289,'No',1,_binary 'We do not maintain strict control over the storage and accessibility of media. (9.7)',10,578,0,999999),(579,3,290,'Yes',0,'',10,579,0,999999),(580,3,290,'No',1,_binary 'We do not properly maintain inventory logs of all media and conduct media inventories at least annually. (9.7.1)',10,580,0,999999),(581,3,291,'Yes',0,'',10,581,0,999999),(582,3,291,'No',1,_binary 'We do not destroy physical media when it is no longer needed for business or legal reasons by shredding, incinerating, or reducing to pulp hard copy materials so that cardholder data cannot be reconstructed and use secure storage containers for materials that are to be destroyed. (9.8.1)',10,582,0,999999),(583,3,292,'Yes',0,'',10,583,0,999999),(584,3,292,'No',1,_binary 'We do not render cardholder data on electronic media unrecoverable so that cardholder data cannot be reconstructed. (9.8.2)',10,584,0,999999),(585,3,293,'Yes',0,'',10,585,0,999999),(586,3,293,'No',1,_binary 'We do not protect devices that capture payment card data via direct physical interaction with the card from tampering and substitution. (9.9)',10,586,0,999999),(587,3,294,'Yes',0,'',10,587,0,999999),(588,3,294,'No',1,_binary 'We do not maintain and up-to-date list of devices including make, model of device, location of device, and device serial number or other method of unique identification. (9.9.1)',10,588,0,999999),(589,3,295,'Yes',0,'',10,589,0,999999),(590,3,295,'No',1,_binary 'We do not periodically inspect device surfaces to detect tampering, or substitution. (9.9.2)',10,590,0,999999),(591,3,296,'Yes',0,'',10,591,0,999999),(592,3,296,'No',1,_binary 'We do not provide training for personnel to be aware of attempted tampering or replacement of devices to include verification of the identity of any third-party persons claiming to be repair or maintenance personnel, prior to granting them access to modify or troubleshoot devices. (9.9.3a)',10,592,0,999999),(593,3,297,'Yes',0,'',10,593,0,999999),(594,3,297,'No',1,_binary 'We do not provide training for personnel to be aware of attempted tampering or replacement of devices to include the denial of installation, replacement, and return of devices without verification. (9.9.3b)',10,594,0,999999),(595,3,298,'Yes',0,'',10,595,0,999999),(596,3,298,'No',1,_binary 'We do not provide training for personnel to be aware of attempted tampering or replacement of devices to include teaching awareness of suspicious behavior around devices. (9.9.3c)',10,596,0,999999),(597,3,299,'Yes',0,'',10,597,0,999999),(598,3,299,'No',1,_binary 'We do not provide training for personnel to be aware of attempted tampering or replacement of devices to include instruction to report suspicious behavior and indications of device tampering or substitution to appropriate personnel. (9.9.3d) ',10,598,0,999999),(599,3,300,'Yes',0,'',10,599,0,999999),(600,3,300,'No',1,_binary 'We do not ensure that security policies and operational procedures for restricting physical access to cardholder data are documented, in use, and known to all affected parties. (9.10)',10,600,0,999999),(601,3,301,'Yes',0,'',10,601,0,999999),(602,3,301,'No',1,_binary 'We have not implemented audit trails to link all access to system components to each individual user. (10.1)',10,602,0,999999),(603,3,302,'Yes',0,'',10,603,0,999999),(604,3,302,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct all individual user accesses to cardholder data. (10.2.1)',10,604,0,999999),(605,3,303,'Yes',0,'',10,605,0,999999),(606,3,303,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct all actions taken by any individual with root or administrative privileges. (10.2.2)',10,606,0,999999),(607,3,304,'Yes',0,'',10,607,0,999999),(608,3,304,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct access to all audit trails. (10.2.3)',10,608,0,999999),(609,3,305,'Yes',0,'',10,609,0,999999),(610,3,305,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct all invalid logical access attempts. (10.2.4)',10,610,0,999999),(611,3,306,'Yes',0,'',10,611,0,999999),(612,3,306,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct use of and changes to identification and authentication mechanisms-including but not limited to creation of new accounts and elevation of privileges-and all changes, additions, or deletions to accounts with root or administrative privileges. (10.2.5)',10,612,0,999999),(613,3,307,'Yes',0,'',10,613,0,999999),(614,3,307,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct initialization, stopping, or pausing of the audit logs. (10.2.6)',10,614,0,999999),(615,3,308,'Yes',0,'',10,615,0,999999),(616,3,308,'No',1,_binary 'We have not implemented automated audit trails for all system components to reconstruct creation and deletion of system-level objects. (10.2.7)',10,616,0,999999),(617,3,309,'Yes',0,'',10,617,0,999999),(618,3,309,'No',1,_binary 'We do not record audit trail entries for all system components for user identification. (10.3.1)',10,618,0,999999),(619,3,310,'Yes',0,'',10,619,0,999999),(620,3,310,'No',1,_binary 'We do not record audit trail entries for all system components and record each type of event. (10.3.2)',10,620,0,999999),(621,3,311,'Yes',0,'',10,621,0,999999),(622,3,311,'No',1,_binary 'We do not record audit trail entries for all system components and record the data and time of occurrence. (10.3.3)',10,622,0,999999),(623,3,312,'Yes',0,'',10,623,0,999999),(624,3,312,'No',1,_binary 'We do not record audit trail entries for all system components and record the success or failure of each operation. (10.3.4)',10,624,0,999999),(625,3,313,'Yes',0,'',10,625,0,999999),(626,3,313,'No',1,_binary 'We do not record audit trail entries for all system components and record the origination of event. (10.3.5)',10,626,0,999999),(627,3,314,'Yes',0,'',10,627,0,999999),(628,3,314,'No',1,_binary 'We do not record audit trail entries for all system components and record the identity or name of affected data, system component, or resource. (10.3.6)',10,628,0,999999),(629,3,315,'Yes',0,'',10,629,0,999999),(630,3,315,'No',1,_binary 'Using time-synchronization technology, We do not synchronize all critical system clocks and times and ensure that critical systems have the correct and consistent time. (10.4.1)',10,630,0,999999),(631,3,316,'Yes',0,'',10,631,0,999999),(632,3,316,'No',1,_binary 'Using time-synchronization technology, We do not synchronize all critical system clocks and times and ensure time data is protected. (10.4.2)',10,632,0,999999),(633,3,317,'Yes',0,'',10,633,0,999999),(634,3,317,'No',1,_binary 'Using time-synchronization technology, We do not synchronize all critical system clocks and times and ensure time settings are received from industry-accepted time sources. (10.4.3)',10,634,0,999999),(635,3,318,'Yes',0,'',10,635,0,999999),(636,3,318,'No',1,_binary 'We do not secure audit trails so they cannot be altered. (10.5)',10,636,0,999999),(637,3,319,'Yes',0,'',10,637,0,999999),(638,3,319,'No',1,_binary 'We do not limit viewing of audit trails to those with a job-related need. (10.5.1)',10,638,0,999999),(639,3,320,'Yes',0,'',10,639,0,999999),(640,3,320,'No',1,_binary 'We do not protect audit trail files from unauthorized modifications. (10.5.2)',10,640,0,999999),(641,3,321,'Yes',0,'',10,641,0,999999),(642,3,321,'No',1,_binary 'We do not promptly back up audit trail files to a centralized log server or media that is difficult to alter. (10.5.3)',10,642,0,999999),(643,3,322,'Yes',0,'',10,643,0,999999),(644,3,322,'No',1,_binary 'We do not write logs for external-facing technologies onto a secure, centralized, internal log server or media device. (10.5.4)',10,644,0,999999),(645,3,323,'Yes',0,'',10,645,0,999999),(646,3,323,'No',1,_binary 'We do not use file-integrity monitoring or change-detection software on logs to ensure that existing log data cannot be changed without generating alerts. (new data being added should not cause an alert) (10.5.5)',10,646,0,999999),(647,3,324,'Yes',0,'',10,647,0,999999),(648,3,324,'No',1,_binary 'We do not review logs and security events for all system components to identify anomalies or suspicious activity. (10.6)',10,648,0,999999),(649,3,325,'Yes',0,'',10,649,0,999999),(650,3,325,'No',1,_binary 'We do not review all security events, logs of all system components that store, process, or transmit CHD and/or SAD, logs of all critical system components, and logs of all servers and system components that perform security functions at least daily. (10.6.1)',10,650,0,999999),(651,3,326,'Yes',0,'',10,651,0,999999),(652,3,326,'No',1,_binary 'We do not review logs of all other system components periodically based on the organizationís policies and risk management strategy, as determined by the organizationís annual risk assessment. (10.6.2)',10,652,0,999999),(653,3,327,'Yes',0,'',10,653,0,999999),(654,3,327,'No',1,_binary 'We do not follow up exceptions and anomalies identified during the review process. (10.6.3)',10,654,0,999999),(655,3,328,'Yes',0,'',10,655,0,999999),(656,3,328,'No',1,_binary 'We do not retain audit trail history for at least one year, with a minimum of three months immediately available for analysis. (10.7)',10,656,0,999999),(657,3,329,'Yes',0,'',10,657,0,999999),(658,3,329,'No',1,_binary 'We have not implemented a process for the timely detection and reporting of failures of critical security control systems, including but not limited to failure of firewalls, IDS/IPS, FIM, anti-virus, physical access controls, logical access controls, audit logging mechanisms, and segmentation controls. (10.8',10,658,0,999999),(659,3,330,'Yes',0,'',10,659,0,999999),(660,3,330,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including restoring security functions. (10.8.1a)',10,660,0,999999),(661,3,331,'Yes',0,'',10,661,0,999999),(662,3,331,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including identifying and documenting the duration (date and time start to end). (10.8.1b)',10,662,0,999999),(663,3,332,'Yes',0,'',10,663,0,999999),(664,3,332,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including identifying and documenting cause(s) of failure, including root cause, and documenting remediation required to address the root cause. (10.8.1c)',10,664,0,999999),(665,3,333,'Yes',0,'',10,665,0,999999),(666,3,333,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including identifying and addressing any security issues that arose during the failure. (10.8.1d)',10,666,0,999999),(667,3,334,'Yes',0,'',10,667,0,999999),(668,3,334,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including performing a risk assessment to determine whether further actions are required as a result of the security failure. (10.8.1e)',10,668,0,999999),(669,3,335,'Yes',0,'',10,669,0,999999),(670,3,335,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including implementing controls to prevent the cause of failure from reoccurring. (10.8.1f)',10,670,0,999999),(671,3,336,'Yes',0,'',10,671,0,999999),(672,3,336,'No',1,_binary 'We do not respond to failures of any critical security controls in a timely manner, with processes for responding to failures including resuming monitoring of security of controls. (10.8.1g)',10,672,0,999999),(673,3,337,'Yes',0,'',10,673,0,999999),(674,3,337,'No',1,_binary 'We do not ensure that security policies and operation procedures for monitoring all access to network resources and cardholder data are documented, in use, and known to all affected parties. (10.9)',10,674,0,999999),(675,3,338,'Yes',0,'',10,675,0,999999),(676,3,338,'No',1,_binary 'We do not implement processes to test for the presence of wireless access points (802.11), and detect and identify all authorized and unauthorized wireless access points on a quarterly basis. (11.1)',10,676,0,999999),(677,3,339,'Yes',0,'',10,677,0,999999),(678,3,339,'No',1,_binary 'We do not maintain an inventory of authorized wireless access points including a documented business justification. (11.1.1)',10,678,0,999999),(679,3,340,'Yes',0,'',10,679,0,999999),(680,3,340,'No',1,_binary 'We have not implemented incident response procedures in the event unauthorized wireless access points are detected. (11.1.2)',10,680,0,999999),(681,3,341,'Yes',0,'',10,681,0,999999),(682,3,341,'No',1,_binary 'We do not run internal and external network vulnerability scans at least quarterly and after any significant changes in the network. (11.2)',10,682,0,999999),(683,3,342,'Yes',0,'',10,683,0,999999),(684,3,342,'No',1,_binary 'We do not perform quarterly internal vulnerability scans and address vulnerabilities and perform rescans to verify that all ìhigh riskî vulnerabilities are resolved in accordance with the entityís vulnerability ranking (per requirement 6.1) and that the scans are performed by qualified personnel. (11.2.1) ',10,684,0,999999),(685,3,343,'Yes',0,'',10,685,0,999999),(686,3,343,'No',1,_binary 'We do not perform quarterly external vulnerability scans, via an Approved Scanning Vendor (ASV) approved by the Payment Card Industry Security Standards Council (PCI SSC) and perform rescans as needed, until passing scans are achieved. (11.2.2)',10,686,0,999999),(687,3,344,'Yes',0,'',10,687,0,999999),(688,3,344,'No',1,_binary 'We do not perform internal and external scans, and rescans as needed, after any significant change and all scans are performed by qualified personnel. (11.2.3)',10,688,0,999999),(689,3,345,'Yes',0,'',10,689,0,999999),(690,3,345,'No',1,_binary 'We have not implemented a methodology for penetration testing that is based on industry-accepted penetration testing approaches. (11.3a) ',10,690,0,999999),(691,3,346,'Yes',0,'',10,691,0,999999),(692,3,346,'No',1,_binary 'We have not implemented a methodology for penetration testing that includes coverage for the entire CDE perimeter and critical systems. (11.3b)',10,692,0,999999),(693,3,347,'Yes',0,'',10,693,0,999999),(694,3,347,'No',1,_binary 'We have not implemented a methodology for penetration testing that includes testing from both inside and outside the network. (11.3c)',10,694,0,999999),(695,3,348,'Yes',0,'',10,695,0,999999),(696,3,348,'No',1,_binary 'We have not implemented a methodology for penetration testing that includes testing to validate any segmentation and scope-reduction controls. (11.3d)',10,696,0,999999),(697,3,349,'Yes',0,'',10,697,0,999999),(698,3,349,'No',1,_binary 'We have not implemented a methodology for penetration testing that defines application-layer penetration tests include, at a minimum, the vulnerabilities listed in requirement 6.5. (11.3e)',10,698,0,999999),(699,3,350,'Yes',0,'',10,699,0,999999),(700,3,350,'No',1,_binary 'We have not implemented a methodology for penetration testing that defines network-layer penetration tests to include components that support network functions as well as operating systems. (11.3f)',10,700,0,999999),(701,3,351,'Yes',0,'',10,701,0,999999),(702,3,351,'No',1,_binary 'We have not implemented a methodology for penetration testing that includes review and consideration of threats and vulnerabilities experienced in the last 12 months. (11.3g)',10,702,0,999999),(703,3,352,'Yes',0,'',10,703,0,999999),(704,3,352,'No',1,_binary 'We have not implemented a methodology for penetration testing that specifies retention of penetration testing results and remediation activities results. (11.3h)',10,704,0,999999),(705,3,353,'Yes',0,'',10,705,0,999999),(706,3,353,'No',1,_binary 'We do not perform external penetration testing at least annually and after any significant infrastructure or application upgrade or modification. (11.3.1)',10,706,0,999999),(707,3,354,'Yes',0,'',10,707,0,999999),(708,3,354,'No',1,_binary 'We do not perform internal penetration testing at least annually and after any significant infrastructure or application upgrade or modification. (11.3.2)',10,708,0,999999),(709,3,355,'Yes',0,'',10,709,0,999999),(710,3,355,'No',1,_binary 'Exploitable vulnerabilities found during penetration testing are not corrected and tested again to verify the corrections. (11.3.3)',10,710,0,999999),(711,3,356,'Yes',0,'',10,711,0,999999),(712,3,356,'No',1,_binary 'When segmentation is used to isolate the CDE from other networks, we do not perform penetration tests at least annually and after any changes to segmentation controls/methods to verify that the segmentation methods are operational and effective, and isolate all out-of-scope systems from systems in the CDE. (11.3.4)',10,712,0,999999),(713,3,357,'Yes',0,'',10,713,0,999999),(714,3,357,'No',1,_binary 'When segmentation is used, We have not confirmed PCI DSS scope by performing penetration testing on segmentation controls at least every six months and after any changes to segmentation controls/methods. (11.3.4.1)',10,714,0,999999),(715,3,358,'Yes',0,'',10,715,0,999999),(716,3,358,'No',1,_binary 'We do not use intrusion-detection and/or intrusion-prevention techniques to detect and/or prevent intrusion into the network and monitor all traffic at the perimeter of the cardholder data environment as well as at critical points in the cardholder data environment, and alert personnel to suspected compromises. (11.4a)',10,716,0,999999),(717,3,359,'Yes',0,'',10,717,0,999999),(718,3,359,'No',1,_binary 'We do not keep all intrusion-detection and prevention engine, baselines, and signatures up to date. (11.5b)',10,718,0,999999),(719,3,360,'Yes',0,'',10,719,0,999999),(720,3,360,'No',1,_binary 'We have not deployed a change-detection mechanism to alert personnel to unauthorized modifications of critical system files, configuration files, or content files; and configure the software to perform critical file comparisons at least weekly. (11.5)',10,720,0,999999),(721,3,361,'Yes',0,'',10,721,0,999999),(722,3,361,'No',1,_binary 'We have not implemented a process to respond to any alerts generated by the change-detection solution. (11.5.1)',10,722,0,999999),(723,3,362,'Yes',0,'',10,723,0,999999),(724,3,362,'No',1,_binary 'We do not ensure that security policies and operational procedures for security monitoring and testing are documented, in use, and known to all affected parties. (11.6)',10,724,0,999999),(725,3,363,'Yes',0,'',10,725,0,999999),(726,3,363,'No',1,_binary 'We have not established, published, maintained, and disseminated a security policy. (12.1)',10,726,0,999999),(727,3,364,'Yes',0,'',10,727,0,999999),(728,3,364,'No',1,_binary 'We do not review the security policy at least annually and update the police when the environment changes. (12.1.1)',10,728,0,999999),(729,3,365,'Yes',0,'',10,729,0,999999),(730,3,365,'No',1,_binary 'We have not implemented a risk-assessment process that is performed at least annually and upon significant changes to the environment. (12.2a) ',10,730,0,999999),(731,3,366,'Yes',0,'',10,731,0,999999),(732,3,366,'No',1,_binary 'We have not implemented a risk-assessment process that identifies critical assets, threats, and vulnerabilities. (12.2b)',10,732,0,999999),(733,3,367,'Yes',0,'',10,733,0,999999),(734,3,367,'No',1,_binary 'We have not implemented a risk-assessment process that results in a formal, documented analysis of risk. (12.2c)',10,734,0,999999),(735,3,368,'Yes',0,'',10,735,0,999999),(736,3,368,'No',1,_binary 'We do not develop usage policies for critical technologies and define proper use of these technologies. (12.3)',10,736,0,999999),(737,3,369,'Yes',0,'',10,737,0,999999),(738,3,369,'No',1,_binary 'Our usage policies do not require explicit approval by authorized parties for the use of these technologies. (12.3.1)',10,738,0,999999),(739,3,370,'Yes',0,'',10,739,0,999999),(740,3,370,'No',1,_binary 'Our usage policies do not require authentication for the use of the technology. (12.3.2)',10,740,0,999999),(741,3,371,'Yes',0,'',10,741,0,999999),(742,3,371,'No',1,_binary 'Our usage policies do not require a list of all such devices and personnel with access is recorded and up to date. (12.3.3)',10,742,0,999999),(743,3,372,'Yes',0,'',10,743,0,999999),(744,3,372,'No',1,_binary 'We do not have a method to accurately and readily determine owner, contact information, and purpose of all critical technology users. (12.3.4)',10,744,0,999999),(745,3,373,'Yes',0,'',10,745,0,999999),(746,3,373,'No',1,_binary 'Our usage policies do not define acceptable uses of the technology. (12.3.5)',10,746,0,999999),(747,3,374,'Yes',0,'',10,747,0,999999),(748,3,374,'No',1,_binary 'Our usage policies do not define acceptable network locations for the technologies. (12.3.6)',10,748,0,999999),(749,3,375,'Yes',0,'',10,749,0,999999),(750,3,375,'No',1,_binary 'Our usage policies do not define the use and maintenance of a list of company-approved products. (12.3.7)',10,750,0,999999),(751,3,376,'Yes',0,'',10,751,0,999999),(752,3,376,'No',1,_binary 'Our usage policies do not require automatic disconnecting of sessions through remote-access technologies after a specific period of inactivity. (12.3.8)',10,752,0,999999),(753,3,377,'Yes',0,'',10,753,0,999999),(754,3,377,'No',1,_binary 'Our usage policies do not define the requirement for activation of remote-access technologies for vendors and business partners is to be used only when needed by vendors and business partners, with immediate deactivation after use. (12.3.9)',10,754,0,999999),(755,3,378,'Yes',0,'',10,755,0,999999),(756,3,378,'No',1,_binary 'For personnel accessing cardholder data via remote-access technologies, We do not prohibit the copying, moving, and storage of cardholder data onto local hard drives and removable electronic media, unless explicitly authorized for a defined business need. (12.3.10a)',10,756,0,999999),(757,3,379,'Yes',0,'',10,757,0,999999),(758,3,379,'No',1,_binary 'Where there is an authorized business need, our usage policies do not require the data be protected in accordance with all applicable PCI DSS requirements. (12.3.10b)',10,758,0,999999),(759,3,380,'Yes',0,'',10,759,0,999999),(760,3,380,'No',1,_binary 'We do not ensure that the security policy and procedures clearly define information security responsibilities for all personnel. (12.4)',10,760,0,999999),(761,3,381,'Yes',0,'',10,761,0,999999),(762,3,381,'No',1,_binary 'Executive management has not established responsibility for the for the protection of cardholder data and a PCI DSS compliance program to include overall accountability for maintaining PCI DSS compliance. (12.4.1a)',10,762,0,999999),(763,3,382,'Yes',0,'',10,763,0,999999),(764,3,382,'No',1,_binary 'Executive management has not established responsibility for the for the protection of cardholder data and a PCI DSS compliance program to include definition of a charter for a PCI DSS compliance program and communication to executive management. (12.4.1b)',10,764,0,999999),(765,3,383,'Yes',0,'',10,765,0,999999),(766,3,383,'No',1,_binary 'We have not assigned an individual or team to the responsibility of establishing, documenting, and distributing security policies and procedures. (12.5.1)',10,766,0,999999),(767,3,384,'Yes',0,'',10,767,0,999999),(768,3,384,'No',1,_binary 'We have not assigned an individual or team to the responsibility of monitoring and analyzing security alerts and information, and distributing that information to the appropriate personnel. (12.5.2)',10,768,0,999999),(769,3,385,'Yes',0,'',10,769,0,999999),(770,3,385,'No',1,_binary 'We have not assigned an individual or team to the responsibility of establishing, documenting, and distributing security incident response and escalation procedures to ensure timely and effective handling of all situations. (12.5.3)',10,770,0,999999),(771,3,386,'Yes',0,'',10,771,0,999999),(772,3,386,'No',1,_binary 'We have not assigned an individual or team to the responsibility of administration of user accounts, including additions, deletions, and modifications. (12.5.4)',10,772,0,999999),(773,3,387,'Yes',0,'',10,773,0,999999),(774,3,387,'No',1,_binary 'We have not assigned an individual or team to the responsibility of monitoring and controlling all access to data. (12.5.5)',10,774,0,999999),(775,3,388,'Yes',0,'',10,775,0,999999),(776,3,388,'No',1,_binary 'We have not implemented a formal security awareness program to make all personnel aware of the cardholder data security policy and procedures. (12.6)',10,776,0,999999),(777,3,389,'Yes',0,'',10,777,0,999999),(778,3,389,'No',1,_binary 'We do not educate personnel upon hire and at least annually thereafter. (12.6.1)',10,778,0,999999),(779,3,390,'Yes',0,'',10,779,0,999999),(780,3,390,'No',1,_binary 'We do not require personnel to acknowledge at least annually that they have read and understood the security policy and procedures. (12.6.2)',10,780,0,999999),(781,3,391,'Yes',0,'',10,781,0,999999),(782,3,391,'No',1,_binary 'We do not screen potential personnel prior to hire to minimize the risk of attacks from internal sources. (12.7)',10,782,0,999999),(783,3,392,'Yes',0,'',10,783,0,999999),(784,3,392,'No',1,_binary 'We do not maintain and implement policies and procedures to manage service providers with whom cardholder data is shared, or that could affect the security of cardholder data, and maintain a list of service providers. (12.8)',10,784,0,999999),(785,3,393,'Yes',0,'',10,785,0,999999),(786,3,393,'No',1,_binary 'We do not maintain a list of service providers including a description of the service provided. (12.8.1)',10,786,0,999999),(787,3,394,'Yes',0,'',10,787,0,999999),(788,3,394,'No',1,_binary 'We do not maintain a written agreement with service providers that includes an acknowledgement that the service providers are responsible for the security of cardholder data the service providers possess or otherwise store, process or transmit on behalf of the customer, or to the extent that they could impact the security of the customerís cardholder data environment. (12.8.2)',10,788,0,999999),(789,3,395,'Yes',0,'',10,789,0,999999),(790,3,395,'No',1,_binary 'We do not ensure there is an established process for engaging service providers including proper due diligence prior to engagement. (12.8.3)',10,790,0,999999),(791,3,396,'Yes',0,'',10,791,0,999999),(792,3,396,'No',1,_binary 'We do not maintain a program to monitor service providersí PCI DSS compliance status at least annually. (12.8.4)',10,792,0,999999),(793,3,397,'Yes',0,'',10,793,0,999999),(794,3,397,'No',1,_binary 'We do not maintain information about which PCI DSS requirements are managed by each service provider, and which are managed by the entity. (12.8.5) ',10,794,0,999999),(795,3,398,'Yes',0,'',10,795,0,999999),(796,3,398,'No',1,_binary 'We do not acknowledge in writing to customers that you as a service provider are responsible for the security of cardholder data the service provider possesses or otherwise stores, processes, or transmits on behalf of the customer, or to the extent that they could impact the security of the customerís cardholder data environment. (12.9)',10,796,0,999999),(797,3,399,'Yes',0,'',10,797,0,999999),(798,3,399,'No',1,_binary 'We have not implemented an incident response plan and are prepared to respond immediately to a system breach. (12.10)',10,798,0,999999),(799,3,400,'Yes',0,'',10,799,0,999999),(800,3,400,'No',1,_binary 'We have not created an incident response plan to be initiated in the event of system breach. (12.10.1a)',10,800,0,999999),(801,3,401,'Yes',0,'',10,801,0,999999),(802,3,401,'No',1,_binary 'Our incident response plan does not address roles, responsibilities, and communication and contact strategies in the event of a compromise including notification of the payment brands, at a minimum. (12.10.1b) ',10,802,0,999999),(803,3,402,'Yes',0,'',10,803,0,999999),(804,3,402,'No',1,_binary 'Our incident response plan does not address specific incident response procedures. (12.10.1c)',10,804,0,999999),(805,3,403,'Yes',0,'',10,805,0,999999),(806,3,403,'No',1,_binary 'Our incident response plan does not address business recovery and continuity procedures. (12.10.1d)',10,806,0,999999),(807,3,404,'Yes',0,'',10,807,0,999999),(808,3,404,'No',1,_binary 'Our incident response plan does not address data backup processes. (12.10.1e)',10,808,0,999999),(809,3,405,'Yes',0,'',10,809,0,999999),(810,3,405,'No',1,_binary 'Our incident response plan does not address analysis of legal requirements for reporting compromises. (12.10.1f)',10,810,0,999999),(811,3,406,'Yes',0,'',10,811,0,999999),(812,3,406,'No',1,_binary 'Our incident response plan does not address coverage and responses of all critical system components. (12.10.1g)',10,812,0,999999),(813,3,407,'Yes',0,'',10,813,0,999999),(814,3,407,'No',1,_binary 'Our incident response does not plan have reference to or inclusion of incident response procedures from the payment brands. (12.10.1h)',10,814,0,999999),(815,3,408,'Yes',0,'',10,815,0,999999),(816,3,408,'No',1,_binary 'We do not review and test the plan, including all elements listed in requirement 12.10.1, at least annually. (12.10.2)',10,816,0,999999),(817,3,409,'Yes',0,'',10,817,0,999999),(818,3,409,'No',1,_binary 'We do not designate specific personnel to be available on a 24/7 basis to respond to alerts. (12.10.3)',10,818,0,999999),(819,3,410,'Yes',0,'',10,819,0,999999),(820,3,410,'No',1,_binary 'We do not provide appropriate training to staff with security breach response responsibilities. (12.10.4)',10,820,0,999999),(821,3,411,'Yes',0,'',10,821,0,999999),(822,3,411,'No',1,_binary 'We do not include alerts from security monitoring systems, including but not limited to intrusion-detection, intrusion-prevention, firewalls, and file-integrity monitoring systems. (12.10.5)',10,822,0,999999),(823,3,412,'Yes',0,'',10,823,0,999999),(824,3,412,'No',1,_binary 'We do not develop a process to modify and evolve the incident response plan according to lessons learned and to incorporate industry developments. (12.10.6)',10,824,0,999999),(825,3,413,'Yes',0,'',10,825,0,999999),(826,3,413,'No',1,_binary 'We do not perform reviews at least quarterly to confirm personnel are following security policies and operational procedures. (12.11a)',10,826,0,999999),(827,3,414,'Yes',0,'',10,827,0,999999),(828,3,414,'No',1,_binary 'Our reviews do not cover daily log reviews. (12.11b)',10,828,0,999999),(829,3,415,'Yes',0,'',10,829,0,999999),(830,3,415,'No',1,_binary 'We do not review firewall rule-set reviews. (12.11c)',10,830,0,999999),(831,3,416,'Yes',0,'',10,831,0,999999),(832,3,416,'No',1,_binary 'We do not review applying configuration standards to new systems. (12.11d)',10,832,0,999999),(833,3,417,'Yes',0,'',10,833,0,999999),(834,3,417,'No',1,_binary 'We do not review responses to security alerts. (12.11e)',10,834,0,999999),(835,3,418,'Yes',0,'',10,835,0,999999),(836,3,418,'No',1,_binary 'We do not review change management processes. (12.11f)',10,836,0,999999),(837,3,419,'Yes',0,'',10,837,0,999999),(838,3,419,'No',1,_binary 'We do not maintain documentation of quarterly review processes to include documenting results of the reviews as well as review and sign-off of results by personnel assigned responsibility for the PCI DSS compliance program. (12.11.1)',10,838,0,999999),(839,4,420,'No',0,'',10,839,0,999999),(840,4,420,'Yes',1,_binary 'The health plan uses or discloses for underwriting purposes, \"Genetic Information\" as defined at §160.103, including family history. §164.502(a) (5)(i)',10,840,0,999999),(841,4,421,'No',1,_binary 'The covered entity\'s policies and procedures do not protect the deceased individual\'s PHI consistent with the established performance criterion. §164.502(f)',10,841,0,999999),(842,4,421,'Yes',0,'',10,842,0,999999),(843,4,422,'No',1,_binary 'The policies and procedures do not provide for the treatment of an authorized person as a personal representative. §164.502(g)',10,843,0,999999),(844,4,422,'Yes',0,'',10,844,0,999999),(845,4,423,'No',1,_binary 'The entity does not provide for and accommodate requests by individuals for confidential communications. §164.502(h)',10,845,0,999999),(846,4,423,'Yes',0,'',10,846,0,999999),(847,4,424,'No',1,_binary 'The uses and disclosures made by the covered entity are not consistent with its notice of privacy practices. §164.502(i)',10,847,0,999999),(848,4,424,'Yes',0,'',10,848,0,999999),(849,4,425,'No',1,_binary 'Whistleblower policies and procedures are not consistent with the requirements of this performance criterion.  §164.502(j) (1)',10,849,0,999999),(850,4,425,'Yes',0,'',10,850,0,999999),(851,4,426,'No',1,_binary 'The covered entity has not ensured that disclosures by a workforce member related to his or her status as a victim of a crime are consistent with the rule established in the criterion. §164.502(j) (2)',10,851,0,999999),(852,4,426,'Yes',0,'',10,852,0,999999),(853,4,427,'No',1,_binary 'The covered entity enters into business associate contracts as required and these contracts do not contain all required elements. §164.504(e)',10,853,0,999999),(854,4,427,'Yes',0,'',10,854,0,999999),(855,4,428,'No',1,_binary 'Group health plan documents do not restrict the use and disclosure of PHI to the plan sponsor. §164.504(f)',10,855,0,999999),(856,4,428,'Yes',0,'',10,856,0,999999),(857,4,429,'No',1,_binary 'For entities that perform multiple covered functions, uses and disclosures of PHI are not only used for the purpose related to the appropriate functions being performed. §164.504(g)',10,857,0,999999),(858,4,429,'Yes',0,'',10,858,0,999999),(859,4,430,'No',1,_binary 'Policies and procedures do not exist for the use or disclosure of PHI for treatment, payment, or health care operations. §164.506(a)',10,859,0,999999),(860,4,430,'Yes',0,'',10,860,0,999999),(861,4,431,'No',1,_binary 'The entity does not obtain the individual\'s consent for uses and disclosures. §164.506(b); (b)(1); and (b)(2)',10,861,0,999999),(862,4,431,'Yes',0,'',10,862,0,999999),(863,4,432,'No',1,_binary 'Policies and procedures do not exist to determine when authorization is required. §164.508(a) (1-3) and §164.508(b) (1-2)',10,863,0,999999),(864,4,432,'Yes',0,'',10,864,0,999999),(865,4,433,'No',1,_binary 'The covered entity uses or discloses PHI for the purpose of research, conducts research, provides psychotherapy services, and uses compound authorizations. §164.508(b) (3)',10,865,0,999999),(866,4,433,'Yes',0,'',10,866,0,999999),(867,4,434,'No',1,_binary 'Does the covered entity condition treatment, payment, enrollment, or eligibility on receipt of an authorization and none of the limited exceptions apply. §164.508(b) (4)',10,867,0,999999),(868,4,434,'Yes',0,'',10,868,0,999999),(869,4,435,'No',1,_binary 'The covered entity does not document and retain signed, valid authorizations. §164.508(b) (6) and §164.508(c) (1-4)',10,869,0,999999),(870,4,435,'Yes',0,'',10,870,0,999999),(871,4,436,'No',1,_binary 'The entity does not maintain a directory of individuals in its facility. §164.510(a) (1) and §164.510(a) (2)',10,871,0,999999),(872,4,436,'Yes',0,'',10,872,0,999999),(873,4,437,'No',1,_binary 'Policies and procedures do not exist to use or disclose PHI for the facility directory in emergency circumstances. §164.510(a) (3)',10,873,0,999999),(874,4,437,'Yes',0,'',10,874,0,999999),(875,4,438,'No',1,_binary 'Policies and procedures do not exist for disclosing PHI to family members, relatives, close personal friends, or other persons identified by the individual? §164.510(b) (1)',10,875,0,999999),(876,4,438,'Yes',0,'',10,876,0,999999),(877,4,439,'No',1,_binary 'The covered entity discloses PHI to persons involved in the individual\'s care when the individual is present and there are not policies and procedures in place to define the circumstances in which this can be done. §164.510(b) (2)',10,877,0,999999),(878,4,439,'Yes',0,'',10,878,0,999999),(879,4,440,'No',1,_binary 'Policies and procedures do not exist for disclosing only information relevant to the person\'s involvement in the individual\'s health care when the individual is not present and in related situations. §164.510(b) (3)',10,879,0,999999),(880,4,440,'Yes',0,'',10,880,0,999999),(881,4,441,'No',1,_binary 'Policies and procedures do not exist for disclosing PHI to a public or private entity authorized by law or by its charter to assist in disaster relief efforts. §164.510(b) (4)',10,881,0,999999),(882,4,441,'Yes',0,'',10,882,0,999999),(883,4,442,'No',1,_binary 'The covered entity does not disclose the PHI of deceased individuals in accordance with the established performance criterion. §164.510(b) (5)',10,883,0,999999),(884,4,442,'Yes',0,'',10,884,0,999999),(885,4,443,'No',1,_binary 'The covered entity uses and discloses PHI pursuant to requirements of other law and  such uses and disclosures are not made consistent with the requirements of this performance criterion as well as the applicable requirements related to victims of abuse, neglect or domestic violence, pursuant to judicial and administrative proceedings and law enforcement purposes of this section. §164.512(a)',10,885,0,999999),(886,4,443,'Yes',0,'',10,886,0,999999),(887,4,444,'No',1,_binary 'Policies and procedures are not in place that specify how the covered entity uses or disclosures PHI for public health activities consistent with this standard. §164.512(b)',10,887,0,999999),(888,4,444,'Yes',0,'',10,888,0,999999),(889,4,445,'No',1,_binary 'The covered entity does not determine whether and how to make disclosures about victims of abuse, neglect, or domestic violence consistent with this standard. §164.512(c)',10,889,0,999999),(890,4,445,'Yes',0,'',10,890,0,999999),(891,4,446,'No',1,_binary 'PHI is not used or disclosed for health oversight activities consistent with the established performance criterion. §164.512(d)',10,891,0,999999),(892,4,446,'Yes',0,'',10,892,0,999999),(893,4,447,'No',1,_binary 'Policies and procedures do not exist related to making disclosures in the course of any judicial or administrative proceeding to limit such disclosures to those permitted by the established performance criterion. §164.512(e)',10,893,0,999999),(894,4,447,'Yes',0,'',10,894,0,999999),(895,4,448,'No',1,_binary 'Disclosures made by the covered entity for law enforcement purposes have not been consistent with the performance criterion. §164.512(f) (1)',10,895,0,999999),(896,4,448,'Yes',0,'',10,896,0,999999),(897,4,449,'No',1,_binary 'Disclosures made to law enforcement for identification and location purposes by the covered entity are not consistent with the limitations listed in the established performance criterion. §164.512(f) (2)',10,897,0,999999),(898,4,449,'Yes',0,'',10,898,0,999999),(899,4,450,'No',1,_binary 'Policies and procedures are not consistent with the established performance criterion regarding the conditions in which the covered entity may disclose PHI of a possible victim of a crime in response to a law enforcement official\'s request. §164.512(f) (3)',10,899,0,999999),(900,4,450,'Yes',0,'',10,900,0,999999),(901,4,451,'No',1,_binary 'Policies and procedures are not in place to determine when it is permitted to disclose PHI to law enforcement about an individual who has died as a result of suspected criminal conduct. §164.512(f) (4)',10,901,0,999999),(902,4,451,'Yes',0,'',10,902,0,999999),(903,4,452,'No',1,_binary 'Policies and procedures are not in place to determine when it is permitted to disclose PHI about an individual who may have committed a crime on the premises. §164.512(f) (5)',10,903,0,999999),(904,4,452,'Yes',0,'',10,904,0,999999),(905,4,453,'No',1,_binary 'Policies and procedures are not in place to determine what information about a medical emergency is necessary to disclose to alert law enforcement. §164.512(f) (6)',10,905,0,999999),(906,4,453,'Yes',0,'',10,906,0,999999),(907,4,454,'No',1,_binary 'Policies and procedures are not consistent with the established performance criterion for disclosing PHI to (1) a coroner or medical examiner; and (2) a funeral director. §164.512(g)',10,907,0,999999),(908,4,454,'Yes',0,'',10,908,0,999999),(909,4,455,'No',1,_binary 'The covered entity‚Äôs process for disclosing PHI to organ procurement organizations or other entities engaged in the procurement is not consistent with the established performance criterion. §164.512(h)',10,909,0,999999),(910,4,455,'Yes',0,'',10,910,0,999999),(911,4,456,'No',1,_binary 'The covered entity‚Äôs use or disclose of PHI for research purposes is not in accordance with the established performance criterion. §164.512(i) (1)',10,911,0,999999),(912,4,456,'Yes',0,'',10,912,0,999999),(913,4,457,'No',1,_binary 'Policies and procedures do not exist to determine what documentation of approval or waiver is needed to permit a use or disclosure and to apply that determination. §164.512(i) (2)',10,913,0,999999),(914,4,457,'Yes',0,'',10,914,0,999999),(915,4,458,'No',1,_binary 'The covered entity discloses PHI of individuals for military and veterans activities inconsistent with the established performance criterion. §164.512(k) (1)',10,915,0,999999),(916,4,458,'Yes',0,'',10,916,0,999999),(917,4,459,'No',1,_binary 'The covered entity does not respond to a request for PHI from Federal officials for intelligence and other national security activities in accordance with the established performance criterion. §164.512(k) (2)',10,917,0,999999),(918,4,459,'Yes',0,'',10,918,0,999999),(919,4,460,'No',1,_binary 'The covered entity does not respond to a request for PHI from Federal officials for the provision of protective services or the conduct of certain investigations in accordance with the established performance criterion. §164.512(k) (3)',10,919,0,999999),(920,4,460,'Yes',0,'',10,920,0,999999),(921,4,461,'No',1,_binary 'The covered entity a component of the Department of State and the covered entity does not have policies and procedures consistent with the established performance criterion to use and disclose PHI for the purposes described in the established performance criterion. §164.512(k) (4)',10,921,0,999999),(922,4,461,'Yes',0,'',10,922,0,999999),(923,4,462,'No',1,_binary 'The covered entity does not determine whether to disclose PHI to a correctional institution or a law enforcement official with custody of an individual and or policies and procedures are not in place to determine whether a use or disclosure of PHI to a correctional institution or law enforcement official is permitted. §164.512(k) (5)',10,923,0,999999),(924,4,462,'Yes',0,'',10,924,0,999999),(925,4,463,'No',1,_binary 'The covered entity is a health plan that is a government agency administering a government program providing public benefits and the covered entity does not have policies and procedures consistent with the established performance criterion in place to disclose PHI for the purposes listed. §164.512(k) (6)',10,925,0,999999),(926,4,463,'Yes',0,'',10,926,0,999999),(927,4,464,'No',1,_binary 'The policies and procedures in place regarding disclosure of PHI for the purpose of workers\' compensation, are not consistent with the established performance criterion. §164.512(l)',10,927,0,999999),(928,4,464,'Yes',0,'',10,928,0,999999),(929,4,465,'No',1,_binary 'The covered entity does not de-identify PHI consistent with the established performance criterion. §164.514(b) & §164.514(c)',10,929,0,999999),(930,4,465,'Yes',0,'',10,930,0,999999),(931,4,466,'No',1,_binary 'The covered entity has not implemented policies and procedures consistent with the requirements of the established performance criterion to identify need for and limit use of PHI. §164.514(d) (1)§164.514(d) (2)',10,931,0,999999),(932,4,466,'Yes',0,'',10,932,0,999999),(933,4,467,'No',1,_binary 'Policies and procedures are not in place to limit the PHI disclosed to the amount reasonably necessary to achieve the purpose of the disclosure. §164.514(d) (3)',10,933,0,999999),(934,4,467,'Yes',0,'',10,934,0,999999),(935,4,468,'No',1,_binary 'Policies and procedures are not in place to limit the PHI requested by the entity being audited to the amount minimally necessary to achieve the purpose of the disclosure.  §164.514(d) (4)',10,935,0,999999),(936,4,468,'Yes',0,'',10,936,0,999999),(937,4,469,'No',1,_binary 'Policies and procedures are not in place to address uses, disclosures, or requests for an entire medical record. §164.514(d) (5)',10,937,0,999999),(938,4,469,'Yes',0,'',10,938,0,999999),(939,4,470,'No',1,_binary 'Data use agreements are not in place between the covered entity and its limited data set recipients, if any. §164.514(e)',10,939,0,999999),(940,4,470,'Yes',0,'',10,940,0,999999),(941,4,471,'No',1,_binary 'The disclosure of PHI to a business associate or institutionally related foundation is not limited to the information set forth in the established performance criterion. §164.514(f)',10,941,0,999999),(942,4,471,'Yes',0,'',10,942,0,999999),(943,4,472,'No',1,_binary 'The health plan does not have policies and procedures consistent with the established performance criterion addressing limitations on the use and disclosure of PHI received for underwriting and other purposes. §164.514(g)',10,943,0,999999),(944,4,472,'Yes',0,'',10,944,0,999999),(945,4,473,'No',1,_binary 'Policies and procedures are not consistent with the established performance criterion in place to verify the identity of persons who request PHI. §164.514(h)',10,945,0,999999),(946,4,473,'Yes',0,'',10,946,0,999999),(947,4,474,'No',1,_binary 'The covered entity has a notice of privacy practice, and  the current notice does not contain all the required elements as seen in the established criterion. §164.520(a) (1) & (b)(1)',10,947,0,999999),(948,4,474,'Yes',0,'',10,948,0,999999),(949,4,475,'No',1,_binary 'The health plan does not provide its notice of privacy practices consistent with the established performance criterion. §164.520(c) (1)',10,949,0,999999),(950,4,475,'Yes',0,'',10,950,0,999999),(951,4,476,'No',1,_binary 'A covered health care provider with direct treatment relationships with individuals does not provide its notice of privacy practices consistent with the established performance criterion. §164.520(c) (2)',10,951,0,999999),(952,4,476,'Yes',0,'',10,952,0,999999),(953,4,477,'No',1,_binary 'The covered entity that maintains a web site does not prominently post its notice. §164.520(c) (3)',10,953,0,999999),(954,4,477,'Yes',0,'',10,954,0,999999),(955,4,478,'No',1,_binary 'The covered entity has not implemented policies and procedures to provide the notice electronically consistent with the standard. §164.520(c) (3)',10,955,0,999999),(956,4,478,'Yes',0,'',10,956,0,999999),(957,4,479,'No',1,_binary 'For covered entities that participate in organized health care arrangement, The entity uses a joint notice of privacy practices and the joint notice does not meet the specific additional criteria for a joint notice. §164.520(d)',10,957,0,999999),(958,4,479,'Yes',0,'',10,958,0,999999),(959,4,480,'No',1,_binary 'The documentation of notice of privacy practices and the acknowledgement of receipt by individuals of the notice of privacy practices is not maintained in electronic or written form and retained for a period of 6 years. §164.520(e)',10,959,0,999999),(960,4,480,'Yes',0,'',10,960,0,999999),(961,4,481,'No',1,_binary 'The covered entity does not have policies and procedures consistent with the established performance criterion to permit an individual to request that the entity restrict uses or disclosures of PHI for treatment, payment, and health care operations, and disclosures permitted pursuant to §164.510(b).\n §164.522(a) (1)',10,961,0,999999),(962,4,481,'Yes',0,'',10,962,0,999999),(963,4,482,'No',1,_binary 'Policies and procedures are not in place to terminate restrictions on the use and/or disclosure of PHI, consistent with the established performance criterion. §164.522(a) (2)',10,963,0,999999),(964,4,482,'Yes',0,'',10,964,0,999999),(965,4,483,'No',1,_binary 'The covered entity, is not consistent with the established performance criterion, maintaining documentation of restrictions in electronic or written form for a period of six years. §164.522(a) (3)',10,965,0,999999),(966,4,483,'Yes',0,'',10,966,0,999999),(967,4,484,'No',1,_binary 'The covered entity does not have policies and procedures in place to permit individuals to request alternative means or alternative locations to receive communications of PHI consistent with the established performance criterion and/or the covered entity does not have policies and procedures in place to accommodate such requests consistent with the established performance criterion. §164.522(b) (1)',10,967,0,999999),(968,4,484,'Yes',0,'',10,968,0,999999),(969,4,485,'No',1,_binary 'The covered entity does not enable the access rights of an individual in accordance with the established criterion. §164.524(a) (1),\n (b)(1),\n (b)(2),\n (c)(2),\n (c)(3),\n (c)(4),\n (d)(1),\n (d)(3)',10,969,0,999999),(970,4,485,'Yes',0,'',10,970,0,999999),(971,4,486,'No',1,_binary 'The covered entity has not implemented policies and procedures that ensure that an individual receives a timely, written denial that contains all mandated elements. §164.524(d) (2)',10,971,0,999999),(972,4,486,'Yes',0,'',10,972,0,999999),(973,4,487,'No',1,_binary 'Policies and procedures do not exist that dictate the circumstances under which denials of requests for access are unreviewable. §164.524(a) (2)',10,973,0,999999),(974,4,487,'Yes',0,'',10,974,0,999999),(975,4,488,'No',1,_binary 'Policies and procedures are not in place regarding review of denials of access. §164.524(a) (3)',10,975,0,999999),(976,4,488,'Yes',0,'',10,976,0,999999),(977,4,489,'No',1,_binary 'Policies and procedures do not address request for and fulfillment of review of instances of access denial. §164.524(a) (4) & (d)(4)',10,977,0,999999),(978,4,489,'Yes',0,'',10,978,0,999999),(979,4,490,'No',1,_binary 'The covered entity does not document the following and retain the documentation as required by §164.530(j): (1) the designated record sets that are subject to access by individuals; and (2) the titles of the persons or offices responsible for receiving and processing requests for access by individuals. §164.524(e)',10,979,0,999999),(980,4,490,'Yes',0,'',10,980,0,999999),(981,4,491,'No',1,_binary 'The covered entity has not implemented policies and procedures consistent with the established performance criterion regarding an individual\'s right to amend their PHI in a designated record set. §164.526(a) (1)',10,981,0,999999),(982,4,491,'Yes',0,'',10,982,0,999999),(983,4,492,'No',1,_binary 'The covered entity has not implemented policies and procedures consistent with the established performance criterion for determining grounds for denying requests. §164.526(a) (2)',10,983,0,999999),(984,4,492,'Yes',0,'',10,984,0,999999),(985,4,493,'No',1,_binary 'The covered entity have does not policies and procedures consistent with the established performance criterion for accepting requests for amendments. §164.526(c)',10,985,0,999999),(986,4,493,'Yes',0,'',10,986,0,999999),(987,4,494,'No',1,_binary 'The covered entity has not implemented policies and procedures regarding provision of denial consistent with the established performance criterion?  §164.526(d)',10,987,0,999999),(988,4,494,'Yes',0,'',10,988,0,999999),(989,4,495,'No',1,_binary 'The covered entity does not have policies and procedures consistent with the established performance criterion for implementing an individual‚Äôs right to an accounting of disclosures of PHI. §164.528(a)',10,989,0,999999),(990,4,495,'Yes',0,'',10,990,0,999999),(991,4,496,'No',1,_binary 'The covered entity does not have policies and procedures consistent with the established performance criterion to provide an accounting that contains the content listed. §164.528(b)',10,991,0,999999),(992,4,496,'Yes',0,'',10,992,0,999999),(993,4,497,'No',1,_binary 'The covered entity does not have policies and procedures consistent with the established performance criterion to provide an individual with a requested accounting of PHI with in the time and fee limitations specified. §164.528(c)',10,993,0,999999),(994,4,497,'Yes',0,'',10,994,0,999999),(995,4,498,'No',1,_binary 'The covered entity does not document requests for and fulfillment of accounting of disclosures consistent with the established performance criterion. §164.528(d)',10,995,0,999999),(996,4,498,'Yes',0,'',10,996,0,999999),(997,4,499,'No',1,_binary 'The covered entity has not designated a privacy official and a contact person consistent with the established performance criterion. §164.530(a)',10,997,0,999999),(998,4,499,'Yes',0,'',10,998,0,999999),(999,4,500,'No',1,_binary 'The covered entity does not train its work force and have policies and procedures to ensure all members of the workforce receive necessary and appropriate training in a timely manner as provided for by the established performance criterion. §164.530(b)',10,999,0,999999),(1000,4,500,'Yes',0,'',10,1000,0,999999),(1001,4,501,'No',1,_binary 'The covered entity has not implemented administrative, technical, and physical safeguards to protect all PHI from any intentional or unintentional use or disclosure that is in violation of the standards, implementation specifications or other requirements of this subpart and/or the covered entity does not reasonably safeguard protected health information to limit incidental uses or disclosures made pursuant to an otherwise permitted or required use or disclosure.  §164.530(c)',10,1001,0,999999),(1002,4,501,'Yes',0,'',10,1002,0,999999),(1003,4,502,'No',1,_binary 'The covered entity does not have a process for individuals to make complaints, consistent with the requirements of the established performance criterion. §164.530(d) (1)',10,1003,0,999999),(1004,4,502,'Yes',0,'',10,1004,0,999999),(1005,4,503,'No',1,_binary 'The covered entity has not documented all complaints received and their disposition consistent with the performance criteria. §164.530(d) (2)',10,1005,0,999999),(1006,4,503,'Yes',0,'',10,1006,0,999999),(1007,4,504,'No',1,_binary 'The covered entity does not apply appropriate sanctions against members of the workforce who fail to comply with the privacy policies and procedures of the entity or the Privacy Rule.  §164.530(e) (1)',10,1007,0,999999),(1008,4,504,'Yes',0,'',10,1008,0,999999),(1009,4,505,'No',1,_binary 'The covered entity does not mitigate any harmful effect that is known to the covered entity of a use or disclosure of PHI by the covered entity or its business associates, in violation of its policies and procedures. §164.530(f)',10,1009,0,999999),(1010,4,505,'Yes',0,'',10,1010,0,999999),(1011,4,506,'No',1,_binary 'The covered entity has not implemented policies and procedures addressing the prevention of intimidating or retaliatory actions against any individual for the exercise by the individual of any right established, or for participation in any process provided, for filing complaints against the covered entity. §164.530(g)',10,1011,0,999999),(1012,4,506,'Yes',0,'',10,1012,0,999999),(1013,4,507,'No',0,'',10,1013,0,999999),(1014,4,507,'Yes',1,_binary 'The covered entity requires individuals to waive their right to complain to the Secretary of HHS about a covered entity or business associate not complying with these Rules, as a condition of the provision of treatment, payment, enrollment in a health plan, or eligibility for benefits? §164.530(h)',10,1014,0,999999),(1015,4,508,'No',1,_binary 'The covered entity has not implemented policies and procedures with respect to PHI that are designed to comply with the standards, implementation specifications, and other requirements of the HIPAA Privacy Rule. §164.530(i)',10,1015,0,999999),(1016,4,508,'Yes',0,'',10,1016,0,999999),(1017,4,509,'No',1,_binary 'The entity does not maintain all required policies and procedures, written communication, and documentation in written or electronic form and are such documentations retained for the required time period.\n  §164.530(j)',10,1017,0,999999),(1018,4,509,'Yes',0,'',10,1018,0,999999),(1019,4,510,'No',1,_binary 'The covered entity or business associate does not ensure confidentiality, integrity and availability of ePHI. §164.306(a)',10,1019,0,999999),(1020,4,510,'Yes',0,'',10,1020,0,999999),(1021,4,511,'No',1,_binary 'The covered entity or business associate does not protect against reasonably anticipated threats or hazards to the security or integrity of ePHI. §164.306(a)',10,1021,0,999999),(1022,4,511,'Yes',0,'',10,1022,0,999999),(1023,4,512,'No',1,_binary 'The covered entity or business associate does not protect against reasonably anticipated uses or disclosures of ePHI that are not permitted or required by the Privacy Rule. §164.306(a)',10,1023,0,999999),(1024,4,512,'Yes',0,'',10,1024,0,999999),(1025,4,513,'No',1,_binary 'The covered entity or business associate does not ensure compliance with Security Rule by its workforce. §164.306(a)',10,1025,0,999999),(1026,4,513,'Yes',0,'',10,1026,0,999999),(1027,4,514,'No',1,_binary 'The covered entity does not comply with Security Rule accounting for Size, Technical Infrastructure, and Cost, as well as the probability of potential risks to electronic protected health information in accordance with the established criterion. §164.306(b)',10,1027,0,999999),(1028,4,514,'Yes',0,'',10,1028,0,999999),(1029,4,515,'No',1,_binary 'The entity does not have written policies and procedures in place to prevent, detect, contain and correct security violations. §164.308(a)',10,1029,0,999999),(1030,4,515,'Yes',0,'',10,1030,0,999999),(1031,4,516,'No',1,_binary 'The entity does not have policies and procedures in place to conduct an accurate and thorough assessment of the potential risks and vulnerabilities to the confidentiality, integrity, and availability of all the electronic protected health information (ePHI) it creates, receives, maintains, or transmits. §164.308(a) (1)(ii)(A)',10,1031,0,999999),(1032,4,516,'Yes',0,'',10,1032,0,999999),(1033,4,517,'No',1,_binary 'The entity does not have policies and procedures in place regarding a risk management process sufficient to reduce risks and vulnerabilities to a reasonable and appropriate level.  §164.308(a) (1)(ii)(B)',10,1033,0,999999),(1034,4,517,'Yes',0,'',10,1034,0,999999),(1035,4,518,'No',1,_binary 'The entity does not have policies and procedures in place regarding sanctions to apply to workforce members who fail to comply with the entity\'s security policies and procedures.  §164.308(a) (1)(ii)(C)',10,1035,0,999999),(1036,4,518,'Yes',0,'',10,1036,0,999999),(1037,4,519,'No',1,_binary 'The entity have policies and procedures in place regarding the regular review of information system activity and does the entity regularly review records of information system activity. §164.308(a) (1)(ii)(D)',10,1037,0,999999),(1038,4,519,'Yes',0,'',10,1038,0,999999),(1039,4,520,'No',1,_binary 'The entity does not have policies and procedures in place regarding the establishment of a security official. §164.308(a) (2)',10,1039,0,999999),(1040,4,520,'Yes',0,'',10,1040,0,999999),(1041,4,521,'No',1,_binary 'The entity does not have policies and procedures in place to ensure all members of its workforce have appropriate access to ePHI. §164.308(a) (3)(i)',10,1041,0,999999),(1042,4,521,'Yes',0,'',10,1042,0,999999),(1043,4,522,'No',1,_binary 'The entity does not have policies and procedures in place regarding the authorization and/or supervision of workforce members who work with ePHI or in locations where it might be accessed. §164.308(a) (3)(ii)(A)',10,1043,0,999999),(1044,4,522,'Yes',0,'',10,1044,0,999999),(1045,4,523,'No',1,_binary 'The entity does not have policies and procedures in place to determine that a workforce member‚Äôs access to ePHI is appropriate. §164.308(a) (3)(ii)(B)',10,1045,0,999999),(1046,4,523,'Yes',0,'',10,1046,0,999999),(1047,4,524,'No',1,_binary 'The entity does not determine whether a workforce member\'s access to ePHI is appropriate. §164.308(a) (3)(ii)(B)',10,1047,0,999999),(1048,4,524,'Yes',0,'',10,1048,0,999999),(1049,4,525,'No',1,_binary 'The entity does not have policies and procedures in place for terminating access to ePHI when employment or other arrangements with the workforce member ends. §164.308(a) (3)(ii)(C)',10,1049,0,999999),(1050,4,525,'Yes',0,'',10,1050,0,999999),(1051,4,526,'No',1,_binary 'The entity does not have policies and procedures in place for authorizing access to ePHI that supports the applicable requirements of the Privacy Rule and does the entity authorize access to ePHI that supports the applicable requirements of the Privacy Rule. §164.308(a) (4)(i)',10,1051,0,999999),(1052,4,526,'Yes',0,'',10,1052,0,999999),(1053,4,527,'No',1,_binary 'The entity is a health care clearinghouse that is part of a larger organization, The clearinghouse does not have policies and procedures to protect ePHI from unauthorized access by the larger organization. §164.308(a) (4)(ii)(A)',10,1053,0,999999),(1054,4,527,'Yes',0,'',10,1054,0,999999),(1055,4,528,'No',1,_binary 'The clearinghouse does not protect ePHI from unauthorized access by the larger organization. §164.308(a) (4)(ii)(A)',10,1055,0,999999),(1056,4,528,'Yes',0,'',10,1056,0,999999),(1057,4,529,'No',1,_binary 'The entity does not have policies and procedures in place to grant access to ePHI for workforce members. §164.308(a) (4)(ii)(B)',10,1057,0,999999),(1058,4,529,'Yes',0,'',10,1058,0,999999),(1059,4,530,'No',1,_binary 'The entity does not have policies and procedures in place to authorize access and document, review, and modify a user‚Äôs right of access to a workstation, transaction, program, or process as well as practice these policies and procedures. §164.308(a) (4)(ii)(C)',10,1059,0,999999),(1060,4,530,'Yes',0,'',10,1060,0,999999),(1061,4,531,'No',1,_binary 'The entity does not have policies and procedures in place regarding a security awareness and training program as well as practice these policies and procedures. §164.308(a) (5)(i)',10,1061,0,999999),(1062,4,531,'Yes',0,'',10,1062,0,999999),(1063,4,532,'No',1,_binary 'The entity does not have policies and procedures in place regarding a process to provide periodic security reminders and updates. §164.308(a) (5)(ii)(A)',10,1063,0,999999),(1064,4,532,'Yes',0,'',10,1064,0,999999),(1065,4,533,'No',1,_binary 'The entity does not appropriately communicate security updates to all members of its workforce and, if appropriate, contractors periodically. §164.308(a) (5)(ii)(A)',10,1065,0,999999),(1066,4,533,'Yes',0,'',10,1066,0,999999),(1067,4,534,'No',1,_binary 'The entity does not have policies and procedures in place regarding a process to incorporate its procedures to guard against, detect, and report malicious software into its security awareness and training program. §164.308(a) (5)(ii)(B)',10,1067,0,999999),(1068,4,534,'Yes',0,'',10,1068,0,999999),(1069,4,535,'No',1,_binary 'The entity does not have policies and procedures in place regarding a process to incorporate its procedures to guard against, detect, and report malicious software into its security awareness and training program. §164.308(a) (5)(ii)(C)',10,1069,0,999999),(1070,4,535,'Yes',0,'',10,1070,0,999999),(1071,4,536,'No',1,_binary 'The entity does not have policies and procedures in place to incorporate procedures for monitoring log-in attempts and reporting discrepancies into its security awareness and training program. §164.308(a) (5)(ii)(D)',10,1071,0,999999),(1072,4,536,'Yes',0,'',10,1072,0,999999),(1073,4,537,'No',1,_binary 'The entity does not have policies and procedures in place to address security incidents.  §164.308(a) (6)(i)',10,1073,0,999999),(1074,4,537,'Yes',0,'',10,1074,0,999999),(1075,4,538,'No',1,_binary 'The entity does not have policies and procedures in place for identifying, responding to, reporting, and mitigating security incidents. §164.308(a) (6)(ii)',10,1075,0,999999),(1076,4,538,'Yes',0,'',10,1076,0,999999),(1077,4,539,'No',1,_binary 'The entity does not have policies and procedures in place that include a formal contingency plan for responding to an emergency or other occurrences that damages systems that contain ePHI? \n §164.308(a) (7)(i)',10,1077,0,999999),(1078,4,539,'Yes',0,'',10,1078,0,999999),(1079,4,540,'No',1,_binary 'The entity does not have a contingency plan for responding to an emergency or other occurrences that damages systems that contain ePHI. §164.308(a) (7)(i)',10,1079,0,999999),(1080,4,540,'Yes',0,'',10,1080,0,999999),(1081,4,541,'No',1,_binary 'The entity does not have policies and procedures in place to create and maintain retrievable exact copies of ePHI. §164.308(a) (7)(ii)(A)',10,1081,0,999999),(1082,4,541,'Yes',0,'',10,1082,0,999999),(1083,4,542,'No',1,_binary 'The entity does not create and maintain retrievable exact copies of ePHI. §164.308(a) (7)(ii)(A)',10,1083,0,999999),(1084,4,542,'Yes',0,'',10,1084,0,999999),(1085,4,543,'No',1,_binary 'The entity does not have policies and procedures in place to restore any lost data and 3does the entity restore any lost data. §164.308(a) (7)(ii)(B)',10,1085,0,999999),(1086,4,543,'Yes',0,'',10,1086,0,999999),(1087,4,544,'No',1,_binary 'Does the entity have policies and procedures in place to enable the continuity of critical business processes for the protection of ePHI while operating in emergency mode. §164.308(a) (7)(ii)(C)',10,1087,0,999999),(1088,4,544,'Yes',0,'',10,1088,0,999999),(1089,4,545,'No',1,_binary 'The entity does not enable the continuity of critical business processes for the protection of ePHI while operating in emergency mode. §164.308(a) (7)(ii)(C)',10,1089,0,999999),(1090,4,545,'Yes',0,'',10,1090,0,999999),(1091,4,546,'No',1,_binary 'The entity does not have policies and procedures for periodic testing and revisions of its contingency plans and does the entity periodically test and revise its contingency plans. §164.308(a) (7)(ii)(D)',10,1091,0,999999),(1092,4,546,'Yes',0,'',10,1092,0,999999),(1093,4,547,'No',1,_binary 'The entity does not have policies and procedures in place to assess the relative criticality of specific applications and data in support of other contingency plan components. §164.308(a) (7)(ii)(A)',10,1093,0,999999),(1094,4,547,'Yes',0,'',10,1094,0,999999),(1095,4,548,'No',1,_binary 'The entity does not assess the relative criticality of specific application and data in support of other contingency plan components. §164.308(a) (7)(ii)(A)',10,1095,0,999999),(1096,4,548,'Yes',0,'',10,1096,0,999999),(1097,4,549,'No',1,_binary 'The entity does not have policies and procedures in place to perform periodic technical and nontechnical evaluation, based initially upon the standards implemented under this rule and subsequently, in response to environmental or operational changes or newly recognized risk affecting the security of ePH. §164.308(a) (8)',10,1097,0,999999),(1098,4,549,'Yes',0,'',10,1098,0,999999),(1099,4,550,'No',1,_binary 'The entity does not perform periodic technical and nontechnical evaluation, based initially upon the standards implemented under this rule and subsequently, in response to environmental or operational changes or newly recognized risk affecting the security of ePHI. §164.308(a) (8)',10,1099,0,999999),(1100,4,550,'Yes',0,'',10,1100,0,999999),(1101,4,551,'No',1,_binary 'The entity does not have policies and procedures in place to obtain satisfactory assurances from its business associates (or business associate subcontractors if the entity is a business associate) and to review the satisfactory assurances to ensure the applicable requirements at § 164.314(a) are included in the business associate contract or other arrangement. §164.308(b) (1)',10,1101,0,999999),(1102,4,551,'Yes',0,'',10,1102,0,999999),(1103,4,552,'No',1,_binary 'The entity does not have policies and procedures in place to obtain satisfactory assurances from its business associates (or business associate subcontractors if entity is a business associate) and to review the satisfactory assurances to ensure the applicable requirements at § 164.314(a) is included in the written contract or other arrangement. §164.308(b) (3)',10,1103,0,999999),(1104,4,552,'Yes',0,'',10,1104,0,999999),(1105,4,553,'No',1,_binary 'The entity does not have policies and procedures in place regarding access to and use of facilities and equipment that house ePHI and does the entity limit physical access to its electronic information systems and the facility or facilities in which they are housed, while ensuring properly authorized access is allowed. §164.310(a) (1)',10,1105,0,999999),(1106,4,553,'Yes',0,'',10,1106,0,999999),(1107,4,554,'No',1,_binary 'The entity does not have policies and procedures in place that allow facility access for the restoration of lost data under the Disaster Recovery Plan and Emergency Mode Operations Plan. §164.310(a) (2)(i)',10,1107,0,999999),(1108,4,554,'Yes',0,'',10,1108,0,999999),(1109,4,555,'No',1,_binary 'The entity does not allow facility access for the restoration of lost data under the Disaster Recover Plan and Emergency Mode Operation Plan in the event of an emergency. §164.310(a) (2)(i)',10,1109,0,999999),(1110,4,555,'Yes',0,'',10,1110,0,999999),(1111,4,556,'No',1,_binary 'The entity does not have policies and procedures in place to safeguard the facility and equipment therein from unauthorized physical access, tampering, and theft. §164.310(a) (2)(ii)',10,1111,0,999999),(1112,4,556,'Yes',0,'',10,1112,0,999999),(1113,4,557,'No',1,_binary 'The entity does not safeguard the facility and equipment therein from unauthorized physical access, tampering, and theft. §164.310(a) (2)(ii)',10,1113,0,999999),(1114,4,557,'Yes',0,'',10,1114,0,999999),(1115,4,558,'No',1,_binary 'The entity does not have policies and procedures in place for controlling a person‚Äôs access to facilities based on their role or function including visitor control and control of access to software programs for testing and revision. §164.310(a) (2)(iii)',10,1115,0,999999),(1116,4,558,'Yes',0,'',10,1116,0,999999),(1117,4,559,'No',1,_binary 'The entity does not control a person\'s access to facilities based on their role or function including visitor control and control of access to software programs for testing and revision.  §164.310(a) (2)(iii)',10,1117,0,999999),(1118,4,559,'Yes',0,'',10,1118,0,999999),(1119,4,560,'No',1,_binary 'The entity does not have policies and procedures in place to document repairs and modifications to the physical components of a facility which are related to security. §164.310(a) (2)(iv)',10,1119,0,999999),(1120,4,560,'Yes',0,'',10,1120,0,999999),(1121,4,561,'No',1,_binary 'The entity does not document repairs and modifications to the physical components of a facility which are related to security. §164.310(a) (2)(iv)',10,1121,0,999999),(1122,4,561,'Yes',0,'',10,1122,0,999999),(1123,4,562,'No',1,_binary 'The entity does not have policies and procedures in place that specifies the proper functions to be performed and the physical attributes of the surroundings of a specific workstation or class of workstation that can access ePHI. §164.310(b)',10,1123,0,999999),(1124,4,562,'Yes',0,'',10,1124,0,999999),(1125,4,563,'No',1,_binary 'The entity does not specify the proper functions to be performed and the physical attributes of the surroundings of a specific workstation or class of workstation that can access ePHI. §164.310(b)',10,1125,0,999999),(1126,4,563,'Yes',0,'',10,1126,0,999999),(1127,4,564,'No',1,_binary 'The entity does not have policies and procedures that document how workstations are physically restricted to limit access to only authorized personnel. §164.310(c)',10,1127,0,999999),(1128,4,564,'Yes',0,'',10,1128,0,999999),(1129,4,565,'No',1,_binary 'The entity workstations that access electronic protected health information are not restricted to authorized users. §164.310(c)',10,1129,0,999999),(1130,4,565,'Yes',0,'',10,1130,0,999999),(1131,4,566,'No',1,_binary 'The entity does not have policies and procedures in place that govern the receipt and removal of hardware and electronic media that contain ePHI, into and out of a facility, and the movement of these items within the facility. §164.310(d) (1)',10,1131,0,999999),(1132,4,566,'Yes',0,'',10,1132,0,999999),(1133,4,567,'No',1,_binary 'The entity does not govern the receipt and removal of hardware and electronic media that contain ePHI, into and out of a facility, and the movement of these items within facility. §164.310(d) (1)',10,1133,0,999999),(1134,4,567,'Yes',0,'',10,1134,0,999999),(1135,4,568,'No',1,_binary 'The entity does not have policies and procedures that address the disposal ePHI data, hardware or electronic media on which it is stored. §164.310(d) (2)(i)',10,1135,0,999999),(1136,4,568,'Yes',0,'',10,1136,0,999999),(1137,4,569,'No',1,_binary 'The entity does not address the disposal ePHI data, hardware or electronic media on which it is stored. §164.310(d) (2)(i)',10,1137,0,999999),(1138,4,569,'Yes',0,'',10,1138,0,999999),(1139,4,570,'No',1,_binary 'The entity does not have policies and procedures established to remove ePHI before reusing electronic media? §164.310(d) (2)(ii)',10,1139,0,999999),(1140,4,570,'Yes',0,'',10,1140,0,999999),(1141,4,571,'No',1,_binary 'The entity does not have policies and procedures established to record who is responsible for the overseeing these ePHI removal processes? §164.310(d) (2)(ii)',10,1141,0,999999),(1142,4,571,'Yes',0,'',10,1142,0,999999),(1143,4,572,'No',1,_binary 'The entity does not remove ePHI before reusing electronic media and who is responsible for the overseeing those processes?  §164.310(d) (2)(ii)',10,1143,0,999999),(1144,4,572,'Yes',0,'',10,1144,0,999999),(1145,4,573,'No',1,_binary 'The entity does not record who is responsible for the overseeing those processes. §164.310(d) (2)(ii)',10,1145,0,999999),(1146,4,573,'Yes',0,'',10,1146,0,999999),(1147,4,574,'No',1,_binary 'The entity does not have policies and procedures to record the movements of hardware and electronic media and any person responsible therefore? §164.310(d) (2)(iii)',10,1147,0,999999),(1148,4,574,'Yes',0,'',10,1148,0,999999),(1149,4,575,'No',1,_binary 'The entity does not record the movements of hardware and electronic media and any person responsible therefore. §164.310(d) (2)(iii)',10,1149,0,999999),(1150,4,575,'Yes',0,'',10,1150,0,999999),(1151,4,576,'No',1,_binary 'The entity does not have policies and procedures in place to create a retrievable, exact copy of ePHI when needed, before movement of equipment and does the entity create retrievable, exact copy of ePHI when needed, before movement of equipment?. §164.310(d) (2)(iv)',10,1151,0,999999),(1152,4,576,'Yes',0,'',10,1152,0,999999),(1153,4,577,'No',1,_binary 'The entity does not create a retrievable, exact copy of ePHI when needed, before movement of equipment. §164.310(d) (2)(iv)',10,1153,0,999999),(1154,4,577,'Yes',0,'',10,1154,0,999999),(1155,4,578,'No',1,_binary 'Has the entity implemented technical policies and procedure for the electronic information systems that maintain ePHI to allow access only to authorized users? §164.312(a) (1)',10,1155,0,999999),(1156,4,578,'Yes',0,'',10,1156,0,999999),(1157,4,579,'No',1,_binary 'Does the entity only allow access to those persons or software programs that have been granted access rights as specified in § 164.308(a)(4) to electronic information systems that maintain electronic protected health information? §164.312(a) (1)',10,1157,0,999999),(1158,4,579,'Yes',0,'',10,1158,0,999999),(1159,4,580,'No',1,_binary 'The entity does not have polices and procedures regarding the assignment of unique user IDs to track user identity. §164.312(a) (2)(i)',10,1159,0,999999),(1160,4,580,'Yes',0,'',10,1160,0,999999),(1161,4,581,'No',1,_binary 'The entity does not assign unique user IDs to track user identity. §164.312(a) (2)(i)',10,1161,0,999999),(1162,4,581,'Yes',0,'',10,1162,0,999999),(1163,4,582,'No',1,_binary 'The entity does not have polices and procedures in place to provide access to ePHI during an emergency. §164.312(a) (2)(ii)',10,1163,0,999999),(1164,4,582,'Yes',0,'',10,1164,0,999999),(1165,4,583,'No',1,_binary 'The entity does not provide access to ePHI during an emergency. §164.312(a) (2)(ii)',10,1165,0,999999),(1166,4,583,'Yes',0,'',10,1166,0,999999),(1167,4,584,'No',1,_binary 'The entity does not have policies and procedures in place to automatically terminates an electronic session after a predetermined time of inactivity. §164.312(a) (2)(iii)',10,1167,0,999999),(1168,4,584,'Yes',0,'',10,1168,0,999999),(1169,4,585,'No',1,_binary 'The entity does not automatically terminates an electronic session after a predetermined time of inactivity. §164.312(a) (2)(iii)',10,1169,0,999999),(1170,4,585,'Yes',0,'',10,1170,0,999999),(1171,4,586,'No',1,_binary 'The entity does not have policies and procedures in place to encrypt and decrypt ePHI including processes regarding the use and management of the confidential process or key used to encrypt and decrypt ePHI. §164.312(a) (2)(iv)',10,1171,0,999999),(1172,4,586,'Yes',0,'',10,1172,0,999999),(1173,4,587,'No',1,_binary 'The entity does not encrypt and decrypt ePHI including processes regarding the use and management of the confidential process or key used to encrypt and decrypt ePHI?  §164.312(a) (2)(iv)',10,1173,0,999999),(1174,4,587,'Yes',0,'',10,1174,0,999999),(1175,4,588,'No',1,_binary 'The entity does not have policies and procedures in place to implement hardware, software and/or procedural mechanisms to record and examine activity in information systems that contain or use ePHI. §164.312(b)',10,1175,0,999999),(1176,4,588,'Yes',0,'',10,1176,0,999999),(1177,4,589,'No',1,_binary 'The entity does not have hardware, software and/or procedural mechanism to record and examine activity in information systems that contain or use ePHI? . §164.312(b)',10,1177,0,999999),(1178,4,589,'Yes',0,'',10,1178,0,999999),(1179,4,590,'No',1,_binary 'The entity does not have policies and procedures in place to protect ePHI from improper alteration or destruction. §164.312(c) (1)',10,1179,0,999999),(1180,4,590,'Yes',0,'',10,1180,0,999999),(1181,4,591,'No',1,_binary 'The entity does not protect ePHI form improper alteration or destruction. §164.312(c) (1)',10,1181,0,999999),(1182,4,591,'Yes',0,'',10,1182,0,999999),(1183,4,592,'No',1,_binary 'The entity does not have policies and procedures in place regarding the implementation of electronic mechanisms to corroborate that ePHI has not been altered or destroyed in an unauthorized manner. §164.312(c) (2)',10,1183,0,999999),(1184,4,592,'Yes',0,'',10,1184,0,999999),(1185,4,593,'No',1,_binary 'The entity does not have electronic mechanism to corroborate that ePHI has not been altered or destroyed in an unauthorized manner. §164.312(c) (2)',10,1185,0,999999),(1186,4,593,'Yes',0,'',10,1186,0,999999),(1187,4,594,'No',1,_binary 'The entity does not have policies and procedures in place to verify that a person or entity seeking access to ePHI is the one claimed. §164.312(d)',10,1187,0,999999),(1188,4,594,'Yes',0,'',10,1188,0,999999),(1189,4,595,'No',1,_binary 'The entity does not verify that a person or entity seeking access to ePHI is the one claimed. §164.312(d)',10,1189,0,999999),(1190,4,595,'Yes',0,'',10,1190,0,999999),(1191,4,596,'No',1,_binary 'The entity does not have policies and procedures in place to implement technical security controls to guard against unauthorized access to ePHI transmitted over electronic communications networks and  §164.312(e) (1)',10,1191,0,999999),(1192,4,596,'Yes',0,'',10,1192,0,999999),(1193,4,597,'No',1,_binary 'The entity does not have security controls to guard against unauthorized access to ePHI transmitted over electronic communications networks. §164.312(e) (1)',10,1193,0,999999),(1194,4,597,'Yes',0,'',10,1194,0,999999),(1195,4,598,'No',1,_binary 'The entity does not have policies and procedures in place to implement security measures to ensure that electronically transmitted ePHI cannot be improperly modified without detection until disposed of. §164.312(e) (2)(i)',10,1195,0,999999),(1196,4,598,'Yes',0,'',10,1196,0,999999),(1197,4,599,'No',1,_binary 'The entity does not have policies and procedures in place to implement an encryption mechanism to encrypt ePHI whenever deemed appropriate. §164.312(e) (2)(ii)',10,1197,0,999999),(1198,4,599,'Yes',0,'',10,1198,0,999999),(1199,4,600,'No',1,_binary 'The entity does not have an encryption mechanism to encrypt ePHI whenever deemed necessary. §164.312(e) (2)(ii)',10,1199,0,999999),(1200,4,600,'Yes',0,'',10,1200,0,999999),(1201,4,601,'No',1,_binary 'The entity does not have policies and procedures in place regarding its contractual arrangements with contractors or other entities to which it discloses ePHI for use on its behalf. §164.314(a) (1)',10,1201,0,999999),(1202,4,601,'Yes',0,'',10,1202,0,999999),(1203,4,602,'No',1,_binary 'The entity does not have policies and procedures in place regarding the content of its business associate contracts to ensure that its business associates will comply with applicable requirements of Subpart C of 45 CFR Part 164. §164.314(a) (2)(i)(A)',10,1203,0,999999),(1204,4,602,'Yes',0,'',10,1204,0,999999),(1205,4,603,'No',1,_binary 'The entity does not have policies and procedures in place requiring that its business associate contracts or other arrangements require that subcontractors that create, receive, maintain or transmit ePHI on behalf of its business associates agree to comply with the applicable parts of Subpart C of 45 CFR Part 164 by entering into a business associate contract or other arrangement that complies with 45 CFR § 164.314(a)? §164.314(a) (2)(i)(B)',10,1205,0,999999),(1206,4,603,'Yes',0,'',10,1206,0,999999),(1207,4,604,'No',1,_binary 'The entity does not have policies and procedures in place regarding the content of its business associate contracts to ensure that its business associates will report any security incident of which it becomes aware, including breaches of unsecured PHI, as required by 45 CFR § 164.410. §164.314(a) (2)(i)(C)',10,1207,0,999999),(1208,4,604,'Yes',0,'',10,1208,0,999999),(1209,4,605,'No',1,_binary 'The entity does not have policies and procedures in place regarding other arrangements to have in place (e.g., a Memorandum of Understanding if the covered entity and business associate are government agencies) that meet the requirements of 45 CFR § 164.504(e)(3).  §164.314(a) (2)(ii)',10,1209,0,999999),(1210,4,605,'Yes',0,'',10,1210,0,999999),(1211,4,606,'No',1,_binary 'The entity does not have policies and procedures in place regarding business associate contracts or other arrangements with its subcontractors such that the requirements of 45 CFR § 164.314(a)(2) (i)-(ii) would apply to the business associate and its subcontractors in the same manner as such requirements apply to a covered entity and its business associates. §164.314(a) (2)(iii)',10,1211,0,999999),(1212,4,606,'Yes',0,'',10,1212,0,999999),(1213,4,607,'No',1,_binary 'The group health plan does not have policies and procedures in place to ensure that its plan documents provide that the plan sponsor will reasonably and appropriately safeguard ePHI created, received, maintained or transmitted to or by the plan sponsor on behalf of the group health plan. §164.314(b) (1)',10,1213,0,999999),(1214,4,607,'Yes',0,'',10,1214,0,999999),(1215,4,608,'No',1,_binary 'The plan documents of the group health plan do not include language that requires the sponsor to implement administrative, physical, and technical safeguards that reasonably and appropriately protect the confidentiality, integrity, and availability of the ePHI that it creates, receives, maintains, or transmits on behalf of the group health plan. §164.314(b) (2)(i)',10,1215,0,999999),(1216,4,608,'Yes',0,'',10,1216,0,999999),(1217,4,609,'No',1,_binary 'The plan documents of the group health plan do not incorporate provisions to ensure that adequate separation required by 45 CFR § 164.504(f)(2) (iii) is supported by reasonable and appropriate security measures. §164.314(b) (2)(ii)',10,1217,0,999999),(1218,4,609,'Yes',0,'',10,1218,0,999999),(1219,4,610,'No',1,_binary 'The plan documents of the group health plan do not incorporate provisions to include language that requires the sponsors to ensure that any agent to whom it provides this information agrees to implement reasonable and appropriate security measures to protect the information. §164.314(b) (2)(iii)',10,1219,0,999999),(1220,4,610,'Yes',0,'',10,1220,0,999999),(1221,4,611,'No',1,_binary 'The plan documents of the group health plan do not incorporate provisions to include language that requires plan sponsors to report to the group health plan any security incident of which it becomes aware. §164.314(b) (2)(iv)',10,1221,0,999999),(1222,4,611,'Yes',0,'',10,1222,0,999999),(1223,4,612,'No',1,_binary 'The entity does not have policies and procedures in place to implement reasonable and appropriate policies and procedures to comply with the standards, implementation specification or other requirements of the Security Rule. §164.316(a)',10,1223,0,999999),(1224,4,612,'Yes',0,'',10,1224,0,999999),(1225,4,613,'No',1,_binary 'The entity does not have policies and procedures to maintain written policies and procedures related to the security rule and written documents of (if any) actions, activities, or assessments required of the security rule. §164.316(b) (1)',10,1225,0,999999),(1226,4,613,'Yes',0,'',10,1226,0,999999),(1227,4,614,'No',1,_binary 'The entity does not have policies and procedures in place regarding the retention of required documentation for six (6) years from the date of its creation or the date when it last was in effect. §164.316(b) (2) (i)',10,1227,0,999999),(1228,4,614,'Yes',0,'',10,1228,0,999999),(1229,4,615,'No',1,_binary 'The entity does not have policies and procedures in place requiring that documentation be made available to the workforce members responsible for implementing applicable Security Rule policies and procedures. §164.316(b) (2) (ii)',10,1229,0,999999),(1230,4,615,'Yes',0,'',10,1230,0,999999),(1231,4,616,'No',1,_binary 'The entity does not have policies and procedures in place to perform periodic reviews and updates to Security Rule policies and procedures. §164.316(b) (2) (iii)',10,1231,0,999999),(1232,4,616,'Yes',0,'',10,1232,0,999999),(1233,4,617,'No',1,_binary 'The covered entity has not adequately implemented the required 164.530 provisions as they relate to the Breach Notification Rule. §164.414(a)',10,1233,0,999999),(1234,4,617,'Yes',0,'',10,1234,0,999999),(1235,4,618,'No',1,_binary 'The covered entity has not trained its workforce on the applicable provisions established in the audit criterion. §164.530(b)',10,1235,0,999999),(1236,4,618,'Yes',0,'',10,1236,0,999999),(1237,4,619,'No',1,_binary 'The covered entity does not have a process in place for individuals to complain about its compliance with the Breach Notification Rule. §164.530(d)',10,1237,0,999999),(1238,4,619,'Yes',0,'',10,1238,0,999999),(1239,4,620,'No',1,_binary 'The covered entity has not sanctioned any workforce members for failing to comply with its policies and procedures as they relate to the Breach Notification Rule. §164.530(e)',10,1239,0,999999),(1240,4,620,'Yes',0,'',10,1240,0,999999),(1241,4,621,'No',1,_binary 'The covered entity does not have appropriate policies and procedures in place to prohibit retaliation against any individual for exercising a right or participating in a process (e.g., assisting in an investigation by HHS or other appropriate authority or for filing a complaint) or for opposing an act or practice that the person believes in good faith violates the Breach Notification Rule. §164.530(g)',10,1241,0,999999),(1242,4,621,'Yes',0,'',10,1242,0,999999),(1243,4,622,'No',1,_binary 'The covered entity does not have appropriate policies and procedures in place to prohibit it from requiring an individual to waive any right under the Breach Notification Rule as a condition of the provision of treatment, payment, enrollment in a health plan, or eligibility for benefits. §164.530(h)',10,1243,0,999999),(1244,4,622,'Yes',0,'',10,1244,0,999999),(1245,4,623,'No',1,_binary 'The covered entity does not have policies and procedures that are consistent with the requirements of the Breach Notification Rule. §164.530(i)',10,1245,0,999999),(1246,4,623,'Yes',0,'',10,1246,0,999999),(1247,4,624,'No',1,_binary 'The covered entity does not have policies and procedures for maintaining documentation consistent with the requirements at §164.530(j). §164.530(j)',10,1247,0,999999),(1248,4,624,'Yes',0,'',10,1248,0,999999),(1249,4,625,'No',1,_binary 'The covered entity does not have policies and procedures for determining whether an impermissible use or disclosure requires notifications under the Breach Notification Rule.  §164.402',10,1249,0,999999),(1250,4,625,'Yes',0,'',10,1250,0,999999),(1251,4,626,'No',1,_binary 'The covered entity does not have a process for conducting a breach risk assessment when an impermissible use or disclosure of PHI is discovered, to determine whether there is a low probability that PHI has been compromised. §164.402',10,1251,0,999999),(1252,4,626,'Yes',0,'',10,1252,0,999999),(1253,4,627,'No',1,_binary 'The covered entity does not have a policy and procedure that requires notification without conducting a risk assessment for all or specific types of incidents that result in impermissible uses or disclosures of PHI. §164.402',10,1253,0,999999),(1254,4,627,'Yes',0,'',10,1254,0,999999),(1255,4,628,'No',0,_binary 'The covered entity or business associate determined that an acquisition, access, use or disclosure of protected health information was in violation of the Privacy Rule but did not require notifications under §164.404-164.410 within the specified period. §164.402',10,1255,0,999999),(1256,4,628,'Yes',0,'',10,1256,0,999999),(1257,4,629,'No',1,_binary 'The covered entity or business associate did not determine that one of the regulatory exceptions to the definition of breach at §164.402(1) applied. §164.402',10,1257,0,999999),(1258,4,629,'Yes',0,'',10,1258,0,999999),(1259,4,630,'No',1,_binary 'The covered entity or business associate did not determine that the breach did not require notification, under §§164.404-410, because the PHI was not unsecured PHI, I.e, it was rendered unusableble, unreadable, or indecipherable to unauthorized persons through the use of a technology or methodology specified in the applicable guidance. §164.402',10,1259,0,999999),(1260,4,630,'Yes',0,'',10,1260,0,999999),(1261,4,631,'No',1,_binary 'The covered entity does not have policies and procedures for notifying individuals of a breach of their protected health information. §164.404(a)',10,1261,0,999999),(1262,4,631,'Yes',0,'',10,1262,0,999999),(1263,4,632,'No',1,_binary 'Individuals are not notified of breaches within the required time period in accordance with the established criterion. §164.404(b)',10,1263,0,999999),(1264,4,632,'Yes',0,'',10,1264,0,999999),(1265,4,633,'No',1,_binary 'The covered entity does not have policies and procedures for providing individuals with notifications that meet the content requirements of §164.404(c). §164.404(c) (1)',10,1265,0,999999),(1266,4,633,'Yes',0,'',10,1266,0,999999),(1267,4,634,'No',1,_binary 'The covered entity does not have policies and procedures for notifying an individual, an individual\'s next of kin, or a personal representative of a breach. §164.404(d)',10,1267,0,999999),(1268,4,634,'Yes',0,'',10,1268,0,999999),(1269,4,635,'No',1,_binary 'The covered entity does not have policies and procedures for notifying media outlets of breaches affecting more than 500 residents of a State or jurisdiction. §164.406',10,1269,0,999999),(1270,4,635,'Yes',0,'',10,1270,0,999999),(1271,4,636,'No',1,_binary 'The covered entity have policies and procedures for notifying the Secretary of breaches involving 500 or more individuals. §164.408',10,1271,0,999999),(1272,4,636,'Yes',0,'',10,1272,0,999999),(1273,4,637,'No',1,_binary 'The business associate or subcontractor did not determine that there were any breaches of unsecured PHI within the specified period. §164.410',10,1273,0,999999),(1274,4,637,'Yes',0,'',10,1274,0,999999),(1275,4,638,'No',1,_binary 'The covered entity or business associate does not have policies and procedures regarding how the covered entity or business associate would respond to a law enforcement statement that a notice or posting would impede a criminal investigation or damage national security? §164.412',10,1275,0,999999),(1276,4,638,'Yes',0,'',10,1276,0,999999),(1277,4,639,'No',0,_binary 'The covered entity or business associate has delayed notification of a breach of unsecured PHI pursuant to such a law enforcement statement. §164.412',10,1277,0,999999),(1278,4,639,'Yes',0,'',10,1278,0,999999),(1279,4,640,'No',1,_binary 'The covered entity or business associate, as applicable, does not have policies and procedures in place to accept the burden of demonstrating that all notifications were made as required by the subpart or that the use or disclosure did not constitute a breach as defined at §164.402. §164.414(b)',10,1279,0,999999),(1280,4,640,'Yes',0,'',10,1280,0,999999);
/*!40000 ALTER TABLE `assessment_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_answers_to_asset_groups`
--

DROP TABLE IF EXISTS `assessment_answers_to_asset_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_answers_to_asset_groups` (
  `assessment_answer_id` int NOT NULL,
  `asset_group_id` int NOT NULL,
  UNIQUE KEY `assessment_answer_asset_group_unique` (`assessment_answer_id`,`asset_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_answers_to_asset_groups`
--

LOCK TABLES `assessment_answers_to_asset_groups` WRITE;
/*!40000 ALTER TABLE `assessment_answers_to_asset_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_answers_to_asset_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_answers_to_assets`
--

DROP TABLE IF EXISTS `assessment_answers_to_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_answers_to_assets` (
  `assessment_answer_id` int NOT NULL,
  `asset_id` int NOT NULL,
  UNIQUE KEY `assessment_answer_asset_unique` (`assessment_answer_id`,`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_answers_to_assets`
--

LOCK TABLES `assessment_answers_to_assets` WRITE;
/*!40000 ALTER TABLE `assessment_answers_to_assets` DISABLE KEYS */;
INSERT INTO `assessment_answers_to_assets` VALUES (2,1),(4,1),(6,1),(8,1),(10,1),(12,1),(14,1),(16,1),(18,1),(20,1),(22,2),(24,2),(26,2),(28,3),(30,2),(32,3),(34,3),(36,3),(38,3),(40,3);
/*!40000 ALTER TABLE `assessment_answers_to_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_questions`
--

DROP TABLE IF EXISTS `assessment_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assessment_id` int NOT NULL,
  `question` varchar(1000) NOT NULL,
  `order` int NOT NULL DEFAULT '999999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=641 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_questions`
--

LOCK TABLES `assessment_questions` WRITE;
/*!40000 ALTER TABLE `assessment_questions` DISABLE KEYS */;
INSERT INTO `assessment_questions` VALUES (1,1,'Do you actively manage (inventory, track, and correct) all hardware devices on the network so that only authorized devices are given access, and unauthorized and unmanaged devices are found and prevented from gaining access?',1),(2,1,'Do you actively manage (inventory, track, and correct) all software on the network so that only authorized software is installed and can execute, and that unauthorized and unmanaged software is found and prevented from installation or execution?',2),(3,1,'Do you establish, implement, and actively manage (track, report on, correct) the security configuration of laptops, servers, and workstations using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings?',3),(4,1,'Do you continuously acquire, assess, and take action on new information in order to identify vulnerabilities, remediate, and minimize the window of opportunity for attackers?',4),(5,1,'Do you have processes and tools to track/control/prevent/correct the use, assignment, and configuration of administrative privileges on computers, networks, and applications?',5),(6,1,'Do you collect, manage, and analyze audit logs of events that could help detect, understand, or recover from an attack?',6),(7,1,'Do you minimize the attack surface and the opportunities for attackers to manipulate human behavior through their interaction with web browsers and emails systems?',7),(8,1,'Do you control the installation, spread, and execution of malicious code at multiple points in the enterprise, while optimizing the use of automation to enable rapid updating of defense, data gathering, and corrective action?',8),(9,1,'Do you manage (track/control/correct) the ongoing operational use of ports, protocols, and services on networked devices in order to minimize windows of vulnerability available to attackers?',9),(10,1,'Do you have processes and tools to properly back up critical information with a proven methodology for timely recovery of it?',10),(11,1,'Do you establish, implement, and actively manage (track, report on, correct) the security configuration of network infrastructure devices using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings?',11),(12,1,'Do you detect/prevent/correct the flow of information transferring networks of different trust levels with a focus on security-damaging data?',12),(13,1,'Do you have processes and tools to prevent data exfiltration, mitigate the effects of exfiltrated data, and ensure the privacy and integrity of sensitive information?',13),(14,1,'Do you have processes and tools to track/control/prevent/correct secure access to critical assets (e.g., information, resources, systems) according to the formal determination of which persons, computers, and applications have a need and right to access these critical assets based on an approved classification?',14),(15,1,'Do you have processes and tools to track/control/prevent/correct the security use of wireless local area networks (LANS), access points, and wireless client systems?',15),(16,1,'Do you actively manage the life cycle of system and application accounts - their creation, use, dormancy, deletion - in order to minimize opportunities for attackers to leverage them?',16),(17,1,'Do all functional roles in the organization (prioritizing those mission-critical to the business and its security) identiy the specific knowledge, skills, and abilities needed to support defense of the enterprise; develop and execute an integrated plan to assess, identify gaps, and remediate through policy, organizational planning, training, and awareness programs?',17),(18,1,'Do you manage the security life cycle of all in-house developed and acquired software in order to prevent, detect, and correct security weaknesses?',18),(19,1,'Do you protect the organization\'s information, as well as its reputation, by developing and implementing an incident response infrastructure (e.g., plans, defined roles, training, communications, management oversight) for quickly discovering an attack and then effectively containing the damage, eradicating the attacker\'s presence, and restoring the integrity of the network and systems?',19),(20,1,'Do you test the overall strength of your organization\'s defenses (the technology, the processes, and the people) by simulating the objectives and actions of an attacker?',20),(21,2,'(3.1.1) Do we limit information system access to authorized users, processes acting on behalf of authorized users, or devices? (including other information systems)',999999),(22,2,'(3.1.2) Do we limit access to the types of transactions and functions that authorized users are permitted to execute?',999999),(23,2,'(3.1.3.) Do we control CUI in accordance with approved authorizations?',999999),(24,2,'(3.1.4) Do we keep duties of individuals separated to reduce the risk of malevolent activity without collusion?',999999),(25,2,'(3.1.5) Do we employ the principle of least privilege, including specific security functions and privileged accounts?',999999),(26,2,'(3.1.6) Do we disallow the organization to use non-privileged accounts or roles when accessing non-security functions?',999999),(27,2,'(3.1.7) Do we prevent non-privileged users from executing privileged functions and audit the execution of such functions?',999999),(28,2,'(3.1.8) Do we limit unsuccessful logon attempts?',999999),(29,2,'(3.1.9) Do we provide privacy and security notices consistent with applicable CUI rules?',999999),(30,2,'(3.1.10) Do we use session lock with pattern hiding displays to prevent access/viewing of data after a period of inactivity?',999999),(31,2,'(3.1.11) Do we terminate a user session after a defined condition or time?',999999),(32,2,'(3.1.12) Do we monitor and control remote access sessions?',999999),(33,2,'(3.1.13) Do we employ cryptographic mechanisms to protect the confidentiality of remote access sessions?',999999),(34,2,'(3.1.14) Do we route remote access through managed access control points?',999999),(35,2,'(3.1.15) Does the system require authorization of remote execution of privileged commands and remote access to security relevant information?',999999),(36,2,'(3.1.16) Do we authorize wireless access prior to allowing such connections?',999999),(37,2,'(3.1.17) Do we protect wireless access using authentication and encryption?',999999),(38,2,'(3.1.18) Do we have guidelines and procedures in place to restrict the operation and connection of mobile devices?',999999),(39,2,'(3.1.19) Do we encrypt CUI on mobile devices?',999999),(40,2,'(3.1.20) Do we verify and control/limit connections to and use of external information systems?',999999),(41,2,'(3.1.21) Do we limit use of organizational portable storage devices on external information systems?',999999),(42,2,'(3.1.22) Do we prohibit posting or processing control information on publicly accessible information systems?',999999),(43,2,'(3.2.1) Do we ensure that managers, systems administrators, and users of organizational information systems are made aware of the security risks associated with their activities and of the applicable policies, standards, and procedures related to the security of organizational information systems?',999999),(44,2,'(3.2.2) Do we Ensure that organizational personnel are adequately trained to carry out their assigned information security-related duties and responsibilities?',999999),(45,2,'(3.2.3) Do we provide security awareness training on recognizing and reporting potential indicators of insider threats?',999999),(46,2,'(3.3.1) Do you create, protect, and retain information system audit records to the extent needed to enable the monitoring, analysis, investigations, and reporting of unlawful, unauthorized, or inappropriate information system activity?',999999),(47,2,'(3.3.2) Do we ensure that the actions of individual information system users can be uniquely traced to those users so they can be held accountable for their actions?',999999),(48,2,'(3.3.3) Do we review and update audited events?',999999),(49,2,'(3.3.4) Do we have alerts in the event of an audit process failure?',999999),(50,2,'(3.3.5) Do we use automated mechanisms to integrate and correlate audit review, analysis, and reporting processes for investigation and response to indications of inappropriate, suspicious, or unusual activity?',999999),(51,2,'(3.3.6) Do we provide audit reduction and report generation to support on-demand analysis and reporting?',999999),(52,2,'(3.3.7) Do we provide an information system capability that compares and synchronizes internal system clocks with an authoritative source to generate time stamps for audit records?',999999),(53,2,'(3.3.8) Do we protect audit information and audit tools from unauthorized access, modification, and deletion?',999999),(54,2,'(3.3.9) Do we limit management of audit functionality to a subset of privileged users?',999999),(55,2,'(3.4.1) Do we establish and maintain baseline configurations and inventories of organizational information systems (including hardware, software, firmware, and documentation) throughout the respective system development life cycles?',999999),(56,2,'(3.4.2) Do we establish and enforce security configuration settings for information technology products employed in organizational information systems?',999999),(57,2,'(3.4.3) Do we track, review, approve/disapprove, and audit changes to information systems?',999999),(58,2,'(3.4.4) Do we analyze the security impact of changes prior to implementation?',999999),(59,2,'(3.4.5) Do we define, document, approve, and enforce physical and logical access restrictions associated with changes to the information system?',999999),(60,2,'(3.4.6) Do we employ the principle of least functionality by configuring the information system to provide only essential capabilities? ',999999),(61,2,'(3.4.7) Do we restrict, disable, and prevent the use of nonessential programs, functions, ports, protocols, and services?',999999),(62,2,'(3.4.8) Do we apply deny-by-exception (blacklist) policy to prevent the use of unauthorized software or deny-all, permit-by-exception (whitelisting) policy to allow the execution of authorized software?',999999),(63,2,'(3.4.9) Do we control and monitor user-installed software?',999999),(64,2,'(3.5.1) Do we identify information system users, processes acting on behalf of users, or devices?',999999),(65,2,'(3.5.2) Do we authenticate (or verify) the identities of those users, processes, or devices, as a prerequisite to allowing access to organizational information systems?',999999),(66,2,'(3.5.3) Do we use multi-factor authentication for local and network access to privileged accounts and for network access to non-privileged accounts?',999999),(67,2,'(3.5.4) Do we employ replay-resistant authentication mechanisms for network access to privileged and non-privileged accounts?',999999),(68,2,'(3.5.5) Do we prevent the reuse of identifiers for a defined period?',999999),(69,2,'(3.5.6) Do we disable identifiers after a defined period of inactivity?',999999),(70,2,'(3.5.7) Do we enforce a minimum password complexity and change of characters when new passwords are created?',999999),(71,2,'(3.5.8) Do we prohibit password reuse for a specified number of generations?',999999),(72,2,'(3.5.9) Do we allow temporary password use for system logons with an immediate change to a permanent password?',999999),(73,2,'(3.5.10) Do we store and transmit only encrypted representation of passwords?',999999),(74,2,'(3.5.11) Do we obscure feedback of authentication information?',999999),(75,2,'(3.6.1) Have we established an operational incident handling capability for organizational information systems that includes adequate preparation, detection, analysis, containment, recovery, and user response activities?',999999),(76,2,'(3.6.2) Do we track, document, and report incidents to appropriate officials and/or authorities both internal and external to the organizations? ',999999),(77,2,'(3.6.3) Do we test the organizational incident response capability? ',999999),(78,2,'(3.7.1) Do we perform maintenance on organizational information systems?',999999),(79,2,'(3.7.2) Do we provide effective controls on the tools, techniques, mechanisms, and personnel used to conduct information system maintenance?',999999),(80,2,'(3.7.3) Do we ensure equipment removed for off-site maintenance is sanitized of any CUI?',999999),(81,2,'(3.7.4) Do we check media containing diagnostic and test programs for malicious code before the media are used in the information system?',999999),(82,2,'(3.7.5) Do we require multifaction authentication to establish non-local maintenance sessions via external network connections when non-local maintenance is complete? ',999999),(83,2,'(3.7.6) Do we supervise the maintenance activities of maintenance personnel without required access authorization?',999999),(84,2,'(3.8.1) Do we protect (i.e., physically control and securely store) information system media  containing CUI, both paper and digital?',999999),(85,2,'(3.8.2) Do we limit access to CUI on information system media to authorized users?',999999),(86,2,'(3.8.3) Do we sanitize or destroy information system media containing CUI before disposal or release for reuse?',999999),(87,2,'(3.8.4) Do we mark media with the necessary CUI markings and distribution limitations?',999999),(88,2,'(3.8.5) Do we control access to media containing CUI and maintain accountability for media during transport outside of controlled areas?',999999),(89,2,'(3.8.6) Do we implement cryptographic mechanisms to protect the confidentiality of CUI stored on digital media during transport unless otherwise protected by alternative physical safeguards?',999999),(90,2,'(3.8.7) Do we control the use of removable media on information system components?',999999),(91,2,'(3.8.8) Do we prohibit the use of portable storage devices when such devices have no identifiable owner?',999999),(92,2,'(3.8.9) Do we protect the confidentiality of backup CUI as storage locations?',999999),(93,2,'(3.9.1) Do we screen individuals prior to authorizing access to information systems containing CUI?',999999),(94,2,'(3.9.2) Do we ensure that CUI and information systems containing CUI are protected during and after personnel actions such as terminations and transfers?',999999),(95,2,'(3.10.1) Do we limit physical access to organizational information systems, equipment, and the respective operating environments to authorized individuals?',999999),(96,2,'(3.10.2) Do we protect and monitor the physical facility and support infrastructure for those information systems?',999999),(97,2,'(3.10.3) Do we escort visitors and monitor visitor activity?',999999),(98,2,'(3.10.4) Do we maintain audit logs of physical access?',999999),(99,2,'(3.10.5) Do we control and manage physical access devices?',999999),(100,2,'(3.10.6) Do we enforce safeguarding measures for CUI at alternate work sites? (e.g. telework sites)',999999),(101,2,'(3.11.1) Do we periodically assess the risk to organizational operations (including mission, functions, image, or reputation), organizational assets, and individuals, resulting from the operation of organizational information systems and the associated processing, storage, or transmission of CUI?',999999),(102,2,'(3.11.2) Do we scan for vulnerabilities in the information system and applications periodically and when new vulnerabilities affecting the system are identified?',999999),(103,2,'(3.11.3) Do we remediate vulnerabilities in accordance with assessments of risk?',999999),(104,2,'(3.12.1) Do we periodically assess the security controls in organizational information systems to determine if the controls are effective in their application?',999999),(105,2,'(3.12.2) Do we develop and implement plans of action designed to correct deficiencies and reduce or eliminate vulnerabilities in organizational information systems?',999999),(106,2,'(3.12.3) Do we monitor information system security controls on an ongoing basis to ensure the continued effectiveness of the controls?',999999),(107,2,'(3.13.1) Do we monitor, control, and protect organizational communications (i.e. information transmitted or received by organizational information systems) at the external boundaries and key internal boundaries of the information systems?',999999),(108,2,'(3.13.2) Do we employ architectural designs, software development techniques, and systems engineering principles that promote effective information security within organizations information systems?',999999),(109,2,'(3.13.3) Do we separate user functionality from information system management functionality?',999999),(110,2,'(3.13.4) Do we prevent unauthorized and unintended information transfer via shared system resources?',999999),(111,2,'(3.13.5) Do we implement subnetworks for publicly accessible system components that are physically or logically separated from internal networks?',999999),(112,2,'(3.13.6) Do we deny network communications traffic by default and allow network communications by exception?',999999),(113,2,'(3.13.7) Do we prevent remote devices from simultaneously establishing non-remote connections with the information system and communicating via some other connection to resources in external networks?',999999),(114,2,'(3.13.8) Do we implement cryptographic mechanisms to prevent unauthorized disclosure of CUI during transmission unless otherwise protected by alternative physical safeguards?',999999),(115,2,'(3.13.9) Do we terminate network connections associated with communications sessions at the end of the sessions or after a defined period of inactivity?',999999),(116,2,'(3.13.10) Do we establish and manage cryptographic keys for cryptography employed in the information system?',999999),(117,2,'(3.13.12) Do we prohibit remote activation of collaborative computing devices and provide indication of devices in use to users present at the device?',999999),(118,2,'(3.13.13) Do we control and monitor the use of mobile code? ',999999),(119,2,'(3.13.14) Do we control and monitor the use of voice over internet protocol (VOIP) technologies?',999999),(120,2,'(3.13.15) Do we protect the authenticity of communications sessions?',999999),(121,2,'(3.13.16) Do we protect the confidentiality of CUI at rest?',999999),(122,2,'(3.14.1) Do we identify, report, and correct information and information system flaws in a timely manner?',999999),(123,2,'(3.14.2) Do we provide protection from malicious code at appropriate locations within organizational information systems?',999999),(124,2,'(3.14.3) Do we monitor information system security alerts and advisories and take appropriate actions in response?',999999),(125,2,'(3.14.4) Do we update malicious code protection mechanisms when new releases are available?',999999),(126,2,'(3.14.5) Do we perform periodic scans of the information system and real-time scans of files from external sources as files are downloaded, opened, or executed?',999999),(127,2,'(3.14.6) Do we monitor the information system including inbound and outbound communications traffic, to detect attacks and indicators of potential attacks?',999999),(128,2,'(3.14.7) Do we identify unauthorized use of the information system?',999999),(129,3,'(1.1.1) Have you established and implemented firewall and router configuration standards that include a formal process for approving and testing all network connections and changes to the firewall and router configurations?',999999),(130,3,'(1.1.2) Have you established and implemented firewall and router configuration standards that include a current network diagram that identifies all connections between the cardholder data environment and other networks, including any wireless networks?',999999),(131,3,'(1.1.3) Have you created a diagram that shows the flow all cardholder data across systems and networks?',999999),(132,3,'(1.1.4) Are there firewalls in place at each and every internet connection and between any demilitarized zone (DMZ) and any internal network zone? ',999999),(133,3,'(1.1.5) Do you have procedures in place for the description of groups, roles, and responsibilities for management of network components?',999999),(134,3,'(1.1.6) Do you have documentation of business justification and approval for use of all services, protocols, and ports allowed, including documentation of security features implemented for those protocols considered to be insecure?',999999),(135,3,'(1.1.7) Do you review firewall and router rule sets at least every six months?',999999),(136,3,'(1.2) Have you created firewall and router configurations that restrict connections between untrusted networks and any system components in the cardholder data environment?',999999),(137,3,'(1.2.1) Are there restrictions on inbound and outbound traffic to only that which is necessary for the cardholder data environment, and specifically deny all other traffic?',999999),(138,3,'(1.2.2) Are router configuration files kept secure and synchronized?',999999),(139,3,'(1.2.3) Have you installed perimeter firewalls between all wireless networks and the cardholder data environment, and configured these firewalls to deny or, if traffic is necessary for business purposes, permit only authorized traffic between the wireless environment and the cardholder data environment?',999999),(140,3,'(1.3) Do you prohibit direct public access between the internet and any system component in the cardholder data environment?',999999),(141,3,'(1.3.1) Have you implemented a DMZ to limit inbound traffic to only system components that provide authorized publicly accessible services, protocols, and ports?',999999),(142,3,'(1.3.2) Do you limit inbound internet traffic to IP addresses within the DMZ?',999999),(143,3,'(1.3.3) Have you implemented anti-spoofing measures to detect and block forged source IP addresses from entering the network?',999999),(144,3,'(1.3.4) Do you disallow unauthorized outbound traffic from the cardholder data environment to the internet?',999999),(145,3,'(1.3.5) Do you permit only \"established\" connections into the network?',999999),(146,3,'(1.3.6) Have you placed system components that store cardholder data (such as a database) in an internal network zone, segregated from the DMZ and other untrusted networks?',999999),(147,3,'(1.3.7) Are private IP addresses and routing information inaccessible to unauthorized parties?',999999),(148,3,'(1.4) Have you installed personal firewall software or equivalent functionality on all portable computing devices (including company and/or employee-owned) that connect to the internet when outside the network (for example, laptops used by employees), and which are also used to access the CDE?',999999),(149,3,'(1.5) Have you ensured that security policies and operational procedures for managing firewalls are documented, in use, and known to all affected parties?',999999),(150,3,'(2.1) Have you changed all vendor-supplied defaults and removed or disabled unnecessary default accounts before installing systems onto the network?',999999),(151,3,'(2.1.1) Do you change all of the wireless vendor defaults at the time of installation, including but not limited to default wireless encryption keys, passwords, and SNMP community strings?',999999),(152,3,'(2.2) Have you developed configuration standards for all system components, assured that these standards address all known security vulnerabilities and are consistent with industry-accepted system hardening standards?',999999),(153,3,'(2.2.1) Have you implemented only one primary function per server to prevent functions that require different security levels from co-existing on the same server?',999999),(154,3,'(2.2.2) Do you enable only necessary services, protocols, daemons, etc., as required to for the function of the system?',999999),(155,3,'(2.2.3) Have you implemented additional security features for any required services, protocols, or daemons that are considered to be insecure?',999999),(156,3,'(2.2.4) Have you configured security parameters to prevent misuse?',999999),(157,3,'(2.2.5) Have you removed all unnecessary functionality, such as scripts, drivers, features, subsystems, file systems, and unnecessary web servers?',999999),(158,3,'(2.3) Have you encrypted all non-console administrative access using strong cryptography?',999999),(159,3,'(2.4) Do you maintain an inventory of system components that are in scope for PCI DSS?',999999),(160,3,'(2.5) Have you ensured that security policies and operational procedures for managing vendor defaults and other security parameters are documented, in use, and known to all affected parties?',999999),(161,3,'(2.6) Are shared hosting providers protecting each entity\'s hosted environment and cardholder data?',999999),(162,3,'(3.1) Do you keep cardholder data storage to a minimum by implementing data retention and disposal policies, procedures and processes that include at least limiting data storage amount and retention time, processes for secure deletion of data when no longer needed, specific retention requirements for cardholder data, and a quarterly process for identifying and securely deleting stored cardholder data that exceeds defined retention?',999999),(163,3,'(3.2a) Do you store sensitive authentication data after authorization (even if encrypted)?',999999),(164,3,'(3.2b) If sensitive authentication data is received, do you render all data unrecoverable upon completion of the the authorization request?',999999),(165,3,'(3.2.1) Do you store the full contents of any track (from the magnetic stripe located on the back of a card, equivalent data contained on a chip, or elsewhere) after authorization?',999999),(166,3,'(3.2.2) Do you store the card verification code or value (three-digit or four-digit number printed on the front or back of a payment card used to verify card-not-present transactions) after authorization?',999999),(167,3,'(3.2.3) Do you store the personal identification number (PIN) or the encrypted PIN block after authorization?',999999),(168,3,'(3.3) Do you mask PAN when displayed (the first six and last four digits are the maximum number of digits to be displayed), such that only personnel with legitimate business need can see more than the first six/last four digits of the PAN?',999999),(169,3,'(3.4) Do you render PAN unreadable anywhere it is stores (including on portable digital media, backup media, and in logs) by any of the following: One-way Hashes based on strong cryptography, truncation, index tokens and pads, strong cryptography with associated key-management processes and procedures?',999999),(170,3,'(3.4.1) If disk encryption is used, is logical access managed separately and independently of native operating system authentication and access control mechanisms? (decryption keys must not be associated with user accounts.)',999999),(171,3,'(3.5) Do you document and implement procedures to protect keys used to secure stored cardholder data against disclosure and misuse?',999999),(172,3,'(3.5.1) Additional requirement for service providers only: Do you maintain a documented description of the cryptographic architecture that includes details of all algorithms, protocols, and keys used for the protection of card holder data, including key strength and expiry date, description of the key usage for each key, inventory of any HSMs and other SCDs used for key management?',999999),(173,3,'(3.5.2) Do you restrict access to cryptographic keys to the fewest number of custodians necessary?',999999),(174,3,'(3.5.3) Do you store secret and private keys used to encrypt/decrypt cardholder data in one (or more) of the following forms at all times: Encrypted with a key-encrypting key that is at least as strong as the data encrypting key, and that is stored separately from the data-encrypting key. Within a secure cryptographic device. As at least two full-length key components or key shares, in accordance with an industry-accepted method?',999999),(175,3,'(3.5.4) Are cryptographic keys stored in the fewest possible locations?',999999),(176,3,'(3.6.1) Do you fully document and implement all key-management processes and procedures for cryptographic keys used for encryption of cardholder data including generation of strong cryptographic keys?',999999),(177,3,'(3.6.2) Do you fully document and implement all key-management processes and procedures for cryptographic keys used for encryption of cardholder data including secure cryptographic key distribution?',999999),(178,3,'(3.6.3) Do you fully document and implement all key-management processes and procedures for cryptographic keys used for encryption of cardholder data including secure cryptographic key storage?',999999),(179,3,'(3.6.4) Do you perform cryptographic key changes for keys that have reached the end of their cryptoperiod based on industry best practices and guidelines?',999999),(180,3,'(3.6.5) Do you have practices in place for the retirement or replacement of keys as deemed necessary when the integrity of the key has been weakened, or keys are suspected of being compromised?',999999),(181,3,'(3.6.6) If manual clear-text cryptographic key-management operations are used, are these operations being managed by using split knowledge and dual control?',999999),(182,3,'(3.6.7) Do you have procedures in places to prevent unauthorized substitution of cryptographic keys?',999999),(183,3,'(3.6.8) Do you require cryptographic key custodians to formally acknowledge that they understand and accept their key-custodian responsibilities?',999999),(184,3,'(3.7) Do you ensure that security policies and operational procedures for protecting stored cardholder data are documented, in use, and known to all affected parties?',999999),(185,3,'(4.1a) Do you use strong cryptography and security protocols to safeguard sensitive cardholder data during transmission over open, public networks, including only trusted keys and certificates are accepted?',999999),(186,3,'(4.1b) Do you use strong cryptography and security protocols to safeguard sensitive cardholder data during transmission over open, public networks, including the protocol in use only supports secure versions or configurations?',999999),(187,3,'(4.1c) Do you use strong cryptography and security protocols to safeguard sensitive cardholder data during transmission over open, public networks, including encryption strength that is appropriate for the encryption methodology in use?',999999),(188,3,'(4.1.1) Have you ensured wireless networks transmitting cardholder data or connected to the cardholder data environment, used industry best practices to implement strong encryption for authentication and transmission?',999999),(189,3,'(4.2) Do you send unprotected PANs by end-user messaging technologies?',999999),(190,3,'(4.3) Have you ensured that security policies and operational procedures for encrypting transmissions of cardholder data are documented, in use, and known to all affected parties?',999999),(191,3,'(5.1) Have you deployed anti-virus software on all systems commonly affected by malicious software? (Particularly personal computers and servers.)',999999),(192,3,'(5.1.1) Have you ensured that anti-virus programs are capable of detecting, removing, and protecting against all known types of malicious software?',999999),(193,3,'(5.1.2) Do you periodically reevaluate systems considered to not be commonly affected by malicious software in order to confirm whether such systems continue to not require anti-virus software?',999999),(194,3,'(5.2a) Do you ensure all anti-virus mechanisms are kept current?',999999),(195,3,'(5.2b) Do you ensure all anti-virus mechanisms perform periodic scans?',999999),(196,3,'(5.2c) Do you ensure that all anti-virus mechanisms generate audit logs which are retained per PCI DSS requirement 10.7?',999999),(197,3,'(5.3) Have you ensured that anti-virus mechanisms are actively running and cannot be disabled or altered by users, unless specifically authorized by management on a case-by-case basis for a limited time period?',999999),(198,3,'(5.4) Have you ensured that security policies and operational procedures for protecting systems against malware are documented, in use, and known to all affected parties? ',999999),(199,3,'(6.1) Have you established a process to identify security vulnerabilities, using reputable outside sources for security vulnerability information, and as assign a risk ranking to newly discovered security vulnerabilities?',999999),(200,3,'(6.2) Have you ensured that all system components and software are protected from known vulnerabilities by installing applicable vendor-supplied security patches within one month of release?',999999),(201,3,'(6.3a) Have you developed internal and external software applications (including web-based administrative access to applications) securely in accordance with PCI DSS? (for example, secure authentication and logging)',999999),(202,3,'(6.3b) Have you developed internal and external software applications (including web-based administrative access to applications based on industry standards and/or best practices?',999999),(203,3,'(6.3c) Have you developed internal and external software applications (including web-based administrative access to applications incorporating information security throughout the software-development life cycle?',999999),(204,3,'(6.3.1) Do you remove development, test and/or custom application accounts, user IDs, and passwords before applications become active or are released to customers?',999999),(205,3,'(6.3.2a) Do you review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include code changes are reviewed by individuals other than the originating code author, and by individuals knowledgeable about code-review techniques and secure coding practices?',999999),(206,3,'(6.3.2b) Do you review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include code reviews to ensure code is developed according to secure coding guidelines?',999999),(207,3,'(6.3.2c) Do you review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include appropriate corrections are implemented prior to release?',999999),(208,3,'(6.3.2d) Do you review custom code prior to release to production or customers in order to identify any potential coding vulnerability (using either manual or automated processes) to include code-review results are reviewed and approved by management prior to release?',999999),(209,3,'(6.4) Do you follow change control processes and procedures for all changes to system components?',999999),(210,3,'(6.4.1) Do you separate development/test environments from production environments, and enforce the separation with access controls?',999999),(211,3,'(6.4.2) Do you have separation of duties between development/test and production environments?',999999),(212,3,'(6.4.3) Is production data being used for testing and development?',999999),(213,3,'(6.4.4) Do you ensure removal of test data and accounts from system components before the system becomes active / goes into production? ',999999),(214,3,'(6.4.5.1) Do your change control procedures document impact? ',999999),(215,3,'(6.4.5.2) Do your change control procedures document change approval by authorized parties?',999999),(216,3,'(6.4.5.3) Do your change control procedures functionally test to verify that the change does not adversely impact the security of the system?',999999),(217,3,'(6.4.5.4) Do your change control procedures contain back-out procedures?',999999),(218,3,'(6.4.6) Upon completion of a significant change, do you reevaluate all relevant PCI DSS requirements and re-implement the requirements of PCI DSS in all new or changed systems and networks, and documentation updated as applicable?',999999),(219,3,'(6.5) Do you address common coding vulnerabilities in software-development processes by training developers at least annually in up-to-date secure coding techniques, including how to avoid common coding vulnerabilities?',999999),(220,3,'(6.5.1) Have you developed software-development policies and procedures to prevent injection flaws, particularly SQL injection as well as OS Command injection, LDAP and Xpath injection flaws as well as other injection flaws?',999999),(221,3,'(6.5.2) Do you have software-development policies and procedures to prevent the use of buffer overflows by validating buffer boundaries and truncating input strings?',999999),(222,3,'(6.5.3) Do you have software-development policies and procedures to prevent insecure cryptographic storage?',999999),(223,3,'(6.5.4) Do you have software-development policies and procedures to prevent the occurrence of insecure communications?',999999),(224,3,'(6.5.5) Do you have software-development policies and procedures to prevent improper error handling?',999999),(225,3,'(6.5.6) Are all \"high risk\" vulnerabilities identified in the vulnerability identification process (as defined in PCI DSS Requirement 6.1)?',999999),(226,3,'(6.5.7) Do you have software-development policies and procedures to prevent cross-site scripting (XSS)?',999999),(227,3,'(6.5.8) Do you have software-development policies and procedures to prevent improper access control (such as insecure direct object references, failure to restrict URL access, directory traversal, and failure to restrict user access to functions)?',999999),(228,3,'(6.5.9) Do you have software-development policies and procedures to prevent cross-site request forgery (CSRF)?',999999),(229,3,'(6.5.10) Do you have software-development policies and procedures to prevent the use of broken authentication and session management?',999999),(230,3,'(6.6) For public-facing web applications, does your organization address new threats and vulnerabilities on an ongoing basis and ensure these applications are protected against known attacks by either reviewing public-facing web applications via manual or automated application vulnerability security assessment tools or methods, at least annually and after any change or by installing an automated technical solution that detects and prevents web-based attacks (for example, a web-application firewall) in front of public facing web applications, to continually check all traffic?',999999),(231,3,'(6.7) Do you ensure that security policies and operational procedures for developing and maintaining secure systems and applications are documented, in use, and known to all affected parties?',999999),(232,3,'(7.1) Do you limit access to system components and cardholder data to only those individuals whose job requires such access?',999999),(233,3,'(7.1.1) Have you defined access needs for each role, including: System components and data resources that each role needs to access for their job function, Level of privilege required (for example, user, administrator, etc.) for accessing resources?',999999),(234,3,'(7.1.2) Do you restrict access to privileged user IDs to least privileges necessary to perform job responsibility?',999999),(235,3,'(7.1.3) Do you assign access based on individual personnel',999999),(236,3,'(7.1.4) Do you require documented approval by authorized parties specifying required privileges?',999999),(237,3,'(7.2) Have you established an access control system(s) for systems components that restricts access based on a user\'s need to know, and is set to ',999999),(238,3,'(7.2.1) Does your access control system(s) include coverage of all system components?',999999),(239,3,'(7.2.2) Does your access control system(s) include assignment of privileges to individuals based on job classification and function?',999999),(240,3,'(7.2.3) Does your access control system(s) include a default \"deny-all\" setting?',999999),(241,3,'(7.3) Do you ensure that security policies and operational procedures for restricting access to cardholder data are documented, in use, and known to all affected parties?',999999),(242,3,'(8.1.1) Have you defined and implemented policies and procedures to ensure proper user identification management for non-consumer users and administrators on all system components by assigning all users a unique ID before allowing them to access system components or cardholder data?',999999),(243,3,'(8.1.2) Have you defined and implemented policies and procedures to ensure proper user identification management for non-consumer users and administrators on all system components by control addition, deletion, and modification of user IDs, credentials, and other identifier objects?',999999),(244,3,'(8.1.3) Have you defined and implemented policies and procedures to ensure proper user identification management for non-consumer users and administrators on all system components by immediately revoking access for any terminated users?(',999999),(245,3,'(8.1.4) Do you remove/disable inactive user accounts within 90 days?',999999),(246,3,'(8.1.5) Do you manage IDs used by third parties to access, support, or maintain system components via remote access by enabling only during the time period needed and disabled when not in use and by monitoring when in use?',999999),(247,3,'(8.1.6) Do you limit repeated access attempts by locking out the user ID after not more than six attempts?',999999),(248,3,'(8.1.7) Have you set the lockout duration to a minimum of 30 minutes or until an administrator enables the user ID?',999999),(249,3,'(8.1.8) If a session has been idle for more than 15 minutes, do you require the user to re-authenticate to re-activate the terminal or session?',999999),(250,3,'(8.2) Do you in addition to assigning a unique ID, ensure proper user-authentication management for non-consumer users and administrators on all system components by employing at least one of the following method to authenticate all users? 1) Something you know, such as a password or passphrase, 2) Something you have, such as a token device or smart card, 3) Something you are, such as a biometric.',999999),(251,3,'(8.2.1) Do you use strong cryptography to render all authentication credentials (such as passwords/phrases) unreadable during transmission and storage on all system components?',999999),(252,3,'(8.2.2) Do you verify user identity before modifying any authentication credential, for example, performing password resets, provisioning new tokens, or generating new keys?',999999),(253,3,'(8.2.3) Do your passwords/passphrases meet the following requirements, do passwords require a minimum length of at least seven characters and contain both numeric and alphabetic characters?',999999),(254,3,'(8.2.4) Do you require users to change passwords/passphrases at least once every 90 days?',999999),(255,3,'(8.2.5) Do you disallow an individual to submit a new password/passphrase that is the same as any of the last four passwords/passphrases he or she has used?',999999),(256,3,'(8.2.6) Do you set passwords/passphrases for first-time use and upon reset to a unique value for each user, and change immediately after the first use?',999999),(257,3,'(8.3) Do you secure all individual non-console administrative access and all remote access to the CDE using multi-factor authentication?',999999),(258,3,'(8.3.1) Do you incorporate multi-factor authentication for all non-console access into the CDE for personnel with administrative access?',999999),(259,3,'(8.3.2) Do you incorporate multi-factor authentication for all remote network access (both user and administrator, and including third-party access for support or maintenance) originating from outside the entity',999999),(260,3,'(8.4a) Do you document and communicate authentication policies and procedures to all users including guidance on selecting strong authentication credentials?',999999),(261,3,'(8.4b) Do you document and communicate authentication policies and procedures to all users including guidance for how users should protect their authentication credentials?',999999),(262,3,'(8.4c) Do you document and communicate authentication policies and procedures to all users including instructions not to reuse previously used passwords?',999999),(263,3,'(8.4d) Do you document and communicate authentication policies and procedures to all users including instruction to change passwords if there is any suspicion  the password could be compromised?',999999),(264,3,'(8.5) Do you prevent the use of group, shared, or generic IDs, passwords, or other authentication methods by use of the following policies and procedures: Generic user IDs are disabled or removed, shared user IDs do not exist for system administration and other critical functions, Shared and generic user IDs are not used to administer any system components?',999999),(265,3,'(8.5.1) Additional requirement for service providers only: As a service provider when using remote access to customer premises (for example, for support of POS systems or servers) do you use a unique authentication credential (such as a password/phrase) for each customer?',999999),(266,3,'(8.6a) When using other authentication mechanisms (for example, physical or logical security tokens, smart cards, certificates, etc.)do you assign authentication mechanisms to an individual account and not share among multiple accounts?',999999),(267,3,'(8.6b) When using other authentication mechanisms (for example, physical or logical security tokens, smart cards, certificates, etc.) do you ensure physical and/or logical controls must be in place to require that only the intended account can use that mechanism to gain access?',999999),(268,3,'(8.7a) Do you ensure all access to any database containing cardholder data (including access by administrators, applications, and all other users) is restricted so that all user access to, user queries of, and user actions on databases are through programmatic methods?',999999),(269,3,'(8.7b) Do you ensure all access to any database containing cardholder data is restricted to only database administrators having the ability to directly access or query databases?',999999),(270,3,'(8.7c) Do you ensure all access to any database containing cardholder data uses application IDs for database applications that can only be used by the database application?',999999),(271,3,'(8.8) Do you ensure that security policies and operational procedures for identification and authentication are documented, in use, and known to all affected parties?',999999),(272,3,'(9.1) Do you use appropriate facility entry controls to limit and monitor physical access to systems in the cardholder data environment?',999999),(273,3,'(9.1.1) Do you use either video cameras or access control mechanisms (or both) to monitor individual physical access to sensitive areas and review collected data to correlate with other entries and store this data for at least three months, unless otherwise restricted by law?',999999),(274,3,'(9.1.2) Do you restrict physical access to wireless access points, gateways, handheld devices, networking/communications hardware, and telecommunication lines?',999999),(275,3,'(9.2a) Do you have procedures to easily distinguish between onsite personnel and visitors by identifying onsite personnel and visitors visibly (for example, assigning badges)?',999999),(276,3,'(9.2b) Do you have procedures to easily distinguish between onsite personnel and visitors to include the use of changes to access requirements?',999999),(277,3,'(9.2c) Do you have procedures to easily distinguish between onsite personnel and visitors to include revoking or terminating onsite personnel and expired visitor identification (such as ID badges)?',999999),(278,3,'(9.3a) Do you control physical access for onsite personnel to sensitive areas by ensuring access must be authorized and based on individual job function?',999999),(279,3,'(9.3b) Do you control physical access for onsite personnel to sensitive areas by ensuring access is revoked immediately upon termination, and all physical access mechanisms, such as keys, access cards, etc., are returned or disabled?',999999),(280,3,'(9.4.1) Are visitors authorized before entering, and escorted at all times within, areas where cardholder data is processed and maintained?',999999),(281,3,'(9.4.2) Are visitors identified and given a badge or other identification that expires and that visibly distinguished the visitors from onsite personnel?',999999),(282,3,'(9.4.3) Are visitors asked to surrender the badge or other identification before leaving the facility or at the date of expiration?',999999),(283,3,'(9.4.4) Do you make use of a visitor log to maintain a physical audit trail of visitor activity to the facility as well as computer rooms and data centers where cardholder data is stored or transmitted by documenting the visitor',999999),(284,3,'(9.5) Do you physically secure all media?',999999),(285,3,'(9.5.1) Do you store media backups in a secure location, preferably an offsite facility, such as an alternate or backup site, or a commercial storage facility and review the location',999999),(286,3,'(9.6.1) Do you maintain strict control over the internal or external distribution of any kind of media as well as classify media so the sensitivity of the data can be determined?',999999),(287,3,'(9.6.2) Do you send media only by secured courier or other delivery method that can be accurately tracked?',999999),(288,3,'(9.6.3) Do you ensure management approves any and all media that is moved from a secured area (including when media is distributed to individuals)?',999999),(289,3,'(9.7) Do you maintain strict control over the storage and accessibility of media?',999999),(290,3,'(9.7.1) Do you properly maintain inventory logs of all media and conduct media inventories at least annually?',999999),(291,3,'(9.8.1) Do you destroy physical media when it is no longer needed for business or legal reasons by shredding, incinerating, or reducing to pulp hard copy materials so that cardholder data cannot be reconstructed and use secure storage containers for materials that are to be destroyed?',999999),(292,3,'(9.8.2) Do you render cardholder data on electronic media unrecoverable so that cardholder data cannot be reconstructed?',999999),(293,3,'(9.9) Do you protect devices that capture payment card data via direct physical interaction with the card from tampering and substitution?',999999),(294,3,'(9.9.1) Do you maintain and up-to-date list of devices including make, model of device, location of device, and device serial number or other method of unique identification?',999999),(295,3,'(9.9.2) Do you periodically inspect device surfaces to detect tampering (for example, addition of card skimmers to devices), or substitution (for example, by checking the serial number or other device characteristics to verify it has not been swapped with a fraudulent device)?',999999),(296,3,'(9.9.3a) Do you provide training for personnel to be aware of attempted tampering or replacement of devices to include verification of the identity of any third-party persons claiming to be repair or maintenance personnel, prior to granting them access to modify or troubleshoot devices?',999999),(297,3,'(9.9.3b) Do you provide training for personnel to be aware of attempted tampering or replacement of devices to include the denial of installation, replacement, and return of devices without verification?',999999),(298,3,'(9.9.3c) Do you provide training for personnel to be aware of attempted tampering or replacement of devices to include teaching awareness of suspicious behavior around devices (for example, attempts by unknown persons to unplug or open devices.)?',999999),(299,3,'(9.9.3d) Do you provide training for personnel to be aware of attempted tampering or replacement of devices to include instruction to report suspicious behavior and indications of device tampering or substitution to appropriate personnel (for example, to a manager or security officer.)?',999999),(300,3,'(9.10) Do you ensure that security policies and operational procedures for restricting physical access to cardholder data are documented, in use, and known to all affected parties?',999999),(301,3,'(10.1) Have you implemented audit trails to link all access to system components to each individual user?',999999),(302,3,'(10.2.1) Have you implemented automated audit trails for all system components to reconstruct all individual user accesses to cardholder data?',999999),(303,3,'(10.2.2) Have you implemented automated audit trails for all system components to reconstruct all actions taken by any individual with root or administrative privileges?',999999),(304,3,'(10.2.3) Have you implemented automated audit trails for all system components to reconstruct access to all audit trails?',999999),(305,3,'(10.2.4) Have you implemented automated audit trails for all system components to reconstruct all invalid logical access attempts?',999999),(306,3,'(10.2.5) Have you implemented automated audit trails for all system components to reconstruct use of and changes to identification and authentication mechanisms-including but not limited to creation of new accounts and elevation of privileges-and all changes, additions, or deletions to accounts with root or administrative privileges?',999999),(307,3,'(10.2.6) Have you implemented automated audit trails for all system components to reconstruct initialization, stopping, or pausing of the audit logs?',999999),(308,3,'(10.2.7) Have you implemented automated audit trails for all system components to reconstruct creation and deletion of system-level objects?',999999),(309,3,'(10.3.1) Do you record audit trail entries for all system components for user identification?',999999),(310,3,'(10.3.2) Do you record audit trail entries for all system components and record each type of event?',999999),(311,3,'(10.3.3) Do you record audit trail entries for all system components and record the data and time of occurrence?',999999),(312,3,'(10.3.4) Do you record audit trail entries for all system components and record the success or failure of each operation?',999999),(313,3,'(10.3.5) Do you record audit trail entries for all system components and record the origination of event?',999999),(314,3,'(10.3.6) Do you record audit trail entries for all system components and record the identity or name of affected data, system component, or resource?',999999),(315,3,'(10.4.1) Using time-synchronization technology, do you synchronize all critical system clocks and times and ensure that critical systems have the correct and consistent time?',999999),(316,3,'(10.4.2) Using time-synchronization technology, do you synchronize all critical system clocks and times and ensure time data is protected?',999999),(317,3,'(10.4.3) Using time-synchronization technology, do you synchronize all critical system clocks and times and ensure time settings are received from industry-accepted time sources?',999999),(318,3,'(10.5) Do you secure audit trails so they cannot be altered?',999999),(319,3,'(10.5.1) Do you limit viewing of audit trails to those with a job-related need?',999999),(320,3,'(10.5.2) Do you protect audit trail files from unauthorized modifications?',999999),(321,3,'(10.5.3) Do you promptly back up audit trail files to a centralized log server or media that is difficult to alter?',999999),(322,3,'(10.5.4) Do you write logs for external-facing technologies onto a secure, centralized, internal log server or media device?',999999),(323,3,'(10.5.5) Do you use file-integrity monitoring or change-detection software on logs to ensure that existing log data cannot be changed without generating alerts (although new data being added should not cause an alert)?',999999),(324,3,'(10.6) Do you review logs and security events for all system components to identify anomalies or suspicious activity?',999999),(325,3,'(10.6.1) Do you review all security events, logs of all system components that store, process, or transmit CHD and/or SAD, logs of all critical system components, and logs of all servers and system components that perform security functions at least daily?',999999),(326,3,'(10.6.2) Do you review logs of all other system components periodically based on the organization',999999),(327,3,'(10.6.3) Do you follow up exceptions and anomalies identified during the review process?',999999),(328,3,'(10.7) Do you retain audit trail history for at least one year, with a minimum of three months immediately available for analysis (for example, online, archived, or restorable from backup)?',999999),(329,3,'(10.8) Additional requirement for service providers only: Have you implemented a process for the timely detection and reporting of failures of critical security control systems, including but not limited to failure of firewalls, IDS/IPS, FIM, anti-virus, physical access controls, logical access controls, audit logging mechanisms, and segmentation controls?',999999),(330,3,'(10.8.1a) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including restoring security functions?',999999),(331,3,'(10.8.1b) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including identifying and documenting the duration (date and time start to end)?',999999),(332,3,'(10.8.1c) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including identifying and documenting cause(s) of failure, including root cause, and documenting remediation required to address the root cause?',999999),(333,3,'(10.8.1d) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including identifying and addressing any security issues that arose during the failure?',999999),(334,3,'(10.8.1e) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including performing a risk assessment to determine whether further actions are required as a result of the security failure?',999999),(335,3,'(10.8.1f) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including implementing controls to prevent the cause of failure from reoccurring?',999999),(336,3,'(10.8.1g) Additional requirement for service providers only: Do you respond to failures of any critical security controls in a timely manner, with processes for responding to failures including resuming monitoring of security of controls?',999999),(337,3,'(10.9) Do you ensure that security policies and operation procedures for monitoring all access to network resources and cardholder data are documented, in use, and known to all affected parties?',999999),(338,3,'(11.1) Do you implement processes to test for the presence of wireless access points (802.11), and detect and identify all authorized and unauthorized wireless access points on a quarterly basis?',999999),(339,3,'(11.1.1) Do you maintain an inventory of authorized wireless access points including a documented business justification?',999999),(340,3,'(11.1.2) Have you implemented incident response procedures in the event unauthorized wireless access points are detected?',999999),(341,3,'(11.2) Do you run internal and external network vulnerability scans at least quarterly and after any significant changes in the network (such as new system component installations, changes in network topology, firewall rule modifications, product upgrades)?',999999),(342,3,'(11.2.1) Do you perform quarterly internal vulnerability scans and address vulnerabilities and perform rescans to verify that all ',999999),(343,3,'(11.2.2) Do you perform quarterly external vulnerability scans, via an Approved Scanning Vendor (ASV) approved by the Payment Card Industry Security Standards Council (PCI SSC) and perform rescans as needed, until passing scans are achieved?',999999),(344,3,'(11.2.3) Do you perform internal and external scans, and rescans as needed, after any significant change and all scans are performed by qualified personnel?',999999),(345,3,'(11.3a) Have you implemented a methodology for penetration testing that is based on industry-accepted penetration testing approaches (for example, NIST SP800-155)?',999999),(346,3,'(11.3b) Have you implemented a methodology for penetration testing that includes coverage for the entire CDE perimeter and critical systems?',999999),(347,3,'(11.3c) Have you implemented a methodology for penetration testing that includes testing from both inside and outside the network?',999999),(348,3,'(11.3d) Have you implemented a methodology for penetration testing that includes testing to validate any segmentation and scope-reduction controls?',999999),(349,3,'(11.3e) Have you implemented a methodology for penetration testing that defines application-layer penetration tests include, at a minimum, the vulnerabilities listed in requirement 6.5?',999999),(350,3,'(11.3f) Have you implemented a methodology for penetration testing that defines network-layer penetration tests to include components that support network functions as well as operating systems?',999999),(351,3,'(11.3g) Have you implemented a methodology for penetration testing that includes review and consideration of threats and vulnerabilities experienced in the last 12 months?',999999),(352,3,'(11.3h) Have you implemented a methodology for penetration testing that specifies retention of penetration testing results and remediation activities results?',999999),(353,3,'(11.3.1) Do you perform external penetration testing at least annually and after any significant infrastructure or application upgrade or modification (such as an operating system upgrade, a sub-network added to the environment, or a web server added to the environment)?',999999),(354,3,'(11.3.2) Do you perform internal penetration testing at least annually and after any significant infrastructure or application upgrade or modification (such as an operating system upgrade, a sub-network added to the environment, or a web server added to the environment)?',999999),(355,3,'(11.3.3) Are exploitable vulnerabilities found during penetration testing corrected and testing repeated to verify the corrections?',999999),(356,3,'(11.3.4) If segmentation is used to isolate the CDE from other networks, do you perform penetration tests at least annually and after any changes to segmentation controls/methods to verify that the segmentation methods are operational and effective, and isolate all out-of-scope systems from systems in the CDE?',999999),(357,3,'(11.3.4.1) Additional requirement for service providers only: If segmentation is used, have you confirmed PCI DSS scope by performing penetration testing on segmentation controls at least every six months and after any changes to segmentation controls/methods?',999999),(358,3,'(11.4a) Do you use intrusion-detection and/or intrusion-prevention techniques to detect and/or prevent intrusion into the network and monitor all traffic at the perimeter of the cardholder data environment as well as at critical points in the cardholder data environment, and alert personnel to suspected compromises?',999999),(359,3,'(11.5b) Do you keep all intrusion-detection and prevention engine, baselines, and signatures up to date?',999999),(360,3,'(11.5) Have you deployed a change-detection mechanism (for example, file-integrity monitoring tools) to alert personnel to unauthorized modifications (including changes, additions, and deletions) of critical system files, configuration files, or content files; and configure the software to perform critical file comparisons at least weekly?',999999),(361,3,'(11.5.1) Have you implemented a process to respond to any alerts generated by the change-detection solution?',999999),(362,3,'(11.6) Do you ensure that security policies and operational procedures for security monitoring and testing are documented, in use, and known to all affected parties?',999999),(363,3,'(12.1) Have you established, published, maintained, and disseminated a security policy?',999999),(364,3,'(12.1.1) Do you review the security policy at least annually and update the police when the environment changes?',999999),(365,3,'(12.2a) Have you implemented a risk-assessment process that is performed at least annually and upon significant changes to the environment (for example, acquisition, merger, relocation, etc.)?',999999),(366,3,'(12.2b) Have you implemented a risk-assessment process that identifies critical assets, threats, and vulnerabilities?',999999),(367,3,'(12.2c) Have you implemented a risk-assessment process that results in a formal, documented analysis of risk?',999999),(368,3,'(12.3) Do you develop usage policies for critical technologies and define proper use of these technologies?',999999),(369,3,'(12.3.1) Do your usage policies require explicit approval by authorized parties for the use of these technologies?',999999),(370,3,'(12.3.2) Do your usage policies require authentication for the use of the technology?',999999),(371,3,'(12.3.3) Do your usage policies require a list of all such devices and personnel with access is recorded and up to date?',999999),(372,3,'(12.3.4) Do you have a method to accurately and readily determine owner, contact information, and purpose of all critical technology users (for example, labeling, coding, and/or inventorying of devices)?',999999),(373,3,'(12.3.5) Do your usage policies define acceptable uses of the technology?',999999),(374,3,'(12.3.6) Do your usage policies define acceptable network locations for the technologies?',999999),(375,3,'(12.3.7) Do your usage policies define the use and maintenance of a list of company-approved products?',999999),(376,3,'(12.3.8) Do your usage policies require automatic disconnecting of sessions through remote-access technologies after a specific period of inactivity?',999999),(377,3,'(12.3.9) Do your usage policies define the requirement for activation of remote-access technologies for vendors and business partners is to be used only when needed by vendors and business partners, with immediate deactivation after use?',999999),(378,3,'(12.3.10a) For personnel accessing cardholder data via remote-access technologies, Do you prohibit the copying, moving, and storage of cardholder data onto local hard drives and removable electronic media, unless explicitly authorized for a defined business need?',999999),(379,3,'(12.3.10b) Where there is an authorized business need, do the usage policies require the data be protected in accordance with all applicable PCI DSS requirements?',999999),(380,3,'(12.4) Do you ensure that the security policy and procedures clearly define information security responsibilities for all personnel?',999999),(381,3,'(12.4.1a) Additional requirement for service providers only: Does executive management establish responsibility for the for the protection of cardholder data and a PCI DSS compliance program to include overall accountability for maintaining PCI DSS compliance? ',999999),(382,3,'(12.4.1b) Additional requirement for service providers only: Does executive management establish responsibility for the for the protection of cardholder data and a PCI DSS compliance program to include definition of a charter for a PCI DSS compliance program and communication to executive management? ',999999),(383,3,'(12.5.1) Have you assigned an individual or team to the responsibility of establishing, documenting, and distributing security policies and procedures?',999999),(384,3,'(12.5.2) Have you assigned an individual or team to the responsibility of monitoring and analyzing security alerts and information, and distributing that information to the appropriate personnel?',999999),(385,3,'(12.5.3) Have you assigned an individual or team to the responsibility of establishing, documenting, and distributing security incident response and escalation procedures to ensure timely and effective handling of all situations?',999999),(386,3,'(12.5.4) Have you assigned an individual or team to the responsibility of administration of user accounts, including additions, deletions, and modifications?',999999),(387,3,'(12.5.5) Have you assigned an individual or team to the responsibility of monitoring and controlling all access to data?',999999),(388,3,'(12.6) Have you implemented a formal security awareness program to make all personnel aware of the cardholder data security policy and procedures?',999999),(389,3,'(12.6.1) Do you educate personnel upon hire and at least annually thereafter?',999999),(390,3,'(12.6.2) Do you require personnel to acknowledge at least annually that they have read and understood the security policy and procedures?',999999),(391,3,'(12.7) Do you screen potential personnel prior to hire to minimize the risk of attacks from internal sources (for example, background checks, previous employment history, criminal record, credit history, and reference checks)?',999999),(392,3,'(12.8) Do you maintain and implement policies and procedures to manage service providers with whom cardholder data is shared, or that could affect the security of cardholder data, and maintain a list of service providers?',999999),(393,3,'(12.8.1) Do you maintain a list of service providers including a description of the service provided?',999999),(394,3,'(12.8.2) Do you maintain a written agreement with service providers that includes an acknowledgement that the service providers are responsible for the security of cardholder data the service providers possess or otherwise store, process or transmit on behalf of the customer, or to the extent that they could impact the security of the customer',999999),(395,3,'(12.8.3) Do you ensure there is an established process for engaging service providers including proper due diligence prior to engagement?',999999),(396,3,'(12.8.4) Do you maintain a program to monitor service providers',999999),(397,3,'(12.8.5) Do you maintain information about which PCI DSS requirements are managed by each service provider, and which are managed by the entity?',999999),(398,3,'(12.9) Additional requirement for service providers only: Do you acknowledge in writing to customers that you as a service provider are responsible for the security of cardholder data the service provider possesses or otherwise stores, processes, or transmits on behalf of the customer, or to the extent that they could impact the security of the customer',999999),(399,3,'(12.10) Have you implemented an incident response plan and are prepared to respond immediately to a system breach?',999999),(400,3,'(12.10.1a) Have you created an incident response plan to be initiated in the event of system breach?',999999),(401,3,'(12.10.1b) Does your incident response plan address roles, responsibilities, and communication and contact strategies in the event of a compromise including notification of the payment brands, at a minimum?',999999),(402,3,'(12.10.1c) Does your incident response plan address specific incident response procedures?',999999),(403,3,'(12.10.1d) Does your incident response plan address business recovery and continuity procedures?',999999),(404,3,'(12.10.1e) Does your incident response plan address data backup processes?',999999),(405,3,'(12.10.1f) Does your incident response plan address analysis of legal requirements for reporting compromises?',999999),(406,3,'(12.10.1g) Does your incident response plan address coverage and responses of all critical system components?',999999),(407,3,'(12.10.1h) Does your incident response plan have reference to or inclusion of incident response procedures from the payment brands?',999999),(408,3,'(12.10.2) Do you review and test the plan, including all elements listed in requirement 12.10.1, at least annually?',999999),(409,3,'(12.10.3) Do you designate specific personnel to be available on a 24/7 basis to respond to alerts?',999999),(410,3,'(12.10.4) Do you provide appropriate training to staff with security breach response responsibilities?',999999),(411,3,'(12.10.5) Do you include alerts from security monitoring systems, including but not limited to intrusion-detection, intrusion-prevention, firewalls, and file-integrity monitoring systems?',999999),(412,3,'(12.10.6) Do you develop a process to modify and evolve the incident response plan according to lessons learned and to incorporate industry developments?',999999),(413,3,'(12.11a) Additional requirement for service providers only: Do you perform reviews at least quarterly to confirm personnel are following security policies and operational procedures?',999999),(414,3,'(12.11b) Additional requirement for service providers only: Do your reviews cover daily log reviews?',999999),(415,3,'(12.11c) Additional requirement for service providers only: Do you review firewall rule-set reviews?',999999),(416,3,'(12.11d) Additional requirement for service providers only: Do you review applying configuration standards to new systems?',999999),(417,3,'(12.11e) Additional requirement for service providers only: Do you review responses to security alerts?',999999),(418,3,'(12.11f) Additional requirement for service providers only: Do you review change management processes?',999999),(419,3,'(12.11.1) Additional requirement for service providers only: Do you maintain documentation of quarterly review processes to include documenting results of the reviews as well as review and sign-off of results by personnel assigned responsibility for the PCI DSS compliance program?',999999),(420,4,'§164.502(a) (5)(i) Does the health plan use or disclose for underwriting purposes, \"Genetic Information\" as defined at § 160.103, including family history?',999999),(421,4,'§164.502(f) Do the covered entity‚Äôs policies and procedures protect the deceased individual\'s PHI consistent with the established performance criterion?',999999),(422,4,'§164.502(g) Do the policies and procedures provide for the treatment of an authorized person as a personal representative? ',999999),(423,4,'§164.502(h) Does the entity provide for and accommodate requests by individuals for confidential communications? ',999999),(424,4,'§164.502(i) Are uses and disclosures made by the covered entity consistent with its notice of privacy practices? ',999999),(425,4,' §164.502(j) (1) Are whistleblower policies and procedures consistent with the requirements of this performance criterion? ',999999),(426,4,'§164.502(j) (2) Has the covered entity ensured that disclosures by a workforce member related to his or her status as a victim of a crime are consistent with the rule established in the criterion?',999999),(427,4,'§164.504(e) Does the covered entity enter into business associate contracts as required and do these contracts contain all required elements?\n ',999999),(428,4,'§164.504(f) Do group health plan documents restrict the use and disclosure of PHI to the plan sponsor? ',999999),(429,4,'§164.504(g) For entities that perform multiple covered functions, are uses and disclosures of PHI only for the purpose related to the appropriate functions being performed? ',999999),(430,4,'§164.506(a) Do policies and procedures exist for the use or disclosure of PHI for treatment, payment, or health care operations? ',999999),(431,4,'§164.506(b); (b)(1); and (b)(2) Does the entity obtain the individual\'s consent for uses and disclosures? ',999999),(432,4,'§164.508(a) (1-3) and §164.508(b) (1-2) Do policies and procedures exist to determine when authorization is required?',999999),(433,4,'§164.508(b) (3) Does the covered entity use or disclose PHI for the purpose of research, conducts research, provides psychotherapy services, and uses compound authorizations? ',999999),(434,4,'§164.508(b) (4) Does the covered entity condition treatment, payment, enrollment, or eligibility on receipt of an authorization and if so, does one of the limited exceptions apply? ',999999),(435,4,'§164.508(b) (6) and §164.508(c) (1-4) Does the covered entity document and retain signed, valid authorizations? ',999999),(436,4,'§164.510(a) (1) and §164.510(a) (2) Does the entity maintain a directory of individuals in its facility?',999999),(437,4,'§164.510(a) (3) Do policies and procedures exist to use or disclose PHI for the facility directory in emergency circumstances? ',999999),(438,4,'§164.510(b) (1) Do policies and procedures exist for disclosing PHI to family members, relatives, close personal friends, or other persons identified by the individual?',999999),(439,4,'§164.510(b) (2) Does the covered entity disclose PHI to persons involved in the individual\'s care when the individual is present and are policies and procedures in place to define the circumstances in which this can be done? ',999999),(440,4,'§164.510(b) (3) Do policies and procedures exist for disclosing only information relevant to the person\'s involvement in the individual\'s health care when the individual is not present and in related situations? ',999999),(441,4,'§164.510(b) (4) Do policies and procedures exist for disclosing PHI to a public or private entity authorized by law or by its charter to assist in disaster relief efforts? ',999999),(442,4,'§164.510(b) (5) Does the covered entity disclose the PHI of deceased individuals in accordance with the established performance criterion?',999999),(443,4,'§164.512(a) Does the covered entity use and disclose PHI pursuant to requirements of other law and If so, are such uses and disclosures made consistent with the requirements of this performance criterion as well as the applicable requirements related to victims of abuse, neglect or domestic violence, pursuant to judicial and administrative proceedings and law enforcement purposes of this section?',999999),(444,4,'§164.512(b) Are policies and procedures in place that specify how the covered entity uses or disclosures PHI for public health activities consistent with this standard?',999999),(445,4,'§164.512(c) Does the covered entity determine whether and how to make disclosures about victims of abuse, neglect, or domestic violence consistent with this standard?',999999),(446,4,'§164.512(d) Is PHI used or disclosed for health oversight activities consistent with the established performance criterion? ',999999),(447,4,'§164.512(e) Do policies and procedures exist related to making disclosures in the course of any judicial or administrative proceeding to limit such disclosures to those permitted by the established performance criterion?',999999),(448,4,'§164.512(f) (1) Have disclosures made by the covered entity for law enforcement purposes been consistent with the performance criterion? ',999999),(449,4,'§164.512(f) (2) Are disclosures made to law enforcement for identification and location purposes by the covered entity consistent with the limitations listed in the established performance criterion? ',999999),(450,4,'§164.512(f) (3) Are policies and procedures consistent with the established performance criterion regarding the conditions in which the covered entity may disclose PHI of a possible victim of a crime in response to a law enforcement official\'s request? ',999999),(451,4,'§164.512(f) (4) Are policies and procedures in place to determine when it is permitted to disclose PHI to law enforcement about an individual who has died as a result of suspected criminal conduct?',999999),(452,4,'§164.512(f) (5) Are policies and procedures in place to determine when it is permitted to disclose PHI about an individual who may have committed a crime on the premises? ',999999),(453,4,'§164.512(f) (6) Are policies and procedures in place to determine what information about a medical emergency is necessary to disclose to alert law enforcement?  ',999999),(454,4,'§164.512(g) Are policies and procedures consistent with the established performance criterion for disclosing PHI to (1) a coroner or medical examiner; and (2) a funeral director? ',999999),(455,4,'§164.512(h) Is the covered entity‚Äôs process for disclosing PHI to organ procurement organizations or other entities engaged in the procurement consistent with the established performance criterion? ',999999),(456,4,'§164.512(i) (1) Does the covered entity use or disclose PHI for research purposes in accordance with the established performance criterion? ',999999),(457,4,'§164.512(i) (2) Do policies and procedures exist to determine what documentation of approval or waiver is needed to permit a use or disclosure and to apply that determination?',999999),(458,4,'§164.512(k) (1) Does the covered entity disclose PHI of individuals for military and veterans activities consistent with the established performance criterion?',999999),(459,4,'§164.512(k) (2) Does the covered entity respond to a request for PHI from Federal officials for intelligence and other national security activities in accordance with the established performance criterion?',999999),(460,4,'§164.512(k) (3) Does the covered entity respond to a request for PHI from Federal officials for the provision of protective services or the conduct of certain investigations in accordance with the established performance criterion? ',999999),(461,4,'§164.512(k) (4) Is the covered entity a component of the Department of State and if so, does the covered entity have policies and procedures consistent with the established performance criterion to use and disclose PHI for the purposes described in the established performance criterion? ',999999),(462,4,'§164.512(k) (5) Does the covered entity determine whether to disclose PHI to a correctional institution or a law enforcement official with custody of an individual and are policies and procedures in place to determine whether the use or disclosure of PHI to a correctional institution or law enforcement official is permitted? ',999999),(463,4,'§164.512(k) (6) Is the covered entity a health plan that is a government agency administering a government program providing public benefits and if so does the covered entity have policies and procedures consistent with the established performance criterion in place to disclose PHI for the purposes listed? ',999999),(464,4,'§164.512(l) Are policies and procedures in place regarding disclosure of PHI for the purpose of workers\' compensation, that are consistent with the established performance criterion?',999999),(465,4,'§164.514(b) & §164.514(c) Does the covered entity de-identify PHI consistent with the established performance criterion?',999999),(466,4,'§164.514(d) (1)§164.514(d) (2) Has the covered entity implemented policies and procedures consistent with the requirements of the established performance criterion to identify need for and limit use of PHI?',999999),(467,4,'§164.514(d) (3) Are policies and procedures in place to limit the PHI disclosed to the amount reasonably necessary to achieve the purpose of the disclosure?',999999),(468,4,'§164.514(d) (4) Are policies and procedures in place to limit the PHI requested by the entity being audited to the amount minimally necessary to achieve the purpose of the disclosure? ',999999),(469,4,'§164.514(d) (5) Are policies and procedures in place to address uses, disclosures, or requests for an entire medical record? ',999999),(470,4,'§164.514(e) Are data use agreements in place between the covered entity and its limited data set recipients, if any? ',999999),(471,4,'§164.514(f) Is the disclosure of PHI to a business associate or institutionally related foundation limited to the information set forth in the established performance criterion? ',999999),(472,4,'§164.514(g) Does the health plan have policies and procedures consistent with the established performance criterion addressing limitations on the use and disclosure of PHI received for underwriting and other purposes? ',999999),(473,4,'§164.514(h) Are policies and procedures consistent with the established performance criterion in place to verify the identity of persons who request PHI?',999999),(474,4,'§164.520(a) (1) & (b)(1) Does the covered entity have a notice of privacy practice, If yes,  does the current notice contain all the required elements as seen in the established criterion?',999999),(475,4,'§164.520(c) (1) Does the health plan provide its notice of privacy practices consistent with the established performance criterion? ',999999),(476,4,'§164.520(c) (2) Does a covered health care provider with direct treatment relationships with individuals provide its notice of privacy practices consistent with the established performance criterion? ',999999),(477,4,'§164.520(c) (3) Does a covered entity that maintains a web site prominently post its notice?',999999),(478,4,'§164.520(c) (3) Does the covered entity implement policies and procedures, if any, to provide the notice electronically consistent with the standard? ',999999),(479,4,'§164.520(d) For covered entities that participate in organized health care arrangement, does the entity use a joint notice of privacy practices and If a joint notice is utilized, does the joint notice meet the specific additional criteria for a joint notice? ',999999),(480,4,'§164.520(e) Is the documentation of notice of privacy practices and the acknowledgement of receipt by individuals of the notice of privacy practices maintained in electronic or written form and retained for a period of 6 years?',999999),(481,4,'§164.522(a) (1) Does the covered entity have policies and procedures consistent with the established performance criterion to permit an individual to request that the entity restrict uses or disclosures of PHI for treatment, payment, and health care operations, and disclosures permitted pursuant to §164.510(b)? \n',999999),(482,4,'§164.522(a) (2) Are policies and procedures in place to terminate restrictions on the use and/or disclosure of PHI, consistent with the established performance criterion?',999999),(483,4,'§164.522(a) (3) Does the covered entity, consistent with the established performance criterion, maintain documentation of restrictions in electronic or written form for a period of six years? ',999999),(484,4,'§164.522(b) (1) Does the covered entity have policies and procedures in place to permit individuals to request alternative means or alternative locations to receive communications of PHI consistent with the established performance criterion and if so, does the covered entity have policies and procedures in place to accommodate such requests consistent with the established performance criterion? ',999999),(485,4,'§164.524(a) (1), (b)(1), (b)(2), (c)(2), (c)(3), (c)(4), (d)(1), (d)(3) Does the covered entity enable the access rights of an individual in accordance with the established criterion? ',999999),(486,4,'§164.524(d) (2) Has the covered entity implemented policies and procedures that ensure that an individual receives a timely, written denial that contains all mandated elements? ',999999),(487,4,'§164.524(a) (2) Do policies and procedures exist that dictate the circumstances under which denials of requests for access are unreviewable?',999999),(488,4,'§164.524(a) (3) Are policies and procedures in place regarding review of denials of access? ',999999),(489,4,'§164.524(a) (4) & (d)(4) Do policies and procedures address request for and fulfillment of review of instances of access denial?',999999),(490,4,'§164.524(e) Does the covered entity document the following and retain the documentation as required by §164.530(j): (1) the designated record sets that are subject to access by individuals; and (2) the titles of the persons or offices responsible for receiving and processing requests for access by individuals?\n',999999),(491,4,'§164.526(a) (1) Has the covered entity implemented policies and procedures consistent with the established performance criterion regarding an individual\'s right to amend their PHI in a designated record set?',999999),(492,4,'§164.526(a) (2) Has the covered entity implemented policies and procedures consistent with the established performance criterion for determining grounds for denying requests? ',999999),(493,4,'§164.526(c) Does the covered entity have policies and procedures consistent with the established performance criterion for accepting requests for amendments? ',999999),(494,4,'§164.526(d) Has the covered entity implemented policies and procedures regarding provision of denial consistent with the established performance criterion? ',999999),(495,4,'§164.528(a) Does the covered entity have policies and procedures consistent with the established performance criterion for implementing an individual‚Äôs right to an accounting of disclosures of PHI? ',999999),(496,4,'§164.528(b) Does the covered entity have policies and procedures consistent with the established performance criterion to provide an accounting that contains the content listed? ',999999),(497,4,'§164.528(c) Does the covered entity have policies and procedures consistent with the established performance criterion to provide an individual with a requested accounting of PHI with in the time and fee limitations specified? ',999999),(498,4,'§164.528(d) Does the covered entity document requests for and fulfillment of accounting of disclosures consistent with the established performance criterion? ',999999),(499,4,'§164.530(a) Has the covered entity designated a privacy official and a contact person consistent with the established performance criterion? ',999999),(500,4,'§164.530(b) Does the covered entity train its work force and have a policies and procedures to ensure all members of the workforce receive necessary and appropriate training in a timely manner as provided for by the established performance criterion? ',999999),(501,4,'§164.530(c) Has the covered entity implemented administrative, technical, and physical safeguards to protect all PHI from any intentional or unintentional use or disclosure that is in violation of the standards, implementation specifications or other requirements of this subpart and does the covered entity reasonably safeguard protected health information to limit incidental uses or disclosures made pursuant to an otherwise permitted or required use or disclosure? ',999999),(502,4,'§164.530(d) (1) Does the covered entity have a process for individuals to make complaints, consistent with the requirements of the established performance criterion?',999999),(503,4,'§164.530(d) (2) Has the covered entity documented all complaints received and their disposition consistent with the performance criteria? ',999999),(504,4,'§164.530(e) (1) Does the covered entity apply appropriate sanctions against members of the workforce who fail to comply with the privacy policies and procedures of the entity or the Privacy Rule? ',999999),(505,4,'§164.530(f) Does the covered entity mitigate any harmful effect that is known to the covered entity of a use or disclosure of PHI by the covered entity or its business associates, in violation of its policies and procedures?',999999),(506,4,'§164.530(g) Has the covered entity implemented policies and procedures addressing the prevention of intimidating or retaliatory actions against any individual for the exercise by the individual of any right established, or for participation in any process provided, for filing complaints against the covered entity? ',999999),(507,4,'§164.530(h) Has the covered entity required individuals to waive their right to complain to the Secretary of HHS about a covered entity or business associate not complying with these Rules, as a condition of the provision of treatment, payment, enrollment in a health plan, or eligibility for benefits?',999999),(508,4,'§164.530(i) Has the covered entity implemented policies and procedures with respect to PHI that are designed to comply with the standards, implementation specifications, and other requirements of the HIPAA Privacy Rule? ',999999),(509,4,'§164.530(j) Does the entity maintain all required policies and procedures, written communication, and documentation in written or electronic form and are such documentations retained for the required time period?\n ',999999),(510,4,'§164.306(a) Does the covered entity or business associate ensure confidentiality, integrity and availability of ePHI?',999999),(511,4,'§164.306(a) Does the covered entity or business associate protect against reasonably anticipated threats or hazards to the security or integrity of ePHI? ',999999),(512,4,'§164.306(a) Does the covered entity or business associate protect against reasonably anticipated uses or disclosures of ePHI that are not permitted or required by the Privacy Rule? ',999999),(513,4,'§164.306(a) Does the covered entity or business associate ensure compliance with Security Rule by its workforce?\n',999999),(514,4,'§164.306(b) Does the covered entity comply with Security Rule accounting for Size, Technical Infrastructure, and Cost, as well as the probability of potential risks to electronic protected health information in accordance with the established criterion?',999999),(515,4,'§164.308(a) Does the entity have written policies and procedures in place to prevent, detect, contain and correct security violations? ',999999),(516,4,'§164.308(a) (1)(ii)(A) Does the entity have policies and procedures in place to conduct an accurate and thorough assessment of the potential risks and vulnerabilities to the confidentiality, integrity, and availability of all the electronic protected health information (ePHI) it creates, receives, maintains, or transmits? ',999999),(517,4,'§164.308(a) (1)(ii)(B) Does the entity have policies and procedures in place regarding a risk management process sufficient to reduce risks and vulnerabilities to a reasonable and appropriate level? ',999999),(518,4,'§164.308(a) (1)(ii)(C) Does the entity have policies and procedures in place regarding sanctions to apply to workforce members who fail to comply with the entity\'s security policies and procedures? ',999999),(519,4,'§164.308(a) (1)(ii)(D) Does the entity have policies and procedures in place regarding the regular review of information system activity and does the entity regularly review records of information system activity? ',999999),(520,4,'§164.308(a) (2) Does the entity have policies and procedures in place regarding the establishment of a security official? ',999999),(521,4,'§164.308(a) (3)(i) Does the entity have policies and procedures in place to ensure all members of its workforce have appropriate access to ePHI?',999999),(522,4,'§164.308(a) (3)(ii)(A) Does the entity have policies and procedures in place regarding the authorization and/or supervision of workforce members who work with ePHI or in locations where it might be accessed? ',999999),(523,4,'§164.308(a) (3)(ii)(B) Does the entity have policies and procedures in place to determine that a workforce member‚Äôs access to ePHI is appropriate?',999999),(524,4,'§164.308(a) (3)(ii)(B) Does the entity determine whether a workforce member\'s access to ePHI is appropriate? ',999999),(525,4,'§164.308(a) (3)(ii)(C) Does the entity have policies and procedures in place for terminating access to ePHI when employment or other arrangements with the workforce member ends? ',999999),(526,4,'§164.308(a) (4)(i) Does the entity have policies and procedures in place for authorizing access to ePHI that supports the applicable requirements of the Privacy Rule and does the entity authorize access to ePHI that supports the applicable requirements of the Privacy Rule? ',999999),(527,4,'§164.308(a) (4)(ii)(A) If the entity is a health care clearinghouse that is part of a larger organization, does the clearinghouse have policies and procedures to protect ePHI from unauthorized access by the larger organization?',999999),(528,4,'§164.308(a) (4)(ii)(A) Does the clearinghouse protect ePHI from unauthorized access by the larger organization? ',999999),(529,4,'§164.308(a) (4)(ii)(B) Does the entity have policies and procedures in place to grant access to ePHI for workforce members?',999999),(530,4,'§164.308(a) (4)(ii)(C) Does the entity have policies and procedures in place to authorize access and document, review, and modify a user‚Äôs right of access to a workstation, transaction, program, or process as well as practice these policies and procedures?',999999),(531,4,'§164.308(a) (5)(i) Does the entity have policies and procedures in place regarding a security awareness and training program as well as practice these policies and procedures?',999999),(532,4,'§164.308(a) (5)(ii)(A) Does the entity have policies and procedures in place regarding a process to provide periodic security reminders and update?',999999),(533,4,'§164.308(a) (5)(ii)(A) Does the entity appropriately communicate security updates to all members of its workforce and, if appropriate, contractors periodically?',999999),(534,4,'§164.308(a) (5)(ii)(B) Does the entity have policies and procedures in place regarding a process to incorporate its procedures to guard against, detect, and report malicious software into its security awareness and training program?',999999),(535,4,'§164.308(a) (5)(ii)(C) Does the entity have policies and procedures in place regarding a process to incorporate its procedures to guard against, detect, and report malicious software into its security awareness and training program? ',999999),(536,4,'§164.308(a) (5)(ii)(D) Does the entity have policies and procedures in place to incorporate procedures for monitoring log-in attempts and reporting discrepancies into its security awareness and training program? ',999999),(537,4,'§164.308(a) (6)(i) Does the entity have policies and procedures in place to address security incidents? ',999999),(538,4,'§164.308(a) (6)(ii) Does the entity have policies and procedures in place for identifying, responding to, reporting, and mitigating security incidents?',999999),(539,4,'§164.308(a) (7)(i) Does the entity have policies and procedures in place that include a formal contingency plan for responding to an emergency or other occurrences that damages systems that contain ePHI?\n',999999),(540,4,'§164.308(a) (7)(i) Does the entity have a contingency plan for responding to an emergency or other occurrences that damages systems that contain ePHI?',999999),(541,4,'§164.308(a) (7)(ii)(A) Does the entity have policies and procedures in place to create and maintain retrievable exact copies of ePHI?',999999),(542,4,'§164.308(a) (7)(ii)(A) Does the entity create and maintain retrievable exact copies of ePHI?',999999),(543,4,'§164.308(a) (7)(ii)(B) Does the entity have policies and procedures in place to restore any lost data and 3does the entity restore any lost data? ',999999),(544,4,'§164.308(a) (7)(ii)(C) Does the entity have policies and procedures in place to enable the continuity of critical business processes for the protection of ePHI while operating in emergency mode?',999999),(545,4,'§164.308(a) (7)(ii)(C) Does the entity enable the continuity of critical business processes for the protection of ePHI while operating in emergency mode? ',999999),(546,4,'§164.308(a) (7)(ii)(D) Does the entity have policies and procedures for periodic testing and revisions of its contingency plans and does the entity periodically test and revise its contingency plans? ',999999),(547,4,'§164.308(a) (7)(ii)(A) Does the entity have policies and procedures in place to assess the relative criticality of specific applications and data in support of other contingency plan components.',999999),(548,4,'§164.308(a) (7)(ii)(A) Does the entity assess the relative criticality of specific application and data in support of other contingency plan components?',999999),(549,4,'§164.308(a) (8) Does the entity have policies and procedures in place to perform periodic technical and nontechnical evaluation, based initially upon the standards implemented under this rule and subsequently, in response to environmental or operational changes or newly recognized risk affecting the security of ePH?',999999),(550,4,'§164.308(a) (8) Does the entity perform periodic technical and nontechnical evaluation, based initially upon the standards implemented under this rule and subsequently, in response to environmental or operational changes or newly recognized risk affecting the security of ePHI?',999999),(551,4,'§164.308(b) (1) Does the entity have policies and procedures in place to obtain satisfactory assurances from its business associates (or business associate subcontractors if the entity is a business associate) and to review the satisfactory assurances to ensure the applicable requirements at § 164.314(a) are included in the business associate contract or other arrangement? ',999999),(552,4,'§164.308(b) (3) Does the entity have policies and procedures in place to obtain satisfactory assurances from its business associates (or business associate subcontractors if entity is a business associate) and to review the satisfactory assurances to ensure the applicable requirements at § 164.314(a) is included in the written contract or other arrangement?',999999),(553,4,'§164.310(a) (1) Does the entity have policies and procedures in place regarding access to and use of facilities and equipment that house ePHI and does the entity limit physical access to its electronic information systems and the facility or facilities in which they are housed, while ensuring properly authorized access is allowed? ',999999),(554,4,'§164.310(a) (2)(i) Does the entity have policies and procedures in place that allow facility access for the restoration of lost data under the Disaster Recovery Plan and Emergency Mode Operations Plan?',999999),(555,4,'§164.310(a) (2)(i) Does the entity allow facility access for the restoration of lost data under the Disaster Recover Plan and Emergency Mode Operation Plan in the event of an emergency?',999999),(556,4,'§164.310(a) (2)(ii) Does the entity have policies and procedures in place to safeguard the facility and equipment therein from unauthorized physical access, tampering, and theft?',999999),(557,4,'§164.310(a) (2)(ii) Does the entity safeguard the facility and equipment therein from unauthorized physical access, tampering, and theft?',999999),(558,4,'§164.310(a) (2)(iii) Does the entity have policies and procedures in place for controlling a person‚Äôs access to facilities based on their role or function including visitor control and control of access to software programs for testing and revision?',999999),(559,4,'§164.310(a) (2)(iii) Does the entity control a person\'s access to facilities based on their role or function including visitor control and control of access to software programs for testing and revision? ',999999),(560,4,'§164.310(a) (2)(iv) Does the entity have policies and procedures in place to document repairs and modifications to the physical components of a facility which are related to security?',999999),(561,4,'§164.310(a) (2)(iv) Does the entity document repairs and modifications to the physical components of a facility which are related to security? ',999999),(562,4,'§164.310(b) Does the entity have policies and procedures in place that specifies the proper functions to be performed and the physical attributes of the surroundings of a specific workstation or class of workstation that can access ePHI?',999999),(563,4,'§164.310(b) Does the entity specify the proper functions to be performed and the physical attributes of the surroundings of a specific workstation or class of workstation that can access ePHI?',999999),(564,4,'§164.310(c) Does the entity have policies and procedures that document how workstations are physically restricted to limit access to only authorized personnel?',999999),(565,4,'§164.310(c) Are the entity workstations that access electronic protected health information restricted to authorized users?',999999),(566,4,'§164.310(d) (1) Does the entity have policies and procedures in place that govern the receipt and removal of hardware and electronic media that contain ePHI, into and out of a facility, and the movement of these items within the facility?',999999),(567,4,'§164.310(d) (1) Does the entity govern the receipt and removal of hardware and electronic media that contain ePHI, into and out of a facility, and the movement of these items within facility? ',999999),(568,4,'§164.310(d) (2)(i) Does the entity have policies and procedures that address the disposal ePHI data, hardware or electronic media on which it is stored?',999999),(569,4,'§164.310(d) (2)(i) Does the entity address the disposal ePHI data, hardware or electronic media on which it is stored? ',999999),(570,4,'§164.310(d) (2)(ii) Does the entity have policies and procedures established to remove ePHI before reusing electronic media?',999999),(571,4,'§164.310(d) (2)(ii) Does the entity have policies and procedures established to record who is responsible for the overseeing these ePHI removal processes?',999999),(572,4,'§164.310(d) (2)(ii) Does the entity remove ePHI before reusing electronic media?',999999),(573,4,'§164.310(d) (2)(ii) Does the entity record who is responsible for the overseeing those processes? ',999999),(574,4,'§164.310(d) (2)(iii) Does the entity have policies and procedures to record the movements of hardware and electronic media and any person responsible therefore?',999999),(575,4,'§164.310(d) (2)(iii) does the entity record the movements of hardware and electronic media and any person responsible therefore?',999999),(576,4,'§164.310(d) (2)(iv) Does the entity have policies and procedures in place to create a retrievable, exact copy of ePHI when needed, before movement of equipment?',999999),(577,4,'§164.310(d) (2)(iv) Does the entity create a retrievable, exact copy of ePHI when needed, before movement of equipment? ',999999),(578,4,'§164.312(a) (1) Has the entity implemented technical policies and procedure for the electronic information systems that maintain ePHI to allow access only to authorized users?',999999),(579,4,'§164.312(a) (1) Does the entity only allow access to those persons or software programs that have been granted access rights as specified in § 164.308(a)(4) to electronic information systems that maintain electronic protected health information?',999999),(580,4,'§164.312(a) (2)(i) Does the entity have polices and procedures regarding the assignment of unique user IDs to track user identity?',999999),(581,4,'§164.312(a) (2)(i) Does the entity assign unique user IDs to track user identity? ',999999),(582,4,'§164.312(a) (2)(ii) Does the entity have polices and procedures in place to provide access to ePHI during an emergency and does the entity provide access to ePHI during an emergency? ',999999),(583,4,'§164.312(a) (2)(ii) Does the entity provide access to ePHI during an emergency? ',999999),(584,4,'§164.312(a) (2)(iii) Does the entity have policies and procedures in place to automatically terminates an electronic session after a predetermined time of inactivity?',999999),(585,4,'§164.312(a) (2)(iii) Does the entity automatically terminates an electronic session after a predetermined time of inactivity?',999999),(586,4,'§164.312(a) (2)(iv) Does the entity have policies and procedures in place to encrypt and decrypt ePHI including processes regarding the use and management of the confidential process or key used to encrypt and decrypt ePHI?',999999),(587,4,'§164.312(a) (2)(iv) Does the entity encrypt and decrypt ePHI including processes regarding the use and management of the confidential process or key used to encrypt and decrypt ePHI? ',999999),(588,4,'§164.312(b) Does the entity have policies and procedures in place to implement hardware, software and/or procedural mechanisms to record and examine activity in information systems that contain or use ePHI?',999999),(589,4,'§164.312(b) Does the entity have hardware, software and/or procedural mechanism to record and examine activity in information systems that contain or use ePHI?  ',999999),(590,4,'§164.312(c) (1) Does the entity have policies and procedures in place to protect ePHI from improper alteration or destruction?',999999),(591,4,'§164.312(c) (1) Does the entity protect ePHI form improper alteration or destruction?',999999),(592,4,'§164.312(c) (2) Does the entity have policies and procedures in place regarding the implementation of electronic mechanisms to corroborate that ePHI has not been altered or destroyed in an unauthorized manner?',999999),(593,4,'§164.312(c) (2) Does the entity have electronic mechanism to corroborate that ePHI has not been altered or destroyed in an unauthorized manner? ',999999),(594,4,'§164.312(d) Does the entity have policies and procedures in place to verify that a person or entity seeking access to ePHI is the one claimed?',999999),(595,4,'§164.312(d) Does the entity verify that a person or entity seeking access to ePHI is the one claimed? ',999999),(596,4,'§164.312(e) (1) Does the entity have policies and procedures in place to implement technical security controls to guard against unauthorized access to ePHI transmitted over electronic communications networks?',999999),(597,4,'§164.312(e) (1) Does the entity have security controls to guard against unauthorized access to ePHI transmitted over electronic communications networks?',999999),(598,4,'§164.312(e) (2)(i) Does the entity have policies and procedures in place to implement security measures to ensure that electronically transmitted ePHI cannot be improperly modified without detection until disposed of?',999999),(599,4,'§164.312(e) (2)(ii) Does the entity have policies and procedures in place to implement an encryption mechanism to encrypt ePHI whenever deemed appropriate?',999999),(600,4,'§164.312(e) (2)(ii) Does the entity have encryption mechanism to encrypt ePHI whenever deemed necessary?',999999),(601,4,'§164.314(a) (1) Does the entity have policies and procedures in place regarding its contractual arrangements with contractors or other entities to which it discloses ePHI for use on its behalf? ',999999),(602,4,'§164.314(a) (2)(i)(A) Does the entity have policies and procedures in place regarding the content of its business associate contracts to ensure that its business associates will comply with applicable requirements of Subpart C of 45 CFR Part 164?',999999),(603,4,'§164.314(a) (2)(i)(B) Does the entity have policies and procedures in place requiring that its business associate contracts or other arrangements require that subcontractors that create, receive, maintain or transmit ePHI on behalf of its business associates agree to comply with the applicable parts of Subpart C of 45 CFR Part 164 by entering into a business associate contract or other arrangement that complies with 45 CFR § 164.314(a)?',999999),(604,4,'§164.314(a) (2)(i)(C) Does the entity have policies and procedures in place regarding the content of its business associate contracts to ensure that its business associates will report any security incident of which it becomes aware, including breaches of unsecured PHI, as required by 45 CFR § 164.410? ',999999),(605,4,'§164.314(a) (2)(ii) Does the entity have policies and procedures in place regarding other arrangements to have in place (e.g., a Memorandum of Understanding if the covered entity and business associate are government agencies) that meet the requirements of 45 CFR § 164.504(e)(3)? ',999999),(606,4,'§164.314(a) (2)(iii) Does the entity have policies and procedures in place regarding business associate contracts or other arrangements with its subcontractors such that the requirements of 45 CFR § 164.314(a)(2) (i)-(ii) would apply to the business associate and its subcontractors in the same manner as such requirements apply to a covered entity and its business associates? ',999999),(607,4,'§164.314(b) (1) Does the group health plan have policies and procedures in place to ensure that its plan documents provide that the plan sponsor will reasonably and appropriately safeguard ePHI created, received, maintained or transmitted to or by the plan sponsor on behalf of the group health plan?',999999),(608,4,'§164.314(b) (2)(i) Do the plan documents of the group health plan include language that requires the sponsor to implement administrative, physical, and technical safeguards that reasonably and appropriately protect the confidentiality, integrity, and availability of the ePHI that it creates, receives, maintains, or transmits on behalf of the group health plan? ',999999),(609,4,'§164.314(b) (2)(ii) Do the plan documents of the group health plan incorporate provisions to ensure that adequate separation required by 45 CFR § 164.504(f)(2) (iii) is supported by reasonable and appropriate security measures? ',999999),(610,4,'§164.314(b) (2)(iii) Do the plan documents of the group health plan incorporate provisions to include language that requires the sponsors to ensure that any agent to whom it provides this information agrees to implement reasonable and appropriate security measures to protect the information?',999999),(611,4,'§164.314(b) (2)(iv) Do the plan documents of the group health plan incorporate provisions to include language that requires plan sponsors to report to the group health plan any security incident of which it becomes aware? ',999999),(612,4,'§164.316(a) Does the entity have policies and procedures in place to implement reasonable and appropriate policies and procedures to comply with the standards, implementation specification or other requirements of the Security Rule? ',999999),(613,4,'§164.316(b) (1) Does the entity have policies and procedures to maintain written policies and procedures related to the security rule and written documents of (if any) actions, activities, or assessments required of the security rule? ',999999),(614,4,'§164.316(b) (2) (i) Does the entity have policies and procedures in place regarding the retention of required documentation for six (6) years from the date of its creation or the date when it last was in effect? ',999999),(615,4,'§164.316(b) (2) (ii) Does the entity have policies and procedures in place requiring that documentation be made available to the workforce members responsible for implementing applicable Security Rule policies and procedures?',999999),(616,4,'§164.316(b) (2) (iii) Does the entity have policies and procedures in place to perform periodic reviews and updates to Security Rule policies and procedures?',999999),(617,4,'§164.414(a) Has the covered entity adequately implemented the required 164.530 provisions as they relate to the Breach Notification Rule?',999999),(618,4,'§164.530(b) Has the covered entity trained its workforce on the applicable provisions established in the audit criterion?',999999),(619,4,'§164.530(d) Does the covered entity have a process in place for individuals to complain about its compliance with the Breach Notification Rule? ',999999),(620,4,'§164.530(e) Has the covered entity sanctioned any workforce members for failing to comply with its policies and procedures as they relate to the Breach Notification Rule?',999999),(621,4,'§164.530(g) Does the covered entity have appropriate policies and procedures in place to prohibit retaliation against any individual for exercising a right or participating in a process (e.g., assisting in an investigation by HHS or other appropriate authority or for filing a complaint) or for opposing an act or practice that the person believes in good faith violates the Breach Notification Rule? ',999999),(622,4,'§164.530(h) Does the covered entity have appropriate policies and procedures in place to prohibit it from requiring an individual to waive any right under the Breach Notification Rule as a condition of the provision of treatment, payment, enrollment in a health plan, or eligibility for benefits? ',999999),(623,4,'§164.530(i) Does the covered entity have policies and procedures that are consistent with the requirements of the Breach Notification Rule?',999999),(624,4,'§164.530(j) Does the covered entity have policies and procedures for maintaining documentation consistent with the requirements at §164.530(j)?',999999),(625,4,'§164.402 Does the covered entity have policies and procedures for determining whether an impermissible use or disclosure requires notifications under the Breach Notification Rule? ',999999),(626,4,'§164.402 Does the covered entity have a process for conducting a breach risk assessment when an impermissible use or disclosure of PHI is discovered, to determine whether there is a low probability that PHI has been compromised?',999999),(627,4,'§164.402 If not, does the covered entity have a policy and procedure that requires notification without conducting a risk assessment for all or specific types of incidents that result in impermissible uses or disclosures of PHI?',999999),(628,4,'§164.402 Did the covered entity or business associate determine that an acquisition, access, use or disclosure of protected health information in violation of the Privacy Rule did not require notifications under §§164.404-164.410 within the specified period?',999999),(629,4,'§164.402 If yes, did the covered entity or business associate determine that one of the regulatory exceptions to the definition of breach at §164.402(1) apply?',999999),(630,4,'§164.402 If yes, did the covered entity or business associate determine that the breach did not require notification, under §§164.404-410, because the PHI was not unsecured PHI, i.e., it was rendered unusable, unreadable, or indecipherable to unauthorized persons through the use of a technology or methodology specified in the applicable guidance?',999999),(631,4,'§164.404(a) Does the covered entity have policies and procedures for notifying individuals of a breach of their protected health information?',999999),(632,4,'§164.404(b) Are individuals notified of breaches within the required time period in accordance with the established criterion?',999999),(633,4,'§164.404(c) (1) Does the covered entity have policies and procedures for providing individuals with notifications that meet the content requirements of §164.404(c)?',999999),(634,4,'§164.404(d) Does the covered entity have policies and procedures for notifying an individual, an individual\'s next of kin, or a personal representative of a breach? ',999999),(635,4,'§164.406 Does the covered entity have policies and procedures for notifying media outlets of breaches affecting more than 500 residents of a State or jurisdiction? ',999999),(636,4,'§164.408 Does the covered entity have policies and procedures for notifying the Secretary of breaches involving 500 or more individuals? ',999999),(637,4,'§164.410 Did the business associate or subcontractor determine that there were any breaches of unsecured PHI within the specified period? ',999999),(638,4,'§164.412 Does the covered entity or business associate have policies and procedures regarding how the covered entity or business associate would respond to a law enforcement statement that a notice or posting would impede a criminal investigation or damage national security?',999999),(639,4,'§164.412 Has the covered entity or business associate delayed notification of a breach of unsecured PHI pursuant to such a law enforcement statement? ',999999),(640,4,'§164.414(b) Does the covered entity or business associate, as applicable, have policies and procedures in place to accept the burden of demonstrating that all notifications were made as required by the subpart or that the use or disclosure did not constitute a breach as defined at §164.402?',999999);
/*!40000 ALTER TABLE `assessment_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_scoring`
--

DROP TABLE IF EXISTS `assessment_scoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_scoring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scoring_method` int NOT NULL,
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
  `DREAD_DamagePotential` int DEFAULT '10',
  `DREAD_Reproducibility` int DEFAULT '10',
  `DREAD_Exploitability` int DEFAULT '10',
  `DREAD_AffectedUsers` int DEFAULT '10',
  `DREAD_Discoverability` int DEFAULT '10',
  `OWASP_SkillLevel` int DEFAULT '10',
  `OWASP_Motive` int DEFAULT '10',
  `OWASP_Opportunity` int DEFAULT '10',
  `OWASP_Size` int DEFAULT '10',
  `OWASP_EaseOfDiscovery` int DEFAULT '10',
  `OWASP_EaseOfExploit` int DEFAULT '10',
  `OWASP_Awareness` int DEFAULT '10',
  `OWASP_IntrusionDetection` int DEFAULT '10',
  `OWASP_LossOfConfidentiality` int DEFAULT '10',
  `OWASP_LossOfIntegrity` int DEFAULT '10',
  `OWASP_LossOfAvailability` int DEFAULT '10',
  `OWASP_LossOfAccountability` int DEFAULT '10',
  `OWASP_FinancialDamage` int DEFAULT '10',
  `OWASP_ReputationDamage` int DEFAULT '10',
  `OWASP_NonCompliance` int DEFAULT '10',
  `OWASP_PrivacyViolation` int DEFAULT '10',
  `Custom` float DEFAULT '10',
  `Contributing_Likelihood` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1281 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_scoring`
--

LOCK TABLES `assessment_scoring` WRITE;
/*!40000 ALTER TABLE `assessment_scoring` DISABLE KEYS */;
INSERT INTO `assessment_scoring` VALUES (1,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(2,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(3,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(4,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(5,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(6,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(7,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(8,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(9,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(10,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(11,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(12,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(13,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(14,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(15,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(16,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(17,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(18,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(19,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(20,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(21,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(22,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(23,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(24,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(25,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(26,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(27,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(28,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(29,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(30,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(31,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(32,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(33,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(34,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(35,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(36,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(37,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(38,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(39,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(40,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(41,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(42,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(43,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(44,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(45,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(46,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(47,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(48,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(49,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(50,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(51,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(52,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(53,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(54,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(55,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(56,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(57,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(58,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(59,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(60,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(61,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(62,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(63,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(64,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(65,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(66,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(67,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(68,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(69,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(70,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(71,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(72,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(73,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(74,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(75,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(76,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(77,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(78,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(79,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(80,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(81,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(82,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(83,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(84,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(85,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(86,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(87,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(88,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(89,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(90,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(91,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(92,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(93,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(94,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(95,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(96,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(97,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(98,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(99,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(100,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(101,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(102,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(103,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(104,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(105,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(106,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(107,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(108,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(109,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(110,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(111,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(112,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(113,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(114,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(115,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(116,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(117,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(118,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(119,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(120,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(121,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(122,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(123,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(124,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(125,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(126,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(127,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(128,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(129,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(130,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(131,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(132,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(133,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(134,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(135,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(136,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(137,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(138,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(139,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(140,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(141,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(142,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(143,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(144,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(145,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(146,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(147,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(148,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(149,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(150,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(151,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(152,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(153,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(154,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(155,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(156,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(157,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(158,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(159,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(160,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(161,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(162,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(163,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(164,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(165,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(166,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(167,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(168,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(169,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(170,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(171,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(172,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(173,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(174,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(175,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(176,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(177,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(178,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(179,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(180,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(181,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(182,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(183,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(184,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(185,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(186,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(187,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(188,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(189,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(190,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(191,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(192,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(193,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(194,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(195,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(196,5,0,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0),(197,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(198,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(199,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(200,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(201,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(202,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(203,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(204,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(205,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(206,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(207,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(208,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(209,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(210,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(211,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(212,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(213,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(214,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(215,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(216,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(217,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(218,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(219,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(220,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(221,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(222,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(223,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(224,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(225,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(226,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(227,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(228,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(229,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(230,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(231,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(232,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(233,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(234,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(235,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(236,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(237,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(238,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(239,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(240,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(241,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(242,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(243,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(244,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(245,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(246,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(247,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(248,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(249,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(250,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(251,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(252,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(253,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(254,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(255,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(256,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(257,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(258,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(259,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(260,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(261,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(262,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(263,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(264,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(265,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(266,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(267,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(268,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(269,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(270,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(271,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(272,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(273,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(274,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(275,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(276,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(277,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(278,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(279,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(280,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(281,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(282,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(283,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(284,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(285,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(286,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(287,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(288,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(289,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(290,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(291,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(292,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(293,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(294,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(295,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(296,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(297,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(298,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(299,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(300,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(301,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(302,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(303,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(304,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(305,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(306,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(307,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(308,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(309,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(310,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(311,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(312,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(313,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(314,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(315,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(316,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(317,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(318,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(319,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(320,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(321,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(322,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(323,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(324,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(325,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(326,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(327,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(328,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(329,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(330,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(331,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(332,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(333,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(334,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(335,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(336,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(337,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(338,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(339,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(340,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(341,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(342,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(343,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(344,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(345,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(346,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(347,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(348,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(349,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(350,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(351,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(352,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(353,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(354,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(355,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(356,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(357,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(358,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(359,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(360,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(361,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(362,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(363,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(364,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(365,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(366,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(367,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(368,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(369,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(370,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(371,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(372,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(373,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(374,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(375,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(376,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(377,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(378,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(379,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(380,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(381,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(382,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(383,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(384,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(385,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(386,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(387,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(388,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(389,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(390,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(391,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(392,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(393,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(394,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(395,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(396,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(397,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(398,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(399,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(400,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(401,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(402,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(403,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(404,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(405,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(406,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(407,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(408,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(409,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(410,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(411,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(412,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(413,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(414,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(415,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(416,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(417,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(418,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(419,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(420,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(421,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(422,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(423,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(424,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(425,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(426,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(427,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(428,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(429,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(430,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(431,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(432,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(433,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(434,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(435,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(436,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(437,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(438,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(439,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(440,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(441,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(442,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(443,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(444,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(445,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(446,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(447,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(448,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(449,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(450,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(451,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(452,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(453,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(454,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(455,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(456,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(457,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(458,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(459,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(460,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(461,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(462,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(463,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(464,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(465,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(466,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(467,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(468,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(469,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(470,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(471,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(472,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(473,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(474,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(475,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(476,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(477,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(478,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(479,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(480,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(481,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(482,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(483,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(484,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(485,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(486,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(487,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(488,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(489,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(490,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(491,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(492,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(493,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(494,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(495,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(496,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(497,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(498,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(499,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(500,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(501,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(502,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(503,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(504,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(505,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(506,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(507,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(508,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(509,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(510,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(511,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(512,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(513,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(514,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(515,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(516,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(517,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(518,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(519,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(520,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(521,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(522,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(523,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(524,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(525,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(526,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(527,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(528,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(529,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(530,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(531,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(532,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(533,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(534,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(535,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(536,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(537,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(538,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(539,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(540,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(541,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(542,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(543,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(544,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(545,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(546,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(547,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(548,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(549,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(550,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(551,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(552,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(553,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(554,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(555,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(556,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(557,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(558,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(559,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(560,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(561,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(562,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(563,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(564,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(565,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(566,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(567,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(568,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(569,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(570,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(571,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(572,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(573,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(574,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(575,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(576,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(577,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(578,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(579,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(580,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(581,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(582,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(583,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(584,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(585,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(586,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(587,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(588,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(589,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(590,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(591,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(592,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(593,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(594,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(595,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(596,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(597,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(598,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(599,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(600,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(601,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(602,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(603,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(604,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(605,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(606,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(607,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(608,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(609,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(610,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(611,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(612,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(613,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(614,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(615,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(616,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(617,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(618,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(619,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(620,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(621,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(622,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(623,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(624,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(625,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(626,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(627,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(628,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(629,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(630,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(631,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(632,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(633,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(634,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(635,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(636,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(637,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(638,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(639,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(640,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(641,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(642,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(643,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(644,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(645,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(646,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(647,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(648,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(649,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(650,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(651,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(652,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(653,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(654,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(655,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(656,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(657,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(658,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(659,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(660,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(661,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(662,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(663,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(664,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(665,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(666,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(667,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(668,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(669,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(670,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(671,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(672,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(673,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(674,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(675,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(676,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(677,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(678,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(679,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(680,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(681,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(682,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(683,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(684,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(685,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(686,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(687,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(688,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(689,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(690,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(691,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(692,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(693,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(694,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(695,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(696,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(697,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(698,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(699,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(700,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(701,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(702,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(703,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(704,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(705,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(706,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(707,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(708,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(709,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(710,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(711,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(712,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(713,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(714,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(715,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(716,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(717,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(718,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(719,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(720,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(721,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(722,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(723,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(724,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(725,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(726,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(727,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(728,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(729,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(730,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(731,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(732,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(733,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(734,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(735,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(736,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(737,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(738,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(739,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(740,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(741,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(742,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(743,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(744,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(745,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(746,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(747,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(748,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(749,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(750,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(751,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(752,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(753,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(754,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(755,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(756,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(757,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(758,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(759,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(760,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(761,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(762,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(763,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(764,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(765,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(766,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(767,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(768,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(769,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(770,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(771,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(772,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(773,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(774,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(775,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(776,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(777,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(778,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(779,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(780,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(781,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(782,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(783,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(784,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(785,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(786,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(787,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(788,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(789,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(790,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(791,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(792,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(793,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(794,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(795,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(796,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(797,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(798,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(799,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(800,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(801,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(802,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(803,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(804,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(805,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(806,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(807,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(808,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(809,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(810,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(811,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(812,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(813,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(814,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(815,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(816,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(817,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(818,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(819,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(820,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(821,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(822,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(823,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(824,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(825,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(826,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(827,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(828,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(829,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(830,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(831,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(832,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(833,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(834,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(835,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(836,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(837,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(838,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(839,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(840,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(841,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(842,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(843,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(844,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(845,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(846,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(847,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(848,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(849,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(850,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(851,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(852,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(853,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(854,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(855,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(856,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(857,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(858,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(859,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(860,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(861,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(862,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(863,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(864,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(865,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(866,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(867,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(868,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(869,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(870,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(871,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(872,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(873,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(874,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(875,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(876,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(877,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(878,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(879,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(880,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(881,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(882,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(883,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(884,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(885,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(886,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(887,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(888,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(889,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(890,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(891,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(892,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(893,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(894,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(895,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(896,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(897,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(898,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(899,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(900,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(901,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(902,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(903,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(904,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(905,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(906,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(907,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(908,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(909,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(910,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(911,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(912,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(913,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(914,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(915,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(916,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(917,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(918,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(919,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(920,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(921,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(922,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(923,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(924,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(925,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(926,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(927,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(928,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(929,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(930,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(931,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(932,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(933,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(934,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(935,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(936,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(937,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(938,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(939,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(940,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(941,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(942,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(943,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(944,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(945,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(946,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(947,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(948,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(949,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(950,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(951,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(952,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(953,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(954,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(955,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(956,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(957,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(958,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(959,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(960,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(961,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(962,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(963,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(964,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(965,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(966,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(967,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(968,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(969,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(970,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(971,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(972,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(973,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(974,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(975,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(976,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(977,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(978,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(979,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(980,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(981,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(982,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(983,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(984,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(985,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(986,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(987,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(988,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(989,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(990,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(991,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(992,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(993,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(994,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(995,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(996,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(997,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(998,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(999,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1000,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1001,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1002,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1003,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1004,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1005,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1006,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1007,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1008,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1009,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1010,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1011,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1012,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1013,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1014,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1015,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1016,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1017,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1018,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1019,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1020,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1021,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1022,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1023,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1024,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1025,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1026,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1027,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1028,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1029,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1030,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1031,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1032,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1033,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1034,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1035,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1036,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1037,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1038,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1039,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1040,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1041,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1042,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1043,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1044,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1045,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1046,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1047,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1048,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1049,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1050,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1051,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1052,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1053,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1054,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1055,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1056,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1057,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1058,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1059,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1060,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1061,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1062,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1063,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1064,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1065,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1066,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1067,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1068,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1069,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1070,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1071,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1072,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1073,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1074,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1075,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1076,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1077,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1078,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1079,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1080,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1081,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1082,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1083,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1084,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1085,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1086,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1087,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1088,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1089,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1090,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1091,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1092,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1093,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1094,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1095,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1096,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1097,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1098,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1099,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1100,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1101,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1102,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1103,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1104,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1105,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1106,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1107,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1108,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1109,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1110,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1111,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1112,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1113,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1114,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1115,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1116,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1117,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1118,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1119,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1120,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1121,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1122,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1123,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1124,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1125,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1126,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1127,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1128,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1129,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1130,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1131,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1132,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1133,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1134,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1135,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1136,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1137,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1138,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1139,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1140,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1141,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1142,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1143,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1144,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1145,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1146,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1147,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1148,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1149,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1150,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1151,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1152,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1153,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1154,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1155,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1156,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1157,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1158,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1159,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1160,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1161,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1162,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1163,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1164,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1165,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1166,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1167,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1168,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1169,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1170,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1171,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1172,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1173,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1174,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1175,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1176,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1177,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1178,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1179,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1180,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1181,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1182,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1183,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1184,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1185,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1186,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1187,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1188,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1189,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1190,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1191,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1192,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1193,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1194,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1195,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1196,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1197,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1198,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1199,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1200,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1201,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1202,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1203,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1204,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1205,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1206,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1207,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1208,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1209,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1210,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1211,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1212,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1213,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1214,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1215,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1216,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1217,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1218,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1219,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1220,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1221,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1222,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1223,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1224,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1225,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1226,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1227,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1228,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1229,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1230,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1231,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1232,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1233,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1234,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1235,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1236,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1237,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1238,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1239,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1240,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1241,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1242,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1243,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1244,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1245,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1246,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1247,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1248,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1249,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1250,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1251,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1252,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1253,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1254,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1255,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1256,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1257,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1258,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1259,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1260,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1261,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1262,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1263,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1264,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1265,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1266,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1267,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1268,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1269,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1270,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1271,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1272,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1273,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1274,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1275,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1276,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1277,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1278,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1279,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0),(1280,5,10,5,5,'N','L','N','C','C','C','ND','ND','ND','ND','ND','ND','ND','ND',10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0);
/*!40000 ALTER TABLE `assessment_scoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_scoring_contributing_impacts`
--

DROP TABLE IF EXISTS `assessment_scoring_contributing_impacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_scoring_contributing_impacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assessment_scoring_id` int NOT NULL,
  `contributing_risk_id` int NOT NULL,
  `impact` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_scoring_contributing_impacts`
--

LOCK TABLES `assessment_scoring_contributing_impacts` WRITE;
/*!40000 ALTER TABLE `assessment_scoring_contributing_impacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_scoring_contributing_impacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (1,'Critical Security Controls','2016-03-04 05:21:27'),(2,'NIST 800-171','2018-01-09 08:10:32'),(3,'PCI DSS 3.2','2018-01-09 08:10:32'),(4,'HIPAA (April 2016)','2018-01-09 08:10:32');
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_groups`
--

DROP TABLE IF EXISTS `asset_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_groups`
--

LOCK TABLES `asset_groups` WRITE;
/*!40000 ALTER TABLE `asset_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_values`
--

DROP TABLE IF EXISTS `asset_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_values` (
  `id` int NOT NULL,
  `min_value` int NOT NULL,
  `max_value` int DEFAULT NULL,
  `valuation_level_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_values`
--

LOCK TABLES `asset_values` WRITE;
/*!40000 ALTER TABLE `asset_values` DISABLE KEYS */;
INSERT INTO `asset_values` VALUES (1,0,100000,''),(2,100001,200000,''),(3,200001,300000,''),(4,300001,400000,''),(5,400001,500000,''),(6,500001,600000,''),(7,600001,700000,''),(8,700001,800000,''),(9,800001,900000,''),(10,900001,1000000,'');
/*!40000 ALTER TABLE `asset_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `value` int DEFAULT '5',
  `location` varchar(1000) NOT NULL,
  `teams` varchar(1000) DEFAULT NULL,
  `details` longtext,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verified` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'','System',5,'0','0','','2019-07-01 08:30:52',1),(2,'','Network',5,'0','0','','2019-07-01 08:30:52',1),(3,'','Application',5,'0','0','','2019-07-01 08:30:52',1);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_asset_groups`
--

DROP TABLE IF EXISTS `assets_asset_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_asset_groups` (
  `asset_id` int NOT NULL,
  `asset_group_id` int NOT NULL,
  UNIQUE KEY `asset_asset_group_unique` (`asset_id`,`asset_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_asset_groups`
--

LOCK TABLES `assets_asset_groups` WRITE;
/*!40000 ALTER TABLE `assets_asset_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_asset_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `risk_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `message` mediumtext NOT NULL,
  `log_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `random_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_zip_file_name` text NOT NULL,
  `db_zip_file_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Access Management'),(2,'Environmental Resilience'),(3,'Monitoring'),(4,'Physical Security'),(5,'Policy and Procedure'),(6,'Sensitive Data Management'),(7,'Technical Vulnerability Management'),(8,'Third-Party Management');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `close_reason`
--

DROP TABLE IF EXISTS `close_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `close_reason` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `close_reason`
--

LOCK TABLES `close_reason` WRITE;
/*!40000 ALTER TABLE `close_reason` DISABLE KEYS */;
INSERT INTO `close_reason` VALUES (0,'Rejected'),(1,'Fully Mitigated'),(2,'System Retired'),(3,'Cancelled'),(4,'Too Insignificant');
/*!40000 ALTER TABLE `close_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `closures`
--

DROP TABLE IF EXISTS `closures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `closures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `user_id` int NOT NULL,
  `closure_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `close_reason` int NOT NULL,
  `note` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `closures_close_reason_idx` (`close_reason`),
  KEY `closures_user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int NOT NULL,
  `comment` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compliance_files`
--

DROP TABLE IF EXISTS `compliance_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compliance_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ref_id` int DEFAULT '0',
  `ref_type` varchar(100) DEFAULT '',
  `name` varchar(100) NOT NULL,
  `unique_name` varchar(30) NOT NULL,
  `type` varchar(128) DEFAULT NULL,
  `size` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int NOT NULL,
  `content` longblob NOT NULL,
  `version` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compliance_files`
--

LOCK TABLES `compliance_files` WRITE;
/*!40000 ALTER TABLE `compliance_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `compliance_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributing_risks`
--

DROP TABLE IF EXISTS `contributing_risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributing_risks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(1000) NOT NULL,
  `weight` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributing_risks`
--

LOCK TABLES `contributing_risks` WRITE;
/*!40000 ALTER TABLE `contributing_risks` DISABLE KEYS */;
INSERT INTO `contributing_risks` VALUES (1,'Safety',0.25),(2,'SLA',0.25),(3,'Financial',0.25),(4,'Reputation',0.25);
/*!40000 ALTER TABLE `contributing_risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributing_risks_impact`
--

DROP TABLE IF EXISTS `contributing_risks_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributing_risks_impact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contributing_risks_id` int NOT NULL,
  `value` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributing_risks_id` (`contributing_risks_id`),
  KEY `cri_index` (`contributing_risks_id`,`value`),
  KEY `cri_index2` (`value`,`contributing_risks_id`),
  KEY `cri_value_idx` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributing_risks_impact`
--

LOCK TABLES `contributing_risks_impact` WRITE;
/*!40000 ALTER TABLE `contributing_risks_impact` DISABLE KEYS */;
INSERT INTO `contributing_risks_impact` VALUES (1,1,1,'Insignificant'),(2,2,1,'Insignificant'),(3,3,1,'Insignificant'),(4,4,1,'Insignificant'),(5,1,2,'Minor'),(6,2,2,'Minor'),(7,3,2,'Minor'),(8,4,2,'Minor'),(9,1,3,'Moderate'),(10,2,3,'Moderate'),(11,3,3,'Moderate'),(12,4,3,'Moderate'),(13,1,4,'Major'),(14,2,4,'Major'),(15,3,4,'Major'),(16,4,4,'Major'),(17,1,5,'Extreme/Catastrophic'),(18,2,5,'Extreme/Catastrophic'),(19,3,5,'Extreme/Catastrophic'),(20,4,5,'Extreme/Catastrophic');
/*!40000 ALTER TABLE `contributing_risks_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributing_risks_likelihood`
--

DROP TABLE IF EXISTS `contributing_risks_likelihood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributing_risks_likelihood` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crl_index` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributing_risks_likelihood`
--

LOCK TABLES `contributing_risks_likelihood` WRITE;
/*!40000 ALTER TABLE `contributing_risks_likelihood` DISABLE KEYS */;
INSERT INTO `contributing_risks_likelihood` VALUES (1,1,'Remote'),(2,2,'Unlikely'),(3,3,'Credible'),(4,4,'Likely'),(5,5,'Almost Certain');
/*!40000 ALTER TABLE `contributing_risks_likelihood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_class`
--

DROP TABLE IF EXISTS `control_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_class` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_class`
--

LOCK TABLES `control_class` WRITE;
/*!40000 ALTER TABLE `control_class` DISABLE KEYS */;
INSERT INTO `control_class` VALUES (1,'Technical'),(2,'Operational'),(3,'Management');
/*!40000 ALTER TABLE `control_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_maturity`
--

DROP TABLE IF EXISTS `control_maturity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_maturity` (
  `value` int NOT NULL,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_maturity`
--

LOCK TABLES `control_maturity` WRITE;
/*!40000 ALTER TABLE `control_maturity` DISABLE KEYS */;
INSERT INTO `control_maturity` VALUES (0,'Not Performed'),(1,'Performed'),(2,'Documented'),(3,'Managed'),(4,'Reviewed'),(5,'Optimizing');
/*!40000 ALTER TABLE `control_maturity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_phase`
--

DROP TABLE IF EXISTS `control_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_phase` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_phase`
--

LOCK TABLES `control_phase` WRITE;
/*!40000 ALTER TABLE `control_phase` DISABLE KEYS */;
INSERT INTO `control_phase` VALUES (1,'Physical'),(2,'Procedural'),(3,'Technical'),(4,'Legal and Regulatory or Compliance');
/*!40000 ALTER TABLE `control_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_priority`
--

DROP TABLE IF EXISTS `control_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_priority` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_priority`
--

LOCK TABLES `control_priority` WRITE;
/*!40000 ALTER TABLE `control_priority` DISABLE KEYS */;
INSERT INTO `control_priority` VALUES (1,'P0'),(2,'P1'),(3,'P2'),(4,'P3');
/*!40000 ALTER TABLE `control_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_type`
--

DROP TABLE IF EXISTS `control_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_type` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_type`
--

LOCK TABLES `control_type` WRITE;
/*!40000 ALTER TABLE `control_type` DISABLE KEYS */;
INSERT INTO `control_type` VALUES (1,'Standalone'),(2,'Project'),(3,'Enterprise');
/*!40000 ALTER TABLE `control_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_risk_model_values`
--

DROP TABLE IF EXISTS `custom_risk_model_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_risk_model_values` (
  `impact` int NOT NULL,
  `likelihood` int NOT NULL,
  `value` double(3,1) NOT NULL,
  UNIQUE KEY `impact_likelihood_unique` (`impact`,`likelihood`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_risk_model_values`
--

LOCK TABLES `custom_risk_model_values` WRITE;
/*!40000 ALTER TABLE `custom_risk_model_values` DISABLE KEYS */;
INSERT INTO `custom_risk_model_values` VALUES (1,1,0.4),(1,2,0.8),(1,3,1.2),(1,4,1.6),(1,5,2.0),(2,1,0.8),(2,2,1.6),(2,3,2.4),(2,4,3.2),(2,5,4.0),(3,1,1.2),(3,2,2.4),(3,3,3.6),(3,4,4.8),(3,5,6.0),(4,1,1.6),(4,2,3.2),(4,3,4.8),(4,4,6.4),(4,5,8.0),(5,1,2.0),(5,2,4.0),(5,3,6.0),(5,4,8.0),(5,5,10.0);
/*!40000 ALTER TABLE `custom_risk_model_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_classification`
--

DROP TABLE IF EXISTS `data_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_classification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_classification`
--

LOCK TABLES `data_classification` WRITE;
/*!40000 ALTER TABLE `data_classification` DISABLE KEYS */;
INSERT INTO `data_classification` VALUES (1,'Public',1),(2,'Internal',2),(3,'Confidential',3),(4,'Restricted',4);
/*!40000 ALTER TABLE `data_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_formats`
--

DROP TABLE IF EXISTS `date_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_formats` (
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_formats`
--

LOCK TABLES `date_formats` WRITE;
/*!40000 ALTER TABLE `date_formats` DISABLE KEYS */;
INSERT INTO `date_formats` VALUES ('DD MM YYYY'),('DD-MM-YYYY'),('DD.MM.YYYY'),('DD/MM/YYYY'),('MM DD YYYY'),('MM-DD-YYYY'),('MM.DD.YYYY'),('MM/DD/YYYY'),('YYYY DD MM'),('YYYY MM DD'),('YYYY-DD-MM'),('YYYY-MM-DD'),('YYYY.DD.MM'),('YYYY.MM.DD'),('YYYY/DD/MM'),('YYYY/MM/DD');
/*!40000 ALTER TABLE `date_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_exceptions`
--

DROP TABLE IF EXISTS `document_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_exceptions` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `policy_document_id` int DEFAULT NULL,
  `framework_id` int NOT NULL,
  `control_framework_id` int DEFAULT NULL,
  `owner` int DEFAULT NULL,
  `additional_stakeholders` varchar(500) NOT NULL,
  `creation_date` date NOT NULL DEFAULT '0000-00-00',
  `review_frequency` int NOT NULL DEFAULT '0',
  `next_review_date` date NOT NULL DEFAULT '0000-00-00',
  `approval_date` date NOT NULL DEFAULT '0000-00-00',
  `approver` int DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `description` blob NOT NULL,
  `justification` blob NOT NULL,
  `file_id` int NOT NULL,
  `associated_risks` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_exceptions`
--

LOCK TABLES `document_exceptions` WRITE;
/*!40000 ALTER TABLE `document_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_exceptions_status`
--

DROP TABLE IF EXISTS `document_exceptions_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_exceptions_status` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_exceptions_status`
--

LOCK TABLES `document_exceptions_status` WRITE;
/*!40000 ALTER TABLE `document_exceptions_status` DISABLE KEYS */;
INSERT INTO `document_exceptions_status` VALUES (1,'Open'),(2,'Closed');
/*!40000 ALTER TABLE `document_exceptions_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_status`
--

DROP TABLE IF EXISTS `document_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_status` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_status`
--

LOCK TABLES `document_status` WRITE;
/*!40000 ALTER TABLE `document_status` DISABLE KEYS */;
INSERT INTO `document_status` VALUES (1,'Draft'),(2,'In Review'),(3,'Approved');
/*!40000 ALTER TABLE `document_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitted_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `document_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_bin NOT NULL,
  `document_name` text CHARACTER SET utf8mb3 COLLATE utf8_bin NOT NULL,
  `parent` int NOT NULL,
  `document_status` int DEFAULT '1',
  `file_id` int NOT NULL,
  `creation_date` date NOT NULL,
  `last_review_date` date DEFAULT NULL,
  `review_frequency` int NOT NULL DEFAULT '0',
  `next_review_date` date NOT NULL,
  `approval_date` date DEFAULT NULL,
  `control_ids` varchar(500) NOT NULL,
  `framework_ids` varchar(500) NOT NULL,
  `document_owner` int NOT NULL DEFAULT '0',
  `additional_stakeholders` varchar(500) NOT NULL,
  `approver` int NOT NULL DEFAULT '0',
  `team_ids` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_saved_selections`
--

DROP TABLE IF EXISTS `dynamic_saved_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_saved_selections` (
  `value` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` enum('private','public') NOT NULL,
  `name` varchar(100) NOT NULL,
  `custom_display_settings` varchar(1000) DEFAULT NULL,
  `custom_selection_settings` varchar(1000) NOT NULL,
  `custom_column_filters` text NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_saved_selections`
--

LOCK TABLES `dynamic_saved_selections` WRITE;
/*!40000 ALTER TABLE `dynamic_saved_selections` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamic_saved_selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_login_attempts`
--

DROP TABLE IF EXISTS `failed_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_login_attempts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `expired` tinyint DEFAULT '0',
  `user_id` int NOT NULL,
  `ip` varchar(15) DEFAULT '0.0.0.0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_login_attempts`
--

LOCK TABLES `failed_login_attempts` WRITE;
/*!40000 ALTER TABLE `failed_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_type_extensions`
--

DROP TABLE IF EXISTS `file_type_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_type_extensions` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`value`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_type_extensions`
--

LOCK TABLES `file_type_extensions` WRITE;
/*!40000 ALTER TABLE `file_type_extensions` DISABLE KEYS */;
INSERT INTO `file_type_extensions` VALUES (12,'csv'),(14,'doc'),(16,'dot'),(6,'dotx'),(1,'gif'),(15,'gz'),(4,'jpeg'),(2,'jpg'),(5,'pdf'),(3,'png'),(9,'rtf'),(10,'txt'),(18,'xla'),(13,'xls'),(7,'xlsx'),(17,'xlt'),(11,'xml'),(8,'zip');
/*!40000 ALTER TABLE `file_type_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_types`
--

DROP TABLE IF EXISTS `file_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_types` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`value`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_types`
--

LOCK TABLES `file_types` WRITE;
/*!40000 ALTER TABLE `file_types` DISABLE KEYS */;
INSERT INTO `file_types` VALUES (21,'application/csv'),(18,'application/force-download'),(16,'application/msword'),(11,'application/octet-stream'),(19,'application/pdf'),(15,'application/vnd.ms-excel'),(8,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),(7,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(17,'application/x-gzip'),(6,'application/x-pdf'),(9,'application/zip'),(1,'image/gif'),(5,'image/jpeg'),(2,'image/jpg'),(3,'image/png'),(4,'image/x-png'),(14,'text/comma-separated-values'),(20,'text/csv'),(12,'text/plain'),(10,'text/rtf'),(13,'text/xml');
/*!40000 ALTER TABLE `file_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int DEFAULT '0',
  `view_type` int DEFAULT '1',
  `name` varchar(100) NOT NULL,
  `unique_name` varchar(30) NOT NULL,
  `type` varchar(128) DEFAULT NULL,
  `size` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int NOT NULL,
  `content` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_mappings`
--

DROP TABLE IF EXISTS `framework_control_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `control_id` int NOT NULL,
  `framework` int NOT NULL,
  `reference_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `control_id` (`control_id`),
  KEY `framework` (`framework`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_mappings`
--

LOCK TABLES `framework_control_mappings` WRITE;
/*!40000 ALTER TABLE `framework_control_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_test_audits`
--

DROP TABLE IF EXISTS `framework_control_test_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_test_audits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int NOT NULL,
  `tester` int NOT NULL,
  `test_frequency` int NOT NULL DEFAULT '0',
  `last_date` date NOT NULL,
  `next_date` date NOT NULL,
  `name` mediumtext NOT NULL,
  `objective` mediumtext NOT NULL,
  `test_steps` mediumtext NOT NULL,
  `approximate_time` int NOT NULL,
  `expected_results` mediumtext NOT NULL,
  `framework_control_id` int NOT NULL,
  `desired_frequency` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_test_audits`
--

LOCK TABLES `framework_control_test_audits` WRITE;
/*!40000 ALTER TABLE `framework_control_test_audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_test_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_test_comments`
--

DROP TABLE IF EXISTS `framework_control_test_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_test_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_audit_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int NOT NULL,
  `comment` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_test_comments`
--

LOCK TABLES `framework_control_test_comments` WRITE;
/*!40000 ALTER TABLE `framework_control_test_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_test_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_test_results`
--

DROP TABLE IF EXISTS `framework_control_test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_test_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_audit_id` int NOT NULL,
  `test_result` varchar(50) NOT NULL,
  `summary` text NOT NULL,
  `test_date` date NOT NULL,
  `submitted_by` int NOT NULL,
  `submission_date` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_test_results`
--

LOCK TABLES `framework_control_test_results` WRITE;
/*!40000 ALTER TABLE `framework_control_test_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_test_results_to_risks`
--

DROP TABLE IF EXISTS `framework_control_test_results_to_risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_test_results_to_risks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_results_id` int DEFAULT NULL,
  `risk_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_test_results_to_risks`
--

LOCK TABLES `framework_control_test_results_to_risks` WRITE;
/*!40000 ALTER TABLE `framework_control_test_results_to_risks` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_test_results_to_risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_tests`
--

DROP TABLE IF EXISTS `framework_control_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester` int NOT NULL,
  `test_frequency` int NOT NULL DEFAULT '0',
  `last_date` date NOT NULL,
  `next_date` date NOT NULL,
  `name` mediumtext NOT NULL,
  `objective` mediumtext NOT NULL,
  `test_steps` mediumtext NOT NULL,
  `approximate_time` int NOT NULL,
  `expected_results` mediumtext NOT NULL,
  `framework_control_id` int NOT NULL,
  `desired_frequency` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `additional_stakeholders` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_tests`
--

LOCK TABLES `framework_control_tests` WRITE;
/*!40000 ALTER TABLE `framework_control_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_to_framework`
--

DROP TABLE IF EXISTS `framework_control_to_framework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_to_framework` (
  `control_id` int NOT NULL,
  `framework_id` int NOT NULL,
  PRIMARY KEY (`control_id`,`framework_id`),
  KEY `framework_id` (`framework_id`,`control_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_to_framework`
--

LOCK TABLES `framework_control_to_framework` WRITE;
/*!40000 ALTER TABLE `framework_control_to_framework` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_to_framework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_control_type_mappings`
--

DROP TABLE IF EXISTS `framework_control_type_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_control_type_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `control_id` int NOT NULL,
  `control_type_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_control_type_mappings`
--

LOCK TABLES `framework_control_type_mappings` WRITE;
/*!40000 ALTER TABLE `framework_control_type_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_control_type_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `framework_controls`
--

DROP TABLE IF EXISTS `framework_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `framework_controls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `short_name` varchar(1000) DEFAULT NULL,
  `long_name` blob,
  `description` blob,
  `supplemental_guidance` blob,
  `control_owner` int DEFAULT NULL,
  `control_class` int DEFAULT NULL,
  `control_phase` int DEFAULT NULL,
  `control_number` varchar(100) DEFAULT NULL,
  `control_maturity` int NOT NULL DEFAULT '0',
  `desired_maturity` int NOT NULL DEFAULT '0',
  `control_priority` int DEFAULT NULL,
  `control_status` tinyint(1) DEFAULT '1',
  `family` int DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_audit_date` date DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `desired_frequency` int DEFAULT NULL,
  `mitigation_percent` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `framework_controls_deleted_idx` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `framework_controls`
--

LOCK TABLES `framework_controls` WRITE;
/*!40000 ALTER TABLE `framework_controls` DISABLE KEYS */;
/*!40000 ALTER TABLE `framework_controls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frameworks`
--

DROP TABLE IF EXISTS `frameworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frameworks` (
  `value` int NOT NULL AUTO_INCREMENT,
  `parent` int NOT NULL,
  `name` blob NOT NULL,
  `description` blob NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `order` int NOT NULL,
  `last_audit_date` date DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `desired_frequency` int DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frameworks`
--

LOCK TABLES `frameworks` WRITE;
/*!40000 ALTER TABLE `frameworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `frameworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphical_saved_selections`
--

DROP TABLE IF EXISTS `graphical_saved_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graphical_saved_selections` (
  `value` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` enum('private','public') NOT NULL,
  `name` varchar(100) NOT NULL,
  `graphical_display_settings` varchar(1000) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphical_saved_selections`
--

LOCK TABLES `graphical_saved_selections` WRITE;
/*!40000 ALTER TABLE `graphical_saved_selections` DISABLE KEYS */;
/*!40000 ALTER TABLE `graphical_saved_selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impact`
--

DROP TABLE IF EXISTS `impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impact` (
  `name` varchar(50) DEFAULT NULL,
  `value` int NOT NULL,
  KEY `impact_index` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impact`
--

LOCK TABLES `impact` WRITE;
/*!40000 ALTER TABLE `impact` DISABLE KEYS */;
INSERT INTO `impact` VALUES ('Insignificant',1),('Minor',2),('Moderate',3),('Major',4),('Extreme/Catastrophic',5);
/*!40000 ALTER TABLE `impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_to_teams`
--

DROP TABLE IF EXISTS `items_to_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_to_teams` (
  `item_id` int NOT NULL,
  `team_id` int NOT NULL,
  `type` varchar(20) NOT NULL,
  UNIQUE KEY `item_team_unique` (`item_id`,`team_id`,`type`),
  KEY `item_type` (`item_id`,`type`),
  KEY `team_type` (`team_id`,`type`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_to_teams`
--

LOCK TABLES `items_to_teams` WRITE;
/*!40000 ALTER TABLE `items_to_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_to_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL,
  `full` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'en','English'),(2,'bp','Brazilian Portuguese'),(3,'es','Spanish'),(4,'ar','Arabic'),(5,'ca','Catalan'),(6,'cs','Czech'),(7,'da','Danish'),(8,'de','German'),(9,'el','Greek'),(10,'fi','Finnish'),(11,'fr','French'),(12,'he','Hebrew'),(13,'hi','Hindi'),(14,'hu','Hungarian'),(15,'it','Italian'),(16,'ja','Japanese'),(17,'ko','Korean'),(18,'nl','Dutch'),(19,'no','Norwegian'),(20,'pl','Polish'),(21,'pt','Portuguese'),(22,'ro','Romanian'),(23,'ru','Russian'),(24,'sr','Serbian'),(25,'sv','Swedish'),(26,'tr','Turkish'),(27,'uk','Ukranian'),(28,'vi','Vietnamese'),(29,'zh-CN','Chinese Simplified'),(30,'zh-TW','Chinese Traditional'),(31,'bg','Bulgarian'),(32,'sk','Slovak'),(33,'mn','Mongolian'),(34,'si','Sinhala');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likelihood`
--

DROP TABLE IF EXISTS `likelihood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likelihood` (
  `name` varchar(50) DEFAULT NULL,
  `value` int NOT NULL,
  KEY `likelihood_index` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likelihood`
--

LOCK TABLES `likelihood` WRITE;
/*!40000 ALTER TABLE `likelihood` DISABLE KEYS */;
INSERT INTO `likelihood` VALUES ('Remote',1),('Unlikely',2),('Credible',3),('Likely',4),('Almost Certain',5);
/*!40000 ALTER TABLE `likelihood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'All Sites');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgmt_reviews`
--

DROP TABLE IF EXISTS `mgmt_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mgmt_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `review` int NOT NULL,
  `reviewer` int NOT NULL,
  `next_step` int NOT NULL,
  `comments` mediumtext NOT NULL,
  `next_review` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgmt_reviews`
--

LOCK TABLES `mgmt_reviews` WRITE;
/*!40000 ALTER TABLE `mgmt_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `mgmt_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigation_accept_users`
--

DROP TABLE IF EXISTS `mitigation_accept_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigation_accept_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mau_risk_id_idx` (`risk_id`),
  KEY `mau_user_idx` (`user_id`),
  KEY `mau_user_risk_idx` (`user_id`,`risk_id`),
  KEY `mau_risk_user_idx` (`risk_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigation_accept_users`
--

LOCK TABLES `mitigation_accept_users` WRITE;
/*!40000 ALTER TABLE `mitigation_accept_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitigation_accept_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigation_effort`
--

DROP TABLE IF EXISTS `mitigation_effort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigation_effort` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigation_effort`
--

LOCK TABLES `mitigation_effort` WRITE;
/*!40000 ALTER TABLE `mitigation_effort` DISABLE KEYS */;
INSERT INTO `mitigation_effort` VALUES (1,'Trivial'),(2,'Minor'),(3,'Considerable'),(4,'Significant'),(5,'Exceptional');
/*!40000 ALTER TABLE `mitigation_effort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigation_to_controls`
--

DROP TABLE IF EXISTS `mitigation_to_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigation_to_controls` (
  `mitigation_id` int NOT NULL,
  `control_id` int NOT NULL,
  `validation_details` mediumtext,
  `validation_owner` int DEFAULT '0',
  `validation_mitigation_percent` int DEFAULT '0',
  PRIMARY KEY (`mitigation_id`,`control_id`),
  KEY `control_id` (`control_id`,`mitigation_id`),
  KEY `mtg2ctrl_mtg_idx` (`mitigation_id`),
  KEY `mtg2ctrl_control_idx` (`control_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigation_to_controls`
--

LOCK TABLES `mitigation_to_controls` WRITE;
/*!40000 ALTER TABLE `mitigation_to_controls` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitigation_to_controls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigation_to_team`
--

DROP TABLE IF EXISTS `mitigation_to_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigation_to_team` (
  `mitigation_id` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`mitigation_id`,`team_id`),
  KEY `team_id` (`team_id`,`mitigation_id`),
  KEY `mtg2team_mtg_id` (`mitigation_id`),
  KEY `mtg2team_team_id` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigation_to_team`
--

LOCK TABLES `mitigation_to_team` WRITE;
/*!40000 ALTER TABLE `mitigation_to_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitigation_to_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigations`
--

DROP TABLE IF EXISTS `mitigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `planning_strategy` int NOT NULL,
  `mitigation_effort` int NOT NULL,
  `mitigation_cost` int NOT NULL DEFAULT '1',
  `mitigation_owner` int NOT NULL,
  `current_solution` mediumtext NOT NULL,
  `security_requirements` mediumtext NOT NULL,
  `security_recommendations` mediumtext NOT NULL,
  `submitted_by` int NOT NULL DEFAULT '1',
  `planning_date` date NOT NULL,
  `mitigation_percent` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `risk_id` (`risk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `next_step` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `next_step`
--

LOCK TABLES `next_step` WRITE;
/*!40000 ALTER TABLE `next_step` DISABLE KEYS */;
INSERT INTO `next_step` VALUES (1,'Accept Until Next Review'),(2,'Consider for Project'),(3,'Submit as a Production Issue');
/*!40000 ALTER TABLE `next_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset` (
  `username` varchar(200) DEFAULT NULL,
  `token` varchar(20) NOT NULL,
  `attempts` int NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

LOCK TABLES `password_reset` WRITE;
/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_risks`
--

DROP TABLE IF EXISTS `pending_risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_risks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assessment_id` int NOT NULL,
  `assessment_answer_id` int NOT NULL,
  `subject` blob NOT NULL,
  `score` float NOT NULL,
  `owner` int DEFAULT NULL,
  `affected_assets` text,
  `comment` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_risks`
--

LOCK TABLES `pending_risks` WRITE;
/*!40000 ALTER TABLE `pending_risks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` blob NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
INSERT INTO `permission_groups` VALUES (1,'Governance','',1),(2,'Risk Management','',2),(3,'Compliance','',3),(4,'Asset Management','',4),(5,'Assessments','',5);
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_to_permission_group`
--

DROP TABLE IF EXISTS `permission_to_permission_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_to_permission_group` (
  `permission_id` int NOT NULL,
  `permission_group_id` int NOT NULL,
  PRIMARY KEY (`permission_id`,`permission_group_id`),
  KEY `permission_group_id` (`permission_group_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_to_permission_group`
--

LOCK TABLES `permission_to_permission_group` WRITE;
/*!40000 ALTER TABLE `permission_to_permission_group` DISABLE KEYS */;
INSERT INTO `permission_to_permission_group` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,4),(41,5);
/*!40000 ALTER TABLE `permission_to_permission_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_to_user`
--

DROP TABLE IF EXISTS `permission_to_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_to_user` (
  `permission_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`permission_id`,`user_id`),
  KEY `user_id` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_to_user`
--

LOCK TABLES `permission_to_user` WRITE;
/*!40000 ALTER TABLE `permission_to_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_to_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` blob NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'governance','Allow Access to \"Governance\" Menu',_binary 'This permission grants a user access to the \"Governance\" menu in SimpleRisk.',1),(2,'add_new_frameworks','Able to Add New Frameworks',_binary 'This permission allows a user to create new Control Frameworks in the \"Governance\" menu at the top, followed by \"Define Control Frameworks\" menu on the left.',2),(3,'modify_frameworks','Able to Modify Existing Frameworks',_binary 'This permission allows a user to modify existing Control Frameworks in the \"Governance\" menu at the top, followed by \"Define Control Frameworks\" menu on the left.',3),(4,'delete_frameworks','Able to Delete Existing Frameworks',_binary 'This permission allows a user to delete existing Control Frameworks in the \"Governance\" menu at the top, followed by \"Define Control Frameworks\" menu on the left.',4),(5,'add_new_controls','Able to Add New Controls',_binary 'This permission allows a user to add new Framework Controls in the \"Governance\" menu at the top, followed by \"Define Control Frameworks\" menu on the left then going to the controls tab.',5),(6,'modify_controls','Able to Modify Existing Controls',_binary 'This permission allows a user to modify existing Framework Controls in the \"Governance\" menu at the top, followed by \"Define Control Frameworks\" menu on the left then going to the controls tab.',6),(7,'delete_controls','Able to Delete Existing Controls',_binary 'This permission allows a user to delete existing Framework Controls in the \"Governance\" menu at the top, followed by \"Define Control Frameworks\" menu on the left then going to the controls tab.',7),(8,'add_documentation','Able to Add Documentation',_binary 'This permission allows a user to upload Policies/Guidelines/Standards/Procedures in the \"Governance\" menu at the top, followed by \"Document Program\" on the left.',8),(9,'modify_documentation','Able to Modify Documentation',_binary 'This permission allows a user to modify Policies/Guidelines/Standards/Procedures in the \"Governance\" menu at the top, followed by \"Document Program\" on the left.',9),(10,'delete_documentation','Able to Delete Documentation',_binary 'This permission allows a user to delete Policies/Guidelines/Standards/Procedures in the \"Governance\" menu at the top, followed by \"Document Program\" on the left.',10),(11,'view_exception','Able to View Exceptions',_binary 'This permission allows a user to view exceptions for Policies and Controls as well as Unapproved Exceptions in the \"Governance\" menu at the top, followed by \"Define Exceptions\" on the left.',11),(12,'create_exception','Able to Create Exceptions',_binary 'This permission allows a user to create exceptions for Policies and Controls in the \"Governance\" menu at the top, followed by \"Define Exceptions\" on the left.',12),(13,'update_exception','Able to Update Exceptions',_binary 'This permission allows a user to modify/update exceptions for Policies and Controls in the \"Governance\" menu at the top, followed by \"Define Exceptions\" on the left.',13),(14,'delete_exception','Able to Delete Exceptions',_binary 'This permission allows a user to delete exceptions for Policies and Controls in the \"Governance\" menu at the top, followed by \"Define Exceptions\" on the left.',14),(15,'approve_exception','Able to Approve Exceptions',_binary 'This permission allows a user to approve an exception moving it from the Unapproved Exceptions tab to its respecitve Policy or Control Exceptions tab in the \"Governance\" menu at the top, followed by \"Define Exceptions\" on the left.',15),(16,'riskmanagement','Allow Access to \"Risk Management\" Menu',_binary 'This permission will allow a user to see the \"Risk Management\" menu in SimpleRisk and allow them to use any risk management responsibilities they have been assigned. If a user has been assigned this permission, but no others, they will only be able to see the details for risks, mitigations, and reviews, but will not be able to edit or submit anything. (Note: If team-based separation is in use, users will only see risks that are assigned to a team they are part of, otherwise, no risks will be displayed to that user.)',1),(17,'submit_risks','Able to Submit New Risks',_binary 'This permission, as the name suggests, allows for the submission of new risks in the \"Risk Management\" menu. If a user has this permission, but does not have the \"Able to Modify Risk\" permission, they will not be able to edit risks, even if they are the original submitter.',2),(18,'modify_risks','Able to Modify Risk Details',_binary 'This permission allows users to save changes made to risks. No risk, mitigation, or review will be able to be modified with out it.',3),(19,'close_risks','Able to Close Risks',_binary 'This permission grants a user the ability to close a risk.',4),(20,'plan_mitigations','Able to Plan Mitigations',_binary 'This permission is neccessary along with the \"Able to Modify Risks\" permission, in order to give the user the ability to plan and save mitigations.',5),(21,'accept_mitigation','Able to Accept Mitigations',_binary 'This permission allows a user to accept risk mitigations. This is separate from submitting mitigations as this only refers to the check box found in each risk mitigation to signify this particular mitigation has been accepted by management. This is not a core step in the risk management life cycle and serves as an additional feature for users needing to delegate responsibilities further.',6),(22,'review_insignificant','Able to Review Insignificant Risks',_binary 'This permission, along with the \"Able to Modify Risks\" permission, will grant the user the ability to review risks that have a current score that would be labeled as \"Insignificant\" by the risk scoring system. You may change which risk scores are defined as \"Insignificant\" by selecting the \"Configure\" menu at the top, followed by \"Configure Risk Formula\" on the left.',7),(23,'review_low','Able to Review Low Risks',_binary 'This permission, along with the \"Able to Modify Risks\" permission, will grant the user the ability to review risks that have a current score that would be labeled as \"Low\" by the risk scoring system. You may change which risk scores are defined as \"Low\" by selecting the \"Configure\" menu at the top, followed by \"Configure Risk Formula� on the left.',8),(24,'review_medium','Able to Review Medium Risks',_binary 'This permission, along with the \"Able to Modify Risks� permission, will grant the user the ability to review risks that have a current score that would be labeled as \"Medium\" by the risk scoring system. You may change which risk scores are defined as \"Medium\" by selecting the \"Configure� menu at the top, followed by \"Configure Risk Formula� on the left.',9),(25,'review_high','Able to Review High Risks',_binary 'This permission, along with the \"Able to Modify Risks� permission, will grant the user the ability to review risks that have a current score that would be labeled as \"High\" by the risk scoring system. You may change which risk scores are defined as \"High\" by selecting the \"Configure� menu at the top, followed by \"Configure Risk Formula� on the left.',10),(26,'review_veryhigh','Able to Review Very High Risks',_binary 'This permission, along with the \"Able to Modify Risks� permission, will grant the user the ability to review risks that have a current score that would be labeled as \"Very High\" by the risk scoring system. You may change which risk scores are defined as \"Very High\" by selecting the \"Configure� menu at the top, followed by \"Configure Risk Formula� on the left.',11),(27,'comment_risk_management','Able to Comment Risk Management',_binary 'This permission allows a user to add comments to risks they can otherwise already access.',12),(28,'add_projects','Able to Add Projects',_binary 'This permission allows a user to create new Projects in the \"Risk Management\" menu at the top, followed by \"Plan Projects\" menu on the left.',13),(29,'delete_projects','Able to Delete Projects',_binary 'This permission alows a user to delete existing projects from the \"Risk Management\" menu at the to, followed by \"Plan Projects\" menu on the left.',14),(30,'manage_projects','Able to Manage Projects',_binary 'This permission alows a user to modfiy/manage existing projects from the \"Risk Management\" menu at the to, followed by \"Plan Projects\" menu on the left.',15),(31,'compliance','Allow Access to \"Compliance\" Menu',_binary 'This permission will allow users to see and access the \"Compliance\" menu at the top.',1),(32,'comment_compliance','Able to Comment Compliance',_binary 'This permission allows a user to add comments to control audits they can otherwise already access.',2),(33,'define_tests','Able to Define Tests',_binary 'This permission allows a user to define/create tests in the \"Compliance\" menu at the top, followed by \"Define Tests\" on the left.',3),(34,'edit_tests','Able to Edit Tests',_binary 'This permission allows a user to edit/modify tests in the \"Compliance\" menu at the top, followed by \"Define Tests\" on the left.',4),(35,'delete_tests','Able to Delete Tests',_binary 'This permission allows a user to delete tests in the \"Compliance\" menu at the top, followed by \"Define Tests\" on the left.',5),(36,'initiate_audits','Able to Initiate Audits',_binary 'This permission allows a user to iniate an audit of tests, controls, and/or frameworks in the \"Compliance\" menu at the top followed by \"Initiate Audits\" on the left.',6),(37,'modify_audits','Able to Modify Audits',_binary 'This permission allows a user to modify audits of tests, controls, and/or frameworks in the \"Compliance\" menu at the top followed by \"Active Audits\" on the left.',7),(38,'reopen_audits','Able to Reopen Audits',_binary 'This permission allows a user to reopen audits of tests, controls, and/or frameworks in the \"Compliance\" menu at the top followed by \"Past Audits\" on the left.',8),(39,'delete_audits','Able to Delete Audits',_binary 'This permission allows a user to delete audits of tests, controls, and/or frameworks in the \"Compliance\" menu at the top followed by \"Past Audits\" on the left.',9),(40,'asset','Allow Access to \"Asset Management\" Menu',_binary 'This permission allows a user to create, modify, and delete assets. This permission will grant the user full control in the Asset Management Menu.',1),(41,'assessments','Allow Access to \"Assessments\" Menu',_binary 'This permission will allow the user access to the \"Assessments\" menu. If SimpleRisk has the \"Risk Assessment Extra\" enabled the user will gain access to this as well with all the permssions to make, change, and send assessments.',1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planning_strategy`
--

DROP TABLE IF EXISTS `planning_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planning_strategy` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planning_strategy`
--

LOCK TABLES `planning_strategy` WRITE;
/*!40000 ALTER TABLE `planning_strategy` DISABLE KEYS */;
INSERT INTO `planning_strategy` VALUES (1,'Research'),(2,'Accept'),(3,'Mitigate'),(4,'Watch'),(5,'Transfer');
/*!40000 ALTER TABLE `planning_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `consultant` int DEFAULT NULL,
  `business_owner` int DEFAULT NULL,
  `data_classification` int DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999999',
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaire_pending_risks`
--

DROP TABLE IF EXISTS `questionnaire_pending_risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionnaire_pending_risks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questionnaire_tracking_id` int NOT NULL,
  `questionnaire_scoring_id` int NOT NULL,
  `subject` blob NOT NULL,
  `owner` int DEFAULT NULL,
  `asset` varchar(200) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire_pending_risks`
--

LOCK TABLES `questionnaire_pending_risks` WRITE;
/*!40000 ALTER TABLE `questionnaire_pending_risks` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionnaire_pending_risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regulation`
--

DROP TABLE IF EXISTS `regulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regulation` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regulation`
--

LOCK TABLES `regulation` WRITE;
/*!40000 ALTER TABLE `regulation` DISABLE KEYS */;
INSERT INTO `regulation` VALUES (1,'PCI DSS 3.2'),(2,'Sarbanes-Oxley (SOX)'),(3,'HIPAA'),(4,'ISO 27001');
/*!40000 ALTER TABLE `regulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residual_risk_scoring_history`
--

DROP TABLE IF EXISTS `residual_risk_scoring_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residual_risk_scoring_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `residual_risk` float NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `risk_id` (`risk_id`),
  KEY `rrsh_last_update_idx` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residual_risk_scoring_history`
--

LOCK TABLES `residual_risk_scoring_history` WRITE;
/*!40000 ALTER TABLE `residual_risk_scoring_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `residual_risk_scoring_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Approve Risk'),(2,'Reject Risk and Close');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_levels`
--

DROP TABLE IF EXISTS `review_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_levels` (
  `id` int NOT NULL DEFAULT '0',
  `value` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
-- Table structure for table `risk_catalog`
--

DROP TABLE IF EXISTS `risk_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `grouping` int NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `function` int NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_catalog`
--

LOCK TABLES `risk_catalog` WRITE;
/*!40000 ALTER TABLE `risk_catalog` DISABLE KEYS */;
INSERT INTO `risk_catalog` VALUES (1,'R-AC-1',1,'Inability to maintain individual accountability','There is a failure to maintain asset ownership and it is not possible to have non-repudiation of actions or inactions.',2,1),(2,'R-AC-2',1,'Improper assignment of privileged functions','There is a failure to implement least privileges.',2,2),(3,'R-AC-3',1,'Privilege escalation','Access to privileged functions is inadequate or cannot be controlled.',2,3),(4,'R-AC-4',1,'Unauthorized access','Access is granted to unauthorized individuals, groups or services.',2,4),(5,'R-AM-1',2,'Lost, damaged or stolen asset(s)','Asset(s) is/are lost, damaged or stolen.',2,5),(6,'R-AM-2',2,'Loss of integrity through unauthorized changes ','Unauthorized changes corrupt the integrity of the system / application / service.',2,6),(7,'R-BC-1',3,'Business interruption ','There is increased latency or a service outage that negatively impacts business operations.',5,7),(8,'R-BC-2',3,'Data loss / corruption ','There is a failure to maintain the confidentiality of the data (compromise) or data is corrupted (loss).',5,8),(12,'R-BC-3',3,'Reduction in productivity','User productivity is negatively affected by the incident.',2,12),(13,'R-EX-1',4,'Loss of revenue ','A financial loss occures from either a loss of clients or inability to generate future revenue.',5,13),(14,'R-EX-2',4,'Cancelled contract','A contract is cancelled due to a violation of a contract clause.',5,14),(15,'R-EX-3',4,'Diminished competitive advantage','The competitive advantage of the organization is jeapordized.',5,15),(16,'R-EX-4',4,'Diminished reputation ','Negative publicity tarnishes the organization\'s reputation.',5,16),(17,'R-EX-5',4,'Fines and judgements','Legal and/or financial damages result from statutory / regulatory / contractual non-compliance.',5,17),(18,'R-EX-6',4,'Unmitigated vulnerabilities','Umitigated technical vulnerabilities exist without compensating controls or other mitigation actions.',2,18),(19,'R-EX-7',4,'System compromise','System / application / service is compromised affects its confidentiality, integrity,  availability and/or safety.',2,19),(20,'R-BC-4',3,'Information loss / corruption or system compromise due to technical attack','Malware, phishing, hacking or other technical attacks compromise data, systems, applications or services.',2,20),(21,'R-BC-5',3,'Information loss / corruption or system compromise due to non‐technical attack ','Social engineering, sabotage or other non-technical attack compromises data, systems, applications or services.',2,21),(22,'R-GV-1',5,'Inability to support business processes','Implemented security /privacy practices are insufficient to support the organization\'s secure technologies & processes requirements.',2,1),(24,'R-GV-4',5,'Inadequate internal practices ','Internal practices do not exist or are inadequate. Procedures fail to meet \"reasonable practices\" expected by industry standards.',2,4),(25,'R-GV-5',5,'Inadequate third-party practices','Third-party practices do not exist or are inadequate. Procedures fail to meet \"reasonable practices\" expected by industry standards.',2,5),(26,'R-GV-3',5,'Lack of roles & responsibilities','Documented security / privacy roles & responsibilities do not exist or are inadequate.',1,3),(27,'R-GV-2',5,'Incorrect controls scoping','There is incorrect or inadequate controls scoping, which leads to a potential gap or lapse in security / privacy controls coverage.',1,2),(28,'R-GV-8',5,'Illegal content or abusive action','There is abusive content / harmful speech / threats of violence / illegal content that negatively affect business operations.',1,8),(29,'R-SA-1',6,'Inability to maintain situational awareness','There is an inability to detect incidents.',3,29),(30,'R-SA-2',6,'Lack of a security-minded workforce','The workforce lacks user-level understanding about security & privacy principles.',2,30),(31,'R-GV-6',5,'Lack of oversight of internal controls','There is a lack of due diligence / due care in overseeing the organization\'s internal security / privacy controls.',1,6),(32,'R-GV-7',5,'Lack of oversight of third-party controls','There is a lack of due diligence / due care in overseeing security / privacy controls operated by third-party service providers.',1,7),(33,'R-IR-1',7,'Inability to investigate / prosecute incidents','Response actions either corrupt evidence or impede the ability to prosecute incidents.',4,1),(34,'R-IR-2',7,'Improper response to incidents','Response actions fail to act appropriately in a timely manner to properly address the incident.',4,2),(35,'R-IR-3',7,'Ineffective remediation actions','There is no oversight to ensure remediation actions are correct and/or effective.',2,3),(36,'R-IR-4',7,'Expense associated with managing a loss event','There are financial repercussions from responding to an incident or loss.',4,4);
/*!40000 ALTER TABLE `risk_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_function`
--

DROP TABLE IF EXISTS `risk_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_function` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_function`
--

LOCK TABLES `risk_function` WRITE;
/*!40000 ALTER TABLE `risk_function` DISABLE KEYS */;
INSERT INTO `risk_function` VALUES (1,'Identify'),(2,'Protect'),(3,'Detect'),(4,'Respond'),(5,'Recover');
/*!40000 ALTER TABLE `risk_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_grouping`
--

DROP TABLE IF EXISTS `risk_grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_grouping` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `order` int NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_grouping`
--

LOCK TABLES `risk_grouping` WRITE;
/*!40000 ALTER TABLE `risk_grouping` DISABLE KEYS */;
INSERT INTO `risk_grouping` VALUES (1,'Access Control',0,1),(2,'Asset Management',0,2),(3,'Business Continuity',0,3),(4,'Exposure',0,4),(5,'Governance',0,5),(6,'Situational Awareness',0,7),(7,'Incident Response',0,6),(8,'Unassigned Items',1,0);
/*!40000 ALTER TABLE `risk_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_levels`
--

DROP TABLE IF EXISTS `risk_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_levels` (
  `value` decimal(3,1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `display_name` varchar(20) NOT NULL,
  KEY `risk_levels_value_idx` (`value`),
  KEY `risk_levels_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_levels`
--

LOCK TABLES `risk_levels` WRITE;
/*!40000 ALTER TABLE `risk_levels` DISABLE KEYS */;
INSERT INTO `risk_levels` VALUES (7.0,'High','orangered','High'),(4.0,'Medium','orange','Medium'),(0.0,'Low','yellow','Low'),(10.1,'Very High','red','Very High');
/*!40000 ALTER TABLE `risk_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_models`
--

DROP TABLE IF EXISTS `risk_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_models` (
  `value` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_models`
--

LOCK TABLES `risk_models` WRITE;
/*!40000 ALTER TABLE `risk_models` DISABLE KEYS */;
INSERT INTO `risk_models` VALUES (1,'Likelihood x Impact + 2(Impact)'),(2,'Likelihood x Impact + Impact'),(3,'Likelihood x Impact'),(4,'Likelihood x Impact + Likelihood'),(5,'Likelihood x Impact + 2(Likelihood)'),(6,'Custom');
/*!40000 ALTER TABLE `risk_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_scoring`
--

DROP TABLE IF EXISTS `risk_scoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_scoring` (
  `id` int NOT NULL,
  `scoring_method` int NOT NULL,
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
  `DREAD_DamagePotential` int DEFAULT '10',
  `DREAD_Reproducibility` int DEFAULT '10',
  `DREAD_Exploitability` int DEFAULT '10',
  `DREAD_AffectedUsers` int DEFAULT '10',
  `DREAD_Discoverability` int DEFAULT '10',
  `OWASP_SkillLevel` int DEFAULT '10',
  `OWASP_Motive` int DEFAULT '10',
  `OWASP_Opportunity` int DEFAULT '10',
  `OWASP_Size` int DEFAULT '10',
  `OWASP_EaseOfDiscovery` int DEFAULT '10',
  `OWASP_EaseOfExploit` int DEFAULT '10',
  `OWASP_Awareness` int DEFAULT '10',
  `OWASP_IntrusionDetection` int DEFAULT '10',
  `OWASP_LossOfConfidentiality` int DEFAULT '10',
  `OWASP_LossOfIntegrity` int DEFAULT '10',
  `OWASP_LossOfAvailability` int DEFAULT '10',
  `OWASP_LossOfAccountability` int DEFAULT '10',
  `OWASP_FinancialDamage` int DEFAULT '10',
  `OWASP_ReputationDamage` int DEFAULT '10',
  `OWASP_NonCompliance` int DEFAULT '10',
  `OWASP_PrivacyViolation` int DEFAULT '10',
  `Custom` float DEFAULT '10',
  `Contributing_Likelihood` int DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `calculated_risk` (`calculated_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_scoring`
--

LOCK TABLES `risk_scoring` WRITE;
/*!40000 ALTER TABLE `risk_scoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_scoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_scoring_contributing_impacts`
--

DROP TABLE IF EXISTS `risk_scoring_contributing_impacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_scoring_contributing_impacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_scoring_id` int NOT NULL,
  `contributing_risk_id` int NOT NULL,
  `impact` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `risk_scoring_id` (`risk_scoring_id`),
  KEY `contributing_risk_id` (`contributing_risk_id`),
  KEY `rsci_index` (`risk_scoring_id`,`contributing_risk_id`),
  KEY `rsci_index2` (`contributing_risk_id`,`risk_scoring_id`),
  KEY `rsci_impact_idx` (`impact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_scoring_contributing_impacts`
--

LOCK TABLES `risk_scoring_contributing_impacts` WRITE;
/*!40000 ALTER TABLE `risk_scoring_contributing_impacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_scoring_contributing_impacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_scoring_history`
--

DROP TABLE IF EXISTS `risk_scoring_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_scoring_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `risk_id` int NOT NULL,
  `calculated_risk` float NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `risk_id` (`risk_id`),
  KEY `rsh_last_update_idx` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_scoring_history`
--

LOCK TABLES `risk_scoring_history` WRITE;
/*!40000 ALTER TABLE `risk_scoring_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_scoring_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_to_additional_stakeholder`
--

DROP TABLE IF EXISTS `risk_to_additional_stakeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_to_additional_stakeholder` (
  `risk_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`risk_id`,`user_id`),
  KEY `user_id` (`user_id`,`risk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_to_additional_stakeholder`
--

LOCK TABLES `risk_to_additional_stakeholder` WRITE;
/*!40000 ALTER TABLE `risk_to_additional_stakeholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_to_additional_stakeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_to_location`
--

DROP TABLE IF EXISTS `risk_to_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_to_location` (
  `risk_id` int NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`risk_id`,`location_id`),
  KEY `location_id` (`location_id`,`risk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_to_location`
--

LOCK TABLES `risk_to_location` WRITE;
/*!40000 ALTER TABLE `risk_to_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_to_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_to_team`
--

DROP TABLE IF EXISTS `risk_to_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_to_team` (
  `risk_id` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`risk_id`,`team_id`),
  KEY `team_id` (`team_id`,`risk_id`),
  KEY `risk2team_risk_id` (`risk_id`),
  KEY `risk2team_team_id` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_to_team`
--

LOCK TABLES `risk_to_team` WRITE;
/*!40000 ALTER TABLE `risk_to_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_to_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_to_technology`
--

DROP TABLE IF EXISTS `risk_to_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_to_technology` (
  `risk_id` int NOT NULL,
  `technology_id` int NOT NULL,
  PRIMARY KEY (`risk_id`,`technology_id`),
  KEY `technology_id` (`technology_id`,`risk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_to_technology`
--

LOCK TABLES `risk_to_technology` WRITE;
/*!40000 ALTER TABLE `risk_to_technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_to_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risks`
--

DROP TABLE IF EXISTS `risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `subject` longtext NOT NULL,
  `reference_id` varchar(20) NOT NULL DEFAULT '',
  `regulation` int DEFAULT NULL,
  `control_number` varchar(20) DEFAULT NULL,
  `source` int NOT NULL,
  `category` int NOT NULL,
  `owner` int NOT NULL,
  `manager` int NOT NULL,
  `assessment` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mitigation_id` int DEFAULT '0',
  `mgmt_review` int DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `close_id` int DEFAULT NULL,
  `submitted_by` int NOT NULL DEFAULT '1',
  `risk_catalog_mapping` varchar(255) NOT NULL,
  `threat_catalog_mapping` varchar(255) NOT NULL,
  `template_group_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `close_id` (`close_id`),
  KEY `manager` (`manager`),
  KEY `mgmt_review` (`mgmt_review`),
  KEY `owner` (`owner`),
  KEY `project_id` (`project_id`),
  KEY `source` (`source`),
  KEY `status` (`status`),
  KEY `submitted_by` (`submitted_by`),
  KEY `regulation` (`regulation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risks`
--

LOCK TABLES `risks` WRITE;
/*!40000 ALTER TABLE `risks` DISABLE KEYS */;
/*!40000 ALTER TABLE `risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risks_to_asset_groups`
--

DROP TABLE IF EXISTS `risks_to_asset_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risks_to_asset_groups` (
  `risk_id` int NOT NULL,
  `asset_group_id` int NOT NULL,
  UNIQUE KEY `risk_asset_group_unique` (`risk_id`,`asset_group_id`),
  KEY `asset_group_id` (`asset_group_id`,`risk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risks_to_asset_groups`
--

LOCK TABLES `risks_to_asset_groups` WRITE;
/*!40000 ALTER TABLE `risks_to_asset_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `risks_to_asset_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risks_to_assets`
--

DROP TABLE IF EXISTS `risks_to_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risks_to_assets` (
  `risk_id` int DEFAULT NULL,
  `asset_id` int NOT NULL,
  UNIQUE KEY `risk_id` (`risk_id`,`asset_id`),
  KEY `asset_id` (`asset_id`,`risk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risks_to_assets`
--

LOCK TABLES `risks_to_assets` WRITE;
/*!40000 ALTER TABLE `risks_to_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `risks_to_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`value`),
  UNIQUE KEY `default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator',1,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_responsibilities`
--

DROP TABLE IF EXISTS `role_responsibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_responsibilities` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `permission_id` (`permission_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_responsibilities`
--

LOCK TABLES `role_responsibilities` WRITE;
/*!40000 ALTER TABLE `role_responsibilities` DISABLE KEYS */;
INSERT INTO `role_responsibilities` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41);
/*!40000 ALTER TABLE `role_responsibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoring_methods`
--

DROP TABLE IF EXISTS `scoring_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoring_methods` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoring_methods`
--

LOCK TABLES `scoring_methods` WRITE;
/*!40000 ALTER TABLE `scoring_methods` DISABLE KEYS */;
INSERT INTO `scoring_methods` VALUES (1,'Classic'),(2,'CVSS'),(3,'DREAD'),(4,'OWASP'),(5,'Custom'),(6,'Contributing Risk');
/*!40000 ALTER TABLE `scoring_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(128) NOT NULL,
  `access` int unsigned DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` mediumtext,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('alert_timeout','5'),('allow_ownermanager_to_risk','1'),('allow_owner_to_risk','1'),('allow_stakeholder_to_risk','1'),('allow_submitter_to_risk','1'),('allow_team_member_to_risk','1'),('auto_verify_new_assets','0'),('backup_auto','true'),('backup_remove','1'),('backup_schedule','daily'),('bootstrap_delivery_method','cdn'),('closed_audit_status','5'),('content_security_policy','0'),('cron_last_run','1665683368'),('currency','$'),('db_version','20221013-001'),('debug_logging','0'),('debug_log_file','/tmp/debug_log'),('default_asset_valuation','5'),('default_current_maturity','0'),('default_date_format','MM/DD/YYYY'),('default_desired_maturity','3'),('default_language','en'),('default_risk_score','10'),('default_timezone','America/Chicago'),('highcharts_delivery_method','cdn'),('jquery_delivery_method','cdn'),('maximum_risk_subject_length','300'),('max_upload_size','5120000'),('next_review_date_uses','InherentRisk'),('NOTIFY_ADDITIONAL_STAKEHOLDERS','true'),('pass_policy_alpha_required','1'),('pass_policy_attempt_lockout','0'),('pass_policy_attempt_lockout_time','10'),('pass_policy_digits_required','1'),('pass_policy_enabled','1'),('pass_policy_lower_required','1'),('pass_policy_max_age','0'),('pass_policy_min_age','0'),('pass_policy_min_chars','8'),('pass_policy_reuse_limit','0'),('pass_policy_re_use_tracking','0'),('pass_policy_special_required','1'),('pass_policy_upper_required','1'),('phpmailer_from_email','noreply@simplerisk.com'),('phpmailer_from_name','SimpleRisk'),('phpmailer_host','smtp1.example.com'),('phpmailer_password','secret'),('phpmailer_port','587'),('phpmailer_prepend','[SIMPLERISK]'),('phpmailer_replyto_email','noreply@simplerisk.it'),('phpmailer_replyto_name','SimpleRisk'),('phpmailer_smtpauth','false'),('phpmailer_smtpautotls','true'),('phpmailer_smtpsecure','none'),('phpmailer_transport','sendmail'),('phpmailer_username','user@example.com'),('plan_projects_show_all','0'),('registration_registered','0'),('risk_appetite','0'),('risk_mapping_required','0'),('risk_model','3'),('session_absolute_timeout','28800'),('session_activity_timeout','3600'),('strict_user_validation','0');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,'People'),(2,'Process'),(3,'System'),(4,'External');
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'New'),(2,'Mitigation Planned'),(3,'Mgmt Reviewed'),(4,'Closed'),(5,'Reopened'),(6,'Untreated'),(7,'Treated');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_unique` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_taggees`
--

DROP TABLE IF EXISTS `tags_taggees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_taggees` (
  `tag_id` int NOT NULL,
  `taggee_id` int NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  UNIQUE KEY `tag_taggee_unique` (`tag_id`,`taggee_id`,`type`),
  KEY `taggee_type` (`taggee_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_taggees`
--

LOCK TABLES `tags_taggees` WRITE;
/*!40000 ALTER TABLE `tags_taggees` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_taggees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Branch Management'),(2,'Collaboration'),(3,'Data Center & Storage'),(4,'Database'),(5,'Information Security'),(6,'IT Systems Management'),(7,'Network'),(8,'Unix'),(9,'Web Systems'),(10,'Windows');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'All'),(2,'Anti-Virus'),(3,'Backups'),(4,'Blackberry'),(5,'Citrix'),(6,'Datacenter'),(7,'Mail Routing'),(8,'Live Collaboration'),(9,'Messaging'),(10,'Mobile'),(11,'Network'),(12,'Power'),(13,'Remote Access'),(14,'SAN'),(15,'Telecom'),(16,'Unix'),(17,'VMWare'),(18,'Web'),(19,'Windows');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_results`
--

DROP TABLE IF EXISTS `test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_results` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `background_class` varchar(100) NOT NULL,
  PRIMARY KEY (`value`),
  UNIQUE KEY `name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_results`
--

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;
INSERT INTO `test_results` VALUES (1,'Pass','green-background'),(2,'Inconclusive','white-background'),(3,'Fail','red-background');
/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_status`
--

DROP TABLE IF EXISTS `test_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_status` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_status`
--

LOCK TABLES `test_status` WRITE;
/*!40000 ALTER TABLE `test_status` DISABLE KEYS */;
INSERT INTO `test_status` VALUES (1,'Pending Evidence from Control Owner'),(2,'Evidence Submitted / Pending Review'),(3,'Passed Internal QA'),(4,'Remediation Required'),(5,'Closed');
/*!40000 ALTER TABLE `test_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threat_catalog`
--

DROP TABLE IF EXISTS `threat_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threat_catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `grouping` int NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threat_catalog`
--

LOCK TABLES `threat_catalog` WRITE;
/*!40000 ALTER TABLE `threat_catalog` DISABLE KEYS */;
INSERT INTO `threat_catalog` VALUES (1,'NT-1',1,'Drought & Water Shortage','Regardless of geographic location, periods of reduced rainfall are expected. For non-agricultural industries, drought may not be impactful to operations until it reaches the extent of water rationing.',1),(2,'NT-2',1,'Earthquakes','Earthquakes are sudden rolling or shaking events caused by movement under the earth’s surface. Although earthquakes usually last less than one minute, the scope of devastation can be widespread and have long-lasting impact.',2),(3,'NT-3',1,'Fire & Wildfires','Regardless of geographic location or even building material, fire is a concern for every business. When thinking of a fire in a building, envision a total loss to all technology hardware, including backup tapes, and all paper files being consumed in the fire.',3),(4,'NT-4',1,'Floods','Flooding is the most common of natural hazards and requires an understanding of the local environment, including floodplains and the frequency of flooding events. Location of critical technologies should be considered (e.g., server room is in the basement or first floor of the facility).',4),(5,'NT-5',1,'Hurricanes & Tropical Storms','Hurricanes and tropical storms are among the most powerful natural disasters because of their size and destructive potential. In addition to high winds, regional flooding and infrastructure damage should be considered when assessing hurricanes and tropical storms.',5),(6,'NT-6',1,'Landslides & Debris Flow','Landslides occur throughout the world and can be caused by a variety of factors including earthquakes, storms, volcanic eruptions, fire, and by human modification of land. Landslides can occur quickly, often with little notice. Location of critical technologies should be considered (e.g., server room is in the basement or first floor of the facility).',6),(7,'NT-7',1,'Pandemic (Disease) Outbreaks','Due to the wide variety of possible scenarios, consideration should be given both to the magnitude of what can reasonably happen during a pandemic outbreak (e.g., COVID-19, Influenza, SARS, Ebola, etc.) and what actions the business can be taken to help lessen the impact of a  pandemic on operations.',7),(8,'NT-8',1,'Severe Weather','Severe weather is a broad category of meteorological events that include events that range from damaging winds to hail.',8),(9,'NT-9',1,'Space Weather','Space weather includes natural events in space that can affect the near-earth environment and satellites. Most commonly, this is associated with solar flares from the Sun, so an understanding of how solar flares may impact the business is of critical importance in assessing this threat.',9),(10,'NT-10',1,'Thunderstorms & Lightning','Thunderstorms are most prevalent in the spring and summer months and generally occur during the afternoon and evening hours, but they can occur year-round and at all hours. Many hazardous weather events are associated with thunderstorms. Under the right conditions, rainfall from thunderstorms causes flash flooding and lightning is responsible for equipment damage, fires and fatalities.',10),(11,'NT-11',1,'Tornadoes','Tornadoes occur in many parts of the world, including the US, Australia, Europe, Africa, Asia, and South America. Tornadoes can happen at any time of year and occur at any time of day or night, but most tornadoes occur between 4–9 p.m. Tornadoes (with winds up to about 300 mph) can destroy all but the best-built man-made structures.',11),(12,'NT-12',1,'Tsunamis','All tsunamis are potentially dangerous, even though they may not damage every coastline they strike. A tsunami can strike anywhere along most of the US coastline. The most destructive tsunamis have occurred along the coasts of California, Oregon, Washington, Alaska and Hawaii.',12),(13,'NT-13',1,'Volcanoes','While volcanoes are geographically fixed objects, volcanic fallout can have significant downwind impacts for thousands of miles. Far outside of the blast zone, volcanoes can significantly damage or degrade transportation systems and also cause electrical grids to fail.',13),(14,'NT-14',1,'Winter Storms & Extreme Cold','Winter storms is a broad category of meteorological events that include events that range from ice storms, to heavy snowfall, to unseasonably (e.g., record breaking) cold temperatures. Winter storms can significantly impact business operations and transportation systems over a wide geographic region.',14),(15,'MT-1',2,'Civil or Political Unrest','Civil or political unrest can be singular or wide-spread events that can be unexpected and unpredictable. These events can occur anywhere, at any time.',15),(16,'MT-2',2,'Hacking & Other Cybersecurity Crimes','Unlike physical threats that prompt immediate action (e.g., \"stop, drop, and roll\" in the event of a fire), cyber incidents are often difficult to identify as the incident is occurring. Detection generally occurs after the incident has occurred, with the exception of \"denial of service\" attacks. The spectrum of cybersecurity risks is limitless and threats can have wide-ranging effects on the individual, organizational, geographic, and national levels.',16),(17,'MT-3',2,'Hazardous Materials Emergencies','Hazardous materials emergencies are focused on accidental disasters that occur in industrialized nations. These incidents can range from industrial chemical spills to groundwater contamination.',17),(18,'MT-4',2,'Nuclear, Biological and Chemical (NBC) Weapons','The use of NBC weapons are in the possible arsenals of international terrorists and it must be a consideration. Terrorist use of a “dirty bomb” — is considered far more likely than use of a traditional nuclear explosive device. This may be a combination a conventional explosive device with radioactive / chemical / biological material and be designed to scatter lethal and sub-lethal amounts of material over a wide area.',18),(19,'MT-5',2,'Physical Crime','Physical crime includes \"traditional\" crimes of opportunity. These incidents can range from theft, to vandalism, riots, looting, arson and other forms of criminal activities.',19),(20,'MT-6',2,'Terrorism & Armed Attacks','Armed attacks, regardless of the motivation of the attacker, can impact a businesses. Scenarios can range from single actors (e.g., \"disgruntled\" employee) all the way to a coordinated terrorist attack by multiple assailants. These incidents can range from the use of blade weapons (e.g., knives), blunt objects (e.g., clubs), to firearms and explosives.',20),(21,'MT-7',2,'Utility Service Disruption','Utility service disruptions are focused on the sustained loss of electricity, Internet, natural gas, water, and/or sanitation services. These incidents can have a variety of causes but  directly impact the fulfillment of utility services that your business needs to operate.',21);
/*!40000 ALTER TABLE `threat_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threat_grouping`
--

DROP TABLE IF EXISTS `threat_grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threat_grouping` (
  `value` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `order` int NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threat_grouping`
--

LOCK TABLES `threat_grouping` WRITE;
/*!40000 ALTER TABLE `threat_grouping` DISABLE KEYS */;
INSERT INTO `threat_grouping` VALUES (1,'Natural Threat',0,2),(2,'Man-Made Threat',0,1),(3,'Unassigned Items',1,0);
/*!40000 ALTER TABLE `threat_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `value` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `lockout` tinyint NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'simplerisk',
  `username` blob NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` blob NOT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `password` binary(60) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role_id` int NOT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `multi_factor` int NOT NULL DEFAULT '1',
  `change_password` tinyint NOT NULL DEFAULT '0',
  `custom_display_settings` varchar(1000) NOT NULL DEFAULT '',
  `manager` int DEFAULT NULL,
  `custom_plan_mitigation_display_settings` varchar(2000) DEFAULT '{"risk_colums":[["id","1"],["risk_status","1"],["subject","1"],["calculated_risk","1"],["submission_date","1"]],"mitigation_colums":[["mitigation_planned","1"]],"review_colums":[["management_review","1"]]}\n',
  `custom_perform_reviews_display_settings` varchar(2000) DEFAULT '{"risk_colums":[["id","1"],["risk_status","1"],["subject","1"],["calculated_risk","1"],["submission_date","1"]],"mitigation_colums":[["mitigation_planned","1"]],"review_colums":[["management_review","1"]]}\n',
  `custom_reviewregularly_display_settings` varchar(2000) DEFAULT '{"risk_colums":[["id","1"],["risk_status","1"],["subject","1"],["calculated_risk","1"],["days_open","1"]],"review_colums":[["management_review","0"],["review_date","0"],["next_step","0"],["next_review_date","1"],["comments","0"]]}',
  `custom_risks_and_issues_settings` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pass_history`
--

DROP TABLE IF EXISTS `user_pass_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pass_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `salt` varchar(20) NOT NULL,
  `password` binary(60) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pass_history`
--

LOCK TABLES `user_pass_history` WRITE;
/*!40000 ALTER TABLE `user_pass_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_pass_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pass_reuse_history`
--

DROP TABLE IF EXISTS `user_pass_reuse_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pass_reuse_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `password` binary(60) NOT NULL,
  `counts` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pass_reuse_history`
--

LOCK TABLES `user_pass_reuse_history` WRITE;
/*!40000 ALTER TABLE `user_pass_reuse_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_pass_reuse_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_to_team`
--

DROP TABLE IF EXISTS `user_to_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_to_team` (
  `user_id` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`team_id`),
  KEY `team_id` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_to_team`
--

LOCK TABLES `user_to_team` WRITE;
/*!40000 ALTER TABLE `user_to_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_to_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validation_files`
--

DROP TABLE IF EXISTS `validation_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validation_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mitigation_id` int NOT NULL,
  `control_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int NOT NULL,
  `content` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validation_files`
--

LOCK TABLES `validation_files` WRITE;
/*!40000 ALTER TABLE `validation_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `validation_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

