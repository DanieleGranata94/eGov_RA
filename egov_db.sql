-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 26, 2020 alle 10:41
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egov_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Asset_type', 7, 'add_asset_type'),
(26, 'Can change Asset_type', 7, 'change_asset_type'),
(27, 'Can delete Asset_type', 7, 'delete_asset_type'),
(28, 'Can view Asset_type', 7, 'view_asset_type'),
(29, 'Can add System', 8, 'add_system'),
(30, 'Can change System', 8, 'change_system'),
(31, 'Can delete System', 8, 'delete_system'),
(32, 'Can view System', 8, 'view_system'),
(33, 'Can add Asset', 9, 'add_asset'),
(34, 'Can change Asset', 9, 'change_asset'),
(35, 'Can delete Asset', 9, 'delete_asset'),
(36, 'Can view Asset', 9, 'view_asset'),
(37, 'Can add Process', 10, 'add_process'),
(38, 'Can change Process', 10, 'change_process'),
(39, 'Can delete Process', 10, 'delete_process'),
(40, 'Can view Process', 10, 'view_process'),
(41, 'Can add Attribute_value', 11, 'add_attribute_value'),
(42, 'Can change Attribute_value', 11, 'change_attribute_value'),
(43, 'Can delete Attribute_value', 11, 'delete_attribute_value'),
(44, 'Can view Attribute_value', 11, 'view_attribute_value'),
(45, 'Can add Threat', 12, 'add_threat'),
(46, 'Can change Threat', 12, 'change_threat'),
(47, 'Can delete Threat', 12, 'delete_threat'),
(48, 'Can view Threat', 12, 'view_threat'),
(49, 'Can add Attribute', 13, 'add_attribute'),
(50, 'Can change Attribute', 13, 'change_attribute'),
(51, 'Can delete Attribute', 13, 'delete_attribute'),
(52, 'Can view Attribute', 13, 'view_attribute'),
(53, 'Can add threat_has_attribute', 14, 'add_threat_has_attribute'),
(54, 'Can change threat_has_attribute', 14, 'change_threat_has_attribute'),
(55, 'Can delete threat_has_attribute', 14, 'delete_threat_has_attribute'),
(56, 'Can view threat_has_attribute', 14, 'view_threat_has_attribute'),
(57, 'Can add asset_has_attribute', 15, 'add_asset_has_attribute'),
(58, 'Can change asset_has_attribute', 15, 'change_asset_has_attribute'),
(59, 'Can delete asset_has_attribute', 15, 'delete_asset_has_attribute'),
(60, 'Can view asset_has_attribute', 15, 'view_asset_has_attribute');

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'parsingBPMN', 'asset'),
(15, 'parsingBPMN', 'asset_has_attribute'),
(7, 'parsingBPMN', 'asset_type'),
(13, 'parsingBPMN', 'attribute'),
(11, 'parsingBPMN', 'attribute_value'),
(10, 'parsingBPMN', 'process'),
(8, 'parsingBPMN', 'system'),
(12, 'parsingBPMN', 'threat'),
(14, 'parsingBPMN', 'threat_has_attribute'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-21 10:28:20.518521'),
(2, 'auth', '0001_initial', '2020-10-21 10:28:20.732947'),
(3, 'admin', '0001_initial', '2020-10-21 10:28:21.280041'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-21 10:28:21.440106'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-21 10:28:21.448071'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-21 10:28:21.531279'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-21 10:28:21.644952'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-21 10:28:21.709779'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-21 10:28:21.717758'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-21 10:28:21.810510'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-21 10:28:21.813540'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-21 10:28:21.820520'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-21 10:28:21.836481'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-21 10:28:21.878328'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-21 10:28:21.895323'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-21 10:28:21.902264'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-21 10:28:21.920216'),
(18, 'sessions', '0001_initial', '2020-10-21 10:28:21.949138'),
(19, 'parsingBPMN', '0001_initial', '2020-10-21 10:28:37.932384'),
(20, 'parsingBPMN', '0002_attribute_value_threat', '2020-10-21 13:56:02.880433'),
(21, 'parsingBPMN', '0003_auto_20201021_1639', '2020-10-21 14:40:22.237484'),
(22, 'parsingBPMN', '0004_auto_20201021_1730', '2020-10-21 15:30:38.466402'),
(23, 'parsingBPMN', '0005_auto_20201021_1806', '2020-10-21 16:06:28.968480'),
(24, 'parsingBPMN', '0006_auto_20201021_1922', '2020-10-21 17:22:53.146964'),
(25, 'parsingBPMN', '0007_asset_asset_type', '2020-10-22 14:25:58.692734');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset`
--

CREATE TABLE `parsingbpmn_asset` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `process_id` int(11) NOT NULL,
  `asset_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_has_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_type`
--

CREATE TABLE `parsingbpmn_asset_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset_type`
--

INSERT INTO `parsingbpmn_asset_type` (`id`, `name`, `description`) VALUES
(1, 'Send task', 'A Send Task is represents a task that sends a Message to another lane or pool. The Task is completed once the Message has been sent.'),
(2, 'Receive task', 'A Receive Task indicates that the process has to wait for a message to arrive in order to continue. The Task is completed once the message has received.'),
(3, 'User task', 'A User Task represents that a human performer performs the Task with the use of a software application.'),
(4, 'Manual task', 'A Manual Task is a Task that is performed physically.'),
(5, 'Service task', 'A Service Task is a Task that uses a Web service, an automated application, or other kinds of service in completing the task.'),
(6, 'Script task', 'A Script Task is executed by a business process engine. The task defines a script that the engine can interpret. When the task begin, the engine will execute the script. The Task will be completed when the script is completed.'),
(7, 'Business rule task', 'It provides a mechanism for a process to provide input to a Business Rules Engine and then obtain the output provided by the Business Rules Engine. As for service and script task, it is a task without human interaction.');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute`
--

CREATE TABLE `parsingbpmn_attribute` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_attribute`
--

INSERT INTO `parsingbpmn_attribute` (`id`, `attribute_name`, `asset_type_id`, `attribute_value_id`) VALUES
(1, 'Communication typology\r\n', 1, 1),
(2, 'Communication typology\r\n', 1, 2),
(3, 'Communication typology\r\n', 1, 3),
(4, 'Communication typology\r\n', 2, 1),
(5, 'Communication typology\r\n', 2, 2),
(6, 'Communication typology\r\n', 2, 3),
(7, 'Application typology\r\n', 3, 4),
(8, 'Application typology\r\n', 3, 5),
(9, 'Task type\r\n', 4, 6),
(10, 'Service typology\r\n', 5, 7),
(11, 'Service typology\r\n', 5, 8),
(12, 'Task type\r\n', 6, 9),
(13, 'Task type\r\n', 7, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute_value`
--

CREATE TABLE `parsingbpmn_attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_attribute_value`
--

INSERT INTO `parsingbpmn_attribute_value` (`id`, `value`) VALUES
(1, 'pec_communication'),
(2, 'mail_communication'),
(3, 'post_office_communication'),
(4, 'online'),
(5, 'offline'),
(6, 'manual_task'),
(7, 'statefull'),
(8, 'stateless'),
(9, 'script_task'),
(10, 'business_rule_task');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_process`
--

CREATE TABLE `parsingbpmn_process` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `xml` varchar(100) NOT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_system`
--

CREATE TABLE `parsingbpmn_system` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat`
--

CREATE TABLE `parsingbpmn_threat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat`
--

INSERT INTO `parsingbpmn_threat` (`id`, `name`, `description`) VALUES
(1, 'Fraud', 'Fraud made by human'),
(2, 'Sabotage', 'Intentional actions (non-fulfillment or defective fulfillment of personal duties) aimed to cause disruption or damage of IT Assets'),
(3, 'Vandalism', 'Act of physically damage of IT Assets'),
(4, 'Theft (devices, storage media and documents)\r\n', 'Stealing of information or IT Assets. [Theft of mobile devices (smartphones/ tablets) - Theft of fi9ed hardware - Theft of documents - Theft of backups]'),
(5, 'Information leakage/sharing\r\n', 'Sharing information with unauthorised entities. Loss of information confidentiality due to intentional human actions.'),
(6, 'Unauthorized physical access / Unauthorised entry to premises\r\n', 'Unapproved access to facility.\r\n'),
(7, 'Coercion, extortion or corruption\r\n', 'Actions caused by coercion, extortion or corruption\r\n'),
(8, 'Damage from the warfare\r\n', 'Threats of direct impact of warfare activities\r\n'),
(9, 'Terrorists attack\r\n', 'Threats of bombing or other actions that counts as \"terrorists attacks\"\r\n'),
(10, 'Information leakage/sharing due to human error\r\n', 'Unintentional distribution of private or sensitive data to an unauthorized entity by staff member.\r\n'),
(11, 'Erroneous use or administration of devices and systems\r\n', 'Information leakage / sharing / damage caused by users IT Assets misuse (lack of awareness of application features) or wrong / improperly IT Assets configuration or management\r\n'),
(12, 'Using information from an unreliable source\r\n', 'Bad decision based on unreliable sources of information or unchecked information.\r\n'),
(13, 'Unintentional change of data in an information system\r\n', 'Loss of information integrity due to human error (information system user mistake)\r\n'),
(14, 'Inadequate design and planning or improperly adaptation\r\n', 'Threats caused by improperly IT Assets or business processes design (inadequate specifications of IT products, inadequate usability, insecure interfaces, policy/procedure flows, design errors)\r\n'),
(15, 'Damage caused by a third party \r\n', 'Threats of damage of IT Assets caused by third party \r\n'),
(16, 'Damages resulting from penetration testing\r\n', 'Threats to information systems caused by improperly / inprepare conducting of IT penetration testing\r\n'),
(17, 'Loss of information in the cloud\r\n', 'Threats of loosing information or data stored in the cloud\r\n'),
(18, 'Loss of (integrity of) sensitive information\r\n', 'Threats of loosing information or data (or changing) information classified as sensitive\r\n'),
(19, 'Loss of devices, storage media and documents\r\n', 'Threats of the lack of availability (loosing) of IT Assets and documents\r\n'),
(20, 'Destruction of records\r\n', 'Threats of the lack of availability (destruction) of data and records (information) stored in devices and storage media\r\n'),
(21, 'Disaster (natural earthquakes,floods,landslides, tsunamis,heavy rains,heavy snowfalls,heavy winds)', 'Large scale and large effects natural disasters'),
(22, 'Fire', 'Threat of fire '),
(23, 'Pollution, dust, corrosion\r\n', 'Threat of disruption of work of IT systems (hardware) dur to pollution, dust or corrosion (arising from the air)\r\n'),
(24, 'Thunder stroke\r\n', 'Threat of damage of IT hardware caused by the thunder strike (the electrical overvoltage)\r\n'),
(25, 'Water\r\n', 'Threat of damage of IT hardware caused by the water\r\n'),
(26, 'Explosion\r\n', 'empty\r\n'),
(27, 'Dangerous radiation leak\r\n', 'empty\r\n'),
(28, 'Unfavorable climatic conditions\r\n', 'Threat of disruption of work of IT systems due to climatic conditions that have the negative effect on hardware\r\n'),
(29, 'Major events in the environment\r\n', 'empty\r\n'),
(30, 'Threats from space / Electromagnetic storm\r\n', 'Threats of the negative impact of solar radiation (harmful rays) to a satellites and radio wave communication systems - Electromagnetic storm\r\n'),
(31, 'Wildlife\r\n', 'empty\r\n'),
(32, 'Failure of devices or systems\r\n', 'Threat of failure of IT hardware and/or software assets or its parts\r\n'),
(33, 'Failure or disruption of communication links (communication networks)\r\n', 'Threat of failure or malfunction of communications links \r\n'),
(34, 'Failure or disruption of main supply\r\n', 'Threat of failure or disruption of supply required for information systems\r\n'),
(35, 'Failure or disruption of service providers (supply chain)\r\n', 'Threat of failure or disruption of thire party services required for proper operation of information systems\r\n'),
(36, 'Malfunction of equipment (devices or systems)\r\n', 'Threat of malfunction of IT hardware and/or software assets or its parts\r\n'),
(37, 'Loss of resources\r\n', 'Unavailability of resources (supply) required for proper operation of information system\r\n'),
(38, 'Absence of personnel\r\n', 'Unavailability of key personnel and their competences\r\n'),
(39, 'Strike\r\n', 'Unavailability of staff due strike (large scale absence of personnel)\r\n'),
(40, 'Loss of support services\r\n', 'Unavailability of support services required for proper operation of information system\r\n'),
(41, 'Internet outage\r\n', 'Unavailability of the Internet connection\r\n'),
(42, 'Network outage\r\n', 'Unavailability of communication links\r\n'),
(43, 'War driving\r\n', 'Threat of locating and possible exploite connection to the wireless network\r\n'),
(44, 'Intercepting compromising emissions\r\n', 'Threat of disclosure transmitted information using interception and analysis of compromising emission\r\n'),
(45, 'Interception of information\r\n', 'Threat of interception of information improperly secured in transmission or improperly actions of staff\r\n'),
(46, 'Interfering radiation\r\n', 'Threat of failure of IT hardware or transmission connection due to electromagnetic induction or electromagnetic radiation emitted from an another source\r\n'),
(47, 'Replay of messages\r\n', 'Threat in which valid data transmission is maliciously or fraudulently repeated or delayed\r\n'),
(48, 'Network Reconnaissance, Network traffic manipulation and Information gathering\r\n', 'Threat of identifying information about network to find security weaknesses\r\n'),
(49, 'Man in the middle/ Session hijacking \r\n', 'Threats that relay on alters of communication between two parties\r\n'),
(50, 'Identity theft (Identity Fraud/ Account) \r\n', 'Threat of identity theft action\r\n'),
(51, 'Receive of unsolicited E-mail \r\n', 'Threat of receive of unsolicited E-mail that affect for information security and efficienty of work (SPAM)\r\n'),
(52, 'Denial of service\r\n', 'Threat of Deny of service type attacks at information systems/services\r\n'),
(53, 'Malicious code/ software/ activity\r\n', 'Threat of malicious code or software execution\r\n'),
(54, 'Social Engineering\r\n', 'Phishing attacks, Spear phishing attacks\r\n'),
(55, 'Abuse of Information Leakage\r\n', '? What is difference between others Physical attack (deliberate/ intentional)?\r\n'),
(56, 'Generation and use of rogue certificates\r\n', 'Threat of use of rogue certificates\r\n'),
(57, 'Manipulation of hardware and software\r\n', 'Threat of unauthorized manipulation of hardware and software\r\n'),
(58, 'Manipulation of information\r\n', 'Threat of intentional data manipulation to mislead information systems or somebody or to cover other nefarious activities (loss of integrity of information) \r\n'),
(59, 'Misuse of audit tools\r\n', 'Threat of nefarious actions with use of audit tools (discovery security weaknesses in information systems)\r\n'),
(60, 'Misuse of information/ information systems (including mobile apps)\r\n', 'Threat of nefarious action due to misuse of information / information systems\r\n'),
(61, 'Unauthorized activities\r\n', 'empty\r\n'),
(62, 'Unauthorized installation of software\r\n', 'Threat of unauthorized installation of software\r\n'),
(63, 'Compromising confidential information (data breaches)\r\n', 'Threat of data breach \r\n'),
(64, 'Hoax\r\n', 'Threat of disruption of work due to False rumor and/or a fake warning\r\n'),
(65, 'Remote activity (execution)\r\n', 'Threat of remote activity over controled IT Assets\r\n'),
(66, 'Targeted attacks (APTs etc.)\r\n', 'Threat of sophisticated targetes attack with combination of many attack techniques\r\n'),
(67, 'Failed of bussines process\r\n', 'empty\r\n'),
(68, 'Brute force\r\n', 'empty\r\n'),
(69, 'Abuse of authorizations\r\n', 'empty\r\n'),
(70, 'Violation of laws or regulations / Breach of legislation\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to violation of law or regulations\r\n'),
(71, 'Failure to meet contractual requirements\r\n', 'Threat of finacial penatly or lost of trust of customers and collaborators due to failure to meet contractual requirements\r\n'),
(72, 'Unauthorized use of IPR protected resources\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to improper/illegal use of copyrights material\r\n'),
(73, 'Abuse of personal data\r\n', 'Threat of illegal use personal data\r\n'),
(74, 'Judiciary decisions/court orders\r\n', 'empty\r\n');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_attribute`
--

CREATE TABLE `parsingbpmn_threat_has_attribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat_has_attribute`
--

INSERT INTO `parsingbpmn_threat_has_attribute` (`id`, `attribute_id`, `threat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 3, 3),
(8, 1, 7),
(9, 2, 7),
(10, 3, 7),
(11, 1, 10),
(12, 2, 10),
(13, 3, 10),
(14, 2, 11),
(15, 1, 17),
(16, 2, 17),
(17, 1, 32),
(18, 2, 32),
(19, 1, 33),
(20, 2, 33),
(21, 1, 34),
(22, 2, 34),
(23, 3, 34),
(24, 1, 35),
(25, 2, 35),
(26, 1, 37),
(27, 2, 37),
(28, 3, 37),
(29, 1, 41),
(30, 2, 41),
(31, 1, 45),
(32, 2, 45),
(33, 3, 45),
(34, 2, 49),
(35, 1, 50),
(36, 2, 50),
(37, 3, 58),
(38, 4, 1),
(39, 5, 1),
(40, 6, 1),
(41, 4, 2),
(42, 5, 2),
(43, 6, 2),
(44, 6, 3),
(45, 4, 7),
(46, 5, 7),
(47, 6, 7),
(48, 4, 10),
(49, 5, 10),
(50, 6, 10),
(51, 4, 17),
(52, 5, 17),
(53, 4, 33),
(54, 5, 33),
(55, 4, 34),
(56, 5, 34),
(57, 6, 34),
(58, 4, 35),
(59, 5, 35),
(60, 4, 37),
(61, 5, 37),
(62, 6, 37),
(63, 4, 41),
(64, 5, 41),
(65, 4, 45),
(66, 5, 45),
(67, 6, 45),
(68, 5, 47),
(69, 5, 49),
(70, 4, 50),
(71, 5, 50),
(72, 5, 51),
(73, 5, 52),
(74, 5, 53),
(75, 5, 54),
(76, 6, 58),
(77, 12, 1),
(78, 12, 2),
(79, 12, 3),
(80, 10, 15),
(81, 11, 15),
(82, 10, 16),
(83, 11, 16),
(84, 10, 17),
(85, 10, 32),
(86, 11, 32),
(87, 10, 35),
(88, 11, 35),
(89, 10, 37),
(90, 11, 37),
(91, 10, 41),
(92, 11, 41),
(93, 10, 52),
(94, 11, 52),
(95, 9, 1),
(96, 9, 2),
(97, 9, 3),
(98, 9, 4),
(99, 9, 5),
(100, 9, 7),
(101, 7, 1),
(102, 8, 1),
(103, 7, 2),
(104, 8, 2),
(105, 7, 7),
(106, 8, 7),
(107, 7, 11),
(108, 8, 11),
(109, 7, 17),
(110, 7, 18),
(111, 8, 18),
(112, 7, 20),
(113, 8, 20),
(114, 7, 32),
(115, 8, 32),
(116, 7, 37),
(117, 8, 37),
(118, 7, 38),
(119, 8, 38),
(120, 7, 41),
(121, 8, 42),
(122, 7, 53),
(123, 8, 53);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indici per le tabelle `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indici per le tabelle `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indici per le tabelle `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indici per le tabelle `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indici per le tabelle `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indici per le tabelle `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indici per le tabelle `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_asset_process_id_51846443_fk_parsingBPMN_process_id` (`process_id`),
  ADD KEY `parsingBPMN_asset_asset_type_id_9aaa4ff6_fk_parsingBP` (`asset_type_id`);

--
-- Indici per le tabelle `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_asset_ha_asset_id_455a16db_fk_parsingBP` (`asset_id`),
  ADD KEY `parsingBPMN_asset_ha_attribute_id_f4204e3a_fk_parsingBP` (`attribute_id`);

--
-- Indici per le tabelle `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_attribut_asset_type_id_d2d4982c_fk_parsingBP` (`asset_type_id`),
  ADD KEY `parsingBPMN_attribut_attribute_value_id_2374791a_fk_parsingBP` (`attribute_value_id`);

--
-- Indici per le tabelle `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_process_system_id_52b775a3_fk_parsingBPMN_system_id` (`system_id`);

--
-- Indici per le tabelle `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_threat_h_attribute_id_8e431819_fk_parsingBP` (`attribute_id`),
  ADD KEY `parsingBPMN_threat_h_threat_id_fbeae7da_fk_parsingBP` (`threat_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT per la tabella `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limiti per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limiti per la tabella `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD CONSTRAINT `parsingBPMN_asset_asset_type_id_9aaa4ff6_fk_parsingBP` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingBPMN_asset_process_id_51846443_fk_parsingBPMN_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Limiti per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD CONSTRAINT `parsingBPMN_asset_ha_asset_id_455a16db_fk_parsingBP` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingBPMN_asset_ha_attribute_id_f4204e3a_fk_parsingBP` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`);

--
-- Limiti per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD CONSTRAINT `parsingBPMN_attribut_asset_type_id_d2d4982c_fk_parsingBP` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingBPMN_attribut_attribute_value_id_2374791a_fk_parsingBP` FOREIGN KEY (`attribute_value_id`) REFERENCES `parsingbpmn_attribute_value` (`id`);

--
-- Limiti per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD CONSTRAINT `parsingBPMN_process_system_id_52b775a3_fk_parsingBPMN_system_id` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD CONSTRAINT `parsingBPMN_threat_h_attribute_id_8e431819_fk_parsingBP` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`),
  ADD CONSTRAINT `parsingBPMN_threat_h_threat_id_fbeae7da_fk_parsingBP` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
