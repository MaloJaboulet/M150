-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: CommerceDB
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `action_recorder`
--

DROP TABLE IF EXISTS `action_recorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_action_recorder_module` (`module`),
  KEY `idx_action_recorder_user_id` (`user_id`),
  KEY `idx_action_recorder_identifier` (`identifier`),
  KEY `idx_action_recorder_date_added` (`date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_recorder`
--

LOCK TABLES `action_recorder` WRITE;
/*!40000 ALTER TABLE `action_recorder` DISABLE KEYS */;
INSERT INTO `action_recorder` VALUES (1,'ar_admin_login',1,'admin','127.0.0.1','1','2021-12-01 15:36:58'),(2,'ar_admin_login',1,'admin','127.0.0.1','1','2021-12-08 13:20:47'),(3,'ar_admin_login',1,'admin','127.0.0.1','1','2021-12-08 13:24:28'),(4,'ar_admin_login',1,'admin','127.0.0.1','1','2021-12-15 22:53:02'),(5,'ar_admin_login',1,'admin','127.0.0.1','1','2022-01-05 14:26:32'),(6,'ar_admin_login',1,'admin','127.0.0.1','1','2022-01-19 16:07:46'),(7,'ar_admin_login',1,'admin','127.0.0.1','1','2022-01-19 17:47:52');
/*!40000 ALTER TABLE `action_recorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT 0,
  `entry_zone_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
INSERT INTO `address_book` VALUES (1,1,'m','','Sarah','Frischknecht','Strasse 4','','8600','Sack','',204,129);
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_format`
--

DROP TABLE IF EXISTS `address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`address_format_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_format`
--

LOCK TABLES `address_format` WRITE;
/*!40000 ALTER TABLE `address_format` DISABLE KEYS */;
INSERT INTO `address_format` VALUES (1,'$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country','$city / $country'),(2,'$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country','$city, $state / $country'),(3,'$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country','$state / $country'),(4,'$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country','$postcode / $country'),(5,'$firstname $lastname$cr$streets$cr$postcode $city$cr$country','$city / $country');
/*!40000 ALTER TABLE `address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (1,'admin','$P$Druf5K0LQd.89QfnoT4Wv/4ZQZJ5EQ1');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_impressions` int(7) DEFAULT 0,
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`banners_id`),
  KEY `idx_banners_group` (`banners_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'osCommerce','http://www.oscommerce.com','banners/oscommerce.gif','footer','',0,NULL,NULL,'2021-12-01 14:15:10',NULL,1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_history`
--

DROP TABLE IF EXISTS `banners_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT 0,
  `banners_clicked` int(5) NOT NULL DEFAULT 0,
  `banners_history_date` datetime NOT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_banners_history_banners_id` (`banners_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_history`
--

LOCK TABLES `banners_history` WRITE;
/*!40000 ALTER TABLE `banners_history` DISABLE KEYS */;
INSERT INTO `banners_history` VALUES (1,1,60,0,'2021-12-01 14:19:11'),(2,1,4,0,'2022-01-12 13:55:48');
/*!40000 ALTER TABLE `banners_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'category_hardware.gif',0,1,'2021-12-01 14:15:10',NULL),(2,'category_software.gif',0,2,'2021-12-01 14:15:10',NULL),(3,'category_dvd_movies.gif',0,3,'2021-12-01 14:15:10',NULL),(4,'subcategory_graphic_cards.gif',1,0,'2021-12-01 14:15:10',NULL),(5,'subcategory_printers.gif',1,0,'2021-12-01 14:15:10',NULL),(6,'subcategory_monitors.gif',1,0,'2021-12-01 14:15:10',NULL),(7,'subcategory_speakers.gif',1,0,'2021-12-01 14:15:10',NULL),(8,'subcategory_keyboards.gif',1,0,'2021-12-01 14:15:10',NULL),(9,'subcategory_mice.gif',1,0,'2021-12-01 14:15:10',NULL),(10,'subcategory_action.gif',3,0,'2021-12-01 14:15:10',NULL),(11,'subcategory_science_fiction.gif',3,0,'2021-12-01 14:15:10',NULL),(12,'subcategory_comedy.gif',3,0,'2021-12-01 14:15:10',NULL),(13,'subcategory_cartoons.gif',3,0,'2021-12-01 14:15:10',NULL),(14,'subcategory_thriller.gif',3,0,'2021-12-01 14:15:10',NULL),(15,'subcategory_drama.gif',3,0,'2021-12-01 14:15:10',NULL),(16,'subcategory_memory.gif',1,0,'2021-12-01 14:15:10',NULL),(17,'subcategory_cdrom_drives.gif',1,0,'2021-12-01 14:15:10',NULL),(18,'subcategory_simulation.gif',2,0,'2021-12-01 14:15:10',NULL),(19,'subcategory_action_games.gif',2,0,'2021-12-01 14:15:10',NULL),(20,'subcategory_strategy.gif',2,0,'2021-12-01 14:15:10',NULL),(21,'category_gadgets.png',0,4,'2021-12-01 14:15:10',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_description`
--

DROP TABLE IF EXISTS `categories_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_id`,`language_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_description`
--

LOCK TABLES `categories_description` WRITE;
/*!40000 ALTER TABLE `categories_description` DISABLE KEYS */;
INSERT INTO `categories_description` VALUES (10,1,'Action'),(19,1,'Action'),(13,1,'Cartoons'),(17,1,'CDROM Drives'),(12,1,'Comedy'),(15,1,'Drama'),(3,1,'DVD Movies'),(21,1,'Gadgets'),(4,1,'Graphics Cards'),(1,1,'Hardware'),(8,1,'Keyboards'),(16,1,'Memory'),(9,1,'Mice'),(6,1,'Monitors'),(5,1,'Printers'),(11,1,'Science Fiction'),(18,1,'Simulation'),(2,1,'Software'),(7,1,'Speakers'),(20,1,'Strategy'),(14,1,'Thriller');
/*!40000 ALTER TABLE `categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_value` text COLLATE utf8_unicode_ci NOT NULL,
  `configuration_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'Store Name','STORE_NAME','Fanshop','The name of my store',1,1,NULL,'2021-12-01 14:15:10',NULL,NULL),(2,'Store Owner','STORE_OWNER','','The name of my store owner',1,2,NULL,'2021-12-01 14:15:10',NULL,NULL),(3,'E-Mail Address','STORE_OWNER_EMAIL_ADDRESS','','The e-mail address of my store owner',1,3,NULL,'2021-12-01 14:15:10',NULL,NULL),(4,'E-Mail From','EMAIL_FROM','','The e-mail address used in (sent) e-mails',1,4,NULL,'2021-12-01 14:15:10',NULL,NULL),(5,'Country','STORE_COUNTRY','223','The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>',1,6,NULL,'2021-12-01 14:15:10','tep_get_country_name','tep_cfg_pull_down_country_list('),(6,'Zone','STORE_ZONE','18','The zone my store is located in',1,7,NULL,'2021-12-01 14:15:10','tep_cfg_get_zone_name','tep_cfg_pull_down_zone_list('),(7,'Expected Sort Order','EXPECTED_PRODUCTS_SORT','desc','This is the sort order used in the expected products box.',1,8,NULL,'2021-12-01 14:15:10',NULL,'tep_cfg_select_option(array(\'asc\', \'desc\'), '),(8,'Expected Sort Field','EXPECTED_PRODUCTS_FIELD','date_expected','The column to sort by in the expected products box.',1,9,NULL,'2021-12-01 14:15:10',NULL,'tep_cfg_select_option(array(\'products_name\', \'date_expected\'), '),(9,'Switch To Default Language Currency','USE_DEFAULT_LANGUAGE_CURRENCY','false','Automatically switch to the language\'s currency when it is changed',1,10,NULL,'2021-12-01 14:15:10',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(10,'Send Extra Order Emails To','SEND_EXTRA_ORDER_EMAILS_TO','','Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',1,11,NULL,'2021-12-01 14:15:10',NULL,NULL),(11,'Use Search-Engine Safe URLs','SEARCH_ENGINE_FRIENDLY_URLS','false','Use search-engine safe urls for all site links',1,12,NULL,'2021-12-01 14:15:10',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(12,'Display Cart After Adding Product','DISPLAY_CART','true','Display the shopping cart after adding a product (or return back to their origin)',1,14,NULL,'2021-12-01 14:15:10',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(13,'Allow Guest To Tell A Friend','ALLOW_GUEST_TO_TELL_A_FRIEND','false','Allow guests to tell a friend about a product',1,15,NULL,'2021-12-01 14:15:10',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(14,'Default Search Operator','ADVANCED_SEARCH_DEFAULT_OPERATOR','and','Default search operators',1,17,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'and\', \'or\'), '),(15,'Store Address and Phone','STORE_NAME_ADDRESS','Store Name\nAddress\nCountry\nPhone','This is the Store Name, Address and Phone used on printable documents and displayed online',1,18,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_textarea('),(16,'Show Category Counts','SHOW_COUNTS','true','Count recursively how many products are in each category',1,19,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(17,'Tax Decimal Places','TAX_DECIMAL_PLACES','0','Pad the tax value this amount of decimal places',1,20,NULL,'2021-12-01 14:15:11',NULL,NULL),(18,'Display Prices with Tax','DISPLAY_PRICE_WITH_TAX','false','Display prices with tax included (true) or add the tax at the end (false)',1,21,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(19,'First Name','ENTRY_FIRST_NAME_MIN_LENGTH','2','Minimum length of first name',2,1,NULL,'2021-12-01 14:15:11',NULL,NULL),(20,'Last Name','ENTRY_LAST_NAME_MIN_LENGTH','2','Minimum length of last name',2,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(21,'Date of Birth','ENTRY_DOB_MIN_LENGTH','10','Minimum length of date of birth',2,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(22,'E-Mail Address','ENTRY_EMAIL_ADDRESS_MIN_LENGTH','6','Minimum length of e-mail address',2,4,NULL,'2021-12-01 14:15:11',NULL,NULL),(23,'Street Address','ENTRY_STREET_ADDRESS_MIN_LENGTH','5','Minimum length of street address',2,5,NULL,'2021-12-01 14:15:11',NULL,NULL),(24,'Company','ENTRY_COMPANY_MIN_LENGTH','2','Minimum length of company name',2,6,NULL,'2021-12-01 14:15:11',NULL,NULL),(25,'Post Code','ENTRY_POSTCODE_MIN_LENGTH','4','Minimum length of post code',2,7,NULL,'2021-12-01 14:15:11',NULL,NULL),(26,'City','ENTRY_CITY_MIN_LENGTH','3','Minimum length of city',2,8,NULL,'2021-12-01 14:15:11',NULL,NULL),(27,'State','ENTRY_STATE_MIN_LENGTH','2','Minimum length of state',2,9,NULL,'2021-12-01 14:15:11',NULL,NULL),(28,'Telephone Number','ENTRY_TELEPHONE_MIN_LENGTH','3','Minimum length of telephone number',2,10,NULL,'2021-12-01 14:15:11',NULL,NULL),(29,'Password','ENTRY_PASSWORD_MIN_LENGTH','5','Minimum length of password',2,11,NULL,'2021-12-01 14:15:11',NULL,NULL),(30,'Credit Card Owner Name','CC_OWNER_MIN_LENGTH','3','Minimum length of credit card owner name',2,12,NULL,'2021-12-01 14:15:11',NULL,NULL),(31,'Credit Card Number','CC_NUMBER_MIN_LENGTH','10','Minimum length of credit card number',2,13,NULL,'2021-12-01 14:15:11',NULL,NULL),(32,'Review Text','REVIEW_TEXT_MIN_LENGTH','50','Minimum length of review text',2,14,NULL,'2021-12-01 14:15:11',NULL,NULL),(33,'Best Sellers','MIN_DISPLAY_BESTSELLERS','1','Minimum number of best sellers to display',2,15,NULL,'2021-12-01 14:15:11',NULL,NULL),(34,'Also Purchased','MIN_DISPLAY_ALSO_PURCHASED','1','Minimum number of products to display in the \'This Customer Also Purchased\' box',2,16,NULL,'2021-12-01 14:15:11',NULL,NULL),(35,'Address Book Entries','MAX_ADDRESS_BOOK_ENTRIES','5','Maximum address book entries a customer is allowed to have',3,1,NULL,'2021-12-01 14:15:11',NULL,NULL),(36,'Search Results','MAX_DISPLAY_SEARCH_RESULTS','20','Amount of products to list',3,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(37,'Page Links','MAX_DISPLAY_PAGE_LINKS','5','Number of \'number\' links use for page-sets',3,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(38,'Special Products','MAX_DISPLAY_SPECIAL_PRODUCTS','9','Maximum number of products on special to display',3,4,NULL,'2021-12-01 14:15:11',NULL,NULL),(39,'New Products Module','MAX_DISPLAY_NEW_PRODUCTS','9','Maximum number of new products to display in a category',3,5,NULL,'2021-12-01 14:15:11',NULL,NULL),(40,'Products Expected','MAX_DISPLAY_UPCOMING_PRODUCTS','10','Maximum number of products expected to display',3,6,NULL,'2021-12-01 14:15:11',NULL,NULL),(41,'Manufacturers List','MAX_DISPLAY_MANUFACTURERS_IN_A_LIST','0','Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list',3,7,NULL,'2021-12-01 14:15:11',NULL,NULL),(42,'Manufacturers Select Size','MAX_MANUFACTURERS_LIST','1','Used in manufacturers box; when this value is \'1\' the classic drop-down list will be used for the manufacturers box. Otherwise, a list-box with the specified number of rows will be displayed.',3,7,NULL,'2021-12-01 14:15:11',NULL,NULL),(43,'Length of Manufacturers Name','MAX_DISPLAY_MANUFACTURER_NAME_LEN','15','Used in manufacturers box; maximum length of manufacturers name to display',3,8,NULL,'2021-12-01 14:15:11',NULL,NULL),(44,'New Reviews','MAX_DISPLAY_NEW_REVIEWS','6','Maximum number of new reviews to display',3,9,NULL,'2021-12-01 14:15:11',NULL,NULL),(45,'Selection of Random Reviews','MAX_RANDOM_SELECT_REVIEWS','10','How many records to select from to choose one random product review',3,10,NULL,'2021-12-01 14:15:11',NULL,NULL),(46,'Selection of Random New Products','MAX_RANDOM_SELECT_NEW','10','How many records to select from to choose one random new product to display',3,11,NULL,'2021-12-01 14:15:11',NULL,NULL),(47,'Selection of Products on Special','MAX_RANDOM_SELECT_SPECIALS','10','How many records to select from to choose one random product special to display',3,12,NULL,'2021-12-01 14:15:11',NULL,NULL),(48,'Categories To List Per Row','MAX_DISPLAY_CATEGORIES_PER_ROW','3','How many categories to list per row',3,13,NULL,'2021-12-01 14:15:11',NULL,NULL),(49,'New Products Listing','MAX_DISPLAY_PRODUCTS_NEW','10','Maximum number of new products to display in new products page',3,14,NULL,'2021-12-01 14:15:11',NULL,NULL),(50,'Best Sellers','MAX_DISPLAY_BESTSELLERS','10','Maximum number of best sellers to display',3,15,NULL,'2021-12-01 14:15:11',NULL,NULL),(51,'Also Purchased','MAX_DISPLAY_ALSO_PURCHASED','6','Maximum number of products to display in the \'This Customer Also Purchased\' box',3,16,NULL,'2021-12-01 14:15:11',NULL,NULL),(52,'Customer Order History Box','MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX','6','Maximum number of products to display in the customer order history box',3,17,NULL,'2021-12-01 14:15:11',NULL,NULL),(53,'Order History','MAX_DISPLAY_ORDER_HISTORY','10','Maximum number of orders to display in the order history page',3,18,NULL,'2021-12-01 14:15:11',NULL,NULL),(54,'Product Quantities In Shopping Cart','MAX_QTY_IN_CART','99','Maximum number of product quantities that can be added to the shopping cart (0 for no limit)',3,19,NULL,'2021-12-01 14:15:11',NULL,NULL),(55,'Small Image Width','SMALL_IMAGE_WIDTH','100','The pixel width of small images',4,1,NULL,'2021-12-01 14:15:11',NULL,NULL),(56,'Small Image Height','SMALL_IMAGE_HEIGHT','80','The pixel height of small images',4,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(57,'Heading Image Width','HEADING_IMAGE_WIDTH','57','The pixel width of heading images',4,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(58,'Heading Image Height','HEADING_IMAGE_HEIGHT','40','The pixel height of heading images',4,4,NULL,'2021-12-01 14:15:11',NULL,NULL),(59,'Subcategory Image Width','SUBCATEGORY_IMAGE_WIDTH','100','The pixel width of subcategory images',4,5,NULL,'2021-12-01 14:15:11',NULL,NULL),(60,'Subcategory Image Height','SUBCATEGORY_IMAGE_HEIGHT','57','The pixel height of subcategory images',4,6,NULL,'2021-12-01 14:15:11',NULL,NULL),(61,'Calculate Image Size','CONFIG_CALCULATE_IMAGE_SIZE','true','Calculate the size of images?',4,7,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(62,'Image Required','IMAGE_REQUIRED','true','Enable to display broken images. Good for development.',4,8,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(63,'Gender','ACCOUNT_GENDER','true','Display gender in the customers account',5,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(64,'Date of Birth','ACCOUNT_DOB','true','Display date of birth in the customers account',5,2,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(65,'Company','ACCOUNT_COMPANY','true','Display company in the customers account',5,3,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(66,'Suburb','ACCOUNT_SUBURB','true','Display suburb in the customers account',5,4,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(67,'State','ACCOUNT_STATE','true','Display state in the customers account',5,5,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(68,'Installed Modules','MODULE_PAYMENT_INSTALLED','cod.php;paypal_express.php','List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cod.php;paypal_express.php)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(69,'Installed Modules','MODULE_ORDER_TOTAL_INSTALLED','ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php','List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(70,'Installed Modules','MODULE_SHIPPING_INSTALLED','flat.php','List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(71,'Installed Modules','MODULE_ACTION_RECORDER_INSTALLED','ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php','List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(72,'Installed Modules','MODULE_SOCIAL_BOOKMARKS_INSTALLED','sb_email.php;sb_facebook.php;sb_google_plus_share.php;sb_pinterest.php;sb_twitter.php','List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(73,'Enable Cash On Delivery Module','MODULE_PAYMENT_COD_STATUS','True','Do you want to accept Cash On Delevery payments?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(74,'Payment Zone','MODULE_PAYMENT_COD_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,2,NULL,'2021-12-01 14:15:11','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes('),(75,'Sort order of display.','MODULE_PAYMENT_COD_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(76,'Set Order Status','MODULE_PAYMENT_COD_ORDER_STATUS_ID','0','Set the status of orders made with this payment module to this value',6,0,NULL,'2021-12-01 14:15:11','tep_get_order_status_name','tep_cfg_pull_down_order_statuses('),(77,'Enable Flat Shipping','MODULE_SHIPPING_FLAT_STATUS','True','Do you want to offer flat rate shipping?',6,0,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(78,'Shipping Cost','MODULE_SHIPPING_FLAT_COST','5.00','The shipping cost for all orders using this shipping method.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(79,'Tax Class','MODULE_SHIPPING_FLAT_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2021-12-01 14:15:11','tep_get_tax_class_title','tep_cfg_pull_down_tax_classes('),(80,'Shipping Zone','MODULE_SHIPPING_FLAT_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2021-12-01 14:15:11','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes('),(81,'Sort Order','MODULE_SHIPPING_FLAT_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(82,'Default Currency','DEFAULT_CURRENCY','USD','Default Currency',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(83,'Default Language','DEFAULT_LANGUAGE','en','Default Language',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(84,'Default Order Status For New Orders','DEFAULT_ORDERS_STATUS_ID','1','When a new order is created, this order status will be assigned to it.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(85,'Display Shipping','MODULE_ORDER_TOTAL_SHIPPING_STATUS','true','Do you want to display the order shipping cost?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(86,'Sort Order','MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER','2','Sort order of display.',6,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(87,'Allow Free Shipping','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING','false','Do you want to allow free shipping?',6,3,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(88,'Free Shipping For Orders Over','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER','50','Provide free shipping for orders over the set amount.',6,4,NULL,'2021-12-01 14:15:11','currencies->format',NULL),(89,'Provide Free Shipping For Orders Made','MODULE_ORDER_TOTAL_SHIPPING_DESTINATION','national','Provide free shipping for orders sent to the set destination.',6,5,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'national\', \'international\', \'both\'), '),(90,'Display Sub-Total','MODULE_ORDER_TOTAL_SUBTOTAL_STATUS','true','Do you want to display the order sub-total cost?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(91,'Sort Order','MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER','1','Sort order of display.',6,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(92,'Display Tax','MODULE_ORDER_TOTAL_TAX_STATUS','true','Do you want to display the order tax value?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(93,'Sort Order','MODULE_ORDER_TOTAL_TAX_SORT_ORDER','3','Sort order of display.',6,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(94,'Display Total','MODULE_ORDER_TOTAL_TOTAL_STATUS','true','Do you want to display the total order value?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(95,'Sort Order','MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER','4','Sort order of display.',6,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(96,'Minimum Minutes Per E-Mail','MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES','15','Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(97,'Minimum Minutes Per E-Mail','MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES','15','Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(98,'Allowed Minutes','MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES','5','Number of minutes to allow login attempts to occur.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(99,'Allowed Attempts','MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS','3','Number of login attempts to allow within the specified period.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(100,'Allowed Minutes','MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES','5','Number of minutes to allow password resets to occur.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(101,'Allowed Attempts','MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS','1','Number of password reset attempts to allow within the specified period.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(102,'Enable E-Mail Module','MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS','True','Do you want to allow products to be shared through e-mail?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(103,'Sort Order','MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER','10','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(104,'Enable Google+ Share Module','MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS','True','Do you want to allow products to be shared through Google+?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(105,'Annotation','MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION','None','The annotation to display next to the button.',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Inline\', \'Bubble\', \'Vertical-Bubble\', \'None\'), '),(106,'Width','MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH','','The maximum width of the button.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(107,'Height','MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT','15','Sets the height of the button.',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'15\', \'20\', \'24\', \'60\'), '),(108,'Alignment','MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN','Left','The alignment of the button assets.',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left\', \'Right\'), '),(109,'Sort Order','MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER','20','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(110,'Enable Facebook Module','MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS','True','Do you want to allow products to be shared through Facebook?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(111,'Sort Order','MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER','30','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(112,'Enable Twitter Module','MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS','True','Do you want to allow products to be shared through Twitter?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(113,'Sort Order','MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER','40','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(114,'Enable Pinterest Module','MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS','True','Do you want to allow Pinterest Button?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(115,'Layout Position','MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION','None','Horizontal or Vertical or None',6,2,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Horizontal\', \'Vertical\', \'None\'), '),(116,'Sort Order','MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER','50','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(117,'Country of Origin','SHIPPING_ORIGIN_COUNTRY','223','Select the country of origin to be used in shipping quotes.',7,1,NULL,'2021-12-01 14:15:11','tep_get_country_name','tep_cfg_pull_down_country_list('),(118,'Postal Code','SHIPPING_ORIGIN_ZIP','NONE','Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.',7,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(119,'Enter the Maximum Package Weight you will ship','SHIPPING_MAX_WEIGHT','50','Carriers have a max weight limit for a single package. This is a common one for all.',7,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(120,'Package Tare weight.','SHIPPING_BOX_WEIGHT','3','What is the weight of typical packaging of small to medium packages?',7,4,NULL,'2021-12-01 14:15:11',NULL,NULL),(121,'Larger packages - percentage increase.','SHIPPING_BOX_PADDING','10','For 10% enter 10',7,5,NULL,'2021-12-01 14:15:11',NULL,NULL),(122,'Allow Orders Not Matching Defined Shipping Zones ','SHIPPING_ALLOW_UNDEFINED_ZONES','False','Should orders be allowed to shipping addresses not matching defined shipping module shipping zones?',7,5,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(123,'Display Product Image','PRODUCT_LIST_IMAGE','1','Do you want to display the Product Image?',8,1,NULL,'2021-12-01 14:15:11',NULL,NULL),(124,'Display Product Manufacturer Name','PRODUCT_LIST_MANUFACTURER','0','Do you want to display the Product Manufacturer Name?',8,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(125,'Display Product Model','PRODUCT_LIST_MODEL','0','Do you want to display the Product Model?',8,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(126,'Display Product Name','PRODUCT_LIST_NAME','2','Do you want to display the Product Name?',8,4,NULL,'2021-12-01 14:15:11',NULL,NULL),(127,'Display Product Price','PRODUCT_LIST_PRICE','3','Do you want to display the Product Price',8,5,NULL,'2021-12-01 14:15:11',NULL,NULL),(128,'Display Product Quantity','PRODUCT_LIST_QUANTITY','0','Do you want to display the Product Quantity?',8,6,NULL,'2021-12-01 14:15:11',NULL,NULL),(129,'Display Product Weight','PRODUCT_LIST_WEIGHT','0','Do you want to display the Product Weight?',8,7,NULL,'2021-12-01 14:15:11',NULL,NULL),(130,'Display Buy Now column','PRODUCT_LIST_BUY_NOW','4','Do you want to display the Buy Now column?',8,8,NULL,'2021-12-01 14:15:11',NULL,NULL),(131,'Display Category/Manufacturer Filter (0=disable; 1=enable)','PRODUCT_LIST_FILTER','1','Do you want to display the Category/Manufacturer Filter?',8,9,NULL,'2021-12-01 14:15:11',NULL,NULL),(132,'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)','PREV_NEXT_BAR_LOCATION','2','Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)',8,10,NULL,'2021-12-01 14:15:11',NULL,NULL),(133,'Check stock level','STOCK_CHECK','true','Check to see if sufficent stock is available',9,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(134,'Subtract stock','STOCK_LIMITED','true','Subtract product in stock by product orders',9,2,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(135,'Allow Checkout','STOCK_ALLOW_CHECKOUT','true','Allow customer to checkout even if there is insufficient stock',9,3,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(136,'Mark product out of stock','STOCK_MARK_PRODUCT_OUT_OF_STOCK','***','Display something on screen so customer can see which product has insufficient stock',9,4,NULL,'2021-12-01 14:15:11',NULL,NULL),(137,'Stock Re-order level','STOCK_REORDER_LEVEL','5','Define when stock needs to be re-ordered',9,5,NULL,'2021-12-01 14:15:11',NULL,NULL),(138,'Store Page Parse Time','STORE_PAGE_PARSE_TIME','false','Store the time it takes to parse a page',10,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(139,'Log Destination','STORE_PAGE_PARSE_TIME_LOG','/var/log/www/tep/page_parse_time.log','Directory and filename of the page parse time log',10,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(140,'Log Date Format','STORE_PARSE_DATE_TIME_FORMAT','%d/%m/%Y %H:%M:%S','The date format',10,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(141,'Display The Page Parse Time','DISPLAY_PAGE_PARSE_TIME','true','Display the page parse time (store page parse time must be enabled)',10,4,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(142,'Store Database Queries','STORE_DB_TRANSACTIONS','false','Store the database queries in the page parse time log',10,5,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(143,'Use Cache','USE_CACHE','false','Use caching features',11,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(144,'Cache Directory','DIR_FS_CACHE','/var/www/html/catalog/includes/work/','The directory where the cached files are saved',11,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(145,'E-Mail Transport Method','EMAIL_TRANSPORT','sendmail','Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.',12,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'sendmail\', \'smtp\'),'),(146,'E-Mail Linefeeds','EMAIL_LINEFEED','LF','Defines the character sequence used to separate mail headers.',12,2,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'LF\', \'CRLF\'),'),(147,'Use MIME HTML When Sending Emails','EMAIL_USE_HTML','false','Send e-mails in HTML format',12,3,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'),'),(148,'Verify E-Mail Addresses Through DNS','ENTRY_EMAIL_ADDRESS_CHECK','false','Verify e-mail address through a DNS server',12,4,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(149,'Send E-Mails','SEND_EMAILS','true','Send out e-mails',12,5,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(150,'Enable download','DOWNLOAD_ENABLED','false','Enable the products download functions.',13,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(151,'Download by redirect','DOWNLOAD_BY_REDIRECT','false','Use browser redirection for download. Disable on non-Unix systems.',13,2,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(152,'Expiry delay (days)','DOWNLOAD_MAX_DAYS','7','Set number of days before the download link expires. 0 means no limit.',13,3,NULL,'2021-12-01 14:15:11',NULL,''),(153,'Maximum number of downloads','DOWNLOAD_MAX_COUNT','5','Set the maximum number of downloads. 0 means no download authorized.',13,4,NULL,'2021-12-01 14:15:11',NULL,''),(154,'Enable GZip Compression','GZIP_COMPRESSION','false','Enable HTTP GZip compression.',14,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), '),(155,'Compression Level','GZIP_LEVEL','5','Use this compression level 0-9 (0 = minimum, 9 = maximum).',14,2,NULL,'2021-12-01 14:15:11',NULL,NULL),(156,'Session Directory','SESSION_WRITE_DIRECTORY','/var/www/html/catalog/includes/work/','If sessions are file based, store them in this directory.',15,1,NULL,'2021-12-01 14:15:11',NULL,NULL),(157,'Force Cookie Use','SESSION_FORCE_COOKIE_USE','False','Force the use of sessions when cookies are only enabled.',15,2,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(158,'Check SSL Session ID','SESSION_CHECK_SSL_SESSION_ID','False','Validate the SSL_SESSION_ID on every secure HTTPS page request.',15,3,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(159,'Check User Agent','SESSION_CHECK_USER_AGENT','False','Validate the clients browser user agent on every page request.',15,4,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(160,'Check IP Address','SESSION_CHECK_IP_ADDRESS','False','Validate the clients IP address on every page request.',15,5,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(161,'Prevent Spider Sessions','SESSION_BLOCK_SPIDERS','True','Prevent known spiders from starting a session.',15,6,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(162,'Recreate Session','SESSION_RECREATE','True','Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).',15,7,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(163,'Last Update Check Time','LAST_UPDATE_CHECK_TIME','','Last time a check for new versions of osCommerce was run',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(164,'Enable PayPal Express Checkout','MODULE_PAYMENT_PAYPAL_EXPRESS_STATUS','True','Do you want to accept PayPal Express Checkout payments?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(165,'Seller Account','MODULE_PAYMENT_PAYPAL_EXPRESS_SELLER_ACCOUNT','','The email address of the seller account if no API credentials has been setup.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(166,'API Username','MODULE_PAYMENT_PAYPAL_EXPRESS_API_USERNAME','','The username to use for the PayPal API service',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(167,'API Password','MODULE_PAYMENT_PAYPAL_EXPRESS_API_PASSWORD','','The password to use for the PayPal API service',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(168,'API Signature','MODULE_PAYMENT_PAYPAL_EXPRESS_API_SIGNATURE','','The signature to use for the PayPal API service',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(169,'PayPal Account Optional','MODULE_PAYMENT_PAYPAL_EXPRESS_ACCOUNT_OPTIONAL','False','This must also be enabled in your PayPal account, in Profile > Website Payment Preferences.',6,0,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(170,'PayPal Instant Update','MODULE_PAYMENT_PAYPAL_EXPRESS_INSTANT_UPDATE','True','Support PayPal shipping and tax calculations on the PayPal.com site during Express Checkout.',6,0,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(171,'PayPal Checkout Image','MODULE_PAYMENT_PAYPAL_EXPRESS_CHECKOUT_IMAGE','Static','Use static or dynamic Express Checkout image buttons. Dynamic images are used with PayPal campaigns.',6,0,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Static\', \'Dynamic\'), '),(172,'Page Style','MODULE_PAYMENT_PAYPAL_EXPRESS_PAGE_STYLE','','The page style to use for the checkout flow (defined at your PayPal Profile page)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(173,'Transaction Method','MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_METHOD','Sale','The processing method to use for each transaction.',6,0,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Authorization\', \'Sale\'), '),(174,'Set Order Status','MODULE_PAYMENT_PAYPAL_EXPRESS_ORDER_STATUS_ID','0','Set the status of orders made with this payment module to this value',6,0,NULL,'2021-12-01 14:15:11','tep_get_order_status_name','tep_cfg_pull_down_order_statuses('),(175,'PayPal Transactions Order Status Level','MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTIONS_ORDER_STATUS_ID','4','Include PayPal transaction information in this order status level',6,0,NULL,'2021-12-01 14:15:11','tep_get_order_status_name','tep_cfg_pull_down_order_statuses('),(176,'Payment Zone','MODULE_PAYMENT_PAYPAL_EXPRESS_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,2,NULL,'2021-12-01 14:15:11','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes('),(177,'Transaction Server','MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_SERVER','Live','Use the live or testing (sandbox) gateway server to process transactions?',6,0,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Live\', \'Sandbox\'), '),(178,'Verify SSL Certificate','MODULE_PAYMENT_PAYPAL_EXPRESS_VERIFY_SSL','True','Verify gateway server SSL certificate on connection?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(179,'Proxy Server','MODULE_PAYMENT_PAYPAL_EXPRESS_PROXY','','Send API requests through this proxy server. (host:port, eg: 123.45.67.89:8080 or proxy.example.com:8080)',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(180,'Debug E-Mail Address','MODULE_PAYMENT_PAYPAL_EXPRESS_DEBUG_EMAIL','','All parameters of an invalid transaction will be sent to this email address.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(181,'Sort order of display.','MODULE_PAYMENT_PAYPAL_EXPRESS_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(182,'Installed Modules','MODULE_HEADER_TAGS_INSTALLED','ht_canonical.php;ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_robot_noindex.php','List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(183,'Enable Category Title Module','MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS','True','Do you want to allow category titles to be added to the page title?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(184,'Sort Order','MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER','200','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(185,'Enable Manufacturer Title Module','MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS','True','Do you want to allow manufacturer titles to be added to the page title?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(186,'Sort Order','MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER','100','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(187,'Enable Product Title Module','MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS','True','Do you want to allow product titles to be added to the page title?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(188,'Sort Order','MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER','300','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(189,'Enable Canonical Module','MODULE_HEADER_TAGS_CANONICAL_STATUS','True','Do you want to enable the Canonical module?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(190,'Sort Order','MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER','400','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(191,'Enable Robot NoIndex Module','MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS','True','Do you want to enable the Robot NoIndex module?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(192,'Pages','MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES','account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php','The pages to add the meta robot noindex tag to.',6,0,NULL,'2021-12-01 14:15:11','ht_robot_noindex_show_pages','ht_robot_noindex_edit_pages('),(193,'Sort Order','MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER','500','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(194,'Installed Modules','MODULE_ADMIN_DASHBOARD_INSTALLED','d_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_partner_news.php;d_version_check.php;d_reviews.php','List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(195,'Enable Administrator Logins Module','MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS','True','Do you want to show the latest administrator logins on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(196,'Sort Order','MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER','500','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(197,'Enable Customers Module','MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS','True','Do you want to show the newest customers on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(198,'Sort Order','MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER','400','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(199,'Enable Latest Add-Ons Module','MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS','True','Do you want to show the latest osCommerce Add-Ons on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(200,'Sort Order','MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER','800','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(201,'Enable Latest News Module','MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS','True','Do you want to show the latest osCommerce News on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(202,'Sort Order','MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER','700','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(203,'Enable Orders Module','MODULE_ADMIN_DASHBOARD_ORDERS_STATUS','True','Do you want to show the latest orders on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(204,'Sort Order','MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER','300','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(205,'Enable Security Checks Module','MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS','True','Do you want to run the security checks for this installation?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(206,'Sort Order','MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER','600','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(207,'Enable Total Customers Module','MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS','True','Do you want to show the total customers chart on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(208,'Sort Order','MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER','200','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(209,'Enable Total Revenue Module','MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS','True','Do you want to show the total revenue chart on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(210,'Sort Order','MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER','100','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(211,'Enable Version Check Module','MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS','True','Do you want to show the version check results on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(212,'Sort Order','MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER','900','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(213,'Enable Latest Reviews Module','MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS','True','Do you want to show the latest reviews on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(214,'Sort Order','MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER','1000','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(215,'Enable Partner News Module','MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_STATUS','True','Do you want to show the latest osCommerce Partner News on the dashboard?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(216,'Sort Order','MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_SORT_ORDER','820','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(217,'Installed Modules','MODULE_BOXES_INSTALLED','bm_categories.php;bm_manufacturers.php;bm_search.php;bm_whats_new.php;bm_information.php;bm_card_acceptance.php;bm_shopping_cart.php;bm_manufacturer_info.php;bm_order_history.php;bm_best_sellers.php;bm_product_notifications.php;bm_product_social_bookmarks.php;bm_specials.php;bm_reviews.php;bm_languages.php;bm_currencies.php','List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(218,'Enable Best Sellers Module','MODULE_BOXES_BEST_SELLERS_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(219,'Content Placement','MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(220,'Sort Order','MODULE_BOXES_BEST_SELLERS_SORT_ORDER','5030','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(221,'Enable Categories Module','MODULE_BOXES_CATEGORIES_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(222,'Content Placement','MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT','Left Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(223,'Sort Order','MODULE_BOXES_CATEGORIES_SORT_ORDER','1000','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(224,'Enable Currencies Module','MODULE_BOXES_CURRENCIES_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(225,'Content Placement','MODULE_BOXES_CURRENCIES_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(226,'Sort Order','MODULE_BOXES_CURRENCIES_SORT_ORDER','5090','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(227,'Enable Information Module','MODULE_BOXES_INFORMATION_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(228,'Content Placement','MODULE_BOXES_INFORMATION_CONTENT_PLACEMENT','Left Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(229,'Sort Order','MODULE_BOXES_INFORMATION_SORT_ORDER','1050','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(230,'Enable Languages Module','MODULE_BOXES_LANGUAGES_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(231,'Content Placement','MODULE_BOXES_LANGUAGES_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(232,'Sort Order','MODULE_BOXES_LANGUAGES_SORT_ORDER','5080','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(233,'Enable Manufacturer Info Module','MODULE_BOXES_MANUFACTURER_INFO_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(234,'Content Placement','MODULE_BOXES_MANUFACTURER_INFO_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(235,'Sort Order','MODULE_BOXES_MANUFACTURER_INFO_SORT_ORDER','5010','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(236,'Enable Manufacturers Module','MODULE_BOXES_MANUFACTURERS_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(237,'Content Placement','MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT','Left Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(238,'Sort Order','MODULE_BOXES_MANUFACTURERS_SORT_ORDER','1020','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(239,'Enable Order History Module','MODULE_BOXES_ORDER_HISTORY_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(240,'Content Placement','MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(241,'Sort Order','MODULE_BOXES_ORDER_HISTORY_SORT_ORDER','5020','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(242,'Enable Product Notifications Module','MODULE_BOXES_PRODUCT_NOTIFICATIONS_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(243,'Content Placement','MODULE_BOXES_PRODUCT_NOTIFICATIONS_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(244,'Sort Order','MODULE_BOXES_PRODUCT_NOTIFICATIONS_SORT_ORDER','5040','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(245,'Enable Product Social Bookmarks Module','MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(246,'Content Placement','MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(247,'Sort Order','MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_SORT_ORDER','5050','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(248,'Enable Reviews Module','MODULE_BOXES_REVIEWS_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(249,'Content Placement','MODULE_BOXES_REVIEWS_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(250,'Sort Order','MODULE_BOXES_REVIEWS_SORT_ORDER','5070','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(251,'Enable Search Module','MODULE_BOXES_SEARCH_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(252,'Content Placement','MODULE_BOXES_SEARCH_CONTENT_PLACEMENT','Left Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(253,'Sort Order','MODULE_BOXES_SEARCH_SORT_ORDER','1030','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(254,'Enable Shopping Cart Module','MODULE_BOXES_SHOPPING_CART_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(255,'Content Placement','MODULE_BOXES_SHOPPING_CART_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(256,'Sort Order','MODULE_BOXES_SHOPPING_CART_SORT_ORDER','5000','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(257,'Enable Specials Module','MODULE_BOXES_SPECIALS_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(258,'Content Placement','MODULE_BOXES_SPECIALS_CONTENT_PLACEMENT','Right Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(259,'Sort Order','MODULE_BOXES_SPECIALS_SORT_ORDER','5060','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(260,'Enable What\'s New Module','MODULE_BOXES_WHATS_NEW_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(261,'Content Placement','MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT','Left Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(262,'Sort Order','MODULE_BOXES_WHATS_NEW_SORT_ORDER','1040','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(263,'Enable Card Acceptance Module','MODULE_BOXES_CARD_ACCEPTANCE_STATUS','True','Do you want to add the module to your shop?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(264,'Logos','MODULE_BOXES_CARD_ACCEPTANCE_LOGOS','paypal_horizontal_large.png;visa.png;mastercard_transparent.png;american_express.png;maestro_transparent.png','The card acceptance logos to show.',6,0,NULL,'2021-12-01 14:15:11','bm_card_acceptance_show_logos','bm_card_acceptance_edit_logos('),(265,'Content Placement','MODULE_BOXES_CARD_ACCEPTANCE_CONTENT_PLACEMENT','Left Column','Should the module be loaded in the left or right column?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),(266,'Sort Order','MODULE_BOXES_CARD_ACCEPTANCE_SORT_ORDER','1060','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(267,'Installed Template Block Groups','TEMPLATE_BLOCK_GROUPS','boxes;header_tags','This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(268,'Installed Modules','MODULE_CONTENT_INSTALLED','account/cm_account_set_password;checkout_success/cm_cs_redirect_old_order;checkout_success/cm_cs_thank_you;checkout_success/cm_cs_product_notifications;checkout_success/cm_cs_downloads;login/cm_login_form;login/cm_create_account_link','This is automatically updated. No need to edit.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(269,'Enable Set Account Password','MODULE_CONTENT_ACCOUNT_SET_PASSWORD_STATUS','True','Do you want to enable the Set Account Password module?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(270,'Allow Local Passwords','MODULE_CONTENT_ACCOUNT_SET_PASSWORD_ALLOW_PASSWORD','True','Allow local account passwords to be set.',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(271,'Sort Order','MODULE_CONTENT_ACCOUNT_SET_PASSWORD_SORT_ORDER','100','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(272,'Enable Redirect Old Order Module','MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_STATUS','True','Should customers be redirected when viewing old checkout success orders?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(273,'Redirect Minutes','MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_MINUTES','60','Redirect customers to the My Account page after an order older than this amount is viewed.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(274,'Sort Order','MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_SORT_ORDER','500','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(275,'Enable Thank You Module','MODULE_CONTENT_CHECKOUT_SUCCESS_THANK_YOU_STATUS','True','Should the thank you block be shown on the checkout success page?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(276,'Sort Order','MODULE_CONTENT_CHECKOUT_SUCCESS_THANK_YOU_SORT_ORDER','1000','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(277,'Enable Product Notifications Module','MODULE_CONTENT_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_STATUS','True','Should the product notifications block be shown on the checkout success page?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(278,'Sort Order','MODULE_CONTENT_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_SORT_ORDER','2000','Sort order of display. Lowest is displayed first.',6,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(279,'Enable Product Downloads Module','MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_STATUS','True','Should ordered product download links be shown on the checkout success page?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(280,'Sort Order','MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_SORT_ORDER','3000','Sort order of display. Lowest is displayed first.',6,3,NULL,'2021-12-01 14:15:11',NULL,NULL),(281,'Enable Login Form Module','MODULE_CONTENT_LOGIN_FORM_STATUS','True','Do you want to enable the login form module?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(282,'Content Width','MODULE_CONTENT_LOGIN_FORM_CONTENT_WIDTH','Half','Should the content be shown in a full or half width container?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Full\', \'Half\'), '),(283,'Sort Order','MODULE_CONTENT_LOGIN_FORM_SORT_ORDER','1000','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL),(284,'Enable New User Module','MODULE_CONTENT_CREATE_ACCOUNT_LINK_STATUS','True','Do you want to enable the new user module?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'True\', \'False\'), '),(285,'Content Width','MODULE_CONTENT_CREATE_ACCOUNT_LINK_CONTENT_WIDTH','Half','Should the content be shown in a full or half width container?',6,1,NULL,'2021-12-01 14:15:11',NULL,'tep_cfg_select_option(array(\'Full\', \'Half\'), '),(286,'Sort Order','MODULE_CONTENT_CREATE_ACCOUNT_LINK_SORT_ORDER','2000','Sort order of display. Lowest is displayed first.',6,0,NULL,'2021-12-01 14:15:11',NULL,NULL);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_group`
--

DROP TABLE IF EXISTS `configuration_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_group_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_group_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT 1,
  PRIMARY KEY (`configuration_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_group`
--

LOCK TABLES `configuration_group` WRITE;
/*!40000 ALTER TABLE `configuration_group` DISABLE KEYS */;
INSERT INTO `configuration_group` VALUES (1,'My Store','General information about my store',1,1),(2,'Minimum Values','The minimum values for functions / data',2,1),(3,'Maximum Values','The maximum values for functions / data',3,1),(4,'Images','Image parameters',4,1),(5,'Customer Details','Customer account configuration',5,1),(6,'Module Options','Hidden from configuration',6,0),(7,'Shipping/Packaging','Shipping options available at my store',7,1),(8,'Product Listing','Product Listing    configuration options',8,1),(9,'Stock','Stock configuration options',9,1),(10,'Logging','Logging configuration options',10,1),(11,'Cache','Caching configuration options',11,1),(12,'E-Mail Options','General setting for E-Mail transport and HTML E-Mails',12,1),(13,'Download','Downloadable products options',13,1),(14,'GZip Compression','GZip compression options',14,1),(15,'Sessions','Session options',15,1);
/*!40000 ALTER TABLE `configuration_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `startdate` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('20211201',64);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_history`
--

DROP TABLE IF EXISTS `counter_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_history` (
  `month` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_history`
--

LOCK TABLES `counter_history` WRITE;
/*!40000 ALTER TABLE `counter_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `counter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','AFG',1),(2,'Albania','AL','ALB',1),(3,'Algeria','DZ','DZA',1),(4,'American Samoa','AS','ASM',1),(5,'Andorra','AD','AND',1),(6,'Angola','AO','AGO',1),(7,'Anguilla','AI','AIA',1),(8,'Antarctica','AQ','ATA',1),(9,'Antigua and Barbuda','AG','ATG',1),(10,'Argentina','AR','ARG',1),(11,'Armenia','AM','ARM',1),(12,'Aruba','AW','ABW',1),(13,'Australia','AU','AUS',1),(14,'Austria','AT','AUT',5),(15,'Azerbaijan','AZ','AZE',1),(16,'Bahamas','BS','BHS',1),(17,'Bahrain','BH','BHR',1),(18,'Bangladesh','BD','BGD',1),(19,'Barbados','BB','BRB',1),(20,'Belarus','BY','BLR',1),(21,'Belgium','BE','BEL',1),(22,'Belize','BZ','BLZ',1),(23,'Benin','BJ','BEN',1),(24,'Bermuda','BM','BMU',1),(25,'Bhutan','BT','BTN',1),(26,'Bolivia','BO','BOL',1),(27,'Bosnia and Herzegowina','BA','BIH',1),(28,'Botswana','BW','BWA',1),(29,'Bouvet Island','BV','BVT',1),(30,'Brazil','BR','BRA',1),(31,'British Indian Ocean Territory','IO','IOT',1),(32,'Brunei Darussalam','BN','BRN',1),(33,'Bulgaria','BG','BGR',1),(34,'Burkina Faso','BF','BFA',1),(35,'Burundi','BI','BDI',1),(36,'Cambodia','KH','KHM',1),(37,'Cameroon','CM','CMR',1),(38,'Canada','CA','CAN',1),(39,'Cape Verde','CV','CPV',1),(40,'Cayman Islands','KY','CYM',1),(41,'Central African Republic','CF','CAF',1),(42,'Chad','TD','TCD',1),(43,'Chile','CL','CHL',1),(44,'China','CN','CHN',1),(45,'Christmas Island','CX','CXR',1),(46,'Cocos (Keeling) Islands','CC','CCK',1),(47,'Colombia','CO','COL',1),(48,'Comoros','KM','COM',1),(49,'Congo','CG','COG',1),(50,'Cook Islands','CK','COK',1),(51,'Costa Rica','CR','CRI',1),(52,'Cote D\'Ivoire','CI','CIV',1),(53,'Croatia','HR','HRV',1),(54,'Cuba','CU','CUB',1),(55,'Cyprus','CY','CYP',1),(56,'Czech Republic','CZ','CZE',1),(57,'Denmark','DK','DNK',1),(58,'Djibouti','DJ','DJI',1),(59,'Dominica','DM','DMA',1),(60,'Dominican Republic','DO','DOM',1),(61,'East Timor','TP','TMP',1),(62,'Ecuador','EC','ECU',1),(63,'Egypt','EG','EGY',1),(64,'El Salvador','SV','SLV',1),(65,'Equatorial Guinea','GQ','GNQ',1),(66,'Eritrea','ER','ERI',1),(67,'Estonia','EE','EST',1),(68,'Ethiopia','ET','ETH',1),(69,'Falkland Islands (Malvinas)','FK','FLK',1),(70,'Faroe Islands','FO','FRO',1),(71,'Fiji','FJ','FJI',1),(72,'Finland','FI','FIN',1),(73,'France','FR','FRA',1),(74,'France, Metropolitan','FX','FXX',1),(75,'French Guiana','GF','GUF',1),(76,'French Polynesia','PF','PYF',1),(77,'French Southern Territories','TF','ATF',1),(78,'Gabon','GA','GAB',1),(79,'Gambia','GM','GMB',1),(80,'Georgia','GE','GEO',1),(81,'Germany','DE','DEU',5),(82,'Ghana','GH','GHA',1),(83,'Gibraltar','GI','GIB',1),(84,'Greece','GR','GRC',1),(85,'Greenland','GL','GRL',1),(86,'Grenada','GD','GRD',1),(87,'Guadeloupe','GP','GLP',1),(88,'Guam','GU','GUM',1),(89,'Guatemala','GT','GTM',1),(90,'Guinea','GN','GIN',1),(91,'Guinea-bissau','GW','GNB',1),(92,'Guyana','GY','GUY',1),(93,'Haiti','HT','HTI',1),(94,'Heard and Mc Donald Islands','HM','HMD',1),(95,'Honduras','HN','HND',1),(96,'Hong Kong','HK','HKG',1),(97,'Hungary','HU','HUN',1),(98,'Iceland','IS','ISL',1),(99,'India','IN','IND',1),(100,'Indonesia','ID','IDN',1),(101,'Iran (Islamic Republic of)','IR','IRN',1),(102,'Iraq','IQ','IRQ',1),(103,'Ireland','IE','IRL',1),(104,'Israel','IL','ISR',1),(105,'Italy','IT','ITA',1),(106,'Jamaica','JM','JAM',1),(107,'Japan','JP','JPN',1),(108,'Jordan','JO','JOR',1),(109,'Kazakhstan','KZ','KAZ',1),(110,'Kenya','KE','KEN',1),(111,'Kiribati','KI','KIR',1),(112,'Korea, Democratic People\'s Republic of','KP','PRK',1),(113,'Korea, Republic of','KR','KOR',1),(114,'Kuwait','KW','KWT',1),(115,'Kyrgyzstan','KG','KGZ',1),(116,'Lao People\'s Democratic Republic','LA','LAO',1),(117,'Latvia','LV','LVA',1),(118,'Lebanon','LB','LBN',1),(119,'Lesotho','LS','LSO',1),(120,'Liberia','LR','LBR',1),(121,'Libyan Arab Jamahiriya','LY','LBY',1),(122,'Liechtenstein','LI','LIE',1),(123,'Lithuania','LT','LTU',1),(124,'Luxembourg','LU','LUX',1),(125,'Macau','MO','MAC',1),(126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',1),(127,'Madagascar','MG','MDG',1),(128,'Malawi','MW','MWI',1),(129,'Malaysia','MY','MYS',1),(130,'Maldives','MV','MDV',1),(131,'Mali','ML','MLI',1),(132,'Malta','MT','MLT',1),(133,'Marshall Islands','MH','MHL',1),(134,'Martinique','MQ','MTQ',1),(135,'Mauritania','MR','MRT',1),(136,'Mauritius','MU','MUS',1),(137,'Mayotte','YT','MYT',1),(138,'Mexico','MX','MEX',1),(139,'Micronesia, Federated States of','FM','FSM',1),(140,'Moldova, Republic of','MD','MDA',1),(141,'Monaco','MC','MCO',1),(142,'Mongolia','MN','MNG',1),(143,'Montserrat','MS','MSR',1),(144,'Morocco','MA','MAR',1),(145,'Mozambique','MZ','MOZ',1),(146,'Myanmar','MM','MMR',1),(147,'Namibia','NA','NAM',1),(148,'Nauru','NR','NRU',1),(149,'Nepal','NP','NPL',1),(150,'Netherlands','NL','NLD',1),(151,'Netherlands Antilles','AN','ANT',1),(152,'New Caledonia','NC','NCL',1),(153,'New Zealand','NZ','NZL',1),(154,'Nicaragua','NI','NIC',1),(155,'Niger','NE','NER',1),(156,'Nigeria','NG','NGA',1),(157,'Niue','NU','NIU',1),(158,'Norfolk Island','NF','NFK',1),(159,'Northern Mariana Islands','MP','MNP',1),(160,'Norway','NO','NOR',1),(161,'Oman','OM','OMN',1),(162,'Pakistan','PK','PAK',1),(163,'Palau','PW','PLW',1),(164,'Panama','PA','PAN',1),(165,'Papua New Guinea','PG','PNG',1),(166,'Paraguay','PY','PRY',1),(167,'Peru','PE','PER',1),(168,'Philippines','PH','PHL',1),(169,'Pitcairn','PN','PCN',1),(170,'Poland','PL','POL',1),(171,'Portugal','PT','PRT',1),(172,'Puerto Rico','PR','PRI',1),(173,'Qatar','QA','QAT',1),(174,'Reunion','RE','REU',1),(175,'Romania','RO','ROM',1),(176,'Russian Federation','RU','RUS',1),(177,'Rwanda','RW','RWA',1),(178,'Saint Kitts and Nevis','KN','KNA',1),(179,'Saint Lucia','LC','LCA',1),(180,'Saint Vincent and the Grenadines','VC','VCT',1),(181,'Samoa','WS','WSM',1),(182,'San Marino','SM','SMR',1),(183,'Sao Tome and Principe','ST','STP',1),(184,'Saudi Arabia','SA','SAU',1),(185,'Senegal','SN','SEN',1),(186,'Seychelles','SC','SYC',1),(187,'Sierra Leone','SL','SLE',1),(188,'Singapore','SG','SGP',4),(189,'Slovakia (Slovak Republic)','SK','SVK',1),(190,'Slovenia','SI','SVN',1),(191,'Solomon Islands','SB','SLB',1),(192,'Somalia','SO','SOM',1),(193,'South Africa','ZA','ZAF',1),(194,'South Georgia and the South Sandwich Islands','GS','SGS',1),(195,'Spain','ES','ESP',3),(196,'Sri Lanka','LK','LKA',1),(197,'St. Helena','SH','SHN',1),(198,'St. Pierre and Miquelon','PM','SPM',1),(199,'Sudan','SD','SDN',1),(200,'Suriname','SR','SUR',1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM',1),(202,'Swaziland','SZ','SWZ',1),(203,'Sweden','SE','SWE',1),(204,'Switzerland','CH','CHE',1),(205,'Syrian Arab Republic','SY','SYR',1),(206,'Taiwan','TW','TWN',1),(207,'Tajikistan','TJ','TJK',1),(208,'Tanzania, United Republic of','TZ','TZA',1),(209,'Thailand','TH','THA',1),(210,'Togo','TG','TGO',1),(211,'Tokelau','TK','TKL',1),(212,'Tonga','TO','TON',1),(213,'Trinidad and Tobago','TT','TTO',1),(214,'Tunisia','TN','TUN',1),(215,'Turkey','TR','TUR',1),(216,'Turkmenistan','TM','TKM',1),(217,'Turks and Caicos Islands','TC','TCA',1),(218,'Tuvalu','TV','TUV',1),(219,'Uganda','UG','UGA',1),(220,'Ukraine','UA','UKR',1),(221,'United Arab Emirates','AE','ARE',1),(222,'United Kingdom','GB','GBR',1),(223,'United States','US','USA',2),(224,'United States Minor Outlying Islands','UM','UMI',1),(225,'Uruguay','UY','URY',1),(226,'Uzbekistan','UZ','UZB',1),(227,'Vanuatu','VU','VUT',1),(228,'Vatican City State (Holy See)','VA','VAT',1),(229,'Venezuela','VE','VEN',1),(230,'Viet Nam','VN','VNM',1),(231,'Virgin Islands (British)','VG','VGB',1),(232,'Virgin Islands (U.S.)','VI','VIR',1),(233,'Wallis and Futuna Islands','WF','WLF',1),(234,'Western Sahara','EH','ESH',1),(235,'Yemen','YE','YEM',1),(236,'Yugoslavia','YU','YUG',1),(237,'Zaire','ZR','ZAR',1),(238,'Zambia','ZM','ZMB',1),(239,'Zimbabwe','ZW','ZWE',1);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`currencies_id`),
  KEY `idx_currencies_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'U.S. Dollar','USD','$','','.',',','2',1.00000000,'2021-12-01 14:15:11'),(2,'Euro','EUR','','€','.',',','2',1.00000000,'2021-12-01 14:15:11');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customers_id`),
  KEY `idx_customers_email_address` (`customers_email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'m','Sarah','Frischknecht','2004-03-29 00:00:00','sf@email.com',1,'1234567','','$P$Dd.v.DOYnbEmOudZdmBtpVgVr8z7yN1','');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket`
--

DROP TABLE IF EXISTS `customers_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_customers_basket_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_basket`
--

LOCK TABLES `customers_basket` WRITE;
/*!40000 ALTER TABLE `customers_basket` DISABLE KEYS */;
INSERT INTO `customers_basket` VALUES (1,1,'1{4}1{3}5',1,NULL,'20211201');
/*!40000 ALTER TABLE `customers_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket_attributes`
--

DROP TABLE IF EXISTS `customers_basket_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL,
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_customers_basket_att_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_basket_attributes`
--

LOCK TABLES `customers_basket_attributes` WRITE;
/*!40000 ALTER TABLE `customers_basket_attributes` DISABLE KEYS */;
INSERT INTO `customers_basket_attributes` VALUES (1,1,'1{4}1{3}5',4,1),(2,1,'1{4}1{3}5',3,5);
/*!40000 ALTER TABLE `customers_basket_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT 0,
  `password_reset_key` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_date` datetime DEFAULT NULL,
  PRIMARY KEY (`customers_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_info`
--

LOCK TABLES `customers_info` WRITE;
/*!40000 ALTER TABLE `customers_info` DISABLE KEYS */;
INSERT INTO `customers_info` VALUES (1,NULL,0,'2021-12-01 15:45:55',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `customers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zones`
--

DROP TABLE IF EXISTS `geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_zones`
--

LOCK TABLES `geo_zones` WRITE;
/*!40000 ALTER TABLE `geo_zones` DISABLE KEYS */;
INSERT INTO `geo_zones` VALUES (1,'Florida','Florida local sales tax zone',NULL,'2021-12-01 14:15:11');
/*!40000 ALTER TABLE `geo_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','icon.gif','english',1);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Matrox','manufacturer_matrox.gif','2021-12-01 14:15:11',NULL),(2,'Microsoft','manufacturer_microsoft.gif','2021-12-01 14:15:11',NULL),(3,'Warner','manufacturer_warner.gif','2021-12-01 14:15:11',NULL),(4,'Fox','manufacturer_fox.gif','2021-12-01 14:15:11',NULL),(5,'Logitech','manufacturer_logitech.gif','2021-12-01 14:15:11',NULL),(6,'Canon','manufacturer_canon.gif','2021-12-01 14:15:11',NULL),(7,'Sierra','manufacturer_sierra.gif','2021-12-01 14:15:11',NULL),(8,'GT Interactive','manufacturer_gt_interactive.gif','2021-12-01 14:15:11',NULL),(9,'Hewlett Packard','manufacturer_hewlett_packard.gif','2021-12-01 14:15:11',NULL),(10,'Samsung','manufacturer_samsung.png','2021-12-01 14:15:11',NULL);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers_info`
--

DROP TABLE IF EXISTS `manufacturers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers_info`
--

LOCK TABLES `manufacturers_info` WRITE;
/*!40000 ALTER TABLE `manufacturers_info` DISABLE KEYS */;
INSERT INTO `manufacturers_info` VALUES (1,1,'http://www.matrox.com',0,NULL),(2,1,'http://www.microsoft.com',0,NULL),(3,1,'http://www.warner.com',0,NULL),(4,1,'http://www.fox.com',0,NULL),(5,1,'http://www.logitech.com',0,NULL),(6,1,'http://www.canon.com',0,NULL),(7,1,'http://www.sierra.com',0,NULL),(8,1,'http://www.infogrames.com',0,NULL),(9,1,'http://www.hewlettpackard.com',0,NULL),(10,1,'http://www.samsung.com',0,NULL);
/*!40000 ALTER TABLE `manufacturers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement`
--

DROP TABLE IF EXISTS `measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement` (
  `measurement_id` int(11) NOT NULL AUTO_INCREMENT,
  `measurement_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`measurement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (1,'meter'),(2,'centimeter'),(3,'millimeter');
/*!40000 ALTER TABLE `measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT 0,
  PRIMARY KEY (`newsletters_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) NOT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `idx_orders_customers_id` (`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_orders_products_orders_id` (`orders_id`),
  KEY `idx_orders_products_products_id` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_attributes`
--

DROP TABLE IF EXISTS `orders_products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_orders_products_att_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products_attributes`
--

LOCK TABLES `orders_products_attributes` WRITE;
/*!40000 ALTER TABLE `orders_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_download`
--

DROP TABLE IF EXISTS `orders_products_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT 0,
  `download_count` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`orders_products_download_id`),
  KEY `idx_orders_products_download_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products_download`
--

LOCK TABLES `orders_products_download` WRITE;
/*!40000 ALTER TABLE `orders_products_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT 1,
  `downloads_flag` int(11) DEFAULT 0,
  PRIMARY KEY (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name` (`orders_status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status`
--

LOCK TABLES `orders_status` WRITE;
/*!40000 ALTER TABLE `orders_status` DISABLE KEYS */;
INSERT INTO `orders_status` VALUES (1,1,'Pending',1,0),(2,1,'Processing',1,1),(3,1,'Delivered',1,1),(4,1,'PayPal [Transactions]',0,0);
/*!40000 ALTER TABLE `orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status_history`
--

DROP TABLE IF EXISTS `orders_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT 0,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_orders_status_history_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status_history`
--

LOCK TABLES `orders_status_history` WRITE;
/*!40000 ALTER TABLE `orders_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_total`
--

DROP TABLE IF EXISTS `orders_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_total`
--

LOCK TABLES `orders_total` WRITE;
/*!40000 ALTER TABLE `orders_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(5,2) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `products_height` decimal(6,2) NOT NULL,
  `products_width` decimal(6,2) NOT NULL,
  `products_length` decimal(6,2) NOT NULL,
  `measurement_id` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`products_id`),
  KEY `idx_products_model` (`products_model`),
  KEY `idx_products_date_added` (`products_date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,32,'MG200MMS','matrox/mg200mms.gif',299.9900,'2021-12-01 14:15:11',NULL,NULL,23.00,1,1,1,0,0.00,0.00,1.00,0),(2,32,'MG400-32MB','matrox/mg400-32mb.gif',499.9900,'2021-12-01 14:15:11',NULL,NULL,23.00,1,1,1,0,0.00,0.00,1.00,0),(3,2,'MSIMPRO','microsoft/msimpro.gif',49.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(4,13,'DVD-RPMK','dvd/replacement_killers.gif',42.0000,'2021-12-01 14:15:11',NULL,NULL,23.00,1,1,2,0,0.00,0.00,1.00,0),(5,17,'DVD-BLDRNDC','dvd/blade_runner.gif',35.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(6,10,'DVD-MATR','dvd/the_matrix.gif',39.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(7,10,'DVD-YGEM','dvd/youve_got_mail.gif',34.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(8,10,'DVD-ABUG','dvd/a_bugs_life.gif',35.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(9,10,'DVD-UNSG','dvd/under_siege.gif',29.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(10,10,'DVD-UNSG2','dvd/under_siege2.gif',29.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(11,10,'DVD-FDBL','dvd/fire_down_below.gif',29.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(12,10,'DVD-DHWV','dvd/die_hard_3.gif',39.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,4,0,0.00,0.00,1.00,0),(13,10,'DVD-LTWP','dvd/lethal_weapon.gif',34.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(14,10,'DVD-REDC','dvd/red_corner.gif',32.0000,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(15,10,'DVD-FRAN','dvd/frantic.gif',35.0000,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(16,10,'DVD-CUFI','dvd/courage_under_fire.gif',38.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,4,0,0.00,0.00,1.00,0),(17,10,'DVD-SPEED','dvd/speed.gif',39.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,4,0,0.00,0.00,1.00,0),(18,10,'DVD-SPEED2','dvd/speed_2.gif',42.0000,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,4,0,0.00,0.00,1.00,0),(19,10,'DVD-TSAB','dvd/theres_something_about_mary.gif',49.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,4,0,0.00,0.00,1.00,0),(20,10,'DVD-BELOVED','dvd/beloved.gif',54.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,3,0,0.00,0.00,1.00,0),(21,16,'PC-SWAT3','sierra/swat_3.gif',79.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,7,0,0.00,0.00,1.00,0),(22,13,'PC-UNTM','gt_interactive/unreal_tournament.gif',89.9900,'2021-12-01 14:15:11',NULL,NULL,7.00,1,1,8,0,0.00,0.00,1.00,0),(23,16,'PC-TWOF','gt_interactive/wheel_of_time.gif',99.9900,'2021-12-01 14:15:11',NULL,NULL,10.00,1,1,8,0,0.00,0.00,1.00,0),(24,17,'PC-DISC','gt_interactive/disciples.gif',90.0000,'2021-12-01 14:15:11',NULL,NULL,8.00,1,1,8,0,0.00,0.00,1.00,0),(25,16,'MSINTKB','microsoft/intkeyboardps2.gif',69.9900,'2021-12-01 14:15:11',NULL,NULL,8.00,1,1,2,0,0.00,0.00,1.00,0),(26,10,'MSIMEXP','microsoft/imexplorer.gif',64.9500,'2021-12-01 14:15:11',NULL,NULL,8.00,1,1,2,0,0.00,0.00,1.00,0),(27,8,'HPLJ1100XI','hewlett_packard/lj1100xi.gif',499.9900,'2021-12-01 14:15:11',NULL,NULL,45.00,1,1,9,0,0.00,0.00,1.00,0),(28,100,'GT-P1000','samsung/galaxy_tab.gif',749.9900,'2021-12-01 14:15:11',NULL,NULL,1.00,1,1,10,0,0.00,0.00,1.00,0),(59,0,'',NULL,0.0000,'2022-01-19 17:48:11','2022-01-19 18:38:30',NULL,0.00,1,0,0,0,987.00,98.00,9876.00,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_products_attributes_products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (1,1,4,1,0.0000,'+'),(2,1,4,2,50.0000,'+'),(3,1,4,3,70.0000,'+'),(4,1,3,5,0.0000,'+'),(5,1,3,6,100.0000,'+'),(6,2,4,3,10.0000,'-'),(7,2,4,4,0.0000,'+'),(8,2,3,6,0.0000,'+'),(9,2,3,7,120.0000,'+'),(10,26,3,8,0.0000,'+'),(11,26,3,9,6.0000,'+'),(26,22,5,10,0.0000,'+'),(27,22,5,13,0.0000,'+');
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes_download`
--

DROP TABLE IF EXISTS `products_attributes_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT 0,
  `products_attributes_maxcount` int(2) DEFAULT 0,
  PRIMARY KEY (`products_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes_download`
--

LOCK TABLES `products_attributes_download` WRITE;
/*!40000 ALTER TABLE `products_attributes_download` DISABLE KEYS */;
INSERT INTO `products_attributes_download` VALUES (26,'unreal.zip',7,3);
/*!40000 ALTER TABLE `products_attributes_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_description`
--

DROP TABLE IF EXISTS `products_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT 0,
  PRIMARY KEY (`products_id`,`language_id`),
  KEY `products_name` (`products_name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_description`
--

LOCK TABLES `products_description` WRITE;
/*!40000 ALTER TABLE `products_description` DISABLE KEYS */;
INSERT INTO `products_description` VALUES (1,1,'Matrox G200 MMS','Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br /><br />With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br /><br />Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters &amp; Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.','www.matrox.com/mga/products/g200_mms/home.cfm',2),(2,1,'Matrox G400 32MB','<strong>Dramatically Different High Performance Graphics</strong><br /><br />Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry\'s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC\'s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br /><br /><strong>Key features:</strong><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>','www.matrox.com/mga/products/mill_g400/home.htm',1),(3,1,'Microsoft IntelliMouse Pro','Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft\'s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.','www.microsoft.com/hardware/mouse/intellimouse.asp',1),(4,1,'The Replacement Killers','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 80 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.replacement-killers.com',0),(5,1,'Blade Runner - Director\'s Cut','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 112 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.bladerunner.com',0),(6,1,'The Matrix','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch.\r<br />\nAudio: Dolby Surround.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 131 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Making Of.','www.thematrix.com',0),(7,1,'You\'ve Got Mail','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch, Spanish.\r<br />\nSubtitles: English, Deutsch, Spanish, French, Nordic, Polish.\r<br />\nAudio: Dolby Digital 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0),(8,1,'A Bug\'s Life','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Digital 5.1 / Dobly Surround Stereo.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 91 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.abugslife.com',0),(9,1,'Under Siege','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',1),(10,1,'Under Siege 2 - Dark Territory','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(11,1,'Fire Down Below','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(12,1,'Die Hard With A Vengeance','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 122 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',1),(13,1,'Lethal Weapon','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(14,1,'Red Corner','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 117 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(15,1,'Frantic','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',1),(16,1,'Courage Under Fire','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(17,1,'Speed','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(18,1,'Speed 2: Cruise Control','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 120 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',1),(19,1,'There\'s Something About Mary','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 114 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(20,1,'Beloved','Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 164 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).','',0),(21,1,'SWAT 3: Close Quarters Battle','<strong>Windows 95/98</strong><br /><br />211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and \"When needed\" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!','www.swat3.com',0),(22,1,'Unreal Tournament','From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br /><br />This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It\'s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of \'bots\' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.','www.unrealtournament.net',1),(23,1,'The Wheel Of Time','The world in which The Wheel of Time takes place is lifted directly out of Jordan\'s pages; it\'s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you\'re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter\'angreal, Portal Stones, and the Ways. However you move around, though, you\'ll quickly discover that means of locomotion can easily become the least of the your worries...<br /><br />During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time\'s main characters. Some of these places are ripped directly from the pages of Jordan\'s books, made flesh with Legend\'s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you\'ll have this year.','www.wheeloftime.com',0),(24,1,'Disciples: Sacred Lands','A new age is dawning...<br /><br />Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br /><br />The day of reckoning has come... and only the chosen will survive.','',1),(25,1,'Microsoft Internet Keyboard PS/2','The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!','',0),(26,1,'Microsoft IntelliMouse Explorer','Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!','www.microsoft.com/hardware/mouse/explorer.asp',1),(27,1,'Hewlett Packard LaserJet 1100Xi','HP has always set the pace in laser printing technology. The new generation HP LaserJet 1100 series sets another impressive pace, delivering a stunning 8 pages per minute print speed. The 600 dpi print resolution with HP\'s Resolution Enhancement technology (REt) makes every document more professional.<br /><br />Enhanced print speed and laser quality results are just the beginning. With 2MB standard memory, HP LaserJet 1100xi users will be able to print increasingly complex pages. Memory can be increased to 18MB to tackle even more complex documents with ease. The HP LaserJet 1100xi supports key operating systems including Windows 3.1, 3.11, 95, 98, NT 4.0, OS/2 and DOS. Network compatibility available via the optional HP JetDirect External Print Servers.<br /><br />HP LaserJet 1100xi also features The Document Builder for the Web Era from Trellix Corp. (featuring software to create Web documents).','www.pandi.hp.com/pandi-db/prodinfo.main?product=laserjet1100',0),(28,1,'Samsung Galaxy Tab','<p>Powered by a Cortex A8 1.0GHz application processor, the Samsung GALAXY Tab is designed to deliver high performance whenever and wherever you are. At the same time, HD video contents are supported by a wide range of multimedia formats (DivX, XviD, MPEG4, H.263, H.264 and more), which maximizes the joy of entertainment.</p><p>With 3G HSPA connectivity, 802.11n Wi-Fi, and Bluetooth 3.0, the Samsung GALAXY Tab enhances users\' mobile communication on a whole new level. Video conferencing and push email on the large 7-inch display make communication more smooth and efficient. For voice telephony, the Samsung GALAXY Tab turns out to be a perfect speakerphone on the desk, or a mobile phone on the move via Bluetooth headset.</p>','http://galaxytab.samsungmobile.com',1),(59,1,'','','',0);
/*!40000 ALTER TABLE `products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_prodid` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,28,'samsung/galaxy_tab_1.jpg',NULL,1),(2,28,'samsung/galaxy_tab_2.jpg',NULL,2),(3,28,'samsung/galaxy_tab_3.jpg',NULL,3),(4,28,'samsung/galaxy_tab_4.jpg','<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/tAbsmHMAhrQ\" frameborder=\"0\" allowfullscreen></iframe>',4),(5,17,'dvd/speed_large.jpg',NULL,1),(6,12,'dvd/die_hard_3_large.jpg',NULL,1),(7,11,'dvd/fire_down_below_large.jpg',NULL,1),(8,13,'dvd/lethal_weapon_large.jpg',NULL,1),(9,18,'dvd/speed_2_large.jpg',NULL,1),(10,6,'dvd/the_matrix_large.jpg',NULL,1),(11,4,'dvd/replacement_killers_large.jpg',NULL,1),(12,9,'dvd/under_siege_large.jpg',NULL,1);
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_notifications`
--

DROP TABLE IF EXISTS `products_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`products_id`,`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_notifications`
--

LOCK TABLES `products_notifications` WRITE;
/*!40000 ALTER TABLE `products_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`products_options_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options`
--

LOCK TABLES `products_options` WRITE;
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` VALUES (1,1,'Color'),(2,1,'Size'),(3,1,'Model'),(4,1,'Memory'),(5,1,'Version');
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values`
--

DROP TABLE IF EXISTS `products_options_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`products_options_values_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options_values`
--

LOCK TABLES `products_options_values` WRITE;
/*!40000 ALTER TABLE `products_options_values` DISABLE KEYS */;
INSERT INTO `products_options_values` VALUES (1,1,'4 mb'),(2,1,'8 mb'),(3,1,'16 mb'),(4,1,'32 mb'),(5,1,'Value'),(6,1,'Premium'),(7,1,'Deluxe'),(8,1,'PS/2'),(9,1,'USB'),(10,1,'Download: Windows - English'),(13,1,'Box: Windows - English');
/*!40000 ALTER TABLE `products_options_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values_to_products_options`
--

DROP TABLE IF EXISTS `products_options_values_to_products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_values_to_products_options_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options_values_to_products_options`
--

LOCK TABLES `products_options_values_to_products_options` WRITE;
/*!40000 ALTER TABLE `products_options_values_to_products_options` DISABLE KEYS */;
INSERT INTO `products_options_values_to_products_options` VALUES (1,4,1),(2,4,2),(3,4,3),(4,4,4),(5,3,5),(6,3,6),(7,3,7),(8,3,8),(9,3,9),(10,5,10),(13,5,13);
/*!40000 ALTER TABLE `products_options_values_to_products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_to_categories`
--

DROP TABLE IF EXISTS `products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_to_categories`
--

LOCK TABLES `products_to_categories` WRITE;
/*!40000 ALTER TABLE `products_to_categories` DISABLE KEYS */;
INSERT INTO `products_to_categories` VALUES (1,4),(2,4),(3,9),(4,10),(5,11),(6,10),(7,12),(8,13),(9,10),(10,10),(11,10),(12,10),(13,10),(14,15),(15,14),(16,15),(17,10),(18,10),(19,12),(20,15),(21,18),(22,19),(23,20),(24,20),(25,8),(26,9),(27,5),(28,21),(59,0);
/*!40000 ALTER TABLE `products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_read` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`reviews_id`),
  KEY `idx_reviews_products_id` (`products_id`),
  KEY `idx_reviews_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,19,0,'John Doe',5,'2021-12-01 14:15:11',NULL,1,0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_description`
--

DROP TABLE IF EXISTS `reviews_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`reviews_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_description`
--

LOCK TABLES `reviews_description` WRITE;
/*!40000 ALTER TABLE `reviews_description` DISABLE KEYS */;
INSERT INTO `reviews_description` VALUES (1,1,'This has to be one of the funniest movies released for 1999!');
/*!40000 ALTER TABLE `reviews_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_directory_whitelist`
--

DROP TABLE IF EXISTS `sec_directory_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_directory_whitelist`
--

LOCK TABLES `sec_directory_whitelist` WRITE;
/*!40000 ALTER TABLE `sec_directory_whitelist` DISABLE KEYS */;
INSERT INTO `sec_directory_whitelist` VALUES (1,'admin/backups'),(2,'admin/images/graphs'),(3,'images'),(4,'images/banners'),(5,'images/dvd'),(6,'images/gt_interactive'),(7,'images/hewlett_packard'),(8,'images/matrox'),(9,'images/microsoft'),(10,'images/samsung'),(11,'images/sierra'),(12,'includes/work'),(13,'pub');
/*!40000 ALTER TABLE `sec_directory_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sesskey` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sesskey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('05hfbr150983qlb1h5i7llrptr',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('0f0h6hpjju699qq69jvpkgp41d',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('0ote8k490a8j76r5bu1v36kfst',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('19ln0jmhlplo8046rg2nhhucrd',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('19r60iacloi9kulfju4f4m3jbg',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('1nqlanoq0dufeauptu3s5qk3k1',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('1r1n26l1i9ptu2f965en290jgp',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('22pgft20snim9hjlqdadhems5p',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('2rmehabq8tvpae9d9borqqr6gb',1638369422,'language|s:7:\"english\";languages_id|s:1:\"1\";admin|a:2:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}'),('2s3ne520k79amq9a170rkn12os',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('35t1cds7nq7osqinkpo41vd3bb',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('3hmfjjfhp804eplfbjevnlckia',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('3j48olbs46oh74luem8kb8195i',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('3o9nqqek39f99d2uqangqmarto',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('3p6r7ggl1j6vhe3lht737ckcj6',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('3ren4stmr08ejlc70g9p2c3kbe',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('3t92jhppqmppgl5ndvqf762jgu',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('40u0pm2nkel3ai58e046gm097b',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('47nv0ehfbt69ig5gd9qlemmsa2',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('4d7hdbl68q1epo9lv2g3c3k4uv',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('662qeaaqra6c8qqise9amo1ef4',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('6a82goma1buii24bo6de52nk73',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('6fj3nuellpob8ogrqra4l4q0bk',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('6gp73nev5v8jm9svpkdg1jo96c',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('72lisblr2a8k38mbajalmgrnpg',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('7ct1afpktqmipmi571kico21sk',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('7dh679vqrk7jqbl08v80bnqreb',1638370603,'sessiontoken|s:32:\"0c8f9aadc28de275a6f93e26c8576f7d\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{s:9:\"1{4}1{3}5\";a:2:{s:3:\"qty\";s:1:\"1\";s:10:\"attributes\";a:2:{i:4;s:1:\"1\";i:3;s:1:\"5\";}}}s:5:\"total\";d:299.99;s:6:\"weight\";d:23;s:6:\"cartID\";s:5:\"98040\";s:12:\"content_type\";s:8:\"physical\";}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:5:\"cPath\";s:1:\"3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}customer_id|i:1;customer_first_name|s:5:\"Sarah\";customer_default_address_id|i:1;customer_country_id|s:3:\"204\";customer_zone_id|s:3:\"129\";sendto|i:1;cartID|s:5:\"98040\";comments|N;shipping|a:3:{s:2:\"id\";s:9:\"flat_flat\";s:5:\"title\";s:20:\"Flat Rate (Best Way)\";s:4:\"cost\";s:4:\"5.00\";}billto|i:1;payment|s:3:\"cod\";'),('7jjsk8ulg7290c90dqs394thl8',1639582275,'language|s:7:\"english\";languages_id|s:1:\"1\";admin|a:2:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}'),('7oeqaqpi8drdj322j2bt4s3psp',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('7tkf2e8f85ue118ot9e1qu5ssc',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('8f9rm17j9g3mu3jh8ulvn99qeh',1641995954,'sessiontoken|s:32:\"5c4ca5f632d2c00c0edcc195f05ac089\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:1:\"p\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),('8rqe7uu4ljque1e1nrivsnpj1u',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('8t3e7bobdf0q8d6cqho287u0mo',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('8v2j12rvkuav4mi7uouoa0las4',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('9284g6495kuce6a5u904lihenf',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('93bimflj4ilfgt7jr9h94nn8n0',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('9ccvj9od9j53f1kl05v7kpb1op',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('9dtpnmj7io7sa7lgb25uu5g364',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('a0089hpa4pgckbqpuukfekq09h',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('a6l2carjcpaitbrhelpf2672d0',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:14:\"categories.php\";s:3:\"get\";a:3:{s:5:\"cPath\";s:0:\"\";s:3:\"pID\";s:2:\"56\";s:6:\"action\";s:11:\"new_product\";}}'),('ae6k0eko99o5eqpst32d2k7ja2',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('al9i61me0gr9ranesto84ub007',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('b5ltvivbgvdh8fbvb04lcp5ipe',1641992148,'sessiontoken|s:32:\"a6ba3873a47d87480bb5c9c89e0686f5\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:1:\"p\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),('b964aq0rmlb1nm12jspk8nsget',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('bfd9cu72vi9vn7tso4vtgioee5',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('c0po3ku6p3udlpj3acf4ft4bif',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('cnuu1p9akeui9gkkdc8v56ktt3',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('cokl17tut27qa23en4cusnn579',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('cp3k57eptdm6du9q334cruo0j4',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('cqd9p2ahgprpe196c5rcogvju1',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('d89j820l4n9c9d1v9b61a27j41',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('d9h9b1km1dbs2gv2eeo3p86dum',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('dj9oofbicm8lfbupund0f0gagd',1642604846,'language|s:7:\"english\";languages_id|s:1:\"1\";admin|a:2:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}'),('djgggb03ghroni6qs8fvaigm0r',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('dmcat3adqhiftrcuaoc3g3ekka',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('e6phjphrkueormd3olaolpppmj',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('e9p8tv72hn9euflg9ldr5hvaah',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ef73hnnjnfk254t9895mvuhk40',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('eh7uclq4ir7pg82oqitpjvar83',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('enghb57gcjbsfe5ktgtc7pq8ha',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('erl80svkqjqol92ogn383g88o5',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('es3rd4hio9nrqbnsab9thuqhfj',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('feo8c5fk9mrfoof0hlgpjjlsf7',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('foqno3dackjasi2h23418iju8u',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('fuij3hg0hcjvr0odv15s5jmi8t',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('fvlfin6m9ia36lo7h3r6kltbq7',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('g8vl1737jnlmcm45h4s5239chm',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:14:\"categories.php\";s:3:\"get\";a:2:{s:5:\"cPath\";s:0:\"\";s:3:\"pID\";s:2:\"41\";}}'),('gafcuub0pdrcgvkab7vsq9248c',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('gie0clo0dtjqs3kmoqtgtnnb1s',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('glr325ss9rvsqkcoq8iqc2iokd',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('hajq0had316k3v486ntthtm0ml',1638364897,'sessiontoken|s:32:\"17341977a692377d1ce27507aaa0736e\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),('hbia7b4708i0vkaacpufvl1p56',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('hkghvui2tnkntb0de5gc9kt3vd',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('i06l6g01b6ngd0mkors9bo2e1k',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('i1bipttmijli6a68pq71klkk2e',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('i3f2kduj22l03uei0d2ar8t0hb',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ik4oo2b5lufh6sopklbs33crtf',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('is2pmt651oqic8pguln2l1op90',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ist8j5uj3dnd52lp1dj2m09tcq',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('j2ju3n45q66q9ds6vm481rdiok',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('j5a87g8fgemdatbm5qqunhbm5v',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('jcmljc0uvnkkh1gkpr14ln5ful',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('jdphulk6s0on6sso301pelbh30',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('jfevnesjcfufrikm6fu6fiiv9g',1642609871,'language|s:7:\"english\";languages_id|s:1:\"1\";admin|a:2:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}'),('ji9lf603ul50ffuhq2vj3nq2cq',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('jitdfqcrltfqfqbcnv33m9qqom',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('jpmkb45vo7pj9o33njm96lqaef',1642603010,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('k5ilnrbkk3a5jiic5394msmm7e',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('k760vf55g87c8nnohns7ld010c',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('kvabmjakir23s6u7h4vitvtg2t',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ldvf5gj4l6kr8u35cu61ae48jq',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('le1j2im891rn96mvraiuit2gn2',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ljat05vkj1enmn6prkamn52ua7',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ltch0of5rqr53vbg286udrfc4k',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('m1lm3eq462cahjj62sv3bbl49t',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('m62ptrn2bklrrjtirac21scfpf',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('mbtqjltj810maca8lupr0f0o69',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('mhv098ogodmckq37eqpin7ovei',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('mr9efqk8jjque1q00u65kt8c32',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('msr1q1auo1nbmlp1kfhhbe7ed7',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('mvb5pm052ljt8i5q0a7nkdrl38',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('n1ktiekc4mtsh6amtrvoer70ki',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('n868hpq2d0f6ki3atga9kajtl3',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('narud4i1ktiu3qr8df8m4h4qnr',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('nj51925mf2ok0mt7n2985msbrt',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('o6ajn3nljetj9dk4up3iic405l',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('o91549mdhk3jrnq741vad8tq37',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('oeled5i4om4c8hj7na7po1d46d',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('og7r17gec317jctlgs0pebrnc6',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('p87iiut50mfi9k5h37p8isjh1g',1642613912,'language|s:7:\"english\";languages_id|s:1:\"1\";admin|a:2:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}'),('pj80718v02q1o3obt9nr1270o3',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('pm1o18b65ec41asd5qs63hpbps',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('pneavvacbunjp17q024dch2pd1',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('r1c9cgc88q8vv7041cbuetsjh9',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('r44jplmrflr7at8v87qjupoev5',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('r7cliua7ao65odo4hj0a4af92j',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:14:\"categories.php\";s:3:\"get\";a:3:{s:5:\"cPath\";s:0:\"\";s:3:\"pID\";s:2:\"55\";s:6:\"action\";s:11:\"new_product\";}}'),('rqb79obfs6v3so7keih5hf1tqq',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('t1ilvdkv8ehorv99a1i476bens',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('t2iu58s0pcuij7oqdc6hchbvmc',1639605183,'language|s:7:\"english\";languages_id|s:1:\"1\";admin|a:2:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}'),('t2tstub46cmh77425bjf3be6pk',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('t4j3ns3abt52jinjms56li4mmq',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('t518k87uhjhcfv9ue7ue1f2tt7',1641991584,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('tha3585o7cbmst7f3cn84tvj73',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('tp80b29h4va3t812ken0cglfal',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('tvuobn1svha857rtmkm8071ii8',1639605411,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('u0m7inmabio8k4uuop2p0q48f8',1641996097,'sessiontoken|s:32:\"9945abf686f7f84571cfb7757112f576\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:3:{i:0;a:4:{s:4:\"page\";s:1:\"p\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:11:\"account.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"u0m7inmabio8k4uuop2p0q48f8\";}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:11:\"account.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"u0m7inmabio8k4uuop2p0q48f8\";}s:4:\"post\";a:0:{}}}'),('uao8cpnobtmt43osqtv8cd79ac',1642612056,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:14:\"categories.php\";s:3:\"get\";a:3:{s:5:\"cPath\";s:0:\"\";s:3:\"pID\";s:2:\"59\";s:6:\"action\";s:11:\"new_product\";}}'),('ukqg967aulickna8heucqqfpj1',1642613433,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('ur4paaqru6bb5m613rg8f346ud',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('v04arb2e9iev7sguti6a94qo8v',1642603009,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('v60n8944oi8btboasa7el265nm',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}'),('vuad4ncde6lsabd5rol169noc8',1642603678,'language|s:7:\"english\";languages_id|s:1:\"1\";redirect_origin|a:2:{s:4:\"page\";s:9:\"index.php\";s:3:\"get\";a:0:{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`specials_id`),
  KEY `idx_specials_products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,3,39.9900,'2021-12-01 14:15:11',NULL,NULL,NULL,1),(2,5,30.0000,'2021-12-01 14:15:11',NULL,NULL,NULL,1),(3,6,30.0000,'2021-12-01 14:15:11',NULL,NULL,NULL,1),(4,16,29.9900,'2021-12-01 14:15:11',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (1,'Taxable Goods','The following types of products are included non-food, services, etc','2021-12-01 14:15:11','2021-12-01 14:15:11');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT 1,
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`tax_rates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
INSERT INTO `tax_rates` VALUES (1,1,1,1,7.0000,'FL TAX 7.0%','2021-12-01 14:15:11','2021-12-01 14:15:11');
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `idx_whos_online_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whos_online`
--

LOCK TABLES `whos_online` WRITE;
/*!40000 ALTER TABLE `whos_online` DISABLE KEYS */;
INSERT INTO `whos_online` VALUES (0,'Guest','8f9rm17j9g3mu3jh8ulvn99qeh','127.0.0.1','1641995954','1641995954',''),(0,'Guest','u0m7inmabio8k4uuop2p0q48f8','127.0.0.1','1641996095','1641996097','/catalog/login.php');
/*!40000 ALTER TABLE `whos_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,223,'AL','Alabama'),(2,223,'AK','Alaska'),(3,223,'AS','American Samoa'),(4,223,'AZ','Arizona'),(5,223,'AR','Arkansas'),(6,223,'AF','Armed Forces Africa'),(7,223,'AA','Armed Forces Americas'),(8,223,'AC','Armed Forces Canada'),(9,223,'AE','Armed Forces Europe'),(10,223,'AM','Armed Forces Middle East'),(11,223,'AP','Armed Forces Pacific'),(12,223,'CA','California'),(13,223,'CO','Colorado'),(14,223,'CT','Connecticut'),(15,223,'DE','Delaware'),(16,223,'DC','District of Columbia'),(17,223,'FM','Federated States Of Micronesia'),(18,223,'FL','Florida'),(19,223,'GA','Georgia'),(20,223,'GU','Guam'),(21,223,'HI','Hawaii'),(22,223,'ID','Idaho'),(23,223,'IL','Illinois'),(24,223,'IN','Indiana'),(25,223,'IA','Iowa'),(26,223,'KS','Kansas'),(27,223,'KY','Kentucky'),(28,223,'LA','Louisiana'),(29,223,'ME','Maine'),(30,223,'MH','Marshall Islands'),(31,223,'MD','Maryland'),(32,223,'MA','Massachusetts'),(33,223,'MI','Michigan'),(34,223,'MN','Minnesota'),(35,223,'MS','Mississippi'),(36,223,'MO','Missouri'),(37,223,'MT','Montana'),(38,223,'NE','Nebraska'),(39,223,'NV','Nevada'),(40,223,'NH','New Hampshire'),(41,223,'NJ','New Jersey'),(42,223,'NM','New Mexico'),(43,223,'NY','New York'),(44,223,'NC','North Carolina'),(45,223,'ND','North Dakota'),(46,223,'MP','Northern Mariana Islands'),(47,223,'OH','Ohio'),(48,223,'OK','Oklahoma'),(49,223,'OR','Oregon'),(50,223,'PW','Palau'),(51,223,'PA','Pennsylvania'),(52,223,'PR','Puerto Rico'),(53,223,'RI','Rhode Island'),(54,223,'SC','South Carolina'),(55,223,'SD','South Dakota'),(56,223,'TN','Tennessee'),(57,223,'TX','Texas'),(58,223,'UT','Utah'),(59,223,'VT','Vermont'),(60,223,'VI','Virgin Islands'),(61,223,'VA','Virginia'),(62,223,'WA','Washington'),(63,223,'WV','West Virginia'),(64,223,'WI','Wisconsin'),(65,223,'WY','Wyoming'),(66,38,'AB','Alberta'),(67,38,'BC','British Columbia'),(68,38,'MB','Manitoba'),(69,38,'NF','Newfoundland'),(70,38,'NB','New Brunswick'),(71,38,'NS','Nova Scotia'),(72,38,'NT','Northwest Territories'),(73,38,'NU','Nunavut'),(74,38,'ON','Ontario'),(75,38,'PE','Prince Edward Island'),(76,38,'QC','Quebec'),(77,38,'SK','Saskatchewan'),(78,38,'YT','Yukon Territory'),(79,81,'NDS','Niedersachsen'),(80,81,'BAW','Baden-Württemberg'),(81,81,'BAY','Bayern'),(82,81,'BER','Berlin'),(83,81,'BRG','Brandenburg'),(84,81,'BRE','Bremen'),(85,81,'HAM','Hamburg'),(86,81,'HES','Hessen'),(87,81,'MEC','Mecklenburg-Vorpommern'),(88,81,'NRW','Nordrhein-Westfalen'),(89,81,'RHE','Rheinland-Pfalz'),(90,81,'SAR','Saarland'),(91,81,'SAS','Sachsen'),(92,81,'SAC','Sachsen-Anhalt'),(93,81,'SCN','Schleswig-Holstein'),(94,81,'THE','Thüringen'),(95,14,'WI','Wien'),(96,14,'NO','Niederösterreich'),(97,14,'OO','Oberösterreich'),(98,14,'SB','Salzburg'),(99,14,'KN','Kärnten'),(100,14,'ST','Steiermark'),(101,14,'TI','Tirol'),(102,14,'BL','Burgenland'),(103,14,'VB','Voralberg'),(104,204,'AG','Aargau'),(105,204,'AI','Appenzell Innerrhoden'),(106,204,'AR','Appenzell Ausserrhoden'),(107,204,'BE','Bern'),(108,204,'BL','Basel-Landschaft'),(109,204,'BS','Basel-Stadt'),(110,204,'FR','Freiburg'),(111,204,'GE','Genf'),(112,204,'GL','Glarus'),(113,204,'JU','Graubünden'),(114,204,'JU','Jura'),(115,204,'LU','Luzern'),(116,204,'NE','Neuenburg'),(117,204,'NW','Nidwalden'),(118,204,'OW','Obwalden'),(119,204,'SG','St. Gallen'),(120,204,'SH','Schaffhausen'),(121,204,'SO','Solothurn'),(122,204,'SZ','Schwyz'),(123,204,'TG','Thurgau'),(124,204,'TI','Tessin'),(125,204,'UR','Uri'),(126,204,'VD','Waadt'),(127,204,'VS','Wallis'),(128,204,'ZG','Zug'),(129,204,'ZH','Zürich'),(130,195,'A Coruña','A Coruña'),(131,195,'Alava','Alava'),(132,195,'Albacete','Albacete'),(133,195,'Alicante','Alicante'),(134,195,'Almeria','Almeria'),(135,195,'Asturias','Asturias'),(136,195,'Avila','Avila'),(137,195,'Badajoz','Badajoz'),(138,195,'Baleares','Baleares'),(139,195,'Barcelona','Barcelona'),(140,195,'Burgos','Burgos'),(141,195,'Caceres','Caceres'),(142,195,'Cadiz','Cadiz'),(143,195,'Cantabria','Cantabria'),(144,195,'Castellon','Castellon'),(145,195,'Ceuta','Ceuta'),(146,195,'Ciudad Real','Ciudad Real'),(147,195,'Cordoba','Cordoba'),(148,195,'Cuenca','Cuenca'),(149,195,'Girona','Girona'),(150,195,'Granada','Granada'),(151,195,'Guadalajara','Guadalajara'),(152,195,'Guipuzcoa','Guipuzcoa'),(153,195,'Huelva','Huelva'),(154,195,'Huesca','Huesca'),(155,195,'Jaen','Jaen'),(156,195,'La Rioja','La Rioja'),(157,195,'Las Palmas','Las Palmas'),(158,195,'Leon','Leon'),(159,195,'Lleida','Lleida'),(160,195,'Lugo','Lugo'),(161,195,'Madrid','Madrid'),(162,195,'Malaga','Malaga'),(163,195,'Melilla','Melilla'),(164,195,'Murcia','Murcia'),(165,195,'Navarra','Navarra'),(166,195,'Ourense','Ourense'),(167,195,'Palencia','Palencia'),(168,195,'Pontevedra','Pontevedra'),(169,195,'Salamanca','Salamanca'),(170,195,'Santa Cruz de Tenerife','Santa Cruz de Tenerife'),(171,195,'Segovia','Segovia'),(172,195,'Sevilla','Sevilla'),(173,195,'Soria','Soria'),(174,195,'Tarragona','Tarragona'),(175,195,'Teruel','Teruel'),(176,195,'Toledo','Toledo'),(177,195,'Valencia','Valencia'),(178,195,'Valladolid','Valladolid'),(179,195,'Vizcaya','Vizcaya'),(180,195,'Zamora','Zamora'),(181,195,'Zaragoza','Zaragoza');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zones_to_geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones_to_geo_zones`
--

LOCK TABLES `zones_to_geo_zones` WRITE;
/*!40000 ALTER TABLE `zones_to_geo_zones` DISABLE KEYS */;
INSERT INTO `zones_to_geo_zones` VALUES (1,223,18,1,NULL,'2021-12-01 14:15:11');
/*!40000 ALTER TABLE `zones_to_geo_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 21:38:05
