-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: spa_development
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_teacher_id` (`teacher_id`),
  CONSTRAINT `fk_rails_84377f5437` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Júri simulado','2016-07-18 22:27:40','2016-07-18 22:27:40',NULL),(2,'Relatório','2016-07-18 22:27:46','2016-07-18 22:27:46',NULL),(33,'Estudar','2016-07-19 23:38:21','2016-07-19 23:38:21',1),(34,'Aprender','2016-07-19 23:40:54','2016-07-19 23:40:54',1),(35,'Minha','2016-07-19 23:43:51','2016-07-19 23:43:51',1),(36,'Minha','2016-08-03 14:13:23','2016-08-03 14:13:23',1),(37,'Minha','2016-08-03 14:13:25','2016-08-03 14:13:25',1),(38,'Outra','2016-08-03 14:14:03','2016-08-03 14:14:03',1),(39,'Qualquer','2016-08-03 14:14:45','2016-08-03 14:14:45',1),(40,'Qualquer','2016-08-03 14:15:07','2016-08-03 14:15:07',1);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_sugestions`
--

DROP TABLE IF EXISTS `activity_sugestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_sugestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_sugestions`
--

LOCK TABLES `activity_sugestions` WRITE;
/*!40000 ALTER TABLE `activity_sugestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_sugestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attitudinal_skills`
--

DROP TABLE IF EXISTS `attitudinal_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attitudinal_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attitudinal_skills`
--

LOCK TABLES `attitudinal_skills` WRITE;
/*!40000 ALTER TABLE `attitudinal_skills` DISABLE KEYS */;
INSERT INTO `attitudinal_skills` VALUES (1,'Trabalho em equipe','xxx','2016-07-18 22:25:44','2016-07-18 22:25:44');
/*!40000 ALTER TABLE `attitudinal_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desctipion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Aprender','2016-07-18 22:25:13','2016-07-18 22:25:13','xx');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_module_study_units`
--

DROP TABLE IF EXISTS `course_module_study_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_module_study_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_module_id` int(11) DEFAULT NULL,
  `study_unit_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_course_module_study_units_on_course_module_id` (`course_module_id`),
  KEY `index_course_module_study_units_on_study_unit_id` (`study_unit_id`),
  CONSTRAINT `fk_rails_40397ccfa1` FOREIGN KEY (`study_unit_id`) REFERENCES `study_units` (`id`),
  CONSTRAINT `fk_rails_e631159769` FOREIGN KEY (`course_module_id`) REFERENCES `course_modules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_module_study_units`
--

LOCK TABLES `course_module_study_units` WRITE;
/*!40000 ALTER TABLE `course_module_study_units` DISABLE KEYS */;
INSERT INTO `course_module_study_units` VALUES (2,1,1,'2016-07-18 19:37:24','2016-07-18 19:37:24');
/*!40000 ALTER TABLE `course_module_study_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_modules`
--

DROP TABLE IF EXISTS `course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_course_modules_on_course_id` (`course_id`),
  CONSTRAINT `fk_rails_74391d7a5f` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_modules`
--

LOCK TABLES `course_modules` WRITE;
/*!40000 ALTER TABLE `course_modules` DISABLE KEYS */;
INSERT INTO `course_modules` VALUES (1,'Modulo 1',1,'2016-07-18 22:23:45','2016-07-18 22:23:45'),(2,'Modulo 2',1,'2016-07-18 22:23:45','2016-07-18 22:23:45'),(3,'Modulo 3',1,'2016-07-18 22:23:45','2016-07-18 22:23:45'),(4,'Modulo 1',2,'2016-07-18 22:23:45','2016-07-18 22:23:45'),(5,'Modulo 2',2,'2016-07-18 22:23:45','2016-07-18 22:23:45'),(6,'Modulo 3',2,'2016-07-18 22:23:46','2016-07-18 22:23:46'),(18,'Módulo 1',4,'2016-07-20 22:39:05','2016-07-20 22:39:05'),(19,'Módulo 2',4,'2016-07-20 22:39:05','2016-07-20 22:39:05'),(20,'Módulo 3',4,'2016-07-20 22:39:05','2016-07-20 22:39:05'),(21,'Módulo 4',1,'2016-07-20 22:45:10','2016-07-20 22:45:10');
/*!40000 ALTER TABLE `course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Análise e Desenvolvimento de Sistemas','2016-07-18 22:23:45','2016-07-18 22:23:45'),(2,'Direito','2016-07-18 22:23:45','2016-07-18 22:23:45'),(4,'Ciências Contábeis','2016-07-20 22:39:05','2016-07-20 22:39:05');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evidences`
--

DROP TABLE IF EXISTS `evidences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evidences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `attitudinal_skill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_evidences_on_attitudinal_skill_id` (`attitudinal_skill_id`),
  CONSTRAINT `fk_rails_30d15b5e17` FOREIGN KEY (`attitudinal_skill_id`) REFERENCES `attitudinal_skills` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evidences`
--

LOCK TABLES `evidences` WRITE;
/*!40000 ALTER TABLE `evidences` DISABLE KEYS */;
INSERT INTO `evidences` VALUES (1,'	Elaboração de um Parecer','x','2016-07-18 22:26:47','2016-07-18 22:26:47',1);
/*!40000 ALTER TABLE `evidences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generating_theme_sugestions`
--

DROP TABLE IF EXISTS `generating_theme_sugestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generating_theme_sugestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generating_theme_sugestions`
--

LOCK TABLES `generating_theme_sugestions` WRITE;
/*!40000 ALTER TABLE `generating_theme_sugestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `generating_theme_sugestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generating_themes`
--

DROP TABLE IF EXISTS `generating_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generating_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_generating_themes_on_teacher_id` (`teacher_id`),
  CONSTRAINT `fk_rails_809b631d1c` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generating_themes`
--

LOCK TABLES `generating_themes` WRITE;
/*!40000 ALTER TABLE `generating_themes` DISABLE KEYS */;
INSERT INTO `generating_themes` VALUES (1,'Impeachment','x','2016-07-18 22:30:22','2016-07-18 22:30:22',NULL),(2,'Sustentabilidade','z','2016-07-18 22:30:30','2016-07-18 22:30:30',NULL),(41,'Outro mais interessante',NULL,'2016-07-19 22:21:35','2016-07-19 22:21:35',1),(42,'Meu tema preferido',NULL,'2016-07-19 22:22:28','2016-07-19 22:22:28',2),(43,'xxx',NULL,'2016-07-19 22:25:04','2016-07-19 22:25:04',1),(44,'Qualquer tema',NULL,'2016-08-03 14:07:05','2016-08-03 14:07:05',1),(45,'Teste',NULL,'2016-08-03 14:08:34','2016-08-03 14:08:34',1),(46,'Outro teste',NULL,'2016-08-03 14:09:37','2016-08-03 14:09:37',1);
/*!40000 ALTER TABLE `generating_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_activities`
--

DROP TABLE IF EXISTS `meeting_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_activities_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_activities_on_activity_id` (`activity_id`),
  CONSTRAINT `fk_rails_0d8504164b` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `fk_rails_4c8e151ae6` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_activities`
--

LOCK TABLES `meeting_activities` WRITE;
/*!40000 ALTER TABLE `meeting_activities` DISABLE KEYS */;
INSERT INTO `meeting_activities` VALUES (5,2,34,'2016-07-19 23:40:57','2016-07-19 23:40:57'),(6,3,1,'2016-08-03 13:32:11','2016-08-03 13:32:11'),(7,3,33,'2016-08-03 13:32:11','2016-08-03 13:32:11'),(8,3,34,'2016-08-03 13:32:52','2016-08-03 13:32:52'),(9,3,35,'2016-08-03 13:41:41','2016-08-03 13:41:41');
/*!40000 ALTER TABLE `meeting_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_attitudinal_skills`
--

DROP TABLE IF EXISTS `meeting_attitudinal_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_attitudinal_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `attitudinal_skill_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_attitudinal_skills_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_attitudinal_skills_on_attitudinal_skill_id` (`attitudinal_skill_id`),
  CONSTRAINT `fk_rails_49b12fd34c` FOREIGN KEY (`attitudinal_skill_id`) REFERENCES `attitudinal_skills` (`id`),
  CONSTRAINT `fk_rails_f1d0e0f199` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_attitudinal_skills`
--

LOCK TABLES `meeting_attitudinal_skills` WRITE;
/*!40000 ALTER TABLE `meeting_attitudinal_skills` DISABLE KEYS */;
INSERT INTO `meeting_attitudinal_skills` VALUES (1,1,1,'2016-07-18 22:42:19','2016-07-18 22:42:19'),(2,2,1,'2016-07-19 23:40:39','2016-07-19 23:40:39'),(3,3,1,'2016-08-03 13:32:11','2016-08-03 13:32:11');
/*!40000 ALTER TABLE `meeting_attitudinal_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_evidences`
--

DROP TABLE IF EXISTS `meeting_evidences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_evidences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `evidence_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_evidences_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_evidences_on_evidence_id` (`evidence_id`),
  CONSTRAINT `fk_rails_79ecce3b35` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`),
  CONSTRAINT `fk_rails_e9b53f6d6f` FOREIGN KEY (`evidence_id`) REFERENCES `evidences` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_evidences`
--

LOCK TABLES `meeting_evidences` WRITE;
/*!40000 ALTER TABLE `meeting_evidences` DISABLE KEYS */;
INSERT INTO `meeting_evidences` VALUES (1,1,1,'2016-07-18 22:42:19','2016-07-18 22:42:19'),(2,2,1,'2016-07-19 23:40:39','2016-07-19 23:40:39'),(3,3,1,'2016-08-03 13:32:11','2016-08-03 13:32:11');
/*!40000 ALTER TABLE `meeting_evidences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_methodologies`
--

DROP TABLE IF EXISTS `meeting_methodologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_methodologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `methodology_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_methodologies_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_methodologies_on_methodology_id` (`methodology_id`),
  CONSTRAINT `fk_rails_08a3bcf1fc` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`),
  CONSTRAINT `fk_rails_acf7ad7cf0` FOREIGN KEY (`methodology_id`) REFERENCES `methodologies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_methodologies`
--

LOCK TABLES `meeting_methodologies` WRITE;
/*!40000 ALTER TABLE `meeting_methodologies` DISABLE KEYS */;
INSERT INTO `meeting_methodologies` VALUES (1,1,2,'2016-07-18 22:42:19','2016-07-18 22:42:19'),(2,2,2,'2016-07-19 23:40:39','2016-07-19 23:40:39'),(3,3,2,'2016-08-03 13:32:11','2016-08-03 13:32:11'),(4,3,1,'2016-08-03 13:32:11','2016-08-03 13:32:11');
/*!40000 ALTER TABLE `meeting_methodologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_resources`
--

DROP TABLE IF EXISTS `meeting_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_resources_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_resources_on_resource_id` (`resource_id`),
  CONSTRAINT `fk_rails_3acc28ceff` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`),
  CONSTRAINT `fk_rails_a6c523eb72` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_resources`
--

LOCK TABLES `meeting_resources` WRITE;
/*!40000 ALTER TABLE `meeting_resources` DISABLE KEYS */;
INSERT INTO `meeting_resources` VALUES (1,1,1,'2016-07-18 22:42:19','2016-07-18 22:42:19'),(2,2,2,'2016-07-19 23:40:39','2016-07-19 23:40:39'),(3,3,2,'2016-08-03 13:32:11','2016-08-03 13:32:11');
/*!40000 ALTER TABLE `meeting_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_strategies`
--

DROP TABLE IF EXISTS `meeting_strategies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_strategies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `strategy_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_strategies_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_strategies_on_strategy_id` (`strategy_id`),
  CONSTRAINT `fk_rails_5aff424fd2` FOREIGN KEY (`strategy_id`) REFERENCES `strategies` (`id`),
  CONSTRAINT `fk_rails_8e2074ef1d` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_strategies`
--

LOCK TABLES `meeting_strategies` WRITE;
/*!40000 ALTER TABLE `meeting_strategies` DISABLE KEYS */;
INSERT INTO `meeting_strategies` VALUES (1,1,1,'2016-07-18 22:42:19','2016-07-18 22:42:19'),(2,2,1,'2016-07-19 23:40:39','2016-07-19 23:40:39'),(3,3,1,'2016-08-03 13:32:11','2016-08-03 13:32:11');
/*!40000 ALTER TABLE `meeting_strategies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_verbs`
--

DROP TABLE IF EXISTS `meeting_verbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_verbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `verb_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_meeting_verbs_on_meeting_id` (`meeting_id`),
  KEY `index_meeting_verbs_on_verb_id` (`verb_id`),
  CONSTRAINT `fk_rails_86b3a3b89d` FOREIGN KEY (`verb_id`) REFERENCES `verbs` (`id`),
  CONSTRAINT `fk_rails_8c11af280a` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_verbs`
--

LOCK TABLES `meeting_verbs` WRITE;
/*!40000 ALTER TABLE `meeting_verbs` DISABLE KEYS */;
INSERT INTO `meeting_verbs` VALUES (1,1,1,'2016-07-18 22:42:19','2016-07-18 22:42:19'),(2,2,1,'2016-07-19 23:40:39','2016-07-19 23:40:39'),(3,3,1,'2016-08-03 13:32:11','2016-08-03 13:32:11');
/*!40000 ALTER TABLE `meeting_verbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generating_theme_id` int(11) DEFAULT NULL,
  `workload` int(11) DEFAULT NULL,
  `specific_skill_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `know_more` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `plane_classroom_id` int(11) DEFAULT NULL,
  `technical_skill` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_meetings_on_generating_theme_id` (`generating_theme_id`),
  KEY `index_meetings_on_specific_skill_id` (`specific_skill_id`),
  KEY `index_meetings_on_category_id` (`category_id`),
  KEY `index_meetings_on_plane_classroom_id` (`plane_classroom_id`),
  CONSTRAINT `fk_rails_59709e3b1b` FOREIGN KEY (`plane_classroom_id`) REFERENCES `plane_classrooms` (`id`),
  CONSTRAINT `fk_rails_75724aa60d` FOREIGN KEY (`generating_theme_id`) REFERENCES `generating_themes` (`id`),
  CONSTRAINT `fk_rails_7e5e5d3239` FOREIGN KEY (`specific_skill_id`) REFERENCES `specific_skills` (`id`),
  CONSTRAINT `fk_rails_9cb930a984` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES (1,'GIT',2,10,1,1,'teste','2016-07-18 22:42:19','2016-07-18 22:42:19',1,'Teste'),(2,'Qualquer',1,10,1,1,'Teste','2016-07-19 23:40:39','2016-07-19 23:40:39',1,'mais uma'),(3,'Trabalho de GIT',45,20,1,1,'O que você quiser','2016-08-03 13:32:11','2016-08-03 14:09:44',1,'Qualquer uma');
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `methodologies`
--

DROP TABLE IF EXISTS `methodologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodologies`
--

LOCK TABLES `methodologies` WRITE;
/*!40000 ALTER TABLE `methodologies` DISABLE KEYS */;
INSERT INTO `methodologies` VALUES (1,'Estudo de caso','xxx','2016-07-18 22:28:08','2016-07-18 22:28:08'),(2,'Contextualização','xxx','2016-07-18 22:28:20','2016-07-18 22:28:20');
/*!40000 ALTER TABLE `methodologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plane_classrooms`
--

DROP TABLE IF EXISTS `plane_classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plane_classrooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `generating_theme_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_module_id` int(11) DEFAULT NULL,
  `study_unit_id` int(11) DEFAULT NULL,
  `workload` int(11) DEFAULT NULL,
  `menu` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `interdisciplinary_project` text COLLATE utf8_unicode_ci,
  `basic_bibliography` text COLLATE utf8_unicode_ci,
  `additional_bibliography` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_plane_classrooms_on_teacher_id` (`teacher_id`),
  KEY `index_plane_classrooms_on_generating_theme_id` (`generating_theme_id`),
  KEY `index_plane_classrooms_on_course_id` (`course_id`),
  KEY `index_plane_classrooms_on_course_module_id` (`course_module_id`),
  KEY `index_plane_classrooms_on_study_unit_id` (`study_unit_id`),
  CONSTRAINT `fk_rails_3b4653987e` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `fk_rails_74d5b29157` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  CONSTRAINT `fk_rails_a08f54561d` FOREIGN KEY (`generating_theme_id`) REFERENCES `generating_themes` (`id`),
  CONSTRAINT `fk_rails_d6de4abccf` FOREIGN KEY (`study_unit_id`) REFERENCES `study_units` (`id`),
  CONSTRAINT `fk_rails_d9699e2a49` FOREIGN KEY (`course_module_id`) REFERENCES `course_modules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plane_classrooms`
--

LOCK TABLES `plane_classrooms` WRITE;
/*!40000 ALTER TABLE `plane_classrooms` DISABLE KEYS */;
INSERT INTO `plane_classrooms` VALUES (1,1,NULL,2016,'Primeiro',1,1,1,10,'x','2016-07-18 22:38:01','2016-07-18 22:38:01','x','x','x'),(2,2,NULL,2016,'Segundo',1,1,1,10,'x','2016-07-19 01:01:57','2016-07-19 01:01:57','x','x','x'),(3,1,NULL,2016,'Segundo',1,1,1,10,'Qualquer coisa','2016-08-03 14:23:10','2016-08-03 14:23:10','Qualquer outra coisa','Qualquer outra','Qualquer outra');
/*!40000 ALTER TABLE `plane_classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attitudinal_skill_id` int(11) DEFAULT NULL,
  `specific_skill_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `attitudinal_skills_id` int(11) DEFAULT NULL,
  `specific_skills_id` int(11) DEFAULT NULL,
  `verbs_id` int(11) DEFAULT NULL,
  `activities_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_relationships_on_attitudinal_skills_id` (`attitudinal_skills_id`),
  KEY `index_relationships_on_specific_skills_id` (`specific_skills_id`),
  KEY `index_relationships_on_verbs_id` (`verbs_id`),
  KEY `index_relationships_on_activities_id` (`activities_id`),
  KEY `fk_rails_0f610529b5` (`attitudinal_skill_id`),
  KEY `fk_rails_12046f6804` (`specific_skill_id`),
  KEY `fk_rails_9d95d61872` (`activity_id`),
  KEY `index_relationships_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_0f610529b5` FOREIGN KEY (`attitudinal_skill_id`) REFERENCES `attitudinal_skills` (`id`),
  CONSTRAINT `fk_rails_12046f6804` FOREIGN KEY (`specific_skill_id`) REFERENCES `specific_skills` (`id`),
  CONSTRAINT `fk_rails_691622e6e0` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_9d95d61872` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES (1,1,1,1,NULL,NULL,NULL,NULL,'2016-07-18 22:29:16','2016-07-18 22:29:16',1),(2,1,2,2,NULL,NULL,NULL,NULL,'2016-07-18 22:30:06','2016-07-19 23:19:03',1);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (1,'Projetor','2016-07-18 22:28:26','2016-07-18 22:28:26'),(2,'Lousa','2016-07-18 22:28:32','2016-07-18 22:28:32');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160416183040'),('20160416193744'),('20160417193744'),('20160418192939'),('20160419153222'),('20160420232612'),('20160425214747'),('20160425220834'),('20160430164928'),('20160430174320'),('20160430191638'),('20160430192850'),('20160507172130'),('20160507174613'),('20160514164123'),('20160514180834'),('20160514182750'),('20160519004128'),('20160521193117'),('20160528123519'),('20160528131234'),('20160528141438'),('20160528150006'),('20160604130609'),('20160604153603'),('20160604155312'),('20160604163100'),('20160604164852'),('20160604170231'),('20160604175550'),('20160604175615'),('20160604185538'),('20160604191322'),('20160611164019'),('20160611173136'),('20160611173226'),('20160611173305'),('20160614223800'),('20160614224202'),('20160707203246'),('20160707203749'),('20160719003409'),('20160719222903');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_skills`
--

DROP TABLE IF EXISTS `specific_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specific_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_skills`
--

LOCK TABLES `specific_skills` WRITE;
/*!40000 ALTER TABLE `specific_skills` DISABLE KEYS */;
INSERT INTO `specific_skills` VALUES (1,'Ler atos e documentos jurídicos ou normativos, com a devida utilização das normas técnico-jurídicas;','2016-07-18 22:27:08','2016-07-18 22:27:08'),(2,'Compreender atos e documentos jurídicos ou normativos, com a devida utilização das normas técnico-jurídicas;','2016-07-18 22:27:20','2016-07-18 22:27:20');
/*!40000 ALTER TABLE `specific_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_technical_competences`
--

DROP TABLE IF EXISTS `specific_technical_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specific_technical_competences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_technical_competences`
--

LOCK TABLES `specific_technical_competences` WRITE;
/*!40000 ALTER TABLE `specific_technical_competences` DISABLE KEYS */;
/*!40000 ALTER TABLE `specific_technical_competences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strategies`
--

DROP TABLE IF EXISTS `strategies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strategies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_strategies_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_c00c1e5cac` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strategies`
--

LOCK TABLES `strategies` WRITE;
/*!40000 ALTER TABLE `strategies` DISABLE KEYS */;
INSERT INTO `strategies` VALUES (1,'Sala de Aula Invertida',1,'2016-07-18 22:28:48','2016-07-18 22:28:48'),(2,'Estudo dirigido',1,'2016-07-18 22:28:56','2016-07-18 22:28:56');
/*!40000 ALTER TABLE `strategies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_units`
--

DROP TABLE IF EXISTS `study_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_module_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_study_units_on_course_module_id` (`course_module_id`),
  CONSTRAINT `fk_rails_ba91243668` FOREIGN KEY (`course_module_id`) REFERENCES `course_modules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_units`
--

LOCK TABLES `study_units` WRITE;
/*!40000 ALTER TABLE `study_units` DISABLE KEYS */;
INSERT INTO `study_units` VALUES (1,'Desenvolvimento Ágil',1,'2016-07-18 22:36:32','2016-07-18 22:36:32'),(2,'Direito Processual da Vara de Marmelo',1,'2016-07-18 22:36:32','2016-07-18 22:36:32');
/*!40000 ALTER TABLE `study_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_activities`
--

DROP TABLE IF EXISTS `teacher_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_teacher_activities_on_meeting_id` (`meeting_id`),
  CONSTRAINT `fk_rails_c8de54d562` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_activities`
--

LOCK TABLES `teacher_activities` WRITE;
/*!40000 ALTER TABLE `teacher_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'023035','Anderson Luis Ribeiro','anderson.ribeiro@unifeob.edu.br','2016-07-18 22:23:46','2016-07-18 22:23:46'),(2,'000001','Wendreo Fernandes','wendreoofernandes@gmail.com','2016-07-18 22:23:46','2016-07-18 22:23:46'),(3,'000002','Felipe Queiroz','felipe96_09@hotmail.com','2016-07-18 22:23:46','2016-07-18 22:23:46'),(4,'000003','Michele Colla de Oliveira','michele.oliveira@unifeob.edu.br','2016-07-18 22:23:46','2016-07-18 22:23:46');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'anderson.ribeiro@unifeob.edu.br','$2a$11$whsO/CRmMkut.5nVgtc/G.dHbOwq4oz/x3888Qt6sOxEPOGzt/cFu',NULL,NULL,NULL,11,'2016-08-03 14:51:27','2016-08-03 12:28:07','127.0.0.1','127.0.0.1','2016-07-18 22:24:31','2016-08-03 14:51:27'),(2,'wendreoofernandes@gmail.com','$2a$11$j2qCAr.n2pdLyy.aAVW3/.tqATTOjXkoSTs/C08n44BqTrdRmT0YW',NULL,NULL,NULL,3,'2016-07-19 22:22:10','2016-07-19 01:40:18','127.0.0.1','127.0.0.1','2016-07-19 01:01:32','2016-07-19 22:22:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verbs`
--

DROP TABLE IF EXISTS `verbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_verbs_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_c64a4f1a61` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbs`
--

LOCK TABLES `verbs` WRITE;
/*!40000 ALTER TABLE `verbs` DISABLE KEYS */;
INSERT INTO `verbs` VALUES (1,'Trabalhar',1,'2016-07-18 22:25:27','2016-07-18 22:25:27');
/*!40000 ALTER TABLE `verbs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-03 18:46:04
