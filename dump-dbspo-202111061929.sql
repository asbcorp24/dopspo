-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: dbspo
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.3

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
-- Table structure for table `NewTable`
--

DROP TABLE IF EXISTS `NewTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewTable` (
  `Column1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewTable`
--

LOCK TABLES `NewTable` WRITE;
/*!40000 ALTER TABLE `NewTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,4,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',2),(24,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(25,4,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',4),(26,4,'name','text','Название',0,1,1,1,1,1,'{}',5),(27,4,'long_name','text','Полное название',0,1,1,1,1,1,'{}',6),(28,4,'cena','number','Цена',0,1,1,1,1,1,'{}',7),(29,4,'comment','text_area','Комментарий',0,0,1,1,1,1,'{}',8),(30,4,'act','checkbox','Активность',0,1,1,1,1,1,'{}',9),(31,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(32,5,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',2),(33,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(34,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',4),(35,5,'name','text','Название',0,1,1,1,1,1,'{}',5),(36,5,'comment','text_area','Комментарий',0,1,1,1,1,1,'{}',6),(37,5,'img','image','Рисунок',0,0,1,1,1,1,'{}',7),(38,5,'act','checkbox','Act',0,1,1,1,1,1,'{}',8),(39,6,'id','text','Id',1,0,0,0,0,0,'{}',1),(40,6,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',2),(41,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(42,6,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',4),(43,6,'comment','text_area','Комментарий',0,1,1,1,1,1,'{}',5),(44,6,'img','image','Рисунок',0,0,1,1,1,1,'{}',6),(45,6,'act','checkbox','Act',0,1,1,1,1,1,'{}',7),(46,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(47,7,'created_at','timestamp','Created At',0,1,0,0,0,0,'{}',2),(48,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(49,7,'deleted_at','timestamp','Deleted At',0,0,0,0,1,0,'{}',4),(50,7,'fam','text','Фамилия',0,1,1,1,1,1,'{}',5),(51,7,'name','text','Имя',0,1,1,1,1,1,'{}',6),(52,7,'otch','text','Отчество',0,1,1,1,1,1,'{}',7),(53,7,'passw','text','Пароль',0,1,1,1,1,1,'{}',8),(54,7,'nmo_login','text','Nmo Login',0,1,1,1,1,1,'{}',9),(55,7,'nmo_passw','text','Nmo Passw',0,1,1,1,1,1,'{}',10),(56,7,'data_r','date','Дата рождения',0,1,1,1,1,1,'{}',11),(57,7,'phone','text','Phone',0,1,1,1,1,1,'{}',12),(58,7,'mail','text','Mail',0,1,1,1,1,1,'{}',13),(59,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(60,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',2),(61,8,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(62,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(63,8,'name','text','Название',0,1,1,1,1,1,'{}',5),(64,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(65,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(66,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(67,9,'student','text','Student',0,1,1,1,1,1,'{}',4),(68,9,'tipdoc_id','text','Tipdoc Id',0,1,1,1,1,1,'{}',6),(69,9,'path','file','Path',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required_without:_method|mimes:pdf\",\"messages\":{}},\"delete_files\":true}',7),(70,9,'studfile_belongsto_tipdocaccr_relationship','relationship','tipdocaccr',0,1,1,1,1,1,'{\"model\":\"App\\\\Tipdocaccr\",\"table\":\"tipdocaccr\",\"type\":\"belongsTo\",\"column\":\"tipdoc_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"NewTable\",\"pivot\":\"0\",\"taggable\":\"0\"}',5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-08-23 14:59:29','2021-08-23 14:59:29'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-08-23 14:59:30','2021-08-23 14:59:30'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-08-23 14:59:30','2021-08-23 14:59:30'),(4,'price','price','Прайс','Прайсы','voyager-receipt','App\\Price',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-20 14:40:18','2021-09-20 14:40:18'),(5,'tekst','tekst','Тексты','Тексты','voyager-news','App\\Tekst',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-20 15:44:44','2021-09-20 15:46:55'),(6,'uppanel','uppanel','Заголовок панели','Заголовок панели','voyager-polaroid','App\\Uppanel',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-20 15:59:21','2021-09-20 16:00:22'),(7,'students','students','Student','Students','voyager-helm','App\\Student',NULL,'\\App\\Http\\Controllers\\usluser',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-23 15:59:34','2021-10-13 13:50:51'),(8,'tipdocaccr','tipdocaccr','Тип документов об аккредитации','Тип документов об аккредитации','voyager-group','App\\Tipdocaccr',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-03 14:01:30','2021-11-03 14:13:34'),(9,'studfile','studfile','Файл слушателя','Файлы слушателя','voyager-data','App\\Studfile',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-03 14:38:28','2021-11-04 18:48:19');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2021-08-23 14:59:31','2021-08-23 14:59:31',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2021-08-23 14:59:31','2021-08-23 14:59:31','voyager.settings.index',NULL),(11,1,'Прайсы','','_self','voyager-receipt',NULL,NULL,15,'2021-09-20 14:40:18','2021-09-20 14:40:18','voyager.price.index',NULL),(12,1,'Тексты','','_self','voyager-news',NULL,NULL,16,'2021-09-20 15:44:44','2021-09-20 15:44:44','voyager.tekst.index',NULL),(13,1,'Заголовок панели','','_self','voyager-polaroid',NULL,NULL,17,'2021-09-20 15:59:21','2021-09-20 15:59:21','voyager.uppanel.index',NULL),(14,1,'Students','','_self','voyager-helm',NULL,NULL,18,'2021-09-23 15:59:35','2021-09-23 15:59:35','voyager.students.index',NULL),(15,1,'Тип документов об аккредитации','','_self','voyager-group',NULL,NULL,19,'2021-11-03 14:01:31','2021-11-03 14:01:31','voyager.tipdocaccr.index',NULL),(16,1,'Файлы слушателя','','_self','voyager-data',NULL,NULL,20,'2021-11-03 14:38:28','2021-11-03 14:38:28','voyager.studfile.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-08-23 14:59:31','2021-08-23 14:59:31');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-08-23 14:59:31','2021-08-23 14:59:31'),(2,'browse_bread',NULL,'2021-08-23 14:59:31','2021-08-23 14:59:31'),(3,'browse_database',NULL,'2021-08-23 14:59:31','2021-08-23 14:59:31'),(4,'browse_media',NULL,'2021-08-23 14:59:31','2021-08-23 14:59:31'),(5,'browse_compass',NULL,'2021-08-23 14:59:31','2021-08-23 14:59:31'),(6,'browse_menus','menus','2021-08-23 14:59:31','2021-08-23 14:59:31'),(7,'read_menus','menus','2021-08-23 14:59:31','2021-08-23 14:59:31'),(8,'edit_menus','menus','2021-08-23 14:59:31','2021-08-23 14:59:31'),(9,'add_menus','menus','2021-08-23 14:59:31','2021-08-23 14:59:31'),(10,'delete_menus','menus','2021-08-23 14:59:31','2021-08-23 14:59:31'),(11,'browse_roles','roles','2021-08-23 14:59:31','2021-08-23 14:59:31'),(12,'read_roles','roles','2021-08-23 14:59:31','2021-08-23 14:59:31'),(13,'edit_roles','roles','2021-08-23 14:59:31','2021-08-23 14:59:31'),(14,'add_roles','roles','2021-08-23 14:59:31','2021-08-23 14:59:31'),(15,'delete_roles','roles','2021-08-23 14:59:31','2021-08-23 14:59:31'),(16,'browse_users','users','2021-08-23 14:59:31','2021-08-23 14:59:31'),(17,'read_users','users','2021-08-23 14:59:31','2021-08-23 14:59:31'),(18,'edit_users','users','2021-08-23 14:59:31','2021-08-23 14:59:31'),(19,'add_users','users','2021-08-23 14:59:31','2021-08-23 14:59:31'),(20,'delete_users','users','2021-08-23 14:59:31','2021-08-23 14:59:31'),(21,'browse_settings','settings','2021-08-23 14:59:31','2021-08-23 14:59:31'),(22,'read_settings','settings','2021-08-23 14:59:31','2021-08-23 14:59:31'),(23,'edit_settings','settings','2021-08-23 14:59:31','2021-08-23 14:59:31'),(24,'add_settings','settings','2021-08-23 14:59:31','2021-08-23 14:59:31'),(25,'delete_settings','settings','2021-08-23 14:59:31','2021-08-23 14:59:31'),(26,'browse_price','price','2021-09-20 14:40:18','2021-09-20 14:40:18'),(27,'read_price','price','2021-09-20 14:40:18','2021-09-20 14:40:18'),(28,'edit_price','price','2021-09-20 14:40:18','2021-09-20 14:40:18'),(29,'add_price','price','2021-09-20 14:40:18','2021-09-20 14:40:18'),(30,'delete_price','price','2021-09-20 14:40:18','2021-09-20 14:40:18'),(31,'browse_tekst','tekst','2021-09-20 15:44:44','2021-09-20 15:44:44'),(32,'read_tekst','tekst','2021-09-20 15:44:44','2021-09-20 15:44:44'),(33,'edit_tekst','tekst','2021-09-20 15:44:44','2021-09-20 15:44:44'),(34,'add_tekst','tekst','2021-09-20 15:44:44','2021-09-20 15:44:44'),(35,'delete_tekst','tekst','2021-09-20 15:44:44','2021-09-20 15:44:44'),(36,'browse_uppanel','uppanel','2021-09-20 15:59:21','2021-09-20 15:59:21'),(37,'read_uppanel','uppanel','2021-09-20 15:59:21','2021-09-20 15:59:21'),(38,'edit_uppanel','uppanel','2021-09-20 15:59:21','2021-09-20 15:59:21'),(39,'add_uppanel','uppanel','2021-09-20 15:59:21','2021-09-20 15:59:21'),(40,'delete_uppanel','uppanel','2021-09-20 15:59:21','2021-09-20 15:59:21'),(41,'browse_students','students','2021-09-23 15:59:34','2021-09-23 15:59:34'),(42,'read_students','students','2021-09-23 15:59:34','2021-09-23 15:59:34'),(43,'edit_students','students','2021-09-23 15:59:34','2021-09-23 15:59:34'),(44,'add_students','students','2021-09-23 15:59:34','2021-09-23 15:59:34'),(45,'delete_students','students','2021-09-23 15:59:34','2021-09-23 15:59:34'),(46,'browse_tipdocaccr','tipdocaccr','2021-11-03 14:01:31','2021-11-03 14:01:31'),(47,'read_tipdocaccr','tipdocaccr','2021-11-03 14:01:31','2021-11-03 14:01:31'),(48,'edit_tipdocaccr','tipdocaccr','2021-11-03 14:01:31','2021-11-03 14:01:31'),(49,'add_tipdocaccr','tipdocaccr','2021-11-03 14:01:31','2021-11-03 14:01:31'),(50,'delete_tipdocaccr','tipdocaccr','2021-11-03 14:01:31','2021-11-03 14:01:31'),(51,'browse_studfile','studfile','2021-11-03 14:38:28','2021-11-03 14:38:28'),(52,'read_studfile','studfile','2021-11-03 14:38:28','2021-11-03 14:38:28'),(53,'edit_studfile','studfile','2021-11-03 14:38:28','2021-11-03 14:38:28'),(54,'add_studfile','studfile','2021-11-03 14:38:28','2021-11-03 14:38:28'),(55,'delete_studfile','studfile','2021-11-03 14:38:28','2021-11-03 14:38:28');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cena` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `act` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,'2021-09-20 14:49:08','2021-09-20 14:49:08',NULL,'Консультант','Помощь при регистрации и консультация по работе и ведению личного кабинета на портале НМО',500,NULL,1),(2,'2021-09-20 14:50:24','2021-09-20 14:50:24',NULL,'Полный','Получить полное сопровождение личного кабинета – 50 баллов НМО (50 ЗЕТ)',5000,NULL,1),(3,'2021-09-20 14:51:22','2021-09-20 14:51:32',NULL,'Портфолио','Получить заполненное портфолио для аккредитационной комиссии',5000,'(если циклы бесплатные)',1),(4,'2021-09-20 14:52:28','2021-09-20 14:52:28',NULL,'Дистант','Пройти дистанционное обучение НМО — 36 баллов НМО (36 ЗЕТ)',3500,NULL,1),(5,'2021-09-20 14:53:27','2021-09-20 14:53:27',NULL,'Начальный','Получить бесплатные баллы НМО – 14 баллов НМО (14 ЗЕТ)',1500,NULL,1),(6,'2021-09-20 14:53:58','2021-09-20 14:53:58',NULL,'Максимальный','Получить полное сопровождение личного кабинета – 50 баллов НМО (100 ЗЕТ)',10000,NULL,1);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-08-23 14:59:31','2021-08-23 14:59:31'),(2,'user','Normal User','2021-08-23 14:59:31','2021-08-23 14:59:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','ДПО СМО','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fam` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otch` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passw` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nmo_login` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nmo_passw` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_r` date DEFAULT NULL,
  `phone` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (5,'2021-10-13 14:08:26','2021-10-13 14:08:26',NULL,'Иванов','Иван',NULL,'8730354887',NULL,NULL,'2021-10-06','89600305931','asbcorp24@gmail.com');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studfile`
--

DROP TABLE IF EXISTS `studfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studfile` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student` int DEFAULT NULL,
  `tipdoc_id` int DEFAULT NULL,
  `path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studfile`
--

LOCK TABLES `studfile` WRITE;
/*!40000 ALTER TABLE `studfile` DISABLE KEYS */;
INSERT INTO `studfile` VALUES (1,'2021-11-03 14:48:00','2021-11-03 16:37:37',32132,1,NULL),(2,'2021-11-03 16:05:00','2021-11-04 19:20:17',32132,1,'[{\"download_link\":\"studfile\\/November2021\\/QWap0QvZyLyWzpuZNhpk.pdf\",\"original_name\":\"\\u041f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c\\u044b\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0443.pdf\"},{\"download_link\":\"studfile\\/November2021\\/51Fy2WSmvi6waGCHsy8Q.pdf\",\"original_name\":\"\\u041f\\u0435\\u0447\\u0430\\u0442\\u044c (13).pdf\"}]');
/*!40000 ALTER TABLE `studfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tekst`
--

DROP TABLE IF EXISTS `tekst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tekst` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tekst`
--

LOCK TABLES `tekst` WRITE;
/*!40000 ALTER TABLE `tekst` DISABLE KEYS */;
INSERT INTO `tekst` VALUES (1,'2021-09-20 15:45:38','2021-09-20 15:47:09',NULL,'Упрощенная система','Согласно приказу Минздрава №746н от 09.07.2021, процедура Периодической аккредитации в 2021 году для медицинских и фармацевтических специалистов будет проходить по упрощенной системе.','tekst\\September2021\\9tFS45bFYZmFjHy3BX3y.jpg',1);
/*!40000 ALTER TABLE `tekst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipdocaccr`
--

DROP TABLE IF EXISTS `tipdocaccr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipdocaccr` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipdocaccr`
--

LOCK TABLES `tipdocaccr` WRITE;
/*!40000 ALTER TABLE `tipdocaccr` DISABLE KEYS */;
INSERT INTO `tipdocaccr` VALUES (1,NULL,'2021-11-03 14:15:45','2021-11-03 14:15:45','Паспорт');
/*!40000 ALTER TABLE `tipdocaccr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uppanel`
--

DROP TABLE IF EXISTS `uppanel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uppanel` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uppanel`
--

LOCK TABLES `uppanel` WRITE;
/*!40000 ALTER TABLE `uppanel` DISABLE KEYS */;
INSERT INTO `uppanel` VALUES (1,'2021-09-20 16:00:56','2021-09-20 16:05:32',NULL,'помощь при создании и ведении личного кабинета на портале НМО;','uppanel\\September2021\\F67JZKy85YkRsLich8cN.png',1);
/*!40000 ALTER TABLE `uppanel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','asbcorp24@gmail.com','users/default.png',NULL,'$2y$10$5fEf5crXgvaM22b3U4EcsOZTwRB1KLkKDWcMyg0IpQbsC8DI21qWa',NULL,NULL,'2021-08-23 15:01:59','2021-08-23 15:01:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uslug`
--

DROP TABLE IF EXISTS `uslug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uslug` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_uslug` int DEFAULT NULL,
  `id_student` int DEFAULT NULL,
  `usl_zav` int DEFAULT NULL,
  `dat_zav` date DEFAULT NULL,
  `opl` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uslug`
--

LOCK TABLES `uslug` WRITE;
/*!40000 ALTER TABLE `uslug` DISABLE KEYS */;
INSERT INTO `uslug` VALUES (1,'2021-10-13 14:08:26','2021-10-13 15:14:58',2,5,NULL,'2021-10-03',1);
/*!40000 ALTER TABLE `uslug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uuslug`
--

DROP TABLE IF EXISTS `uuslug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uuslug` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `uslugaid` int DEFAULT NULL,
  `oplach` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uuslug`
--

LOCK TABLES `uuslug` WRITE;
/*!40000 ALTER TABLE `uuslug` DISABLE KEYS */;
/*!40000 ALTER TABLE `uuslug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbspo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-06 19:29:11
