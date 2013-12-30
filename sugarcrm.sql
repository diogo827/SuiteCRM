-- MySQL dump 10.13  Distrib 5.6.15, for osx10.7 (x86_64)
--
-- Host: localhost    Database: sugarcrm
-- ------------------------------------------------------
-- Server version	5.6.15

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('45fe6458-2667-6455-e407-50890c5c57ed','Cliente 2','2012-10-25 09:55:24','2013-06-20 15:14:00','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'214 268 135',NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('808111f7-1792-d54e-5364-50890cdd787b','Cliente 3','2012-10-25 09:55:35','2012-11-27 19:10:22','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('a7f9517a-27f2-10e5-c246-52c07dc7ed9d','Zé','2013-12-29 19:51:06','2013-12-29 19:51:06','1','1','',0,'1','','','','','','Lisboa','','','','','',NULL,'http://','','','','','','','','','','',''),('c18c8b38-85a2-6805-bcd6-50b8c9b2dcd4','João Maria Medeiros','2012-11-30 14:57:00','2012-11-30 15:07:09','1','1',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('d2084788-6476-a47a-affc-50b4cc4ef333','Roiferro','2012-11-27 14:23:19','2013-06-20 15:12:40','1','1',NULL,0,'1','contactofeira','Hospitality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'214262292',NULL,'http://','Feira de Leiria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('dbda0f9a-f33f-f648-bc42-50890c00a9c2','Cliente 1','2012-10-25 09:55:15','2012-11-26 18:11:47','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('e6092bde-dc58-d3be-fd5b-50841a790628','André Pinto','2012-10-21 15:54:58','2013-12-29 16:17:59','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,'Estrada de S. Marcos\r\nElospark II - Esc. 14','Cacém','Lisboa','2735-521','Portugal',NULL,'968903922',NULL,'http://www.cross.pt',NULL,NULL,NULL,'Estrada de S. Marcos\r\nElospark II - Esc. 14','Cacém','Lisboa','2735-521','Portugal','',NULL,'');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
INSERT INTO `accounts_audit` VALUES ('24152c71-227d-3abe-8001-508907a5fcb4','e6092bde-dc58-d3be-fd5b-50841a790628','2012-10-25 09:34:25','1','name','name','Pedro','André Pinto',NULL,NULL),('35d261be-f3b9-bef5-c2eb-5089074f5154','e6092bde-dc58-d3be-fd5b-50841a790628','2012-10-25 09:34:25','1','phone_office','phone','968900249','968903922',NULL,NULL),('5ce5d427-a1a1-d1a8-034f-50b8cb217007','c18c8b38-85a2-6805-bcd6-50b8c9b2dcd4','2012-11-30 15:07:09','1','assigned_user_id','relate','1','',NULL,NULL),('602ed1c1-23c6-1720-d4b3-50b4cc5ada86','45fe6458-2667-6455-e407-50890c5c57ed','2012-11-27 14:23:52','1','phone_office','phone',NULL,'214 268 135',NULL,NULL);
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('a7f9517a-27f2-10e5-c246-52c07dc7ed9d',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
INSERT INTO `accounts_opportunities` VALUES ('130ab0bc-8a3b-2c5d-7270-5089525fbe95','faf10b9a-de57-512b-3545-508952cb3414','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 14:51:52',0),('1adc292a-0cbe-5d14-3d05-50890c986a01','17cad694-4db3-13e3-e75a-50890c956172','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-10-25 09:56:27',0),('1ef0e2eb-bc20-1d3f-de9f-50890e44b363','1b908d64-6b8b-9143-a0c5-50890eeef94f','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 10:02:21',0),('228203fe-e49a-e787-27de-50b34abb20a6','f1318e06-ba56-1301-c09f-50b34abc4576','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-11-27 14:19:06',0),('2fa1cf1a-2d30-a324-73d7-508944f352d7','2c69ad82-6f11-f997-4d04-50894483bb06','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 13:55:55',0),('35a012f4-9119-a9c6-9119-50bf84de2eac','3207c0d2-4f19-9e8c-3262-50bf846459bf','d2084788-6476-a47a-affc-50b4cc4ef333','2012-12-05 17:29:03',0),('3cecdc07-1374-d1f4-e6b2-508fa3476b97','397ffa9b-4a61-902e-8ee1-508fa375abb4','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-30 09:52:49',0),('4395f3c6-0146-16b7-46c4-50894988ae43','40508819-af32-81b0-2cb6-508949245d27','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:13:43',0),('45482eb7-1226-6c44-08d2-50894a883c49','421a0c9d-12c5-12ab-de84-50894a90f62e','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:20:22',0),('472625c9-7452-3ab9-5bac-508fa4812418','43cba12a-6c0f-a9e8-6759-508fa41a76f1','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-10-30 09:55:40',0),('4744287c-3238-fbfe-9969-508952eb724b','43ee3030-b420-3ab2-3251-508952cb2bf4','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-10-25 14:52:32',0),('4aec3b54-5d9b-f5ec-4638-508fa3c7d203','4794a870-3426-131c-f5fb-508fa337b53b','808111f7-1792-d54e-5364-50890cdd787b','2012-10-30 09:53:26',0),('4df74c5d-00f1-89ca-70c9-5089486459aa','4abfcf09-af28-d030-f746-508948667083','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:12:27',0),('55608a27-20b1-0b19-870c-50890d529b6a','51eadee2-6738-af84-e4b8-50890da696ec','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 10:00:05',0),('5a0556d0-6c58-0b12-f1f4-50890dcb58b1','56710014-d8dc-1a9c-1d2d-50890d406056','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-10-25 10:01:15',0),('5faf645e-21a4-29d7-d587-508944bae496','5c497ca1-ef11-8107-37f2-508944d36fe3','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 13:55:15',0),('638d7778-279a-7999-e768-51c30d734a51','5fcf6fa4-5d67-8199-5667-51c30de4f252','d2084788-6476-a47a-affc-50b4cc4ef333','2013-06-20 16:42:16',0),('659d283a-d0b8-74d3-8f4d-508fa3f5231e','6216ede9-c47b-15f5-fce3-508fa39fd652','808111f7-1792-d54e-5364-50890cdd787b','2012-10-30 09:54:37',0),('66fd444d-78f6-b183-796a-508948a29001','63acb138-f127-3eaf-c789-508948f45131','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-10-25 14:12:50',0),('7048dfd9-342a-ef1e-200e-508fa3445109','6cda6c96-e1ac-a6cf-e724-508fa3bdd3aa','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-30 09:55:10',0),('77f1bdd8-d931-438a-e5a3-508949fa2c49','74b6a0b1-6d71-9792-cb55-508949f501a0','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:16:15',0),('8f8000c9-07be-f8d5-4bd3-508952b6b3a1','f14d05e4-fbfb-7da4-1aaa-5089521e6f03','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:53:04',0),('93beb635-89ff-5bed-9867-508948ee7a84','907de0d0-91ca-7096-3059-50894854d5d5','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:09:50',0),('97c346b9-c681-9423-4062-50894826ff30','9481a5dc-e44b-309a-523c-5089483f8103','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:12:15',0),('a3861e5d-aadb-d1d6-b135-50890e33e7c6','a063e055-1511-59ad-95f7-50890ebf6d72','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 10:02:46',0),('a5262eef-422f-8bb9-eb89-50895167aba4','a147b09a-0ff6-0ada-aad7-5089518a2f9a','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 14:51:23',0),('aa001f17-43d8-f9bd-e241-5089484122ca','a6c4cf06-8096-67d0-3feb-50894810b254','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 14:13:01',0),('aadbd0ac-d487-f3f2-c6f8-5089444e9b7e','a797bcba-f3c6-11ae-73e6-5089440356e5','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 13:54:50',0),('ab756588-f4b4-b01b-b643-508fa34d229d','a809495c-f416-b2ce-7495-508fa304cc4b','dbda0f9a-f33f-f648-bc42-50890c00a9c2','2012-10-30 09:53:57',0),('ba000a1b-508f-1325-6a10-50bf652758dc','b6823a9c-ec01-459b-b271-50bf6528d0c8','d2084788-6476-a47a-affc-50b4cc4ef333','2012-12-05 15:18:43',0),('bdbef647-1f82-b838-0fd6-50894872bf53','ba801291-be18-33a6-534a-5089488e7a04','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 14:12:37',0),('d84d36ed-d965-115c-6715-50890d118b32','d514781f-380b-befc-502f-50890d4200ac','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 10:00:39',0),('dd066cbc-0934-d7e2-302f-50890e92d4e3','d9c58bec-25ec-e80e-1a97-50890e884eee','45fe6458-2667-6455-e407-50890c5c57ed','2012-10-25 10:01:42',0),('e083bd5f-2aa7-4b35-a4a6-5089444f9f5c','dd48d626-4897-676a-db7d-50894498b5c5','808111f7-1792-d54e-5364-50890cdd787b','2012-10-25 13:55:33',0),('e0e1bd14-998c-9c27-3489-51c30607ef7c','dd4b4411-8b15-cd29-b145-51c3067ef94b','d2084788-6476-a47a-affc-50b4cc4ef333','2013-06-20 14:09:07',1);
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('103f2918-7639-4b7a-2282-52c0650b981f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','EAPM','module',89,0),('10829056-cf73-4879-46c9-52c03fcf9cd6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','SecurityGroups','module',89,0),('10aaca34-5451-214d-f278-52c06557d5db','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','EAPM','module',90,0),('10cf0d64-c458-45be-5a90-52c03f661b14','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','SecurityGroups','module',90,0),('1106581f-4217-8b26-a334-52c03fb121f6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','SecurityGroups','module',90,0),('110fb89a-32c9-bd8b-3a68-52c065f9e56e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','EAPM','module',90,0),('114a85c8-240e-fc92-b40a-52c03fc6d3cf','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','SecurityGroups','module',90,0),('1176be0b-2cf1-be62-e58b-508417625970','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','ProjectTask','module',90,0),('117b91b5-7826-1f97-6062-52c06589875a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','EAPM','module',90,0),('1189d7c3-cab3-a768-3e56-52c03fb1f16a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','SecurityGroups','module',90,0),('11c2b6b6-5ac3-b33d-34a7-52c03ffdeeb5','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','SecurityGroups','module',90,0),('11dc8e2f-bbc1-98a1-634d-52c065a08bf1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','EAPM','module',90,0),('12171a12-f5c4-307a-2a72-52c03ff1e54a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','SecurityGroups','module',90,0),('122a06e9-cd29-010a-50ca-5084174a9691','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Contacts','module',90,0),('124d903b-f50d-10dc-7b3d-52c0659384e7','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','EAPM','module',90,0),('1256888d-cc02-ffe3-13a2-52c03fa2e6cd','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','SecurityGroups','module',90,0),('12b3e52c-3ce9-f90a-701c-52c06539eb60','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','EAPM','module',90,0),('131148cb-5995-dfc0-d5ad-52c06540711c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','EAPM','module',90,0),('13150f47-f45d-ed88-2ddb-52c03fc9fd00','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','EmailMarketing','module',90,0),('134a02bc-3786-e49d-c6b7-5084170cd1b7','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','ProjectTask','module',90,0),('13c138b8-e78a-755a-0d4d-5084175dded7','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Leads','module',90,0),('1409d352-9251-9044-9fef-5084178c6f76','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Calls','module',89,0),('16c2030d-3337-e04d-57ee-52c065ae0bb3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Project','module',89,0),('16e648ff-883c-3bdd-ba1d-508417d58d15','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Campaigns','module',90,0),('16f8d2f2-21ae-12af-cf8f-508417e317a4','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Contacts','module',90,0),('171ee7d3-2993-43a7-7cda-52c0655a89dd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Project','module',90,0),('17470384-2e9a-4c4b-88fc-52c03fd1df20','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','EmailMarketing','module',90,0),('1772108a-c9fc-7ed3-aa1c-52c065099d67','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Project','module',90,0),('17ceda21-80fa-68b6-4771-52c065af7c96','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Project','module',90,0),('1821cd85-3159-8e3c-797b-52c06591917a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Project','module',90,0),('1874bf93-35bf-fb16-a5a4-52c06598d80a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Project','module',90,0),('18c53b4f-9d44-73cc-e6f7-52c065ba1dd8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Project','module',90,0),('1918d653-904f-8382-8cfc-52c065e1ce34','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Project','module',90,0),('192e89e8-f344-7506-2b33-508417ba2986','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Cases','module',90,0),('197b9081-6243-0f13-0421-5084176d2719','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Meetings','module',90,0),('19921f30-f0c9-105d-a0fb-5084176fe5c6','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','EmailMarketing','module',90,0),('1a185d10-2b0c-83c4-fdd2-52c065843787','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','EmailMarketing','module',89,0),('1a87d392-a7bc-5551-9ecd-52c06576a534','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','EmailMarketing','module',90,0),('1aa00035-5170-e4a6-3dd5-52c03f6143c7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','EmailMarketing','module',90,0),('1ae58207-545a-ac1b-0aa6-52c06528b363','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','EmailMarketing','module',90,0),('1b3be117-5548-8a39-c8b1-52c06536e114','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','EmailMarketing','module',90,0),('1b9b852a-efb0-2547-c2af-52c0654e9fda','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','EmailMarketing','module',90,0),('1c2786b9-07bb-19af-3c4e-52c065b187ed','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','EmailMarketing','module',90,0),('1c2c70d2-076e-c6a8-ad71-508417badad1','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Documents','module',90,0),('1c2ed9ad-fe55-cfdb-88e0-50841736e5b5','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Tasks','module',90,0),('1c41d650-8546-88ff-db7a-50841771bbac','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','EmailTemplates','module',90,0),('1c829e4e-0c88-5194-e473-52c06582bae4','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','EmailMarketing','module',90,0),('1cd1454d-05e0-e5ca-aa59-52c03f776f05','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOS_Products','module',89,0),('1cd92c50-c395-1876-7143-52c06540bdf5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','EmailMarketing','module',90,0),('1ce880c2-81d5-46d7-2b10-50841766dcf3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Cases','module',89,0),('1d01ebca-a666-9f01-be8b-5097f5eeaab3','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','edit','ATRIX_CustomProspects','module',90,1),('1d1ac010-0310-ddcf-c4f2-52c03f351397','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOS_Products','module',90,0),('1d391b2d-7a99-3501-42e8-50841c068851','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','access','KReports','module',89,1),('1d5936c4-ff8a-290e-923b-52c03f2c09ce','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOS_Products','module',90,0),('1d96fffb-366b-e871-a51e-52c03f81f3ae','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOS_Products','module',90,0),('1dd31737-8282-c5b6-136f-52c03f657010','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOS_Products','module',90,0),('1e0e07a8-fbd6-c791-d4df-52c03fcc3288','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOS_Products','module',90,0),('1e492dcc-a86f-56d9-cc5a-52c03feaa4ab','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOS_Products','module',90,0),('1e8a88e7-df64-d6d1-ad97-52c03f1e1851','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOS_Products','module',90,0),('1ef1c329-cbbe-7c18-5846-5084177ef38d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Opportunities','module',90,0),('1f00c076-157b-4052-7491-5084177758f9','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Prospects','module',90,0),('1f08a335-addd-2bec-04d5-508417593b58','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','ProspectLists','module',90,0),('1f790750-5aff-64a0-5f76-52c03f62929b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','EmailMarketing','module',90,0),('20be17db-8b05-392d-d38d-52c06549c8a0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOW_WorkFlow','module',89,0),('21289656-11b3-c33c-dbd1-52c065810199','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOW_WorkFlow','module',90,0),('2185d14c-675e-c72e-8327-52c065ce4353','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOW_WorkFlow','module',90,0),('21f205fe-8c18-f3d5-5794-52c065caf62e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOW_WorkFlow','module',90,0),('225a1aec-dd47-bf77-1ef7-52c0652c9cf1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOW_WorkFlow','module',90,0),('22d0e3ae-0e73-a34d-8983-52c065b8dd45','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOW_WorkFlow','module',90,0),('2334179d-b18c-bbbe-7ee8-52c065672b5f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOW_WorkFlow','module',90,0),('23a2f98e-71bd-34cb-2ab1-52c065def427','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOW_WorkFlow','module',90,0),('249a9cdd-ef35-ed24-f8a4-5097f54c9092','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','view','ATRIX_CustomProspects','module',90,1),('2556ca73-9192-0a59-fe3f-52c0651ecfb8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Leads','module',89,0),('26165b1c-6008-7fdf-fffc-52b84a6a2bea','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','access','DHA_PlantillasDocumentos','module',89,1),('265004a5-8148-7089-a358-52c065ba2e70','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Leads','module',90,0),('267710f6-d140-0377-6d59-50841cd95239','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','edit','KReports','module',90,1),('26afa725-97e3-718f-5a1f-52c0651aa737','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Leads','module',90,0),('26f4b716-97fa-c6cb-2bfd-5084170d21c3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','EAPM','module',89,0),('270c15fe-b17d-3b89-f1b6-5084173ac864','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Calls','module',90,0),('27110b41-444f-ec7f-2a3a-52c065690456','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Leads','module',90,0),('271c49c8-5703-f99a-5e69-508417b516b5','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Contacts','module',90,0),('272fcea8-3cc8-8f2d-64d4-508417844e2d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','ProjectTask','module',90,0),('277ceb52-3c11-8776-441a-52c0654820b5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Leads','module',90,0),('27ce3b5a-8b88-0d4b-28c3-52c065976dfc','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Leads','module',90,0),('282447bf-9fb4-6875-89db-52c06557a87c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Leads','module',90,0),('287e136f-a2ff-235b-847b-52c0655b671f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Leads','module',90,0),('28defa56-5fe5-c506-f6d1-52c065a989ed','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOS_Products','module',89,0),('28ec26f1-5943-a8ff-4e25-52c065864de2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Emails','module',89,0),('2948a568-42c6-3483-7e18-52c0653d9010','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOS_Products','module',90,0),('2969d9e2-a2a9-f83b-1113-52c065a7f803','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Emails','module',90,0),('29791fcf-56c4-c4aa-2ca7-52c0659d9499','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','jjwg_Address_Cache','module',89,0),('29b2f319-7d92-a17d-02b2-52c065018c90','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOS_Products','module',90,0),('29cf47bb-b2fb-dfce-0210-52c065c945c7','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Emails','module',90,0),('29e45db4-2963-f6c2-ce22-52c0652b433d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','jjwg_Address_Cache','module',90,0),('2a0db205-60c1-a7f6-7e36-52c065a2e74d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOS_Products','module',90,0),('2a363243-16b9-4c88-e422-52c065b1daad','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Emails','module',90,0),('2a448b75-050b-8c03-f620-52c065834b2c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','jjwg_Address_Cache','module',90,0),('2a600bb9-41fa-2cdf-383b-52c03f71752b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','EmailMarketing','module',89,0),('2a6c3ed3-998f-d34a-d305-52c065f556ff','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOS_Products','module',90,0),('2a9b6035-8ae8-35ab-55cc-52c065a879bf','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Emails','module',90,0),('2aa24580-66b5-4ffb-ed30-52c065793d73','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','jjwg_Address_Cache','module',90,0),('2ab00b06-d09b-f1fc-b0e2-52c03f4b1697','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Leads','module',90,0),('2ae59573-7cd5-e736-d9cf-52c0657c3f7b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOS_Products','module',90,0),('2aff18f1-688c-cfa8-8279-52c06585ddc9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Emails','module',90,0),('2b0a750b-5622-f72f-afb7-52c065759987','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','jjwg_Address_Cache','module',90,0),('2b1c743f-0b57-20a4-7e7b-52c03f4f4487','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOW_Processed','module',89,0),('2b47ec98-7a8d-3256-7a2d-52c065c3822e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOS_Products','module',90,0),('2b63ebd5-e0ef-7ed6-f0bb-52c06587f612','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Emails','module',90,0),('2b6603cc-8d72-4720-6aac-52c03fe07358','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOW_Processed','module',90,0),('2b7092d3-70af-cf7c-6646-52c065d12279','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','jjwg_Address_Cache','module',90,0),('2b9000a6-606f-8b34-d402-52c03fe44bfa','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Users','module',89,0),('2bae9086-bcb9-0f2d-6c23-52c065774888','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOS_Products','module',90,0),('2bc3f7c1-166b-b096-e7c9-52c03f8d1b1b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOW_Processed','module',90,0),('2bc93fd6-12dd-a845-8ce6-52c065aa25d8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Emails','module',90,0),('2bd84f1b-1e37-6c7b-94d8-52c03f1bc4d2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Users','module',90,0),('2bdd3b3c-ada4-79ad-1bf2-52c065cf31f5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','jjwg_Address_Cache','module',90,0),('2c00186a-7273-5d01-e627-52c03f27f911','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOW_Processed','module',90,0),('2c14ba28-be76-9b50-c452-52c03f93f195','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Users','module',90,0),('2c3f1edc-d4b5-6425-cb99-52c03f4543f1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOW_Processed','module',90,0),('2c43f039-dda0-2aeb-ed65-52c06547e787','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','jjwg_Address_Cache','module',90,0),('2c654822-9069-9f2c-dcab-52c03f6b470d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Users','module',90,0),('2c7844e8-144c-ef81-602c-508417e1292c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Meetings','module',90,0),('2c81577e-ce24-23c7-edb5-5084171d0a92','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','EmailTemplates','module',90,0),('2c81eacb-0e90-f44f-0caa-52c03f406286','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOW_Processed','module',90,0),('2c8d637d-5394-4763-22d8-508417b34302','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','EmailMarketing','module',90,0),('2ca70571-78a3-ee41-8f82-52c03fe20a94','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Users','module',90,0),('2cc7ebb5-9a8a-1e11-3598-52c03f4161f8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOW_Processed','module',90,0),('2cea43b2-fdc8-46a3-4a57-52c03f5cdac7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Users','module',90,0),('2cf12013-6ce7-49fb-be6f-52b84a77cd83','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','view','DHA_PlantillasDocumentos','module',90,1),('2d09cf9f-f13c-b8e8-2355-52c03fc6223a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOW_Processed','module',90,0),('2d261c0b-b48b-c53f-e706-52b84abb8274','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','list','DHA_PlantillasDocumentos','module',90,1),('2d4a2915-5195-0b5b-7729-52c03fa634a6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Users','module',90,0),('2d58461e-4666-4926-370c-52b84a01f70f','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','edit','DHA_PlantillasDocumentos','module',90,1),('2d8792e5-2650-115e-6130-52c03faaaee1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Users','module',90,0),('2d8928cb-edcb-7600-859e-52b84ae36501','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','delete','DHA_PlantillasDocumentos','module',90,1),('2db94afd-91d6-50ab-9835-52b84a2afc9f','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','import','DHA_PlantillasDocumentos','module',90,1),('2de91115-4e35-bf51-d657-52b84a6bfaa0','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','export','DHA_PlantillasDocumentos','module',90,1),('2e1de303-941f-e895-8dbe-52b84a70e6d8','2013-12-23 14:36:41','2013-12-29 19:45:07','1','1','massupdate','DHA_PlantillasDocumentos','module',90,1),('2f29ccfc-1d70-daf0-1132-508417fb19eb','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Tasks','module',90,0),('2f3978a4-519b-1f84-ed54-5084172a5438','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Opportunities','module',90,0),('2f4c2c01-0e5d-5709-b7d7-5084178aa098','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Prospects','module',90,0),('2fb38853-aa96-e896-9f83-50841703b164','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Bugs','module',89,0),('3203e56d-e1d2-424b-9767-508417e8e1a1','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','ProspectLists','module',90,0),('32d8f7d4-28db-e011-294b-52c03f5f69b9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Campaigns','module',89,0),('3307a922-3536-8b72-b59b-52c03fb5f116','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOP_Case_Updates','module',89,0),('33222a9c-331a-ee60-3572-52c03f50551c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Campaigns','module',90,0),('33510003-7124-fbe1-a51a-52c03f3a6687','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOP_Case_Updates','module',90,0),('335e5950-84c5-ecf4-159f-52c03ff14d00','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Campaigns','module',90,0),('338b8ae6-c4cb-33af-bc1a-52c03f47b708','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOP_Case_Updates','module',90,0),('339cb62f-9473-9261-ace2-52c03f016151','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Campaigns','module',90,0),('33cbceee-5ae2-9a8e-1fa9-52c03f2e89fc','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOP_Case_Updates','module',90,0),('33de7147-b1f3-d364-a26b-52c03ffa50fe','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Campaigns','module',90,0),('33f2efce-8a56-f6e1-efa9-52c03f9bf815','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Meetings','module',89,0),('33f33270-0a17-77b5-0986-52c03fd5aedb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOS_Invoices','module',89,0),('34020eef-8053-8458-fbd1-52c03f5676a4','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOP_Case_Updates','module',90,0),('3403ce7f-f588-404d-ba2c-52c03fecce6a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','EAPM','module',89,0),('341b97b3-b69a-9252-60ba-52c03fa502ba','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Campaigns','module',90,0),('343c1a23-f37e-3f4e-09d4-52c03f6b75e9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOP_Case_Updates','module',90,0),('3441a86e-7993-bd9d-aecf-52c03faa3dca','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Meetings','module',90,0),('34487f8d-e1d2-9a7e-3672-52c03f789b97','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOS_Invoices','module',90,0),('344ad8bf-18ee-c518-f7a8-52c03fe9a7ee','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','EAPM','module',90,0),('345c508c-714a-369f-912d-52c03fabbfe0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Campaigns','module',90,0),('347accfe-4a52-f651-5eaa-52c03f7d566e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOP_Case_Updates','module',90,0),('3485ebf9-8dd7-25dc-f8d3-52c03f50abbb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOS_Invoices','module',90,0),('34869236-a41a-61df-b958-52c03f02a34d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','EAPM','module',90,0),('34896935-8b76-21a9-e4f5-52c03f92c35c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Meetings','module',90,0),('34a83098-9627-61ff-5cc2-52c03f618325','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Campaigns','module',90,0),('34b4689b-9452-2487-a18b-52c03fe0c258','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOP_Case_Updates','module',90,0),('34bed22a-f6d7-dba3-fa0a-52c03f1969c6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','EAPM','module',90,0),('34c63a46-e409-6ea4-a57a-52c03f0b69fd','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOS_Invoices','module',90,0),('34cbfe64-776e-3247-b6ea-52c03f800fa6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Meetings','module',90,0),('35036b2b-a107-2c55-0afc-52c03f5c5c57','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','EAPM','module',90,0),('3505436b-88bb-2c35-f52b-52c03ffa8134','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOS_Invoices','module',90,0),('350b8313-0b95-f129-92fb-52c03fa412a6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Meetings','module',90,0),('3540a15f-f355-a516-9f4a-52c03f79f81d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','EAPM','module',90,0),('3543fa8d-37bd-1a20-e032-52c03f3739b2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Meetings','module',90,0),('3544d116-6f6f-e15a-2aa4-52c03f9c39a1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOS_Invoices','module',90,0),('3551fee4-2a10-dbc0-91ed-52c065b6af3f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOP_Case_Events','module',89,0),('357d6ca1-b36c-b143-5dbd-52c03f9552f5','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','EAPM','module',90,0),('358d7afd-c397-d20b-9cc2-52c03f135505','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOS_Invoices','module',90,0),('35af7ccc-d9bd-8784-5309-52c03ffa9e1a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Meetings','module',90,0),('35b51478-8c66-09c7-810b-52c03f22e7a8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','EAPM','module',90,0),('35c00e2e-178a-a8b2-ce35-52c065ff711a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOP_Case_Events','module',90,0),('35d0eb74-ce91-8bd2-8b24-52c03fa50667','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOS_Invoices','module',90,0),('35f5ee6e-ad25-d7e4-5912-52c03fd456be','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Meetings','module',90,0),('36302224-7d09-9bb7-0c38-52c065f4168a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOP_Case_Events','module',90,0),('369b4006-f436-4459-5f5f-52c065618f93','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOP_Case_Events','module',90,0),('36a6ba15-47b0-a753-2a3f-52c03f043a68','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Contacts','module',89,0),('36f55f9b-f36b-8611-98ba-52c03fb68d72','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Contacts','module',90,0),('36fd77d2-af15-7de8-92e6-52c065c17644','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOP_Case_Events','module',90,0),('37356f16-ccd6-d3de-7f9a-52c03f44cfdb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Contacts','module',90,0),('375a6e44-5518-0a3f-1379-52c0659e1752','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOP_Case_Events','module',90,0),('37639797-29fe-bceb-c8c1-50841706b121','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Contacts','module',90,0),('37756c1b-5eca-b653-079f-52c03f78fece','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Contacts','module',90,0),('37768bd0-e5d3-1460-2841-5084174fa511','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','ProjectTask','module',90,0),('378951f9-df83-0c85-5165-52c065386a82','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','ProjectTask','module',89,0),('37b76883-32e6-1d83-33eb-52c0653cfdbe','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOP_Case_Events','module',90,0),('37b91da4-7116-1d65-b48c-52c03f237b4b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Contacts','module',90,0),('37f6e183-bf81-c185-7eca-52c03fc70b8e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Contacts','module',90,0),('37f9a51f-483b-1e6f-6ad1-52c065e7c878','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','ProjectTask','module',90,0),('380ea129-e0b3-dec4-a0b3-52c065877c2d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOP_Case_Events','module',90,0),('384ab24c-001b-3b43-28e0-52c065504ca5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','ProjectTask','module',90,0),('384ee028-abc9-dab9-6d21-52c03fc335f6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Contacts','module',90,0),('38928815-64ad-daf9-d6c9-52c03f5df19c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Contacts','module',90,0),('389d0cd0-6811-2a70-83e4-52c065d10b45','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','ProjectTask','module',90,0),('38d05edd-4672-7ded-7c52-52beb5dd5581','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','access','KReports','module',89,1),('38efdb87-551c-ec0b-ef00-52c065564f7b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','ProjectTask','module',90,0),('39356b89-e44a-3437-51a0-52beb5d78b46','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','view','KReports','module',90,1),('393e6c7a-f71a-74a4-b14b-52c065c6f196','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','ProjectTask','module',90,0),('396e8f22-2378-6db1-b57a-52beb5c63d2d','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','list','KReports','module',90,1),('399f1166-ecf1-8b8e-726e-52c065db6a59','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','ProjectTask','module',90,0),('39a52ac4-d1b9-13da-a71f-52beb51aa87e','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','edit','KReports','module',90,1),('39de967d-39d2-7687-814a-52beb51fe481','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','delete','KReports','module',90,1),('39f200ab-c67a-b148-2533-52c065f576d5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','ProjectTask','module',90,0),('3a151e12-d3fa-4503-ed67-52beb5fd732f','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','import','KReports','module',90,1),('3a2cd36f-dce0-2f93-f2f4-50841757044d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Emails','module',89,0),('3a3259cb-f70d-f94e-32de-508417bb2359','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Campaigns','module',90,0),('3a4becdd-a336-20e7-07f6-52beb56a8849','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','export','KReports','module',90,1),('3aaf10e1-8a58-c35b-c38e-52beb5f39902','2013-12-28 11:26:32','2013-12-28 11:32:28','1','1','massupdate','KReports','module',90,1),('3f8f2871-234e-7488-0c88-5084172855c3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Prospects','module',90,0),('3fb35cc1-d24b-36e1-86fa-50841725eddd','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Bugs','module',90,0),('4158ea5b-9874-167c-2cc3-52c03f4c52a2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOR_Reports','module',89,0),('419df5c4-544d-92a0-5265-52c03fa2e950','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOR_Reports','module',90,0),('41d78a1c-0ed0-e617-accc-52c03fd94a2f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOR_Reports','module',90,0),('41d88742-2f0d-54ab-473e-52c03f1268d7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','EmailTemplates','module',89,0),('420f277d-9c5c-1703-31a6-52c03fac8e47','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOR_Reports','module',90,0),('42276a36-5269-0d84-5708-5084172c0253','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Tasks','module',90,0),('42293826-5fcf-2329-cec5-52c03f820799','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','EmailTemplates','module',90,0),('42356b88-6581-b274-5819-508417543974','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Opportunities','module',90,0),('42463ae6-2d9c-c441-e8b6-52c03f758908','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOR_Reports','module',90,0),('426ba280-6355-e735-c3c6-52c03f3bf2f6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','EmailTemplates','module',90,0),('427ec6a0-c4eb-2f62-a948-52c03fe2aec8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOR_Reports','module',90,0),('42b1ad2c-9f14-e521-9bc5-52c03f2ce4ea','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','EmailTemplates','module',90,0),('42c55f6f-de59-495f-da6e-52c03f4ac438','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOR_Reports','module',90,0),('42f12e14-955c-cf09-a925-52c03ff5eb5f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','EmailTemplates','module',90,0),('42fd7f69-e0b9-661d-48f7-52c03f19de0b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOR_Reports','module',90,0),('4332af7d-f78a-117c-88d4-52c03f39b21d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','EmailTemplates','module',90,0),('437874d7-f468-0d59-a217-52c03f65cebb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','EmailTemplates','module',90,0),('43b42eb3-f78c-3fd2-1d13-52c03f005fa0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','EmailTemplates','module',90,0),('466519eb-7704-be14-5ced-52c06546c846','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Accounts','module',89,0),('46ca760c-da96-3f43-cbee-52c0651ae7f6','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Accounts','module',90,0),('4738d4d9-5b64-4bab-ce23-52c065ceabc8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Accounts','module',90,0),('4760afa2-0b95-c4ae-f96b-52c06520ec16','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOS_Contracts','module',89,0),('478b434c-7e42-6c9e-63d1-52c065250e1c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Accounts','module',90,0),('479d34fd-5d9f-aebb-8cd3-508417bb417c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Calls','module',90,0),('47da3b53-b252-35b8-1d2e-52c065798f05','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOS_Contracts','module',90,0),('47dea560-2175-8aba-4fce-52c06508b7b8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Accounts','module',90,0),('47e3b812-e390-7839-6723-52c0659d8a10','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Meetings','module',89,0),('47f12376-6c7f-7e15-8598-508417d24ee5','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Users','module',89,0),('483152b0-9f12-594e-0b19-52c0659d8847','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Accounts','module',90,0),('48390faf-06bd-89b2-8649-52c065aa922f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Calls','module',89,0),('483aba22-8809-2b3e-ceec-52c0655d2a73','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOS_Contracts','module',90,0),('48700e93-f009-7214-2e48-52c065f8bb1c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Meetings','module',90,0),('4887a4fa-fa11-3f94-dcf3-52c06558dbb3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Accounts','module',90,0),('48a663f0-0071-54ba-8f0a-52c0651806a8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOS_Contracts','module',90,0),('48c8a03e-e256-49a1-aa24-52c0653af938','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Meetings','module',90,0),('48e1d438-36e5-c433-afe7-52c0656236cd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Accounts','module',90,0),('4901dd95-c7f0-8c64-a697-52c065a4a38f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOS_Contracts','module',90,0),('4920a3f3-3e68-1ff2-0f16-52c0653609d3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Meetings','module',90,0),('495bd185-b50a-2a7e-7dd9-52c0650a5171','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOS_Contracts','module',90,0),('49858694-0b34-5cc7-4be2-52c06555261c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Meetings','module',90,0),('49923611-fa08-3662-1166-508417baad8c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Notes','module',90,0),('49c2c0b5-322e-420b-5531-52c065970fbf','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOS_Contracts','module',90,0),('49e8e1f0-8770-85bd-690d-52c0659de147','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Meetings','module',90,0),('4a26d672-0908-c450-f3ad-52c06555017f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOS_Contracts','module',90,0),('4a48f63d-fa8b-e14e-23fe-52c0659bb77d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Meetings','module',90,0),('4a6cf9da-6c2b-52d3-9cc5-50841775ef34','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','ProjectTask','module',90,0),('4ab0bebc-e30d-6bbf-5c94-52c065a332e9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Meetings','module',90,0),('4cfc0387-e754-5021-3987-5084173474d8','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','EAPM','module',90,0),('4d0d4c8d-7cd7-89b2-e92b-508417e97e67','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Users','module',90,0),('4e6f0862-4497-e77b-3cd5-52c065b8b6d8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Calls','module',90,0),('4f6aed99-ff6f-03d1-5718-52c0652ad1ea','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOW_Processed','module',89,0),('4fbc7d20-297a-382a-17c2-508417d21698','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Emails','module',90,0),('4feb4f46-1818-bda4-44c5-508417791bab','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Bugs','module',90,0),('502736e3-b17e-7358-cfa3-52c065815c36','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOW_Processed','module',90,0),('50830b17-7dca-077f-86d0-52c065b185a9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOW_Processed','module',90,0),('50e759d3-fa5a-a6df-0b35-52c065b4dd5b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOW_Processed','module',90,0),('514180ba-fdda-fce8-5876-52c06551c95f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOW_Processed','module',90,0),('519d20a4-3279-df86-df09-52c06553ad34','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOW_Processed','module',90,0),('51f7410d-0af9-15af-225e-52c065441857','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOW_Processed','module',90,0),('522363c9-3364-0a72-0c8a-5084178f329f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Cases','module',90,0),('524df834-0a6c-dfce-4b67-508417061013','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Project','module',89,0),('52527609-2fc9-d2e1-abf9-52c0650ab0bd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOW_Processed','module',90,0),('527ca4e0-1afe-7887-555c-508417781d3d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Opportunities','module',90,0),('53bb018a-b197-d390-1420-52c06567cd49','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Calls','module',90,0),('54afe5a9-2f47-f6d7-42a3-5084174337a8','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Leads','module',89,0),('551f7d85-cb29-c25e-927b-508417a9679a','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Documents','module',89,0),('553bd9a5-581a-1303-bddb-508417b8a8f8','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Tasks','module',90,0),('5540e725-b53d-262f-bf00-508417e58c2f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','EmailMarketing','module',90,0),('5544ba7d-daca-b180-e978-5084177fe075','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Prospects','module',90,0),('5618c1cd-6930-f6eb-1f3d-50841c3dc7a2','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','view','KReports','module',90,1),('57ef29fe-fd01-c675-d159-50841761a1df','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Meetings','module',90,0),('58fa0794-8bf6-83b5-ebae-52c0652bed78','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Calls','module',90,0),('5911e292-c695-2682-1dc6-52c03fb6368b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','jjwg_Areas','module',89,0),('595a8468-7329-fe1c-524d-52c03fd2cbc1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','jjwg_Areas','module',90,0),('59935e59-71f1-b84f-f3d0-50841cb82ddf','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','delete','KReports','module',90,1),('59a004aa-295c-9c38-cc43-52c03f12668d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','jjwg_Areas','module',90,0),('59eee665-ea12-646d-74aa-52c03f3bd9bd','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','jjwg_Areas','module',90,0),('5a264644-f1a9-c2d5-316a-52c03f62c132','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','jjwg_Areas','module',90,0),('5a5db2b3-152a-ca38-10bc-52c03fd53281','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','jjwg_Areas','module',90,0),('5a969874-2618-e7e1-d8ec-508417ba4045','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Calls','module',90,0),('5a9d4c6b-d545-a398-50ee-52c03f42f45d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','jjwg_Areas','module',90,0),('5abeb281-77f3-4fbb-5b46-5084175b187f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Users','module',90,0),('5ada4207-1c16-c58b-336f-52c03f4d76dc','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','jjwg_Areas','module',90,0),('5d16ac08-e137-211d-e0a0-52c03f8f13c6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','FP_events','module',89,0),('5d6cc476-167c-c104-8abb-52c03fb1c472','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','FP_events','module',90,0),('5dab3bb3-fbdd-8f49-b727-52c03f1b7b3d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','FP_events','module',90,0),('5deaac1b-8973-bbde-f9ea-52c03fc48a1e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','FP_events','module',90,0),('5e2baa16-934d-c9e6-eef1-52c03fe50fab','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','FP_events','module',90,0),('5e6e9c26-0a0e-da46-4507-52c03f572947','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','FP_events','module',90,0),('5eafc2cd-d107-3f36-5afc-52c03f9713c1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','FP_events','module',90,0),('5efc06df-59db-9ad9-5c17-52c06578a8a2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Calls','module',90,0),('5f013939-da41-2605-0baa-52c03f0e5695','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','FP_events','module',90,0),('5f1f7679-d2af-198a-6825-52c03fd528c0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Documents','module',89,0),('5f6df6ca-8326-4f67-b5df-52c03f3e8f9f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Documents','module',90,0),('5fb8d27a-7ccd-8fd1-0457-52c03f49bdac','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Documents','module',90,0),('600373ff-2b93-f2b7-4a69-52c03f436fa3','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Documents','module',90,0),('6021b5db-55c1-bce7-60fa-508417528997','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','ProspectLists','module',90,0),('6058bfa1-976b-b265-2111-52c03fd81042','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Documents','module',90,0),('609fb824-3815-c371-d7c7-52c03ffa2cec','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Documents','module',90,0),('60a20e54-bbc8-0010-1022-5097f5704cfc','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','export','ATRIX_CustomProspects','module',90,1),('60e1dc07-3fb8-86b5-64d5-52c03fb013cc','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Documents','module',90,0),('6130a6ec-47a4-606e-62d3-52c03ffb28d0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Documents','module',90,0),('6268bbf3-5c0b-f80b-2ee4-5084171d5844','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Leads','module',90,0),('62aff0e0-558d-35b2-7441-5084170ea70a','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','EAPM','module',90,0),('63aa071e-6ffd-8464-9016-52c06507496d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Cases','module',89,0),('6405abec-72ba-540f-70cc-52c065accb67','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Cases','module',90,0),('641c0e64-a43e-fc1c-6f68-52c065a472e1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Calls','module',90,0),('64535548-c71f-ece7-3315-52c065177eb4','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Cases','module',90,0),('64a063ae-41d9-9d93-80cb-52c0650fdef3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Cases','module',90,0),('64ee2493-1f2a-a132-d301-52c0650cca8e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Cases','module',90,0),('654baedc-6bde-bc70-a1ec-52c0658524e5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Cases','module',90,0),('65850d5b-85d0-6fb0-0d21-5084176b36a2','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','EmailMarketing','module',90,0),('65973086-f02a-6e5c-9bb8-508417217545','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Project','module',90,0),('65a17493-07ba-c7e8-0596-52c065100a58','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Cases','module',90,0),('65a26e09-4206-3790-9915-508417022b35','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Bugs','module',90,0),('65f4602d-2766-52dc-fc98-52c065361075','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Cases','module',90,0),('6700afe5-1639-ff16-fb66-52c03f9ee303','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Cases','module',89,0),('674cc2fd-1f94-1de1-574e-52c03f433dd6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Cases','module',90,0),('6780002e-a6c7-6774-f87d-50841771db97','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Meetings','module',89,0),('6788f6a2-81d4-ff8c-a7bd-52c03fe2289a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Cases','module',90,0),('67c5b036-4778-9bf2-949c-52c03f1c7594','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Cases','module',90,0),('6800f716-348b-2157-563b-52c03fe680e9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Cases','module',90,0),('682226d9-5289-4634-8142-508417a451f2','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Tasks','module',90,0),('682a1257-b3cc-73be-8563-5084170a7e6e','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Emails','module',90,0),('683a3200-e1c7-d200-2194-52c03f35af26','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Cases','module',90,0),('68849f37-b2ef-7b1b-266a-52c03f5b3bc4','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Cases','module',90,0),('68c6a079-0635-30ce-a2c0-52c03f3cc610','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Cases','module',90,0),('692bff49-0df9-0ffe-b40c-52c0654936be','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Calls_Reschedule','module',89,0),('696a094b-5233-dcc7-4be5-52c065adaa93','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Calls','module',90,0),('699b40ed-0899-8b03-6a4e-52c065d52d8d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Calls_Reschedule','module',90,0),('6a008c59-375d-fe8a-9b5a-52c065e2b1b8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Calls_Reschedule','module',90,0),('6a607634-2804-684d-8ede-52c065e1086c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Calls_Reschedule','module',90,0),('6ac434f8-57e7-da65-294c-52c0657052d0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Calls_Reschedule','module',90,0),('6b0b6846-0b39-839a-de30-508417f2845c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Users','module',90,0),('6b26bf76-81c7-515b-66d4-52c065b45f60','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Calls_Reschedule','module',90,0),('6b660c8c-4604-085c-5108-50841756b253','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Campaigns','module',90,0),('6b87625c-3558-78ef-b7f6-52c06535edc6','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Calls_Reschedule','module',90,0),('6b94c15d-2c59-9b1c-24cb-52c06555090c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Tasks','module',89,0),('6bfddb7e-7fb4-0f19-d0a5-52c0651062be','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Calls_Reschedule','module',90,0),('6c06a279-cf74-c40c-7d74-52c0650a8f14','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Tasks','module',90,0),('6c63497f-dc1d-2c3b-bbbb-52c06551195b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Tasks','module',90,0),('6cba4220-cd98-2e03-1f32-52c06586fa35','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Tasks','module',90,0),('6d1ae24b-f2ee-da57-803a-52c0657883da','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Tasks','module',90,0),('6d6ec0e2-a895-6e3c-2672-52c065987918','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Tasks','module',90,0),('6d95f3ba-6fb9-1b46-a173-508417d7c3be','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Calls','module',90,0),('6d9c3ec9-7515-c333-1cff-5084172c5a8d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Notes','module',90,0),('6dcb970a-2a6b-de61-ae97-52c065d8a43c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Tasks','module',90,0),('6e28b37e-6785-54b7-ddef-52c065199fce','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Tasks','module',90,0),('6e9b0063-a699-1eab-e40e-52c06581b3f1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Calls','module',90,0),('6ffd9177-74e8-1f5f-c390-508417eeefb3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Cases','module',90,0),('702f5460-d32a-b768-908f-52c03f875d61','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Tasks','module',89,0),('704c0d11-115f-c4db-726f-50841727329c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Documents','module',90,0),('705425c6-e368-a418-42b7-50841765732a','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Notes','module',90,0),('7055acd4-ab55-5111-7a5d-508417045af9','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Tasks','module',89,0),('706002b4-6ce2-3b50-9ebb-508417afaf6f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Accounts','module',89,0),('707eeb59-7d8c-c0f1-58f1-52c03f5a9904','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Tasks','module',90,0),('70b7d150-bf93-e19f-6994-52c03fe49576','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Tasks','module',90,0),('70efb44a-f723-1ed3-3545-52c03f717b1e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Tasks','module',90,0),('710e459c-089a-16ed-a71e-52c03ff87ef2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Notes','module',89,0),('7127c637-f4d1-8f26-6b39-52c03f49f289','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Tasks','module',90,0),('715df7a3-af97-1243-75d8-52c03f7042f6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Notes','module',90,0),('7173509d-6988-fdb0-bb7e-52c03fd6f778','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Tasks','module',90,0),('71a8ed0a-5132-678c-1271-52c03f001bb1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Notes','module',90,0),('71b9972c-26e8-5bf0-747c-52c03fe8872c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Tasks','module',90,0),('71ee4b43-22b1-caef-a2fc-52c03f6fcd27','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Notes','module',90,0),('71f0dfa4-909f-4ad1-73e0-52c03f648d4d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Tasks','module',90,0),('72336e1d-8140-c5b1-bf3d-52c03f370040','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Notes','module',90,0),('7287519c-d5d0-87de-8aed-52c03f772abb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Notes','module',90,0),('72cdcce9-6fff-8b87-c3ff-52c03f98f424','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Notes','module',90,0),('72ffa547-ca50-0c61-524f-50841786b745','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Meetings','module',90,0),('73164060-7837-9122-94f0-52c03fc6b4bc','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Notes','module',90,0),('74c59a94-0b49-65ee-e2bd-52c065e7ced3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','FP_events','module',89,0),('75200880-666a-8d1e-dd15-52c03f9f899e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','EmailMarketing','module',90,0),('7529a0b5-2ceb-9ce2-1933-52c06594e9ba','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','FP_events','module',90,0),('7559c655-9a96-fe7c-1739-52c03f488d8d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOS_PDF_Templates','module',89,0),('7582f4d4-494f-7cb0-ad6c-52c065d29d9d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','FP_events','module',90,0),('75a30ae3-571f-a8de-44c7-52c03f71f854','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOS_PDF_Templates','module',90,0),('75ae5ce3-61eb-6f10-00c3-5084175b5f23','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','EAPM','module',90,0),('75d7c8e3-7a17-5ebf-0489-508417ee65e3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','ProspectLists','module',90,0),('75df259c-3585-03ac-a951-5084178139e6','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Project','module',90,0),('75e3450e-3b84-6eb9-18fe-50841751fc47','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Bugs','module',90,0),('75ed4ff6-072c-e809-b9f7-52c03fc3e01e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOS_PDF_Templates','module',90,0),('75fcc6bb-8cdd-e303-52d5-52c0659ef170','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','FP_events','module',90,0),('7626784f-a0f8-dd96-b3a0-52c03f3ca8a6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOS_PDF_Templates','module',90,0),('7654ce10-b588-c8ab-fdd3-52c06560b349','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','FP_events','module',90,0),('765ea39f-19cc-60cd-42aa-52c03f48d5ae','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOS_PDF_Templates','module',90,0),('76967c8d-ee63-004c-c8fe-52c03fa06ace','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOS_PDF_Templates','module',90,0),('76b0dc06-7879-a4ea-aa84-52c065ec46bd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','FP_events','module',90,0),('76ce4d3d-efc0-4dfc-d34b-52c03f289557','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOS_PDF_Templates','module',90,0),('770cff83-9e29-41bf-c5ce-52c065b9b77f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','FP_events','module',90,0),('772aa948-bce5-847f-d288-52c03f9e1ea7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOS_PDF_Templates','module',90,0),('776f2ca3-bb25-e554-166b-52c0656428c5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','FP_events','module',90,0),('78184894-83d4-2506-f586-5084172ecb2c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Leads','module',90,0),('796ccda7-abae-7dd9-714f-52c065a7a4f8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOP_Case_Updates','module',89,0),('79e186e6-de0b-5d7a-390b-52c0653059d3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOP_Case_Updates','module',90,0),('7a3efd97-2f8d-17e8-c5f5-52c065fa6d85','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOP_Case_Updates','module',90,0),('7aa1f23f-cfd8-cbc3-b72d-52c065ce9a16','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOP_Case_Updates','module',90,0),('7b023839-3bff-a67b-3636-52c065f172b4','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOP_Case_Updates','module',90,0),('7b62fec3-9dfb-65b6-9abf-52c065029374','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOP_Case_Updates','module',90,0),('7b8857b6-e235-dc13-414d-508417b28a4f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','EmailMarketing','module',90,0),('7bbbc99f-1f47-997d-1e9f-52c0656d9d85','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOP_Case_Updates','module',90,0),('7bd3246a-b294-66af-819e-52c065626114','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOS_Invoices','module',89,0),('7bf10c41-329f-8a08-1812-52c065cfde3d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Contacts','module',89,0),('7c181580-82cd-6e19-5a37-52c065bd57da','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Opportunities','module',89,0),('7c2388a8-b975-91a1-3ae4-52c065781b55','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOP_Case_Updates','module',90,0),('7c44daeb-0da2-62d9-b6f5-52c065fa9737','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOS_Invoices','module',90,0),('7c85885c-f7b3-4d68-d736-52c065ad5eb5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Opportunities','module',90,0),('7caa8176-88c9-ac3e-ac8e-52c065d509c0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOS_Invoices','module',90,0),('7cdf3408-3fc3-f6ce-dabb-52c065f5af3b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Opportunities','module',90,0),('7d11379e-a2d2-057a-bf1c-52c06509718e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOS_Invoices','module',90,0),('7d35c16b-d52f-a489-112b-52c065738562','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Opportunities','module',90,0),('7d7733e8-1d8b-a681-8cec-52c065c8a32f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOS_Invoices','module',90,0),('7d889a4c-1422-797f-2614-52c0656d9331','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Opportunities','module',90,0),('7ddb6629-a599-3acb-4e35-52c06500984c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOS_Invoices','module',90,0),('7de8b7f7-00c4-7e2c-1403-52c065bd2900','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Opportunities','module',90,0),('7e3a8bac-c2f2-10cb-17a7-52c065999e80','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Opportunities','module',90,0),('7e49feb2-9033-d90e-4480-52c0656cd9bc','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOS_Invoices','module',90,0),('7e8e5e52-469f-a71c-a96e-52c065f6132d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Opportunities','module',90,0),('7ead8eaf-083f-3739-f2c3-52c065024466','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOS_Invoices','module',90,0),('7f7b6109-2622-7276-675d-52c03f979f88','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Calls_Reschedule','module',89,0),('7fcc46c2-102e-71b6-aa89-52c03ffc90be','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Calls_Reschedule','module',90,0),('8015cfc2-4d07-bc19-38f1-52c03fa0d588','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Calls_Reschedule','module',90,0),('80542205-6ce5-9b5f-1c3f-52c03f179c13','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Calls_Reschedule','module',90,0),('80939f45-b1f5-bf80-0aa0-508417dcef1e','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Emails','module',90,0),('80954dca-8f24-8c13-9eb9-5084178f1f6f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Calls','module',90,0),('809b0df8-0458-b0e1-a5cb-52c03f9738ed','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Calls_Reschedule','module',90,0),('80e7c740-697d-2869-b894-52c03fd2fb7f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Calls_Reschedule','module',90,0),('8124dd0b-ccfc-d136-43bc-52c03f850c74','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Calls_Reschedule','module',90,0),('816046c4-a5c6-de8a-3da7-52c03f3ef21f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Calls_Reschedule','module',90,0),('81c6f6e8-42fb-bd78-4f61-5097f537f790','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','massupdate','ATRIX_CustomProspects','module',90,1),('82090b72-8bb9-27f1-cbf1-52c0659b68fa','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Contacts','module',90,0),('8362e120-c733-ac90-1823-50841772e8a9','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Campaigns','module',89,0),('83e11541-1ef5-8636-5db4-508417b55f91','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Notes','module',90,0),('84005c1b-7aa9-5d29-bfd1-52c06525353e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Campaigns','module',89,0),('845d37db-1bf1-976b-0cd3-52c0657f0cbb','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Campaigns','module',90,0),('84b9403a-2968-c5f2-6e8a-52c06504f6ac','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Campaigns','module',90,0),('850aac6d-3eb7-5cc0-7c86-52c06550b8db','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Campaigns','module',90,0),('855b0ad3-0607-bb70-3db5-52c065701529','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Campaigns','module',90,0),('85abd618-62d3-4232-0269-52c065820011','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Campaigns','module',90,0),('85c3a6d9-ef8b-7638-0b04-508417657519','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Leads','module',90,0),('85fc0185-9293-004f-141a-52c065ea3e59','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Campaigns','module',90,0),('86031455-8994-e4c7-0d42-508417960f38','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Meetings','module',90,0),('86247452-62f9-03c9-4df8-508417a6232e','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Project','module',90,0),('86293997-0aef-d7f3-0a02-508417901eea','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Bugs','module',90,0),('8629f2b0-20d2-c5bf-b3da-508417438609','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Users','module',90,0),('864c5200-6b6b-f66f-0447-52c065f19502','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Campaigns','module',90,0),('87490688-4db4-f595-996a-52c065ca9b23','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Contacts','module',90,0),('88a52693-d92c-5bdf-4199-508417f80b1d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','EAPM','module',90,0),('88cbe0f7-ddd3-2c61-cccf-5097f5bec5fe','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','delete','ATRIX_CustomProspects','module',90,1),('88ccb236-749a-94b0-2a3d-508417145067','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Accounts','module',90,0),('8900a240-ba99-f4ac-512a-508417aa9c11','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Documents','module',90,0),('896b73a4-b9fb-1775-2d32-5097f56304eb','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','import','ATRIX_CustomProspects','module',90,1),('8b81f1da-b41c-05ed-8904-508417a61e9a','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','EmailMarketing','module',90,0),('8d1104f5-359f-c4d6-44ce-52c0655a1b65','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Contacts','module',90,0),('8da70191-0d5f-a6c7-6893-52c065951e85','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','jjwg_Maps','module',89,0),('8e148451-db1e-db4d-8eeb-52c065411ef2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','jjwg_Maps','module',90,0),('8e73bf33-5c54-2d06-41ab-52c0659633d5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','jjwg_Maps','module',90,0),('8ed0e50c-696b-c56b-12e6-52c065970461','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','jjwg_Maps','module',90,0),('8f53fb86-ff7a-112f-fb3b-52c03fd57fee','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','ProspectLists','module',89,0),('8f68d8a8-5ceb-1a13-b265-52c0656e4dc1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','jjwg_Maps','module',90,0),('8f999722-e1a8-50b2-e295-52c03f2a450a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','ProspectLists','module',90,0),('8fc94eec-47b6-d062-8019-52c0650024c1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','jjwg_Maps','module',90,0),('8fd202d6-dc32-9b76-fff3-52c03f43c10d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','ProspectLists','module',90,0),('8fddd51f-dc3f-f0a3-aa79-52c03f8b8cc7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Accounts','module',89,0),('90092c4e-8a9a-5d76-9676-52c03fd84ac4','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','ProspectLists','module',90,0),('902923f0-d725-72cf-ad36-52c03f96dd78','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Accounts','module',90,0),('90293ba5-1ede-a302-0745-52c0656f5650','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','jjwg_Maps','module',90,0),('9040b20e-ae97-9f85-e5f0-52c03fe492de','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','ProspectLists','module',90,0),('906b4c9a-c9bb-29d4-2359-52c03f8e8973','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Accounts','module',90,0),('907bb304-a45d-bdfa-ae15-52c03feddad9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','ProspectLists','module',90,0),('90869325-9ef8-2721-175b-52c065caa1df','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','jjwg_Maps','module',90,0),('908bcb35-bf8c-3040-c573-508417535df8','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Cases','module',90,0),('90a7e15f-5a3e-4b36-af95-52c03f5f57b6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Accounts','module',90,0),('90becdd9-b4c9-f36a-1c66-52c03f59a36f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','ProspectLists','module',90,0),('90f590bc-064a-e032-3035-52c03ff6fb53','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Accounts','module',90,0),('90ffa452-8f5f-3ae0-a2fc-52c03f4ae2ee','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','ProspectLists','module',90,0),('912eb93d-930e-8cd4-b450-52c03feeee92','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Accounts','module',90,0),('91686e27-3a9b-bf36-994b-52c03f0248ca','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Accounts','module',90,0),('91f0fbcc-2468-db67-eb8a-52c03f7f3482','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Accounts','module',90,0),('923d0964-2603-9839-e560-52c065ea300c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Contacts','module',90,0),('92b203c5-c9fe-ede4-3d69-52c03f1e04a0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','jjwg_Markers','module',89,0),('92f30765-6557-ff22-fddb-50841798e3b5','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Documents','module',90,0),('9396fc91-722b-0a55-0a82-508417822ca0','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Calls','module',90,0),('93974fd9-c0fe-40d6-5f13-50841701568d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Notes','module',90,0),('9407930a-e246-e177-bfe3-50841c517df6','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','import','KReports','module',90,1),('9497002f-5288-cac6-e21b-50841723685e','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','EmailMarketing','module',90,0),('9563001d-a5eb-4836-4fa7-508417fc14e4','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Accounts','module',90,0),('959688ec-63d8-009d-fcf0-508417bfb512','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','ProspectLists','module',89,0),('9667ce29-2798-7a14-c978-508417fb44b8','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Project','module',90,0),('966ae054-c585-2207-9c80-50841713108d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Users','module',90,0),('970e0e6f-228d-0a23-ed0d-52c03f53881d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','jjwg_Markers','module',90,0),('97720d0f-cc48-8c82-5cbb-52c0654fb956','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Contacts','module',90,0),('98a278b5-ec71-5635-75f6-50841793aed7','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Leads','module',90,0),('98fd875e-bbe0-2c71-fb5c-508417280dda','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Notes','module',89,0),('98ff2d4f-130e-2f24-2c83-50841781b1f3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Meetings','module',90,0),('99096555-60ac-c5f6-4358-508417814e13','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Accounts','module',90,0),('9ba15553-cf0c-fecc-ee39-5084178df947','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','EAPM','module',90,0),('9bdc06e1-1297-60a4-7edb-5084175b8621','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Bugs','module',90,0),('9c520e84-a8ae-d15c-7547-52c0652c0779','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Contacts','module',90,0),('9d7f0372-4bba-84b0-82c9-52c03fb304c2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','jjwg_Markers','module',90,0),('9e92838c-7c8e-cfef-e238-52c065821c83','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Bugs','module',89,0),('9f0da19e-2042-e493-6285-52c065548ce8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Bugs','module',90,0),('9f5f3636-e0fa-39b3-fce5-52c065964c35','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Bugs','module',90,0),('9f6b007e-03a7-3422-36ad-52c03f288042','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','jjwg_Address_Cache','module',89,0),('9fb4718a-704a-cc26-b747-52c03f1675a0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','jjwg_Address_Cache','module',90,0),('9fc96f4e-9bfc-7ad5-8178-52c065f8e951','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Bugs','module',90,0),('9ff979b7-afbc-c49e-0b7e-52c03f756c13','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','jjwg_Address_Cache','module',90,0),('a0217f21-859d-6e92-9daa-52c0655cffed','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Bugs','module',90,0),('a030f7c3-68ee-2838-7be7-52c03fc95ef2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','jjwg_Address_Cache','module',90,0),('a0691061-449c-f6e7-fcf8-52c03f114680','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','jjwg_Address_Cache','module',90,0),('a0739d12-da2d-ebc0-4a7e-52c065ff73f3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Bugs','module',90,0),('a0a1c3e8-5383-c0f9-a9a0-52c03fd3a79d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','jjwg_Address_Cache','module',90,0),('a0c65639-cd3b-091d-8c6b-52c06502ba08','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Bugs','module',90,0),('a0dbc7d3-8590-5a7b-f76f-52c03f29bcd5','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','jjwg_Address_Cache','module',90,0),('a117c79e-683a-2131-cefd-52c06584f40e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Bugs','module',90,0),('a11e48c7-c3e7-fa89-d657-52c03fa0954a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','jjwg_Address_Cache','module',90,0),('a11ea93a-cc52-2625-600a-52c03f278b1a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','FP_Event_Locations','module',89,0),('a1678f68-78bb-461a-162a-52c03f5525ab','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','FP_Event_Locations','module',90,0),('a16d0a99-c334-675d-5057-52c0654fa448','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Contacts','module',90,0),('a16e0296-2e09-bc3e-d1c9-52c03f5fca61','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','jjwg_Markers','module',90,0),('a1a183fd-5bef-d8fe-7a0b-5097f56ed6a6','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','list','ATRIX_CustomProspects','module',90,1),('a1a4456d-893d-a8db-e171-52c03fb7ebec','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','FP_Event_Locations','module',90,0),('a1e52fbe-1af5-ab3e-425a-52c03f006317','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','FP_Event_Locations','module',90,0),('a21fd495-836b-9d9c-dac6-52c03f84e965','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','FP_Event_Locations','module',90,0),('a26142b0-dc05-8dda-ba16-52c03f987336','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','FP_Event_Locations','module',90,0),('a2ce95bf-28d8-e85e-6ba3-52c03fc43e2d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','FP_Event_Locations','module',90,0),('a314b216-081f-dfce-1570-52c03fc15500','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','FP_Event_Locations','module',90,0),('a3d3dc07-3263-cc82-2a68-508417754aec','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Notes','module',90,0),('a45bcb26-0d41-ae11-5b08-50841ce8c004','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','export','KReports','module',90,1),('a548cff2-390a-82da-f9a2-52c0655e33c2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','SecurityGroups','module',89,0),('a56f0877-7c95-eea7-0af9-52c03f21fe4b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','jjwg_Markers','module',90,0),('a5cc104a-bcc0-39c3-0fe4-52c065b5485a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','SecurityGroups','module',90,0),('a631b232-5762-9e44-f87b-52c0652f01f3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','SecurityGroups','module',90,0),('a68dd1ce-7020-711b-d9fd-50841746581e','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Calls','module',90,0),('a6ad4177-b639-8f3a-880d-508417b363f4','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Campaigns','module',90,0),('a6eaad6c-1ff6-05f1-ed0c-52c065057e67','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','SecurityGroups','module',90,0),('a74cbdf5-cce2-d496-5fc4-52c0657c44c5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','SecurityGroups','module',90,0),('a7e181b8-e7ec-d225-bb74-52c065ce5bb9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','SecurityGroups','module',90,0),('a8414cfa-6145-789d-b9d1-52c03f835f41','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Project','module',89,0),('a843d71a-e34c-f1cc-1b0f-52c0656d87b3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','SecurityGroups','module',90,0),('a8896694-29a5-ece7-4d75-52c03fb935f0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Project','module',90,0),('a8a92601-a2c9-89dd-146d-52c065f974c6','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','SecurityGroups','module',90,0),('a8cef7ce-8b0d-9c27-8274-52c03f782536','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Project','module',90,0),('a9104b1f-9674-4faa-917d-52c03fe83a32','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Project','module',90,0),('a9417947-ea2f-33ac-51bc-50841752b216','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','EmailTemplates','module',89,0),('a953f692-1a15-b0e5-8d92-52c03ff5dec9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Project','module',90,0),('a96c31dc-da9e-fb00-bbfb-508417012b44','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Project','module',90,0),('a9920336-388e-8e58-ada5-52c03f0f7221','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Project','module',90,0),('a9d9d22a-a7d6-5681-f236-52c03fc4f9ab','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Project','module',90,0),('aa19eef1-4e6e-66c7-75c4-52c03f87a43c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Project','module',90,0),('aa460e17-2083-6957-2547-52c03f340d0f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','jjwg_Markers','module',90,0),('aa96227c-cecf-fb0b-bade-52c03f592203','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Calls','module',89,0),('aae49d05-3064-1fa3-b3e4-52c03f0eb9ac','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Calls','module',90,0),('ab240ecf-53d3-056c-c3d4-52c03fa85e7b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Calls','module',90,0),('ab645a23-77f6-6509-2fbc-52c03fb275da','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Calls','module',90,0),('aba327cb-4fc6-05d1-3e6d-52c03f787c73','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Calls','module',90,0),('abe97476-237d-c8f4-233c-52c03f5b7ee7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Calls','module',90,0),('abf5c536-fb7b-d72c-0dbf-508417ca7096','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Meetings','module',90,0),('abfbd29d-5bbd-62a1-958b-508417af88ae','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Emails','module',90,0),('ac002abe-d897-a4ae-7c7f-50841766e66b','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Notes','module',90,0),('ac0330dd-f514-1f11-addf-508417b9d5fa','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Accounts','module',90,0),('ac273fea-a23e-b670-5ff2-52c03fbe2358','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Calls','module',90,0),('ac626674-ecb6-72ce-bb18-52c03fcfc7a3','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Calls','module',90,0),('ae6c0435-ccf7-d910-7840-52c03f9aa65f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','jjwg_Markers','module',90,0),('aea2b53a-9c13-ab7d-c3f5-5084178d4334','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','EAPM','module',90,0),('aedd7839-ef12-f786-00c3-5084172ddc14','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Users','module',90,0),('af00741d-5dba-9149-4dbb-52c065df7bad','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','EmailTemplates','module',89,0),('af76835a-569c-ea94-06a5-52c065133b30','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','EmailTemplates','module',90,0),('afd3ad4f-2a20-502f-73f1-52c0655fbb89','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','EmailTemplates','module',90,0),('aff9fdb8-cb55-8992-0170-52c065e8ff54','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOR_Reports','module',89,0),('b02e1f54-4977-4716-8aa1-52c06583a0db','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','EmailTemplates','module',90,0),('b0605caf-1027-9e3a-ac5a-52c065a249aa','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOR_Reports','module',90,0),('b0905b3d-903c-40a3-cf97-52c065d7b04c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','EmailTemplates','module',90,0),('b0b986fc-98d3-0587-d138-52c065ab2aa1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOR_Reports','module',90,0),('b0eea5a7-1b4d-142e-67f6-52c0654967ac','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','FP_Event_Locations','module',89,0),('b0f15739-b449-f4f6-a8b1-52beb4ec18b0','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','access','KReports','module',89,1),('b0f55ea2-7ff6-6f22-1908-52c0655044f0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','EmailTemplates','module',90,0),('b11f032c-4a01-7eb6-056f-52c065100375','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOR_Reports','module',90,0),('b15343e3-0ee3-dd5b-137d-52c06521d245','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','EmailTemplates','module',90,0),('b16433c2-d058-efe4-be63-52c065dc14b5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','FP_Event_Locations','module',90,0),('b18077cd-3087-e9b7-d4b1-52c0658f7324','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOR_Reports','module',90,0),('b19db6d9-a3e7-e7a2-87fb-508417d67c30','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Contacts','module',89,0),('b1aa0a20-2acc-ea0e-c27b-52c065f6fb2f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','EmailTemplates','module',90,0),('b1bd6847-4362-7d33-b91c-52c06531c9a5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','FP_Event_Locations','module',90,0),('b1d9ef19-def5-afd1-0a79-52c065f1c058','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOR_Reports','module',90,0),('b21f1198-fc28-0508-043e-52c065b17723','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','FP_Event_Locations','module',90,0),('b23fac9c-0291-b7d8-2f7b-52c06539ac4b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOR_Reports','module',90,0),('b27b21bd-8bce-c385-c4c9-52c06584379e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','FP_Event_Locations','module',90,0),('b29e771d-bcbf-05ff-d884-52c065b9abf8','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOR_Reports','module',90,0),('b2a00000-cd4c-f75b-8277-52c03ff394a9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','jjwg_Markers','module',90,0),('b2d54549-16b7-80e7-4316-52c0659bb241','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','FP_Event_Locations','module',90,0),('b32f571d-12bd-1ea0-ebb8-52c065b5d6a9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','FP_Event_Locations','module',90,0),('b33004c4-e822-43d1-8c71-52c03f639de7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','EmailMarketing','module',90,0),('b387e6b3-aad6-12e3-629e-52c065e355f0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','FP_Event_Locations','module',90,0),('b3cecee1-3662-e91e-616d-5084173bb632','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Cases','module',90,0),('b585d356-ef1a-c107-0310-52c065f2aca0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Documents','module',89,0),('b5eae07e-74d6-6739-2e7b-52c065e412e5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Documents','module',90,0),('b6422dbd-91eb-ef7c-210f-52c06533a233','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Documents','module',90,0),('b6c9d367-8a6f-d707-e917-52c065484150','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Documents','module',90,0),('b6db36f0-307d-3f97-1cfa-508417c04582','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','EmailTemplates','module',90,0),('b6f30c47-7093-837d-c300-508417a71dec','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','ProspectLists','module',90,0),('b72b86b9-6525-9f6e-793a-52c065718159','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Documents','module',90,0),('b74db651-f6c6-b708-e5f6-5084179c62d5','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Leads','module',90,0),('b75cb33c-c970-2960-6cc9-50841c8bda02','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','massupdate','KReports','module',90,1),('b7935c92-adeb-5452-6dbe-52c065eb9f8d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Documents','module',90,0),('b7d13eb9-d63a-d185-a866-52c065af13c2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOS_PDF_Templates','module',89,0),('b7f4a869-a6d1-075f-f245-52c0657aa729','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Documents','module',90,0),('b835ddeb-e9cd-8965-28aa-52c065b79265','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOS_PDF_Templates','module',90,0),('b8575329-5dd4-4e0b-e172-52c065692dbd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Documents','module',90,0),('b881f184-4954-26f1-bc72-52c03f2a8bce','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Bugs','module',89,0),('b88f93b9-4971-d087-04d9-52c065576e94','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOS_PDF_Templates','module',90,0),('b8c7e0ac-dc2a-3472-bc31-52c03fabecbc','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Bugs','module',90,0),('b8f2d8ec-630f-2ef6-94a6-52c06539cbb9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOS_PDF_Templates','module',90,0),('b90856a0-06a7-9281-0e45-52c03f5986ea','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Bugs','module',90,0),('b945d382-5a44-9b76-2a8a-52c03ff94739','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Bugs','module',90,0),('b9782333-b88a-61f2-1fed-52c0656b47de','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOS_PDF_Templates','module',90,0),('b9809950-95a8-1909-8ef2-52c03f8cf806','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Bugs','module',90,0),('b9bb0647-1225-3cfe-4510-52c03f696b1a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOS_Product_Categories','module',89,0),('b9bbf213-a8cc-5e06-23e0-52c03fca8030','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Bugs','module',90,0),('b9d59588-bf9a-40f9-fae3-52c065ca76e3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOS_PDF_Templates','module',90,0),('b9f8b754-986a-5d03-d0cd-52c03f79dcbf','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Bugs','module',90,0),('b9ff61c7-55c0-0dd5-c54d-52c03ffffe2d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOS_Product_Categories','module',90,0),('ba30453f-55f1-6639-ce81-52c0655a96d4','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOS_PDF_Templates','module',90,0),('ba39efaf-932f-0695-a8bb-52c03f62a046','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOS_Product_Categories','module',90,0),('ba56fa16-7f12-0736-74d7-52c03f2ceff8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Bugs','module',90,0),('ba90e007-c15b-d5aa-361b-52c03f68b5a4','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOS_Product_Categories','module',90,0),('ba9c8bf2-8721-fc91-b190-52c065c16ee7','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOS_PDF_Templates','module',90,0),('bac98964-3797-1fc4-d3ef-52c03f8180d6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOS_Product_Categories','module',90,0),('bb060803-dbcc-e974-04c5-52c03f45450a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOS_Product_Categories','module',90,0),('bb434529-e4e7-3ee2-1db5-52c03f42596c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOS_Product_Categories','module',90,0),('bb81cb0f-67f7-840d-208a-52c03ff1f298','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOS_Product_Categories','module',90,0),('bc4e7f9a-dd04-ae7a-ffc4-50841771a1e0','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Accounts','module',90,0),('bc566de2-23f9-5e11-fe58-50841718ad3b','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','ProjectTask','module',89,0),('bc60a64c-f4ab-a864-4d7d-52c0658de402','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','jjwg_Markers','module',89,0),('bcab7e40-f185-957e-66b2-52c0658a5d67','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOS_Quotes','module',89,0),('bcbb2ebc-607a-0480-c0b6-52beb455c391','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','view','KReports','module',90,1),('bcd9791f-0819-e80f-6e05-52c0656a8644','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','jjwg_Markers','module',90,0),('bce81d81-74f8-639c-22a5-508417e9959a','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Bugs','module',90,0),('bcf8d637-f9b8-da70-b28f-508417495eb1','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Emails','module',90,0),('bd00f750-fca3-2720-f168-52beb4d6d45c','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','list','KReports','module',90,1),('bd13a27d-823e-3de5-0ae4-52c06571d73a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOS_Quotes','module',90,0),('bd1ec629-fc91-b37c-ce45-5097f58a5eaf','2012-11-05 17:20:29','2013-04-12 15:40:02','1','1','access','ATRIX_CustomProspects','module',89,1),('bd338cee-d376-cc89-e913-52c065871a5c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','jjwg_Markers','module',90,0),('bd41a454-ff20-79e9-336c-52beb4f46c91','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','edit','KReports','module',90,1),('bd789f6f-c0f2-e290-80b5-52c0651a6f4b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOS_Quotes','module',90,0),('bd7b41a7-e4b0-b04b-c289-52beb414ae31','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','delete','KReports','module',90,1),('bd94a069-2cef-a22f-c35e-52c0650f58b7','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','jjwg_Markers','module',90,0),('bdb51ecb-54a2-f035-7b56-52beb412e338','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','import','KReports','module',90,1),('bdd665b0-32d8-06f3-155c-52c0655c6b1a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOS_Quotes','module',90,0),('bdef0c8a-48a8-113a-f185-52beb4a70a10','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','export','KReports','module',90,1),('be00c572-eb7f-a3a7-8db2-52c065a350eb','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','jjwg_Markers','module',90,0),('be377f51-9330-92a3-117f-52beb434ba4a','2013-12-28 11:23:12','2013-12-28 11:26:13','1','1','massupdate','KReports','module',90,1),('be3fe059-dd0b-e7e1-dcf2-52c065e6cdf3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOS_Quotes','module',90,0),('be6317b6-6968-aec6-e231-52c0658cdc5b','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','jjwg_Markers','module',90,0),('be67c778-470d-cd22-6437-52c03fa64f87','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','jjwg_Maps','module',89,0),('bea66277-e993-1741-60ea-52c065ada5ad','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOS_Quotes','module',90,0),('beb0bf4d-9ef3-2deb-12da-52c03f544b2d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','jjwg_Maps','module',90,0),('bec2d0f4-2c8b-7058-4f53-52c065ea99e5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','jjwg_Markers','module',90,0),('bef018ce-7644-72f1-6760-52c03f64ba5b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','jjwg_Maps','module',90,0),('bf1e23af-ad97-edc2-a48d-508417a06e1f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Users','module',90,0),('bf211ae8-0682-1efe-c7c1-52c065b840ac','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','jjwg_Markers','module',90,0),('bf26088e-7a78-55b9-3b17-508417fd40df','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','EmailTemplates','module',90,0),('bf2af23e-5558-8d40-20bf-52c03fb0116e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','jjwg_Maps','module',90,0),('bf2b6a8b-07bb-fade-b9a3-52c065b9ad46','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOS_Quotes','module',90,0),('bf72bc6d-14dc-b5dc-883d-52c03ffae019','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','jjwg_Maps','module',90,0),('bf8857a7-971b-d7ca-048b-52c06531f29a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOS_Quotes','module',90,0),('bfaba5dc-3ec5-53ea-c96e-52c03f1880b7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','jjwg_Maps','module',90,0),('bfe7602c-5924-ecc7-95bf-52c03f5cc48b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','jjwg_Maps','module',90,0),('c0278913-c843-1094-5611-52c03f533f50','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','jjwg_Maps','module',90,0),('c06305bf-1b50-592c-ce22-5084175071ec','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Prospects','module',90,0),('c19bce6b-0135-3b8d-f0c7-50841793060a','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','EAPM','module',90,0),('c1a83c11-4651-71e1-338b-508417631ebb','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Documents','module',90,0),('c1b8ab61-5d43-742f-8f3a-508417019f6c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Contacts','module',90,0),('c39492f4-5b9b-5a2b-1bdc-52c065e07fb3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','ProspectLists','module',89,0),('c41b279c-12d6-b805-23ff-52c0658c3f09','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','ProspectLists','module',90,0),('c467b506-c8ca-f49e-a94d-5084170f1a3e','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','EmailTemplates','module',90,0),('c476f5ce-2c56-14a8-9efb-52c0656c12ad','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','ProspectLists','module',90,0),('c4a18488-b5ec-8695-af70-5084178fdf9f','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Campaigns','module',90,0),('c4de045d-c662-c3cf-f355-52c0651b557d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','ProspectLists','module',90,0),('c533ad60-4e0a-8a93-258e-52c065f8ce20','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','ProspectLists','module',90,0),('c5883dee-14ee-f52c-455e-52c065bd3bb0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','ProspectLists','module',90,0),('c5db1365-b568-8eb3-6bee-52c065de0965','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','ProspectLists','module',90,0),('c62cd8f8-b8c6-4c97-6fa5-52c0656eba00','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','ProspectLists','module',90,0),('c8ab9667-9fde-6c9c-c908-508417f687f1','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Project','module',90,0),('c98b8e50-d2cd-dd9f-6b08-52c03fb2ec11','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Prospects','module',89,0),('c9d27ed5-641f-0c45-4c44-50841713be08','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Opportunities','module',89,0),('c9de9591-d946-8b4d-dfdb-52c03fe1394f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Prospects','module',90,0),('ca1e13b4-9cf6-cf5a-a862-52c03fca6827','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Prospects','module',90,0),('ca57bf26-c9c7-5821-23f8-52c03fa6d2f1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Prospects','module',90,0),('cabd0ba3-92d9-9eaa-07c7-52c03f49a3ad','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Prospects','module',90,0),('cb07119e-9f99-05d5-7169-52c03fee7106','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Prospects','module',90,0),('cb3e0f7c-7769-f19e-b3b2-52c03fbcca4e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Prospects','module',90,0),('cb75a1f6-f8a9-7cfc-24f1-52c03fd6b1c8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Prospects','module',90,0),('cb7c5a73-0075-6e95-248d-52c065df9399','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Notes','module',89,0),('cbe861fc-9bad-79e1-b785-52c065249acf','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Notes','module',90,0),('cc4b6b1f-3f4a-6dd4-2224-52c065582c3d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Notes','module',90,0),('cc9a21f7-a972-85b6-4402-508417f43d36','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','Prospects','module',89,0),('cca5f68f-24ec-23fb-f3e5-52c065abda33','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Notes','module',90,0),('cca66943-d13a-daa9-39e8-508417733e19','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','ProjectTask','module',90,0),('ccff1d94-bc42-d5da-bd19-52c06555b892','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Notes','module',90,0),('cd55a644-d087-250f-dc18-52c0654db1d6','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Notes','module',90,0),('cdc30a0d-d02c-3c49-5399-52c065484a97','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Notes','module',90,0),('ce1d7618-2fa7-8c20-a0fa-52c065ee3072','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Notes','module',90,0),('cf591bfd-f5cd-0fa5-7c89-508417aa091b','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','ProspectLists','module',90,0),('cf98d5a0-4e32-c3cd-834f-52c0654ec3eb','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Users','module',89,0),('cff07ada-fce9-0f97-6a0a-508417970149','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Cases','module',90,0),('cff9b592-6122-132c-61b8-52c0657c2af2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Users','module',90,0),('d04d049a-a646-cd60-bebb-52c0653309a0','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Users','module',90,0),('d0a04f95-dc86-5340-cccf-52c06597b558','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Users','module',90,0),('d0f462df-fcc4-c6bc-54d2-52c065d7541e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Users','module',90,0),('d143e157-8b2c-2d72-ffeb-52c0654fc63c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Users','module',90,0),('d15bdaa1-5d4c-c678-3c5f-52c03fc4f0ae','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','ProjectTask','module',89,0),('d1933fe7-8858-da6a-cd55-52c065152708','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Users','module',90,0),('d1a6ac31-333b-1c1f-74c2-52c03f76a604','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','ProjectTask','module',90,0),('d1e2c082-2522-f3de-a9a3-52c0652cc51d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Users','module',90,0),('d1eccea2-4db3-2e11-d1d0-52c03f32b2da','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','ProjectTask','module',90,0),('d201cc6f-8c1d-c99f-bf9a-5084179d1823','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Contacts','module',90,0),('d22a4778-1470-a279-380a-52c03f90ef89','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','ProjectTask','module',90,0),('d2694cde-a815-ae9e-a984-52c03f9112d5','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','ProjectTask','module',90,0),('d2cd9156-dc3c-03ad-470a-52c03f54ddfa','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','ProjectTask','module',90,0),('d3161998-4227-b4cb-d56a-52c03f0abd2f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','ProjectTask','module',90,0),('d3520e17-029c-1c23-28ee-52c03ffd615f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','ProjectTask','module',90,0),('d7093924-8485-44ea-6727-508417eb8d11','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Leads','module',90,0),('d756454d-0037-9687-6c19-5084177f9c47','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Tasks','module',90,0),('d75b9353-64d4-e910-c6a4-508417023c51','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Documents','module',90,0),('d7641ebf-74a3-daea-b5de-508417d95735','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Emails','module',90,0),('da1ef3b6-8596-3aee-ae98-5084176072bd','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Opportunities','module',90,0),('da25ff4c-1f22-e865-4f2a-508417789d90','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Accounts','module',90,0),('da35481a-738b-5497-da8a-50841793d3ef','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Campaigns','module',90,0),('da3bede4-12f5-86c2-87aa-5084176abb49','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Project','module',90,0),('dce66a10-c772-b9eb-49ad-508417f5cb9c','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','view','Prospects','module',90,0),('dceb2523-ca41-9242-d2dd-508417cdef50','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','ProjectTask','module',90,0),('dda1bf9a-a0ae-113e-05ce-52c03f4df7c7','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOW_WorkFlow','module',89,0),('ddf21e1d-4028-9ac4-93bf-52c03f751446','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOW_WorkFlow','module',90,0),('de3c0f35-bd26-a2ae-5adf-52c03fff25cb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOW_WorkFlow','module',90,0),('de8638bf-8a9c-14ff-8337-52c03fe2006e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOW_WorkFlow','module',90,0),('dec77f9b-f876-7d13-21bc-52c03f65c0a0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOW_WorkFlow','module',90,0),('df1588b5-ea4b-796e-d24f-52c03fe0d747','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOW_WorkFlow','module',90,0),('df603087-dab3-cfa3-5f92-52c03f944af2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOW_WorkFlow','module',90,0),('df8dab5e-ab38-2fc7-7983-508417b3e21d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','EmailTemplates','module',90,0),('dfb589d3-a743-b5b4-52c5-52c03fdde48a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOW_WorkFlow','module',90,0),('e2480b7d-e398-73e4-4868-508417bb5e20','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Contacts','module',90,0),('e2ab4c01-d97c-37bd-b67d-52c03ff5782c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOP_Case_Events','module',89,0),('e2f16837-102c-8112-26bc-52c03f9e8285','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOP_Case_Events','module',90,0),('e32b30ac-fa9e-7ab5-faef-52c03f88cc9a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOP_Case_Events','module',90,0),('e363c6db-cff6-121d-56dc-52c03f9ebbc2','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOP_Case_Events','module',90,0),('e39b8d0b-61af-bfed-4ec7-52c03faf7441','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOP_Case_Events','module',90,0),('e3d4ecdb-57ae-b899-b0ed-52c03f5c36a0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOP_Case_Events','module',90,0),('e40d10a3-c169-dc4b-715d-52c03f89e192','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOP_Case_Events','module',90,0),('e45085b0-c439-e270-3b1c-52c03f6ce764','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOP_Case_Events','module',90,0),('e57f040d-94b4-b774-b260-50841cd6805d','2012-10-21 16:00:51','2013-12-28 11:22:39','1','1','list','KReports','module',90,1),('e68ef0ee-b702-38e0-ee84-52c03ffaf421','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOS_Contracts','module',89,0),('e69a06ae-9f8e-d67e-7fbf-52c03fc96eda','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Emails','module',89,0),('e6d5faa3-188d-9fc3-a2ac-52c03fc23d40','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOS_Contracts','module',90,0),('e6e80f85-1871-5584-3abf-52c03f4664ea','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Emails','module',90,0),('e71ad9ef-5a9e-ab76-a023-52c03fe2ae3a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOS_Contracts','module',90,0),('e7262779-68bc-6c5c-e6d8-52c03fd69db1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Emails','module',90,0),('e753ed83-0a92-7f84-2d8b-52c03f732690','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOS_Contracts','module',90,0),('e7605026-b807-087f-0803-52c03fefe1f1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Emails','module',90,0),('e78cf3fa-90fe-b2e3-4cc4-52c03f809ab6','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOS_Contracts','module',90,0),('e799132e-95ac-c95d-66f5-52c03fb4fb15','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Emails','module',90,0),('e7c66493-bbfd-10fc-b77f-52c03fc4d13f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOS_Contracts','module',90,0),('e7d5c4d1-c636-2b23-41f0-52c03fc6810a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Emails','module',90,0),('e8029358-d8a2-0023-5002-52c03f52c077','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOS_Contracts','module',90,0),('e80d3e58-e0b4-68a3-b008-52c03fba84bc','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Emails','module',90,0),('e844cf77-3e81-5f98-9e1b-52c03fd81764','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOS_Contracts','module',90,0),('e8450765-5d0a-d3c6-7204-52c03fda043a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Emails','module',90,0),('e9e8e66d-fb76-01aa-623c-52c03fae0aa9','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','AOS_Quotes','module',89,0),('ea53d1d7-7911-6463-3222-52c03f07260e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','AOS_Quotes','module',90,0),('ea56c9b0-75ba-2049-d85c-5084170381b3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','import','Documents','module',90,0),('ea5b423c-cde7-5957-787f-52c03fee7bae','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Opportunities','module',89,0),('ea5d4834-4e10-aa3a-3aa9-5084179f6050','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','massupdate','Emails','module',90,0),('ea68ec9e-0b48-1b2b-f5f4-50841789a721','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Accounts','module',90,0),('ea79ff69-41f6-8f6f-dd75-508417b2cbeb','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','Campaigns','module',90,0),('ea7a81f2-9293-1c60-284b-508417a8b8a3','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','ProspectLists','module',90,0),('ea92cfc4-89d0-156c-25a1-52c03f09efd0','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','AOS_Quotes','module',90,0),('eaa264fc-65bc-518f-f059-52c03fd4e7d1','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Opportunities','module',90,0),('eac6f5d1-05d6-18d4-49f8-52c0655e385e','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','jjwg_Areas','module',89,0),('ead08b69-13b1-fc6f-717c-52c03f7fa5e8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','AOS_Quotes','module',90,0),('eadd200c-24d5-a96d-f2ef-52c03f4cf543','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Opportunities','module',90,0),('eb15bd50-3874-37cc-f3f3-52c03f5684cb','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','AOS_Quotes','module',90,0),('eb162102-f17c-8384-97e1-52c03fbfd41b','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Opportunities','module',90,0),('eb230dea-46a4-2b39-cb94-50841786be51','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','edit','Opportunities','module',90,0),('eb365bc2-e549-c680-c003-52c06505531c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','jjwg_Areas','module',90,0),('eb5500ef-85f4-4c26-80fe-52c03f623438','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','AOS_Quotes','module',90,0),('eb6014bd-39fe-b171-79d5-52c03f4d937c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Opportunities','module',90,0),('eb95b424-7f57-6a25-5a6c-52c03f82c1b4','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','AOS_Quotes','module',90,0),('eb98d74a-070d-0b4d-c785-52c065717116','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','jjwg_Areas','module',90,0),('eb9c8ef9-2083-2d2a-3618-52c03f1080c5','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Opportunities','module',90,0),('ebd4d82b-ddd4-0bbb-3bb1-52c03f78ca3f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Opportunities','module',90,0),('ebe038f4-0c3b-4d4a-c0f2-52c065cd1194','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','AOS_Product_Categories','module',89,0),('ebe9db7a-afc7-1000-dad3-52c03f1ad151','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','AOS_Quotes','module',90,0),('ebfe44e7-47b3-abf6-c40b-52c0654b44b4','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','jjwg_Areas','module',90,0),('ec0c49f4-5698-fb41-1c4f-52c03f10d9c3','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','massupdate','Opportunities','module',90,0),('ec48bc76-1026-4993-5654-52c065456347','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','AOS_Product_Categories','module',90,0),('ec5dbed3-6d9e-6717-ea44-52c0658e3ad2','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','jjwg_Areas','module',90,0),('ecaeeada-71ee-dbf6-fa29-52c0657fdf0d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','AOS_Product_Categories','module',90,0),('ecbe424e-bd27-7355-dd58-52c06595a163','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','jjwg_Areas','module',90,0),('ed1a14e0-cd02-0e72-e6fe-508417f8fa47','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','delete','EmailTemplates','module',90,0),('ed1e61f9-b7c0-72a3-47ea-508417b308bf','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','access','EmailMarketing','module',89,0),('ed2703cd-d585-a4f0-7595-52c0650deea9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','jjwg_Areas','module',90,0),('ed2a14db-4593-8531-0f9a-508417cfc25d','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Prospects','module',90,0),('ed422855-71a2-487e-8a55-52c065906cd9','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','AOS_Product_Categories','module',90,0),('ed800672-8ae9-5681-49d3-52c06575eee1','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','jjwg_Areas','module',90,0),('eda80a48-a901-dab7-c54a-52c0658e8b3d','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','AOS_Product_Categories','module',90,0),('ee0a586f-e311-001e-5a04-52c065adecc6','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','AOS_Product_Categories','module',90,0),('ee6f992e-ab3e-9c4e-3179-52c065e60afd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','access','Prospects','module',89,0),('ee740c40-6676-6659-dff5-52c0653720bd','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','AOS_Product_Categories','module',90,0),('eed49cd2-848a-1e4f-dae7-52c065d941c3','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','AOS_Product_Categories','module',90,0),('eee5f7ab-603d-2086-bbed-52c065a2fe68','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','view','Prospects','module',90,0),('ef30067e-1d9b-e2d2-d4de-52c03fb02346','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','EmailMarketing','module',90,0),('ef413b91-28d6-2c65-098d-52c065bace3f','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','list','Prospects','module',90,0),('ef9a6c8d-1e88-14fc-daa2-52c0651da0d5','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','edit','Prospects','module',90,0),('efc783a1-02ec-8eca-c756-508417bc0af0','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Tasks','module',90,0),('eff18e2f-97cd-40a9-622b-52c065f5b346','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','delete','Prospects','module',90,0),('f043dee3-54db-6e03-321f-52c065af5830','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','import','Prospects','module',90,0),('f0979b1e-cddd-0fd5-d8c7-52c06513996c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','export','Prospects','module',90,0),('f0ea9f88-ee4c-7615-37d1-52c065d55209','2013-12-29 18:10:56','2013-12-29 18:10:56','1','','massupdate','Prospects','module',90,0),('f1f45fc8-ba7f-8539-3f02-52c03f22718a','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','access','Leads','module',89,0),('f2373a24-3c0e-58fc-aa38-5084176239ca','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','export','Cases','module',90,0),('f286c93a-e6db-0a7a-0ce2-52c03f59374c','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','view','Leads','module',90,0),('f28d0256-97d6-6657-aecb-50841787f21b','2012-10-21 15:40:03','2012-10-21 15:40:03','1','','list','Opportunities','module',90,0),('f2cd737b-2a77-0f63-d163-52c03f6422ff','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','list','Leads','module',90,0),('f31ca474-6e66-2b36-d579-52c03ff42cc8','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','edit','Leads','module',90,0),('f3705e91-50d6-589d-5cca-52c03faf1dd4','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','delete','Leads','module',90,0),('f3c591a9-fd08-25fa-cbcc-52c03fe83c8d','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','import','Leads','module',90,0),('f4119e91-3788-1cfe-1c2e-52c03fb5ea13','2013-12-29 15:26:02','2013-12-29 15:26:02','1','','export','Leads','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('1930b2e8-28de-d387-0727-50892776413a','2012-10-25 11:49:08','2012-10-25 11:49:29','1','1','Vendas',NULL,0),('479763d3-92b4-efaa-62b5-509d14cea8ac','2012-11-09 14:33:54','2013-07-17 15:24:22','1','1','Limitado',NULL,0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES ('12617952-6869-3f6c-6a79-509d159523de','479763d3-92b4-efaa-62b5-509d14cea8ac','86031455-8994-e4c7-0d42-508417960f38',0,'2013-07-17 14:37:42',0),('12756743-bcbb-7bac-2917-50892a8d224e','1930b2e8-28de-d387-0727-50892776413a','b75cb33c-c970-2960-6cc9-50841c8bda02',0,'2013-12-28 11:22:39',1),('150dae3b-c5b7-015a-d894-509d15ffd632','479763d3-92b4-efaa-62b5-509d14cea8ac','9667ce29-2798-7a14-c978-508417fb44b8',0,'2013-07-17 14:37:42',0),('151d01f4-2fec-fde8-d5a8-509d1560435b','479763d3-92b4-efaa-62b5-509d14cea8ac','bf26088e-7a78-55b9-3b17-508417fd40df',0,'2013-07-17 14:37:42',0),('151d67a1-f5df-d6bf-654b-509d150e3a5a','479763d3-92b4-efaa-62b5-509d14cea8ac','d7093924-8485-44ea-6727-508417eb8d11',0,'2013-07-17 14:37:42',0),('1520c824-55d2-4aa7-92c4-50892ab8c394','1930b2e8-28de-d387-0727-50892776413a','a3d3dc07-3263-cc82-2a68-508417754aec',0,'2013-06-20 10:46:08',0),('152f34b0-634d-42b0-356c-509d15d4c37c','479763d3-92b4-efaa-62b5-509d14cea8ac','9396fc91-722b-0a55-0a82-508417822ca0',0,'2013-07-17 14:37:42',0),('17c07504-2c6b-bd03-ab07-509d1533ef18','479763d3-92b4-efaa-62b5-509d14cea8ac','2f4c2c01-0e5d-5709-b7d7-5084178aa098',0,'2013-07-17 14:37:42',0),('17de6b19-e620-a279-ba7e-50892a813ae4','1930b2e8-28de-d387-0727-50892776413a','cca66943-d13a-daa9-39e8-508417733e19',0,'2013-06-20 10:46:08',0),('1a9b86d0-ffdb-62ba-fbd7-509d15f093ed','479763d3-92b4-efaa-62b5-509d14cea8ac','249a9cdd-ef35-ed24-f8a4-5097f54c9092',0,'2013-04-12 15:40:02',1),('1d46a17b-9960-45f9-0c88-50892a2b6a74','1930b2e8-28de-d387-0727-50892776413a','86247452-62f9-03c9-4df8-508417a6232e',0,'2013-06-20 10:46:08',0),('1d46f8eb-ca19-ccd8-8907-509d159fba19','479763d3-92b4-efaa-62b5-509d14cea8ac','9497002f-5288-cac6-e21b-50841723685e',0,'2013-07-17 14:37:42',0),('1d49048e-ca8d-bc62-b2bd-50892aff8339','1930b2e8-28de-d387-0727-50892776413a','2f4c2c01-0e5d-5709-b7d7-5084178aa098',0,'2013-06-20 10:46:08',0),('1d52f4b8-f799-6641-a6dd-50892a88a491','1930b2e8-28de-d387-0727-50892776413a','5a969874-2618-e7e1-d8ec-508417ba4045',0,'2013-06-20 10:46:08',0),('1fe47827-c857-858e-c19b-509d15a09e8a','479763d3-92b4-efaa-62b5-509d14cea8ac','959688ec-63d8-009d-fcf0-508417bfb512',-98,'2013-07-17 14:37:42',0),('2001e59b-24ee-4d03-7776-509d15ee26e9','479763d3-92b4-efaa-62b5-509d14cea8ac','d201cc6f-8c1d-c99f-bf9a-5084179d1823',0,'2013-07-17 14:37:42',0),('200671b1-295f-7a90-81ff-50892aebbd20','1930b2e8-28de-d387-0727-50892776413a','16f8d2f2-21ae-12af-cf8f-508417e317a4',0,'2013-06-20 10:46:08',0),('2006fe54-1ccf-059b-90ed-50892afc5887','1930b2e8-28de-d387-0727-50892776413a','8b81f1da-b41c-05ed-8904-508417a61e9a',0,'2013-06-20 10:46:08',0),('21730226-cafb-db66-8785-509d152a0168','479763d3-92b4-efaa-62b5-509d14cea8ac','98ff2d4f-130e-2f24-2c83-50841781b1f3',0,'2013-07-17 14:37:42',0),('21ea0093-6bae-f5ac-a7fe-50892a09f6be','1930b2e8-28de-d387-0727-50892776413a','d756454d-0037-9687-6c19-5084177f9c47',0,'2013-06-20 10:46:08',0),('22a7a889-4079-e216-73bc-509d15e18d67','479763d3-92b4-efaa-62b5-509d14cea8ac','49923611-fa08-3662-1166-508417baad8c',0,'2013-07-17 14:37:42',0),('22aa4e74-3bfc-4742-f24e-509d15059b49','479763d3-92b4-efaa-62b5-509d14cea8ac','2c7844e8-144c-ef81-602c-508417e1292c',0,'2013-07-17 14:37:42',0),('22bd06e1-31ce-7c50-104a-509d1579baed','479763d3-92b4-efaa-62b5-509d14cea8ac','a6ad4177-b639-8f3a-880d-508417b363f4',0,'2013-07-17 14:37:42',0),('22c50bd2-afa2-9c70-1e41-509d15c9da0c','479763d3-92b4-efaa-62b5-509d14cea8ac','5a969874-2618-e7e1-d8ec-508417ba4045',0,'2013-07-17 14:37:42',0),('24d7353b-69c3-9092-221f-50892a08a425','1930b2e8-28de-d387-0727-50892776413a','75e3450e-3b84-6eb9-18fe-50841751fc47',0,'2013-06-20 10:46:08',0),('255bf7b5-1f39-4fdb-4061-509d15f9c8bf','479763d3-92b4-efaa-62b5-509d14cea8ac','86247452-62f9-03c9-4df8-508417a6232e',0,'2013-07-17 14:37:42',0),('2661e13b-046d-6660-54d2-50892aaef845','1930b2e8-28de-d387-0727-50892776413a','88a52693-d92c-5bdf-4199-508417f80b1d',0,'2013-06-20 10:46:08',0),('28054e28-91fa-7e35-a764-509d15c6afd3','479763d3-92b4-efaa-62b5-509d14cea8ac','ed2a14db-4593-8531-0f9a-508417cfc25d',0,'2013-07-17 14:37:42',0),('281d4841-d0fe-dc93-8352-50892aebde9c','1930b2e8-28de-d387-0727-50892776413a','959688ec-63d8-009d-fcf0-508417bfb512',0,'2013-06-20 10:46:08',0),('281f8823-2528-b46d-5685-509d158a82aa','479763d3-92b4-efaa-62b5-509d14cea8ac','c467b506-c8ca-f49e-a94d-5084170f1a3e',0,'2013-07-17 14:37:42',0),('28265d81-f8f1-9405-2d3a-50892a963cd7','1930b2e8-28de-d387-0727-50892776413a','ac002abe-d897-a4ae-7c7f-50841766e66b',0,'2013-06-20 10:46:08',0),('28270e35-6ec3-c5c3-4b89-509d15ff3dcc','479763d3-92b4-efaa-62b5-509d14cea8ac','80954dca-8f24-8c13-9eb9-5084178f1f6f',0,'2013-07-17 14:37:42',0),('28287132-9ea7-2183-fbd8-50892a23455f','1930b2e8-28de-d387-0727-50892776413a','98ff2d4f-130e-2f24-2c83-50841781b1f3',0,'2013-06-20 10:46:08',0),('282c49ef-18d7-c1dd-c85d-50892a5c7e6e','1930b2e8-28de-d387-0727-50892776413a','df8dab5e-ab38-2fc7-7983-508417b3e21d',0,'2013-06-20 10:46:08',0),('2a4314bf-0f84-3982-0548-509d15c4dd52','479763d3-92b4-efaa-62b5-509d14cea8ac','99096555-60ac-c5f6-4358-508417814e13',90,'2013-07-17 14:37:42',0),('2ae0fa85-a3ae-6540-68cf-509d151cddc4','479763d3-92b4-efaa-62b5-509d14cea8ac','75ae5ce3-61eb-6f10-00c3-5084175b5f23',0,'2013-07-17 14:37:42',0),('2caa8556-bd38-4216-54bc-50892af982fe','1930b2e8-28de-d387-0727-50892776413a','a6ad4177-b639-8f3a-880d-508417b363f4',0,'2013-06-20 10:46:08',0),('2d8a211d-bfba-c580-50df-50892a6a4a8b','1930b2e8-28de-d387-0727-50892776413a','ed2a14db-4593-8531-0f9a-508417cfc25d',0,'2013-06-20 10:46:08',0),('2d8b4a18-980a-a5bc-a136-50892a850da8','1930b2e8-28de-d387-0727-50892776413a','c8ab9667-9fde-6c9c-c908-508417f687f1',0,'2013-06-20 10:46:08',0),('2d9e72ac-32ac-5f79-3c5b-50892a470661','1930b2e8-28de-d387-0727-50892776413a','9396fc91-722b-0a55-0a82-508417822ca0',0,'2013-06-20 10:46:08',0),('2da45bd4-89d1-91fc-4735-509d15a4c2e6','479763d3-92b4-efaa-62b5-509d14cea8ac','2fb38853-aa96-e896-9f83-50841703b164',-98,'2013-07-17 14:37:42',0),('3046a42a-6333-9508-7491-509d15695512','479763d3-92b4-efaa-62b5-509d14cea8ac','37639797-29fe-bceb-c8c1-50841706b121',0,'2013-07-17 14:37:42',0),('3050102c-2c18-7afb-38a3-50892a516dac','1930b2e8-28de-d387-0727-50892776413a','5618c1cd-6930-f6eb-1f3d-50841c3dc7a2',0,'2013-12-28 11:22:39',1),('3052c641-65b0-fc5c-7ea6-50892a5f4b44','1930b2e8-28de-d387-0727-50892776413a','d201cc6f-8c1d-c99f-bf9a-5084179d1823',0,'2013-06-20 10:46:08',0),('32f1f915-5b7d-c225-2172-509d15c5f221','479763d3-92b4-efaa-62b5-509d14cea8ac','abf5c536-fb7b-d72c-0dbf-508417ca7096',0,'2013-07-17 14:37:42',0),('32f7618e-206e-2ce4-3361-509d15c8a9f4','479763d3-92b4-efaa-62b5-509d14cea8ac','b74db651-f6c6-b708-e5f6-5084179c62d5',0,'2013-07-17 14:37:42',0),('32fa0fa2-5b6f-607d-3e4b-509d154a06c2','479763d3-92b4-efaa-62b5-509d14cea8ac','1ce880c2-81d5-46d7-2b10-50841766dcf3',0,'2013-07-17 14:37:42',0),('3849203f-dc06-601c-aa9c-509d15c97ff6','479763d3-92b4-efaa-62b5-509d14cea8ac','5544ba7d-daca-b180-e978-5084177fe075',0,'2013-07-17 14:37:42',0),('3860c7f4-4a0b-4f2d-811b-509d1581fb75','479763d3-92b4-efaa-62b5-509d14cea8ac','2c81577e-ce24-23c7-edb5-5084171d0a92',0,'2013-07-17 14:37:42',0),('3866afbf-42a2-637e-4e29-509d15be9e3d','479763d3-92b4-efaa-62b5-509d14cea8ac','3a2cd36f-dce0-2f93-f2f4-50841757044d',-98,'2013-07-17 14:37:42',0),('386a494d-b1aa-7b0c-3ec7-50892a4a788a','1930b2e8-28de-d387-0727-50892776413a','1f08a335-addd-2bec-04d5-508417593b58',0,'2013-06-20 10:46:08',0),('387161eb-a374-43c4-9970-50892ad366b3','1930b2e8-28de-d387-0727-50892776413a','86031455-8994-e4c7-0d42-508417960f38',0,'2013-06-20 10:46:08',0),('3871fee2-b59d-da3d-58c1-50892a7b27f9','1930b2e8-28de-d387-0727-50892776413a','c9d27ed5-641f-0c45-4c44-50841713be08',0,'2013-06-20 10:46:08',0),('3872f857-949e-f6cc-05c0-50892a845bb9','1930b2e8-28de-d387-0727-50892776413a','1c41d650-8546-88ff-db7a-50841771bbac',0,'2013-06-20 10:46:08',0),('3982c8b1-b3e6-b35e-5437-509d15d39d90','479763d3-92b4-efaa-62b5-509d14cea8ac','a3d3dc07-3263-cc82-2a68-508417754aec',0,'2013-07-17 14:37:42',0),('3b067a49-5257-377f-fcbd-509d1594e05b','479763d3-92b4-efaa-62b5-509d14cea8ac','1f08a335-addd-2bec-04d5-508417593b58',0,'2013-07-17 14:37:42',0),('3b1afbaf-f509-0bb9-9f58-509d15a834a7','479763d3-92b4-efaa-62b5-509d14cea8ac','aea2b53a-9c13-ab7d-c3f5-5084178d4334',0,'2013-07-17 14:37:42',0),('3b1fdf17-4950-5db2-160b-509d15f16ee2','479763d3-92b4-efaa-62b5-509d14cea8ac','479d34fd-5d9f-aebb-8cd3-508417bb417c',0,'2013-07-17 14:37:42',0),('3b24dee5-2e0a-ce1a-1ba7-50892abc50ed','1930b2e8-28de-d387-0727-50892776413a','1ef1c329-cbbe-7c18-5846-5084177ef38d',0,'2013-06-20 10:46:08',0),('3b2a7fcc-f30b-b39c-b8be-50892a36475f','1930b2e8-28de-d387-0727-50892776413a','9497002f-5288-cac6-e21b-50841723685e',-99,'2013-06-20 10:46:08',0),('3dd64b00-422e-f2e3-0da6-50892a626ab2','1930b2e8-28de-d387-0727-50892776413a','5544ba7d-daca-b180-e978-5084177fe075',0,'2013-06-20 10:46:08',0),('3ddb75c0-0578-25e2-1a1b-50892aa2261b','1930b2e8-28de-d387-0727-50892776413a','80954dca-8f24-8c13-9eb9-5084178f1f6f',0,'2013-06-20 10:46:08',0),('4081e5d7-bc4e-0664-18a0-509d1529b4bf','479763d3-92b4-efaa-62b5-509d14cea8ac','c8ab9667-9fde-6c9c-c908-508417f687f1',0,'2013-07-17 14:37:42',0),('408d638c-05c2-b994-5a1c-50892a2198a3','1930b2e8-28de-d387-0727-50892776413a','37639797-29fe-bceb-c8c1-50841706b121',0,'2013-06-20 10:46:08',0),('4099529a-e901-59c7-7dcf-50892accbed2','1930b2e8-28de-d387-0727-50892776413a','75ae5ce3-61eb-6f10-00c3-5084175b5f23',0,'2013-06-20 10:46:08',0),('4099ba21-e4f4-066c-846e-509d15435c17','479763d3-92b4-efaa-62b5-509d14cea8ac','75e3450e-3b84-6eb9-18fe-50841751fc47',0,'2013-07-17 14:37:42',0),('43366ca4-9228-b9a9-3d04-509d15882d42','479763d3-92b4-efaa-62b5-509d14cea8ac','6268bbf3-5c0b-f80b-2ee4-5084171d5844',0,'2013-07-17 14:37:42',0),('43461d4d-25ab-1682-a741-509d1552774f','479763d3-92b4-efaa-62b5-509d14cea8ac','b3cecee1-3662-e91e-616d-5084173bb632',-99,'2013-07-17 14:37:42',0),('4350422b-8422-64df-cd95-50892a796074','1930b2e8-28de-d387-0727-50892776413a','1ce880c2-81d5-46d7-2b10-50841766dcf3',0,'2013-06-20 10:46:08',0),('4350b033-e585-02f5-4229-509d152143d0','479763d3-92b4-efaa-62b5-509d14cea8ac','9563001d-a5eb-4836-4fa7-508417fc14e4',-99,'2013-07-17 14:37:42',0),('48975966-01cf-f7ca-e545-509d15becb56','479763d3-92b4-efaa-62b5-509d14cea8ac','dce66a10-c772-b9eb-49ad-508417f5cb9c',0,'2013-07-17 14:37:42',0),('48a957f3-c5ed-82cb-c64f-509d15f7793e','479763d3-92b4-efaa-62b5-509d14cea8ac','b6db36f0-307d-3f97-1cfa-508417c04582',0,'2013-07-17 14:37:42',0),('48aac165-4ab5-7a77-f928-50892ae38fca','1930b2e8-28de-d387-0727-50892776413a','ea7a81f2-9293-1c60-284b-508417a8b8a3',0,'2013-06-20 10:46:08',0),('48ab5041-276b-c471-217b-509d1534bc31','479763d3-92b4-efaa-62b5-509d14cea8ac','197b9081-6243-0f13-0421-5084176d2719',0,'2013-07-17 14:37:42',0),('48abc081-9fb1-fbc6-cac1-509d15094508','479763d3-92b4-efaa-62b5-509d14cea8ac','abfbd29d-5bbd-62a1-958b-508417af88ae',0,'2013-07-17 14:37:42',0),('48b2bd69-ce10-adbc-c1d9-50892aa015d9','1930b2e8-28de-d387-0727-50892776413a','bf26088e-7a78-55b9-3b17-508417fd40df',0,'2013-06-20 10:46:08',0),('4b53995a-35be-09ef-4dc8-509d1520f170','479763d3-92b4-efaa-62b5-509d14cea8ac','ea7a81f2-9293-1c60-284b-508417a8b8a3',0,'2013-07-17 14:37:42',0),('4b684cdf-f78b-1f25-ade3-509d153149f6','479763d3-92b4-efaa-62b5-509d14cea8ac','c1b8ab61-5d43-742f-8f3a-508417019f6c',0,'2013-07-17 14:37:42',0),('4b69951b-582c-04d7-7cc0-50892a4e0e6a','1930b2e8-28de-d387-0727-50892776413a','a96c31dc-da9e-fb00-bbfb-508417012b44',0,'2013-06-20 10:46:08',0),('4b69be9b-c21c-4051-b6ac-50892aaacf70','1930b2e8-28de-d387-0727-50892776413a','3a2cd36f-dce0-2f93-f2f4-50841757044d',0,'2013-06-20 10:46:08',0),('4b69dd48-be41-0dda-1ee5-50892a0e6e1b','1930b2e8-28de-d387-0727-50892776413a','2c7844e8-144c-ef81-602c-508417e1292c',0,'2013-06-20 10:46:08',0),('4cf10e45-e40d-6b43-9ae0-509d154bfe65','479763d3-92b4-efaa-62b5-509d14cea8ac','54afe5a9-2f47-f6d7-42a3-5084174337a8',-98,'2013-07-17 14:37:42',0),('4d07016d-0118-ec32-7443-509d15f98d91','479763d3-92b4-efaa-62b5-509d14cea8ac','1c41d650-8546-88ff-db7a-50841771bbac',0,'2013-07-17 14:37:42',0),('4d3a08db-9545-540e-f6f5-50892a7e673b','1930b2e8-28de-d387-0727-50892776413a','3f8f2871-234e-7488-0c88-5084172855c3',0,'2013-06-20 10:46:08',0),('4dc102f4-2a58-8668-8195-50892a769b9b','1930b2e8-28de-d387-0727-50892776413a','49923611-fa08-3662-1166-508417baad8c',0,'2013-06-20 10:46:08',0),('4de80899-e17e-e835-eafb-50892ad220dc','1930b2e8-28de-d387-0727-50892776413a','9667ce29-2798-7a14-c978-508417fb44b8',0,'2013-06-20 10:46:08',0),('4e1fc490-454e-9197-4776-509d15afa158','479763d3-92b4-efaa-62b5-509d14cea8ac','a68dd1ce-7020-711b-d9fd-50841746581e',0,'2013-07-17 14:37:42',0),('4eaf0612-42cd-ab54-22d8-50892a74ea83','1930b2e8-28de-d387-0727-50892776413a','3a3259cb-f70d-f94e-32de-508417bb2359',0,'2013-06-20 10:46:08',0),('50c0541f-6470-fe40-ac08-509d15453163','479763d3-92b4-efaa-62b5-509d14cea8ac','a96c31dc-da9e-fb00-bbfb-508417012b44',0,'2013-07-17 14:37:42',0),('50d0d957-c188-8397-c364-509d156c3b88','479763d3-92b4-efaa-62b5-509d14cea8ac','9ba15553-cf0c-fecc-ee39-5084178df947',0,'2013-07-17 14:37:42',0),('50d826f4-8063-aacd-a01a-50892a24f502','1930b2e8-28de-d387-0727-50892776413a','c1b8ab61-5d43-742f-8f3a-508417019f6c',0,'2013-06-20 10:46:08',0),('50d87abe-f41a-0904-26fd-50892aedddca','1930b2e8-28de-d387-0727-50892776413a','aea2b53a-9c13-ab7d-c3f5-5084178d4334',0,'2013-06-20 10:46:08',0),('51a45ee3-7cd5-c797-2911-50892abf692b','1930b2e8-28de-d387-0727-50892776413a','706002b4-6ce2-3b50-9ebb-508417afaf6f',0,'2013-06-20 10:46:08',0),('529a8cf7-b21b-a48d-a238-50892a4033e1','1930b2e8-28de-d387-0727-50892776413a','54afe5a9-2f47-f6d7-42a3-5084174337a8',0,'2013-06-20 10:46:08',0),('53828099-07a6-6235-144a-509d155ffad5','479763d3-92b4-efaa-62b5-509d14cea8ac','13c138b8-e78a-755a-0d4d-5084175dded7',0,'2013-07-17 14:37:42',0),('53879575-d6bd-0385-aaf0-509d153883a2','479763d3-92b4-efaa-62b5-509d14cea8ac','908bcb35-bf8c-3040-c573-508417535df8',-99,'2013-07-17 14:37:42',0),('538eb1c4-b60a-a92e-95e8-50892a946316','1930b2e8-28de-d387-0727-50892776413a','b3cecee1-3662-e91e-616d-5084173bb632',0,'2013-06-20 10:46:08',0),('53930969-f937-dc32-c4e4-509d15331b90','479763d3-92b4-efaa-62b5-509d14cea8ac','65a26e09-4206-3790-9915-508417022b35',0,'2013-07-17 14:37:42',0),('53a00913-9ff2-53a3-130e-50892ab9f7f2','1930b2e8-28de-d387-0727-50892776413a','65a26e09-4206-3790-9915-508417022b35',0,'2013-06-20 10:46:08',0),('5634b65e-38b2-0094-80b0-509d15427fc2','479763d3-92b4-efaa-62b5-509d14cea8ac','ac002abe-d897-a4ae-7c7f-50841766e66b',0,'2013-07-17 14:37:42',0),('564814ab-943a-c058-7326-509d1528c39a','479763d3-92b4-efaa-62b5-509d14cea8ac','88ccb236-749a-94b0-2a3d-508417145067',90,'2013-07-17 14:37:42',0),('58e0c640-dffa-7c4c-ab33-509d15fa1592','479763d3-92b4-efaa-62b5-509d14cea8ac','7055acd4-ab55-5111-7a5d-508417045af9',0,'2013-07-17 14:37:42',0),('58f061a0-901b-f960-2769-509d15f156a4','479763d3-92b4-efaa-62b5-509d14cea8ac','98fd875e-bbe0-2c71-fb5c-508417280dda',0,'2013-07-17 14:37:42',0),('58f45e1d-4526-7753-8a7f-50892af6a482','1930b2e8-28de-d387-0727-50892776413a','6021b5db-55c1-bce7-60fa-508417528997',0,'2013-06-20 10:46:08',0),('5b9a8920-0c3c-74c6-48fe-509d15c8d164','479763d3-92b4-efaa-62b5-509d14cea8ac','6021b5db-55c1-bce7-60fa-508417528997',0,'2013-07-17 14:37:42',0),('5bad27bf-9faa-4679-de91-50892a0bc762','1930b2e8-28de-d387-0727-50892776413a','75df259c-3585-03ac-a951-5084178139e6',0,'2013-06-20 10:46:08',0),('5bb08d8f-ff0d-00c2-1aec-50892ae45bd1','1930b2e8-28de-d387-0727-50892776413a','abfbd29d-5bbd-62a1-958b-508417af88ae',0,'2013-06-20 10:46:08',0),('5bb9b3fc-b311-af44-af7f-50892a7d8b2d','1930b2e8-28de-d387-0727-50892776413a','479d34fd-5d9f-aebb-8cd3-508417bb417c',0,'2013-06-20 10:46:08',0),('5e6765b3-232b-f6d8-627e-50892af14293','1930b2e8-28de-d387-0727-50892776413a','c467b506-c8ca-f49e-a94d-5084170f1a3e',0,'2013-06-20 10:46:08',0),('61055957-9650-07ff-60ef-509d15e185e5','479763d3-92b4-efaa-62b5-509d14cea8ac','75df259c-3585-03ac-a951-5084178139e6',0,'2013-07-17 14:37:42',0),('6116870d-443b-3aea-39e5-509d1537894b','479763d3-92b4-efaa-62b5-509d14cea8ac','62aff0e0-558d-35b2-7441-5084170ea70a',0,'2013-07-17 14:37:42',0),('611ffe91-b214-0894-5078-50892a4ba6d2','1930b2e8-28de-d387-0727-50892776413a','9ba15553-cf0c-fecc-ee39-5084178df947',0,'2013-06-20 10:46:08',0),('63ca7c6f-5c84-fc26-7c28-509d154c3b9d','479763d3-92b4-efaa-62b5-509d14cea8ac','80939f45-b1f5-bf80-0aa0-508417dcef1e',0,'2013-07-17 14:37:42',0),('63d9c11c-bf01-0a3c-b867-50892aaba35b','1930b2e8-28de-d387-0727-50892776413a','908bcb35-bf8c-3040-c573-508417535df8',0,'2013-06-20 10:46:08',0),('63de73e3-0107-673e-9c8c-50892a1c814e','1930b2e8-28de-d387-0727-50892776413a','bc4e7f9a-dd04-ae7a-ffc4-50841771a1e0',0,'2013-06-20 10:46:08',0),('668bee1b-3fb2-4c2e-f383-50892a53e5ad','1930b2e8-28de-d387-0727-50892776413a','d7093924-8485-44ea-6727-508417eb8d11',0,'2013-06-20 10:46:08',0),('668f6540-7d51-2a65-6882-509d15a70d9e','479763d3-92b4-efaa-62b5-509d14cea8ac','551f7d85-cb29-c25e-927b-508417a9679a',-98,'2013-07-17 14:37:42',0),('669295ed-b7a0-fe9c-7666-509d1563e8e4','479763d3-92b4-efaa-62b5-509d14cea8ac','270c15fe-b17d-3b89-f1b6-5084173ac864',0,'2013-07-17 14:37:42',0),('6695015a-908a-3cfd-e380-509d15e8ec22','479763d3-92b4-efaa-62b5-509d14cea8ac','9bdc06e1-1297-60a4-7edb-5084175b8621',0,'2013-07-17 14:37:42',0),('691cf4dd-4a78-af4d-bba4-509d1500bf8b','479763d3-92b4-efaa-62b5-509d14cea8ac','2f29ccfc-1d70-daf0-1132-508417fb19eb',0,'2013-07-17 14:37:42',0),('6940d162-37d8-ca7f-4737-50892a5ae838','1930b2e8-28de-d387-0727-50892776413a','abf5c536-fb7b-d72c-0dbf-508417ca7096',0,'2013-06-20 10:46:08',0),('6bd5410a-f017-bbd2-c2f6-509d15f031ac','479763d3-92b4-efaa-62b5-509d14cea8ac','3203e56d-e1d2-424b-9767-508417e8e1a1',0,'2013-07-17 14:37:42',0),('6be5cfac-a042-7cb0-e106-509d15b1c95a','479763d3-92b4-efaa-62b5-509d14cea8ac','c9d27ed5-641f-0c45-4c44-50841713be08',0,'2013-07-17 14:37:42',0),('6bed99b4-56f7-5eb5-3f75-50892a9e317c','1930b2e8-28de-d387-0727-50892776413a','da3bede4-12f5-86c2-87aa-5084176abb49',0,'2013-06-20 10:46:08',0),('6bf1e053-3eb9-92e9-15a7-509d15e8a7c6','479763d3-92b4-efaa-62b5-509d14cea8ac','6d9c3ec9-7515-c333-1cff-5084172c5a8d',0,'2013-07-17 14:37:42',0),('6bf6093f-d0b7-e24f-a4c2-50892a2fe2bb','1930b2e8-28de-d387-0727-50892776413a','80939f45-b1f5-bf80-0aa0-508417dcef1e',0,'2013-06-20 10:46:08',0),('6bf7f7a0-8f01-4c8a-2db4-50892a02e6a0','1930b2e8-28de-d387-0727-50892776413a','a68dd1ce-7020-711b-d9fd-50841746581e',0,'2013-06-20 10:46:08',0),('6bfbe55a-c45b-4a03-82e9-50892a1d0248','1930b2e8-28de-d387-0727-50892776413a','551f7d85-cb29-c25e-927b-508417a9679a',0,'2013-06-20 10:46:08',0),('6ea86fcb-11e5-12a8-034e-50892af7ba8a','1930b2e8-28de-d387-0727-50892776413a','2c81577e-ce24-23c7-edb5-5084171d0a92',0,'2013-06-20 10:46:08',0),('6eac2f0d-8a16-4e73-0f6d-509d15a59d6f','479763d3-92b4-efaa-62b5-509d14cea8ac','1d391b2d-7a99-3501-42e8-50841c068851',-98,'2013-12-28 11:22:39',1),('715af023-9871-9adb-92db-509d15b45acd','479763d3-92b4-efaa-62b5-509d14cea8ac','da3bede4-12f5-86c2-87aa-5084176abb49',0,'2013-07-17 14:37:42',0),('7165f2d3-dd40-c5d2-352c-50892ad44c5b','1930b2e8-28de-d387-0727-50892776413a','62aff0e0-558d-35b2-7441-5084170ea70a',0,'2013-06-20 10:46:08',0),('716b234a-d3df-430a-57d4-509d15820d2f','479763d3-92b4-efaa-62b5-509d14cea8ac','f2373a24-3c0e-58fc-aa38-5084176239ca',-99,'2013-07-17 14:37:42',0),('74172af2-09a5-adbc-d2bf-50892a85e359','1930b2e8-28de-d387-0727-50892776413a','dce66a10-c772-b9eb-49ad-508417f5cb9c',0,'2013-06-20 10:46:08',0),('741a5a66-34bd-477e-adad-50892a49a9fc','1930b2e8-28de-d387-0727-50892776413a','eb230dea-46a4-2b39-cb94-50841786be51',0,'2013-06-20 10:46:08',0),('741ab83a-a4c9-c8e0-4e59-509d152b7679','479763d3-92b4-efaa-62b5-509d14cea8ac','d7641ebf-74a3-daea-b5de-508417d95735',0,'2013-07-17 14:37:42',0),('741c6fe4-437f-f049-023f-50892a7a075b','1930b2e8-28de-d387-0727-50892776413a','ac0330dd-f514-1f11-addf-508417b9d5fa',0,'2013-06-20 10:46:08',0),('741c7d0d-17b6-5799-dfe1-50892a365578','1930b2e8-28de-d387-0727-50892776413a','f2373a24-3c0e-58fc-aa38-5084176239ca',0,'2013-06-20 10:46:08',0),('74244c00-4d18-7f10-d159-509d157b4b96','479763d3-92b4-efaa-62b5-509d14cea8ac','bd1ec629-fc91-b37c-ce45-5097f58a5eaf',-98,'2013-04-12 15:40:02',1),('76d59edf-b82e-ea82-fafd-509d1586b711','479763d3-92b4-efaa-62b5-509d14cea8ac','d75b9353-64d4-e910-c6a4-508417023c51',-99,'2013-07-17 14:37:42',0),('7796034a-921e-f462-7f7b-509d152b8e0d','479763d3-92b4-efaa-62b5-509d14cea8ac','3f8f2871-234e-7488-0c88-5084172855c3',0,'2013-07-17 14:37:42',0),('78fe002b-289d-514d-586f-509d1597b939','479763d3-92b4-efaa-62b5-509d14cea8ac','3a3259cb-f70d-f94e-32de-508417bb2359',0,'2013-07-17 14:37:42',0),('790200ce-cb4e-e3c9-f29f-50892a0d412b','1930b2e8-28de-d387-0727-50892776413a','4a6cf9da-6c2b-52d3-9cc5-50841775ef34',0,'2013-06-20 10:46:08',0),('796f6e6a-ed0c-30c7-20ec-509d153545e8','479763d3-92b4-efaa-62b5-509d14cea8ac','1c2ed9ad-fe55-cfdb-88e0-50841736e5b5',0,'2013-07-17 14:37:42',0),('797d0bea-33a0-6e86-d1ed-509d15c75b4c','479763d3-92b4-efaa-62b5-509d14cea8ac','81c6f6e8-42fb-bd78-4f61-5097f537f790',0,'2013-04-12 15:40:02',1),('798055cc-4243-36f7-9a40-50892ab16695','1930b2e8-28de-d387-0727-50892776413a','197b9081-6243-0f13-0421-5084176d2719',0,'2013-06-20 10:46:08',0),('79817b2d-4456-bb75-b183-50892a3f4097','1930b2e8-28de-d387-0727-50892776413a','3203e56d-e1d2-424b-9767-508417e8e1a1',0,'2013-06-20 10:46:08',0),('79826056-b43a-4e3e-a098-509d1586775c','479763d3-92b4-efaa-62b5-509d14cea8ac','98a278b5-ec71-5635-75f6-50841793aed7',0,'2013-07-17 14:37:42',0),('798e01e9-1b7a-2e19-12e7-50892a9a55d8','1930b2e8-28de-d387-0727-50892776413a','26f4b716-97fa-c6cb-2bfd-5084170d21c3',0,'2013-06-20 10:46:08',0),('798e0f37-a369-0eb4-60db-509d15651bff','479763d3-92b4-efaa-62b5-509d14cea8ac','8362e120-c733-ac90-1823-50841772e8a9',-98,'2013-07-17 14:37:42',0),('7992598d-b37f-a9e4-4e1b-509d1572ea99','479763d3-92b4-efaa-62b5-509d14cea8ac','86293997-0aef-d7f3-0a02-508417901eea',0,'2013-07-17 14:37:42',0),('7c2a04b3-104c-79ef-1a88-509d1598bed8','479763d3-92b4-efaa-62b5-509d14cea8ac','cf591bfd-f5cd-0fa5-7c89-508417aa091b',0,'2013-07-17 14:37:42',0),('7c2ca59a-4a6b-c947-3cfe-509d15a6e2f0','479763d3-92b4-efaa-62b5-509d14cea8ac','1ef1c329-cbbe-7c18-5846-5084177ef38d',-99,'2013-07-17 14:37:42',0),('7c32a421-814d-a5c9-2b3d-50892a421d05','1930b2e8-28de-d387-0727-50892776413a','65973086-f02a-6e5c-9bb8-508417217545',0,'2013-06-20 10:46:08',0),('7c35a41c-cafe-3d28-4c6a-509d1576901a','479763d3-92b4-efaa-62b5-509d14cea8ac','705425c6-e368-a418-42b7-50841765732a',0,'2013-07-17 14:37:42',0),('7c3a6494-bd75-cf4b-979d-50892a647857','1930b2e8-28de-d387-0727-50892776413a','b74db651-f6c6-b708-e5f6-5084179c62d5',0,'2013-06-20 10:46:08',0),('7c3e91c9-b702-8adc-d8ec-50892a354deb','1930b2e8-28de-d387-0727-50892776413a','d75b9353-64d4-e910-c6a4-508417023c51',0,'2013-06-20 10:46:08',0),('7c3ee0fd-11f3-e9d1-8671-50892a338a31','1930b2e8-28de-d387-0727-50892776413a','270c15fe-b17d-3b89-f1b6-5084173ac864',0,'2013-06-20 10:46:08',0),('7c403538-b152-521b-5aa8-509d15f63df7','479763d3-92b4-efaa-62b5-509d14cea8ac','c19bce6b-0135-3b8d-f0c7-50841793060a',0,'2013-07-17 14:37:42',0),('7eeb6a62-5a36-1dc7-d842-509d156ff00d','479763d3-92b4-efaa-62b5-509d14cea8ac','59935e59-71f1-b84f-f3d0-50841cb82ddf',0,'2013-12-28 11:22:39',1),('7eedcc7e-0611-ca53-b968-50892a34709f','1930b2e8-28de-d387-0727-50892776413a','b6db36f0-307d-3f97-1cfa-508417c04582',0,'2013-06-20 10:46:08',0),('81948ff5-1edf-89e1-f2b2-509d15e7740a','479763d3-92b4-efaa-62b5-509d14cea8ac','65973086-f02a-6e5c-9bb8-508417217545',0,'2013-07-17 14:37:42',0),('81aba4be-06a5-c630-2af0-509d15aecd6b','479763d3-92b4-efaa-62b5-509d14cea8ac','cff07ada-fce9-0f97-6a0a-508417970149',-99,'2013-07-17 14:37:42',0),('81adea3d-389a-3683-f297-50892addf254','1930b2e8-28de-d387-0727-50892776413a','c19bce6b-0135-3b8d-f0c7-50841793060a',0,'2013-06-20 10:46:08',0),('8453ecaf-c8cc-1ffd-c874-50892a388b7b','1930b2e8-28de-d387-0727-50892776413a','7055acd4-ab55-5111-7a5d-508417045af9',0,'2013-06-20 10:46:08',0),('845acaad-5197-4b52-2734-509d150da477','479763d3-92b4-efaa-62b5-509d14cea8ac','bcf8d637-f9b8-da70-b28f-508417495eb1',0,'2013-07-17 14:37:42',0),('8466e8ec-d169-95fc-26ac-50892a28bd5b','1930b2e8-28de-d387-0727-50892776413a','d7641ebf-74a3-daea-b5de-508417d95735',0,'2013-06-20 10:46:08',0),('87141b27-048b-ec69-d4bc-509d156d3dba','479763d3-92b4-efaa-62b5-509d14cea8ac','c1a83c11-4651-71e1-338b-508417631ebb',-99,'2013-07-17 14:37:42',0),('898a9f21-58a6-8924-9391-50892a6e7632','1930b2e8-28de-d387-0727-50892776413a','42356b88-6581-b274-5819-508417543974',0,'2013-06-20 10:46:08',0),('89b28ced-3159-4aed-89a3-509d15da7407','479763d3-92b4-efaa-62b5-509d14cea8ac','553bd9a5-581a-1303-bddb-508417b8a8f8',0,'2013-07-17 14:37:42',0),('89c61c51-d52a-412a-ce61-50892a1d874b','1930b2e8-28de-d387-0727-50892776413a','cf591bfd-f5cd-0fa5-7c89-508417aa091b',0,'2013-06-20 10:46:08',0),('89ca7954-f6d9-146e-0f1d-509d151998fc','479763d3-92b4-efaa-62b5-509d14cea8ac','85c3a6d9-ef8b-7638-0b04-508417657519',0,'2013-07-17 14:37:42',0),('8b951c17-4958-5508-5dbf-50892a998985','1930b2e8-28de-d387-0727-50892776413a','9bdc06e1-1297-60a4-7edb-5084175b8621',0,'2013-06-20 10:46:08',0),('8c6bc7df-89c3-b033-238b-509d157b82f5','479763d3-92b4-efaa-62b5-509d14cea8ac','75d7c8e3-7a17-5ebf-0489-508417ee65e3',0,'2013-07-17 14:37:42',0),('8c6f72c9-4536-c827-c731-509d1503dc32','479763d3-92b4-efaa-62b5-509d14cea8ac','eb230dea-46a4-2b39-cb94-50841786be51',-99,'2013-07-17 14:37:42',0),('8c7affc8-4229-0ffe-7aa7-50892aef61e9','1930b2e8-28de-d387-0727-50892776413a','bc566de2-23f9-5e11-fe58-50841718ad3b',0,'2013-06-20 10:46:08',0),('8c80a455-f9f3-2176-fde0-509d1532dc66','479763d3-92b4-efaa-62b5-509d14cea8ac','4cfc0387-e754-5021-3987-5084173474d8',-99,'2013-07-17 14:37:42',0),('8c840d9f-9fae-cb2a-3ac0-50892a755adb','1930b2e8-28de-d387-0727-50892776413a','c1a83c11-4651-71e1-338b-508417631ebb',0,'2013-06-20 10:46:08',0),('8c84d56b-5c2a-345d-3bad-509d151264ba','479763d3-92b4-efaa-62b5-509d14cea8ac','ea79ff69-41f6-8f6f-dd75-508417b2cbeb',0,'2013-07-17 14:37:42',0),('8c88f3a4-cf56-6338-2e2b-509d15121bc7','479763d3-92b4-efaa-62b5-509d14cea8ac','4feb4f46-1818-bda4-44c5-508417791bab',0,'2013-07-17 14:37:42',0),('8c899791-73f3-c7e1-e592-50892a801668','1930b2e8-28de-d387-0727-50892776413a','6268bbf3-5c0b-f80b-2ee4-5084171d5844',0,'2013-06-20 10:46:08',0),('8c8af64c-989e-0d0a-7cbd-50892a9c2a9e','1930b2e8-28de-d387-0727-50892776413a','8362e120-c733-ac90-1823-50841772e8a9',0,'2013-06-20 10:46:08',0),('8f38ac84-9f92-5e43-773e-50892ac43849','1930b2e8-28de-d387-0727-50892776413a','98fd875e-bbe0-2c71-fb5c-508417280dda',0,'2013-06-20 10:46:08',0),('91db36ca-966f-0ac8-69b1-509d15c84319','479763d3-92b4-efaa-62b5-509d14cea8ac','bc566de2-23f9-5e11-fe58-50841718ad3b',-98,'2013-07-17 14:37:42',0),('91ecdf5b-1cdf-21cc-1659-509d157332c8','479763d3-92b4-efaa-62b5-509d14cea8ac','267710f6-d140-0377-6d59-50841cd95239',0,'2013-12-28 11:22:39',1),('91f20b57-9a47-58ea-dd11-509d15a1e61b','479763d3-92b4-efaa-62b5-509d14cea8ac','6ffd9177-74e8-1f5f-c390-508417eeefb3',90,'2013-07-17 14:37:42',0),('91f34650-0136-4b42-045e-50892a018119','1930b2e8-28de-d387-0727-50892776413a','4cfc0387-e754-5021-3987-5084173474d8',-99,'2013-06-20 10:46:08',0),('91f90b74-2fd4-b841-1472-50892a651d77','1930b2e8-28de-d387-0727-50892776413a','cff07ada-fce9-0f97-6a0a-508417970149',0,'2013-06-20 10:46:08',0),('91f9f185-1e2b-d00e-7da6-509d15abd5ad','479763d3-92b4-efaa-62b5-509d14cea8ac','88cbe0f7-ddd3-2c61-cccf-5097f5bec5fe',0,'2013-04-12 15:40:02',1),('949f6d19-bd2a-5aad-5729-50892ad2e73f','1930b2e8-28de-d387-0727-50892776413a','2f29ccfc-1d70-daf0-1132-508417fb19eb',0,'2013-06-20 10:46:08',0),('94a299ed-ce42-5d02-782f-509d15aa780d','479763d3-92b4-efaa-62b5-509d14cea8ac','682a1257-b3cc-73be-8563-5084170a7e6e',0,'2013-07-17 14:37:42',0),('94ab8b6e-3460-27cc-7031-50892a6533b8','1930b2e8-28de-d387-0727-50892776413a','1d391b2d-7a99-3501-42e8-50841c068851',0,'2013-12-28 11:22:39',1),('94b46d4a-6c43-b52d-00f0-50892a778fb2','1930b2e8-28de-d387-0727-50892776413a','ea68ec9e-0b48-1b2b-f5f4-50841789a721',0,'2013-06-20 10:46:08',0),('975d5f69-2735-df9a-2a12-509d15b0dcd5','479763d3-92b4-efaa-62b5-509d14cea8ac','92f30765-6557-ff22-fddb-50841798e3b5',-99,'2013-07-17 14:37:42',0),('99f54786-3667-d109-ad0e-509d150b3e04','479763d3-92b4-efaa-62b5-509d14cea8ac','42276a36-5269-0d84-5708-5084172c0253',0,'2013-07-17 14:37:42',0),('9a09f261-aa6b-f278-968e-50892ad6a390','1930b2e8-28de-d387-0727-50892776413a','75d7c8e3-7a17-5ebf-0489-508417ee65e3',0,'2013-06-20 10:46:08',0),('9a0d11cd-53c6-b6ea-1370-50892aa6c5a9','1930b2e8-28de-d387-0727-50892776413a','2f3978a4-519b-1f84-ed54-5084172a5438',0,'2013-06-20 10:46:08',0),('9a1d6b83-36c4-fc75-ff78-50892a208597','1930b2e8-28de-d387-0727-50892776413a','bcf8d637-f9b8-da70-b28f-508417495eb1',0,'2013-06-20 10:46:08',0),('9bc14e96-b9b8-0390-203b-509d15636a1d','479763d3-92b4-efaa-62b5-509d14cea8ac','706002b4-6ce2-3b50-9ebb-508417afaf6f',0,'2013-07-17 14:37:42',0),('9cad7970-180a-5402-7f06-509d152239e0','479763d3-92b4-efaa-62b5-509d14cea8ac','b6f30c47-7093-837d-c300-508417a71dec',0,'2013-07-17 14:37:42',0),('9cbea970-7a04-b201-ffcb-509d1550c976','479763d3-92b4-efaa-62b5-509d14cea8ac','42356b88-6581-b274-5819-508417543974',-99,'2013-07-17 14:37:42',0),('9cc20d7d-f1ad-3721-ec21-50892a6b94fc','1930b2e8-28de-d387-0727-50892776413a','1176be0b-2cf1-be62-e58b-508417625970',0,'2013-06-20 10:46:08',0),('9cc4cbfe-190b-6664-51c9-509d15f6a0b4','479763d3-92b4-efaa-62b5-509d14cea8ac','ed1e61f9-b7c0-72a3-47ea-508417b308bf',-98,'2013-07-17 14:37:42',0),('9cca9c40-b146-555d-09a0-50892a59b4fa','1930b2e8-28de-d387-0727-50892776413a','13c138b8-e78a-755a-0d4d-5084175dded7',0,'2013-06-20 10:46:08',0),('9cd14081-3752-35eb-383e-50892a6d4edc','1930b2e8-28de-d387-0727-50892776413a','92f30765-6557-ff22-fddb-50841798e3b5',0,'2013-06-20 10:46:08',0),('9f7a729e-b8f6-1439-04f1-50892a542d09','1930b2e8-28de-d387-0727-50892776413a','6d9c3ec9-7515-c333-1cff-5084172c5a8d',0,'2013-06-20 10:46:08',0),('9f8cadaf-da49-1fcb-897c-509d15d3ac23','479763d3-92b4-efaa-62b5-509d14cea8ac','bce81d81-74f8-639c-22a5-508417e9959a',0,'2013-07-17 14:37:42',0),('9f8ee7fa-ec02-1532-b1c6-50892a9f043c','1930b2e8-28de-d387-0727-50892776413a','86293997-0aef-d7f3-0a02-508417901eea',0,'2013-06-20 10:46:08',0),('a2286b5c-3773-6117-a11b-509d15140d68','479763d3-92b4-efaa-62b5-509d14cea8ac','1176be0b-2cf1-be62-e58b-508417625970',0,'2013-07-17 14:37:42',0),('a232e19f-5556-e5dc-069c-509d15415f96','479763d3-92b4-efaa-62b5-509d14cea8ac','a45bcb26-0d41-ae11-5b08-50841ce8c004',0,'2013-12-28 11:22:39',1),('a239a9d0-add0-b582-c76c-50892a419a04','1930b2e8-28de-d387-0727-50892776413a','6ffd9177-74e8-1f5f-c390-508417eeefb3',0,'2013-06-20 10:46:08',0),('a23a8ce6-ada1-c476-9e63-509d15e87a4d','479763d3-92b4-efaa-62b5-509d14cea8ac','192e89e8-f344-7506-2b33-508417ba2986',-99,'2013-07-17 14:37:42',0),('a23d21ce-6ec0-f273-d912-50892a8e19a1','1930b2e8-28de-d387-0727-50892776413a','ed1e61f9-b7c0-72a3-47ea-508417b308bf',0,'2013-06-20 10:46:08',0),('a4e12407-4a54-51b7-4ca1-50892a6e02c7','1930b2e8-28de-d387-0727-50892776413a','1c2ed9ad-fe55-cfdb-88e0-50841736e5b5',0,'2013-06-20 10:46:08',0),('a4e4ed9c-4064-04e7-06a4-509d15f698a2','479763d3-92b4-efaa-62b5-509d14cea8ac','ea5d4834-4e10-aa3a-3aa9-5084179f6050',0,'2013-07-17 14:37:42',0),('a4ee42d9-b2f7-843a-8179-509d151cc08b','479763d3-92b4-efaa-62b5-509d14cea8ac','1d01ebca-a666-9f01-be8b-5097f5eeaab3',0,'2013-04-12 15:40:02',1),('a4f0fc95-3a75-2418-0b17-50892a4cb523','1930b2e8-28de-d387-0727-50892776413a','59935e59-71f1-b84f-f3d0-50841cb82ddf',-99,'2013-12-28 11:22:39',1),('a4f56bc3-7d4c-5b01-8e1d-50892a8730c6','1930b2e8-28de-d387-0727-50892776413a','da25ff4c-1f22-e865-4f2a-508417789d90',0,'2013-06-20 10:46:08',0),('a5240e75-7151-ae53-3237-50892a7465c8','1930b2e8-28de-d387-0727-50892776413a','ed1a14e0-cd02-0e72-e6fe-508417f8fa47',0,'2013-06-20 10:46:08',0),('a7a37aa8-5e28-6b44-d01a-509d1576fc81','479763d3-92b4-efaa-62b5-509d14cea8ac','ea56c9b0-75ba-2049-d85c-5084170381b3',-99,'2013-07-17 14:37:42',0),('a7ad29cc-b6f0-e09f-e696-50892a3c03be','1930b2e8-28de-d387-0727-50892776413a','ea79ff69-41f6-8f6f-dd75-508417b2cbeb',0,'2013-06-20 10:46:08',0),('aa41d3f7-d139-655f-6f43-509d158a573c','479763d3-92b4-efaa-62b5-509d14cea8ac','efc783a1-02ec-8eca-c756-508417bc0af0',0,'2013-07-17 14:37:42',0),('aa4e4e5f-664b-4882-7e2b-50892a8471e0','1930b2e8-28de-d387-0727-50892776413a','b6f30c47-7093-837d-c300-508417a71dec',0,'2013-06-20 10:46:08',0),('aa52e4fc-67d1-04f8-46c3-50892a865dcd','1930b2e8-28de-d387-0727-50892776413a','f28d0256-97d6-6657-aecb-50841787f21b',0,'2013-06-20 10:46:08',0),('aa5ec2d5-a953-181f-127c-50892a83361a','1930b2e8-28de-d387-0727-50892776413a','682a1257-b3cc-73be-8563-5084170a7e6e',0,'2013-06-20 10:46:08',0),('acf956f9-1dcb-2fed-5868-509d156bb367','479763d3-92b4-efaa-62b5-509d14cea8ac','cc9a21f7-a972-85b6-4402-508417f43d36',-98,'2013-07-17 14:37:42',0),('acfb77b5-ab8e-b15c-7e6b-509d157984c5','479763d3-92b4-efaa-62b5-509d14cea8ac','2f3978a4-519b-1f84-ed54-5084172a5438',-99,'2013-07-17 14:37:42',0),('ad0a68cc-9d49-489f-902b-50892acf842d','1930b2e8-28de-d387-0727-50892776413a','134a02bc-3786-e49d-c6b7-5084170cd1b7',0,'2013-06-20 10:46:08',0),('ae700986-deef-97a2-7f74-509d15b96650','479763d3-92b4-efaa-62b5-509d14cea8ac','93974fd9-c0fe-40d6-5f13-50841701568d',0,'2013-07-17 14:37:42',0),('afc36a25-f012-c9c2-f6ce-509d15489658','479763d3-92b4-efaa-62b5-509d14cea8ac','5540e725-b53d-262f-bf00-508417e58c2f',0,'2013-07-17 14:37:42',0),('afcac267-a3a1-4e06-e70b-509d15eed9d9','479763d3-92b4-efaa-62b5-509d14cea8ac','bc4e7f9a-dd04-ae7a-ffc4-50841771a1e0',-99,'2013-07-17 14:37:42',0),('afcbbef7-db71-098c-d5a9-50892a9c0ee4','1930b2e8-28de-d387-0727-50892776413a','98a278b5-ec71-5635-75f6-50841793aed7',0,'2013-06-20 10:46:08',0),('afceaabe-bd7a-3a9a-caae-50892a97d90e','1930b2e8-28de-d387-0727-50892776413a','4feb4f46-1818-bda4-44c5-508417791bab',0,'2013-06-20 10:46:08',0),('b2612f9e-316f-eddb-27d4-509d15b65b07','479763d3-92b4-efaa-62b5-509d14cea8ac','134a02bc-3786-e49d-c6b7-5084170cd1b7',0,'2013-07-17 14:37:42',0),('b273fa69-7c15-d779-04ad-509d15814ab0','479763d3-92b4-efaa-62b5-509d14cea8ac','9407930a-e246-e177-bfe3-50841c517df6',0,'2013-12-28 11:22:39',1),('b275a1eb-7105-e5c7-4a47-509d1584bd6b','479763d3-92b4-efaa-62b5-509d14cea8ac','522363c9-3364-0a72-0c8a-5084178f329f',90,'2013-07-17 14:37:42',0),('b2795e59-edf0-48ea-ca19-509d156e096c','479763d3-92b4-efaa-62b5-509d14cea8ac','78184894-83d4-2506-f586-5084172ecb2c',0,'2013-07-17 14:37:42',0),('b28145c9-609b-7475-2fa8-50892aae607b','1930b2e8-28de-d387-0727-50892776413a','192e89e8-f344-7506-2b33-508417ba2986',0,'2013-06-20 10:46:08',0),('b2852692-5485-b6be-315e-509d15335725','479763d3-92b4-efaa-62b5-509d14cea8ac','3fb35cc1-d24b-36e1-86fa-50841725eddd',0,'2013-07-17 14:37:42',0),('b52699ea-5a9a-5678-fe0d-50892ab588f5','1930b2e8-28de-d387-0727-50892776413a','553bd9a5-581a-1303-bddb-508417b8a8f8',0,'2013-06-20 10:46:08',0),('b52e7b92-7b5f-fb96-6f7b-509d15cd857c','479763d3-92b4-efaa-62b5-509d14cea8ac','4fbc7d20-297a-382a-17c2-508417d21698',0,'2013-07-17 14:37:42',0),('b52fc471-a9ec-b081-30be-50892adc7cd9','1930b2e8-28de-d387-0727-50892776413a','267710f6-d140-0377-6d59-50841cd95239',-99,'2013-12-28 11:22:39',1),('b53c50ad-7263-1585-271a-50892ad29db0','1930b2e8-28de-d387-0727-50892776413a','99096555-60ac-c5f6-4358-508417814e13',0,'2013-06-20 10:46:08',0),('b7e48081-ae81-b822-ba95-509d153b86ff','479763d3-92b4-efaa-62b5-509d14cea8ac','8900a240-ba99-f4ac-512a-508417aa9c11',-99,'2013-07-17 14:37:42',0),('b7ee2598-4cee-281e-4335-509d15285731','479763d3-92b4-efaa-62b5-509d14cea8ac','60a20e54-bbc8-0010-1022-5097f5704cfc',0,'2013-04-12 15:40:02',1),('b7ef95f9-a0f0-985d-f18c-50892a2e194c','1930b2e8-28de-d387-0727-50892776413a','da35481a-738b-5497-da8a-50841793d3ef',0,'2013-06-20 10:46:08',0),('ba8743f4-f45a-ae7e-3ce4-509d157b1f4d','479763d3-92b4-efaa-62b5-509d14cea8ac','682226d9-5289-4634-8142-508417a451f2',0,'2013-07-17 14:37:42',0),('ba9add13-3b3c-a1cd-b8f3-50892ac14787','1930b2e8-28de-d387-0727-50892776413a','527ca4e0-1afe-7887-555c-508417781d3d',0,'2013-06-20 10:46:08',0),('ba9d5022-78d6-72bf-910a-50892a34dd45','1930b2e8-28de-d387-0727-50892776413a','ea5d4834-4e10-aa3a-3aa9-5084179f6050',0,'2013-06-20 10:46:08',0),('baa7db46-06c8-f338-bca4-50892a1d536a','1930b2e8-28de-d387-0727-50892776413a','ea56c9b0-75ba-2049-d85c-5084170381b3',0,'2013-06-20 10:46:08',0),('baa9e313-2d51-5acc-3ab5-509d15ee64b0','479763d3-92b4-efaa-62b5-509d14cea8ac','da35481a-738b-5497-da8a-50841793d3ef',0,'2013-07-17 14:37:42',0),('bd47998c-5e87-9f3a-097d-509d15d1bc32','479763d3-92b4-efaa-62b5-509d14cea8ac','f28d0256-97d6-6657-aecb-50841787f21b',-99,'2013-07-17 14:37:42',0),('bff36125-e02e-d7dd-c52f-509d15b94c9c','479763d3-92b4-efaa-62b5-509d14cea8ac','1f00c076-157b-4052-7491-5084177758f9',0,'2013-07-17 14:37:42',0),('c008653f-7998-9567-267c-509d1530acba','479763d3-92b4-efaa-62b5-509d14cea8ac','2c8d637d-5394-4763-22d8-508417b34302',0,'2013-07-17 14:37:42',0),('c008cca7-cdaf-ded5-e06c-50892a25172e','1930b2e8-28de-d387-0727-50892776413a','85c3a6d9-ef8b-7638-0b04-508417657519',0,'2013-06-20 10:46:08',0),('c00fc534-4446-4756-d4e5-50892aca1bad','1930b2e8-28de-d387-0727-50892776413a','bce81d81-74f8-639c-22a5-508417e9959a',0,'2013-06-20 10:46:08',0),('c2ad9483-6734-4ec3-b465-509d15e788cb','479763d3-92b4-efaa-62b5-509d14cea8ac','37768bd0-e5d3-1460-2841-5084174fa511',0,'2013-07-17 14:37:42',0),('c2bab63d-7e99-acf8-6811-509d153fbfa7','479763d3-92b4-efaa-62b5-509d14cea8ac','6780002e-a6c7-6774-f87d-50841771db97',-98,'2013-07-17 14:37:42',0),('c2baf117-c9f6-0ec0-07aa-509d155ebc43','479763d3-92b4-efaa-62b5-509d14cea8ac','e57f040d-94b4-b774-b260-50841cd6805d',0,'2013-12-28 11:22:39',1),('c2c38480-cfb6-00cd-f028-509d1575472a','479763d3-92b4-efaa-62b5-509d14cea8ac','b19db6d9-a3e7-e7a2-87fb-508417d67c30',0,'2013-07-17 14:37:42',0),('c2c6f825-d0e5-f727-8a03-50892a706fdf','1930b2e8-28de-d387-0727-50892776413a','705425c6-e368-a418-42b7-50841765732a',0,'2013-06-20 10:46:08',0),('c2c7ba6a-e5c6-5a9b-6e5b-50892a24d451','1930b2e8-28de-d387-0727-50892776413a','522363c9-3364-0a72-0c8a-5084178f329f',0,'2013-06-20 10:46:08',0),('c2ca892a-b1ad-6d69-9829-509d15eee5b7','479763d3-92b4-efaa-62b5-509d14cea8ac','ac0330dd-f514-1f11-addf-508417b9d5fa',-99,'2013-07-17 14:37:42',0),('c2cab99b-62c2-befa-6b2f-50892aad4d61','1930b2e8-28de-d387-0727-50892776413a','5540e725-b53d-262f-bf00-508417e58c2f',0,'2013-06-20 10:46:08',0),('c56f6dc3-19df-d558-5002-509d1579fdcc','479763d3-92b4-efaa-62b5-509d14cea8ac','a9417947-ea2f-33ac-51bc-50841752b216',-98,'2013-07-17 14:37:42',0),('c57380cd-c617-23f1-e26a-50892a6ff88f','1930b2e8-28de-d387-0727-50892776413a','42276a36-5269-0d84-5708-5084172c0253',0,'2013-06-20 10:46:08',0),('c57de1f6-97bf-ffc1-51a3-50892a5d58f7','1930b2e8-28de-d387-0727-50892776413a','9563001d-a5eb-4836-4fa7-508417fc14e4',0,'2013-06-20 10:46:08',0),('c82a47c3-8534-61d1-bf9f-509d1528b6a2','479763d3-92b4-efaa-62b5-509d14cea8ac','1c2c70d2-076e-c6a8-ad71-508417badad1',-99,'2013-07-17 14:37:42',0),('c82a85d7-b0e6-460c-a97e-50892a7daa4c','1930b2e8-28de-d387-0727-50892776413a','cc9a21f7-a972-85b6-4402-508417f43d36',0,'2013-06-20 10:46:08',0),('c83461d9-e0d8-124f-6b99-50892a9fb726','1930b2e8-28de-d387-0727-50892776413a','16e648ff-883c-3bdd-ba1d-508417d58d15',0,'2013-06-20 10:46:08',0),('cac670b5-1c89-314a-0ecb-509d15cbb510','479763d3-92b4-efaa-62b5-509d14cea8ac','d756454d-0037-9687-6c19-5084177f9c47',0,'2013-07-17 14:37:42',0),('cade6744-0f18-2ce9-0ef5-50892a8a96bc','1930b2e8-28de-d387-0727-50892776413a','da1ef3b6-8596-3aee-ae98-5084176072bd',0,'2013-06-20 10:46:08',0),('cae40970-f117-aa14-336e-509d15d2d1ed','479763d3-92b4-efaa-62b5-509d14cea8ac','16e648ff-883c-3bdd-ba1d-508417d58d15',0,'2013-07-17 14:37:42',0),('cae450b3-ac8e-1410-7be8-50892a10c445','1930b2e8-28de-d387-0727-50892776413a','37768bd0-e5d3-1460-2841-5084174fa511',0,'2013-06-20 10:46:08',0),('cae7de45-4eb6-5994-2f18-50892a454bf8','1930b2e8-28de-d387-0727-50892776413a','8900a240-ba99-f4ac-512a-508417aa9c11',0,'2013-06-20 10:46:08',0),('cae86fa0-b777-a193-44f6-50892a26e303','1930b2e8-28de-d387-0727-50892776413a','a45bcb26-0d41-ae11-5b08-50841ce8c004',0,'2013-12-28 11:22:39',1),('caf7130d-62c2-d988-ed78-509d158b8678','479763d3-92b4-efaa-62b5-509d14cea8ac','896b73a4-b9fb-1775-2d32-5097f56304eb',0,'2013-04-12 15:40:02',1),('cd8b1b10-6fd4-2353-4d4c-509d15b9cf8a','479763d3-92b4-efaa-62b5-509d14cea8ac','527ca4e0-1afe-7887-555c-508417781d3d',-99,'2013-07-17 14:37:42',0),('cf64093c-80a7-0c7b-ea64-509d15033cff','479763d3-92b4-efaa-62b5-509d14cea8ac','8b81f1da-b41c-05ed-8904-508417a61e9a',0,'2013-07-17 14:37:42',0),('d04956d1-4970-207b-c242-509d1599771e','479763d3-92b4-efaa-62b5-509d14cea8ac','83e11541-1ef5-8636-5db4-508417b55f91',0,'2013-07-17 14:37:42',0),('d04e0952-5a23-e470-61c2-509d15006317','479763d3-92b4-efaa-62b5-509d14cea8ac','7b8857b6-e235-dc13-414d-508417b28a4f',0,'2013-07-17 14:37:42',0),('d0517568-d631-6a7b-fc56-50892aa7bf65','1930b2e8-28de-d387-0727-50892776413a','78184894-83d4-2506-f586-5084172ecb2c',-99,'2013-06-20 10:46:08',0),('d0670e9b-f0de-f9c9-f661-50892a1fcff3','1930b2e8-28de-d387-0727-50892776413a','6d95f3ba-6fb9-1b46-a173-508417d7c3be',0,'2013-06-20 10:46:08',0),('d1585a58-c993-513f-3177-509d155787e0','479763d3-92b4-efaa-62b5-509d14cea8ac','1409d352-9251-9044-9fef-5084178c6f76',-98,'2013-07-17 14:37:42',0),('d2fb958d-7d4f-2f74-0aec-509d15ee5b41','479763d3-92b4-efaa-62b5-509d14cea8ac','272fcea8-3cc8-8f2d-64d4-508417844e2d',0,'2013-07-17 14:37:42',0),('d3023ff1-f9b7-4c6b-4e06-509d15cd5dee','479763d3-92b4-efaa-62b5-509d14cea8ac','b75cb33c-c970-2960-6cc9-50841c8bda02',0,'2013-12-28 11:22:39',1),('d307fcf2-04b8-ea43-d3c9-509d15bb4b32','479763d3-92b4-efaa-62b5-509d14cea8ac','122a06e9-cd29-010a-50ca-5084174a9691',0,'2013-07-17 14:37:42',0),('d30b0366-3fa4-2ab7-aab1-50892a05ce17','1930b2e8-28de-d387-0727-50892776413a','93974fd9-c0fe-40d6-5f13-50841701568d',0,'2013-06-20 10:46:08',0),('d312508a-2bf1-e053-0f5a-50892ab30f8d','1930b2e8-28de-d387-0727-50892776413a','2c8d637d-5394-4763-22d8-508417b34302',0,'2013-06-20 10:46:08',0),('d3153035-7f42-d359-190f-50892ae769f7','1930b2e8-28de-d387-0727-50892776413a','b19db6d9-a3e7-e7a2-87fb-508417d67c30',0,'2013-06-20 10:46:08',0),('d5b3c8ea-8b1d-e7ba-bb58-509d1595a7fc','479763d3-92b4-efaa-62b5-509d14cea8ac','72ffa547-ca50-0c61-524f-50841786b745',0,'2013-07-17 14:37:42',0),('d5b8b88d-4b94-8a0a-2bbb-50892acd7be5','1930b2e8-28de-d387-0727-50892776413a','efc783a1-02ec-8eca-c756-508417bc0af0',0,'2013-06-20 10:46:08',0),('d5bb0aad-2813-93a4-4d1c-509d15f38038','479763d3-92b4-efaa-62b5-509d14cea8ac','ed1a14e0-cd02-0e72-e6fe-508417f8fa47',0,'2013-07-17 14:37:42',0),('d5c57178-40e4-7711-71bc-509d156ceaab','479763d3-92b4-efaa-62b5-509d14cea8ac','ea68ec9e-0b48-1b2b-f5f4-50841789a721',-99,'2013-07-17 14:37:42',0),('d5ce7c60-7b6b-a070-632a-50892a031f5e','1930b2e8-28de-d387-0727-50892776413a','88ccb236-749a-94b0-2a3d-508417145067',0,'2013-06-20 10:46:08',0),('d86af0e4-3e2f-2a34-f3c8-50892aa3bebe','1930b2e8-28de-d387-0727-50892776413a','1f00c076-157b-4052-7491-5084177758f9',0,'2013-06-20 10:46:08',0),('d8712892-a7da-a374-312d-509d15468183','479763d3-92b4-efaa-62b5-509d14cea8ac','704c0d11-115f-c4db-726f-50841727329c',-99,'2013-07-17 14:37:42',0),('d87d764a-4f67-8e6c-0789-50892a65b7c6','1930b2e8-28de-d387-0727-50892776413a','4fbc7d20-297a-382a-17c2-508417d21698',0,'2013-06-20 10:46:08',0),('d88078b1-1b54-0870-d713-50892a61520b','1930b2e8-28de-d387-0727-50892776413a','6b660c8c-4604-085c-5108-50841756b253',0,'2013-06-20 10:46:08',0),('db28ff54-5d9c-a2cd-b8db-50892a0bf972','1930b2e8-28de-d387-0727-50892776413a','524df834-0a6c-dfce-4b67-508417061013',0,'2013-06-20 10:46:08',0),('db2dba41-de10-7bc6-96c8-50892a465b73','1930b2e8-28de-d387-0727-50892776413a','272fcea8-3cc8-8f2d-64d4-508417844e2d',0,'2013-06-20 10:46:08',0),('db2e9402-8d31-8108-c9eb-50892ae3f11d','1930b2e8-28de-d387-0727-50892776413a','9407930a-e246-e177-bfe3-50841c517df6',-99,'2013-12-28 11:22:39',1),('db2febeb-0ff8-8be3-cd57-509d15926856','479763d3-92b4-efaa-62b5-509d14cea8ac','6b660c8c-4604-085c-5108-50841756b253',0,'2013-07-17 14:37:42',0),('db352150-a15c-dda6-f92d-50892a0316a6','1930b2e8-28de-d387-0727-50892776413a','1c2c70d2-076e-c6a8-ad71-508417badad1',0,'2013-06-20 10:46:08',0),('db3cd5fe-e0e2-c75a-15d7-50892a1e05d1','1930b2e8-28de-d387-0727-50892776413a','3fb35cc1-d24b-36e1-86fa-50841725eddd',-99,'2013-06-20 10:46:08',0),('ddc9dfe6-1362-dcf7-6675-509d15ec6a84','479763d3-92b4-efaa-62b5-509d14cea8ac','da1ef3b6-8596-3aee-ae98-5084176072bd',90,'2013-07-17 14:37:42',0),('e08426de-507a-cf7e-7c00-509d15c88bdc','479763d3-92b4-efaa-62b5-509d14cea8ac','c06305bf-1b50-592c-ce22-5084175071ec',0,'2013-07-17 14:37:42',0),('e08e82d6-cf73-feba-d294-509d15b74116','479763d3-92b4-efaa-62b5-509d14cea8ac','65850d5b-85d0-6fb0-0d21-5084176b36a2',0,'2013-07-17 14:37:42',0),('e334180b-b3c2-44dc-6970-509d1514deec','479763d3-92b4-efaa-62b5-509d14cea8ac','dceb2523-ca41-9242-d2dd-508417cdef50',0,'2013-07-17 14:37:42',0),('e341c252-af01-da96-98eb-509d15e38a16','479763d3-92b4-efaa-62b5-509d14cea8ac','5618c1cd-6930-f6eb-1f3d-50841c3dc7a2',0,'2013-12-28 11:22:39',1),('e3492a54-6804-c975-7874-509d1520d69f','479763d3-92b4-efaa-62b5-509d14cea8ac','e2480b7d-e398-73e4-4868-508417bb5e20',0,'2013-07-17 14:37:42',0),('e3519756-6be7-925c-476e-50892acd75a4','1930b2e8-28de-d387-0727-50892776413a','6780002e-a6c7-6774-f87d-50841771db97',0,'2013-06-20 10:46:08',0),('e35281f2-afc2-59ab-8d56-50892ad2c392','1930b2e8-28de-d387-0727-50892776413a','122a06e9-cd29-010a-50ca-5084174a9691',0,'2013-06-20 10:46:08',0),('e359513e-d7c9-bf00-0937-50892a89b9f0','1930b2e8-28de-d387-0727-50892776413a','7b8857b6-e235-dc13-414d-508417b28a4f',0,'2013-06-20 10:46:08',0),('e35b98f8-8b30-afeb-c55c-509d15819612','479763d3-92b4-efaa-62b5-509d14cea8ac','6d95f3ba-6fb9-1b46-a173-508417d7c3be',0,'2013-07-17 14:37:42',0),('e5f7022f-ebdf-d3db-6c8b-509d15d6181c','479763d3-92b4-efaa-62b5-509d14cea8ac','57ef29fe-fd01-c675-d159-50841761a1df',0,'2013-07-17 14:37:42',0),('e601799f-b382-8fe0-5246-50892a7880f5','1930b2e8-28de-d387-0727-50892776413a','682226d9-5289-4634-8142-508417a451f2',0,'2013-06-20 10:46:08',0),('e60f16ee-449d-abbf-da59-50892a6f47e9','1930b2e8-28de-d387-0727-50892776413a','2fb38853-aa96-e896-9f83-50841703b164',89,'2013-06-20 10:46:08',0),('e8b0e6cf-defd-0f69-d6ef-509d1519b601','479763d3-92b4-efaa-62b5-509d14cea8ac','df8dab5e-ab38-2fc7-7983-508417b3e21d',0,'2013-07-17 14:37:42',0),('e8b41e3d-4bea-e945-85b7-509d1517c4d0','479763d3-92b4-efaa-62b5-509d14cea8ac','26f4b716-97fa-c6cb-2bfd-5084170d21c3',-98,'2013-07-17 14:37:42',0),('e8b57c8e-8b52-3164-a63d-50892a9f8b08','1930b2e8-28de-d387-0727-50892776413a','c06305bf-1b50-592c-ce22-5084175071ec',0,'2013-06-20 10:46:08',0),('e8c03063-d961-7810-d429-50892ab1ebb7','1930b2e8-28de-d387-0727-50892776413a','a9417947-ea2f-33ac-51bc-50841752b216',0,'2013-06-20 10:46:08',0),('e8c38f17-7df6-e0f5-9c42-50892ab093d6','1930b2e8-28de-d387-0727-50892776413a','83e11541-1ef5-8636-5db4-508417b55f91',0,'2013-06-20 10:46:08',0),('e8c6a077-192f-273f-32c8-50892aede02c','1930b2e8-28de-d387-0727-50892776413a','c4a18488-b5ec-8695-af70-5084178fdf9f',0,'2013-06-20 10:46:08',0),('e8c96b45-4312-bdd4-1ac4-509d154ab8dd','479763d3-92b4-efaa-62b5-509d14cea8ac','a1a183fd-5bef-d8fe-7a0b-5097f56ed6a6',0,'2013-04-12 15:40:02',1),('eb6bd207-e46b-d927-8124-50892a0fffc1','1930b2e8-28de-d387-0727-50892776413a','dceb2523-ca41-9242-d2dd-508417cdef50',0,'2013-06-20 10:46:08',0),('eb704309-9882-f847-5965-509d15f88e51','479763d3-92b4-efaa-62b5-509d14cea8ac','c4a18488-b5ec-8695-af70-5084178fdf9f',0,'2013-07-17 14:37:42',0),('eb757e70-cc6a-7272-d020-50892ad45218','1930b2e8-28de-d387-0727-50892776413a','e57f040d-94b4-b774-b260-50841cd6805d',0,'2013-12-28 11:22:39',1),('eb77d2a6-59f6-4d3f-da2b-50892a6e0f41','1930b2e8-28de-d387-0727-50892776413a','704c0d11-115f-c4db-726f-50841727329c',0,'2013-06-20 10:46:08',0),('ee0edf28-051a-4a16-9a70-509d15884243','479763d3-92b4-efaa-62b5-509d14cea8ac','524df834-0a6c-dfce-4b67-508417061013',-98,'2013-07-17 14:37:42',0),('f0d5871d-b85e-589b-bb4a-509d156c74ab','479763d3-92b4-efaa-62b5-509d14cea8ac','19921f30-f0c9-105d-a0fb-5084176fe5c6',0,'2013-07-17 14:37:42',0),('f0ee1c86-5d1d-1bd5-dd83-50892afbf79e','1930b2e8-28de-d387-0727-50892776413a','1409d352-9251-9044-9fef-5084178c6f76',0,'2013-06-20 10:46:08',0),('f2fa9e0c-581e-3777-bada-509d1509c01f','479763d3-92b4-efaa-62b5-509d14cea8ac','da25ff4c-1f22-e865-4f2a-508417789d90',-99,'2013-07-17 14:37:42',0),('f378512e-4f22-cbff-6529-509d157ee591','479763d3-92b4-efaa-62b5-509d14cea8ac','4a6cf9da-6c2b-52d3-9cc5-50841775ef34',0,'2013-07-17 14:37:42',0),('f3919a14-7cf5-4ec0-d3de-509d1527f2b6','479763d3-92b4-efaa-62b5-509d14cea8ac','271c49c8-5703-f99a-5e69-508417b516b5',0,'2013-07-17 14:37:42',0),('f396c596-5d6c-5c75-513a-50892af427b4','1930b2e8-28de-d387-0727-50892776413a','e2480b7d-e398-73e4-4868-508417bb5e20',0,'2013-06-20 10:46:08',0),('f3975eb7-33c1-bbe9-43a1-50892a096308','1930b2e8-28de-d387-0727-50892776413a','72ffa547-ca50-0c61-524f-50841786b745',0,'2013-06-20 10:46:08',0),('f399d53a-48d5-0404-4971-50892ad4064c','1930b2e8-28de-d387-0727-50892776413a','65850d5b-85d0-6fb0-0d21-5084176b36a2',0,'2013-06-20 10:46:08',0),('f99e0c8e-d264-4f33-7b6e-509d15b091df','479763d3-92b4-efaa-62b5-509d14cea8ac','cca66943-d13a-daa9-39e8-508417733e19',0,'2013-07-17 14:37:42',0),('fb3d0901-8c4d-7f61-3370-509d155f0b33','479763d3-92b4-efaa-62b5-509d14cea8ac','88a52693-d92c-5bdf-4199-508417f80b1d',0,'2013-07-17 14:37:42',0),('fb770bfc-047c-6298-8160-509d151b096c','479763d3-92b4-efaa-62b5-509d14cea8ac','16f8d2f2-21ae-12af-cf8f-508417e317a4',0,'2013-07-17 14:37:42',0),('fb840840-8c52-e889-8ce0-50892a618161','1930b2e8-28de-d387-0727-50892776413a','57ef29fe-fd01-c675-d159-50841761a1df',0,'2013-06-20 10:46:08',0),('fbf0057e-0aaa-8c75-23f6-50892a77e8da','1930b2e8-28de-d387-0727-50892776413a','271c49c8-5703-f99a-5e69-508417b516b5',0,'2013-06-20 10:46:08',0),('fc4b008f-beb2-c0d0-9aa5-50892a1e33d2','1930b2e8-28de-d387-0727-50892776413a','19921f30-f0c9-105d-a0fb-5084176fe5c6',0,'2013-06-20 10:46:08',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
INSERT INTO `acl_roles_users` VALUES ('135e23dd-111c-c581-e040-51e6b7b6aebc','479763d3-92b4-efaa-62b5-509d14cea8ac','9662e8dd-039b-9cd6-0711-51e6b53ec5c5','2013-07-17 15:25:03',1),('18ffce1a-9f60-3479-70b4-508927c0e17a','1930b2e8-28de-d387-0727-50892776413a','32675a41-2ecc-004a-120b-50892777c7b7','2012-10-25 11:52:20',0),('d0caab6e-5d93-7141-15ef-509d1004ab20','1930b2e8-28de-d387-0727-50892776413a','48319c1e-75c7-f88d-1fd0-509d004a8f73','2012-11-09 14:16:15',0);
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` varchar(100) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
INSERT INTO `aor_fields` VALUES ('d63b33fb-634f-be71-ff58-52c06f872344','','2013-12-29 18:51:14','2013-12-29 19:47:02','1','1',NULL,0,'ce6cb9b3-af9f-535f-d1e8-52c06f823992',2,'YToxOntpOjA7czo4OiJDb250YWN0cyI7fQ==','first_name',1,0,'First Name',NULL,NULL,NULL,'0',NULL);
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
INSERT INTO `aor_reports` VALUES ('ce6cb9b3-af9f-535f-d1e8-52c06f823992','Contactos','2013-12-29 18:51:14','2013-12-29 19:47:02','1','1',NULL,0,'1','Contacts');
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `url` varchar(25) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Create',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atrix_customprospects`
--

DROP TABLE IF EXISTS `atrix_customprospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atrix_customprospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `assigned_user_name` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `campaign_id` varchar(40) DEFAULT NULL,
  `related_type` varchar(60) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_id` varchar(40) DEFAULT NULL,
  `contact_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atrix_customprospects`
--

LOCK TABLES `atrix_customprospects` WRITE;
/*!40000 ALTER TABLE `atrix_customprospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `atrix_customprospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atrix_customprospects_audit`
--

DROP TABLE IF EXISTS `atrix_customprospects_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atrix_customprospects_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_atrix_customprospects_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atrix_customprospects_audit`
--

LOCK TABLES `atrix_customprospects_audit` WRITE;
/*!40000 ALTER TABLE `atrix_customprospects_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `atrix_customprospects_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES ('84043c8c-0da2-d9a3-13a9-51c315a0f75a','ligar para o cliente oprotunidade 31','2013-06-20 14:44:27','2013-06-20 16:41:24','1','1',NULL,0,'1',0,15,'2013-06-20 16:00:00','2013-06-20 16:15:00','Opportunities','Held','Inbound','5fcf6fa4-5d67-8199-5667-51c30de4f252',300,300,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
INSERT INTO `calls_users` VALUES ('a2c4e8f2-7d07-f79b-a64f-51c3153bdce6','84043c8c-0da2-d9a3-13a9-51c315a0f75a','1','1','none','2013-06-20 14:44:27',0);
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES ('f0a67268-736c-9126-3551-50a29647d1c8','Renovação de contrato 34','2012-11-13 18:51:03','2012-11-15 11:31:09','1','1',1,'1',1,0,'http://',NULL,'2012-11-13','2012-11-16','Active',0,'-99',NULL,NULL,NULL,NULL,'Email',NULL,'Renovação de Contrato que está na 34ª renda.',NULL);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
INSERT INTO `campaigns_audit` VALUES ('e3f76a6f-3cea-902c-063d-50a4d0cdfcdb','f0a67268-736c-9126-3551-50a29647d1c8','2012-11-15 11:21:35','1','status','enum','Planning','Active',NULL,NULL);
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Closed',
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SugarCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.16'),('MySettings','tab','YToxNDp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjM7czo1OiJDYXNlcyI7aTo0O3M6NToiVGFza3MiO2k6NTtzOjY6IkVtYWlscyI7aTo2O3M6OToiRG9jdW1lbnRzIjtpOjc7czo4OiJDYWxlbmRhciI7aTo4O3M6OToiUHJvc3BlY3RzIjtpOjk7czoxMToiQU9SX1JlcG9ydHMiO2k6MTA7czoxMjoiQU9XX1dvcmtGbG93IjtpOjExO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjEyO3M6MTI6IkFPU19Qcm9kdWN0cyI7aToxMztzOjEwOiJ6cjJfUmVwb3J0Ijt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','Cross Informática'),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('QuickCRM','sugar_config','dmFyIG1vYmlsZV9lZGl0aW9uID0gJ0NFJyxRX0FQST0nMi4zJywgYXBwX3N1cHBvcnQ9dHJ1ZSwgbW9kdWxlX2FjY2Vzcz17fSwgc3VnYXJfbW9kX2ZpZWxkcz17fTt2YXIganNfcGx1Z2lucz1bXSxodG1sX3BsdWdpbnM9W107dmFyIHN1Z2FyX3ZlcnNpb24gPSAiNi41LjE2Ijt2YXIgc3VnYXJfbmFtZSA9ICJDcm9zcyBDUk0iO3ZhciBkZWZhdWx0X2xhbmd1YWdlID0gInB0X1BUIjt2YXIgc3VnYXJfbGFuZ3VhZ2VzID0geyJlbl91cyI6IkVuZ2xpc2ggKFVTKSIsInB0X1BUIjoiUG9ydHVndVx1MDBlYXMgKFBUKSJ9O3ZhciBkZWZhdWx0X2N1cnJlbmN5X25hbWUgPSAiRXVyb3MiO3ZhciBkZWZhdWx0X2N1cnJlbmN5X3N5bWJvbCA9ICLigqwiO3ZhciBkZWZhdWx0X2RhdGVfZm9ybWF0ID0gImQvbS9ZIjt2YXIgZGJfdHlwZSA9ICJteXNxbCIsIGpqd2dfaW5zdGFsbGVkID0gdHJ1ZSxqandnX2RlZl91bml0PSJtaWxlcyIsamp3Z19tb2R1bGVzPSIiLGpqd2dfY19sYXQ9MzkuNSxqandnX2NfbG5nPS05OS41LCBzZWN1cml0eXN1aXRlID0gdHJ1ZSwgb2ZmbGluZV9tYXhfZGF5cyA9IDA7dmFyIHF1aWNrY3JtX3VwZF90aW1lID0gIjEzODgzNDUwMzkiO3ZhciBDdXN0b21IVE1MPWZhbHNlO3ZhciBDdXN0b21KUz1mYWxzZTs='),('QuickCRM','en_us','dmFyIFJFU19DUkVBVEU9J0NyZWF0ZScsUkVTX0xJU1Q9J0xpc3QnLFJFU19BRERfVE9fSE9NRT0nTWFyayBhcyBGYXZvcml0ZScsUkVTX1JFTV9GUk9NX0hPTUU9J1JlbW92ZSBGcm9tIE15IEZhdm9yaXRlcycsUkVTX1JFQ09SRF9FUlJPUj0nRXJyb3IgcmV0cmlldmluZyByZWNvcmQuICBUaGlzIHJlY29yZCBtYXkgYmUgZGVsZXRlZCBvciB5b3UgbWF5IG5vdCBiZSBhdXRob3JpemVkIHRvIHZpZXcgaXQuJyxSRVNfTEFTVF9WSUVXRUQ9J1JlY2VudGx5IFZpZXdlZCcsIFJFU19ERUxFVEVfQ09ORklSTUFUSU9OPSdBcmUgeW91IHN1cmUgeW91IHdhbnQgdG8gZGVsZXRlIHRoaXMgcmVjb3JkPycsIFJFU19ERUxfTEFCRUw9J0RlbGV0ZScsIFJFU19ORVhUX0xBQkVMPSdOZXh0JywgUkVTX1BSRVZJT1VTX0xBQkVMPSdQcmV2aW91cyc7CnZhciBSRVNfSE9NRV9MQUJFTD0nSG9tZScsUkVTX1NZTkM9J1N5bmMnLFJFU19TQVZFRFNFQVJDSD0nU2F2ZWQgU2VhcmNoZXMnLFJFU19TQVZFU0VBUkNIPSdTYXZlIHNlYXJjaCBhczonLFJFU19ESVNBQkxFRD0nRGlzYWJsZWQnOwp2YXIgc3VnYXJfYXBwX2xpc3Rfc3RyaW5ncyA9IGpRdWVyeS5wYXJzZUpTT04oJ3sibW9kdWxlTGlzdCI6eyJBY2NvdW50cyI6IkFjY291bnRzIiwiQ29udGFjdHMiOiJDb250YWN0cyIsIk9wcG9ydHVuaXRpZXMiOiJPcHBvcnR1bml0aWVzIiwiTGVhZHMiOiJMZWFkcyIsIkNhbGxzIjoiQ2FsbHMiLCJNZWV0aW5ncyI6Ik1lZXRpbmdzIiwiQ2FzZXMiOiJDYXNlcyIsIlByb2plY3QiOiJQcm9qZWN0cyIsIlByb2plY3RUYXNrIjoiUHJvamVjdCBUYXNrcyIsIlRhc2tzIjoiVGFza3MiLCJOb3RlcyI6Ik5vdGVzIiwiU2F2ZWRTZWFyY2hlcyI6IlNhdmVkIFNlYXJjaGVzIn0sIm1vZHVsZUxpc3RTaW5ndWxhciI6eyJBY2NvdW50cyI6IkFjY291bnQiLCJDb250YWN0cyI6IkNvbnRhY3QiLCJPcHBvcnR1bml0aWVzIjoiT3Bwb3J0dW5pdHkiLCJMZWFkcyI6IkxlYWQiLCJDYWxscyI6IkNhbGwiLCJNZWV0aW5ncyI6Ik1lZXRpbmciLCJDYXNlcyI6IkNhc2UiLCJQcm9qZWN0IjoiUHJvamVjdCIsIlByb2plY3RUYXNrIjoiUHJvamVjdCBUYXNrIiwiVGFza3MiOiJUYXNrIiwiTm90ZXMiOiJOb3RlIn0sInBhcmVudF90eXBlX2Rpc3BsYXkiOnsiQWNjb3VudHMiOiJBY2NvdW50IiwiQ29udGFjdHMiOiJDb250YWN0IiwiVGFza3MiOiJUYXNrIiwiT3Bwb3J0dW5pdGllcyI6Ik9wcG9ydHVuaXR5IiwiQnVncyI6IkJ1ZyIsIkNhc2VzIjoiQ2FzZSIsIkxlYWRzIjoiTGVhZCIsIlByb2plY3QiOiJQcm9qZWN0IiwiUHJvamVjdFRhc2siOiJQcm9qZWN0IFRhc2siLCJQcm9zcGVjdHMiOiJUYXJnZXQiLCJQcm9kdWN0cyI6IlByb2R1dG8iLCJRdW90ZXMiOiJDb3RhXHUwMGU3XHUwMGUzbyJ9LCJkYXRlX3NlYXJjaCI6eyI9IjoiRXF1YWxzIiwibm90X2VxdWFsIjoiTm90IE9uIiwiZ3JlYXRlcl90aGFuIjoiQWZ0ZXIiLCJsZXNzX3RoYW4iOiJCZWZvcmUiLCJsYXN0XzdfZGF5cyI6Ikxhc3QgNyBEYXlzIiwibmV4dF83X2RheXMiOiJOZXh0IDcgRGF5cyIsImxhc3RfMzBfZGF5cyI6Ikxhc3QgMzAgRGF5cyIsIm5leHRfMzBfZGF5cyI6Ik5leHQgMzAgRGF5cyIsImxhc3RfbW9udGgiOiJMYXN0IE1vbnRoIiwidGhpc19tb250aCI6IlRoaXMgTW9udGgiLCJuZXh0X21vbnRoIjoiTmV4dCBNb250aCIsImxhc3RfeWVhciI6Ikxhc3QgWWVhciIsInRoaXNfeWVhciI6IlRoaXMgWWVhciIsIm5leHRfeWVhciI6Ik5leHQgWWVhciIsImJldHdlZW4iOiJJcyBCZXR3ZWVuIiwidG9kYXkiOiJ0b2RheSJ9LCJhY2NvdW50X3R5cGVfZG9tIjp7IiI6IiIsIkFuYWx5c3QiOiJBbmFseXN0IiwiQ29tcGV0aXRvciI6IkNvbXBldGl0b3IiLCJDdXN0b21lciI6IkN1c3RvbWVyIiwiSW50ZWdyYXRvciI6IkludGVncmF0b3IiLCJJbnZlc3RvciI6IkludmVzdG9yIiwiUGFydG5lciI6IlBhcnRuZXIiLCJQcmVzcyI6IlByZXNzIiwiUHJvc3BlY3QiOiJQcm9zcGVjdCIsIlJlc2VsbGVyIjoiUmVzZWxsZXIiLCJPdGhlciI6Ik90aGVyIn0sImluZHVzdHJ5X2RvbSI6eyIiOiIiLCJBcHBhcmVsIjoiQXBwYXJlbCIsIkJhbmtpbmciOiJCYW5raW5nIiwiQmlvdGVjaG5vbG9neSI6IkJpb3RlY2hub2xvZ3kiLCJDaGVtaWNhbHMiOiJDaGVtaWNhbHMiLCJDb21tdW5pY2F0aW9ucyI6IkNvbW11bmljYXRpb25zIiwiQ29uc3RydWN0aW9uIjoiQ29uc3RydWN0aW9uIiwiQ29uc3VsdGluZyI6IkNvbnN1bHRpbmciLCJFZHVjYXRpb24iOiJFZHVjYXRpb24iLCJFbGVjdHJvbmljcyI6IkVsZWN0cm9uaWNzIiwiRW5lcmd5IjoiRW5lcmd5IiwiRW5naW5lZXJpbmciOiJFbmdpbmVlcmluZyIsIkVudGVydGFpbm1lbnQiOiJFbnRlcnRhaW5tZW50IiwiRW52aXJvbm1lbnRhbCI6IkVudmlyb25tZW50YWwiLCJGaW5hbmNlIjoiRmluYW5jZSIsIkdvdmVybm1lbnQiOiJHb3Zlcm5tZW50IiwiSGVhbHRoY2FyZSI6IkhlYWx0aGNhcmUiLCJIb3NwaXRhbGl0eSI6Ikhvc3BpdGFsaXR5IiwiSW5zdXJhbmNlIjoiSW5zdXJhbmNlIiwiTWFjaGluZXJ5IjoiTWFjaGluZXJ5IiwiTWFudWZhY3R1cmluZyI6Ik1hbnVmYWN0dXJpbmciLCJNZWRpYSI6Ik1lZGlhIiwiTm90IEZvciBQcm9maXQiOiJOb3QgRm9yIFByb2ZpdCIsIlJlY3JlYXRpb24iOiJSZWNyZWF0aW9uIiwiUmV0YWlsIjoiUmV0YWlsIiwiU2hpcHBpbmciOiJTaGlwcGluZyIsIlRlY2hub2xvZ3kiOiJUZWNobm9sb2d5IiwiVGVsZWNvbW11bmljYXRpb25zIjoiVGVsZWNvbW11bmljYXRpb25zIiwiVHJhbnNwb3J0YXRpb24iOiJUcmFuc3BvcnRhdGlvbiIsIlV0aWxpdGllcyI6IlV0aWxpdGllcyIsIk90aGVyIjoiT3RoZXIifSwic2FsdXRhdGlvbl9kb20iOnsiIjoiIiwiTXIuIjoiTXIuIiwiTXMuIjoiTXMuIiwiTXJzLiI6Ik1ycy4iLCJEci4iOiJEci4iLCJQcm9mLiI6IlByb2YuIn0sImxlYWRfc291cmNlX2RvbSI6eyIiOiIiLCJDb2xkIENhbGwiOiJDb2xkIENhbGwiLCJFeGlzdGluZyBDdXN0b21lciI6IkV4aXN0aW5nIEN1c3RvbWVyIiwiU2VsZiBHZW5lcmF0ZWQiOiJTZWxmIEdlbmVyYXRlZCIsIkVtcGxveWVlIjoiRW1wbG95ZWUiLCJQYXJ0bmVyIjoiUGFydG5lciIsIlB1YmxpYyBSZWxhdGlvbnMiOiJQdWJsaWMgUmVsYXRpb25zIiwiRGlyZWN0IE1haWwiOiJEaXJlY3QgTWFpbCIsIkNvbmZlcmVuY2UiOiJDb25mZXJlbmNlIiwiVHJhZGUgU2hvdyI6IlRyYWRlIFNob3ciLCJXZWIgU2l0ZSI6IldlYiBTaXRlIiwiV29yZCBvZiBtb3V0aCI6IldvcmQgb2YgbW91dGgiLCJFbWFpbCI6IkVtYWlsIiwiQ2FtcGFpZ24iOiJDYW1wYWlnbiIsIk90aGVyIjoiT3RoZXIifSwib3Bwb3J0dW5pdHlfcmVsYXRpb25zaGlwX3R5cGVfZG9tIjp7IiI6IiIsIlByaW1hcnkgRGVjaXNpb24gTWFrZXIiOiJQcmltYXJ5IERlY2lzaW9uIE1ha2VyIiwiQnVzaW5lc3MgRGVjaXNpb24gTWFrZXIiOiJCdXNpbmVzcyBEZWNpc2lvbiBNYWtlciIsIkJ1c2luZXNzIEV2YWx1YXRvciI6IkJ1c2luZXNzIEV2YWx1YXRvciIsIlRlY2huaWNhbCBEZWNpc2lvbiBNYWtlciI6IlRlY2huaWNhbCBEZWNpc2lvbiBNYWtlciIsIlRlY2huaWNhbCBFdmFsdWF0b3IiOiJUZWNobmljYWwgRXZhbHVhdG9yIiwiRXhlY3V0aXZlIFNwb25zb3IiOiJFeGVjdXRpdmUgU3BvbnNvciIsIkluZmx1ZW5jZXIiOiJJbmZsdWVuY2VyIiwiT3RoZXIiOiJPdGhlciJ9LCJkb21fbWVldGluZ19hY2NlcHRfc3RhdHVzIjp7ImFjY2VwdCI6IkFjY2VwdGVkIiwiZGVjbGluZSI6IkRlY2xpbmVkIiwidGVudGF0aXZlIjoiVGVudGF0aXZlIiwibm9uZSI6Ik5vbmUifSwiZnBfZXZlbnRfaW52aXRlX3N0YXR1c19kb20iOnsiSW52aXRlZCI6Ikludml0ZWQiLCJOb3QgSW52aXRlZCI6Ik5vdCBJbnZpdGVkIiwiQXR0ZW5kZWQiOiJBdHRlbmRlZCIsIk5vdCBBdHRlbmRlZCI6Ik5vdCBBdHRlbmRlZCJ9LCJmcF9ldmVudF9zdGF0dXNfZG9tIjp7IkFjY2VwdGVkIjoiQWNjZXB0ZWQiLCJEZWNsaW5lZCI6IkRlY2xpbmVkIiwiTm8gUmVzcG9uc2UiOiJObyBSZXNwb25zZSJ9LCJvcHBvcnR1bml0eV90eXBlX2RvbSI6eyIiOiIiLCJFeGlzdGluZyBCdXNpbmVzcyI6IkV4aXN0aW5nIEJ1c2luZXNzIiwiTmV3IEJ1c2luZXNzIjoiTmV3IEJ1c2luZXNzIn0sInNhbGVzX3N0YWdlX2RvbSI6eyJQcm9zcGVjdGluZyI6IlByb3NwZWN0aW5nIiwiUXVhbGlmaWNhdGlvbiI6IlF1YWxpZmljYXRpb24iLCJOZWVkcyBBbmFseXNpcyI6Ik5lZWRzIEFuYWx5c2lzIiwiVmFsdWUgUHJvcG9zaXRpb24iOiJWYWx1ZSBQcm9wb3NpdGlvbiIsIklkLiBEZWNpc2lvbiBNYWtlcnMiOiJJZC4gRGVjaXNpb24gTWFrZXJzIiwiUGVyY2VwdGlvbiBBbmFseXNpcyI6IlBlcmNlcHRpb24gQW5hbHlzaXMiLCJQcm9wb3NhbFwvUHJpY2UgUXVvdGUiOiJQcm9wb3NhbFwvUHJpY2UgUXVvdGUiLCJOZWdvdGlhdGlvblwvUmV2aWV3IjoiTmVnb3RpYXRpb25cL1JldmlldyIsIkNsb3NlZCBXb24iOiJDbG9zZWQgV29uIiwiQ2xvc2VkIExvc3QiOiJDbG9zZWQgTG9zdCJ9LCJsZWFkX3N0YXR1c19kb20iOnsiIjoiIiwiTmV3IjoiTmV3IiwiQXNzaWduZWQiOiJBc3NpZ25lZCIsIkluIFByb2Nlc3MiOiJJbiBQcm9jZXNzIiwiQ29udmVydGVkIjoiQ29udmVydGVkIiwiUmVjeWNsZWQiOiJSZWN5Y2xlZCIsIkRlYWQiOiJEZWFkIn0sImNhbGxfc3RhdHVzX2RvbSI6eyJQbGFubmVkIjoiUGxhbm5lZCIsIkhlbGQiOiJIZWxkIiwiTm90IEhlbGQiOiJOb3QgSGVsZCJ9LCJjYWxsX2RpcmVjdGlvbl9kb20iOnsiSW5ib3VuZCI6IkluYm91bmQiLCJPdXRib3VuZCI6Ik91dGJvdW5kIn0sInJlbWluZGVyX3RpbWVfb3B0aW9ucyI6eyI2MCI6IjEgbWludXRlIHByaW9yIiwiMzAwIjoiNSBtaW51dGVzIHByaW9yIiwiNjAwIjoiMTAgbWludXRlcyBwcmlvciIsIjkwMCI6IjE1IG1pbnV0ZXMgcHJpb3IiLCIxODAwIjoiMzAgbWludXRlcyBwcmlvciIsIjM2MDAiOiIxIGhvdXIgcHJpb3IiLCI3MjAwIjoiMiBob3VycyBwcmlvciIsIjEwODAwIjoiMyBob3VycyBwcmlvciIsIjE4MDAwIjoiNSBob3VycyBwcmlvciIsIjg2NDAwIjoiMSBkYXkgcHJpb3IifSwicmVwZWF0X3R5cGVfZG9tIjp7IiI6Ik5vbmUiLCJEYWlseSI6IkRhaWx5IiwiV2Vla2x5IjoiV2Vla2x5IiwiTW9udGhseSI6Ik1vbnRobHkiLCJZZWFybHkiOiJZZWFybHkifSwibWVldGluZ19zdGF0dXNfZG9tIjp7IlBsYW5uZWQiOiJQbGFubmVkIiwiSGVsZCI6IkhlbGQiLCJOb3QgSGVsZCI6Ik5vdCBIZWxkIn0sImVhcG1fbGlzdCI6eyJTdWdhciI6IlN1Z2FyIiwiV2ViRXgiOiJXZWJFeCIsIkdvVG9NZWV0aW5nIjoiR29Ub01lZXRpbmciLCJJQk1TbWFydENsb3VkIjoiSUJNIFNtYXJ0Q2xvdWQiLCJHb29nbGUiOiJHb29nbGUiLCJCb3giOiJCb3gubmV0IiwiRmFjZWJvb2siOiJGYWNlYm9vayIsIlR3aXR0ZXIiOiJUd2l0dGVyIn0sImR1cmF0aW9uX2RvbSI6eyIiOiJOb25lIiwiOTAwIjoiMTUgbWludXRlcyIsIjE4MDAiOiIzMCBtaW51dGVzIiwiMjcwMCI6IjQ1IG1pbnV0ZXMiLCIzNjAwIjoiMSBob3VyIiwiNTQwMCI6IjEuNSBob3VycyIsIjcyMDAiOiIyIGhvdXJzIiwiMTA4MDAiOiIzIGhvdXJzIiwiMjE2MDAiOiI2IGhvdXJzIiwiODY0MDAiOiIxIGRheSIsIjE3MjgwMCI6IjIgZGF5cyIsIjI1OTIwMCI6IjMgZGF5cyIsIjYwNDgwMCI6IjEgd2VlayJ9LCJjYXNlX3R5cGVfZG9tIjp7IkFkbWluaXN0cmF0aW9uIjoiQWRtaW5pc3RyYXRpb24iLCJQcm9kdWN0IjoiUHJvZHVjdCIsIlVzZXIiOiJVc2VyIn0sImNhc2VfcHJpb3JpdHlfZG9tIjp7IlAxIjoiSGlnaCIsIlAyIjoiTWVkaXVtIiwiUDMiOiJMb3cifSwiY2FzZV9zdGF0ZV9kb20iOnsiT3BlbiI6Ik9wZW4iLCJDbG9zZWQiOiJDbG9zZWQifSwicHJvamVjdF9zdGF0dXNfZG9tIjp7IkRyYWZ0IjoiRHJhZnQiLCJJbiBSZXZpZXciOiJJbiBSZXZpZXciLCJQdWJsaXNoZWQiOiJQdWJsaXNoZWQifSwicHJvamVjdHNfcHJpb3JpdHlfb3B0aW9ucyI6eyJoaWdoIjoiSGlnaCIsIm1lZGl1bSI6Ik1lZGl1bSIsImxvdyI6IkxvdyJ9LCJwcm9qZWN0X3Rhc2tfc3RhdHVzX29wdGlvbnMiOnsiTm90IFN0YXJ0ZWQiOiJOb3QgU3RhcnRlZCIsIkluIFByb2dyZXNzIjoiSW4gUHJvZ3Jlc3MiLCJDb21wbGV0ZWQiOiJDb21wbGV0ZWQiLCJQZW5kaW5nIElucHV0IjoiUGVuZGluZyBJbnB1dCIsIkRlZmVycmVkIjoiRGVmZXJyZWQifSwicHJvamVjdF90YXNrX3ByaW9yaXR5X29wdGlvbnMiOnsiSGlnaCI6IkhpZ2giLCJNZWRpdW0iOiJNZWRpdW0iLCJMb3ciOiJMb3cifSwidGFza19zdGF0dXNfZG9tIjp7Ik5vdCBTdGFydGVkIjoiTm90IFN0YXJ0ZWQiLCJJbiBQcm9ncmVzcyI6IkluIFByb2dyZXNzIiwiQ29tcGxldGVkIjoiQ29tcGxldGVkIiwiUGVuZGluZyBJbnB1dCI6IlBlbmRpbmcgSW5wdXQiLCJEZWZlcnJlZCI6IkRlZmVycmVkIn0sInRhc2tfcHJpb3JpdHlfZG9tIjp7IkhpZ2giOiJIaWdoIiwiTWVkaXVtIjoiTWVkaXVtIiwiTG93IjoiTG93In19Jyk7dmFyIHN1Z2FyX2FwcF9zdHJpbmdzID0galF1ZXJ5LnBhcnNlSlNPTigneyJMQkxfQ1JFQVRFX0JVVFRPTl9MQUJFTCI6IkNyZWF0ZSIsIkxCTF9FRElUX0JVVFRPTiI6IkVkaXQiLCJMQkxfTElTVCI6Ikxpc3QiLCJMQkxfU0VBUkNIX0JVVFRPTl9MQUJFTCI6IlNlYXJjaCIsIkxCTF9DVVJSRU5UX1VTRVJfRklMVEVSIjoiTXkgSXRlbXM6IiwiTEJMX0JBQ0siOiJCYWNrIiwiTEJMX1NBVkVfQlVUVE9OX0xBQkVMIjoiU2F2ZSIsIkxCTF9DQU5DRUxfQlVUVE9OX0xBQkVMIjoiQ2FuY2VsIiwiTEJMX01BUktfQVNfRkFWT1JJVEVTIjoiTWFyayBhcyBGYXZvcml0ZSIsIkxCTF9SRU1PVkVfRlJPTV9GQVZPUklURVMiOiJSZW1vdmUgRnJvbSBNeSBGYXZvcml0ZXMiLCJOVENfREVMRVRFX0NPTkZJUk1BVElPTiI6IkFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBkZWxldGUgdGhpcyByZWNvcmQ/IiwiTEJMX0RFTEVURV9CVVRUT05fTEFCRUwiOiJEZWxldGUiLCJFUlJPUl9OT19SRUNPUkQiOiJFcnJvciByZXRyaWV2aW5nIHJlY29yZC4gIFRoaXMgcmVjb3JkIG1heSBiZSBkZWxldGVkIG9yIHlvdSBtYXkgbm90IGJlIGF1dGhvcml6ZWQgdG8gdmlldyBpdC4iLCJMQkxfTEFTVF9WSUVXRUQiOiJSZWNlbnRseSBWaWV3ZWQiLCJMTktfTElTVF9ORVhUIjoiTmV4dCIsIkxOS19MSVNUX1BSRVZJT1VTIjoiUHJldmlvdXMiLCJMQkxfTElTVF9VU0VSX05BTUUiOiJVc2VyIE5hbWUiLCJOVENfTE9HSU5fTUVTU0FHRSI6IlBsZWFzZSBlbnRlciB5b3VyIHVzZXIgbmFtZSBhbmQgcGFzc3dvcmQuIiwiRVJSX0lOVkFMSURfRU1BSUxfQUREUkVTUyI6Im5vdCBhIHZhbGlkIGVtYWlsIGFkZHJlc3MuIiwiTEJMX0FTU0lHTkVEX1RPIjoiQXNzaWduZWQgdG86IiwiTEJMX0NMRUFSX0JVVFRPTl9MQUJFTCI6IkNsZWFyIiwiTEJMX0RVUkFUSU9OX0RBWVMiOiJkYXlzIiwiTEJMX0NMT1NFX0FORF9DUkVBVEVfQlVUVE9OX1RJVExFIjoiQ2xvc2UgYW5kIENyZWF0ZSBOZXciLCJMQkxfQ0xPU0VfQlVUVE9OX1RJVExFIjoiQ2xvc2UiLCJMQkxfTElTVFZJRVdfQUxMIjoiQWxsIiwiTEJMX0xJU1RWSUVXX05PTkUiOiJEZXNlbGVjdCBBbGwifScpOw=='),('QuickCRM','en_usf','0'),('QuickCRM','pt_PT','dmFyIFJFU19DUkVBVEU9J0NyaWFyJyxSRVNfTElTVD0nTGlzdGEnLFJFU19BRERfVE9fSE9NRT0nTWFyY2FyIGNvbW8gRmF2b3JpdG8nLFJFU19SRU1fRlJPTV9IT01FPSdSZW1vdmVyIERvcyBNZXVzIEZhdm9yaXRvcycsUkVTX1JFQ09SRF9FUlJPUj0nRXJybyBhbyByZWN1cGVyYXIgdW0gcmVnaXN0by4gRXN0ZSByZWdpc3RvIHBvZGUgZW5jb250cmFyLXNlIGVsaW1pbmFkbyBvdSB2b2PDqiBwb2RlcsOhIG7Do28gdGVyIHBlcm1pc3PDtWVzIHBhcmEgbyB2aXN1YWxpemFyLicsUkVTX0xBU1RfVklFV0VEPSfDmmx0aW1vcyBhY2Vzc29zJywgUkVTX0RFTEVURV9DT05GSVJNQVRJT049J1RlbSBhIGNlcnRlemEgcXVlIHByZXRlbmRlIGVsaW1pbmFyIGVzdGUgcmVnaXN0bz8nLCBSRVNfREVMX0xBQkVMPSdFbGltaW5hcicsIFJFU19ORVhUX0xBQkVMPSdQcsOzeGltbycsIFJFU19QUkVWSU9VU19MQUJFTD0nQW50ZXJpb3InOwp2YXIgUkVTX0hPTUVfTEFCRUw9J1ByaW5jaXBhbCcsUkVTX1NZTkM9J1NpbmNyb25pemFyJyxSRVNfU0FWRURTRUFSQ0g9J1Blc3F1aXNhcyBHcmF2YWRhcycsUkVTX1NBVkVTRUFSQ0g9J0dyYXZhciBlc3RhIFBlc3F1aXNhIGNvbW86JyxSRVNfRElTQUJMRUQ9J0Rlc2FjdGl2YWRvJzsKdmFyIHN1Z2FyX2FwcF9saXN0X3N0cmluZ3MgPSBqUXVlcnkucGFyc2VKU09OKCd7Im1vZHVsZUxpc3QiOnsiQWNjb3VudHMiOiJFbnRpZGFkZXMiLCJDb250YWN0cyI6IkNvbnRhY3RvcyIsIk9wcG9ydHVuaXRpZXMiOiJPcG9ydHVuaWRhZGVzIiwiTGVhZHMiOiJMZWFkcyIsIkNhbGxzIjoiQ2hhbWFkYXMgVGVsZWZcdTAwZjNuaWNhcyIsIk1lZXRpbmdzIjoiUmV1bmlcdTAwZjVlcyIsIkNhc2VzIjoiT2NvcnJcdTAwZWFuY2lhcyIsIlByb2plY3QiOiJQcm9qZWN0b3MiLCJQcm9qZWN0VGFzayI6IlRhcmVmYXMgZGUgUHJvamVjdG8iLCJUYXNrcyI6IlRhcmVmYXMiLCJOb3RlcyI6Ik5vdGFzIiwiU2F2ZWRTZWFyY2hlcyI6IlBlc3F1aXNhcyBHcmF2YWRhcyJ9LCJtb2R1bGVMaXN0U2luZ3VsYXIiOnsiQWNjb3VudHMiOiJFbnRpZGFkZSIsIkNvbnRhY3RzIjoiQ29udGFjdG8iLCJPcHBvcnR1bml0aWVzIjoiT3BvcnR1bmlkYWRlIiwiTGVhZHMiOiJMZWFkIiwiQ2FsbHMiOiJDaGFtYWRhIiwiTWVldGluZ3MiOiJSZXVuaVx1MDBlM28iLCJDYXNlcyI6Ik9jb3JyXHUwMGVhbmNpYSIsIlByb2plY3QiOiJQcm9qZWN0byIsIlByb2plY3RUYXNrIjoiVGFyZWZhIGRlIFByb2plY3RvIiwiVGFza3MiOiJUYXJlZmEiLCJOb3RlcyI6Ik5vdGEifSwicGFyZW50X3R5cGVfZGlzcGxheSI6eyJCdWdzIjoiQnVnIFRyYWNrZXIiLCJMZWFkcyI6IkxlYWQiLCJQcm9zcGVjdHMiOiJUYXJnZXQiLCJBY2NvdW50cyI6IkVudGlkYWRlIiwiQ29udGFjdHMiOiJDb250YWN0byIsIlRhc2tzIjoiVGFyZWZhIiwiT3Bwb3J0dW5pdGllcyI6Ik9wb3J0dW5pZGFkZSIsIlByb2R1Y3RzIjoiUHJvZHV0byIsIlF1b3RlcyI6IkNvdGFcdTAwZTdcdTAwZTNvIiwiQ2FzZXMiOiJPY29yclx1MDBlYW5jaWEiLCJQcm9qZWN0IjoiUHJvamVjdG8iLCJQcm9qZWN0VGFzayI6IlRhcmVmYSBkZSBQcm9qZWN0byJ9LCJkYXRlX3NlYXJjaCI6eyI9IjoiRXF1YWxzIiwibm90X2VxdWFsIjoiTm90IE9uIiwiZ3JlYXRlcl90aGFuIjoiQWZ0ZXIiLCJsZXNzX3RoYW4iOiJCZWZvcmUiLCJsYXN0XzdfZGF5cyI6Ikxhc3QgNyBEYXlzIiwibmV4dF83X2RheXMiOiJOZXh0IDcgRGF5cyIsImxhc3RfMzBfZGF5cyI6Ikxhc3QgMzAgRGF5cyIsIm5leHRfMzBfZGF5cyI6Ik5leHQgMzAgRGF5cyIsImxhc3RfbW9udGgiOiJMYXN0IE1vbnRoIiwidGhpc19tb250aCI6IlRoaXMgTW9udGgiLCJuZXh0X21vbnRoIjoiTmV4dCBNb250aCIsImxhc3RfeWVhciI6Ikxhc3QgWWVhciIsInRoaXNfeWVhciI6IlRoaXMgWWVhciIsIm5leHRfeWVhciI6Ik5leHQgWWVhciIsImJldHdlZW4iOiJJcyBCZXR3ZWVuIiwidG9kYXkiOiJob2plIn0sImFjY291bnRfdHlwZV9kb20iOnsiIjoiWy1uZW5odW0tXSIsIkFuYWx5c3QiOiJBbmFsaXN0YSIsIkNvbXBldGl0b3IiOiJDb25jb3JyZW50ZSIsIkN1c3RvbWVyIjoiQ2xpZW50ZSIsIkludGVncmF0b3IiOiJJbnRlZ3JhZG9yIiwiSW52ZXN0b3IiOiJJbnZlc3RpZG9yIiwiUGFydG5lciI6IlBhcmNlaXJvIiwiUHJlc3MiOiJJbXByZW5zYSIsIlByb3NwZWN0IjoiUG90ZW5jaWFsIENsaWVudGUiLCJSZXNlbGxlciI6IlJldmVuZGVkb3IiLCJPdGhlciI6Ik91dHJvIn0sImluZHVzdHJ5X2RvbSI6eyIiOiIiLCJBcHBhcmVsIjoiVFx1MDBlYXh0aWwiLCJCYW5raW5nIjoiQmFuY28iLCJCaW90ZWNobm9sb2d5IjoiQmlvdGVjbm9sb2dpYSIsIkNoZW1pY2FscyI6IlF1XHUwMGVkbWljYSIsIkNvbW11bmljYXRpb25zIjoiQ29tdW5pY2FcdTAwZTdcdTAwZjVlcyIsIkNvbnN0cnVjdGlvbiI6IkNvbnN0cnVcdTAwZTdcdTAwZTNvIiwiQ29uc3VsdGluZyI6IkNvbnN1bHRvcmlhIiwiRWR1Y2F0aW9uIjoiRW5zaW5vIiwiRWxlY3Ryb25pY3MiOiJFbGVjdHJcdTAwZjNuaWNvcyIsIkVuZXJneSI6IkVuZXJnaWEiLCJFbmdpbmVlcmluZyI6IkVuZ2VuaGFyaWEiLCJFbnRlcnRhaW5tZW50IjoiRW50cmV0ZW5pbWVudG8iLCJFbnZpcm9ubWVudGFsIjoiQW1iaWVudGFsIiwiRmluYW5jZSI6IkZpbmFuY2VpcmEiLCJHb3Zlcm5tZW50IjoiR292ZXJubyIsIkhlYWx0aGNhcmUiOiJTYVx1MDBmYWRlIiwiSG9zcGl0YWxpdHkiOiJIb3RlbGFyaWEiLCJJbnN1cmFuY2UiOiJTZWd1cm9zIiwiTWFjaGluZXJ5IjoiTWFxdWluYXJpYSIsIk1hbnVmYWN0dXJpbmciOiJNYW51ZmFjdHVyYSIsIk1lZGlhIjoiTWVpb3MgZGUgQ29tdW5pY2FcdTAwZTdcdTAwZTNvIiwiTm90IEZvciBQcm9maXQiOiJTZW0gRmlucyBMdWNyYXRpdm9zIiwiUmVjcmVhdGlvbiI6IkVudHJldGVuaW1lbnRvIiwiUmV0YWlsIjoiUmV0YWxobyIsIlNoaXBwaW5nIjoiRXhwZWRpdG9yZXMiLCJUZWNobm9sb2d5IjoiVGVjbm9sb2dpYSIsIlRlbGVjb21tdW5pY2F0aW9ucyI6IlRlbGVjb211bmljYVx1MDBlN1x1MDBmNWVzIiwiVHJhbnNwb3J0YXRpb24iOiJUcmFuc3BvcnRlcyIsIlV0aWxpdGllcyI6IlNlcnZpXHUwMGU3b3MgUFx1MDBmYWJsaWNvcyIsIk90aGVyIjoiT3V0cm9zIn0sInNhbHV0YXRpb25fZG9tIjp7IiI6IiIsIkRyLiI6IkRyLiIsIlByb2YuIjoiUHJvZi4iLCJNci4iOiJTci4iLCJNcy4iOiJTcmEuIiwiTXJzLiI6IlNyYS4ifSwibGVhZF9zb3VyY2VfZG9tIjp7IiI6IiIsIkRpcmVjdCBNYWlsIjoiRGlyZWN0IE1haWwiLCJDb2xkIENhbGwiOiJDaGFtYWRhIEVzcG9udFx1MDBlMm5lYSIsIkV4aXN0aW5nIEN1c3RvbWVyIjoiQ2xpZW50ZSBFeGlzdGVudGUiLCJTZWxmIEdlbmVyYXRlZCI6IkF1dG8gR2VyYWRhIiwiRW1wbG95ZWUiOiJDb2xhYm9yYWRvciIsIlBhcnRuZXIiOiJQYXJjZWlybyIsIlB1YmxpYyBSZWxhdGlvbnMiOiJSZWxhXHUwMGU3XHUwMGY1ZXMgUFx1MDBmYWJsaWNhcyIsIkNvbmZlcmVuY2UiOiJDb25mZXJcdTAwZWFuY2lhIiwiVHJhZGUgU2hvdyI6IkZlaXJhXC9FdmVudG8iLCJXZWIgU2l0ZSI6IlNpdGUgZGUgSW50ZXJuZXQiLCJXb3JkIG9mIG1vdXRoIjoiQm9jYS1hLWJvY2EiLCJFbWFpbCI6IkUtbWFpbCIsIkNhbXBhaWduIjoiQ2FtcGFuaGEiLCJPdGhlciI6Ik91dHJvIn0sIm9wcG9ydHVuaXR5X3JlbGF0aW9uc2hpcF90eXBlX2RvbSI6eyIiOiIiLCJQcmltYXJ5IERlY2lzaW9uIE1ha2VyIjoiRGVjaXNvciBQcmluY2lwYWwiLCJCdXNpbmVzcyBEZWNpc2lvbiBNYWtlciI6IkRlY2lzb3IgZGUgTmVnXHUwMGYzY2lvcyIsIkJ1c2luZXNzIEV2YWx1YXRvciI6IkF2YWxpYWRvciBkZSBOZWdcdTAwZjNjaW9zIiwiVGVjaG5pY2FsIERlY2lzaW9uIE1ha2VyIjoiRGVjaXNvciBUXHUwMGU5Y25pY28iLCJUZWNobmljYWwgRXZhbHVhdG9yIjoiQXZhbGlhZG9yIFRcdTAwZTljbmljbyIsIkV4ZWN1dGl2ZSBTcG9uc29yIjoiUGF0cm9jaW5hZG9yIEV4ZWN1dGl2byIsIkluZmx1ZW5jZXIiOiJJbmZsdVx1MDBlYW5jaWFkb3IiLCJPdGhlciI6Ik91dHJvIn0sImRvbV9tZWV0aW5nX2FjY2VwdF9zdGF0dXMiOnsiYWNjZXB0IjoiQWNlaXRlIiwiZGVjbGluZSI6IlJlY3VzYWRvIiwidGVudGF0aXZlIjoiVGVudGF0aXZvIiwibm9uZSI6Ik5lbmh1bSJ9LCJmcF9ldmVudF9pbnZpdGVfc3RhdHVzX2RvbSI6eyJJbnZpdGVkIjoiSW52aXRlZCIsIk5vdCBJbnZpdGVkIjoiTm90IEludml0ZWQiLCJBdHRlbmRlZCI6IkF0dGVuZGVkIiwiTm90IEF0dGVuZGVkIjoiTm90IEF0dGVuZGVkIn0sImZwX2V2ZW50X3N0YXR1c19kb20iOnsiQWNjZXB0ZWQiOiJBY2NlcHRlZCIsIkRlY2xpbmVkIjoiRGVjbGluZWQiLCJObyBSZXNwb25zZSI6Ik5vIFJlc3BvbnNlIn0sIm9wcG9ydHVuaXR5X3R5cGVfZG9tIjp7IiI6IiIsIkV4aXN0aW5nIEJ1c2luZXNzIjoiTmVnXHUwMGYzY2lvcyBFeGlzdGVudGVzIiwiTmV3IEJ1c2luZXNzIjoiTm92b3MgTmVnXHUwMGYzY2lvcyJ9LCJzYWxlc19zdGFnZV9kb20iOnsiUHJvc3BlY3RpbmciOiJQcm9zcGVjXHUwMGU3XHUwMGUzbyIsIlF1YWxpZmljYXRpb24iOiJRdWFsaWZpY2FcdTAwZTdcdTAwZTNvIiwiTmVlZHMgQW5hbHlzaXMiOiJBblx1MDBlMWxpc2UgZGUgTmVjZXNzaWRhZGVzIiwiVmFsdWUgUHJvcG9zaXRpb24iOiJQcm9wb3N0YSBkZSBWYWxvciIsIklkLiBEZWNpc2lvbiBNYWtlcnMiOiJJZGVudGlmaWNhciBkZWNpc29yZXMiLCJQZXJjZXB0aW9uIEFuYWx5c2lzIjoiQW5cdTAwZTFsaXNlIGRlIFBlcmNlcFx1MDBlN1x1MDBlM28iLCJQcm9wb3NhbFwvUHJpY2UgUXVvdGUiOiJQcm9wb3N0YVwvQ290YVx1MDBlN1x1MDBlM28gZGUgUHJlXHUwMGU3byIsIk5lZ290aWF0aW9uXC9SZXZpZXciOiJOZWdvY2lhXHUwMGU3XHUwMGUzb1wvUmV2aXNcdTAwZTNvIiwiQ2xvc2VkIFdvbiI6IkdhbmhcdTAwZTFtb3MiLCJDbG9zZWQgTG9zdCI6IlBlcmRlbW9zIn0sImxlYWRfc3RhdHVzX2RvbSI6eyIiOiIiLCJOZXciOiJOb3ZvIiwiQXNzaWduZWQiOiJBdHJpYnVcdTAwZWRkbyIsIkluIFByb2Nlc3MiOiJFbSBQcm9jZXNzYW1lbnRvIiwiQ29udmVydGVkIjoiQ29udmVydGlkbyIsIlJlY3ljbGVkIjoiUmVjaWNsYWRvIiwiRGVhZCI6Iklub3BlcmF0aXZvIn0sImNhbGxfc3RhdHVzX2RvbSI6eyJQbGFubmVkIjoiUGxhbmVhZGEiLCJIZWxkIjoiUmVhbGl6YWRhIiwiTm90IEhlbGQiOiJOXHUwMGUzbyBSZWFsaXphZGEifSwiY2FsbF9kaXJlY3Rpb25fZG9tIjp7IkluYm91bmQiOiJFbnRyYWRhIiwiT3V0Ym91bmQiOiJTYVx1MDBlZGRhIn0sInJlbWluZGVyX3RpbWVfb3B0aW9ucyI6eyI2MCI6IjEgbWludXRvIGFudGVzIiwiMzAwIjoiNSBtaW51dG9zIGFudGVzIiwiNjAwIjoiMTAgbWludXRvcyBhbnRlcyIsIjkwMCI6IjE1IG1pbnV0b3MgYW50ZXMiLCIxODAwIjoiMzAgbWludXRvcyBhbnRlcyIsIjM2MDAiOiIxIGhvcmEgYW50ZXMiLCI3MjAwIjoiMiBob3VycyBwcmlvciIsIjEwODAwIjoiMyBob3VycyBwcmlvciIsIjE4MDAwIjoiNSBob3VycyBwcmlvciIsIjg2NDAwIjoiMSBkYXkgcHJpb3IifSwicmVwZWF0X3R5cGVfZG9tIjp7IiI6Ik5vbmUiLCJEYWlseSI6IkRhaWx5IiwiV2Vla2x5IjoiV2Vla2x5IiwiTW9udGhseSI6Ik1vbnRobHkiLCJZZWFybHkiOiJZZWFybHkifSwibWVldGluZ19zdGF0dXNfZG9tIjp7IlBsYW5uZWQiOiJQbGFuZWFkbyIsIkhlbGQiOiJSZWFsaXphZG8iLCJOb3QgSGVsZCI6Ik5cdTAwZTNvIFJlYWxpemFkbyJ9LCJlYXBtX2xpc3QiOnsiU3VnYXIiOiJTdWdhciIsIldlYkV4IjoiV2ViRXgiLCJHb1RvTWVldGluZyI6IkdvVG9NZWV0aW5nIiwiSUJNU21hcnRDbG91ZCI6IklCTSBTbWFydENsb3VkIiwiR29vZ2xlIjoiR29vZ2xlIiwiQm94IjoiQm94Lm5ldCIsIkZhY2Vib29rIjoiRmFjZWJvb2siLCJUd2l0dGVyIjoiVHdpdHRlciJ9LCJkdXJhdGlvbl9kb20iOnsiIjoiTm9uZSIsIjkwMCI6IjE1IG1pbnV0ZXMiLCIxODAwIjoiMzAgbWludXRlcyIsIjI3MDAiOiI0NSBtaW51dGVzIiwiMzYwMCI6IjEgaG91ciIsIjU0MDAiOiIxLjUgaG91cnMiLCI3MjAwIjoiMiBob3VycyIsIjEwODAwIjoiMyBob3VycyIsIjIxNjAwIjoiNiBob3VycyIsIjg2NDAwIjoiMSBkYXkiLCIxNzI4MDAiOiIyIGRheXMiLCIyNTkyMDAiOiIzIGRheXMiLCI2MDQ4MDAiOiIxIHdlZWsifSwiY2FzZV90eXBlX2RvbSI6eyJBZG1pbmlzdHJhdGlvbiI6IkFkbWluaXN0cmFcdTAwZTdcdTAwZTNvIiwiUHJvZHVjdCI6IlByb2R1dG8iLCJVc2VyIjoiVXRpbGl6YWRvciJ9LCJjYXNlX3ByaW9yaXR5X2RvbSI6eyJQMSI6IkFsdGEiLCJQMiI6Ik1cdTAwZTlkaWEiLCJQMyI6IkJhaXhhIn0sImNhc2Vfc3RhdGVfZG9tIjp7Ik9wZW4iOiJPcGVuIiwiQ2xvc2VkIjoiQ2xvc2VkIn0sInByb2plY3Rfc3RhdHVzX2RvbSI6eyJEcmFmdCI6IlJhc2N1bmhvIiwiSW4gUmV2aWV3IjoiRW0gUmV2aXNcdTAwZTNvIiwiUHVibGlzaGVkIjoiUHVibGljYWRvIn0sInByb2plY3RzX3ByaW9yaXR5X29wdGlvbnMiOnsiaGlnaCI6IkFsdG8iLCJtZWRpdW0iOiJNXHUwMGU5ZGlvIiwibG93IjoiQmFpeG8ifSwicHJvamVjdF90YXNrX3N0YXR1c19vcHRpb25zIjp7Ik5vdCBTdGFydGVkIjoiTlx1MDBlM28gSW5pY2lhZGEiLCJJbiBQcm9ncmVzcyI6IkVtIHByb2dyZXNzbyIsIkNvbXBsZXRlZCI6IkNvbmNsdVx1MDBlZGRhIiwiUGVuZGluZyBJbnB1dCI6IkEgQWd1YXJkYXIgUmVzcG9zdGEiLCJEZWZlcnJlZCI6IkFkaWFkYSJ9LCJwcm9qZWN0X3Rhc2tfcHJpb3JpdHlfb3B0aW9ucyI6eyJIaWdoIjoiQWx0YSIsIk1lZGl1bSI6Ik1cdTAwZTlkaWEiLCJMb3ciOiJCYWl4YSJ9LCJ0YXNrX3N0YXR1c19kb20iOnsiTm90IFN0YXJ0ZWQiOiJOXHUwMGUzbyBJbmljaWFkYSIsIkluIFByb2dyZXNzIjoiRW0gUHJvZ3Jlc3NvIiwiQ29tcGxldGVkIjoiVGVybWluYWRhIiwiUGVuZGluZyBJbnB1dCI6IkluZm9ybWFcdTAwZTdcdTAwZTNvIFBlbmRlbnRlIiwiRGVmZXJyZWQiOiJBZGlhZGEifSwidGFza19wcmlvcml0eV9kb20iOnsiSGlnaCI6IkFsdGEiLCJNZWRpdW0iOiJNXHUwMGU5ZGlhIiwiTG93IjoiQmFpeGEifX0nKTt2YXIgc3VnYXJfYXBwX3N0cmluZ3MgPSBqUXVlcnkucGFyc2VKU09OKCd7IkxCTF9DUkVBVEVfQlVUVE9OX0xBQkVMIjoiQ3JpYXIiLCJMQkxfRURJVF9CVVRUT04iOiJFZGl0YXIiLCJMQkxfTElTVCI6Ikxpc3RhIiwiTEJMX1NFQVJDSF9CVVRUT05fTEFCRUwiOiJQZXNxdWlzYXIiLCJMQkxfQ1VSUkVOVF9VU0VSX0ZJTFRFUiI6IkFwZW5hcyBvcyBtZXVzIGl0ZW5zOiIsIkxCTF9CQUNLIjoiVm9sdGFyIiwiTEJMX1NBVkVfQlVUVE9OX0xBQkVMIjoiR3JhdmFyIiwiTEJMX0NBTkNFTF9CVVRUT05fTEFCRUwiOiJDYW5jZWxhciIsIkxCTF9NQVJLX0FTX0ZBVk9SSVRFUyI6Ik1hcmNhciBjb21vIEZhdm9yaXRvIiwiTEJMX1JFTU9WRV9GUk9NX0ZBVk9SSVRFUyI6IlJlbW92ZXIgRG9zIE1ldXMgRmF2b3JpdG9zIiwiTlRDX0RFTEVURV9DT05GSVJNQVRJT04iOiJUZW0gYSBjZXJ0ZXphIHF1ZSBwcmV0ZW5kZSBlbGltaW5hciBlc3RlIHJlZ2lzdG8/IiwiTEJMX0RFTEVURV9CVVRUT05fTEFCRUwiOiJFbGltaW5hciIsIkVSUk9SX05PX1JFQ09SRCI6IkVycm8gYW8gcmVjdXBlcmFyIHVtIHJlZ2lzdG8uIEVzdGUgcmVnaXN0byBwb2RlIGVuY29udHJhci1zZSBlbGltaW5hZG8gb3Ugdm9jXHUwMGVhIHBvZGVyXHUwMGUxIG5cdTAwZTNvIHRlciBwZXJtaXNzXHUwMGY1ZXMgcGFyYSBvIHZpc3VhbGl6YXIuIiwiTEJMX0xBU1RfVklFV0VEIjoiXHUwMGRhbHRpbW9zIGFjZXNzb3MiLCJMTktfTElTVF9ORVhUIjoiUHJcdTAwZjN4aW1vIiwiTE5LX0xJU1RfUFJFVklPVVMiOiJBbnRlcmlvciIsIkxCTF9MSVNUX1VTRVJfTkFNRSI6Ik5vbWUgZG8gVXRpbGl6YWRvciIsIk5UQ19MT0dJTl9NRVNTQUdFIjoiUG9yIGZhdm9yIGluZGlxdWUgbyBzZXUgbm9tZSBlIHBhbGF2cmEtcGFzc2UuIiwiRVJSX0lOVkFMSURfRU1BSUxfQUREUkVTUyI6Ik8gZW5kZXJlXHUwMGU3byBkZSBFLW1haWwgblx1MDBlM28gXHUwMGU5IHZcdTAwZTFsaWRvLiIsIkxCTF9BU1NJR05FRF9UTyI6IkF0cmlidVx1MDBlZGRvIGE6IiwiTEJMX0NMRUFSX0JVVFRPTl9MQUJFTCI6IkxpbXBhciIsIkxCTF9EVVJBVElPTl9EQVlTIjoiZGF5cyIsIkxCTF9DTE9TRV9BTkRfQ1JFQVRFX0JVVFRPTl9USVRMRSI6IkZlY2hhciBlIENyaWFyIE5vdm8gW0FsdCtDXSIsIkxCTF9DTE9TRV9CVVRUT05fVElUTEUiOiJGZWNoYXIiLCJMQkxfTElTVFZJRVdfQUxMIjoiVHVkbyIsIkxCTF9MSVNUVklFV19OT05FIjoiTmVuaHVtIn0nKTs='),('QuickCRM','pt_PTf','0'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username',''),('proxy','password',''),('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SugarCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.16'),('MySettings','tab','YToxNDp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjM7czo1OiJDYXNlcyI7aTo0O3M6NToiVGFza3MiO2k6NTtzOjY6IkVtYWlscyI7aTo2O3M6OToiRG9jdW1lbnRzIjtpOjc7czo4OiJDYWxlbmRhciI7aTo4O3M6OToiUHJvc3BlY3RzIjtpOjk7czoxMToiQU9SX1JlcG9ydHMiO2k6MTA7czoxMjoiQU9XX1dvcmtGbG93IjtpOjExO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjEyO3M6MTI6IkFPU19Qcm9kdWN0cyI7aToxMztzOjEwOiJ6cjJfUmVwb3J0Ijt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','Cross Informática'),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('notify','fromaddress','mail@cross.pt'),('notify','fromname','Cross CRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','2'),('MySettings','tab','YToxNDp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjM7czo1OiJDYXNlcyI7aTo0O3M6NToiVGFza3MiO2k6NTtzOjY6IkVtYWlscyI7aTo2O3M6OToiRG9jdW1lbnRzIjtpOjc7czo4OiJDYWxlbmRhciI7aTo4O3M6OToiUHJvc3BlY3RzIjtpOjk7czoxMToiQU9SX1JlcG9ydHMiO2k6MTA7czoxMjoiQU9XX1dvcmtGbG93IjtpOjExO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjEyO3M6MTI6IkFPU19Qcm9kdWN0cyI7aToxMztzOjEwOiJ6cjJfUmVwb3J0Ijt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','automatic'),('system','name','Cross CRM'),('license','msg_admin',''),('license','msg_all',''),('license','last_validation','success'),('license','latest_versions','YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNi41LjE2IjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA2LjUuMTYuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319'),('Update','last_check_date','1388226438'),('system','adminwizard','1'),('notify','allow_default_outbound','2'),('captcha','on','0'),('captcha','public_key',''),('captcha','private_key',''),('ldap','hostname',''),('ldap','port',''),('ldap','base_dn',''),('ldap','login_filter',''),('ldap','bind_attr',''),('ldap','login_attr',''),('ldap','group_dn',''),('ldap','group_name',''),('ldap','group_user_attr',''),('ldap','group_attr',''),('ldap','admin_user',''),('ldap','admin_password',''),('ldap','auto_create_users','0'),('ldap','enc_key',''),('system','ldap_enabled','0'),('ldap','group','0'),('ldap','authentication','0'),('MySettings','disable_useredit','no'),('MySettings','hide_subpanels','YTo4OntzOjU6ImxlYWRzIjtzOjU6ImxlYWRzIjtzOjQ6ImJ1Z3MiO3M6NDoiYnVncyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czo3OiJwcm9qZWN0IjtzOjc6InByb2plY3QiO3M6OToicHJvc3BlY3RzIjtzOjk6InByb3NwZWN0cyI7czo4OiJtZWV0aW5ncyI7czo4OiJtZWV0aW5ncyI7czo1OiJub3RlcyI7czo1OiJub3RlcyI7czoxMToiY2FtcGFpZ25sb2ciO3M6MTE6ImNhbXBhaWdubG9nIjt9'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username',''),('proxy','password',''),('massemailer','email_copy','2'),('massemailer','campaign_emails_per_run','500'),('massemailer','tracking_entities_location_type','1'),('info','sugar_version','6.5.16'),('zuckerreports2','index_include','ReportCategories'),('zuckerreports2','script_enabled','yes'),('zuckerreports2','debug_enabled','yes'),('zuckerreports2','deployment','local'),('zuckerreports2','execmode','exec'),('QuickCRM','sugar_config','dmFyIG1vYmlsZV9lZGl0aW9uID0gJ0NFJyxRX0FQST0nMi4zJywgYXBwX3N1cHBvcnQ9dHJ1ZSwgbW9kdWxlX2FjY2Vzcz17fSwgc3VnYXJfbW9kX2ZpZWxkcz17fTt2YXIganNfcGx1Z2lucz1bXSxodG1sX3BsdWdpbnM9W107dmFyIHN1Z2FyX3ZlcnNpb24gPSAiNi41LjE2Ijt2YXIgc3VnYXJfbmFtZSA9ICJDcm9zcyBDUk0iO3ZhciBkZWZhdWx0X2xhbmd1YWdlID0gInB0X1BUIjt2YXIgc3VnYXJfbGFuZ3VhZ2VzID0geyJlbl91cyI6IkVuZ2xpc2ggKFVTKSIsInB0X1BUIjoiUG9ydHVndVx1MDBlYXMgKFBUKSJ9O3ZhciBkZWZhdWx0X2N1cnJlbmN5X25hbWUgPSAiRXVyb3MiO3ZhciBkZWZhdWx0X2N1cnJlbmN5X3N5bWJvbCA9ICLigqwiO3ZhciBkZWZhdWx0X2RhdGVfZm9ybWF0ID0gImQvbS9ZIjt2YXIgZGJfdHlwZSA9ICJteXNxbCIsIGpqd2dfaW5zdGFsbGVkID0gdHJ1ZSxqandnX2RlZl91bml0PSJtaWxlcyIsamp3Z19tb2R1bGVzPSIiLGpqd2dfY19sYXQ9MzkuNSxqandnX2NfbG5nPS05OS41LCBzZWN1cml0eXN1aXRlID0gdHJ1ZSwgb2ZmbGluZV9tYXhfZGF5cyA9IDA7dmFyIHF1aWNrY3JtX3VwZF90aW1lID0gIjEzODgzNDUwMzkiO3ZhciBDdXN0b21IVE1MPWZhbHNlO3ZhciBDdXN0b21KUz1mYWxzZTs='),('QuickCRM','en_us','dmFyIFJFU19DUkVBVEU9J0NyZWF0ZScsUkVTX0xJU1Q9J0xpc3QnLFJFU19BRERfVE9fSE9NRT0nTWFyayBhcyBGYXZvcml0ZScsUkVTX1JFTV9GUk9NX0hPTUU9J1JlbW92ZSBGcm9tIE15IEZhdm9yaXRlcycsUkVTX1JFQ09SRF9FUlJPUj0nRXJyb3IgcmV0cmlldmluZyByZWNvcmQuICBUaGlzIHJlY29yZCBtYXkgYmUgZGVsZXRlZCBvciB5b3UgbWF5IG5vdCBiZSBhdXRob3JpemVkIHRvIHZpZXcgaXQuJyxSRVNfTEFTVF9WSUVXRUQ9J1JlY2VudGx5IFZpZXdlZCcsIFJFU19ERUxFVEVfQ09ORklSTUFUSU9OPSdBcmUgeW91IHN1cmUgeW91IHdhbnQgdG8gZGVsZXRlIHRoaXMgcmVjb3JkPycsIFJFU19ERUxfTEFCRUw9J0RlbGV0ZScsIFJFU19ORVhUX0xBQkVMPSdOZXh0JywgUkVTX1BSRVZJT1VTX0xBQkVMPSdQcmV2aW91cyc7CnZhciBSRVNfSE9NRV9MQUJFTD0nSG9tZScsUkVTX1NZTkM9J1N5bmMnLFJFU19TQVZFRFNFQVJDSD0nU2F2ZWQgU2VhcmNoZXMnLFJFU19TQVZFU0VBUkNIPSdTYXZlIHNlYXJjaCBhczonLFJFU19ESVNBQkxFRD0nRGlzYWJsZWQnOwp2YXIgc3VnYXJfYXBwX2xpc3Rfc3RyaW5ncyA9IGpRdWVyeS5wYXJzZUpTT04oJ3sibW9kdWxlTGlzdCI6eyJBY2NvdW50cyI6IkFjY291bnRzIiwiQ29udGFjdHMiOiJDb250YWN0cyIsIk9wcG9ydHVuaXRpZXMiOiJPcHBvcnR1bml0aWVzIiwiTGVhZHMiOiJMZWFkcyIsIkNhbGxzIjoiQ2FsbHMiLCJNZWV0aW5ncyI6Ik1lZXRpbmdzIiwiQ2FzZXMiOiJDYXNlcyIsIlByb2plY3QiOiJQcm9qZWN0cyIsIlByb2plY3RUYXNrIjoiUHJvamVjdCBUYXNrcyIsIlRhc2tzIjoiVGFza3MiLCJOb3RlcyI6Ik5vdGVzIiwiU2F2ZWRTZWFyY2hlcyI6IlNhdmVkIFNlYXJjaGVzIn0sIm1vZHVsZUxpc3RTaW5ndWxhciI6eyJBY2NvdW50cyI6IkFjY291bnQiLCJDb250YWN0cyI6IkNvbnRhY3QiLCJPcHBvcnR1bml0aWVzIjoiT3Bwb3J0dW5pdHkiLCJMZWFkcyI6IkxlYWQiLCJDYWxscyI6IkNhbGwiLCJNZWV0aW5ncyI6Ik1lZXRpbmciLCJDYXNlcyI6IkNhc2UiLCJQcm9qZWN0IjoiUHJvamVjdCIsIlByb2plY3RUYXNrIjoiUHJvamVjdCBUYXNrIiwiVGFza3MiOiJUYXNrIiwiTm90ZXMiOiJOb3RlIn0sInBhcmVudF90eXBlX2Rpc3BsYXkiOnsiQWNjb3VudHMiOiJBY2NvdW50IiwiQ29udGFjdHMiOiJDb250YWN0IiwiVGFza3MiOiJUYXNrIiwiT3Bwb3J0dW5pdGllcyI6Ik9wcG9ydHVuaXR5IiwiQnVncyI6IkJ1ZyIsIkNhc2VzIjoiQ2FzZSIsIkxlYWRzIjoiTGVhZCIsIlByb2plY3QiOiJQcm9qZWN0IiwiUHJvamVjdFRhc2siOiJQcm9qZWN0IFRhc2siLCJQcm9zcGVjdHMiOiJUYXJnZXQiLCJQcm9kdWN0cyI6IlByb2R1dG8iLCJRdW90ZXMiOiJDb3RhXHUwMGU3XHUwMGUzbyJ9LCJkYXRlX3NlYXJjaCI6eyI9IjoiRXF1YWxzIiwibm90X2VxdWFsIjoiTm90IE9uIiwiZ3JlYXRlcl90aGFuIjoiQWZ0ZXIiLCJsZXNzX3RoYW4iOiJCZWZvcmUiLCJsYXN0XzdfZGF5cyI6Ikxhc3QgNyBEYXlzIiwibmV4dF83X2RheXMiOiJOZXh0IDcgRGF5cyIsImxhc3RfMzBfZGF5cyI6Ikxhc3QgMzAgRGF5cyIsIm5leHRfMzBfZGF5cyI6Ik5leHQgMzAgRGF5cyIsImxhc3RfbW9udGgiOiJMYXN0IE1vbnRoIiwidGhpc19tb250aCI6IlRoaXMgTW9udGgiLCJuZXh0X21vbnRoIjoiTmV4dCBNb250aCIsImxhc3RfeWVhciI6Ikxhc3QgWWVhciIsInRoaXNfeWVhciI6IlRoaXMgWWVhciIsIm5leHRfeWVhciI6Ik5leHQgWWVhciIsImJldHdlZW4iOiJJcyBCZXR3ZWVuIiwidG9kYXkiOiJ0b2RheSJ9LCJhY2NvdW50X3R5cGVfZG9tIjp7IiI6IiIsIkFuYWx5c3QiOiJBbmFseXN0IiwiQ29tcGV0aXRvciI6IkNvbXBldGl0b3IiLCJDdXN0b21lciI6IkN1c3RvbWVyIiwiSW50ZWdyYXRvciI6IkludGVncmF0b3IiLCJJbnZlc3RvciI6IkludmVzdG9yIiwiUGFydG5lciI6IlBhcnRuZXIiLCJQcmVzcyI6IlByZXNzIiwiUHJvc3BlY3QiOiJQcm9zcGVjdCIsIlJlc2VsbGVyIjoiUmVzZWxsZXIiLCJPdGhlciI6Ik90aGVyIn0sImluZHVzdHJ5X2RvbSI6eyIiOiIiLCJBcHBhcmVsIjoiQXBwYXJlbCIsIkJhbmtpbmciOiJCYW5raW5nIiwiQmlvdGVjaG5vbG9neSI6IkJpb3RlY2hub2xvZ3kiLCJDaGVtaWNhbHMiOiJDaGVtaWNhbHMiLCJDb21tdW5pY2F0aW9ucyI6IkNvbW11bmljYXRpb25zIiwiQ29uc3RydWN0aW9uIjoiQ29uc3RydWN0aW9uIiwiQ29uc3VsdGluZyI6IkNvbnN1bHRpbmciLCJFZHVjYXRpb24iOiJFZHVjYXRpb24iLCJFbGVjdHJvbmljcyI6IkVsZWN0cm9uaWNzIiwiRW5lcmd5IjoiRW5lcmd5IiwiRW5naW5lZXJpbmciOiJFbmdpbmVlcmluZyIsIkVudGVydGFpbm1lbnQiOiJFbnRlcnRhaW5tZW50IiwiRW52aXJvbm1lbnRhbCI6IkVudmlyb25tZW50YWwiLCJGaW5hbmNlIjoiRmluYW5jZSIsIkdvdmVybm1lbnQiOiJHb3Zlcm5tZW50IiwiSGVhbHRoY2FyZSI6IkhlYWx0aGNhcmUiLCJIb3NwaXRhbGl0eSI6Ikhvc3BpdGFsaXR5IiwiSW5zdXJhbmNlIjoiSW5zdXJhbmNlIiwiTWFjaGluZXJ5IjoiTWFjaGluZXJ5IiwiTWFudWZhY3R1cmluZyI6Ik1hbnVmYWN0dXJpbmciLCJNZWRpYSI6Ik1lZGlhIiwiTm90IEZvciBQcm9maXQiOiJOb3QgRm9yIFByb2ZpdCIsIlJlY3JlYXRpb24iOiJSZWNyZWF0aW9uIiwiUmV0YWlsIjoiUmV0YWlsIiwiU2hpcHBpbmciOiJTaGlwcGluZyIsIlRlY2hub2xvZ3kiOiJUZWNobm9sb2d5IiwiVGVsZWNvbW11bmljYXRpb25zIjoiVGVsZWNvbW11bmljYXRpb25zIiwiVHJhbnNwb3J0YXRpb24iOiJUcmFuc3BvcnRhdGlvbiIsIlV0aWxpdGllcyI6IlV0aWxpdGllcyIsIk90aGVyIjoiT3RoZXIifSwic2FsdXRhdGlvbl9kb20iOnsiIjoiIiwiTXIuIjoiTXIuIiwiTXMuIjoiTXMuIiwiTXJzLiI6Ik1ycy4iLCJEci4iOiJEci4iLCJQcm9mLiI6IlByb2YuIn0sImxlYWRfc291cmNlX2RvbSI6eyIiOiIiLCJDb2xkIENhbGwiOiJDb2xkIENhbGwiLCJFeGlzdGluZyBDdXN0b21lciI6IkV4aXN0aW5nIEN1c3RvbWVyIiwiU2VsZiBHZW5lcmF0ZWQiOiJTZWxmIEdlbmVyYXRlZCIsIkVtcGxveWVlIjoiRW1wbG95ZWUiLCJQYXJ0bmVyIjoiUGFydG5lciIsIlB1YmxpYyBSZWxhdGlvbnMiOiJQdWJsaWMgUmVsYXRpb25zIiwiRGlyZWN0IE1haWwiOiJEaXJlY3QgTWFpbCIsIkNvbmZlcmVuY2UiOiJDb25mZXJlbmNlIiwiVHJhZGUgU2hvdyI6IlRyYWRlIFNob3ciLCJXZWIgU2l0ZSI6IldlYiBTaXRlIiwiV29yZCBvZiBtb3V0aCI6IldvcmQgb2YgbW91dGgiLCJFbWFpbCI6IkVtYWlsIiwiQ2FtcGFpZ24iOiJDYW1wYWlnbiIsIk90aGVyIjoiT3RoZXIifSwib3Bwb3J0dW5pdHlfcmVsYXRpb25zaGlwX3R5cGVfZG9tIjp7IiI6IiIsIlByaW1hcnkgRGVjaXNpb24gTWFrZXIiOiJQcmltYXJ5IERlY2lzaW9uIE1ha2VyIiwiQnVzaW5lc3MgRGVjaXNpb24gTWFrZXIiOiJCdXNpbmVzcyBEZWNpc2lvbiBNYWtlciIsIkJ1c2luZXNzIEV2YWx1YXRvciI6IkJ1c2luZXNzIEV2YWx1YXRvciIsIlRlY2huaWNhbCBEZWNpc2lvbiBNYWtlciI6IlRlY2huaWNhbCBEZWNpc2lvbiBNYWtlciIsIlRlY2huaWNhbCBFdmFsdWF0b3IiOiJUZWNobmljYWwgRXZhbHVhdG9yIiwiRXhlY3V0aXZlIFNwb25zb3IiOiJFeGVjdXRpdmUgU3BvbnNvciIsIkluZmx1ZW5jZXIiOiJJbmZsdWVuY2VyIiwiT3RoZXIiOiJPdGhlciJ9LCJkb21fbWVldGluZ19hY2NlcHRfc3RhdHVzIjp7ImFjY2VwdCI6IkFjY2VwdGVkIiwiZGVjbGluZSI6IkRlY2xpbmVkIiwidGVudGF0aXZlIjoiVGVudGF0aXZlIiwibm9uZSI6Ik5vbmUifSwiZnBfZXZlbnRfaW52aXRlX3N0YXR1c19kb20iOnsiSW52aXRlZCI6Ikludml0ZWQiLCJOb3QgSW52aXRlZCI6Ik5vdCBJbnZpdGVkIiwiQXR0ZW5kZWQiOiJBdHRlbmRlZCIsIk5vdCBBdHRlbmRlZCI6Ik5vdCBBdHRlbmRlZCJ9LCJmcF9ldmVudF9zdGF0dXNfZG9tIjp7IkFjY2VwdGVkIjoiQWNjZXB0ZWQiLCJEZWNsaW5lZCI6IkRlY2xpbmVkIiwiTm8gUmVzcG9uc2UiOiJObyBSZXNwb25zZSJ9LCJvcHBvcnR1bml0eV90eXBlX2RvbSI6eyIiOiIiLCJFeGlzdGluZyBCdXNpbmVzcyI6IkV4aXN0aW5nIEJ1c2luZXNzIiwiTmV3IEJ1c2luZXNzIjoiTmV3IEJ1c2luZXNzIn0sInNhbGVzX3N0YWdlX2RvbSI6eyJQcm9zcGVjdGluZyI6IlByb3NwZWN0aW5nIiwiUXVhbGlmaWNhdGlvbiI6IlF1YWxpZmljYXRpb24iLCJOZWVkcyBBbmFseXNpcyI6Ik5lZWRzIEFuYWx5c2lzIiwiVmFsdWUgUHJvcG9zaXRpb24iOiJWYWx1ZSBQcm9wb3NpdGlvbiIsIklkLiBEZWNpc2lvbiBNYWtlcnMiOiJJZC4gRGVjaXNpb24gTWFrZXJzIiwiUGVyY2VwdGlvbiBBbmFseXNpcyI6IlBlcmNlcHRpb24gQW5hbHlzaXMiLCJQcm9wb3NhbFwvUHJpY2UgUXVvdGUiOiJQcm9wb3NhbFwvUHJpY2UgUXVvdGUiLCJOZWdvdGlhdGlvblwvUmV2aWV3IjoiTmVnb3RpYXRpb25cL1JldmlldyIsIkNsb3NlZCBXb24iOiJDbG9zZWQgV29uIiwiQ2xvc2VkIExvc3QiOiJDbG9zZWQgTG9zdCJ9LCJsZWFkX3N0YXR1c19kb20iOnsiIjoiIiwiTmV3IjoiTmV3IiwiQXNzaWduZWQiOiJBc3NpZ25lZCIsIkluIFByb2Nlc3MiOiJJbiBQcm9jZXNzIiwiQ29udmVydGVkIjoiQ29udmVydGVkIiwiUmVjeWNsZWQiOiJSZWN5Y2xlZCIsIkRlYWQiOiJEZWFkIn0sImNhbGxfc3RhdHVzX2RvbSI6eyJQbGFubmVkIjoiUGxhbm5lZCIsIkhlbGQiOiJIZWxkIiwiTm90IEhlbGQiOiJOb3QgSGVsZCJ9LCJjYWxsX2RpcmVjdGlvbl9kb20iOnsiSW5ib3VuZCI6IkluYm91bmQiLCJPdXRib3VuZCI6Ik91dGJvdW5kIn0sInJlbWluZGVyX3RpbWVfb3B0aW9ucyI6eyI2MCI6IjEgbWludXRlIHByaW9yIiwiMzAwIjoiNSBtaW51dGVzIHByaW9yIiwiNjAwIjoiMTAgbWludXRlcyBwcmlvciIsIjkwMCI6IjE1IG1pbnV0ZXMgcHJpb3IiLCIxODAwIjoiMzAgbWludXRlcyBwcmlvciIsIjM2MDAiOiIxIGhvdXIgcHJpb3IiLCI3MjAwIjoiMiBob3VycyBwcmlvciIsIjEwODAwIjoiMyBob3VycyBwcmlvciIsIjE4MDAwIjoiNSBob3VycyBwcmlvciIsIjg2NDAwIjoiMSBkYXkgcHJpb3IifSwicmVwZWF0X3R5cGVfZG9tIjp7IiI6Ik5vbmUiLCJEYWlseSI6IkRhaWx5IiwiV2Vla2x5IjoiV2Vla2x5IiwiTW9udGhseSI6Ik1vbnRobHkiLCJZZWFybHkiOiJZZWFybHkifSwibWVldGluZ19zdGF0dXNfZG9tIjp7IlBsYW5uZWQiOiJQbGFubmVkIiwiSGVsZCI6IkhlbGQiLCJOb3QgSGVsZCI6Ik5vdCBIZWxkIn0sImVhcG1fbGlzdCI6eyJTdWdhciI6IlN1Z2FyIiwiV2ViRXgiOiJXZWJFeCIsIkdvVG9NZWV0aW5nIjoiR29Ub01lZXRpbmciLCJJQk1TbWFydENsb3VkIjoiSUJNIFNtYXJ0Q2xvdWQiLCJHb29nbGUiOiJHb29nbGUiLCJCb3giOiJCb3gubmV0IiwiRmFjZWJvb2siOiJGYWNlYm9vayIsIlR3aXR0ZXIiOiJUd2l0dGVyIn0sImR1cmF0aW9uX2RvbSI6eyIiOiJOb25lIiwiOTAwIjoiMTUgbWludXRlcyIsIjE4MDAiOiIzMCBtaW51dGVzIiwiMjcwMCI6IjQ1IG1pbnV0ZXMiLCIzNjAwIjoiMSBob3VyIiwiNTQwMCI6IjEuNSBob3VycyIsIjcyMDAiOiIyIGhvdXJzIiwiMTA4MDAiOiIzIGhvdXJzIiwiMjE2MDAiOiI2IGhvdXJzIiwiODY0MDAiOiIxIGRheSIsIjE3MjgwMCI6IjIgZGF5cyIsIjI1OTIwMCI6IjMgZGF5cyIsIjYwNDgwMCI6IjEgd2VlayJ9LCJjYXNlX3R5cGVfZG9tIjp7IkFkbWluaXN0cmF0aW9uIjoiQWRtaW5pc3RyYXRpb24iLCJQcm9kdWN0IjoiUHJvZHVjdCIsIlVzZXIiOiJVc2VyIn0sImNhc2VfcHJpb3JpdHlfZG9tIjp7IlAxIjoiSGlnaCIsIlAyIjoiTWVkaXVtIiwiUDMiOiJMb3cifSwiY2FzZV9zdGF0ZV9kb20iOnsiT3BlbiI6Ik9wZW4iLCJDbG9zZWQiOiJDbG9zZWQifSwicHJvamVjdF9zdGF0dXNfZG9tIjp7IkRyYWZ0IjoiRHJhZnQiLCJJbiBSZXZpZXciOiJJbiBSZXZpZXciLCJQdWJsaXNoZWQiOiJQdWJsaXNoZWQifSwicHJvamVjdHNfcHJpb3JpdHlfb3B0aW9ucyI6eyJoaWdoIjoiSGlnaCIsIm1lZGl1bSI6Ik1lZGl1bSIsImxvdyI6IkxvdyJ9LCJwcm9qZWN0X3Rhc2tfc3RhdHVzX29wdGlvbnMiOnsiTm90IFN0YXJ0ZWQiOiJOb3QgU3RhcnRlZCIsIkluIFByb2dyZXNzIjoiSW4gUHJvZ3Jlc3MiLCJDb21wbGV0ZWQiOiJDb21wbGV0ZWQiLCJQZW5kaW5nIElucHV0IjoiUGVuZGluZyBJbnB1dCIsIkRlZmVycmVkIjoiRGVmZXJyZWQifSwicHJvamVjdF90YXNrX3ByaW9yaXR5X29wdGlvbnMiOnsiSGlnaCI6IkhpZ2giLCJNZWRpdW0iOiJNZWRpdW0iLCJMb3ciOiJMb3cifSwidGFza19zdGF0dXNfZG9tIjp7Ik5vdCBTdGFydGVkIjoiTm90IFN0YXJ0ZWQiLCJJbiBQcm9ncmVzcyI6IkluIFByb2dyZXNzIiwiQ29tcGxldGVkIjoiQ29tcGxldGVkIiwiUGVuZGluZyBJbnB1dCI6IlBlbmRpbmcgSW5wdXQiLCJEZWZlcnJlZCI6IkRlZmVycmVkIn0sInRhc2tfcHJpb3JpdHlfZG9tIjp7IkhpZ2giOiJIaWdoIiwiTWVkaXVtIjoiTWVkaXVtIiwiTG93IjoiTG93In19Jyk7dmFyIHN1Z2FyX2FwcF9zdHJpbmdzID0galF1ZXJ5LnBhcnNlSlNPTigneyJMQkxfQ1JFQVRFX0JVVFRPTl9MQUJFTCI6IkNyZWF0ZSIsIkxCTF9FRElUX0JVVFRPTiI6IkVkaXQiLCJMQkxfTElTVCI6Ikxpc3QiLCJMQkxfU0VBUkNIX0JVVFRPTl9MQUJFTCI6IlNlYXJjaCIsIkxCTF9DVVJSRU5UX1VTRVJfRklMVEVSIjoiTXkgSXRlbXM6IiwiTEJMX0JBQ0siOiJCYWNrIiwiTEJMX1NBVkVfQlVUVE9OX0xBQkVMIjoiU2F2ZSIsIkxCTF9DQU5DRUxfQlVUVE9OX0xBQkVMIjoiQ2FuY2VsIiwiTEJMX01BUktfQVNfRkFWT1JJVEVTIjoiTWFyayBhcyBGYXZvcml0ZSIsIkxCTF9SRU1PVkVfRlJPTV9GQVZPUklURVMiOiJSZW1vdmUgRnJvbSBNeSBGYXZvcml0ZXMiLCJOVENfREVMRVRFX0NPTkZJUk1BVElPTiI6IkFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBkZWxldGUgdGhpcyByZWNvcmQ/IiwiTEJMX0RFTEVURV9CVVRUT05fTEFCRUwiOiJEZWxldGUiLCJFUlJPUl9OT19SRUNPUkQiOiJFcnJvciByZXRyaWV2aW5nIHJlY29yZC4gIFRoaXMgcmVjb3JkIG1heSBiZSBkZWxldGVkIG9yIHlvdSBtYXkgbm90IGJlIGF1dGhvcml6ZWQgdG8gdmlldyBpdC4iLCJMQkxfTEFTVF9WSUVXRUQiOiJSZWNlbnRseSBWaWV3ZWQiLCJMTktfTElTVF9ORVhUIjoiTmV4dCIsIkxOS19MSVNUX1BSRVZJT1VTIjoiUHJldmlvdXMiLCJMQkxfTElTVF9VU0VSX05BTUUiOiJVc2VyIE5hbWUiLCJOVENfTE9HSU5fTUVTU0FHRSI6IlBsZWFzZSBlbnRlciB5b3VyIHVzZXIgbmFtZSBhbmQgcGFzc3dvcmQuIiwiRVJSX0lOVkFMSURfRU1BSUxfQUREUkVTUyI6Im5vdCBhIHZhbGlkIGVtYWlsIGFkZHJlc3MuIiwiTEJMX0FTU0lHTkVEX1RPIjoiQXNzaWduZWQgdG86IiwiTEJMX0NMRUFSX0JVVFRPTl9MQUJFTCI6IkNsZWFyIiwiTEJMX0RVUkFUSU9OX0RBWVMiOiJkYXlzIiwiTEJMX0NMT1NFX0FORF9DUkVBVEVfQlVUVE9OX1RJVExFIjoiQ2xvc2UgYW5kIENyZWF0ZSBOZXciLCJMQkxfQ0xPU0VfQlVUVE9OX1RJVExFIjoiQ2xvc2UiLCJMQkxfTElTVFZJRVdfQUxMIjoiQWxsIiwiTEJMX0xJU1RWSUVXX05PTkUiOiJEZXNlbGVjdCBBbGwifScpOw=='),('QuickCRM','en_usf','0'),('QuickCRM','pt_PT','dmFyIFJFU19DUkVBVEU9J0NyaWFyJyxSRVNfTElTVD0nTGlzdGEnLFJFU19BRERfVE9fSE9NRT0nTWFyY2FyIGNvbW8gRmF2b3JpdG8nLFJFU19SRU1fRlJPTV9IT01FPSdSZW1vdmVyIERvcyBNZXVzIEZhdm9yaXRvcycsUkVTX1JFQ09SRF9FUlJPUj0nRXJybyBhbyByZWN1cGVyYXIgdW0gcmVnaXN0by4gRXN0ZSByZWdpc3RvIHBvZGUgZW5jb250cmFyLXNlIGVsaW1pbmFkbyBvdSB2b2PDqiBwb2RlcsOhIG7Do28gdGVyIHBlcm1pc3PDtWVzIHBhcmEgbyB2aXN1YWxpemFyLicsUkVTX0xBU1RfVklFV0VEPSfDmmx0aW1vcyBhY2Vzc29zJywgUkVTX0RFTEVURV9DT05GSVJNQVRJT049J1RlbSBhIGNlcnRlemEgcXVlIHByZXRlbmRlIGVsaW1pbmFyIGVzdGUgcmVnaXN0bz8nLCBSRVNfREVMX0xBQkVMPSdFbGltaW5hcicsIFJFU19ORVhUX0xBQkVMPSdQcsOzeGltbycsIFJFU19QUkVWSU9VU19MQUJFTD0nQW50ZXJpb3InOwp2YXIgUkVTX0hPTUVfTEFCRUw9J1ByaW5jaXBhbCcsUkVTX1NZTkM9J1NpbmNyb25pemFyJyxSRVNfU0FWRURTRUFSQ0g9J1Blc3F1aXNhcyBHcmF2YWRhcycsUkVTX1NBVkVTRUFSQ0g9J0dyYXZhciBlc3RhIFBlc3F1aXNhIGNvbW86JyxSRVNfRElTQUJMRUQ9J0Rlc2FjdGl2YWRvJzsKdmFyIHN1Z2FyX2FwcF9saXN0X3N0cmluZ3MgPSBqUXVlcnkucGFyc2VKU09OKCd7Im1vZHVsZUxpc3QiOnsiQWNjb3VudHMiOiJFbnRpZGFkZXMiLCJDb250YWN0cyI6IkNvbnRhY3RvcyIsIk9wcG9ydHVuaXRpZXMiOiJPcG9ydHVuaWRhZGVzIiwiTGVhZHMiOiJMZWFkcyIsIkNhbGxzIjoiQ2hhbWFkYXMgVGVsZWZcdTAwZjNuaWNhcyIsIk1lZXRpbmdzIjoiUmV1bmlcdTAwZjVlcyIsIkNhc2VzIjoiT2NvcnJcdTAwZWFuY2lhcyIsIlByb2plY3QiOiJQcm9qZWN0b3MiLCJQcm9qZWN0VGFzayI6IlRhcmVmYXMgZGUgUHJvamVjdG8iLCJUYXNrcyI6IlRhcmVmYXMiLCJOb3RlcyI6Ik5vdGFzIiwiU2F2ZWRTZWFyY2hlcyI6IlBlc3F1aXNhcyBHcmF2YWRhcyJ9LCJtb2R1bGVMaXN0U2luZ3VsYXIiOnsiQWNjb3VudHMiOiJFbnRpZGFkZSIsIkNvbnRhY3RzIjoiQ29udGFjdG8iLCJPcHBvcnR1bml0aWVzIjoiT3BvcnR1bmlkYWRlIiwiTGVhZHMiOiJMZWFkIiwiQ2FsbHMiOiJDaGFtYWRhIiwiTWVldGluZ3MiOiJSZXVuaVx1MDBlM28iLCJDYXNlcyI6Ik9jb3JyXHUwMGVhbmNpYSIsIlByb2plY3QiOiJQcm9qZWN0byIsIlByb2plY3RUYXNrIjoiVGFyZWZhIGRlIFByb2plY3RvIiwiVGFza3MiOiJUYXJlZmEiLCJOb3RlcyI6Ik5vdGEifSwicGFyZW50X3R5cGVfZGlzcGxheSI6eyJCdWdzIjoiQnVnIFRyYWNrZXIiLCJMZWFkcyI6IkxlYWQiLCJQcm9zcGVjdHMiOiJUYXJnZXQiLCJBY2NvdW50cyI6IkVudGlkYWRlIiwiQ29udGFjdHMiOiJDb250YWN0byIsIlRhc2tzIjoiVGFyZWZhIiwiT3Bwb3J0dW5pdGllcyI6Ik9wb3J0dW5pZGFkZSIsIlByb2R1Y3RzIjoiUHJvZHV0byIsIlF1b3RlcyI6IkNvdGFcdTAwZTdcdTAwZTNvIiwiQ2FzZXMiOiJPY29yclx1MDBlYW5jaWEiLCJQcm9qZWN0IjoiUHJvamVjdG8iLCJQcm9qZWN0VGFzayI6IlRhcmVmYSBkZSBQcm9qZWN0byJ9LCJkYXRlX3NlYXJjaCI6eyI9IjoiRXF1YWxzIiwibm90X2VxdWFsIjoiTm90IE9uIiwiZ3JlYXRlcl90aGFuIjoiQWZ0ZXIiLCJsZXNzX3RoYW4iOiJCZWZvcmUiLCJsYXN0XzdfZGF5cyI6Ikxhc3QgNyBEYXlzIiwibmV4dF83X2RheXMiOiJOZXh0IDcgRGF5cyIsImxhc3RfMzBfZGF5cyI6Ikxhc3QgMzAgRGF5cyIsIm5leHRfMzBfZGF5cyI6Ik5leHQgMzAgRGF5cyIsImxhc3RfbW9udGgiOiJMYXN0IE1vbnRoIiwidGhpc19tb250aCI6IlRoaXMgTW9udGgiLCJuZXh0X21vbnRoIjoiTmV4dCBNb250aCIsImxhc3RfeWVhciI6Ikxhc3QgWWVhciIsInRoaXNfeWVhciI6IlRoaXMgWWVhciIsIm5leHRfeWVhciI6Ik5leHQgWWVhciIsImJldHdlZW4iOiJJcyBCZXR3ZWVuIiwidG9kYXkiOiJob2plIn0sImFjY291bnRfdHlwZV9kb20iOnsiIjoiWy1uZW5odW0tXSIsIkFuYWx5c3QiOiJBbmFsaXN0YSIsIkNvbXBldGl0b3IiOiJDb25jb3JyZW50ZSIsIkN1c3RvbWVyIjoiQ2xpZW50ZSIsIkludGVncmF0b3IiOiJJbnRlZ3JhZG9yIiwiSW52ZXN0b3IiOiJJbnZlc3RpZG9yIiwiUGFydG5lciI6IlBhcmNlaXJvIiwiUHJlc3MiOiJJbXByZW5zYSIsIlByb3NwZWN0IjoiUG90ZW5jaWFsIENsaWVudGUiLCJSZXNlbGxlciI6IlJldmVuZGVkb3IiLCJPdGhlciI6Ik91dHJvIn0sImluZHVzdHJ5X2RvbSI6eyIiOiIiLCJBcHBhcmVsIjoiVFx1MDBlYXh0aWwiLCJCYW5raW5nIjoiQmFuY28iLCJCaW90ZWNobm9sb2d5IjoiQmlvdGVjbm9sb2dpYSIsIkNoZW1pY2FscyI6IlF1XHUwMGVkbWljYSIsIkNvbW11bmljYXRpb25zIjoiQ29tdW5pY2FcdTAwZTdcdTAwZjVlcyIsIkNvbnN0cnVjdGlvbiI6IkNvbnN0cnVcdTAwZTdcdTAwZTNvIiwiQ29uc3VsdGluZyI6IkNvbnN1bHRvcmlhIiwiRWR1Y2F0aW9uIjoiRW5zaW5vIiwiRWxlY3Ryb25pY3MiOiJFbGVjdHJcdTAwZjNuaWNvcyIsIkVuZXJneSI6IkVuZXJnaWEiLCJFbmdpbmVlcmluZyI6IkVuZ2VuaGFyaWEiLCJFbnRlcnRhaW5tZW50IjoiRW50cmV0ZW5pbWVudG8iLCJFbnZpcm9ubWVudGFsIjoiQW1iaWVudGFsIiwiRmluYW5jZSI6IkZpbmFuY2VpcmEiLCJHb3Zlcm5tZW50IjoiR292ZXJubyIsIkhlYWx0aGNhcmUiOiJTYVx1MDBmYWRlIiwiSG9zcGl0YWxpdHkiOiJIb3RlbGFyaWEiLCJJbnN1cmFuY2UiOiJTZWd1cm9zIiwiTWFjaGluZXJ5IjoiTWFxdWluYXJpYSIsIk1hbnVmYWN0dXJpbmciOiJNYW51ZmFjdHVyYSIsIk1lZGlhIjoiTWVpb3MgZGUgQ29tdW5pY2FcdTAwZTdcdTAwZTNvIiwiTm90IEZvciBQcm9maXQiOiJTZW0gRmlucyBMdWNyYXRpdm9zIiwiUmVjcmVhdGlvbiI6IkVudHJldGVuaW1lbnRvIiwiUmV0YWlsIjoiUmV0YWxobyIsIlNoaXBwaW5nIjoiRXhwZWRpdG9yZXMiLCJUZWNobm9sb2d5IjoiVGVjbm9sb2dpYSIsIlRlbGVjb21tdW5pY2F0aW9ucyI6IlRlbGVjb211bmljYVx1MDBlN1x1MDBmNWVzIiwiVHJhbnNwb3J0YXRpb24iOiJUcmFuc3BvcnRlcyIsIlV0aWxpdGllcyI6IlNlcnZpXHUwMGU3b3MgUFx1MDBmYWJsaWNvcyIsIk90aGVyIjoiT3V0cm9zIn0sInNhbHV0YXRpb25fZG9tIjp7IiI6IiIsIkRyLiI6IkRyLiIsIlByb2YuIjoiUHJvZi4iLCJNci4iOiJTci4iLCJNcy4iOiJTcmEuIiwiTXJzLiI6IlNyYS4ifSwibGVhZF9zb3VyY2VfZG9tIjp7IiI6IiIsIkRpcmVjdCBNYWlsIjoiRGlyZWN0IE1haWwiLCJDb2xkIENhbGwiOiJDaGFtYWRhIEVzcG9udFx1MDBlMm5lYSIsIkV4aXN0aW5nIEN1c3RvbWVyIjoiQ2xpZW50ZSBFeGlzdGVudGUiLCJTZWxmIEdlbmVyYXRlZCI6IkF1dG8gR2VyYWRhIiwiRW1wbG95ZWUiOiJDb2xhYm9yYWRvciIsIlBhcnRuZXIiOiJQYXJjZWlybyIsIlB1YmxpYyBSZWxhdGlvbnMiOiJSZWxhXHUwMGU3XHUwMGY1ZXMgUFx1MDBmYWJsaWNhcyIsIkNvbmZlcmVuY2UiOiJDb25mZXJcdTAwZWFuY2lhIiwiVHJhZGUgU2hvdyI6IkZlaXJhXC9FdmVudG8iLCJXZWIgU2l0ZSI6IlNpdGUgZGUgSW50ZXJuZXQiLCJXb3JkIG9mIG1vdXRoIjoiQm9jYS1hLWJvY2EiLCJFbWFpbCI6IkUtbWFpbCIsIkNhbXBhaWduIjoiQ2FtcGFuaGEiLCJPdGhlciI6Ik91dHJvIn0sIm9wcG9ydHVuaXR5X3JlbGF0aW9uc2hpcF90eXBlX2RvbSI6eyIiOiIiLCJQcmltYXJ5IERlY2lzaW9uIE1ha2VyIjoiRGVjaXNvciBQcmluY2lwYWwiLCJCdXNpbmVzcyBEZWNpc2lvbiBNYWtlciI6IkRlY2lzb3IgZGUgTmVnXHUwMGYzY2lvcyIsIkJ1c2luZXNzIEV2YWx1YXRvciI6IkF2YWxpYWRvciBkZSBOZWdcdTAwZjNjaW9zIiwiVGVjaG5pY2FsIERlY2lzaW9uIE1ha2VyIjoiRGVjaXNvciBUXHUwMGU5Y25pY28iLCJUZWNobmljYWwgRXZhbHVhdG9yIjoiQXZhbGlhZG9yIFRcdTAwZTljbmljbyIsIkV4ZWN1dGl2ZSBTcG9uc29yIjoiUGF0cm9jaW5hZG9yIEV4ZWN1dGl2byIsIkluZmx1ZW5jZXIiOiJJbmZsdVx1MDBlYW5jaWFkb3IiLCJPdGhlciI6Ik91dHJvIn0sImRvbV9tZWV0aW5nX2FjY2VwdF9zdGF0dXMiOnsiYWNjZXB0IjoiQWNlaXRlIiwiZGVjbGluZSI6IlJlY3VzYWRvIiwidGVudGF0aXZlIjoiVGVudGF0aXZvIiwibm9uZSI6Ik5lbmh1bSJ9LCJmcF9ldmVudF9pbnZpdGVfc3RhdHVzX2RvbSI6eyJJbnZpdGVkIjoiSW52aXRlZCIsIk5vdCBJbnZpdGVkIjoiTm90IEludml0ZWQiLCJBdHRlbmRlZCI6IkF0dGVuZGVkIiwiTm90IEF0dGVuZGVkIjoiTm90IEF0dGVuZGVkIn0sImZwX2V2ZW50X3N0YXR1c19kb20iOnsiQWNjZXB0ZWQiOiJBY2NlcHRlZCIsIkRlY2xpbmVkIjoiRGVjbGluZWQiLCJObyBSZXNwb25zZSI6Ik5vIFJlc3BvbnNlIn0sIm9wcG9ydHVuaXR5X3R5cGVfZG9tIjp7IiI6IiIsIkV4aXN0aW5nIEJ1c2luZXNzIjoiTmVnXHUwMGYzY2lvcyBFeGlzdGVudGVzIiwiTmV3IEJ1c2luZXNzIjoiTm92b3MgTmVnXHUwMGYzY2lvcyJ9LCJzYWxlc19zdGFnZV9kb20iOnsiUHJvc3BlY3RpbmciOiJQcm9zcGVjXHUwMGU3XHUwMGUzbyIsIlF1YWxpZmljYXRpb24iOiJRdWFsaWZpY2FcdTAwZTdcdTAwZTNvIiwiTmVlZHMgQW5hbHlzaXMiOiJBblx1MDBlMWxpc2UgZGUgTmVjZXNzaWRhZGVzIiwiVmFsdWUgUHJvcG9zaXRpb24iOiJQcm9wb3N0YSBkZSBWYWxvciIsIklkLiBEZWNpc2lvbiBNYWtlcnMiOiJJZGVudGlmaWNhciBkZWNpc29yZXMiLCJQZXJjZXB0aW9uIEFuYWx5c2lzIjoiQW5cdTAwZTFsaXNlIGRlIFBlcmNlcFx1MDBlN1x1MDBlM28iLCJQcm9wb3NhbFwvUHJpY2UgUXVvdGUiOiJQcm9wb3N0YVwvQ290YVx1MDBlN1x1MDBlM28gZGUgUHJlXHUwMGU3byIsIk5lZ290aWF0aW9uXC9SZXZpZXciOiJOZWdvY2lhXHUwMGU3XHUwMGUzb1wvUmV2aXNcdTAwZTNvIiwiQ2xvc2VkIFdvbiI6IkdhbmhcdTAwZTFtb3MiLCJDbG9zZWQgTG9zdCI6IlBlcmRlbW9zIn0sImxlYWRfc3RhdHVzX2RvbSI6eyIiOiIiLCJOZXciOiJOb3ZvIiwiQXNzaWduZWQiOiJBdHJpYnVcdTAwZWRkbyIsIkluIFByb2Nlc3MiOiJFbSBQcm9jZXNzYW1lbnRvIiwiQ29udmVydGVkIjoiQ29udmVydGlkbyIsIlJlY3ljbGVkIjoiUmVjaWNsYWRvIiwiRGVhZCI6Iklub3BlcmF0aXZvIn0sImNhbGxfc3RhdHVzX2RvbSI6eyJQbGFubmVkIjoiUGxhbmVhZGEiLCJIZWxkIjoiUmVhbGl6YWRhIiwiTm90IEhlbGQiOiJOXHUwMGUzbyBSZWFsaXphZGEifSwiY2FsbF9kaXJlY3Rpb25fZG9tIjp7IkluYm91bmQiOiJFbnRyYWRhIiwiT3V0Ym91bmQiOiJTYVx1MDBlZGRhIn0sInJlbWluZGVyX3RpbWVfb3B0aW9ucyI6eyI2MCI6IjEgbWludXRvIGFudGVzIiwiMzAwIjoiNSBtaW51dG9zIGFudGVzIiwiNjAwIjoiMTAgbWludXRvcyBhbnRlcyIsIjkwMCI6IjE1IG1pbnV0b3MgYW50ZXMiLCIxODAwIjoiMzAgbWludXRvcyBhbnRlcyIsIjM2MDAiOiIxIGhvcmEgYW50ZXMiLCI3MjAwIjoiMiBob3VycyBwcmlvciIsIjEwODAwIjoiMyBob3VycyBwcmlvciIsIjE4MDAwIjoiNSBob3VycyBwcmlvciIsIjg2NDAwIjoiMSBkYXkgcHJpb3IifSwicmVwZWF0X3R5cGVfZG9tIjp7IiI6Ik5vbmUiLCJEYWlseSI6IkRhaWx5IiwiV2Vla2x5IjoiV2Vla2x5IiwiTW9udGhseSI6Ik1vbnRobHkiLCJZZWFybHkiOiJZZWFybHkifSwibWVldGluZ19zdGF0dXNfZG9tIjp7IlBsYW5uZWQiOiJQbGFuZWFkbyIsIkhlbGQiOiJSZWFsaXphZG8iLCJOb3QgSGVsZCI6Ik5cdTAwZTNvIFJlYWxpemFkbyJ9LCJlYXBtX2xpc3QiOnsiU3VnYXIiOiJTdWdhciIsIldlYkV4IjoiV2ViRXgiLCJHb1RvTWVldGluZyI6IkdvVG9NZWV0aW5nIiwiSUJNU21hcnRDbG91ZCI6IklCTSBTbWFydENsb3VkIiwiR29vZ2xlIjoiR29vZ2xlIiwiQm94IjoiQm94Lm5ldCIsIkZhY2Vib29rIjoiRmFjZWJvb2siLCJUd2l0dGVyIjoiVHdpdHRlciJ9LCJkdXJhdGlvbl9kb20iOnsiIjoiTm9uZSIsIjkwMCI6IjE1IG1pbnV0ZXMiLCIxODAwIjoiMzAgbWludXRlcyIsIjI3MDAiOiI0NSBtaW51dGVzIiwiMzYwMCI6IjEgaG91ciIsIjU0MDAiOiIxLjUgaG91cnMiLCI3MjAwIjoiMiBob3VycyIsIjEwODAwIjoiMyBob3VycyIsIjIxNjAwIjoiNiBob3VycyIsIjg2NDAwIjoiMSBkYXkiLCIxNzI4MDAiOiIyIGRheXMiLCIyNTkyMDAiOiIzIGRheXMiLCI2MDQ4MDAiOiIxIHdlZWsifSwiY2FzZV90eXBlX2RvbSI6eyJBZG1pbmlzdHJhdGlvbiI6IkFkbWluaXN0cmFcdTAwZTdcdTAwZTNvIiwiUHJvZHVjdCI6IlByb2R1dG8iLCJVc2VyIjoiVXRpbGl6YWRvciJ9LCJjYXNlX3ByaW9yaXR5X2RvbSI6eyJQMSI6IkFsdGEiLCJQMiI6Ik1cdTAwZTlkaWEiLCJQMyI6IkJhaXhhIn0sImNhc2Vfc3RhdGVfZG9tIjp7Ik9wZW4iOiJPcGVuIiwiQ2xvc2VkIjoiQ2xvc2VkIn0sInByb2plY3Rfc3RhdHVzX2RvbSI6eyJEcmFmdCI6IlJhc2N1bmhvIiwiSW4gUmV2aWV3IjoiRW0gUmV2aXNcdTAwZTNvIiwiUHVibGlzaGVkIjoiUHVibGljYWRvIn0sInByb2plY3RzX3ByaW9yaXR5X29wdGlvbnMiOnsiaGlnaCI6IkFsdG8iLCJtZWRpdW0iOiJNXHUwMGU5ZGlvIiwibG93IjoiQmFpeG8ifSwicHJvamVjdF90YXNrX3N0YXR1c19vcHRpb25zIjp7Ik5vdCBTdGFydGVkIjoiTlx1MDBlM28gSW5pY2lhZGEiLCJJbiBQcm9ncmVzcyI6IkVtIHByb2dyZXNzbyIsIkNvbXBsZXRlZCI6IkNvbmNsdVx1MDBlZGRhIiwiUGVuZGluZyBJbnB1dCI6IkEgQWd1YXJkYXIgUmVzcG9zdGEiLCJEZWZlcnJlZCI6IkFkaWFkYSJ9LCJwcm9qZWN0X3Rhc2tfcHJpb3JpdHlfb3B0aW9ucyI6eyJIaWdoIjoiQWx0YSIsIk1lZGl1bSI6Ik1cdTAwZTlkaWEiLCJMb3ciOiJCYWl4YSJ9LCJ0YXNrX3N0YXR1c19kb20iOnsiTm90IFN0YXJ0ZWQiOiJOXHUwMGUzbyBJbmljaWFkYSIsIkluIFByb2dyZXNzIjoiRW0gUHJvZ3Jlc3NvIiwiQ29tcGxldGVkIjoiVGVybWluYWRhIiwiUGVuZGluZyBJbnB1dCI6IkluZm9ybWFcdTAwZTdcdTAwZTNvIFBlbmRlbnRlIiwiRGVmZXJyZWQiOiJBZGlhZGEifSwidGFza19wcmlvcml0eV9kb20iOnsiSGlnaCI6IkFsdGEiLCJNZWRpdW0iOiJNXHUwMGU5ZGlhIiwiTG93IjoiQmFpeGEifX0nKTt2YXIgc3VnYXJfYXBwX3N0cmluZ3MgPSBqUXVlcnkucGFyc2VKU09OKCd7IkxCTF9DUkVBVEVfQlVUVE9OX0xBQkVMIjoiQ3JpYXIiLCJMQkxfRURJVF9CVVRUT04iOiJFZGl0YXIiLCJMQkxfTElTVCI6Ikxpc3RhIiwiTEJMX1NFQVJDSF9CVVRUT05fTEFCRUwiOiJQZXNxdWlzYXIiLCJMQkxfQ1VSUkVOVF9VU0VSX0ZJTFRFUiI6IkFwZW5hcyBvcyBtZXVzIGl0ZW5zOiIsIkxCTF9CQUNLIjoiVm9sdGFyIiwiTEJMX1NBVkVfQlVUVE9OX0xBQkVMIjoiR3JhdmFyIiwiTEJMX0NBTkNFTF9CVVRUT05fTEFCRUwiOiJDYW5jZWxhciIsIkxCTF9NQVJLX0FTX0ZBVk9SSVRFUyI6Ik1hcmNhciBjb21vIEZhdm9yaXRvIiwiTEJMX1JFTU9WRV9GUk9NX0ZBVk9SSVRFUyI6IlJlbW92ZXIgRG9zIE1ldXMgRmF2b3JpdG9zIiwiTlRDX0RFTEVURV9DT05GSVJNQVRJT04iOiJUZW0gYSBjZXJ0ZXphIHF1ZSBwcmV0ZW5kZSBlbGltaW5hciBlc3RlIHJlZ2lzdG8/IiwiTEJMX0RFTEVURV9CVVRUT05fTEFCRUwiOiJFbGltaW5hciIsIkVSUk9SX05PX1JFQ09SRCI6IkVycm8gYW8gcmVjdXBlcmFyIHVtIHJlZ2lzdG8uIEVzdGUgcmVnaXN0byBwb2RlIGVuY29udHJhci1zZSBlbGltaW5hZG8gb3Ugdm9jXHUwMGVhIHBvZGVyXHUwMGUxIG5cdTAwZTNvIHRlciBwZXJtaXNzXHUwMGY1ZXMgcGFyYSBvIHZpc3VhbGl6YXIuIiwiTEJMX0xBU1RfVklFV0VEIjoiXHUwMGRhbHRpbW9zIGFjZXNzb3MiLCJMTktfTElTVF9ORVhUIjoiUHJcdTAwZjN4aW1vIiwiTE5LX0xJU1RfUFJFVklPVVMiOiJBbnRlcmlvciIsIkxCTF9MSVNUX1VTRVJfTkFNRSI6Ik5vbWUgZG8gVXRpbGl6YWRvciIsIk5UQ19MT0dJTl9NRVNTQUdFIjoiUG9yIGZhdm9yIGluZGlxdWUgbyBzZXUgbm9tZSBlIHBhbGF2cmEtcGFzc2UuIiwiRVJSX0lOVkFMSURfRU1BSUxfQUREUkVTUyI6Ik8gZW5kZXJlXHUwMGU3byBkZSBFLW1haWwgblx1MDBlM28gXHUwMGU5IHZcdTAwZTFsaWRvLiIsIkxCTF9BU1NJR05FRF9UTyI6IkF0cmlidVx1MDBlZGRvIGE6IiwiTEJMX0NMRUFSX0JVVFRPTl9MQUJFTCI6IkxpbXBhciIsIkxCTF9EVVJBVElPTl9EQVlTIjoiZGF5cyIsIkxCTF9DTE9TRV9BTkRfQ1JFQVRFX0JVVFRPTl9USVRMRSI6IkZlY2hhciBlIENyaWFyIE5vdm8gW0FsdCtDXSIsIkxCTF9DTE9TRV9CVVRUT05fVElUTEUiOiJGZWNoYXIiLCJMQkxfTElTVFZJRVdfQUxMIjoiVHVkbyIsIkxCTF9MSVNUVklFV19OT05FIjoiTmVuaHVtIn0nKTs='),('QuickCRM','pt_PTf','0');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('f02ca7d0-bf56-91ff-43aa-5089610019b2','2012-10-25 15:59:51','2012-10-25 15:59:51','1','1','',0,'1','Dr.','','asdasdasd','','',0,NULL,'','',NULL,'','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES ('464f1f2a-15ee-6c6a-8cfb-5088ffe375db','Euros','€','EUR',1,'Active',0,'2012-10-25 09:00:05','2012-10-25 09:00:05','1');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dha_plantillasdocumentos`
--

DROP TABLE IF EXISTS `dha_plantillasdocumentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dha_plantillasdocumentos` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `uploadfile` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `modulo` varchar(100) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT 'en_US',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dha_plantillasdocumentos`
--

LOCK TABLES `dha_plantillasdocumentos` WRITE;
/*!40000 ALTER TABLE `dha_plantillasdocumentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dha_plantillasdocumentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dha_plantillasdocumentos_audit`
--

DROP TABLE IF EXISTS `dha_plantillasdocumentos_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dha_plantillasdocumentos_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_dha_plantillasdocumentos_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dha_plantillasdocumentos_audit`
--

LOCK TABLES `dha_plantillasdocumentos_audit` WRITE;
/*!40000 ALTER TABLE `dha_plantillasdocumentos_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dha_plantillasdocumentos_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
INSERT INTO `document_revisions` VALUES ('33aadf51-860a-121c-3012-50bf7630ecd0','Documento Criado','3207d06a-3bc2-25bc-e95d-50bf769f9798','','Sugar','','2012-12-05 16:30:43','1','7190.pdf','pdf','application/pdf','1',0,'2012-12-05 16:30:43'),('577c3b50-daa0-2600-da23-50b8d4259656','Documento Criado','4d696794-dece-e674-e0db-50b8d4699c3b','','Sugar','','2012-11-30 15:46:58','1','Workflow_Screenshots.pdf','pdf','application/pdf','1',0,'2012-11-30 15:46:58'),('826b44b1-1e16-465f-223c-50b3ae22db01','Documento Criado','80a847d4-382c-a6b2-38b5-50b3ae5a71a2','','Sugar','','2012-11-26 17:59:48','1','Contratos.csv','csv','application/octet-stream','1',0,'2012-11-26 17:59:48'),('8d8434bb-5bad-4550-a44e-5273fff08577','Documento Criado','63128f9b-dcf5-dcf6-2f1b-5273ffd4896a','','Sugar','','2013-11-01 19:24:22','1','Workflow_Screenshots.pdf','pdf','application/pdf','1',0,'2013-11-01 19:24:22');
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES ('3207d06a-3bc2-25bc-e95d-50bf769f9798','2012-12-05 16:30:43','2012-12-05 16:30:43','1','1','',0,NULL,'7190.pdf','','Sugar','','2012-12-05',NULL,'',NULL,'valido','33aadf51-860a-121c-3012-50bf7630ecd0',NULL,NULL,0,NULL),('4d696794-dece-e674-e0db-50b8d4699c3b','2012-11-30 15:46:58','2012-11-30 15:46:58','1','1','',0,NULL,'doc','','Sugar','','2012-11-30',NULL,'fichastecnicas',NULL,'valido','577c3b50-daa0-2600-da23-50b8d4259656',NULL,NULL,0,NULL),('63128f9b-dcf5-dcf6-2f1b-5273ffd4896a','2013-11-01 19:24:22','2013-11-01 19:24:22','1','1','',0,'1','Workflow_Screenshots.pdf','','Sugar','','2013-11-01',NULL,'',NULL,'valido','8d8434bb-5bad-4550-a44e-5273fff08577',NULL,NULL,0,NULL),('80a847d4-382c-a6b2-38b5-50b3ae5a71a2','2012-11-26 17:59:48','2012-11-27 11:04:13','1','1','contem contactos',0,'1','Lista de Contactos do Sugar',NULL,'Sugar',NULL,'2012-11-26',NULL,'fichastecnicas',NULL,'valido','826b44b1-1e16-465f-223c-50b3ae22db01','','',0,NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
INSERT INTO `documents_accounts` VALUES ('94fd6322-0ff4-3cff-36b8-50b8d4ad2c74','2012-11-30 15:46:58',0,'4d696794-dece-e674-e0db-50b8d4699c3b','c18c8b38-85a2-6805-bcd6-50b8c9b2dcd4');
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
INSERT INTO `documents_opportunities` VALUES ('5b8d6ddf-a63f-90d8-b52c-50bf7616a17b','2012-12-05 16:30:43',0,'3207d06a-3bc2-25bc-e95d-50bf769f9798','6216ede9-c47b-15f5-fce3-508fa39fd652');
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('10f1a6ee-2d6c-69b5-55ae-51e6b07baf64','10fcaec8-fbef-68fb-d815-51e6b0891447','9acddd3b-036e-4e38-af37-51e6ad1f4750','Users',1,0,'2013-07-17 14:56:58','2013-07-17 14:56:58',0),('11546eb5-48ef-c882-1348-509d1044d747','115f02f8-103a-fb69-9b33-509d10be6131','48319c1e-75c7-f88d-1fd0-509d004a8f73','Users',1,0,'2012-11-09 14:16:15','2012-11-09 14:16:15',0),('1951a017-912e-fbac-b014-50892ca357d2','115f02f8-103a-fb69-9b33-509d10be6131','32675a41-2ecc-004a-120b-50892777c7b7','Users',1,0,'2012-10-25 12:12:05','2012-10-25 12:12:05',0),('25f78605-deb1-5b16-9988-52ab9176ceae','25fa2ae1-0389-2c30-75d0-52ab91eb31ef','249c93bc-2719-595f-87de-52ab8ebf14aa','Users',1,0,'2013-12-13 22:58:43','2013-12-13 22:58:43',0),('26d62980-0004-29a3-a2bd-52ab8e2b095f','25fa2ae1-0389-2c30-75d0-52ab91eb31ef','249c93bc-2719-595f-87de-52ab8ebf14aa','Users',1,0,'2013-12-13 22:46:28','2013-12-13 22:46:28',1),('32de95ea-1415-27c7-bea0-51e6b1c486d8','10fcaec8-fbef-68fb-d815-51e6b0891447','1a83d8d0-239f-1e72-5f5a-51e6b1b7fde7','Users',1,0,'2013-07-17 14:58:31','2013-07-17 14:58:31',1),('34fcd1a3-d699-c3b0-a8f7-50890810db2d','115f02f8-103a-fb69-9b33-509d10be6131','c7c7247c-66e2-2ccf-f5e5-508908a5d1d0','Users',1,0,'2012-10-25 09:40:11','2012-10-25 09:40:11',0),('3d9b0ac4-b402-f180-9757-52ab9317d398','25fa2ae1-0389-2c30-75d0-52ab91eb31ef','463f7cc0-54c6-9739-4d79-52ab931f009c','Users',1,0,'2013-12-13 23:10:49','2013-12-13 23:10:49',0),('45b842a1-6c11-3fc9-7d10-50892713e29e','115f02f8-103a-fb69-9b33-509d10be6131','32675a41-2ecc-004a-120b-50892777c7b7','Users',1,0,'2012-10-25 11:52:20','2012-10-25 11:52:20',1),('480db582-3a44-8679-5286-52ab93bb3b7a','25fa2ae1-0389-2c30-75d0-52ab91eb31ef','463f7cc0-54c6-9739-4d79-52ab931f009c','Users',1,0,'2013-12-13 23:09:09','2013-12-13 23:09:09',1),('48cc7e96-7d34-3bd4-bcab-50bf796c0dd1','48d6a0e2-0134-4800-9c52-50bf791204b0','e6092bde-dc58-d3be-fd5b-50841a790628','Accounts',0,0,'2012-12-05 16:41:09','2012-12-05 16:41:09',0),('620393b1-35b2-78e7-7457-509d0067ae4d','115f02f8-103a-fb69-9b33-509d10be6131','48319c1e-75c7-f88d-1fd0-509d004a8f73','Users',1,0,'2012-11-09 13:11:27','2012-11-09 13:11:27',1),('699700a5-d0ec-0afb-24ed-50841a48e63c','115f02f8-103a-fb69-9b33-509d10be6131','e6092bde-dc58-d3be-fd5b-50841a790628','Accounts',1,0,'2012-10-21 15:54:58','2012-10-21 15:54:58',0),('743cacf5-e56f-8f85-1c65-508927c76496','115f02f8-103a-fb69-9b33-509d10be6131','32675a41-2ecc-004a-120b-50892777c7b7','Users',1,0,'2012-10-25 11:51:51','2012-10-25 11:51:51',1),('750e01e9-924c-984e-6077-50b4cc2a5764','10fcaec8-fbef-68fb-d815-51e6b0891447','d2084788-6476-a47a-affc-50b4cc4ef333','Accounts',1,0,'2012-11-27 14:23:19','2012-11-27 14:23:19',0),('79b2b238-e8fa-f250-ebe0-50bf792bfe03','79be6388-c9f5-c36c-adb8-50bf79f556f1','e6092bde-dc58-d3be-fd5b-50841a790628','Accounts',0,0,'2012-12-05 16:41:09','2012-12-05 16:41:09',0),('8e61092e-9dc0-7d67-2303-52c03f4fc8c5','8f3d025d-028e-b7a3-9f65-52c03f0f1c53','1','Users',1,0,'2013-12-29 15:28:56','2013-12-29 15:28:56',0),('afb873a1-8925-fe4a-49a3-52c066e9aa17','afc6004e-c496-db26-6b69-52c066d0d75b','1','Users',1,0,'2013-12-29 18:12:18','2013-12-29 18:12:18',0),('b4bcadae-2104-4c5c-ec11-51e6b239ada1','10fcaec8-fbef-68fb-d815-51e6b0891447','1a83d8d0-239f-1e72-5f5a-51e6b1b7fde7','Users',1,0,'2013-07-17 15:06:13','2013-07-17 15:06:13',0),('b6d267ee-498f-e613-27d5-51e6b5bca9d6','10fcaec8-fbef-68fb-d815-51e6b0891447','9662e8dd-039b-9cd6-0711-51e6b53ec5c5','Users',1,1,'2013-07-17 15:16:19','2013-07-17 15:16:19',0),('bc76a1da-fd71-851a-a727-51e6ad647c19','10fcaec8-fbef-68fb-d815-51e6b0891447','9acddd3b-036e-4e38-af37-51e6ad1f4750','Users',1,0,'2013-07-17 14:42:10','2013-07-17 14:42:10',1),('d202377f-e40e-b55f-85be-508417659325','115f02f8-103a-fb69-9b33-509d10be6131','1','Users',1,0,'2012-10-21 15:42:54','2012-10-21 15:42:54',0),('de4a88cf-5bb5-797a-f785-50890802495c','115f02f8-103a-fb69-9b33-509d10be6131','c7c7247c-66e2-2ccf-f5e5-508908a5d1d0','Users',1,0,'2012-10-25 09:36:41','2012-10-25 09:36:41',1);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('10fcaec8-fbef-68fb-d815-51e6b0891447','marketing@cross.pt','MARKETING@CROSS.PT',0,0,'2013-07-17 14:56:58','2013-07-17 14:56:58',0),('115f02f8-103a-fb69-9b33-509d10be6131','crosscrm@cross.pt','CROSSCRM@CROSS.PT',0,0,'2012-11-09 14:16:15','2012-11-09 14:16:15',0),('195ca396-854d-d42c-4ae2-50892c3de79e','crosscrm@cross.pt','CROSSCRM@CROSS.PT',0,0,'2012-10-25 12:12:05','2012-10-25 12:12:05',1),('25fa2ae1-0389-2c30-75d0-52ab91eb31ef','diogo_medeiros827@hotmail.com','DIOGO_MEDEIROS827@HOTMAIL.COM',0,0,'2013-12-13 22:58:43','2013-12-13 22:58:43',0),('26e04e4a-ca62-422d-2b65-52ab8e0020e8','diogo_medeiros827@hotmail.com','DIOGO_MEDEIROS827@HOTMAIL.COM',0,0,'2013-12-13 22:46:28','2013-12-13 22:46:28',1),('32e9e926-0d77-515c-50d2-51e6b1e2f30a','marketing@cross.pt','MARKETING@CROSS.PT',0,0,'2013-07-17 14:58:31','2013-07-17 14:58:31',1),('3507d560-d702-e146-abf1-508908cb22c5','crosscrm@cross.pt','CROSSCRM@CROSS.PT',0,0,'2012-10-25 09:40:11','2012-10-25 09:40:11',1),('3e0b011b-9011-a97e-bb64-52ab932c02ed','diogo_medeiros827@hotmail.com','DIOGO_MEDEIROS827@HOTMAIL.COM',0,0,'2013-12-13 23:10:49','2013-12-13 23:10:49',1),('45c2f69c-3b97-d917-0af4-50892747ad74','crosscrm@cross.pt','CROSSCRM@CROSS.PT',0,0,'2012-10-25 11:52:20','2012-10-25 11:52:20',1),('4810fc12-34c7-c172-cfc6-52ab937e61b2','diogo_medeiros827@hotmail.com','DIOGO_MEDEIROS827@HOTMAIL.COM',0,0,'2013-12-13 23:09:09','2013-12-13 23:09:09',1),('48d6a0e2-0134-4800-9c52-50bf791204b0','teste@cross.pt','TESTE@CROSS.PT',0,0,'2012-12-05 16:41:09','2012-12-05 16:41:09',0),('6210a761-69ee-d57b-d4a8-509d001dc1be','crosscrm@cross.pt','CROSSCRM@CROSS.PT',0,0,'2012-11-09 13:11:27','2012-11-09 13:11:27',1),('6a580f4f-1139-1083-3312-50841aa593be','cross@cross.pt','CROSS@CROSS.PT',0,0,'2012-10-21 15:54:58','2012-10-25 09:34:26',0),('7447f80b-67ab-35a5-1da8-508927fbf633','crosscrm@cross.pt','CROSSCRM@CROSS.PT',0,0,'2012-10-25 11:51:51','2012-10-25 11:51:51',1),('75c40632-0dfc-3eba-7dbd-50b4cca91d72','marketing@cross.pt','MARKETING@CROSS.PT',0,0,'2012-11-27 14:23:19','2012-11-27 14:23:19',1),('79be6388-c9f5-c36c-adb8-50bf79f556f1','teste2@cross.pt','TESTE2@CROSS.PT',0,0,'2012-12-05 16:41:09','2012-12-05 16:41:09',0),('8f3d025d-028e-b7a3-9f65-52c03f0f1c53','diogo_medeiros827@hotmail.com','DIOGO_MEDEIROS827@HOTMAIL.COM',0,0,'2013-12-29 15:28:56','2013-12-29 15:28:56',0),('9c8bbc9c-0d1e-299e-e70d-50a295c6dc0f','gabinetes@cross.pt','GABINETES@CROSS.PT',0,0,'2012-11-13 18:44:38','2012-11-13 18:44:38',0),('afc6004e-c496-db26-6b69-52c066d0d75b','diogo_medeiros827@hotmail.com','DIOGO_MEDEIROS827@HOTMAIL.COM',0,0,'2013-12-29 18:12:18','2013-12-29 18:12:18',0),('b4c7a48c-7424-66f5-3530-51e6b29b401c','marketing@cross.pt','MARKETING@CROSS.PT',0,0,'2013-07-17 15:06:13','2013-07-17 15:06:13',1),('b6dd36e6-3183-8b51-f7fe-51e6b5316dc6','marketing@cross.pt','MARKETING@CROSS.PT',0,0,'2013-07-17 15:16:19','2013-07-17 15:16:19',1),('bc814977-118f-dcf0-9bd9-51e6ada4d56b','marketing@cross.pt','MARKETING@CROSS.PT',0,0,'2013-07-17 14:42:10','2013-07-17 14:42:10',1),('d20d5e29-3b5c-c0c3-9ba9-50841755f9eb','cross@cross.pt','CROSS@CROSS.PT',0,0,'2012-10-21 15:42:54','2012-10-25 10:59:10',1),('de556c65-3eef-4d24-9118-50890897051d','mail@cross.pt','MAIL@CROSS.PT',0,0,'2012-10-25 09:36:41','2012-10-25 09:38:04',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('139dd4bb-27b0-aec5-3a8e-50b4dee0ab76','2012-11-27 15:40:16','2012-11-27 15:44:04','1','1','off','Email de clientes por contactar','Email de clientes por contactar','Email de clientes por contactar','$account_contacto_efectuado_c\r\n \r\n$account_name\r\n \r\n$account_phone_office\r\n','\r\n<p>$account_contacto_efectuado_c</p>\r\n<p> </p>\r\n<p>$account_name</p>\r\n<p> </p>\r\n<p>$account_phone_office</p>\r\n',0,'1',0,NULL),('1e11f5b2-ef60-a8c7-65e0-508417b359c5','2012-10-21 15:40:03','2012-10-25 12:14:02','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',1,NULL,0,NULL),('33ef0e84-ca5f-1466-4c7f-5084179a02de','2012-10-21 15:40:03','2012-10-21 15:40:03','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('41f59485-f5e5-fc0b-4396-52c06500c63c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('4332d1a1-4b5b-8223-9738-52c0657ae10c','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('433dc95b-efdc-c9c5-1824-52c03f80ca32','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('440662e6-07bb-36e9-0b34-52c03f7b4a94','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('51752eea-3d12-7462-8a7d-51e6af3966b3','2013-07-17 14:50:24','2013-07-17 14:54:18','1','1','off','Senha do Sugar','senha do sugar','senha d sugar','','\r\n<p>$account_name</p>\r\n',1,'9acddd3b-036e-4e38-af37-51e6ad1f4750',0,'email'),('55e566cf-1edc-8d2c-2864-52c065e880b4','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('5717bd02-372b-cb85-233e-52c065e7ba0a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('5ea5096d-a235-cf94-50f9-52c065d6796a','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL),('600eb6cd-4428-9e00-10b6-52c06546e9ff','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('614dfe85-ac5d-d9af-1395-52c06517fb93','2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL),('6b22ede9-b868-f1ef-7cb8-52c0651dd60b','2013-05-24 14:31:45','2013-12-29 18:10:56','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email'),('c66bf043-cec0-264c-4903-52c03fbfc865','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('c7142271-4dce-fda3-fe3d-52c03f21468e','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('c7d74b25-fc1d-4e2c-8b53-52c03ff7e634','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL),('c8d5e99f-9704-c392-fa91-52c03fbbee6f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('c98dcf0b-8aa1-18eb-5894-52c03f76c21f','2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL),('cfdad2c9-c157-ef0d-a1c3-52c03ff155c0','2013-05-24 14:31:45','2013-12-29 15:26:02','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email'),('d39cb1bd-73c5-4253-0608-50a27b16443e','2012-11-13 16:55:02','2012-11-15 11:32:45','1','1','off','Renovação de Contrato','Renovação de Contrato','Renovação de Contrato','Exmo(a). Sr.(a). $account_name ,\r\nAgora que está na 34ª renda, deseja renovar o contrato ?\r\nCumprimentos,\r\nAndré\r\n','\r\n<p>Exmo(a). Sr.(a). $account_name ,</p>\r\n<p>Agora que está na 34ª renda, deseja renovar o contrato ?</p>\r\n<p>Cumprimentos,</p>\r\n<p>André</p>\r\n',1,'',0,'email'),('f33bb9bd-43d8-b18d-61c3-51e6ae26a78f','2013-07-17 14:47:40','2013-07-17 14:54:38','1','1','off','Senha do Sugar','Senha de utilizador do Sugar CE','criar senha de utilizador','$account_name\r\n','\r\n<p>$account_name</p>\r\n',0,'',1,NULL);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('20778f2f-c12e-1c0e-e5d0-50a13d66b7d4','2012-11-12 18:19:42','2012-11-12 18:19:42','1','1','1',0,'2012-11-12 18:19:00','','FW: Email do Sugar CE','out','sent',0,0,'pick','','',''),('44cbf0f0-a918-445d-cfd9-51c314082afd','2013-06-20 14:42:56','2013-06-20 14:42:56','1','1','1',0,'2013-06-20 14:42:00',NULL,'teste de email do crm com anexos','out','sent',NULL,NULL,'pick',NULL,'Opportunities','5fcf6fa4-5d67-8199-5667-51c30de4f252'),('52784503-61d6-bfe9-6848-50a295865931','2012-11-13 18:44:38','2012-11-13 18:44:38','1','1','1',0,'2012-11-13 18:44:00',NULL,'Renovação de Contrato','out','sent',NULL,NULL,'pick',NULL,'',''),('6c07fda3-d720-1c67-0e49-51e6b06c3cc9','2013-07-17 14:55:15','2013-07-17 14:55:15','1','1','1',0,'2013-07-17 14:55:00',NULL,'criar senha de utilizador','out','sent',NULL,NULL,'pick',NULL,'',''),('b0d08567-579a-05c9-7bc0-50b4e0885aef','2012-11-27 15:45:54','2012-11-27 15:45:54','1','1','1',0,'2012-11-27 15:45:00',NULL,'Email de clientes por contactar','out','sent',NULL,NULL,'pick',NULL,'',''),('b1d6adde-b850-7d86-d8c0-50a13be48fa4','2012-11-12 18:11:17','2012-11-12 18:11:17','1','1','1',0,'2012-11-12 18:11:00',NULL,'Email do Sugar CE','out','sent',NULL,NULL,'pick',NULL,'',''),('e729f041-7a79-f1b1-b93e-50a4d346fb43','2012-11-15 11:35:12','2012-11-15 11:35:12','1','1','1',0,'2012-11-15 11:35:00',NULL,'teste do crm Cross','out','sent',NULL,NULL,'pick',NULL,'','');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
INSERT INTO `emails_beans` VALUES ('32811bbe-3490-5e30-71b8-51c31416e4b3','44cbf0f0-a918-445d-cfd9-51c314082afd','5fcf6fa4-5d67-8199-5667-51c30de4f252','Opportunities',NULL,'2013-06-20 14:42:56',0);
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
INSERT INTO `emails_email_addr_rel` VALUES ('1f9d14d6-0943-286a-0692-50a4d3530ec9','e729f041-7a79-f1b1-b93e-50a4d346fb43','to','de556c65-3eef-4d24-9118-50890897051d',0),('3b761d0f-588c-37f9-13ea-51e6b07ebba7','6c07fda3-d720-1c67-0e49-51e6b06c3cc9','from','115f02f8-103a-fb69-9b33-509d10be6131',0),('4c20be84-3817-b336-5185-51e6b0d4c802','6c07fda3-d720-1c67-0e49-51e6b06c3cc9','to','10fcaec8-fbef-68fb-d815-51e6b0891447',0),('5ad255c7-1977-3b37-f3a2-50a4d39a521c','e729f041-7a79-f1b1-b93e-50a4d346fb43','to','6a580f4f-1139-1083-3312-50841aa593be',0),('8944b6fa-3a6b-3f98-fae5-50a295ce1c9d','52784503-61d6-bfe9-6848-50a295865931','from','115f02f8-103a-fb69-9b33-509d10be6131',0),('940b8184-92b1-4945-1b2e-50a13bbc1bab','b1d6adde-b850-7d86-d8c0-50a13be48fa4','from','115f02f8-103a-fb69-9b33-509d10be6131',0),('a4a6d7ec-94eb-5ccb-763c-50a13b347be7','b1d6adde-b850-7d86-d8c0-50a13be48fa4','to','6a580f4f-1139-1083-3312-50841aa593be',0),('b7aade7b-44e8-f077-ce0a-50a295a20bba','52784503-61d6-bfe9-6848-50a295865931','to','9c8bbc9c-0d1e-299e-e70d-50a295c6dc0f',0),('c454fd7e-8a61-4fed-9999-50b4e03bebf8','b0d08567-579a-05c9-7bc0-50b4e0885aef','from','115f02f8-103a-fb69-9b33-509d10be6131',0),('c800242a-8d72-1760-e668-50a295d1fe5c','52784503-61d6-bfe9-6848-50a295865931','cc','de556c65-3eef-4d24-9118-50890897051d',0),('d0a1155f-45d9-24fc-5695-50a13d234264','20778f2f-c12e-1c0e-e5d0-50a13d66b7d4','from','115f02f8-103a-fb69-9b33-509d10be6131',0),('d4b1b441-6018-6d5f-0d5a-50b4e0b48a97','b0d08567-579a-05c9-7bc0-50b4e0885aef','to','10fcaec8-fbef-68fb-d815-51e6b0891447',0),('dfc40b0d-6de1-aa4c-2548-51c314aba80a','44cbf0f0-a918-445d-cfd9-51c314082afd','to','de556c65-3eef-4d24-9118-50890897051d',0),('e4f036de-187b-5ec3-8e91-50b4e00e05e2','b0d08567-579a-05c9-7bc0-50b4e0885aef','to','de556c65-3eef-4d24-9118-50890897051d',0),('e6b23299-f0d1-caf0-4618-50a13d25a17a','20778f2f-c12e-1c0e-e5d0-50a13d66b7d4','to','de556c65-3eef-4d24-9118-50890897051d',0),('efb501c1-ea66-275b-afde-50a4d39d79e6','e729f041-7a79-f1b1-b93e-50a4d346fb43','from','115f02f8-103a-fb69-9b33-509d10be6131',0),('f250f336-05b5-2d25-42b3-51c3149b8356','44cbf0f0-a918-445d-cfd9-51c314082afd','from','115f02f8-103a-fb69-9b33-509d10be6131',0);
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('20778f2f-c12e-1c0e-e5d0-50a13d66b7d4','André Pinto <crosscrm@cross.pt>','','mail@cross.pt','','','\n\n\n\n\n\nsend email to mail@cross.pt.\n\nAndr&eacute;\n&nbsp;\n> De: Andr&eacute; Pinto <crosscrm@cross.pt>\n> Data de Envio: 12/11/2012 06:11pm\n> Para: cross@cross.pt\n> Cc: \n> Assunto: FW: Email do Sugar CE\n> \n Exmo.(a). Sr.(a). ,\n&nbsp;\nEmail enviado pelo Email do sugar CE656&nbsp;\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central\n\nExmo.(a). Sr.(a). ,\n&nbsp;\n&nbsp;\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central\n\n','\r\n<div><hr /></div>\r\n<p>send email to mail@cross.pt.</p>\r\n<p><br />André</p>\r\n<p> </p>\r\n<p>> De: André Pinto <crosscrm@cross.pt><br />> Data de Envio: 12/11/2012 06:11pm<br />> Para: cross@cross.pt<br />> Cc: <br />> Assunto: FW: Email do Sugar CE<br />> <br /> Exmo.(a). Sr.(a). ,</p>\r\n<p> </p>\r\n<p>Email enviado pelo Email do sugar CE656 </p>\r\n<p> </p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p> </p>\r\n<p>Cross Informática</p>\r\n<p>Informação de Sistema Central</p>\r\n<br class=\"signature-begin\" /><p>Exmo.(a). Sr.(a). ,</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p> </p>\r\n<p>Cross Informática</p>\r\n<p>Informação de Sistema Central</p>\r\n',NULL,0),('44cbf0f0-a918-445d-cfd9-51c314082afd','André Pinto <crosscrm@cross.pt>','','mail@cross.pt','','','&nbsp;\nExmo.(a). Sr.(a). ,\n&nbsp;\n&nbsp;\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central\n&nbsp;','<p> </p>\r\n<p>Exmo.(a). Sr.(a). ,</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p> </p>\r\n<p>Cross Informática</p>\r\n<p>Informação de Sistema Central</p>\r\n<p> </p>',NULL,0),('52784503-61d6-bfe9-6848-50a295865931','André Pinto <crosscrm@cross.pt>','','gabinetes@cross.pt','mail@cross.pt','','\n\n\n\n\nExmo(a). Sr.(a).   ,\nAgora que est&aacute; na 34&ordf; renda, deseja renovar o contrato ?\nCumprimentos,\nAndr&eacute;\n\n','\r\n<p>Exmo(a). Sr.(a).   ,</p>\r\n<p>Agora que está na 34ª renda, deseja renovar o contrato ?</p>\r\n<p>Cumprimentos,</p>\r\n<p>André</p>\r\n',NULL,0),('6c07fda3-d720-1c67-0e49-51e6b06c3cc9','André Pinto <crosscrm@cross.pt>','','marketing@cross.pt','','','\n\n\n\n\nRoiferro\n\n\nExmo.(a). Sr.(a). ,\n\n \n\n \n\n \n\nCom os melhores cumprimentos,\n\n \n\nCross Informática\n\nInformação de Sistema Central\n\n\n','',NULL,0),('b0d08567-579a-05c9-7bc0-50b4e0885aef','André Pinto <crosscrm@cross.pt>','','Roiferro <marketing@cross.pt>, André Pinto <mail@cross.pt>','','','\n\n\n\n\nExmo.(a). Sr.(a). ,\n&nbsp;\n\nNão Contactado\n&nbsp;\nRoiferro\n&nbsp;\n214262292\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central\n\n','\r\n<p>Exmo.(a). Sr.(a). ,</p>\r\n<p> </p>\r\n<p><br />Não Contactado</p>\r\n<p> </p>\r\n<p>Roiferro</p>\r\n<p> </p>\r\n<p>214262292</p>\r\n<p> </p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p> </p>\r\n<p>Cross Informática</p>\r\n<p>Informação de Sistema Central</p>\r\n',NULL,0),('b1d6adde-b850-7d86-d8c0-50a13be48fa4','André Pinto <crosscrm@cross.pt>','','cross@cross.pt','','','\n\n\n\n\nExmo.(a). Sr.(a). ,\n\n&nbsp;\nEmail enviado pelo Email do sugar CE656&nbsp;\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central\n\n','\r\nExmo.(a). Sr.(a). ,<br /><p> </p>\r\n<p>Email enviado pelo Email do sugar CE656 </p>\r\n<p> </p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p> </p>\r\n<p>Cross Informática</p>\r\n<p>Informação de Sistema Central</p>\r\n',NULL,0),('e729f041-7a79-f1b1-b93e-50a4d346fb43','André Pinto <crosscrm@cross.pt>','','mail@cross.pt, cross@cross.pt','','','\n\n\n\n\n\nExmo.(a). Sr.(a). ,\n&nbsp;\n&nbsp;teste do CRM cross\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central\n\n','\r\n<br class=\"signature-begin\" /><p>Exmo.(a). Sr.(a). ,</p>\r\n<p> </p>\r\n<p> teste do CRM cross</p>\r\n<p> </p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p> </p>\r\n<p>Cross Informática</p>\r\n<p>Informação de Sistema Central</p>\r\n',NULL,0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2013-12-29 18:10:56',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2013-12-29 18:10:56',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES ('603aadf4-b59c-dacd-6d1c-50891a5eaa4a','A Minha Caixa de Entrada','inbound','',1,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')','','1','1',0),('9158e580-527a-b321-fab2-50891a439654','Os Meus Rascunhos','draft','603aadf4-b59c-dacd-6d1c-50891a5eaa4a',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1','1',0),('c229aac6-8305-8249-7a15-50891acb57c0','E-mails Enviados','sent','603aadf4-b59c-dacd-6d1c-50891a5eaa4a',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1','1',0),('ed9c948f-1e57-f219-0b5b-50a3ba9755e3','Pasta de Entrada','','603aadf4-b59c-dacd-6d1c-50891a5eaa4a',0,0,0,'','','1','1',1),('f2fad073-b446-6058-9b1f-50891a7e0981','Os Meus E-mails Arquivado','archived','603aadf4-b59c-dacd-6d1c-50891a5eaa4a',0,0,1,'','','1','1',0);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
INSERT INTO `folders_subscriptions` VALUES ('60513dfe-c549-6bac-c0d6-50891a7a24ce','603aadf4-b59c-dacd-6d1c-50891a5eaa4a','1'),('91626239-1fbf-78e3-0fb9-50891adb9d4f','9158e580-527a-b321-fab2-50891a439654','1'),('c2330024-c89e-cd62-762d-50891a2842fc','c229aac6-8305-8249-7a15-50891acb57c0','1'),('f30452d9-0d12-7558-8ec6-50891a91d7d6','f2fad073-b446-6058-9b1f-50891a7e0981','1');
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
INSERT INTO `import_maps` VALUES ('272c0982-3137-cd97-9627-508fb6feb9ca','Contratos CROSS','csv','\"',',','Prospects','ncontrato=last_name&software=bem_servico_c&actualizacao_anual_c=act_anual_c&agencia_deb_directo_c=agencia_c&banco_deb_directo_c=banco_c&codpostal_instalacao_c=cod_postal_c&data_primeira_prestacao_c=primeira_prestacao_c&data_ultima_prestacao_c=ultima_prestacao_c&dia_prestacao_c=dia_prestacao_c&email_pessoa_contacto_c=email_c&entidade_fornecedora_c=entidade_fornecedora_c&extenso_valor_c=extenso_c&fax_pessoa_contacto_c=fax_c&funcao_pessoa_contacto_c=funcao_c&mensalidade_sem_iva_c=mensalidade_c&morada_instalacao_c=morada_instalacao_c&n_contrib_c=nipc_c&nib_debito_directo_c=nib_c&nome_dois_c=nome_2_c&nome_tres_c=nome_3_c&nome_um_c=nome_1_c&num_deb_directo_c=n_deb_directo_c&numero_prestacoes_c=n_prestacoes_c&periodicidade_c=periodicidade_c&pessoa_contacto_c=pessoa_contacto_c&qualidade_dois_c=qualidade_2_c&qualidade_tres_c=qualidade_3_c&qualidade_um_c=qualidade_1_c&referencia_contrato_c=n_ref_contrato_c&referencia_deb_directo_c=ref_deb_directo_c&telefone_pessoa_contacto_c=telefone_c&telemovel_pessoa_contacto_c=telemovel_c&modified_by_name=modified_by_name&assigned_user_name=assigned_user_name&cliente=den_social_c&modified_user_name=assigned_user_id&modified_user_name_owner=assigned_user_id&modified_user_name_mod=assigned_user_id&importlocale_charset=UTF-8&importlocale_dateformat=Y-m-d&importlocale_timeformat=H:i&importlocale_timezone=UTC&importlocale_currency=-99&importlocale_default_currency_significant_digits=2&importlocale_num_grp_sep=,&importlocale_dec_sep=.&importlocale_default_locale_name_format=f l','entidade_fornecedora_c=cross&n_prestacoes_c=36&periodicidade_c=a&assigned_user_name=André Pinto&assigned_user_id=1',1,0,'2012-10-30 11:14:17','2012-10-30 11:14:17','1','yes');
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
INSERT INTO `inbound_email` VALUES ('99294ed5-feb4-a7f4-f268-50a4d019090e',1,'2012-11-15 11:22:23','2012-11-15 11:30:21','1','1','SugarCRM','Active','mail.cross.pt','crosscrm@cross.pt','',143,'::::::imap::::','INBOX',0,'bounce',NULL,'YToxMTp7czo5OiJmcm9tX25hbWUiO3M6ODoiU3VnYXJDUk0iO3M6OToiZnJvbV9hZGRyIjtzOjE3OiJjcm9zc2NybUBjcm9zcy5wdCI7czoxMzoicmVwbHlfdG9fbmFtZSI7czowOiIiO3M6MTM6InJlcGx5X3RvX2FkZHIiO3M6MDoiIjtzOjEwOiJvbmx5X3NpbmNlIjtiOjE7czoxMzoiZmlsdGVyX2RvbWFpbiI7TjtzOjMwOiJlbWFpbF9udW1fYXV0b3JlcGxpZXNfMjRfaG91cnMiO047czoyNjoiYWxsb3dfb3V0Ym91bmRfZ3JvdXBfdXNhZ2UiO2I6MDtzOjExOiJ0cmFzaEZvbGRlciI7czowOiIiO3M6MTA6InNlbnRGb2xkZXIiO3M6MDoiIjtzOjEyOiJpc0F1dG9JbXBvcnQiO2I6MDt9','98a50566-b82e-02b5-a8fa-50a4d0a0a72d',0,'');
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
INSERT INTO `jjwg_maps` VALUES ('358fe75c-6042-6666-c12c-52c07d57324b','Mapa_Teste','2013-12-29 19:53:39','2013-12-29 19:53:39','1','1','',0,'1',200.0000,'km','Accounts','Accounts','a7f9517a-27f2-10e5-c246-52c07dc7ed9d');
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
INSERT INTO `job_queue` VALUES ('1','107fced2-a86c-7160-0afb-50af4c83ab3f','Check Inbound Mailboxes',0,'2012-11-23 10:15:45','2012-11-23 10:15:45','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7228',NULL),('1','110b3c4e-bd1f-1b46-a891-50af651a853a','Run Email Reminder Notifications',0,'2012-11-23 12:00:52','2012-11-23 12:00:52','1036024b-a25e-0e17-2784-5084175c123f','2012-11-23 12:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7240',NULL),('1','12e91eea-171b-aa96-9757-50af4f29aa8a','Check Inbound Mailboxes',0,'2012-11-23 10:25:46','2012-11-23 10:25:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7200',NULL),('1','13938ac1-3c21-ffb8-c956-50af5e9ad99e','Check Inbound Mailboxes',0,'2012-11-23 11:30:50','2012-11-23 11:30:50','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7264',NULL),('1','15300ca1-2975-a333-3ef7-50a67a45fdc4','Check Inbound Mailboxes',0,'2012-11-16 17:40:30','2012-11-16 17:40:30','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8000',NULL),('1','15a1cd72-51f8-dac5-3f4d-50af50ea6b08','Check Inbound Mailboxes',0,'2012-11-23 10:30:46','2012-11-23 10:30:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7604',NULL),('1','16671a63-7b2e-7fa1-0535-50a6837bb6d9','Check Inbound Mailboxes',0,'2012-11-16 18:20:33','2012-11-16 18:20:33','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7220',NULL),('1','1829ffef-4535-47a1-e109-50a3d9eb32dc','Check Inbound Mailboxes',0,'2012-11-14 17:50:53','2012-11-14 17:50:53','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-14 17:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8340',NULL),('1','19795b00-c7c1-b276-bd9f-50af78bb9f6c','Check Inbound Mailboxes',0,'2012-11-23 13:20:59','2012-11-23 13:20:59','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7872',NULL),('1','19d3af0a-1a54-513e-4622-50a68d96c405','Run Email Reminder Notifications',0,'2012-11-16 19:00:39','2012-11-16 19:00:39','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 19:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7892',NULL),('1','1a08a0ea-6384-7c6e-7377-50a4d405d785','Check Inbound Mailboxes',0,'2012-11-15 11:40:17','2012-11-15 11:40:17','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7236',NULL),('1','1a308755-a3a6-910c-5729-50a686daee05','Check Inbound Mailboxes',0,'2012-11-16 18:30:34','2012-11-16 18:30:34','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3316',NULL),('1','1a68519d-e583-7d1e-3f7d-50a688774142','Check Inbound Mailboxes',0,'2012-11-16 18:40:36','2012-11-16 18:40:36','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6368',NULL),('1','1a85564f-e482-c8dd-a5be-50af7331b4dd','Run Email Reminder Notifications',0,'2012-11-23 13:00:56','2012-11-23 13:00:56','1036024b-a25e-0e17-2784-5084175c123f','2012-11-23 13:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7444',NULL),('1','1b825905-1d7e-9690-f55a-50af58c12f65','Check Inbound Mailboxes',0,'2012-11-23 11:05:47','2012-11-23 11:05:47','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8032',NULL),('1','1beba49b-ba93-d37e-aa4e-50af525602e1','Check Inbound Mailboxes',0,'2012-11-23 10:40:46','2012-11-23 10:40:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7840',NULL),('1','1c770be0-8f46-47a7-388e-50af515fab24','Check Inbound Mailboxes',0,'2012-11-23 10:35:46','2012-11-23 10:35:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:716',NULL),('1','1cd8f505-fbd6-2988-d174-50af5a49f984','Check Inbound Mailboxes',0,'2012-11-23 11:15:48','2012-11-23 11:15:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6152',NULL),('1','1d300218-ccbe-3c07-46ae-50a67cccf063','Check Inbound Mailboxes',0,'2012-11-16 17:50:31','2012-11-16 17:50:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6580',NULL),('1','1dd47551-c5c0-7e08-4168-50a68edc8cad','Check Inbound Mailboxes',0,'2012-11-16 19:05:40','2012-11-16 19:05:40','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 19:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7688',NULL),('1','1df503b1-ca82-1ae5-f66c-50a67f091a70','Check Inbound Mailboxes',0,'2012-11-16 18:00:31','2012-11-16 18:00:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7972',NULL),('1','1e11d870-28a2-51af-5d94-50af4db68416','Check Inbound Mailboxes',0,'2012-11-23 10:20:46','2012-11-23 10:20:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7236',NULL),('1','1ee25cf8-385a-2c7c-3e40-50af60e8f70a','Check Inbound Mailboxes',0,'2012-11-23 11:40:51','2012-11-23 11:40:51','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6176',NULL),('1','1fd6d543-a2b6-e10a-a23e-50a68a927bd3','Check Inbound Mailboxes',0,'2012-11-16 18:50:38','2012-11-16 18:50:38','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:816',NULL),('1','1fd7a373-1dab-bb18-c456-50af53ab5a7f','Check Inbound Mailboxes',0,'2012-11-23 10:45:46','2012-11-23 10:45:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7632',NULL),('1','2057133a-fef0-5fe1-dcff-50af5c5c5142','Check Inbound Mailboxes',0,'2012-11-23 11:20:48','2012-11-23 11:20:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7520',NULL),('1','209eb180-23ad-ea0b-82b3-50a681bf28b7','Check Inbound Mailboxes',0,'2012-11-16 18:10:33','2012-11-16 18:10:33','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6776',NULL),('1','21e05b9c-365f-40a4-adb7-50af61ba2f77','Check Inbound Mailboxes',0,'2012-11-23 11:45:51','2012-11-23 11:45:51','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7736',NULL),('1','2293ed62-a672-d7b1-03e6-50af751e9497','Check Inbound Mailboxes',0,'2012-11-23 13:10:57','2012-11-23 13:10:57','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7740',NULL),('1','23015f47-6443-2a4a-20cd-50af90a6b68b','Check Inbound Mailboxes',0,'2012-11-23 15:06:08','2012-11-23 15:06:08','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:06:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7984',NULL),('1','23240322-119b-18c9-edcb-50a6717f513d','Check Inbound Mailboxes',0,'2012-11-16 17:00:25','2012-11-16 17:00:25','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','232f46ca-6890-c165-649d-50a68c48d945','Check Inbound Mailboxes',0,'2012-11-16 18:55:38','2012-11-16 18:55:38','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8140',NULL),('1','2331f18d-32e9-32b7-7bbf-50af637cd5ff','Check Inbound Mailboxes',0,'2012-11-23 11:50:51','2012-11-23 11:50:51','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8044',NULL),('1','233f5e50-6724-9a63-512d-50af6ef22f8d','Check Inbound Mailboxes',0,'2012-11-23 12:40:55','2012-11-23 12:40:55','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6828',NULL),('1','23d737aa-4987-afdc-2c1d-50af85493456','Check Inbound Mailboxes',0,'2012-11-23 14:16:03','2012-11-23 14:16:03','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:16:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5332',NULL),('1','2415e36f-d601-7759-1f92-50af684bc152','Check Inbound Mailboxes',0,'2012-11-23 12:15:53','2012-11-23 12:15:53','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4868',NULL),('1','247af16e-0b27-85ea-73ec-50b4f177405e','Run Email Reminder Notifications',0,'2012-11-27 17:00:32','2012-11-27 17:00:32','1036024b-a25e-0e17-2784-5084175c123f','2012-11-27 17:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','24a5b456-7b84-3ee9-461a-50af726c4e22','Check Inbound Mailboxes',0,'2012-11-23 12:55:56','2012-11-23 12:55:56','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5992',NULL),('1','2543ac8b-d3d9-a88e-4767-50af669ba837','Check Inbound Mailboxes',0,'2012-11-23 12:05:52','2012-11-23 12:05:52','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5880',NULL),('1','255a95e5-06ce-82bd-acba-50af55b501a0','Check Inbound Mailboxes',0,'2012-11-23 10:50:46','2012-11-23 10:50:46','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6168',NULL),('1','25c5532a-0230-971e-8b53-50af6a01dc96','Check Inbound Mailboxes',0,'2012-11-23 12:20:53','2012-11-23 12:20:53','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6296',NULL),('1','26754eeb-d573-3ec6-4010-50af704fd927','Check Inbound Mailboxes',0,'2012-11-23 12:45:55','2012-11-23 12:45:55','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7944',NULL),('1','26bb37fa-acb7-afb6-fad1-50af8fe46462','Check Inbound Mailboxes',0,'2012-11-23 15:01:07','2012-11-23 15:01:07','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:01:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7568',NULL),('1','27a373c4-d2f0-f441-a6e0-50af6ce6dd68','Check Inbound Mailboxes',0,'2012-11-23 12:30:54','2012-11-23 12:30:54','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6716',NULL),('1','27e66e3a-0420-5fb2-bbff-50af71dbd61d','Check Inbound Mailboxes',0,'2012-11-23 12:50:55','2012-11-23 12:50:55','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4080',NULL),('1','285421f4-015b-ccbb-4e3b-50af7c4cea0c','Check Inbound Mailboxes',0,'2012-11-23 13:41:00','2012-11-23 13:41:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:41:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2924',NULL),('1','29ee8aea-63f4-559a-a172-50af5f6c9fd8','Check Inbound Mailboxes',0,'2012-11-23 11:35:51','2012-11-23 11:35:51','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3332',NULL),('1','2a52bdd1-0e29-2f91-49c0-50af6d3eadff','Check Inbound Mailboxes',0,'2012-11-23 12:35:54','2012-11-23 12:35:54','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7468',NULL),('1','2a916435-4286-769c-5e61-50a4cc12549e','Check Inbound Mailboxes',0,'2012-11-15 11:03:28','2012-11-15 11:03:28','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:03:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3400',NULL),('1','2aa8e876-507a-0eb6-b9b5-50af7eac13a3','Check Inbound Mailboxes',0,'2012-11-23 13:46:00','2012-11-23 13:46:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:46:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5880',NULL),('1','2afcc7cc-c19d-c581-f9f9-50af742c1e90','Check Inbound Mailboxes',0,'2012-11-23 13:05:56','2012-11-23 13:05:56','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5932',NULL),('1','2bba2110-8305-7d1f-6693-50af80869b44','Check Inbound Mailboxes',0,'2012-11-23 13:56:01','2012-11-23 13:56:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:56:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5764',NULL),('1','2d47e07a-aa05-bdba-b617-50af9b6520cc','Check Inbound Mailboxes',0,'2012-11-23 15:51:12','2012-11-23 15:51:12','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:51:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4024',NULL),('1','2d74a459-a007-181f-fd59-50af797b7aa0','Check Inbound Mailboxes',0,'2012-11-23 13:25:59','2012-11-23 13:25:59','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5848',NULL),('1','2d77b17a-3d42-91d0-93c6-50af872cfed7','Check Inbound Mailboxes',0,'2012-11-23 14:26:04','2012-11-23 14:26:04','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:26:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6324',NULL),('1','2e65b62b-af33-235b-2531-50af9922dd6c','Check Inbound Mailboxes',0,'2012-11-23 15:41:10','2012-11-23 15:41:10','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:41:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7852',NULL),('1','2e714620-f6f6-f444-ccbe-50aa4c3daf90','Run Nightly Process Bounced Campaign Emails',0,'2012-11-19 15:12:22','2012-11-19 15:12:22','bee74e47-6e16-0c86-b608-508417779afa','2012-11-19 15:12:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3828',NULL),('1','2e9a5b93-00c8-6738-de4f-50af7f74b7b2','Check Inbound Mailboxes',0,'2012-11-23 13:51:00','2012-11-23 13:51:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:51:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6260',NULL),('1','2e9af0fe-6b86-4e9b-9ec0-50a6859c1d41','Check Inbound Mailboxes',0,'2012-11-16 18:25:34','2012-11-16 18:25:34','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7736',NULL),('1','2f4196ed-ef0a-c630-75bf-50af7b2f79c8','Check Inbound Mailboxes',0,'2012-11-23 13:35:59','2012-11-23 13:35:59','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5976',NULL),('1','2fa5999c-7d77-0f72-5549-50af8cc0c5da','Check Inbound Mailboxes',0,'2012-11-23 14:46:05','2012-11-23 14:46:05','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:46:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4084',NULL),('1','2fcc219f-a63c-23ac-8510-50af7a52fd20','Check Inbound Mailboxes',0,'2012-11-23 13:30:59','2012-11-23 13:30:59','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7784',NULL),('1','30647a10-7145-f073-b447-50a4ca468cc6','Run Nightly Mass Email Campaigns',0,'2012-11-15 10:58:27','2012-11-15 10:58:27','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-15 10:58:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7436',NULL),('1','3071ec99-9574-a1bb-a86d-50af88fa8ba3','Check Inbound Mailboxes',0,'2012-11-23 14:31:04','2012-11-23 14:31:04','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:31:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7220',NULL),('1','308bc16a-75d3-c992-3956-50a6872ab1f7','Check Inbound Mailboxes',0,'2012-11-16 18:35:35','2012-11-16 18:35:35','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7208',NULL),('1','31395a80-5073-3ce1-eede-50b4f2e2695c','Check Inbound Mailboxes',0,'2012-11-27 17:04:43','2012-11-27 17:04:43','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:04:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7640',NULL),('1','3176c9bc-63e7-ff2e-7f14-50af567db6c0','Check Inbound Mailboxes',0,'2012-11-23 10:55:47','2012-11-23 10:55:47','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5352',NULL),('1','31ae882d-9cd9-aaa6-0d48-50af818affed','Check Inbound Mailboxes',0,'2012-11-23 14:01:01','2012-11-23 14:01:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:01:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7988',NULL),('1','320e0624-91af-1c0f-2e66-50a673c0b67c','Check Inbound Mailboxes',0,'2012-11-16 17:10:27','2012-11-16 17:10:27','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6596',NULL),('1','329146e5-649f-72e9-4594-50af5d494f04','Check Inbound Mailboxes',0,'2012-11-23 11:25:49','2012-11-23 11:25:49','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4140',NULL),('1','33422d2e-cf4d-35dc-58a5-50af57d2b700','Check Inbound Mailboxes',0,'2012-11-23 11:00:47','2012-11-23 11:00:47','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7844',NULL),('1','336df02b-2040-1aa2-790e-50af8dcf6ff7','Check Inbound Mailboxes',0,'2012-11-23 14:51:05','2012-11-23 14:51:05','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:51:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7216',NULL),('1','337c2f7d-5af2-4bfa-40fb-50af95ae91bc','Check Inbound Mailboxes',0,'2012-11-23 15:26:09','2012-11-23 15:26:09','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:26:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7464',NULL),('1','347fed13-7c21-3e47-d6de-50af82738dcc','Check Inbound Mailboxes',0,'2012-11-23 14:06:01','2012-11-23 14:06:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:06:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6348',NULL),('1','3494706d-1d71-89f8-3118-50af8932dad7','Check Inbound Mailboxes',0,'2012-11-23 14:36:04','2012-11-23 14:36:04','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:36:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7900',NULL),('1','35029b80-aaed-b506-27bc-50af92304d0b','Check Inbound Mailboxes',0,'2012-11-23 15:11:08','2012-11-23 15:11:08','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:11:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6168',NULL),('1','36911b2f-52df-e3d0-d515-50af93870db2','Check Inbound Mailboxes',0,'2012-11-23 15:16:08','2012-11-23 15:16:08','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:16:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5488',NULL),('1','36c2c663-3336-6d22-517a-50af9663a102','Check Inbound Mailboxes',0,'2012-11-23 15:31:09','2012-11-23 15:31:09','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:31:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6232',NULL),('1','37ab9966-be85-230d-0aa0-50af9cf9c023','Check Inbound Mailboxes',0,'2012-11-23 15:56:12','2012-11-23 15:56:12','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:56:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7432',NULL),('1','37ceae4a-d15d-42d9-26e9-50af65531e44','Check Inbound Mailboxes',0,'2012-11-23 12:00:52','2012-11-23 12:00:52','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7240',NULL),('1','38617e1c-728f-9123-aedf-50af594573d9','Check Inbound Mailboxes',0,'2012-11-23 11:10:48','2012-11-23 11:10:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5680',NULL),('1','387ffb0e-3463-1081-304f-50a689904abc','Check Inbound Mailboxes',0,'2012-11-16 18:45:38','2012-11-16 18:45:38','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4844',NULL),('1','38b8514c-7c23-37c6-e593-50af776a5d55','Check Inbound Mailboxes',0,'2012-11-23 13:15:58','2012-11-23 13:15:58','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7496',NULL),('1','3a14b663-5968-a4ea-6610-50af8628b637','Check Inbound Mailboxes',0,'2012-11-23 14:21:05','2012-11-23 14:21:05','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:21:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7896',NULL),('1','3a26dee1-909b-7d7f-6b26-50af94da4fee','Check Inbound Mailboxes',0,'2012-11-23 15:21:09','2012-11-23 15:21:09','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:21:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3300',NULL),('1','3a5ff72f-e0ff-3dcb-4594-50af976735d2','Check Inbound Mailboxes',0,'2012-11-23 15:36:10','2012-11-23 15:36:10','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:36:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7992',NULL),('1','3aa64b50-a99b-3dd6-91ed-50b34319f54c','Check Inbound Mailboxes',0,'2012-11-26 10:26:42','2012-11-26 10:26:42','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-26 10:26:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7076',NULL),('1','3c123bbb-2774-0fb7-d200-50a4cda8ee83','Check Inbound Mailboxes',0,'2012-11-15 11:08:29','2012-11-15 11:08:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:08:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8048',NULL),('1','3d5a464c-43a4-93b3-1b64-50af9d966d7a','Check Inbound Mailboxes',0,'2012-11-23 16:01:13','2012-11-23 16:01:13','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:01:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5848',NULL),('1','3db3ab20-32e8-cbb2-bc6f-50a4d1dc8d3b','Check Inbound Mailboxes',0,'2012-11-15 11:28:31','2012-11-15 11:28:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:28:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2388',NULL),('1','3dd96b0a-2dc0-8c49-5a7a-50a4cea54717','Check Inbound Mailboxes',0,'2012-11-15 11:13:29','2012-11-15 11:13:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:13:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8184',NULL),('1','3e0b3745-e11f-2156-b37e-50a68df9bc70','Check Inbound Mailboxes',0,'2012-11-16 19:00:39','2012-11-16 19:00:39','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 19:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7892',NULL),('1','3e22e8b5-0452-3ac0-fe71-50af6b53e6f8','Check Inbound Mailboxes',0,'2012-11-23 12:25:55','2012-11-23 12:25:55','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:1760',NULL),('1','4062ec2d-9f0b-c71b-652b-50a4d361af40','Check Inbound Mailboxes',0,'2012-11-15 11:33:31','2012-11-15 11:33:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:33:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4196',NULL),('1','40b285dd-71db-ade0-4b8b-50a4cf9f4080','Check Inbound Mailboxes',0,'2012-11-15 11:18:29','2012-11-15 11:18:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:18:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3252',NULL),('1','411f5b36-83d6-eec5-ce27-50afa4a1d5eb','Check Inbound Mailboxes',0,'2012-11-23 16:31:14','2012-11-23 16:31:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:31:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4476',NULL),('1','415f6852-9fc9-0679-3d7c-50af9eb88052','Check Inbound Mailboxes',0,'2012-11-23 16:06:13','2012-11-23 16:06:13','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:06:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7272',NULL),('1','41bc8dc6-e7a4-ef9d-00ff-50a4d41f23ca','Check Inbound Mailboxes',0,'2012-11-15 11:38:31','2012-11-15 11:38:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:38:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6808',NULL),('1','41d50910-43e7-28b6-38aa-50a67b663de5','Check Inbound Mailboxes',0,'2012-11-16 17:45:30','2012-11-16 17:45:30','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:404',NULL),('1','4206ec47-5d66-3574-23f5-50af67757666','Check Inbound Mailboxes',0,'2012-11-23 12:10:54','2012-11-23 12:10:54','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 12:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2764',NULL),('1','425edee3-cd60-3008-68f6-50af83400d9b','Check Inbound Mailboxes',0,'2012-11-23 14:11:03','2012-11-23 14:11:03','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:11:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:768',NULL),('1','42af1dfa-f633-ace3-0c12-50afa0d916c3','Check Inbound Mailboxes',0,'2012-11-23 16:11:13','2012-11-23 16:11:13','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:11:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3400',NULL),('1','43f1ac89-90f0-9ae6-662f-50aa4c88ed79','Run Nightly Mass Email Campaigns',0,'2012-11-19 15:12:22','2012-11-19 15:12:22','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-19 15:12:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3828',NULL),('1','441200ba-7bec-329c-f9b5-50afa1766cb9','Check Inbound Mailboxes',0,'2012-11-23 16:16:13','2012-11-23 16:16:13','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:16:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6504',NULL),('1','4517047c-6a31-5a37-92d7-50a67ec4684f','Check Inbound Mailboxes',0,'2012-11-16 17:55:31','2012-11-16 17:55:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5616',NULL),('1','454f0277-c2ff-d1ec-5d54-50af64a71681','Check Inbound Mailboxes',0,'2012-11-23 11:55:53','2012-11-23 11:55:53','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 11:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5756',NULL),('1','473ae481-ccf2-1b8b-b129-50af9a5beda4','Check Inbound Mailboxes',0,'2012-11-23 15:46:12','2012-11-23 15:46:12','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 15:46:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7320',NULL),('1','47ac8d6c-c88d-c6bd-15c3-50afa2fa009e','Check Inbound Mailboxes',0,'2012-11-23 16:21:13','2012-11-23 16:21:13','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:21:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8036',NULL),('1','482344ad-fcce-5d23-8c13-50af8eb2b328','Check Inbound Mailboxes',0,'2012-11-23 14:56:07','2012-11-23 14:56:07','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:56:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6216',NULL),('1','48fff0ba-0562-9646-1bf9-50af8ba78886','Check Inbound Mailboxes',0,'2012-11-23 14:41:06','2012-11-23 14:41:06','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 14:41:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7960',NULL),('1','4cddb2e9-3fb5-252f-08af-50af737585fa','Check Inbound Mailboxes',0,'2012-11-23 13:00:56','2012-11-23 13:00:56','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 13:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7444',NULL),('1','4cf306fa-8d8e-de17-d123-50aa4c0d3bcb','Check Inbound Mailboxes',0,'2012-11-19 15:12:22','2012-11-19 15:12:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:12:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3828',NULL),('1','51f77434-be90-2a07-d587-50b4f100c50b','Ver contas não contactadas',0,'2012-11-27 17:00:32','2012-11-27 17:00:32','9f11400a-e7d8-3a2c-ad7f-50b4dd2be375','2012-11-27 17:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','54c92691-9f58-0d53-b02f-50afa372e4cf','Check Inbound Mailboxes',0,'2012-11-23 16:26:14','2012-11-23 16:26:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 16:26:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7012',NULL),('1','5894b566-0b81-9071-8a5b-50a4d043b649','Check Inbound Mailboxes',0,'2012-11-15 11:23:30','2012-11-15 11:23:30','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:23:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8132',NULL),('1','5aa0ffe1-e50b-f545-fca1-50a62d9b2af7','Check Inbound Mailboxes',0,'2012-11-16 12:09:59','2012-11-16 12:09:59','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:09:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8132',NULL),('1','5c501955-c1d0-e0d7-f6aa-50aa67f9bd1a','Abrir site',0,'2012-11-19 17:07:32','2012-11-27 12:18:31','','2012-11-19 17:07:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:1052',NULL),('1','5d65d358-39ac-74ca-42d3-50a62a9ca4aa','Check Inbound Mailboxes',0,'2012-11-16 11:59:57','2012-11-16 11:59:57','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 11:59:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7376',NULL),('1','66410797-74c6-ccda-ad6c-50a6633eee34','Check Inbound Mailboxes',0,'2012-11-16 16:00:16','2012-11-16 16:00:16','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7472',NULL),('1','6662ec76-a53c-c9aa-864b-50a62fd80ac4','Check Inbound Mailboxes',0,'2012-11-16 12:20:00','2012-11-16 12:20:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7968',NULL),('1','677e36d3-bea7-b99d-1af8-50a632b5a387','Check Inbound Mailboxes',0,'2012-11-16 12:35:01','2012-11-16 12:35:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8068',NULL),('1','68a780ee-12ef-c0b3-eccc-50a634f9f3fc','Check Inbound Mailboxes',0,'2012-11-16 12:40:01','2012-11-16 12:40:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5272',NULL),('1','69205fe3-d572-3661-b248-50b8c3cc6052','teste',0,'2012-11-30 14:30:48','2012-11-30 14:30:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:30:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:4236',NULL),('1','6937161f-124a-f6a1-ac52-50b4ff7e5fd3','teste',0,'2012-11-27 18:00:48','2012-11-27 18:00:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:00:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7740',NULL),('1','6ae6f6c5-c22c-919c-ea29-50b503be85f3','teste',0,'2012-11-27 18:15:48','2012-11-27 18:15:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:15:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6272',NULL),('1','6b84a71a-a62e-3552-018e-50b8c682f6cb','teste',0,'2012-11-30 14:45:48','2012-11-30 14:45:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:45:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6348',NULL),('1','6c4a9493-ad5d-df42-2e79-50b5052c0606','teste',0,'2012-11-27 18:25:48','2012-11-27 18:25:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:25:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7076',NULL),('1','6c4bf50f-1bb3-abde-d4b7-50b4f85b7c12','teste',0,'2012-11-27 17:30:48','2012-11-27 17:30:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:30:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:3772',NULL),('1','6cb99b23-bcd1-f88a-5eba-50b4f50677a8','teste',0,'2012-11-27 17:15:48','2012-11-27 17:15:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:15:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5896',NULL),('1','6ccb8a4b-a480-580a-5d31-50aa5a28383d','Check Inbound Mailboxes',0,'2012-11-19 16:12:24','2012-11-19 16:12:24','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:12:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6504',NULL),('1','6ccbba17-7b3b-6c44-9ba3-50b4fb28b150','teste',0,'2012-11-27 17:40:48','2012-11-27 17:40:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:40:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6232',NULL),('1','6dc93664-ab15-d794-d416-50a630666ec7','Check Inbound Mailboxes',0,'2012-11-16 12:25:00','2012-11-16 12:25:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4588',NULL),('1','6e369ad1-fe0b-441d-9d7d-50b8cd4e0cb6','teste',0,'2012-11-30 15:15:48','2012-11-30 15:15:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 15:15:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6516',NULL),('1','6e58e9ef-226d-dd75-2591-50b4f9c895f0','teste',0,'2012-11-27 17:35:48','2012-11-27 17:35:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:35:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6648',NULL),('1','6ed94f37-9148-ea1b-c82a-50aa74acb9cf','Check Inbound Mailboxes',0,'2012-11-19 18:02:41','2012-11-19 18:02:41','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 18:02:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7268',NULL),('1','6ee182ff-358a-5932-bbb3-50aa6934f088','Check Inbound Mailboxes',0,'2012-11-19 17:17:34','2012-11-19 17:17:34','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:17:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:984',NULL),('1','6eef2e57-ba18-2dcf-a6a3-50b504a8cbda','teste',0,'2012-11-27 18:20:48','2012-11-27 18:20:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:20:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7300',NULL),('1','6f834357-87fa-fd3f-d3a1-50b8c51ae1d2','teste',0,'2012-11-30 14:40:48','2012-11-30 14:40:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:40:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7388',NULL),('1','70afc6a1-7a11-9f39-5a63-50b50d02f01c','teste',0,'2012-11-27 19:00:48','2012-11-27 19:00:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 19:00:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:8088',NULL),('1','70f1f499-1173-1782-8477-50aa73bcde47','Check Inbound Mailboxes',0,'2012-11-19 17:57:40','2012-11-19 17:57:40','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:57:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7760',NULL),('1','711ccbba-6f23-8260-aee3-50b50a113b01','teste',0,'2012-11-27 18:45:48','2012-11-27 18:45:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:45:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:2844',NULL),('1','71baa6e6-8d25-9397-4c5e-50b8c12104e2','teste',0,'2012-11-30 14:25:48','2012-11-30 14:25:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:25:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6436',NULL),('1','71decae9-4f4f-7e60-1577-50aa714f8924','Check Inbound Mailboxes',0,'2012-11-19 17:52:39','2012-11-19 17:52:39','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:52:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4024',NULL),('1','727de32d-7f25-1e8b-904e-50a4e0c5ef3b','Check Inbound Mailboxes',0,'2012-11-15 12:29:43','2012-11-15 12:29:43','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 12:29:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6012',NULL),('1','72c694e3-3a25-68d0-f1ee-50b4f1363e62','Check Inbound Mailboxes',0,'2012-11-27 17:00:32','2012-11-27 17:00:32','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','72d44ad0-2f93-dfaf-c50d-50b50f16ef4e','teste',0,'2012-11-27 19:05:48','2012-11-27 19:05:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 19:05:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:8228',NULL),('1','73305ccd-fa58-f2b9-a698-50aa5bb72398','Check Inbound Mailboxes',0,'2012-11-19 16:17:24','2012-11-19 16:17:24','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:17:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2800',NULL),('1','734ab708-c72c-2571-a0bc-50b4fc20407a','teste',0,'2012-11-27 17:45:48','2012-11-27 17:45:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:45:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:3332',NULL),('1','738de3fa-95c9-bcad-a124-50a6310c1fa0','Check Inbound Mailboxes',0,'2012-11-16 12:30:00','2012-11-16 12:30:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6376',NULL),('1','73f2bcc4-cf76-e196-0d0a-50b500a78ff2','teste',0,'2012-11-27 18:05:48','2012-11-27 18:05:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:05:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6552',NULL),('1','741ec01f-4bd3-5db4-9e13-50a6353394e0','Check Inbound Mailboxes',0,'2012-11-16 12:45:01','2012-11-16 12:45:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7584',NULL),('1','745c7cc0-8600-3bc8-5a24-50b5091064e2','teste',0,'2012-11-27 18:40:48','2012-11-27 18:40:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:40:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5520',NULL),('1','746d14a5-e636-620a-f8d0-50b8ce8a5c04','teste',0,'2012-11-30 15:20:48','2012-11-30 15:20:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 15:20:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:8132',NULL),('1','74ae9b0f-eb0e-9745-9f01-50b5085318cf','teste',0,'2012-11-27 18:35:48','2012-11-27 18:35:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:35:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:3124',NULL),('1','74e58019-8882-f348-37d5-50b50218dff1','teste',0,'2012-11-27 18:10:48','2012-11-27 18:10:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:10:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6232',NULL),('1','7591865f-828e-a5c7-47c1-50aa6a83c557','Check Inbound Mailboxes',0,'2012-11-19 17:22:35','2012-11-19 17:22:35','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:22:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7132',NULL),('1','7596d70c-5d48-dcde-d15e-50b4fdb02c07','teste',0,'2012-11-27 17:50:48','2012-11-27 17:50:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:50:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7788',NULL),('1','75a6da41-5fee-6734-29a6-50b50b5a00b1','teste',0,'2012-11-27 18:50:48','2012-11-27 18:50:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:50:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5364',NULL),('1','75e0c98b-49cf-d089-89b9-50aa70270419','Check Inbound Mailboxes',0,'2012-11-19 17:47:38','2012-11-19 17:47:38','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:47:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7512',NULL),('1','75f2f396-962c-4d04-9b4e-50b50c9b999d','teste',0,'2012-11-27 18:55:48','2012-11-27 18:55:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:55:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:8132',NULL),('1','76140847-1462-b76e-0bcc-50a6820700f8','Check Inbound Mailboxes',0,'2012-11-16 18:15:33','2012-11-16 18:15:33','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:404',NULL),('1','7619dfc2-56ff-f59d-5517-50b8cb193b6b','teste',0,'2012-11-30 15:05:48','2012-11-30 15:05:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 15:05:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:444',NULL),('1','761b39f6-1596-0f2d-639c-50b4f6b729a0','teste',0,'2012-11-27 17:20:48','2012-11-27 17:20:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:20:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5980',NULL),('1','761fd117-a345-551f-f9a3-50b4fe879377','teste',0,'2012-11-27 17:55:48','2012-11-27 17:55:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:55:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5772',NULL),('1','7632ea9d-55ee-f366-c508-50aa6cc399cd','Check Inbound Mailboxes',0,'2012-11-19 17:27:35','2012-11-19 17:27:35','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:27:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7520',NULL),('1','766252da-7973-5450-7615-50b8cc135345','teste',0,'2012-11-30 15:10:48','2012-11-30 15:10:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 15:10:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5264',NULL),('1','76765e5e-8773-ba43-9d1e-50b4f7ec10f6','teste',0,'2012-11-27 17:25:48','2012-11-27 17:25:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 17:25:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6648',NULL),('1','768065e5-89e1-8691-9a65-50aa7503fbf2','Check Inbound Mailboxes',0,'2012-11-19 18:07:42','2012-11-19 18:07:42','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 18:07:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2880',NULL),('1','7706ee7a-3b95-e264-ca28-50aa60b842b5','Check Inbound Mailboxes',0,'2012-11-19 16:37:27','2012-11-19 16:37:27','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:37:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7856',NULL),('1','777c7abd-e6db-bcc7-2e1b-50aa77e1e7ef','Check Inbound Mailboxes',0,'2012-11-19 18:17:43','2012-11-19 18:17:43','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 18:17:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7836',NULL),('1','779b94f2-833c-5f88-c02b-50a636196310','Check Inbound Mailboxes',0,'2012-11-16 12:50:01','2012-11-16 12:50:01','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2652',NULL),('1','77e1b06c-3be6-cd41-1a9f-50b8c83e295c','teste',0,'2012-11-30 14:55:48','2012-11-30 14:55:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:55:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7228',NULL),('1','780c3be0-c4ea-5f87-d8e6-50a62b3b79d6','Check Inbound Mailboxes',0,'2012-11-16 12:04:58','2012-11-16 12:04:58','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:04:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7440',NULL),('1','7811596b-e7fe-c6a6-a0a4-50aa76b9ba5b','Check Inbound Mailboxes',0,'2012-11-19 18:12:43','2012-11-19 18:12:43','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 18:12:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7260',NULL),('1','785809c8-9656-2796-3f8d-50aa78a99111','Check Inbound Mailboxes',0,'2012-11-19 18:22:44','2012-11-19 18:22:44','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 18:22:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8064',NULL),('1','7861172c-335f-f780-aea6-50aa5c08498f','Check Inbound Mailboxes',0,'2012-11-19 16:22:24','2012-11-19 16:22:24','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:22:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6744',NULL),('1','78627136-54c4-406e-7ff1-50aa6193155d','Check Inbound Mailboxes',0,'2012-11-19 16:42:28','2012-11-19 16:42:28','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:42:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2696',NULL),('1','789a31a9-d4d1-c03f-d717-50a63950458d','Check Inbound Mailboxes',0,'2012-11-16 13:05:03','2012-11-16 13:05:03','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4036',NULL),('1','78a6b3a8-fc4d-7081-e8be-50aa6f80c731','Check Inbound Mailboxes',0,'2012-11-19 17:42:38','2012-11-19 17:42:38','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:42:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7512',NULL),('1','78c72398-1002-bd4f-0c9c-50b8c0e15263','teste',0,'2012-11-30 14:20:48','2012-11-30 14:20:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:20:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7548',NULL),('1','791e53a7-b43c-c7c8-bce7-50a62e0faec6','Check Inbound Mailboxes',0,'2012-11-16 12:15:00','2012-11-16 12:15:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:924',NULL),('1','7923a961-a173-5a8b-0dad-50aa4e71efa3','Check Inbound Mailboxes',0,'2012-11-19 15:22:22','2012-11-19 15:22:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:22:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7184',NULL),('1','798f61c7-a00a-a290-6c14-50aa5f35c61e','Check Inbound Mailboxes',0,'2012-11-19 16:32:26','2012-11-19 16:32:26','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:32:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:768',NULL),('1','79cc0c17-15c0-f2b5-eb99-50a66f7ad742','Check Inbound Mailboxes',0,'2012-11-16 16:55:24','2012-11-16 16:55:24','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:1664',NULL),('1','79dde25c-8023-d63d-c6cd-50b5105ba0e2','teste',0,'2012-11-27 19:10:48','2012-11-27 19:10:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 19:10:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7772',NULL),('1','7a8f4bf6-9e87-df77-926a-50a63762eef5','Check Inbound Mailboxes',0,'2012-11-16 12:55:02','2012-11-16 12:55:02','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 12:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7492',NULL),('1','7a97ca75-8afd-c284-d831-50b8c460417e','teste',0,'2012-11-30 14:35:48','2012-11-30 14:35:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:35:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6212',NULL),('1','7aa587a0-d40a-2354-2d3a-50b8ca8a6d00','teste',0,'2012-11-30 15:00:48','2012-11-30 15:00:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 15:00:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:4092',NULL),('1','7afcd1d4-d223-ef8f-2fd5-50aa6392a4b6','Check Inbound Mailboxes',0,'2012-11-19 16:52:29','2012-11-19 16:52:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:52:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7824',NULL),('1','7bb0af8f-7a41-ac45-ce24-50aa4fcf4bdd','Check Inbound Mailboxes',0,'2012-11-19 15:27:22','2012-11-19 15:27:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:27:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7256',NULL),('1','7bbabf12-3979-a560-b1cf-50b8c7c4a1bc','teste',0,'2012-11-30 14:50:48','2012-11-30 14:50:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:50:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:6312',NULL),('1','7bc2cd42-ac9b-a9b4-e2f6-50aa4d1f4c8d','Check Inbound Mailboxes',0,'2012-11-19 15:17:22','2012-11-19 15:17:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:17:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7576',NULL),('1','7bfd03eb-6a2e-a5a1-5af6-50aa6d83cc9b','Check Inbound Mailboxes',0,'2012-11-19 17:32:36','2012-11-19 17:32:36','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:32:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7448',NULL),('1','7cc8c817-9e57-2d72-81d3-50aa525a7f10','Check Inbound Mailboxes',0,'2012-11-19 15:37:22','2012-11-19 15:37:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:37:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8108',NULL),('1','7ce3dc05-6cb2-e76d-5e95-50aa6728a112','Check Inbound Mailboxes',0,'2012-11-19 17:07:32','2012-11-19 17:07:32','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:07:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:1052',NULL),('1','7d3271e2-21b2-0d6d-3e39-50a63b4c93c4','Check Inbound Mailboxes',0,'2012-11-16 13:10:03','2012-11-16 13:10:03','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7476',NULL),('1','7d9345df-6067-518b-98ce-50aa64829709','Check Inbound Mailboxes',0,'2012-11-19 16:57:30','2012-11-19 16:57:30','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:57:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4324',NULL),('1','7e05d4c8-05ad-b0b6-e3e6-50aa516033dc','Check Inbound Mailboxes',0,'2012-11-19 15:32:22','2012-11-19 15:32:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:32:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7292',NULL),('1','7e219556-14d4-6b1c-9ee5-50aa66bd4715','Check Inbound Mailboxes',0,'2012-11-19 17:02:31','2012-11-19 17:02:31','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:02:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7028',NULL),('1','7e548ec8-4800-6099-fa7d-50aa6ed637b6','Check Inbound Mailboxes',0,'2012-11-19 17:37:37','2012-11-19 17:37:37','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:37:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7720',NULL),('1','7f4c1a71-6adb-5fdd-cceb-50a63e062ca7','Check Inbound Mailboxes',0,'2012-11-16 13:25:04','2012-11-16 13:25:04','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7888',NULL),('1','7f9c4593-5ecd-5fb6-d6c9-50aa558b256e','Check Inbound Mailboxes',0,'2012-11-19 15:52:22','2012-11-19 15:52:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:52:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3084',NULL),('1','7faa0c5d-ae80-b995-fe73-50a63c874ed5','Check Inbound Mailboxes',0,'2012-11-16 13:15:03','2012-11-16 13:15:03','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7560',NULL),('1','80278ba0-3cf6-0e81-607c-50aa54a0e72e','Check Inbound Mailboxes',0,'2012-11-19 15:47:22','2012-11-19 15:47:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:47:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8060',NULL),('1','8099abba-030a-be90-f0d9-50aa53635dc0','Check Inbound Mailboxes',0,'2012-11-19 15:42:22','2012-11-19 15:42:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:42:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7144',NULL),('1','815672ec-2fc7-c6a3-7e5b-50b8bfd90019','teste',0,'2012-11-30 14:15:48','2012-11-30 14:15:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:15:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:5948',NULL),('1','824c57d9-ad07-a0d1-deae-50b50630328d','teste',0,'2012-11-27 18:30:48','2012-11-27 18:30:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-27 18:30:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7860',NULL),('1','8312778d-bd19-00c3-73b6-50aa5602edc9','Check Inbound Mailboxes',0,'2012-11-19 15:57:22','2012-11-19 15:57:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 15:57:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7848',NULL),('1','835aa0de-13ea-ae7b-b98c-50a63fdd9366','Check Inbound Mailboxes',0,'2012-11-16 13:30:04','2012-11-16 13:30:04','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3220',NULL),('1','839c8894-7b9d-93a3-2611-50b4f1203983','Run Nightly Process Bounced Campaign Emails',0,'2012-11-27 17:00:32','2012-11-27 17:00:32','bee74e47-6e16-0c86-b608-508417779afa','2012-11-27 17:00:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','85ef7359-c2bb-308e-4b92-50aa5858b5f4','Check Inbound Mailboxes',0,'2012-11-19 16:02:22','2012-11-19 16:02:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:02:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7496',NULL),('1','86d30f52-cd91-8ddd-de5d-50a4ca51f091','Run Nightly Process Bounced Campaign Emails',0,'2012-11-15 10:58:27','2012-11-15 10:58:27','bee74e47-6e16-0c86-b608-508417779afa','2012-11-15 10:58:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7436',NULL),('1','87544d59-fcea-8cbb-fdc0-50a638112d0f','Run Email Reminder Notifications',0,'2012-11-16 13:00:03','2012-11-16 13:00:03','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 13:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:708',NULL),('1','89797d45-24d4-16f1-3cb2-50b4f44fb23a','Ver contas não contactadas',0,'2012-11-27 17:10:48','2012-11-27 17:10:48','9f11400a-e7d8-3a2c-ad7f-50b4dd2be375','2012-11-27 17:10:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7100',NULL),('1','897fffb5-e7da-a8d7-d25f-50a3d65b3683','Run Nightly Process Bounced Campaign Emails',0,'2012-11-14 17:33:55','2012-11-14 17:33:55','bee74e47-6e16-0c86-b608-508417779afa','2012-11-14 17:33:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:9072',NULL),('1','8a030754-206a-a918-0e97-50a6299b36dc','Check Inbound Mailboxes',0,'2012-11-16 11:55:00','2012-11-16 11:55:00','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 11:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7112',NULL),('1','8a124720-b41f-f1b7-55f4-50b3427463a2','Check Inbound Mailboxes',0,'2012-11-26 10:22:22','2012-11-26 10:22:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-26 10:22:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7564',NULL),('1','8cef83df-1658-9ace-5695-50a646920f44','Run Email Reminder Notifications',0,'2012-11-16 14:00:08','2012-11-16 14:00:08','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 14:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4348',NULL),('1','8e7f5f28-242a-a53c-3e5e-50aa62dd24f3','Check Inbound Mailboxes',0,'2012-11-19 16:47:29','2012-11-19 16:47:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:47:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2172',NULL),('1','8f15f2ea-b34a-8dfb-d7b6-50a642b000e4','Check Inbound Mailboxes',0,'2012-11-16 13:40:06','2012-11-16 13:40:06','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5904',NULL),('1','909dd346-c436-76ad-3085-50b4f6b9edd2','Ver contas não contactadas',0,'2012-11-27 17:20:48','2012-11-27 17:20:48','9f11400a-e7d8-3a2c-ad7f-50b4dd2be375','2012-11-27 17:20:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5980',NULL),('1','9143f045-8d2c-2d79-7c9b-50b4f8efaaf7','Ver contas não contactadas',0,'2012-11-27 17:30:48','2012-11-27 17:30:48','9f11400a-e7d8-3a2c-ad7f-50b4dd2be375','2012-11-27 17:30:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3772',NULL),('1','917834bf-5222-83c7-496a-50aa697f0dfb','Abrir site',0,'2012-11-19 17:17:34','2012-11-19 17:17:34','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:17:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:984',NULL),('1','918dacbd-9761-1720-a927-50a64af050f9','Check Inbound Mailboxes',0,'2012-11-16 14:15:10','2012-11-16 14:15:10','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2036',NULL),('1','931d1532-7ba8-6cfc-406e-50a6480c4cf6','Check Inbound Mailboxes',0,'2012-11-16 14:05:09','2012-11-16 14:05:09','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4864',NULL),('1','93b27983-ef36-c75e-8442-50a6444f8c97','Check Inbound Mailboxes',0,'2012-11-16 13:50:07','2012-11-16 13:50:07','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5948',NULL),('1','93c5f9aa-fc7b-0d0e-1d84-50a64bdc990e','Check Inbound Mailboxes',0,'2012-11-16 14:20:10','2012-11-16 14:20:10','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7856',NULL),('1','944a26c1-6079-a900-75ad-50aa5907e6ec','Check Inbound Mailboxes',0,'2012-11-19 16:07:23','2012-11-19 16:07:23','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:07:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7200',NULL),('1','95476294-7ffc-0b64-fa84-50a6497703f5','Check Inbound Mailboxes',0,'2012-11-16 14:10:09','2012-11-16 14:10:09','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5568',NULL),('1','95912cfa-aa0e-145d-9892-50aa74fd81e4','Abrir site',0,'2012-11-19 18:02:41','2012-11-19 18:02:41','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 18:02:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7268',NULL),('1','95c539e0-b1e1-04c8-093f-50aa7150fc8c','Abrir site',0,'2012-11-19 17:52:39','2012-11-19 17:52:39','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:52:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:4024',NULL),('1','95f3381d-9dc9-2664-c9b1-50aa5d84de87','Check Inbound Mailboxes',0,'2012-11-19 16:27:25','2012-11-19 16:27:25','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 16:27:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8096',NULL),('1','9693359a-54d4-de72-77df-50b4f1e106c0','Run Nightly Mass Email Campaigns',0,'2012-11-27 17:00:32','2012-11-27 17:00:32','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-27 17:00:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','96f4df27-3d8d-6ba0-adff-50a645e611ee','Check Inbound Mailboxes',0,'2012-11-16 13:55:08','2012-11-16 13:55:08','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6628',NULL),('1','96f7c9d8-757a-7b26-2ef2-50a63d72c006','Check Inbound Mailboxes',0,'2012-11-16 13:20:04','2012-11-16 13:20:04','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7760',NULL),('1','99951282-1416-7b46-5bb9-50a4d5daaf85','Check Inbound Mailboxes',0,'2012-11-15 11:46:05','2012-11-15 11:46:05','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 11:46:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7336',NULL),('1','99d90e5a-e223-85f6-7887-50aa6c75f29c','Abrir site',0,'2012-11-19 17:27:35','2012-11-19 17:27:35','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:27:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7520',NULL),('1','99f2441c-9f75-7155-f9b5-50aa77845ea7','Abrir site',0,'2012-11-19 18:17:43','2012-11-19 18:17:43','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 18:17:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7836',NULL),('1','9afab8fa-adf2-a1d0-c940-50a64cfb480b','Check Inbound Mailboxes',0,'2012-11-16 14:25:10','2012-11-16 14:25:10','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5416',NULL),('1','9b1ac89e-b5d8-3819-7d96-50a4ca5374e2','Check Inbound Mailboxes',0,'2012-11-15 10:58:27','2012-11-15 10:58:27','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-15 10:58:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7436',NULL),('1','9bf1fff4-4a1a-baf8-d294-50aa765e66df','Abrir site',0,'2012-11-19 18:12:43','2012-11-19 18:12:43','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 18:12:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7260',NULL),('1','9c160f97-c276-f527-d49e-50aa70535875','Abrir site',0,'2012-11-19 17:47:38','2012-11-19 17:47:38','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:47:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7512',NULL),('1','9cdb27a2-93cb-7e66-ed11-50aa6fbb96bb','Abrir site',0,'2012-11-19 17:42:38','2012-11-19 17:42:38','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:42:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7512',NULL),('1','9db7c387-8bb8-ef8a-4e6b-50aa75830333','Abrir site',0,'2012-11-19 18:07:42','2012-11-19 18:07:42','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 18:07:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:2880',NULL),('1','9dfe8617-bf98-56a5-48df-50b4f5f64fc5','Check Inbound Mailboxes',0,'2012-11-27 17:15:48','2012-11-27 17:15:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5896',NULL),('1','9f077536-883e-77f3-fed4-50b4f79ee54d','Check Inbound Mailboxes',0,'2012-11-27 17:25:48','2012-11-27 17:25:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6648',NULL),('1','9f8ab65e-9182-2189-245e-50aa78aaba5e','Abrir site',0,'2012-11-19 18:22:44','2012-11-19 18:22:44','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 18:22:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:8064',NULL),('1','9fd8db87-7103-1741-bc48-50aa666784da','Abrir site',0,'2012-11-19 17:02:31','2012-11-19 17:02:31','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:02:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7028',NULL),('1','a05ebe7b-0af0-45a5-07bf-50aa6d50fa1c','Abrir site',0,'2012-11-19 17:32:36','2012-11-19 17:32:36','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:32:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7448',NULL),('1','a4c9bfbf-f31c-6047-6a1b-50aa6ee4293d','Abrir site',0,'2012-11-19 17:37:37','2012-11-19 17:37:37','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:37:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7720',NULL),('1','a6874214-32ff-751c-84b3-50a6567bead7','Check Inbound Mailboxes',0,'2012-11-16 15:05:14','2012-11-16 15:05:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:496',NULL),('1','a6c2525a-3a29-d227-75f9-50a653f7396b','Check Inbound Mailboxes',0,'2012-11-16 14:55:12','2012-11-16 14:55:12','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7956',NULL),('1','a70873ed-70f8-5967-66a7-50a6419cef71','Check Inbound Mailboxes',0,'2012-11-16 13:35:05','2012-11-16 13:35:05','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7304',NULL),('1','a853c3ef-dd4e-b859-9167-50a65708a9dc','Check Inbound Mailboxes',0,'2012-11-16 15:10:14','2012-11-16 15:10:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7652',NULL),('1','a8ade3b3-8fb0-e37c-6db0-50a65003e249','Check Inbound Mailboxes',0,'2012-11-16 14:40:11','2012-11-16 14:40:11','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7436',NULL),('1','a9d5f7a4-3186-24b9-d9a9-50a629d77554','Run Nightly Process Bounced Campaign Emails',0,'2012-11-16 11:55:00','2012-11-16 11:55:00','bee74e47-6e16-0c86-b608-508417779afa','2012-11-16 11:55:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7112',NULL),('1','a9fac60a-14f5-0608-84f1-50a64fdeba0e','Check Inbound Mailboxes',0,'2012-11-16 14:35:11','2012-11-16 14:35:11','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7276',NULL),('1','aa5f93f0-93ee-5b71-c83b-50aa6a40690f','Abrir site',0,'2012-11-19 17:22:35','2012-11-19 17:22:35','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:22:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7132',NULL),('1','ab478e3c-342f-a50a-3011-50b8bebed795','teste',0,'2012-11-30 14:10:48','2012-11-30 14:10:48','4b3b095c-1f07-71b3-04e0-50b4f5654dae','2012-11-30 14:10:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:4236',NULL),('1','ac869126-e460-fbfe-870f-50a651f9ef08','Check Inbound Mailboxes',0,'2012-11-16 14:45:11','2012-11-16 14:45:11','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7864',NULL),('1','acf175b5-fdf8-5d57-9886-50b4f9c8d748','Check Inbound Mailboxes',0,'2012-11-27 17:35:48','2012-11-27 17:35:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6648',NULL),('1','ad1cc5a0-c42d-8801-2863-50a65812fa13','Check Inbound Mailboxes',0,'2012-11-16 15:15:14','2012-11-16 15:15:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7316',NULL),('1','ad594f2e-b1e6-3f86-9cc9-50aa68ed056f','Check Inbound Mailboxes',0,'2012-11-19 17:12:33','2012-11-19 17:12:33','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-19 17:12:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2696',NULL),('1','ae019bf5-5a07-6373-fce6-50a64334a33e','Check Inbound Mailboxes',0,'2012-11-16 13:45:07','2012-11-16 13:45:07','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6268',NULL),('1','ae1eeec4-aaad-e3d6-3a34-50b4f60d7909','Check Inbound Mailboxes',0,'2012-11-27 17:20:48','2012-11-27 17:20:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5980',NULL),('1','ae6db2fe-a5fe-9de2-473c-50a64d196faf','Check Inbound Mailboxes',0,'2012-11-16 14:30:11','2012-11-16 14:30:11','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7220',NULL),('1','ae9b8159-9ed3-594b-7c44-50b4f81b68c4','Check Inbound Mailboxes',0,'2012-11-27 17:30:48','2012-11-27 17:30:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3772',NULL),('1','af9c997a-c6fb-8815-4cfb-50a638181d22','Check Inbound Mailboxes',0,'2012-11-16 13:00:03','2012-11-16 13:00:03','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 13:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:708',NULL),('1','afae0189-018a-d3d1-e2ca-50af5749a9f6','Run Email Reminder Notifications',0,'2012-11-23 11:00:47','2012-11-23 11:00:47','1036024b-a25e-0e17-2784-5084175c123f','2012-11-23 11:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7844',NULL),('1','afc01d51-c3a3-363e-edfe-50b4f4bf9de6','Check Inbound Mailboxes',0,'2012-11-27 17:10:48','2012-11-27 17:10:48','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-27 17:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7100',NULL),('1','b2dbbecd-3c2e-09c1-241c-50a646bade4a','Check Inbound Mailboxes',0,'2012-11-16 14:00:08','2012-11-16 14:00:08','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:4348',NULL),('1','b36f1f5e-9e89-4488-14fc-50aa734ca10e','Abrir site',0,'2012-11-19 17:57:40','2012-11-19 17:57:40','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:57:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:7760',NULL),('1','b5b20d79-184a-d585-45a5-50af4bccdc52','Check Inbound Mailboxes',0,'2012-11-23 10:10:44','2012-11-23 10:10:44','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6324',NULL),('1','b6536b57-635e-aff2-6148-50a65e43874b','Check Inbound Mailboxes',0,'2012-11-16 15:40:15','2012-11-16 15:40:15','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:3696',NULL),('1','b82482bd-249e-a24b-c9ee-50a659948df8','Check Inbound Mailboxes',0,'2012-11-16 15:20:14','2012-11-16 15:20:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7788',NULL),('1','b84a3987-182c-04cf-ef46-50a6545b3807','Run Email Reminder Notifications',0,'2012-11-16 15:00:13','2012-11-16 15:00:13','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 15:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7604',NULL),('1','bc60f68c-7beb-ffbc-c18a-50a629bf7c0d','Run Nightly Mass Email Campaigns',0,'2012-11-16 11:55:00','2012-11-16 11:55:00','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-16 11:55:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7112',NULL),('1','bc84d7a2-3ccb-46e4-8130-50af4a73dbd8','Check Inbound Mailboxes',0,'2012-11-23 10:05:44','2012-11-23 10:05:44','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-23 10:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8032',NULL),('1','bcc35f69-0bf0-66fe-a1c0-50a65ad2da34','Check Inbound Mailboxes',0,'2012-11-16 15:25:14','2012-11-16 15:25:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6464',NULL),('1','bdbee7cc-fc28-32f8-d329-50a66071f105','Check Inbound Mailboxes',0,'2012-11-16 15:50:15','2012-11-16 15:50:15','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5224',NULL),('1','be1f6771-3016-dc91-24b6-50b342597820','Run Nightly Process Bounced Campaign Emails',0,'2012-11-26 10:22:22','2012-11-26 10:22:22','bee74e47-6e16-0c86-b608-508417779afa','2012-11-26 10:22:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7564',NULL),('1','be587189-640d-2a9d-daed-50a652c19d17','Check Inbound Mailboxes',0,'2012-11-16 14:50:12','2012-11-16 14:50:12','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 14:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7176',NULL),('1','bef0fe3b-7715-f8c1-d560-50a65cb562ed','Check Inbound Mailboxes',0,'2012-11-16 15:30:14','2012-11-16 15:30:14','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5184',NULL),('1','c0f3c455-dcbb-59b2-56cb-50a65f68a4d1','Check Inbound Mailboxes',0,'2012-11-16 15:45:15','2012-11-16 15:45:15','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6432',NULL),('1','c3144f06-1200-5198-1fd3-50a664c2c88c','Check Inbound Mailboxes',0,'2012-11-16 16:05:17','2012-11-16 16:05:17','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8180',NULL),('1','c355a147-4753-2f6b-1005-50a3d6b246a3','Run Nightly Mass Email Campaigns',0,'2012-11-14 17:33:55','2012-11-14 17:33:55','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-14 17:33:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:9072',NULL),('1','c3f3caa0-dd51-be87-3a45-50a6614de645','Check Inbound Mailboxes',0,'2012-11-16 15:55:15','2012-11-16 15:55:15','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:55:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8016',NULL),('1','c4860a36-c98e-48a9-09b2-50a6779d5989','Check Inbound Mailboxes',0,'2012-11-16 17:25:29','2012-11-16 17:25:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7244',NULL),('1','c534f526-1632-fdac-5c32-50a3d640c143','Check Inbound Mailboxes',0,'2012-11-14 17:33:55','2012-11-14 17:33:55','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-14 17:33:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:9072',NULL),('1','c697b65e-a897-2f74-13d5-50a665fa05a2','Check Inbound Mailboxes',0,'2012-11-16 16:10:17','2012-11-16 16:10:17','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:10:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7536',NULL),('1','c80a2550-2d9b-7d5a-5c6a-50a6677bfd69','Check Inbound Mailboxes',0,'2012-11-16 16:20:19','2012-11-16 16:20:19','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7320',NULL),('1','cb8e67e4-4b47-5f1e-0676-50a668ffc448','Check Inbound Mailboxes',0,'2012-11-16 16:25:19','2012-11-16 16:25:19','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:25:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2540',NULL),('1','d0d5e67e-d07a-8685-24d2-50a65da3536f','Check Inbound Mailboxes',0,'2012-11-16 15:35:15','2012-11-16 15:35:15','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7844',NULL),('1','d27e579b-5a79-a96f-b50c-50aa686f5054','Abrir site',0,'2012-11-19 17:12:33','2012-11-19 17:12:33','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','2012-11-19 17:12:00','done','failure','No CURL - não podem executar tarefas de URL\n','url::http://www.cross.pt/',NULL,0,NULL,1,0,'CRON83d743fab374c24a995d41ece817a8e1:2696',NULL),('1','d3f2761a-414d-5aab-0e9a-50a6636cbade','Run Email Reminder Notifications',0,'2012-11-16 16:00:16','2012-11-16 16:00:16','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 16:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7472',NULL),('1','d501ae53-4280-8076-a1d2-50a66bdbdd8b','Check Inbound Mailboxes',0,'2012-11-16 16:35:20','2012-11-16 16:35:20','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6228',NULL),('1','d83fd8dd-7ebc-cd30-f259-50a672a52d00','Check Inbound Mailboxes',0,'2012-11-16 17:05:26','2012-11-16 17:05:26','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:2796',NULL),('1','daf0019a-8c89-613e-0835-50a671c17a09','Run Email Reminder Notifications',0,'2012-11-16 17:00:25','2012-11-16 17:00:25','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 17:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7916',NULL),('1','dc167e65-46ed-49d9-d6e0-50a66d03761c','Check Inbound Mailboxes',0,'2012-11-16 16:45:22','2012-11-16 16:45:22','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:45:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8168',NULL),('1','dc3a774f-300a-9572-afa0-50a66e03ea7f','Check Inbound Mailboxes',0,'2012-11-16 16:50:23','2012-11-16 16:50:23','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:50:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6036',NULL),('1','dcc416a2-a1a5-61d4-be8f-50a674f59c57','Check Inbound Mailboxes',0,'2012-11-16 17:15:28','2012-11-16 17:15:28','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:5720',NULL),('1','df41dcd1-30c7-aeb2-05cb-50af4a952878','Run Nightly Process Bounced Campaign Emails',0,'2012-11-23 10:05:44','2012-11-23 10:05:44','bee74e47-6e16-0c86-b608-508417779afa','2012-11-23 10:05:00','done','success',NULL,'function::pollMonitoredInboxesForBouncedCampaignEmails',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8032',NULL),('1','e00041cf-1188-efb0-2039-50b34295ccc5','Run Nightly Mass Email Campaigns',0,'2012-11-26 10:22:22','2012-11-26 10:22:22','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-26 10:22:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7564',NULL),('1','e2043d5e-feff-59f1-7186-50a6545e8e53','Check Inbound Mailboxes',0,'2012-11-16 15:00:13','2012-11-16 15:00:13','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 15:00:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7604',NULL),('1','e21abe20-b2bd-4d5e-7ace-50a66ad9a601','Check Inbound Mailboxes',0,'2012-11-16 16:30:20','2012-11-16 16:30:20','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8136',NULL),('1','e58193a5-0b6e-4611-fbce-50a678a10063','Check Inbound Mailboxes',0,'2012-11-16 17:30:29','2012-11-16 17:30:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:30:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8108',NULL),('1','e6f4297c-35ae-bb74-15c4-50a66668e549','Check Inbound Mailboxes',0,'2012-11-16 16:15:18','2012-11-16 16:15:18','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:15:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:1992',NULL),('1','e8aaa79e-5553-beb9-c055-50a67529150f','Check Inbound Mailboxes',0,'2012-11-16 17:20:28','2012-11-16 17:20:28','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:20:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6668',NULL),('1','eefd6943-7096-29a6-150d-50a67fc921ef','Run Email Reminder Notifications',0,'2012-11-16 18:00:31','2012-11-16 18:00:31','1036024b-a25e-0e17-2784-5084175c123f','2012-11-16 18:00:00','done','success',NULL,'function::sendEmailReminders',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7972',NULL),('1','f01cade4-965a-f747-bd39-50a679766a7b','Check Inbound Mailboxes',0,'2012-11-16 17:35:29','2012-11-16 17:35:29','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 17:35:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:6836',NULL),('1','f32e82b9-576a-a97b-a787-50af4aed8342','Run Nightly Mass Email Campaigns',0,'2012-11-23 10:05:44','2012-11-23 10:05:44','d20bc3ae-b356-8a33-2f73-5084175d2e72','2012-11-23 10:05:00','done','success',NULL,'function::runMassEmailCampaign',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:8032',NULL),('1','f345bfc6-eb07-3d68-6af2-50a66cba2ca5','Check Inbound Mailboxes',0,'2012-11-16 16:40:21','2012-11-16 16:40:21','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 16:40:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:7756',NULL),('1','f35d6492-9042-aa77-f44f-50a68033121d','Check Inbound Mailboxes',0,'2012-11-16 18:05:32','2012-11-16 18:05:32','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','2012-11-16 18:05:00','done','success',NULL,'function::pollMonitoredInboxes',NULL,0,NULL,NULL,0,'CRON83d743fab374c24a995d41ece817a8e1:924',NULL);
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (NULL,'10e2fa64-33e3-7e34-344b-52befd09fd54','2013-12-28 16:35:12','2013-12-28 16:35:12','1','1','131228_163512_opportunities.xls',NULL,'131228_163512_opportunities.xls','zr2_Report','10e2fa64-33e3-7e34-344b-52befd09fd54',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Opportunities.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'22eba472-6b70-60b2-2221-52befdfb65a7','2013-12-28 16:35:12','2013-12-28 16:35:12','1','1','Opportunities',NULL,'131228_163512_opportunities.xls','Opportunities','',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Opportunities.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'49ce173b-654e-0e13-5126-51c314e5f539','2013-06-20 14:42:56','2013-06-20 14:42:56','1','1','7190.pdf','application/pdf','7190.pdf','Emails','44cbf0f0-a918-445d-cfd9-51c314082afd',NULL,0,0,NULL,0),(NULL,'7cc1db63-8f7f-3c65-c5a1-52befb057c1f','2013-12-28 16:26:13','2013-12-28 16:26:13','1','1','131228_162613_opportunities.pdf',NULL,'131228_162613_opportunities.pdf','zr2_Report','7cc1db63-8f7f-3c65-c5a1-52befb057c1f',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Opportunities.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'7d75924b-816a-1df3-6745-52befe6f6a2d','2013-12-28 16:40:14','2013-12-28 16:40:14','1','1','PipelineBySalesStageChart',NULL,'131228_164014_pipelinebysalesstagechart.pdf','Opportunities','',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/PipelineBySalesStageChart.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'91f11396-462f-baf5-9201-52beb99c92a4','2013-12-28 11:46:06','2013-12-28 11:46:06','1','1','131228_114606_todos_users.csv',NULL,'131228_114606_todos_users.csv','zr2_Report','91f11396-462f-baf5-9201-52beb99c92a4',NULL,0,0,NULL,0),(NULL,'9cda2cc1-8cdd-b01d-5cd1-52c0034d297e','2013-12-29 11:12:29','2013-12-29 11:12:29','1','1','131229_111229_test.pdf',NULL,'131229_111229_test.pdf','zr2_Report','9cda2cc1-8cdd-b01d-5cd1-52c0034d297e',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/test.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'a8ff5656-79a2-33d0-a741-52c0031c852d','2013-12-29 11:12:29','2013-12-29 11:12:29','1','1','test',NULL,'131229_111229_test.pdf','Opportunities','',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/test.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'c244e6ce-d393-c684-f8a9-52befbc747c1','2013-12-28 16:26:13','2013-12-28 16:26:13','1','1','Opportunities',NULL,'131228_162613_opportunities.pdf','Opportunities','',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Opportunities.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'d786e289-4c50-d397-f350-52bf12aca8ac','2013-12-28 18:03:27','2013-12-28 18:03:27','1','1','131228_180327_opportunities.pdf',NULL,'131228_180327_opportunities.pdf','zr2_Report','d786e289-4c50-d397-f350-52bf12aca8ac',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Opportunities.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'dd1758e3-5814-9237-d71c-52bf1265e21c','2013-12-28 18:03:27','2013-12-28 18:03:27','1','1','Opportunities',NULL,'131228_180327_opportunities.pdf','Opportunities','',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Opportunities.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0),(NULL,'e8e02aa9-c0fd-7427-adb5-52c011902b39','2013-12-29 12:11:44','2013-12-29 12:11:44','1','1','131229_121144_graph.pdf',NULL,'131229_121144_graph.pdf','zr2_Report','e8e02aa9-c0fd-7427-adb5-52c011902b39',NULL,0,0,'JasperBatchMain :: loading jasper design custom/ZuckerReports2/resources/Graph.jasper<br />JasperBatchMain :: getParameterValue(REPORT_PARAMETERS_MAP, java.util.Map) => null<br />JasperBatchMain :: getParameterValue(JASPER_REPORT, net.sf.jasperreports.engine.JasperReport) => null<br />JasperBatchMain :: getParameterValue(REPORT_CONNECTION, java.sql.Connection) => null<br />JasperBatchMain :: getParameterValue(REPORT_MAX_COUNT, java.lang.Integer) => null<br />JasperBatchMain :: getParameterValue(REPORT_DATA_SOURCE, net.sf.jasperreports.engine.JRDataSource) => null<br />JasperBatchMain :: getParameterValue(REPORT_SCRIPTLET, net.sf.jasperreports.engine.JRAbstractScriptlet) => null<br />JasperBatchMain :: getParameterValue(REPORT_LOCALE, java.util.Locale) => null<br />JasperBatchMain :: getParameterValue(REPORT_RESOURCE_BUNDLE, java.util.ResourceBundle) => null<br />JasperBatchMain :: getParameterValue(REPORT_TIME_ZONE, java.util.TimeZone) => null<br />JasperBatchMain :: getParameterValue(REPORT_FORMAT_FACTORY, net.sf.jasperreports.engine.util.FormatFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_CLASS_LOADER, java.lang.ClassLoader) => null<br />JasperBatchMain :: getParameterValue(REPORT_URL_HANDLER_FACTORY, java.net.URLStreamHandlerFactory) => null<br />JasperBatchMain :: getParameterValue(REPORT_FILE_RESOLVER, net.sf.jasperreports.engine.util.FileResolver) => null<br />JasperBatchMain :: getParameterValue(REPORT_TEMPLATES, java.util.Collection) => null<br />JasperBatchMain :: getParameterValue(SORT_FIELDS, java.util.List) => null<br />JasperBatchMain :: getParameterValue(REPORT_VIRTUALIZER, net.sf.jasperreports.engine.JRVirtualizer) => null<br />JasperBatchMain :: getParameterValue(IS_IGNORE_PAGINATION, java.lang.Boolean) => null<br />log4j:WARN No appenders could be found for logger (net.sf.jasperreports.extensions.ExtensionsEnvironment).<br />log4j:WARN Please initialize the log4j system properly.<br />JasperBatchMain :: exporting report ...<br />JasperBatchMain :: finished',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
INSERT INTO `opportunities` VALUES ('17cad694-4db3-13e3-e75a-50890c956172','Oportunidade 1','2012-10-25 09:56:14','2012-10-25 09:56:27','1','1',NULL,0,'1',NULL,'',NULL,100,100,'-99','2012-10-31',NULL,'Proposal/Price Quote',65),('1b908d64-6b8b-9143-a0c5-50890eeef94f','oportunidade 6','2012-10-25 10:02:21','2012-10-25 10:02:21','1','1','',0,'1','','','',160,160,'-99','2012-10-30','','Value Proposition',30),('2c69ad82-6f11-f997-4d04-50894483bb06','oportunidade 11','2012-10-25 13:55:55','2012-10-25 13:55:55','1','1','',0,'1','','','',210,210,'-99','2012-10-26','','Proposal/Price Quote',65),('3207c0d2-4f19-9e8c-3262-50bf846459bf','Fornecimento de P2','2012-12-05 17:29:03','2012-12-05 17:29:03','1','1',NULL,0,'1','New Business',NULL,'telefone',6800,6800,'-99','2012-12-12','Ricardo Coelho','Proposal/Price Quote',65),('397ffa9b-4a61-902e-8ee1-508fa375abb4','oportunidade 25','2012-10-30 09:52:49','2012-10-30 09:52:49','1','1','',0,'1','','','',350,350,'-99','2013-01-10','','Negotiation/Review',80),('40508819-af32-81b0-2cb6-508949245d27','oportunidade 18','2012-10-25 14:13:37','2012-10-25 14:13:43','1','1',NULL,0,'1',NULL,'',NULL,280,280,'-99','2012-12-20',NULL,'Proposal/Price Quote',65),('421a0c9d-12c5-12ab-de84-50894a90f62e','oportunidade 20','2012-10-25 14:20:22','2012-10-25 14:20:22','1','1','',0,'1','','','',300,300,'-99','2012-10-31','','Needs Analysis',25),('43cba12a-6c0f-a9e8-6759-508fa41a76f1','oportunidade 30','2012-10-30 09:55:40','2012-10-30 09:55:40','1','1','',0,'1','','','',400,400,'-99','2013-03-19','','Prospecting',10),('43ee3030-b420-3ab2-3251-508952cb2bf4','oportunidade 23','2012-10-25 14:52:32','2012-10-25 14:52:32','1','1','',0,'1','','','',330,330,'-99','2012-10-31','','Id. Decision Makers',40),('4794a870-3426-131c-f5fb-508fa337b53b','Oportunidade 26','2012-10-30 09:53:26','2012-10-30 09:53:26','1','1','',0,'1','','','',360,360,'-99','2012-12-18','','Perception Analysis',50),('4abfcf09-af28-d030-f746-508948667083','oportunidade 16','2012-10-25 14:11:41','2012-10-25 14:12:27','1','1',NULL,0,'1',NULL,'',NULL,260,260,'-99','2012-11-07',NULL,'Perception Analysis',50),('51eadee2-6738-af84-e4b8-50890da696ec','Oportunidade 2','2012-10-25 10:00:05','2012-10-25 10:00:05','1','1','',0,'1','','','',120,120,'-99','2012-10-31','','Proposal/Price Quote',65),('56710014-d8dc-1a9c-1d2d-50890d406056','oportunidade 4','2012-10-25 10:01:15','2012-10-25 10:01:15','1','1','',0,'1','','','',140,140,'-99','2012-10-31','','Prospecting',10),('5c497ca1-ef11-8107-37f2-508944d36fe3','oportunidade 9','2012-10-25 13:55:15','2012-10-25 13:55:15','1','1','',0,'1','','','',190,190,'-99','2012-10-26','','Proposal/Price Quote',65),('5fcf6fa4-5d67-8199-5667-51c30de4f252','Oportunidade 31','2013-06-20 14:09:59','2013-06-20 16:42:16','1','1','Descrição é um campo de texto livre.',0,'1','New Business','','feira',5000,5000,'-99','2013-06-30','Ricardo Coelho','Closed Won',65),('6216ede9-c47b-15f5-fce3-508fa39fd652','Oportunidade 28','2012-10-30 09:54:37','2012-10-30 09:54:37','1','1','',0,'1','','','',380,380,'-99','2013-02-20','','Proposal/Price Quote',65),('63acb138-f127-3eaf-c789-508948f45131','oportunidade 14','2012-10-25 14:10:39','2012-10-25 14:12:50','1','1',NULL,0,'1',NULL,'',NULL,240,240,'-99','2012-10-29',NULL,'Needs Analysis',25),('6cda6c96-e1ac-a6cf-e724-508fa3bdd3aa','Oportunidade 29','2012-10-30 09:55:10','2012-10-30 09:55:10','1','1','',0,'1','','','',390,390,'-99','2013-05-14','','Closed Lost',0),('74b6a0b1-6d71-9792-cb55-508949f501a0','oportunidade 19','2012-10-25 14:16:15','2012-10-25 14:16:15','1','1','',0,'1','','','',290,290,'-99','2012-11-20','','Prospecting',10),('907de0d0-91ca-7096-3059-50894854d5d5','oportunidade 12','2012-10-25 14:09:50','2012-10-25 14:09:50','1','1','',0,'1','','','',220,220,'-99','2012-11-02','','Needs Analysis',25),('9481a5dc-e44b-309a-523c-5089483f8103','oportunidade 17','2012-10-25 14:12:08','2012-10-25 14:12:15','1','1',NULL,0,'1',NULL,'',NULL,270,270,'-99','2012-11-15',NULL,'Prospecting',10),('a063e055-1511-59ad-95f7-50890ebf6d72','oportunidade 7','2012-10-25 10:02:46','2012-10-25 10:02:46','1','1','',0,'1','','','',170,170,'-99','2012-10-31','','Negotiation/Review',80),('a147b09a-0ff6-0ada-aad7-5089518a2f9a','oportunidade 21','2012-10-25 14:51:23','2012-10-25 14:51:23','1','1','',0,'1','','','',310,310,'-99','2012-10-31','','Prospecting',10),('a6c4cf06-8096-67d0-3feb-50894810b254','oportunidade 13','2012-10-25 14:10:13','2012-10-25 14:13:01','1','1',NULL,0,'1',NULL,'',NULL,230,230,'-99','2012-10-31',NULL,'Perception Analysis',50),('a797bcba-f3c6-11ae-73e6-5089440356e5','oportunidade 8','2012-10-25 13:54:50','2012-10-25 13:54:50','1','1','',0,'1','','','',180,180,'-99','2012-10-29','','Perception Analysis',50),('a809495c-f416-b2ce-7495-508fa304cc4b','Oportunidade 27','2012-10-30 09:53:57','2012-10-30 09:53:57','1','1','',0,'1','','','',370,370,'-99','2012-11-30','','Negotiation/Review',80),('b6823a9c-ec01-459b-b271-50bf6528d0c8','Fornecimento RG50','2012-12-05 15:17:00','2012-12-05 15:18:43','1','1','O cliente falou com o Sr. Paulo e pediu uma cotação de uma RB50 para o azeite.',0,'1','New Business','','feira',5000,5000,'-99','2012-12-12','Ricardo Coelho','Proposal/Price Quote',0),('ba801291-be18-33a6-534a-5089488e7a04','oportunidade 15','2012-10-25 14:11:10','2012-10-25 14:12:37','1','1',NULL,0,'1',NULL,'',NULL,250,250,'-99','2012-10-30',NULL,'Qualification',20),('d514781f-380b-befc-502f-50890d4200ac','Oportunidade 3','2012-10-25 10:00:39','2012-10-25 10:00:39','1','1','',0,'1','','','',130,130,'-99','2012-10-31','','Proposal/Price Quote',65),('d9c58bec-25ec-e80e-1a97-50890e884eee','oportunidade 5','2012-10-25 10:01:42','2012-10-25 10:01:42','1','1','',0,'1','','','',150,150,'-99','2012-10-31','','Needs Analysis',25),('dd48d626-4897-676a-db7d-50894498b5c5','oportunidade 10','2012-10-25 13:55:33','2012-10-25 13:55:33','1','1','',0,'1','','','',200,200,'-99','2012-10-26','','Proposal/Price Quote',65),('dd4b4411-8b15-cd29-b145-51c3067ef94b','Oportunidade 31','2013-06-20 13:43:08','2013-06-20 14:09:07','1','1',NULL,1,'1',NULL,'',NULL,50000,50000,'-99',NULL,'Ricardo Coelho','Proposal/Price Quote',65),('f1318e06-ba56-1301-c09f-50b34abc4576','Oportunidade Afinomaq','2012-11-26 10:56:21','2012-11-27 14:19:06','1','1',NULL,0,'1',NULL,'',NULL,1300,1300,'-99','2012-12-31','Ricardo Coelho','Negotiation/Review',0),('f14d05e4-fbfb-7da4-1aaa-5089521e6f03','oportunidade 24','2012-10-25 14:53:04','2012-10-25 14:53:04','1','1','',0,'1','','','',340,340,'-99','2012-11-14','','Qualification',20),('faf10b9a-de57-512b-3545-508952cb3414','oportunidade 22','2012-10-25 14:51:52','2012-10-25 14:51:52','1','1','',0,'1','','','',320,320,'-99','2012-11-29','','Value Proposition',30);
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
INSERT INTO `opportunities_audit` VALUES ('229c2b3f-a1bb-d799-c6c0-50894988fde4','40508819-af32-81b0-2cb6-508949245d27','2012-10-25 14:13:43','1','probability','int','0','65',NULL,NULL),('25153afe-9d99-1b07-b015-51c30b500db8','dd4b4411-8b15-cd29-b145-51c3067ef94b','2013-06-20 14:03:17','1','amount_usdollar','currency','50000','5000000',NULL,NULL),('26884c54-de52-efea-6f69-508948505471','4abfcf09-af28-d030-f746-508948667083','2012-10-25 14:12:27','1','sales_stage','enum','Closed Lost','Perception Analysis',NULL,NULL),('26c5ad38-7ffb-c2ff-f8e8-50bf6562ed78','b6823a9c-ec01-459b-b271-50bf6528d0c8','2012-12-05 15:18:43','1','sales_stage','enum','Closed Lost','Proposal/Price Quote',NULL,NULL),('36cce577-1400-e3b1-b7b2-50894861d8b1','4abfcf09-af28-d030-f746-508948667083','2012-10-25 14:12:27','1','probability','int','0','50',NULL,NULL),('396023dc-aef8-4d3c-fe66-51c30d1bddc4','5fcf6fa4-5d67-8199-5667-51c30de4f252','2013-06-20 14:10:15','1','amount_usdollar','currency','5000000','5000',NULL,NULL),('46c7d55b-d078-3594-02f8-5089483d487c','ba801291-be18-33a6-534a-5089488e7a04','2012-10-25 14:12:37','1','sales_stage','enum','Closed Lost','Qualification',NULL,NULL),('570c6930-1dbd-6938-106f-508948bc5a05','ba801291-be18-33a6-534a-5089488e7a04','2012-10-25 14:12:37','1','probability','int','0','20',NULL,NULL),('61e3b2af-6910-67c0-8670-51c30dded1fa','5fcf6fa4-5d67-8199-5667-51c30de4f252','2013-06-20 14:12:59','1','sales_stage','enum','Proposal/Price Quote','Id. Decision Makers',NULL,NULL),('639e0fe0-2304-06bc-ecf6-508948999f28','9481a5dc-e44b-309a-523c-5089483f8103','2012-10-25 14:12:15','1','probability','int','0','10',NULL,NULL),('69e64312-c86c-35a3-507a-5089487fb553','63acb138-f127-3eaf-c789-508948f45131','2012-10-25 14:12:50','1','sales_stage','enum','Closed Lost','Needs Analysis',NULL,NULL),('6e890bb8-258e-ab4c-c488-51c30b6fe600','dd4b4411-8b15-cd29-b145-51c3067ef94b','2013-06-20 14:03:38','1','amount_usdollar','currency','5000000','50000',NULL,NULL),('7a2abdfd-2f78-afb5-d0b5-5089485eaeaa','63acb138-f127-3eaf-c789-508948f45131','2012-10-25 14:12:50','1','probability','int','0','25',NULL,NULL),('8939ceea-6465-2a71-3732-51c30b2e1a6d','dd4b4411-8b15-cd29-b145-51c3067ef94b','2013-06-20 14:02:33','1','amount_usdollar','currency','5000000000','50000',NULL,NULL),('945e5de8-27d2-98dc-74e3-50b4cb5a5d4a','f1318e06-ba56-1301-c09f-50b34abc4576','2012-11-27 14:18:54','1','amount_usdollar','currency','13','1300000',NULL,NULL),('a24c2498-d148-e2aa-cdbb-50b4cb664d7f','f1318e06-ba56-1301-c09f-50b34abc4576','2012-11-27 14:16:08','1','sales_stage','enum','Closed Lost','Negotiation/Review',NULL,NULL),('b1a72c7e-71d7-b868-1404-51c30b5adf41','dd4b4411-8b15-cd29-b145-51c3067ef94b','2013-06-20 14:01:34','1','amount_usdollar','currency','50000000','5000000000',NULL,NULL),('bf253362-da93-4379-77bf-50b4cb12cadc','f1318e06-ba56-1301-c09f-50b34abc4576','2012-11-27 14:18:39','1','amount_usdollar','currency','13000','13',NULL,NULL),('ce970e77-021a-6499-5949-50bf6599dc9e','b6823a9c-ec01-459b-b271-50bf6528d0c8','2012-12-05 15:18:43','1','opportunity_type','enum','','New Business',NULL,NULL),('d183fdeb-7343-e1ad-5787-50b4cbc346f5','f1318e06-ba56-1301-c09f-50b34abc4576','2012-11-27 14:19:06','1','amount_usdollar','currency','1300000','1300',NULL,NULL),('d36aaf7e-ed3a-2c94-07dc-508948447701','a6c4cf06-8096-67d0-3feb-50894810b254','2012-10-25 14:13:01','1','sales_stage','enum','Closed Lost','Perception Analysis',NULL,NULL),('d8f294b7-d3a6-8485-e901-51c3305b0eeb','5fcf6fa4-5d67-8199-5667-51c30de4f252','2013-06-20 16:42:16','1','sales_stage','enum','Id. Decision Makers','Closed Won',NULL,NULL),('e6629290-1c13-efff-48ed-50894847cf49','a6c4cf06-8096-67d0-3feb-50894810b254','2012-10-25 14:13:01','1','probability','int','0','50',NULL,NULL),('e670dd73-0aca-59d7-eed6-50890cba0da9','17cad694-4db3-13e3-e75a-50890c956172','2012-10-25 09:56:27','1','amount_usdollar','currency','10000','100',NULL,NULL),('e7655c7f-ff46-81c5-6329-5089485abda6','9481a5dc-e44b-309a-523c-5089483f8103','2012-10-25 14:12:15','1','sales_stage','enum','Closed Lost','Prospecting',NULL,NULL),('ef1464d9-8027-7bd7-530b-508949754f10','40508819-af32-81b0-2cb6-508949245d27','2012-10-25 14:13:43','1','sales_stage','enum','Closed Lost','Proposal/Price Quote',NULL,NULL);
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('28126008-720c-1f51-1a16-508417901cd8','system','system','1','SMTP','other','mail.cross.pt',25,'crosscrm@cross.pt','Eg4J9xESRWQmFy9+VHGZJw==',1,0),('6f6a1be3-771c-608e-05c4-52c03f1cfa27','system','system','1','SMTP','other','',25,'','',1,0),('9ffa7bb4-7b49-74d3-bfea-52c0653ce04b','system','system','1','SMTP','other','',25,'','',1,0);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
INSERT INTO `prospects` VALUES ('1351a431-d292-cf7d-ceca-508fe78eeb25','2012-10-30 14:42:14','2012-10-30 14:47:24','1','1',NULL,1,'1',NULL,NULL,'0198',NULL,NULL,0,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),('7d3cac87-fc5c-5549-d901-508967a48548','2012-10-25 16:23:40','2012-10-25 16:26:36','1','1','',1,'1','','','Targets','','',0,NULL,'','',NULL,'','','','','','','','','','','',NULL,NULL,1,NULL,NULL,'',NULL),('cd58aa05-7719-8775-1d63-50896e03c574','2012-10-25 16:54:06','2012-11-13 16:09:39','1','1',NULL,0,'1',NULL,NULL,'0196',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,'',NULL,'');
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_accounts_1_c`
--

DROP TABLE IF EXISTS `prospects_accounts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_accounts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `prospects_accounts_1prospects_ida` varchar(36) DEFAULT NULL,
  `prospects_accounts_1accounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospects_accounts_1_ida1` (`prospects_accounts_1prospects_ida`),
  KEY `prospects_accounts_1_idb2` (`prospects_accounts_1accounts_idb`),
  KEY `prospects_accounts_1_alt` (`prospects_accounts_1prospects_ida`,`prospects_accounts_1accounts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_accounts_1_c`
--

LOCK TABLES `prospects_accounts_1_c` WRITE;
/*!40000 ALTER TABLE `prospects_accounts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_accounts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('217344c2-a778-ed9b-390c-52c07cee012b','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31077751-7ebd-cea6-9cf7-52c07c49286d','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31d2f8cf-774e-a204-9a43-52c07ce6efe6','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32907858-b417-5528-fc2d-52c07c3d6860','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('447758d0-c44f-31f5-5950-52c07c65e4e5','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('479e4db1-ed06-15ac-c893-52c07ca9a080','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47c8a94f-a018-82e8-bb17-52c07c9b468e','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('47eeaeb0-0ace-5226-d8b4-52c07c2d0dfa','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('4813f89a-3ac8-c40e-f651-52c07c361110','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('483616ce-e744-31e7-84b9-52c07cf59282','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('4861ae70-8d32-a6c0-7c13-52c07cf376bc','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('48817884-fcc1-a524-4154-52c07c61cb0a','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('493f1421-4a5a-3e70-cb17-52c07c5dea25','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('496af8e6-db39-4aaa-7177-52c07cae9383','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('499021b0-0385-45ab-10b5-52c07c637d79','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49b2923b-3936-bdad-c730-52c07c780692','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('49e0a50c-a35c-aa26-e232-52c07c630cc2','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('4a02b204-4daa-4a40-7f38-52c07ca7882d','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('4a23f4cf-cd18-d15e-703e-52c07c1b1aa3','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('4a45041e-ea67-23a3-ed21-52c07c397c92','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('4ab12c46-d1c0-9cbd-819a-52c07c9bbd46','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4ae851cf-a1ca-ff82-217d-52c07cd8fa53','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b09c2cc-fa44-32da-f345-52c07c4227b5','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b2b59a5-7fd7-716c-4940-52c07c9c1157','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('4b6fa351-2c87-5dda-6549-52c07c02e1b5','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('4b9502a1-d182-f303-4830-52c07c7bb5c2','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('4bb7c978-5abb-f366-17d0-52c07c34ae38','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('4bdb3b20-5fc4-1fad-ed36-52c07c4a94a2','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('4bfbff9d-7d14-9521-9cbf-52c07c1a5499','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c1db7d2-8de4-91f0-6f54-52c07cc96b7a','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c7a4f36-178f-43a4-130d-52c07c83d24b','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cb1afa3-93b8-c429-5810-52c07cb78bf1','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('4ce2180b-48f8-640d-bec2-52c07c1332c1','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('4d1f4bb6-bda8-5229-6eab-52c07c2254ba','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d46f911-dcc5-dfd4-57ea-52c07c6197f7','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d690313-20ac-cde3-333d-52c07cf166f2','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d8a75dc-8569-694c-15e7-52c07caa2007','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4dac51f3-0f73-a277-97bc-52c07c7c8d35','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e00785f-a0c2-77f3-ce14-52c07c356c3d','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('4e2b0673-f6b1-87a5-4663-52c07c8829a7','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('4e6912e9-f86b-6b0a-4e0f-52c07ce22735','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('4e90be71-0209-716c-07bc-52c07cc191b6','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('4eb344a6-d275-fb9b-b50e-52c07ce911c8','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('4edfd72f-4d40-b895-db7a-52c07c3da08f','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f206f7d-54a8-a5c7-341a-52c07c388e85','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f4664d3-7e75-7f3b-7d81-52c07c857a2a','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f69aa55-3fa9-579c-96f2-52c07cc24f23','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4fc596b8-a11c-2e36-3638-52c07c674c92','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('4ff212c6-689a-35c4-55e0-52c07c3dc290','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('501bae6c-a7c8-84b1-bc00-52c07c0d63f3','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('503f2800-975d-0dee-47b8-52c07ca4a03d','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('50665290-5439-66a7-609f-52c07c4f3206','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('508dadd1-7a7e-79c0-a03d-52c07c11a87c','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50bbb4a0-3d32-86af-ddc8-52c07c04a76d','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50e0b648-9f6c-8a9c-0f38-52c07c24ea24','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51599ffa-0992-0d92-534e-52c07c3d9df2','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51850797-6812-68f6-1443-52c07c6ed2a0','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51ac66e7-d549-bbed-e9e0-52c07c1c511a','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51d48666-bae0-732b-7e40-52c07c80948d','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('520d7a48-bfcf-c725-a40f-52c07cd94040','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('523a669b-863a-a2d7-cb41-52c07cd50b27','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5614558e-8ad0-2a37-ed74-52c07cda8917','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a9dd20d-f140-886b-223a-52c07ca535d9','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ac4ec13-26cc-bc30-42ae-52c07c95c68f','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5af3c549-d833-d558-0b7d-52c07c0d3565','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b1559e2-dfaa-dc5e-e6ba-52c07c362e5b','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b37dd4c-20d7-d780-0027-52c07ccc0299','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b5a5a27-c336-0e35-6d1b-52c07c72adab','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bab7a56-16ee-38c3-139b-52c07c6e0bcc','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c37d4f1-b611-acbd-5bbc-52c07c0a7411','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c634a09-f181-a4a2-3f48-52c07c6f9578','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c8bd80f-3ea1-8c81-196c-52c07c6082ab','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5cb0b2f1-c878-be7c-3554-52c07c3570b1','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('5cd5959c-23e8-6553-edc8-52c07c00f514','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('5d038097-d102-36b2-4dbc-52c07c8d46ea','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5d25a075-1aae-0aa6-503e-52c07c8e9355','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5d489ed3-c129-81df-315d-52c07cfeeb0a','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5d6b723d-f79a-d577-7dfa-52c07c8217f1','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5d8dce97-4ab5-7584-a9dd-52c07c28a75b','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5db6f3ba-3e4e-8db0-68e8-52c07cf4defb','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('5df0613e-b6f3-ebd9-0e2d-52c07cb2e69c','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e28a384-5c3d-b833-a724-52c07c126372','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e8be70b-35ab-ce74-662e-52c07c1ffd6a','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5eb1147f-e911-2042-5d58-52c07cbc460d','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5edf44b0-db86-97df-3306-52c07ce97bdf','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f2b0884-97a3-d67d-5cfd-52c07c8f78ca','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5fc346a2-6f87-59af-9330-52c07c72cad6','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ff0398f-d7ef-6de6-439a-52c07cc31c11','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6018aba3-c4a8-b774-b120-52c07caee87e','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('603f2fdf-24b9-26af-51b1-52c07c75028a','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('6065d87a-ce14-2391-e1db-52c07c483a35','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('608ca249-63ee-fc18-dfcc-52c07c788c8e','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60b458e9-84c8-7c39-7dca-52c07ce6699a','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60d903bc-ae0b-9925-d843-52c07ca9f793','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61053c84-5a92-a05e-091f-52c07c611169','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('612c09b7-7644-cb23-89d7-52c07cf0fe65','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('614dbcb3-65d0-26c2-1e01-52c07c75325e','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('616f0fe3-8eb9-8a49-4dfa-52c07c63220a','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('6190576f-4732-19cb-8736-52c07cfce5dd','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61b29792-d028-281d-7cae-52c07c50bdce','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61eacf1c-52af-1993-2adf-52c07c77aa23','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('620b9a7f-5528-e678-6013-52c07c7e74cd','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('629d2b41-ec61-22c2-89a7-52c07cfd9f06','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62c84d95-c71f-0328-8a1a-52c07c0c94be','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62edaf4b-12f0-4ece-1121-52c07c2d5877','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6311aaa8-05ab-a27f-9283-52c07c314ecf','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('635324f4-4945-5c08-6fc0-52c07c5fdfbe','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('6375bdc5-2e53-5357-4069-52c07ca01d98','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('639eece5-0a91-3a31-f64b-52c07c0f268b','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('63c29826-37e9-28fa-1dd5-52c07c844611','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('63e40000-b2fd-d364-5261-52c07cecf2cc','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6405c51b-4834-b161-b3e8-52c07c70ce90','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6425e22c-68a0-32bd-366e-52c07ce32ae9','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('64473a83-e0fd-3531-8a50-52c07cf6e47d','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('64681985-9513-9296-fc05-52c07c17c433','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64893b46-fcf8-fa8f-65e7-52c07cca9825','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('64b43a44-660c-84dd-62e2-52c07c505efc','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64d3227d-1209-3cca-b35d-52c07c62b877','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64f5102c-cf4a-8b35-4f89-52c07caa21c0','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65619a22-770c-b994-344b-52c07c7a807f','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('658d4d69-dc13-2ddb-0d14-52c07cab7eec','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65b3849b-2729-32f6-de0b-52c07cedc0aa','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65d7fdad-33a1-adbb-1061-52c07c81e0cc','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('6601af20-63f3-88ab-bd21-52c07cede777','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('6626141e-b136-06e1-8558-52c07c7a131d','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('66499542-6efb-2ca2-48eb-52c07cca28e6','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('6677c273-7831-de15-383e-52c07ca3a275','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('669998bc-e8b6-5d98-0e6b-52c07ccb43ea','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66bafe8d-9874-54a3-eb7c-52c07ce9f588','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66ddc9df-13d5-aeb3-29a1-52c07cf433c3','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('670fdd9a-d860-f9d7-8bcd-52c07cdc5402','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67344706-c6b6-7d2d-8791-52c07ca3ba04','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('677ce3d0-0ee7-295b-6aa8-52c07c261532','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67deab5f-de58-d352-0ad6-52c07c993f0b','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('680c40c3-e2d7-428f-6a8a-52c07c1df84a','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6832f477-eb58-a41c-729d-52c07cae3656','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68a7d448-ea0e-93f3-b216-52c07cd59df9','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68e4343b-3cc6-29fa-b0ba-52c07cfb32cb','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6908c249-2255-25d9-b5e1-52c07c9d28e2','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('692e332b-a91c-85c7-27ab-52c07cdb3e4d','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('695478d7-dbba-bfe9-a13b-52c07c7a73db','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69aed08a-a8ee-acaf-c917-52c07c2603bf','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69dcad60-25a2-8a14-acbb-52c07c425b02','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a0315a9-bd99-43a5-bf3a-52c07c764573','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a2822b6-4d1f-fcec-835d-52c07c4df358','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a4b7cef-00d0-97b2-41ce-52c07cace548','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('6a6eb380-e4e6-8402-2e69-52c07c0dfffa','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('6a9c2c1d-7018-0b61-f4bb-52c07cb57122','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('6abcecf1-1831-84e5-3cff-52c07c4ffdf4','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b2f3951-16b1-70be-c0e5-52c07c48190b','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b5b3053-5a02-7392-dcbe-52c07c8738a9','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b7f7863-848c-8b65-4518-52c07cc165f9','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ba2b4fc-9a12-0fec-245f-52c07c6d35f4','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('6c04b1ae-e372-80e7-4506-52c07c74a5c2','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c32d92f-487c-3aa4-32e1-52c07cdc9eeb','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c62a02d-aa36-8171-2b72-52c07c2912a1','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c872255-fbca-7f51-f543-52c07ced073c','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e0eeb95-9add-ae95-f917-52c07c97bedc','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e4574ed-9974-848e-d20b-52c07cd07fe1','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e68ecab-c398-e884-5960-52c07cd762cf','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e8c1e6a-24b1-6182-d52a-52c07ca3aca8','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ec37ed3-7be4-497b-9107-52c07c8a69bb','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f321c3f-abbe-e707-24f1-52c07cde451a','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6f5f56ed-ea79-2f7e-5e2a-52c07c1f4307','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6fa4f743-4da9-ebf1-6118-52c07cd71047','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70381700-ec99-cecc-81a7-52c07cac239e','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70624591-4110-b4f2-9715-52c07c4a361d','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('708716f2-f2b1-3dfc-e7b0-52c07c6f9f88','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70e8beac-7b27-2ca5-7bb6-52c07c9d71c6','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('711297d4-5a1a-3e0f-0d03-52c07cd63231','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71360ae9-a545-8614-05a9-52c07c5eb831','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71874b40-418d-3fa9-8932-52c07c284bdf','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71b04e19-a871-7a25-dfa0-52c07c8e8417','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71d3752a-1a00-9371-aa7c-52c07c597edc','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7208ccaf-5950-e864-b579-52c07cdc76e2','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('723ae1a7-1b0d-4664-1875-52c07c4c0006','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('729ea870-8445-40ba-40bd-52c07cd3278b','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72c93d16-051e-4b98-1a5a-52c07c4a7733','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72eef79b-d4d1-3723-0a6a-52c07cd36000','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7352159c-09d3-1c43-5619-52c07c06230c','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('737c2cbd-d6c3-bfc6-752d-52c07ca6eb86','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('739f73af-17d5-1c9d-c3b4-52c07c332af6','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73c33cc0-47a8-c4bf-9740-52c07c4b8912','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('73e61620-d9d2-73f6-4c6a-52c07c0e3fa6','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('743b4bc5-31d4-00e5-c45d-52c07c168cea','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7464fa46-5182-48f0-453e-52c07c36a1c0','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74897e0a-326b-15ba-7baf-52c07c68987e','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74ac0d1c-5b14-68d0-95ef-52c07c38a523','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7505d518-222b-52dd-e808-52c07c4b31cb','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('753cff73-0e78-4071-3285-52c07c19825e','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('755fe928-0b3b-5072-6014-52c07ce4e6f5','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('757f2a1f-2f8b-665f-b5bf-52c07caa8779','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75aaa861-5ca2-6769-4e0e-52c07c941321','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('760a92a0-7378-be93-b2af-52c07c224589','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76365b37-1248-8180-01f7-52c07cfc155d','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('765ca674-23bb-6037-f49f-52c07c2b2810','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7682b288-7c34-9197-5ad1-52c07cceeb80','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_field','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76a4a809-4dff-31a5-b984-52c07c2069a0','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76fcb55a-28e2-915b-d7f1-52c07c094696','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77310601-b17c-c152-66ae-52c07ce4f842','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7779a74a-cc0f-bd82-1054-52c07cba9481','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77b60cd5-e87b-88a6-ada9-52c07c862686','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78067aa9-c95a-cc0e-8f87-52c07cf7e602','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7828d076-f10e-936e-e21d-52c07c873ac6','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78a87142-f1b0-e4f3-4c60-52c07c3f48e2','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78d34dee-cab0-0509-3882-52c07c3e97b6','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78f7f167-4931-3f91-28e6-52c07cfeda7e','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('791b2b78-5afc-385b-06d0-52c07c25c1c9','aos_contracts_aos_product_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('798c54eb-7226-ca69-0a7e-52c07cc1f015','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79c0d01a-523c-2d68-644f-52c07cc9d544','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79e36fa0-925e-c2d1-e0e9-52c07cbfd328','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a0393c2-9d94-7ded-a2a2-52c07c38e2f1','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a5da180-340d-1179-9a9c-52c07cb650d3','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a8850be-8ff0-f59b-d5e3-52c07cb2f020','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7aadb9d1-f4d8-cc89-93f4-52c07c107df6','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b019101-6026-b99f-df1a-52c07c088a2a','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b2ba87a-2ba5-07f8-c0fe-52c07cd09778','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b50635b-02e4-f9d5-34a0-52c07c0c1b24','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b736978-3f9e-129b-8d37-52c07c28765f','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7bd8fae4-3acc-231e-02a0-52c07c6970d2','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c02da39-5b18-acd9-2996-52c07cd8f066','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c2638ce-ca87-84fd-4907-52c07c2cf75c','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c4964f0-791d-e752-ecd1-52c07c9714de','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cabc247-bca7-9a9d-0fcb-52c07cf45692','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cd6586c-1c2f-1fef-b7f0-52c07ce311ab','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d00869f-fd97-a009-781e-52c07c28a459','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d2449bf-3cc5-aa29-ae39-52c07c5a5eb8','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d7d0c22-3d66-4438-c404-52c07c61ead4','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7db4872c-002d-4613-d1a8-52c07c4a77fa','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7dd71176-666d-dc6c-5a03-52c07c7eab82','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e54012b-ec61-1809-f944-52c07c531831','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e7d1f75-d95e-d6d5-e4fc-52c07c19fc92','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e9fd421-8ae6-ecdd-ab5a-52c07cbd661d','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ec1eefc-2eed-a865-35e0-52c07cf17fea','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f0e2601-c558-6387-4df2-52c07c3b5ae2','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f3932df-3afa-6bf8-fa1b-52c07c20cba5','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f9d71bc-9c4b-eb1e-e077-52c07cf3ab33','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7fc4fc2a-ae5a-cd97-dbee-52c07c4b62bd','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7feae719-0cf1-cc18-1784-52c07c17b8f6','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80184aa9-def7-5e48-31be-52c07cbd6d16','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('803a971e-f914-1d2c-a0df-52c07c8e183f','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('805ad0f2-5913-c997-2422-52c07c3fe0e5','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80ab157b-6725-e066-7f44-52c07ce729f9','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80d38425-942b-22c9-b321-52c07ce79ea7','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8124dd54-c2d8-52f5-416f-52c07cc7e6b2','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('815174ad-0bc6-e8f1-0231-52c07cc3c6ea','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82fd46c3-e5cb-2d9c-3efc-52c07c2fb68e','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('832b86e3-e194-a41a-c529-52c07c726457','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('836b23e0-79ab-b8ef-506e-52c07c61a488','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85200bed-2b1f-21e2-33ac-52c07c2578ec','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('854a504d-5803-35dc-d584-52c07c927036','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85711f68-c893-383b-1fd0-52c07ce8c493','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('875a1f48-4a5a-2055-71a8-52c07c103cd6','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87816749-7e3c-96b3-13de-52c07c3f572d','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87b01745-fa25-a4b1-aacb-52c07ccf3020','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('898801e3-c5ee-3398-6293-52c07cf7527d','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89b32d31-ac1d-6920-57d6-52c07ced113b','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89d444c9-1c60-2dea-2aa1-52c07c30820c','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a289d61-4d18-3484-206a-52c07c513717','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a535553-57a6-eca4-2879-52c07ce4960a','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a7d3d5d-38de-0413-4aae-52c07c2735cb','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ad4db34-a9dc-a98e-dc80-52c07ca7a570','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b001c1e-28ef-ce77-4f6f-52c07c0db526','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b27cc1b-5929-6753-4e71-52c07c83b8ff','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b8446cd-7772-128e-176c-52c07c26edde','zr2_report_modified_user','Users','users','id','zr2_Report','zr2_report','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8baca5aa-8549-cfee-8c0e-52c07c120c8f','zr2_report_created_by','Users','users','id','zr2_Report','zr2_report','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8bd1377c-e4c6-0ad7-728b-52c07c4e35d8','zr2_report_assigned_user','Users','users','id','zr2_Report','zr2_report','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c22b4d1-7916-6e06-b805-52c07cac953a','zr2_reportcontainer_modified_user','Users','users','id','zr2_ReportContainer','zr2_reportcontainer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c4f6c7f-68f6-f386-cab1-52c07c8055dc','zr2_reportcontainer_created_by','Users','users','id','zr2_ReportContainer','zr2_reportcontainer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c763c50-a98f-2bbd-db51-52c07ce51393','zr2_reportcontainer_assigned_user','Users','users','id','zr2_ReportContainer','zr2_reportcontainer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8cc740d2-e631-5fe9-9d57-52c07c2a95ad','zr2_reportparameter_modified_user','Users','users','id','zr2_ReportParameter','zr2_reportparameter','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8cf1d8ed-000e-93cb-622c-52c07cecbbdd','zr2_reportparameter_created_by','Users','users','id','zr2_ReportParameter','zr2_reportparameter','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d15aa78-c2c1-c9c5-1827-52c07c241c65','zr2_reportparameter_assigned_user','Users','users','id','zr2_ReportParameter','zr2_reportparameter','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d669b48-89b3-ab4c-3860-52c07c979060','zr2_reportparameterlink_modified_user','Users','users','id','zr2_ReportParameterLink','zr2_reportparameterlink','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d9d9372-a480-4dc7-0f42-52c07caab2ac','zr2_reportparameterlink_created_by','Users','users','id','zr2_ReportParameterLink','zr2_reportparameterlink','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8dc02787-7dfd-2c2d-7143-52c07cb0fbe7','zr2_reportparameterlink_assigned_user','Users','users','id','zr2_ReportParameterLink','zr2_reportparameterlink','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e2f9d34-9a33-82c9-fa8d-52c07cc4c4c1','zr2_reporttemplate_modified_user','Users','users','id','zr2_ReportTemplate','zr2_reporttemplate','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e59d762-ab84-d024-fd67-52c07cf30dd3','zr2_reporttemplate_created_by','Users','users','id','zr2_ReportTemplate','zr2_reporttemplate','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e7e735d-15da-dfa7-fc77-52c07ce2f54c','zr2_reporttemplate_assigned_user','Users','users','id','zr2_ReportTemplate','zr2_reporttemplate','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ed1c8d7-0c15-b634-75cc-52c07c257d38','zr2_querytemplate_modified_user','Users','users','id','zr2_QueryTemplate','zr2_querytemplate','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f0134e0-88b1-65ad-8e22-52c07cbe1b84','zr2_querytemplate_created_by','Users','users','id','zr2_QueryTemplate','zr2_querytemplate','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f2c1f6f-19fe-5a6f-b63d-52c07c0cbc04','zr2_querytemplate_assigned_user','Users','users','id','zr2_QueryTemplate','zr2_querytemplate','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a06b1520-d5d3-2b13-ea41-52c07cb764cd','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('a0a70494-028c-66c0-9e98-52c07c4ef186','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('a0dc7a36-8837-c458-f514-52c07c3432ea','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('a103d108-f93d-de4c-4616-52c07c6cfcd0','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('a129b5ab-fc7d-d096-ef54-52c07c61e22c','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('a14f0619-54f1-9d51-f821-52c07cda3de2','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('a173e90d-a0fc-698f-9e6c-52c07c89afb0','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('a19983fd-8163-cdc9-8945-52c07c36c3b0','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('a1bed2a8-8e1e-7be2-58a8-52c07c3fa011','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('a1e41dbf-0dc2-ceda-31e4-52c07c8084f6','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('a215ecfe-8e7c-4a03-3cf5-52c07c861ed7','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('a239898b-a4f5-c255-4d39-52c07c51ee19','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('a27790aa-c354-f9e7-b839-52c07c787f72','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('a299de05-3dfa-1378-72e0-52c07cdc2604','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('a2b980b7-f5c4-9581-6dbe-52c07c2728e9','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('a2dc368f-f8e9-d916-6700-52c07c326f20','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('a2fed84c-56bb-bbdd-d0b8-52c07c780a2e','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('a3372a6b-9b96-9d45-d471-52c07ca4608e','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('a35f34ac-b8b3-9da6-7aca-52c07c273e62','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('a383fbdf-2243-3804-4bed-52c07c5ee517','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('a3a8ff4e-cc7a-d76a-b3f8-52c07ce096ce','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('a3cdec40-3691-01ab-e578-52c07c409996','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('a3fcbb9f-c36a-1a76-3c74-52c07c5fbee5','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('a41fd052-ae95-0929-a8d7-52c07cd57dec','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('a43f5a01-99f6-0502-e784-52c07cf74f6e','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('a46133a0-0aa3-b56f-af78-52c07c4794a5','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('a485c43c-8b5c-3cd9-8a0f-52c07c4b93ea','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('a4a6e89e-0e2b-4b40-1c36-52c07cf3613f','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('a4c97ed3-a036-cc6c-62b8-52c07ca58c0c','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('a4ecddcf-7886-7b57-5c2a-52c07cf98059','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('a50e676c-bc5e-9f51-1804-52c07c45e50a','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('a53cd72a-e285-d7fe-a429-52c07c0ab1dc','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('a55f807a-3988-e380-ae05-52c07cc26b6c','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('a582eb95-5229-ce03-1e99-52c07cc24b7d','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('a5a85f38-3376-f382-c0d9-52c07cf17f61','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('a5d02f7d-2b9a-73e4-3226-52c07c7c0e0b','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('a5fae082-4445-11ad-8bc8-52c07c0c2a27','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('a61ef814-6b65-c98e-1f7a-52c07ca28eac','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('a64b9dc3-6b95-05b3-61f1-52c07c46199c','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('a66f0b87-42dc-4569-3540-52c07caa3bc2','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('a68eb7e3-d4fd-ee28-893c-52c07c237118','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('a6bc89db-ad45-9948-f355-52c07c9960cd','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('a6dfd0ca-b325-8abc-f14e-52c07c43040d','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('a702f300-aab1-b4bf-56c6-52c07c66e597','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('a726f8f6-007e-0cc1-e1f9-52c07c10c46c','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('a7496e22-78dd-0584-e270-52c07c425852','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('a76c90f2-c90d-51c6-f65c-52c07c35c9d1','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('a79121af-cf17-73c6-4d39-52c07ca4bf91','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('a7b4402a-a204-6255-8169-52c07c8e3890','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('a7da9b87-6998-0d61-4f3c-52c07c0d3ca8','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('a8097c31-a70c-2028-6e85-52c07c8d7fde','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('a82cbec2-1a30-2ed0-267c-52c07c616000','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('a84d6beb-e9fe-bf5d-d492-52c07cebb074','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('a8709b84-f465-e932-46e2-52c07c3e62b5','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('a8b2b59a-a20c-94e3-4e4a-52c07c87efc5','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('a8db7f47-a9ff-ade4-3dd2-52c07c2b019e','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('a9026b6f-15ba-d0ec-4d3d-52c07c02b1e8','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('a92541b4-0519-7862-ed2e-52c07c880a0e','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('a951485b-0667-5eba-a5f2-52c07c6051e0','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('a9732bb9-691a-9a6b-bfb3-52c07c2bbc61','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('a99252c2-d4b3-9a1c-ec28-52c07ce82723','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('a9b46849-947d-1769-f36b-52c07cc8e458','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('a9d66519-cc2a-ed4a-77d6-52c07c94e73b','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('a9f76851-da67-b920-17ff-52c07cc3662e','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('aa196d37-a7de-aa5a-cbb3-52c07ce74f25','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('aa3a45ab-4ab1-81f0-5969-52c07c3eb780','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('aa5b31a0-14b3-1f45-b875-52c07c1c4d3a','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('aa8ad65f-8568-cc4c-6a09-52c07c246d19','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('aaaf95ef-b686-12f9-cd74-52c07c43ccd9','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('aad12bf2-1ac2-f3d5-3c64-52c07c690f8b','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('aaf389d0-17da-d963-16e1-52c07cafb721','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('ab15e249-ae9f-c683-1ab3-52c07c4145c7','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('ab37be6b-6c8e-4fe2-ccec-52c07c30cf56','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('ab6751cd-dd95-2c31-5b02-52c07c152a78','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('ab892580-8b87-a026-7eec-52c07c81a826','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('abacf7f0-24a0-f90e-053f-52c07c1c0c79','zr2_reportcontainer_zr2_report','zr2_ReportContainer','zr2_reportcontainer','id','zr2_Report','zr2_report','id','zr2_reportcontainer_zr2_report_c','zr2_reportcontainer_zr2_reportzr2_reportcontainer_ida','zr2_reportcontainer_zr2_reportzr2_report_idb','many-to-many',NULL,NULL,0,0),('abdb4885-9e89-2cf7-0015-52c07cbd770e','zr2_reportparameterlink_zr2_querytemplate','zr2_QueryTemplate','zr2_querytemplate','id','zr2_ReportParameterLink','zr2_reportparameterlink','id','zr2_reportparameterlink_zr2_querytemplate_c','zr2_query313cemplate_ida','zr2_report0ed1terlink_idb','many-to-many',NULL,NULL,0,0),('abff4888-5255-40e3-7bbb-52c07c9ee817','zr2_reportparameterlink_zr2_reportparameter','zr2_ReportParameter','zr2_reportparameter','id','zr2_ReportParameterLink','zr2_reportparameterlink','id','zr2_reportparameterlink_zr2_reportparameter_c','zr2_report29aerameter_ida','zr2_report53a6terlink_idb','many-to-many',NULL,NULL,0,0),('ac204adc-36e8-0267-2888-52c07c49d075','zr2_reportparameterlink_zr2_reporttemplate','zr2_ReportTemplate','zr2_reporttemplate','id','zr2_ReportParameterLink','zr2_reportparameterlink','id','zr2_reportparameterlink_zr2_reporttemplate_c','zr2_report313cemplate_ida','zr2_report0ed1terlink_idb','many-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
INSERT INTO `saved_search` VALUES ('acbcbac7-c6bc-72d5-bf61-508944594a4f','Todas as Oportunidades','Opportunities',0,'2012-10-25 13:53:40','2012-10-25 13:53:40','1','YToyMjp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTM6Im5hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjIxOiJhY2NvdW50X25hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjI4OiJhbW91bnRfYWR2YW5jZWRfcmFuZ2VfY2hvaWNlIjtzOjE6Ij0iO3M6MjE6InJhbmdlX2Ftb3VudF9hZHZhbmNlZCI7czowOiIiO3M6Mjc6InN0YXJ0X3JhbmdlX2Ftb3VudF9hZHZhbmNlZCI7czowOiIiO3M6MjU6ImVuZF9yYW5nZV9hbW91bnRfYWR2YW5jZWQiO3M6MDoiIjtzOjIwOiJzYWxlc19zdGFnZV9hZHZhbmNlZCI7YToxMDp7aTowO3M6MTE6IkNsb3NlZCBMb3N0IjtpOjE7czoxMDoiQ2xvc2VkIFdvbiI7aToyO3M6MTk6IklkLiBEZWNpc2lvbiBNYWtlcnMiO2k6MztzOjE0OiJOZWVkcyBBbmFseXNpcyI7aTo0O3M6MTg6Ik5lZ290aWF0aW9uL1JldmlldyI7aTo1O3M6MTk6IlBlcmNlcHRpb24gQW5hbHlzaXMiO2k6NjtzOjIwOiJQcm9wb3NhbC9QcmljZSBRdW90ZSI7aTo3O3M6MTE6IlByb3NwZWN0aW5nIjtpOjg7czoxMzoiUXVhbGlmaWNhdGlvbiI7aTo5O3M6MTc6IlZhbHVlIFByb3Bvc2l0aW9uIjt9czozMzoiZGF0ZV9jbG9zZWRfYWR2YW5jZWRfcmFuZ2VfY2hvaWNlIjtzOjE6Ij0iO3M6MjY6InJhbmdlX2RhdGVfY2xvc2VkX2FkdmFuY2VkIjtzOjA6IiI7czozMjoic3RhcnRfcmFuZ2VfZGF0ZV9jbG9zZWRfYWR2YW5jZWQiO3M6MDoiIjtzOjMwOiJlbmRfcmFuZ2VfZGF0ZV9jbG9zZWRfYWR2YW5jZWQiO3M6MDoiIjtzOjE4OiJuZXh0X3N0ZXBfYWR2YW5jZWQiO3M6MDoiIjtzOjk6InNob3dTU0RJViI7czoyOiJubyI7czoxMzoic2VhcmNoX21vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxOToic2F2ZWRfc2VhcmNoX2FjdGlvbiI7czo0OiJzYXZlIjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7czo4OToiTkFNRXxBQ0NPVU5UX05BTUV8U0FMRVNfU1RBR0V8QU1PVU5UX1VTRE9MTEFSfERBVEVfQ0xPU0VEfEFTU0lHTkVEX1VTRVJfTkFNRXxEQVRFX0VOVEVSRUQiO3M6ODoiaGlkZVRhYnMiO3M6ODM6Ik9QUE9SVFVOSVRZX1RZUEV8TEVBRF9TT1VSQ0V8TkVYVF9TVEVQfFBST0JBQklMSVRZfENSRUFURURfQllfTkFNRXxNT0RJRklFRF9CWV9OQU1FIjtzOjc6Im9yZGVyQnkiO3M6NDoiTkFNRSI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjtzOjg6ImFkdmFuY2VkIjtiOjE7fQ==',NULL);
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('1036024b-a25e-0e17-2784-5084175c123f',0,'2012-10-21 15:40:03','2012-11-27 17:35:07','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 11:15:00','2020-12-31 00:00:00','0::*/1::*::*::*',NULL,NULL,'2012-11-27 17:00:00','Inactive',0),('14053604-22f2-3bb6-0a21-508417add41a',0,'2012-10-21 15:40:03','2012-11-27 17:35:21','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 14:00:00','2030-12-31 00:00:00','0::5::*::*::*',NULL,NULL,NULL,'Inactive',0),('3106d1e5-040f-c17b-d7be-52c06516d731',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 07:45:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('31fac515-92c4-38df-6b24-52c0657bf354',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 14:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Inactive',0),('32c99491-dba0-2965-604d-52c06504fa98',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 17:00:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('33c19569-9005-5cb2-1fde-52c0652398f7',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 09:15:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('348607c7-1694-3b30-af76-52c065835709',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 19:45:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('3554c177-aba1-de8b-5f94-52c065bd0e56',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 10:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('3619ef3e-6f4a-f4fd-fe6b-52c06508b6a6',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 11:30:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('36e85c71-302e-ca16-64ff-52c06513cff8',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 11:15:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('37b5a110-73cc-8aad-01d6-52c0651f48fb',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 19:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('391a041d-f8a9-5a34-a580-52c03f3e42cd',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 18:00:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('399455fb-0f33-2e97-912b-52c03f17eb7b',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 13:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Inactive',0),('3a28a8ce-73fd-fec4-22d5-52c03f57ff47',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 18:30:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('3a90b5bd-185f-a18f-8548-52c03f7aed47',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 13:00:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('3afd3602-fe5b-9854-1f26-52c03ff75587',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 10:00:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('3b7e4d90-f50b-40f5-8e75-52c03fca874e',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 16:15:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('3bdc8ce8-1bb1-3bba-4741-52c03f6a08b0',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 09:00:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('3c339dda-9834-b6e4-3067-52c03f4452a7',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 18:30:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('3c8bac80-b737-f697-8afe-52c03f0d38a9',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 14:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('4b3b095c-1f07-71b3-04e0-50b4f5654dae',0,'2012-11-27 17:15:22','2012-11-27 17:15:22','1','1','teste','url::http://gestao.ath.cx/download/acessoremoto/acesso.exe','2012-11-27 17:15:00','2012-11-30 18:15:00','*::*::*::*::*',NULL,NULL,NULL,'Active',1),('547af3f8-7c4d-a8fd-9315-52c065c74217',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Run AOW WorkFlow','function::processAOW_Workflow','2005-01-01 13:15:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('5f08ac7e-f28a-5e6c-f560-50a12fcd97e8',1,'2012-11-12 17:17:55','2012-11-15 12:48:15','1','1','Contrato 196','url::www.cross.pt','2012-11-14 17:00:00','2012-11-14 20:00:00','15::00::0000::00::00',NULL,NULL,NULL,'Active',1),('6518cbd7-6cc8-7ebd-2f53-52c06571deb3',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','AOP Check Inbound Mailboxes','function::pollMonitoredInboxesCustomAOP','2005-01-01 11:15:00','2020-12-31 00:00:00','*/1::*::*::*::*',NULL,NULL,NULL,'Active',0),('94221e24-0cca-894f-3fd9-5084176c4938',0,'2012-10-21 15:40:03','2012-11-27 17:35:34','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 17:45:00','2020-12-31 00:00:00','0::2::1::*::*',NULL,NULL,NULL,'Inactive',1),('9f11400a-e7d8-3a2c-ad7f-50b4dd2be375',0,'2012-11-27 15:34:20','2012-11-27 17:34:38','1','1','Ver contas não contactadas','function::sendEmailReminders','2005-01-01 15:45:00',NULL,'*/10::*::*::*::*',NULL,NULL,'2012-11-27 17:30:00','Inactive',1),('a98c1ffb-65c2-5a7c-3f7a-5084172a0918',0,'2012-10-21 15:40:03','2012-11-27 17:35:50','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 15:30:00','2020-12-31 00:00:00','0::*/1::*::*::*',NULL,NULL,'2012-11-27 17:35:00','Inactive',0),('b6f6100a-cf65-59db-4984-50a3cf0ab9ca',1,'2012-11-14 17:06:57','2012-11-15 12:48:07','1','1','lembrar','url::www.gabinetes.cross.pt','2012-11-15 11:15:00','2012-11-15 00:15:00','05::00::0000::00::00',NULL,NULL,NULL,'Active',1),('bee74e47-6e16-0c86-b608-508417779afa',0,'2012-10-21 15:40:03','2012-11-27 17:36:04','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 10:00:00','2020-12-31 00:00:00','0::2-6::*::*::*',NULL,NULL,'2012-11-27 17:00:00','Inactive',1),('c1bb6d72-5809-ca1f-e61c-50a4e4e8e285',1,'2012-11-15 12:49:49','2012-11-27 12:18:31','1','1','Abrir site','url::http://www.cross.pt/','2012-11-15 12:45:00','2012-11-15 15:15:00','*/1::*::*::*::*',NULL,NULL,NULL,'Inactive',1),('c5814553-859a-d88c-875e-52c03f25d872',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Run AOW WorkFlow','function::processAOW_Workflow','2005-01-01 10:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('c9a0bbf8-046f-bfba-b21c-508fd3e5145c',1,'2012-10-30 13:15:57','2012-11-12 17:08:32','1','1','Contrato 196','function::refreshJobs','2012-11-09 16:00:00','2012-11-30 10:00:00','56::15::2012::11::9',NULL,NULL,NULL,'Active',1),('ce6f949b-2c5a-877c-a210-52c03f28964a',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','AOP Check Inbound Mailboxes','function::pollMonitoredInboxesCustomAOP','2005-01-01 11:15:00','2020-12-31 00:00:00','*/1::*::*::*::*',NULL,NULL,NULL,'Active',0),('cee4d3ad-82dc-c72a-e4ee-50a4e571b5d9',1,'2012-11-15 12:51:03','2012-11-27 12:18:31','1','1','Ver emails','function::pollMonitoredInboxes','2012-11-15 12:45:00','2012-11-15 15:00:00','05::*::*::*::*',NULL,NULL,NULL,'Inactive',1),('d20bc3ae-b356-8a33-2f73-5084175d2e72',0,'2012-10-21 15:40:03','2012-11-27 17:36:17','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 10:00:00','2020-12-31 00:00:00','0::2-6::*::*::*',NULL,NULL,'2012-11-27 17:00:00','Inactive',1),('e2294e0f-3e05-3fee-0194-508417d348f2',0,'2012-10-21 15:40:03','2012-10-21 15:40:03','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 19:30:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('1bb54452-9abc-bc28-4c49-508952417801','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:f14d05e4-fbfb-7da4-1aaa-5089521e6f03:oportunidade 24] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €340.00','2012-10-25 14:53:04','2012-10-25 14:53:04','1','1',NULL,0,'1','Opportunities','f14d05e4-fbfb-7da4-1aaa-5089521e6f03',NULL,NULL),('1d6a7406-8124-db43-7f42-50890d2459c7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d514781f-380b-befc-502f-50890d4200ac:Oportunidade 3] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €130.00','2012-10-25 10:00:39','2012-10-25 10:00:39','1','1',NULL,0,'1','Opportunities','d514781f-380b-befc-502f-50890d4200ac',NULL,NULL),('302f028b-e755-6cf4-57f7-50890eb2cb60','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d9c58bec-25ec-e80e-1a97-50890e884eee:oportunidade 5] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €150.00','2012-10-25 10:01:42','2012-10-25 10:01:42','1','1',NULL,0,'1','Opportunities','d9c58bec-25ec-e80e-1a97-50890e884eee',NULL,NULL),('467b7af9-7bce-2d53-b12f-5089524bd87b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:faf10b9a-de57-512b-3545-508952cb3414:oportunidade 22] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €320.00','2012-10-25 14:51:52','2012-10-25 14:51:52','1','1',NULL,0,'1','Opportunities','faf10b9a-de57-512b-3545-508952cb3414',NULL,NULL),('47e807fb-702e-6050-c724-508944efc713','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:2c69ad82-6f11-f997-4d04-50894483bb06:oportunidade 11] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €210.00','2012-10-25 13:55:55','2012-10-25 13:55:55','1','1',NULL,0,'1','Opportunities','2c69ad82-6f11-f997-4d04-50894483bb06',NULL,NULL),('484fabc3-42bf-5e6c-39fc-50890ebdfe4b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:1b908d64-6b8b-9143-a0c5-50890eeef94f:oportunidade 6] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €160.00','2012-10-25 10:02:21','2012-10-25 10:02:21','1','1',NULL,0,'1','Opportunities','1b908d64-6b8b-9143-a0c5-50890eeef94f',NULL,NULL),('4e5d009c-e6c2-029a-f41b-508961f29586','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:f02ca7d0-bf56-91ff-43aa-5089610019b2:asdasdasd]','2012-10-25 15:59:51','2012-10-25 15:59:51','1','1',NULL,0,'1','Contacts','f02ca7d0-bf56-91ff-43aa-5089610019b2',NULL,NULL),('502a67c8-45b7-0eab-d655-51c3068d4072','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:dd4b4411-8b15-cd29-b145-51c3067ef94b:Oportunidade 31] {SugarFeed.WITH} [Accounts:d2084788-6476-a47a-affc-50b4cc4ef333:Roiferro] {SugarFeed.FOR} €50,000,000.00','2013-06-20 13:43:08','2013-06-20 14:20:07','1','1',NULL,1,'1','Opportunities','dd4b4411-8b15-cd29-b145-51c3067ef94b',NULL,NULL),('51681315-f3c9-a418-5967-50bf84ee4e89','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:3207c0d2-4f19-9e8c-3262-50bf846459bf:Fornecimento de P2] {SugarFeed.WITH} [Accounts:d2084788-6476-a47a-affc-50b4cc4ef333:Roiferro] {SugarFeed.FOR} €6,800.00','2012-12-05 17:29:03','2012-12-05 17:29:03','1','1',NULL,0,'1','Opportunities','3207c0d2-4f19-9e8c-3262-50bf846459bf',NULL,NULL),('59bb41cf-1245-9853-9b9a-50890c08ff4d','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:17cad694-4db3-13e3-e75a-50890c956172:Oportunidade 1] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €10,000.00','2012-10-25 09:56:14','2012-10-25 09:56:14','1','1',NULL,0,'1','Opportunities','17cad694-4db3-13e3-e75a-50890c956172',NULL,NULL),('5c2472ea-39ec-3dcc-bcdf-508949663141','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:40508819-af32-81b0-2cb6-508949245d27:oportunidade 18] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €280.00','2012-10-25 14:13:37','2012-10-25 14:13:37','1','1',NULL,0,'1','Opportunities','40508819-af32-81b0-2cb6-508949245d27',NULL,NULL),('5e838ea7-b240-b9df-2ed1-5089522d5d5c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:43ee3030-b420-3ab2-3251-508952cb2bf4:oportunidade 23] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €330.00','2012-10-25 14:52:32','2012-10-25 14:52:32','1','1',NULL,0,'1','Opportunities','43ee3030-b420-3ab2-3251-508952cb2bf4',NULL,NULL),('6256bace-af6f-1597-0780-508fa4750d45','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:43cba12a-6c0f-a9e8-6759-508fa41a76f1:oportunidade 30] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €400.00','2012-10-30 09:55:40','2012-10-30 09:55:40','1','1',NULL,0,'1','Opportunities','43cba12a-6c0f-a9e8-6759-508fa41a76f1',NULL,NULL),('668d3680-8263-156b-a7ee-50894873d80d','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:4abfcf09-af28-d030-f746-508948667083:oportunidade 16] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €260.00','2012-10-25 14:11:41','2012-10-25 14:11:41','1','1',NULL,0,'1','Opportunities','4abfcf09-af28-d030-f746-508948667083',NULL,NULL),('695305da-766a-2f7c-38a9-50bf65ad3acb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:b6823a9c-ec01-459b-b271-50bf6528d0c8:Fornecimento RG50] {SugarFeed.WITH} [Accounts:d2084788-6476-a47a-affc-50b4cc4ef333:Roiferro] {SugarFeed.FOR} €5,000.00','2012-12-05 15:17:00','2012-12-05 15:17:00','1','1',NULL,0,'1','Opportunities','b6823a9c-ec01-459b-b271-50bf6528d0c8',NULL,NULL),('6c9d1d9d-6b35-b88a-1e20-508fa33b987f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:397ffa9b-4a61-902e-8ee1-508fa375abb4:oportunidade 25] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €350.00','2012-10-30 09:52:49','2012-10-30 09:52:49','1','1',NULL,0,'1','Opportunities','397ffa9b-4a61-902e-8ee1-508fa375abb4',NULL,NULL),('725b7961-a83e-6038-abc8-50890dffa302','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:51eadee2-6738-af84-e4b8-50890da696ec:Oportunidade 2] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €120.00','2012-10-25 10:00:05','2012-10-25 10:00:05','1','1',NULL,0,'1','Opportunities','51eadee2-6738-af84-e4b8-50890da696ec',NULL,NULL),('746e0fa3-4edd-1d70-0c22-50890ddbb295','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:56710014-d8dc-1a9c-1d2d-50890d406056:oportunidade 4] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €140.00','2012-10-25 10:01:15','2012-10-25 10:01:15','1','1',NULL,0,'1','Opportunities','56710014-d8dc-1a9c-1d2d-50890d406056',NULL,NULL),('798094cd-c94c-7ad8-a80a-5089448c0764','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:5c497ca1-ef11-8107-37f2-508944d36fe3:oportunidade 9] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €190.00','2012-10-25 13:55:15','2012-10-25 13:55:15','1','1',NULL,0,'1','Opportunities','5c497ca1-ef11-8107-37f2-508944d36fe3',NULL,NULL),('7ab8be6c-1bb3-9e8a-4b59-508fa3651277','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:4794a870-3426-131c-f5fb-508fa337b53b:Oportunidade 26] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €360.00','2012-10-30 09:53:26','2012-10-30 09:53:26','1','1',NULL,0,'1','Opportunities','4794a870-3426-131c-f5fb-508fa337b53b',NULL,NULL),('8180f586-4b2a-a90d-0f83-508fa3daea53','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6216ede9-c47b-15f5-fce3-508fa39fd652:Oportunidade 28] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €380.00','2012-10-30 09:54:37','2012-10-30 09:54:37','1','1',NULL,0,'1','Opportunities','6216ede9-c47b-15f5-fce3-508fa39fd652',NULL,NULL),('86c6b068-b67d-7cb0-a666-51c30d2acb9b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:5fcf6fa4-5d67-8199-5667-51c30de4f252:Oportunidade 31] {SugarFeed.WITH} [Accounts:d2084788-6476-a47a-affc-50b4cc4ef333:Roiferro] {SugarFeed.FOR} €5,000,000.00','2013-06-20 14:09:59','2013-06-20 14:09:59','1','1',NULL,0,'1','Opportunities','5fcf6fa4-5d67-8199-5667-51c30de4f252',NULL,NULL),('8d54f0ee-9f73-983e-c101-5089484702f5','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:63acb138-f127-3eaf-c789-508948f45131:oportunidade 14] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €240.00','2012-10-25 14:10:39','2012-10-25 14:10:39','1','1',NULL,0,'1','Opportunities','63acb138-f127-3eaf-c789-508948f45131',NULL,NULL),('8db67083-987e-ca14-3713-508fa3b4d4d7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6cda6c96-e1ac-a6cf-e724-508fa3bdd3aa:Oportunidade 29] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €390.00','2012-10-30 09:55:10','2012-10-30 09:55:10','1','1',NULL,0,'1','Opportunities','6cda6c96-e1ac-a6cf-e724-508fa3bdd3aa',NULL,NULL),('8ece857d-4662-7e7a-67bd-50b34a23e94a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:f1318e06-ba56-1301-c09f-50b34abc4576:Oportunidade Afinomaq] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €13,000.00','2012-11-26 10:56:21','2012-11-26 10:56:21','1','1',NULL,0,'1','Opportunities','f1318e06-ba56-1301-c09f-50b34abc4576',NULL,NULL),('8fa87129-708e-96b7-12a6-508949340daa','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:74b6a0b1-6d71-9792-cb55-508949f501a0:oportunidade 19] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €290.00','2012-10-25 14:16:15','2012-10-25 14:16:15','1','1',NULL,0,'1','Opportunities','74b6a0b1-6d71-9792-cb55-508949f501a0',NULL,NULL),('9390a696-7712-3eb0-0abf-50894a4b22ca','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:421a0c9d-12c5-12ab-de84-50894a90f62e:oportunidade 20] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €300.00','2012-10-25 14:20:22','2012-10-25 14:20:22','1','1',NULL,0,'1','Opportunities','421a0c9d-12c5-12ab-de84-50894a90f62e',NULL,NULL),('9f8cb592-ea23-3f55-f74d-51c33095f7ee','<b>{this.CREATED_BY}</b> {SugarFeed.WON_OPPORTUNITY} [Opportunities:5fcf6fa4-5d67-8199-5667-51c30de4f252:Oportunidade 31] {SugarFeed.WITH} [Accounts:d2084788-6476-a47a-affc-50b4cc4ef333:Roiferro] {SugarFeed.FOR} €5,000.00','2013-06-20 16:42:16','2013-06-20 16:42:16','1','1',NULL,0,'1','Opportunities','5fcf6fa4-5d67-8199-5667-51c30de4f252',NULL,NULL),('af1cfe65-d38e-cc59-28ea-508948dc11f2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:9481a5dc-e44b-309a-523c-5089483f8103:oportunidade 17] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €270.00','2012-10-25 14:12:08','2012-10-25 14:12:08','1','1',NULL,0,'1','Opportunities','9481a5dc-e44b-309a-523c-5089483f8103',NULL,NULL),('b042e4d0-9692-f268-7cce-50894875599a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:907de0d0-91ca-7096-3059-50894854d5d5:oportunidade 12] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €220.00','2012-10-25 14:09:50','2012-10-25 14:09:50','1','1',NULL,0,'1','Opportunities','907de0d0-91ca-7096-3059-50894854d5d5',NULL,NULL),('bbcca3e2-e412-b226-4099-50890ea22a03','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a063e055-1511-59ad-95f7-50890ebf6d72:oportunidade 7] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €170.00','2012-10-25 10:02:46','2012-10-25 10:02:46','1','1',NULL,0,'1','Opportunities','a063e055-1511-59ad-95f7-50890ebf6d72',NULL,NULL),('bd22e991-9026-4944-5b74-5089510792e1','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a147b09a-0ff6-0ada-aad7-5089518a2f9a:oportunidade 21] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €310.00','2012-10-25 14:51:23','2012-10-25 14:51:23','1','1',NULL,0,'1','Opportunities','a147b09a-0ff6-0ada-aad7-5089518a2f9a',NULL,NULL),('c1676aad-dfeb-9e7f-6596-50894883263f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a6c4cf06-8096-67d0-3feb-50894810b254:oportunidade 13] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €230.00','2012-10-25 14:10:13','2012-10-25 14:10:13','1','1',NULL,0,'1','Opportunities','a6c4cf06-8096-67d0-3feb-50894810b254',NULL,NULL),('c5b4a871-57cb-9989-f159-508fa32c468b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a809495c-f416-b2ce-7495-508fa304cc4b:Oportunidade 27] {SugarFeed.WITH} [Accounts:dbda0f9a-f33f-f648-bc42-50890c00a9c2:Cliente 1] {SugarFeed.FOR} €370.00','2012-10-30 09:53:57','2012-10-30 09:53:57','1','1',NULL,0,'1','Opportunities','a809495c-f416-b2ce-7495-508fa304cc4b',NULL,NULL),('db573661-3f7a-0845-3e9f-50894869661b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:ba801291-be18-33a6-534a-5089488e7a04:oportunidade 15] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €250.00','2012-10-25 14:11:10','2012-10-25 14:11:10','1','1',NULL,0,'1','Opportunities','ba801291-be18-33a6-534a-5089488e7a04',NULL,NULL),('df94a371-0809-227b-db64-508944718318','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a797bcba-f3c6-11ae-73e6-5089440356e5:oportunidade 8] {SugarFeed.WITH} [Accounts:45fe6458-2667-6455-e407-50890c5c57ed:Cliente 2] {SugarFeed.FOR} €180.00','2012-10-25 13:54:50','2012-10-25 13:54:50','1','1',NULL,0,'1','Opportunities','a797bcba-f3c6-11ae-73e6-5089440356e5',NULL,NULL),('f556068f-69f2-75e1-e036-508944b23392','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:dd48d626-4897-676a-db7d-50894498b5c5:oportunidade 10] {SugarFeed.WITH} [Accounts:808111f7-1792-d54e-5364-50890cdd787b:Cliente 3] {SugarFeed.FOR} €200.00','2012-10-25 13:55:33','2012-10-25 13:55:33','1','1',NULL,0,'1','Opportunities','dd48d626-4897-676a-db7d-50894498b5c5',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('2b014dc1-88d4-75fe-6da2-50b346550518','chamada','2012-11-26 10:39:02','2012-11-26 10:39:02','1','1','',0,'1','Not Started',0,'2012-11-26 00:00:00',0,'2012-11-26 00:00:00','Accounts','808111f7-1792-d54e-5364-50890cdd787b','','High'),('6635c33a-f12d-accf-6e64-50a4ff2cafb8','Tarefa 1','2012-11-15 14:42:14','2012-11-15 14:42:23','1','1',NULL,0,'1','In Progress',0,'2012-11-16 00:00:00',0,'2012-11-15 00:00:00','ProjectTask','','','High'),('72cff274-6644-8aad-187e-50b8cda4c160','actividade 1','2012-11-30 15:15:50','2012-11-30 15:45:03','1','1','asdasd',0,'1','Completed',1,NULL,1,NULL,'Accounts','c18c8b38-85a2-6805-bcd6-50b8c9b2dcd4','','High'),('8bb3be8c-865d-a715-26d9-50b8cdffd04a','Reunião','2012-11-30 15:15:03','2012-11-30 15:15:03','1','1','',0,'1','Not Started',1,NULL,1,NULL,'Opportunities','17cad694-4db3-13e3-e75a-50890c956172','f02ca7d0-bf56-91ff-43aa-5089610019b2','High'),('b5cfc809-5432-708d-ee41-50bf73121aa7','Reunião','2012-12-05 16:17:00','2012-12-05 16:17:00','1','1','',0,'1','Not Started',0,'2012-12-06 13:00:00',0,'2012-12-06 00:00:00','Accounts','d2084788-6476-a47a-affc-50b4cc4ef333','f02ca7d0-bf56-91ff-43aa-5089610019b2','High'),('ce188009-5cc8-1218-a253-50b34bec757d','Ligar p/ cliente','2012-11-26 10:57:27','2012-11-26 10:57:27','1','1','',0,'1','Completed',1,NULL,0,'2012-11-26 00:00:00','Opportunities','f1318e06-ba56-1301-c09f-50b34abc4576','','High');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=1264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (4,'2bf090a9-6f33-f3d1-796a-5088ffb83921','1','Currencies','464f1f2a-15ee-6c6a-8cfb-5088ffe375db','Base Implementation.  Should be overridden.','2012-10-25 09:00:05','save','qopteds9c3aricp9i5qhqggi37',1,0),(6,'78a98ac4-81a7-d288-d825-52c071e383ec','1','Users','1','Diogo Medeiros','2013-12-29 18:59:19','editview','snl9hdc47pve0ohba70cav2tb4',1,0),(10,'aa97697a-436b-5b67-b92e-5089075bf198','1','Accounts','e6092bde-dc58-d3be-fd5b-50841a790628','André Pinto','2012-10-25 09:34:26','detailview','i8uvp693ajv17nlm21dv8o3ip1',1,0),(20,'a812052b-8634-b709-1cca-508908da7027','1','Employees','c7c7247c-66e2-2ccf-f5e5-508908a5d1d0','André Pinto','2012-10-25 09:39:50','detailview','bc033hk75cf5ch4iobj85tfgp5',1,0),(26,'85fa58ee-10e3-5e18-4a99-50890cf61c76','1','Accounts','45fe6458-2667-6455-e407-50890c5c57ed','Cliente 2','2012-10-25 09:55:25','detailview','6o4rf402jim738315b16oacd83',1,0),(27,'e3f1b6bf-1902-fc96-fa7d-50890c74f464','1','Accounts','808111f7-1792-d54e-5364-50890cdd787b','Cliente 3','2012-10-25 09:55:35','detailview','6o4rf402jim738315b16oacd83',1,0),(30,'67ab1e0d-90db-c994-767d-50890cef0c28','1','Opportunities','17cad694-4db3-13e3-e75a-50890c956172','Oportunidade 1','2012-10-25 09:56:28','detailview','6o4rf402jim738315b16oacd83',1,0),(32,'901314a1-02e7-d0ea-98bc-50890d3010da','1','Opportunities','d514781f-380b-befc-502f-50890d4200ac','Oportunidade 3','2012-10-25 10:00:40','detailview','6o4rf402jim738315b16oacd83',1,0),(33,'d6a20979-8972-eade-f78a-50890de20212','1','Opportunities','56710014-d8dc-1a9c-1d2d-50890d406056','oportunidade 4','2012-10-25 10:01:15','detailview','6o4rf402jim738315b16oacd83',1,0),(34,'7b3c1191-2751-af18-1b0a-50890ec06a20','1','Opportunities','d9c58bec-25ec-e80e-1a97-50890e884eee','oportunidade 5','2012-10-25 10:01:43','detailview','6o4rf402jim738315b16oacd83',1,0),(35,'c1ae75a3-db9a-8f64-1af6-50890ee5f556','1','Opportunities','1b908d64-6b8b-9143-a0c5-50890eeef94f','oportunidade 6','2012-10-25 10:02:22','detailview','6o4rf402jim738315b16oacd83',1,0),(42,'c5a8cc09-a2b2-905e-bc91-5089117c0ef8','1','KReports','e5e738a4-ef9c-cba1-6e53-5088fff6a2d0','Mapa 1','2012-10-25 10:16:58','detailview','6o4rf402jim738315b16oacd83',0,0),(43,'cfc83354-407d-5ad2-a66a-5089122a13d1','1','KReports','66090b8e-30d9-da16-7770-50891220b7b9','Mapa 1','2012-10-25 10:21:50','detailview','6o4rf402jim738315b16oacd83',0,0),(52,'71b9da31-e158-5c2f-b6ac-5089130a8950','1','KReports','bdb6074e-fe09-f525-584c-508913a9b1b3','Mapa 1','2012-10-25 10:24:54','detailview','6o4rf402jim738315b16oacd83',0,0),(53,'ebf7a5e6-9cb5-0d96-796c-5089137156ec','1','KReports','840097e8-2be3-ca22-7643-508913432bbc','Mapa 1','2012-10-25 10:26:21','detailview','6o4rf402jim738315b16oacd83',0,0),(81,'2b8f2859-1777-746a-469f-508915fde214','1','Opportunities','a063e055-1511-59ad-95f7-50890ebf6d72','oportunidade 7','2012-10-25 10:32:28','detailview','6o4rf402jim738315b16oacd83',1,0),(94,'64008cb4-e77c-f35a-f6a3-5089163ebc2a','1','Opportunities','51eadee2-6738-af84-e4b8-50890da696ec','Oportunidade 2','2012-10-25 10:39:56','detailview','6o4rf402jim738315b16oacd83',1,0),(112,'c143f529-f8d2-8910-aaa5-50891a77d5d6','1','Users','e6b251fd-323d-f59d-0ae1-50891ab01839','Cross','2012-10-25 10:56:50','save','6o4rf402jim738315b16oacd83',1,0),(135,'2aeff38a-80d7-9760-e32e-508928a60965','1','ACLRoles','1930b2e8-28de-d387-0727-50892776413a','Vendas','2012-10-25 11:52:32','detailview','3t50gcsabqvmesrdjpoaqdil81',1,0),(146,'e008eb1e-1aec-2745-cf99-50892c8d4303','1','Employees','32675a41-2ecc-004a-120b-50892777c7b7','F. Vendas','2012-10-25 12:12:01','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(153,'3f05043c-7892-2473-5c38-50892dae5779','1','EmailTemplates','1e11f5b2-ef60-a8c7-65e0-508417b359c5','System-generated password email','2012-10-25 12:13:53','detailview','rc1v9i47hk04nlft85eohk2mq1',0,0),(156,'29303e24-1b20-8d87-13a3-50892d8132f9','1','EmailTemplates','33ef0e84-ca5f-1466-4c7f-5084179a02de','Forgot Password email','2012-10-25 12:14:48','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(157,'825d7db6-91d7-2d2f-55a5-50894321b1ba','1','Employees','bd1ad17c-d7e0-22b7-b95c-50892c37aca0','F. Vendas','2012-10-25 13:49:28','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(161,'67bba86c-c731-93d5-ef35-508944e54d75','1','Opportunities','a797bcba-f3c6-11ae-73e6-5089440356e5','oportunidade 8','2012-10-25 13:54:51','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(163,'7381bee4-d1ba-8683-ed7e-508944093dd5','1','Opportunities','5c497ca1-ef11-8107-37f2-508944d36fe3','oportunidade 9','2012-10-25 13:55:23','editview','rc1v9i47hk04nlft85eohk2mq1',1,0),(165,'cf473a73-ae16-86a8-bd32-508944cdd22b','1','Opportunities','dd48d626-4897-676a-db7d-50894498b5c5','oportunidade 10','2012-10-25 13:55:39','editview','rc1v9i47hk04nlft85eohk2mq1',1,0),(174,'75848d86-0816-53ba-190b-508948b8eb30','1','Opportunities','9481a5dc-e44b-309a-523c-5089483f8103','oportunidade 17','2012-10-25 14:12:16','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(180,'c06cf368-85c6-deda-b791-508948103627','1','Opportunities','ba801291-be18-33a6-534a-5089488e7a04','oportunidade 15','2012-10-25 14:12:38','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(183,'1302792b-455a-37d1-23b9-508948da3e14','1','Opportunities','63acb138-f127-3eaf-c789-508948f45131','oportunidade 14','2012-10-25 14:12:50','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(186,'595c6c21-196d-d05b-e162-5089480cced7','1','Opportunities','a6c4cf06-8096-67d0-3feb-50894810b254','oportunidade 13','2012-10-25 14:13:02','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(187,'d2ad8d40-e034-9143-0755-508948f4bbde','1','Opportunities','907de0d0-91ca-7096-3059-50894854d5d5','oportunidade 12','2012-10-25 14:13:04','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(188,'508d231d-1204-70e9-2b23-5089489c76b2','1','Opportunities','2c69ad82-6f11-f997-4d04-50894483bb06','oportunidade 11','2012-10-25 14:13:08','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(191,'8dd33c2f-727f-d1dc-75cb-5089493369ad','1','Opportunities','40508819-af32-81b0-2cb6-508949245d27','oportunidade 18','2012-10-25 14:13:44','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(192,'1aa6d80a-b1b4-67ff-c744-5089497762a7','1','Opportunities','74b6a0b1-6d71-9792-cb55-508949f501a0','oportunidade 19','2012-10-25 14:16:15','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(195,'cf07248e-2459-6076-46a8-50894a48e395','1','Opportunities','4abfcf09-af28-d030-f746-508948667083','oportunidade 16','2012-10-25 14:19:37','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(196,'4156da55-95b6-33ff-1402-50894a1092c0','1','Opportunities','421a0c9d-12c5-12ab-de84-50894a90f62e','oportunidade 20','2012-10-25 14:20:23','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(199,'512bf60e-d565-4464-38ed-508951385a8d','1','Opportunities','a147b09a-0ff6-0ada-aad7-5089518a2f9a','oportunidade 21','2012-10-25 14:51:24','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(200,'bd5929c1-635e-8927-f1a5-508952a35616','1','Opportunities','faf10b9a-de57-512b-3545-508952cb3414','oportunidade 22','2012-10-25 14:51:53','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(201,'e981c00e-8e00-f330-59e6-508952ad7599','1','Opportunities','43ee3030-b420-3ab2-3251-508952cb2bf4','oportunidade 23','2012-10-25 14:52:32','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(202,'b2f9b515-0867-cf88-4df5-50895267d0b1','1','Opportunities','f14d05e4-fbfb-7da4-1aaa-5089521e6f03','oportunidade 24','2012-10-25 14:53:05','detailview','rc1v9i47hk04nlft85eohk2mq1',1,0),(213,'39e6876c-b090-0944-0d65-508962987947','1','Contacts','f02ca7d0-bf56-91ff-43aa-5089610019b2','Dr.  asdasdasd','2012-10-25 16:00:25','detailview','svs26tclu37qpc7rv801v4noi6',1,0),(218,'64d67a21-6ba3-90c3-62c0-508968328d57','1','Prospects','7d3cac87-fc5c-5549-d901-508967a48548','Targets','2012-10-25 16:26:29','detailview','svs26tclu37qpc7rv801v4noi6',0,0),(242,'5dc60592-7726-8d2c-01ce-508fa31a274c','1','Opportunities','397ffa9b-4a61-902e-8ee1-508fa375abb4','oportunidade 25','2012-10-30 09:52:50','detailview','u67grbvsps4ql43tgg2m135386',1,0),(246,'186e8afb-4203-944b-82c9-508fa3636555','1','Opportunities','6cda6c96-e1ac-a6cf-e724-508fa3bdd3aa','Oportunidade 29','2012-10-30 09:55:10','detailview','u67grbvsps4ql43tgg2m135386',1,0),(247,'e20a0e61-146a-ab85-619b-508fa4d1572b','1','Opportunities','43cba12a-6c0f-a9e8-6759-508fa41a76f1','oportunidade 30','2012-10-30 09:55:40','detailview','u67grbvsps4ql43tgg2m135386',1,0),(251,'c9dd3f65-b78c-8a4c-2609-508fa4f7ba17','1','KReports','3b870273-5c8f-e20b-59e6-508914304949','Mapa Oportunidades','2012-10-30 09:59:01','editview','u67grbvsps4ql43tgg2m135386',0,0),(262,'234c89ee-3d1d-606d-a800-508fa5f39f37','1','KReports','6df4246c-9c70-1551-c357-508fa53368d9','Mapa Oportunidades','2012-10-30 10:02:56','detailview','u67grbvsps4ql43tgg2m135386',0,0),(264,'9e8b279e-0ae4-2f33-dc57-508fa69ae492','1','KReports','a6fdec1d-0b51-689d-a605-508fa6dd0553','Oportunidades','2012-10-30 10:06:13','detailview','u67grbvsps4ql43tgg2m135386',0,0),(296,'a80bbcd5-cf75-fb6b-93da-508fad623d5e','1','KReports','94d80540-c1c5-b65e-c784-508fa6070e2c','Mapa Oportunidades','2012-10-30 10:34:15','detailview','an692s696lgr8v81lisgi18mo4',0,0),(310,'9b255795-461e-655c-4c23-508fba53fd03','1','KReports','ed11fa0f-6189-1a81-c1a7-508fb27da0ff','Total de Vendas por Comercial','2012-10-30 11:29:57','editview','4top54hdp9gao7hdac2m6tmof1',1,0),(393,'d5d65e2d-016f-befa-a441-508fe8f19b84','1','Prospects','1351a431-d292-cf7d-ceca-508fe78eeb25','0198','2012-10-30 14:47:17','detailview','r60ulj3erhrrv528j6e5ivphb2',0,0),(447,'59cd1379-a611-7fdf-7af5-509d14bc168f','1','ACLRoles','479763d3-92b4-efaa-62b5-509d14cea8ac','Limitado','2012-11-09 14:33:54','save','903k78pa0kuqmvm5dee2jreti0',1,0),(463,'48d45d07-a152-c28d-6e75-509d16b318de','1','Users','48319c1e-75c7-f88d-1fd0-509d004a8f73','Funcionário Utilizador','2012-11-09 14:44:21','detailview','surm940qci8gnfvie32458v3q7',1,0),(471,'d9bdf066-b15a-a7f6-37d6-509d21d39a38','1','KReports','2c7c19d7-5792-08a4-d3b2-508fad3cca0c','Mapa Oportunidades','2012-11-09 15:28:35','detailview','2re9rr44rd1amum0jt3q5r1014',1,0),(472,'736def91-eea2-137c-9195-509d2196d68f','1','KReports','ca1e33bb-aa88-8ebd-e120-508fba3c35a7','Contratos - Por Software','2012-11-09 15:28:39','detailview','2re9rr44rd1amum0jt3q5r1014',1,0),(493,'4b064c95-8773-403c-1fb6-50a12d84a698','1','Schedulers','c9a0bbf8-046f-bfba-b21c-508fd3e5145c','Contrato 196','2012-11-12 17:08:27','detailview','plomds06vn44buluiao2n7laa4',0,0),(506,'5c5df219-ac4b-a4a1-b5c4-50a13be74f29','1','Emails','b1d6adde-b850-7d86-d8c0-50a13be48fa4','Email do Sugar CE','2012-11-12 18:11:17','save','l11a5qfepf40s3f1il14nohqj2',1,0),(511,'ca12f8a9-0246-0a14-8c34-50a13dec7293','1','Emails','20778f2f-c12e-1c0e-e5d0-50a13d66b7d4','FW: Email do Sugar CE','2012-11-12 18:19:42','save','l11a5qfepf40s3f1il14nohqj2',1,0),(549,'11743274-95c3-71fb-ab09-50a295421456','1','Emails','52784503-61d6-bfe9-6848-50a295865931','Renovação de Contrato','2012-11-13 18:44:38','save','lcvctgglof6ohc9mdla60rbsk1',1,0),(554,'91310a08-4a69-4352-537d-50a299abae6b','1','Prospects','cd58aa05-7719-8775-1d63-50896e03c574','0196','2012-11-13 19:04:59','detailview','lcvctgglof6ohc9mdla60rbsk1',1,0),(611,'b7bfbbae-3ace-4e14-1056-50a4cd0dd491','1','Schedulers','b6f6100a-cf65-59db-4984-50a3cf0ab9ca','lembrar','2012-11-15 11:09:17','save','0e4tqr39jid900573j7pi1mlv0',0,0),(621,'54c08380-1b11-07cc-0bd0-50a4d164dc32','1','Campaigns','f0a67268-736c-9126-3551-50a29647d1c8','Renovação de contrato 34','2012-11-15 11:26:47','detailview','0e4tqr39jid900573j7pi1mlv0',0,0),(628,'db30f336-bf46-3630-11e8-50a4d296e90b','1','InboundEmail','99294ed5-feb4-a7f4-f268-50a4d019090e','SugarCRM','2012-11-15 11:30:15','detailview','0e4tqr39jid900573j7pi1mlv0',0,0),(629,'9b98cd76-9abe-11a1-42ec-50a4d2aeb631','1','EmailTemplates','d39cb1bd-73c5-4253-0608-50a27b16443e','Renovação de Contrato','2012-11-15 11:32:39','detailview','0e4tqr39jid900573j7pi1mlv0',0,0),(630,'8e73e5a3-ec0c-c794-c7d8-50a4d3ebe2cf','1','Emails','e729f041-7a79-f1b1-b93e-50a4d346fb43','teste do crm Cross','2012-11-15 11:35:12','save','0e4tqr39jid900573j7pi1mlv0',1,0),(633,'be8692e8-86fc-2a2f-772f-50a4d5ac088e','1','Schedulers','b6f6100a-cf65-59db-4984-50a3cf0ab9ca','lembrar','2012-11-15 11:45:27','save','0e4tqr39jid900573j7pi1mlv0',0,0),(635,'2367e1b4-2338-1144-d29d-50a4e43eca27','1','Schedulers','b6f6100a-cf65-59db-4984-50a3cf0ab9ca','lembrar','2012-11-15 12:48:01','detailview','0e4tqr39jid900573j7pi1mlv0',0,0),(636,'d97d2e67-54ce-b749-92cb-50a4e4eef7c6','1','Schedulers','5f08ac7e-f28a-5e6c-f560-50a12fcd97e8','Contrato 196','2012-11-15 12:48:10','detailview','0e4tqr39jid900573j7pi1mlv0',0,0),(670,'2e142597-30af-383d-9793-50a4ff308fee','1','Tasks','6635c33a-f12d-accf-6e64-50a4ff2cafb8','Tarefa 1','2012-11-15 14:42:24','detailview','0e4tqr39jid900573j7pi1mlv0',1,0),(691,'a2a023e0-1bf1-22ad-b95f-50afa6fad896','1','Schedulers','c1bb6d72-5809-ca1f-e61c-50a4e4e8e285','Abrir site','2012-11-23 16:39:05','detailview','sooqd01mkkprut87op1uv77h31',0,0),(693,'cf29f142-e26f-b57a-7c28-50b345782c70','1','Schedulers','cee4d3ad-82dc-c72a-e4ee-50a4e571b5d9','Ver emails','2012-11-26 10:34:14','detailview','nrpeu98k74adugaf7av73igoo2',0,0),(717,'f23b8e1a-f634-ac60-9212-50b3a9107dd1','1','Schedulers','e2294e0f-3e05-3fee-0194-508417d348f2','Prune Database on 1st of Month','2012-11-26 17:38:49','detailview','d2mgu31bu9lm5k4aa51cv101r1',1,0),(759,'62d24e2b-0b22-41ff-f544-50b4afd12d07','1','Accounts','dbda0f9a-f33f-f648-bc42-50890c00a9c2','Cliente 1','2012-11-27 12:18:01','detailview','slv674u1qm14u8ngjot3nkpl84',1,0),(796,'65533f29-2e52-a941-253a-50b4df5628fa','1','EmailTemplates','33ef0e84-ca5f-1466-4c7f-5084179a02de','Forgot Password email','2012-11-27 15:43:53','detailview','jaoa2827tsh43ia8hsa0hpvim7',1,0),(809,'df2181ee-f513-a19d-dbb3-50b4f916a483','1','Schedulers','4b3b095c-1f07-71b3-04e0-50b4f5654dae','teste','2012-11-27 17:34:21','detailview','u1601nhqhft318jnlstqprond5',1,0),(811,'6ee6d06c-bdbc-579f-3208-50b4f938f60b','1','Schedulers','9f11400a-e7d8-3a2c-ad7f-50b4dd2be375','Ver contas não contactadas','2012-11-27 17:34:38','save','u1601nhqhft318jnlstqprond5',1,0),(815,'c737d4ed-1873-9652-5f65-50b4f954f7e3','1','Schedulers','1036024b-a25e-0e17-2784-5084175c123f','Run Email Reminder Notifications','2012-11-27 17:35:08','detailview','u1601nhqhft318jnlstqprond5',1,0),(818,'769cfac2-429b-c64f-eac8-50b4f939110d','1','Schedulers','14053604-22f2-3bb6-0a21-508417add41a','Clean Jobs Queue','2012-11-27 17:35:21','save','u1601nhqhft318jnlstqprond5',1,0),(823,'85017031-ab16-69f0-e2ae-50b4f9e598bc','1','Schedulers','94221e24-0cca-894f-3fd9-5084176c4938','Prune Tracker Tables','2012-11-27 17:35:35','detailview','u1601nhqhft318jnlstqprond5',1,0),(827,'951a81ed-b2e2-a41a-d411-50b4f9fd06fc','1','Schedulers','a98c1ffb-65c2-5a7c-3f7a-5084172a0918','Check Inbound Mailboxes','2012-11-27 17:35:51','detailview','u1601nhqhft318jnlstqprond5',1,0),(831,'f355799b-0939-ae70-62c0-50b4fa31eb74','1','Schedulers','bee74e47-6e16-0c86-b608-508417779afa','Run Nightly Process Bounced Campaign Emails','2012-11-27 17:36:05','detailview','u1601nhqhft318jnlstqprond5',1,0),(835,'972a0323-2b27-f208-eefe-50b4facdf9c9','1','Schedulers','d20bc3ae-b356-8a33-2f73-5084175d2e72','Run Nightly Mass Email Campaigns','2012-11-27 17:36:18','detailview','u1601nhqhft318jnlstqprond5',1,0),(841,'44d941dc-97b4-ede7-b568-50b51083edea','1','EmailTemplates','139dd4bb-27b0-aec5-3a8e-50b4dee0ab76','Email de clientes por contactar','2012-11-27 19:12:19','detailview','uq9395a1enpc35q06jj9smaea1',1,0),(866,'a1c5c351-8713-08cd-6e1f-50bf63d21f5b','1','Emails','b0d08567-579a-05c9-7bc0-50b4e0885aef','Email de clientes por contactar','2012-12-05 15:08:07','detailview','k76ddlt5f8vgp4pe8bt3kkno61',1,0),(878,'3c87aeb8-3f6a-708b-fc3c-50bf7343778c','1','Tasks','b5cfc809-5432-708d-ee41-50bf73121aa7','Reunião','2012-12-05 16:17:01','detailview','k76ddlt5f8vgp4pe8bt3kkno61',1,0),(885,'216b0cbb-8705-27be-0287-50bf765de722','1','Opportunities','6216ede9-c47b-15f5-fce3-508fa39fd652','Oportunidade 28','2012-12-05 16:30:43','detailview','k76ddlt5f8vgp4pe8bt3kkno61',1,0),(887,'537d292c-f4f8-5867-0d4f-50bf76a72185','1','Opportunities','f1318e06-ba56-1301-c09f-50b34abc4576','Oportunidade Afinomaq','2012-12-05 16:31:28','detailview','k76ddlt5f8vgp4pe8bt3kkno61',1,0),(905,'5a7e9bfe-65a2-7ae7-a931-516ece13ae6b','1','zr2_ReportParameter','5aacbdde-117d-bdf8-d361-516ece226af8','Account (User-Defined Query)','2013-04-17 16:33:54','detailview','oglcepm8alv2ipf84v8qpg5lf1',1,0),(906,'39df9c7b-041a-f833-230e-516ecee58be2','1','zr2_ReportParameter','8056b610-cf89-6f36-c42e-516ece4b6c47','Meeting (User-Defined Query)','2013-04-17 16:34:03','detailview','oglcepm8alv2ipf84v8qpg5lf1',1,0),(908,'6ea13bfe-aae8-bc3d-f4a7-516ecf2f2450','1','zr2_ReportContainer','45243630-835c-90e9-1bca-516ece249a3c','Archive','2013-04-17 16:35:26','detailview','oglcepm8alv2ipf84v8qpg5lf1',1,0),(916,'4ae20ce1-1584-32c4-9179-516ed2097275','1','Opportunities','a809495c-f416-b2ce-7495-508fa304cc4b','Oportunidade 27','2013-04-17 16:48:17','detailview','oglcepm8alv2ipf84v8qpg5lf1',1,0),(917,'a896147e-92c4-45c9-956a-516ed2e7f491','1','Tasks','72cff274-6644-8aad-187e-50b8cda4c160','actividade 1','2013-04-17 16:48:24','detailview','oglcepm8alv2ipf84v8qpg5lf1',1,0),(918,'3ebfdfef-633a-08e0-c01a-516ed26eae01','1','Tasks','2b014dc1-88d4-75fe-6da2-50b346550518','chamada','2013-04-17 16:48:31','detailview','oglcepm8alv2ipf84v8qpg5lf1',1,0),(926,'e829c1b9-bbff-45db-0c40-5191fa10ee77','1','Opportunities','4794a870-3426-131c-f5fb-508fa337b53b','Oportunidade 26','2013-05-14 08:47:43','detailview','j9tdfhcdg0vlmjb30i6mepv3a3',1,0),(930,'73a3e0ae-1236-e5ed-6dbb-51c2dd8a0628','1','KReports','6a98f2f1-5976-6164-756b-508fbbd66484','Contratos - Dias de Pagamento','2013-06-20 10:44:31','detailview','dokq947hjsg8uv4dtef6o577a0',1,0),(933,'6cf43546-42e7-bd76-1c90-51c2ddcdf25f','1','ACLRoles','1930b2e8-28de-d387-0727-50892776413a','Vendas','2013-06-20 10:45:41','detailview','dokq947hjsg8uv4dtef6o577a0',1,0),(963,'41e89c18-838c-2407-48ca-51c30c6e95e5','1','Opportunities','dd4b4411-8b15-cd29-b145-51c3067ef94b','Oportunidade 31','2013-06-20 14:07:16','detailview','5esh7n84atas1bjv65gd4trq14',0,0),(985,'40de09e4-fea8-7623-86e2-51c314440c74','1','Emails','44cbf0f0-a918-445d-cfd9-51c314082afd','teste de email do crm com anexos','2013-06-20 14:42:56','save','5esh7n84atas1bjv65gd4trq14',1,0),(989,'49d461fa-1bc4-9bf7-effe-51c318087b98','1','Opportunities','b6823a9c-ec01-459b-b271-50bf6528d0c8','Fornecimento RG50','2013-06-20 14:59:50','detailview','5esh7n84atas1bjv65gd4trq14',1,0),(1000,'463a70f4-1a05-34c8-689d-51c31c709186','1','Accounts','808111f7-1792-d54e-5364-50890cdd787b','Cliente 3','2013-06-20 15:13:46','detailview','5esh7n84atas1bjv65gd4trq14',1,0),(1003,'194e8705-74e2-2a7f-2832-51c31c59401a','1','Accounts','45fe6458-2667-6455-e407-50890c5c57ed','Cliente 2','2013-06-20 15:14:00','detailview','5esh7n84atas1bjv65gd4trq14',1,0),(1008,'86afcce9-798c-dcdc-b4fe-51c31e15ec5b','1','Accounts','d2084788-6476-a47a-affc-50b4cc4ef333','Roiferro','2013-06-20 15:25:24','detailview','5esh7n84atas1bjv65gd4trq14',1,0),(1012,'69e80d6c-32e1-ba50-513e-51c330aad5fc','1','Calls','84043c8c-0da2-d9a3-13a9-51c315a0f75a','ligar para o cliente oprotunidade 31','2013-06-20 16:41:25','detailview','5esh7n84atas1bjv65gd4trq14',1,0),(1015,'53e26532-59e0-17da-5324-51c33031d393','1','Opportunities','5fcf6fa4-5d67-8199-5667-51c30de4f252','Oportunidade 31','2013-06-20 16:42:17','detailview','5esh7n84atas1bjv65gd4trq14',1,0),(1016,'b71e252b-5082-5b86-e254-51cc5c60d676','1','DocumentRevisions','33aadf51-860a-121c-3012-50bf7630ecd0','7190.pdf','2013-06-27 15:40:09','detailview','ohb95qj9cjgifjstksf4jihj32',1,0),(1018,'91fe40f1-50cb-fa8f-9d7d-51cc5d513935','1','Documents','3207d06a-3bc2-25bc-e95d-50bf769f9798','7190.pdf','2013-06-27 15:44:40','detailview','ohb95qj9cjgifjstksf4jihj32',1,0),(1019,'371a2f10-a944-7f02-2dd1-51cc5eefd758','1','Accounts','c18c8b38-85a2-6805-bcd6-50b8c9b2dcd4','João Maria Medeiros','2013-06-27 15:46:35','detailview','ohb95qj9cjgifjstksf4jihj32',1,0),(1023,'9c8774f5-d8ad-ac6f-a54a-51cc5e650f99','1','Documents','80a847d4-382c-a6b2-38b5-50b3ae5a71a2','Lista de Contactos do Sugar','2013-06-27 15:48:38','detailview','ohb95qj9cjgifjstksf4jihj32',1,0),(1025,'9630d37b-0bdb-fec6-f154-51d1722524ce','1','KReports','eb2b9625-444d-3cd3-155c-508ec7bcd339','Pagamentos ao dia:','2013-07-01 12:15:49','detailview','1pk16gbcqjq8gv3qj28hpupcj0',1,0),(1039,'f0703869-d2cc-1c23-6f2b-51e6af3a8b48','1','EmailTemplates','51752eea-3d12-7462-8a7d-51e6af3966b3','Senha do Sugar','2013-07-17 14:50:26','detailview','si7tdmr3ui5m22hcls1314pdn7',0,0),(1046,'f32f22da-9162-93cc-2a4a-51e6b001b9b5','1','EmailTemplates','f33bb9bd-43d8-b18d-61c3-51e6ae26a78f','Senha do Sugar','2013-07-17 14:54:38','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1048,'667c7f41-02bf-224a-6823-51e6b020e9ca','1','Users','9acddd3b-036e-4e38-af37-51e6ad1f4750','Utilizador Experimental','2013-07-17 14:56:42','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1049,'79d0308b-e1a7-3b3a-85b6-51e6b0a3cf95','1','Users','48319c1e-75c7-f88d-1fd0-509d004a8f73','Funcionário Utilizador','2013-07-17 14:57:03','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1051,'637b3d35-2444-b9ad-a81a-51e6b2e9df2c','1','Users','1a83d8d0-239f-1e72-5f5a-51e6b1b7fde7','Utilizador Experimental','2013-07-17 15:06:08','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1052,'961eb4de-4592-ee2b-1e9f-51e6b3200faf','1','Emails','6c07fda3-d720-1c67-0e49-51e6b06c3cc9','criar senha de utilizador','2013-07-17 15:10:44','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1066,'becca9c9-9fea-d748-9a9d-51e6b744a7f8','1','Users','9662e8dd-039b-9cd6-0711-51e6b53ec5c5','utilizador experimental','2013-07-17 15:24:41','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1067,'9d22c516-7472-ca94-a820-51e6b733f044','1','ACLRoles','479763d3-92b4-efaa-62b5-509d14cea8ac','Limitado','2013-07-17 15:24:57','detailview','si7tdmr3ui5m22hcls1314pdn7',1,0),(1073,'4e351325-2ba5-1a42-e1ab-5273d9375e00','1','KReports','ca1e33bb-aa88-8ebd-e120-508fba3c35a7','Contratos - Por Software','2013-11-01 16:40:20','editview','jegsglnnrl5env33n80pce91u1',1,0),(1076,'8d34bbd4-4a90-a76f-0bdc-52740064175d','1','DocumentRevisions','8d8434bb-5bad-4550-a44e-5273fff08577','Workflow_Screenshots.pdf','2013-11-01 19:25:01','detailview','9ehmhudub9ou295f4kqjckhvc0',1,0),(1077,'955c7604-3753-8af0-b172-527400bfbf72','1','Documents','63128f9b-dcf5-dcf6-2f1b-5273ffd4896a','Workflow_Screenshots.pdf','2013-11-01 19:25:11','detailview','9ehmhudub9ou295f4kqjckhvc0',1,0),(1078,'7a9d7685-23ef-8322-966b-5274008afd51','1','Documents','4d696794-dece-e674-e0db-50b8d4699c3b','doc','2013-11-01 19:25:23','detailview','9ehmhudub9ou295f4kqjckhvc0',1,0),(1091,'c2f85e9e-0e89-4cc4-07d2-52ab91fa1f0f','1','Users','249c93bc-2719-595f-87de-52ab8ebf14aa','Medeirosa','2013-12-13 22:58:23','detailview','ngpimkdd8prb8fm1bfbmb43ih0',1,0),(1095,'ac4fb091-c0f6-b00b-4e8e-52ab9368217b','1','Users','463f7cc0-54c6-9739-4d79-52ab931f009c','Medeiros','2013-12-13 23:10:43','detailview','d979372175a1444e6df23537a747363d',1,0),(1097,'e3c22523-cf2c-4c77-119a-52b84a4d07c7','1','Opportunities','3207c0d2-4f19-9e8c-3262-50bf846459bf','Fornecimento de P2','2013-12-23 14:38:42','detailview','as3f7ehc8bas4v5ig60vfutk45',1,0),(1099,'ec389810-994b-5348-510c-52b84af4d599','1','KReports','3bb9d560-d4fc-5853-34ea-5273d73e8029','Mapa Nov 2013','2013-12-23 14:38:53','detailview','as3f7ehc8bas4v5ig60vfutk45',1,0),(1101,'4a2a0c7e-6013-3fb8-b28b-52b84b9d0aae','1','KReports','60d7bc7c-c196-8a08-1695-50b3b0cb5514','mapa de contactados','2013-12-23 14:40:48','detailview','as3f7ehc8bas4v5ig60vfutk45',1,0),(1102,'50f89b69-4795-549c-bbb7-52b84ed5dfc0','1','Prospects','cd58aa05-7719-8775-1d63-50896e03c574','0196','2013-12-23 14:52:18','detailview','as3f7ehc8bas4v5ig60vfutk45',1,0),(1106,'b546b47c-44bd-bbe9-8fa8-52b862ffbcc8','1','DocumentRevisions','577c3b50-daa0-2600-da23-50b8d4259656','Workflow_Screenshots.pdf','2013-12-23 16:20:59','detailview','27ddl4facgdmhhq1kgu7v52th1',1,0),(1111,'8c34f006-0d66-d137-af3a-52beb5d98b04','1','KReports','2f6ccbed-5fd6-0790-9f39-52beb50dcff3','New Report','2013-12-28 11:28:59','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1115,'d55cbb75-122c-aa2e-1d15-52beb7b40dc9','1','zr2_Report','3ba50c3a-6614-e147-f1bd-52beb7f9a86b',NULL,'2013-12-28 11:34:06','editview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1118,'bd02cc14-b4e3-e82a-0025-52beb72a757d','1','zr2_ReportContainer','538fc89a-a4c8-f2dd-4d05-52beb72488f0','Teste','2013-12-28 11:34:34','detailview','f7llobdt3ji9fpu8r5au9m6ib6',0,0),(1119,'c6ecf761-4aa7-3e77-a23f-52beb7e0a085','1','zr2_ReportParameter','5fcb09c1-fedd-0ed4-4897-52beb647d9d6','Contact (User-Defined Query)','2013-12-28 11:36:26','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1122,'4e63a702-8e89-4b87-6a15-52beb8626d8b','1','zr2_ReportParameter','6d57fd88-78e4-5d28-7aee-516ece9c242a','Contact (User-Defined Query)','2013-12-28 11:38:37','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1124,'2c5be318-1c43-4d37-c41d-52beb81b4af0','1','zr2_ReportParameter','5f5da2c9-094f-efc9-cb85-52beb62383ab','Account (User-Defined Query)','2013-12-28 11:38:58','editview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1125,'346a0c94-596f-64ae-7914-52beb897b23e','1','zr2_ReportParameter','e8840196-e8bb-0090-bafe-516ecee7f805','Mapa Teste 1 (Direct Input)','2013-12-28 11:39:07','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1127,'c8539481-a906-4866-7b01-52beb9a53a76','1','zr2_QueryTemplate','323b0ebf-0266-5f47-6b78-52beb9abf44c','Todos users','2013-12-28 11:43:45','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1130,'69440298-d1e5-e77a-f7d0-52beba1aea68','1','zr2_Report','91f11396-462f-baf5-9201-52beb99c92a4','131228_114606_todos_users.csv','2013-12-28 11:46:16','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1131,'5979c6f2-1d4e-a649-e9c7-52beba93f3c1','1','zr2_ReportContainer','5ecf07cf-5cee-8fd7-cc34-52beb684cf22','Archive','2013-12-28 11:46:50','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1132,'2aeec3d7-16bf-76f2-d0bc-52beba00ef05','1','zr2_ReportTemplate','317ad122-1b98-9bc3-1098-52beba22d416','AreaChartReport','2013-12-28 11:48:49','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1134,'504006a8-7b53-0ff2-623d-52bec01e6afa','1','zr2_ReportTemplate','30804571-4644-03ed-1dba-52bebb5fc659','AreaChartReport','2013-12-28 12:13:26','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1135,'c0600ca1-ed85-0ce1-ee1f-52bec0ed6b59','1','zr2_ReportTemplate','c73675f3-eff1-6347-e561-52bec05ee7f7','AreaChartReport','2013-12-28 12:14:48','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1136,'cb4f0326-0e97-d27e-8f70-52bec0e11806','1','zr2_ReportTemplate','a76fc0d5-6e0c-b31f-0e49-52bec0ec878a','AreaChartReport','2013-12-28 12:15:50','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1137,'ea9da340-d81d-4f29-03b6-52bec1372d9b','1','zr2_ReportTemplate','c5936336-706c-6c11-e146-52bec1a1e8c7','AreaChartReport','2013-12-28 12:16:00','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1138,'9794037c-6bbd-b83a-7801-52bec16cc94d','1','zr2_ReportTemplate','547c5eed-f09c-9283-0b65-52bec15ff37f','opportunities','2013-12-28 12:19:18','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1140,'119b0e34-96ec-3420-0421-52bec505a30a','1','zr2_ReportTemplate','2d1e1343-645d-c8e1-ee62-52bec314345a','Opportunities','2013-12-28 12:34:16','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1141,'5a11873c-d9ab-b0da-c99f-52bec56532f4','1','zr2_ReportTemplate','1b98b398-63d9-8381-bc08-52bec5b9c70d','Activity','2013-12-28 12:34:27','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1142,'a942dc8d-72e8-8219-515e-52becf2e43c5','1','zr2_ReportTemplate','58c18421-0b30-c36e-a842-52becfa7050a','Opportunities','2013-12-28 13:16:15','detailview','f7llobdt3ji9fpu8r5au9m6ib6',1,0),(1144,'d38f494b-9b0c-cc25-7580-52beebd03077','1','zr2_ReportTemplate','d0ac8249-a512-551a-46cd-52beebfa8663','Opportunities','2013-12-28 15:17:20','detailview','1345c27d4518b838639bfb028d01297c',1,0),(1145,'3c94b197-73ff-c28d-c50e-52beeb7c522c','1','zr2_ReportTemplate','f20a2430-a95d-122e-03f3-52beeb7b1b3c','Opportunities','2013-12-28 15:17:27','detailview','1345c27d4518b838639bfb028d01297c',1,0),(1152,'8fad0378-31f4-ed99-bcf0-52beef73ff46','1','zr2_ReportTemplate','7c73245c-e735-2a97-98e0-52beec93c689','NewOpportunitiesSubreport','2013-12-28 15:35:35','detailview','e2820cb678ddad7e41bc700951befab9',0,0),(1155,'2805d3ea-8565-ecf3-cfd5-52bef0597d5b','1','zr2_ReportTemplate','29f0f807-0a64-d4a4-7e46-52beec01a64e','Opportunities','2013-12-28 15:37:56','detailview','a59268d64f0022206e534c4526b97346',0,0),(1156,'2b907efe-aee7-a221-e330-52bef0d0f417','1','zr2_ReportTemplate','e204fcd7-af3e-b288-6bc6-52bef0b877c2','ClosedOpportunitiesSubreport','2013-12-28 15:39:17','detailview','a59268d64f0022206e534c4526b97346',0,0),(1161,'a2c6d323-369c-dbfa-ae05-52befa2b482c','1','zr2_ReportTemplate','9a21f88e-4ac3-6573-7796-52befadc4e43','Opportunities','2013-12-28 16:22:33','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1164,'e3cdc450-76c4-38a9-b54c-52befb2e82b6','1','Notes','c244e6ce-d393-c684-f8a9-52befbc747c1','Opportunities','2013-12-28 16:26:16','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1170,'7da7f556-ca4c-65b7-5a5d-52befc2723af','1','zr2_ReportParameterLink','348fb134-b96e-ee7b-7c01-52befc465719','Contact','2013-12-28 16:29:09','editview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1177,'c343990e-fca9-7c39-da26-52befc478a82','1','zr2_ReportTemplate','2cc85b8a-c5e4-fdf6-8786-52befb961671','Opportunities','2013-12-28 16:30:40','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1178,'e04ee789-4acf-3353-0ad3-52befd89b93b','1','zr2_ReportTemplate','ac163f6f-9837-83b6-a777-52befdb29240','Opportunities','2013-12-28 16:33:13','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1182,'eaa57393-428a-2c48-45ea-52befde71f6f','1','zr2_Report','10e2fa64-33e3-7e34-344b-52befd09fd54','131228_163512_opportunities.xls','2013-12-28 16:35:21','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1188,'a778fac4-4ad3-907f-54a2-52befec0e0d6','1','Notes','7d75924b-816a-1df3-6745-52befe6f6a2d','PipelineBySalesStageChart','2013-12-28 16:40:17','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1189,'84ac9487-bccd-d08d-baa5-52beff779998','1','zr2_ReportTemplate','a2ba4e07-d113-c5e3-6f52-52befeb2ae33','PipelineBySalesStageChart','2013-12-28 16:42:16','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1190,'99649702-8a86-f75d-b7e4-52bf00273737','1','zr2_Report','7cc1db63-8f7f-3c65-c5a1-52befb057c1f','131228_162613_opportunities.pdf','2013-12-28 16:48:21','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1192,'21f2cf9b-b77d-9f73-56bd-52bf0f4d5268','1','zr2_ReportTemplate','4c45087b-7cc6-084a-9f55-52bf0f06c3f7','report1','2013-12-28 17:52:41','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1193,'8c22139b-adde-b192-b380-52bf10722f8d','1','zr2_ReportTemplate','cbb44869-bdbe-9cd2-8fa5-52bf10fef811','Oportunidades','2013-12-28 17:53:40','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1194,'e4d30c02-25da-f727-b637-52bf11ab9108','1','zr2_ReportTemplate','6f60d1b9-ce65-dc48-8fb2-52bf11a13e2d','report2','2013-12-28 17:58:36','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1199,'24c08cb9-5658-3ff1-fb37-52bf11421e1b','1','zr2_ReportTemplate','388a07cc-dd0b-6d78-45cb-52bf11b11b73','Activity','2013-12-28 18:00:23','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1203,'38789bc1-3338-d083-031d-52bf12f762ff','1','zr2_ReportTemplate','a9f904f1-4bad-c474-5394-52bf12163272','Opportunities','2013-12-28 18:03:15','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1204,'76b8032d-09b9-ee91-d598-52bf123edc7c','1','Notes','dd1758e3-5814-9237-d71c-52bf1265e21c','Opportunities','2013-12-28 18:03:29','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1205,'c123de1d-cf60-ca65-c5f3-52bf1a9baab5','1','Notes','22eba472-6b70-60b2-2221-52befdfb65a7','Opportunities','2013-12-28 18:37:42','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1206,'57fccbd3-5590-7ebf-9c3c-52bf1a8ed936','1','zr2_ReportParameter','19b76b10-f8c7-ae5c-6451-52beec17ed5a','Current User (Current User)','2013-12-28 18:37:45','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1208,'203575a3-a60f-6774-e119-52bf1a619984','1','zr2_ReportTemplate','5432fb7c-137d-a46b-dce1-52bf1affea9f','Opportunities','2013-12-28 18:38:18','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1209,'713a874f-d236-bf3d-9dc2-52bf1a5bcc29','1','zr2_ReportTemplate','c671d27a-d4e6-d7b2-8ae5-52bf1a09c3eb','Opportunities','2013-12-28 18:39:12','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1211,'7d563040-86ab-1bff-79fa-52bf1a5c0e4c','1','zr2_ReportTemplate','ce349165-e433-0f5e-7e16-52bf1ad8e0b2','Opportunities','2013-12-28 18:39:44','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1212,'ac2c9d2d-ed70-2c92-7d3c-52bf1be500e4','1','zr2_ReportTemplate','7df8520c-bf75-2900-dd45-52bf1b411787','Opportunities','2013-12-28 18:41:33','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1213,'4839cacb-d7ab-bda0-2d5b-52bf1b491301','1','zr2_ReportTemplate','933dd705-27e0-177b-9067-52bf1bb12153','Opportunities2','2013-12-28 18:43:59','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1215,'283c824d-bff8-703b-1004-52bf1e25a184','1','zr2_ReportTemplate','3853c329-dc41-cfe1-d794-52bf1e986675','Opportunities2','2013-12-28 18:55:25','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1216,'c440d11f-76e1-698e-d0aa-52bf1e75d281','1','zr2_ReportTemplate','9778e5de-251e-9612-c022-52bf1e18a400','Opportunities2','2013-12-28 18:56:37','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1217,'cce89a9b-9b24-ba01-a475-52bf2b6df9ea','1','zr2_ReportTemplate','129723f4-4b8c-b747-93d0-52bf2b1b01dd','Opportunities','2013-12-28 19:50:16','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1218,'8a710698-fba1-7808-46b6-52bf2bde8a66','1','zr2_ReportTemplate','22d50b22-553b-3047-e677-52bf2b96a630','Opportunities','2013-12-28 19:52:08','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1220,'af117c2e-c1d7-d1bc-b6f5-52c003d2a335','1','zr2_ReportTemplate','250be648-ea4c-6720-a836-52bf2caf2da5','Opportunities','2013-12-29 11:11:05','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1223,'6521d152-8ab6-0505-0f7c-52c003d7735d','1','zr2_ReportTemplate','c34aa9b0-0932-fb0a-b7ff-52c0036cdc56','test','2013-12-29 11:12:12','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1224,'e0e17500-6c4d-6c26-9706-52c0033cb5e0','1','Notes','a8ff5656-79a2-33d0-a741-52c0031c852d','test','2013-12-29 11:12:33','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1226,'af8d0934-cb7b-53bb-ae99-52c007919dfe','1','zr2_ReportTemplate','3739337d-868e-2b60-93f6-52c0077ccc3f','Graph','2013-12-29 11:30:47','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1227,'53363dd5-2809-8a36-32a3-52c00ec567b1','1','zr2_ReportTemplate','6a1e1927-1828-1a8b-1e44-52c00e8acbdd','Graph2','2013-12-29 11:58:46','detailview','1b87f9de78cae93956540472e6d0e1fe',0,0),(1230,'f38f6788-c194-2ede-65a9-52c0118838e2','1','zr2_ReportTemplate','8be0cadd-e6bc-e5a4-de28-52c01125801b','Graph','2013-12-29 12:11:32','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1231,'2122e021-4821-4e20-f8d5-52c011de1e3c','1','zr2_Report','e8e02aa9-c0fd-7427-adb5-52c011902b39','131229_121144_graph.pdf','2013-12-29 12:11:47','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1245,'77abc778-ec32-10ff-7d5f-52c01a8d7ad5','1','zr2_ReportContainer','18854863-c2d7-cdf5-a89c-52beec0bed82','Archive','2013-12-29 12:52:01','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1248,'20fdf3d4-c440-d41b-3aa0-52c01a0894f5','1','zr2_ReportTemplate','c6563c2c-eb6c-0a69-8cf2-52c0105a1ecd','Graph2','2013-12-29 12:52:14','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1250,'8576f738-1f11-4423-ff8f-52c01efac168','1','zr2_ReportParameter','19eff473-9b14-27c8-f541-52beecfc02d0','My Script (PHP Script)','2013-12-29 13:07:30','detailview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1252,'c5208bf3-87a1-23fb-77b2-52c01e07e1ee','1','zr2_ReportParameter','18d47c48-d27a-9006-8564-52beec06227e','Account (User-Defined Query)','2013-12-29 13:08:12','editview','1b87f9de78cae93956540472e6d0e1fe',1,0),(1257,'80929adb-e8a5-7922-8c91-52c04bd3169b','1','Accounts','e6092bde-dc58-d3be-fd5b-50841a790628','André Pinto','2013-12-29 16:17:59','detailview','kbdnm9sg6jeifheibks4hm63u5',1,0),(1261,'cf7016ea-0bdc-ee1c-f0e3-52c07cdf4a5c','1','AOR_Reports','ce6cb9b3-af9f-535f-d1e8-52c06f823992','Contactos','2013-12-29 19:47:02','detailview','467r53oib86h41gmm6m460ji01',1,0),(1262,'e517a250-23ca-1d42-c7e6-52c07d9adc0e','1','Accounts','a7f9517a-27f2-10e5-c246-52c07dc7ed9d','Zé','2013-12-29 19:51:06','detailview','467r53oib86h41gmm6m460ji01',1,0),(1263,'62161a68-badd-cda4-1516-52c07d6c0e79','1','jjwg_Maps','358fe75c-6042-6666-c12c-52c07d57324b','Mapa_Teste','2013-12-29 19:53:39','detailview','467r53oib86h41gmm6m460ji01',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('177c44b7-0ed3-fc4d-f965-52c07b8cfac0','upload/upgrades/module/ZuckerReports_2.1.1_module.zip','4dd16b0ad47f2cb6170fbf9a568c11e2','module','installed','2.1.1','ZuckerReports2','ZuckerReports2','ZuckerReports2','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MTp7czoxMzoicmVnZXhfbWF0Y2hlcyI7YToxOntpOjA7czozOiI2LioiO319czo0OiJuYW1lIjtzOjE0OiJadWNrZXJSZXBvcnRzMiI7czoxMToiZGVzY3JpcHRpb24iO3M6MTQ6Ilp1Y2tlclJlcG9ydHMyIjtzOjY6ImF1dGhvciI7czoxODoiWnVja2VyRnJpZW5kcyBHbWJIIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMy8wMS8wMyI7czo3OiJ2ZXJzaW9uIjtzOjU6IjIuMS4xIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjQ6Imljb24iO3M6MzI6ImluY2x1ZGUvaW1hZ2VzL1p1Y2tlclJlcG9ydHMuZ2lmIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjQ6InRydWUiO31zOjExOiJpbnN0YWxsZGVmcyI7YToxMTp7czoyOiJpZCI7czoxNDoiWnVja2VyUmVwb3J0czIiO3M6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTA6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0MzoiPGJhc2VwYXRoPi9pbmNsdWRlL2ltYWdlcy9adWNrZXJSZXBvcnRzLmdpZiI7czoyOiJ0byI7czozMjoiaW5jbHVkZS9pbWFnZXMvWnVja2VyUmVwb3J0cy5naWYiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6Mzg6IjxiYXNlcGF0aD4vbW9kdWxlcy96cjJfUmVwb3J0Q29udGFpbmVyIjtzOjI6InRvIjtzOjI3OiJtb2R1bGVzL3pyMl9SZXBvcnRDb250YWluZXIiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6Mzg6IjxiYXNlcGF0aD4vbW9kdWxlcy96cjJfUmVwb3J0UGFyYW1ldGVyIjtzOjI6InRvIjtzOjI3OiJtb2R1bGVzL3pyMl9SZXBvcnRQYXJhbWV0ZXIiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NDI6IjxiYXNlcGF0aD4vbW9kdWxlcy96cjJfUmVwb3J0UGFyYW1ldGVyTGluayI7czoyOiJ0byI7czozMToibW9kdWxlcy96cjJfUmVwb3J0UGFyYW1ldGVyTGluayI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czoyOToiPGJhc2VwYXRoPi9tb2R1bGVzL3pyMl9SZXBvcnQiO3M6MjoidG8iO3M6MTg6Im1vZHVsZXMvenIyX1JlcG9ydCI7fWk6NTthOjI6e3M6NDoiZnJvbSI7czozNzoiPGJhc2VwYXRoPi9tb2R1bGVzL3pyMl9SZXBvcnRUZW1wbGF0ZSI7czoyOiJ0byI7czoyNjoibW9kdWxlcy96cjJfUmVwb3J0VGVtcGxhdGUiO31pOjY7YToyOntzOjQ6ImZyb20iO3M6MzY6IjxiYXNlcGF0aD4vbW9kdWxlcy96cjJfUXVlcnlUZW1wbGF0ZSI7czoyOiJ0byI7czoyNToibW9kdWxlcy96cjJfUXVlcnlUZW1wbGF0ZSI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czo1NjoiPGJhc2VwYXRoPi9tb2R1bGVzL0NvbmZpZ3VyYXRvci9adWNrZXJSZXBvcnRzMkNvbmZpZy5waHAiO3M6MjoidG8iO3M6NTI6ImN1c3RvbS9tb2R1bGVzL0NvbmZpZ3VyYXRvci9adWNrZXJSZXBvcnRzMkNvbmZpZy5waHAiO31pOjg7YToyOntzOjQ6ImZyb20iO3M6NTY6IjxiYXNlcGF0aD4vbW9kdWxlcy9Db25maWd1cmF0b3IvWnVja2VyUmVwb3J0czJDb25maWcudHBsIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvWnVja2VyUmVwb3J0czJDb25maWcudHBsIjt9aTo5O2E6Mjp7czo0OiJmcm9tIjtzOjM1OiI8YmFzZXBhdGg+L3p1Y2tlcnJlcG9ydHNfc2VydmljZS92NCI7czoyOiJ0byI7czozMjoiY3VzdG9tL1p1Y2tlclJlcG9ydHMyL3NlcnZpY2UvdjQiO319czoxNDoiYWRtaW5pc3RyYXRpb24iO2E6MTp7aTowO2E6MTp7czo0OiJmcm9tIjtzOjU4OiI8YmFzZXBhdGg+L21vZHVsZXMvQWRtaW5pc3RyYXRpb24vWnVja2VyUmVwb3J0czJDb25maWcucGhwIjt9fXM6ODoibGFuZ3VhZ2UiO2E6OTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjQ5OiI8YmFzZXBhdGg+L2FwcGxpY2F0aW9uL2FwcF9zdHJpbmdzLmVuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTc6IjxiYXNlcGF0aD4vbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjU1OiI8YmFzZXBhdGg+L21vZHVsZXMvQ29uZmlndXJhdG9yL2xhbmd1YWdlL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQ29uZmlndXJhdG9yIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjU3OiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvenIyX1JlcG9ydENvbnRhaW5lci5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE5OiJ6cjJfUmVwb3J0Q29udGFpbmVyIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvenIyX1JlcG9ydC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJ6cjJfUmVwb3J0IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo1O2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvenIyX1JlcG9ydFBhcmFtZXRlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czoyMzoienIyX1JlcG9ydFBhcmFtZXRlckxpbmsiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjY7YTozOntzOjQ6ImZyb20iO3M6NTc6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy9sYW5ndWFnZS96cjJfUmVwb3J0UGFyYW1ldGVyLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTk6InpyMl9SZXBvcnRQYXJhbWV0ZXIiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjc7YTozOntzOjQ6ImZyb20iO3M6NTY6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy9sYW5ndWFnZS96cjJfUmVwb3J0VGVtcGxhdGUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxODoienIyX1JlcG9ydFRlbXBsYXRlIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo4O2E6Mzp7czo0OiJmcm9tIjtzOjU1OiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvenIyX1F1ZXJ5VGVtcGxhdGUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNzoienIyX1F1ZXJ5VGVtcGxhdGUiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo1OiJiZWFucyI7YTo2OntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxMDoienIyX1JlcG9ydCI7czo1OiJjbGFzcyI7czoxMDoienIyX1JlcG9ydCI7czo0OiJwYXRoIjtzOjMzOiJtb2R1bGVzL3pyMl9SZXBvcnQvenIyX1JlcG9ydC5waHAiO3M6MzoidGFiIjtiOjE7fWk6MTthOjQ6e3M6NjoibW9kdWxlIjtzOjE5OiJ6cjJfUmVwb3J0Q29udGFpbmVyIjtzOjU6ImNsYXNzIjtzOjE5OiJ6cjJfUmVwb3J0Q29udGFpbmVyIjtzOjQ6InBhdGgiO3M6NTE6Im1vZHVsZXMvenIyX1JlcG9ydENvbnRhaW5lci96cjJfUmVwb3J0Q29udGFpbmVyLnBocCI7czozOiJ0YWIiO2I6MDt9aToyO2E6NDp7czo2OiJtb2R1bGUiO3M6MTk6InpyMl9SZXBvcnRQYXJhbWV0ZXIiO3M6NToiY2xhc3MiO3M6MTk6InpyMl9SZXBvcnRQYXJhbWV0ZXIiO3M6NDoicGF0aCI7czo1MToibW9kdWxlcy96cjJfUmVwb3J0UGFyYW1ldGVyL3pyMl9SZXBvcnRQYXJhbWV0ZXIucGhwIjtzOjM6InRhYiI7YjowO31pOjM7YTo0OntzOjY6Im1vZHVsZSI7czoyMzoienIyX1JlcG9ydFBhcmFtZXRlckxpbmsiO3M6NToiY2xhc3MiO3M6MjM6InpyMl9SZXBvcnRQYXJhbWV0ZXJMaW5rIjtzOjQ6InBhdGgiO3M6NTk6Im1vZHVsZXMvenIyX1JlcG9ydFBhcmFtZXRlckxpbmsvenIyX1JlcG9ydFBhcmFtZXRlckxpbmsucGhwIjtzOjM6InRhYiI7YjowO31pOjQ7YTo0OntzOjY6Im1vZHVsZSI7czoxODoienIyX1JlcG9ydFRlbXBsYXRlIjtzOjU6ImNsYXNzIjtzOjE4OiJ6cjJfUmVwb3J0VGVtcGxhdGUiO3M6NDoicGF0aCI7czo0OToibW9kdWxlcy96cjJfUmVwb3J0VGVtcGxhdGUvenIyX1JlcG9ydFRlbXBsYXRlLnBocCI7czozOiJ0YWIiO2I6MDt9aTo1O2E6NDp7czo2OiJtb2R1bGUiO3M6MTc6InpyMl9RdWVyeVRlbXBsYXRlIjtzOjU6ImNsYXNzIjtzOjE3OiJ6cjJfUXVlcnlUZW1wbGF0ZSI7czo0OiJwYXRoIjtzOjQ3OiJtb2R1bGVzL3pyMl9RdWVyeVRlbXBsYXRlL3pyMl9RdWVyeVRlbXBsYXRlLnBocCI7czozOiJ0YWIiO2I6MDt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6NDp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODE6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL3pyMl9yZXBvcnRjb250YWluZXJfenIyX3JlcG9ydE1ldGFEYXRhLnBocCI7fWk6MTthOjE6e3M6OToibWV0YV9kYXRhIjtzOjk0OiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy96cjJfcmVwb3J0cGFyYW1ldGVybGlua196cjJfcmVwb3J0cGFyYW1ldGVyTWV0YURhdGEucGhwIjt9aToyO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6OTM6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL3pyMl9yZXBvcnRwYXJhbWV0ZXJsaW5rX3pyMl9yZXBvcnR0ZW1wbGF0ZU1ldGFEYXRhLnBocCI7fWk6MzthOjE6e3M6OToibWV0YV9kYXRhIjtzOjkyOiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy96cjJfcmVwb3J0cGFyYW1ldGVybGlua196cjJfcXVlcnl0ZW1wbGF0ZU1ldGFEYXRhLnBocCI7fX1zOjg6ImRhc2hsZXRzIjthOjA6e31zOjQ6Im1lbnUiO2E6MTM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoyMzoiPGJhc2VwYXRoPi9tZW51LmV4dC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjIzOiI8YmFzZXBhdGg+L21lbnUuZXh0LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQ29udGFjdHMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MjM6IjxiYXNlcGF0aD4vbWVudS5leHQucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJMZWFkcyI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czoyMzoiPGJhc2VwYXRoPi9tZW51LmV4dC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkNhc2VzIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjIzOiI8YmFzZXBhdGg+L21lbnUuZXh0LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6MjM6IjxiYXNlcGF0aD4vbWVudS5leHQucGhwIjtzOjk6InRvX21vZHVsZSI7czo3OiJQcm9qZWN0Ijt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjIzOiI8YmFzZXBhdGg+L21lbnUuZXh0LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6IlByb2plY3RUYXNrIjt9aTo3O2E6Mjp7czo0OiJmcm9tIjtzOjIzOiI8YmFzZXBhdGg+L21lbnUuZXh0LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NjoiUXVvdGVzIjt9aTo4O2E6Mjp7czo0OiJmcm9tIjtzOjIzOiI8YmFzZXBhdGg+L21lbnUuZXh0LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NDoiQnVncyI7fWk6OTthOjI6e3M6NDoiZnJvbSI7czoyMzoiPGJhc2VwYXRoPi9tZW51LmV4dC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlRhc2tzIjt9aToxMDthOjI6e3M6NDoiZnJvbSI7czoyMzoiPGJhc2VwYXRoPi9tZW51LmV4dC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjY6IkVtYWlscyI7fWk6MTE7YToyOntzOjQ6ImZyb20iO3M6MjM6IjxiYXNlcGF0aD4vbWVudS5leHQucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7fWk6MTI7YToyOntzOjQ6ImZyb20iO3M6MjM6IjxiYXNlcGF0aD4vbWVudS5leHQucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJNZWV0aW5ncyI7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjQ6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5MDoiPGJhc2VwYXRoPi9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvenIyX3JlcG9ydGNvbnRhaW5lcl96cjJfcmVwb3J0X3pyMl9SZXBvcnRDb250YWluZXIucGhwIjtzOjk6InRvX21vZHVsZSI7czoxOToienIyX1JlcG9ydENvbnRhaW5lciI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxMDM6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL3pyMl9yZXBvcnRwYXJhbWV0ZXJsaW5rX3pyMl9yZXBvcnRwYXJhbWV0ZXJfenIyX1JlcG9ydFBhcmFtZXRlci5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE5OiJ6cjJfUmVwb3J0UGFyYW1ldGVyIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjEwMToiPGJhc2VwYXRoPi9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvenIyX3JlcG9ydHBhcmFtZXRlcmxpbmtfenIyX3JlcG9ydHRlbXBsYXRlX3pyMl9SZXBvcnRUZW1wbGF0ZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE4OiJ6cjJfUmVwb3J0VGVtcGxhdGUiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6OTk6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL3pyMl9yZXBvcnRwYXJhbWV0ZXJsaW5rX3pyMl9xdWVyeXRlbXBsYXRlX3pyMl9RdWVyeVRlbXBsYXRlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTc6InpyMl9RdWVyeVRlbXBsYXRlIjt9fXM6NzoidmFyZGVmcyI7YTo4OntpOjA7YToyOntzOjQ6ImZyb20iO3M6Nzg6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy92YXJkZWZzL3pyMl9yZXBvcnRjb250YWluZXJfenIyX3JlcG9ydF96cjJfUmVwb3J0LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6InpyMl9SZXBvcnQiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6ODc6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy92YXJkZWZzL3pyMl9yZXBvcnRjb250YWluZXJfenIyX3JlcG9ydF96cjJfUmVwb3J0Q29udGFpbmVyLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTk6InpyMl9SZXBvcnRDb250YWluZXIiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTA0OiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvdmFyZGVmcy96cjJfcmVwb3J0cGFyYW1ldGVybGlua196cjJfcmVwb3J0cGFyYW1ldGVyX3pyMl9SZXBvcnRQYXJhbWV0ZXJMaW5rLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MjM6InpyMl9SZXBvcnRQYXJhbWV0ZXJMaW5rIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjEwMDoiPGJhc2VwYXRoPi9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvenIyX3JlcG9ydHBhcmFtZXRlcmxpbmtfenIyX3JlcG9ydHBhcmFtZXRlcl96cjJfUmVwb3J0UGFyYW1ldGVyLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTk6InpyMl9SZXBvcnRQYXJhbWV0ZXIiO31pOjQ7YToyOntzOjQ6ImZyb20iO3M6MTAzOiI8YmFzZXBhdGg+L3JlbGF0aW9uc2hpcHMvdmFyZGVmcy96cjJfcmVwb3J0cGFyYW1ldGVybGlua196cjJfcmVwb3J0dGVtcGxhdGVfenIyX1JlcG9ydFBhcmFtZXRlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czoyMzoienIyX1JlcG9ydFBhcmFtZXRlckxpbmsiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6OTg6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy92YXJkZWZzL3pyMl9yZXBvcnRwYXJhbWV0ZXJsaW5rX3pyMl9yZXBvcnR0ZW1wbGF0ZV96cjJfUmVwb3J0VGVtcGxhdGUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxODoienIyX1JlcG9ydFRlbXBsYXRlIjt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjEwMjoiPGJhc2VwYXRoPi9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvenIyX3JlcG9ydHBhcmFtZXRlcmxpbmtfenIyX3F1ZXJ5dGVtcGxhdGVfenIyX1JlcG9ydFBhcmFtZXRlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czoyMzoienIyX1JlcG9ydFBhcmFtZXRlckxpbmsiO31pOjc7YToyOntzOjQ6ImZyb20iO3M6OTY6IjxiYXNlcGF0aD4vcmVsYXRpb25zaGlwcy92YXJkZWZzL3pyMl9yZXBvcnRwYXJhbWV0ZXJsaW5rX3pyMl9xdWVyeXRlbXBsYXRlX3pyMl9RdWVyeVRlbXBsYXRlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTc6InpyMl9RdWVyeVRlbXBsYXRlIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2013-12-29 19:44:13',1),('23441ee9-091f-b559-2365-52c066a87e1a','upload/upgrades/langpack/pt_PT.61.zip','8b63791a5519fab74da206dfd1ac0789','langpack','installed','610-17DEZ2010','Tradução para Português do SugarCRM','Tradução do SugarCRM para a versão 6.1',NULL,'YTozOntzOjg6Im1hbmlmZXN0IjthOjExOntpOjA7YToyOntzOjEzOiJleGFjdF9tYXRjaGVzIjthOjA6e31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjI6e2k6MDtzOjc6IjZcLjFcLjAiO2k6MTtzOjc6IjZcLjBcLioiO319czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo0OiJuYW1lIjtzOjM4OiJUcmFkdcOnw6NvIHBhcmEgUG9ydHVndcOqcyBkbyBTdWdhckNSTSI7czoyOiJpZCI7czo2OiJEUklfUFQiO3M6MTY6ImxhbmdfZmlsZV9zdWZmaXgiO3M6NToicHRfUFQiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjQxOiJUcmFkdcOnw6NvIGRvIFN1Z2FyQ1JNIHBhcmEgYSB2ZXJzw6NvIDYuMSI7czo2OiJhdXRob3IiO3M6MTA6Ind3dy5kcmkucHQiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDEwLzEyLzE3IjtzOjc6InZlcnNpb24iO3M6MTM6IjYxMC0xN0RFWjIwMTAiO3M6NDoidHlwZSI7czo4OiJsYW5ncGFjayI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO31zOjExOiJpbnN0YWxsZGVmcyI7czowOiIiO3M6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2013-12-29 18:12:43',1),('ca29412f-e784-7438-65dc-52c07c56cba4','upload/upgrades/module/ZuckerReports_Jasper-4.0.0_module_corrected.zip','01b4fa37637230f8b90ddc2ea63e2362','module','installed','2.0','ZuckerReports2 - Jasper-4.0.0','ZuckerReports2 - Jasper-4.0.0 Libraries','ZuckerReports2Jasper400','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MTp7czoxMzoicmVnZXhfbWF0Y2hlcyI7YToxOntpOjA7czozOiI2LioiO319czo0OiJuYW1lIjtzOjI5OiJadWNrZXJSZXBvcnRzMiAtIEphc3Blci00LjAuMCI7czoxMToiZGVzY3JpcHRpb24iO3M6Mzk6Ilp1Y2tlclJlcG9ydHMyIC0gSmFzcGVyLTQuMC4wIExpYnJhcmllcyI7czo2OiJhdXRob3IiO3M6MTg6Ilp1Y2tlckZyaWVuZHMgR21iSCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTIvMDYvMTQiO3M6NzoidmVyc2lvbiI7czozOiIyLjAiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NDoiaWNvbiI7czozMjoiaW5jbHVkZS9pbWFnZXMvWnVja2VyUmVwb3J0cy5naWYiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6NDoidHJ1ZSI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjI6e3M6MjoiaWQiO3M6MjM6Ilp1Y2tlclJlcG9ydHMySmFzcGVyNDAwIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2phc3Blci8iO3M6MjoidG8iO3M6MjY6Im1vZHVsZXMvenIyX1JlcG9ydC9qYXNwZXIvIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2013-12-29 19:49:55',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('1057625b-0ae4-07ba-19cb-508908c5cdb0','global',0,'2012-10-25 09:36:41','2012-10-25 09:40:11','c7c7247c-66e2-2ccf-f5e5-508908a5d1d0','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiIxMDBmOWM0Ni0yMjc1LWZhYWEtNzNmZi01MDg5MDhlMDllZjIiO30='),('12760085-153f-18c2-04ad-52c071986441','Accounts2_ACCOUNT',0,'2013-12-29 19:03:04','2013-12-29 19:03:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('13d41e20-4639-bb59-35b0-508949c59b78','ProspectLists2_PROSPECTLIST',0,'2012-10-25 14:17:09','2012-10-25 14:17:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('17744a66-68c3-8a90-4221-52c03f1bfc92','ETag',0,'2013-12-29 15:28:56','2013-12-29 19:49:55','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NTt9'),('179b4ee7-c466-50d2-e6b3-52c06600f5f2','Home',0,'2013-12-29 18:12:18','2013-12-29 19:39:46','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImQ4NjAwMThkLTE5ZjEtMDk0YS1kZmM4LTUyYzA2NjM0YjQ2OCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjQyZDcwMzdjLWVhMjMtM2QzOC05Mzg2LTUyYzA2Njg1M2EzMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjUyYzMwM2M1LWU1OTgtMmNhZC00ZDgwLTUyYzA2NjU4YjBhOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjVlNmUwNmIwLTFhYWYtMzJmMi0yYWExLTUyYzA2Njk5OGVjYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmUxYTAwYjUtMjcxMy0wOGIzLTQzNDQtNTJjMDY2YWExZTE2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODA0ZjBmNmQtNGJjNi05YzJiLTMyMDctNTJjMDY2YTRjMWIzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNDJmYmU0OWMtMDg1NC05OTBjLTcyMjktNTJjMDc4N2UyYjNkIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7fXM6MzY6ImYwOTQyZjExLWY4ZDItZTgzZi0zOWIzLTUyYzA3YWU1MWJiNCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlDb250YWN0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkNvbnRhY3RzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9Db250YWN0cy9EYXNobGV0cy9NeUNvbnRhY3RzRGFzaGxldC9NeUNvbnRhY3RzRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NDp7aToyO3M6MzY6ImYwOTQyZjExLWY4ZDItZTgzZi0zOWIzLTUyYzA3YWU1MWJiNCI7aTozO3M6MzY6IjUyYzMwM2M1LWU1OTgtMmNhZC00ZDgwLTUyYzA2NjU4YjBhOSI7aTo0O3M6MzY6IjVlNmUwNmIwLTFhYWYtMzJmMi0yYWExLTUyYzA2Njk5OGVjYyI7aTo1O3M6MzY6IjZlMWEwMGI1LTI3MTMtMDhiMy00MzQ0LTUyYzA2NmFhMWUxNiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YTozOntpOjA7czozNjoiNDJkNzAzN2MtZWEyMy0zZDM4LTkzODYtNTJjMDY2ODUzYTMxIjtpOjE7czozNjoiODA0ZjBmNmQtNGJjNi05YzJiLTMyMDctNTJjMDY2YTRjMWIzIjtpOjI7czozNjoiZDg2MDAxOGQtMTlmMS0wOTRhLWRmYzgtNTJjMDY2MzRiNDY4Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('18834ba1-b77f-25f4-77b1-52c066bc66bc','Home2_CALL',0,'2013-12-29 18:12:18','2013-12-29 18:12:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('19392f79-dadc-3813-81f0-52c066a8b278','Home2_MEETING',0,'2013-12-29 18:12:18','2013-12-29 18:12:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('19e01c39-f48b-e955-0b87-52c0661d7e37','Home2_OPPORTUNITY',0,'2013-12-29 18:12:18','2013-12-29 20:21:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxNToiYW1vdW50X3VzZG9sbGFyIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),('1a81e389-b6ad-190b-53f0-52c0661431be','Home2_ACCOUNT',0,'2013-12-29 18:12:18','2013-12-29 18:12:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1b2e9833-fbfc-6880-0eda-52c066d0eca7','Home2_LEAD',0,'2013-12-29 18:12:18','2013-12-29 18:12:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1bd71270-3359-7f70-223c-52c0668e823d','Home2_SUGARFEED',0,'2013-12-29 18:12:18','2013-12-29 18:12:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1e389354-ad7d-0e46-054e-508418740d48','Home2_ACCOUNT',0,'2012-10-21 15:42:55','2012-10-21 15:42:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1ef7fe4a-a84c-64bd-ca3e-508907e2b8a3','Users2_USER',0,'2012-10-25 09:34:47','2012-10-25 09:34:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('22506cee-9509-18a4-c5ba-51e6b659db93','ETag',0,'2013-07-17 15:21:47','2013-07-17 15:22:30','9662e8dd-039b-9cd6-0711-51e6b53ec5c5','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('2363a71d-7865-7e03-12b3-50854f7281c1','Cases2_CASE',0,'2012-10-22 13:51:12','2012-10-22 13:51:12','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('24d514a5-d33e-8b4f-146d-51cc5e93902e','Documents',0,'2013-06-27 15:48:08','2013-06-27 15:48:08','1','YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),('25f9071f-b809-801a-3072-50891a51434e','Emails',0,'2012-10-25 10:55:36','2013-07-17 14:54:07','1','YTozOntzOjE1OiJlbWFpbDJQcmVmbGlnaHQiO2I6MTtzOjExOiJmb2N1c0ZvbGRlciI7czoxMDU6ImE6Mjp7czo0OiJpZUlkIjtzOjM2OiI5MTU4ZTU4MC01MjdhLWIzMjEtZmFiMi01MDg5MWE0Mzk2NTQiO3M6NjoiZm9sZGVyIjtzOjIzOiJTVUdBUi5PcyBNZXVzIFJhc2N1bmhvcyI7fSI7czoxMzoiZW1haWxTZXR0aW5ncyI7YTo1OntzOjE4OiJlbWFpbENoZWNrSW50ZXJ2YWwiO3M6MToiNSI7czoxODoiYWx3YXlzU2F2ZU91dGJvdW5kIjtzOjE6IjEiO3M6MTM6InNlbmRQbGFpblRleHQiO3M6MToiMCI7czoxMzoic2hvd051bUluTGlzdCI7czoyOiIyMCI7czoyMjoiZGVmYXVsdE91dGJvdW5kQ2hhcnNldCI7czo1OiJVVEYtOCI7fX0='),('261567d3-3efb-2ed2-b2e8-52c07a3411c7','Home2_JJWG_MAPS',0,'2013-12-29 19:39:18','2013-12-29 19:39:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('26d08530-64d1-27a1-f85c-52c045e73eda','FP_Event_Locations2_FP_EVENT_LOCATIONS',0,'2013-12-29 15:53:12','2013-12-29 15:53:12','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2759b50d-82ec-25da-37f2-52ab8e7f31d3','global',0,'2013-12-13 22:46:28','2013-12-13 22:58:43','249c93bc-2719-595f-87de-52ab8ebf14aa','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjY6Im1haWx0byI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiMjcyZTI1ODgtYjkwOS05YTEwLWU0NmUtNTJhYjhlODExZTY4Ijt9'),('29475e22-f567-6880-29be-508fcfd1ccc9','Home2_CONTACT',0,'2012-10-30 13:00:22','2012-10-30 13:00:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2bdeb672-f9d7-a725-1eba-52c044aa9d9e','Employees2_EMPLOYEE',0,'2013-12-29 15:50:10','2013-12-29 15:50:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2e2053bc-0501-13bc-17d6-52c012b28a79','Home',1,'2013-12-29 12:16:44','2013-12-29 12:18:05','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImQwMjk2ODkxLTcxNGMtNDg0NS0wNDIxLTUyYzAxMjM1ZjE5MCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImQwOTczNjc2LTg3YTctMzVkZi02MjY1LTUyYzAxMjkxZjA1NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImQxMTRmYmFhLWEyOTktYmZjOS02ZDYyLTUyYzAxMmQ2YjY5YyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImQxNzAyMzA3LWUyNmMtZWY3Mi02MTViLTUyYzAxMjBiZjE3OCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZDFlYTY1Y2UtMGQ4YS1iZGMxLTljMGEtNTJjMDEyZGQ0YjA5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZDI3OTdjZGQtNzJmNC0zZjg1LWU0NjEtNTJjMDEyMWVhZjczIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjY6e2k6MDtzOjM2OiJkMTE0ZmJhYS1hMjk5LWJmYzktNmQ2Mi01MmMwMTJkNmI2OWMiO2k6MTtzOjM2OiJkMDI5Njg5MS03MTRjLTQ4NDUtMDQyMS01MmMwMTIzNWYxOTAiO2k6MjtzOjM2OiJkMTcwMjMwNy1lMjZjLWVmNzItNjE1Yi01MmMwMTIwYmYxNzgiO2k6MztzOjM2OiJkMWVhNjVjZS0wZDhhLWJkYzEtOWMwYS01MmMwMTJkZDRiMDkiO2k6NDtzOjM2OiJkMjc5N2NkZC03MmY0LTNmODUtZTQ2MS01MmMwMTIxZWFmNzMiO2k6NTtzOjM2OiJkMDk3MzY3Ni04N2E3LTM1ZGYtNjI2NS01MmMwMTI5MWYwNTciO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MDoiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('2f909242-f697-7c1f-7e09-52c065c4e864','global',0,'2013-12-29 18:10:56','2013-12-29 20:14:55','1','YTozMDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjJmNzVlNDczLTFkODYtYWFiMS02MjQ2LTUyYzA2NTYxMjBhNyI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czozOiJmIGwiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO31zOjEwOiJqandnX01hcHNRIjthOjEwOntzOjY6Im1vZHVsZSI7czo5OiJqandnX01hcHMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7czo3OiJvcmRlckJ5IjtzOjA6IiI7czo5OiJzb3J0T3JkZXIiO3M6MDoiIjtzOjEwOiJuYW1lX2Jhc2ljIjtzOjA6IiI7czoxNzoibW9kdWxlX3R5cGVfYmFzaWMiO2E6MTp7aTowO3M6ODoiQWNjb3VudHMiO31zOjIzOiJjdXJyZW50X3VzZXJfb25seV9iYXNpYyI7czoxOiIwIjtzOjY6ImJ1dHRvbiI7czo2OiJTZWFyY2giO31zOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6IjJhZTEzMTRjLThjYTUtMmNmOC1kMjAwLTUyYzA3ODg4NDJkNyI7czoxMjoiZ2xvYmFsU2VhcmNoIjthOjU6e3M6ODoiQWNjb3VudHMiO3M6NzoiQWNjb3VudCI7czo1OiJDYXNlcyI7czo1OiJhQ2FzZSI7czo4OiJDb250YWN0cyI7czo3OiJDb250YWN0IjtzOjk6IkRvY3VtZW50cyI7czo4OiJEb2N1bWVudCI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiT3Bwb3J0dW5pdHkiO319'),('314edd5b-f75e-a0cb-9ae1-50892b987c63','ETag',0,'2012-10-25 12:05:45','2012-10-25 12:06:08','32675a41-2ecc-004a-120b-50892777c7b7','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('31cccef6-d0ff-dde4-d7fb-50841a5dc2ba','Accounts2_ACCOUNT',0,'2012-10-21 15:52:39','2013-04-09 19:22:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),('32450ad2-0360-4652-a877-52c071794ada','Employees2_EMPLOYEE',0,'2013-12-29 18:59:15','2013-12-29 18:59:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('352877d8-4636-1edc-9eca-508fc59a8405','Documents2_DOCUMENT',0,'2012-10-30 12:18:00','2013-06-27 15:48:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMzoiZG9jdW1lbnRfbmFtZSI7czo5OiJzb3J0T3JkZXIiO3M6MDoiIjt9fQ=='),('360c437a-09a7-9bf9-0602-508965247efb','Prospects2_PROSPECT',0,'2012-10-25 16:16:23','2012-10-25 16:16:23','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('368b78bf-e7bb-9a17-3e8c-50bf719f5d0c','Home2_PROJECTTASK',0,'2012-12-05 16:08:27','2012-12-05 16:08:27','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('36fa6a76-5fb7-272d-d2b1-508949fce864','Connectors',0,'2012-10-25 14:13:55','2012-10-25 14:13:55','1','YToxOntzOjE1OiJhbGxvd0luc2lkZVZpZXciO2k6MTt9'),('3786f200-4c8d-4d85-c074-516ece5f5414','zr2_ReportParameterLink2_ZR2_REPORTPARAMETERLINK',0,'2013-04-17 16:32:54','2013-04-17 16:32:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('385fed65-24e3-b716-c5b8-52c03feca0a5','global',0,'2013-12-29 15:26:02','2013-12-29 16:16:12','1','YTozNzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjM4NGJjMThlLWJhN2UtNGUxMi03ZWEyLTUyYzAzZjM3MTFkYyI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6NDoiMTgwMCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6MzoiZiBsIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6ODoiY3Jvc3NpbmYiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fXM6MTI6InVzZXJQcml2R3VpZCI7czozNjoiODc0NzI2ZjAtMjkyZC1jMzkxLWI4ZTEtNTJjMDQ1ZjVjOTE1IjtzOjEyOiJnbG9iYWxTZWFyY2giO2E6NTp7czo4OiJBY2NvdW50cyI7czo3OiJBY2NvdW50IjtzOjU6IkNhc2VzIjtzOjU6ImFDYXNlIjtzOjg6IkNvbnRhY3RzIjtzOjc6IkNvbnRhY3QiO3M6OToiRG9jdW1lbnRzIjtzOjg6IkRvY3VtZW50IjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJPcHBvcnR1bml0eSI7fX0='),('3dc00c45-6438-015c-5e53-50b4a4dff6fb','Home2_DOCUMENT',0,'2012-11-27 11:32:10','2012-11-27 11:32:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4034407f-44ee-4068-e96e-50892dfe63be','EmailTemplates2_EMAILTEMPLATE',0,'2012-10-25 12:14:02','2012-10-25 12:14:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('47248267-a0b3-ad47-ac45-52c040285423','jjwg_Areas2_JJWG_AREAS',0,'2013-12-29 15:34:09','2013-12-29 15:34:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('475eeb9f-a6c6-bd8a-1cbb-516ece0a2f13','zr2_ReportTemplate2_ZR2_REPORTTEMPLATE',0,'2013-04-17 16:33:18','2013-04-17 16:33:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('48701262-fbd1-f90a-03cc-52ab93bc7cf5','global',0,'2013-12-13 23:09:09','2013-12-13 23:10:49','463f7cc0-54c6-9739-4d79-52ab931f009c','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjY6Im1haWx0byI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiMjcyZTI1ODgtYjkwOS05YTEwLWU0NmUtNTJhYjhlODExZTY4Ijt9'),('4cddeb07-80cf-31c1-4b73-516ece32d1a0','zr2_ReportParameter2_ZR2_REPORTPARAMETER',0,'2013-04-17 16:33:49','2013-04-17 16:33:49','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4d200720-6697-0b44-74ad-50841792a677','ETag',0,'2012-10-21 15:42:54','2013-12-29 13:58:53','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDQ7fQ=='),('4dc483a6-aae6-41a2-7ace-52c044b9efa6','Documents2_DOCUMENT',0,'2013-12-29 15:49:37','2013-12-29 15:49:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('552f042e-37b6-a6fa-5da8-52ab93f2975b','ETag',0,'2013-12-13 23:10:49','2013-12-13 23:10:49','463f7cc0-54c6-9739-4d79-52ab931f009c','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('5656ea1b-17a8-3e23-1217-516ecf128f11','zr2_Report2_ZR2_REPORT',0,'2013-04-17 16:34:44','2013-04-17 16:34:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('58d5686a-623f-9e32-5a49-51e6b11926a2','global',0,'2013-07-17 14:58:31','2013-07-17 15:06:13','1a83d8d0-239f-1e72-5f5a-51e6b1b7fde7','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjY6Im1haWx0byI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiNTg4YjE4NDYtYjg1ZS0zZjQ1LTExYTEtNTFlNmIxOGM4YzUzIjt9'),('59500fe4-631e-191e-6c6e-508fb6a97aba','Import2_PROSPECT',0,'2012-10-30 11:14:21','2012-10-30 11:14:21','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('658bccd5-c94f-5c06-d7bd-52c048111fbe','Opportunities2_OPPORTUNITY',0,'2013-12-29 16:05:52','2013-12-29 16:05:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6b499f42-4e85-a433-68ab-52c041415f3c','jjwg_Maps2_JJWG_MAPS',0,'2013-12-29 15:37:27','2013-12-29 15:37:27','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6c3c1d2e-2b28-c1aa-ed76-52c06f76f3de','jjwg_Maps2_JJWG_MAPS',0,'2013-12-29 18:53:40','2013-12-29 18:53:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6f8f5f93-09bc-b6c8-8ffc-52c0729320b5','Notes2_NOTE',0,'2013-12-29 19:03:39','2013-12-29 19:03:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('70083574-9df4-7337-f228-5084186d44a1','Home2_LEAD',0,'2012-10-21 15:42:55','2012-10-21 15:42:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('726709fb-b6b9-06d4-4c4c-50895c5895d1','Campaigns2_CAMPAIGN',0,'2012-10-25 15:36:00','2012-10-25 15:36:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('73726057-0701-228b-9f20-508fb488fbe0','import',0,'2012-10-30 11:04:48','2012-10-30 11:16:21','1','YToxOntzOjEyOiJmaWVsZF92YWx1ZXMiO3M6NDU3OiJ7ImN1c3RvbV9kZWxpbWl0ZXIiOiIsIiwiY3VzdG9tX2VuY2xvc3VyZSI6IiZxdW90OyIsImltcG9ydF90eXBlIjoiaW1wb3J0Iiwic291cmNlIjoiY3N2Iiwic291cmNlX2lkIjoiMjcyYzA5ODItMzEzNy1jZDk3LTk2MjctNTA4ZmI2ZmViOWNhIiwiaW1wb3J0X21vZHVsZSI6IlByb3NwZWN0cyIsImhhc19oZWFkZXIiOiJvbiIsImltcG9ydGxvY2FsZV9jaGFyc2V0IjoiVVRGLTgiLCJpbXBvcnRsb2NhbGVfZGF0ZWZvcm1hdCI6IlktbS1kIiwiaW1wb3J0bG9jYWxlX3RpbWVmb3JtYXQiOiJIOmkiLCJpbXBvcnRsb2NhbGVfdGltZXpvbmUiOiJVVEMiLCJpbXBvcnRsb2NhbGVfY3VycmVuY3kiOiItOTkiLCJpbXBvcnRsb2NhbGVfZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiOiIyIiwiaW1wb3J0bG9jYWxlX251bV9ncnBfc2VwIjoiLCIsImltcG9ydGxvY2FsZV9kZWNfc2VwIjoiLiJ9Ijt9'),('74697c5e-a3e8-7746-de0a-5089067c0dba','EmailMan2_EMAILMAN',0,'2012-10-25 09:31:12','2012-10-25 09:31:12','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('807c13ff-533e-041b-aa49-52c0484b79f0','Tasks2_TASK',0,'2013-12-29 16:06:05','2013-12-29 16:06:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('81fa78a0-c107-9414-080e-516ece863cdf','zr2_QueryTemplate2_ZR2_QUERYTEMPLATE',0,'2013-04-17 16:33:40','2013-04-17 16:33:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8378a21a-2a22-8451-fa2c-50841786ce47','global',0,'2012-10-21 15:40:03','2013-12-29 12:45:27','1','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjgzM2NiNDE0LTU1ZmUtYTk1YS1lNGI5LTUwODQxNzY0MGY4YyI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6NDoiMTgwMCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NToiVG9kb3MiO3M6OToiS1JlcG9ydHNRIjthOjc6e3M6NjoibW9kdWxlIjtzOjg6IktSZXBvcnRzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTA6Im5hbWVfYmFzaWMiO3M6MDoiIjtzOjE5OiJyZXBvcnRfbW9kdWxlX2Jhc2ljIjthOjYwOntpOjA7czo4OiJBQ0xSb2xlcyI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjEwOiJBY3Rpdml0aWVzIjtpOjM7czoxNDoiQWRtaW5pc3RyYXRpb24iO2k6NDtzOjQ6IkJ1Z3MiO2k6NTtzOjg6IkNhbGVuZGFyIjtpOjY7czo1OiJDYWxscyI7aTo3O3M6MTE6IkNhbXBhaWduTG9nIjtpOjg7czo5OiJDYW1wYWlnbnMiO2k6OTtzOjU6IkNhc2VzIjtpOjEwO3M6MTA6IkNvbm5lY3RvcnMiO2k6MTE7czoxMDoiQ3VycmVuY2llcyI7aToxMjtzOjE3OiJEb2N1bWVudFJldmlzaW9ucyI7aToxMztzOjk6IkRvY3VtZW50cyI7aToxNDtzOjE0OiJFbWFpbEFkZHJlc3NlcyI7aToxNTtzOjE0OiJFbWFpbE1hcmtldGluZyI7aToxNjtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7aToxNztzOjY6IkVtYWlscyI7aToxODtzOjk6IkVtcGxveWVlcyI7aToxOTtzOjM6IkZBUSI7aToyMDtzOjU6IkZlZWRzIjtpOjIxO3M6NDoiSG9tZSI7aToyMjtzOjEyOiJJbmJvdW5kRW1haWwiO2k6MjM7czoxMToiS0JEb2N1bWVudHMiO2k6MjQ7czo1OiJMZWFkcyI7aToyNTtzOjc6IkxpYnJhcnkiO2k6MjY7czo4OiJNZWV0aW5ncyI7aToyNztzOjExOiJOZXdzbGV0dGVycyI7aToyODtzOjU6Ik5vdGVzIjtpOjI5O3M6MTM6Ik5vdGlmaWNhdGlvbnMiO2k6MzA7czo5OiJPQXV0aEtleXMiO2k6MzE7czoxMToiT0F1dGhUb2tlbnMiO2k6MzI7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTozMztzOjc6IlByb2plY3QiO2k6MzQ7czoxMToiUHJvamVjdFRhc2siO2k6MzU7czoxMzoiUHJvc3BlY3RMaXN0cyI7aTozNjtzOjk6IlByb3NwZWN0cyI7aTozNztzOjY6IlF1ZXVlcyI7aTozODtzOjg6IlJlbGVhc2VzIjtpOjM5O3M6NToiUm9sZXMiO2k6NDA7czo0OiJTTklQIjtpOjQxO3M6MTE6IlNhdmVkU2VhcmNoIjtpOjQyO3M6MTA6IlNjaGVkdWxlcnMiO2k6NDM7czoxNDoiU3VnYXJGYXZvcml0ZXMiO2k6NDQ7czo5OiJTdWdhckZlZWQiO2k6NDU7czoxNToiU3VnYXJfRmF2b3JpdGVzIjtpOjQ2O3M6NDoiU3luYyI7aTo0NztzOjU6IlRhc2tzIjtpOjQ4O3M6MTE6IlRpbWVQZXJpb2RzIjtpOjQ5O3M6MTI6IlRyYWNrZXJQZXJmcyI7aTo1MDtzOjE0OiJUcmFja2VyUXVlcmllcyI7aTo1MTtzOjE1OiJUcmFja2VyU2Vzc2lvbnMiO2k6NTI7czo4OiJUcmFja2VycyI7aTo1MztzOjEzOiJVcGdyYWRlV2l6YXJkIjtpOjU0O3M6NToiVXNlcnMiO2k6NTU7czo3OiJpRnJhbWVzIjtpOjU2O3M6ODoiQ29udGFjdHMiO2k6NTc7czo4OiJUYXhSYXRlcyI7aTo1ODtzOjEzOiJDb250cmFjdFR5cGVzIjtpOjU5O3M6ODoiS1JlcG9ydHMiO31zOjY6ImJ1dHRvbiI7czo5OiJQZXNxdWlzYXIiO31zOjE0OiJPcHBvcnR1bml0aWVzUSI7YTo1OntzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjtzOjExOiJsZWFkX3NvdXJjZSI7czo4OiJ0ZWxlZm9uZSI7fXM6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjM2OiJlNmIyNTFmZC0zMjNkLWY1OWQtMGFlMS01MDg5MWFiMDE4MzkiO3M6MTc6InNpZ25hdHVyZV9wcmVwZW5kIjtiOjA7czo0OiJmZG93IjtzOjE6IjAiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjI1OiJSZWxlYXNlc19SRUxFQVNFX09SREVSX0JZIjtzOjEwOiJsaXN0X29yZGVyIjtzOjM0OiJJbmJvdW5kRW1haWxfSW5ib3VuZEVtYWlsX09SREVSX0JZIjtzOjEyOiJkYXRlX2VudGVyZWQiO3M6MzI6IkVtYWlsVGVtcGxhdGVzX0RPQ1VNRU5UX09SREVSX0JZIjtzOjEzOiJkb2N1bWVudF9uYW1lIjtzOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6ImRjZDE2YWJhLTI0NzEtNzc1Zi03N2Y0LTUwYTRkMWY2NGIzZSI7czoyNzoiRG9jdW1lbnRzX0RPQ1VNRU5UX09SREVSX0JZIjtzOjEzOiJkb2N1bWVudF9uYW1lIjtzOjEyOiJnbG9iYWxTZWFyY2giO2E6NTp7czo4OiJBY2NvdW50cyI7czo3OiJBY2NvdW50IjtzOjU6IkNhc2VzIjtzOjU6ImFDYXNlIjtzOjg6IkNvbnRhY3RzIjtzOjc6IkNvbnRhY3QiO3M6OToiRG9jdW1lbnRzIjtzOjg6IkRvY3VtZW50IjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJPcHBvcnR1bml0eSI7fXM6MjQ6IkVtYWlsc19ET0NVTUVOVF9PUkRFUl9CWSI7czoxMzoiZG9jdW1lbnRfbmFtZSI7czo5OiJBY2NvdW50c1EiO2E6MjQ6e3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTA6Im5hbWVfYmFzaWMiO3M6MDoiIjtzOjIzOiJjdXJyZW50X3VzZXJfb25seV9iYXNpYyI7czoxOiIwIjtzOjY6ImJ1dHRvbiI7czo5OiJQZXNxdWlzYXIiO3M6MTM6Im5hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjE2OiJ3ZWJzaXRlX2FkdmFuY2VkIjtzOjA6IiI7czoxNDoicGhvbmVfYWR2YW5jZWQiO3M6MDoiIjtzOjE0OiJlbWFpbF9hZHZhbmNlZCI7czowOiIiO3M6MjM6ImFkZHJlc3Nfc3RyZWV0X2FkdmFuY2VkIjtzOjA6IiI7czoyMToiYWRkcmVzc19jaXR5X2FkdmFuY2VkIjtzOjA6IiI7czoyMjoiYWRkcmVzc19zdGF0ZV9hZHZhbmNlZCI7czowOiIiO3M6Mjc6ImFkZHJlc3NfcG9zdGFsY29kZV9hZHZhbmNlZCI7czowOiIiO3M6MzI6ImJpbGxpbmdfYWRkcmVzc19jb3VudHJ5X2FkdmFuY2VkIjtzOjA6IiI7czo5OiJzaG93U1NESVYiO3M6Mjoibm8iO3M6MTc6InNhdmVkX3NlYXJjaF9uYW1lIjtzOjA6IiI7czoxMzoic2VhcmNoX21vZHVsZSI7czowOiIiO3M6MTk6InNhdmVkX3NlYXJjaF9hY3Rpb24iO3M6MDoiIjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7czoxMDE6Ik5BTUV8QklMTElOR19BRERSRVNTX0NJVFl8QklMTElOR19BRERSRVNTX0NPVU5UUll8UEhPTkVfT0ZGSUNFfEFTU0lHTkVEX1VTRVJfTkFNRXxFTUFJTDF8REFURV9FTlRFUkVEIjtzOjg6ImhpZGVUYWJzIjtzOjM2MToiQUNDT1VOVF9UWVBFfElORFVTVFJZfEFOTlVBTF9SRVZFTlVFfFBIT05FX0ZBWHxCSUxMSU5HX0FERFJFU1NfU1RSRUVUfEJJTExJTkdfQUREUkVTU19TVEFURXxCSUxMSU5HX0FERFJFU1NfUE9TVEFMQ09ERXxTSElQUElOR19BRERSRVNTX1NUUkVFVHxTSElQUElOR19BRERSRVNTX0NJVFl8U0hJUFBJTkdfQUREUkVTU19TVEFURXxTSElQUElOR19BRERSRVNTX1BPU1RBTENPREV8U0hJUFBJTkdfQUREUkVTU19DT1VOVFJZfFJBVElOR3xQSE9ORV9BTFRFUk5BVEV8V0VCU0lURXxPV05FUlNISVB8RU1QTE9ZRUVTfFNJQ19DT0RFfFRJQ0tFUl9TWU1CT0x8REFURV9NT0RJRklFRHxDUkVBVEVEX0JZX05BTUV8TU9ESUZJRURfQllfTkFNRSI7czo3OiJvcmRlckJ5IjtzOjQ6Ik5BTUUiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fXM6MTA6IkRvY3VtZW50c1EiO2E6MTU6e3M6NjoibW9kdWxlIjtzOjk6IkRvY3VtZW50cyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjIyOiJkb2N1bWVudF9uYW1lX2FkdmFuY2VkIjtzOjA6IiI7czoyMDoiYWN0aXZlX2RhdGVfYWR2YW5jZWQiO3M6MDoiIjtzOjE3OiJleHBfZGF0ZV9hZHZhbmNlZCI7czowOiIiO3M6OToic2hvd1NTRElWIjtzOjI6Im5vIjtzOjE3OiJzYXZlZF9zZWFyY2hfbmFtZSI7czowOiIiO3M6MTM6InNlYXJjaF9tb2R1bGUiO3M6MDoiIjtzOjE5OiJzYXZlZF9zZWFyY2hfYWN0aW9uIjtzOjA6IiI7czoxNDoiZGlzcGxheUNvbHVtbnMiO3M6MDoiIjtzOjg6ImhpZGVUYWJzIjtzOjE2OiJNT0RJRklFRF9CWV9OQU1FIjtzOjc6Im9yZGVyQnkiO3M6MTM6IkRPQ1VNRU5UX05BTUUiO3M6NjoiYnV0dG9uIjtzOjk6IlBlc3F1aXNhciI7fX0='),('88095cec-cb05-e209-436b-508418551fec','Home2_SUGARFEED',0,'2012-10-21 15:42:55','2012-10-21 15:42:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('884fca68-8c9c-9243-f0ba-509d0089cb55','global',0,'2012-11-09 13:11:27','2012-11-09 14:40:04','48319c1e-75c7-f88d-1fd0-509d004a8f73','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTo5OntpOjA7czo4OiJLUmVwb3J0cyI7aToxO3M6OToiUHJvc3BlY3RzIjtpOjI7czo4OiJBY2NvdW50cyI7aTozO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO2k6NDtzOjg6IkNhbGVuZGFyIjtpOjU7czo4OiJNZWV0aW5ncyI7aTo2O3M6OToiRG9jdW1lbnRzIjtpOjc7czo1OiJOb3RlcyI7aTo4O3M6NToiQ2FzZXMiO31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aTotMTtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NjoibWFpbHRvIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiI4ODA3Y2MyYi1jYmI3LTJkNDUtYTAwZC01MDlkMDA0Nzk4N2IiO30='),('89745373-41f1-b5e0-cec3-52c04019c5cf','AOR_Reports2_AOR_REPORT',0,'2013-12-29 15:32:33','2013-12-29 15:32:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8ab7c64c-069f-b50b-85d4-52c01a94e91c','Home2_NOTE',0,'2013-12-29 12:48:59','2013-12-29 12:48:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9125e4ca-dc02-10f6-51a8-5089271eb24d','ACLRoles2_ACLROLE',0,'2012-10-25 11:48:54','2012-10-25 11:48:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('915d95a2-de6a-6e70-b692-5088ff0154cf','Opportunities2_OPPORTUNITY',0,'2012-10-25 08:59:19','2012-11-05 12:44:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),('92da0a1f-65ca-e90d-0e11-52c048b22823','Accounts2_ACCOUNT',0,'2013-12-29 16:05:55','2013-12-29 16:05:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('95772750-ca56-c4f7-8700-508927394471','global',0,'2012-10-25 11:51:51','2012-10-25 12:12:05','32675a41-2ecc-004a-120b-50892777c7b7','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjA6IiI7fQ=='),('9673b59c-0252-5987-b091-52c06abed1dd','AOR_Reports2_AOR_REPORT',0,'2013-12-29 18:30:41','2013-12-29 18:30:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9742743b-bba7-f192-8cee-50a4ff1210d0','ProjectTask2_PROJECTTASK',0,'2012-11-15 14:41:29','2012-11-15 14:41:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('98cc2b45-b3ff-fac0-9626-50895c607945','Contacts2_CONTACT',0,'2012-10-25 15:35:04','2012-10-25 15:35:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9dd7410c-f8b7-f271-dd9c-5089586611f9','OAuthKeys2_OAUTHKEY',0,'2012-10-25 15:19:15','2012-10-25 15:19:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a0173e31-c959-3774-64df-50841d64c663','KReports2_KREPORT',0,'2012-10-21 16:04:36','2012-10-21 16:04:36','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a6e4d02d-a3a5-7d3f-c292-52c070de7893','AOS_PDF_Templates2_AOS_PDF_TEMPLATES',0,'2013-12-29 18:57:58','2013-12-29 18:57:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a8aac112-7fe1-ffa2-83e8-52c03f48cfc7','Home',0,'2013-12-29 15:29:10','2013-12-29 15:51:48','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6Ijg3M2M1OWYxLTk0YWEtMGI2Ni01M2YwLTUyYzAzZmY5NDIzYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6Ijg3YjRiNDcyLTExODUtMjUwYS0wNDQxLTUyYzAzZjM1YmExOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijg4M2U4MWYyLTU5YjAtOTI5My1kNzlmLTUyYzAzZmJjMTYxZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijg4OWRhODJkLTZjZDUtMmVlYS03ZTYwLTUyYzAzZmZlM2NmNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODkyOWYzMDUtNTI1Ny1kY2QxLWZkMmYtNTJjMDNmM2JhMzBjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODljYzgwZTctNDM3MC1lYjRmLTA3YjYtNTJjMDNmNzc5M2MwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MTtzOjM2OiI4N2I0YjQ3Mi0xMTg1LTI1MGEtMDQ0MS01MmMwM2YzNWJhMTkiO2k6MjtzOjM2OiI4ODNlODFmMi01OWIwLTkyOTMtZDc5Zi01MmMwM2ZiYzE2MWUiO2k6MztzOjM2OiI4ODlkYTgyZC02Y2Q1LTJlZWEtN2U2MC01MmMwM2ZmZTNjZjciO2k6NDtzOjM2OiI4OTI5ZjMwNS01MjU3LWRjZDEtZmQyZi01MmMwM2YzYmEzMGMiO2k6NTtzOjM2OiI4OWNjODBlNy00MzcwLWViNGYtMDdiNi01MmMwM2Y3NzkzYzAiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6Ijg3M2M1OWYxLTk0YWEtMGI2Ni01M2YwLTUyYzAzZmY5NDIzYyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('a9992443-669e-b924-02fc-52c03f9d1fca','Home2_CALL',0,'2013-12-29 15:29:10','2013-12-29 15:29:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aa55dcd5-495f-6621-f257-52c03fb8900f','Home2_MEETING',0,'2013-12-29 15:29:10','2013-12-29 15:29:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aa9a0e13-93ed-358c-e5bd-52c06fd457c6','ProspectLists2_PROSPECTLIST',0,'2013-12-29 18:52:25','2013-12-29 18:52:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aec10de2-a7aa-6258-f29a-52c01922fb03','Home',0,'2013-12-29 12:45:45','2013-12-29 12:51:26','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6Ijg4MjJmNzI4LTE0ZjQtODZlOS04NjAxLTUyYzAxOTJmYTJkZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6Ijg4OWE2ZGQzLTdjNjUtYjA1OC0wZWFmLTUyYzAxOWM3MWMyYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijg5Mjg5M2M0LTRlZDktZGU1YS0wYzkwLTUyYzAxOTU0NGE4YyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijg5ODI2ZmZlLWVlOTQtODllZi0yZmNmLTUyYzAxOTUwYWIwZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODllZjUyYWItNmNlNS04ODQzLWE0OWMtNTJjMDE5NzU3M2I1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOGE2Y2ZhMDYtYzRiZi00YzkzLTAzMDAtNTJjMDE5ODg4MTlhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MjtzOjM2OiI4ODlhNmRkMy03YzY1LWIwNTgtMGVhZi01MmMwMTljNzFjMmIiO2k6MztzOjM2OiI4OTI4OTNjNC00ZWQ5LWRlNWEtMGM5MC01MmMwMTk1NDRhOGMiO2k6NDtzOjM2OiI4OTgyNmZmZS1lZTk0LTg5ZWYtMmZjZi01MmMwMTk1MGFiMGYiO2k6NTtzOjM2OiI4OWVmNTJhYi02Y2U1LTg4NDMtYTQ5Yy01MmMwMTk3NTczYjUiO2k6NjtzOjM2OiI4YTZjZmEwNi1jNGJmLTRjOTMtMDMwMC01MmMwMTk4ODgxOWEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6Ijg4MjJmNzI4LTE0ZjQtODZlOS04NjAxLTUyYzAxOTJmYTJkZSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('af3bb768-ba46-bc31-7cf0-509d10c17ca0','ETag',0,'2012-11-09 14:15:48','2012-11-09 14:42:39','48319c1e-75c7-f88d-1fd0-509d004a8f73','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDt9'),('b08051a9-70ac-8886-e245-52c03f48d619','Home2_OPPORTUNITY',0,'2013-12-29 15:29:10','2013-12-29 15:29:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b1366092-6a53-db5a-ebbb-52c03f8dc55e','Home2_ACCOUNT',0,'2013-12-29 15:29:10','2013-12-29 15:29:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b1dcb259-bc95-92cd-c40d-52c03faeff89','Home2_LEAD',0,'2013-12-29 15:29:10','2013-12-29 15:29:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b28e81c0-23f8-7487-21aa-52c03f1788a1','Home2_SUGARFEED',0,'2013-12-29 15:29:10','2013-12-29 15:29:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b6ccaae7-3cb7-17df-fd64-52c066b62b2d','ETag',0,'2013-12-29 18:12:18','2013-12-29 19:10:36','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('bf80058e-15a5-ec22-1c22-508ea2499334','ModuleBuilder',0,'2012-10-29 15:35:06','2012-11-27 12:09:45','1','YToxOntzOjE3OiJmaWVsZHNUYWJsZUNvbHVtbiI7czozMzoieyJrZXkiOiJsYWJlbCIsImRpcmVjdGlvbiI6IkFTQyJ9Ijt9'),('c75a44a9-b3f7-aa5f-8cdd-52c0713a6409','FP_events2_FP_EVENTS',0,'2013-12-29 19:00:43','2013-12-29 19:00:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c9ba62b9-c951-dea0-bf8b-50854f97ba89','Employees2_EMPLOYEE',0,'2012-10-22 13:50:42','2012-10-22 13:50:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ca7eeaeb-d90c-c267-b1f5-5084184a2c7d','Home',1,'2012-10-21 15:42:55','2013-12-29 12:14:16','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjM6e3M6MzY6Ijc5YzJmMjE5LTdlZDUtY2RkYS00ZTkzLTUwODQxODQwYzgzNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6NToidGl0bGUiO3M6MTM6Ik9wb3J0dW5pZGFkZXMiO3M6MTE6ImF1dG9SZWZyZXNoIjtzOjI6Ii0xIjtzOjQ6InJvd3MiO2k6MTU7fX1zOjM2OiIzMDYzY2E1NS1mYzg5LThjOTItNGYxYS01MGIzNDYxMjViN2YiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15VGFza3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJUYXNrcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvVGFza3MvRGFzaGxldHMvTXlUYXNrc0Rhc2hsZXQvTXlUYXNrc0Rhc2hsZXQucGhwIjt9czozNjoiZGNhZDJkNTMtY2RiYy0zNTI0LWJiY2ItNTI3M2ZlYjMwODQzIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjt9fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjM6e2k6MjtzOjM2OiJkY2FkMmQ1My1jZGJjLTM1MjQtYmJjYi01MjczZmViMzA4NDMiO2k6MztzOjM2OiI3OWMyZjIxOS03ZWQ1LWNkZGEtNGU5My01MDg0MTg0MGM4MzQiO2k6NDtzOjM2OiIzMDYzY2E1NS1mYzg5LThjOTItNGYxYS01MGIzNDYxMjViN2YiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MDoiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('ca9d65c0-a1bb-708c-a70b-52c045d70e63','AOW_WorkFlow2_AOW_WORKFLOW',0,'2013-12-29 15:51:52','2013-12-29 15:51:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ccfd27d3-7c40-f2b4-a3e6-508908262c25','ETag',0,'2012-10-25 09:38:04','2012-10-25 09:38:59','c7c7247c-66e2-2ccf-f5e5-508908a5d1d0','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('cdb14437-6a23-8e9c-2afe-52c0713ec8be','Contacts2_CONTACT',0,'2013-12-29 19:03:07','2013-12-29 19:03:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d1451f1b-d43f-13c5-4b05-52c07d586c2d','jjwg_Markers2_JJWG_MARKERS',0,'2013-12-29 19:54:21','2013-12-29 19:54:21','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d3bef1da-d5a9-ce91-7ca6-50892c078d74','global',0,'2012-10-25 12:12:38','2012-10-25 13:49:37','bd1ad17c-d7e0-22b7-b95c-50892c37aca0','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiJkMzgxNzE4ZC1jM2UzLWNkYjUtMDQ0My01MDg5MmM1NDA0NmIiO30='),('d40cf450-2895-d3bb-869b-50b346b4aa8c','Home2_TASK',0,'2012-11-26 10:39:31','2012-11-26 10:39:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d508f893-54d0-c27b-5181-50b4a4d9eea1','search',0,'2012-11-27 11:32:10','2012-11-27 11:32:19','1','YToyOntzOjEyOiJnbG9iYWxTZWFyY2giO2E6NTp7czo4OiJBY2NvdW50cyI7czo3OiJBY2NvdW50IjtzOjU6IkNhc2VzIjtzOjU6ImFDYXNlIjtzOjg6IkNvbnRhY3RzIjtzOjc6IkNvbnRhY3QiO3M6OToiRG9jdW1lbnRzIjtzOjg6IkRvY3VtZW50IjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJPcHBvcnR1bml0eSI7fXM6OToic2hvd0dTRGl2IjtzOjI6Im5vIjt9'),('d5db0e4d-6d12-1a19-d558-508fd2f67973','Schedulers2_SCHEDULER',0,'2012-10-30 13:13:18','2012-10-30 13:13:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d78ef488-2bd5-8e52-2e19-51e6adeccc26','ETag',0,'2013-07-17 14:43:07','2013-07-17 14:56:58','9acddd3b-036e-4e38-af37-51e6ad1f4750','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('db788311-e627-c633-e766-516ecedd5f59','zr2_ReportContainer2_ZR2_REPORTCONTAINER',0,'2013-04-17 16:32:00','2013-04-17 16:32:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('df1c8498-b26a-bb0b-83ca-508418c07824','Home2_CALL',0,'2012-10-21 15:42:55','2012-10-21 15:42:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('df2edf8a-bddc-8ef1-e239-51e6ad253dc8','global',0,'2013-07-17 14:42:10','2013-07-17 14:56:58','9acddd3b-036e-4e38-af37-51e6ad1f4750','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTo1OntpOjA7czo4OiJLUmVwb3J0cyI7aToxO3M6NjoiRW1haWxzIjtpOjI7czo5OiJQcm9zcGVjdHMiO2k6MztzOjk6IkRvY3VtZW50cyI7aTo0O3M6NToiVGFza3MiO31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czozOiIzMDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MzoiMzAwIjtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQtbS1ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjY6Im1haWx0byI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiZGVlNjI1OGUtN2NlMi1mNDU1LTgyNDctNTFlNmFkNjc4OTI4Ijt9'),('df640589-9381-e6ea-84c2-5084187b14d3','Home2_OPPORTUNITY',0,'2012-10-21 15:42:55','2013-11-01 19:22:53','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e1bb31dd-64de-52a8-5b8a-52ab8ffc138d','ETag',0,'2013-12-13 22:50:46','2013-12-13 22:50:46','249c93bc-2719-595f-87de-52ab8ebf14aa','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('e552ae7b-55f5-92e3-db4a-51e6b546d975','global',0,'2013-07-17 15:16:19','2013-07-17 15:16:19','9662e8dd-039b-9cd6-0711-51e6b53ec5c5','YToyOTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiJlNTBhZTcxNS1mNGU0LTczMTUtN2YwMC01MWU2YjVkZDFiYjMiO30='),('e564f2fd-2e3b-08be-e2e3-50b4a4626629','Home2_CASE',0,'2012-11-27 11:32:10','2012-11-27 11:32:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e609d6f3-2f6a-d4db-d891-52c03f1ed5a9','AOS_PDF_Templates2_AOS_PDF_TEMPLATES',0,'2013-12-29 15:29:34','2013-12-29 15:29:34','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ebc4d201-0a7f-c060-b8cc-508944534e24','Opportunities',0,'2012-10-25 13:52:56','2012-10-25 13:52:56','1','YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),('ebf30a7e-af19-b8ea-06e9-50bf8864d0ef','Accounts',0,'2012-12-05 17:48:30','2012-12-05 17:48:30','1','YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),('edd7caa9-d0c4-0fca-cc7f-52c070f33d31','AOS_Quotes2_AOS_QUOTES',0,'2013-12-29 18:55:04','2013-12-29 18:55:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef757d9e-0d50-bba5-2cea-508fc4c62c11','Calls2_CALL',0,'2012-10-30 12:15:04','2012-10-30 12:15:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('efe4d6f4-2369-ec57-3cef-52c06ebecbd7','Calls2_CALL',0,'2013-12-29 18:49:19','2013-12-29 18:49:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f0be576a-63ec-2f7c-aa64-508fc517b769','Tasks2_TASK',0,'2012-10-30 12:16:42','2012-10-30 12:16:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f1d29cf7-7d60-0e90-198c-508418d26f3b','Home2_MEETING',0,'2012-10-21 15:42:55','2012-10-21 15:42:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','cross','$1$73D0v/Zy$dyWQYJ63rsIhxBd/EWPV70',0,NULL,NULL,1,'Diogo','Medeiros',1,0,1,NULL,'2013-12-29 18:10:56','2013-12-29 18:12:18','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
INSERT INTO `users_signatures` VALUES ('e6b251fd-323d-f59d-0ae1-50891ab01839','2012-10-25 10:56:50','2012-10-25 10:56:50',0,'1','Cross','Exmo.(a). Sr.(a). ,\n&nbsp;\n&nbsp;\n&nbsp;\nCom os melhores cumprimentos,\n&nbsp;\nCross Inform&aacute;tica\nInforma&ccedil;&atilde;o de Sistema Central','<p>Exmo.(a). Sr.(a). ,</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Com os melhores cumprimentos,</p>\r\n<p>&nbsp;</p>\r\n<p>Cross Inform&aacute;tica</p>\r\n<p>Informa&ccedil;&atilde;o de Sistema Central</p>');
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES ('be4f66c2-3b87-3969-39b8-51c3155515bd',0,'2013-06-20 14:44:27','2013-06-20 16:41:24','1','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=André Pinto:crosscrm@cross.pt\nDTSTART:2013-06-19 00:00:00\nDTEND:2013-08-19 00:00:00\nFREEBUSY:20130620T160000Z/20130620T161500Z\nDTSTAMP:2013-06-20 16:41:24\nEND:VFREEBUSY\nEND:VCALENDAR\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('39ec07f9-1790-ac1e-fa65-52c065a406d1',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Chart Data Cache','3.5.1','3.5.1'),('3a9ec322-cbb4-202a-d7ae-52c0659887aa',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','htaccess','3.5.1','3.5.1'),('3c18be3c-b66f-2533-3623-52c0658ce6ca',0,'2013-12-29 18:10:56','2013-12-29 18:10:56','1','1','Rebuild Extensions','4.0.0','4.0.0'),('3f221995-2beb-87a9-2dfa-52c03f13e3e2',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','Chart Data Cache','3.5.1','3.5.1'),('3f688e68-ce7f-5529-30a5-52c03f6475cd',0,'2013-12-29 15:26:02','2013-12-29 15:26:02','1','1','htaccess','3.5.1','3.5.1'),('a7b58eca-94fa-0276-570b-50841748ec2e',0,'2012-10-21 15:40:03','2012-10-21 15:40:03','1','1','Chart Data Cache','3.5.1','3.5.1'),('ac59b49b-ea4c-1a61-2d82-52c07c6a7274',0,'2013-12-29 19:50:06','2013-12-29 19:50:06','1','1','Rebuild Relationships','4.0.0','4.0.0'),('bc1fd5a0-11d9-73d6-1e3e-50841766c795',0,'2012-10-21 15:40:03','2012-10-21 15:40:03','1','1','htaccess','3.5.1','3.5.1'),('f1b12e31-e7f0-4f4f-422a-52c06480088e',0,'2013-12-29 18:07:34','2013-12-29 18:07:34','1','1','Rebuild Extensions','4.0.0','4.0.0');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_querytemplate`
--

DROP TABLE IF EXISTS `zr2_querytemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_querytemplate` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sql1` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_querytemplate`
--

LOCK TABLES `zr2_querytemplate` WRITE;
/*!40000 ALTER TABLE `zr2_querytemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_querytemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_report`
--

DROP TABLE IF EXISTS `zr2_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_report` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_report`
--

LOCK TABLES `zr2_report` WRITE;
/*!40000 ALTER TABLE `zr2_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportcontainer`
--

DROP TABLE IF EXISTS `zr2_reportcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportcontainer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportcontainer`
--

LOCK TABLES `zr2_reportcontainer` WRITE;
/*!40000 ALTER TABLE `zr2_reportcontainer` DISABLE KEYS */;
INSERT INTO `zr2_reportcontainer` VALUES ('12ce6bbb-0aad-4b31-b839-52c07bf95e24','Archive','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1',NULL,0,NULL);
/*!40000 ALTER TABLE `zr2_reportcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportcontainer_zr2_report_c`
--

DROP TABLE IF EXISTS `zr2_reportcontainer_zr2_report_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportcontainer_zr2_report_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `zr2_reportcontainer_zr2_reportzr2_reportcontainer_ida` varchar(36) DEFAULT NULL,
  `zr2_reportcontainer_zr2_reportzr2_report_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zr2_reportcontainer_zr2_report_ida1` (`zr2_reportcontainer_zr2_reportzr2_reportcontainer_ida`),
  KEY `zr2_reportcontainer_zr2_report_alt` (`zr2_reportcontainer_zr2_reportzr2_report_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportcontainer_zr2_report_c`
--

LOCK TABLES `zr2_reportcontainer_zr2_report_c` WRITE;
/*!40000 ALTER TABLE `zr2_reportcontainer_zr2_report_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportcontainer_zr2_report_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameter`
--

DROP TABLE IF EXISTS `zr2_reportparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportparameter` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `friendly_name` varchar(255) DEFAULT NULL,
  `default_name` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `range_name` varchar(255) DEFAULT NULL,
  `range_options` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameter`
--

LOCK TABLES `zr2_reportparameter` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameter` DISABLE KEYS */;
INSERT INTO `zr2_reportparameter` VALUES ('13ab1d46-c0c6-cf22-a33d-52c07b8b9b4e','Account','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1','',0,NULL,'Account','ACCOUNT_ID','','SQL','select id, name from accounts where deleted = 0 order by name'),('1449ded9-b60f-eb20-fa70-52c07b2c40e9','Contact','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1','',0,NULL,'Contact','CONTACT_ID','','SQL','select id, concat(last_name, concat(\" \", first_name)) as name from contacts where deleted = 0 order by last_name'),('14f60101-dcd5-376b-bf23-52c07b0bb5cd','Meeting','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1','',0,NULL,'Meeting','MEETING_ID','','SQL','select id, concat(name, \" (\", date_start, \")\") from meetings where deleted = 0 order by name, date_start'),('158e75f9-8123-d3be-c351-52c07b7b024d','Project','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1','',0,NULL,'Project','PROJECT_ID','','SQL','select id, name from project where deleted = 0 order by name'),('162b19ff-445f-cc65-b6eb-52c07b6ace87','Current User','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1','',0,NULL,'Current User','CURRENT_USER','','CURRENT_USER',NULL),('16c08909-84a1-573a-10e3-52c07b08ac60','My Script','2013-12-29 19:44:13','2013-12-29 19:44:13','1','1','',0,NULL,'My Script','MY_SCRIPT','','SCRIPT','return \'%\';');
/*!40000 ALTER TABLE `zr2_reportparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameterlink`
--

DROP TABLE IF EXISTS `zr2_reportparameterlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportparameterlink` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `bind_to_module_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameterlink`
--

LOCK TABLES `zr2_reportparameterlink` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameterlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportparameterlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameterlink_zr2_querytemplate_c`
--

DROP TABLE IF EXISTS `zr2_reportparameterlink_zr2_querytemplate_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportparameterlink_zr2_querytemplate_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `zr2_query313cemplate_ida` varchar(36) DEFAULT NULL,
  `zr2_report0ed1terlink_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zr2_reportparameterlink_zr2_querytemplate_ida1` (`zr2_query313cemplate_ida`),
  KEY `zr2_reportparameterlink_zr2_querytemplate_alt` (`zr2_report0ed1terlink_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameterlink_zr2_querytemplate_c`
--

LOCK TABLES `zr2_reportparameterlink_zr2_querytemplate_c` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameterlink_zr2_querytemplate_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportparameterlink_zr2_querytemplate_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameterlink_zr2_reportparameter_c`
--

DROP TABLE IF EXISTS `zr2_reportparameterlink_zr2_reportparameter_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportparameterlink_zr2_reportparameter_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `zr2_report29aerameter_ida` varchar(36) DEFAULT NULL,
  `zr2_report53a6terlink_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zr2_reportparameterlink_zr2_reportparameter_ida1` (`zr2_report29aerameter_ida`),
  KEY `zr2_reportparameterlink_zr2_reportparameter_alt` (`zr2_report53a6terlink_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameterlink_zr2_reportparameter_c`
--

LOCK TABLES `zr2_reportparameterlink_zr2_reportparameter_c` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameterlink_zr2_reportparameter_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportparameterlink_zr2_reportparameter_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameterlink_zr2_reporttemplate_c`
--

DROP TABLE IF EXISTS `zr2_reportparameterlink_zr2_reporttemplate_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reportparameterlink_zr2_reporttemplate_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `zr2_report313cemplate_ida` varchar(36) DEFAULT NULL,
  `zr2_report0ed1terlink_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zr2_reportparameterlink_zr2_reporttemplate_ida1` (`zr2_report313cemplate_ida`),
  KEY `zr2_reportparameterlink_zr2_reporttemplate_alt` (`zr2_report0ed1terlink_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameterlink_zr2_reporttemplate_c`
--

LOCK TABLES `zr2_reportparameterlink_zr2_reporttemplate_c` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameterlink_zr2_reporttemplate_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportparameterlink_zr2_reporttemplate_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reporttemplate`
--

DROP TABLE IF EXISTS `zr2_reporttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zr2_reporttemplate` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `export_as` varchar(255) DEFAULT NULL,
  `error_message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reporttemplate`
--

LOCK TABLES `zr2_reporttemplate` WRITE;
/*!40000 ALTER TABLE `zr2_reporttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reporttemplate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-30  0:03:26
