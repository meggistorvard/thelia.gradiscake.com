SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `accessory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `accessory` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `address3` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `locale` varchar(45) NOT NULL,
  `algo` varchar(128) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `remember_me_token` varchar(255) DEFAULT NULL,
  `remember_me_serial` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password_renew_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `admin` VALUES(1, NULL, 'admin', 'admin', 'Admin', '$2y$10$FL863iNlmJGWHwbVKhpa/uOj8AxDf3CO1hMAz9gpqCBCQZadlAo/.', 'en_US', 'PASSWORD_BCRYPT', NULL, NULL, '5aaff2b129231', 's.tecnology@yahoo.it', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL,
  `admin_login` varchar(255) DEFAULT NULL,
  `admin_firstname` varchar(255) DEFAULT NULL,
  `admin_lastname` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `message` text,
  `request` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `api` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `postage` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `area` VALUES(1, 'France', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(2, 'A Zone', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(3, 'B Zone', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(4, 'C Zone', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(5, 'France OM1', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(6, 'France OM2', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(7, 'Europe', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(8, 'North America', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(9, 'Asia', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(10, 'Africa', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(11, 'Oceania', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(12, 'South America', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(13, 'Europe (non-EU)', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area` VALUES(14, 'Central America/Antilla', NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `area_delivery_module` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `delivery_module_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `area_delivery_module` VALUES(1, 1, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area_delivery_module` VALUES(2, 2, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area_delivery_module` VALUES(3, 3, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area_delivery_module` VALUES(4, 4, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area_delivery_module` VALUES(5, 5, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `area_delivery_module` VALUES(6, 6, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `attribute_av` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `attribute_av_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `attribute_combination` (
  `attribute_id` int(11) NOT NULL,
  `attribute_av_id` int(11) NOT NULL,
  `product_sale_elements_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `attribute_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `attribute_template` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `logo_image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brand_document` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brand_document_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brand_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brand_image` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brand_image_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address_delivery_id` int(11) DEFAULT NULL,
  `address_invoice_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `discount` decimal(16,6) DEFAULT '0.000000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cart` VALUES(1, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-03-29 18:14:43', '2019-03-29 18:14:43');
INSERT INTO `cart` VALUES(2, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-03-30 18:24:57', '2019-03-30 18:24:57');
INSERT INTO `cart` VALUES(3, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-03-30 18:29:44', '2019-03-30 18:29:44');
INSERT INTO `cart` VALUES(4, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-04-01 23:19:09', '2019-04-01 23:19:09');
INSERT INTO `cart` VALUES(5, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-04-01 23:52:44', '2019-04-01 23:52:44');
INSERT INTO `cart` VALUES(6, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-04-02 02:43:49', '2019-04-02 02:43:49');
INSERT INTO `cart` VALUES(7, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-04-02 03:26:40', '2019-04-02 03:26:40');
INSERT INTO `cart` VALUES(8, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-04-07 15:21:04', '2019-04-07 15:21:04');
INSERT INTO `cart` VALUES(9, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-04-07 17:07:43', '2019-04-07 17:07:43');
INSERT INTO `cart` VALUES(10, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-04-16 09:10:16', '2019-04-16 09:10:16');
INSERT INTO `cart` VALUES(11, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-04-25 16:13:04', '2019-04-25 16:13:04');
INSERT INTO `cart` VALUES(12, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-04-30 16:17:13', '2019-04-30 16:17:13');
INSERT INTO `cart` VALUES(13, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-02 03:11:26', '2019-05-02 03:11:26');
INSERT INTO `cart` VALUES(14, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-02 20:00:14', '2019-05-02 20:00:14');
INSERT INTO `cart` VALUES(15, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-03 23:47:42', '2019-05-03 23:47:42');
INSERT INTO `cart` VALUES(16, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-04 16:29:18', '2019-05-04 16:29:18');
INSERT INTO `cart` VALUES(17, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-04 19:50:08', '2019-05-04 19:50:08');
INSERT INTO `cart` VALUES(18, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-05 04:25:07', '2019-05-05 04:25:07');
INSERT INTO `cart` VALUES(19, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-05 07:07:26', '2019-05-05 07:07:26');
INSERT INTO `cart` VALUES(20, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-06 00:24:47', '2019-05-06 00:24:47');
INSERT INTO `cart` VALUES(21, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-06 00:32:02', '2019-05-06 00:32:02');
INSERT INTO `cart` VALUES(22, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-07 07:42:27', '2019-05-07 07:42:27');
INSERT INTO `cart` VALUES(23, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-07 16:33:47', '2019-05-07 16:33:47');
INSERT INTO `cart` VALUES(24, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-07 17:48:50', '2019-05-07 17:48:50');
INSERT INTO `cart` VALUES(25, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-08 15:28:18', '2019-05-08 15:28:18');
INSERT INTO `cart` VALUES(26, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-08 15:52:36', '2019-05-08 15:52:36');
INSERT INTO `cart` VALUES(27, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-08 22:22:26', '2019-05-08 22:22:26');
INSERT INTO `cart` VALUES(28, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-08 22:25:29', '2019-05-08 22:25:29');
INSERT INTO `cart` VALUES(29, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-09 00:22:51', '2019-05-09 00:22:51');
INSERT INTO `cart` VALUES(30, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-09 09:52:57', '2019-05-09 09:52:57');
INSERT INTO `cart` VALUES(31, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-09 19:41:32', '2019-05-09 19:41:32');
INSERT INTO `cart` VALUES(32, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-10 10:55:30', '2019-05-10 10:55:30');
INSERT INTO `cart` VALUES(33, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-10 11:37:42', '2019-05-10 11:37:42');
INSERT INTO `cart` VALUES(34, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-10 20:30:56', '2019-05-10 20:30:56');
INSERT INTO `cart` VALUES(35, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-11 09:28:45', '2019-05-11 09:28:45');
INSERT INTO `cart` VALUES(36, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-15 07:38:06', '2019-05-15 07:38:06');
INSERT INTO `cart` VALUES(37, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-15 19:28:07', '2019-05-15 19:28:07');
INSERT INTO `cart` VALUES(38, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-16 12:35:03', '2019-05-16 12:35:03');
INSERT INTO `cart` VALUES(39, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-16 14:03:29', '2019-05-16 14:03:29');
INSERT INTO `cart` VALUES(40, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-17 13:20:11', '2019-05-17 13:20:11');
INSERT INTO `cart` VALUES(41, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-18 06:32:35', '2019-05-18 06:32:35');
INSERT INTO `cart` VALUES(42, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-18 07:05:52', '2019-05-18 07:05:52');
INSERT INTO `cart` VALUES(43, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-18 08:13:57', '2019-05-18 08:13:57');
INSERT INTO `cart` VALUES(44, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-05-19 17:07:02', '2019-05-19 17:07:02');
INSERT INTO `cart` VALUES(45, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-24 01:32:22', '2019-05-24 01:32:22');
INSERT INTO `cart` VALUES(46, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-25 04:18:46', '2019-05-25 04:18:46');
INSERT INTO `cart` VALUES(47, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-25 04:18:52', '2019-05-25 04:18:52');
INSERT INTO `cart` VALUES(48, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-27 03:33:40', '2019-05-27 03:33:40');
INSERT INTO `cart` VALUES(49, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-05-30 00:58:35', '2019-05-30 00:58:35');
INSERT INTO `cart` VALUES(50, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-05-30 00:58:41', '2019-05-30 00:58:41');
INSERT INTO `cart` VALUES(51, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-06-01 22:02:39', '2019-06-01 22:02:39');
INSERT INTO `cart` VALUES(52, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-06-04 21:56:11', '2019-06-04 21:56:11');
INSERT INTO `cart` VALUES(53, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-06-06 02:05:28', '2019-06-06 02:05:28');
INSERT INTO `cart` VALUES(54, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-06-06 11:29:28', '2019-06-06 11:29:28');
INSERT INTO `cart` VALUES(55, NULL, NULL, NULL, NULL, 2, 0.000000, '2019-06-08 01:20:33', '2019-06-08 01:20:33');
INSERT INTO `cart` VALUES(56, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-06-08 17:55:21', '2019-06-08 17:55:21');
INSERT INTO `cart` VALUES(57, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-06-08 21:27:41', '2019-06-08 21:27:41');
INSERT INTO `cart` VALUES(58, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-06-17 13:52:46', '2019-06-17 13:52:46');
INSERT INTO `cart` VALUES(59, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-07-06 22:18:08', '2019-07-06 22:18:08');
INSERT INTO `cart` VALUES(60, NULL, NULL, NULL, NULL, 1, 0.000000, '2019-07-14 21:03:02', '2019-07-14 21:03:02');
INSERT INTO `cart` VALUES(61, NULL, NULL, NULL, NULL, 3, 0.000000, '2019-07-30 15:46:34', '2019-07-30 15:46:34');
INSERT INTO `cart` VALUES(62, NULL, NULL, NULL, NULL, 3, 0.000000, '2020-01-02 09:26:44', '2020-01-02 09:26:44');
INSERT INTO `cart` VALUES(63, NULL, NULL, NULL, NULL, 2, 0.000000, '2020-01-08 07:45:42', '2020-01-08 07:45:42');
INSERT INTO `cart` VALUES(64, NULL, NULL, NULL, NULL, 1, 0.000000, '2020-01-10 13:34:56', '2020-01-10 13:34:56');
INSERT INTO `cart` VALUES(65, NULL, NULL, NULL, NULL, 3, 0.000000, '2020-01-26 23:25:20', '2020-01-26 23:25:20');
INSERT INTO `cart` VALUES(66, NULL, NULL, NULL, NULL, 3, 0.000000, '2020-01-27 23:59:56', '2020-01-27 23:59:56');

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float DEFAULT '1',
  `product_sale_elements_id` int(11) NOT NULL,
  `price` decimal(16,6) DEFAULT '0.000000',
  `promo_price` decimal(16,6) DEFAULT '0.000000',
  `price_end_of_life` datetime DEFAULT NULL,
  `promo` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL,
  `position` int(11) NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_associated_content` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_document` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_document_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_image` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_image_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `category_version` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL,
  `position` int(11) NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `secured` tinyint(4) NOT NULL DEFAULT '1',
  `hidden` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `config` VALUES(1, 'check-available-stock', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(2, 'active-front-template', 'default', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(3, 'active-admin-template', 'default', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(4, 'active-pdf-template', 'default', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(5, 'active-mail-template', 'default', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(6, 'rewriting_enable', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(7, 'imagine_graphic_driver', 'gd', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(8, 'default_images_quality_percent', '75', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(9, 'original_image_delivery_mode', 'symlink', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(10, 'original_document_delivery_mode', 'symlink', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(11, 'images_library_path', 'local/media/images', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(12, 'documents_library_path', 'local/media/documents', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(13, 'image_cache_dir_from_web_root', 'cache/images', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(14, 'document_cache_dir_from_web_root', 'cache/documents', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(15, 'page_not_found_view', '404.html', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(16, 'obsolete_rewriten_url_view', 'obsolete-rewritten-url', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(17, 'use_tax_free_amounts', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(18, 'process_assets', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(19, 'thelia_admin_remember_me_cookie_name', 'tarmcn', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(20, 'thelia_admin_remember_me_cookie_expiration', '2592000', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(21, 'thelia_customer_remember_me_cookie_name', 'tcrmcn', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(22, 'thelia_customer_remember_me_cookie_expiration', '31536000', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(23, 'url_site', 'http://thelia.gradiscake.com/web', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(24, 'pdf_invoice_file', 'invoice', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(25, 'pdf_delivery_file', 'delivery', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(26, 'unknown-flag-path', 'assets/img/flags/unknown.png', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(27, 'html_output_trim_level', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(28, 'default_available_stock', '100', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(29, 'information_folder_id', '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(30, 'terms_conditions_content_id', '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(31, 'allow_negative_stock', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(32, 'cart.use_persistent_cookie', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(33, 'cart.cookie_name', 'thelia_cart', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(34, 'cart.cookie_lifetime', '31536060', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(35, 'session_config.lifetime', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(36, 'session_config.default', '1', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(37, 'default_lang_without_translation', '1', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(38, 'store_name', 'Thelia', 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(39, 'store_description', '', 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(40, 'store_email', 's.tecnology@yahoo.it', 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(41, 'store_notification_emails', 's.tecnology@yahoo.it', 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(42, 'one_domain_foreach_lang', '0', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(43, 'thelia_version', '2.3.4', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(44, 'thelia_major_version', '2', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(45, 'thelia_minus_version', '3', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(46, 'thelia_release_version', '4', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(47, 'thelia_extra_version', '', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(48, 'front_cart_country_cookie_name', 'fcccn', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(49, 'front_cart_country_cookie_expires', '2592000', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(50, 'sitemap_ttl', '7200', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(51, 'feed_ttl', '7200', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(52, 'form_firewall_bruteforce_time_to_wait', '10', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(53, 'form_firewall_time_to_wait', '60', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(54, 'form_firewall_bruteforce_attempts', '10', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(55, 'form_firewall_attempts', '6', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(56, 'form_firewall_active', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(57, 'allow_slash_ended_uri', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(58, 'error_message.show', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(59, 'error_message.page_name', 'error.html', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(60, 'customer_change_email', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(61, 'customer_confirm_email', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(62, 'form.secret', '2ad0b0f514ce92ab4a8a858e448be1ca', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(63, 'minimum_admin_password_length', '4', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(64, 'enable_lost_admin_password_recovery', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(65, 'notify_newsletter_subscription', '1', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(66, 'number_default_results_per_page.product_list', '20', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(67, 'number_default_results_per_page.order_list', '20', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(68, 'number_default_results_per_page.customer_list', '20', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(69, 'customer_email_confirmation', '0', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `config` VALUES(70, 'number_default_results_per_page.coupon_list', '20', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `config_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `config_i18n` VALUES(1, 'de_DE', 'Verfügbaren Lagerbestand prüfen (1) oder ignorieren (0) beim Anzeigen und Änderung der bestellte Menge', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(1, 'en_US', 'Check available product stock (1) or ignore it (0) when displaying and changing ordered quantity', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(1, 'es_ES', 'Comprobar disponibilidad de stock de producto (1) o ignorar (0) cuando se muestra o cambia cantidad en pedido', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(1, 'fr_FR', 'Vérifier la présence de produits en stock (1) ou l\'ignorer (0) lors de l\'affichage et la modification des quantités commandées', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(2, 'de_DE', 'Name der aktiven Front Office Template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(2, 'en_US', 'Name of the active front-office template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(2, 'es_ES', 'Nombre de la plantilla activa de recepción', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(2, 'fr_FR', 'Nom du modèle de front-office actif', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(3, 'de_DE', 'Name der aktiven Back Office Template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(3, 'en_US', 'Name of the active back-office template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(3, 'es_ES', 'Nombe de la plantilla del administrador activo', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(3, 'fr_FR', 'Nom du modèle de back-office actif', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(4, 'de_DE', 'Name der aktiven PDF Template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(4, 'en_US', 'Name of the active PDF template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(4, 'es_ES', 'Nombre de la plantilla PDF activa', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(4, 'fr_FR', 'Nom du modèle PDF actif', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(5, 'de_DE', 'Name der aktiven E-Mail Template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(5, 'en_US', 'Name of the active mailing template', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(5, 'es_ES', 'Nombre de la plantilla de correo activa', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(5, 'fr_FR', 'Nom du modèle d\'e-mail actif', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(6, 'de_DE', 'Aktivieren (1) oder deaktivieren (0) URL Überschreibung', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(6, 'en_US', 'Enable (1) or disable (0) URL rewriting', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(6, 'es_ES', 'Activar(1) o desactivar(0) reescritura de URL', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(6, 'fr_FR', 'Activer (1) ou désactiver (0) la réécriture d\'URL', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(7, 'de_DE', 'Name des Grafik-Treibers, der von der Imagine-Bibliothek verwendet wird (siehe https://imagine.readthedocs.org)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(7, 'en_US', 'Name of the graphic driver used by the Imagine library (see https://imagine.readthedocs.org)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(7, 'es_ES', 'Nombre del controlador gráfico usado por la Librería Imagine (ver https://imagine.readthedocs.org)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(7, 'fr_FR', 'Nom du pilote graphique utilisé par la bibliothèque Imagine (voir https://imagine.readthedocs.org)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(8, 'de_DE', 'Die Standardqualität (in%) der erzeugten Bilder', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(8, 'en_US', 'The default quality (in %) of the generated images', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(8, 'es_ES', 'La calidad por defecto (en %) de las imágenes generadas', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(8, 'fr_FR', 'La qualité par défaut (en %) dans les images générées', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(9, 'de_DE', 'Wie werden die Originalbilder (volle Auflösung) im Webspace ausgeliefert (symlink or copy)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(9, 'en_US', 'How original (full resolution) images are delivered in the web space (symlink or copy)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(9, 'es_ES', 'Cómo se entregan imágenes originales (resolución completa) en el espacio de la web (enlace o copia)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(9, 'fr_FR', 'Comment les images originales (pleine résolution) sont-elles fournises dans l\'espace web (lien symbolique ou copie)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(10, 'de_DE', 'Wie werden Dokumentdateien im Webspace (Symlink oder Kopie) ausgeliefert', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(10, 'en_US', 'How document files are delivered in the web space (symlink or copy)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(10, 'es_ES', 'Cómo los documento son enviados en el espacio de la web (enlace o copia)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(10, 'fr_FR', 'Comment les documents sont-ils fournis dans l\'espace web (lien symbolique ou copie)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(11, 'de_DE', 'Pfad zu dem Verzeichnis, in dem Bilder gespeichert sind', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(11, 'en_US', 'Path to the directory where images are stored', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(11, 'es_ES', 'Ruta al directorio donde las imágenes estén guardadas', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(11, 'fr_FR', 'Chemin vers le répertoire où les images sont stockées', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(12, 'de_DE', 'Pfad zu dem Verzeichnis, in dem Dokumente gespeichert sind', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(12, 'en_US', 'Path to the directory where documents are stored', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(12, 'es_ES', 'Ruta al directorio donde los documentos estén guardados', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(12, 'fr_FR', 'Chemin vers le répertoire où sont stockés les documents', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(13, 'de_DE', 'Der Pfad zum Bild-Cache-Verzeichnis in dem Web-Space', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(13, 'en_US', 'The path to the image cache directory in the web space', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(13, 'es_ES', 'La ruta de acceso para el directorio de caché de imagen en el espacio web', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(13, 'fr_FR', 'Chemin vers le répertoire de cache d\'images dans l\'espace web', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(14, 'de_DE', 'Der Pfad zum Dokument-Cache-Verzeichnis in dem Web-Space', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(14, 'en_US', 'The path to the document cache directory in the web space', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(14, 'es_ES', 'La ruta al directorio de caché de documentos en el espacio web', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(14, 'fr_FR', 'Chemin d\'accès au répertoire de cache de documents dans l\'espace web', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(15, 'de_DE', 'Name der Seite 404 (unauffindbar) in dem aktuellen Modell (mit der Dateinamenerweiterung 404.html zum Beispiel)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(15, 'en_US', 'File name of the 404 (not found) view in the current template (with extension, e.g. 404.html)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(15, 'es_ES', 'Nombre de archivo de la vista 404 (no encontrado) en la plantilla actual (con la extensión, ej: 404.html)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(15, 'fr_FR', 'Nom de la page 404 (introuvable) dans le modèle actuel (avec l\'extension, par exemple, 404.html)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(16, 'de_DE', 'Name des Templates zurückgegeben, wenn eine veraltete (oder inaktive) Produkt-URL aufgerufen wird', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(16, 'en_US', 'Name of the template view returned when an obsolete (or inactive) product URL is invoked', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(16, 'es_ES', 'Nombre de la plantilla regresada cuando se llama una URL obsoleta (o inactiva) de un producto', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(16, 'fr_FR', 'Nom de la page du modèle retournée lorsqu\'une URL obsolète (ou inactive) est invoquée', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(17, 'de_DE', 'Anzeigt und verwendet Preise mit (0) oder ohne (1) Taxen', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(17, 'en_US', 'Display and process prices with (0) or without (1) taxes.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(17, 'es_ES', 'Mostrar y procesar precios con (0) o sin (1) impuestos.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(17, 'fr_FR', 'Affiche et traite les prix avec(0) ou sans (1) les taxes', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(18, 'de_DE', 'Template Assets automatisch bei Codeänderungen kompilieren? (1 = ja, 0 = nein)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(18, 'en_US', 'Compile templates assets automatically upon asset source change (1 = yes, 0 = no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(18, 'es_ES', 'Compilar las plantillas automáticamente en cada cambio de código fuente (1 = sí, 2 = no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(18, 'fr_FR', 'Compiler les resources du modèle actif à chaque changement (1 = oui, 2 = non)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(19, 'de_DE', 'Name des Cookies \"Remember me\" für die Administratoren', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(19, 'en_US', '\"Remember me\" cookie name for administration users', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(19, 'es_ES', 'Nombre de la cookie \"Recordarme\" para los usuarios de administración', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(19, 'fr_FR', 'Nom du cookie \"Remember me\" pour les utilisateurs d\'administration', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(20, 'de_DE', 'Ablaufzeit in Sekunden des Cookies \"Remember me\" für die Administratoren', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(20, 'en_US', '\"Remember me\" cookie expiration time, in seconds, for administration users', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(20, 'es_ES', 'Fecha de caducidad de cookie \"recuerdame\", en segundos, para los usuarios de la administración', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(20, 'fr_FR', 'Délai d\'expiration du cookie \"Remember me\", en secondes, pour les utilisateurs d\'administration', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(21, 'de_DE', 'Name des Cookies \"Remember me\" für die Kunden', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(21, 'en_US', '\"Remember me\" cookie name for customer users', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(21, 'es_ES', 'Nombre de la cookie \"Recordarme\" para los usuarios cliente', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(21, 'fr_FR', 'Nom du cookie \"Remember me\" pour les clients', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(22, 'de_DE', 'Ablaufzeit in Sekunden des Cookies \"Remember me\" für die Kunden', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(22, 'en_US', '\"Remember me\" cookie expiration time, in seconds, for customer users', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(22, 'es_ES', 'Fecha de caducidad de cookie \"Acuérdate de mi\", en segundos, para los usuarios cliente', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(22, 'fr_FR', 'Délai d\'expiration du cookie \"Remember me\", en secondes, pour les clients', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(23, 'de_DE', 'Shops Basis-URL (zum Beispiel http://www.yourshopdomain.com)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(23, 'en_US', 'Base URL of the shop (e.g. http://www.yourshopdomain.com)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(23, 'es_ES', 'Base URL de la tienda (por ejemplo http://www.yourshopdomain.com)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(23, 'fr_FR', 'URL de base pour la boutique (par exemple http://www.yourshopdomain.com)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(24, 'de_DE', 'Name der Rechnungsansicht in der aktuellen PDF-Vorlage (ohne Erweiterung)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(24, 'en_US', 'Name of the invoice view in the current PDF template (without extension)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(24, 'es_ES', 'Nombre de la vista para la factura en la plantilla PDF actual (sin extensión)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(24, 'fr_FR', 'Nom de la vue de la facture dans le modèle PDF en cours (sans extension)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(25, 'de_DE', 'Name der Lieferung Sicht in der aktuellen PDF-Vorlage (ohne Erweiterung)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(25, 'en_US', 'Name of the delivery view in the current PDF template (without extension)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(25, 'es_ES', 'Nombre de la vista de entrega en la plantilla PDF actual (sin extensión)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(25, 'fr_FR', 'Nom de la vue de la livraison dans le modèle PDF en cours (sans extension)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(26, 'de_DE', 'Der Pfad (relativ zu der Standard-Backoffice-Vorlage) zu dem verwendetes Bild wenn kein Flagge-Bild für ein Land gefunden werden kann', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(26, 'en_US', 'The path (relative to the default back-office template) to the image used when no flag image can be found for a country', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(26, 'es_ES', 'La ruta (relativa a la plantilla de back office por defecto) a la imagen que se utiliza cuando no se puede encontrar ninguna imagen de la bandera para un país', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(26, 'fr_FR', 'Le chemin (par rapport au modèle de back-office par défaut) vers l\'image utilisée lorsque aucune image de drapeau ne peut être trouvée pour un pays', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(27, 'de_DE', 'Whitespace trim Ebene des generierten HTML-Codes (0 = aus, 1 = Mittel, 2 = Maximum)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(27, 'en_US', 'Whitespace trim level of the generated HTML code (0 = none, 1 = medium, 2 = maximum)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(27, 'es_ES', 'Espacio en blanco del ajuste nivel del código HTML generado (0 = ninguna, 1 = medio, 2 = máximo)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(27, 'fr_FR', 'Niveau de découpe des espaces dans le code HTML généré (0 = aucun, 1 = moyen, 2 = maximum)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(28, 'de_DE', 'Standart verfügbaren Bestand wenn check-available-stock gleich 0.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(28, 'en_US', 'Default available stock when check-available-stock is set to 0.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(28, 'es_ES', 'Cuando check-available-stock es 0 stock disponible por defecto.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(28, 'fr_FR', 'Stock disponible par défaut quand check-available-stock est à 0.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(29, 'de_DE', 'Die ID des Ordners mit Ihren Informations-Seiten: AGB, Impressum, ...', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(29, 'en_US', 'The ID of the folder containing your information pages : terms, imprint, ...', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(29, 'es_ES', 'El ID de la carpeta que contiene sus páginas de información: términos, impresión,...', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(29, 'fr_FR', 'L\'ID du dossier contenant vos pages d\'informations : CGV, mentions légales, ...', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(30, 'de_DE', 'Ihr \'Allgemeine Geschäftsbedingungen \' ID.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(30, 'en_US', 'The ID of the \'Terms & Conditions\' content.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(30, 'es_ES', 'El ID de los contenidos de \'Términos y condiciones\'.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(30, 'fr_FR', 'L\'ID du contenu de vos \'CGV\'.', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(31, 'de_DE', 'Negativen Lagerbestand erlauben (1) oder nicht (0)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(31, 'en_US', 'Allow negative product stock (1) or not (0)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(31, 'es_ES', 'Permitir valores negativos producto (1) o no (0)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(31, 'fr_FR', 'Autoriser un stock négatif sur les produits (1) ou pas (0, défaut)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(32, 'de_DE', 'Ein dauerhaftes Cookie verwenden, um den Kundes-Warenkorb zu merken', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(32, 'en_US', 'Use a persistent cookie to keep track of customer cart', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(32, 'es_ES', 'Usa una \'cookie\' persistente para mantener el trayecto del carrito del cliente', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(32, 'fr_FR', 'Utiliser un cookie persistant pour mémoriser le panier du client', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(33, 'de_DE', 'Name der Warenkorb-Cookie', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(33, 'en_US', 'Name of the cart cookie', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(33, 'es_ES', 'Nombre de la cookie del carrito', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(33, 'fr_FR', 'Nom du cookie de stockage du panier', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(34, 'de_DE', 'Dauer der Warenkorb-Cookie in dem Kunden-Browser, in Sekunden', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(34, 'en_US', 'Life time of the cart cookie in the customer browser, in seconds', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(34, 'es_ES', 'Tiempo de vida de la cookie del carro en el navegador del cliente, en segundos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(34, 'fr_FR', 'Durée de vie du cookie du panier dans le navigateur du client, en secondes', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(35, 'de_DE', 'Dauer der Session-Cookie in dem Kunden-Browser, in Sekunden', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(35, 'en_US', 'Life time of the session cookie in the customer browser, in seconds', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(35, 'es_ES', 'Tiempo de vida de la cookie de la sesión en el navegador del cliente, en segundos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(35, 'fr_FR', 'Durée de vie du cookie de la session dans le navigateur du client, en secondes', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(36, 'de_DE', 'Die Session Standartkonfiguration lassen', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(36, 'en_US', 'Leave the default configuration of session', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(36, 'es_ES', 'Abandonde la configuración predeterminada de la sesión', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(36, 'fr_FR', 'Laisser la configuration par défaut de la session', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(37, 'de_DE', 'Standartsprache ohne Übersetzung', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(37, 'en_US', 'Default lang without translation', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(37, 'es_ES', 'Lenguaje por defecto sin traducción', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(37, 'fr_FR', 'Langue par défaut sans traduction', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(52, 'de_DE', '[Firewall/Bruteforce] Wartezeit zwischen X Versuche', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(52, 'en_US', '[Firewall/Bruteforce] Time to wait between X attempts', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(52, 'es_ES', '[Firewall/Bruteforce] Tiempo de espera entre X intentos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(52, 'fr_FR', '[Pare-feu/Bruteforce] Temps à attendre entre X essais', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(53, 'de_DE', '[Firewall] Wartezeit zwischen X Versuche', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(53, 'en_US', '[Firewall] Time to wait between X attempts', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(53, 'es_ES', '[Firewall] Tiempo de espera entre X intentos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(53, 'fr_FR', '[Pare-feu] Temps à attendre entre X essais', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(54, 'de_DE', '[Firewall/Bruteforce] Anzahl der erlaubten Versuche', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(54, 'en_US', '[Firewall/Bruteforce] Number of allowed attemps', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(54, 'es_ES', '[Firewall/Bruteforce] Número de intentos permitidos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(54, 'fr_FR', '[Pare-feu/Bruteforce] Nombre de tentatives autorisées', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(55, 'de_DE', '[Firewall] Anzahl der erlaubten Versuche', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(55, 'en_US', '[Firewall] Number of allowed attemps', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(55, 'es_ES', '[Firewall] Número de intentos permitidos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(55, 'fr_FR', '[Pare-feu] Nombre de tentatives autorisées', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(56, 'de_DE', '[Firewall] Firewall aktivieren', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(56, 'en_US', '[Firewall] Activate the firewall', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(56, 'es_ES', '[Firewall] Activar el firewall', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(56, 'fr_FR', '[Pare-feu] Activer le pare-feu', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(57, 'de_DE', 'URI mit Slash beendet erlauben', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(57, 'en_US', 'Allow slash ended uri', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(57, 'es_ES', 'Permitir barra de fín de url', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(57, 'fr_FR', 'Autoriser les URI terminées par un slash', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(58, 'de_DE', 'Fehlermeldung zeigen anstatt einer weißen Seite im Falle eines eines Serverfehlers', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(58, 'en_US', 'Show error message instead of a white page on a server error', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(58, 'es_ES', 'Mostrar mensaje de error en lugar de una página en blanco cuando ocurre un error de servidor', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(58, 'fr_FR', 'Afficher un message d\'erreur à la place d\'une page blanche lors d\'une erreur serveur', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(59, 'de_DE', 'Dateiname der Fehlerseite', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(59, 'en_US', 'Filename of the error page', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(59, 'es_ES', 'Nombre de archivo de la página de error', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(59, 'fr_FR', 'Nom du fichier de la page d\'erreur', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(60, 'de_DE', 'Den Kunden erlauben ihre E-Mail-Adresse zu ändern. 1 für Ja, 0 für Nein', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(60, 'en_US', 'Allow customers to change their email. 1 for yes, 0 for no', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(60, 'es_ES', 'Permitir a los clientes cambiar su correo electrónico. 1 para sí, 0 para no', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(60, 'fr_FR', 'Permettre aux utilisateurs de changer leur email. 1 pour oui, 0 pour non', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(61, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(61, 'en_US', 'Ask the customers to confirm their email in customer creation form (1: yes, 0: no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(61, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(61, 'fr_FR', 'Demander aux clients de confirmer leur adresse email dans le formulaire de création de compte (1: oui, 0: non)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(62, 'de_DE', 'Geheimer Schlüssel für Formular CSRF-token', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(62, 'en_US', 'Secret key for form CSRF token', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(62, 'es_ES', 'Clave secreta para el token CSRF del formulario', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(62, 'fr_FR', 'Clé secrète pour le jeton CSRF des formulaires', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(63, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(63, 'en_US', 'The minimum length required for an administrator password', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(63, 'es_ES', 'La longitud mínima de la contraseña de administrador', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(63, 'fr_FR', 'La longueur minimale requise pour un mot de passe administrateur', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(64, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(64, 'en_US', 'Allow an administrator to recreate a lost password (1 = yes, 0 = no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(64, 'es_ES', 'Permite a un administrador recrear una contraseña perdida (1 = sí, 0 = no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(64, 'fr_FR', 'Permettre à un administrateur de recréer un mot de passe perdu (1 = Oui, 0 = non)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(65, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(65, 'en_US', 'Send a confirmation email to newsletter subscribers (1 = yes, 0 = no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(65, 'es_ES', 'Enviar un correo de confirmación a los suscriptores del boletín (1 = sí, 0 = no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(65, 'fr_FR', 'Envoyer un email de confirmation aux abonnés de la newsletter (1 = Oui, 0 = non)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(66, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(66, 'en_US', 'Default number of products on product list', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(66, 'es_ES', 'Número predeterminado de resultados por página para la lista de productos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(66, 'fr_FR', 'Nombre par défaut de résultats par page pour la liste des produits', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(67, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(67, 'en_US', 'Default number of orders on order list', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(67, 'es_ES', 'Número predeterminado de resultados por página para la lista de pedidos', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(67, 'fr_FR', 'Nombre par défaut de résultats par page pour la liste des commandes', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(68, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(68, 'en_US', 'Default number of customers on customer list', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(68, 'es_ES', 'Número predeterminado de resultados por página para la lista de clientes', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(68, 'fr_FR', 'Nombre par défaut de résultats par page pour la liste des clients', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(69, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(69, 'en_US', 'Customer account creation should be confirmed by email (1: yes, 0: no)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(69, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(69, 'fr_FR', 'La création d\'un compte client doit être confilrée par email (1: oui, 0: non)', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(70, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(70, 'en_US', 'Default number of coupons per page on coupon list', NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(70, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `config_i18n` VALUES(70, 'fr_FR', 'Nombre de coupons par page dans la liste des coupons', NULL, NULL, NULL);

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_document` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_document_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_folder` (
  `content_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `default_folder` tinyint(1) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_image` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_image_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_version` (
  `id` int(11) NOT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `isocode` varchar(4) NOT NULL,
  `isoalpha2` varchar(2) DEFAULT NULL,
  `isoalpha3` varchar(4) DEFAULT NULL,
  `has_states` tinyint(4) DEFAULT '0',
  `need_zip_code` tinyint(4) DEFAULT '0',
  `zip_code_format` varchar(20) DEFAULT NULL,
  `by_default` tinyint(4) DEFAULT '0',
  `shop_country` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `country` VALUES(1, 1, '4', 'AF', 'AFG', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(2, 1, '710', 'ZA', 'ZAF', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(3, 1, '8', 'AL', 'ALB', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(4, 1, '12', 'DZ', 'DZA', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(5, 1, '276', 'DE', 'DEU', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(6, 1, '20', 'AD', 'AND', 0, 1, 'CNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(7, 1, '24', 'AO', 'AGO', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(8, 1, '28', 'AG', 'ATG', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(9, 1, '682', 'SA', 'SAU', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(10, 1, '32', 'AR', 'ARG', 1, 1, 'LNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(11, 1, '51', 'AM', 'ARM', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(12, 1, '36', 'AU', 'AUS', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(13, 1, '40', 'AT', 'AUT', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(14, 1, '31', 'AZ', 'AZE', 0, 1, 'CNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(15, 1, '44', 'BS', 'BHS', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(16, 1, '48', 'BH', 'BHR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(17, 1, '50', 'BD', 'BGD', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(18, 1, '52', 'BB', 'BRB', 0, 1, 'CNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(19, 1, '585', 'PW', 'PLW', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(20, 1, '56', 'BE', 'BEL', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(21, 1, '84', 'BL', 'BLZ', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(22, 1, '204', 'BJ', 'BEN', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(23, 1, '64', 'BT', 'BTN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(24, 1, '112', 'BY', 'BLR', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(25, 1, '104', 'MM', 'MMR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(26, 1, '68', 'BO', 'BOL', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(27, 1, '70', 'BA', 'BIH', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(28, 1, '72', 'BW', 'BWA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(29, 1, '76', 'BR', 'BRA', 0, 1, 'NNNNN-NNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(30, 1, '96', 'BN', 'BRN', 0, 1, 'LLNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(31, 1, '100', 'BG', 'BGR', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(32, 1, '854', 'BF', 'BFA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(33, 1, '108', 'BI', 'BDI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(34, 1, '116', 'KH', 'KHM', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(35, 1, '120', 'CM', 'CMR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(37, 1, '132', 'CV', 'CPV', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(38, 1, '152', 'CL', 'CHL', 0, 1, 'NNN-NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(39, 1, '156', 'CN', 'CHN', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(40, 1, '196', 'CY', 'CYP', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(41, 1, '170', 'CO', 'COL', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(42, 1, '174', 'KM', 'COM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(43, 1, '178', 'CG', 'COG', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(44, 1, '184', 'CK', 'COK', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(45, 1, '408', 'KP', 'PRK', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(46, 1, '410', 'KR', 'KOR', 0, 1, 'NNN-NNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(47, 1, '188', 'CR', 'CRI', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(48, 1, '384', 'CI', 'CIV', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(49, 1, '191', 'HR', 'HRV', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(50, 1, '192', 'CU', 'CUB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(51, 1, '208', 'DK', 'DNK', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(52, 1, '262', 'DJ', 'DJI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(53, 1, '212', 'DM', 'DMA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(54, 1, '818', 'EG', 'EGY', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(55, 1, '784', 'AE', 'ARE', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(56, 1, '218', 'EC', 'ECU', 0, 1, 'CNNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(57, 1, '232', 'ER', 'ERI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(58, 1, '724', 'ES', 'ESP', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(59, 1, '233', 'EE', 'EST', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(61, 1, '231', 'ET', 'ETH', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(62, 1, '242', 'FJ', 'FJI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(63, 1, '246', 'FI', 'FIN', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(64, 1, '250', 'FR', 'FRA', 0, 1, 'NNNNN', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(65, 1, '266', 'GA', 'GAB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(66, 1, '270', 'GM', 'GMB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(67, 1, '268', 'GE', 'GEO', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(68, 1, '288', 'GH', 'GHA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(69, 1, '300', 'GR', 'GRC', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(70, 1, '308', 'GD', 'GRD', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(71, 1, '320', 'GT', 'GTM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(72, 1, '324', 'GN', 'GIN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(73, 1, '624', 'GW', 'GNB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(74, 1, '226', 'GQ', 'GNQ', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(75, 1, '328', 'GY', 'GUY', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(76, 1, '332', 'HT', 'HTI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(77, 1, '340', 'HN', 'HND', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(78, 1, '348', 'HU', 'HUN', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(79, 1, '356', 'IN', 'IND', 0, 1, 'NNN NNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(80, 1, '360', 'ID', 'IDN', 1, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(81, 1, '364', 'IR', 'IRN', 0, 1, 'NNNNN-NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(82, 1, '368', 'IQ', 'IRQ', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(83, 1, '372', 'IE', 'IRL', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(84, 1, '352', 'IS', 'ISL', 0, 1, 'NNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(85, 1, '376', 'IL', 'ISR', 0, 1, 'NNNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(86, 1, '380', 'IT', 'ITA', 1, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(87, 1, '388', 'JM', 'JAM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(88, 1, '392', 'JP', 'JPN', 1, 1, 'NNN-NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(89, 1, '400', 'JO', 'JOR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(90, 1, '398', 'KZ', 'KAZ', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(91, 1, '404', 'KE', 'KEN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(92, 1, '417', 'KG', 'KGZ', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(93, 1, '296', 'KI', 'KIR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(94, 1, '414', 'KW', 'KWT', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(95, 1, '418', 'LA', 'LAO', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(96, 1, '426', 'LS', 'LSO', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(97, 1, '428', 'LV', 'LVA', 0, 1, 'C-NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(98, 1, '422', 'LB', 'LBN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(99, 1, '430', 'LR', 'LBR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(100, 1, '343', 'LY', 'LBY', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(101, 1, '438', 'LI', 'LIE', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(102, 1, '440', 'LT', 'LTU', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(103, 1, '442', 'LU', 'LUX', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(104, 1, '807', 'MK', 'MKD', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(105, 1, '450', 'MG', 'MDG', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(106, 1, '458', 'MY', 'MYS', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(107, 1, '454', 'MW', 'MWI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(108, 1, '462', 'MV', 'MDV', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(109, 1, '466', 'ML', 'MLI', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(110, 1, '470', 'MT', 'MLT', 0, 1, 'LLL NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(111, 1, '504', 'MA', 'MAR', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(112, 1, '584', 'MH', 'MHL', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(113, 1, '480', 'MU', 'MUS', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(114, 1, '478', 'MR', 'MRT', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(115, 1, '484', 'MX', 'MEX', 1, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(116, 1, '583', 'FM', 'FSM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(117, 1, '498', 'MD', 'MDA', 0, 1, 'C-NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(118, 1, '492', 'MC', 'MCO', 0, 1, '980NN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(119, 1, '496', 'MN', 'MNG', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(120, 1, '508', 'MZ', 'MOZ', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(121, 1, '516', 'NA', 'NAM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(122, 1, '520', 'NR', 'NRU', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(123, 1, '524', 'NP', 'NPL', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(124, 1, '558', 'NI', 'NIC', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(125, 1, '562', 'NE', 'NER', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(126, 1, '566', 'NG', 'NGA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(127, 1, '570', 'NU', 'NIU', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(128, 1, '578', 'NO', 'NOR', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(129, 1, '554', 'NZ', 'NZL', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(130, 1, '512', 'OM', 'OMN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(131, 1, '800', 'UG', 'UGA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(132, 1, '860', 'UZ', 'UZB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(133, 1, '586', 'PK', 'PAK', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(134, 1, '591', 'PA', 'PAN', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(135, 1, '598', 'PG', 'PNG', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(136, 1, '600', 'PY', 'PRY', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(137, 1, '528', 'NL', 'NLD', 0, 1, 'NNNN LL', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(138, 1, '604', 'PE', 'PER', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(139, 1, '608', 'PH', 'PHL', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(140, 1, '616', 'PL', 'POL', 0, 1, 'NN-NNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(141, 1, '620', 'PT', 'PRT', 0, 1, 'NNNN-NNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(142, 1, '634', 'QA', 'QAT', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(143, 1, '140', 'CF', 'CAF', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(144, 1, '214', 'DO', 'DOM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(145, 1, '203', 'CZ', 'CZE', 0, 1, 'NNN NN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(146, 1, '642', 'RO', 'ROU', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(147, 1, '826', 'GB', 'GBR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(148, 1, '643', 'RU', 'RUS', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(149, 1, '646', 'RW', 'RWA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(150, 1, '659', 'KN', 'KNA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(151, 1, '662', 'LC', 'LCA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(152, 1, '674', 'SM', 'SMR', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(153, 1, '670', 'VC', 'VCT', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(154, 1, '90', 'SB', 'SLB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(155, 1, '222', 'SV', 'SLV', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(156, 1, '882', 'WS', 'WSM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(157, 1, '678', 'ST', 'STP', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(158, 1, '686', 'SN', 'SEN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(159, 1, '690', 'SC', 'SYC', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(160, 1, '694', 'SL', 'SLE', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(161, 1, '702', 'SG', 'SGP', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(162, 1, '703', 'SK', 'SVK', 0, 1, 'NNN NN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(163, 1, '705', 'SI', 'SVN', 0, 1, 'C-NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(164, 1, '706', 'SO', 'SOM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(165, 1, '729', 'SD', 'SDN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(166, 1, '144', 'LK', 'LKA', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(167, 1, '752', 'SE', 'SWE', 0, 1, 'NNN NN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(168, 1, '756', 'CH', 'CHE', 0, 1, 'NNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(169, 1, '740', 'SR', 'SUR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(170, 1, '748', 'SZ', 'SWZ', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(171, 1, '760', 'SY', 'SYR', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(172, 1, '762', 'TJ', 'TJK', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(173, 1, '834', 'TZ', 'TZA', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(174, 1, '148', 'TD', 'TCD', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(175, 1, '764', 'TH', 'THA', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(176, 1, '768', 'TG', 'TGO', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(177, 1, '776', 'TO', 'TON', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(178, 1, '780', 'TT', 'TTO', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(179, 1, '788', 'TN', 'TUN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(180, 1, '795', 'TM', 'TKM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(181, 1, '792', 'TR', 'TUR', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(182, 1, '798', 'TV', 'TUV', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(183, 1, '804', 'UA', 'UKR', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(184, 1, '858', 'UY', 'URY', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(185, 1, '336', 'VA', 'VAT', 0, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(186, 1, '548', 'VU', 'VUT', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(187, 1, '862', 'VE', 'VEN', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(188, 1, '704', 'VN', 'VNM', 0, 1, 'NNNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(189, 1, '887', 'YE', 'YEM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(191, 1, '180', 'CD', 'COD', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(192, 1, '894', 'ZM', 'ZMB', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(193, 1, '716', 'ZW', 'ZWE', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(196, 1, '840', 'US', 'USA', 1, 1, 'NNNNN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(246, 1, '124', 'CA', 'CAN', 1, 1, 'LNL NLN', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(259, 1, '312', 'GP', 'GLP', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(260, 1, '254', 'GF', 'GUF', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(261, 1, '474', 'MQ', 'MTQ', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(262, 1, '175', 'YT', 'MYT', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(263, 1, '638', 'RE', 'REU', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(264, 1, '666', 'PM', 'SPM', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(265, 1, '540', 'NC', 'NCL', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(266, 1, '258', 'PF', 'PYF', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(267, 1, '876', 'WF', 'WLF', 0, 1, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(269, 1, '344', 'HK', 'HKG', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(270, 1, '652', 'BL', 'BLM', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(271, 1, '663', 'MF', 'MAF', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country` VALUES(272, 1, '260', 'TF', 'ATF', 0, 0, '', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `country_area` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `country_area` VALUES(1, 1, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(2, 2, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(3, 3, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(4, 4, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(5, 5, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(6, 6, NULL, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(7, 7, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(8, 8, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(9, 9, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(10, 10, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(11, 11, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(12, 12, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(13, 13, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(14, 14, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(15, 15, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(16, 16, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(17, 17, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(18, 18, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(19, 19, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(20, 20, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(21, 21, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(22, 22, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(23, 24, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(24, 25, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(25, 26, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(26, 27, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(27, 28, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(28, 29, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(29, 30, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(30, 31, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(31, 32, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(32, 33, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(33, 34, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(34, 35, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(35, 37, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(36, 38, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(37, 39, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(38, 40, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(39, 41, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(40, 42, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(41, 43, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(42, 44, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(43, 45, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(44, 46, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(45, 47, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(46, 48, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(47, 49, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(48, 50, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(49, 51, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(50, 52, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(51, 53, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(52, 54, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(53, 55, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(54, 56, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(55, 57, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(56, 58, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(57, 59, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(58, 61, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(59, 62, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(60, 63, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(61, 64, NULL, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(62, 65, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(63, 66, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(64, 67, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(65, 68, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(66, 69, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(67, 70, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(68, 71, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(69, 72, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(70, 73, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(71, 74, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(72, 75, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(73, 76, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(74, 77, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(75, 78, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(76, 79, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(77, 80, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(78, 81, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(79, 82, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(80, 83, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(81, 84, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(82, 85, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(83, 86, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(84, 87, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(85, 88, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(86, 89, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(87, 90, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(88, 91, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(89, 92, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(90, 93, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(91, 94, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(92, 95, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(93, 96, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(94, 97, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(95, 98, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(96, 99, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(97, 100, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(98, 101, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(99, 102, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(100, 103, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(101, 104, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(102, 105, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(103, 106, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(104, 107, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(105, 108, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(106, 109, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(107, 110, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(108, 111, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(109, 112, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(110, 113, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(111, 114, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(112, 115, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(113, 117, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(114, 118, NULL, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(115, 119, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(116, 120, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(117, 121, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(118, 122, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(119, 123, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(120, 124, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(121, 125, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(122, 126, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(123, 128, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(124, 129, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(125, 130, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(126, 131, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(127, 132, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(128, 133, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(129, 134, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(130, 135, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(131, 136, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(132, 137, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(133, 138, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(134, 139, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(135, 140, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(136, 141, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(137, 142, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(138, 143, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(139, 144, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(140, 145, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(141, 146, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(142, 147, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(143, 148, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(144, 149, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(145, 150, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(146, 151, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(147, 152, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(148, 153, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(149, 154, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(150, 156, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(151, 157, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(152, 158, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(153, 159, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(154, 160, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(155, 161, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(156, 162, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(157, 163, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(158, 164, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(159, 165, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(160, 166, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(161, 167, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(162, 168, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(163, 169, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(164, 170, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(165, 171, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(166, 172, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(167, 173, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(168, 174, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(169, 175, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(170, 176, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(171, 177, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(172, 178, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(173, 179, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(174, 180, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(175, 181, NULL, 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(176, 182, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(177, 183, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(178, 184, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(179, 185, NULL, 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(180, 186, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(181, 187, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(182, 188, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(183, 189, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(184, 191, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(185, 192, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(186, 193, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(187, 196, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(188, 246, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(189, 259, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(190, 260, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(191, 261, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(192, 262, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(193, 263, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(194, 264, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(195, 265, NULL, 6, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(196, 266, NULL, 6, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(197, 267, NULL, 6, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(198, 269, NULL, 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(199, 270, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(200, 271, NULL, 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(201, 272, NULL, 6, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(202, 1, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(203, 2, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(204, 3, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(205, 4, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(206, 5, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(207, 6, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(208, 7, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(209, 8, NULL, 8, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(210, 9, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(211, 10, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(212, 11, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(213, 12, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(214, 13, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(215, 14, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(216, 15, NULL, 8, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(217, 16, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(218, 17, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(219, 18, NULL, 8, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(220, 19, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(221, 20, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(222, 21, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(223, 22, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(224, 23, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(225, 24, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(226, 25, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(227, 26, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(228, 27, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(229, 28, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(230, 29, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(231, 30, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(232, 31, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(233, 32, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(234, 33, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(235, 34, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(236, 35, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(237, 37, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(238, 38, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(239, 39, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(240, 40, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(241, 41, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(242, 42, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(243, 43, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(244, 44, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(245, 45, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(246, 46, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(247, 47, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(248, 48, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(249, 49, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(250, 50, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(251, 51, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(252, 52, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(253, 53, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(254, 54, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(255, 55, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(256, 56, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(257, 57, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(258, 58, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(259, 59, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(260, 61, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(261, 62, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(262, 63, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(263, 64, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(264, 65, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(265, 66, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(266, 67, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(267, 68, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(268, 69, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(269, 70, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(270, 71, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(271, 72, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(272, 73, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(273, 74, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(274, 75, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(275, 76, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(276, 77, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(277, 78, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(278, 79, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(279, 80, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(280, 81, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(281, 82, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(282, 83, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(283, 84, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(284, 85, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(285, 86, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(286, 87, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(287, 88, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(288, 89, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(289, 90, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(290, 91, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(291, 92, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(292, 93, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(293, 94, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(294, 95, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(295, 96, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(296, 97, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(297, 98, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(298, 99, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(299, 100, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(300, 101, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(301, 102, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(302, 103, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(303, 104, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(304, 105, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(305, 106, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(306, 107, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(307, 108, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(308, 109, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(309, 110, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(310, 111, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(311, 112, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(312, 113, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(313, 114, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(314, 115, NULL, 8, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(315, 116, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(316, 117, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(317, 118, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(318, 119, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(319, 120, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(320, 121, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(321, 122, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(322, 123, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(323, 124, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(324, 125, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(325, 126, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(326, 127, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(327, 128, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(328, 129, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(329, 130, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(330, 131, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(331, 132, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(332, 133, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(333, 134, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(334, 135, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(335, 136, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(336, 137, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(337, 138, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(338, 139, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(339, 140, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(340, 141, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(341, 142, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(342, 143, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(343, 144, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(344, 145, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(345, 146, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(346, 147, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(347, 148, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(348, 149, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(349, 150, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(350, 151, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(351, 152, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(352, 153, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(353, 154, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(354, 155, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(355, 156, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(356, 157, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(357, 158, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(358, 159, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(359, 160, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(360, 161, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(361, 162, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(362, 163, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(363, 164, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(364, 165, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(365, 166, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(366, 167, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(367, 168, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(368, 169, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(369, 170, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(370, 171, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(371, 172, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(372, 173, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(373, 174, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(374, 175, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(375, 176, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(376, 177, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(377, 178, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(378, 179, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(379, 180, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(380, 181, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(381, 182, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(382, 183, NULL, 7, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(383, 184, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(384, 185, NULL, 13, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(385, 186, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(386, 187, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(387, 188, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(388, 189, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(389, 191, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(390, 192, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(391, 193, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(392, 196, NULL, 8, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(393, 246, NULL, 8, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(394, 259, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(395, 260, NULL, 12, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(396, 261, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(397, 262, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(398, 263, NULL, 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(399, 264, NULL, 14, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(400, 265, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(401, 266, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(402, 267, NULL, 11, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `country_area` VALUES(403, 269, NULL, 9, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `country_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `country_i18n` VALUES(1, 'de_DE', 'Afghanistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(1, 'en_US', 'Afghanistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(1, 'es_ES', 'Afganistán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(1, 'fr_FR', 'Afghanistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(2, 'de_DE', 'Südafrika', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(2, 'en_US', 'South Africa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(2, 'es_ES', 'Sudáfrica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(2, 'fr_FR', 'Afrique du Sud', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(3, 'de_DE', 'Albanien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(3, 'en_US', 'Albania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(3, 'es_ES', 'Albania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(3, 'fr_FR', 'Albanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(4, 'de_DE', 'Algerien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(4, 'en_US', 'Algeria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(4, 'es_ES', 'Argelia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(4, 'fr_FR', 'Algérie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(5, 'de_DE', 'Deutschland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(5, 'en_US', 'Germany', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(5, 'es_ES', 'Alemania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(5, 'fr_FR', 'Allemagne', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(6, 'de_DE', 'Andorra', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(6, 'en_US', 'Andorra', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(6, 'es_ES', 'Andorra', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(6, 'fr_FR', 'Andorre', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(7, 'de_DE', 'Angola', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(7, 'en_US', 'Angola', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(7, 'es_ES', 'Angola', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(7, 'fr_FR', 'Angola', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(8, 'de_DE', 'Antigua und Barbuda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(8, 'en_US', 'Antigua and Barbuda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(8, 'es_ES', 'Antigua y Barbuda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(8, 'fr_FR', 'Antigua-et-Barbuda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(9, 'de_DE', 'Saudi-Arabien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(9, 'en_US', 'Saudi Arabia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(9, 'es_ES', 'Arabia Saudita', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(9, 'fr_FR', 'Arabie saoudite', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(10, 'de_DE', 'Argentinien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(10, 'en_US', 'Argentina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(10, 'es_ES', 'Argentina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(10, 'fr_FR', 'Argentine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(11, 'de_DE', 'Armenien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(11, 'en_US', 'Armenia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(11, 'es_ES', 'Armenia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(11, 'fr_FR', 'Arménie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(12, 'de_DE', 'Australien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(12, 'en_US', 'Australia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(12, 'es_ES', 'Australia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(12, 'fr_FR', 'Australie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(13, 'de_DE', 'Österreich', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(13, 'en_US', 'Austria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(13, 'es_ES', 'Austria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(13, 'fr_FR', 'Autriche', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(14, 'de_DE', 'Aserbaidschan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(14, 'en_US', 'Azerbaijan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(14, 'es_ES', 'Azerbaiyán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(14, 'fr_FR', 'Azerbaïdjan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(15, 'de_DE', 'Bahamas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(15, 'en_US', 'Bahamas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(15, 'es_ES', 'Bahamas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(15, 'fr_FR', 'Bahamas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(16, 'de_DE', 'Bahrein', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(16, 'en_US', 'Bahrain', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(16, 'es_ES', 'Bahrein', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(16, 'fr_FR', 'Bahreïn', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(17, 'de_DE', 'Bangladesch', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(17, 'en_US', 'Bangladesh', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(17, 'es_ES', 'Bangladesh', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(17, 'fr_FR', 'Bangladesh', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(18, 'de_DE', 'Barbados', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(18, 'en_US', 'Barbados', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(18, 'es_ES', 'Barbados', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(18, 'fr_FR', 'Barbade', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(19, 'de_DE', 'Weißrussland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(19, 'en_US', 'Belarus', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(19, 'es_ES', 'Belarús', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(19, 'fr_FR', 'Belarus', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(20, 'de_DE', 'Belgien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(20, 'en_US', 'Belgium', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(20, 'es_ES', 'Bélgica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(20, 'fr_FR', 'Belgique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(21, 'de_DE', 'Belize', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(21, 'en_US', 'Belize', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(21, 'es_ES', 'Belice', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(21, 'fr_FR', 'Belize', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(22, 'de_DE', 'Bénin', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(22, 'en_US', 'Benin', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(22, 'es_ES', 'Benin', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(22, 'fr_FR', 'Bénin', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(23, 'de_DE', 'Bhutan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(23, 'en_US', 'Bhutan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(23, 'es_ES', 'Bhután', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(23, 'fr_FR', 'Bhoutan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(24, 'de_DE', 'Weißrussland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(24, 'en_US', 'Bielorussia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(24, 'es_ES', 'Bielorusia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(24, 'fr_FR', 'Biélorussie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(25, 'de_DE', 'Birma', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(25, 'en_US', 'Burma', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(25, 'es_ES', 'Birmania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(25, 'fr_FR', 'Birmanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(26, 'de_DE', 'Bolivien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(26, 'en_US', 'Bolivia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(26, 'es_ES', 'Bolivia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(26, 'fr_FR', 'Bolivie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(27, 'de_DE', 'Bosnien Herzegovina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(27, 'en_US', 'Bosnia and Herzegovina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(27, 'es_ES', 'Bosnia y Herzegovina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(27, 'fr_FR', 'Bosnie-Herzégovine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(28, 'de_DE', 'Botswana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(28, 'en_US', 'Botswana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(28, 'es_ES', 'Botswana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(28, 'fr_FR', 'Botswana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(29, 'de_DE', 'Brasilien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(29, 'en_US', 'Brazil', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(29, 'es_ES', 'Brasil', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(29, 'fr_FR', 'Brésil', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(30, 'de_DE', 'Brunei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(30, 'en_US', 'Brunei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(30, 'es_ES', 'Brunei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(30, 'fr_FR', 'Brunei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(31, 'de_DE', 'Bulgarien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(31, 'en_US', 'Bulgaria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(31, 'es_ES', 'Bulgaria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(31, 'fr_FR', 'Bulgarie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(32, 'de_DE', 'Burkina Faso', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(32, 'en_US', 'Burkina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(32, 'es_ES', 'Burkina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(32, 'fr_FR', 'Burkina', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(33, 'de_DE', 'Burundi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(33, 'en_US', 'Burundi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(33, 'es_ES', 'Burundi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(33, 'fr_FR', 'Burundi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(34, 'de_DE', 'Kambodscha', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(34, 'en_US', 'Cambodia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(34, 'es_ES', 'Camboya', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(34, 'fr_FR', 'Cambodge', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(35, 'de_DE', 'Kamerun', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(35, 'en_US', 'Cameroon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(35, 'es_ES', 'Camerún', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(35, 'fr_FR', 'Cameroun', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(37, 'de_DE', 'Kap Verde', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(37, 'en_US', 'Cape Verde', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(37, 'es_ES', 'Cabo Verde', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(37, 'fr_FR', 'Cap-Vert', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(38, 'de_DE', 'Chile', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(38, 'en_US', 'Chile', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(38, 'es_ES', 'Chile', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(38, 'fr_FR', 'Chili', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(39, 'de_DE', 'China', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(39, 'en_US', 'China', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(39, 'es_ES', 'China', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(39, 'fr_FR', 'Chine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(40, 'de_DE', 'Zypern', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(40, 'en_US', 'Cyprus', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(40, 'es_ES', 'Chipre', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(40, 'fr_FR', 'Chypre', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(41, 'de_DE', 'Kolumbien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(41, 'en_US', 'Colombia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(41, 'es_ES', 'Colombia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(41, 'fr_FR', 'Colombie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(42, 'de_DE', 'Komoren', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(42, 'en_US', 'Comoros', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(42, 'es_ES', 'Comoras', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(42, 'fr_FR', 'Comores', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(43, 'de_DE', 'Kongo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(43, 'en_US', 'Congo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(43, 'es_ES', 'Congo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(43, 'fr_FR', 'Congo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(44, 'de_DE', 'Cookinseln', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(44, 'en_US', 'Cook Islands', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(44, 'es_ES', 'Cook', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(44, 'fr_FR', 'Cook', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(45, 'de_DE', 'Nordkorea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(45, 'en_US', 'North Korea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(45, 'es_ES', 'Corea del Norte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(45, 'fr_FR', 'Corée du Nord', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(46, 'de_DE', 'Südkorea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(46, 'en_US', 'South Korea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(46, 'es_ES', 'Corea del Sur', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(46, 'fr_FR', 'Corée du Sud', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(47, 'de_DE', 'Costa Rica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(47, 'en_US', 'Costa Rica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(47, 'es_ES', 'Costa Rica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(47, 'fr_FR', 'Costa Rica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(48, 'de_DE', 'Elfenbeinküste', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(48, 'en_US', 'Ivory Coast', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(48, 'es_ES', 'Costa de Marfil', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(48, 'fr_FR', 'Côte dIvoire', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(49, 'de_DE', 'Kroatien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(49, 'en_US', 'Croatia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(49, 'es_ES', 'Croacia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(49, 'fr_FR', 'Croatie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(50, 'de_DE', 'Kuba', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(50, 'en_US', 'Cuba', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(50, 'es_ES', 'Cuba', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(50, 'fr_FR', 'Cuba', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(51, 'de_DE', 'Dänemark', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(51, 'en_US', 'Denmark', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(51, 'es_ES', 'Dinamarca', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(51, 'fr_FR', 'Danemark', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(52, 'de_DE', 'Djibuti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(52, 'en_US', 'Djibouti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(52, 'es_ES', 'Djibouti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(52, 'fr_FR', 'Djibouti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(53, 'de_DE', 'Dominikanische Republik', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(53, 'en_US', 'Dominica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(53, 'es_ES', 'Dominica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(53, 'fr_FR', 'Dominique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(54, 'de_DE', 'Ägypten', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(54, 'en_US', 'Egypt', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(54, 'es_ES', 'Egipto', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(54, 'fr_FR', 'Égypte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(55, 'de_DE', 'Vereinigte Arabische Emirate', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(55, 'en_US', 'United Arab Emirates', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(55, 'es_ES', 'Emiratos Árabes Unidos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(55, 'fr_FR', 'Émirats arabes unis', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(56, 'de_DE', 'Ecuador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(56, 'en_US', 'Ecuador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(56, 'es_ES', 'Ecuador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(56, 'fr_FR', 'Équateur', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(57, 'de_DE', 'Eritrea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(57, 'en_US', 'Eritrea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(57, 'es_ES', 'Eritrea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(57, 'fr_FR', 'Érythrée', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(58, 'de_DE', 'Spanien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(58, 'en_US', 'Spain', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(58, 'es_ES', 'España', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(58, 'fr_FR', 'Espagne', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(59, 'de_DE', 'Estland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(59, 'en_US', 'Estonia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(59, 'es_ES', 'Estonia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(59, 'fr_FR', 'Estonie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(61, 'de_DE', 'Äthiopien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(61, 'en_US', 'Ethiopia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(61, 'es_ES', 'Etiopía', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(61, 'fr_FR', 'Éthiopie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(62, 'de_DE', 'Fiji', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(62, 'en_US', 'Fiji', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(62, 'es_ES', 'Fiji', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(62, 'fr_FR', 'Fidji', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(63, 'de_DE', 'Finnland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(63, 'en_US', 'Finland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(63, 'es_ES', 'Finlandia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(63, 'fr_FR', 'Finlande', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(64, 'de_DE', 'Frankreich', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(64, 'en_US', 'France metropolitan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(64, 'es_ES', 'Francia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(64, 'fr_FR', 'France métropolitaine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(65, 'de_DE', 'Gabun', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(65, 'en_US', 'Gabon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(65, 'es_ES', 'Gabón', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(65, 'fr_FR', 'Gabon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(66, 'de_DE', 'Gambie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(66, 'en_US', 'Gambia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(66, 'es_ES', 'Gambia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(66, 'fr_FR', 'Gambie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(67, 'de_DE', 'Georgien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(67, 'en_US', 'Georgia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(67, 'es_ES', 'Georgia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(67, 'fr_FR', 'Géorgie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(68, 'de_DE', 'Ghana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(68, 'en_US', 'Ghana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(68, 'es_ES', 'Ghana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(68, 'fr_FR', 'Ghana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(69, 'de_DE', 'Griechenland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(69, 'en_US', 'Greece', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(69, 'es_ES', 'Grecia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(69, 'fr_FR', 'Grèce', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(70, 'de_DE', 'Grenada', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(70, 'en_US', 'Grenada', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(70, 'es_ES', 'Granada', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(70, 'fr_FR', 'Grenade', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(71, 'de_DE', 'Guatemala', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(71, 'en_US', 'Guatemala', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(71, 'es_ES', 'Guatemala', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(71, 'fr_FR', 'Guatemala', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(72, 'de_DE', 'Guinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(72, 'en_US', 'Guinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(72, 'es_ES', 'Guinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(72, 'fr_FR', 'Guinée', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(73, 'de_DE', 'Guinea-Bissau', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(73, 'en_US', 'Guinea-Bissau', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(73, 'es_ES', 'Guinea-Bissau', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(73, 'fr_FR', 'Guinée-Bissao', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(74, 'de_DE', 'Äquatorialguinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(74, 'en_US', 'Equatorial Guinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(74, 'es_ES', 'Guinea Ecuatorial', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(74, 'fr_FR', 'Guinée équatoriale', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(75, 'de_DE', 'Guyana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(75, 'en_US', 'Guyana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(75, 'es_ES', 'Guyana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(75, 'fr_FR', 'Guyane', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(76, 'de_DE', 'Haiti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(76, 'en_US', 'Haiti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(76, 'es_ES', 'Haití', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(76, 'fr_FR', 'Haïti', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(77, 'de_DE', 'Honduras', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(77, 'en_US', 'Honduras', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(77, 'es_ES', 'Honduras', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(77, 'fr_FR', 'Honduras', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(78, 'de_DE', 'Ungarn', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(78, 'en_US', 'Hungary', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(78, 'es_ES', 'Hungría', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(78, 'fr_FR', 'Hongrie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(79, 'de_DE', 'Indien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(79, 'en_US', 'India', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(79, 'es_ES', 'India', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(79, 'fr_FR', 'Inde', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(80, 'de_DE', 'Indonesien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(80, 'en_US', 'Indonesia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(80, 'es_ES', 'Indonesia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(80, 'fr_FR', 'Indonésie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(81, 'de_DE', 'Iran', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(81, 'en_US', 'Iran', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(81, 'es_ES', 'Irán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(81, 'fr_FR', 'Iran', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(82, 'de_DE', 'Irak', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(82, 'en_US', 'Iraq', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(82, 'es_ES', 'Iraq', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(82, 'fr_FR', 'Iraq', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(83, 'de_DE', 'Irland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(83, 'en_US', 'Ireland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(83, 'es_ES', 'Irlanda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(83, 'fr_FR', 'Irlande', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(84, 'de_DE', 'Island', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(84, 'en_US', 'Iceland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(84, 'es_ES', 'Islandia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(84, 'fr_FR', 'Islande', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(85, 'de_DE', 'Israel', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(85, 'en_US', 'Israel', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(85, 'es_ES', 'Israel', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(85, 'fr_FR', 'Israël', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(86, 'de_DE', 'Italien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(86, 'en_US', 'Italy', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(86, 'es_ES', 'Italia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(86, 'fr_FR', 'Italie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(87, 'de_DE', 'Jamaika', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(87, 'en_US', 'Jamaica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(87, 'es_ES', 'Jamaica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(87, 'fr_FR', 'Jamaïque', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(88, 'de_DE', 'Japan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(88, 'en_US', 'Japan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(88, 'es_ES', 'Japón', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(88, 'fr_FR', 'Japon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(89, 'de_DE', 'Jordanien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(89, 'en_US', 'Jordan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(89, 'es_ES', 'Jordania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(89, 'fr_FR', 'Jordanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(90, 'de_DE', 'Kasachstan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(90, 'en_US', 'Kazakhstan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(90, 'es_ES', 'Kazajstán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(90, 'fr_FR', 'Kazakhstan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(91, 'de_DE', 'Kenia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(91, 'en_US', 'Kenya', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(91, 'es_ES', 'Kenia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(91, 'fr_FR', 'Kenya', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(92, 'de_DE', 'Kirgisistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(92, 'en_US', 'Kyrgyzstan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(92, 'es_ES', 'Kirguistán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(92, 'fr_FR', 'Kirghizistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(93, 'de_DE', 'Kiribati', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(93, 'en_US', 'Kiribati', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(93, 'es_ES', 'Kiribati', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(93, 'fr_FR', 'Kiribati', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(94, 'de_DE', 'Kuwait', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(94, 'en_US', 'Kuwait', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(94, 'es_ES', 'Kuwait', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(94, 'fr_FR', 'Koweït', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(95, 'de_DE', 'Laos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(95, 'en_US', 'Laos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(95, 'es_ES', 'Laos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(95, 'fr_FR', 'Laos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(96, 'de_DE', 'Lesotho', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(96, 'en_US', 'Lesotho', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(96, 'es_ES', 'Lesoto', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(96, 'fr_FR', 'Lesotho', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(97, 'de_DE', 'Lettland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(97, 'en_US', 'Latvia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(97, 'es_ES', 'Letonia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(97, 'fr_FR', 'Lettonie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(98, 'de_DE', 'Libanon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(98, 'en_US', 'Lebanon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(98, 'es_ES', 'Líbano', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(98, 'fr_FR', 'Liban', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(99, 'de_DE', 'Liberia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(99, 'en_US', 'Liberia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(99, 'es_ES', 'Liberia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(99, 'fr_FR', 'Liberia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(100, 'de_DE', 'Libyen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(100, 'en_US', 'Libya', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(100, 'es_ES', 'Libia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(100, 'fr_FR', 'Libye', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(101, 'de_DE', 'Liechtenstein', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(101, 'en_US', 'Liechtenstein', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(101, 'es_ES', 'Liechtenstein', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(101, 'fr_FR', 'Liechtenstein', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(102, 'de_DE', 'Litauen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(102, 'en_US', 'Lithuania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(102, 'es_ES', 'Lituania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(102, 'fr_FR', 'Lituanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(103, 'de_DE', 'Luxemburg', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(103, 'en_US', 'Luxembourg', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(103, 'es_ES', 'Luxemburgo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(103, 'fr_FR', 'Luxembourg', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(104, 'de_DE', 'Mazedonien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(104, 'en_US', 'Macedonia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(104, 'es_ES', 'Macedonia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(104, 'fr_FR', 'Macédoine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(105, 'de_DE', 'Madagaskar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(105, 'en_US', 'Madagascar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(105, 'es_ES', 'Madagascar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(105, 'fr_FR', 'Madagascar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(106, 'de_DE', 'Malaysien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(106, 'en_US', 'Malaysia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(106, 'es_ES', 'Malasia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(106, 'fr_FR', 'Malaisie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(107, 'de_DE', 'Malawi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(107, 'en_US', 'Malawi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(107, 'es_ES', 'Malawi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(107, 'fr_FR', 'Malawi', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(108, 'de_DE', 'Malediven', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(108, 'en_US', 'Maldives', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(108, 'es_ES', 'Maldivas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(108, 'fr_FR', 'Maldives', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(109, 'de_DE', 'Mali', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(109, 'en_US', 'Mali', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(109, 'es_ES', 'Malí', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(109, 'fr_FR', 'Mali', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(110, 'de_DE', 'Malta', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(110, 'en_US', 'Malta', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(110, 'es_ES', 'Malta', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(110, 'fr_FR', 'Malte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(111, 'de_DE', 'Marokko', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(111, 'en_US', 'Morocco', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(111, 'es_ES', 'Marruecos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(111, 'fr_FR', 'Maroc', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(112, 'de_DE', 'Marshallinseln', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(112, 'en_US', 'Marshall Islands', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(112, 'es_ES', 'Marshall', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(112, 'fr_FR', 'Marshall', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(113, 'de_DE', 'Mauritius', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(113, 'en_US', 'Mauritius', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(113, 'es_ES', 'Mauricio', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(113, 'fr_FR', 'Maurice', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(114, 'de_DE', 'Mauretanien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(114, 'en_US', 'Mauritania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(114, 'es_ES', 'Mauritania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(114, 'fr_FR', 'Mauritanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(115, 'de_DE', 'Mexiko', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(115, 'en_US', 'Mexico', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(115, 'es_ES', 'Méjico', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(115, 'fr_FR', 'Mexique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(116, 'de_DE', 'Mikronesien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(116, 'en_US', 'Micronesia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(116, 'es_ES', 'Micronesia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(116, 'fr_FR', 'Micronésie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(117, 'de_DE', 'Moldau', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(117, 'en_US', 'Moldova', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(117, 'es_ES', 'Moldova', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(117, 'fr_FR', 'Moldavie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(118, 'de_DE', 'Monaco', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(118, 'en_US', 'Monaco', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(118, 'es_ES', 'Mónaco', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(118, 'fr_FR', 'Principauté de Monaco', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(119, 'de_DE', 'Mongolei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(119, 'en_US', 'Mongolia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(119, 'es_ES', 'Mongolia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(119, 'fr_FR', 'Mongolie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(120, 'de_DE', 'Mosambik', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(120, 'en_US', 'Mozambique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(120, 'es_ES', 'Mozambique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(120, 'fr_FR', 'Mozambique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(121, 'de_DE', 'Namibia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(121, 'en_US', 'Namibia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(121, 'es_ES', 'Namibia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(121, 'fr_FR', 'Namibie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(122, 'de_DE', 'Nauru', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(122, 'en_US', 'Nauru', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(122, 'es_ES', 'Nauru', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(122, 'fr_FR', 'Nauru', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(123, 'de_DE', 'Nepal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(123, 'en_US', 'Nepal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(123, 'es_ES', 'Nepal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(123, 'fr_FR', 'Népal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(124, 'de_DE', 'Nicaragua', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(124, 'en_US', 'Nicaragua', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(124, 'es_ES', 'Nicaragua', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(124, 'fr_FR', 'Nicaragua', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(125, 'de_DE', 'Niger', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(125, 'en_US', 'Niger', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(125, 'es_ES', 'Níger', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(125, 'fr_FR', 'Niger', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(126, 'de_DE', 'Nigeria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(126, 'en_US', 'Nigeria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(126, 'es_ES', 'Nigeria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(126, 'fr_FR', 'Nigeria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(127, 'de_DE', 'Niue', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(127, 'en_US', 'Niue', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(127, 'es_ES', 'Niue', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(127, 'fr_FR', 'Niue', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(128, 'de_DE', 'Norwegen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(128, 'en_US', 'Norway', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(128, 'es_ES', 'Noruega', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(128, 'fr_FR', 'Norvège', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(129, 'de_DE', 'Neuseeland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(129, 'en_US', 'New Zealand', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(129, 'es_ES', 'Nueva Zelandia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(129, 'fr_FR', 'Nouvelle-Zélande', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(130, 'de_DE', 'Oman', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(130, 'en_US', 'Oman', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(130, 'es_ES', 'Omán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(130, 'fr_FR', 'Oman', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(131, 'de_DE', 'Uganda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(131, 'en_US', 'Uganda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(131, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(131, 'fr_FR', 'Ouganda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(132, 'de_DE', 'Usbekistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(132, 'en_US', 'Uzbekistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(132, 'es_ES', 'Uzbekistán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(132, 'fr_FR', 'Ouzbékistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(133, 'de_DE', 'Pakistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(133, 'en_US', 'Pakistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(133, 'es_ES', 'Pakistán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(133, 'fr_FR', 'Pakistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(134, 'de_DE', 'Panama', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(134, 'en_US', 'Panama', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(134, 'es_ES', 'Panamá', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(134, 'fr_FR', 'Panama', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(135, 'de_DE', 'Papua-Neuguinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(135, 'en_US', 'Papua Nueva Guinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(135, 'es_ES', 'Papua Nueva Guinea', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(135, 'fr_FR', 'Papouasie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(136, 'de_DE', 'Paraguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(136, 'en_US', 'Paraguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(136, 'es_ES', 'Paraguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(136, 'fr_FR', 'Paraguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(137, 'de_DE', 'Niederlande', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(137, 'en_US', 'Netherlands', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(137, 'es_ES', 'Países Bajos', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(137, 'fr_FR', 'Pays-Bas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(138, 'de_DE', 'Peru', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(138, 'en_US', 'Peru', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(138, 'es_ES', 'Perú', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(138, 'fr_FR', 'Pérou', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(139, 'de_DE', 'Philippinen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(139, 'en_US', 'Philippines', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(139, 'es_ES', 'Filipinas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(139, 'fr_FR', 'Philippines', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(140, 'de_DE', 'Polen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(140, 'en_US', 'Poland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(140, 'es_ES', 'Polonia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(140, 'fr_FR', 'Pologne', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(141, 'de_DE', 'Portugal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(141, 'en_US', 'Portugal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(141, 'es_ES', 'Portugal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(141, 'fr_FR', 'Portugal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(142, 'de_DE', 'Katar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(142, 'en_US', 'Qatar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(142, 'es_ES', 'Qatar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(142, 'fr_FR', 'Qatar', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(143, 'de_DE', 'Zentralafrikanische Republik', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(143, 'en_US', 'Central African Republic', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(143, 'es_ES', 'República Centroafricana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(143, 'fr_FR', 'République centrafricaine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(144, 'de_DE', 'Dominikanische Republik', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(144, 'en_US', 'Dominican Republic', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(144, 'es_ES', 'República Dominicana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(144, 'fr_FR', 'République dominicaine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(145, 'de_DE', 'Tschechische Republik', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(145, 'en_US', 'Czech Republic', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(145, 'es_ES', 'República Checa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(145, 'fr_FR', 'République tchèque', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(146, 'de_DE', 'Rumänien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(146, 'en_US', 'Romania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(146, 'es_ES', 'Rumania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(146, 'fr_FR', 'Roumanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(147, 'de_DE', 'Vereinigtes Königreich', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(147, 'en_US', 'United Kingdom', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(147, 'es_ES', 'Reino Unido', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(147, 'fr_FR', 'Royaume-Uni', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(148, 'de_DE', 'Russland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(148, 'en_US', 'Russia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(148, 'es_ES', 'Rusia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(148, 'fr_FR', 'Russie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(149, 'de_DE', 'Ruanda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(149, 'en_US', 'Rwanda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(149, 'es_ES', 'Ruanda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(149, 'fr_FR', 'Rwanda', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(150, 'de_DE', 'St. Kitts und Nevis', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(150, 'en_US', 'Saint Kitts and Nevis', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(150, 'es_ES', 'San Cristóbal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(150, 'fr_FR', 'Saint-Christophe-et-Niévès', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(151, 'de_DE', 'St. Lucia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(151, 'en_US', 'Saint Lucia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(151, 'es_ES', 'Santa Lucía', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(151, 'fr_FR', 'Sainte-Lucie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(152, 'de_DE', 'Saint-Marin', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(152, 'en_US', 'San Marino', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(152, 'es_ES', 'San Marino', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(152, 'fr_FR', 'Saint-Marin', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(153, 'de_DE', 'St. Vincent und die Grenadinen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(153, 'en_US', 'Saint Vincent and the Grenadines', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(153, 'es_ES', 'San Vicente y las Granadinas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(153, 'fr_FR', 'Saint-Vincent-et-les Grenadines', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(154, 'de_DE', 'Salomon-Inseln', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(154, 'en_US', 'Solomon Islands', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(154, 'es_ES', 'Salomón', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(154, 'fr_FR', 'Salomon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(155, 'de_DE', 'El Salvador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(155, 'en_US', 'El Salvador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(155, 'es_ES', 'El Salvador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(155, 'fr_FR', 'Salvador', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(156, 'de_DE', 'West-Samoa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(156, 'en_US', 'Western Samoa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(156, 'es_ES', 'Samoa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(156, 'fr_FR', 'Samoa occidentales', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(157, 'de_DE', 'São Tomé und Príncipe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(157, 'en_US', 'Sao Tome and Principe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(157, 'es_ES', 'Santo Tomé y Príncipe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(157, 'fr_FR', 'Sao Tomé-et-Principe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(158, 'de_DE', 'Senegal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(158, 'en_US', 'Senegal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(158, 'es_ES', 'Senegal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(158, 'fr_FR', 'Sénégal', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(159, 'de_DE', 'Seychellen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(159, 'en_US', 'Seychelles', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(159, 'es_ES', 'Seychelles', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(159, 'fr_FR', 'Seychelles', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(160, 'de_DE', 'Sierra Leone', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(160, 'en_US', 'Sierra Leone', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(160, 'es_ES', 'Sierra Leona', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(160, 'fr_FR', 'Sierra Léone', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(161, 'de_DE', 'Singapur', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(161, 'en_US', 'Singapore', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(161, 'es_ES', 'Singapur', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(161, 'fr_FR', 'Singapour', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(162, 'de_DE', 'Slowakei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(162, 'en_US', 'Slovakia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(162, 'es_ES', 'Eslovaquia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(162, 'fr_FR', 'Slovaquie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(163, 'de_DE', 'Slowenien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(163, 'en_US', 'Slovenia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(163, 'es_ES', 'Eslovenia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(163, 'fr_FR', 'Slovénie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(164, 'de_DE', 'Somalia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(164, 'en_US', 'Somalia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(164, 'es_ES', 'Somalia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(164, 'fr_FR', 'Somalie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(165, 'de_DE', 'Sudan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(165, 'en_US', 'Sudan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(165, 'es_ES', 'Sudán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(165, 'fr_FR', 'Soudan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(166, 'de_DE', 'Sri Lanka', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(166, 'en_US', 'Sri Lanka', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(166, 'es_ES', 'Sri Lanka', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(166, 'fr_FR', 'Sri Lanka', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(167, 'de_DE', 'Schweden', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(167, 'en_US', 'Sweden', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(167, 'es_ES', 'Suecia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(167, 'fr_FR', 'Suède', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(168, 'de_DE', 'Schweiz', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(168, 'en_US', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(168, 'es_ES', 'Suiza', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(168, 'fr_FR', 'Suisse', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(169, 'de_DE', 'Suriname', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(169, 'en_US', 'Suriname', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(169, 'es_ES', 'Suriname', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(169, 'fr_FR', 'Suriname', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(170, 'de_DE', 'Swaziland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(170, 'en_US', 'Swaziland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(170, 'es_ES', 'Swazilandia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(170, 'fr_FR', 'Swaziland', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(171, 'de_DE', 'Syrien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(171, 'en_US', 'Syria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(171, 'es_ES', 'Siria', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(171, 'fr_FR', 'Syrie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(172, 'de_DE', 'Tadschikistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(172, 'en_US', 'Tajikistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(172, 'es_ES', 'Tayikistán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(172, 'fr_FR', 'Tadjikistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(173, 'de_DE', 'Tansania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(173, 'en_US', 'Tanzania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(173, 'es_ES', 'Tanzanía', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(173, 'fr_FR', 'Tanzanie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(174, 'de_DE', 'Tschad', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(174, 'en_US', 'Chad', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(174, 'es_ES', 'Chad', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(174, 'fr_FR', 'Tchad', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(175, 'de_DE', 'Thailand', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(175, 'en_US', 'Thailand', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(175, 'es_ES', 'Tailandia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(175, 'fr_FR', 'Thaïlande', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(176, 'de_DE', 'Togo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(176, 'en_US', 'Togo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(176, 'es_ES', 'Togo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(176, 'fr_FR', 'Togo', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(177, 'de_DE', 'Tonga', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(177, 'en_US', 'Tonga', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(177, 'es_ES', 'Tonga', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(177, 'fr_FR', 'Îles Tonga', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(178, 'de_DE', 'Trinidad und Tobago', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(178, 'en_US', 'Trinidad and Tobago', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(178, 'es_ES', 'Trinidad y Tabago', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(178, 'fr_FR', 'Trinité-et-Tobago', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(179, 'de_DE', 'Tunesien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(179, 'en_US', 'Tunisia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(179, 'es_ES', 'Túnez', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(179, 'fr_FR', 'Tunisie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(180, 'de_DE', 'Turkménistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(180, 'en_US', 'Turkmenistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(180, 'es_ES', 'Turkmenistán', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(180, 'fr_FR', 'Turkménistan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(181, 'de_DE', 'Türkei', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(181, 'en_US', 'Turkey', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(181, 'es_ES', 'Turquía', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(181, 'fr_FR', 'Turquie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(182, 'de_DE', 'Tuvalu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(182, 'en_US', 'Tuvalu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(182, 'es_ES', 'Tuvalu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(182, 'fr_FR', 'Tuvalu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(183, 'de_DE', 'Ukraine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(183, 'en_US', 'Ukraine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(183, 'es_ES', 'Ucrania', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(183, 'fr_FR', 'Ukraine', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(184, 'de_DE', 'Uruguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(184, 'en_US', 'Uruguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(184, 'es_ES', 'Uruguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(184, 'fr_FR', 'Uruguay', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(185, 'de_DE', 'der Vatikan', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(185, 'en_US', 'The Vatican', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(185, 'es_ES', 'El Vatican', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(185, 'fr_FR', 'Vatican', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(186, 'de_DE', 'Vanuatu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(186, 'en_US', 'Vanuatu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(186, 'es_ES', 'Vanuatu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(186, 'fr_FR', 'Vanuatu', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(187, 'de_DE', 'Venezuela', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(187, 'en_US', 'Venezuela', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(187, 'es_ES', 'Venezuela', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(187, 'fr_FR', 'Vénézuela', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(188, 'de_DE', 'Vietnam', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(188, 'en_US', 'Vietnam', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(188, 'es_ES', 'Viet Nam', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(188, 'fr_FR', 'Viêt Nam', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(189, 'de_DE', 'Jemen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(189, 'en_US', 'Yemen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(189, 'es_ES', 'Yemen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(189, 'fr_FR', 'Yémen', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(191, 'de_DE', 'Zaire', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(191, 'en_US', 'Zaire', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(191, 'es_ES', 'Zaire', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(191, 'fr_FR', 'Zaïre', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(192, 'de_DE', 'Sambia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(192, 'en_US', 'Zambia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(192, 'es_ES', 'Zambia', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(192, 'fr_FR', 'Zambie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(193, 'de_DE', 'Zimbabwe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(193, 'en_US', 'Zimbabwe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(193, 'es_ES', 'Zimbabue', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(193, 'fr_FR', 'Zimbabwe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(196, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(196, 'en_US', 'USA', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(196, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(196, 'fr_FR', 'États-Unis', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(246, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(246, 'en_US', 'Canada', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(246, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(246, 'fr_FR', 'Canada', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(259, 'de_DE', 'Guadeloupe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(259, 'en_US', 'Guadeloupe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(259, 'es_ES', 'Guadalupe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(259, 'fr_FR', 'Guadeloupe', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(260, 'de_DE', 'Französisch-Guayana', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(260, 'en_US', 'Guyane Française', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(260, 'es_ES', 'Guayana Francesa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(260, 'fr_FR', 'Guyane Française', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(261, 'de_DE', 'Martinique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(261, 'en_US', 'Martinique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(261, 'es_ES', 'Martinica', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(261, 'fr_FR', 'Martinique', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(262, 'de_DE', 'Mayotte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(262, 'en_US', 'Mayotte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(262, 'es_ES', 'Mayotte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(262, 'fr_FR', 'Mayotte', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(263, 'de_DE', 'La Réunion', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(263, 'en_US', 'Réunion(La)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(263, 'es_ES', 'Réunion(la)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(263, 'fr_FR', 'Réunion(La)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(264, 'de_DE', 'Saint-Pierre und Miquelon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(264, 'en_US', 'St Pierre et Miquelon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(264, 'es_ES', 'San Pedro y Miquelón', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(264, 'fr_FR', 'St Pierre et Miquelon', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(265, 'de_DE', 'Neu-Kaledonien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(265, 'en_US', 'Nouvelle-Calédonie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(265, 'es_ES', 'Nouvelle-Calédonie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(265, 'fr_FR', 'Nouvelle-Calédonie', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(266, 'de_DE', 'Französisch-Polynesien', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(266, 'en_US', 'Polynésie française', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(266, 'es_ES', 'Polinesia Francesa', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(266, 'fr_FR', 'Polynésie française', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(267, 'de_DE', 'Wallis und Futuna', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(267, 'en_US', 'Wallis-et-Futuna', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(267, 'es_ES', 'Wallis-et-Futuna', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(267, 'fr_FR', 'Wallis-et-Futuna', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(269, 'de_DE', 'Hong Kong', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(269, 'en_US', 'Hong Kong', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(269, 'es_ES', 'Hong Kong', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(269, 'fr_FR', 'Hong Kong', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(270, 'de_DE', 'Saint-Barthélemy', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(270, 'en_US', 'Saint Barthélemy', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(270, 'es_ES', 'San Bartolomé', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(270, 'fr_FR', 'Saint-Barthélemy', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(271, 'de_DE', 'Saint-Martin (franz. Teil)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(271, 'en_US', 'Saint Martin (French part)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(271, 'es_ES', 'San Martín (parte francesa)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(271, 'fr_FR', 'Saint-Martin (Antilles françaises)', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(272, 'de_DE', 'Französische Süd- und Antarktisgebiete', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(272, 'en_US', 'French Southern Territories', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(272, 'es_ES', 'Tierras Australes y Antárticas Francesas', NULL, NULL, NULL);
INSERT INTO `country_i18n` VALUES(272, 'fr_FR', 'Terres australes et antarctiques françaises', NULL, NULL, NULL);

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `type` varchar(255) NOT NULL,
  `serialized_effects` longtext NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `max_usage` int(11) NOT NULL,
  `is_cumulative` tinyint(1) NOT NULL,
  `is_removing_postage` tinyint(1) NOT NULL,
  `is_available_on_special_offers` tinyint(1) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `serialized_conditions` text NOT NULL,
  `per_customer_usage_count` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `coupon_country` (
  `coupon_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `coupon_customer_count` (
  `coupon_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `coupon_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `coupon_module` (
  `coupon_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `coupon_version` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `type` varchar(255) NOT NULL,
  `serialized_effects` longtext NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `max_usage` int(11) NOT NULL,
  `is_cumulative` tinyint(1) NOT NULL,
  `is_removing_postage` tinyint(1) NOT NULL,
  `is_available_on_special_offers` tinyint(1) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `serialized_conditions` text NOT NULL,
  `per_customer_usage_count` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `format` char(10) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `by_default` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `currency` VALUES(1, 'EUR', '€', '%n %s', 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(2, 'USD', '$', '%s%n', 1.26, 1, 2, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(3, 'GBP', '£', '%s%n', 0.89, 1, 3, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(4, 'CHF', 'CHF', '%n %s', 1.34183, 0, 4, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(5, 'MXN', '$', '%n %s', 17.1304, 0, 5, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(6, 'PLN', 'zł', '%n %s', 3.8451, 0, 6, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(7, 'CNY', '¥', '%s %n', 9.13916, 0, 7, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(8, 'NOK', 'kr', '%n %s', 7.97791, 0, 8, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(9, 'MDL', 'MDL', '%n %s', 16.1774, 0, 9, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(10, 'PYG', 'Gs', '%n %s', 6547.98, 0, 10, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(11, 'ARS', 'ARS', '%n %s', 5.39, 0, 11, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(12, 'BYR', 'р.', '%n%s', 1, 0, 12, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(13, 'FJD', '$', '%s%n', 2.57483, 0, 13, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(14, 'RSD', 'RSD', '%n %s', 115.68, 0, 14, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(15, 'SEK', 'kr', '%n %s', 9.14651, 0, 15, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(16, 'HRK', 'kn', '%n %s', 1, 0, 16, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(17, 'DKK', 'kr', '%n %s', 7.45201, 0, 17, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(18, 'NGN', '₦', '%s %n', 1, 0, 18, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(19, 'HKD', '$', '%n %s', 11.0512, 0, 19, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(20, 'CAD', 'CAD$', '%s%n', 1.40054, 0, 20, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(21, 'SAR', '﷼', '%n %s', 5.10682, 0, 21, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(22, 'CZK', 'Kč', '%n %s', 1, 0, 22, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(23, 'CRC', '₡', '%s %n', 560, 0, 23, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(24, 'AZN', 'AZN', '%n %s', 1.09237, 0, 24, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(25, 'IDR', 'Rp‎', '%n %s', 12177.6, 0, 25, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(26, 'PKR', '₨', '%n %s', 117.289, 0, 26, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(27, 'BRL', 'R$', '%s %n', 2.31583, 0, 27, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(28, 'VND', '₫', '%n %s', 26505.8, 0, 28, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(29, 'PHP', 'PHP', '%s %n', 1, 0, 29, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(30, 'GTQ', 'Q', '%n %s', 11.0988, 0, 30, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(31, 'TRY', 'TL', '%n %s', 1.97638, 0, 31, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(32, 'JPY', '¥', '%s %n', 113.786, 0, 32, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(33, 'RUB', 'руб', '%n %s', 41.7632, 0, 33, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(34, 'PEN', 'S/.', '%s %n', 2.7845, 0, 34, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(35, 'EGP', '£', '%s %n', 7.77518, 0, 35, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(36, 'GEL', 'ლ', '%n %s', 2.46684, 0, 36, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(37, 'BOB', '$b', '%n %s', 9.5762, 0, 37, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(38, 'AED', 'AED', '%s %n', 1, 0, 38, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(39, 'THB', '฿', '%n %s', 41.4441, 0, 39, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(40, 'ILS', '₪‎', '%n%s', 4.97713, 0, 40, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(41, 'MYR', 'RM', '%s%n', 1, 0, 41, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(42, 'VEF', 'Bs', '%n %s', 5.84819, 0, 42, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(43, 'HUF', 'Ft‎', '%n %s', 276.334, 0, 43, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(44, 'KES', 'KSh', '%s %n', 1, 0, 44, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(45, 'UAH', '₴', '%n %s', 1, 0, 45, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(46, 'TND', 'DT', '%n%s', 1, 0, 46, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(47, 'BGN', 'лв', '%n %s', 1.9558, 0, 47, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `currency` VALUES(48, 'INR', '₹', '%s %n', 60.7482, 0, 48, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `currency_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `currency_i18n` VALUES(1, 'de_DE', 'Euro');
INSERT INTO `currency_i18n` VALUES(1, 'en_US', 'Euro');
INSERT INTO `currency_i18n` VALUES(1, 'es_ES', 'Euro');
INSERT INTO `currency_i18n` VALUES(1, 'fr_FR', 'Euro');
INSERT INTO `currency_i18n` VALUES(2, 'de_DE', 'US Dollar');
INSERT INTO `currency_i18n` VALUES(2, 'en_US', 'United States Dollar');
INSERT INTO `currency_i18n` VALUES(2, 'es_ES', 'Dólar Estadunidense');
INSERT INTO `currency_i18n` VALUES(2, 'fr_FR', 'Dollar Américain');
INSERT INTO `currency_i18n` VALUES(3, 'de_DE', 'Britische Pfund');
INSERT INTO `currency_i18n` VALUES(3, 'en_US', 'UK Pound');
INSERT INTO `currency_i18n` VALUES(3, 'es_ES', 'Libra Reino Unido');
INSERT INTO `currency_i18n` VALUES(3, 'fr_FR', 'Livre anglaise');
INSERT INTO `currency_i18n` VALUES(4, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(4, 'en_US', 'Franc');
INSERT INTO `currency_i18n` VALUES(4, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(4, 'fr_FR', 'Franc');
INSERT INTO `currency_i18n` VALUES(5, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(5, 'en_US', 'Peso');
INSERT INTO `currency_i18n` VALUES(5, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(5, 'fr_FR', 'Peso');
INSERT INTO `currency_i18n` VALUES(6, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(6, 'en_US', 'Złoty');
INSERT INTO `currency_i18n` VALUES(6, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(6, 'fr_FR', 'Złoty');
INSERT INTO `currency_i18n` VALUES(7, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(7, 'en_US', 'Yuan');
INSERT INTO `currency_i18n` VALUES(7, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(7, 'fr_FR', 'Yuan');
INSERT INTO `currency_i18n` VALUES(8, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(8, 'en_US', 'Krone');
INSERT INTO `currency_i18n` VALUES(8, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(8, 'fr_FR', 'Couronne Norvégienne');
INSERT INTO `currency_i18n` VALUES(9, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(9, 'en_US', 'Lei');
INSERT INTO `currency_i18n` VALUES(9, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(9, 'fr_FR', 'Lei');
INSERT INTO `currency_i18n` VALUES(10, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(10, 'en_US', 'Guaraní');
INSERT INTO `currency_i18n` VALUES(10, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(10, 'fr_FR', 'Guaraní');
INSERT INTO `currency_i18n` VALUES(11, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(11, 'en_US', 'Peso Argentino');
INSERT INTO `currency_i18n` VALUES(11, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(11, 'fr_FR', 'Peso Argentin');
INSERT INTO `currency_i18n` VALUES(12, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(12, 'en_US', 'Belarusian ruble');
INSERT INTO `currency_i18n` VALUES(12, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(12, 'fr_FR', 'Rouble Biélorusse');
INSERT INTO `currency_i18n` VALUES(13, 'de_DE', 'Dollar');
INSERT INTO `currency_i18n` VALUES(13, 'en_US', 'Dollar');
INSERT INTO `currency_i18n` VALUES(13, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(13, 'fr_FR', 'Dollar');
INSERT INTO `currency_i18n` VALUES(14, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(14, 'en_US', 'Dinar');
INSERT INTO `currency_i18n` VALUES(14, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(14, 'fr_FR', 'Dinar');
INSERT INTO `currency_i18n` VALUES(15, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(15, 'en_US', 'Krona');
INSERT INTO `currency_i18n` VALUES(15, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(15, 'fr_FR', 'Couronne Suédoise');
INSERT INTO `currency_i18n` VALUES(16, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(16, 'en_US', 'Croatian Kuna');
INSERT INTO `currency_i18n` VALUES(16, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(16, 'fr_FR', 'Kuna Croate');
INSERT INTO `currency_i18n` VALUES(17, 'de_DE', 'Dänische Kronen');
INSERT INTO `currency_i18n` VALUES(17, 'en_US', 'Danish krone');
INSERT INTO `currency_i18n` VALUES(17, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(17, 'fr_FR', 'Couronne Danoise');
INSERT INTO `currency_i18n` VALUES(18, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(18, 'en_US', 'Nigerian naira');
INSERT INTO `currency_i18n` VALUES(18, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(18, 'fr_FR', 'Naira Nigérien');
INSERT INTO `currency_i18n` VALUES(19, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(19, 'en_US', 'Hong Kong Dollar');
INSERT INTO `currency_i18n` VALUES(19, 'es_ES', 'Dólar de Hong Kong');
INSERT INTO `currency_i18n` VALUES(19, 'fr_FR', 'Dollar de Honk-Kong');
INSERT INTO `currency_i18n` VALUES(20, 'de_DE', 'Dollar (CAD)');
INSERT INTO `currency_i18n` VALUES(20, 'en_US', 'Dollar (CAD)');
INSERT INTO `currency_i18n` VALUES(20, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(20, 'fr_FR', 'Dollar Canadien');
INSERT INTO `currency_i18n` VALUES(21, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(21, 'en_US', 'Riyal');
INSERT INTO `currency_i18n` VALUES(21, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(21, 'fr_FR', 'Riyal');
INSERT INTO `currency_i18n` VALUES(22, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(22, 'en_US', 'Czech koruna');
INSERT INTO `currency_i18n` VALUES(22, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(22, 'fr_FR', 'Couronne Tchèque');
INSERT INTO `currency_i18n` VALUES(23, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(23, 'en_US', 'Colón');
INSERT INTO `currency_i18n` VALUES(23, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(23, 'fr_FR', 'Colón');
INSERT INTO `currency_i18n` VALUES(24, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(24, 'en_US', 'Manat');
INSERT INTO `currency_i18n` VALUES(24, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(24, 'fr_FR', 'Manat');
INSERT INTO `currency_i18n` VALUES(25, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(25, 'en_US', 'Rupiah');
INSERT INTO `currency_i18n` VALUES(25, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(25, 'fr_FR', 'Roupie Indonésienne');
INSERT INTO `currency_i18n` VALUES(26, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(26, 'en_US', 'Rupee');
INSERT INTO `currency_i18n` VALUES(26, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(26, 'fr_FR', 'Roupie Pakistanaise');
INSERT INTO `currency_i18n` VALUES(27, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(27, 'en_US', 'Real');
INSERT INTO `currency_i18n` VALUES(27, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(27, 'fr_FR', 'Real');
INSERT INTO `currency_i18n` VALUES(28, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(28, 'en_US', 'Đồng');
INSERT INTO `currency_i18n` VALUES(28, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(28, 'fr_FR', 'Đồng');
INSERT INTO `currency_i18n` VALUES(29, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(29, 'en_US', 'Philippine Peso');
INSERT INTO `currency_i18n` VALUES(29, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(29, 'fr_FR', 'Peso Philippin');
INSERT INTO `currency_i18n` VALUES(30, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(30, 'en_US', 'Quetzal');
INSERT INTO `currency_i18n` VALUES(30, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(30, 'fr_FR', 'Quetzal');
INSERT INTO `currency_i18n` VALUES(31, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(31, 'en_US', 'Lira');
INSERT INTO `currency_i18n` VALUES(31, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(31, 'fr_FR', 'Lire');
INSERT INTO `currency_i18n` VALUES(32, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(32, 'en_US', 'Yen');
INSERT INTO `currency_i18n` VALUES(32, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(32, 'fr_FR', 'Yen');
INSERT INTO `currency_i18n` VALUES(33, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(33, 'en_US', 'Ruble');
INSERT INTO `currency_i18n` VALUES(33, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(33, 'fr_FR', 'Rouble');
INSERT INTO `currency_i18n` VALUES(34, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(34, 'en_US', 'Nuevo Sol');
INSERT INTO `currency_i18n` VALUES(34, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(34, 'fr_FR', 'Nuevo Sol');
INSERT INTO `currency_i18n` VALUES(35, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(35, 'en_US', 'Pound');
INSERT INTO `currency_i18n` VALUES(35, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(35, 'fr_FR', 'Livre');
INSERT INTO `currency_i18n` VALUES(36, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(36, 'en_US', 'Lari');
INSERT INTO `currency_i18n` VALUES(36, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(36, 'fr_FR', 'Lari');
INSERT INTO `currency_i18n` VALUES(37, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(37, 'en_US', 'Boliviano');
INSERT INTO `currency_i18n` VALUES(37, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(37, 'fr_FR', 'Bolivie');
INSERT INTO `currency_i18n` VALUES(38, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(38, 'en_US', 'United Arab Emirates dirham');
INSERT INTO `currency_i18n` VALUES(38, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(38, 'fr_FR', 'Dirham des Émirats Arabes Unis');
INSERT INTO `currency_i18n` VALUES(39, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(39, 'en_US', 'Baht');
INSERT INTO `currency_i18n` VALUES(39, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(39, 'fr_FR', 'Baht');
INSERT INTO `currency_i18n` VALUES(40, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(40, 'en_US', 'Shekel');
INSERT INTO `currency_i18n` VALUES(40, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(40, 'fr_FR', 'Shekel');
INSERT INTO `currency_i18n` VALUES(41, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(41, 'en_US', 'Ringgit');
INSERT INTO `currency_i18n` VALUES(41, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(41, 'fr_FR', 'Ringgit');
INSERT INTO `currency_i18n` VALUES(42, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(42, 'en_US', 'Bolívar fuerte');
INSERT INTO `currency_i18n` VALUES(42, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(42, 'fr_FR', 'Bolivar Vénézuélien');
INSERT INTO `currency_i18n` VALUES(43, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(43, 'en_US', 'Forint');
INSERT INTO `currency_i18n` VALUES(43, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(43, 'fr_FR', 'Forint');
INSERT INTO `currency_i18n` VALUES(44, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(44, 'en_US', 'Kenyan shilling');
INSERT INTO `currency_i18n` VALUES(44, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(44, 'fr_FR', 'Shilling Kenyan');
INSERT INTO `currency_i18n` VALUES(45, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(45, 'en_US', 'Гривна');
INSERT INTO `currency_i18n` VALUES(45, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(45, 'fr_FR', 'Hryvnia Ukrainien');
INSERT INTO `currency_i18n` VALUES(46, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(46, 'en_US', 'Tunisian Dinar');
INSERT INTO `currency_i18n` VALUES(46, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(46, 'fr_FR', 'Dinar Tunisien');
INSERT INTO `currency_i18n` VALUES(47, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(47, 'en_US', 'Lev');
INSERT INTO `currency_i18n` VALUES(47, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(47, 'fr_FR', 'Lev');
INSERT INTO `currency_i18n` VALUES(48, 'de_DE', NULL);
INSERT INTO `currency_i18n` VALUES(48, 'en_US', 'Indian Rupee');
INSERT INTO `currency_i18n` VALUES(48, 'es_ES', NULL);
INSERT INTO `currency_i18n` VALUES(48, 'fr_FR', 'Roupie Hindoue');

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `algo` varchar(128) DEFAULT NULL,
  `reseller` tinyint(4) DEFAULT NULL,
  `sponsor` varchar(50) DEFAULT NULL,
  `discount` decimal(16,6) DEFAULT '0.000000',
  `remember_me_token` varchar(255) DEFAULT NULL,
  `remember_me_serial` varchar(255) DEFAULT NULL,
  `enable` tinyint(4) DEFAULT '0',
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `customer_title` (
  `id` int(11) NOT NULL,
  `by_default` int(11) NOT NULL DEFAULT '0',
  `position` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customer_title` VALUES(1, 1, '1', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `customer_title` VALUES(2, 0, '2', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `customer_title` VALUES(3, 0, '3', '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `customer_title_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `short` varchar(10) DEFAULT NULL,
  `long` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customer_title_i18n` VALUES(1, 'de_DE', 'Hr.', 'Herr');
INSERT INTO `customer_title_i18n` VALUES(1, 'en_US', 'Mr.', 'Mister');
INSERT INTO `customer_title_i18n` VALUES(1, 'es_ES', 'Sr.', 'Señor');
INSERT INTO `customer_title_i18n` VALUES(1, 'fr_FR', 'M.', 'Monsieur');
INSERT INTO `customer_title_i18n` VALUES(2, 'de_DE', 'Fr.', 'Frau');
INSERT INTO `customer_title_i18n` VALUES(2, 'en_US', 'Mrs', 'Misses');
INSERT INTO `customer_title_i18n` VALUES(2, 'es_ES', 'Sra', 'Señora');
INSERT INTO `customer_title_i18n` VALUES(2, 'fr_FR', 'Mme', 'Madame');
INSERT INTO `customer_title_i18n` VALUES(3, 'de_DE', 'Fr.', 'Fräulein');
INSERT INTO `customer_title_i18n` VALUES(3, 'en_US', 'Miss_short', 'Miss');
INSERT INTO `customer_title_i18n` VALUES(3, 'es_ES', 'Señorita', 'Señorita');
INSERT INTO `customer_title_i18n` VALUES(3, 'fr_FR', 'Mlle', 'Mademoiselle');

CREATE TABLE `customer_version` (
  `id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `algo` varchar(128) DEFAULT NULL,
  `reseller` tinyint(4) DEFAULT NULL,
  `sponsor` varchar(50) DEFAULT NULL,
  `discount` decimal(16,6) DEFAULT '0.000000',
  `remember_me_token` varchar(255) DEFAULT NULL,
  `remember_me_serial` varchar(255) DEFAULT NULL,
  `enable` tinyint(4) DEFAULT '0',
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL,
  `order_ids` text,
  `order_versions` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `export` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `export_category_id` int(11) NOT NULL,
  `handle_class` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `export` VALUES(1, 'thelia.export.mailing', 1, 1, 'Thelia\\ImportExport\\Export\\Type\\MailingExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export` VALUES(2, 'thelia.export.complete', 2, 1, 'Thelia\\ImportExport\\Export\\Type\\CustomerExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export` VALUES(3, 'thelia.export.prices', 1, 2, 'Thelia\\ImportExport\\Export\\Type\\ProductPricesExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export` VALUES(4, 'thelia.export.taxed_prices', 2, 2, 'Thelia\\ImportExport\\Export\\Type\\ProductTaxedPricesExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export` VALUES(5, 'thelia.export.product_seo', 3, 2, 'Thelia\\ImportExport\\Export\\Type\\ProductSEOExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export` VALUES(6, 'thelia.export.content', 1, 3, 'Thelia\\ImportExport\\Export\\Type\\ContentExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export` VALUES(7, 'thelia.export.orders', 1, 4, 'Thelia\\ImportExport\\Export\\Type\\OrderExport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `export_category` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `export_category` VALUES(1, 'thelia.export.customer', 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export_category` VALUES(2, 'thelia.export.products', 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export_category` VALUES(3, 'thelia.export.content', 3, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export_category` VALUES(4, 'thelia.export.orders', 4, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `export_category` VALUES(5, 'thelia.export.modules', 5, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `export_category_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `export_category_i18n` VALUES(1, 'en_US', 'Customers');
INSERT INTO `export_category_i18n` VALUES(1, 'fr_FR', 'Clients');
INSERT INTO `export_category_i18n` VALUES(2, 'en_US', 'Products');
INSERT INTO `export_category_i18n` VALUES(2, 'fr_FR', 'Produits');
INSERT INTO `export_category_i18n` VALUES(3, 'en_US', 'Content');
INSERT INTO `export_category_i18n` VALUES(3, 'fr_FR', 'Contenu');
INSERT INTO `export_category_i18n` VALUES(4, 'en_US', 'Orders');
INSERT INTO `export_category_i18n` VALUES(4, 'fr_FR', 'Commandes');
INSERT INTO `export_category_i18n` VALUES(5, 'en_US', 'Modules');
INSERT INTO `export_category_i18n` VALUES(5, 'fr_FR', 'Modules');

CREATE TABLE `export_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `export_i18n` VALUES(1, 'en_US', 'Mailing', 'Export the last name, first name and email address of the newsletter subscribers');
INSERT INTO `export_i18n` VALUES(1, 'fr_FR', 'Mailing', 'Exporter le nom, prénom et adresse mail des abonnés à la newsletter');
INSERT INTO `export_i18n` VALUES(2, 'en_US', 'Customers', 'Export all the information about your customers');
INSERT INTO `export_i18n` VALUES(2, 'fr_FR', 'Clients', 'Exporter toutes les informations à propos de vos clients');
INSERT INTO `export_i18n` VALUES(3, 'en_US', 'Product prices excluding taxes', 'Export the prices of the products excluding taxes');
INSERT INTO `export_i18n` VALUES(3, 'fr_FR', 'Prix des produits Hors-Taxes', 'Exporter le prix hors taxes de vos produits');
INSERT INTO `export_i18n` VALUES(4, 'en_US', 'Product prices including taxes', 'Export the prices of the products including taxes');
INSERT INTO `export_i18n` VALUES(4, 'fr_FR', 'Prix des produits TTC', 'Exporter le prix TTC de vos produits');
INSERT INTO `export_i18n` VALUES(5, 'en_US', 'Product SEO information', '\n                    Export the SEO information ( rewritten url, meta description and keywords, page title ) of your products\n                ');
INSERT INTO `export_i18n` VALUES(5, 'fr_FR', 'Informations SEO des produits', '\n                    Exporter les informations SEO de vos produits\n                    ( url réécrites, meta description et mots clés, titre ) de vos produits\n                ');
INSERT INTO `export_i18n` VALUES(6, 'en_US', 'Contents and folder', '\n                    Export your contents and their related folders\n                ');
INSERT INTO `export_i18n` VALUES(6, 'fr_FR', 'Contenus et dossiers', '\n                    Exporter vos contenus et les dossiers associés\n                ');
INSERT INTO `export_i18n` VALUES(7, 'en_US', 'Full orders', '\n                    Export your orders\n                ');
INSERT INTO `export_i18n` VALUES(7, 'fr_FR', 'Commandes complètes', '\n                    Exporter vos commandes\n                ');

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `visible` int(11) DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `feature_av` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `feature_av_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `feature_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `feature_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `feature_av_id` int(11) DEFAULT NULL,
  `free_text_value` text,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `feature_template` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder_document` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder_document_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder_image` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder_image_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `folder_version` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `form_firewall` (
  `id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `attempts` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `form_firewall` VALUES(2, 'thelia_customer_login', '37.160.198.178', 1, '2020-02-29 09:42:54', '2020-02-29 09:42:54');

CREATE TABLE `hook` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `by_module` tinyint(1) DEFAULT NULL,
  `native` tinyint(1) DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  `block` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `hook` VALUES(1, 'order-invoice.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2, 'order-invoice.delivery-address', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3, 'order-invoice.payment-extra', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(4, 'order-invoice.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(5, 'order-invoice.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(6, 'order-invoice.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(7, 'order-invoice.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(8, 'order-payment-gateway.body', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(9, 'order-payment-gateway.javascript', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(10, 'order-payment-gateway.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(11, 'order-payment-gateway.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(12, 'order-payment-gateway.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(13, 'sitemap.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(14, 'currency.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(15, 'currency.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(16, 'currency.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(17, 'currency.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(18, 'currency.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(19, 'login.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(20, 'login.main-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(21, 'login.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(22, 'login.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(23, 'login.main-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(24, 'login.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(25, 'login.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(26, 'login.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(27, 'login.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(28, 'account-update.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(29, 'account-update.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(30, 'account-update.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(31, 'account-update.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(32, 'account-update.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(33, 'account-update.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(34, 'account-update.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(35, 'cart.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(36, 'cart.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(37, 'cart.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(38, 'cart.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(39, 'cart.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(40, 'contact.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(41, 'contact.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(42, 'contact.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(43, 'contact.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(44, 'contact.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(45, 'contact.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(46, 'contact.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(47, 'order-placed.body', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(48, 'order-placed.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(49, 'order-placed.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(50, 'order-placed.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(51, 'search.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(52, 'search.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(53, 'search.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(54, 'register.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(55, 'register.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(56, 'register.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(57, 'register.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(58, 'register.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(59, 'register.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(60, 'register.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(61, 'password.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(62, 'password.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(63, 'password.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(64, 'password.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(65, 'password.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(66, 'password.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(67, 'password.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(68, 'language.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(69, 'language.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(70, 'language.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(71, 'language.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(72, 'language.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(73, 'contact.success', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(74, 'newsletter.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(75, 'newsletter.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(76, 'newsletter.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(77, 'newsletter.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(78, 'newsletter.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(79, 'badresponseorder.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(80, 'badresponseorder.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(81, 'badresponseorder.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(82, 'content.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(83, 'content.main-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(84, 'content.main-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(85, 'content.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(86, 'content.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(87, 'content.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(88, 'content.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(89, 'main.head-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(90, 'main.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(91, 'main.head-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(92, 'main.body-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(93, 'main.header-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(94, 'main.navbar-secondary', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(95, 'main.navbar-primary', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(96, 'main.header-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(97, 'main.content-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(98, 'main.content-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(99, 'main.footer-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(100, 'main.footer-body', 1, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(101, 'main.footer-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(102, 'main.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(103, 'main.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(104, 'main.body-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(105, '404.content', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(106, '404.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(107, '404.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(108, '404.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(109, 'order-delivery.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(110, 'order-delivery.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(111, 'order-delivery.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(112, 'order-delivery.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(113, 'order-delivery.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(114, 'order-delivery.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(115, 'order-delivery.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(116, 'address-create.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(117, 'address-create.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(118, 'address-create.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(119, 'address-create.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(120, 'address-create.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(121, 'address-create.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(122, 'address-create.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(123, 'folder.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(124, 'folder.main-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(125, 'folder.main-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(126, 'folder.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(127, 'folder.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(128, 'folder.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(129, 'folder.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(130, 'order-failed.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(131, 'order-failed.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(132, 'order-failed.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(133, 'order-failed.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(134, 'order-failed.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(135, 'category.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(136, 'category.main-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(137, 'category.main-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(138, 'category.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(139, 'category.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(140, 'category.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(141, 'category.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(142, 'address-update.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(143, 'address-update.form-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(144, 'address-update.form-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(145, 'address-update.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(146, 'address-update.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(147, 'address-update.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(148, 'address-update.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(149, 'home.body', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(150, 'home.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(151, 'home.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(152, 'home.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(153, 'account-password.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(154, 'account-password.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(155, 'account-password.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(156, 'account-password.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(157, 'account-password.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(158, 'product.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(159, 'product.gallery', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(160, 'product.details-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(161, 'product.details-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(162, 'product.additional', 1, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(163, 'product.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(164, 'product.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(165, 'product.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(166, 'product.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(167, 'account.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(168, 'account.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(169, 'account.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(170, 'account.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(171, 'account.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(172, 'viewall.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(173, 'viewall.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(174, 'viewall.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(175, 'viewall.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(176, 'viewall.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(177, 'singleproduct.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(178, 'singleproduct.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(179, 'category.sidebar-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(180, 'category.sidebar-body', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(181, 'category.sidebar-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(182, 'content.sidebar-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(183, 'content.sidebar-body', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(184, 'content.sidebar-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(185, 'order-delivery.extra', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(186, 'order-delivery.javascript', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(187, 'category.content-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(188, 'category.content-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(189, 'content.content-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(190, 'content.content-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(191, 'folder.content-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(192, 'folder.content-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(193, 'brand.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(194, 'brand.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(195, 'brand.main-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(196, 'brand.main-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(197, 'brand.content-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(198, 'brand.content-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(199, 'brand.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(200, 'brand.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(201, 'brand.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(202, 'brand.sidebar-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(203, 'brand.sidebar-body', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(204, 'brand.sidebar-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(205, 'account-order.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(206, 'account-order.information', 1, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(207, 'account-order.after-information', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(208, 'account-order.delivery-information', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(209, 'account-order.delivery-address', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(210, 'account-order.invoice-information', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(211, 'account-order.invoice-address', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(212, 'account-order.after-addresses', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(213, 'account-order.products-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(214, 'account-order.product-extra', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(215, 'account-order.products-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(216, 'account-order.after-products', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(217, 'account-order.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(218, 'account-order.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(219, 'account-order.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(220, 'account-order.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(221, 'account.additional', 1, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(222, 'account-order.product', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(223, 'mini-cart', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(224, 'sale.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(225, 'sale.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(226, 'sale.main-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(227, 'sale.main-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(228, 'sale.content-top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(229, 'sale.content-bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(230, 'sale.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(231, 'sale.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(232, 'sale.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(233, 'account-order.invoice-address-bottom', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(234, 'account-order.delivery-address-bottom', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(235, 'newsletter-unsubscribe.top', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(236, 'newsletter-unsubscribe.bottom', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(237, 'newsletter-unsubscribe.stylesheet', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(238, 'newsletter-unsubscribe.after-javascript-include', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(239, 'newsletter-unsubscribe.javascript-initialization', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(240, 'order-invoice.coupon-form', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(241, 'order-invoice.payment-form', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(242, 'account-order.product-list', 1, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1000, 'category.tab-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1001, 'content.tab-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1002, 'folder.tab-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1003, 'order.tab-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1004, 'product.tab-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1005, 'features-value.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1006, 'features-value.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1007, 'feature.value-create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1008, 'feature.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1009, 'product.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1010, 'coupon.create-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1011, 'taxes.update-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1012, 'tax-rule.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1013, 'tools.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1014, 'tools.col1-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1015, 'tools.col1-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1016, 'tools.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1017, 'tools.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1018, 'messages.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1019, 'messages.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1020, 'messages.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1021, 'messages.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1022, 'message.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1023, 'message.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1024, 'messages.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1025, 'taxes-rules.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1026, 'taxes-rules.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1027, 'tax.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1028, 'tax.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1029, 'tax-rule.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1030, 'tax-rule.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1031, 'taxes-rules.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1032, 'exports.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1033, 'exports.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1034, 'exports.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1035, 'exports.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1036, 'export.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1037, 'product.folders-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1038, 'product.folders-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1039, 'product.details-pricing-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1040, 'product.details-details-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1041, 'product.details-promotion-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1042, 'product.before-combinations', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1043, 'product.combinations-list-caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1044, 'product.after-combinations', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1045, 'product.combination-delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1046, 'modules.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1047, 'modules.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1048, 'currency.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1049, 'category.contents-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1050, 'category.contents-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1051, 'category.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1052, 'document.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1053, 'customer.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1054, 'customers.caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1055, 'customers.header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1056, 'customers.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1057, 'customer.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1058, 'customer.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1059, 'customer.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1060, 'customers.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1061, 'product.contents-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1062, 'product.contents-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1063, 'product.accessories-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1064, 'product.accessories-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1065, 'product.categories-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1066, 'product.categories-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1067, 'product.attributes-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1068, 'product.attributes-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1069, 'product.features-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1070, 'product.features-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1071, 'template.attributes-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1072, 'template.attributes-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1073, 'template.features-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1074, 'template.features-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1075, 'templates.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1076, 'templates.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1077, 'templates.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1078, 'templates.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1079, 'template.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1080, 'template.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1081, 'templates.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1082, 'configuration.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1083, 'configuration.catalog-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1084, 'configuration.catalog-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1085, 'configuration.shipping-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1086, 'configuration.shipping-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1087, 'configuration.system-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1088, 'configuration.system-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1089, 'configuration.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1090, 'configuration.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1091, 'index.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1092, 'index.middle', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1093, 'index.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1094, 'orders.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1095, 'orders.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1096, 'orders.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1097, 'orders.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1098, 'orders.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1099, 'shipping-zones.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1100, 'shipping-zones.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1101, 'shipping-zones.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1102, 'shipping-zones.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1103, 'shipping-zones.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1104, 'content.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1105, 'home.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1106, 'home.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1107, 'home.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1108, 'modules.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1109, 'modules.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1110, 'modules.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1111, 'languages.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1112, 'languages.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1113, 'language.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1114, 'languages.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1115, 'languages.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1116, 'zone.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1117, 'shipping-zones.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1118, 'system.logs-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1119, 'search.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1120, 'search.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1121, 'search.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1122, 'administrators.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1123, 'administrators.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1124, 'administrator.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1125, 'administrator.update-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1126, 'administrator.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1127, 'administrators.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1128, 'module-hook.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1129, 'shipping-configuration.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1130, 'shipping-configuration.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1131, 'shipping-configuration.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1132, 'shipping-configuration.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1133, 'shipping-configuration.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1134, 'shipping-configuration.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1135, 'shipping-configuration.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1136, 'features.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1137, 'features.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1138, 'features.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1139, 'features.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1140, 'feature.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1141, 'feature.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1142, 'feature.add-to-all-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1143, 'feature.remove-to-all-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1144, 'features.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1145, 'module.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1146, 'module-hook.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1147, 'module-hook.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1148, 'module-hook.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1149, 'shipping-configuration.edit', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1150, 'shipping-configuration.country-delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1151, 'shipping-configuration.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1152, 'mailing-system.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1153, 'mailing-system.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1154, 'mailing-system.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1155, 'categories.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1156, 'categories.caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1157, 'categories.header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1158, 'categories.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1159, 'products.caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1160, 'products.header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1161, 'products.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1162, 'categories.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1163, 'categories.catalog-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1164, 'category.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1165, 'product.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1166, 'category.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1167, 'product.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1168, 'categories.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1169, 'variables.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1170, 'variables.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1171, 'variables.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1172, 'variables.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1173, 'variable.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1174, 'variable.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1175, 'variables.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1176, 'order.product-list', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1177, 'order.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1178, 'config-store.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1179, 'translations.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1180, 'folders.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1181, 'folders.caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1182, 'folders.header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1183, 'folders.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1184, 'contents.caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1185, 'contents.header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1186, 'contents.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1187, 'folders.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1188, 'folder.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1189, 'content.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1190, 'folder.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1191, 'content.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1192, 'folders.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1193, 'template.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1194, 'tax.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1195, 'hook.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1196, 'countries.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1197, 'countries.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1198, 'countries.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1199, 'countries.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1200, 'country.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1201, 'country.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1202, 'countries.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1203, 'currencies.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1204, 'currencies.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1205, 'currencies.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1206, 'currencies.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1207, 'currency.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1208, 'currency.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1209, 'currencies.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1210, 'customer.edit', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1211, 'customer.address-create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1212, 'customer.address-update-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1213, 'customer.address-delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1214, 'customer.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1215, 'attributes-value.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1216, 'attributes-value.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1217, 'attribute-value.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1218, 'attribute.id-delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1219, 'attribute.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1220, 'profiles.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1221, 'profiles.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1222, 'profile.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1223, 'profile.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1224, 'profiles.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1225, 'country.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1226, 'profile.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1227, 'variable.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1228, 'coupon.update-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1229, 'coupon.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1230, 'coupon.list-caption', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1231, 'coupon.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1232, 'coupon.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1233, 'coupon.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1234, 'coupon.list-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1235, 'module.configuration', 2, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1236, 'module.config-js', 2, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1237, 'message.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1238, 'image.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1239, 'attributes.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1240, 'attributes.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1241, 'attributes.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1242, 'attributes.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1243, 'attribute.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1244, 'attribute.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1245, 'attribute.add-to-all-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1246, 'attribute.remove-to-all-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1247, 'attributes.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1248, 'admin-logs.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1249, 'admin-logs.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1250, 'admin-logs.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1251, 'folder.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1252, 'hooks.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1253, 'hooks.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1254, 'hooks.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1255, 'hooks.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1256, 'hook.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1257, 'hook.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1258, 'hooks.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1259, 'main.head-css', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1260, 'main.before-topbar', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1261, 'main.inside-topbar', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1262, 'main.after-topbar', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1263, 'main.before-top-menu', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1264, 'main.in-top-menu-items', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1265, 'main.after-top-menu', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1266, 'main.before-footer', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1267, 'main.in-footer', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1268, 'main.after-footer', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1269, 'main.footer-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1270, 'main.topbar-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1271, 'main.topbar-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1272, 'main.top-menu-customer', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1273, 'main.top-menu-order', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1274, 'main.top-menu-catalog', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1275, 'main.top-menu-content', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1276, 'main.top-menu-tools', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1277, 'main.top-menu-modules', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1278, 'main.top-menu-configuration', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1279, 'brand.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1280, 'home.block', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1281, 'brands.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1282, 'brands.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1283, 'brands.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1284, 'brands.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1285, 'brand.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1286, 'brand.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1287, 'brand.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1288, 'imports.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1289, 'imports.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1290, 'imports.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1291, 'imports.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1292, 'import.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1293, 'brand.tab-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1294, 'customer.orders-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1295, 'customer.orders-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1296, 'sales.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1297, 'sales.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1298, 'sales.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1299, 'sales.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1300, 'sale.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1301, 'sale.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1302, 'sales.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1303, 'product.combinations-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1304, 'main.before-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1305, 'main.after-content', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1306, 'category.tab', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1307, 'product.tab', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1308, 'folder.tab', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1309, 'content.tab', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1310, 'brand.tab', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1311, 'order-edit.bill-delivery-address', 2, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1312, 'product.modification.form_top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1313, 'product.modification.form_bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1314, 'brand.update-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1315, 'sale.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1316, 'api.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1317, 'api.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1318, 'api.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1319, 'coupon.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1320, 'order.tab', 2, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1321, 'profile.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1322, 'profile.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1323, 'import.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1324, 'import.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1325, 'export.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1326, 'export.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1327, 'category-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1328, 'category-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1329, 'brand-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1330, 'brand-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1331, 'attribute-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1332, 'attribute-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1333, 'currency-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1334, 'currency-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1335, 'country-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1336, 'country-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1337, 'content-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1338, 'content-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1339, 'feature-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1340, 'feature-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1341, 'document-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1342, 'document-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1343, 'customer-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1344, 'customer-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1345, 'image-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1346, 'image-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1347, 'hook-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1348, 'hook-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1349, 'folder-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1350, 'folder-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1351, 'module-hook-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1352, 'module-hook-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1353, 'module-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1354, 'module-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1355, 'message-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1356, 'message-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1357, 'profile-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1358, 'profile-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1359, 'product-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1360, 'product-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1361, 'order-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1362, 'order-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1363, 'shipping-zones-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1364, 'shipping-zones-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1365, 'shipping-configuration-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1366, 'shipping-configuration-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1367, 'sale-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1368, 'sale-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1369, 'variables-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1370, 'variables-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1371, 'template-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1372, 'template-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1373, 'tax-rule-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1374, 'tax-rule-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1375, 'tax-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1376, 'tax-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1377, 'order-edit.product-list', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1378, 'tab-seo.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1379, 'tab-seo.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1380, 'tab-image.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1381, 'tab-image.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1382, 'tab-document.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1383, 'tab-document.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1384, 'export.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1385, 'export.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1386, 'order-edit.customer-information-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1387, 'order-edit.payment-module-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1388, 'order-edit.delivery-module-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1389, 'tab-seo.update-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1390, 'order-edit.order-product-table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1391, 'order-edit.order-product-table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1392, 'administrators.header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1393, 'administrators.row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1394, 'advanced-configuration', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1395, 'advanced-configuration.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1396, 'brand.modification.form-right.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1397, 'brand.modification.form-right.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1398, 'category.modification.form-right.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1399, 'category.modification.form-right.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1400, 'content.modification.form-right.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1401, 'content.modification.form-right.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1402, 'folder.modification.form-right.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1403, 'folder.modification.form-right.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1404, 'product.modification.form-right.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1405, 'product.modification.form-right.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1406, 'state-edit.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1407, 'state-edit.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1408, 'state.edit-js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1409, 'states.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1410, 'states.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1411, 'states.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1412, 'states.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1413, 'state.create-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1414, 'state.delete-form', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1415, 'states.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1416, 'configuration.order-path.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1417, 'configuration.order-path.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1418, 'order-status.top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1419, 'order-status.table-header', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1420, 'order-status.table-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1421, 'order-status.bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1422, 'order-status.form.creation', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1423, 'order-status.form.modification', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(1424, 'order-status.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2001, 'invoice.css', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2002, 'invoice.header', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2003, 'invoice.footer-top', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2004, 'invoice.imprint', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2005, 'invoice.footer-bottom', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2006, 'invoice.information', 3, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2007, 'invoice.after-information', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2008, 'invoice.delivery-address', 3, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2009, 'invoice.after-addresses', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2010, 'invoice.after-products', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2011, 'invoice.after-summary', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2012, 'delivery.css', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2013, 'delivery.header', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2014, 'delivery.footer-top', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2015, 'delivery.imprint', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2016, 'delivery.footer-bottom', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2017, 'delivery.information', 3, 0, 1, 1, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2018, 'delivery.after-information', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2019, 'delivery.delivery-address', 3, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2020, 'delivery.after-addresses', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2021, 'delivery.after-summary', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2022, 'order-placed.additional-payment-info', 1, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2023, 'wysiwyg.js', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2024, 'order-edit.cart-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2025, 'order-edit.cart-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2026, 'order-edit.bill-top', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2027, 'order-edit.bill-bottom', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2028, 'order-edit.before-order-product-list', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2029, 'order-edit.before-order-product-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2030, 'order-edit.after-order-product-row', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2031, 'order-edit.after-order-product-list', 2, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2032, 'invoice.after-payment-module', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2033, 'invoice.after-delivery-module', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2034, 'delivery.after-delivery-module', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2035, 'invoice.order-product', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2036, 'delivery.order-product', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2037, 'delivery.product-list', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(2038, 'invoice.product-list', 3, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3000, 'email-html.layout.css', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3001, 'email-html.layout.footer', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3002, 'email-html.order-confirmation.before-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3003, 'email-html.order-confirmation.delivery-address', 4, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3004, 'email-html.order-confirmation.after-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3005, 'email-html.order-confirmation.order-product', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3006, 'email-html.order-confirmation.before-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3007, 'email-html.order-confirmation.after-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3008, 'email-html.order-confirmation.footer', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3009, 'email-html.order-notification.before-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3010, 'email-html.order-notification.delivery-address', 4, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3011, 'email-html.order-notification.after-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3012, 'email-html.order-notification.order-product', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3013, 'email-html.order-notification.before-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3014, 'email-html.order-notification.after-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3015, 'email-txt.order-confirmation.before-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3016, 'email-txt.order-confirmation.delivery-address', 4, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3017, 'email-txt.order-confirmation.after-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3018, 'email-txt.order-confirmation.order-product', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3019, 'email-txt.order-confirmation.before-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3020, 'email-txt.order-confirmation.after-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3021, 'email-txt.order-notification.before-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3022, 'email-txt.order-notification.delivery-address', 4, 1, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3023, 'email-txt.order-notification.after-address', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3024, 'email-txt.order-notification.order-product', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3025, 'email-txt.order-notification.before-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3026, 'email-txt.order-notification.after-products', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3027, 'email-html.order-confirmation.product-list', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `hook` VALUES(3028, 'email-txt.order-confirmation.product-list', 4, 0, 1, 1, 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `hook_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `hook_i18n` VALUES(1, 'de_DE', 'Bezahlungsmethode - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1, 'en_US', 'Invoice choice - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1, 'es_ES', 'Opción de factura - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1, 'fr_FR', 'Choix du mode de paiement - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2, 'de_DE', 'Bezahlungsmethode - Lieferadresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2, 'en_US', 'Invoice choice - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2, 'es_ES', 'Opción de factura - dirección de envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2, 'fr_FR', 'Choix du mode de paiement - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3, 'de_DE', 'Bezahlungsmethode - extra payment zone', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3, 'en_US', 'Invoice choice - extra payment zone', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3, 'es_ES', 'Opción de factura - zona de pago extra', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3, 'fr_FR', 'Choix du mode de paiement - zone de paiement supplémentaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(4, 'de_DE', 'Bezahlungsmethode - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(4, 'en_US', 'Invoice choice - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(4, 'es_ES', 'Opción de factura - en la parte inferior de la factura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(4, 'fr_FR', 'Choix du mode de paiement - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(5, 'de_DE', 'Bezahlungsmethode - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(5, 'en_US', 'Invoice choice - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(5, 'es_ES', 'Opción de factura - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(5, 'fr_FR', 'Choix du mode de paiement - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(6, 'de_DE', 'Bezahlungsmethode - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(6, 'en_US', 'Invoice choice - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(6, 'es_ES', 'Opción de factura - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(6, 'fr_FR', 'Choix du mode de paiement - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(7, 'de_DE', 'Bezahlungsmethode - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(7, 'en_US', 'Invoice choice - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(7, 'es_ES', 'Opción de factura - después de incluir javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(7, 'fr_FR', 'Choix du mode de paiement - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(8, 'de_DE', 'Zahlung-Gateway - Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(8, 'en_US', 'Payment gateway - main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(8, 'es_ES', 'Pasarela de pago - área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(8, 'fr_FR', 'Passerelle de paiement - zone principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(9, 'de_DE', 'Zahlung-Gateway - Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(9, 'en_US', 'Payment gateway - javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(9, 'es_ES', 'Pasarela de pago - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(9, 'fr_FR', 'Passerelle de paiement - javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(10, 'de_DE', 'Zahlung-Gateway - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(10, 'en_US', 'Payment gateway - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(10, 'es_ES', 'Pasarela de pago - después de inicializar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(10, 'fr_FR', 'Passerelle de paiement - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(11, 'de_DE', 'Zahlung-Gateway - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(11, 'en_US', 'Payment gateway - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(11, 'es_ES', 'Pasarela de pago - Hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(11, 'fr_FR', 'Passerelle de paiement - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(12, 'de_DE', 'Zahlung-Gateway - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(12, 'en_US', 'Payment gateway - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(12, 'es_ES', 'Pasarela de pago - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(12, 'fr_FR', 'Passerelle de paiement - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(13, 'de_DE', 'Sitemap - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(13, 'en_US', 'Sitemap - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(13, 'es_ES', 'Mapa de sitio - en la base', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(13, 'fr_FR', 'Sitemap - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(14, 'de_DE', 'Währungswahl-Seite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(14, 'en_US', 'Curency selection page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(14, 'es_ES', 'Página de selección de divisa - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(14, 'fr_FR', 'Page du choix de la device - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(15, 'de_DE', 'Währungswahl-Seite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(15, 'en_US', 'Curency selection page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(15, 'es_ES', 'Página de selección de divisa - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(15, 'fr_FR', 'Page du choix de la device - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(16, 'de_DE', 'Währungswahl-Seite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(16, 'en_US', 'Curency selection page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(16, 'es_ES', 'Página de selección de divisa - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(16, 'fr_FR', 'Page du choix de la device - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(17, 'de_DE', 'Währungswahl-Seite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(17, 'en_US', 'Curency selection page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(17, 'es_ES', 'Página de selección de divisa - después de inclusión javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(17, 'fr_FR', 'Page du choix de la device - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(18, 'de_DE', 'Währungswahl-Seite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(18, 'en_US', 'Curency selection page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(18, 'es_ES', 'Página de selección de divisa - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(18, 'fr_FR', 'Page du choix de la device - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(19, 'de_DE', 'Anmeldeseite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(19, 'en_US', 'Login page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(19, 'es_ES', 'Página de inicio de sesión - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(19, 'fr_FR', 'Page de connexion - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(20, 'de_DE', 'Anmeldeseite - oben an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(20, 'en_US', 'Login page - at the top of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(20, 'es_ES', 'Página de inicio de sesión - en la parte superior del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(20, 'fr_FR', 'Page de connexion - en haut de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(21, 'de_DE', 'Anmeldeseite - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(21, 'en_US', 'Login page - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(21, 'es_ES', 'Página de inicio de sesión - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(21, 'fr_FR', 'Page de connexion - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(22, 'de_DE', 'Anmeldeseite - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(22, 'en_US', 'Login page - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(22, 'es_ES', 'Página de inicio de sesión - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(22, 'fr_FR', 'Page de connexion - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(23, 'de_DE', 'Anmeldeseite - unten an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(23, 'en_US', 'Login page - at the bottom of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(23, 'es_ES', 'Página de inicio de sesión - en la parte inferior del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(23, 'fr_FR', 'Page de connexion - en bas de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(24, 'de_DE', 'Anmeldeseite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(24, 'en_US', 'Login page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(24, 'es_ES', 'Página de inicio de sesión - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(24, 'fr_FR', 'Page de connexion - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(25, 'de_DE', 'Anmeldeseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(25, 'en_US', 'Login page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(25, 'es_ES', 'Página de inicio de sesión - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(25, 'fr_FR', 'Page de connexion - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(26, 'de_DE', 'Anmeldeseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(26, 'en_US', 'Login page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(26, 'es_ES', 'Página de inicio de sesión - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(26, 'fr_FR', 'Page de connexion - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(27, 'de_DE', 'Anmeldeseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(27, 'en_US', 'Login page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(27, 'es_ES', 'Página de inicio de sesión - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(27, 'fr_FR', 'Page de connexion - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(28, 'de_DE', 'Kundenkonto Änderung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(28, 'en_US', 'Update customer account - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(28, 'es_ES', 'Actualización de cuenta de cliente - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(28, 'fr_FR', 'Modification compte client - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(29, 'de_DE', 'Kundenkonto Änderung - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(29, 'en_US', 'Update customer account - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(29, 'es_ES', 'Actualización de cuenta de cliente - encabezado del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(29, 'fr_FR', 'Modification compte client - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(30, 'de_DE', 'Kundenkonto Änderung - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(30, 'en_US', 'Update customer account - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(30, 'es_ES', 'Actualización de cuenta de cliente - al pie del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(30, 'fr_FR', 'Modification compte client - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(31, 'de_DE', 'Kundenkonto Änderung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(31, 'en_US', 'Update customer account - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(31, 'es_ES', 'Actualización de cuenta de cliente - al pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(31, 'fr_FR', 'Modification compte client - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(32, 'de_DE', 'Kundenkonto Änderung - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(32, 'en_US', 'Update customer account - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(32, 'es_ES', 'Actualización de cuenta del cliente - Hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(32, 'fr_FR', 'Modification compte client - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(33, 'de_DE', 'Kundenkonto Änderung - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(33, 'en_US', 'Update customer account - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(33, 'es_ES', 'Actualización de cuenta del cliente - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(33, 'fr_FR', 'Modification compte client - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(34, 'de_DE', 'Kundenkonto Änderung - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(34, 'en_US', 'Update customer account - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(34, 'es_ES', 'Actualización de cuenta de cliente - después de inicializar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(34, 'fr_FR', 'Modification compte client - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(35, 'de_DE', 'Warenkorb - oben ', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(35, 'en_US', 'Cart - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(35, 'es_ES', 'Carrito - En la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(35, 'fr_FR', 'Panier - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(36, 'de_DE', 'Warenkorb - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(36, 'en_US', 'Cart - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(36, 'es_ES', 'Carrito - En la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(36, 'fr_FR', 'Panier - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(37, 'de_DE', 'Warenkorb - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(37, 'en_US', 'Cart - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(37, 'es_ES', 'Carro - después de inclusión javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(37, 'fr_FR', 'Panier - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(38, 'de_DE', 'Warenkorb - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(38, 'en_US', 'Cart - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(38, 'es_ES', 'Carrito - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(38, 'fr_FR', 'Panier - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(39, 'de_DE', 'Warenkorb - Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(39, 'en_US', 'Cart - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(39, 'es_ES', 'Carro - inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(39, 'fr_FR', 'Panier - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(40, 'de_DE', 'Kontaktseite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(40, 'en_US', 'Contact page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(40, 'es_ES', 'Página de contacto - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(40, 'fr_FR', 'Page contact - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(41, 'de_DE', 'Kontaktseite - oben an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(41, 'en_US', 'Contact page - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(41, 'es_ES', 'Página de contacto - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(41, 'fr_FR', 'Page contact - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(42, 'de_DE', 'Kontaktseite - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(42, 'en_US', 'Contact page - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(42, 'es_ES', 'Página de contacto - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(42, 'fr_FR', 'Page contact - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(43, 'de_DE', 'Kontaktseite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(43, 'en_US', 'Contact page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(43, 'es_ES', 'Página de contacto - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(43, 'fr_FR', 'Page contact - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(44, 'de_DE', 'Kontaktseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(44, 'en_US', 'Contact page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(44, 'es_ES', 'Página de contacto - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(44, 'fr_FR', 'Page contact - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(45, 'de_DE', 'Kontaktseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(45, 'en_US', 'Contact page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(45, 'es_ES', 'Página de contacto - después del include de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(45, 'fr_FR', 'Page contact - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(46, 'de_DE', 'Kontaktseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(46, 'en_US', 'Contact page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(46, 'es_ES', 'Página de contacto - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(46, 'fr_FR', 'Page contact - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(47, 'de_DE', 'Erteilten Auftrag - Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(47, 'en_US', 'Placed order - main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(47, 'es_ES', 'Orden registrada - área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(47, 'fr_FR', 'Commande terminée - zone principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(48, 'de_DE', 'Erteilten Auftrag - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(48, 'en_US', 'Placed order - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(48, 'es_ES', 'Orden registrada - Hoja de estilo CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(48, 'fr_FR', 'Commande terminée - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(49, 'de_DE', 'Erteilten Auftrag - nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(49, 'en_US', 'Placed order - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(49, 'es_ES', 'Orden registrada - después del javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(49, 'fr_FR', 'Commande terminée - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(50, 'de_DE', 'Erteilten Auftrag - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(50, 'en_US', 'Placed order - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(50, 'es_ES', 'Orden registrada - después de la inicialización de Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(50, 'fr_FR', 'Commande terminée - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(51, 'de_DE', 'Suche-Seite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(51, 'en_US', 'Search page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(51, 'es_ES', 'Página de búsqueda - Hoja de Estilos en Cascada', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(51, 'fr_FR', 'Page de recherche - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(52, 'de_DE', 'Suche-Seite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(52, 'en_US', 'Search page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(52, 'es_ES', 'Página de búsqueda - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(52, 'fr_FR', 'Page de recherche - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(53, 'de_DE', 'Suche-Seite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(53, 'en_US', 'Search page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(53, 'es_ES', 'Página de búsqueda - después de inicializar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(53, 'fr_FR', 'Page de recherche - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(54, 'de_DE', 'Konto-Erstellung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(54, 'en_US', 'Register - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(54, 'es_ES', 'Registro - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(54, 'fr_FR', 'Création de compte - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(55, 'de_DE', 'Konto-Erstellung - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(55, 'en_US', 'Register - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(55, 'es_ES', 'Registro - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(55, 'fr_FR', 'Création de compte - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(56, 'de_DE', 'Konto-Erstellung - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(56, 'en_US', 'Register - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(56, 'es_ES', 'Registro - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(56, 'fr_FR', 'Création de compte - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(57, 'de_DE', 'Konto-Erstellung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(57, 'en_US', 'Register - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(57, 'es_ES', 'Registro - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(57, 'fr_FR', 'Création de compte - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(58, 'de_DE', 'Konto-Erstellung - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(58, 'en_US', 'Register - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(58, 'es_ES', 'Registro - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(58, 'fr_FR', 'Création de compte - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(59, 'de_DE', 'Konto-Erstellung - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(59, 'en_US', 'Register - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(59, 'es_ES', 'Registro - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(59, 'fr_FR', 'Création de compte - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(60, 'de_DE', 'Konto-Erstellung - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(60, 'en_US', 'Register - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(60, 'es_ES', 'Registro - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(60, 'fr_FR', 'Création de compte - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(61, 'de_DE', 'Passwort verloren - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(61, 'en_US', 'Lost password - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(61, 'es_ES', 'Contraseña perdida - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(61, 'fr_FR', 'Mot de passe perdu - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(62, 'de_DE', 'Passwort verloren - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(62, 'en_US', 'Lost password - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(62, 'es_ES', 'Contraseña perdida - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(62, 'fr_FR', 'Mot de passe perdu - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(63, 'de_DE', 'Passwort verloren - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(63, 'en_US', 'Lost password - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(63, 'es_ES', 'Contraseña perdida - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(63, 'fr_FR', 'Mot de passe perdu - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(64, 'de_DE', 'Passwort verloren - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(64, 'en_US', 'Lost password - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(64, 'es_ES', 'Contraseña perdida - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(64, 'fr_FR', 'Mot de passe perdu - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(65, 'de_DE', 'Passwort verloren - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(65, 'en_US', 'Lost password - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(65, 'es_ES', 'Contraseña perdida - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(65, 'fr_FR', 'Mot de passe perdu - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(66, 'de_DE', 'Passwort verloren - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(66, 'en_US', 'Lost password - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(66, 'es_ES', 'Contraseña perdida - después de incluir javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(66, 'fr_FR', 'Mot de passe perdu - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(67, 'de_DE', 'Passwort verloren - Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(67, 'en_US', 'Lost password - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(67, 'es_ES', 'Contraseña perdida - inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(67, 'fr_FR', 'Mot de passe perdu - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(68, 'de_DE', 'Sprachwahl Seite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(68, 'en_US', 'language selection page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(68, 'es_ES', 'página de selección de idioma - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(68, 'fr_FR', 'Page du choix du langage - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(69, 'de_DE', 'Sprachwahl Seite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(69, 'en_US', 'language selection page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(69, 'es_ES', 'página de selección de idioma - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(69, 'fr_FR', 'Page du choix du langage - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(70, 'de_DE', 'Sprachwahl Seite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(70, 'en_US', 'language selection page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(70, 'es_ES', 'página de selección de idioma - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(70, 'fr_FR', 'Page du choix du langage - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(71, 'de_DE', 'Sprachwahl Seite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(71, 'en_US', 'language selection page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(71, 'es_ES', 'página de selección de idioma - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(71, 'fr_FR', 'Page du choix du langage - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(72, 'de_DE', 'Sprachwahl Seite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(72, 'en_US', 'language selection page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(72, 'es_ES', 'página de selección de idioma - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(72, 'fr_FR', 'Page du choix du langage - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(73, 'de_DE', 'Kontaktseite - wenn erfolgreich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(73, 'en_US', 'Contact page - if successful response', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(73, 'es_ES', 'Página de contacto - si la respuesta es exitosa', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(73, 'fr_FR', 'Page contact - en cas de succès', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(74, 'de_DE', 'Newletter-Seite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(74, 'en_US', 'Newsletter page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(74, 'es_ES', 'Página del boletín de noticias - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(74, 'fr_FR', 'Page newsletter - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(75, 'de_DE', 'Newletter-Seite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(75, 'en_US', 'Newsletter page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(75, 'es_ES', 'Página del boletín de noticias - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(75, 'fr_FR', 'Page newsletter - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(76, 'de_DE', 'Newletter-Seite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(76, 'en_US', 'Newsletter page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(76, 'es_ES', 'Página del boletín de noticias - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(76, 'fr_FR', 'Page newsletter - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(77, 'de_DE', 'Newletter-Seite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(77, 'en_US', 'Newsletter page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(77, 'es_ES', 'Página del boletín de noticias - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(77, 'fr_FR', 'Page newsletter - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(78, 'de_DE', 'Newletter-Seite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(78, 'en_US', 'Newsletter page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(78, 'es_ES', 'Página del boletín de noticias - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(78, 'fr_FR', 'Page newsletter - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(79, 'de_DE', 'Bezahlungs-Fehlschlagen - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(79, 'en_US', 'Payment failed - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(79, 'es_ES', 'Pago erróneo - Hoja de Estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(79, 'fr_FR', 'Échec du paiement - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(80, 'de_DE', 'Bezahlungs-Fehlschlagen - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(80, 'en_US', 'Payment failed - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(80, 'es_ES', 'Pago erróneo - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(80, 'fr_FR', 'Echec du paiement - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(81, 'de_DE', 'Bezahlungs-Fehlschlagen - Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(81, 'en_US', 'Payment failed - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(81, 'es_ES', 'Pago erróneo - inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(81, 'fr_FR', 'Echec du paiement - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(82, 'de_DE', 'Inhaltseite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(82, 'en_US', 'Content page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(82, 'es_ES', 'Página de contacto - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(82, 'fr_FR', 'Page de contenu - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(83, 'de_DE', 'Inhaltseite - oben an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(83, 'en_US', 'Content page - at the top of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(83, 'es_ES', 'Página de contenido - en la parte superior de la zona principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(83, 'fr_FR', 'Page de contenu - en haut de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(84, 'de_DE', 'Inhaltseite - unten an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(84, 'en_US', 'Content page - at the bottom of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(84, 'es_ES', 'Página de contenido - en la parte inferior de la zona principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(84, 'fr_FR', 'Page de contenu - en bas de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(85, 'de_DE', 'Inhaltseite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(85, 'en_US', 'Content page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(85, 'es_ES', 'Página de contacto - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(85, 'fr_FR', 'Page de contenu - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(86, 'de_DE', 'Inhaltseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(86, 'en_US', 'Content page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(86, 'es_ES', 'Página de contacto - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(86, 'fr_FR', 'Page de contenu - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(87, 'de_DE', 'Inhaltseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(87, 'en_US', 'Content page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(87, 'es_ES', 'Página de contacto - después del include de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(87, 'fr_FR', 'Page de contenu - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(88, 'de_DE', 'Inhaltseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(88, 'en_US', 'Content page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(88, 'es_ES', 'Página de contacto - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(88, 'fr_FR', 'Page de contenu - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(89, 'de_DE', 'HTML Struktur - nach der Eröffnung des Head-Tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(89, 'en_US', 'HTML layout - after the opening of the head tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(89, 'es_ES', 'Diseño HTML - después de la etiqueta head de apertura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(89, 'fr_FR', 'Structure HTML - après l\'ouverture de la balise head', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(90, 'de_DE', 'HTML Struktur - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(90, 'en_US', 'HTML layout - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(90, 'es_ES', 'Diseño HTML - hojas de estilo CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(90, 'fr_FR', 'Structure HTML - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(91, 'de_DE', 'HTML Struktur - vor dem Ende des Head-Tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(91, 'en_US', 'HTML layout - before the end of the head tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(91, 'es_ES', 'Diseño HTML - antes de la etiqueta head de cierre', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(91, 'fr_FR', 'Structure HTML - avant la fin de la balise head', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(92, 'de_DE', 'HTML Struktur - nach der Eröffnung des Body-Tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(92, 'en_US', 'HTML layout - after the opening of the body tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(92, 'es_ES', 'Diseño HTML - después de la etiqueta body de apertura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(92, 'fr_FR', 'Structure HTML - après l\'ouverture de la balise body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(93, 'de_DE', 'HTML Struktur - oben an dem Header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(93, 'en_US', 'HTML layout - at the top of the header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(93, 'es_ES', 'Diseño HTML - en la parte superior de la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(93, 'fr_FR', 'Structure HTML - en haut du header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(94, 'de_DE', 'HTML Struktur - Sekundärenavigation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(94, 'en_US', 'HTML layout - secondary navigation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(94, 'es_ES', 'Diseño HTML - navegación secundaria', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(94, 'fr_FR', 'Structure HTML - navigation secondaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(95, 'de_DE', 'HTML Struktur - Hauptnavigation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(95, 'en_US', 'HTML layout - primary navigation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(95, 'es_ES', 'Diseño HTML - navegación principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(95, 'fr_FR', 'Structure HTML - navigation principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(96, 'de_DE', 'HTML Struktur - unten an dem Header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(96, 'en_US', 'HTML layout - at the bottom of the header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(96, 'es_ES', 'Diseño HTML - en la parte inferior de la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(96, 'fr_FR', 'Structure HTML - en bas du header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(97, 'de_DE', 'HTML Struktur - vor dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(97, 'en_US', 'HTML layout - before the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(97, 'es_ES', 'Diseño HTML - antes el área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(97, 'fr_FR', 'Structure HTML - au dessus de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(98, 'de_DE', 'HTML Struktur - nach dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(98, 'en_US', 'HTML layout - after the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(98, 'es_ES', 'Diseño HTML - después del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(98, 'fr_FR', 'Structure HTML - en dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(99, 'de_DE', 'HTML Struktur - oben an dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(99, 'en_US', 'HTML layout - at the top of the footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(99, 'es_ES', 'Diseño HTML - en la parte superior del pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(99, 'fr_FR', 'Structure HTML - en haut du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(100, 'de_DE', 'HTML Struktur - Footer Body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(100, 'en_US', 'HTML layout - footer body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(100, 'es_ES', 'Diseño HTML - cuerpo del pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(100, 'fr_FR', 'Structure HTML - corps du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(101, 'de_DE', 'HTML Struktur - unten an dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(101, 'en_US', 'HTML layout - bottom of the footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(101, 'es_ES', 'Diseño HTML - parte inferior del pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(101, 'fr_FR', 'Structure HTML - en bas du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(102, 'de_DE', 'HTML Struktur - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(102, 'en_US', 'HTML layout - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(102, 'es_ES', 'Diseño HTML - después de incluir javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(102, 'fr_FR', 'Structure HTML - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(103, 'de_DE', 'HTML Struktur - Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(103, 'en_US', 'HTML layout - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(103, 'es_ES', 'Diseño HTML - inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(103, 'fr_FR', 'Structure HTML - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(104, 'de_DE', 'HTML Struktur - vor dem Ende des Body-Tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(104, 'en_US', 'HTML layout - before the end body tag', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(104, 'es_ES', 'Diseño HTML - antes de la etiqueta body de cierre', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(104, 'fr_FR', 'Structure HTML - avant la fin de la balise body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(105, 'de_DE', 'Seite nicht gefunden - Inhalts-Bereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(105, 'en_US', 'Page 404 - content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(105, 'es_ES', 'Página 404 - área de contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(105, 'fr_FR', 'Page introuvable - zone de contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(106, 'de_DE', 'Seite nicht gefunden - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(106, 'en_US', 'Page 404 - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(106, 'es_ES', 'Página 404 - CSS Hoja de estilos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(106, 'fr_FR', 'Page introuvable - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(107, 'de_DE', 'Seite nicht gefunden - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(107, 'en_US', 'Page 404 - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(107, 'es_ES', 'Página 404 - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(107, 'fr_FR', 'Page introuvable - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(108, 'de_DE', 'Seite nicht gefunden - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(108, 'en_US', 'Page 404 - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(108, 'es_ES', 'Página 404 - después de inicializar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(108, 'fr_FR', 'Page introuvable - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(109, 'de_DE', 'Lieferwahl - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(109, 'en_US', 'Delivery choice - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(109, 'es_ES', 'Opción de entrega - en la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(109, 'fr_FR', 'Choix du transporteur - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(110, 'de_DE', 'Lieferwahl - oben an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(110, 'en_US', 'Delivery choice - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(110, 'es_ES', 'Opción de entrega - en la cabecera del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(110, 'fr_FR', 'Choix du transporteur - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(111, 'de_DE', 'Lieferwahl - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(111, 'en_US', 'Delivery choice - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(111, 'es_ES', 'Opción de entrega - en el pie del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(111, 'fr_FR', 'Choix du transporteur - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(112, 'de_DE', 'Lieferwahl - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(112, 'en_US', 'Delivery choice - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(112, 'es_ES', 'Elección de entrega - en el pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(112, 'fr_FR', 'Choix du transporteur - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(113, 'de_DE', 'Lieferwahl - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(113, 'en_US', 'Delivery choice - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(113, 'es_ES', 'Opción de entrega - despues de inicializar el javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(113, 'fr_FR', 'Choix du transporteur - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(114, 'de_DE', 'Lieferwahl - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(114, 'en_US', 'Delivery choice - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(114, 'es_ES', 'Opción de entrega - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(114, 'fr_FR', 'Choix du transporteur - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(115, 'de_DE', 'Lieferwahl - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(115, 'en_US', 'Delivery choice - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(115, 'es_ES', 'Opción de entrega - después de incluir el javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(115, 'fr_FR', 'Choix du transporteur - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(116, 'de_DE', 'Adresse Erstellung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(116, 'en_US', 'Address creation - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(116, 'es_ES', 'Creación de dirección - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(116, 'fr_FR', 'Création d\'adresse - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(117, 'de_DE', 'Adresse Erstellung - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(117, 'en_US', 'Address creation - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(117, 'es_ES', 'Creación de dirección - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(117, 'fr_FR', 'Création d\'adresse - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(118, 'de_DE', 'Adresse Erstellung - unten im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(118, 'en_US', 'Address creation - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(118, 'es_ES', 'Creación de dirección - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(118, 'fr_FR', 'Création d\'adresse - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(119, 'de_DE', 'Adresse Erstellung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(119, 'en_US', 'Address creation - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(119, 'es_ES', 'Creación de dirección - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(119, 'fr_FR', 'Création d\'adresse - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(120, 'de_DE', 'Adresse Erstellung - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(120, 'en_US', 'Address creation - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(120, 'es_ES', 'Creación de dirección - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(120, 'fr_FR', 'Création d\'adresse - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(121, 'de_DE', 'Adresse Erstellung - nach der Integration von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(121, 'en_US', 'Address creation - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(121, 'es_ES', 'Creación de dirección- después del include javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(121, 'fr_FR', 'Création d\'adresse - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(122, 'de_DE', 'Adresse Erstellung - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(122, 'en_US', 'Address creation - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(122, 'es_ES', 'Creación de dirección - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(122, 'fr_FR', 'Création d\'adresse - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(123, 'de_DE', 'Ordnerseite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(123, 'en_US', 'Folder page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(123, 'es_ES', 'Carpeta de página - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(123, 'fr_FR', 'Page dossier - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(124, 'de_DE', 'Ordnerseite - oben an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(124, 'en_US', 'Folder page - at the top of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(124, 'es_ES', 'Carpeta de página - en la parte superior del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(124, 'fr_FR', 'Page dossier - en haut de la zone principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(125, 'de_DE', 'Ordnerseite - unten an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(125, 'en_US', 'Folder page - at the bottom of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(125, 'es_ES', 'Carpeta de página - al final del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(125, 'fr_FR', 'Page dossier - en bas de la zone principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(126, 'de_DE', 'Ordnerseite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(126, 'en_US', 'Folder page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(126, 'es_ES', 'Carpeta de página - al final', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(126, 'fr_FR', 'Page dossier - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(127, 'de_DE', 'Ordnerseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(127, 'en_US', 'Folder page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(127, 'es_ES', 'Página de la carpeta - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(127, 'fr_FR', 'Page dossier - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(128, 'de_DE', 'Ordnerseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(128, 'en_US', 'Folder page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(128, 'es_ES', 'Carpeta de página - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(128, 'fr_FR', 'Page dossier - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(129, 'de_DE', 'Ordnerseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(129, 'en_US', 'Folder page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(129, 'es_ES', 'Carpeta de página - después de inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(129, 'fr_FR', 'Page dossier - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(130, 'de_DE', 'Fehlschlag der Bestellung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(130, 'en_US', 'Order failed - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(130, 'es_ES', 'Pedido erróneo - al tope', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(130, 'fr_FR', 'Échec de la commande - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(131, 'de_DE', 'Fehlschlag der Bestellung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(131, 'en_US', 'Order failed - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(131, 'es_ES', 'Pedido erróneo - al pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(131, 'fr_FR', 'Échec de la commande - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(132, 'de_DE', 'Fehlschlag der Bestellung - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(132, 'en_US', 'Order failed - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(132, 'es_ES', 'Pedido erróneo - Hoja de Estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(132, 'fr_FR', 'Échec de la commande - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(133, 'de_DE', 'Fehlschlag der Bestellung - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(133, 'en_US', 'Order failed - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(133, 'es_ES', 'Pedido erróneo - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(133, 'fr_FR', 'Echec de la commande - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(134, 'de_DE', 'Fehlschlag der Bestellung - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(134, 'en_US', 'Order failed - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(134, 'es_ES', 'Pedido erróneo - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(134, 'fr_FR', 'Echec de la commande - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(135, 'de_DE', 'Kategorieseite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(135, 'en_US', 'Category page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(135, 'es_ES', 'Página de la categoría - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(135, 'fr_FR', 'Page catégorie - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(136, 'de_DE', 'Kategorieseite - oben an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(136, 'en_US', 'Category page - at the top of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(136, 'es_ES', 'Página de categoría - en la parte superior de la zona principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(136, 'fr_FR', 'Page catégorie - en haut de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(137, 'de_DE', 'Kategorieseite - unten an dem Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(137, 'en_US', 'Category page - at the bottom of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(137, 'es_ES', 'Página de la categoría - en la parte inferior de la zona principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(137, 'fr_FR', 'Page catégorie - en bas de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(138, 'de_DE', 'Kategorieseite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(138, 'en_US', 'Category page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(138, 'es_ES', 'Página de la categoría - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(138, 'fr_FR', 'Page catégorie - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(139, 'de_DE', 'Kategorieseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(139, 'en_US', 'Category page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(139, 'es_ES', 'Página de la categoría - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(139, 'fr_FR', 'Page catégorie - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(140, 'de_DE', 'Kategorieseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(140, 'en_US', 'Category page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(140, 'es_ES', 'Página de la categoría - después de inclusión javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(140, 'fr_FR', 'Page catégorie - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(141, 'de_DE', 'Kategorieseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(141, 'en_US', 'Category page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(141, 'es_ES', 'Página de la categoría - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(141, 'fr_FR', 'Page catégorie - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(142, 'de_DE', 'Adresseänderung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(142, 'en_US', 'Address update - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(142, 'es_ES', 'Actualizar dirección - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(142, 'fr_FR', 'Modification d\'adresse - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(143, 'de_DE', 'Adressänderung - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(143, 'en_US', 'Address update - at the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(143, 'es_ES', 'Actualizar dirección - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(143, 'fr_FR', 'Modification d\'adresse - en haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(144, 'de_DE', 'Adresseänderung - unten im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(144, 'en_US', 'Address update - at the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(144, 'es_ES', 'Actualización de dirección - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(144, 'fr_FR', 'Modification d\'adresse - en bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(145, 'de_DE', 'Adresseänderung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(145, 'en_US', 'Address update - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(145, 'es_ES', 'Actualización de dirección - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(145, 'fr_FR', 'Modification d\'adresse - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(146, 'de_DE', 'Adresseänderung - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(146, 'en_US', 'Address update - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(146, 'es_ES', 'Actualización de dirección - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(146, 'fr_FR', 'Modification d\'adresse - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(147, 'de_DE', 'Adresseänderung - nach der Integration von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(147, 'en_US', 'Address update - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(147, 'es_ES', 'Actualización de dirección - tras el include javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(147, 'fr_FR', 'Modification d\'adresse - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(148, 'de_DE', 'Adresseänderung - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(148, 'en_US', 'Address update - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(148, 'es_ES', 'Actualización de dirección - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(148, 'fr_FR', 'Modification d\'adresse - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(149, 'de_DE', 'Startseite - Hauptbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(149, 'en_US', 'Home page - main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(149, 'es_ES', 'Página de inicio - Área Principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(149, 'fr_FR', 'Page d\'accueil - zone principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(150, 'de_DE', 'Startseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(150, 'en_US', 'Home page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(150, 'es_ES', 'Página de inicio - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(150, 'fr_FR', 'Page d\'accueil - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(151, 'de_DE', 'Startseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(151, 'en_US', 'Home page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(151, 'es_ES', 'Página de inicio - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(151, 'fr_FR', 'Page d\'accueil - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(152, 'de_DE', 'Startseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(152, 'en_US', 'Home page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(152, 'es_ES', 'Página de inicio - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(152, 'fr_FR', 'Page d\'accueil - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(153, 'de_DE', 'Passwort Änderung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(153, 'en_US', 'Change password - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(153, 'es_ES', 'Cambiar contraseña - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(153, 'fr_FR', 'Changement de mot de passe - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(154, 'de_DE', 'Passwort Änderung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(154, 'en_US', 'Change password - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(154, 'es_ES', 'Cambiar contraseña - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(154, 'fr_FR', 'Changement de mot de passe - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(155, 'de_DE', 'Passwort Änderung - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(155, 'en_US', 'Change password - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(155, 'es_ES', 'Cambiar contraseña - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(155, 'fr_FR', 'Changement de mot de passe - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(156, 'de_DE', 'Passwort Änderung - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(156, 'en_US', 'Change password - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(156, 'es_ES', 'Cambiar contraseña - después de inclusión javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(156, 'fr_FR', 'Changement de mot de passe - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(157, 'de_DE', 'Passwort Änderung - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(157, 'en_US', 'Change password - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(157, 'es_ES', 'Cambiar contraseña - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(157, 'fr_FR', 'Changement de mot de passe - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(158, 'de_DE', 'Produktseite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(158, 'en_US', 'Product page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(158, 'es_ES', 'Página de producto - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(158, 'fr_FR', 'Page produit - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(159, 'de_DE', 'Produktseite - Bilder-Gallerie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(159, 'en_US', 'Product page - photo gallery', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(159, 'es_ES', 'Página de producto - Galería de fotos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(159, 'fr_FR', 'Page produit - galerie photos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(160, 'de_DE', 'Produktseite - oben dem Details-Bereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(160, 'en_US', 'Product page - at the top of the detail', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(160, 'es_ES', 'Página de producto - en la parte superior del detalle', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(160, 'fr_FR', 'Page produit - en haut de la zone détail', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(161, 'de_DE', 'Produktseite - unten dem Details-Bereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(161, 'en_US', 'Product page - at the bottom of the detail area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(161, 'es_ES', 'Página de producto - en la parte inferior del área de detalle', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(161, 'fr_FR', 'Page produit - en dessous de la zone de détail', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(162, 'de_DE', 'Produktseite - erweitere Informationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(162, 'en_US', 'Product page - additional information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(162, 'es_ES', 'Página de producto - información adicional', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(162, 'fr_FR', 'Page produit - informations additionnelles', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(163, 'de_DE', 'Produktseite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(163, 'en_US', 'Product page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(163, 'es_ES', 'Página de producto - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(163, 'fr_FR', 'Page produit - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(164, 'de_DE', 'Produktseite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(164, 'en_US', 'Product page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(164, 'es_ES', 'Página de producto - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(164, 'fr_FR', 'Page produit - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(165, 'de_DE', 'Produktseite - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(165, 'en_US', 'Product page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(165, 'es_ES', 'Página de producto - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(165, 'fr_FR', 'Page produit - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(166, 'de_DE', 'Produktseite - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(166, 'en_US', 'Product page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(166, 'es_ES', 'Página de producto - después de la inicialización de Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(166, 'fr_FR', 'Page produit - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(167, 'de_DE', 'Kundenkonto - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(167, 'en_US', 'customer account - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(167, 'es_ES', 'cuenta de cliente - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(167, 'fr_FR', 'Compte client - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(168, 'de_DE', 'Kundenkonto - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(168, 'en_US', 'customer account - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(168, 'es_ES', 'cuenta de cliente - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(168, 'fr_FR', 'Compte client - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(169, 'de_DE', 'Kundenkonto - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(169, 'en_US', 'customer account - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(169, 'es_ES', 'cuenta de cliente - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(169, 'fr_FR', 'Compte client - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(170, 'de_DE', 'Kundenkonto - Nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(170, 'en_US', 'customer account - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(170, 'es_ES', 'cuenta de cliente - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(170, 'fr_FR', 'Compte client - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(171, 'de_DE', 'Kundenkonto - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(171, 'en_US', 'customer account - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(171, 'es_ES', 'cuenta de cliente - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(171, 'fr_FR', 'Compte client - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(172, 'de_DE', 'Alle Produkte - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(172, 'en_US', 'All Products - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(172, 'es_ES', 'Todos los productos - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(172, 'fr_FR', 'Tous les produits - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(173, 'de_DE', 'Alle Produkte - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(173, 'en_US', 'All Products - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(173, 'es_ES', 'Todos los productos - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(173, 'fr_FR', 'Tous les produits - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(174, 'de_DE', 'Alle Produkte - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(174, 'en_US', 'All Products - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(174, 'es_ES', 'Todos los productos - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(174, 'fr_FR', 'Tous les produits - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(175, 'de_DE', 'Alle Produkte - nach der Integration von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(175, 'en_US', 'All Products - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(175, 'es_ES', 'Todos los productos - después de include javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(175, 'fr_FR', 'Tous les produits - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(176, 'de_DE', 'Alle Produkte - nach der Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(176, 'en_US', 'All Products - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(176, 'es_ES', 'Todos los productos - después de la inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(176, 'fr_FR', 'Tous les produits - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(177, 'de_DE', 'Produkt-Loop - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(177, 'en_US', 'Product loop - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(177, 'es_ES', 'Ciclo del producto - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(177, 'fr_FR', 'Boucle produit - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(178, 'de_DE', 'Produkt-Loop - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(178, 'en_US', 'Product loop - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(178, 'es_ES', 'Ciclo del producto - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(178, 'fr_FR', 'Boucle produit - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(179, 'de_DE', 'Kategorieseite - oben an der Sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(179, 'en_US', 'Category page - at the top of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(179, 'es_ES', 'Página de categoría - en la parte inferior de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(179, 'fr_FR', 'Page catégorie - en haut de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(180, 'de_DE', 'Kategorieseite - Sidebars Body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(180, 'en_US', 'Category page - the body of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(180, 'es_ES', 'Página de categoría - el cuerpo de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(180, 'fr_FR', 'Page catégorie - le corps de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(181, 'de_DE', 'Kategorieseite - unten an der Sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(181, 'en_US', 'Category page - at the bottom of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(181, 'es_ES', 'Página de la categoría - en la parte inferior de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(181, 'fr_FR', 'Page catégorie - en bas de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(182, 'de_DE', 'Inhaltseite - oben an der Sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(182, 'en_US', 'Content page - at the top of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(182, 'es_ES', 'Página de contenido - en la parte superior de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(182, 'fr_FR', 'Page de contenu - en haut de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(183, 'de_DE', 'Inhaltseite - Sidebars Body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(183, 'en_US', 'Content page - the body of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(183, 'es_ES', 'Página de contenido - cuerpo de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(183, 'fr_FR', 'Page de contenu - le corps de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(184, 'de_DE', 'Inhaltseite - unten an der Sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(184, 'en_US', 'Content page - at the bottom of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(184, 'es_ES', 'Página de contenido - en la parte inferior de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(184, 'fr_FR', 'Page de contenu - en bas de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(185, 'de_DE', 'Lieferwahl - Erweiteren Bereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(185, 'en_US', 'Delivery choice - extra area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(185, 'es_ES', 'Opción de entrega - área extra', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(185, 'fr_FR', 'Choix du transporteur - zone supplémentaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(186, 'de_DE', 'Lieferwahl - Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(186, 'en_US', 'Delivery choice - javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(186, 'es_ES', 'Opción de entrega - javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(186, 'fr_FR', 'Choix du transporteur - javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(187, 'de_DE', 'Kategorieseite - vor dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(187, 'en_US', 'Category page - before the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(187, 'es_ES', 'Página de categoría - antes el área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(187, 'fr_FR', 'Page catégorie - au dessus de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(188, 'de_DE', 'Kategorieseite - nach dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(188, 'en_US', 'Category page - after the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(188, 'es_ES', 'Página de la categoría - después el área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(188, 'fr_FR', 'Page catégorie - en dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(189, 'de_DE', 'Inhaltseite- vor dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(189, 'en_US', 'Content page - before the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(189, 'es_ES', 'Página de contenido - antes del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(189, 'fr_FR', 'Page de contenu - au dessus de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(190, 'de_DE', 'Inhaltseite - nach dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(190, 'en_US', 'Content page - after the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(190, 'es_ES', 'Página de contenido - después del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(190, 'fr_FR', 'Page de contenu - en dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(191, 'de_DE', 'Ordnerseite - vor dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(191, 'en_US', 'Folder page - before the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(191, 'es_ES', 'Carpeta de página - antes del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(191, 'fr_FR', 'Page dossier - au dessus de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(192, 'de_DE', 'Ordnerseite - nach dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(192, 'en_US', 'Folder page - after the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(192, 'es_ES', 'Carpeta de página - después del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(192, 'fr_FR', 'Page dossier - en dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(193, 'de_DE', 'Marken Seite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(193, 'en_US', 'Brands page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(193, 'es_ES', 'Página de las marcas - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(193, 'fr_FR', 'Page des marques - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(194, 'de_DE', 'Marken Seite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(194, 'en_US', 'Brands page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(194, 'es_ES', 'Página de las marcas - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(194, 'fr_FR', 'Page des marques - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(195, 'de_DE', 'Marken Seite - oben des Hauptbereichs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(195, 'en_US', 'Brands page - at the top of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(195, 'es_ES', 'Página de las marcas - en la parte inferior del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(195, 'fr_FR', 'Page des marques - en haut de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(196, 'de_DE', 'Marken Seite - unten des Hauptbereichs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(196, 'en_US', 'Brands page - at the bottom of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(196, 'es_ES', 'Página de las marcas - en la parte inferior del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(196, 'fr_FR', 'Page des marques - en bas de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(197, 'de_DE', 'Marken Seite - vor dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(197, 'en_US', 'Brands page - before the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(197, 'es_ES', 'Página de marcas - antes del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(197, 'fr_FR', 'Page des marques - au dessus de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(198, 'de_DE', 'Marken Seite - Nach dem Hauptinhalt Bereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(198, 'en_US', 'Brands page - after the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(198, 'es_ES', 'Página de marcas - después el área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(198, 'fr_FR', 'Page des marques - en dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(199, 'de_DE', 'Marken Seite - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(199, 'en_US', 'Brands page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(199, 'es_ES', 'Página de marcas - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(199, 'fr_FR', 'Page des marques - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(200, 'de_DE', 'Marken Seite - Nach der Integration von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(200, 'en_US', 'Brands page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(200, 'es_ES', 'Página de marcas - después de inclusión de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(200, 'fr_FR', 'Page des marques - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(201, 'de_DE', 'Marken Seite - Javascript Initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(201, 'en_US', 'Brands page - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(201, 'es_ES', 'Página de marcas - inicialización de javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(201, 'fr_FR', 'Page des marques - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(202, 'de_DE', 'Marken Seite - oben der Sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(202, 'en_US', 'Brands page - at the top of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(202, 'es_ES', 'Página de las marcas - en la parte inferior de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(202, 'fr_FR', 'Page des marques - en haut de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(203, 'de_DE', 'Marken Seite - Sidebars Body', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(203, 'en_US', 'Brands page - the body of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(203, 'es_ES', 'Página de marcas - el cuerpo de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(203, 'fr_FR', 'Page des marques - le corps de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(204, 'de_DE', 'Marken Seite - unten der Sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(204, 'en_US', 'Brands page - at the bottom of the sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(204, 'es_ES', 'Página de las marcas - en la parte inferior de la barra lateral', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(204, 'fr_FR', 'Page des marques - en bas de la sidebar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(205, 'de_DE', 'Bestellungsdetails - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(205, 'en_US', 'Order details - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(205, 'es_ES', 'Detalles de la orden - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(205, 'fr_FR', 'Détail d\'une commande - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(206, 'de_DE', 'Bestellungsdetails - weitere Informationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(206, 'en_US', 'Order details - additional information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(206, 'es_ES', 'Detalles de la Orden - información adicional', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(206, 'fr_FR', 'Détail d\'une commande - informations additionnelles', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(207, 'de_DE', 'Bestellungsdetails - nach den allgemeinen Informationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(207, 'en_US', 'Order details - after global information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(207, 'es_ES', 'Detalles de la orden - después de la información global', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(207, 'fr_FR', 'Détail d\'une commande - après les informations générales', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(208, 'de_DE', 'Bestellungsdetails - weitere Informationen für den Versand', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(208, 'en_US', 'Order details - additional delivery information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(208, 'es_ES', 'Detalles de la Orden - información adicional del envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(208, 'fr_FR', 'Détail d\'une commande - informations additionnelles pour l\'expédition', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(209, 'de_DE', 'Bestellungsdetails - Lieferadresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(209, 'en_US', 'Order details - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(209, 'es_ES', 'Pedir detalles - dirección de envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(209, 'fr_FR', 'Détail d\'une commande - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(210, 'de_DE', 'Bestellungsdetails - weitere Informationen für die Rechnung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(210, 'en_US', 'Order details - additional invoice information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(210, 'es_ES', 'Detalles de la Orden - información adicional de la factura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(210, 'fr_FR', 'Détail d\'une commande - informations additionnelles pour la facturation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(211, 'de_DE', 'Bestellungsdetails - Rechnungsadresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(211, 'en_US', 'Order details - invoice address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(211, 'es_ES', 'Detalles de la orden - dirección de factura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(211, 'fr_FR', 'Détail d\'une commande - adresse de facturation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(212, 'de_DE', 'Bestellungsdetails - Nach den Adressen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(212, 'en_US', 'Order details - after addresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(212, 'es_ES', 'Detalles de la Orden - después de direcciones', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(212, 'fr_FR', 'Détail d\'une commande - Après les adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(213, 'de_DE', 'Bestellungsdetails - vor der Produktliste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(213, 'en_US', 'Order details - before products list', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(213, 'es_ES', 'Detalles de la orden - antes de lista de productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(213, 'fr_FR', 'Détail d\'une commande - avant la liste des produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(214, 'de_DE', 'Bestellungsdetails - weitere Informationen für ein Produkt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(214, 'en_US', 'Order details - additional product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(214, 'es_ES', 'Detalles de la Orden - información adicional del producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(214, 'fr_FR', 'Détail d\'une commande - informations additionnelles pour un produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(215, 'de_DE', 'Bestellungsdetails - nach der Produktliste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(215, 'en_US', 'Order details - after products list', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(215, 'es_ES', 'Detalles de la orden - después de la lista de productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(215, 'fr_FR', 'Détail d\'une commande - après la liste des produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(216, 'de_DE', 'Bestellungsdetails - nach den Produkten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(216, 'en_US', 'Order details - after products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(216, 'es_ES', 'Detalles de la orden - después de los productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(216, 'fr_FR', 'Détail d\'une commande - Après les produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(217, 'de_DE', 'Bestellungsdetails - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(217, 'en_US', 'Order details - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(217, 'es_ES', 'Detalles de la orden - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(217, 'fr_FR', 'Détail d\'une commande - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(218, 'de_DE', 'Bestellungsdetails - CSS-Stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(218, 'en_US', 'Order details - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(218, 'es_ES', 'Detalles de la Orden - hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(218, 'fr_FR', 'Détail d\'une commande - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(219, 'de_DE', 'Bestellungsdetails - nach Integration von JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(219, 'en_US', 'Order details - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(219, 'es_ES', 'Detalles de la orden - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(219, 'fr_FR', 'Détail d\'une commande - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(220, 'de_DE', 'Bestellungsdetails - Initialisierung von Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(220, 'en_US', 'Order details - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(220, 'es_ES', 'Detalles de la Orden - inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(220, 'fr_FR', 'Détail d\'une commande - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(221, 'de_DE', 'Kundenkonto - Erweitere Informationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(221, 'en_US', 'Customer account - additional information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(221, 'es_ES', 'Cuenta de cliente - información adicional', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(221, 'fr_FR', 'Compte client - informations additionnelles', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(222, 'de_DE', 'Bestelldaten - nach einem Produkt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(222, 'en_US', 'Order details - after product', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(222, 'es_ES', 'Detalles de la orden - después del producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(222, 'fr_FR', 'Détail d\'une commande - Après un produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(223, 'de_DE', 'Mini-Warenkorb', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(223, 'en_US', 'Mini cart', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(223, 'es_ES', 'Mini tarjeta', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(223, 'fr_FR', 'Mini panier', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(224, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(224, 'en_US', 'Sale - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(224, 'es_ES', 'Venta - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(224, 'fr_FR', 'Promotion - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(225, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(225, 'en_US', 'Sale - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(225, 'es_ES', 'Venta - al pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(225, 'fr_FR', 'Promotion - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(226, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(226, 'en_US', 'Sale - at the top of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(226, 'es_ES', 'Venta - encabezado del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(226, 'fr_FR', 'Promotion - en haut de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(227, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(227, 'en_US', 'Sale - at the bottom of the main area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(227, 'es_ES', 'Venta - al pie del área principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(227, 'fr_FR', 'Promotion - en bas de la zone principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(228, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(228, 'en_US', 'Sale - before the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(228, 'es_ES', 'Venta - antes del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(228, 'fr_FR', 'Promotion - au dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(229, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(229, 'en_US', 'Sale - after the main content area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(229, 'es_ES', 'Venta - después del área de contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(229, 'fr_FR', 'Promotion - en dessous de la zone de contenu principale', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(230, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(230, 'en_US', 'Sale - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(230, 'es_ES', 'Venta - Hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(230, 'fr_FR', 'Promotion - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(231, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(231, 'en_US', 'Sale - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(231, 'es_ES', 'Venta - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(231, 'fr_FR', 'Promotion - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(232, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(232, 'en_US', 'Sale - javascript initialization', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(232, 'es_ES', 'Venta - inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(232, 'fr_FR', 'Promotion - initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(233, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(233, 'en_US', 'Order details - after invoice address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(233, 'es_ES', 'Detalles de pedido - después de la dirección de facturación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(233, 'fr_FR', 'Détail d\'une commande - après l\'adresse de facturation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(234, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(234, 'en_US', 'Order details - after delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(234, 'es_ES', 'Detalles de pedido - después de la dirección de entrega', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(234, 'fr_FR', 'Détails d\'une commande - après l\'adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(235, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(235, 'en_US', 'Newsletter unsubscribe page - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(235, 'es_ES', 'Página de baja del boletín - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(235, 'fr_FR', 'Désabonnement newsletter - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(236, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(236, 'en_US', 'Newsletter unsubscribe page - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(236, 'es_ES', 'Página de baja del boletín - al pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(236, 'fr_FR', 'Désabonnement newsletter - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(237, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(237, 'en_US', 'Newsletter unsubscribe page - CSS stylesheet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(237, 'es_ES', 'Página de baja del boletín - Hoja de estilos CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(237, 'fr_FR', 'Désabonnement newsletter - feuille de style CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(238, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(238, 'en_US', 'Newsletter unsubscribe page - after javascript include', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(238, 'es_ES', 'Página de baja del boletín - después de incluir JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(238, 'fr_FR', 'Désabonnement newsletter - après l\'inclusion du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(239, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(239, 'en_US', 'Newsletter unsubscribe page - after javascript initialisation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(239, 'es_ES', 'Página de baja del boletín - después de la inicialización de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(239, 'fr_FR', 'Désabonnement newsletter - après l\'initialisation du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(240, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(240, 'en_US', 'Order invoice page - bottom of coupon form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(240, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(240, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(241, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(241, 'en_US', 'Order invoice page - bottom of payment form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(241, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(241, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(242, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(242, 'en_US', 'Account order - after product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(242, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(242, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1000, 'de_DE', 'Kategorie - Inhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1000, 'en_US', 'Category - content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1000, 'es_ES', 'Categoría - contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1000, 'fr_FR', 'Catégorie - contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1001, 'de_DE', 'Inhalt - Inhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1001, 'en_US', 'Content - content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1001, 'es_ES', 'Contenido - contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1001, 'fr_FR', 'Contenu - contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1002, 'de_DE', 'Ordner - Inhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1002, 'en_US', 'Folder - content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1002, 'es_ES', 'Carpeta - contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1002, 'fr_FR', 'Dossier - contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1003, 'de_DE', 'Bestellung - Inhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1003, 'en_US', 'Order - content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1003, 'es_ES', 'Orden - contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1003, 'fr_FR', 'Commande - contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1004, 'de_DE', 'Produkt - Inhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1004, 'en_US', 'Product - content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1004, 'es_ES', 'Producto - contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1004, 'fr_FR', 'Produit - contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1005, 'de_DE', 'Karakteristiken-Angaben - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1005, 'en_US', 'Features value - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1005, 'es_ES', 'Valor Característica - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1005, 'fr_FR', 'Valeur de caractéristiques - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1006, 'de_DE', 'Karakteristiken-Angaben - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1006, 'en_US', 'Features value - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1006, 'es_ES', 'Valor Característica - fila de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1006, 'fr_FR', 'Valeur de caractéristiques - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1007, 'de_DE', 'Karakteristik - Angabe-Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1007, 'en_US', 'Feature - Value create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1007, 'es_ES', 'Característica - Formulario para crear valor', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1007, 'fr_FR', 'Caractéristique - Formulaire de création de valeur', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1008, 'de_DE', 'Karakteristik - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1008, 'en_US', 'Feature - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1008, 'es_ES', 'Característica - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1008, 'fr_FR', 'Caractéristique - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1009, 'de_DE', 'Produkt - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1009, 'en_US', 'Product - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1009, 'es_ES', 'Producto - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1009, 'fr_FR', 'Produit - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1010, 'de_DE', 'Gutschein - JavaScript erstellen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1010, 'en_US', 'Coupon - create JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1010, 'es_ES', 'Cupón - crear JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1010, 'fr_FR', 'Code promo - JavaScript création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1011, 'de_DE', 'Taxes - Änderungs-Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1011, 'en_US', 'Taxes - update form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1011, 'es_ES', 'Impuestos - formulario de actualización', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1011, 'fr_FR', 'Taxes - formulaire de modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1012, 'de_DE', 'Taxregel - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1012, 'en_US', 'tax rule - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1012, 'es_ES', 'regla de impuesto - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1012, 'fr_FR', 'Règle de taxe - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1013, 'de_DE', 'Tools - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1013, 'en_US', 'Tools - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1013, 'es_ES', 'Herramientas - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1013, 'fr_FR', 'Outils - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1014, 'de_DE', 'Tools - oben der Spalte', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1014, 'en_US', 'Tools - at the top of the column', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1014, 'es_ES', 'Herramientas - en la parte superior de la columna', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1014, 'fr_FR', 'Outils - en haut de la colonne', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1015, 'de_DE', 'Tools - unten der Spalte 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1015, 'en_US', 'Tools - at the bottom of column 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1015, 'es_ES', 'Herramientas - en la parte inferior de la columna 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1015, 'fr_FR', 'Outils - en bas de la colonne 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1016, 'de_DE', 'Tools - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1016, 'en_US', 'Tools - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1016, 'es_ES', 'Herramientas - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1016, 'fr_FR', 'Outils - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1017, 'de_DE', 'Tools - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1017, 'en_US', 'Tools - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1017, 'es_ES', 'Herramientas - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1017, 'fr_FR', 'Outils - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1018, 'de_DE', 'Nachrichten - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1018, 'en_US', 'Messages - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1018, 'es_ES', 'Mensajes - al tope', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1018, 'fr_FR', 'Messages - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1019, 'de_DE', 'Nachrichten - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1019, 'en_US', 'Messages - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1019, 'es_ES', 'Mensajes - encabezado de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1019, 'fr_FR', 'Messages - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1020, 'de_DE', 'Nachrichten - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1020, 'en_US', 'Messages - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1020, 'es_ES', 'Mensajes - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1020, 'fr_FR', 'Messages - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1021, 'de_DE', 'Nachrichten - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1021, 'en_US', 'Messages - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1021, 'es_ES', 'Mensajes - base', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1021, 'fr_FR', 'Messages - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1022, 'de_DE', 'Nachricht - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1022, 'en_US', 'Message - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1022, 'es_ES', 'Mensaje - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1022, 'fr_FR', 'Message - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1023, 'de_DE', 'Nachricht - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1023, 'en_US', 'Message - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1023, 'es_ES', 'Mensaje - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1023, 'fr_FR', 'Message - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1024, 'de_DE', 'Nachrichten - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1024, 'en_US', 'Messages - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1024, 'es_ES', 'Mensajes - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1024, 'fr_FR', 'Messages - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1025, 'de_DE', 'Taxeregeln - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1025, 'en_US', 'Taxes rules - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1025, 'es_ES', 'Reglas de impuestos - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1025, 'fr_FR', 'Règles de taxes - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1026, 'de_DE', 'Taxeregeln - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1026, 'en_US', 'Taxes rules - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1026, 'es_ES', 'Reglas de impuestos - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1026, 'fr_FR', 'Règles de taxes - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1027, 'de_DE', 'Taxe - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1027, 'en_US', 'Tax - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1027, 'es_ES', 'Impuesto - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1027, 'fr_FR', 'Taxe - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1028, 'de_DE', 'Taxe - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1028, 'en_US', 'Tax - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1028, 'es_ES', 'Impuesto - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1028, 'fr_FR', 'Taxe - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1029, 'de_DE', 'Taxregel - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1029, 'en_US', 'tax rule - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1029, 'es_ES', 'regla de impuesto - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1029, 'fr_FR', 'Règle de taxe - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1030, 'de_DE', 'Taxregel - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1030, 'en_US', 'tax rule - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1030, 'es_ES', 'regla de impuesto - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1030, 'fr_FR', 'Règle de taxe - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1031, 'de_DE', 'Taxeregeln - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1031, 'en_US', 'Taxes rules - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1031, 'es_ES', 'Reglas de impuestos - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1031, 'fr_FR', 'Règles de taxes - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1032, 'de_DE', 'Exporte - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1032, 'en_US', 'Exports - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1032, 'es_ES', 'Exportar - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1032, 'fr_FR', 'Exports - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1033, 'de_DE', 'Exporte - unten einer Kategorie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1033, 'en_US', 'Exports - at the bottom of a category', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1033, 'es_ES', 'Exportar - en la parte inferior de una categoría', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1033, 'fr_FR', 'Exports - en bas d\'une catégorie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1034, 'de_DE', 'Exporte - unten der Spalte 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1034, 'en_US', 'Exports - at the bottom of column 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1034, 'es_ES', 'Exportar - en la parte inferior de la columna 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1034, 'fr_FR', 'Exports - en bas de la colonne 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1035, 'de_DE', 'Exporte - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1035, 'en_US', 'Exports - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1035, 'es_ES', 'Exportar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1035, 'fr_FR', 'Exports - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1036, 'de_DE', 'Export - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1036, 'en_US', 'Export - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1036, 'es_ES', 'Exportación - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1036, 'fr_FR', 'Export - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1037, 'de_DE', 'Produkt - Ordner Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1037, 'en_US', 'Product - folders table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1037, 'es_ES', 'Producto - encabezado de la tabla de carpetas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1037, 'fr_FR', 'Produit - colonne tableau dossiers', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1038, 'de_DE', 'Produkt - Ordner Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1038, 'en_US', 'Product - folders table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1038, 'es_ES', 'Producto - fila de la tabla de carpetas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1038, 'fr_FR', 'Produit - ligne tableau dossiers', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1039, 'de_DE', 'Produkt - Preisedetails Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1039, 'en_US', 'Product - details pricing form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1039, 'es_ES', 'Producto - formato de detalles del precio', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1039, 'fr_FR', 'Produit - Formulaire détail des prix', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1040, 'de_DE', 'Produkt - Bestandänderung Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1040, 'en_US', 'Product - stock edit form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1040, 'es_ES', 'Producto - Editar formulario de stock', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1040, 'fr_FR', 'Produit - formulaire de modification du stock', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1041, 'de_DE', 'Produkt - Sonderangebotdetails Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1041, 'en_US', 'Product - details promotion form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1041, 'es_ES', 'Producto - formulario de detalles de la promoción', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1041, 'fr_FR', 'Produit - Formulaire détail des promotions', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1042, 'de_DE', 'Produkt - vor den Kombinationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1042, 'en_US', 'Product - before combinations', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1042, 'es_ES', 'Producto - después de las combinaciones', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1042, 'fr_FR', 'Produit - avant les déclinaisons', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1043, 'de_DE', 'Produkt - Kombinationsliste-Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1043, 'en_US', 'Product - combinations list caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1043, 'es_ES', 'Producto - título de la lista de combinaciones', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1043, 'fr_FR', 'Produit - légende liste des déclinaisons', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1044, 'de_DE', 'Produkt - nach den Kombinationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1044, 'en_US', 'Product - after combinations', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1044, 'es_ES', 'Producto - después de las combinaciones', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1044, 'fr_FR', 'Produit - après les déclinaisons', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1045, 'de_DE', 'Produkt - Kombinations-Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1045, 'en_US', 'Product - combination delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1045, 'es_ES', 'Producto - Formulario para borrar combinaciones', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1045, 'fr_FR', 'Produit - formulaire de suppression de combinaison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1046, 'de_DE', 'Modulen - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1046, 'en_US', 'Modules - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1046, 'es_ES', 'Módulos - encabezado de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1046, 'fr_FR', 'Modules - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1047, 'de_DE', 'Modulen - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1047, 'en_US', 'Modules - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1047, 'es_ES', 'Módulos - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1047, 'fr_FR', 'Modules - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1048, 'de_DE', 'Währung - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1048, 'en_US', 'Currency - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1048, 'es_ES', 'Divisas - Editar javaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1048, 'fr_FR', 'Devise - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1049, 'de_DE', 'Kategorie - Inhalts Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1049, 'en_US', 'Category - contents table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1049, 'es_ES', 'Categoría - encabezado de tabla de contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1049, 'fr_FR', 'Catégorie - colonne tableau contenus', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1050, 'de_DE', 'Kategorie - Inhalts Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1050, 'en_US', 'Category - contents table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1050, 'es_ES', 'Categoría - fila de la tabla de contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1050, 'fr_FR', 'Catégorie - ligne tableau contenus', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1051, 'de_DE', 'Kategorie - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1051, 'en_US', 'Category - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1051, 'es_ES', 'Categoría - edición JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1051, 'fr_FR', 'Catégorie - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1052, 'de_DE', 'Dokument - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1052, 'en_US', 'Document - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1052, 'es_ES', 'Documento - edición JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1052, 'fr_FR', 'Document - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1053, 'de_DE', 'Kunde - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1053, 'en_US', 'Customer - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1053, 'es_ES', 'Cliente - en la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1053, 'fr_FR', 'Client - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1054, 'de_DE', 'Kunden - Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1054, 'en_US', 'Customers - caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1054, 'es_ES', 'Clientes - texto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1054, 'fr_FR', 'Clients - légende', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1055, 'de_DE', 'Kunden - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1055, 'en_US', 'Customers - header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1055, 'es_ES', 'Clientes - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1055, 'fr_FR', 'Clients - en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1056, 'de_DE', 'Kunden - Zeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1056, 'en_US', 'Customers - row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1056, 'es_ES', 'Clientes - fila', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1056, 'fr_FR', 'Clients - ligne', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1057, 'de_DE', 'Kunde - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1057, 'en_US', 'Customer - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1057, 'es_ES', 'Cliente - pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1057, 'fr_FR', 'Client - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1058, 'de_DE', 'Kunde - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1058, 'en_US', 'Customer - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1058, 'es_ES', 'Cliente - formulario creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1058, 'fr_FR', 'Client - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1059, 'de_DE', 'Kunde - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1059, 'en_US', 'Customer - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1059, 'es_ES', 'Cliente - formulario eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1059, 'fr_FR', 'Client - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1060, 'de_DE', 'Kunden - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1060, 'en_US', 'Customers - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1060, 'es_ES', 'Clientes - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1060, 'fr_FR', 'Clients - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1061, 'de_DE', 'Produkt - Inhalte Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1061, 'en_US', 'Product - contents table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1061, 'es_ES', 'Producto - contenidos del encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1061, 'fr_FR', 'Produit - colonne tableau contenus', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1062, 'de_DE', 'Produkt - Inhalte Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1062, 'en_US', 'Product - contents table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1062, 'es_ES', 'Producto - contenidos de la fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1062, 'fr_FR', 'Produit - ligne tableau contenus', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1063, 'de_DE', 'Produkt - Zubehör Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1063, 'en_US', 'Product - accessories table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1063, 'es_ES', 'Producto - encabezado de la tabla accesoria', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1063, 'fr_FR', 'Produit - colonne tableau accessoires', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1064, 'de_DE', 'Produkt - Zubehör Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1064, 'en_US', 'Product - accessories table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1064, 'es_ES', 'Producto - fila de la tabla de accesorios', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1064, 'fr_FR', 'Produit - ligne tableau accessoires', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1065, 'de_DE', 'Produkt - Kategorien Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1065, 'en_US', 'Product - categories table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1065, 'es_ES', 'Producto - encabezado de la tabla de categorías', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1065, 'fr_FR', 'Produit - colonne tableau catégories', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1066, 'de_DE', 'Produkt - Kategorien Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1066, 'en_US', 'Product - categories table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1066, 'es_ES', 'Producto - fila de la tabla de categorías', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1066, 'fr_FR', 'Produit - ligne tableau catégories', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1067, 'de_DE', 'Produkt - Deklination Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1067, 'en_US', 'Product - attributes table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1067, 'es_ES', 'Producto - encabezado de la tabla de atributos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1067, 'fr_FR', 'Produit - colonne tableau attributs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1068, 'de_DE', 'Produkt - Deklination Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1068, 'en_US', 'Product - attributes table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1068, 'es_ES', 'Producto - fila de la tabla de atributos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1068, 'fr_FR', 'Produit - ligne tableau attributs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1069, 'de_DE', 'Produkt - Charakteristiken Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1069, 'en_US', 'Product - features-table-header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1069, 'es_ES', 'Producto - encabezado de la tabla de características', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1069, 'fr_FR', 'Produit - colonne tableau caractéristiques', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1070, 'de_DE', 'Produkt - Charakteristiken Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1070, 'en_US', 'Product - features table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1070, 'es_ES', 'Producto - fila de la tabla de características', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1070, 'fr_FR', 'Produit - ligne tableau caractéristiques', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1071, 'de_DE', 'Template - Tabellenkopf attributs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1071, 'en_US', 'Template - attributes table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1071, 'es_ES', 'Plantilla - cabecera de la tabla de atributos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1071, 'fr_FR', 'Gabarit - colonne tableau attributs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1072, 'de_DE', 'Template - Tabellenzeile attributs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1072, 'en_US', 'Template - attributes table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1072, 'es_ES', 'Plantilla - fila de la tabla de atributos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1072, 'fr_FR', 'Gabarit - ligne tableau attributs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1073, 'de_DE', 'Template - Charakteristiken Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1073, 'en_US', 'Template - features-table-header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1073, 'es_ES', 'Plantilla - encabezado de tabla de características', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1073, 'fr_FR', 'Gabarit - colonne tableau caractéristiques', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1074, 'de_DE', 'Template - Charakteristiken Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1074, 'en_US', 'Template - features table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1074, 'es_ES', 'Plantilla - fila de la tabla de características', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1074, 'fr_FR', 'Gabarit - ligne tableau caractéristiques', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1075, 'de_DE', 'Templates - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1075, 'en_US', 'Templates - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1075, 'es_ES', 'Plantillas - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1075, 'fr_FR', 'Gabarits - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1076, 'de_DE', 'Templates - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1076, 'en_US', 'Templates - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1076, 'es_ES', 'Plantillas - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1076, 'fr_FR', 'Gabarits - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1077, 'de_DE', 'Templates - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1077, 'en_US', 'Templates - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1077, 'es_ES', 'Plantillas - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1077, 'fr_FR', 'Gabarits - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1078, 'de_DE', 'Templates - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1078, 'en_US', 'Templates - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1078, 'es_ES', 'Plantillas - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1078, 'fr_FR', 'Gabarits - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1079, 'de_DE', 'Template - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1079, 'en_US', 'Template - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1079, 'es_ES', 'Plantilla - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1079, 'fr_FR', 'Gabarit - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1080, 'de_DE', 'Template - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1080, 'en_US', 'Template - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1080, 'es_ES', 'Plantilla - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1080, 'fr_FR', 'Gabarit - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1081, 'de_DE', 'Templates - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1081, 'en_US', 'Templates - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1081, 'es_ES', 'Plantillas - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1081, 'fr_FR', 'Gabarits - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1082, 'de_DE', 'Konfiguration - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1082, 'en_US', 'Configuration - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1082, 'es_ES', 'Configuración - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1082, 'fr_FR', 'Configuration - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1083, 'de_DE', 'Konfiguration - oben an dem Katalogsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1083, 'en_US', 'Configuration - at the top of the catalog area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1083, 'es_ES', 'Configuración - en la parte superior de la zona de catálogo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1083, 'fr_FR', 'Configuration - en haut de la zone catalogue', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1084, 'de_DE', 'Konfiguration - unten an dem katalog', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1084, 'en_US', 'Configuration - at the bottom of the catalog', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1084, 'es_ES', 'Configuración - en la parte inferior del catálogo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1084, 'fr_FR', 'Configuration - en bas du catlogue', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1085, 'de_DE', 'Konfiguration - oben an der Lieferzone', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1085, 'en_US', 'Configuration - at the top of the shipping area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1085, 'es_ES', 'Configuración - en la parte superior del área de envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1085, 'fr_FR', 'Configuration - en haut de la zone livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1086, 'de_DE', 'Konfiguration - unten an der Lieferzone', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1086, 'en_US', 'Configuration - at the bottom of the shipping area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1086, 'es_ES', 'Configuración - en la parte inferior de la zona de envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1086, 'fr_FR', 'Configuration - en bas de la zone livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1087, 'de_DE', 'Konfiguration - oben an dem Systembereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1087, 'en_US', 'Configuration - at the top of the system area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1087, 'es_ES', 'Configuración - en la parte superior del área del sistema', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1087, 'fr_FR', 'Configuration - en haut de la zone système', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1088, 'de_DE', 'Konfiguration - unten an dem Systembereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1088, 'en_US', 'Configuration - at the bottom of the system area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1088, 'es_ES', 'Configuración - en la parte inferior de la zona del sistema', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1088, 'fr_FR', 'Configuration - en bas de la zone système', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1089, 'de_DE', 'Konfiguration - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1089, 'en_US', 'Configuration - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1089, 'es_ES', 'Configuración - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1089, 'fr_FR', 'Configuration - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1090, 'de_DE', 'Konfiguration - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1090, 'en_US', 'Configuration - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1090, 'es_ES', 'Configuración - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1090, 'fr_FR', 'Configuration - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1091, 'de_DE', 'Dashboard - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1091, 'en_US', 'Dashboard - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1091, 'es_ES', 'Dashboard - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1091, 'fr_FR', 'Tableau de bord - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1092, 'de_DE', 'Dashboard - in der Mitte', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1092, 'en_US', 'Dashboard - middle', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1092, 'es_ES', 'Dashboard - medio', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1092, 'fr_FR', 'Tableau de bord - au milieu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1093, 'de_DE', 'Dashboard - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1093, 'en_US', 'Dashboard - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1093, 'es_ES', 'Dashboard - fondo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1093, 'fr_FR', 'Tableau de bord - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1094, 'de_DE', 'Bestellungen - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1094, 'en_US', 'Orders - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1094, 'es_ES', 'Pedidos - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1094, 'fr_FR', 'Commandes - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1095, 'de_DE', 'Bestellungen - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1095, 'en_US', 'Orders - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1095, 'es_ES', 'Pedidos - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1095, 'fr_FR', 'Commandes - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1096, 'de_DE', 'Bestellungen - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1096, 'en_US', 'Orders - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1096, 'es_ES', 'Pedidos - fila de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1096, 'fr_FR', 'Commandes - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1097, 'de_DE', 'Bestellungen - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1097, 'en_US', 'Orders - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1097, 'es_ES', 'Pedidos - pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1097, 'fr_FR', 'Commandes - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1098, 'de_DE', 'Bestellungen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1098, 'en_US', 'Orders - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1098, 'es_ES', 'Pedidos - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1098, 'fr_FR', 'Commandes - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1099, 'de_DE', 'Lieferzone - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1099, 'en_US', 'Delivery zone - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1099, 'es_ES', 'Zona de entrega - En la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1099, 'fr_FR', 'Zone de livraison - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1100, 'de_DE', 'Lieferzone - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1100, 'en_US', 'Delivery zone - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1100, 'es_ES', 'Zona de entrega - en el encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1100, 'fr_FR', 'Zone de livraison - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1101, 'de_DE', 'Lieferzone - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1101, 'en_US', 'Delivery zone - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1101, 'es_ES', 'Zona de entrega - en la fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1101, 'fr_FR', 'Zone de livraison - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1102, 'de_DE', 'Lieferzone - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1102, 'en_US', 'Delivery zone - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1102, 'es_ES', 'Zona de entrega - en el pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1102, 'fr_FR', 'Zone de livraison - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1103, 'de_DE', 'Lieferzone - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1103, 'en_US', 'Delivery zone - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1103, 'es_ES', 'Zona de entrega - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1103, 'fr_FR', 'Zone de livraison - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1104, 'de_DE', 'Inhalt - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1104, 'en_US', 'Content - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1104, 'es_ES', 'Contenido - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1104, 'fr_FR', 'Contenu - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1105, 'de_DE', 'Accueil - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1105, 'en_US', 'Home - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1105, 'es_ES', 'Inicio - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1105, 'fr_FR', 'Accueil - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1106, 'de_DE', 'Accueil - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1106, 'en_US', 'Home - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1106, 'es_ES', 'Inicio - fondo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1106, 'fr_FR', 'Accueil - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1107, 'de_DE', 'Accueil - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1107, 'en_US', 'Home - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1107, 'es_ES', 'Inicio - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1107, 'fr_FR', 'Accueil - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1108, 'de_DE', 'Modulen - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1108, 'en_US', 'Modules - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1108, 'es_ES', 'Módulos - al inicio', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1108, 'fr_FR', 'Modules - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1109, 'de_DE', 'Modulen - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1109, 'en_US', 'Modules - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1109, 'es_ES', 'Módulos - base', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1109, 'fr_FR', 'Modules - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1110, 'de_DE', 'Modulen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1110, 'en_US', 'Modules - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1110, 'es_ES', 'Módulos - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1110, 'fr_FR', 'Modules - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1111, 'de_DE', 'Sprachen - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1111, 'en_US', 'Languages - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1111, 'es_ES', 'Idiomas - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1111, 'fr_FR', 'Langages - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1112, 'de_DE', 'Sprachen - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1112, 'en_US', 'Languages - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1112, 'es_ES', 'Idiomas - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1112, 'fr_FR', 'Langages - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1113, 'de_DE', 'Sprache - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1113, 'en_US', 'Language - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1113, 'es_ES', 'Idioma - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1113, 'fr_FR', 'Langage - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1114, 'de_DE', 'Sprachen - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1114, 'en_US', 'Languages - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1114, 'es_ES', 'Idiomas - Formulario de borrar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1114, 'fr_FR', 'Langages - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1115, 'de_DE', 'Sprachen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1115, 'en_US', 'Languages - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1115, 'es_ES', 'Idiomas - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1115, 'fr_FR', 'Langages - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1116, 'de_DE', 'Zone - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1116, 'en_US', 'Zone - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1116, 'es_ES', 'Zona - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1116, 'fr_FR', 'Zone - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1117, 'de_DE', 'Lieferzone - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1117, 'en_US', 'Delivery zone - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1117, 'es_ES', 'Zona de entrega - Editar JavasCript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1117, 'fr_FR', 'Zone de livraison - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1118, 'de_DE', 'System - JavaScript Logs', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1118, 'en_US', 'System - logs JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1118, 'es_ES', 'Sistema - registros de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1118, 'fr_FR', 'Système - logs JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1119, 'de_DE', 'Suche - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1119, 'en_US', 'Search - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1119, 'es_ES', 'Búsqueda - al inicio', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1119, 'fr_FR', 'Recherche - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1120, 'de_DE', 'Suche - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1120, 'en_US', 'Search - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1120, 'es_ES', 'Búsqueda - base', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1120, 'fr_FR', 'Recherche - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1121, 'de_DE', 'Suche - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1121, 'en_US', 'Search - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1121, 'es_ES', 'Búsqueda - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1121, 'fr_FR', 'Recherche - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1122, 'de_DE', 'Administratoren - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1122, 'en_US', 'Administrators - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1122, 'es_ES', 'Administradores - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1122, 'fr_FR', 'Administateurs - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1123, 'de_DE', 'Administratoren - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1123, 'en_US', 'Administrators - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1123, 'es_ES', 'Administradores - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1123, 'fr_FR', 'Administateurs - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1124, 'de_DE', 'Administrator - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1124, 'en_US', 'Administrator - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1124, 'es_ES', 'Administrador - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1124, 'fr_FR', 'Administateur - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1125, 'de_DE', 'Administrator - Änderungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1125, 'en_US', 'Administrator - update form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1125, 'es_ES', 'Administrador - formulario de actualización', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1125, 'fr_FR', 'Administateur - formulaire de modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1126, 'de_DE', 'Administrator - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1126, 'en_US', 'Administrator - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1126, 'es_ES', 'Administrador - formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1126, 'fr_FR', 'Administateur - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1127, 'de_DE', 'Administratoren - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1127, 'en_US', 'Administrators - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1127, 'es_ES', 'Administradores - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1127, 'fr_FR', 'Administateurs - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1128, 'de_DE', 'Modul Hook - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1128, 'en_US', 'Module hook - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1128, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1128, 'fr_FR', 'Module hook - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1129, 'de_DE', 'Versandkonfiguration - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1129, 'en_US', 'Shipping configuration - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1129, 'es_ES', 'Configuración de envío - al inicio', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1129, 'fr_FR', 'Configuration du transport - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1130, 'de_DE', 'Versandkonfiguration - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1130, 'en_US', 'Shipping configuration - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1130, 'es_ES', 'Configuración de envío - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1130, 'fr_FR', 'Configuration du transport - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1131, 'de_DE', 'Versandkonfiguration - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1131, 'en_US', 'Shipping configuration - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1131, 'es_ES', 'Configuración de envío - fila de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1131, 'fr_FR', 'Configuration du transport - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1132, 'de_DE', 'Versandkonfiguration - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1132, 'en_US', 'Shipping configuration - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1132, 'es_ES', 'Configuración de envío - base', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1132, 'fr_FR', 'Configuration du transport - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1133, 'de_DE', 'Versandkonfiguration - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1133, 'en_US', 'Shipping configuration - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1133, 'es_ES', 'Configuración de envío - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1133, 'fr_FR', 'Configuration du transport - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1134, 'de_DE', 'Versandkonfiguration - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1134, 'en_US', 'Shipping configuration - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1134, 'es_ES', 'Configuración de envío - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1134, 'fr_FR', 'Configuration du transport - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1135, 'de_DE', 'Versandkonfiguration - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1135, 'en_US', 'Shipping configuration - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1135, 'es_ES', 'Configuración de envío - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1135, 'fr_FR', 'Configuration du transport - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1136, 'de_DE', 'Karakteristiken - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1136, 'en_US', 'Features - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1136, 'es_ES', 'Característica - ir arriba', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1136, 'fr_FR', 'Caractéristiques - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1137, 'de_DE', 'Karakteristiken - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1137, 'en_US', 'Features - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1137, 'es_ES', 'Característica - Encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1137, 'fr_FR', 'Caractéristiques - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1138, 'de_DE', 'Karakteristiken - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1138, 'en_US', 'Features - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1138, 'es_ES', 'Característica - Fila de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1138, 'fr_FR', 'Caractéristiques - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1139, 'de_DE', 'Karakteristiken - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1139, 'en_US', 'Features - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1139, 'es_ES', 'Característica - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1139, 'fr_FR', 'Caractéristiques - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1140, 'de_DE', 'Karakteristik - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1140, 'en_US', 'Feature - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1140, 'es_ES', 'Característica - formulario crear', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1140, 'fr_FR', 'Caractéristique - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1141, 'de_DE', 'Karakteristik - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1141, 'en_US', 'Feature - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1141, 'es_ES', 'Característica - formulario borrar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1141, 'fr_FR', 'Caractéristique - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1142, 'de_DE', 'Karakteristik - zu allen hinzufügen Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1142, 'en_US', 'Feature - add to all form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1142, 'es_ES', 'Característica - Agregar a todos los formularios', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1142, 'fr_FR', 'Caractéristique - formulaire ajouter à tous', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1143, 'de_DE', 'Karakteristik - multipel Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1143, 'en_US', 'Feature - remove to all form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1143, 'es_ES', 'Característica - eliminar todos los formularios', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1143, 'fr_FR', 'Caractéristique - formulaire de suppression multiple', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1144, 'de_DE', 'Karakteristiken - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1144, 'en_US', 'Features - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1144, 'es_ES', 'Característica - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1144, 'fr_FR', 'Caractéristiques - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1145, 'de_DE', 'Modul - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1145, 'en_US', 'Module - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1145, 'es_ES', 'Módulo - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1145, 'fr_FR', 'Module - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1146, 'de_DE', 'Modul Hook - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1146, 'en_US', 'Module hook - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1146, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1146, 'fr_FR', 'Module hook - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1147, 'de_DE', 'Modul Hook - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1147, 'en_US', 'Module hook - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1147, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1147, 'fr_FR', 'Module hook - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1148, 'de_DE', 'Modul Hook - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1148, 'en_US', 'Module hook - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1148, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1148, 'fr_FR', 'Point d\'accroche des modules - Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1149, 'de_DE', 'Versandkonfiguration - Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1149, 'en_US', 'Shipping configuration - Edit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1149, 'es_ES', 'Configuración de envío - Editar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1149, 'fr_FR', 'Configuration du transport - Modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1150, 'de_DE', 'Versandkonfiguration - Länder Löschungsfomular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1150, 'en_US', 'Shipping configuration - country delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1150, 'es_ES', 'Configuración de envío - formulario de borrado de país', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1150, 'fr_FR', 'Configuration du transport - formulaire de suppression de pays', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1151, 'de_DE', 'Versandkonfiguration - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1151, 'en_US', 'Shipping configuration - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1151, 'es_ES', 'Configuración de envío - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1151, 'fr_FR', 'Configuration du transport - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1152, 'de_DE', 'E-Mail Sendung - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1152, 'en_US', 'Mailing system - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1152, 'es_ES', 'Sistema de correo - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1152, 'fr_FR', 'Envoi des e-mails - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1153, 'de_DE', 'E-Mail Sendung - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1153, 'en_US', 'Mailing system - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1153, 'es_ES', 'Sistema de correo - fondo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1153, 'fr_FR', 'Envoi des e-mails - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1154, 'de_DE', 'E-Mail Sendung - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1154, 'en_US', 'Mailing system - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1154, 'es_ES', 'Sistema de correo - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1154, 'fr_FR', 'Envoi des e-mails - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1155, 'de_DE', 'Kategorien - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1155, 'en_US', 'Categories - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1155, 'es_ES', 'Categorías - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1155, 'fr_FR', 'Catégories - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1156, 'de_DE', 'Kategorien - Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1156, 'en_US', 'Categories - caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1156, 'es_ES', 'Categorías - título', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1156, 'fr_FR', 'Catégories - légende', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1157, 'de_DE', 'Kategorien - Kopfzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1157, 'en_US', 'Categories - header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1157, 'es_ES', 'Categorías - header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1157, 'fr_FR', 'Catégories - en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1158, 'de_DE', 'Kategorien - Zeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1158, 'en_US', 'Categories - row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1158, 'es_ES', 'Categorías - fila', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1158, 'fr_FR', 'Catégories - ligne', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1159, 'de_DE', 'Produkte - Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1159, 'en_US', 'Products - caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1159, 'es_ES', 'Productos - leyenda', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1159, 'fr_FR', 'Produits - légende', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1160, 'de_DE', 'Produkte - Header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1160, 'en_US', 'Products - header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1160, 'es_ES', 'Productos - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1160, 'fr_FR', 'Produits - en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1161, 'de_DE', 'Produkte - Zeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1161, 'en_US', 'Products - row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1161, 'es_ES', 'Productos - fila', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1161, 'fr_FR', 'Produits - ligne', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1162, 'de_DE', 'Kategorien - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1162, 'en_US', 'Categories - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1162, 'es_ES', 'Categorías - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1162, 'fr_FR', 'Catégories - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1163, 'de_DE', 'Kategorien - unten an dem Katalog', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1163, 'en_US', 'Categories - at the bottom of the catalog', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1163, 'es_ES', 'Categorías - en la parte inferior del catálogo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1163, 'fr_FR', 'Catégories - en bas du catalogue', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1164, 'de_DE', 'Kategorie - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1164, 'en_US', 'Category - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1164, 'es_ES', 'Formulario de creación de la categoría-', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1164, 'fr_FR', 'Catégorie - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1165, 'de_DE', 'Produkt - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1165, 'en_US', 'Product - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1165, 'es_ES', 'Producto - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1165, 'fr_FR', 'Produit - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1166, 'de_DE', 'Kategorie - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1166, 'en_US', 'Category - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1166, 'es_ES', 'Categoría - formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1166, 'fr_FR', 'Catégorie - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1167, 'de_DE', 'Produkt - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1167, 'en_US', 'Product - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1167, 'es_ES', 'Producto - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1167, 'fr_FR', 'Produit - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1168, 'de_DE', 'Kategorien - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1168, 'en_US', 'Categories - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1168, 'es_ES', 'Categorías - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1168, 'fr_FR', 'Catégories - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1169, 'de_DE', 'Variablen - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1169, 'en_US', 'Variables - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1169, 'es_ES', 'Variables - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1169, 'fr_FR', 'Variables - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1170, 'de_DE', 'Variablen - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1170, 'en_US', 'Variables - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1170, 'es_ES', 'Variables - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1170, 'fr_FR', 'Variables - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1171, 'de_DE', 'Variablen - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1171, 'en_US', 'Variables - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1171, 'es_ES', 'Variables - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1171, 'fr_FR', 'Variables - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1172, 'de_DE', 'Variablen - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1172, 'en_US', 'Variables - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1172, 'es_ES', 'Variables - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1172, 'fr_FR', 'Variables - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1173, 'de_DE', 'Variable - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1173, 'en_US', 'Variable - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1173, 'es_ES', 'Variable - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1173, 'fr_FR', 'Variable - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1174, 'de_DE', 'Variable - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1174, 'en_US', 'Variable - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1174, 'es_ES', 'Variable - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1174, 'fr_FR', 'Variable - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1175, 'de_DE', 'Variablen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1175, 'en_US', 'Variables - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1175, 'es_ES', 'Variables - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1175, 'fr_FR', 'Variables - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1176, 'de_DE', 'Bestellung - Produktliste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1176, 'en_US', 'Order - product list', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1176, 'es_ES', 'Orden - lista de productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1176, 'fr_FR', 'Commande - liste produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1177, 'de_DE', 'Bestellung - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1177, 'en_US', 'Order - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1177, 'es_ES', 'Orden - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1177, 'fr_FR', 'Commande - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1178, 'de_DE', 'Shop Informationen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1178, 'en_US', 'Store Information - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1178, 'es_ES', 'Información de tienda - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1178, 'fr_FR', 'Information boutique - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1179, 'de_DE', 'Übersetzungen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1179, 'en_US', 'Translations - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1179, 'es_ES', 'Traducciones - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1179, 'fr_FR', 'Traductions - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1180, 'de_DE', 'Ordner - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1180, 'en_US', 'Folder - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1180, 'es_ES', 'Carpeta - ir arriba', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1180, 'fr_FR', 'Dossiers - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1181, 'de_DE', 'Ordner - Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1181, 'en_US', 'Folder - caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1181, 'es_ES', 'Carpeta - título', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1181, 'fr_FR', 'Dossiers - légende', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1182, 'de_DE', 'Ordner - Header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1182, 'en_US', 'Folder - header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1182, 'es_ES', 'Carpeta - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1182, 'fr_FR', 'Dossiers - en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1183, 'de_DE', 'Ordner - Zeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1183, 'en_US', 'Folder - row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1183, 'es_ES', 'Carpeta - fila', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1183, 'fr_FR', 'Dossiers - ligne', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1184, 'de_DE', 'Inhalte - Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1184, 'en_US', 'Contents - caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1184, 'es_ES', 'Contenido - leyenda', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1184, 'fr_FR', 'Contenus - légende', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1185, 'de_DE', 'Inhalte - Kopfzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1185, 'en_US', 'Contents - header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1185, 'es_ES', 'Contenido - encabezado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1185, 'fr_FR', 'Contenus - en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1186, 'de_DE', 'Inhalte - Zeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1186, 'en_US', 'Contents - row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1186, 'es_ES', 'Contenido - fila', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1186, 'fr_FR', 'Contenus - ligne', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1187, 'de_DE', 'Ordner - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1187, 'en_US', 'Folder - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1187, 'es_ES', 'Carpeta - abajo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1187, 'fr_FR', 'Dossiers - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1188, 'de_DE', 'Ordner - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1188, 'en_US', 'Folder - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1188, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1188, 'fr_FR', 'Dossier - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1189, 'de_DE', 'Inhalt - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1189, 'en_US', 'Content - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1189, 'es_ES', 'Contenido - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1189, 'fr_FR', 'Contenu - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1190, 'de_DE', 'Ordner - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1190, 'en_US', 'Folder - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1190, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1190, 'fr_FR', 'Dossier - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1191, 'de_DE', 'Inhalt - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1191, 'en_US', 'Content - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1191, 'es_ES', 'Contenido - Formulario para eliminar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1191, 'fr_FR', 'Contenu - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1192, 'de_DE', 'Ordner - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1192, 'en_US', 'Folder - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1192, 'es_ES', 'Carpeta - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1192, 'fr_FR', 'Dossiers - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1193, 'de_DE', 'Template - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1193, 'en_US', 'Template - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1193, 'es_ES', 'Plantilla - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1193, 'fr_FR', 'Gabarit - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1194, 'de_DE', 'Taxe - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1194, 'en_US', 'Tax - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1194, 'es_ES', 'Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1194, 'fr_FR', 'Taxe - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1195, 'de_DE', 'Hook - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1195, 'en_US', 'Hook - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1195, 'es_ES', 'Hook - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1195, 'fr_FR', 'Point d\'accroche - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1196, 'de_DE', 'Länder - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1196, 'en_US', 'Countries - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1196, 'es_ES', 'Países - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1196, 'fr_FR', 'Pays - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1197, 'de_DE', 'Länder - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1197, 'en_US', 'Countries - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1197, 'es_ES', 'Países - encabezado de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1197, 'fr_FR', 'Pays - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1198, 'de_DE', 'Länder - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1198, 'en_US', 'Countries - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1198, 'es_ES', 'Países - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1198, 'fr_FR', 'Pays - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1199, 'de_DE', 'Länder - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1199, 'en_US', 'Countries - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1199, 'es_ES', 'Países - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1199, 'fr_FR', 'Pays - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1200, 'de_DE', 'Land - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1200, 'en_US', 'Country - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1200, 'es_ES', 'País - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1200, 'fr_FR', 'Pays - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1201, 'de_DE', 'Land - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1201, 'en_US', 'Country - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1201, 'es_ES', 'País - formulario para eliminar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1201, 'fr_FR', 'Pays - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1202, 'de_DE', 'Länder - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1202, 'en_US', 'Countries - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1202, 'es_ES', 'Países - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1202, 'fr_FR', 'Pays - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1203, 'de_DE', 'Währungen - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1203, 'en_US', 'Currencies - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1203, 'es_ES', 'Divisas - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1203, 'fr_FR', 'Devises - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1204, 'de_DE', 'Währungen - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1204, 'en_US', 'Currencies - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1204, 'es_ES', 'Divisas - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1204, 'fr_FR', 'Devises - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1205, 'de_DE', 'Währungen - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1205, 'en_US', 'Currencies - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1205, 'es_ES', 'Divisas - fila de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1205, 'fr_FR', 'Devises - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1206, 'de_DE', 'Währungen - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1206, 'en_US', 'Currencies - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1206, 'es_ES', 'Divisas - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1206, 'fr_FR', 'Devises - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1207, 'de_DE', 'Währung - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1207, 'en_US', 'Currency - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1207, 'es_ES', 'Divisas - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1207, 'fr_FR', 'Devise - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1208, 'de_DE', 'Währung - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1208, 'en_US', 'Currency - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1208, 'es_ES', 'Moneda - Formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1208, 'fr_FR', 'Devise - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1209, 'de_DE', 'Währungen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1209, 'en_US', 'Currencies - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1209, 'es_ES', 'Divisas - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1209, 'fr_FR', 'Devises - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1210, 'de_DE', 'Kunde - Modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1210, 'en_US', 'Customer - Edit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1210, 'es_ES', 'Cliente - Editar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1210, 'fr_FR', 'Client - Modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1211, 'de_DE', 'Kunde - Adresse-Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1211, 'en_US', 'Customer - address create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1211, 'es_ES', 'Cliente - formulario crear dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1211, 'fr_FR', 'Client - formulaire de création d\'adresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1212, 'de_DE', 'Kunde - Adresse-Änderungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1212, 'en_US', 'Customer - address update form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1212, 'es_ES', 'Cliente - formulario de actualización de dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1212, 'fr_FR', 'Client - formulaire de Modification d\'adresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1213, 'de_DE', 'Kunde - Adresse-Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1213, 'en_US', 'Customer - address delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1213, 'es_ES', 'Cliente - Formulario borrar dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1213, 'fr_FR', 'Client - formulaire de suppression adresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1214, 'de_DE', 'Kunde - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1214, 'en_US', 'Customer - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1214, 'es_ES', 'Cliente - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1214, 'fr_FR', 'Client - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1215, 'de_DE', 'Deklinationenangaben - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1215, 'en_US', 'Attributes value - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1215, 'es_ES', 'Valor de atributos - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1215, 'fr_FR', 'Valeurs des attributs - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1216, 'de_DE', 'Deklinationenangaben - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1216, 'en_US', 'Attributes value - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1216, 'es_ES', 'Valor de atributos - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1216, 'fr_FR', 'Valeurs des attributs - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1217, 'de_DE', 'Deklinationsangabe - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1217, 'en_US', 'Attribute value - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1217, 'es_ES', 'Valor de atributo - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1217, 'fr_FR', 'Valeur d\'attribut - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1218, 'de_DE', 'Deklination - ID Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1218, 'en_US', 'Attribut - id delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1218, 'es_ES', 'Atributo - Formulario de eliminación de id', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1218, 'fr_FR', 'Attribut - formulaire de suppression ID', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1219, 'de_DE', 'Deklination - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1219, 'en_US', 'Attribut - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1219, 'es_ES', 'Atributo - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1219, 'fr_FR', 'Attribut - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1220, 'de_DE', 'Profile - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1220, 'en_US', 'Profiles - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1220, 'es_ES', 'Perfiles - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1220, 'fr_FR', 'Profils - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1221, 'de_DE', 'Profile - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1221, 'en_US', 'Profiles - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1221, 'es_ES', 'Perfiles - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1221, 'fr_FR', 'Profils - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1222, 'de_DE', 'Profil - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1222, 'en_US', 'Profile - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1222, 'es_ES', 'Perfil - formulario de alta', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1222, 'fr_FR', 'Profil - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1223, 'de_DE', 'Profil - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1223, 'en_US', 'Profile - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1223, 'es_ES', 'Perfil - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1223, 'fr_FR', 'Profil - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1224, 'de_DE', 'Profile - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1224, 'en_US', 'Profiles - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1224, 'es_ES', 'Perfiles - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1224, 'fr_FR', 'Profils - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1225, 'de_DE', 'Land - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1225, 'en_US', 'Country - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1225, 'es_ES', 'País - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1225, 'fr_FR', 'Pays - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1226, 'de_DE', 'Profil - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1226, 'en_US', 'Profile - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1226, 'es_ES', 'Perfil - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1226, 'fr_FR', 'Profil - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1227, 'de_DE', 'Variable - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1227, 'en_US', 'Variable - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1227, 'es_ES', 'Variable - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1227, 'fr_FR', 'Variable - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1228, 'de_DE', 'Gutschein - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1228, 'en_US', 'Coupon - update JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1228, 'es_ES', 'Cupón - actualizar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1228, 'fr_FR', 'Code promo - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1229, 'de_DE', 'Gutschein - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1229, 'en_US', 'Coupon - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1229, 'es_ES', 'Cupón - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1229, 'fr_FR', 'Code promo - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1230, 'de_DE', 'Gutschein - Bildunterschrift', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1230, 'en_US', 'Coupon - list caption', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1230, 'es_ES', 'Cupón - titulo de la lista', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1230, 'fr_FR', 'Code promo - légende liste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1231, 'de_DE', 'Gutschein - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1231, 'en_US', 'Coupon - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1231, 'es_ES', 'Cupón - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1231, 'fr_FR', 'Code promo - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1232, 'de_DE', 'Gutschein - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1232, 'en_US', 'Coupon - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1232, 'es_ES', 'Cupón - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1232, 'fr_FR', 'Code promo - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1233, 'de_DE', 'Gutschein - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1233, 'en_US', 'Coupon - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1233, 'es_ES', 'Cupón - parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1233, 'fr_FR', 'Code promo - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1234, 'de_DE', 'Gutschein - JavaScript den Listen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1234, 'en_US', 'Coupon - list JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1234, 'es_ES', 'Cupón - enlistar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1234, 'fr_FR', 'Code promo - JavaScript des listes', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1235, 'de_DE', 'Modul - Konfiguration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1235, 'en_US', 'Module - configuration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1235, 'es_ES', 'Módulo - configuración', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1235, 'fr_FR', 'Module - configuration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1236, 'de_DE', 'Modul - JavaScript Konfiguration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1236, 'en_US', 'Module - configuration JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1236, 'es_ES', 'Módulo - configuración de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1236, 'fr_FR', 'Module - JavaScript configuration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1237, 'de_DE', 'Nachricht - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1237, 'en_US', 'Message - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1237, 'es_ES', 'Mensaje - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1237, 'fr_FR', 'Message - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1238, 'de_DE', 'Bild - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1238, 'en_US', 'Image - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1238, 'es_ES', 'Imagen - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1238, 'fr_FR', 'Image - Modification de JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1239, 'de_DE', 'Deklinationen - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1239, 'en_US', 'Attributes - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1239, 'es_ES', 'Atributos - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1239, 'fr_FR', 'Attributs - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1240, 'de_DE', 'Deklinationen - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1240, 'en_US', 'Attributes - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1240, 'es_ES', 'Atributos - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1240, 'fr_FR', 'Attributs - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1241, 'de_DE', 'Deklinationen - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1241, 'en_US', 'Attributes - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1241, 'es_ES', 'Atributos - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1241, 'fr_FR', 'Attributs - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1242, 'de_DE', 'Deklinationen - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1242, 'en_US', 'Attributes - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1242, 'es_ES', 'Atributos - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1242, 'fr_FR', 'Attributs - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1243, 'de_DE', 'Deklination - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1243, 'en_US', 'Attribut - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1243, 'es_ES', 'Atributo - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1243, 'fr_FR', 'Attribut - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1244, 'de_DE', 'Deklination - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1244, 'en_US', 'Attribut - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1244, 'es_ES', 'Atributo - formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1244, 'fr_FR', 'Attribut - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1245, 'de_DE', 'Deklination - zu allen hinzufügen Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1245, 'en_US', 'Attribut - add to all form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1245, 'es_ES', 'Atributo - agregar a todos los formularios', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1245, 'fr_FR', 'Attribut - formulaire ajouter à tous', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1246, 'de_DE', 'Deklination - multipel Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1246, 'en_US', 'Attribut - remove to all form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1246, 'es_ES', 'Atributo - quitar a todos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1246, 'fr_FR', 'Attribut - formulaire de suppression multiple', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1247, 'de_DE', 'Deklinationen - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1247, 'en_US', 'Attributes - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1247, 'es_ES', 'Atributos - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1247, 'fr_FR', 'Attributs - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1248, 'de_DE', 'Logs - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1248, 'en_US', 'Logs - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1248, 'es_ES', 'Registros - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1248, 'fr_FR', 'Logs - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1249, 'de_DE', 'Logs - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1249, 'en_US', 'Logs - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1249, 'es_ES', 'Registros - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1249, 'fr_FR', 'Logs - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1250, 'de_DE', 'Protokolle - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1250, 'en_US', 'Logs - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1250, 'es_ES', 'Registros - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1250, 'fr_FR', 'Journaux - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1251, 'de_DE', 'Ordner - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1251, 'en_US', 'Folder - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1251, 'es_ES', 'Carpeta - Editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1251, 'fr_FR', 'Dossier - JavaScript modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1252, 'de_DE', 'Hooks - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1252, 'en_US', 'Hooks - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1252, 'es_ES', 'Hooks - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1252, 'fr_FR', 'Point d\'accroches - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1253, 'de_DE', 'Hooks - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1253, 'en_US', 'Hooks - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1253, 'es_ES', 'Hooks - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1253, 'fr_FR', 'Point d\'accroches - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1254, 'de_DE', 'Hooks - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1254, 'en_US', 'Hooks - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1254, 'es_ES', 'Hooks - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1254, 'fr_FR', 'Point d\'accroches - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1255, 'de_DE', 'Hooks - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1255, 'en_US', 'Hooks - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1255, 'es_ES', 'Hooks - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1255, 'fr_FR', 'Point d\'accroches - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1256, 'de_DE', 'Hook - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1256, 'en_US', 'Hook - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1256, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1256, 'fr_FR', 'Point d\'accroche - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1257, 'de_DE', 'Hook - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1257, 'en_US', 'Hook - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1257, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1257, 'fr_FR', 'Point d\'accroche - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1258, 'de_DE', 'Hooks - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1258, 'en_US', 'Hooks - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1258, 'es_ES', 'Hooks - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1258, 'fr_FR', 'Points d\'accroche - Javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1259, 'de_DE', 'Layout - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1259, 'en_US', 'Layout - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1259, 'es_ES', 'Diseño - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1259, 'fr_FR', 'Mise en page - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1260, 'de_DE', 'Layout - vor der Titelleiste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1260, 'en_US', 'Layout - before topbar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1260, 'es_ES', 'Diseño - antes de la barra superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1260, 'fr_FR', 'Mise en page - avant la barre de titre', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1261, 'de_DE', 'Layout - in der Titelleiste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1261, 'en_US', 'Layout - inside top bar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1261, 'es_ES', 'Diseño - en la barra superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1261, 'fr_FR', 'Mise en page - dans la barre de titre', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1262, 'de_DE', 'Layout - nach der Titelleiste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1262, 'en_US', 'Layout - after top bar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1262, 'es_ES', 'Diseño - después de la barra superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1262, 'fr_FR', 'Mise en page - après la barre de titre', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1263, 'de_DE', 'Layout - vor dem Top Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1263, 'en_US', 'Layout - before top menu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1263, 'es_ES', 'Diseño - antes del menú principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1263, 'fr_FR', 'Mise en page - avant le menu haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1264, 'de_DE', 'Layout - in Top-Menü Elementen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1264, 'en_US', 'Layout - in top menu items', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1264, 'es_ES', 'Diseño - en la parte superior del menú artículos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1264, 'fr_FR', 'Mise en page - éléments du menu haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1265, 'de_DE', 'Layout - nach dem Top Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1265, 'en_US', 'Layout - after top menu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1265, 'es_ES', 'Diseño - después del menú principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1265, 'fr_FR', 'Mise en page - après le menu haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1266, 'de_DE', 'Layout - vor dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1266, 'en_US', 'Layout - before footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1266, 'es_ES', 'Diseño - antes del pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1266, 'fr_FR', 'Mise en page - avant le pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1267, 'de_DE', 'Layout - Im Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1267, 'en_US', 'Layout - in footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1267, 'es_ES', 'Diseño - en el pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1267, 'fr_FR', 'Mise en page - dans le pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1268, 'de_DE', 'Layout - nach dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1268, 'en_US', 'Layout - after footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1268, 'es_ES', 'Diseño - después de pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1268, 'fr_FR', 'Mise en page - après le pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1269, 'de_DE', 'Layout - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1269, 'en_US', 'Layout - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1269, 'es_ES', 'Diseño - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1269, 'fr_FR', 'Mise en page - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1270, 'de_DE', 'Layout - oben an der Titelleiste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1270, 'en_US', 'Layout - at the top of the top bar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1270, 'es_ES', 'Diseño - en la parte superior de la barra superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1270, 'fr_FR', 'Mise en page - en haut de la barre supérieure', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1271, 'de_DE', 'Layout - unten an der Titelleiste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1271, 'en_US', 'Layout - at the bottom of the top bar', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1271, 'es_ES', 'Diseño - en la parte inferior de la barra superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1271, 'fr_FR', 'Mise en page - en bas de la barre supérieure', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1272, 'de_DE', 'Layout - im Kundes-Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1272, 'en_US', 'Layout - in the menu customers', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1272, 'es_ES', 'Diseño - en el menú de cliente', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1272, 'fr_FR', 'Mise en page - dans le menu clients', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1273, 'de_DE', 'Layout - im Bestellungsmenü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1273, 'en_US', 'Layout - in the menu orders', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1273, 'es_ES', 'Diseño - en el menú de pedidos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1273, 'fr_FR', 'Mise en page - dans le menu commandes', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1274, 'de_DE', 'Layout - im Katalogs-Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1274, 'en_US', 'Layout - in the menu catalog', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1274, 'es_ES', 'Diseño - en el menú de catálogo', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1274, 'fr_FR', 'Mise en page - dans le menu catalogue', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1275, 'de_DE', 'Layout - im Ordners-Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1275, 'en_US', 'Layout - in the menu folders', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1275, 'es_ES', 'Diseño - en el menú de carpetas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1275, 'fr_FR', 'Mise en page - dans le menu dossiers', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1276, 'de_DE', 'Layout - im Tools-Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1276, 'en_US', 'Layout - in the menu tools', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1276, 'es_ES', 'Diseño - en el menú de herramientas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1276, 'fr_FR', 'Mise en page - dans le menu outils', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1277, 'de_DE', 'Layout - im Moduls-Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1277, 'en_US', 'Layout - in the menu modules', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1277, 'es_ES', 'Diseño - en el menú de módulos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1277, 'fr_FR', 'Mise en page - dans le menu modules', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1278, 'de_DE', 'Layout - im konfigurations-Menü', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1278, 'en_US', 'Layout - in the menu configuration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1278, 'es_ES', 'Diseño - en el menú de configuración', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1278, 'fr_FR', 'Mise en page - dans le menu configuration', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1279, 'de_DE', 'Marke - JavaScript Änderung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1279, 'en_US', 'Brand - Edit JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1279, 'es_ES', 'Marca - editar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1279, 'fr_FR', 'Marque - Modification du JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1280, 'de_DE', 'Accueil - Block', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1280, 'en_US', 'Home - block', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1280, 'es_ES', 'Inicio - bloque', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1280, 'fr_FR', 'Accueil - bloc', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1281, 'de_DE', 'Marken - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1281, 'en_US', 'Brands - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1281, 'es_ES', 'Marcas - en parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1281, 'fr_FR', 'Marques - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1282, 'de_DE', 'Marken - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1282, 'en_US', 'Brands - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1282, 'es_ES', 'Marcas - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1282, 'fr_FR', 'Marques - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1283, 'de_DE', 'Marken - Tabellzeilen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1283, 'en_US', 'Brands - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1283, 'es_ES', 'Marcas - file de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1283, 'fr_FR', 'Marques - ligne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1284, 'de_DE', 'Marken - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1284, 'en_US', 'Brands - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1284, 'es_ES', 'Marcas - inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1284, 'fr_FR', 'Marques - bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1285, 'de_DE', 'Marke - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1285, 'en_US', 'Brand - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1285, 'es_ES', 'Marca - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1285, 'fr_FR', 'Marque - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1286, 'de_DE', 'Marke - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1286, 'en_US', 'Brand - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1286, 'es_ES', 'Marca - formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1286, 'fr_FR', 'Marque - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1287, 'de_DE', 'Marke - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1287, 'en_US', 'Brand - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1287, 'es_ES', 'Marca - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1287, 'fr_FR', 'Marque - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1288, 'de_DE', 'Exporte - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1288, 'en_US', 'Exports - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1288, 'es_ES', 'Exportar - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1288, 'fr_FR', 'Exports - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1289, 'de_DE', 'Exporte - unten einer Kategorie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1289, 'en_US', 'Exports - at the bottom of a category', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1289, 'es_ES', 'Exportar - en la parte inferior de una categoría', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1289, 'fr_FR', 'Exports - en bas d\'une catégorie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1290, 'de_DE', 'Exporte - unten der Spalte 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1290, 'en_US', 'Exports - at the bottom of column 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1290, 'es_ES', 'Exportar - en la parte inferior de la columna 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1290, 'fr_FR', 'Exports - en bas de la colonne 1', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1291, 'de_DE', 'Exporte - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1291, 'en_US', 'Exports - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1291, 'es_ES', 'Exportar JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1291, 'fr_FR', 'Exports - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1292, 'de_DE', 'Export - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1292, 'en_US', 'Export - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1292, 'es_ES', 'Exportación - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1292, 'fr_FR', 'Export - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1293, 'de_DE', 'Marke - Inhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1293, 'en_US', 'Brand - content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1293, 'es_ES', 'Marca - contenido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1293, 'fr_FR', 'Marque - contenu', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1294, 'de_DE', 'Kunde - Bestellungs-Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1294, 'en_US', 'Customer - order table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1294, 'es_ES', 'Cliente - cabecera tabla de pedidos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1294, 'fr_FR', 'Client - colonne tableau commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1295, 'de_DE', 'Kunde - Bestellungs-Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1295, 'en_US', 'Customer - order table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1295, 'es_ES', 'Cliente - celda tabla pedidos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1295, 'fr_FR', 'Client - ligne tableau commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1296, 'de_DE', 'Sonderangebote - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1296, 'en_US', 'Sales - at the top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1296, 'es_ES', 'Ventas - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1296, 'fr_FR', 'Promotions - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1297, 'de_DE', 'Sonderangebote - Tabellenkopf', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1297, 'en_US', 'Sales - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1297, 'es_ES', 'Ventas - encabezado de tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1297, 'fr_FR', 'Promotions - colonne tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1298, 'de_DE', 'Sonderangebote - Tabellenzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1298, 'en_US', 'Sales - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1298, 'es_ES', 'Ventas - fila de la tabla', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1298, 'fr_FR', 'Promotions - ligne du tableau', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1299, 'de_DE', 'Sonderangebote - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1299, 'en_US', 'Sales - at the bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1299, 'es_ES', 'Ventas - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1299, 'fr_FR', 'Promotions - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1300, 'de_DE', 'Sonderangebot - Erstellungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1300, 'en_US', 'Sale - create form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1300, 'es_ES', 'Venta - formulario de creación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1300, 'fr_FR', 'Promotion - formulaire de création', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1301, 'de_DE', 'Sonderangebot - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1301, 'en_US', 'Sale - delete form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1301, 'es_ES', 'Venta - formulario de borrado', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1301, 'fr_FR', 'Promotion - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1302, 'de_DE', 'Sonderangebote - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1302, 'en_US', 'Sales - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1302, 'es_ES', 'Ventas - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1302, 'fr_FR', 'Promotions - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1303, 'de_DE', 'Produkt - unten einer Produkt-Kombination', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1303, 'en_US', 'Product - at the bottom of a product combination', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1303, 'es_ES', 'Producto - al pie de la combinación de un producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1303, 'fr_FR', 'Produit - en bas d\'une combinaison de déclinaisons', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1304, 'de_DE', 'Layout - vor dem Hauptinhaltsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1304, 'en_US', 'Layout - Before the main content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1304, 'es_ES', 'Diseño - antes el contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1304, 'fr_FR', 'Layout - Avant le contenu principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1305, 'de_DE', 'Admin layout - Nach dem Hauptinhalt', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1305, 'en_US', 'Admin layout - After the main content', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1305, 'es_ES', 'Diseño de administración - Después del contenido principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1305, 'fr_FR', 'Admin layout - Après le contenu principal', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1306, 'de_DE', 'Kategorie - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1306, 'en_US', 'Category - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1306, 'es_ES', 'Categoría - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1306, 'fr_FR', 'Catégorie - Onglet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1307, 'de_DE', 'Produkt - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1307, 'en_US', 'Product - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1307, 'es_ES', 'Producto - Pestaña', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1307, 'fr_FR', 'Produit - Onglet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1308, 'de_DE', 'Ordner - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1308, 'en_US', 'Folder - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1308, 'es_ES', 'Carpeta - Pestaña', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1308, 'fr_FR', 'Dossier - Onglet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1309, 'de_DE', 'Inhalt - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1309, 'en_US', 'Content - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1309, 'es_ES', 'Contenido - Pestaña', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1309, 'fr_FR', 'Contenu - Onglet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1310, 'de_DE', 'Marke - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1310, 'en_US', 'Brand - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1310, 'es_ES', 'Marca - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1310, 'fr_FR', 'Marque - Onglet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1311, 'de_DE', 'Bestellungs-Änderung - Lieferadresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1311, 'en_US', 'Order edit - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1311, 'es_ES', 'Editar Orden - dirección de envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1311, 'fr_FR', 'Modification commande - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1312, 'de_DE', 'Produktseite - oben im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1312, 'en_US', 'Product page - On the top of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1312, 'es_ES', 'Página de producto - en la parte superior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1312, 'fr_FR', 'Page produit - En haut du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1313, 'de_DE', 'Produktseite - unten an dem Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1313, 'en_US', 'Product page - On the bottom of the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1313, 'es_ES', 'Página del producto - en la parte inferior del formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1313, 'fr_FR', 'Page produit - En bas du formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1314, 'de_DE', 'Brand edit Seite - im Formular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1314, 'en_US', 'Brand edit page - in the form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1314, 'es_ES', 'Página de edición de marca - en formulario', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1314, 'fr_FR', 'Page brand edit - dans formulaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1315, 'de_DE', 'Sonderangebot Änderungsseite - javascript last call block', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1315, 'en_US', 'Sale edit page - javascript last call block', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1315, 'es_ES', 'Página de edición de Venta - última bloque de llamada JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1315, 'fr_FR', 'Page sale edit - appel javascript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1316, 'de_DE', 'API Seite - oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1316, 'en_US', 'Api page - at top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1316, 'es_ES', 'Página de la API - en la parte superior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1316, 'fr_FR', 'Page api - en haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1317, 'de_DE', 'API Seite - unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1317, 'en_US', 'Api page - at bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1317, 'es_ES', 'Página de la API - en la parte inferior', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1317, 'fr_FR', 'Page api - en bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1318, 'de_DE', 'API Seite - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1318, 'en_US', 'Api page - in deletion form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1318, 'es_ES', 'Página de Api - en formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1318, 'fr_FR', 'Page api - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1319, 'de_DE', 'Gutschein-Seite - Löschungsformular', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1319, 'en_US', 'Coupon page - in deletion form', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1319, 'es_ES', 'Página de cupón - en formulario de eliminación', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1319, 'fr_FR', 'Page coupon - formulaire de suppression', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1320, 'de_DE', 'Bestellung - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1320, 'en_US', 'Order - Tab', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1320, 'es_ES', 'Orden - Pestaña', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1320, 'fr_FR', 'Commande- Onglet', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1321, 'de_DE', 'Profil - Tabellenkopf', '', '');
INSERT INTO `hook_i18n` VALUES(1321, 'en_US', 'Profile - table header', '', '');
INSERT INTO `hook_i18n` VALUES(1321, 'es_ES', 'Perfil - encabezado de tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1321, 'fr_FR', 'Profil - colonne tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1322, 'de_DE', 'Profil - Tabellenzeile', '', '');
INSERT INTO `hook_i18n` VALUES(1322, 'en_US', 'Profile - table row', '', '');
INSERT INTO `hook_i18n` VALUES(1322, 'es_ES', 'Perfil - fila de la tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1322, 'fr_FR', 'Profil - ligne du tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1323, 'de_DE', 'Import - Tabellenkopf', '', '');
INSERT INTO `hook_i18n` VALUES(1323, 'en_US', 'Import - table header', '', '');
INSERT INTO `hook_i18n` VALUES(1323, 'es_ES', 'Importar - encabezado de tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1323, 'fr_FR', 'Import - colonne tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1324, 'de_DE', 'Import - Tabellenzeile', '', '');
INSERT INTO `hook_i18n` VALUES(1324, 'en_US', 'Import - table row', '', '');
INSERT INTO `hook_i18n` VALUES(1324, 'es_ES', 'Importar - fila de la tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1324, 'fr_FR', 'Import - ligne du tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1325, 'de_DE', 'Export - Tabellenkopf', '', '');
INSERT INTO `hook_i18n` VALUES(1325, 'en_US', 'Export - table header', '', '');
INSERT INTO `hook_i18n` VALUES(1325, 'es_ES', 'Exportación - encabezado de tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1325, 'fr_FR', 'Export - colonne tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1326, 'de_DE', 'Export - Tabellenzeile', '', '');
INSERT INTO `hook_i18n` VALUES(1326, 'en_US', 'Export - table row', '', '');
INSERT INTO `hook_i18n` VALUES(1326, 'es_ES', 'Exportación - fila de la tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1326, 'fr_FR', 'Export - ligne du tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1327, 'de_DE', 'Kategorie Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1327, 'en_US', 'Category edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1327, 'es_ES', 'Categoría edición - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1327, 'fr_FR', 'Édition d\'une categorie - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1328, 'de_DE', 'Kategorie Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1328, 'en_US', 'Category edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1328, 'es_ES', 'Editar categoría - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1328, 'fr_FR', 'Édition d\'une categorie - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1329, 'de_DE', 'Marke Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1329, 'en_US', 'Brand edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1329, 'es_ES', 'Editar marca - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1329, 'fr_FR', 'Édition d\'une marque - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1330, 'de_DE', 'Marke Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1330, 'en_US', 'Brand edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1330, 'es_ES', 'Editar marca - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1330, 'fr_FR', 'Édition d\'une marque - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1331, 'de_DE', 'Deklination Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1331, 'en_US', 'Attribute edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1331, 'es_ES', 'Editar atributo - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1331, 'fr_FR', 'Édition d\'une déclinaison - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1332, 'de_DE', 'Deklination Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1332, 'en_US', 'Attribute edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1332, 'es_ES', 'Edición de atributos - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1332, 'fr_FR', 'Édition d\'une déclinaison - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1333, 'de_DE', 'Währung Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1333, 'en_US', 'Currency edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1333, 'es_ES', 'Editar Monedas - Cabecera', '', '');
INSERT INTO `hook_i18n` VALUES(1333, 'fr_FR', 'Édition d\'une devise - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1334, 'de_DE', 'Währung Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1334, 'en_US', 'Currency edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1334, 'es_ES', 'Editar Monedas - Pie', '', '');
INSERT INTO `hook_i18n` VALUES(1334, 'fr_FR', 'Édition d\'une devise - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1335, 'de_DE', 'Währung Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1335, 'en_US', 'Country edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1335, 'es_ES', 'Edición de país - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1335, 'fr_FR', 'Édition d\'un pays - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1336, 'de_DE', 'Währung Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1336, 'en_US', 'Country edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1336, 'es_ES', 'Edición de pais - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1336, 'fr_FR', 'Édition d\'un pays - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1337, 'de_DE', 'Inhalt Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1337, 'en_US', 'Content edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1337, 'es_ES', 'Editar contenido - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1337, 'fr_FR', 'Édition d\'un contenu - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1338, 'de_DE', 'Inhalt Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1338, 'en_US', 'Content edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1338, 'es_ES', 'Editar Contenido - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1338, 'fr_FR', 'Édition d\'un contenu - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1339, 'de_DE', 'Charakteristik Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1339, 'en_US', 'Feature edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1339, 'es_ES', 'Editar Característica - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1339, 'fr_FR', 'Édition d\'une caractéristique - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1340, 'de_DE', 'Charakteristik Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1340, 'en_US', 'Feature edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1340, 'es_ES', 'Editar Característica - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1340, 'fr_FR', 'Édition d\'une caractéristique - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1341, 'de_DE', 'Dokument Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1341, 'en_US', 'Document edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1341, 'es_ES', 'Edición de documentos - cabecera', '', '');
INSERT INTO `hook_i18n` VALUES(1341, 'fr_FR', 'Édition d\'un document - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1342, 'de_DE', 'Dokument Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1342, 'en_US', 'Document edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1342, 'es_ES', 'Edición de documentos - pie', '', '');
INSERT INTO `hook_i18n` VALUES(1342, 'fr_FR', 'Édition d\'un document - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1343, 'de_DE', 'Kunde Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1343, 'en_US', 'Client edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1343, 'es_ES', 'Editar cliente - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1343, 'fr_FR', 'Édition d\'un client - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1344, 'de_DE', 'Kunde Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1344, 'en_US', 'Client edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1344, 'es_ES', 'Editar cliente - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1344, 'fr_FR', 'Édition d\'un client - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1345, 'de_DE', 'Bild Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1345, 'en_US', 'Image edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1345, 'es_ES', 'Edición de imagen - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1345, 'fr_FR', 'Édition d\'image - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1346, 'de_DE', 'Bild Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1346, 'en_US', 'Image edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1346, 'es_ES', 'Edición de imagen - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1346, 'fr_FR', 'Édition d\'image - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1347, 'de_DE', 'Hook Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1347, 'en_US', 'Hook edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1347, 'es_ES', 'Edición de Hook - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1347, 'fr_FR', 'Édition d\'hook - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1348, 'de_DE', 'Hook Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1348, 'en_US', 'Hook edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1348, 'es_ES', 'Edición de Hook - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1348, 'fr_FR', 'Édition d\'hook - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1349, 'de_DE', 'Ordner Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1349, 'en_US', 'Folder edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1349, 'es_ES', 'Edición de carpeta - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1349, 'fr_FR', 'Édition d\'un dossier - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1350, 'de_DE', 'Ordner Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1350, 'en_US', 'Folder edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1350, 'es_ES', 'Editar carpeta - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1350, 'fr_FR', 'Édition d\'un dossier - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1351, 'de_DE', 'Modul-Hook Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1351, 'en_US', 'Module hook edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1351, 'es_ES', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1351, 'fr_FR', 'Édition d\'un hook de module - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1352, 'de_DE', 'Modul-Hook Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1352, 'en_US', 'Module hook edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1352, 'es_ES', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1352, 'fr_FR', 'Édition d\'un hook de module - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1353, 'de_DE', 'Modul Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1353, 'en_US', 'Module edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1353, 'es_ES', 'Edición de módulo - tope', '', '');
INSERT INTO `hook_i18n` VALUES(1353, 'fr_FR', 'Édition d\'un module - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1354, 'de_DE', 'Modul Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1354, 'en_US', 'Module edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1354, 'es_ES', 'Edición de módulo - base', '', '');
INSERT INTO `hook_i18n` VALUES(1354, 'fr_FR', 'Édition d\'un module - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1355, 'de_DE', 'Nachricht Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1355, 'en_US', 'Message edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1355, 'es_ES', 'Editar mensaje - tope', '', '');
INSERT INTO `hook_i18n` VALUES(1355, 'fr_FR', 'Édition d\'un message - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1356, 'de_DE', 'Nachricht Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1356, 'en_US', 'Message edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1356, 'es_ES', 'Editar mensaje - base', '', '');
INSERT INTO `hook_i18n` VALUES(1356, 'fr_FR', 'Édition d\'un message - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1357, 'de_DE', 'Profil Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1357, 'en_US', 'Profile edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1357, 'es_ES', 'Editar Perfil - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1357, 'fr_FR', 'Édition d\'un profil - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1358, 'de_DE', 'Profil Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1358, 'en_US', 'Profile edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1358, 'es_ES', 'Editar Perfil - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1358, 'fr_FR', 'Édition d\'un profil - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1359, 'de_DE', 'Produkt Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1359, 'en_US', 'Product edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1359, 'es_ES', 'Editar producto - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1359, 'fr_FR', 'Édition d\'un produit - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1360, 'de_DE', 'Produkt Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1360, 'en_US', 'Product edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1360, 'es_ES', 'Editar producto - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1360, 'fr_FR', 'Édition d\'un produit - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1361, 'de_DE', 'Bestellung Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1361, 'en_US', 'Order edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1361, 'es_ES', 'Edición de Pedido - al tope', '', '');
INSERT INTO `hook_i18n` VALUES(1361, 'fr_FR', 'Édition d\'une commande - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1362, 'de_DE', 'Bestellung Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1362, 'en_US', 'Order edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1362, 'es_ES', 'Editar Orden - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1362, 'fr_FR', 'Édition d\'une commande - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1363, 'de_DE', 'Transporteur Lieferzonen Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1363, 'en_US', 'Shipping zones edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1363, 'es_ES', 'Edición zonas de envío - inicio', '', '');
INSERT INTO `hook_i18n` VALUES(1363, 'fr_FR', 'Édition des zones de livraison d\'un transporteur - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1364, 'de_DE', 'Transporteur Lieferzonen Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1364, 'en_US', 'Shipping zones edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1364, 'es_ES', 'Edición zonas de envío - base', '', '');
INSERT INTO `hook_i18n` VALUES(1364, 'fr_FR', 'Édition des zones de livraison d\'un transporteur - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1365, 'de_DE', 'Lieferzone Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1365, 'en_US', 'Shipping configuration edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1365, 'es_ES', 'Configuración de envío - inicio', '', '');
INSERT INTO `hook_i18n` VALUES(1365, 'fr_FR', 'Édition d\'une zone de livraison - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1366, 'de_DE', 'Lieferzone Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1366, 'en_US', 'Shipping configuration edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1366, 'es_ES', 'Configuración de envío - base', '', '');
INSERT INTO `hook_i18n` VALUES(1366, 'fr_FR', 'Édition d\'une zone de livraiso - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1367, 'de_DE', 'Sonderangebot Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1367, 'en_US', 'Sale edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1367, 'es_ES', 'Editar Venta - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1367, 'fr_FR', 'Édition d\'une promotion - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1368, 'de_DE', 'Sonderangebot Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1368, 'en_US', 'Sale edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1368, 'es_ES', 'Editar Venta - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1368, 'fr_FR', 'Édition d\'une promotion - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1369, 'de_DE', 'Variable Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1369, 'en_US', 'Variable edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1369, 'es_ES', 'Editar variable - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1369, 'fr_FR', 'Édition d\'une variable - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1370, 'de_DE', 'Variable Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1370, 'en_US', 'Variable edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1370, 'es_ES', 'Editar variable - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1370, 'fr_FR', 'Édition d\'une variable - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1371, 'de_DE', 'Template Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1371, 'en_US', 'Template edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1371, 'es_ES', 'Editar plantilla - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1371, 'fr_FR', 'Édition d\'un gabarit - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1372, 'de_DE', 'Template Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1372, 'en_US', 'Template edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1372, 'es_ES', 'Editar plantilla - parte inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1372, 'fr_FR', 'Édition d\'un gabarit - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1373, 'de_DE', 'Taxregel Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1373, 'en_US', 'Tax rule edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1373, 'es_ES', 'Edición de regla de impuesto - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1373, 'fr_FR', 'Édition d\'une règle de taxe - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1374, 'de_DE', 'Taxregel Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1374, 'en_US', 'Tax rule edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1374, 'es_ES', 'Editar regla de Impuesto - base', '', '');
INSERT INTO `hook_i18n` VALUES(1374, 'fr_FR', 'Édition d\'une règle de taxe - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1375, 'de_DE', 'Taxe Bearbeitung - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1375, 'en_US', 'Tax edit - top', '', '');
INSERT INTO `hook_i18n` VALUES(1375, 'es_ES', 'Editar Impuesto - parte superior', '', '');
INSERT INTO `hook_i18n` VALUES(1375, 'fr_FR', 'Édition d\'une taxe - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1376, 'de_DE', 'Taxe Bearbeitung - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1376, 'en_US', 'Tax edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1376, 'es_ES', 'Editar Impuesto - base', '', '');
INSERT INTO `hook_i18n` VALUES(1376, 'fr_FR', 'Édition d\'une taxe - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1377, 'de_DE', 'Bestellungs Bearbeitung - unter die Produktdaten', '', '');
INSERT INTO `hook_i18n` VALUES(1377, 'en_US', 'Order edit - displayed after product information', '', '');
INSERT INTO `hook_i18n` VALUES(1377, 'es_ES', 'Edición de Pedido - se muestra después de la información de producto', '', '');
INSERT INTO `hook_i18n` VALUES(1377, 'fr_FR', 'Édition d\'une commande - sous les informations du produit', '', '');
INSERT INTO `hook_i18n` VALUES(1378, 'de_DE', 'SEO Tab - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1378, 'en_US', 'Tab SEO - top', '', '');
INSERT INTO `hook_i18n` VALUES(1378, 'es_ES', 'Ficha SEO - arriba', '', '');
INSERT INTO `hook_i18n` VALUES(1378, 'fr_FR', 'Onglet SEO - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1379, 'de_DE', 'SEO Tab - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1379, 'en_US', 'Tab SEO - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1379, 'es_ES', 'Ficha SEO - abajo', '', '');
INSERT INTO `hook_i18n` VALUES(1379, 'fr_FR', 'Onglet SEO - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1380, 'de_DE', 'Bild Tab - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1380, 'en_US', 'Tab image - top', '', '');
INSERT INTO `hook_i18n` VALUES(1380, 'es_ES', 'Pestaña de imagen - arriba', '', '');
INSERT INTO `hook_i18n` VALUES(1380, 'fr_FR', 'Onglet image - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1381, 'de_DE', 'Bild Tab - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1381, 'en_US', 'Tab image - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1381, 'es_ES', 'Pestaña de imagen - abajo', '', '');
INSERT INTO `hook_i18n` VALUES(1381, 'fr_FR', 'Onglet image - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1382, 'de_DE', 'Dokument Tab - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1382, 'en_US', 'Tab document - top', '', '');
INSERT INTO `hook_i18n` VALUES(1382, 'es_ES', 'Ficha de documento - arriba', '', '');
INSERT INTO `hook_i18n` VALUES(1382, 'fr_FR', 'Onglet document - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1383, 'de_DE', 'Dokument Tab - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1383, 'en_US', 'Tab document - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1383, 'es_ES', 'Ficha de documento - abajo', '', '');
INSERT INTO `hook_i18n` VALUES(1383, 'fr_FR', 'Onglet document - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1384, 'de_DE', 'Export modal or page - oben', '', '');
INSERT INTO `hook_i18n` VALUES(1384, 'en_US', 'Export modal or page - top', '', '');
INSERT INTO `hook_i18n` VALUES(1384, 'es_ES', 'Modal o página de exportación - superior', '', '');
INSERT INTO `hook_i18n` VALUES(1384, 'fr_FR', 'Modal ou page d\'export - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1385, 'de_DE', 'Export modal or page - unten', '', '');
INSERT INTO `hook_i18n` VALUES(1385, 'en_US', 'Export modal or page - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1385, 'es_ES', 'Modal o página de exportación - inferior', '', '');
INSERT INTO `hook_i18n` VALUES(1385, 'fr_FR', 'Modal ou page d\'export - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1386, 'de_DE', 'Bestellung - Kunde Informationen unten', '', '');
INSERT INTO `hook_i18n` VALUES(1386, 'en_US', 'Order - customer information bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1386, 'es_ES', 'Orden - parte inferior de información del cliente', '', '');
INSERT INTO `hook_i18n` VALUES(1386, 'fr_FR', 'Commande - en bas des  informations client', '', '');
INSERT INTO `hook_i18n` VALUES(1387, 'de_DE', 'Bestellung - Zahlungsmodul unten', '', '');
INSERT INTO `hook_i18n` VALUES(1387, 'en_US', 'Order - payment module bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1387, 'es_ES', 'Orden - parte inferior del módulo de pago', '', '');
INSERT INTO `hook_i18n` VALUES(1387, 'fr_FR', 'Commande - en bas du module de paiement', '', '');
INSERT INTO `hook_i18n` VALUES(1388, 'de_DE', 'Bestellung - Liefermodul unten', '', '');
INSERT INTO `hook_i18n` VALUES(1388, 'en_US', 'Order - delivery module bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1388, 'es_ES', 'Orden - parte inferior del módulo de entrega', '', '');
INSERT INTO `hook_i18n` VALUES(1388, 'fr_FR', 'Commande - en bas du module de livraison', '', '');
INSERT INTO `hook_i18n` VALUES(1389, 'de_DE', 'Registerkarte SEO - Update-Formular', '', '');
INSERT INTO `hook_i18n` VALUES(1389, 'en_US', 'Tab SEO - update form', '', '');
INSERT INTO `hook_i18n` VALUES(1389, 'es_ES', 'Ficha SEO - formato de actualización', '', '');
INSERT INTO `hook_i18n` VALUES(1389, 'fr_FR', 'Onglet SEO - formulaire de mise à jour', '', '');
INSERT INTO `hook_i18n` VALUES(1390, 'de_DE', 'Bestellung bearbeiten - Produkttabelle Header', '', '');
INSERT INTO `hook_i18n` VALUES(1390, 'en_US', 'Order edit - order product table header', '', '');
INSERT INTO `hook_i18n` VALUES(1390, 'es_ES', 'Edición de Pedido - encabezado de la tabla de pedido de producto', '', '');
INSERT INTO `hook_i18n` VALUES(1390, 'fr_FR', 'Modification commande - en-tête des produits', '', '');
INSERT INTO `hook_i18n` VALUES(1391, 'de_DE', 'Bestellung bearbeiten - Produkttabelle Zeile', '', '');
INSERT INTO `hook_i18n` VALUES(1391, 'en_US', 'Order edit - order product table row', '', '');
INSERT INTO `hook_i18n` VALUES(1391, 'es_ES', 'Edición de Pedido - fila de la tabla del pedido de producto', '', '');
INSERT INTO `hook_i18n` VALUES(1391, 'fr_FR', 'Modification commande - ligne du tableau des produits', '', '');
INSERT INTO `hook_i18n` VALUES(1392, 'de_DE', 'Administratoren - Header', '', '');
INSERT INTO `hook_i18n` VALUES(1392, 'en_US', 'Administrators - header', '', '');
INSERT INTO `hook_i18n` VALUES(1392, 'es_ES', 'Administradores - cabecera', '', '');
INSERT INTO `hook_i18n` VALUES(1392, 'fr_FR', 'Administrateurs - en-tête', '', '');
INSERT INTO `hook_i18n` VALUES(1393, 'de_DE', 'Administratoren - Zeile', '', '');
INSERT INTO `hook_i18n` VALUES(1393, 'en_US', 'Administrators - row', '', '');
INSERT INTO `hook_i18n` VALUES(1393, 'es_ES', 'Administradores - fila', '', '');
INSERT INTO `hook_i18n` VALUES(1393, 'fr_FR', 'Administrateurs - ligne', '', '');
INSERT INTO `hook_i18n` VALUES(1394, 'de_DE', 'Erweiterte Konfiguration', '', '');
INSERT INTO `hook_i18n` VALUES(1394, 'en_US', 'Advanced Configuration', '', '');
INSERT INTO `hook_i18n` VALUES(1394, 'es_ES', 'Configuración avanzada', '', '');
INSERT INTO `hook_i18n` VALUES(1394, 'fr_FR', 'Configuration avancée', '', '');
INSERT INTO `hook_i18n` VALUES(1395, 'de_DE', 'Erweiterte Konfiguration - JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1395, 'en_US', 'Advanced Configuration - Javascript', '', '');
INSERT INTO `hook_i18n` VALUES(1395, 'es_ES', 'Configuración avanzada - JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1395, 'fr_FR', 'Configuration avancée - JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1396, 'de_DE', 'Marke bearbeiten - Rechte Spalte oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1396, 'en_US', 'Brand edit - right column top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1396, 'es_ES', 'Edición de marca - encabezado de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1396, 'fr_FR', 'Édition d\'une marque - en haut de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1397, 'de_DE', 'Marke bearbeiten - Rechte Spalte unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1397, 'en_US', 'Brand edit - right column bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1397, 'es_ES', 'Edición de marca - al pie de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1397, 'fr_FR', 'Édition d\'une marque - en bas de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1398, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1398, 'en_US', 'Category edit - right column top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1398, 'es_ES', 'Edición de categoría - al tope de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1398, 'fr_FR', 'Édition d\'une catégorie - en haut de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1399, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1399, 'en_US', 'Category edit - right column bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1399, 'es_ES', 'Edición de categoría - al pie de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1399, 'fr_FR', 'Édition d\'une catégorie - en bas de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1400, 'de_DE', 'Inhalt bearbeiten - Rechte Spalte oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1400, 'en_US', 'Content edit - right column top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1400, 'es_ES', 'Edición de Contenido - al tope de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1400, 'fr_FR', 'Édition d\'un contenu - en haut de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1401, 'de_DE', 'Inhalt bearbeiten - Rechte Spalte unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1401, 'en_US', 'Content edit - right column bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1401, 'es_ES', 'Edición de Contenido - al pie de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1401, 'fr_FR', 'Édition d\'un contenu  - en bas de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1402, 'de_DE', 'Ordner bearbeiten - Rechte Spalte oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1402, 'en_US', 'Folder edit - right column top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1402, 'es_ES', 'Edición de carpeta - al tope de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1402, 'fr_FR', 'Édition d\'un dossier - en haut de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1403, 'de_DE', 'Ordner bearbeiten - Rechte Spalte unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1403, 'en_US', 'Folder edit - right column bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1403, 'es_ES', 'Edición de carpeta - al pie de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1403, 'fr_FR', 'Édition d\'un dossier - en bas de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1404, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1404, 'en_US', 'Product edit - right column top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1404, 'es_ES', 'Edición de producto - encabezado de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1404, 'fr_FR', 'Édition d\'un produit - en haut de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1405, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1405, 'en_US', 'Product edit - right column bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1405, 'es_ES', 'Edición de producto - al pie de la columna derecha', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1405, 'fr_FR', 'Édition d\'un produit - en bas de la colonne de droite', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1406, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1406, 'en_US', 'state-edit - at the top', '', '');
INSERT INTO `hook_i18n` VALUES(1406, 'es_ES', 'estado - editar - encabezado', '', '');
INSERT INTO `hook_i18n` VALUES(1406, 'fr_FR', 'édition d\'un état - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1407, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1407, 'en_US', 'state-edit - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1407, 'es_ES', 'estado - al pie', '', '');
INSERT INTO `hook_i18n` VALUES(1407, 'fr_FR', 'édition d\'un état - en bas', '', '');
INSERT INTO `hook_i18n` VALUES(1408, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1408, 'en_US', 'state - Edit JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1408, 'es_ES', 'estado - Editar JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1408, 'fr_FR', 'Etat - JavaScript modification', '', '');
INSERT INTO `hook_i18n` VALUES(1409, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1409, 'en_US', 'states - at the top', '', '');
INSERT INTO `hook_i18n` VALUES(1409, 'es_ES', 'estados - encabezado', '', '');
INSERT INTO `hook_i18n` VALUES(1409, 'fr_FR', 'états - en haut', '', '');
INSERT INTO `hook_i18n` VALUES(1410, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1410, 'en_US', 'states - table header', '', '');
INSERT INTO `hook_i18n` VALUES(1410, 'es_ES', 'estados - encabezado de tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1410, 'fr_FR', 'états - colonne tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1411, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1411, 'en_US', 'states - table row', '', '');
INSERT INTO `hook_i18n` VALUES(1411, 'es_ES', 'estados - fila de tabla', '', '');
INSERT INTO `hook_i18n` VALUES(1411, 'fr_FR', 'états - ligne du tableau', '', '');
INSERT INTO `hook_i18n` VALUES(1412, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1412, 'en_US', 'states - bottom', '', '');
INSERT INTO `hook_i18n` VALUES(1412, 'es_ES', 'estados - al pie', '', '');
INSERT INTO `hook_i18n` VALUES(1412, 'fr_FR', 'états - bas', '', '');
INSERT INTO `hook_i18n` VALUES(1413, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1413, 'en_US', 'state - creation form', '', '');
INSERT INTO `hook_i18n` VALUES(1413, 'es_ES', 'estado - formulario de creación', '', '');
INSERT INTO `hook_i18n` VALUES(1413, 'fr_FR', 'état - formulaire de création', '', '');
INSERT INTO `hook_i18n` VALUES(1414, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1414, 'en_US', 'state - delete form', '', '');
INSERT INTO `hook_i18n` VALUES(1414, 'es_ES', 'estado - formulario de borrado', '', '');
INSERT INTO `hook_i18n` VALUES(1414, 'fr_FR', 'état - formulaire de suppression', '', '');
INSERT INTO `hook_i18n` VALUES(1415, 'de_DE', NULL, '', '');
INSERT INTO `hook_i18n` VALUES(1415, 'en_US', 'states - JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1415, 'es_ES', 'estados - JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1415, 'fr_FR', 'états - JavaScript', '', '');
INSERT INTO `hook_i18n` VALUES(1416, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1416, 'en_US', 'Configuration - Order path - top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1416, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1416, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1417, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1417, 'en_US', 'Configuration - Order path - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1417, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1417, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1418, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1418, 'en_US', 'Order status - top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1418, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1418, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1419, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1419, 'en_US', 'Order status - bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1419, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1419, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1420, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1420, 'en_US', 'Order status - table header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1420, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1420, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1421, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1421, 'en_US', 'Order status - table row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1421, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1421, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1422, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1422, 'en_US', 'Order status - form creation', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1422, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1422, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1423, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1423, 'en_US', 'Order status - form modification', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1423, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1423, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1424, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1424, 'en_US', 'Order status - JavaScript', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1424, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(1424, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2001, 'de_DE', 'Rechnung - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2001, 'en_US', 'Invoice - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2001, 'es_ES', 'Factura - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2001, 'fr_FR', 'Facture - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2002, 'de_DE', 'Rechnung - im Header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2002, 'en_US', 'Invoice - in the header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2002, 'es_ES', 'Factura - en la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2002, 'fr_FR', 'Facture - dans l\'en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2003, 'de_DE', 'Rechnung - oben an dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2003, 'en_US', 'Invoice - at the top of the footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2003, 'es_ES', 'Factura - en la parte superior del pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2003, 'fr_FR', 'Facture - en haut du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2004, 'de_DE', 'Rechnung - Impressum', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2004, 'en_US', 'Invoice - imprint', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2004, 'es_ES', 'Factura - pie de imprenta', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2004, 'fr_FR', 'Facture - mentions légales', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2005, 'de_DE', 'Rechnung - unten an dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2005, 'en_US', 'Invoice - at the bottom of the footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2005, 'es_ES', 'Factura - en la parte inferior del pie de página', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2005, 'fr_FR', 'Facture - en bas du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2006, 'de_DE', 'Rechnung - unten an dem Informationsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2006, 'en_US', 'Invoice - at the bottom of information area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2006, 'es_ES', 'Factura - en la parte inferior del área de la información', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2006, 'fr_FR', 'Facture - en bas de la zone d\'informations', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2007, 'de_DE', 'Rechnung - nach dem Informationsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2007, 'en_US', 'Invoice - after the information area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2007, 'es_ES', 'Factura - después del área de información', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2007, 'fr_FR', 'Facture - après la zone d\'informations', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2008, 'de_DE', 'Rechnung - Bestellungsadresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2008, 'en_US', 'Invoice - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2008, 'es_ES', 'Factura - dirección de envío', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2008, 'fr_FR', 'Facture - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2009, 'de_DE', 'Rechnung - nach dem Adressebereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2009, 'en_US', 'Invoice - after addresse area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2009, 'es_ES', 'Factura - después del área de dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2009, 'fr_FR', 'Facture - après la zone d\'adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2010, 'de_DE', 'Rechnung - nach der Produktliste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2010, 'en_US', 'Invoice - after product listing', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2010, 'es_ES', 'Factura - después de listado de productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2010, 'fr_FR', 'Facture - après la liste des produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2011, 'de_DE', 'Rechnung - nach der Bestellungs-Zusammenfassung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2011, 'en_US', 'Invoice - after the order summary', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2011, 'es_ES', 'Factura - después del resumen de la orden', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2011, 'fr_FR', 'Facture - après le résumé de la commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2012, 'de_DE', 'Lieferung - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2012, 'en_US', 'Delivery - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2012, 'es_ES', 'Entrega - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2012, 'fr_FR', 'Bon de livraison - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2013, 'de_DE', 'Lieferung - im Header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2013, 'en_US', 'Delivery - in the header', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2013, 'es_ES', 'Envío - en la cabecera', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2013, 'fr_FR', 'Bon de livraison - dans l\'en-tête', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2014, 'de_DE', 'Lieferung - oben an dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2014, 'en_US', 'Delivery - at the top of the footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2014, 'es_ES', 'Envío - en la parte superior del footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2014, 'fr_FR', 'Bon de livraison - en haut du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2015, 'de_DE', 'Lieferung - Impressum', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2015, 'en_US', 'Delivery - imprint', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2015, 'es_ES', 'Envío - imprimir', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2015, 'fr_FR', 'Bon de livraison - mentions légales', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2016, 'de_DE', 'Lieferung - unten an dem Footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2016, 'en_US', 'Delivery - at the bottom of the footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2016, 'es_ES', 'Envío - En el pie del footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2016, 'fr_FR', 'Bon de livraison - en bas du pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2017, 'de_DE', 'Lieferung - unten an dem Informationsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2017, 'en_US', 'Delivery - at the bottom of information area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2017, 'es_ES', 'Envío - en el pié del área de información', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2017, 'fr_FR', 'Bon de livraison - en bas de la zone d\'informations', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2018, 'de_DE', 'Lieferung - Nach dem Informationsbereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2018, 'en_US', 'Delivery - after the information area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2018, 'es_ES', 'Entrega - después del área de información', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2018, 'fr_FR', 'Bon de livraison - après la zone d\'informations', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2019, 'de_DE', 'Lieferung - Lieferadresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2019, 'en_US', 'Delivery - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2019, 'es_ES', 'Envío - dirección de entrega', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2019, 'fr_FR', 'Bon de livraison - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2020, 'de_DE', 'Lieferung - Nach dem Adresse-Bereich', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2020, 'en_US', 'Delivery - after addresse area', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2020, 'es_ES', 'Entrega - tras el área de dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2020, 'fr_FR', 'Bon de livraison - après la zone d\'adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2021, 'de_DE', 'Lieferung - Nach der Zusammenfassung der Bestellung', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2021, 'en_US', 'Delivery - after the order summary', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2021, 'es_ES', 'Envío - después del resumen de pedido', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2021, 'fr_FR', 'Bon de livraison - après le résumé de la commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2022, 'de_DE', 'Bestellbestätigung - nach den Bestellungszusammenfassungen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2022, 'en_US', 'Order confirmation - after the order summary', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2022, 'es_ES', 'Confirmación de la orden - después del Resumen de la orden', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2022, 'fr_FR', 'Confirmation de commande - après les récapitulatif de commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2023, 'de_DE', 'Überall wo WYSIWYG editor ist nötig', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2023, 'en_US', 'Where the WYSIWYG editor is required', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2023, 'es_ES', 'Donde se requiere el editor WYSIWYG', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2023, 'fr_FR', 'Partout ou l\'éditeur WYSIWYG est nécessaire', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2024, 'de_DE', 'Bestellung - Warenkorb oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2024, 'en_US', 'Order - cart top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2024, 'es_ES', 'Orden - parte superior del carro', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2024, 'fr_FR', 'Commande - panier haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2025, 'de_DE', 'Bestellung - Warenkorb unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2025, 'en_US', 'Order - cart bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2025, 'es_ES', 'Orden - parte inferior del carro', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2025, 'fr_FR', 'Commande - panier bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2026, 'de_DE', 'Bestellung - Rechnung oben', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2026, 'en_US', 'Order - bill top', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2026, 'es_ES', 'Orden - parte superior de la cuenta', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2026, 'fr_FR', 'Commande - facture haut', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2027, 'de_DE', 'Bestellung - Rechnung unten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2027, 'en_US', 'Order - bill bottom', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2027, 'es_ES', 'Orden - parte inferior de la cuenta', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2027, 'fr_FR', 'Commande - facture bas', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2028, 'de_DE', 'Bestellung - Vor der Produktliste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2028, 'en_US', 'Order - Before product list', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2028, 'es_ES', 'Orden - antes de la lista de productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2028, 'fr_FR', 'Commande - Avant la liste des produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2029, 'de_DE', 'Bestellung - Vor der Öffnung der Produktzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2029, 'en_US', 'Order - Before starting product row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2029, 'es_ES', 'Orden - antes de comenzar la fila de producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2029, 'fr_FR', 'Commande - Avant d\'ouvrir la ligne produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2030, 'de_DE', 'Bestellung - Nach Sperrung der Produkt Zeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2030, 'en_US', 'Order - After closing product row', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2030, 'es_ES', 'Orden - después de cerrar la fila de producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2030, 'fr_FR', 'Commande - Après avoir fermé la ligne produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2031, 'de_DE', 'Bestellung - Nach der Produktliste', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2031, 'en_US', 'Order - After product list', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2031, 'es_ES', 'Orden - después de la lista de productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2031, 'fr_FR', 'Commande - Après la liste des produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2032, 'de_DE', 'Rechnung - Nach dem Zahlungsmodul', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2032, 'en_US', 'Invoice - After payment module', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2032, 'es_ES', 'Factura - Después de módulo de pago de factura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2032, 'fr_FR', 'Commande - après le module de paiement', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2033, 'de_DE', 'Rechnung - Nach dem Liefermodul', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2033, 'en_US', 'Invoice - After delivery module', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2033, 'es_ES', 'Factura - Después de módulo de entrega de factura', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2033, 'fr_FR', 'Commande - après le module de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2034, 'de_DE', 'Lieferung - Nach dem Liefermodul', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2034, 'en_US', 'Delivery - After delivery module', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2034, 'es_ES', 'Entrega - después del módulo de entrega', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2034, 'fr_FR', 'Commande - après le module de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2035, 'de_DE', 'Rechnung - Weitere Produktinformationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2035, 'en_US', 'Invoice - additional product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2035, 'es_ES', 'Factura - información adicional del producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2035, 'fr_FR', 'Facture - informations additionnelles pour un produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2036, 'de_DE', 'Lieferung - Weitere Produktinformationen', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2036, 'en_US', 'Delivery - additional product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2036, 'es_ES', 'Entrega - información adicional del producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2036, 'fr_FR', 'Bon de livraison - informations additionnelles pour un produit', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2037, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2037, 'en_US', 'Delivery - after product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2037, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2037, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2038, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2038, 'en_US', 'Invoice - after product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2038, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(2038, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3000, 'de_DE', 'E-Mail html - Layout - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3000, 'en_US', 'Email html - layout - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3000, 'es_ES', 'Email HTML - Interfaz - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3000, 'fr_FR', 'Email html - layout - CSS', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3001, 'de_DE', 'E-Mail html - Layout - Fußzeile', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3001, 'en_US', 'Email html - layout - footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3001, 'es_ES', 'Email HTML - Interfaz - pie', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3001, 'fr_FR', 'Email html - layout - pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3002, 'de_DE', 'E-Mail html - Bestellbestätigung - vor Adresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3002, 'en_US', 'Email html - order confirmation - before address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3002, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3002, 'fr_FR', 'Email html - confirmation commande - avant adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3003, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3003, 'en_US', 'Email html - order confirmation - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3003, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3003, 'fr_FR', 'Email html - confirmation commande - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3004, 'de_DE', 'E-Mail html - Bestellbestätigung - nach Adresse', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3004, 'en_US', 'Email html - order confirmation - after address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3004, 'es_ES', 'Email HTML - confirmación de orden - después de la dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3004, 'fr_FR', 'Email html - confirmation commande - après adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3005, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3005, 'en_US', 'Email html - order confirmation - order product', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3005, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3005, 'fr_FR', 'Email html - confirmation commande - produit de la commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3006, 'de_DE', 'E-Mail html - Bestellbestätigung - vor Produkten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3006, 'en_US', 'Email html - order confirmation - before products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3006, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3006, 'fr_FR', 'Email html - confirmation commande - avant produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3007, 'de_DE', 'E-Mail html - Bestellbestätigung - nach Produkten', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3007, 'en_US', 'Email html - order confirmation - after products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3007, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3007, 'fr_FR', 'Email html - confirmation commande - après produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3008, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3008, 'en_US', 'Email html - order confirmation - footer', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3008, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3008, 'fr_FR', 'Email html - confirmation commande - pied de page', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3009, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3009, 'en_US', 'Email html - order notification - before address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3009, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3009, 'fr_FR', 'Email html - notification commande - avant adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3010, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3010, 'en_US', 'Email html - order notification - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3010, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3010, 'fr_FR', 'Email html - notification commande - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3011, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3011, 'en_US', 'Email html - order notification - after address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3011, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3011, 'fr_FR', 'Email html - notification commande - après adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3012, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3012, 'en_US', 'Email html - order notification - order product', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3012, 'es_ES', 'Email HTML - notificación de orden - pedir producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3012, 'fr_FR', 'Email html - notification commande - produit de la commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3013, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3013, 'en_US', 'Email html - order notification - before products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3013, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3013, 'fr_FR', 'Email html - notification commande - avant produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3014, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3014, 'en_US', 'Email html - order notification - after products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3014, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3014, 'fr_FR', 'Email html - notification commande - après produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3015, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3015, 'en_US', 'Email txt - order confirmation - before address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3015, 'es_ES', 'Email texto - confirmación de pedido - antes de la dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3015, 'fr_FR', 'Email txt - confirmation commande - avant adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3016, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3016, 'en_US', 'Email txt - order confirmation - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3016, 'es_ES', 'Email texto - confirmación de pedido - dirección de entrega', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3016, 'fr_FR', 'Email txt - confirmation commande - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3017, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3017, 'en_US', 'Email txt - order confirmation - after address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3017, 'es_ES', 'Email texto - confirmación de pedido - después de la dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3017, 'fr_FR', 'Email txt - confirmation commande - après adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3018, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3018, 'en_US', 'Email txt - order confirmation - order product', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3018, 'es_ES', 'Email texto - confirmación de pedido - pedido de producto', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3018, 'fr_FR', 'Email txt - confirmation commande - produit de la commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3019, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3019, 'en_US', 'Email txt - order confirmation - before products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3019, 'es_ES', 'Email texto - confirmación de pedido - antes de los productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3019, 'fr_FR', 'Email txt - confirmation commande - avant produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3020, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3020, 'en_US', 'Email txt - order confirmation - after products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3020, 'es_ES', 'Email texto - confirmación de pedido - después de los productos', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3020, 'fr_FR', 'Email txt - confirmation commande - après produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3021, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3021, 'en_US', 'Email txt - order notification - before address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3021, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3021, 'fr_FR', 'Email txt - notification commande - avant adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3022, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3022, 'en_US', 'Email txt - order notification - delivery address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3022, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3022, 'fr_FR', 'Email txt - notification commande - adresse de livraison', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3023, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3023, 'en_US', 'Email txt - order notification - after address', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3023, 'es_ES', 'Email texto - notificación de pedido - después de la dirección', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3023, 'fr_FR', 'Email txt - notification commande - après adresses', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3024, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3024, 'en_US', 'Email txt - order notification - order product', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3024, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3024, 'fr_FR', 'Email txt - notification commande - produit de la commande', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3025, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3025, 'en_US', 'Email txt - order notification - before products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3025, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3025, 'fr_FR', 'Email txt - notification commande - avant produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3026, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3026, 'en_US', 'Email txt - order notification - after products', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3026, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3026, 'fr_FR', 'Email txt - notification commande - après produits', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3027, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3027, 'en_US', 'Email html - order notification - after product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3027, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3027, 'fr_FR', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3028, 'de_DE', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3028, 'en_US', 'Email txt - order notification - after product information', NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3028, 'es_ES', NULL, NULL, NULL);
INSERT INTO `hook_i18n` VALUES(3028, 'fr_FR', NULL, NULL, NULL);

CREATE TABLE `ignored_module_hook` (
  `module_id` int(11) NOT NULL,
  `hook_id` int(11) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `import` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `import_category_id` int(11) NOT NULL,
  `handle_class` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `import` VALUES(1, 'thelia.import.stock', 1, 1, 'Thelia\\ImportExport\\Import\\Type\\ProductStockImport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `import` VALUES(2, 'thelia.import.price', 2, 1, 'Thelia\\ImportExport\\Import\\Type\\ProductPricesImport', '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `import_category` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `import_category` VALUES(1, 'thelia.import.products', 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `import_category` VALUES(2, 'thelia.import.modules', 2, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `import_category_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `import_category_i18n` VALUES(1, 'en_US', 'Products');
INSERT INTO `import_category_i18n` VALUES(1, 'fr_FR', 'Produits');
INSERT INTO `import_category_i18n` VALUES(2, 'en_US', 'Modules');
INSERT INTO `import_category_i18n` VALUES(2, 'fr_FR', 'Modules');

CREATE TABLE `import_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `import_i18n` VALUES(1, 'en_US', 'Import your stock', '\n                    \n                    Your file must have the following columns to work:\n                    <ul>\n                        <li>id: The id of your product sale elements </li>\n                        <li>stock: The quantity of product you have </li>\n                    </ul>\n                    It can have the column \"ean\" that defines the product\'s EAN code.\n                    \n                ');
INSERT INTO `import_i18n` VALUES(1, 'fr_FR', 'Importer votre stock', '\n                    \n                    Votre fichier doit avoir les colonnes suivantes :\n                    <ul>\n                        <li>id: L\'id de la déclinaison de produit</li>\n                        <li>stock: La quantité de la déclinaison </li>\n                    </ul>\n                    \n                ');
INSERT INTO `import_i18n` VALUES(2, 'en_US', 'Import your prices excluding taxes', '\n                    \n                    Your file must have the following columns:\n                    <ul>\n                        <li>id: The id of your product sale elements </li>\n                        <li>price: The price excluding taxes of the product attribute combinations</li>\n                    </ul>\n                    It may also optionally have those columns:\n                    <ul>\n                       <li>currency: the currency code (example: EUR, USD)</li>\n                       <li>promo_price: the promo price excluding taxes of the product attribute combinations</li>\n                       <li>promo: If this value is 0, set the product not in promo, if 1, it sets the product in promo</li>\n                    </ul>\n                    \n                ');
INSERT INTO `import_i18n` VALUES(2, 'fr_FR', 'Importer vos prix Hors-Taxes', '\n                    \n                    Votre fichier doit avoir les colonnes suivantes:\n                    <ul>\n                        <li>id: L\'id de la déclinaison de produit</li>\n                        <li>price: Le prix Hors-Taxes de votre déclinaison de combinaison de produit</li>\n                    </ul>\n                    Il peut aussi optionnellement avoir ces colonnes:\n                    <ul>\n                       <li>currency: Le code de la monnaie (exemple: EUR, USD)</li>\n                       <li>promo_price: Le prix promotionnel Hors-Taxes de votre déclinaison de combinaison de produit</li>\n                       <li>promo: Si cette valeur est a 0, désactive la promotion, si elle est a 1, l\'active</li>\n                    </ul>\n                    \n                ');

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `locale` varchar(45) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `date_format` varchar(45) DEFAULT NULL,
  `time_format` varchar(45) DEFAULT NULL,
  `datetime_format` varchar(45) DEFAULT NULL,
  `decimal_separator` varchar(45) DEFAULT NULL,
  `thousands_separator` varchar(45) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `visible` tinyint(4) DEFAULT '0',
  `decimals` varchar(45) DEFAULT NULL,
  `by_default` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lang` VALUES(1, 'Français', 'fr', 'fr_FR', '', 'd/m/Y', 'H:i:s', 'd/m/Y H:i:s', ',', ' ', 1, 1, '2', 0, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `lang` VALUES(2, 'English', 'en', 'en_US', '', 'm-d-Y', 'h:i:s', 'm-d-Y h:i:s', '.', ' ', 1, 1, '2', 1, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `lang` VALUES(3, 'Castellano', 'es', 'es_ES', '', 'm-d-Y', 'h:i:s', 'm-d-Y h:i:s', ',', '.', 1, 1, '2', 0, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `lang` VALUES(4, 'Italiano', 'it', 'it_IT', '', 'd/m/Y', 'H:i:s', 'd/m/y H:i:s', ',', ' ', 1, 1, '2', 0, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `lang` VALUES(5, 'Russian', 'ru', 'ru_RU', '', 'j.n.Y', 'H:i:s', 'j.n.Y H:i:s', ',', ' ', 0, 0, '2', 0, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `lang` VALUES(6, 'Czech', 'cs', 'cs_CZ', '', 'j.n.Y', 'H:i:s', 'j.n.Y H:i:s', ',', ' ', 0, 0, '2', 0, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `lang` VALUES(7, 'Deutsch', 'de', 'de_DE', '', 'd-m-Y', 'H:i:s', 'd-m-Y H:i:s', ',', '.', 0, 0, '2', 0, NULL, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secured` tinyint(4) DEFAULT NULL,
  `text_layout_file_name` varchar(255) DEFAULT NULL,
  `text_template_file_name` varchar(255) DEFAULT NULL,
  `html_layout_file_name` varchar(255) DEFAULT NULL,
  `html_template_file_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `message` VALUES(1, 'order_confirmation', NULL, NULL, 'order_confirmation.txt', NULL, 'order_confirmation.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(2, 'lost_password', NULL, NULL, 'password.txt', NULL, 'password.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(3, 'order_notification', NULL, NULL, 'order_notification.txt', NULL, 'order_notification.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(4, 'customer_account_changed', 0, NULL, 'account_changed_by_admin.txt', NULL, 'account_changed_by_admin.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(5, 'customer_account_created', 0, NULL, 'account_created_by_admin.txt', NULL, 'account_created_by_admin.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(6, 'new_admin_password', NULL, NULL, 'admin_password.txt', NULL, 'admin_password.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(7, 'newsletter_subscription_confirmation', NULL, NULL, 'newsletter_subscription_confirmation.txt', NULL, 'newsletter_subscription_confirmation.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);
INSERT INTO `message` VALUES(8, 'customer_confirmation', NULL, NULL, 'customer_confirmation.txt', NULL, 'customer_confirmation.html', '2018-03-19 13:26:09', '2018-03-19 13:26:09', 0, NULL, NULL);

CREATE TABLE `message_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` text,
  `subject` text,
  `text_message` longtext,
  `html_message` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `message_i18n` VALUES(1, 'de_DE', 'Bestellbestätigung den Kunden gesendet', 'Ihre Bestellung {$order_ref} bei {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(1, 'en_US', 'Order confirmation sent to the customer', 'Your order {$order_ref} at {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(1, 'es_ES', 'Confirmación de la orden enviada al cliente', 'Su orden {$order_ref} en {tecla config = \"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(1, 'fr_FR', 'Confirmation de commande envoyée au client', 'Votre commande {$order_ref} chez {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(2, 'de_DE', 'Ihr neues Passwort', 'Ihr neues Passwort für {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(2, 'en_US', 'Your new password', 'Your new password for {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(2, 'es_ES', 'Su nueva contraseña', 'Su nueva contraseña para {tecla config = \"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(2, 'fr_FR', 'Votre nouveau mot de passe', 'Votre nouveau mot de passe {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(3, 'de_DE', 'Gesendete Nachricht wenn eine neue Bestellung erteilt wird.', 'Neue Bestellung {$order_ref} für {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(3, 'en_US', 'Message sent to the shop owner when a new order is placed', 'New order {$order_ref} placed on {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(3, 'es_ES', 'Mensaje enviado al propietario de la tienda cuando se envía una nueva orden', 'Nueva orden {$order_ref} ubicada en {tecla config = \"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(3, 'fr_FR', 'Message envoyé au gestionnaire de la boutique lors d\'une nouvelle commande.', 'Nouvelle commande {$order_ref} reçue sur {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(4, 'de_DE', 'Mail an den Kunden geschickt, wenn sein Passwort oder E-Mail von einem Administrator im Back-Office geändert werden', 'Ihre Konto-Zugriff für {config key=\"store_name\"} wurde geändert', NULL, NULL);
INSERT INTO `message_i18n` VALUES(4, 'en_US', 'Mail sent to the customer when its password or email is changed in the back-office', 'Your account information on {config key=\"store_name\"} has been changed.', NULL, NULL);
INSERT INTO `message_i18n` VALUES(4, 'es_ES', 'Correo enviado al cliente cuando se cambia su contraseña o correo electrónico en el back-office', 'La información de su cuenta en {tecla config = \"store_name\"} ha sido cambiada.', NULL, NULL);
INSERT INTO `message_i18n` VALUES(4, 'fr_FR', 'Message envoyé au client lorsque son mot de passe ou son email est changé dans le back-office', 'L\'accès à votre compte {config key=\"store_name\"} a changé', NULL, NULL);
INSERT INTO `message_i18n` VALUES(5, 'de_DE', 'Mail an den Kunden geschickt, wenn sein Konto von einem Administrator im Back-Office erstellt wird', 'Ein Konto {config key=\"store_name\"} wurde für Sie erstellt.', NULL, NULL);
INSERT INTO `message_i18n` VALUES(5, 'en_US', 'Mail sent to the customer when its account is created by an administrator in the back-office', 'A {config key=\"store_name\"} account has been created for you', NULL, NULL);
INSERT INTO `message_i18n` VALUES(5, 'es_ES', 'Correo enviado al cliente cuando se crea su cuenta por un administrador en el back-office', 'Una {config key=\"store_name\"} cuenta ha sido creada para ti', NULL, NULL);
INSERT INTO `message_i18n` VALUES(5, 'fr_FR', 'Mail envoyé au client lorsque son compte est créé depuis le back-office par un administrateur', 'Un compte {config key=\"store_name\"} vient d\'être créé pour vous.', NULL, NULL);
INSERT INTO `message_i18n` VALUES(6, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `message_i18n` VALUES(6, 'en_US', 'Mail sent to an administrator who requested a new password', 'New password request on {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(6, 'es_ES', 'Correo enviado a un administrador que ha solicitado una nueva contraseña', 'Nueva contraseña solicitada en {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(6, 'fr_FR', 'Courrier envoyé à un administrateur qui a demandé un nouveau mot de passe', 'Votre demande de mot de passe {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(7, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `message_i18n` VALUES(7, 'en_US', 'Newsletter subscription confirmation mail', 'Your subscription to {config key=\"store_name\"} newsletter', NULL, NULL);
INSERT INTO `message_i18n` VALUES(7, 'es_ES', 'Confirmación de suscripción por correo al boletín', 'Tu suscripción al boletín de {config key=\"store_name\"}', NULL, NULL);
INSERT INTO `message_i18n` VALUES(7, 'fr_FR', 'Mail de confirmation d\'inscription à la newsletter', 'Votre abonnement à {config key=\"store_name\"} newsletter', NULL, NULL);
INSERT INTO `message_i18n` VALUES(8, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `message_i18n` VALUES(8, 'en_US', 'Mail sent to the customer to confirm its account', 'Confirm your {config key=\"store_name\"} account', NULL, NULL);
INSERT INTO `message_i18n` VALUES(8, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `message_i18n` VALUES(8, 'fr_FR', 'E-mail de confirmation de création de compte client', 'Confirmez la création de votre compte {config key=\"store_name\"}', NULL, NULL);

CREATE TABLE `message_version` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secured` tinyint(4) DEFAULT NULL,
  `text_layout_file_name` varchar(255) DEFAULT NULL,
  `text_template_file_name` varchar(255) DEFAULT NULL,
  `html_layout_file_name` varchar(255) DEFAULT NULL,
  `html_template_file_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `meta_data` (
  `id` int(11) NOT NULL,
  `meta_key` varchar(100) NOT NULL,
  `element_key` varchar(100) NOT NULL,
  `element_id` int(11) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `version` varchar(25) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL,
  `category` varchar(50) NOT NULL DEFAULT 'classic',
  `activate` tinyint(4) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `full_namespace` varchar(255) DEFAULT NULL,
  `mandatory` tinyint(4) DEFAULT '0',
  `hidden` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `module` VALUES(1, 'Carousel', '', 1, 'classic', 0, 1, 'Carousel\\Carousel', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(2, 'Colissimo', '', 2, 'classic', 0, 1, 'Colissimo\\Colissimo', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(3, 'Cheque', '', 3, 'classic', 0, 1, 'Cheque\\Cheque', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(4, 'Front', '', 1, 'classic', 1, 2, 'Front\\Front', 0, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(5, 'Tinymce', '', 1, 'classic', 0, 16, 'Tinymce\\Tinymce', 1, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(6, 'HookNavigation', '', 1, 'classic', 1, 11, 'HookNavigation\\HookNavigation', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(7, 'HookCurrency', '', 1, 'classic', 1, 3, 'HookCurrency\\HookCurrency', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(8, 'HookLang', '', 1, 'classic', 1, 4, 'HookLang\\HookLang', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(9, 'HookSearch', '', 1, 'classic', 1, 5, 'HookSearch\\HookSearch', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(10, 'HookCustomer', '', 1, 'classic', 1, 6, 'HookCustomer\\HookCustomer', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(11, 'HookCart', '', 1, 'classic', 1, 7, 'HookCart\\HookCart', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(12, 'HookAnalytics', '', 1, 'classic', 1, 8, 'HookAnalytics\\HookAnalytics', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(13, 'HookContact', '', 1, 'classic', 1, 9, 'HookContact\\HookContact', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(14, 'HookLinks', '', 1, 'classic', 1, 10, 'HookLinks\\HookLinks', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(15, 'HookNewsletter', '', 1, 'classic', 1, 12, 'HookNewsletter\\HookNewsletter', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(16, 'HookSocial', '', 1, 'classic', 1, 13, 'HookSocial\\HookSocial', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(17, 'HookProductsNew', '', 1, 'classic', 1, 14, 'HookProductsNew\\HookProductsNew', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(18, 'HookProductsOffer', '', 1, 'classic', 1, 15, 'HookProductsOffer\\HookProductsOffer', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(19, 'TheliaSmarty', '', 1, 'classic', 1, 16, 'TheliaSmarty\\TheliaSmarty', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(20, 'VirtualProductControl', '', 1, 'classic', 1, 17, 'VirtualProductControl\\VirtualProductControl', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `module` VALUES(21, 'HookAdminHome', '', 1, 'classic', 1, 18, 'HookAdminHome\\HookAdminHome', 0, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `module_config` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `module_config_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `module_hook` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `hook_id` int(11) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `hook_active` tinyint(1) NOT NULL,
  `module_active` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `templates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `module_hook` VALUES(1, 7, 94, 'hookcurrency.hook.front', 'insertTemplate', 1, 1, 1, 1, 'render:main-navbar-secondary.html');
INSERT INTO `module_hook` VALUES(2, 8, 94, 'hooklang.hook.front', 'insertTemplate', 1, 1, 1, 2, 'render:main-navbar-secondary.html');
INSERT INTO `module_hook` VALUES(3, 9, 91, 'hooksearch.hook.front', 'insertTemplate', 1, 1, 1, 1, 'css:assets/css/styles.css');
INSERT INTO `module_hook` VALUES(4, 9, 94, 'hooksearch.hook.front', 'insertTemplate', 1, 1, 1, 3, 'render:main-navbar-secondary.html');
INSERT INTO `module_hook` VALUES(5, 9, 95, 'hooksearch.hook.front', 'insertTemplate', 0, 1, 1, 1, 'render:main-navbar-primary.html');
INSERT INTO `module_hook` VALUES(6, 10, 91, 'hookcustomer.hook.front', 'insertTemplate', 1, 1, 1, 2, 'css:assets/css/styles.css');
INSERT INTO `module_hook` VALUES(7, 10, 94, 'hookcustomer.hook.front', 'insertTemplate', 1, 1, 1, 4, 'render:main-navbar-secondary.html');
INSERT INTO `module_hook` VALUES(8, 11, 91, 'hookcart.hook.front', 'insertTemplate', 1, 1, 1, 3, 'css:assets/css/styles.css');
INSERT INTO `module_hook` VALUES(9, 11, 94, 'hookcart.hook.front', 'insertTemplate', 1, 1, 1, 5, 'main-navbar-secondary.html');
INSERT INTO `module_hook` VALUES(10, 11, 223, 'hookcart.hook.front', 'insertTemplate', 1, 1, 1, 1, 'render:mini-cart.html');
INSERT INTO `module_hook` VALUES(11, 12, 91, 'hookanalytics.hook.front', 'onMainHeadBottom', 1, 1, 1, 4, '');
INSERT INTO `module_hook` VALUES(12, 12, 1235, 'hookanalytics.hook.back', 'insertTemplate', 1, 1, 1, 1, 'render:module_configuration.html');
INSERT INTO `module_hook` VALUES(13, 12, 1236, 'hookanalytics.hook.back', 'insertTemplate', 1, 1, 1, 1, 'js:assets/js/module-configuration.js');
INSERT INTO `module_hook` VALUES(14, 13, 100, 'hookcontact.hook.front', 'onMainFooterBody', 1, 1, 1, 1, '');
INSERT INTO `module_hook` VALUES(15, 14, 100, 'hooklinks.hook.front', 'onMainFooterBody', 1, 1, 1, 2, '');
INSERT INTO `module_hook` VALUES(16, 6, 95, 'hooknavigation.hook.front', 'insertTemplate', 1, 1, 1, 2, 'render:main-navbar-primary.html');
INSERT INTO `module_hook` VALUES(17, 6, 101, 'hooknavigation.hook.front', 'onMainFooterBottom', 1, 1, 1, 1, '');
INSERT INTO `module_hook` VALUES(18, 6, 100, 'hooknavigation.hook.front', 'onMainFooterBody', 1, 1, 1, 3, '');
INSERT INTO `module_hook` VALUES(19, 15, 100, 'hooknewsletter.hook.front', 'onMainFooterBody', 1, 1, 1, 4, '');
INSERT INTO `module_hook` VALUES(20, 16, 100, 'hooksocial.hook.front', 'onMainFooterBody', 1, 1, 1, 5, '');
INSERT INTO `module_hook` VALUES(21, 16, 1235, 'hooksocial.hook.back', 'insertTemplate', 1, 1, 1, 2, 'render:module_configuration.html');
INSERT INTO `module_hook` VALUES(22, 16, 1236, 'hooksocial.hook.back', 'insertTemplate', 1, 1, 1, 2, 'js:assets/js/module-configuration.js');
INSERT INTO `module_hook` VALUES(23, 17, 149, 'hookproductsnew.hook.front', 'insertTemplate', 1, 1, 1, 1, 'render:home-body.html');
INSERT INTO `module_hook` VALUES(24, 18, 149, 'hookproductsoffer.hook.front', 'insertTemplate', 1, 1, 1, 2, 'render:home-body.html');
INSERT INTO `module_hook` VALUES(25, 20, 1304, 'virtualproductcontrol.hook', 'onMainBeforeContent', 1, 1, 1, 1, '');
INSERT INTO `module_hook` VALUES(26, 21, 1259, 'hookadminhome.hook.css', 'insertTemplate', 1, 1, 1, 1, 'css:assets/css/home.css');
INSERT INTO `module_hook` VALUES(27, 21, 1105, 'hookadminhome.hook.block_information', 'insertTemplate', 1, 1, 1, 1, 'render:block-information.html');
INSERT INTO `module_hook` VALUES(28, 21, 1105, 'hookadminhome.hook.block_statistics', 'blockStatistics', 1, 1, 1, 2, '');
INSERT INTO `module_hook` VALUES(29, 21, 1107, 'hookadminhome.hook.block_statistics', 'blockStatisticsJs', 1, 1, 1, 1, '');
INSERT INTO `module_hook` VALUES(30, 21, 1280, 'hookadminhome.hook.block_sales_statistics', 'blockSalesStatistics', 1, 1, 1, 1, '');
INSERT INTO `module_hook` VALUES(31, 21, 1280, 'hookadminhome.hook.block_news', 'blockNews', 1, 1, 1, 2, '');
INSERT INTO `module_hook` VALUES(32, 21, 1107, 'hookadminhome.hook.block_news', 'insertTemplate', 1, 1, 1, 2, 'render:block-news-js.html');
INSERT INTO `module_hook` VALUES(33, 21, 1280, 'hookadminhome.hook.block_thelia_informations', 'blockTheliaInformation', 1, 1, 1, 3, '');

CREATE TABLE `module_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `module_i18n` VALUES(1, 'de_DE', 'Ein Bilder-Karussel auf Ihre Startseite', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(1, 'en_US', 'An image carousel on your home page', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(1, 'es_ES', 'Un carrusel de imágenes en la página de inicio', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(1, 'fr_FR', 'Un carrousel d\'images sur votre page d\'accueil', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(2, 'de_DE', '72Std Lieferung ', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(2, 'en_US', '72h delivery', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(2, 'es_ES', 'entrega 72h', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(2, 'fr_FR', 'Livraison par colissimo en 72h', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(3, 'de_DE', 'Per Cheque bezahlen', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(3, 'en_US', 'Pay by cheque', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(3, 'es_ES', 'Pagar con Cheque', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(3, 'fr_FR', 'Payer par chèque', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(4, 'de_DE', 'Front office Modul ', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(4, 'en_US', 'Front office integration', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(4, 'es_ES', 'Front office integración', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(4, 'fr_FR', 'Module Front office', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(5, 'de_DE', 'TinyMCE WYSIWYG Editor', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(5, 'en_US', 'TinyMCE WYSIWYG editor', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(5, 'es_ES', 'Editor TinyMCE WYSIWYG', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(5, 'fr_FR', 'Editeur visuel TinyMCE', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(6, 'de_DE', 'Menü Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(6, 'en_US', 'Navigation block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(6, 'es_ES', 'Bloque de navegación', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(6, 'fr_FR', 'Bloc menu', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(7, 'de_DE', 'Währungensblock', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(7, 'en_US', 'Currency block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(7, 'es_ES', 'Bloque de monedas', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(7, 'fr_FR', 'Bloc des devises', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(8, 'de_DE', 'Sprachen Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(8, 'en_US', 'Languages block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(8, 'es_ES', 'Bloque de idiomas', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(8, 'fr_FR', 'Bloc des langues', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(9, 'de_DE', 'Suche-Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(9, 'en_US', 'Search block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(9, 'es_ES', 'Bloque de búsqueda', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(9, 'fr_FR', 'Bloc de recherche', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(10, 'de_DE', 'Kundenkonto-Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(10, 'en_US', 'Customer account block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(10, 'es_ES', 'Bloque de cuenta de cliente', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(10, 'fr_FR', 'Bloc compte client', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(11, 'de_DE', 'Warenkorb Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(11, 'en_US', 'Cart block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(11, 'es_ES', 'Bloque de carrito', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(11, 'fr_FR', 'Bloc panier', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(12, 'de_DE', 'Google Analytics Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(12, 'en_US', 'Google Analytics block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(12, 'es_ES', 'Bloque Google Analytics', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(12, 'fr_FR', 'Bloc Google Analytics', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(13, 'de_DE', 'Kontakt-Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(13, 'en_US', 'Contact block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(13, 'es_ES', 'Bloque de contacto', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(13, 'fr_FR', 'Bloc contact', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(14, 'de_DE', 'Links Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(14, 'en_US', 'Links block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(14, 'es_ES', 'Bloque de enlaces', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(14, 'fr_FR', 'Bloc liens', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(15, 'de_DE', 'Newsletter Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(15, 'en_US', 'Newsletter block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(15, 'es_ES', 'Bloque del boletín de noticias', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(15, 'fr_FR', 'Bloc newsletter', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(16, 'de_DE', 'Social Networks Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(16, 'en_US', 'Social Networks block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(16, 'es_ES', 'Bloque de Redes Sociales', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(16, 'fr_FR', 'Bloc réseaux sociaux', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(17, 'de_DE', 'Neue Produkte Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(17, 'en_US', 'New Products block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(17, 'es_ES', 'Bloque de nuevos productos', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(17, 'fr_FR', 'Bloc nouveaux produits', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(18, 'de_DE', 'Sonderangebot-Block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(18, 'en_US', 'Products offer block', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(18, 'es_ES', 'Bloque de oferta de productos', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(18, 'fr_FR', 'Bloc promotions', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(19, 'de_DE', 'Smarty Template Engine Integration', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(19, 'en_US', 'Smarty template engine integration', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(19, 'es_ES', 'Integración del motor de plantillas Smarty', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(19, 'fr_FR', 'Intégration du moteur de template Smarty', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(20, 'de_DE', 'Steuerung für virtuelle Produkte', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(20, 'en_US', 'Virtual Product Controller', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(20, 'es_ES', 'Controlador de producto virtual', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(20, 'fr_FR', 'Contôle de produit virtuel', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(21, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(21, 'en_US', 'Back-office Home page content', NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(21, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `module_i18n` VALUES(21, 'fr_FR', 'Contenu de la page d\'accueil de l\'administration', NULL, NULL, NULL);

CREATE TABLE `module_image` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `module_image_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `locale` varchar(5) DEFAULT NULL,
  `unsubscribed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `ref` varchar(45) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_order_address_id` int(11) NOT NULL,
  `delivery_order_address_id` int(11) NOT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_rate` float NOT NULL,
  `transaction_ref` varchar(100) DEFAULT NULL COMMENT 'transaction reference - usually use to identify a transaction with banking modules',
  `delivery_ref` varchar(100) DEFAULT NULL COMMENT 'delivery reference - usually use to identify a delivery progress on a distant delivery tracker website',
  `invoice_ref` varchar(100) DEFAULT NULL COMMENT 'the invoice reference',
  `discount` decimal(16,6) DEFAULT '0.000000',
  `postage` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `postage_tax` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `postage_tax_rule_title` varchar(255) DEFAULT NULL,
  `payment_module_id` int(11) NOT NULL,
  `delivery_module_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_address` (
  `id` int(11) NOT NULL,
  `customer_title_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_coupon` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` longtext NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `expiration_date` datetime NOT NULL,
  `is_cumulative` tinyint(1) NOT NULL,
  `is_removing_postage` tinyint(1) NOT NULL,
  `is_available_on_special_offers` tinyint(1) NOT NULL,
  `serialized_conditions` text NOT NULL,
  `per_customer_usage_count` tinyint(1) NOT NULL,
  `usage_canceled` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_coupon_country` (
  `coupon_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_coupon_module` (
  `coupon_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_ref` varchar(255) NOT NULL,
  `product_sale_elements_ref` varchar(255) NOT NULL,
  `product_sale_elements_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `chapo` text,
  `description` longtext,
  `postscriptum` text,
  `quantity` float NOT NULL,
  `price` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `promo_price` decimal(16,6) DEFAULT '0.000000',
  `was_new` tinyint(4) NOT NULL,
  `was_in_promo` tinyint(4) NOT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `ean_code` varchar(255) DEFAULT NULL,
  `tax_rule_title` varchar(255) DEFAULT NULL,
  `tax_rule_description` longtext,
  `parent` int(11) DEFAULT NULL COMMENT 'not managed yet',
  `virtual` tinyint(4) NOT NULL DEFAULT '0',
  `virtual_document` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_product_attribute_combination` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `attribute_title` varchar(255) NOT NULL,
  `attribute_chapo` text,
  `attribute_description` longtext,
  `attribute_postscriptum` text,
  `attribute_av_title` varchar(255) NOT NULL,
  `attribute_av_chapo` text,
  `attribute_av_description` longtext,
  `attribute_av_postscriptum` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_product_tax` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `promo_amount` decimal(16,6) DEFAULT '0.000000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `color` char(7) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `protected_status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `order_status` VALUES(1, 'not_paid', '#f0ad4e', 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `order_status` VALUES(2, 'paid', '#5cb85c', 2, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `order_status` VALUES(3, 'processing', '#f39922', 3, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `order_status` VALUES(4, 'sent', '#5bc0de', 4, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `order_status` VALUES(5, 'canceled', '#d9534f', 5, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `order_status` VALUES(6, 'refunded', '#986dff', 6, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `order_status_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `order_status_i18n` VALUES(1, 'de_DE', 'Nicht bezahlt', '', '', '');
INSERT INTO `order_status_i18n` VALUES(1, 'en_US', 'Not paid', '', '', '');
INSERT INTO `order_status_i18n` VALUES(1, 'es_ES', 'No pagados', '', '', '');
INSERT INTO `order_status_i18n` VALUES(1, 'fr_FR', 'Non payée', '', '', '');
INSERT INTO `order_status_i18n` VALUES(2, 'de_DE', 'Bezahlt', '', '', '');
INSERT INTO `order_status_i18n` VALUES(2, 'en_US', 'Paid', '', '', '');
INSERT INTO `order_status_i18n` VALUES(2, 'es_ES', 'Pagado', '', '', '');
INSERT INTO `order_status_i18n` VALUES(2, 'fr_FR', 'Payée', '', '', '');
INSERT INTO `order_status_i18n` VALUES(3, 'de_DE', 'Bearbeitung', '', '', '');
INSERT INTO `order_status_i18n` VALUES(3, 'en_US', 'Processing', '', '', '');
INSERT INTO `order_status_i18n` VALUES(3, 'es_ES', 'Procesando', '', '', '');
INSERT INTO `order_status_i18n` VALUES(3, 'fr_FR', 'Traitement', '', '', '');
INSERT INTO `order_status_i18n` VALUES(4, 'de_DE', 'Gesendet', '', '', '');
INSERT INTO `order_status_i18n` VALUES(4, 'en_US', 'Sent', '', '', '');
INSERT INTO `order_status_i18n` VALUES(4, 'es_ES', 'Enviado', '', '', '');
INSERT INTO `order_status_i18n` VALUES(4, 'fr_FR', 'Envoyée', '', '', '');
INSERT INTO `order_status_i18n` VALUES(5, 'de_DE', 'Storniert', '', '', '');
INSERT INTO `order_status_i18n` VALUES(5, 'en_US', 'Canceled', '', '', '');
INSERT INTO `order_status_i18n` VALUES(5, 'es_ES', 'Cancelado', '', '', '');
INSERT INTO `order_status_i18n` VALUES(5, 'fr_FR', 'Annulée', '', '', '');
INSERT INTO `order_status_i18n` VALUES(6, 'de_DE', 'Zrückerstattet', '', '', '');
INSERT INTO `order_status_i18n` VALUES(6, 'en_US', 'Refunded', '', '', '');
INSERT INTO `order_status_i18n` VALUES(6, 'es_ES', 'Reembolsado', '', '', '');
INSERT INTO `order_status_i18n` VALUES(6, 'fr_FR', 'Remboursé', '', '', '');

CREATE TABLE `order_version` (
  `id` int(11) NOT NULL,
  `ref` varchar(45) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_order_address_id` int(11) NOT NULL,
  `delivery_order_address_id` int(11) NOT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_rate` float NOT NULL,
  `transaction_ref` varchar(100) DEFAULT NULL COMMENT 'transaction reference - usually use to identify a transaction with banking modules',
  `delivery_ref` varchar(100) DEFAULT NULL COMMENT 'delivery reference - usually use to identify a delivery progress on a distant delivery tracker website',
  `invoice_ref` varchar(100) DEFAULT NULL COMMENT 'the invoice reference',
  `discount` decimal(16,6) DEFAULT '0.000000',
  `postage` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `postage_tax` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `postage_tax_rule_title` varchar(255) DEFAULT NULL,
  `payment_module_id` int(11) NOT NULL,
  `delivery_module_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL,
  `customer_id_version` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `tax_rule_id` int(11) DEFAULT NULL,
  `ref` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `template_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `virtual` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_associated_content` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `default_category` tinyint(1) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_document` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_document_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_image_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_price` (
  `product_sale_elements_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `price` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `promo_price` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `from_default_currency` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_sale_elements` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `quantity` float NOT NULL,
  `promo` tinyint(4) DEFAULT '0',
  `newness` tinyint(4) DEFAULT '0',
  `weight` float DEFAULT '0',
  `is_default` tinyint(1) DEFAULT '0',
  `ean_code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_sale_elements_product_document` (
  `id` int(11) NOT NULL,
  `product_sale_elements_id` int(11) NOT NULL,
  `product_document_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_sale_elements_product_image` (
  `id` int(11) NOT NULL,
  `product_sale_elements_id` int(11) NOT NULL,
  `product_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_version` (
  `id` int(11) NOT NULL,
  `tax_rule_id` int(11) DEFAULT NULL,
  `ref` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `template_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `virtual` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `version_created_at` datetime DEFAULT NULL,
  `version_created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `profile_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `profile_module` (
  `profile_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `access` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `profile_resource` (
  `profile_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `resource` VALUES(1, 'admin.address', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(2, 'admin.configuration.administrator', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(3, 'admin.configuration.area', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(4, 'admin.configuration.attribute', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(5, 'admin.category', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(6, 'admin.configuration', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(7, 'admin.content', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(8, 'admin.configuration.country', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(9, 'admin.coupon', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(10, 'admin.configuration.currency', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(11, 'admin.customer', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(12, 'admin.configuration.feature', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(13, 'admin.folder', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(14, 'admin.configuration.language', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(15, 'admin.configuration.mailing-system', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(16, 'admin.configuration.message', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(17, 'admin.module', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(18, 'admin.order', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(19, 'admin.product', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(20, 'admin.configuration.profile', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(21, 'admin.configuration.shipping-zone', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(22, 'admin.configuration.tax', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(23, 'admin.configuration.template', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(24, 'admin.configuration.system-log', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(25, 'admin.cache', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(26, 'admin.home', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(27, 'admin.configuration.store', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(28, 'admin.configuration.variable', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(29, 'admin.configuration.admin-logs', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(30, 'admin.configuration.system-logs', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(31, 'admin.configuration.advanced', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(32, 'admin.configuration.translations', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(33, 'admin.export', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(34, 'admin.tools', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(35, 'admin.brand', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(36, 'admin.hook', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(37, 'admin.module-hook', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(38, 'admin.sales', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(39, 'admin.administrator', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(40, 'admin.configuration.category', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(41, 'admin.configuration.shipping-configuration', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(42, 'admin.configuration.tax-rule', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(43, 'admin.hooks', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(44, 'admin.import', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(45, 'admin.modules', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(46, 'admin.profile', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(47, 'admin.search', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(48, 'admin.configuration.api', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(49, 'admin.customer.title', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `resource` VALUES(50, 'admin.configuration.order-status', '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `resource_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `resource_i18n` VALUES(1, 'de_DE', 'Adresse', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(1, 'en_US', 'Address', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(1, 'es_ES', 'Dirección', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(1, 'fr_FR', 'Adresse', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(2, 'de_DE', 'Konfiguration / Administrator', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(2, 'en_US', 'Configuration / Administrator', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(2, 'es_ES', 'Configuración / administrador', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(2, 'fr_FR', 'Configuration / Administrateur', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(3, 'de_DE', 'Konfiguration / Zone', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(3, 'en_US', 'Configuration / Area', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(3, 'es_ES', 'Configuración / área', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(3, 'fr_FR', 'Configuration / Zone', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(4, 'de_DE', 'Konfiguration / Deklination', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(4, 'en_US', 'Configuration / Attribute', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(4, 'es_ES', 'Configuración / atributo', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(4, 'fr_FR', 'Configuration / Attribut', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(5, 'de_DE', 'Kategorie', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(5, 'en_US', 'Category', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(5, 'es_ES', 'Categoria', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(5, 'fr_FR', 'Catégorie', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(6, 'de_DE', 'Einstellungen', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(6, 'en_US', 'Configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(6, 'es_ES', 'Configuración', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(6, 'fr_FR', 'Configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(7, 'de_DE', 'Inhalt', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(7, 'en_US', 'Content', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(7, 'es_ES', 'Contenido', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(7, 'fr_FR', 'Contenu', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(8, 'de_DE', 'Konfiguration / Land', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(8, 'en_US', 'Configuration / Country', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(8, 'es_ES', 'Configuración / país', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(8, 'fr_FR', 'Configuration / Pays', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(9, 'de_DE', 'Gutschein', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(9, 'en_US', 'Coupon', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(9, 'es_ES', 'Cupón', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(9, 'fr_FR', 'Code promo', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(10, 'de_DE', 'Konfiguration / Währung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(10, 'en_US', 'Configuration / Currency', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(10, 'es_ES', 'Configuración / Moneda', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(10, 'fr_FR', 'Configuration / Devise', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(11, 'de_DE', 'Kunde', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(11, 'en_US', 'Customer', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(11, 'es_ES', 'Cliente', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(11, 'fr_FR', 'Client', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(12, 'de_DE', 'Konfiguration / Charakteristik', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(12, 'en_US', 'Configuration / Feature', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(12, 'es_ES', 'Configuración / Característica', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(12, 'fr_FR', 'Configuration / Caractéristique', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(13, 'de_DE', 'Ordner', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(13, 'en_US', 'Folder', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(13, 'es_ES', 'Carpeta', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(13, 'fr_FR', 'Dossier', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(14, 'de_DE', 'Konfiguration / Sprache', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(14, 'en_US', 'Configuration / Language', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(14, 'es_ES', 'Configuración / Idioma', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(14, 'fr_FR', 'Configuration / Langue', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(15, 'de_DE', 'Konfiguration / Mailing-System', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(15, 'en_US', 'Configuration / Mailing-system', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(15, 'es_ES', 'Configuración / Sistema de correo', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(15, 'fr_FR', 'Configuration / Système de mails', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(16, 'de_DE', 'Konfiguration / Nachricht', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(16, 'en_US', 'Configuration / Message', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(16, 'es_ES', 'Configuración / Mensaje', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(16, 'fr_FR', 'Configuration / Message', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(17, 'de_DE', 'Konfiguration / Modul', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(17, 'en_US', 'Configuration / Module', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(17, 'es_ES', 'Configuración / Módulo', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(17, 'fr_FR', 'Configuration / Module', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(18, 'de_DE', 'Bestellung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(18, 'en_US', 'Order', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(18, 'es_ES', 'Pedido', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(18, 'fr_FR', 'Commande', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(19, 'de_DE', 'Produkt', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(19, 'en_US', 'Product', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(19, 'es_ES', 'Producto', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(19, 'fr_FR', 'Produit', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(20, 'de_DE', 'Konfiguration / Profil', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(20, 'en_US', 'Configuration / Profile', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(20, 'es_ES', 'Configuración / Perfil', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(20, 'fr_FR', 'Configuration / Profil', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(21, 'de_DE', 'Konfiguration / Lieferzone', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(21, 'en_US', 'Configuration / Shipping-zone', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(21, 'es_ES', 'Configuración / Zona de envío', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(21, 'fr_FR', 'Configuration / Zone de livraison', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(22, 'de_DE', 'Konfiguration / Tax', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(22, 'en_US', 'Configuration / Tax', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(22, 'es_ES', 'Configuración / Impuestos', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(22, 'fr_FR', 'Configuration / Taxe', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(23, 'de_DE', 'Konfiguration / Template', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(23, 'en_US', 'Configuration / Template', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(23, 'es_ES', 'Configuración / Plantilla', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(23, 'fr_FR', 'Configuration / Modèle', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(24, 'de_DE', 'Konfiguration / Logs System', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(24, 'en_US', 'Configuration / System Log', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(24, 'es_ES', 'Configuración / Sistema de log', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(24, 'fr_FR', 'Configuration / Logs système', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(25, 'de_DE', 'Konfiguration / Cache', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(25, 'en_US', 'Configuration / Cache', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(25, 'es_ES', 'Configuración / caché', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(25, 'fr_FR', 'Configuration / Cache', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(26, 'de_DE', 'Back-Office Startseite', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(26, 'en_US', 'Back-office home page', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(26, 'es_ES', 'Página de inicio de back office', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(26, 'fr_FR', 'Page d\'acceuil de l\'administration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(27, 'de_DE', 'Shop Informationen', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(27, 'en_US', 'Store information configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(27, 'es_ES', 'Configuración de la información de tienda', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(27, 'fr_FR', 'Configuration des informations sur la boutique', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(28, 'de_DE', 'Konfigurations Variablen', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(28, 'en_US', 'Configuration variables', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(28, 'es_ES', 'Variables de configuración', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(28, 'fr_FR', 'Variables de configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(29, 'de_DE', 'Administration Logs ansehen', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(29, 'en_US', 'View administration logs', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(29, 'es_ES', 'Ver logs de administración', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(29, 'fr_FR', 'Consulter les logs d\'administration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(30, 'de_DE', 'Logs System Konfiguration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(30, 'en_US', 'Logging system configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(30, 'es_ES', 'Configuración de sistema de registro', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(30, 'fr_FR', 'Configuration du système de log', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(31, 'de_DE', 'Erweiterte Konfiguration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(31, 'en_US', 'Advanced configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(31, 'es_ES', 'Configuración avanzada', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(31, 'fr_FR', 'Configuration avancée', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(32, 'de_DE', 'Übersetzungen', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(32, 'en_US', 'Translations', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(32, 'es_ES', 'Traducciones', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(32, 'fr_FR', 'Traductions', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(33, 'de_DE', 'Exporten-Verwaltung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(33, 'en_US', 'Back-office export management', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(33, 'es_ES', 'Gestor de exportación de Back Office', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(33, 'fr_FR', 'gestion des exports', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(34, 'de_DE', 'Tools', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(34, 'en_US', 'Tools panel', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(34, 'es_ES', 'Panel de herramientas', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(34, 'fr_FR', 'Outils', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(35, 'de_DE', 'Marken-Verwaltung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(35, 'en_US', 'Brands management', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(35, 'es_ES', 'Gestión de marcas', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(35, 'fr_FR', 'Gestion des marques', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(36, 'de_DE', 'Andockpunkte', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(36, 'en_US', 'Hooks', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(36, 'es_ES', 'Hooks', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(36, 'fr_FR', 'Points d\'accroche', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(37, 'de_DE', 'Hook Positionen', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(37, 'en_US', 'Hook positions', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(37, 'es_ES', 'Posiciones de hook', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(37, 'fr_FR', 'Positions des points d\'accroche', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(38, 'de_DE', 'Sonderangebotsmanagement', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(38, 'en_US', 'Sales management', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(38, 'es_ES', 'Administración de ventas', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(38, 'fr_FR', 'Gestion des promotions', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(39, 'de_DE', 'Administratorenliste', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(39, 'en_US', 'Administatros list', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(39, 'es_ES', 'Lista de Administradores', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(39, 'fr_FR', 'Liste des administrateurs', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(40, 'de_DE', 'Kategorie-Konfiguration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(40, 'en_US', 'Category configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(40, 'es_ES', 'Configuración de la categoría', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(40, 'fr_FR', 'Configuration d\'une catégorie', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(41, 'de_DE', 'Lieferungskonfiguration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(41, 'en_US', 'Shipping configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(41, 'es_ES', 'Configuración de envío', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(41, 'fr_FR', 'Configuration du transport', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(42, 'de_DE', 'Taxeregelung-Konfiguration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(42, 'en_US', 'Tax rules configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(42, 'es_ES', 'Configuración de las reglas de impuestos', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(42, 'fr_FR', 'Configuration des règles de taxes', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(43, 'de_DE', 'Hooks Verwendung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(43, 'en_US', 'Hooks management', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(43, 'es_ES', 'Gestión de Hooks', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(43, 'fr_FR', 'Gestion des hooks', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(44, 'de_DE', 'Importation / Exportation von Daten', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(44, 'en_US', 'Data import / export', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(44, 'es_ES', 'Importación/ exportación de datos', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(44, 'fr_FR', 'Importation / exportation de données', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(45, 'de_DE', 'Modul Verwendung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(45, 'en_US', 'Modules maagement', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(45, 'es_ES', 'Administración de módulos', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(45, 'fr_FR', 'Gestion des modules', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(46, 'de_DE', 'Administration-Profilverwaltung', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(46, 'en_US', 'Administration profiles management', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(46, 'es_ES', 'Gestión de perfiles de administración', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(46, 'fr_FR', 'Gestion des profils d\'administration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(47, 'de_DE', 'Back-Office Suchfunktion', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(47, 'en_US', 'Back-office search function', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(47, 'es_ES', 'Función de búsqueda de back office', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(47, 'fr_FR', 'Fonction de recherche dans l\'administration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(48, 'de_DE', 'API-Konfiguration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(48, 'en_US', 'API Configuration', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(48, 'es_ES', 'Configuración de API', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(48, 'fr_FR', 'Configuration de l\'API', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(49, 'de_DE', 'Kunde-Andere', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(49, 'en_US', 'Customer title', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(49, 'es_ES', 'Estado civil cliente', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(49, 'fr_FR', 'civilité client', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(50, 'de_DE', NULL, NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(50, 'en_US', 'Configuration order status', NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(50, 'es_ES', NULL, NULL, NULL, NULL);
INSERT INTO `resource_i18n` VALUES(50, 'fr_FR', NULL, NULL, NULL, NULL);

CREATE TABLE `rewriting_argument` (
  `rewriting_url_id` int(11) NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `rewriting_url` (
  `id` int(11) NOT NULL,
  `url` varbinary(255) NOT NULL,
  `view` varchar(255) DEFAULT NULL,
  `view_id` varchar(255) DEFAULT NULL,
  `view_locale` varchar(255) DEFAULT NULL,
  `redirected` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `display_initial_price` tinyint(1) NOT NULL DEFAULT '1',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price_offset_type` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sale_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `chapo` text,
  `postscriptum` text,
  `sale_label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sale_offset_currency` (
  `sale_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `price_offset_value` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sale_product` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_av_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `isocode` varchar(4) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `state` VALUES(1, 1, 'AL', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(2, 1, 'AK', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(3, 1, 'AZ', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(4, 1, 'AR', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(5, 1, 'CA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(6, 1, 'CO', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(7, 1, 'CT', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(8, 1, 'DE', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(9, 1, 'FL', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(10, 1, 'GA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(11, 1, 'HI', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(12, 1, 'ID', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(13, 1, 'IL', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(14, 1, 'IN', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(15, 1, 'IA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(16, 1, 'KS', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(17, 1, 'KY', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(18, 1, 'LA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(19, 1, 'ME', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(20, 1, 'MD', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(21, 1, 'MA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(22, 1, 'MI', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(23, 1, 'MN', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(24, 1, 'MS', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(25, 1, 'MO', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(26, 1, 'MT', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(27, 1, 'NE', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(28, 1, 'NV', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(29, 1, 'NH', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(30, 1, 'NJ', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(31, 1, 'NM', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(32, 1, 'NY', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(33, 1, 'NC', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(34, 1, 'ND', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(35, 1, 'OH', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(36, 1, 'OK', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(37, 1, 'OR', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(38, 1, 'PA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(39, 1, 'RI', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(40, 1, 'SC', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(41, 1, 'SD', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(42, 1, 'TN', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(43, 1, 'TX', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(44, 1, 'UT', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(45, 1, 'VT', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(46, 1, 'VA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(47, 1, 'WA', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(48, 1, 'WV', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(49, 1, 'WI', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(50, 1, 'WY', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(51, 1, 'PR', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(52, 1, 'VI', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(53, 1, 'DC', 196, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(54, 1, 'AGS', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(55, 1, 'BCN', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(56, 1, 'BCS', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(57, 1, 'CAM', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(58, 1, 'CHP', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(59, 1, 'CHH', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(60, 1, 'COA', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(61, 1, 'COL', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(62, 1, 'DIF', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(63, 1, 'DUR', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(64, 1, 'GUA', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(65, 1, 'GRO', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(66, 1, 'HID', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(67, 1, 'JAL', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(68, 1, 'MEX', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(69, 1, 'MIC', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(70, 1, 'MOR', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(71, 1, 'NAY', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(72, 1, 'NLE', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(73, 1, 'OAX', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(74, 1, 'PUE', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(75, 1, 'QUE', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(76, 1, 'ROO', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(77, 1, 'SLP', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(78, 1, 'SIN', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(79, 1, 'SON', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(80, 1, 'TAB', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(81, 1, 'TAM', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(82, 1, 'TLA', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(83, 1, 'VER', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(84, 1, 'YUC', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(85, 1, 'ZAC', 115, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(86, 1, 'ON', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(87, 1, 'QC', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(88, 1, 'BC', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(89, 1, 'AB', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(90, 1, 'MB', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(91, 1, 'SK', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(92, 1, 'NS', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(93, 1, 'NB', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(94, 1, 'NL', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(95, 1, 'PE', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(96, 1, 'NT', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(97, 1, 'YT', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(98, 1, 'NU', 246, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(99, 1, 'B', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(100, 1, 'K', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(101, 1, 'H', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(102, 1, 'U', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(103, 1, 'C', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(104, 1, 'X', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(105, 1, 'W', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(106, 1, 'E', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(107, 1, 'P', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(108, 1, 'Y', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(109, 1, 'L', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(110, 1, 'F', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(111, 1, 'M', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(112, 1, 'N', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(113, 1, 'Q', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(114, 1, 'R', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(115, 1, 'A', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(116, 1, 'J', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(117, 1, 'D', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(118, 1, 'Z', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(119, 1, 'S', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(120, 1, 'G', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(121, 1, 'V', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(122, 1, 'T', 10, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(123, 1, 'AG', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(124, 1, 'AL', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(125, 1, 'AN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(126, 1, 'AO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(127, 1, 'AR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(128, 1, 'AP', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(129, 1, 'AT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(130, 1, 'AV', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(131, 1, 'BA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(132, 1, 'BT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(133, 1, 'BL', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(134, 1, 'BN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(135, 1, 'BG', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(136, 1, 'BI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(137, 1, 'BO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(138, 1, 'BZ', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(139, 1, 'BS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(140, 1, 'BR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(141, 1, 'CA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(142, 1, 'CL', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(143, 1, 'CB', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(144, 1, 'CI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(145, 1, 'CE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(146, 1, 'CT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(147, 1, 'CZ', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(148, 1, 'CH', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(149, 1, 'CO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(150, 1, 'CS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(151, 1, 'CR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(152, 1, 'KR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(153, 1, 'CN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(154, 1, 'EN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(155, 1, 'FM', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(156, 1, 'FE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(157, 1, 'FI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(158, 1, 'FG', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(159, 1, 'FC', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(160, 1, 'FR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(161, 1, 'GE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(162, 1, 'GO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(163, 1, 'GR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(164, 1, 'IM', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(165, 1, 'IS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(166, 1, 'AQ', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(167, 1, 'SP', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(168, 1, 'LT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(169, 1, 'LE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(170, 1, 'LC', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(171, 1, 'LI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(172, 1, 'LO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(173, 1, 'LU', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(174, 1, 'MC', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(175, 1, 'MN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(176, 1, 'MS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(177, 1, 'MT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(178, 1, 'VS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(179, 1, 'ME', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(180, 1, 'MI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(181, 1, 'MO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(182, 1, 'MB', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(183, 1, 'NA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(184, 1, 'NO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(185, 1, 'NU', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(186, 1, 'OG', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(187, 1, 'OT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(188, 1, 'OR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(189, 1, 'PD', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(190, 1, 'PA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(191, 1, 'PR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(192, 1, 'PV', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(193, 1, 'PG', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(194, 1, 'PU', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(195, 1, 'PE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(196, 1, 'PC', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(197, 1, 'PI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(198, 1, 'PT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(199, 1, 'PN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(200, 1, 'PZ', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(201, 1, 'PO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(202, 1, 'RG', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(203, 1, 'RA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(204, 1, 'RC', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(205, 1, 'RE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(206, 1, 'RI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(207, 1, 'RN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(208, 1, 'RM', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(209, 1, 'RO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(210, 1, 'SA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(211, 1, 'SS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(212, 1, 'SV', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(213, 1, 'SI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(214, 1, 'SR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(215, 1, 'SO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(216, 1, 'TA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(217, 1, 'TE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(218, 1, 'TR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(219, 1, 'TO', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(220, 1, 'TP', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(221, 1, 'TN', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(222, 1, 'TV', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(223, 1, 'TS', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(224, 1, 'UD', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(225, 1, 'VA', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(226, 1, 'VE', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(227, 1, 'VB', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(228, 1, 'VC', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(229, 1, 'VR', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(230, 1, 'VV', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(231, 1, 'VI', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(232, 1, 'VT', 86, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(233, 1, 'AC', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(234, 1, 'BA', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(235, 1, 'BB', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(236, 1, 'BT', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(237, 1, 'BE', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(238, 1, 'JT', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(239, 1, 'KT', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(240, 1, 'ST', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(241, 1, 'JI', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(242, 1, 'KI', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(243, 1, 'NT', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(244, 1, 'GO', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(245, 1, 'JK', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(246, 1, 'JA', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(247, 1, 'LA', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(248, 1, 'MA', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(249, 1, 'MU', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(250, 1, 'SA', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(251, 1, 'SU', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(252, 1, 'PA', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(253, 1, 'RI', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(254, 1, 'KR', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(255, 1, 'SG', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(256, 1, 'KS', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(257, 1, 'SN', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(258, 1, 'SS', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(259, 1, 'JB', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(260, 1, 'KB', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(261, 1, 'NB', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(262, 1, 'PB', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(263, 1, 'SR', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(264, 1, 'SB', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(265, 1, 'YO', 80, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(266, 1, '23', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(267, 1, '05', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(268, 1, '02', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(269, 1, '12', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(270, 1, '38', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(271, 1, '18', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(272, 1, '40', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(273, 1, '07', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(274, 1, '21', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(275, 1, '10', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(276, 1, '34', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(277, 1, '01', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(278, 1, '28', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(279, 1, '08', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(280, 1, '17', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(281, 1, '03', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(282, 1, '37', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(283, 1, '46', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(284, 1, '14', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(285, 1, '39', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(286, 1, '43', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(287, 1, '26', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(288, 1, '24', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(289, 1, '04', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(290, 1, '45', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(291, 1, '20', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(292, 1, '42', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(293, 1, '29', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(294, 1, '15', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(295, 1, '44', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(296, 1, '33', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(297, 1, '47', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(298, 1, '27', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(299, 1, '41', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(300, 1, '11', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(301, 1, '25', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(302, 1, '32', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(303, 1, '22', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(304, 1, '09', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(305, 1, '36', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(306, 1, '13', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(307, 1, '31', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(308, 1, '16', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(309, 1, '30', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(310, 1, '06', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(311, 1, '35', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `state` VALUES(312, 1, '19', 88, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `state_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `state_i18n` VALUES(1, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(1, 'en_US', 'Alabama');
INSERT INTO `state_i18n` VALUES(1, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(1, 'fr_FR', 'Alabama');
INSERT INTO `state_i18n` VALUES(2, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(2, 'en_US', 'Alaska');
INSERT INTO `state_i18n` VALUES(2, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(2, 'fr_FR', 'Alaska');
INSERT INTO `state_i18n` VALUES(3, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(3, 'en_US', 'Arizona');
INSERT INTO `state_i18n` VALUES(3, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(3, 'fr_FR', 'Arizona');
INSERT INTO `state_i18n` VALUES(4, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(4, 'en_US', 'Arkansas');
INSERT INTO `state_i18n` VALUES(4, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(4, 'fr_FR', 'Arkansas');
INSERT INTO `state_i18n` VALUES(5, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(5, 'en_US', 'California');
INSERT INTO `state_i18n` VALUES(5, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(5, 'fr_FR', 'Californie');
INSERT INTO `state_i18n` VALUES(6, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(6, 'en_US', 'Colorado');
INSERT INTO `state_i18n` VALUES(6, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(6, 'fr_FR', 'Colorado');
INSERT INTO `state_i18n` VALUES(7, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(7, 'en_US', 'Connecticut');
INSERT INTO `state_i18n` VALUES(7, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(7, 'fr_FR', 'Connecticut');
INSERT INTO `state_i18n` VALUES(8, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(8, 'en_US', 'Delaware');
INSERT INTO `state_i18n` VALUES(8, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(8, 'fr_FR', 'Delaware');
INSERT INTO `state_i18n` VALUES(9, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(9, 'en_US', 'Florida');
INSERT INTO `state_i18n` VALUES(9, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(9, 'fr_FR', 'Floride');
INSERT INTO `state_i18n` VALUES(10, 'de_DE', 'Georgien');
INSERT INTO `state_i18n` VALUES(10, 'en_US', 'Georgia');
INSERT INTO `state_i18n` VALUES(10, 'es_ES', 'Georgia');
INSERT INTO `state_i18n` VALUES(10, 'fr_FR', 'Géorgie');
INSERT INTO `state_i18n` VALUES(11, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(11, 'en_US', 'Hawaii');
INSERT INTO `state_i18n` VALUES(11, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(11, 'fr_FR', 'Hawaii');
INSERT INTO `state_i18n` VALUES(12, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(12, 'en_US', 'Idaho');
INSERT INTO `state_i18n` VALUES(12, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(12, 'fr_FR', 'Idaho');
INSERT INTO `state_i18n` VALUES(13, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(13, 'en_US', 'Illinois');
INSERT INTO `state_i18n` VALUES(13, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(13, 'fr_FR', 'Illinois');
INSERT INTO `state_i18n` VALUES(14, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(14, 'en_US', 'Indiana');
INSERT INTO `state_i18n` VALUES(14, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(14, 'fr_FR', 'Indiana');
INSERT INTO `state_i18n` VALUES(15, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(15, 'en_US', 'Iowa');
INSERT INTO `state_i18n` VALUES(15, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(15, 'fr_FR', 'Iowa');
INSERT INTO `state_i18n` VALUES(16, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(16, 'en_US', 'Kansas');
INSERT INTO `state_i18n` VALUES(16, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(16, 'fr_FR', 'Kansas');
INSERT INTO `state_i18n` VALUES(17, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(17, 'en_US', 'Kentucky');
INSERT INTO `state_i18n` VALUES(17, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(17, 'fr_FR', 'Kentucky');
INSERT INTO `state_i18n` VALUES(18, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(18, 'en_US', 'Louisiana');
INSERT INTO `state_i18n` VALUES(18, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(18, 'fr_FR', 'Louisiane');
INSERT INTO `state_i18n` VALUES(19, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(19, 'en_US', 'Maine');
INSERT INTO `state_i18n` VALUES(19, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(19, 'fr_FR', 'Maine');
INSERT INTO `state_i18n` VALUES(20, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(20, 'en_US', 'Maryland');
INSERT INTO `state_i18n` VALUES(20, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(20, 'fr_FR', 'Maryland');
INSERT INTO `state_i18n` VALUES(21, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(21, 'en_US', 'Massachusetts');
INSERT INTO `state_i18n` VALUES(21, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(21, 'fr_FR', 'Massachusetts');
INSERT INTO `state_i18n` VALUES(22, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(22, 'en_US', 'Michigan');
INSERT INTO `state_i18n` VALUES(22, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(22, 'fr_FR', 'Michigan');
INSERT INTO `state_i18n` VALUES(23, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(23, 'en_US', 'Minnesota');
INSERT INTO `state_i18n` VALUES(23, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(23, 'fr_FR', 'Minnesota');
INSERT INTO `state_i18n` VALUES(24, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(24, 'en_US', 'Mississippi');
INSERT INTO `state_i18n` VALUES(24, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(24, 'fr_FR', 'Mississippi');
INSERT INTO `state_i18n` VALUES(25, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(25, 'en_US', 'Missouri');
INSERT INTO `state_i18n` VALUES(25, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(25, 'fr_FR', 'Missouri');
INSERT INTO `state_i18n` VALUES(26, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(26, 'en_US', 'Montana');
INSERT INTO `state_i18n` VALUES(26, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(26, 'fr_FR', 'Montana');
INSERT INTO `state_i18n` VALUES(27, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(27, 'en_US', 'Nebraska');
INSERT INTO `state_i18n` VALUES(27, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(27, 'fr_FR', 'Nebraska');
INSERT INTO `state_i18n` VALUES(28, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(28, 'en_US', 'Nevada');
INSERT INTO `state_i18n` VALUES(28, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(28, 'fr_FR', 'Nevada');
INSERT INTO `state_i18n` VALUES(29, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(29, 'en_US', 'New Hampshire');
INSERT INTO `state_i18n` VALUES(29, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(29, 'fr_FR', 'New Hampshire');
INSERT INTO `state_i18n` VALUES(30, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(30, 'en_US', 'New Jersey');
INSERT INTO `state_i18n` VALUES(30, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(30, 'fr_FR', 'New Jersey');
INSERT INTO `state_i18n` VALUES(31, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(31, 'en_US', 'New Mexico');
INSERT INTO `state_i18n` VALUES(31, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(31, 'fr_FR', 'Nouveau-Mexique');
INSERT INTO `state_i18n` VALUES(32, 'de_DE', 'New York');
INSERT INTO `state_i18n` VALUES(32, 'en_US', 'New York');
INSERT INTO `state_i18n` VALUES(32, 'es_ES', 'Nueva York');
INSERT INTO `state_i18n` VALUES(32, 'fr_FR', 'New York');
INSERT INTO `state_i18n` VALUES(33, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(33, 'en_US', 'North Carolina');
INSERT INTO `state_i18n` VALUES(33, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(33, 'fr_FR', 'Caroline du Nord');
INSERT INTO `state_i18n` VALUES(34, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(34, 'en_US', 'North Dakota');
INSERT INTO `state_i18n` VALUES(34, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(34, 'fr_FR', 'Dakota du Nord');
INSERT INTO `state_i18n` VALUES(35, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(35, 'en_US', 'Ohio');
INSERT INTO `state_i18n` VALUES(35, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(35, 'fr_FR', 'Ohio');
INSERT INTO `state_i18n` VALUES(36, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(36, 'en_US', 'Oklahoma');
INSERT INTO `state_i18n` VALUES(36, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(36, 'fr_FR', 'Oklahoma');
INSERT INTO `state_i18n` VALUES(37, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(37, 'en_US', 'Oregon');
INSERT INTO `state_i18n` VALUES(37, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(37, 'fr_FR', 'Oregon');
INSERT INTO `state_i18n` VALUES(38, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(38, 'en_US', 'Pennsylvania');
INSERT INTO `state_i18n` VALUES(38, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(38, 'fr_FR', 'Pennsylvanie');
INSERT INTO `state_i18n` VALUES(39, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(39, 'en_US', 'Rhode Island');
INSERT INTO `state_i18n` VALUES(39, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(39, 'fr_FR', 'Rhode Island');
INSERT INTO `state_i18n` VALUES(40, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(40, 'en_US', 'South Carolina');
INSERT INTO `state_i18n` VALUES(40, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(40, 'fr_FR', 'Caroline du Sud');
INSERT INTO `state_i18n` VALUES(41, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(41, 'en_US', 'South Dakota');
INSERT INTO `state_i18n` VALUES(41, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(41, 'fr_FR', 'Dakota du Sud');
INSERT INTO `state_i18n` VALUES(42, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(42, 'en_US', 'Tennessee');
INSERT INTO `state_i18n` VALUES(42, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(42, 'fr_FR', 'Tennessee');
INSERT INTO `state_i18n` VALUES(43, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(43, 'en_US', 'Texas');
INSERT INTO `state_i18n` VALUES(43, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(43, 'fr_FR', 'Texas');
INSERT INTO `state_i18n` VALUES(44, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(44, 'en_US', 'Utah');
INSERT INTO `state_i18n` VALUES(44, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(44, 'fr_FR', 'Utah');
INSERT INTO `state_i18n` VALUES(45, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(45, 'en_US', 'Vermont');
INSERT INTO `state_i18n` VALUES(45, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(45, 'fr_FR', 'Vermont');
INSERT INTO `state_i18n` VALUES(46, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(46, 'en_US', 'Virginia');
INSERT INTO `state_i18n` VALUES(46, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(46, 'fr_FR', 'Virginie');
INSERT INTO `state_i18n` VALUES(47, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(47, 'en_US', 'Washington');
INSERT INTO `state_i18n` VALUES(47, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(47, 'fr_FR', 'Washington');
INSERT INTO `state_i18n` VALUES(48, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(48, 'en_US', 'West Virginia');
INSERT INTO `state_i18n` VALUES(48, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(48, 'fr_FR', 'Virginie-occidentale');
INSERT INTO `state_i18n` VALUES(49, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(49, 'en_US', 'Wisconsin');
INSERT INTO `state_i18n` VALUES(49, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(49, 'fr_FR', 'Wisconsin');
INSERT INTO `state_i18n` VALUES(50, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(50, 'en_US', 'Wyoming');
INSERT INTO `state_i18n` VALUES(50, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(50, 'fr_FR', 'Wyoming');
INSERT INTO `state_i18n` VALUES(51, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(51, 'en_US', 'Puerto Rico');
INSERT INTO `state_i18n` VALUES(51, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(51, 'fr_FR', 'Porto Rico');
INSERT INTO `state_i18n` VALUES(52, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(52, 'en_US', 'US Virgin Islands');
INSERT INTO `state_i18n` VALUES(52, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(52, 'fr_FR', 'Îles Vierges américaines');
INSERT INTO `state_i18n` VALUES(53, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(53, 'en_US', 'District of Columbia');
INSERT INTO `state_i18n` VALUES(53, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(53, 'fr_FR', 'District de Columbia');
INSERT INTO `state_i18n` VALUES(54, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(54, 'en_US', 'Aguascalientes');
INSERT INTO `state_i18n` VALUES(54, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(54, 'fr_FR', 'Aguascalientes');
INSERT INTO `state_i18n` VALUES(55, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(55, 'en_US', 'Baja California');
INSERT INTO `state_i18n` VALUES(55, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(55, 'fr_FR', 'Baja California');
INSERT INTO `state_i18n` VALUES(56, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(56, 'en_US', 'Baja California Sur');
INSERT INTO `state_i18n` VALUES(56, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(56, 'fr_FR', 'Baja California Sur');
INSERT INTO `state_i18n` VALUES(57, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(57, 'en_US', 'Campeche');
INSERT INTO `state_i18n` VALUES(57, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(57, 'fr_FR', 'Campeche');
INSERT INTO `state_i18n` VALUES(58, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(58, 'en_US', 'Chiapas');
INSERT INTO `state_i18n` VALUES(58, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(58, 'fr_FR', 'Chiapas');
INSERT INTO `state_i18n` VALUES(59, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(59, 'en_US', 'Chihuahua');
INSERT INTO `state_i18n` VALUES(59, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(59, 'fr_FR', 'Chihuahua');
INSERT INTO `state_i18n` VALUES(60, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(60, 'en_US', 'Coahuila');
INSERT INTO `state_i18n` VALUES(60, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(60, 'fr_FR', 'Coahuila');
INSERT INTO `state_i18n` VALUES(61, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(61, 'en_US', 'Colima');
INSERT INTO `state_i18n` VALUES(61, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(61, 'fr_FR', 'Colima');
INSERT INTO `state_i18n` VALUES(62, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(62, 'en_US', 'Distrito Federal');
INSERT INTO `state_i18n` VALUES(62, 'es_ES', 'Ciudad de México');
INSERT INTO `state_i18n` VALUES(62, 'fr_FR', 'Distrito Federal');
INSERT INTO `state_i18n` VALUES(63, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(63, 'en_US', 'Durango');
INSERT INTO `state_i18n` VALUES(63, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(63, 'fr_FR', 'Durango');
INSERT INTO `state_i18n` VALUES(64, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(64, 'en_US', 'Guanajuato');
INSERT INTO `state_i18n` VALUES(64, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(64, 'fr_FR', 'Guanajuato');
INSERT INTO `state_i18n` VALUES(65, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(65, 'en_US', 'Guerrero');
INSERT INTO `state_i18n` VALUES(65, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(65, 'fr_FR', 'Guerrero');
INSERT INTO `state_i18n` VALUES(66, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(66, 'en_US', 'Hidalgo');
INSERT INTO `state_i18n` VALUES(66, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(66, 'fr_FR', 'Hidalgo');
INSERT INTO `state_i18n` VALUES(67, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(67, 'en_US', 'Jalisco');
INSERT INTO `state_i18n` VALUES(67, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(67, 'fr_FR', 'Jalisco');
INSERT INTO `state_i18n` VALUES(68, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(68, 'en_US', 'Estado de México');
INSERT INTO `state_i18n` VALUES(68, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(68, 'fr_FR', 'Estado de México');
INSERT INTO `state_i18n` VALUES(69, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(69, 'en_US', 'Michoacán');
INSERT INTO `state_i18n` VALUES(69, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(69, 'fr_FR', 'Michoacán');
INSERT INTO `state_i18n` VALUES(70, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(70, 'en_US', 'Morelos');
INSERT INTO `state_i18n` VALUES(70, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(70, 'fr_FR', 'Morelos');
INSERT INTO `state_i18n` VALUES(71, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(71, 'en_US', 'Nayarit');
INSERT INTO `state_i18n` VALUES(71, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(71, 'fr_FR', 'Nayarit');
INSERT INTO `state_i18n` VALUES(72, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(72, 'en_US', 'Nuevo León');
INSERT INTO `state_i18n` VALUES(72, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(72, 'fr_FR', 'Nuevo León');
INSERT INTO `state_i18n` VALUES(73, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(73, 'en_US', 'Oaxaca');
INSERT INTO `state_i18n` VALUES(73, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(73, 'fr_FR', 'Oaxaca');
INSERT INTO `state_i18n` VALUES(74, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(74, 'en_US', 'Puebla');
INSERT INTO `state_i18n` VALUES(74, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(74, 'fr_FR', 'Puebla');
INSERT INTO `state_i18n` VALUES(75, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(75, 'en_US', 'Querétaro');
INSERT INTO `state_i18n` VALUES(75, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(75, 'fr_FR', 'Querétaro');
INSERT INTO `state_i18n` VALUES(76, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(76, 'en_US', 'Quintana Roo');
INSERT INTO `state_i18n` VALUES(76, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(76, 'fr_FR', 'Quintana Roo');
INSERT INTO `state_i18n` VALUES(77, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(77, 'en_US', 'San Luis Potosí');
INSERT INTO `state_i18n` VALUES(77, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(77, 'fr_FR', 'San Luis Potosí');
INSERT INTO `state_i18n` VALUES(78, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(78, 'en_US', 'Sinaloa');
INSERT INTO `state_i18n` VALUES(78, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(78, 'fr_FR', 'Sinaloa');
INSERT INTO `state_i18n` VALUES(79, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(79, 'en_US', 'Sonora');
INSERT INTO `state_i18n` VALUES(79, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(79, 'fr_FR', 'Sonora');
INSERT INTO `state_i18n` VALUES(80, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(80, 'en_US', 'Tabasco');
INSERT INTO `state_i18n` VALUES(80, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(80, 'fr_FR', 'Tabasco');
INSERT INTO `state_i18n` VALUES(81, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(81, 'en_US', 'Tamaulipas');
INSERT INTO `state_i18n` VALUES(81, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(81, 'fr_FR', 'Tamaulipas');
INSERT INTO `state_i18n` VALUES(82, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(82, 'en_US', 'Tlaxcala');
INSERT INTO `state_i18n` VALUES(82, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(82, 'fr_FR', 'Tlaxcala');
INSERT INTO `state_i18n` VALUES(83, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(83, 'en_US', 'Veracruz');
INSERT INTO `state_i18n` VALUES(83, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(83, 'fr_FR', 'Veracruz');
INSERT INTO `state_i18n` VALUES(84, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(84, 'en_US', 'Yucatán');
INSERT INTO `state_i18n` VALUES(84, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(84, 'fr_FR', 'Yucatán');
INSERT INTO `state_i18n` VALUES(85, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(85, 'en_US', 'Zacatecas');
INSERT INTO `state_i18n` VALUES(85, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(85, 'fr_FR', 'Zacatecas');
INSERT INTO `state_i18n` VALUES(86, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(86, 'en_US', 'Ontario');
INSERT INTO `state_i18n` VALUES(86, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(86, 'fr_FR', 'Ontario');
INSERT INTO `state_i18n` VALUES(87, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(87, 'en_US', 'Quebec');
INSERT INTO `state_i18n` VALUES(87, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(87, 'fr_FR', 'Québec');
INSERT INTO `state_i18n` VALUES(88, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(88, 'en_US', 'British Columbia');
INSERT INTO `state_i18n` VALUES(88, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(88, 'fr_FR', 'Colombie-Britannique');
INSERT INTO `state_i18n` VALUES(89, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(89, 'en_US', 'Alberta');
INSERT INTO `state_i18n` VALUES(89, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(89, 'fr_FR', 'Alberta');
INSERT INTO `state_i18n` VALUES(90, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(90, 'en_US', 'Manitoba');
INSERT INTO `state_i18n` VALUES(90, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(90, 'fr_FR', 'Manitoba');
INSERT INTO `state_i18n` VALUES(91, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(91, 'en_US', 'Saskatchewan');
INSERT INTO `state_i18n` VALUES(91, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(91, 'fr_FR', 'Saskatchewan');
INSERT INTO `state_i18n` VALUES(92, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(92, 'en_US', 'Nova Scotia');
INSERT INTO `state_i18n` VALUES(92, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(92, 'fr_FR', 'Nouvelle-Écosse');
INSERT INTO `state_i18n` VALUES(93, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(93, 'en_US', 'New Brunswick');
INSERT INTO `state_i18n` VALUES(93, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(93, 'fr_FR', 'Nouveau-Brunswick');
INSERT INTO `state_i18n` VALUES(94, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(94, 'en_US', 'Newfoundland and Labrador');
INSERT INTO `state_i18n` VALUES(94, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(94, 'fr_FR', 'Terre Neuve et Labrador');
INSERT INTO `state_i18n` VALUES(95, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(95, 'en_US', 'Prince Edward Island');
INSERT INTO `state_i18n` VALUES(95, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(95, 'fr_FR', 'Île-du-Prince-Édouard');
INSERT INTO `state_i18n` VALUES(96, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(96, 'en_US', 'Northwest Territories');
INSERT INTO `state_i18n` VALUES(96, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(96, 'fr_FR', 'Territoires du Nord-Ouest');
INSERT INTO `state_i18n` VALUES(97, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(97, 'en_US', 'Yukon');
INSERT INTO `state_i18n` VALUES(97, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(97, 'fr_FR', 'Yukon');
INSERT INTO `state_i18n` VALUES(98, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(98, 'en_US', 'Nunavut');
INSERT INTO `state_i18n` VALUES(98, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(98, 'fr_FR', 'Nunavut');
INSERT INTO `state_i18n` VALUES(99, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(99, 'en_US', 'Buenos Aires');
INSERT INTO `state_i18n` VALUES(99, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(99, 'fr_FR', 'Buenos Aires');
INSERT INTO `state_i18n` VALUES(100, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(100, 'en_US', 'Catamarca');
INSERT INTO `state_i18n` VALUES(100, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(100, 'fr_FR', 'Catamarca');
INSERT INTO `state_i18n` VALUES(101, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(101, 'en_US', 'Chaco');
INSERT INTO `state_i18n` VALUES(101, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(101, 'fr_FR', 'Chaco');
INSERT INTO `state_i18n` VALUES(102, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(102, 'en_US', 'Chubut');
INSERT INTO `state_i18n` VALUES(102, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(102, 'fr_FR', 'Chubut');
INSERT INTO `state_i18n` VALUES(103, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(103, 'en_US', 'Ciudad de Buenos Aires');
INSERT INTO `state_i18n` VALUES(103, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(103, 'fr_FR', 'Ciudad de Buenos Aires');
INSERT INTO `state_i18n` VALUES(104, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(104, 'en_US', 'Córdoba');
INSERT INTO `state_i18n` VALUES(104, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(104, 'fr_FR', 'Cordoba');
INSERT INTO `state_i18n` VALUES(105, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(105, 'en_US', 'Corrientes');
INSERT INTO `state_i18n` VALUES(105, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(105, 'fr_FR', 'Corrientes');
INSERT INTO `state_i18n` VALUES(106, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(106, 'en_US', 'Entre Ríos');
INSERT INTO `state_i18n` VALUES(106, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(106, 'fr_FR', 'Entre Ríos');
INSERT INTO `state_i18n` VALUES(107, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(107, 'en_US', 'Formosa');
INSERT INTO `state_i18n` VALUES(107, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(107, 'fr_FR', 'Formosa');
INSERT INTO `state_i18n` VALUES(108, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(108, 'en_US', 'Jujuy');
INSERT INTO `state_i18n` VALUES(108, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(108, 'fr_FR', 'Jujuy');
INSERT INTO `state_i18n` VALUES(109, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(109, 'en_US', 'La Pampa');
INSERT INTO `state_i18n` VALUES(109, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(109, 'fr_FR', 'La Pampa');
INSERT INTO `state_i18n` VALUES(110, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(110, 'en_US', 'La Rioja');
INSERT INTO `state_i18n` VALUES(110, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(110, 'fr_FR', 'La Rioja');
INSERT INTO `state_i18n` VALUES(111, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(111, 'en_US', 'Mendoza');
INSERT INTO `state_i18n` VALUES(111, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(111, 'fr_FR', 'Mendoza');
INSERT INTO `state_i18n` VALUES(112, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(112, 'en_US', 'Misiones');
INSERT INTO `state_i18n` VALUES(112, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(112, 'fr_FR', 'Misiones');
INSERT INTO `state_i18n` VALUES(113, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(113, 'en_US', 'Neuquén');
INSERT INTO `state_i18n` VALUES(113, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(113, 'fr_FR', 'Neuquén');
INSERT INTO `state_i18n` VALUES(114, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(114, 'en_US', 'Río Negro');
INSERT INTO `state_i18n` VALUES(114, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(114, 'fr_FR', 'Rio Negro');
INSERT INTO `state_i18n` VALUES(115, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(115, 'en_US', 'Salta');
INSERT INTO `state_i18n` VALUES(115, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(115, 'fr_FR', 'Salta');
INSERT INTO `state_i18n` VALUES(116, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(116, 'en_US', 'San Juan');
INSERT INTO `state_i18n` VALUES(116, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(116, 'fr_FR', 'San Juan');
INSERT INTO `state_i18n` VALUES(117, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(117, 'en_US', 'San Luis');
INSERT INTO `state_i18n` VALUES(117, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(117, 'fr_FR', 'San Luis');
INSERT INTO `state_i18n` VALUES(118, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(118, 'en_US', 'Santa Cruz');
INSERT INTO `state_i18n` VALUES(118, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(118, 'fr_FR', 'Santa Cruz');
INSERT INTO `state_i18n` VALUES(119, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(119, 'en_US', 'Santa Fe');
INSERT INTO `state_i18n` VALUES(119, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(119, 'fr_FR', 'Santa Fe');
INSERT INTO `state_i18n` VALUES(120, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(120, 'en_US', 'Santiago del Estero');
INSERT INTO `state_i18n` VALUES(120, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(120, 'fr_FR', 'Santiago del Estero');
INSERT INTO `state_i18n` VALUES(121, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(121, 'en_US', 'Tierra del Fuego');
INSERT INTO `state_i18n` VALUES(121, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(121, 'fr_FR', 'Tierra del Fuego');
INSERT INTO `state_i18n` VALUES(122, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(122, 'en_US', 'Tucumán');
INSERT INTO `state_i18n` VALUES(122, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(122, 'fr_FR', 'Tucuman');
INSERT INTO `state_i18n` VALUES(123, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(123, 'en_US', 'Agrigento');
INSERT INTO `state_i18n` VALUES(123, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(123, 'fr_FR', 'Agrigento');
INSERT INTO `state_i18n` VALUES(124, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(124, 'en_US', 'Alessandria');
INSERT INTO `state_i18n` VALUES(124, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(124, 'fr_FR', 'Alessandria');
INSERT INTO `state_i18n` VALUES(125, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(125, 'en_US', 'Ancona');
INSERT INTO `state_i18n` VALUES(125, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(125, 'fr_FR', 'Ancona');
INSERT INTO `state_i18n` VALUES(126, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(126, 'en_US', 'Aosta');
INSERT INTO `state_i18n` VALUES(126, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(126, 'fr_FR', 'Aosta');
INSERT INTO `state_i18n` VALUES(127, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(127, 'en_US', 'Arezzo');
INSERT INTO `state_i18n` VALUES(127, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(127, 'fr_FR', 'Arezzo');
INSERT INTO `state_i18n` VALUES(128, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(128, 'en_US', 'Ascoli Piceno');
INSERT INTO `state_i18n` VALUES(128, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(128, 'fr_FR', 'Ascoli Piceno');
INSERT INTO `state_i18n` VALUES(129, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(129, 'en_US', 'Asti');
INSERT INTO `state_i18n` VALUES(129, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(129, 'fr_FR', 'Asti');
INSERT INTO `state_i18n` VALUES(130, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(130, 'en_US', 'Avellino');
INSERT INTO `state_i18n` VALUES(130, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(130, 'fr_FR', 'Avellino');
INSERT INTO `state_i18n` VALUES(131, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(131, 'en_US', 'Bari');
INSERT INTO `state_i18n` VALUES(131, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(131, 'fr_FR', 'Bari');
INSERT INTO `state_i18n` VALUES(132, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(132, 'en_US', 'Barletta-Andria-Trani');
INSERT INTO `state_i18n` VALUES(132, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(132, 'fr_FR', 'Barletta-Andria-Trani');
INSERT INTO `state_i18n` VALUES(133, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(133, 'en_US', 'Belluno');
INSERT INTO `state_i18n` VALUES(133, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(133, 'fr_FR', 'Belluno');
INSERT INTO `state_i18n` VALUES(134, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(134, 'en_US', 'Benevento');
INSERT INTO `state_i18n` VALUES(134, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(134, 'fr_FR', 'Benevento');
INSERT INTO `state_i18n` VALUES(135, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(135, 'en_US', 'Bergamo');
INSERT INTO `state_i18n` VALUES(135, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(135, 'fr_FR', 'Bergamo');
INSERT INTO `state_i18n` VALUES(136, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(136, 'en_US', 'Biella');
INSERT INTO `state_i18n` VALUES(136, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(136, 'fr_FR', 'Biella');
INSERT INTO `state_i18n` VALUES(137, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(137, 'en_US', 'Bologna');
INSERT INTO `state_i18n` VALUES(137, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(137, 'fr_FR', 'Bologne');
INSERT INTO `state_i18n` VALUES(138, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(138, 'en_US', 'Bolzano');
INSERT INTO `state_i18n` VALUES(138, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(138, 'fr_FR', 'Bolzano');
INSERT INTO `state_i18n` VALUES(139, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(139, 'en_US', 'Brescia');
INSERT INTO `state_i18n` VALUES(139, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(139, 'fr_FR', 'Brescia');
INSERT INTO `state_i18n` VALUES(140, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(140, 'en_US', 'Brindisi');
INSERT INTO `state_i18n` VALUES(140, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(140, 'fr_FR', 'Brindisi');
INSERT INTO `state_i18n` VALUES(141, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(141, 'en_US', 'Cagliari');
INSERT INTO `state_i18n` VALUES(141, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(141, 'fr_FR', 'Cagliari');
INSERT INTO `state_i18n` VALUES(142, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(142, 'en_US', 'Caltanissetta');
INSERT INTO `state_i18n` VALUES(142, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(142, 'fr_FR', 'Caltanissetta');
INSERT INTO `state_i18n` VALUES(143, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(143, 'en_US', 'Campobasso');
INSERT INTO `state_i18n` VALUES(143, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(143, 'fr_FR', 'Campobasso');
INSERT INTO `state_i18n` VALUES(144, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(144, 'en_US', 'Carbonia-Iglesias');
INSERT INTO `state_i18n` VALUES(144, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(144, 'fr_FR', 'Carbonia-Iglesias');
INSERT INTO `state_i18n` VALUES(145, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(145, 'en_US', 'Caserta');
INSERT INTO `state_i18n` VALUES(145, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(145, 'fr_FR', 'Caserta');
INSERT INTO `state_i18n` VALUES(146, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(146, 'en_US', 'Catania');
INSERT INTO `state_i18n` VALUES(146, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(146, 'fr_FR', 'Catane');
INSERT INTO `state_i18n` VALUES(147, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(147, 'en_US', 'Catanzaro');
INSERT INTO `state_i18n` VALUES(147, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(147, 'fr_FR', 'Catanzaro');
INSERT INTO `state_i18n` VALUES(148, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(148, 'en_US', 'Chieti');
INSERT INTO `state_i18n` VALUES(148, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(148, 'fr_FR', 'Chieti');
INSERT INTO `state_i18n` VALUES(149, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(149, 'en_US', 'Como');
INSERT INTO `state_i18n` VALUES(149, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(149, 'fr_FR', 'Como');
INSERT INTO `state_i18n` VALUES(150, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(150, 'en_US', 'Cosenza');
INSERT INTO `state_i18n` VALUES(150, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(150, 'fr_FR', 'Cosenza');
INSERT INTO `state_i18n` VALUES(151, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(151, 'en_US', 'Cremona');
INSERT INTO `state_i18n` VALUES(151, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(151, 'fr_FR', 'Cremona');
INSERT INTO `state_i18n` VALUES(152, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(152, 'en_US', 'Crotone');
INSERT INTO `state_i18n` VALUES(152, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(152, 'fr_FR', 'Crotone');
INSERT INTO `state_i18n` VALUES(153, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(153, 'en_US', 'Cuneo');
INSERT INTO `state_i18n` VALUES(153, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(153, 'fr_FR', 'Cuneo');
INSERT INTO `state_i18n` VALUES(154, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(154, 'en_US', 'Enna');
INSERT INTO `state_i18n` VALUES(154, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(154, 'fr_FR', 'Enna');
INSERT INTO `state_i18n` VALUES(155, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(155, 'en_US', 'Fermo');
INSERT INTO `state_i18n` VALUES(155, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(155, 'fr_FR', 'Fermo');
INSERT INTO `state_i18n` VALUES(156, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(156, 'en_US', 'Ferrara');
INSERT INTO `state_i18n` VALUES(156, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(156, 'fr_FR', 'Ferrara');
INSERT INTO `state_i18n` VALUES(157, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(157, 'en_US', 'Firenze');
INSERT INTO `state_i18n` VALUES(157, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(157, 'fr_FR', 'Firenze');
INSERT INTO `state_i18n` VALUES(158, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(158, 'en_US', 'Foggia');
INSERT INTO `state_i18n` VALUES(158, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(158, 'fr_FR', 'Foggia');
INSERT INTO `state_i18n` VALUES(159, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(159, 'en_US', 'Forlì-Cesena');
INSERT INTO `state_i18n` VALUES(159, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(159, 'fr_FR', 'Forlì-Cesena');
INSERT INTO `state_i18n` VALUES(160, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(160, 'en_US', 'Frosinone');
INSERT INTO `state_i18n` VALUES(160, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(160, 'fr_FR', 'Frosinone');
INSERT INTO `state_i18n` VALUES(161, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(161, 'en_US', 'Genova');
INSERT INTO `state_i18n` VALUES(161, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(161, 'fr_FR', 'Genova');
INSERT INTO `state_i18n` VALUES(162, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(162, 'en_US', 'Gorizia');
INSERT INTO `state_i18n` VALUES(162, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(162, 'fr_FR', 'Gorizia');
INSERT INTO `state_i18n` VALUES(163, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(163, 'en_US', 'Grosseto');
INSERT INTO `state_i18n` VALUES(163, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(163, 'fr_FR', 'Grosseto');
INSERT INTO `state_i18n` VALUES(164, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(164, 'en_US', 'Imperia');
INSERT INTO `state_i18n` VALUES(164, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(164, 'fr_FR', 'Imperia');
INSERT INTO `state_i18n` VALUES(165, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(165, 'en_US', 'Isernia');
INSERT INTO `state_i18n` VALUES(165, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(165, 'fr_FR', 'Isernia');
INSERT INTO `state_i18n` VALUES(166, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(166, 'en_US', 'L\'Aquila');
INSERT INTO `state_i18n` VALUES(166, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(166, 'fr_FR', 'L\'Aquila');
INSERT INTO `state_i18n` VALUES(167, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(167, 'en_US', 'La Spezia');
INSERT INTO `state_i18n` VALUES(167, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(167, 'fr_FR', 'La Spezia');
INSERT INTO `state_i18n` VALUES(168, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(168, 'en_US', 'Latina');
INSERT INTO `state_i18n` VALUES(168, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(168, 'fr_FR', 'Latina');
INSERT INTO `state_i18n` VALUES(169, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(169, 'en_US', 'Lecce');
INSERT INTO `state_i18n` VALUES(169, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(169, 'fr_FR', 'Lecce');
INSERT INTO `state_i18n` VALUES(170, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(170, 'en_US', 'Lecco');
INSERT INTO `state_i18n` VALUES(170, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(170, 'fr_FR', 'Lecco');
INSERT INTO `state_i18n` VALUES(171, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(171, 'en_US', 'Livorno');
INSERT INTO `state_i18n` VALUES(171, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(171, 'fr_FR', 'Livourne');
INSERT INTO `state_i18n` VALUES(172, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(172, 'en_US', 'Lodi');
INSERT INTO `state_i18n` VALUES(172, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(172, 'fr_FR', 'Lodi');
INSERT INTO `state_i18n` VALUES(173, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(173, 'en_US', 'Lucca');
INSERT INTO `state_i18n` VALUES(173, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(173, 'fr_FR', 'Lucca');
INSERT INTO `state_i18n` VALUES(174, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(174, 'en_US', 'Macerata');
INSERT INTO `state_i18n` VALUES(174, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(174, 'fr_FR', 'Macerata');
INSERT INTO `state_i18n` VALUES(175, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(175, 'en_US', 'Mantova');
INSERT INTO `state_i18n` VALUES(175, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(175, 'fr_FR', 'Mantova');
INSERT INTO `state_i18n` VALUES(176, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(176, 'en_US', 'Massa');
INSERT INTO `state_i18n` VALUES(176, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(176, 'fr_FR', 'Massa');
INSERT INTO `state_i18n` VALUES(177, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(177, 'en_US', 'Matera');
INSERT INTO `state_i18n` VALUES(177, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(177, 'fr_FR', 'Matera');
INSERT INTO `state_i18n` VALUES(178, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(178, 'en_US', 'Medio Campidano');
INSERT INTO `state_i18n` VALUES(178, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(178, 'fr_FR', 'Medio Campidano');
INSERT INTO `state_i18n` VALUES(179, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(179, 'en_US', 'Messina');
INSERT INTO `state_i18n` VALUES(179, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(179, 'fr_FR', 'Messina');
INSERT INTO `state_i18n` VALUES(180, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(180, 'en_US', 'Milano');
INSERT INTO `state_i18n` VALUES(180, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(180, 'fr_FR', 'Milano');
INSERT INTO `state_i18n` VALUES(181, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(181, 'en_US', 'Modena');
INSERT INTO `state_i18n` VALUES(181, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(181, 'fr_FR', 'Modena');
INSERT INTO `state_i18n` VALUES(182, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(182, 'en_US', 'Monza e della Brianza');
INSERT INTO `state_i18n` VALUES(182, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(182, 'fr_FR', 'Monza e della Brianza');
INSERT INTO `state_i18n` VALUES(183, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(183, 'en_US', 'Napoli');
INSERT INTO `state_i18n` VALUES(183, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(183, 'fr_FR', 'Napoli');
INSERT INTO `state_i18n` VALUES(184, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(184, 'en_US', 'Novara');
INSERT INTO `state_i18n` VALUES(184, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(184, 'fr_FR', 'Novara');
INSERT INTO `state_i18n` VALUES(185, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(185, 'en_US', 'Nuoro');
INSERT INTO `state_i18n` VALUES(185, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(185, 'fr_FR', 'Nuoro');
INSERT INTO `state_i18n` VALUES(186, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(186, 'en_US', 'Ogliastra');
INSERT INTO `state_i18n` VALUES(186, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(186, 'fr_FR', 'Ogliastra');
INSERT INTO `state_i18n` VALUES(187, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(187, 'en_US', 'Olbia-Tempio');
INSERT INTO `state_i18n` VALUES(187, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(187, 'fr_FR', 'Olbia-Tempio');
INSERT INTO `state_i18n` VALUES(188, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(188, 'en_US', 'Oristano');
INSERT INTO `state_i18n` VALUES(188, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(188, 'fr_FR', 'Oristano');
INSERT INTO `state_i18n` VALUES(189, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(189, 'en_US', 'Padova');
INSERT INTO `state_i18n` VALUES(189, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(189, 'fr_FR', 'Padova');
INSERT INTO `state_i18n` VALUES(190, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(190, 'en_US', 'Palermo');
INSERT INTO `state_i18n` VALUES(190, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(190, 'fr_FR', 'Palerme');
INSERT INTO `state_i18n` VALUES(191, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(191, 'en_US', 'Parma');
INSERT INTO `state_i18n` VALUES(191, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(191, 'fr_FR', 'Parma');
INSERT INTO `state_i18n` VALUES(192, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(192, 'en_US', 'Pavia');
INSERT INTO `state_i18n` VALUES(192, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(192, 'fr_FR', 'Pavie');
INSERT INTO `state_i18n` VALUES(193, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(193, 'en_US', 'Perugia');
INSERT INTO `state_i18n` VALUES(193, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(193, 'fr_FR', 'Pérouse');
INSERT INTO `state_i18n` VALUES(194, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(194, 'en_US', 'Pesaro-Urbino');
INSERT INTO `state_i18n` VALUES(194, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(194, 'fr_FR', 'Pesaro-Urbino');
INSERT INTO `state_i18n` VALUES(195, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(195, 'en_US', 'Pescara');
INSERT INTO `state_i18n` VALUES(195, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(195, 'fr_FR', 'Pescara');
INSERT INTO `state_i18n` VALUES(196, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(196, 'en_US', 'Piacenza');
INSERT INTO `state_i18n` VALUES(196, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(196, 'fr_FR', 'Piacenza');
INSERT INTO `state_i18n` VALUES(197, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(197, 'en_US', 'Pisa');
INSERT INTO `state_i18n` VALUES(197, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(197, 'fr_FR', 'Pise');
INSERT INTO `state_i18n` VALUES(198, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(198, 'en_US', 'Pistoia');
INSERT INTO `state_i18n` VALUES(198, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(198, 'fr_FR', 'Pistoia');
INSERT INTO `state_i18n` VALUES(199, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(199, 'en_US', 'Pordenone');
INSERT INTO `state_i18n` VALUES(199, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(199, 'fr_FR', 'Pordenone');
INSERT INTO `state_i18n` VALUES(200, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(200, 'en_US', 'Potenza');
INSERT INTO `state_i18n` VALUES(200, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(200, 'fr_FR', 'Potenza');
INSERT INTO `state_i18n` VALUES(201, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(201, 'en_US', 'Prato');
INSERT INTO `state_i18n` VALUES(201, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(201, 'fr_FR', 'Prato');
INSERT INTO `state_i18n` VALUES(202, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(202, 'en_US', 'Ragusa');
INSERT INTO `state_i18n` VALUES(202, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(202, 'fr_FR', 'Ragusa');
INSERT INTO `state_i18n` VALUES(203, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(203, 'en_US', 'Ravenna');
INSERT INTO `state_i18n` VALUES(203, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(203, 'fr_FR', 'Ravenne');
INSERT INTO `state_i18n` VALUES(204, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(204, 'en_US', 'Reggio Calabria');
INSERT INTO `state_i18n` VALUES(204, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(204, 'fr_FR', 'Reggio de Calabre');
INSERT INTO `state_i18n` VALUES(205, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(205, 'en_US', 'Reggio Emilia');
INSERT INTO `state_i18n` VALUES(205, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(205, 'fr_FR', 'Reggio d\'Émilie');
INSERT INTO `state_i18n` VALUES(206, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(206, 'en_US', 'Rieti');
INSERT INTO `state_i18n` VALUES(206, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(206, 'fr_FR', 'Rieti');
INSERT INTO `state_i18n` VALUES(207, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(207, 'en_US', 'Rimini');
INSERT INTO `state_i18n` VALUES(207, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(207, 'fr_FR', 'Rimini');
INSERT INTO `state_i18n` VALUES(208, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(208, 'en_US', 'Roma');
INSERT INTO `state_i18n` VALUES(208, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(208, 'fr_FR', 'Rome');
INSERT INTO `state_i18n` VALUES(209, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(209, 'en_US', 'Rovigo');
INSERT INTO `state_i18n` VALUES(209, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(209, 'fr_FR', 'Rovigo');
INSERT INTO `state_i18n` VALUES(210, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(210, 'en_US', 'Salerno');
INSERT INTO `state_i18n` VALUES(210, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(210, 'fr_FR', 'Salerno');
INSERT INTO `state_i18n` VALUES(211, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(211, 'en_US', 'Sassari');
INSERT INTO `state_i18n` VALUES(211, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(211, 'fr_FR', 'Sassari');
INSERT INTO `state_i18n` VALUES(212, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(212, 'en_US', 'Savona');
INSERT INTO `state_i18n` VALUES(212, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(212, 'fr_FR', 'Savona');
INSERT INTO `state_i18n` VALUES(213, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(213, 'en_US', 'Siena');
INSERT INTO `state_i18n` VALUES(213, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(213, 'fr_FR', 'Siena');
INSERT INTO `state_i18n` VALUES(214, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(214, 'en_US', 'Siracusa');
INSERT INTO `state_i18n` VALUES(214, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(214, 'fr_FR', 'Siracusa');
INSERT INTO `state_i18n` VALUES(215, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(215, 'en_US', 'Sondrio');
INSERT INTO `state_i18n` VALUES(215, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(215, 'fr_FR', 'Sondrio');
INSERT INTO `state_i18n` VALUES(216, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(216, 'en_US', 'Taranto');
INSERT INTO `state_i18n` VALUES(216, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(216, 'fr_FR', 'Taranto');
INSERT INTO `state_i18n` VALUES(217, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(217, 'en_US', 'Teramo');
INSERT INTO `state_i18n` VALUES(217, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(217, 'fr_FR', 'Teramo');
INSERT INTO `state_i18n` VALUES(218, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(218, 'en_US', 'Terni');
INSERT INTO `state_i18n` VALUES(218, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(218, 'fr_FR', 'Terni');
INSERT INTO `state_i18n` VALUES(219, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(219, 'en_US', 'Torino');
INSERT INTO `state_i18n` VALUES(219, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(219, 'fr_FR', 'Torino');
INSERT INTO `state_i18n` VALUES(220, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(220, 'en_US', 'Trapani');
INSERT INTO `state_i18n` VALUES(220, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(220, 'fr_FR', 'Trapani');
INSERT INTO `state_i18n` VALUES(221, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(221, 'en_US', 'Trento');
INSERT INTO `state_i18n` VALUES(221, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(221, 'fr_FR', 'Trento');
INSERT INTO `state_i18n` VALUES(222, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(222, 'en_US', 'Treviso');
INSERT INTO `state_i18n` VALUES(222, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(222, 'fr_FR', 'Treviso');
INSERT INTO `state_i18n` VALUES(223, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(223, 'en_US', 'Trieste');
INSERT INTO `state_i18n` VALUES(223, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(223, 'fr_FR', 'Trieste');
INSERT INTO `state_i18n` VALUES(224, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(224, 'en_US', 'Udine');
INSERT INTO `state_i18n` VALUES(224, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(224, 'fr_FR', 'Udine');
INSERT INTO `state_i18n` VALUES(225, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(225, 'en_US', 'Varese');
INSERT INTO `state_i18n` VALUES(225, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(225, 'fr_FR', 'Varese');
INSERT INTO `state_i18n` VALUES(226, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(226, 'en_US', 'Venezia');
INSERT INTO `state_i18n` VALUES(226, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(226, 'fr_FR', 'Venezia');
INSERT INTO `state_i18n` VALUES(227, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(227, 'en_US', 'Verbano-Cusio-Ossola');
INSERT INTO `state_i18n` VALUES(227, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(227, 'fr_FR', 'Verbano-Cusio-Ossola');
INSERT INTO `state_i18n` VALUES(228, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(228, 'en_US', 'Vercelli');
INSERT INTO `state_i18n` VALUES(228, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(228, 'fr_FR', 'Vercelli');
INSERT INTO `state_i18n` VALUES(229, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(229, 'en_US', 'Verona');
INSERT INTO `state_i18n` VALUES(229, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(229, 'fr_FR', 'Vérone');
INSERT INTO `state_i18n` VALUES(230, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(230, 'en_US', 'Vibo Valentia');
INSERT INTO `state_i18n` VALUES(230, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(230, 'fr_FR', 'Vibo Valentia');
INSERT INTO `state_i18n` VALUES(231, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(231, 'en_US', 'Vicenza');
INSERT INTO `state_i18n` VALUES(231, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(231, 'fr_FR', 'Vicenza');
INSERT INTO `state_i18n` VALUES(232, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(232, 'en_US', 'Viterbo');
INSERT INTO `state_i18n` VALUES(232, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(232, 'fr_FR', 'Viterbo');
INSERT INTO `state_i18n` VALUES(233, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(233, 'en_US', 'Aceh');
INSERT INTO `state_i18n` VALUES(233, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(233, 'fr_FR', 'Aceh');
INSERT INTO `state_i18n` VALUES(234, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(234, 'en_US', 'Bali');
INSERT INTO `state_i18n` VALUES(234, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(234, 'fr_FR', 'Bali');
INSERT INTO `state_i18n` VALUES(235, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(235, 'en_US', 'Bangka');
INSERT INTO `state_i18n` VALUES(235, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(235, 'fr_FR', 'Bangka');
INSERT INTO `state_i18n` VALUES(236, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(236, 'en_US', 'Banten');
INSERT INTO `state_i18n` VALUES(236, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(236, 'fr_FR', 'Banten');
INSERT INTO `state_i18n` VALUES(237, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(237, 'en_US', 'Bengkulu');
INSERT INTO `state_i18n` VALUES(237, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(237, 'fr_FR', 'Bengkulu');
INSERT INTO `state_i18n` VALUES(238, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(238, 'en_US', 'Central Java');
INSERT INTO `state_i18n` VALUES(238, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(238, 'fr_FR', 'Central Java');
INSERT INTO `state_i18n` VALUES(239, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(239, 'en_US', 'Central Kalimantan');
INSERT INTO `state_i18n` VALUES(239, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(239, 'fr_FR', 'Kalimantan occidental');
INSERT INTO `state_i18n` VALUES(240, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(240, 'en_US', 'Central Sulawesi');
INSERT INTO `state_i18n` VALUES(240, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(240, 'fr_FR', 'Sulawesi central');
INSERT INTO `state_i18n` VALUES(241, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(241, 'en_US', 'Coat of arms of East Java');
INSERT INTO `state_i18n` VALUES(241, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(241, 'fr_FR', 'Coat of arms of East Java');
INSERT INTO `state_i18n` VALUES(242, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(242, 'en_US', 'East kalimantan');
INSERT INTO `state_i18n` VALUES(242, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(242, 'fr_FR', 'Kalimantan oriental');
INSERT INTO `state_i18n` VALUES(243, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(243, 'en_US', 'East Nusa Tenggara');
INSERT INTO `state_i18n` VALUES(243, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(243, 'fr_FR', 'Nusa Tenggara oriental');
INSERT INTO `state_i18n` VALUES(244, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(244, 'en_US', 'Lambang propinsi');
INSERT INTO `state_i18n` VALUES(244, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(244, 'fr_FR', 'Lambang propinsi');
INSERT INTO `state_i18n` VALUES(245, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(245, 'en_US', 'Jakarta');
INSERT INTO `state_i18n` VALUES(245, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(245, 'fr_FR', 'Jakarta');
INSERT INTO `state_i18n` VALUES(246, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(246, 'en_US', 'Jambi');
INSERT INTO `state_i18n` VALUES(246, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(246, 'fr_FR', 'Jambi');
INSERT INTO `state_i18n` VALUES(247, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(247, 'en_US', 'Lampung');
INSERT INTO `state_i18n` VALUES(247, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(247, 'fr_FR', 'Lampung');
INSERT INTO `state_i18n` VALUES(248, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(248, 'en_US', 'Maluku');
INSERT INTO `state_i18n` VALUES(248, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(248, 'fr_FR', 'Maluku');
INSERT INTO `state_i18n` VALUES(249, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(249, 'en_US', 'North Maluku');
INSERT INTO `state_i18n` VALUES(249, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(249, 'fr_FR', 'Maluku du Nord');
INSERT INTO `state_i18n` VALUES(250, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(250, 'en_US', 'North Sulawesi');
INSERT INTO `state_i18n` VALUES(250, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(250, 'fr_FR', 'Sulawesi du Nord');
INSERT INTO `state_i18n` VALUES(251, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(251, 'en_US', 'North Sumatra');
INSERT INTO `state_i18n` VALUES(251, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(251, 'fr_FR', 'Sumatra-Nord');
INSERT INTO `state_i18n` VALUES(252, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(252, 'en_US', 'Papua');
INSERT INTO `state_i18n` VALUES(252, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(252, 'fr_FR', 'Papouasie');
INSERT INTO `state_i18n` VALUES(253, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(253, 'en_US', 'Riau');
INSERT INTO `state_i18n` VALUES(253, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(253, 'fr_FR', 'Riau');
INSERT INTO `state_i18n` VALUES(254, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(254, 'en_US', 'Lambang Riau');
INSERT INTO `state_i18n` VALUES(254, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(254, 'fr_FR', 'Lambang Riau');
INSERT INTO `state_i18n` VALUES(255, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(255, 'en_US', 'Southeast Sulawesi');
INSERT INTO `state_i18n` VALUES(255, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(255, 'fr_FR', 'Sulawesi du sud-est');
INSERT INTO `state_i18n` VALUES(256, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(256, 'en_US', 'South Kalimantan');
INSERT INTO `state_i18n` VALUES(256, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(256, 'fr_FR', 'Kalimantan du Sud');
INSERT INTO `state_i18n` VALUES(257, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(257, 'en_US', 'South Sulawesi');
INSERT INTO `state_i18n` VALUES(257, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(257, 'fr_FR', 'Sulawesi du Sud');
INSERT INTO `state_i18n` VALUES(258, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(258, 'en_US', 'South Sumatra');
INSERT INTO `state_i18n` VALUES(258, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(258, 'fr_FR', 'Sumatra du Sud');
INSERT INTO `state_i18n` VALUES(259, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(259, 'en_US', 'West Java');
INSERT INTO `state_i18n` VALUES(259, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(259, 'fr_FR', 'Java-Ouest');
INSERT INTO `state_i18n` VALUES(260, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(260, 'en_US', 'West Kalimantan');
INSERT INTO `state_i18n` VALUES(260, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(260, 'fr_FR', 'Kalimantan occidental');
INSERT INTO `state_i18n` VALUES(261, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(261, 'en_US', 'West Nusa Tenggara');
INSERT INTO `state_i18n` VALUES(261, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(261, 'fr_FR', 'Nusa Tenggara occidental');
INSERT INTO `state_i18n` VALUES(262, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(262, 'en_US', 'Lambang Provinsi Papua Barat');
INSERT INTO `state_i18n` VALUES(262, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(262, 'fr_FR', 'Lambang Provinsi Papua Barat');
INSERT INTO `state_i18n` VALUES(263, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(263, 'en_US', 'West Sulawesi');
INSERT INTO `state_i18n` VALUES(263, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(263, 'fr_FR', 'Sulawesi occidental');
INSERT INTO `state_i18n` VALUES(264, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(264, 'en_US', 'West Sumatra');
INSERT INTO `state_i18n` VALUES(264, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(264, 'fr_FR', 'Sumatra occidental');
INSERT INTO `state_i18n` VALUES(265, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(265, 'en_US', 'Yogyakarta');
INSERT INTO `state_i18n` VALUES(265, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(265, 'fr_FR', 'Yogyakarta');
INSERT INTO `state_i18n` VALUES(266, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(266, 'en_US', 'Aichi');
INSERT INTO `state_i18n` VALUES(266, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(266, 'fr_FR', 'Aichi');
INSERT INTO `state_i18n` VALUES(267, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(267, 'en_US', 'Akita');
INSERT INTO `state_i18n` VALUES(267, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(267, 'fr_FR', 'Akita');
INSERT INTO `state_i18n` VALUES(268, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(268, 'en_US', 'Aomori');
INSERT INTO `state_i18n` VALUES(268, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(268, 'fr_FR', 'Aomori');
INSERT INTO `state_i18n` VALUES(269, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(269, 'en_US', 'Chiba');
INSERT INTO `state_i18n` VALUES(269, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(269, 'fr_FR', 'Chiba');
INSERT INTO `state_i18n` VALUES(270, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(270, 'en_US', 'Ehime');
INSERT INTO `state_i18n` VALUES(270, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(270, 'fr_FR', 'Ehime');
INSERT INTO `state_i18n` VALUES(271, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(271, 'en_US', 'Fukui');
INSERT INTO `state_i18n` VALUES(271, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(271, 'fr_FR', 'Fukui');
INSERT INTO `state_i18n` VALUES(272, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(272, 'en_US', 'Fukuoka');
INSERT INTO `state_i18n` VALUES(272, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(272, 'fr_FR', 'Fukuoka');
INSERT INTO `state_i18n` VALUES(273, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(273, 'en_US', 'Fukushima');
INSERT INTO `state_i18n` VALUES(273, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(273, 'fr_FR', 'Fukushima');
INSERT INTO `state_i18n` VALUES(274, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(274, 'en_US', 'Gifu');
INSERT INTO `state_i18n` VALUES(274, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(274, 'fr_FR', 'Gifu');
INSERT INTO `state_i18n` VALUES(275, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(275, 'en_US', 'Gunma');
INSERT INTO `state_i18n` VALUES(275, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(275, 'fr_FR', 'Gunma');
INSERT INTO `state_i18n` VALUES(276, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(276, 'en_US', 'Hiroshima');
INSERT INTO `state_i18n` VALUES(276, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(276, 'fr_FR', 'Hiroshima');
INSERT INTO `state_i18n` VALUES(277, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(277, 'en_US', 'Hokkaido');
INSERT INTO `state_i18n` VALUES(277, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(277, 'fr_FR', 'Hokkaido');
INSERT INTO `state_i18n` VALUES(278, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(278, 'en_US', 'Hyogo');
INSERT INTO `state_i18n` VALUES(278, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(278, 'fr_FR', 'Hyogo');
INSERT INTO `state_i18n` VALUES(279, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(279, 'en_US', 'Ibaraki');
INSERT INTO `state_i18n` VALUES(279, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(279, 'fr_FR', 'Ibaraki');
INSERT INTO `state_i18n` VALUES(280, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(280, 'en_US', 'Ishikawa');
INSERT INTO `state_i18n` VALUES(280, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(280, 'fr_FR', 'Ishikawa');
INSERT INTO `state_i18n` VALUES(281, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(281, 'en_US', 'Iwate');
INSERT INTO `state_i18n` VALUES(281, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(281, 'fr_FR', 'Iwate');
INSERT INTO `state_i18n` VALUES(282, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(282, 'en_US', 'Kagawa');
INSERT INTO `state_i18n` VALUES(282, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(282, 'fr_FR', 'Kagawa');
INSERT INTO `state_i18n` VALUES(283, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(283, 'en_US', 'Kagoshima');
INSERT INTO `state_i18n` VALUES(283, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(283, 'fr_FR', 'Kagoshima');
INSERT INTO `state_i18n` VALUES(284, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(284, 'en_US', 'Kanagawa');
INSERT INTO `state_i18n` VALUES(284, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(284, 'fr_FR', 'Kanagawa');
INSERT INTO `state_i18n` VALUES(285, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(285, 'en_US', 'Kochi');
INSERT INTO `state_i18n` VALUES(285, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(285, 'fr_FR', 'Kochi');
INSERT INTO `state_i18n` VALUES(286, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(286, 'en_US', 'Kumamoto');
INSERT INTO `state_i18n` VALUES(286, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(286, 'fr_FR', 'Kumamoto');
INSERT INTO `state_i18n` VALUES(287, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(287, 'en_US', 'Kyoto');
INSERT INTO `state_i18n` VALUES(287, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(287, 'fr_FR', 'Kyoto');
INSERT INTO `state_i18n` VALUES(288, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(288, 'en_US', 'Mie');
INSERT INTO `state_i18n` VALUES(288, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(288, 'fr_FR', 'Mie');
INSERT INTO `state_i18n` VALUES(289, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(289, 'en_US', 'Miyagi');
INSERT INTO `state_i18n` VALUES(289, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(289, 'fr_FR', 'Miyagi');
INSERT INTO `state_i18n` VALUES(290, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(290, 'en_US', 'Miyazaki');
INSERT INTO `state_i18n` VALUES(290, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(290, 'fr_FR', 'Miyazaki');
INSERT INTO `state_i18n` VALUES(291, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(291, 'en_US', 'Nagano');
INSERT INTO `state_i18n` VALUES(291, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(291, 'fr_FR', 'Nagano');
INSERT INTO `state_i18n` VALUES(292, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(292, 'en_US', 'Nagasaki');
INSERT INTO `state_i18n` VALUES(292, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(292, 'fr_FR', 'Nagasaki');
INSERT INTO `state_i18n` VALUES(293, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(293, 'en_US', 'Nara');
INSERT INTO `state_i18n` VALUES(293, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(293, 'fr_FR', 'Nara');
INSERT INTO `state_i18n` VALUES(294, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(294, 'en_US', 'Niigata');
INSERT INTO `state_i18n` VALUES(294, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(294, 'fr_FR', 'Niigata');
INSERT INTO `state_i18n` VALUES(295, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(295, 'en_US', 'Oita');
INSERT INTO `state_i18n` VALUES(295, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(295, 'fr_FR', 'Oita');
INSERT INTO `state_i18n` VALUES(296, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(296, 'en_US', 'Okayama');
INSERT INTO `state_i18n` VALUES(296, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(296, 'fr_FR', 'Okayama');
INSERT INTO `state_i18n` VALUES(297, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(297, 'en_US', 'Okinawa');
INSERT INTO `state_i18n` VALUES(297, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(297, 'fr_FR', 'Okinawa');
INSERT INTO `state_i18n` VALUES(298, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(298, 'en_US', 'Osaka');
INSERT INTO `state_i18n` VALUES(298, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(298, 'fr_FR', 'Osaka');
INSERT INTO `state_i18n` VALUES(299, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(299, 'en_US', 'Saga');
INSERT INTO `state_i18n` VALUES(299, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(299, 'fr_FR', 'Saga');
INSERT INTO `state_i18n` VALUES(300, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(300, 'en_US', 'Saitama');
INSERT INTO `state_i18n` VALUES(300, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(300, 'fr_FR', 'Saitama');
INSERT INTO `state_i18n` VALUES(301, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(301, 'en_US', 'Shiga');
INSERT INTO `state_i18n` VALUES(301, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(301, 'fr_FR', 'Shiga');
INSERT INTO `state_i18n` VALUES(302, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(302, 'en_US', 'Shimane');
INSERT INTO `state_i18n` VALUES(302, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(302, 'fr_FR', 'Shimane');
INSERT INTO `state_i18n` VALUES(303, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(303, 'en_US', 'Shizuoka');
INSERT INTO `state_i18n` VALUES(303, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(303, 'fr_FR', 'Shizuoka');
INSERT INTO `state_i18n` VALUES(304, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(304, 'en_US', 'Tochigi');
INSERT INTO `state_i18n` VALUES(304, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(304, 'fr_FR', 'Tochigi');
INSERT INTO `state_i18n` VALUES(305, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(305, 'en_US', 'Tokushima');
INSERT INTO `state_i18n` VALUES(305, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(305, 'fr_FR', 'Tokushima');
INSERT INTO `state_i18n` VALUES(306, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(306, 'en_US', 'Tokyo');
INSERT INTO `state_i18n` VALUES(306, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(306, 'fr_FR', 'Tokyo');
INSERT INTO `state_i18n` VALUES(307, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(307, 'en_US', 'Tottori');
INSERT INTO `state_i18n` VALUES(307, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(307, 'fr_FR', 'Tottori');
INSERT INTO `state_i18n` VALUES(308, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(308, 'en_US', 'Toyama');
INSERT INTO `state_i18n` VALUES(308, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(308, 'fr_FR', 'Toyama');
INSERT INTO `state_i18n` VALUES(309, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(309, 'en_US', 'Wakayama');
INSERT INTO `state_i18n` VALUES(309, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(309, 'fr_FR', 'Wakayama');
INSERT INTO `state_i18n` VALUES(310, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(310, 'en_US', 'Yamagata');
INSERT INTO `state_i18n` VALUES(310, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(310, 'fr_FR', 'Yamagata');
INSERT INTO `state_i18n` VALUES(311, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(311, 'en_US', 'Yamaguchi');
INSERT INTO `state_i18n` VALUES(311, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(311, 'fr_FR', 'Yamaguchi');
INSERT INTO `state_i18n` VALUES(312, 'de_DE', NULL);
INSERT INTO `state_i18n` VALUES(312, 'en_US', 'Yamanashi');
INSERT INTO `state_i18n` VALUES(312, 'es_ES', NULL);
INSERT INTO `state_i18n` VALUES(312, 'fr_FR', 'Yamanashi');

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `serialized_requirements` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tax` VALUES(1, 'Thelia\\TaxEngine\\TaxType\\PricePercentTaxType', 'eyJwZXJjZW50IjoiMjAifQ==', '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `tax` VALUES(2, 'Thelia\\TaxEngine\\TaxType\\PricePercentTaxType', 'eyJwZXJjZW50IjoiMTAifQ==', '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `tax_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tax_i18n` VALUES(1, 'de_DE', '20% Französische MwSt.', NULL);
INSERT INTO `tax_i18n` VALUES(1, 'en_US', 'French 20% VAT', NULL);
INSERT INTO `tax_i18n` VALUES(1, 'es_ES', 'Francés 20% de IVA', NULL);
INSERT INTO `tax_i18n` VALUES(1, 'fr_FR', 'TVA française à 20%', NULL);
INSERT INTO `tax_i18n` VALUES(2, 'de_DE', '10% Französische MwSt.', NULL);
INSERT INTO `tax_i18n` VALUES(2, 'en_US', 'French 10% VAT', NULL);
INSERT INTO `tax_i18n` VALUES(2, 'es_ES', 'Francés 10% de IVA', NULL);
INSERT INTO `tax_i18n` VALUES(2, 'fr_FR', 'TVA française à 10%', NULL);

CREATE TABLE `tax_rule` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tax_rule` VALUES(1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `tax_rule` VALUES(2, 0, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `tax_rule_country` (
  `id` int(11) NOT NULL,
  `tax_rule_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `tax_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tax_rule_country` VALUES(1, 1, 64, NULL, 1, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');
INSERT INTO `tax_rule_country` VALUES(2, 2, 64, NULL, 2, 1, '2018-03-19 13:26:09', '2018-03-19 13:26:09');

CREATE TABLE `tax_rule_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tax_rule_i18n` VALUES(1, 'de_DE', '20% Französische MwSt.', NULL);
INSERT INTO `tax_rule_i18n` VALUES(1, 'en_US', 'French 20% VAT', NULL);
INSERT INTO `tax_rule_i18n` VALUES(1, 'es_ES', 'Francés 20% de IVA', NULL);
INSERT INTO `tax_rule_i18n` VALUES(1, 'fr_FR', 'TVA française à 20%', NULL);
INSERT INTO `tax_rule_i18n` VALUES(2, 'de_DE', '10% Französische MwSt.', NULL);
INSERT INTO `tax_rule_i18n` VALUES(2, 'en_US', 'French 10% VAT', NULL);
INSERT INTO `tax_rule_i18n` VALUES(2, 'es_ES', 'Francés 10% de IVA', NULL);
INSERT INTO `tax_rule_i18n` VALUES(2, 'fr_FR', 'TVA française à 10%', NULL);

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `template_i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `accessory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_address_product_id` (`product_id`),
  ADD KEY `idx_address_accessory` (`accessory`);

ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_address_customer_id` (`customer_id`),
  ADD KEY `idx_address_customer_title_id` (`title_id`),
  ADD KEY `idx_address_country_id` (`country_id`),
  ADD KEY `fk_address_state_id_idx` (`state_id`);

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `idx_admin_profile_id` (`profile_id`);

ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_api_profile_id` (`profile_id`);

ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `area_delivery_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_id_delivery_module_id_UNIQUE` (`area_id`,`delivery_module_id`),
  ADD KEY `idx_area_delivery_module_area_id` (`area_id`),
  ADD KEY `idx_area_delivery_module_delivery_module_id_idx` (`delivery_module_id`);

ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `attribute_av`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_attribute_av_attribute_id` (`attribute_id`);

ALTER TABLE `attribute_av_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `attribute_combination`
  ADD PRIMARY KEY (`attribute_id`,`attribute_av_id`,`product_sale_elements_id`),
  ADD KEY `idx_attribute_combination_attribute_id` (`attribute_id`),
  ADD KEY `idx_attribute_combination_attribute_av_id` (`attribute_av_id`),
  ADD KEY `idx_attribute_combination_product_sale_elements_id` (`product_sale_elements_id`);

ALTER TABLE `attribute_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `attribute_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_attribute_template_id` (`attribute_id`),
  ADD KEY `fk_attribute_template_idx` (`template_id`);

ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand_brand_image_idx` (`logo_image_id`);

ALTER TABLE `brand_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_brand_document_brand_id` (`brand_id`);

ALTER TABLE `brand_document_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `brand_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `brand_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_brand_image_brand_id` (`brand_id`);

ALTER TABLE `brand_image_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_UNIQUE` (`token`),
  ADD KEY `idx_cart_customer_id` (`customer_id`),
  ADD KEY `idx_cart_address_delivery_id` (`address_delivery_id`),
  ADD KEY `idx_cart_address_invoice_id` (`address_invoice_id`),
  ADD KEY `idx_cart_currency_id` (`currency_id`);

ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cart_item_cart_id` (`cart_id`),
  ADD KEY `idx_cart_item_product_id` (`product_id`),
  ADD KEY `idx_cart_item_product_sale_elements_id` (`product_sale_elements_id`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent` (`parent`),
  ADD KEY `idx_parent_position` (`parent`,`position`);

ALTER TABLE `category_associated_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_associated_content_category_id` (`category_id`),
  ADD KEY `idx_category_associated_content_content_id` (`content_id`);

ALTER TABLE `category_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_document_category_id` (`category_id`);

ALTER TABLE `category_document_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `category_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `category_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_image_category_id` (`category_id`),
  ADD KEY `idx_category_image_category_id_position` (`category_id`,`position`);

ALTER TABLE `category_image_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `category_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

ALTER TABLE `config_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `content_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_content_document_content_id` (`content_id`);

ALTER TABLE `content_document_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `content_folder`
  ADD PRIMARY KEY (`content_id`,`folder_id`),
  ADD KEY `idx_content_folder_content_id` (`content_id`),
  ADD KEY `idx_content_folder_folder_id` (`folder_id`),
  ADD KEY `idx_content_folder_default` (`default_folder`);

ALTER TABLE `content_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `content_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_content_image_content_id` (`content_id`),
  ADD KEY `idx_content_image_content_id_position` (`content_id`,`position`);

ALTER TABLE `content_image_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `content_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_country_by_default` (`by_default`);

ALTER TABLE `country_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_area_area_id_idx` (`area_id`),
  ADD KEY `fk_country_area_country_id_idx` (`country_id`),
  ADD KEY `fk_country_area_state_id_idx` (`state_id`);

ALTER TABLE `country_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`),
  ADD KEY `idx_is_enabled` (`is_enabled`),
  ADD KEY `idx_is_used` (`is_used`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_expiration_date` (`expiration_date`),
  ADD KEY `idx_is_cumulative` (`is_cumulative`),
  ADD KEY `idx_is_removing_postage` (`is_removing_postage`),
  ADD KEY `idx_max_usage` (`max_usage`),
  ADD KEY `idx_is_available_on_special_offers` (`is_available_on_special_offers`),
  ADD KEY `idx_start_date` (`start_date`);

ALTER TABLE `coupon_country`
  ADD PRIMARY KEY (`coupon_id`,`country_id`),
  ADD KEY `fk_country_id_idx` (`country_id`);

ALTER TABLE `coupon_customer_count`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`),
  ADD KEY `fk_coupon_customer_customer_id_idx` (`customer_id`),
  ADD KEY `fk_coupon_customer_coupon_id_idx` (`coupon_id`);

ALTER TABLE `coupon_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `coupon_module`
  ADD PRIMARY KEY (`coupon_id`,`module_id`),
  ADD KEY `fk_module_id_idx` (`module_id`);

ALTER TABLE `coupon_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_by_default` (`by_default`),
  ADD KEY `idx_currency_code` (`code`);

ALTER TABLE `currency_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`),
  ADD KEY `idx_customer_customer_title_id` (`title_id`),
  ADD KEY `idx_customer_lang_id` (`lang_id`),
  ADD KEY `idx_email` (`email`);

ALTER TABLE `customer_title`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `customer_title_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `customer_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `export`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`),
  ADD KEY `fk_export_1_idx` (`export_category_id`);

ALTER TABLE `export_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`);

ALTER TABLE `export_category_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `export_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `feature_av`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_feature_av_feature_id` (`feature_id`);

ALTER TABLE `feature_av_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `feature_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `feature_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_feature_prod_product_id` (`product_id`),
  ADD KEY `idx_feature_prod_feature_id` (`feature_id`),
  ADD KEY `idx_feature_prod_feature_av_id` (`feature_av_id`),
  ADD KEY `idx_feature_product_product_id_feature_id_position` (`product_id`,`feature_id`,`position`);

ALTER TABLE `feature_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_feature_template_id` (`feature_id`),
  ADD KEY `fk_feature_template_idx` (`template_id`),
  ADD KEY `idx_feature_template_template_id_position` (`template_id`,`position`);

ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `folder_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_document_folder_id` (`folder_id`);

ALTER TABLE `folder_document_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `folder_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `folder_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_image_folder_id` (`folder_id`),
  ADD KEY `idx_folder_image_folder_id_position` (`folder_id`,`position`);

ALTER TABLE `folder_image_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `folder_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `form_firewall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_form_firewall_form_name` (`form_name`),
  ADD KEY `idx_form_firewall_ip_address` (`ip_address`);

ALTER TABLE `hook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`,`type`),
  ADD KEY `idx_module_activate` (`activate`);

ALTER TABLE `hook_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `ignored_module_hook`
  ADD PRIMARY KEY (`module_id`,`hook_id`),
  ADD KEY `fk_deleted_module_hook_module_id_idx` (`module_id`),
  ADD KEY `fk_deleted_module_hook_hook_id_idx` (`hook_id`);

ALTER TABLE `import`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`),
  ADD KEY `fk_export_1_idx` (`import_category_id`);

ALTER TABLE `import_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`);

ALTER TABLE `import_category_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `import_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lang_by_default` (`by_default`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

ALTER TABLE `message_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `message_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_key_element_idx` (`meta_key`,`element_key`,`element_id`);

ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`),
  ADD KEY `idx_module_activate` (`activate`);

ALTER TABLE `module_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_module_id_name` (`module_id`,`name`);

ALTER TABLE `module_config_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `module_hook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_module_hook_active` (`active`),
  ADD KEY `fk_module_hook_module_id_idx` (`module_id`),
  ADD KEY `fk_module_hook_hook_id_idx` (`hook_id`);

ALTER TABLE `module_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `module_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_module_image_module_id` (`module_id`),
  ADD KEY `idx_module_image_module_id_position` (`module_id`,`position`);

ALTER TABLE `module_image_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `idx_unsubscribed` (`unsubscribed`);

ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`),
  ADD KEY `idx_order_currency_id` (`currency_id`),
  ADD KEY `idx_order_customer_id` (`customer_id`),
  ADD KEY `idx_order_invoice_order_address_id` (`invoice_order_address_id`),
  ADD KEY `idx_order_delivery_order_address_id` (`delivery_order_address_id`),
  ADD KEY `idx_order_status_id` (`status_id`),
  ADD KEY `fk_order_payment_module_id_idx` (`payment_module_id`),
  ADD KEY `fk_order_delivery_module_id_idx` (`delivery_module_id`),
  ADD KEY `fk_order_lang_id_idx` (`lang_id`),
  ADD KEY `idx_order_cart_fk` (`cart_id`);

ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_address_customer_title_id_idx` (`customer_title_id`),
  ADD KEY `fk_order_address_country_id_idx` (`country_id`),
  ADD KEY `fk_order_address_state_id_idx` (`state_id`);

ALTER TABLE `order_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_coupon_order_id` (`order_id`);

ALTER TABLE `order_coupon_country`
  ADD PRIMARY KEY (`coupon_id`,`country_id`),
  ADD KEY `fk_country_id_idx` (`country_id`);

ALTER TABLE `order_coupon_module`
  ADD PRIMARY KEY (`coupon_id`,`module_id`),
  ADD KEY `fk_module_id_idx` (`module_id`);

ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_product_order_id` (`order_id`);

ALTER TABLE `order_product_attribute_combination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_product_attribute_combination_order_product_id` (`order_product_id`);

ALTER TABLE `order_product_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ order_product_tax_order_product_id` (`order_product_id`);

ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`);

ALTER TABLE `order_status_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `order_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_UNIQUE` (`ref`),
  ADD KEY `idx_product_tax_rule_id` (`tax_rule_id`),
  ADD KEY `fk_product_template_id` (`template_id`),
  ADD KEY `fk_product_brand1_idx` (`brand_id`);

ALTER TABLE `product_associated_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_associated_content_product_id` (`product_id`),
  ADD KEY `idx_product_associated_content_content_id` (`content_id`);

ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `idx_product_has_category_category1` (`category_id`),
  ADD KEY `idx_product_has_category_product1` (`product_id`),
  ADD KEY `idx_product_has_category_default` (`default_category`);

ALTER TABLE `product_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_document_product_id` (`product_id`);

ALTER TABLE `product_document_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `product_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_image_product_id` (`product_id`),
  ADD KEY `idx_product_image_product_id_position` (`product_id`,`position`);

ALTER TABLE `product_image_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `product_price`
  ADD PRIMARY KEY (`product_sale_elements_id`,`currency_id`),
  ADD KEY `idx_product_price_product_sale_elements_id` (`product_sale_elements_id`),
  ADD KEY `idx_product_price_currency_id` (`currency_id`);

ALTER TABLE `product_sale_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_sale_element_product_id` (`product_id`),
  ADD KEY `ref` (`ref`),
  ADD KEY `idx_product_elements_product_id_promo_is_default` (`product_id`,`promo`,`is_default`);

ALTER TABLE `product_sale_elements_product_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pse_product_document_product_document__idx` (`product_document_id`),
  ADD KEY `fk_pse_product_document_product_sale_elem_idx` (`product_sale_elements_id`);

ALTER TABLE `product_sale_elements_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pse_product_image_product_image_id_idx` (`product_image_id`),
  ADD KEY `fk_pse_product_image_product_sale_element_idx` (`product_sale_elements_id`);

ALTER TABLE `product_version`
  ADD PRIMARY KEY (`id`,`version`);

ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`);

ALTER TABLE `profile_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `profile_module`
  ADD PRIMARY KEY (`profile_id`,`module_id`),
  ADD KEY `idx_profile_module_profile_id` (`profile_id`),
  ADD KEY `idx_profile_module_module_id` (`module_id`);

ALTER TABLE `profile_resource`
  ADD PRIMARY KEY (`profile_id`,`resource_id`),
  ADD KEY `idx_profile_resource_profile_id` (`profile_id`),
  ADD KEY `idx_profile_resource_resource_id` (`resource_id`);

ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`);

ALTER TABLE `resource_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `rewriting_argument`
  ADD PRIMARY KEY (`rewriting_url_id`,`parameter`,`value`),
  ADD KEY `idx_rewriting_argument_rewirting_url_id` (`rewriting_url_id`);

ALTER TABLE `rewriting_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`),
  ADD KEY `idx_rewriting_url_redirected` (`redirected`),
  ADD KEY `idx_rewriting_url` (`view_locale`,`view`,`view_id`,`redirected`);

ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sales_active_start_end_date` (`active`,`start_date`,`end_date`),
  ADD KEY `idx_sales_active` (`active`);

ALTER TABLE `sale_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `sale_offset_currency`
  ADD PRIMARY KEY (`sale_id`,`currency_id`),
  ADD KEY `fk_sale_offset_currency_currency1_idx` (`currency_id`);

ALTER TABLE `sale_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sale_product_product_idx` (`product_id`),
  ADD KEY `fk_sale_product_attribute_av_idx` (`attribute_av_id`),
  ADD KEY `idx_sale_product_sales_id_product_id` (`sale_id`,`product_id`);

ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_state_country_id_idx` (`country_id`);

ALTER TABLE `state_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tax_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `tax_rule`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tax_rule_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tax_rule_country_tax_id` (`tax_id`),
  ADD KEY `idx_tax_rule_country_tax_rule_id` (`tax_rule_id`),
  ADD KEY `idx_tax_rule_country_country_id` (`country_id`),
  ADD KEY `idx_tax_rule_country_tax_rule_id_country_id_position` (`tax_rule_id`,`country_id`,`position`),
  ADD KEY `idx_tax_rule_country_state_id` (`state_id`);

ALTER TABLE `tax_rule_i18n`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `template_i18n`
  ADD PRIMARY KEY (`id`,`locale`);


ALTER TABLE `accessory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `area_delivery_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `attribute_av`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `attribute_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `brand_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `brand_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `category_associated_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `category_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `category_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `content_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `content_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

ALTER TABLE `country_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `customer_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `export_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `feature_av`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `feature_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `feature_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `folder_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `folder_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `form_firewall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `hook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3029;

ALTER TABLE `import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `import_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `meta_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `module_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `module_hook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `module_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order_product_attribute_combination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order_product_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product_associated_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product_sale_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product_sale_elements_product_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product_sale_elements_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

ALTER TABLE `rewriting_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tax_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tax_rule_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `accessory`
  ADD CONSTRAINT `fk_accessory_accessory` FOREIGN KEY (`accessory`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_accessory_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `fk_address_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_address_customer_title_id` FOREIGN KEY (`title_id`) REFERENCES `customer_title` (`id`),
  ADD CONSTRAINT `fk_address_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`);

ALTER TABLE `api`
  ADD CONSTRAINT `fk_api_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`);

ALTER TABLE `area_delivery_module`
  ADD CONSTRAINT `fk_area_delivery_module_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `idx_area_delivery_module_delivery_module_id` FOREIGN KEY (`delivery_module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `attribute_av`
  ADD CONSTRAINT `fk_attribute_av_attribute_id` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE;

ALTER TABLE `attribute_av_i18n`
  ADD CONSTRAINT `attribute_av_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `attribute_av` (`id`) ON DELETE CASCADE;

ALTER TABLE `attribute_combination`
  ADD CONSTRAINT `fk_attribute_combination_attribute_av_id` FOREIGN KEY (`attribute_av_id`) REFERENCES `attribute_av` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attribute_combination_attribute_id` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attribute_combination_product_sale_elements_id` FOREIGN KEY (`product_sale_elements_id`) REFERENCES `product_sale_elements` (`id`) ON DELETE CASCADE;

ALTER TABLE `attribute_i18n`
  ADD CONSTRAINT `attribute_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE;

ALTER TABLE `attribute_template`
  ADD CONSTRAINT `fk_attribute_template` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attribute_template_id` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE;

ALTER TABLE `brand`
  ADD CONSTRAINT `fk_logo_image_id_brand_image` FOREIGN KEY (`logo_image_id`) REFERENCES `brand_image` (`id`) ON DELETE SET NULL;

ALTER TABLE `brand_document`
  ADD CONSTRAINT `fk_brand_document_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE;

ALTER TABLE `brand_document_i18n`
  ADD CONSTRAINT `brand_document_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `brand_document` (`id`) ON DELETE CASCADE;

ALTER TABLE `brand_i18n`
  ADD CONSTRAINT `brand_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `brand` (`id`) ON DELETE CASCADE;

ALTER TABLE `brand_image`
  ADD CONSTRAINT `fk_brand_image_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE;

ALTER TABLE `brand_image_i18n`
  ADD CONSTRAINT `brand_image_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `brand_image` (`id`) ON DELETE CASCADE;

ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_address_delivery_id` FOREIGN KEY (`address_delivery_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `fk_cart_address_invoice_id` FOREIGN KEY (`address_invoice_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `fk_cart_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

ALTER TABLE `cart_item`
  ADD CONSTRAINT `fk_cart_item_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_item_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_item_product_sale_elements_id` FOREIGN KEY (`product_sale_elements_id`) REFERENCES `product_sale_elements` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_associated_content`
  ADD CONSTRAINT `fk_category_associated_content_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_category_associated_content_content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_document`
  ADD CONSTRAINT `fk_catgory_document_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_document_i18n`
  ADD CONSTRAINT `category_document_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `category_document` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_i18n`
  ADD CONSTRAINT `category_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_image`
  ADD CONSTRAINT `fk_category_image_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_image_i18n`
  ADD CONSTRAINT `category_image_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `category_image` (`id`) ON DELETE CASCADE;

ALTER TABLE `category_version`
  ADD CONSTRAINT `category_version_FK_1` FOREIGN KEY (`id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

ALTER TABLE `config_i18n`
  ADD CONSTRAINT `config_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `config` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_document`
  ADD CONSTRAINT `fk_content_document_content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_document_i18n`
  ADD CONSTRAINT `content_document_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `content_document` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_folder`
  ADD CONSTRAINT `fk_content_folder_content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_content_folder_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `folder` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_i18n`
  ADD CONSTRAINT `content_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `content` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_image`
  ADD CONSTRAINT `fk_content_image_content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_image_i18n`
  ADD CONSTRAINT `content_image_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `content_image` (`id`) ON DELETE CASCADE;

ALTER TABLE `content_version`
  ADD CONSTRAINT `content_version_FK_1` FOREIGN KEY (`id`) REFERENCES `content` (`id`) ON DELETE CASCADE;

ALTER TABLE `country_area`
  ADD CONSTRAINT `fk_country_area_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_country_area_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

ALTER TABLE `country_i18n`
  ADD CONSTRAINT `country_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

ALTER TABLE `coupon_country`
  ADD CONSTRAINT `fk_coupon_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_coupon_country_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE;

ALTER TABLE `coupon_customer_count`
  ADD CONSTRAINT `fk_coupon_customer_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_coupon_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

ALTER TABLE `coupon_i18n`
  ADD CONSTRAINT `coupon_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE;

ALTER TABLE `coupon_module`
  ADD CONSTRAINT `fk_coupon_module_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_coupon_module_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `coupon_version`
  ADD CONSTRAINT `coupon_version_FK_1` FOREIGN KEY (`id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE;

ALTER TABLE `currency_i18n`
  ADD CONSTRAINT `currency_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `currency` (`id`) ON DELETE CASCADE;

ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_customer_title_id` FOREIGN KEY (`title_id`) REFERENCES `customer_title` (`id`),
  ADD CONSTRAINT `fk_customer_lang_id` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE SET NULL;

ALTER TABLE `customer_title_i18n`
  ADD CONSTRAINT `customer_title_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `customer_title` (`id`) ON DELETE CASCADE;

ALTER TABLE `customer_version`
  ADD CONSTRAINT `customer_version_FK_1` FOREIGN KEY (`id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

ALTER TABLE `export`
  ADD CONSTRAINT `fk_export_export_category_id` FOREIGN KEY (`export_category_id`) REFERENCES `export_category` (`id`) ON UPDATE CASCADE;

ALTER TABLE `export_category_i18n`
  ADD CONSTRAINT `export_category_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `export_category` (`id`) ON DELETE CASCADE;

ALTER TABLE `export_i18n`
  ADD CONSTRAINT `export_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `export` (`id`) ON DELETE CASCADE;

ALTER TABLE `feature_av`
  ADD CONSTRAINT `fk_feature_av_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`) ON DELETE CASCADE;

ALTER TABLE `feature_av_i18n`
  ADD CONSTRAINT `feature_av_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `feature_av` (`id`) ON DELETE CASCADE;

ALTER TABLE `feature_i18n`
  ADD CONSTRAINT `feature_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `feature` (`id`) ON DELETE CASCADE;

ALTER TABLE `feature_product`
  ADD CONSTRAINT `fk_feature_prod_feature_av_id` FOREIGN KEY (`feature_av_id`) REFERENCES `feature_av` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_feature_prod_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_feature_prod_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `feature_template`
  ADD CONSTRAINT `fk_feature_template` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_feature_template_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`) ON DELETE CASCADE;

ALTER TABLE `folder_document`
  ADD CONSTRAINT `fk_folder_document_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `folder` (`id`) ON DELETE CASCADE;

ALTER TABLE `folder_document_i18n`
  ADD CONSTRAINT `folder_document_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `folder_document` (`id`) ON DELETE CASCADE;

ALTER TABLE `folder_i18n`
  ADD CONSTRAINT `folder_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `folder` (`id`) ON DELETE CASCADE;

ALTER TABLE `folder_image`
  ADD CONSTRAINT `fk_folder_image_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `folder` (`id`) ON DELETE CASCADE;

ALTER TABLE `folder_image_i18n`
  ADD CONSTRAINT `folder_image_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `folder_image` (`id`) ON DELETE CASCADE;

ALTER TABLE `folder_version`
  ADD CONSTRAINT `folder_version_FK_1` FOREIGN KEY (`id`) REFERENCES `folder` (`id`) ON DELETE CASCADE;

ALTER TABLE `hook_i18n`
  ADD CONSTRAINT `hook_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `hook` (`id`) ON DELETE CASCADE;

ALTER TABLE `ignored_module_hook`
  ADD CONSTRAINT `fk_deleted_module_hook_hook_id` FOREIGN KEY (`hook_id`) REFERENCES `hook` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_deleted_module_hook_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `import`
  ADD CONSTRAINT `fk_import_import_category_id` FOREIGN KEY (`import_category_id`) REFERENCES `import_category` (`id`) ON UPDATE CASCADE;

ALTER TABLE `import_category_i18n`
  ADD CONSTRAINT `import_category_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `import_category` (`id`) ON DELETE CASCADE;

ALTER TABLE `import_i18n`
  ADD CONSTRAINT `import_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `import` (`id`) ON DELETE CASCADE;

ALTER TABLE `message_i18n`
  ADD CONSTRAINT `message_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `message` (`id`) ON DELETE CASCADE;

ALTER TABLE `message_version`
  ADD CONSTRAINT `message_version_FK_1` FOREIGN KEY (`id`) REFERENCES `message` (`id`) ON DELETE CASCADE;

ALTER TABLE `module_config`
  ADD CONSTRAINT `fk_module_config_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `module_config_i18n`
  ADD CONSTRAINT `module_config_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `module_config` (`id`) ON DELETE CASCADE;

ALTER TABLE `module_hook`
  ADD CONSTRAINT `fk_module_hook_hook_id` FOREIGN KEY (`hook_id`) REFERENCES `hook` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_module_hook_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `module_i18n`
  ADD CONSTRAINT `module_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `module_image`
  ADD CONSTRAINT `fk_module_image_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `module_image_i18n`
  ADD CONSTRAINT `module_image_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `module_image` (`id`) ON DELETE CASCADE;

ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `fk_order_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_order_delivery_module_id` FOREIGN KEY (`delivery_module_id`) REFERENCES `module` (`id`),
  ADD CONSTRAINT `fk_order_delivery_order_address_id` FOREIGN KEY (`delivery_order_address_id`) REFERENCES `order_address` (`id`),
  ADD CONSTRAINT `fk_order_invoice_order_address_id` FOREIGN KEY (`invoice_order_address_id`) REFERENCES `order_address` (`id`),
  ADD CONSTRAINT `fk_order_lang_id` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`),
  ADD CONSTRAINT `fk_order_payment_module_id` FOREIGN KEY (`payment_module_id`) REFERENCES `module` (`id`),
  ADD CONSTRAINT `fk_order_status_id` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`id`);

ALTER TABLE `order_address`
  ADD CONSTRAINT `fk_order_address_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `fk_order_address_customer_title_id` FOREIGN KEY (`customer_title_id`) REFERENCES `customer_title` (`id`),
  ADD CONSTRAINT `fk_order_address_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

ALTER TABLE `order_coupon`
  ADD CONSTRAINT `fk_order_coupon_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

ALTER TABLE `order_coupon_country`
  ADD CONSTRAINT `fk_order_coupon_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_order_coupon_country_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `order_coupon` (`id`);

ALTER TABLE `order_coupon_module`
  ADD CONSTRAINT `fk_coupon_module_coupon_id0` FOREIGN KEY (`coupon_id`) REFERENCES `order_coupon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_coupon_module_module_id0` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

ALTER TABLE `order_product`
  ADD CONSTRAINT `fk_order_product_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

ALTER TABLE `order_product_attribute_combination`
  ADD CONSTRAINT `fk_order_product_attribute_combination_order_product_id` FOREIGN KEY (`order_product_id`) REFERENCES `order_product` (`id`) ON DELETE CASCADE;

ALTER TABLE `order_product_tax`
  ADD CONSTRAINT `fk_ order_product_tax_order_product_id0` FOREIGN KEY (`order_product_id`) REFERENCES `order_product` (`id`) ON DELETE CASCADE;

ALTER TABLE `order_status_i18n`
  ADD CONSTRAINT `order_status_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `order_status` (`id`) ON DELETE CASCADE;

ALTER TABLE `order_version`
  ADD CONSTRAINT `order_version_FK_1` FOREIGN KEY (`id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_product_tax_rule_id` FOREIGN KEY (`tax_rule_id`) REFERENCES `tax_rule` (`id`),
  ADD CONSTRAINT `fk_product_template` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`) ON DELETE SET NULL;

ALTER TABLE `product_associated_content`
  ADD CONSTRAINT `fk_product_associated_content_content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_associated_content_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_product_has_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_has_category_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_document`
  ADD CONSTRAINT `fk_product_document_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_document_i18n`
  ADD CONSTRAINT `product_document_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `product_document` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_i18n`
  ADD CONSTRAINT `product_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_product_image_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_image_i18n`
  ADD CONSTRAINT `product_image_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `product_image` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_price`
  ADD CONSTRAINT `fk_product_price_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_price_product_sale_elements_id` FOREIGN KEY (`product_sale_elements_id`) REFERENCES `product_sale_elements` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_sale_elements`
  ADD CONSTRAINT `fk_product_sale_element_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_sale_elements_product_document`
  ADD CONSTRAINT `fk_pse_product_document_product_document_id` FOREIGN KEY (`product_document_id`) REFERENCES `product_document` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pse_product_document_product_sale_elements_id` FOREIGN KEY (`product_sale_elements_id`) REFERENCES `product_sale_elements` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_sale_elements_product_image`
  ADD CONSTRAINT `fk_pse_product_image_product_image_id` FOREIGN KEY (`product_image_id`) REFERENCES `product_image` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pse_product_image_product_sale_elements_id` FOREIGN KEY (`product_sale_elements_id`) REFERENCES `product_sale_elements` (`id`) ON DELETE CASCADE;

ALTER TABLE `product_version`
  ADD CONSTRAINT `product_version_FK_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

ALTER TABLE `profile_i18n`
  ADD CONSTRAINT `profile_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`) ON DELETE CASCADE;

ALTER TABLE `profile_module`
  ADD CONSTRAINT `fk_profile_module_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_profile_module_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `profile_resource`
  ADD CONSTRAINT `fk_profile_resource_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_profile_resource_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

ALTER TABLE `resource_i18n`
  ADD CONSTRAINT `resource_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

ALTER TABLE `rewriting_argument`
  ADD CONSTRAINT `fk_rewriting_argument_rewirting_url_id` FOREIGN KEY (`rewriting_url_id`) REFERENCES `rewriting_url` (`id`) ON DELETE CASCADE;

ALTER TABLE `rewriting_url`
  ADD CONSTRAINT `fk_rewriting_url_redirected` FOREIGN KEY (`redirected`) REFERENCES `rewriting_url` (`id`);

ALTER TABLE `sale_i18n`
  ADD CONSTRAINT `sale_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

ALTER TABLE `sale_offset_currency`
  ADD CONSTRAINT `fk_sale_offset_currency_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sale_offset_currency_sales_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

ALTER TABLE `sale_product`
  ADD CONSTRAINT `fk_sale_product_attribute_av_id` FOREIGN KEY (`attribute_av_id`) REFERENCES `attribute_av` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sale_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sale_product_sales_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

ALTER TABLE `state`
  ADD CONSTRAINT `fk_state_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

ALTER TABLE `state_i18n`
  ADD CONSTRAINT `state_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `state` (`id`) ON DELETE CASCADE;

ALTER TABLE `tax_i18n`
  ADD CONSTRAINT `tax_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `tax` (`id`) ON DELETE CASCADE;

ALTER TABLE `tax_rule_country`
  ADD CONSTRAINT `fk_tax_rule_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tax_rule_country_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tax_rule_country_tax_id` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tax_rule_country_tax_rule_id` FOREIGN KEY (`tax_rule_id`) REFERENCES `tax_rule` (`id`) ON DELETE CASCADE;

ALTER TABLE `tax_rule_i18n`
  ADD CONSTRAINT `tax_rule_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `tax_rule` (`id`) ON DELETE CASCADE;

ALTER TABLE `template_i18n`
  ADD CONSTRAINT `template_i18n_FK_1` FOREIGN KEY (`id`) REFERENCES `template` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
