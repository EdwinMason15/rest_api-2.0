-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.5-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para restbd
CREATE DATABASE IF NOT EXISTS `restbd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `restbd`;

-- Volcando estructura para tabla restbd.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.auth_permission: ~80 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
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
	(13, 'Can add content type', 4, 'add_contenttype'),
	(14, 'Can change content type', 4, 'change_contenttype'),
	(15, 'Can delete content type', 4, 'delete_contenttype'),
	(16, 'Can view content type', 4, 'view_contenttype'),
	(17, 'Can add session', 5, 'add_session'),
	(18, 'Can change session', 5, 'change_session'),
	(19, 'Can delete session', 5, 'delete_session'),
	(20, 'Can view session', 5, 'view_session'),
	(21, 'Can add Brand', 6, 'add_brands'),
	(22, 'Can change Brand', 6, 'change_brands'),
	(23, 'Can delete Brand', 6, 'delete_brands'),
	(24, 'Can view Brand', 6, 'view_brands'),
	(25, 'Can add Store', 7, 'add_stores'),
	(26, 'Can change Store', 7, 'change_stores'),
	(27, 'Can delete Store', 7, 'delete_stores'),
	(28, 'Can view Store', 7, 'view_stores'),
	(29, 'Can add Deal', 8, 'add_deals'),
	(30, 'Can change Deal', 8, 'change_deals'),
	(31, 'Can delete Deal', 8, 'delete_deals'),
	(32, 'Can view Deal', 8, 'view_deals'),
	(33, 'Can add user profile', 9, 'add_userprofile'),
	(34, 'Can change user profile', 9, 'change_userprofile'),
	(35, 'Can delete user profile', 9, 'delete_userprofile'),
	(36, 'Can view user profile', 9, 'view_userprofile'),
	(37, 'Can add favorita', 10, 'add_favorita'),
	(38, 'Can change favorita', 10, 'change_favorita'),
	(39, 'Can delete favorita', 10, 'delete_favorita'),
	(40, 'Can view favorita', 10, 'view_favorita'),
	(41, 'Can add application', 12, 'add_application'),
	(42, 'Can change application', 12, 'change_application'),
	(43, 'Can delete application', 12, 'delete_application'),
	(44, 'Can view application', 12, 'view_application'),
	(45, 'Can add access token', 11, 'add_accesstoken'),
	(46, 'Can change access token', 11, 'change_accesstoken'),
	(47, 'Can delete access token', 11, 'delete_accesstoken'),
	(48, 'Can view access token', 11, 'view_accesstoken'),
	(49, 'Can add grant', 13, 'add_grant'),
	(50, 'Can change grant', 13, 'change_grant'),
	(51, 'Can delete grant', 13, 'delete_grant'),
	(52, 'Can view grant', 13, 'view_grant'),
	(53, 'Can add refresh token', 14, 'add_refreshtoken'),
	(54, 'Can change refresh token', 14, 'change_refreshtoken'),
	(55, 'Can delete refresh token', 14, 'delete_refreshtoken'),
	(56, 'Can view refresh token', 14, 'view_refreshtoken'),
	(57, 'Can add id token', 15, 'add_idtoken'),
	(58, 'Can change id token', 15, 'change_idtoken'),
	(59, 'Can delete id token', 15, 'delete_idtoken'),
	(60, 'Can view id token', 15, 'view_idtoken'),
	(61, 'Can add association', 16, 'add_association'),
	(62, 'Can change association', 16, 'change_association'),
	(63, 'Can delete association', 16, 'delete_association'),
	(64, 'Can view association', 16, 'view_association'),
	(65, 'Can add code', 17, 'add_code'),
	(66, 'Can change code', 17, 'change_code'),
	(67, 'Can delete code', 17, 'delete_code'),
	(68, 'Can view code', 17, 'view_code'),
	(69, 'Can add nonce', 18, 'add_nonce'),
	(70, 'Can change nonce', 18, 'change_nonce'),
	(71, 'Can delete nonce', 18, 'delete_nonce'),
	(72, 'Can view nonce', 18, 'view_nonce'),
	(73, 'Can add user social auth', 19, 'add_usersocialauth'),
	(74, 'Can change user social auth', 19, 'change_usersocialauth'),
	(75, 'Can delete user social auth', 19, 'delete_usersocialauth'),
	(76, 'Can view user social auth', 19, 'view_usersocialauth'),
	(77, 'Can add partial', 20, 'add_partial'),
	(78, 'Can change partial', 20, 'change_partial'),
	(79, 'Can delete partial', 20, 'delete_partial'),
	(80, 'Can view partial', 20, 'view_partial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_brands
CREATE TABLE IF NOT EXISTS `core_brands` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_brands: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `core_brands` DISABLE KEYS */;
INSERT INTO `core_brands` (`id`, `name`, `image`, `description`) VALUES
	(1, 'Pepsico', NULL, 'Empresa que proporciona la elaboracion de ....'),
	(3, 'Cencol', 'brand/2021/11/25/leyde-ebaf11a3b337ea24aae15d8c37328690.png', 'Empresa suminstra equipo y productos....');
/*!40000 ALTER TABLE `core_brands` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_deals
CREATE TABLE IF NOT EXISTS `core_deals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `core_deals_store_id_c3a5c165_fk_core_stores_id` (`store_id`),
  CONSTRAINT `core_deals_store_id_c3a5c165_fk_core_stores_id` FOREIGN KEY (`store_id`) REFERENCES `core_stores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_deals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `core_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_deals` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_favorita
CREATE TABLE IF NOT EXISTS `core_favorita` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `tiendafavorita_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_favorita_tiendafavorita_id_722863bd_fk_core_stores_id` (`tiendafavorita_id`),
  KEY `core_favorita_usuario_id_2a12746d_fk_core_userprofile_id` (`usuario_id`),
  CONSTRAINT `core_favorita_tiendafavorita_id_722863bd_fk_core_stores_id` FOREIGN KEY (`tiendafavorita_id`) REFERENCES `core_stores` (`id`),
  CONSTRAINT `core_favorita_usuario_id_2a12746d_fk_core_userprofile_id` FOREIGN KEY (`usuario_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_favorita: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `core_favorita` DISABLE KEYS */;
INSERT INTO `core_favorita` (`id`, `date_created`, `tiendafavorita_id`, `usuario_id`) VALUES
	(1, '2021-11-25', 4, 1);
/*!40000 ALTER TABLE `core_favorita` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_stores
CREATE TABLE IF NOT EXISTS `core_stores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `identifier` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `core_stores_brand_id_ede0e927_fk_core_brands_id` (`brand_id`),
  CONSTRAINT `core_stores_brand_id_ede0e927_fk_core_brands_id` FOREIGN KEY (`brand_id`) REFERENCES `core_brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_stores: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `core_stores` DISABLE KEYS */;
INSERT INTO `core_stores` (`id`, `name`, `identifier`, `address`, `brand_id`) VALUES
	(1, 'G&B', 'GB.inc', 'Calle 4 y 5 local numero 4356 city mall', 1),
	(2, 'HH1', 'HH.inc', 'Calle 555 y 5 local numero 4356, Central Delaware', 1),
	(4, 'CS', 'CS.inc', 'Calle 543y 5 local numero 1233, Central La Ceiba', 1);
/*!40000 ALTER TABLE `core_stores` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_userprofile
CREATE TABLE IF NOT EXISTS `core_userprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_userprofile: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `core_userprofile` DISABLE KEYS */;
INSERT INTO `core_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `email`, `name`, `is_active`, `is_staff`) VALUES
	(1, 'pbkdf2_sha256$260000$r5YQdVfBa4JKlq6Ujw6mXs$01UwWdKU1vB0nFWwcXVa5bpsyJ2d6aG3nyrn3G8gqhs=', '2021-11-26 17:07:20.412962', 1, 'admin@gmail.com', 'admin', 1, 1),
	(2, 'prueba123', '2021-11-26 04:31:04.000000', 0, 'prueba@gmail.com', 'prueba1', 1, 0),
	(3, 'pbkdf2_sha256$260000$mS159WnPuRTyjNI17UNYbn$O7nsthfn2A9tYG+VUaCFMiB0WVPq391ZI89VuaHjaVc=', NULL, 1, 'admin1@gmail.com', 'adminsuper', 1, 1);
/*!40000 ALTER TABLE `core_userprofile` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_userprofile_groups
CREATE TABLE IF NOT EXISTS `core_userprofile_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_userprofile_groups_userprofile_id_group_id_850ef664_uniq` (`userprofile_id`,`group_id`),
  KEY `core_userprofile_groups_group_id_384230fa_fk_auth_group_id` (`group_id`),
  CONSTRAINT `core_userprofile_gro_userprofile_id_b21bcdce_fk_core_user` FOREIGN KEY (`userprofile_id`) REFERENCES `core_userprofile` (`id`),
  CONSTRAINT `core_userprofile_groups_group_id_384230fa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_userprofile_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `core_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_userprofile_groups` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.core_userprofile_user_permissions
CREATE TABLE IF NOT EXISTS `core_userprofile_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_userprofile_user_pe_userprofile_id_permissio_99e366ea_uniq` (`userprofile_id`,`permission_id`),
  KEY `core_userprofile_use_permission_id_c90fc1a9_fk_auth_perm` (`permission_id`),
  CONSTRAINT `core_userprofile_use_permission_id_c90fc1a9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `core_userprofile_use_userprofile_id_e6c8d79a_fk_core_user` FOREIGN KEY (`userprofile_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.core_userprofile_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `core_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_userprofile_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.django_admin_log: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2021-11-26 04:31:27.693511', '2', 'prueba@gmail.com', 1, '[{"added": {}}]', 9, 1),
	(2, '2021-11-26 04:38:16.425412', '1', 'prueba@gmail.com', 1, '[{"added": {}}]', 19, 1),
	(3, '2021-11-26 04:41:20.500522', '1', 'prueba', 1, '[{"added": {}}]', 12, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.django_content_type: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'contenttypes', 'contenttype'),
	(6, 'core', 'brands'),
	(8, 'core', 'deals'),
	(10, 'core', 'favorita'),
	(7, 'core', 'stores'),
	(9, 'core', 'userprofile'),
	(11, 'oauth2_provider', 'accesstoken'),
	(12, 'oauth2_provider', 'application'),
	(13, 'oauth2_provider', 'grant'),
	(15, 'oauth2_provider', 'idtoken'),
	(14, 'oauth2_provider', 'refreshtoken'),
	(5, 'sessions', 'session'),
	(16, 'social_django', 'association'),
	(17, 'social_django', 'code'),
	(18, 'social_django', 'nonce'),
	(20, 'social_django', 'partial'),
	(19, 'social_django', 'usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.django_migrations: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2021-11-24 02:23:01.755503'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2021-11-24 02:23:01.864911'),
	(3, 'auth', '0001_initial', '2021-11-24 02:23:02.130620'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2021-11-24 02:23:02.161878'),
	(5, 'auth', '0003_alter_user_email_max_length', '2021-11-24 02:23:02.161878'),
	(6, 'auth', '0004_alter_user_username_opts', '2021-11-24 02:23:02.177509'),
	(7, 'auth', '0005_alter_user_last_login_null', '2021-11-24 02:23:02.177509'),
	(8, 'auth', '0006_require_contenttypes_0002', '2021-11-24 02:23:02.193140'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2021-11-24 02:23:02.193140'),
	(10, 'auth', '0008_alter_user_username_max_length', '2021-11-24 02:23:02.208768'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2021-11-24 02:23:02.208768'),
	(12, 'auth', '0010_alter_group_name_max_length', '2021-11-24 02:23:02.240026'),
	(13, 'auth', '0011_update_proxy_permissions', '2021-11-24 02:23:02.240026'),
	(14, 'auth', '0012_alter_user_first_name_max_length', '2021-11-24 02:23:02.255657'),
	(15, 'core', '0001_initial', '2021-11-24 02:23:02.672086'),
	(16, 'admin', '0001_initial', '2021-11-24 02:23:02.765863'),
	(17, 'admin', '0002_logentry_remove_auto_add', '2021-11-24 02:23:02.781493'),
	(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-24 02:23:02.797123'),
	(19, 'sessions', '0001_initial', '2021-11-24 02:23:02.844011'),
	(20, 'core', '0002_favorita', '2021-11-25 17:01:39.268788'),
	(21, 'oauth2_provider', '0001_initial', '2021-11-25 23:20:53.901491'),
	(22, 'oauth2_provider', '0002_auto_20190406_1805', '2021-11-25 23:20:54.089006'),
	(23, 'oauth2_provider', '0003_auto_20201211_1314', '2021-11-25 23:20:54.260949'),
	(24, 'oauth2_provider', '0004_auto_20200902_2022', '2021-11-25 23:20:54.854881'),
	(25, 'default', '0001_initial', '2021-11-25 23:20:55.292494'),
	(26, 'social_auth', '0001_initial', '2021-11-25 23:20:55.292494'),
	(27, 'default', '0002_add_related_name', '2021-11-25 23:20:55.323779'),
	(28, 'social_auth', '0002_add_related_name', '2021-11-25 23:20:55.339398'),
	(29, 'default', '0003_alter_email_max_length', '2021-11-25 23:20:55.370656'),
	(30, 'social_auth', '0003_alter_email_max_length', '2021-11-25 23:20:55.386545'),
	(31, 'default', '0004_auto_20160423_0400', '2021-11-25 23:20:55.417553'),
	(32, 'social_auth', '0004_auto_20160423_0400', '2021-11-25 23:20:55.417553'),
	(33, 'social_auth', '0005_auto_20160727_2333', '2021-11-25 23:20:55.464436'),
	(34, 'social_django', '0006_partial', '2021-11-25 23:20:55.558218'),
	(35, 'social_django', '0007_code_timestamp', '2021-11-25 23:20:55.667628'),
	(36, 'social_django', '0008_partial_timestamp', '2021-11-25 23:20:55.792672'),
	(37, 'social_django', '0009_auto_20191118_0520', '2021-11-25 23:20:55.980220'),
	(38, 'social_django', '0010_uid_db_index', '2021-11-25 23:20:56.042743'),
	(39, 'social_django', '0001_initial', '2021-11-25 23:20:56.058353'),
	(40, 'social_django', '0005_auto_20160727_2333', '2021-11-25 23:20:56.074002'),
	(41, 'social_django', '0004_auto_20160423_0400', '2021-11-25 23:20:56.074002'),
	(42, 'social_django', '0002_add_related_name', '2021-11-25 23:20:56.074002'),
	(43, 'social_django', '0003_alter_email_max_length', '2021-11-25 23:20:56.089632');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.django_session: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('i0v1hbcvnnliduyglgc7k7e8hcz73u9b', '.eJxVjEEOwiAQRe_C2hCgMAWX7j0DmcKMVA0kpV0Z765NutDtf-_9l4i4rSVunZY4Z3EWWpx-twnTg-oO8h3rrcnU6rrMk9wVedAury3T83K4fwcFe_nWoJ1CIjeOARg4DH4Eg4onSOS1sUDeJU4hoAKlGDO7rLTTHKwdjAHx_gDVkjdT:1mqegy:PPuicPIOzl3VYU5rzNaXXQSV7qwFJPvdo9C7OVvGy4U', '2021-12-10 17:07:20.414820'),
	('yyos53ysyuefogvvqrkw708tdizgzk1o', '.eJxVjEEOwiAQRe_C2hCgMAWX7j0DmcKMVA0kpV0Z765NutDtf-_9l4i4rSVunZY4Z3EWWpx-twnTg-oO8h3rrcnU6rrMk9wVedAury3T83K4fwcFe_nWoJ1CIjeOARg4DH4Eg4onSOS1sUDeJU4hoAKlGDO7rLTTHKwdjAHx_gDVkjdT:1mpkvK:u-vg3PyypuLnHEKmgsW1K1M8AvHdsWHArtA7-I2r_uY', '2021-12-08 05:34:26.955577');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.oauth2_provider_accesstoken
CREATE TABLE IF NOT EXISTS `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint(20) DEFAULT NULL,
  `id_token_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_core_user` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.oauth2_provider_accesstoken: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.oauth2_provider_application
CREATE TABLE IF NOT EXISTS `oauth2_provider_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_core_user` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.oauth2_provider_application: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` (`id`, `client_id`, `redirect_uris`, `client_type`, `authorization_grant_type`, `client_secret`, `name`, `user_id`, `skip_authorization`, `created`, `updated`, `algorithm`) VALUES
	(1, '2EFpaee0AQZFuU3FrVUEOn3KEJwgr5vfSwRaGPC5', '', 'public', 'client-credentials', 'fHQTSaVdegoKViatxXRuvbNdaUQJt6SaqoIgqYFvqYhOFfgmqqR4HKSph137LU7KTNB9t3VHogNNYAkCcVtXcC1QmjDzjIXX6tRo45NubdIkWMMuXdANYOUaNV8yejRX', 'prueba', 1, 0, '2021-11-26 04:41:20.500522', '2021-11-26 04:41:20.500522', '');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.oauth2_provider_grant
CREATE TABLE IF NOT EXISTS `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) NOT NULL,
  `code_challenge_method` varchar(10) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `claims` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_core_userprofile_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.oauth2_provider_grant: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.oauth2_provider_idtoken
CREATE TABLE IF NOT EXISTS `oauth2_provider_idtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jti` char(32) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_core_userprofile_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.oauth2_provider_idtoken: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.oauth2_provider_refreshtoken
CREATE TABLE IF NOT EXISTS `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_core_user` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.oauth2_provider_refreshtoken: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.social_auth_association
CREATE TABLE IF NOT EXISTS `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.social_auth_association: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.social_auth_code
CREATE TABLE IF NOT EXISTS `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.social_auth_code: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.social_auth_nonce
CREATE TABLE IF NOT EXISTS `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.social_auth_nonce: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.social_auth_partial
CREATE TABLE IF NOT EXISTS `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.social_auth_partial: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;

-- Volcando estructura para tabla restbd.social_auth_usersocialauth
CREATE TABLE IF NOT EXISTS `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_core_user` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla restbd.social_auth_usersocialauth: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`, `created`, `modified`) VALUES
	(1, 'aasdf', '1', '{}', 2, '2021-11-26 04:38:16.425412', '2021-11-26 04:38:16.425412');
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
