SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simplerisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE IF NOT EXISTS `audit_log` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `risk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`value`, `name`) VALUES
(1, 'Access Management'),
(2, 'Environmental Resilience'),
(3, 'Monitoring'),
(4, 'Physical Security'),
(5, 'Policy and Procedure'),
(6, 'Sensitive Data Management'),
(7, 'Technical Vulnerability Management'),
(8, 'Third-Party Management');

-- --------------------------------------------------------

--
-- Table structure for table `close_reason`
--

CREATE TABLE IF NOT EXISTS `close_reason` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `close_reason`
--

INSERT INTO `close_reason` (`value`, `name`) VALUES
(1, 'Fully Mitigated'),
(2, 'System Retired'),
(3, 'Cancelled'),
(4, 'Too Insignificant');

-- --------------------------------------------------------

--
-- Table structure for table `closures`
--

CREATE TABLE IF NOT EXISTS `closures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `closure_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `close_reason` int(11) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_AccessComplexity`
--

CREATE TABLE IF NOT EXISTS `CVSS_AccessComplexity` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_AccessComplexity`
--

INSERT INTO `CVSS_AccessComplexity` (`name`, `value`) VALUES
('Undefined', -1),
('High', 0.35),
('Medium', 0.61),
('Low', 0.71);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_AccessVector`
--

CREATE TABLE IF NOT EXISTS `CVSS_AccessVector` (
  `name` varchar(50) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_AccessVector`
--

INSERT INTO `CVSS_AccessVector` (`name`, `value`) VALUES
('Undefined', -1),
('Local', 0.395),
('Adjacent Network', 0.646),
('Network', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_Authentication`
--

CREATE TABLE IF NOT EXISTS `CVSS_Authentication` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_Authentication`
--

INSERT INTO `CVSS_Authentication` (`name`, `value`) VALUES
('Undefined', -1),
('None', 0.704),
('Single Instance', 0.56),
('Multiple Instances', 0.45);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_AvailabilityRequirement`
--

CREATE TABLE IF NOT EXISTS `CVSS_AvailabilityRequirement` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_AvailabilityRequirement`
--

INSERT INTO `CVSS_AvailabilityRequirement` (`name`, `value`) VALUES
('Undefined', -1),
('Low', 0.5),
('Medium', 1),
('High', 1.51);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_AvailImpact`
--

CREATE TABLE IF NOT EXISTS `CVSS_AvailImpact` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_AvailImpact`
--

INSERT INTO `CVSS_AvailImpact` (`name`, `value`) VALUES
('Undefined', -1),
('None', 0),
('Partial', 0.275),
('Complete', 0.66);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_CollateralDamagePotential`
--

CREATE TABLE IF NOT EXISTS `CVSS_CollateralDamagePotential` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_CollateralDamagePotential`
--

INSERT INTO `CVSS_CollateralDamagePotential` (`name`, `value`) VALUES
('Undefined', -1),
('None', 0),
('Low (light loss)', 0.1),
('Low-Mdium', 0.3),
('Medium-High', 0.4),
('High', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_ConfidentialityRequirement`
--

CREATE TABLE IF NOT EXISTS `CVSS_ConfidentialityRequirement` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_ConfidentialityRequirement`
--

INSERT INTO `CVSS_ConfidentialityRequirement` (`name`, `value`) VALUES
('Undefined', -1),
('Low', 0.5),
('Medium', 1),
('High', 1.51);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_ConfImpact`
--

CREATE TABLE IF NOT EXISTS `CVSS_ConfImpact` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_ConfImpact`
--

INSERT INTO `CVSS_ConfImpact` (`name`, `value`) VALUES
('Undefined', -1),
('None', 0),
('Partial', 0.275),
('Complete', 0.66);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_Exploitability`
--

CREATE TABLE IF NOT EXISTS `CVSS_Exploitability` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_Exploitability`
--

INSERT INTO `CVSS_Exploitability` (`name`, `value`) VALUES
('Undefined', -1),
('Unproven that exploit exists', 0.85),
('Proof of concept code', 0.9),
('Functional exploit exists', 0.95),
('Widespread', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_IntegImpact`
--

CREATE TABLE IF NOT EXISTS `CVSS_IntegImpact` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_IntegImpact`
--

INSERT INTO `CVSS_IntegImpact` (`name`, `value`) VALUES
('Undefined', -1),
('None', 0),
('Partial', 0.275),
('Complete', 0.66);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_IntegrityRequirement`
--

CREATE TABLE IF NOT EXISTS `CVSS_IntegrityRequirement` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_IntegrityRequirement`
--

INSERT INTO `CVSS_IntegrityRequirement` (`name`, `value`) VALUES
('Undefined', -1),
('Low', 0.5),
('Medium', 1),
('High', 1.51);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_RemediationLevel`
--

CREATE TABLE IF NOT EXISTS `CVSS_RemediationLevel` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_RemediationLevel`
--

INSERT INTO `CVSS_RemediationLevel` (`name`, `value`) VALUES
('Undefined', -1),
('Official fix', 0.87),
('Temporary fix', 0.9),
('Workaround', 0.95),
('Unavailable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_ReportConfidence`
--

CREATE TABLE IF NOT EXISTS `CVSS_ReportConfidence` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_ReportConfidence`
--

INSERT INTO `CVSS_ReportConfidence` (`name`, `value`) VALUES
('Undefined', -1),
('Not confirmed', 0.9),
('Uncorroborated', 0.95),
('Confirmed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CVSS_TargetDistribution`
--

CREATE TABLE IF NOT EXISTS `CVSS_TargetDistribution` (
  `name` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CVSS_TargetDistribution`
--

INSERT INTO `CVSS_TargetDistribution` (`name`, `value`) VALUES
('Undefined', -1),
('None (0%)', 0),
('Low (0-25%)', 0.25),
('Medium (26-75%)', 0.75),
('High (76-100%)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `impact`
--

CREATE TABLE IF NOT EXISTS `impact` (
  `name` varchar(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `impact`
--

INSERT INTO `impact` (`name`, `value`) VALUES
('Insignificant', 1),
('Minor', 2),
('Moderate', 3),
('Major', 4),
('Extreme/Catastrophic', 5);

-- --------------------------------------------------------

--
-- Table structure for table `likelihood`
--

CREATE TABLE IF NOT EXISTS `likelihood` (
  `name` varchar(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likelihood`
--

INSERT INTO `likelihood` (`name`, `value`) VALUES
('Remote', 1),
('Unlikely', 2),
('Credible', 3),
('Likely', 4),
('Almost Certain', 5);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`value`, `name`) VALUES
(1, 'Austin, TX');

-- --------------------------------------------------------

--
-- Table structure for table `mgmt_reviews`
--

CREATE TABLE IF NOT EXISTS `mgmt_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review` int(11) NOT NULL,
  `reviewer` int(11) NOT NULL,
  `next_step` int(11) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mitigations`
--

CREATE TABLE IF NOT EXISTS `mitigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `planning_strategy` int(11) NOT NULL,
  `mitigation_effort` int(11) NOT NULL,
  `current_solution` text NOT NULL,
  `security_requirements` text NOT NULL,
  `security_recommendations` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mitigation_effort`
--

CREATE TABLE IF NOT EXISTS `mitigation_effort` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mitigation_effort`
--

INSERT INTO `mitigation_effort` (`value`, `name`) VALUES
(1, 'Trivial'),
(2, 'Minor'),
(3, 'Considerable'),
(4, 'Significant'),
(5, 'Exceptional');

-- --------------------------------------------------------

--
-- Table structure for table `next_step`
--

CREATE TABLE IF NOT EXISTS `next_step` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `next_step`
--

INSERT INTO `next_step` (`value`, `name`) VALUES
(1, 'Accept Until Next Review'),
(2, 'Consider for Project'),
(3, 'Submit as a Production Issue');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE IF NOT EXISTS `password_reset` (
  `username` varchar(20) NOT NULL,
  `token` varchar(20) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `planning_strategy`
--

CREATE TABLE IF NOT EXISTS `planning_strategy` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `planning_strategy`
--

INSERT INTO `planning_strategy` (`value`, `name`) VALUES
(1, 'Research'),
(2, 'Accept'),
(3, 'Mitigate'),
(4, 'Watch');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '999999',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`value`, `name`, `order`) VALUES
(0, 'Unassigned Risks', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`value`, `name`) VALUES
(1, 'Approve Risk'),
(2, 'Reject Risk');

-- --------------------------------------------------------

--
-- Table structure for table `review_levels`
--

CREATE TABLE IF NOT EXISTS `review_levels` (
  `value` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_levels`
--

INSERT INTO `review_levels` (`value`, `name`) VALUES
(90, 'High'),
(180, 'Medium'),
(360, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `risks`
--

CREATE TABLE IF NOT EXISTS `risks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `reference_id` varchar(20) NOT NULL DEFAULT '',
  `location` int(11) NOT NULL,
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
  `mitigation_id` int(11) NOT NULL,
  `mgmt_review` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `close_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `risk_levels`
--

CREATE TABLE IF NOT EXISTS `risk_levels` (
  `value` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_levels`
--

INSERT INTO `risk_levels` (`value`, `name`) VALUES
(7, 'High'),
(4, 'Medium'),
(0, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `risk_models`
--

CREATE TABLE IF NOT EXISTS `risk_models` (
  `value` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_models`
--

INSERT INTO `risk_models` (`value`, `name`) VALUES
(1, 'Likelihood x Impact + 2(Impact)'),
(2, 'Likelihood x Impact + Impact'),
(3, 'Likelihood x Impact'),
(4, 'Likelihood x Impact + Likelihood'),
(5, 'Likelihood x Impact + 2(Likelihood)');

-- --------------------------------------------------------

--
-- Table structure for table `risk_scoring`
--

CREATE TABLE IF NOT EXISTS `risk_scoring` (
  `id` int(11) NOT NULL,
  `scoring_method` int(11) NOT NULL,
  `calculated_risk` float NOT NULL,
  `CLASSIC_likelihood` float NOT NULL,
  `CLASSIC_impact` float NOT NULL,
  `CVSS_AccessVector` float NOT NULL,
  `CVSS_AccessComplexity` float NOT NULL,
  `CVSS_Authentication` float NOT NULL,
  `CVSS_ConfImpact` float NOT NULL,
  `CVSS_IntegImpact` float NOT NULL,
  `CVSS_AvailImpact` float NOT NULL,
  `CVSS_Exploitability` float NOT NULL,
  `CVSS_RemediationLevel` float NOT NULL,
  `CVSS_ReportConfidence` float NOT NULL,
  `CVSS_CollateralDamagePotential` float NOT NULL,
  `CVSS_TargetDistribution` float NOT NULL,
  `CVSS_ConfidentialityRequirement` float NOT NULL,
  `CVSS_IntegrityRequirement` float NOT NULL,
  `CVSS_AvailabilityRequirement` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(32) NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `name` varchar(20) NOT NULL,
  `value` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('risk_model', '3'),
('db_version', '20130827-001');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`value`, `name`) VALUES
(1, 'Branch Management'),
(2, 'Collaboration'),
(3, 'Data Center & Storage'),
(4, 'Database'),
(5, 'Information Security'),
(6, 'IT Systems Management'),
(7, 'Network'),
(8, 'Unix'),
(9, 'Web Systems'),
(10, 'Windows');

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE IF NOT EXISTS `technology` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `technology`
--

INSERT INTO `technology` (`value`, `name`) VALUES
(1, 'All'),
(2, 'Anti-Virus'),
(3, 'Backups'),
(4, 'Blackberry'),
(5, 'Citrix'),
(6, 'Datacenter'),
(7, 'Mail Routing'),
(8, 'Live Collaboration'),
(9, 'Messaging'),
(10, 'Mobile'),
(11, 'Network'),
(12, 'Power'),
(13, 'Remote Access'),
(14, 'SAN'),
(15, 'Telecom'),
(16, 'Unix'),
(17, 'VMWare'),
(18, 'Web'),
(19, 'Windows');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL DEFAULT 'simplerisk',
  `username` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` binary(60) NOT NULL,
  `last_login` datetime NOT NULL,
  `teams` varchar(200) NOT NULL DEFAULT 'none',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `review_high` tinyint(1) NOT NULL DEFAULT '0',
  `review_medium` tinyint(1) NOT NULL DEFAULT '0',
  `review_low` tinyint(1) NOT NULL DEFAULT '0',
  `submit_risks` tinyint(1) NOT NULL DEFAULT '0',
  `modify_risks` tinyint(1) NOT NULL DEFAULT '0',
  `plan_mitigations` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`value`, `enabled`, `type`, `username`, `name`, `email`, `password`, `last_login`, `teams`, `admin`, `review_high`, `review_medium`, `review_low`, `submit_risks`, `modify_risks`, `plan_mitigations`) VALUES
(1, 1, 'simplerisk', 'admin', 'Admin', 'admin@yourcompany.com', '$2a$15$21232f297a57a5a743894Oi8eYwNRFyfL7SWQ8schB43FnU2qULWq', '2013-08-27 16:56:57', 'all', 1, 1, 1, 1, 1, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
