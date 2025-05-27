-- MySQL dump 10.13  Distrib 8.0.35, for macos13 (arm64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-05-12 06:28:27','2025-05-12 06:28:27','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=996 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:12:{i:1748262508;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1748285399;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1748287705;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1748289505;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1748291305;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1748327308;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1748328599;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1748328601;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1748328812;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1748847004;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1748847210;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://ops-kansai2.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://ops-kansai2.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','関西エアポートオペレーションサービス株式会社','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','関西エアポートオペレーションサービス株式会社は、関西エアポート株式会社グループのオペレーション部門として安全安心の中核を担い、危機管理、安全性、セキュリティ、顧客サービスの観点から人的リソースの高度化・最適化により最高水準の空港オペレーション品質を提供します。','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','kouichi.kuze@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','Y.m.d','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','1','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:195:{s:14:\"information/?$\";s:24:\"index.php?post_type=post\";s:44:\"information/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=post&feed=$matches[1]\";s:39:\"information/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=post&feed=$matches[1]\";s:31:\"information/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=post&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"recruit/?$\";s:27:\"index.php?post_type=recruit\";s:40:\"recruit/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=recruit&feed=$matches[1]\";s:35:\"recruit/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=recruit&feed=$matches[1]\";s:27:\"recruit/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=recruit&paged=$matches[1]\";s:9:\"voices/?$\";s:26:\"index.php?post_type=voices\";s:39:\"voices/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=voices&feed=$matches[1]\";s:34:\"voices/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=voices&feed=$matches[1]\";s:26:\"voices/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=voices&paged=$matches[1]\";s:57:\"recruit/category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?recruit_category=$matches[1]&feed=$matches[2]\";s:52:\"recruit/category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?recruit_category=$matches[1]&feed=$matches[2]\";s:33:\"recruit/category/([^/]+)/embed/?$\";s:49:\"index.php?recruit_category=$matches[1]&embed=true\";s:45:\"recruit/category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?recruit_category=$matches[1]&paged=$matches[2]\";s:27:\"recruit/category/([^/]+)/?$\";s:38:\"index.php?recruit_category=$matches[1]\";s:64:\"recruit/voices/category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?voices_category=$matches[1]&feed=$matches[2]\";s:59:\"recruit/voices/category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?voices_category=$matches[1]&feed=$matches[2]\";s:40:\"recruit/voices/category/([^/]+)/embed/?$\";s:48:\"index.php?voices_category=$matches[1]&embed=true\";s:52:\"recruit/voices/category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?voices_category=$matches[1]&paged=$matches[2]\";s:34:\"recruit/voices/category/([^/]+)/?$\";s:37:\"index.php?voices_category=$matches[1]\";s:52:\"information/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?post_type=post&name=$matches[1]&feed=$matches[2]\";s:47:\"information/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?post_type=post&name=$matches[1]&feed=$matches[2]\";s:28:\"information/([^/]+)/embed/?$\";s:52:\"index.php?post_type=post&name=$matches[1]&embed=true\";s:40:\"information/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?post_type=post&name=$matches[1]&paged=$matches[2]\";s:47:\"information/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?post_type=post&name=$matches[1]&cpage=$matches[2]\";s:22:\"information/([^/]+)/?$\";s:41:\"index.php?post_type=post&name=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"lazyblocks/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"lazyblocks/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"lazyblocks/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"lazyblocks/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"lazyblocks/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"lazyblocks/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"lazyblocks/([^/]+)/embed/?$\";s:43:\"index.php?lazyblocks=$matches[1]&embed=true\";s:31:\"lazyblocks/([^/]+)/trackback/?$\";s:37:\"index.php?lazyblocks=$matches[1]&tb=1\";s:39:\"lazyblocks/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?lazyblocks=$matches[1]&paged=$matches[2]\";s:46:\"lazyblocks/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?lazyblocks=$matches[1]&cpage=$matches[2]\";s:35:\"lazyblocks/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?lazyblocks=$matches[1]&page=$matches[2]\";s:27:\"lazyblocks/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"lazyblocks/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"lazyblocks/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"lazyblocks/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"lazyblocks/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"lazyblocks/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"lazyblocks_templates/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"lazyblocks_templates/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"lazyblocks_templates/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"lazyblocks_templates/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"lazyblocks_templates/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"lazyblocks_templates/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"lazyblocks_templates/([^/]+)/embed/?$\";s:53:\"index.php?lazyblocks_templates=$matches[1]&embed=true\";s:41:\"lazyblocks_templates/([^/]+)/trackback/?$\";s:47:\"index.php?lazyblocks_templates=$matches[1]&tb=1\";s:49:\"lazyblocks_templates/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lazyblocks_templates=$matches[1]&paged=$matches[2]\";s:56:\"lazyblocks_templates/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?lazyblocks_templates=$matches[1]&cpage=$matches[2]\";s:45:\"lazyblocks_templates/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?lazyblocks_templates=$matches[1]&page=$matches[2]\";s:37:\"lazyblocks_templates/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"lazyblocks_templates/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"lazyblocks_templates/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"lazyblocks_templates/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"lazyblocks_templates/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"lazyblocks_templates/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"recruit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"recruit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"recruit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"recruit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"recruit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"recruit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"recruit/([^/]+)/embed/?$\";s:40:\"index.php?recruit=$matches[1]&embed=true\";s:28:\"recruit/([^/]+)/trackback/?$\";s:34:\"index.php?recruit=$matches[1]&tb=1\";s:48:\"recruit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?recruit=$matches[1]&feed=$matches[2]\";s:43:\"recruit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?recruit=$matches[1]&feed=$matches[2]\";s:36:\"recruit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?recruit=$matches[1]&paged=$matches[2]\";s:43:\"recruit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?recruit=$matches[1]&cpage=$matches[2]\";s:32:\"recruit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?recruit=$matches[1]&page=$matches[2]\";s:24:\"recruit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"recruit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"recruit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"recruit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"recruit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"recruit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"voices/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"voices/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"voices/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"voices/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"voices/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"voices/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"voices/([^/]+)/embed/?$\";s:39:\"index.php?voices=$matches[1]&embed=true\";s:27:\"voices/([^/]+)/trackback/?$\";s:33:\"index.php?voices=$matches[1]&tb=1\";s:47:\"voices/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?voices=$matches[1]&feed=$matches[2]\";s:42:\"voices/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?voices=$matches[1]&feed=$matches[2]\";s:35:\"voices/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?voices=$matches[1]&paged=$matches[2]\";s:42:\"voices/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?voices=$matches[1]&cpage=$matches[2]\";s:31:\"voices/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?voices=$matches[1]&page=$matches[2]\";s:23:\"voices/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"voices/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"voices/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"voices/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"voices/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"voices/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:5:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:27:\"lazy-blocks/lazy-blocks.php\";i:4;s:23:\"siteguard/siteguard.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','ops_kansai-airports','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','ops_kansai-airports','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','58975','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','Asia/Tokyo','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','2','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1762583305','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','58975','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:70:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"edit_lazyblock\";b:1;s:15:\"edit_lazyblocks\";b:1;s:21:\"edit_other_lazyblocks\";b:1;s:18:\"publish_lazyblocks\";b:1;s:14:\"read_lazyblock\";b:1;s:23:\"read_private_lazyblocks\";b:1;s:17:\"delete_lazyblocks\";b:1;s:16:\"delete_lazyblock\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:14:\"read_lazyblock\";b:1;s:23:\"read_private_lazyblocks\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:12:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:14:\"read_lazyblock\";b:1;s:23:\"read_private_lazyblocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:7:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:14:\"read_lazyblock\";b:1;s:23:\"read_private_lazyblocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (126,'WPLANG','ja','auto');
INSERT INTO `wp_options` VALUES (152,'can_compress_scripts','1','on');
INSERT INTO `wp_options` VALUES (153,'new_admin_email','kouichi.kuze@gmail.com','auto');
INSERT INTO `wp_options` VALUES (165,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (169,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (178,'acf_first_activated_version','6.4.1','on');
INSERT INTO `wp_options` VALUES (179,'acf_site_health','{\"version\":\"6.4.1\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.8.1\",\"mysql_version\":\"8.0.35\",\"is_multisite\":false,\"active_theme\":{\"name\":\"ops_kansai-airports\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.4.1\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"all-in-one-wp-migration\\/all-in-one-wp-migration.php\":{\"name\":\"All-in-One WP Migration and Backup\",\"version\":\"7.93\",\"plugin_uri\":\"https:\\/\\/servmask.com\\/\"},\"lazy-blocks\\/lazy-blocks.php\":{\"name\":\"Lazy Blocks\",\"version\":\"3.8.3\",\"plugin_uri\":\"\"},\"siteguard\\/siteguard.php\":{\"name\":\"SiteGuard WP Plugin\",\"version\":\"1.7.8\",\"plugin_uri\":\"http:\\/\\/www.jp-secure.com\\/cont\\/products\\/siteguard_wp_plugin\\/index_en.html\"},\"duplicate-post\\/duplicate-post.php\":{\"name\":\"Yoast Duplicate Post\",\"version\":\"4.5\",\"plugin_uri\":\"https:\\/\\/yoast.com\\/wordpress\\/plugins\\/duplicate-post\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"page_type==top_level\",\"page_type==child\",\"post_type==post\",\"post_type==recruit\",\"post_type==staffvoice\",\"page_type==parent\"],\"number_of_fields_by_type\":{\"text\":1,\"textarea\":1,\"image\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"5\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1747032810,\"event_first_created_field_group\":1747049358,\"last_updated\":1748242436}','off');
INSERT INTO `wp_options` VALUES (181,'acf_version','6.4.1','auto');
INSERT INTO `wp_options` VALUES (183,'lzb_dummy_added','5','auto');
INSERT INTO `wp_options` VALUES (184,'lzb_db_version','3.8.3','auto');
INSERT INTO `wp_options` VALUES (185,'siteguard_config','a:36:{s:18:\"show_admin_notices\";s:1:\"1\";s:25:\"admin_filter_exclude_path\";s:57:\"css,images,admin-ajax.php,load-styles.php,site-health.php\";s:19:\"admin_filter_enable\";s:1:\"0\";s:16:\"renamelogin_path\";s:11:\"login_29162\";s:15:\"redirect_enable\";s:1:\"0\";s:18:\"renamelogin_enable\";s:1:\"0\";s:14:\"captcha_enable\";s:1:\"1\";s:13:\"captcha_login\";s:1:\"1\";s:15:\"captcha_comment\";s:1:\"1\";s:18:\"captcha_lostpasswd\";s:1:\"1\";s:18:\"captcha_registuser\";s:1:\"1\";s:16:\"same_login_error\";s:1:\"0\";s:16:\"loginlock_enable\";s:1:\"1\";s:18:\"loginlock_interval\";s:1:\"5\";s:19:\"loginlock_threshold\";s:1:\"3\";s:17:\"loginlock_locksec\";s:2:\"60\";s:19:\"loginlock_fail_once\";s:1:\"0\";s:20:\"fail_once_admin_only\";s:1:\"1\";s:17:\"loginalert_enable\";s:1:\"0\";s:21:\"loginalert_admin_only\";s:1:\"1\";s:18:\"loginalert_subject\";s:43:\"%SITENAME%にログインがありました\";s:15:\"loginalert_body\";s:216:\"%DATE% %TIME%に%USERNAME%がログインしました。\r\n\r\n== ログイン情報 ==\r\nIPアドレス：%IPADDRESS%\r\nリファラー：%REFERER%\r\nユーザーエージェント：%USERAGENT%\r\n\r\n--\r\nSiteGuard WP Plugin\";s:21:\"disable_xmlrpc_enable\";s:1:\"0\";s:23:\"disable_pingback_enable\";s:1:\"0\";s:25:\"block_author_query_enable\";s:1:\"0\";s:22:\"disable_restapi_enable\";s:1:\"0\";s:23:\"disable_restapi_exclude\";s:29:\"oembed,contact-form-7,akismet\";s:23:\"waf_exclude_rule_enable\";s:1:\"0\";s:16:\"waf_exclude_rule\";a:0:{}s:13:\"notify_wpcore\";s:1:\"1\";s:14:\"notify_plugins\";s:1:\"2\";s:13:\"notify_themes\";s:1:\"2\";s:8:\"notified\";a:3:{s:4:\"core\";s:0:\"\";s:6:\"plugin\";a:0:{}s:5:\"theme\";a:0:{}}s:15:\"last_check_time\";b:0;s:21:\"updates_notify_enable\";s:1:\"0\";s:7:\"version\";s:5:\"1.7.8\";}','auto');
INSERT INTO `wp_options` VALUES (187,'duplicate_post_show_notice','1','auto');
INSERT INTO `wp_options` VALUES (188,'duplicate_post_copytitle','1','auto');
INSERT INTO `wp_options` VALUES (189,'duplicate_post_copydate','0','auto');
INSERT INTO `wp_options` VALUES (190,'duplicate_post_copystatus','0','auto');
INSERT INTO `wp_options` VALUES (191,'duplicate_post_copyslug','0','auto');
INSERT INTO `wp_options` VALUES (192,'duplicate_post_copyexcerpt','1','auto');
INSERT INTO `wp_options` VALUES (193,'duplicate_post_copycontent','1','auto');
INSERT INTO `wp_options` VALUES (194,'duplicate_post_copythumbnail','1','auto');
INSERT INTO `wp_options` VALUES (195,'duplicate_post_copytemplate','1','auto');
INSERT INTO `wp_options` VALUES (196,'duplicate_post_copyformat','1','auto');
INSERT INTO `wp_options` VALUES (197,'duplicate_post_copyauthor','0','auto');
INSERT INTO `wp_options` VALUES (198,'duplicate_post_copypassword','0','auto');
INSERT INTO `wp_options` VALUES (199,'duplicate_post_copyattachments','0','auto');
INSERT INTO `wp_options` VALUES (200,'duplicate_post_copychildren','0','auto');
INSERT INTO `wp_options` VALUES (201,'duplicate_post_copycomments','0','auto');
INSERT INTO `wp_options` VALUES (202,'duplicate_post_copymenuorder','1','auto');
INSERT INTO `wp_options` VALUES (203,'duplicate_post_taxonomies_blacklist','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (204,'duplicate_post_blacklist','','auto');
INSERT INTO `wp_options` VALUES (205,'duplicate_post_types_enabled','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','auto');
INSERT INTO `wp_options` VALUES (206,'duplicate_post_show_original_column','0','auto');
INSERT INTO `wp_options` VALUES (207,'duplicate_post_show_original_in_post_states','0','auto');
INSERT INTO `wp_options` VALUES (208,'duplicate_post_show_original_meta_box','0','auto');
INSERT INTO `wp_options` VALUES (209,'duplicate_post_show_link','a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}','auto');
INSERT INTO `wp_options` VALUES (210,'duplicate_post_show_link_in','a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}','auto');
INSERT INTO `wp_options` VALUES (211,'duplicate_post_version','4.5','auto');
INSERT INTO `wp_options` VALUES (212,'theme_mods_twentytwentyfive','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1747033240;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (213,'current_theme','ops_kansai-airports','auto');
INSERT INTO `wp_options` VALUES (214,'theme_mods_ops_kansai-airports','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (215,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (224,'ai1wm_updater','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (249,'recovery_mode_email_last_sent','1747048653','auto');
INSERT INTO `wp_options` VALUES (390,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (391,'voices_category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (394,'ai1wm_secret_key','JiyhL2UTaRAt','auto');
INSERT INTO `wp_options` VALUES (395,'ai1wm_backups_labels','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (396,'ai1wm_sites_links','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (397,'ai1wm_backups_path','/Users/habukasayuri/Local Sites/ops-kansai2/app/public/wp-content/ai1wm-backups','auto');
INSERT INTO `wp_options` VALUES (401,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:42:\"サイトをインポートしました。\";s:7:\"message\";s:514:\"» <a class=\"ai1wm-no-underline\" href=\"http://ops-kansai2.local/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a><br />\n				» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">移行エクスペリエンスを確認する</a><br />\n				» <a class=\"ai1wm-no-underline\" href=\"https://servmask.com/protect\" target=\"_blank\">リアルタイムの脅威保護でサイトを保護する</a>\";}','auto');
INSERT INTO `wp_options` VALUES (402,'swift_performance_plugin_organizer','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (403,'jetpack_active_modules','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (410,'_site_transient_ai1wm_last_check_for_updates','1748216217','off');
INSERT INTO `wp_options` VALUES (414,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"d0e25f6892dc8691c7a2e779a1b6090d\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (415,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (416,'_site_transient_timeout_browser_9ea86cc8fdda2895b9e38b9ab50c9c66','1748455458','off');
INSERT INTO `wp_options` VALUES (417,'_site_transient_browser_9ea86cc8fdda2895b9e38b9ab50c9c66','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"136.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (418,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1748455459','off');
INSERT INTO `wp_options` VALUES (419,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (685,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (968,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.8.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1748244527;s:15:\"version_checked\";s:5:\"6.8.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (969,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1748244528;s:7:\"checked\";a:1:{s:19:\"ops_kansai-airports\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (970,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1748244529;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.4.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.94\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.94.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3264554\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3264554\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"5.3\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.4.1\";s:7:\"updated\";s:19:\"2024-11-18 02:13:39\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.4.1/ja.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"lazy-blocks\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"3.8.3\";s:7:\"updated\";s:19:\"2023-11-09 10:00:37\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/lazy-blocks/3.8.3/ja.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"siteguard\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"1.7.8\";s:7:\"updated\";s:19:\"2024-05-29 04:45:19\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/plugin/siteguard/1.7.8/ja.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.5\";s:7:\"updated\";s:19:\"2024-05-17 13:13:33\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/4.5/ja.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:27:\"lazy-blocks/lazy-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/lazy-blocks\";s:4:\"slug\";s:11:\"lazy-blocks\";s:6:\"plugin\";s:27:\"lazy-blocks/lazy-blocks.php\";s:11:\"new_version\";s:5:\"3.8.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/lazy-blocks/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/lazy-blocks.3.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/lazy-blocks/assets/icon-256x256.png?rev=2584676\";s:2:\"1x\";s:64:\"https://ps.w.org/lazy-blocks/assets/icon-128x128.png?rev=2584676\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/lazy-blocks/assets/banner-1544x500.png?rev=2828307\";s:2:\"1x\";s:66:\"https://ps.w.org/lazy-blocks/assets/banner-772x250.png?rev=2828307\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:23:\"siteguard/siteguard.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/siteguard\";s:4:\"slug\";s:9:\"siteguard\";s:6:\"plugin\";s:23:\"siteguard/siteguard.php\";s:11:\"new_version\";s:5:\"1.7.8\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/siteguard/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/siteguard.1.7.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/siteguard/assets/icon-256x256.png?rev=1011863\";s:2:\"1x\";s:62:\"https://ps.w.org/siteguard/assets/icon-128x128.png?rev=1011863\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/siteguard/assets/banner-772x250.png?rev=1011863\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.4.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.93\";s:27:\"lazy-blocks/lazy-blocks.php\";s:5:\"3.8.3\";s:23:\"siteguard/siteguard.php\";s:5:\"1.7.8\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";}}','off');
INSERT INTO `wp_options` VALUES (977,'_site_transient_timeout_theme_roots','1748249932','off');
INSERT INTO `wp_options` VALUES (978,'_site_transient_theme_roots','a:1:{s:19:\"ops_kansai-airports\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (994,'_site_transient_timeout_wp_theme_files_patterns-1e911bc8ca3357ba4b1a43aa9d117a9a','1748260945','off');
INSERT INTO `wp_options` VALUES (995,'_site_transient_wp_theme_files_patterns-1e911bc8ca3357ba4b1a43aa9d117a9a','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','template/page-top.php');
INSERT INTO `wp_postmeta` VALUES (3,5,'lazyblocks_controls','a:3:{s:18:\"control_005ad74de2\";a:14:{s:4:\"type\";s:5:\"image\";s:4:\"name\";s:5:\"image\";s:7:\"default\";s:0:\"\";s:5:\"label\";s:5:\"Image\";s:4:\"help\";s:0:\"\";s:8:\"child_of\";s:0:\"\";s:9:\"placement\";s:9:\"inspector\";s:5:\"width\";s:3:\"100\";s:20:\"hide_if_not_selected\";s:5:\"false\";s:12:\"save_in_meta\";s:5:\"false\";s:17:\"save_in_meta_name\";s:0:\"\";s:8:\"required\";s:5:\"false\";s:11:\"placeholder\";s:0:\"\";s:16:\"characters_limit\";s:0:\"\";}s:18:\"control_1729664f06\";a:14:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:12:\"button-label\";s:7:\"default\";s:0:\"\";s:5:\"label\";s:12:\"Button Label\";s:4:\"help\";s:0:\"\";s:8:\"child_of\";s:0:\"\";s:9:\"placement\";s:9:\"inspector\";s:5:\"width\";s:3:\"100\";s:20:\"hide_if_not_selected\";s:5:\"false\";s:12:\"save_in_meta\";s:5:\"false\";s:17:\"save_in_meta_name\";s:0:\"\";s:8:\"required\";s:5:\"false\";s:11:\"placeholder\";s:0:\"\";s:16:\"characters_limit\";s:0:\"\";}s:18:\"control_8b591545a2\";a:14:{s:4:\"type\";s:3:\"url\";s:4:\"name\";s:10:\"button-url\";s:7:\"default\";s:0:\"\";s:5:\"label\";s:10:\"Button URL\";s:4:\"help\";s:0:\"\";s:8:\"child_of\";s:0:\"\";s:9:\"placement\";s:9:\"inspector\";s:5:\"width\";s:3:\"100\";s:20:\"hide_if_not_selected\";s:5:\"false\";s:12:\"save_in_meta\";s:5:\"false\";s:17:\"save_in_meta_name\";s:0:\"\";s:8:\"required\";s:5:\"false\";s:11:\"placeholder\";s:0:\"\";s:16:\"characters_limit\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (4,5,'lazyblocks_slug','example-block');
INSERT INTO `wp_postmeta` VALUES (5,5,'lazyblocks_description','Example block that helps you to get started with Lazy Blocks plugin');
INSERT INTO `wp_postmeta` VALUES (6,5,'lazyblocks_keywords','example,sample,template');
INSERT INTO `wp_postmeta` VALUES (7,5,'lazyblocks_category','design');
INSERT INTO `wp_postmeta` VALUES (8,5,'lazyblocks_code_show_preview','always');
INSERT INTO `wp_postmeta` VALUES (9,5,'lazyblocks_code_single_output','true');
INSERT INTO `wp_postmeta` VALUES (10,5,'lazyblocks_code_output_method','php');
INSERT INTO `wp_postmeta` VALUES (11,5,'lazyblocks_code_frontend_html','<?php if ( isset( $attributes[\'image\'][\'url\'] ) ) : ?>\n<p>\n	<img src=\"<?php echo esc_url( $attributes[\'image\'][\'url\'] ); ?>\" alt=\"<?php echo esc_attr( $attributes[\'image\'][\'alt\'] ); ?>\">\n</p>\n\n<?php if ( isset( $attributes[\'button-label\'] ) ) : ?>\n	<p>\n	<a href=\"<?php echo esc_url( $attributes[\'button-url\'] ); ?>\" class=\"button button-primary\">\n		<?php echo esc_html( $attributes[\'button-label\'] ); ?>\n	</a>\n	</p>\n<?php endif; ?>\n<?php else: ?>\n<p>Image is required to show this block content.</p>\n<?php endif; ?>');
INSERT INTO `wp_postmeta` VALUES (12,5,'lazyblocks_supports_multiple','true');
INSERT INTO `wp_postmeta` VALUES (13,5,'lazyblocks_supports_classname','true');
INSERT INTO `wp_postmeta` VALUES (14,5,'lazyblocks_supports_anchor','false');
INSERT INTO `wp_postmeta` VALUES (18,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,2,'_edit_lock','1748216286:1');
INSERT INTO `wp_postmeta` VALUES (20,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (21,8,'_edit_lock','1747057003:1');
INSERT INTO `wp_postmeta` VALUES (22,8,'_wp_page_template','template/page-message.php');
INSERT INTO `wp_postmeta` VALUES (23,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (24,10,'_wp_page_template','template/page-outline.php');
INSERT INTO `wp_postmeta` VALUES (25,10,'_edit_lock','1747050019:1');
INSERT INTO `wp_postmeta` VALUES (26,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (27,12,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (28,12,'_edit_lock','1747048232:1');
INSERT INTO `wp_postmeta` VALUES (29,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,14,'_wp_page_template','template/page-inquiry.php');
INSERT INTO `wp_postmeta` VALUES (31,14,'_edit_lock','1748171989:1');
INSERT INTO `wp_postmeta` VALUES (32,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (33,16,'_edit_lock','1747926745:1');
INSERT INTO `wp_postmeta` VALUES (34,16,'_wp_page_template','template/page-services.php');
INSERT INTO `wp_postmeta` VALUES (35,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (36,18,'_wp_page_template','template/page-services-management.php');
INSERT INTO `wp_postmeta` VALUES (37,18,'_edit_lock','1748016474:1');
INSERT INTO `wp_postmeta` VALUES (38,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (39,20,'_wp_page_template','template/page-services-security.php');
INSERT INTO `wp_postmeta` VALUES (40,20,'_edit_lock','1747047970:1');
INSERT INTO `wp_postmeta` VALUES (41,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (42,22,'_wp_page_template','template/page-services-fire.php');
INSERT INTO `wp_postmeta` VALUES (43,22,'_edit_lock','1747048011:1');
INSERT INTO `wp_postmeta` VALUES (44,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (45,24,'_edit_lock','1747048162:1');
INSERT INTO `wp_postmeta` VALUES (46,24,'_wp_page_template','template/page-services-cargo.php');
INSERT INTO `wp_postmeta` VALUES (47,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (48,26,'_wp_page_template','template/page-services-cart-cleaning.php');
INSERT INTO `wp_postmeta` VALUES (49,26,'_edit_lock','1748158978:1');
INSERT INTO `wp_postmeta` VALUES (52,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (53,33,'_wp_page_template','template/page-services-terminal.php');
INSERT INTO `wp_postmeta` VALUES (54,33,'_edit_lock','1747048049:1');
INSERT INTO `wp_postmeta` VALUES (55,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (56,35,'_wp_page_template','template/page-services-parking.php');
INSERT INTO `wp_postmeta` VALUES (57,35,'_edit_lock','1747048176:1');
INSERT INTO `wp_postmeta` VALUES (58,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,37,'_wp_page_template','template/page-services-fueling.php');
INSERT INTO `wp_postmeta` VALUES (60,37,'_edit_lock','1747048190:1');
INSERT INTO `wp_postmeta` VALUES (64,40,'_edit_lock','1748234288:1');
INSERT INTO `wp_postmeta` VALUES (65,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (66,40,'_wp_page_template','template/page-recruit.php');
INSERT INTO `wp_postmeta` VALUES (67,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (68,42,'_edit_lock','1747091159:1');
INSERT INTO `wp_postmeta` VALUES (69,1,'_edit_lock','1747049376:1');
INSERT INTO `wp_postmeta` VALUES (70,12,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (71,12,'_wp_trash_meta_time','1747049404');
INSERT INTO `wp_postmeta` VALUES (72,12,'_wp_desired_post_slug','%e4%bc%81%e6%a5%ad%e6%83%85%e5%a0%b1');
INSERT INTO `wp_postmeta` VALUES (73,44,'_acf_changed','');
INSERT INTO `wp_postmeta` VALUES (74,44,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (75,45,'_edit_lock','1748185782:1');
INSERT INTO `wp_postmeta` VALUES (76,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (77,45,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (78,45,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (79,46,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (80,46,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (81,47,'_edit_lock','1748260535:1');
INSERT INTO `wp_postmeta` VALUES (82,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (83,47,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (84,47,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (85,48,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (86,48,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (87,45,'_wp_page_template','template/page-cookie-policy.php');
INSERT INTO `wp_postmeta` VALUES (88,47,'_wp_page_template','template/page-policy.php');
INSERT INTO `wp_postmeta` VALUES (90,2,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (91,2,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (92,2,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (93,2,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (94,2,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (95,2,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (96,52,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (97,52,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (98,52,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (99,52,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (100,52,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (101,52,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (117,56,'_edit_lock','1747987188:1');
INSERT INTO `wp_postmeta` VALUES (118,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (119,56,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (120,56,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (121,56,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (122,56,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (123,56,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (124,56,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (125,57,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (126,57,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (127,57,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (128,57,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (129,57,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (130,57,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (131,56,'_wp_page_template','template/page-recruit-voices.php');
INSERT INTO `wp_postmeta` VALUES (135,58,'_edit_lock','1747835983:1');
INSERT INTO `wp_postmeta` VALUES (144,16,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (145,16,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (146,16,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (147,16,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (148,16,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (149,16,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (150,17,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (151,17,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (152,17,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (153,17,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (154,17,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (155,17,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (156,60,'_edit_lock','1748156471:1');
INSERT INTO `wp_postmeta` VALUES (157,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,60,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (159,60,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (160,60,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (161,60,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (162,60,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (163,60,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (164,14,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (165,14,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (166,14,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (167,14,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (168,14,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (169,14,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (170,15,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (171,15,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (172,15,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (173,15,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (174,15,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (175,15,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (176,61,'_edit_lock','1748154404:1');
INSERT INTO `wp_postmeta` VALUES (177,62,'_wp_attached_file','2025/05/noimage-3.jpg');
INSERT INTO `wp_postmeta` VALUES (178,62,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:584;s:6:\"height\";i:467;s:4:\"file\";s:21:\"2025/05/noimage-3.jpg\";s:8:\"filesize\";i:39134;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"noimage-3-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"noimage-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2683;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (179,64,'_wp_attached_file','2025/05/slide_04.png');
INSERT INTO `wp_postmeta` VALUES (180,64,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:740;s:6:\"height\";i:520;s:4:\"file\";s:20:\"2025/05/slide_04.png\";s:8:\"filesize\";i:632395;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"slide_04-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44714;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"slide_04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18639;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (181,65,'_wp_attached_file','2025/05/slide_02.png');
INSERT INTO `wp_postmeta` VALUES (182,65,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:740;s:6:\"height\";i:520;s:4:\"file\";s:20:\"2025/05/slide_02.png\";s:8:\"filesize\";i:558676;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"slide_02-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45696;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"slide_02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19045;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (183,66,'_wp_attached_file','2025/05/noimage-4.jpg');
INSERT INTO `wp_postmeta` VALUES (184,66,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:584;s:6:\"height\";i:467;s:4:\"file\";s:21:\"2025/05/noimage-4.jpg\";s:8:\"filesize\";i:39134;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"noimage-4-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"noimage-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2683;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (185,67,'_wp_attached_file','2025/05/slide_01.png');
INSERT INTO `wp_postmeta` VALUES (186,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:740;s:6:\"height\";i:520;s:4:\"file\";s:20:\"2025/05/slide_01.png\";s:8:\"filesize\";i:558531;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"slide_01-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54886;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"slide_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (188,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,61,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (190,61,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (191,61,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (192,61,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (193,61,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (194,61,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (195,68,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (196,68,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (197,68,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (198,68,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (199,68,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (200,68,'_img_ogp','field_6821da8c77705');
INSERT INTO `wp_postmeta` VALUES (201,69,'_wp_attached_file','2025/05/noimage-5.jpg');
INSERT INTO `wp_postmeta` VALUES (202,69,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:584;s:6:\"height\";i:467;s:4:\"file\";s:21:\"2025/05/noimage-5.jpg\";s:8:\"filesize\";i:39134;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"noimage-5-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"noimage-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2683;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (203,70,'_wp_attached_file','2025/05/noimage-6.jpg');
INSERT INTO `wp_postmeta` VALUES (204,70,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:584;s:6:\"height\";i:467;s:4:\"file\";s:21:\"2025/05/noimage-6.jpg\";s:8:\"filesize\";i:39134;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"noimage-6-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"noimage-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2683;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (206,71,'meta_title','');
INSERT INTO `wp_postmeta` VALUES (207,71,'_meta_title','field_6821f1e01449c');
INSERT INTO `wp_postmeta` VALUES (208,71,'meta_description','');
INSERT INTO `wp_postmeta` VALUES (209,71,'_meta_description','field_6821f2471449d');
INSERT INTO `wp_postmeta` VALUES (210,71,'img_ogp','');
INSERT INTO `wp_postmeta` VALUES (211,71,'_img_ogp','field_6821da8c77705');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-05-12 06:28:27','2025-05-12 06:28:27','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2025-05-12 06:28:27','2025-05-12 06:28:27','',0,'http://ops-kansai2.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2025-05-12 06:28:27','2025-05-12 06:28:27','','トップページ','','publish','closed','closed','','home','','','2025-05-12 22:43:20','2025-05-12 13:43:20','',0,'http://ops-kansai2.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2025-05-12 15:53:33','0000-00-00 00:00:00','','Example Block','','draft','closed','closed','','','','','2025-05-12 15:53:33','0000-00-00 00:00:00','',0,'http://ops-kansai2.local/?p=5',0,'lazyblocks','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2025-05-12 16:01:08','2025-05-12 07:01:08','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://ops-kansai2.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','トップページ','','inherit','closed','closed','','2-revision-v1','','','2025-05-12 16:01:08','2025-05-12 07:01:08','',2,'http://ops-kansai2.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2025-05-12 16:03:46','2025-05-12 07:03:46','','代表メッセージ','','publish','closed','closed','','company','','','2025-05-12 20:40:12','2025-05-12 11:40:12','',0,'http://ops-kansai2.local/?page_id=8',2,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2025-05-12 16:03:46','2025-05-12 07:03:46','','代表メッセージ','','inherit','closed','closed','','8-revision-v1','','','2025-05-12 16:03:46','2025-05-12 07:03:46','',8,'http://ops-kansai2.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2025-05-12 16:04:00','2025-05-12 07:04:00','','会社概要','','publish','closed','closed','','outline','','','2025-05-12 20:40:19','2025-05-12 11:40:19','',0,'http://ops-kansai2.local/?page_id=10',3,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-05-12 16:04:00','2025-05-12 07:04:00','','会社概要','','inherit','closed','closed','','10-revision-v1','','','2025-05-12 16:04:00','2025-05-12 07:04:00','',10,'http://ops-kansai2.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-05-12 16:04:25','2025-05-12 07:04:25','','企業情報','','trash','closed','closed','','%e4%bc%81%e6%a5%ad%e6%83%85%e5%a0%b1__trashed','','','2025-05-12 20:30:04','2025-05-12 11:30:04','',0,'http://ops-kansai2.local/?page_id=12',1,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-05-12 16:04:25','2025-05-12 07:04:25','','企業情報','','inherit','closed','closed','','12-revision-v1','','','2025-05-12 16:04:25','2025-05-12 07:04:25','',12,'http://ops-kansai2.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-05-12 16:05:15','2025-05-12 07:05:15','','お問い合わせ','','publish','closed','closed','','inquiry','','','2025-05-23 17:00:31','2025-05-23 08:00:31','',0,'http://ops-kansai2.local/?page_id=14',4,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2025-05-12 16:05:15','2025-05-12 07:05:15','','お問い合わせ','','inherit','closed','closed','','14-revision-v1','','','2025-05-12 16:05:15','2025-05-12 07:05:15','',14,'http://ops-kansai2.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-05-12 16:05:40','2025-05-12 07:05:40','','事業紹介','','publish','closed','closed','','services','','','2025-05-22 23:59:55','2025-05-22 14:59:55','',0,'http://ops-kansai2.local/?page_id=16',5,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2025-05-12 16:05:40','2025-05-12 07:05:40','','事業紹介','','inherit','closed','closed','','16-revision-v1','','','2025-05-12 16:05:40','2025-05-12 07:05:40','',16,'http://ops-kansai2.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-05-12 16:06:12','2025-05-12 07:06:12','','オペレーションマネジメント事業','','publish','closed','closed','','management','','','2025-05-12 20:06:03','2025-05-12 11:06:03','',16,'http://ops-kansai2.local/?page_id=18',1,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-05-12 16:06:12','2025-05-12 07:06:12','','オペレーションマネジメント事業','','inherit','closed','closed','','18-revision-v1','','','2025-05-12 16:06:12','2025-05-12 07:06:12','',18,'http://ops-kansai2.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-05-12 16:06:31','2025-05-12 07:06:31','','警備事業','','publish','closed','closed','','security','','','2025-05-12 20:06:10','2025-05-12 11:06:10','',16,'http://ops-kansai2.local/?page_id=20',2,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-05-12 16:06:31','2025-05-12 07:06:31','','警備事業','','inherit','closed','closed','','20-revision-v1','','','2025-05-12 16:06:31','2025-05-12 07:06:31','',20,'http://ops-kansai2.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-05-12 18:51:34','2025-05-12 09:51:34','','消防事業','','publish','closed','closed','','fire','','','2025-05-12 20:06:51','2025-05-12 11:06:51','',16,'http://ops-kansai2.local/?page_id=22',3,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-05-12 18:51:34','2025-05-12 09:51:34','','消防事業','','inherit','closed','closed','','22-revision-v1','','','2025-05-12 18:51:34','2025-05-12 09:51:34','',22,'http://ops-kansai2.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-05-12 18:51:57','2025-05-12 09:51:57','','カーゴエリアオペレーション事業','','publish','closed','closed','','cargo','','','2025-05-12 20:09:22','2025-05-12 11:09:22','',16,'http://ops-kansai2.local/?page_id=24',6,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-05-12 18:51:57','2025-05-12 09:51:57','','カーゴエリアオペレーション事業','','inherit','closed','closed','','24-revision-v1','','','2025-05-12 18:51:57','2025-05-12 09:51:57','',24,'http://ops-kansai2.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-05-12 18:52:11','2025-05-12 09:52:11','','清掃・カート事業','','publish','closed','closed','','cart-cleaning','','','2025-05-12 20:09:04','2025-05-12 11:09:04','',16,'http://ops-kansai2.local/?page_id=26',5,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-05-12 18:52:11','2025-05-12 09:52:11','','清掃・カート事業','','inherit','closed','closed','','26-revision-v1','','','2025-05-12 18:52:11','2025-05-12 09:52:11','',26,'http://ops-kansai2.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-05-12 19:29:48','2025-05-12 10:29:48','','ターミナルマネジメント事業','','publish','closed','closed','','terminal','','','2025-05-12 20:07:29','2025-05-12 11:07:29','',16,'http://ops-kansai2.local/?page_id=33',4,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-05-12 19:29:48','2025-05-12 10:29:48','','ターミナルマネジメント事業','','inherit','closed','closed','','33-revision-v1','','','2025-05-12 19:29:48','2025-05-12 10:29:48','',33,'http://ops-kansai2.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-05-12 19:29:59','2025-05-12 10:29:59','','駐車場運営事業','','publish','closed','closed','','parking','','','2025-05-12 20:09:35','2025-05-12 11:09:35','',16,'http://ops-kansai2.local/?page_id=35',7,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-05-12 19:29:59','2025-05-12 10:29:59','','駐車場運営事業','','inherit','closed','closed','','35-revision-v1','','','2025-05-12 19:29:59','2025-05-12 10:29:59','',35,'http://ops-kansai2.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-05-12 19:30:11','2025-05-12 10:30:11','','給油運用事業','','publish','closed','closed','','fueling','','','2025-05-12 20:09:50','2025-05-12 11:09:50','',16,'http://ops-kansai2.local/?page_id=37',8,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-05-12 19:30:11','2025-05-12 10:30:11','','給油運用事業','','inherit','closed','closed','','37-revision-v1','','','2025-05-12 19:30:11','2025-05-12 10:30:11','',37,'http://ops-kansai2.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-05-12 20:21:49','2025-05-12 11:21:49','','採用情報','','publish','closed','closed','','recruit','','','2025-05-12 20:22:28','2025-05-12 11:22:28','',0,'http://ops-kansai2.local/?page_id=40',6,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2025-05-12 20:21:49','2025-05-12 11:21:49','','採用情報','','inherit','closed','closed','','40-revision-v1','','','2025-05-12 20:21:49','2025-05-12 11:21:49','',40,'http://ops-kansai2.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-05-12 20:29:18','2025-05-12 11:29:18','a:8:{s:8:\"location\";a:6:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"top_level\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"child\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"recruit\";}}i:4;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"staffvoice\";}}i:5;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"parent\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','共通パーツ','%e5%85%b1%e9%80%9a%e3%83%91%e3%83%bc%e3%83%84','publish','closed','closed','','group_6821da8c4f118','','','2025-05-12 22:07:36','2025-05-12 13:07:36','',0,'http://ops-kansai2.local/?post_type=acf-field-group&#038;p=42',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2025-05-12 20:29:18','2025-05-12 11:29:18','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:46:\"OGPの画像サイズは1200px×630pxを推奨\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','OGP画像','img_ogp','publish','closed','closed','','field_6821da8c77705','','','2025-05-12 22:07:36','2025-05-12 13:07:36','',42,'http://ops-kansai2.local/?post_type=acf-field&#038;p=43',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-05-12 20:31:10','2025-05-12 11:31:10','','代表メッセージ','','inherit','closed','closed','','8-autosave-v1','','','2025-05-12 20:31:10','2025-05-12 11:31:10','',8,'http://ops-kansai2.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-05-12 20:33:13','2025-05-12 11:33:13','','クッキーポリシー','','publish','closed','closed','','cookie-policy','','','2025-05-12 20:35:34','2025-05-12 11:35:34','',0,'http://ops-kansai2.local/?page_id=45',10,'page','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-05-12 20:33:13','2025-05-12 11:33:13','','クッキーポリシー','','inherit','closed','closed','','45-revision-v1','','','2025-05-12 20:33:13','2025-05-12 11:33:13','',45,'http://ops-kansai2.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-05-12 20:33:22','2025-05-12 11:33:22','','個人情報保護方針','','publish','closed','closed','','policy','','','2025-05-12 20:35:39','2025-05-12 11:35:39','',0,'http://ops-kansai2.local/?page_id=47',11,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-05-12 20:33:22','2025-05-12 11:33:22','','個人情報保護方針','','inherit','closed','closed','','47-revision-v1','','','2025-05-12 20:33:22','2025-05-12 11:33:22','',47,'http://ops-kansai2.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2025-05-12 22:07:36','2025-05-12 13:07:36','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:81:\"インターネット検索結果で表示されるサイトのタイトルです\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','メタタイトル','meta_title','publish','closed','closed','','field_6821f1e01449c','','','2025-05-12 22:07:36','2025-05-12 13:07:36','',42,'http://ops-kansai2.local/?post_type=acf-field&p=49',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2025-05-12 22:07:36','2025-05-12 13:07:36','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:39:\"インターネット検索の紹介文\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";i:3;s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','メタディスクリプション','meta_description','publish','closed','closed','','field_6821f2471449d','','','2025-05-12 22:07:36','2025-05-12 13:07:36','',42,'http://ops-kansai2.local/?post_type=acf-field&p=50',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-05-12 22:43:05','2025-05-12 13:43:05','','トップページ','','inherit','closed','closed','','2-revision-v1','','','2025-05-12 22:43:05','2025-05-12 13:43:05','',2,'http://ops-kansai2.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2025-05-21 21:25:31','0000-00-00 00:00:00','','自動下書き','','auto-draft','','','','news20250521122531','','','2025-05-21 21:25:31','0000-00-00 00:00:00','',0,'http://ops-kansai2.local/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-05-21 22:06:22','2025-05-21 13:06:22','','先輩の声','','publish','closed','closed','','voice','','','2025-05-22 08:38:32','2025-05-21 23:38:32','',0,'http://ops-kansai2.local/?page_id=56',0,'page','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2025-05-21 22:06:22','2025-05-21 13:06:22','','先輩の声','','inherit','closed','closed','','56-revision-v1','','','2025-05-21 22:06:22','2025-05-21 13:06:22','',56,'http://ops-kansai2.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2025-05-21 22:42:01','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2025-05-21 22:42:01','0000-00-00 00:00:00','',0,'http://ops-kansai2.local/?post_type=recruit&p=58',0,'recruit','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2025-05-23 00:59:30','2025-05-22 15:59:30','<!-- wp:paragraph -->\n<p>現在の主な業務内容は、案内カウンターやテレホンセンターで施設やフライトの案内を行っています。 保安要員も兼ねており施設不備やお困りのお客様がいらっしゃらないか巡回を行ったりと、空港に関して どんなことでも知り尽くしておく必要があります。 様々なお客様からの問合せや要望を受け、多岐に渡る業務で大変なときもありますが、そのような対応を通して、自分の成長に繋がっているように思います。 また、お客様の声を一番身近で受ける立場であり、お叱りを受けることもありますが、「ありがとう」とお礼や感謝の言葉を述べて頂く場面が多くあります。その言葉を頂いたとき、自身のやる気にも繋がってきます。こんなにもたくさんの経験ができる素敵な仕事は他にはないと感じています。</p>\n<!-- /wp:paragraph -->','先輩の声表示テスト','','publish','closed','closed','','%e5%85%88%e8%bc%a9%e3%81%ae%e5%a3%b0%e8%a1%a8%e7%a4%ba%e3%83%86%e3%82%b9%e3%83%88','','','2025-05-23 00:59:30','2025-05-22 15:59:30','',0,'http://ops-kansai2.local/?post_type=voices&#038;p=60',0,'voices','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2025-05-23 20:29:39','2025-05-23 11:29:39','<!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":69,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-5.jpg\" alt=\"\" class=\"wp-image-69\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":70,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-6.jpg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":62,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-3.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">テキストが入りますテキストが入ります</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://ops-kansai2.local/wp-admin/post.php?post=61&amp;action=edit\">詳しくはこちら</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.kimurasoap.co.jp/pages/about_URLリンク\">https://www.kimurasoap.co.jp/pages/about_URLリンク</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":64,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_04.png\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_02.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":66,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-4.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":67,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_01.png\" alt=\"\" class=\"wp-image-67\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','ホームページをリニューアルいたしました。１','','publish','closed','closed','','news20250523112434','','','2025-05-25 00:17:08','2025-05-24 15:17:08','',0,'http://ops-kansai2.local/?p=61',0,'post','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-05-23 20:26:14','2025-05-23 11:26:14','','noimage','','inherit','','closed','','noimage','','','2025-05-23 20:26:14','2025-05-23 11:26:14','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-05-23 20:26:36','2025-05-23 11:26:36','<!-- wp:page-list /-->','ナビゲーション','','publish','closed','closed','','navigation','','','2025-05-23 20:26:36','2025-05-23 11:26:36','',0,'http://ops-kansai2.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2025-05-23 20:28:19','2025-05-23 11:28:19','','slide_04','','inherit','','closed','','slide_04','','','2025-05-23 20:28:19','2025-05-23 11:28:19','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/slide_04.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-05-23 20:28:28','2025-05-23 11:28:28','','slide_02','','inherit','','closed','','slide_02','','','2025-05-23 20:28:28','2025-05-23 11:28:28','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/slide_02.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-05-23 20:28:44','2025-05-23 11:28:44','','noimage','','inherit','','closed','','noimage-2','','','2025-05-23 20:28:44','2025-05-23 11:28:44','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-05-23 20:28:55','2025-05-23 11:28:55','','slide_01','','inherit','','closed','','slide_01','','','2025-05-23 20:28:55','2025-05-23 11:28:55','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/slide_01.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-05-23 20:29:39','2025-05-23 11:29:39','<!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":62,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-3.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">テキストが入りますテキストが入ります</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://ops-kansai2.local/wp-admin/post.php?post=61&amp;action=edit\">詳しくはこちら</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.kimurasoap.co.jp/pages/about_URLリンク\">https://www.kimurasoap.co.jp/pages/about_URLリンク</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":64,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_04.png\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_02.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":66,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-4.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":67,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_01.png\" alt=\"\" class=\"wp-image-67\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','ホームページをリニューアルいたしました。１','','inherit','closed','closed','','61-revision-v1','','','2025-05-23 20:29:39','2025-05-23 11:29:39','',61,'http://ops-kansai2.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-05-25 00:16:56','2025-05-24 15:16:56','','noimage','','inherit','','closed','','noimage-3','','','2025-05-25 00:16:56','2025-05-24 15:16:56','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-05-25 00:17:05','2025-05-24 15:17:05','','noimage','','inherit','','closed','','noimage-4','','','2025-05-25 00:17:05','2025-05-24 15:17:05','',61,'http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-05-25 00:17:08','2025-05-24 15:17:08','<!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":69,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-5.jpg\" alt=\"\" class=\"wp-image-69\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":70,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-6.jpg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":62,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-3.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">テキストが入りますテキストが入ります</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://ops-kansai2.local/wp-admin/post.php?post=61&amp;action=edit\">詳しくはこちら</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.kimurasoap.co.jp/pages/about_URLリンク\">https://www.kimurasoap.co.jp/pages/about_URLリンク</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":64,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_04.png\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_02.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":66,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/noimage-4.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":67,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://ops-kansai2.local/wp-content/uploads/2025/05/slide_01.png\" alt=\"\" class=\"wp-image-67\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。テキストが入ります。</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','ホームページをリニューアルいたしました。１','','inherit','closed','closed','','61-revision-v1','','','2025-05-25 00:17:08','2025-05-24 15:17:08','',61,'http://ops-kansai2.local/?p=71',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_siteguard_history`
--

DROP TABLE IF EXISTS `wp_siteguard_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_siteguard_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `login_name` varchar(40) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL DEFAULT '',
  `operation` int NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_siteguard_history`
--

LOCK TABLES `wp_siteguard_history` WRITE;
/*!40000 ALTER TABLE `wp_siteguard_history` DISABLE KEYS */;
INSERT INTO `wp_siteguard_history` VALUES (1,'admin_ops_kansai-airports','127.0.0.1',0,'2025-05-21 21:25:30',0);
INSERT INTO `wp_siteguard_history` VALUES (2,'admin_ops_kansai-airports','127.0.0.1',0,'2025-05-22 02:46:15',0);
INSERT INTO `wp_siteguard_history` VALUES (3,'admin_ops_kansai-airports','127.0.0.1',0,'2025-05-22 06:40:40',0);
/*!40000 ALTER TABLE `wp_siteguard_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_siteguard_login`
--

DROP TABLE IF EXISTS `wp_siteguard_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_siteguard_login` (
  `ip_address` varchar(40) NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `last_login_time` datetime DEFAULT NULL,
  UNIQUE KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_siteguard_login`
--

LOCK TABLES `wp_siteguard_login` WRITE;
/*!40000 ALTER TABLE `wp_siteguard_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_siteguard_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (61,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'voices_category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'News','news',0);
INSERT INTO `wp_terms` VALUES (6,'Topics','topics',0);
INSERT INTO `wp_terms` VALUES (7,'レポート','report',0);
INSERT INTO `wp_terms` VALUES (8,'採用情報','recruit-info',0);
INSERT INTO `wp_terms` VALUES (9,'空港インフォメーション業務','info',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin_ops_kansai-airports');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"5ea2143d7abfc0d99383e3d72d02ac71fa0a5bf7c49219ababd22a131fdf0181\";a:4:{s:10:\"expiration\";i:1748003130;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\";s:5:\"login\";i:1747830330;}s:64:\"72a415581e473ce7785120c6d3f97ce81f149368a6e362625879392eaee24807\";a:4:{s:10:\"expiration\";i:1749059175;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\";s:5:\"login\";i:1747849575;}s:64:\"2718a9761c2779ff576a9b9fb4eba6f688e9f9e8d496d0154ce0588164216940\";a:4:{s:10:\"expiration\";i:1749073240;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\";s:5:\"login\";i:1747863640;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','53');
INSERT INTO `wp_usermeta` VALUES (18,1,'edit_page_per_page','30');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','posts_list_mode=list&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1747849572');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";}s:14:\"mostUsedBlocks\";b:0;s:16:\"hiddenBlockTypes\";a:0:{}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:183;}s:9:\"_modified\";s:24:\"2025-05-23T15:57:01.362Z\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin_ops_kansai-airports','$wp$2y$10$O6utHBlP08gKD0PXAA/j4upWT8XfGp1gpfwEkt0/QQ4cuzhQIT2VK','admin_ops_kansai-airports','kouichi.kuze@gmail.com','http://ops-kansai2.local','2025-05-12 06:28:26','',0,'admin_ops_kansai-airports');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-26 20:55:57
