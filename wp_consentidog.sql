-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-08-2019 a las 15:53:03
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `wp_consentidog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-27 20:24:12', '2019-06-27 20:24:12', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=520 ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1:8080/ConsentiDog', 'yes'),
(2, 'home', 'http://127.0.0.1:8080/ConsentiDog', 'yes'),
(3, 'blogname', 'ConsentiDog', 'yes'),
(4, 'blogdescription', 'Para tu mejor amigo el mejor lugar', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kmestizo@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=88&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:"classic-editor/classic-editor.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'theme_web_consentidog', 'yes'),
(41, 'stylesheet', 'theme_web_consentidog', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '88', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1565022256;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1565036656;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1565037685;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1565037686;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1565041176;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1561759855;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(150, 'current_theme', 'ConsentiDog -  Prueba repo', 'yes'),
(151, 'theme_mods_consentidog-web', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"footer-menu";i:0;s:11:"header-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1563295718;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(183, 'recently_activated', 'a:0:{}', 'yes'),
(224, 'theme_mods_consentidog', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"footer-menu";i:0;s:11:"header-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1564783373;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:11:"custom_logo";i:11;}', 'yes'),
(285, 'textphone', '(9999)999.99.99', 'yes'),
(295, 'faceurl', 'https://www.facebook.com/', 'yes'),
(296, 'instaurl', 'https://www.instagram.com/', 'yes'),
(309, 'facelogo', 'http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/icoface.png', 'yes'),
(310, 'instalogo', 'http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/icoinsta.png', 'yes'),
(325, 'mailtexto', 'loren@ipsum.com', 'yes'),
(326, 'phonenumber', '(9999)999.99.99', 'yes'),
(338, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.3";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1563562076;s:7:"version";s:5:"5.1.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(346, 'category_children', 'a:0:{}', 'yes'),
(487, '_site_transient_timeout_browser_3ffc573c4cb820bbe52c8608beb9737c', '1565362791', 'no'),
(488, '_site_transient_browser_3ffc573c4cb820bbe52c8608beb9737c', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"75.0.3770.142";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(498, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:64:"http://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:64:"http://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1565011823;s:15:"version_checked";s:5:"5.0.2";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.0.2";s:7:"updated";s:19:"2019-01-08 10:06:36";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.0.2/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(499, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1565017703;s:7:"checked";a:2:{s:11:"Consentidog";s:5:"0.0.1";s:21:"theme_web_consentidog";s:5:"0.0.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(500, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1565011824;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:3:"4.1";s:33:"classic-editor/classic-editor.php";s:3:"1.5";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.3";s:9:"hello.php";s:5:"1.7.1";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.4.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:9:"hello.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"classic-editor";s:8:"language";s:5:"es_ES";s:7:"version";s:3:"1.5";s:7:"updated";s:19:"2019-02-02 16:28:51";s:7:"package";s:78:"http://downloads.wordpress.org/translation/plugin/classic-editor/1.5/es_ES.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.1.3";s:7:"updated";s:19:"2019-05-18 03:22:53";s:7:"package";s:80:"http://downloads.wordpress.org/translation/plugin/contact-form-7/5.1.3/es_ES.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"hello-dolly";s:8:"language";s:5:"es_ES";s:7:"version";s:3:"1.6";s:7:"updated";s:19:"2018-03-29 09:09:34";s:7:"package";s:75:"http://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/es_ES.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:33:"classic-editor/classic-editor.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/classic-editor.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(507, 'theme_mods_theme_web_consentidog', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"footer-menu";i:0;s:11:"header-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:116;}', 'yes'),
(509, 'auto_updater.lock', '1565011823', 'no'),
(512, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1565055046', 'no'),
(513, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class="rss-widget"><p><strong>Error RSS:</strong> WP HTTP Error: No working transports found</p></div><div class="rss-widget"><p><strong>Error RSS:</strong> WP HTTP Error: No working transports found</p></div>', 'no'),
(514, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1565055048', 'no'),
(515, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:1:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:23:"Tu solución E-commerce";s:3:"url";s:65:"https://www.meetup.com/WordPress-Meetup-Caracas/events/263228227/";s:6:"meetup";s:24:"WordPress Meetup Caracas";s:10:"meetup_url";s:48:"https://www.meetup.com/WordPress-Meetup-Caracas/";s:4:"date";s:19:"2019-08-13 08:00:00";s:8:"location";a:4:{s:8:"location";s:18:"Caracas, Venezuela";s:7:"country";s:2:"ve";s:8:"latitude";d:10.4968649999999996680344338528811931610107421875;s:9:"longitude";d:-66.8441600000000022419044398702681064605712890625;}}}}', 'no'),
(517, '_site_transient_timeout_theme_roots', '1565019503', 'no'),
(518, '_site_transient_theme_roots', 'a:2:{s:11:"Consentidog";s:7:"/themes";s:21:"theme_web_consentidog";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=321 ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '1'),
(15, 6, '_menu_item_object', 'post'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(26, 10, '_wp_attached_file', '2019/07/cropped-IDENTIDADCD1.png'),
(27, 10, '_wp_attachment_context', 'custom-logo'),
(28, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:150;s:4:"file";s:32:"2019/07/cropped-IDENTIDADCD1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"cropped-IDENTIDADCD1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:32:"cropped-IDENTIDADCD1-300x113.png";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 11, '_wp_attached_file', '2019/07/logo.png'),
(32, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:152;s:4:"file";s:16:"2019/07/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 2, '_edit_lock', '1564000024:1'),
(39, 16, '_edit_last', '1'),
(40, 16, '_edit_lock', '1562017272:1'),
(43, 3, '_edit_lock', '1562018544:1'),
(44, 3, '_edit_last', '1'),
(62, 22, '_wp_trash_meta_status', 'publish'),
(63, 22, '_wp_trash_meta_time', '1563207071'),
(64, 23, '_wp_trash_meta_status', 'publish'),
(65, 23, '_wp_trash_meta_time', '1563295813'),
(66, 24, '_edit_lock', '1563295890:1'),
(67, 24, '_wp_trash_meta_status', 'publish'),
(68, 24, '_wp_trash_meta_time', '1563295904'),
(69, 25, '_wp_trash_meta_status', 'publish'),
(70, 25, '_wp_trash_meta_time', '1563383798'),
(71, 26, '_wp_trash_meta_status', 'publish'),
(72, 26, '_wp_trash_meta_time', '1563383817'),
(73, 27, '_wp_trash_meta_status', 'publish'),
(74, 27, '_wp_trash_meta_time', '1563383852'),
(75, 28, '_wp_trash_meta_status', 'publish'),
(76, 28, '_wp_trash_meta_time', '1563406947'),
(77, 29, '_wp_trash_meta_status', 'publish'),
(78, 29, '_wp_trash_meta_time', '1563463412'),
(79, 30, '_wp_trash_meta_status', 'publish'),
(80, 30, '_wp_trash_meta_time', '1563465331'),
(81, 31, '_wp_trash_meta_status', 'publish'),
(82, 31, '_wp_trash_meta_time', '1563465359'),
(83, 32, '_edit_lock', '1563465951:1'),
(84, 32, '_wp_trash_meta_status', 'publish'),
(85, 32, '_wp_trash_meta_time', '1563465960'),
(86, 33, '_wp_trash_meta_status', 'publish'),
(87, 33, '_wp_trash_meta_time', '1563466042'),
(88, 34, '_edit_lock', '1563466789:1'),
(89, 34, '_wp_trash_meta_status', 'publish'),
(90, 34, '_wp_trash_meta_time', '1563466800'),
(91, 35, '_wp_trash_meta_status', 'publish'),
(92, 35, '_wp_trash_meta_time', '1563467696'),
(93, 36, '_edit_lock', '1563547048:1'),
(94, 36, '_wp_trash_meta_status', 'publish'),
(95, 36, '_wp_trash_meta_time', '1563547073'),
(100, 39, '_wp_attached_file', '2019/07/Dog-1200x800.jpg'),
(101, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:24:"2019/07/Dog-1200x800.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Dog-1200x800-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Dog-1200x800-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Dog-1200x800-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Dog-1200x800-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 2, '_edit_last', '1'),
(103, 2, '_thumbnail_id', '39'),
(106, 42, '_form', '<label> Fecha de LLegada </label>\n[date* Entrada]\n\n<label> Fecha de Salida </label>\n[date* Salida]\n\n[submit Class:btnhome "Reservar"]'),
(107, 42, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:28:"ConsentiDog "[your-subject]"";s:6:"sender";s:32:"ConsentiDog <kmestizo@gmail.com>";s:9:"recipient";s:18:"kmestizo@gmail.com";s:4:"body";s:183:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(108, 42, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:28:"ConsentiDog "[your-subject]"";s:6:"sender";s:32:"ConsentiDog <kmestizo@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:125:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)";s:18:"additional_headers";s:28:"Reply-To: kmestizo@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(109, 42, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(110, 42, '_additional_settings', ''),
(111, 42, '_locale', 'es_ES'),
(114, 44, '_edit_last', '1'),
(115, 44, '_edit_lock', '1563565657:1'),
(116, 44, '_thumbnail_id', '39'),
(123, 46, '_edit_last', '1'),
(124, 46, '_edit_lock', '1563566374:1'),
(127, 48, '_edit_last', '1'),
(128, 48, '_edit_lock', '1563565724:1'),
(129, 48, '_thumbnail_id', '39'),
(132, 46, '_thumbnail_id', '39'),
(135, 50, '_edit_last', '1'),
(136, 50, '_edit_lock', '1564533205:1'),
(137, 50, '_thumbnail_id', '39'),
(140, 52, '_edit_last', '1'),
(141, 52, '_edit_lock', '1564533204:1'),
(142, 52, '_thumbnail_id', '39'),
(147, 55, '_edit_last', '1'),
(148, 55, '_edit_lock', '1564533203:1'),
(149, 55, '_thumbnail_id', '39'),
(152, 57, '_edit_last', '1'),
(153, 57, '_edit_lock', '1564771383:1'),
(154, 57, '_thumbnail_id', '39'),
(157, 59, '_edit_last', '1'),
(158, 59, '_edit_lock', '1564530286:1'),
(159, 59, '_thumbnail_id', '39'),
(162, 61, '_edit_last', '1'),
(163, 61, '_edit_lock', '1564530287:1'),
(164, 61, '_thumbnail_id', '39'),
(167, 63, '_edit_last', '1'),
(168, 63, '_edit_lock', '1564533071:1'),
(169, 63, '_thumbnail_id', '39'),
(170, 66, '_edit_last', '1'),
(171, 66, '_edit_lock', '1564702742:1'),
(172, 66, '_wp_page_template', 'page_templates/page_blog.php'),
(175, 63, 'titulo', NULL),
(178, 66, 'titulo', 'ConsentiNotas'),
(179, 71, '_edit_last', '1'),
(180, 71, '_edit_lock', '1563920364:1'),
(181, 72, '_edit_last', '1'),
(182, 72, '_edit_lock', '1564691394:1'),
(183, 73, '_wp_attached_file', '2019/07/perrito_lindo.jpg'),
(184, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:400;s:4:"file";s:25:"2019/07/perrito_lindo.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"perrito_lindo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"perrito_lindo-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"perrito_lindo-768x256.jpg";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"perrito_lindo-1024x341.jpg";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:10:"image/jpeg";}s:4:"full";a:4:{s:4:"file";s:26:"perrito_lindo-1200x400.jpg";s:5:"width";i:1200;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 72, '_thumbnail_id', '73'),
(186, 72, '_wp_page_template', 'page_templates/page_internas.php'),
(187, 72, 'titulo', ''),
(188, 75, '_wp_attached_file', '2019/07/perrolindo.jpg'),
(189, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:22:"2019/07/perrolindo.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"perrolindo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(190, 79, '_edit_last', '1'),
(191, 79, '_edit_lock', '1565017568:1'),
(192, 1, 'titulo', NULL),
(193, 80, '_form', '<label> \n    [text* your-name placeholder "NOMBRE"] </label>\n\n<label> \n    [email* your-email placeholder "EMAIL"] </label>\n\n<label> \n    [text your-subject placeholder "ASUNTO"] </label>\n\n<label> \n    [textarea your-message placeholder "MENSAJE"] </label>\n\n[submit "Enviar"]'),
(194, 80, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:28:"ConsentiDog "[your-subject]"";s:6:"sender";s:32:"ConsentiDog <kmestizo@gmail.com>";s:9:"recipient";s:18:"kmestizo@gmail.com";s:4:"body";s:183:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(195, 80, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:28:"ConsentiDog "[your-subject]"";s:6:"sender";s:32:"ConsentiDog <kmestizo@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:125:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)";s:18:"additional_headers";s:28:"Reply-To: kmestizo@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(196, 80, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(197, 80, '_additional_settings', ''),
(198, 80, '_locale', 'es_ES'),
(199, 80, 'titulo', NULL),
(200, 79, '_wp_page_template', 'page_templates/page_contacto.php'),
(201, 79, 'titulo', ''),
(203, 71, '_wp_trash_meta_status', 'draft'),
(204, 71, '_wp_trash_meta_time', '1563920513'),
(205, 71, '_wp_desired_post_slug', ''),
(206, 83, '_edit_last', '1'),
(207, 83, '_edit_lock', '1564435580:1'),
(208, 83, '_wp_page_template', 'page_templates/page_educa.php'),
(209, 83, 'titulo', ''),
(210, 86, '_edit_last', '1'),
(211, 86, '_edit_lock', '1563997444:1'),
(214, 86, 'titulo', NULL),
(215, 88, '_edit_last', '1'),
(216, 88, '_edit_lock', '1564000051:1'),
(217, 88, '_wp_page_template', 'default'),
(218, 88, 'titulo', ''),
(219, 2, '_wp_trash_meta_status', 'publish'),
(220, 2, '_wp_trash_meta_time', '1564000232'),
(221, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(223, 86, '_wp_trash_meta_status', 'publish'),
(224, 86, '_wp_trash_meta_time', '1564435904'),
(225, 86, '_wp_desired_post_slug', 'pagina-principal'),
(226, 91, '_edit_last', '1'),
(227, 91, '_edit_lock', '1564701157:1'),
(228, 91, '_thumbnail_id', '73'),
(229, 91, '_wp_page_template', 'page_templates/page_servicios.php'),
(230, 91, 'titulo', 'Servicios'),
(233, 59, 'titulo', NULL),
(236, 61, 'titulo', NULL),
(239, 50, 'titulo', NULL),
(242, 52, 'titulo', NULL),
(245, 55, 'titulo', NULL),
(248, 57, 'titulo', NULL),
(251, 104, '_wp_attached_file', '2019/07/Keepin-Contactanos.jpg'),
(252, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1078;s:4:"file";s:30:"2019/07/Keepin-Contactanos.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Keepin-Contactanos-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"Keepin-Contactanos-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"Keepin-Contactanos-768x414.jpg";s:5:"width";i:768;s:6:"height";i:414;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"Keepin-Contactanos-1024x552.jpg";s:5:"width";i:1024;s:6:"height";i:552;s:9:"mime-type";s:10:"image/jpeg";}s:4:"page";a:4:{s:4:"file";s:31:"Keepin-Contactanos-1200x400.jpg";s:5:"width";i:1200;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:4:"full";a:4:{s:4:"file";s:32:"Keepin-Contactanos-1200x1024.jpg";s:5:"width";i:1200;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(253, 105, '_wp_attached_file', '2019/07/Keepin-Contactanos-1.jpg'),
(254, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1078;s:4:"file";s:32:"2019/07/Keepin-Contactanos-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Keepin-Contactanos-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Keepin-Contactanos-1-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"Keepin-Contactanos-1-768x414.jpg";s:5:"width";i:768;s:6:"height";i:414;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"Keepin-Contactanos-1-1024x552.jpg";s:5:"width";i:1024;s:6:"height";i:552;s:9:"mime-type";s:10:"image/jpeg";}s:4:"page";a:4:{s:4:"file";s:33:"Keepin-Contactanos-1-1200x400.jpg";s:5:"width";i:1200;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:4:"full";a:4:{s:4:"file";s:34:"Keepin-Contactanos-1-1200x1024.jpg";s:5:"width";i:1200;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(255, 79, '_thumbnail_id', '105'),
(264, 109, '_wp_attached_file', '2019/08/Portada-blog.jpg'),
(265, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:400;s:4:"file";s:24:"2019/08/Portada-blog.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Portada-blog-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Portada-blog-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Portada-blog-768x219.jpg";s:5:"width";i:768;s:6:"height";i:219;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Portada-blog-1024x293.jpg";s:5:"width";i:1024;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";}s:4:"page";a:4:{s:4:"file";s:25:"Portada-blog-1200x400.jpg";s:5:"width";i:1200;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:4:"full";a:4:{s:4:"file";s:25:"Portada-blog-1200x400.jpg";s:5:"width";i:1200;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(266, 66, '_thumbnail_id', '109'),
(267, 42, 'titulo', NULL),
(272, 42, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:51:"Invalid mailbox syntax is used in the %name% field.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(275, 110, '_wp_attached_file', '2019/08/Obediencia.jpg'),
(276, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:900;s:4:"file";s:22:"2019/08/Obediencia.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Obediencia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Obediencia-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Obediencia-768x384.jpg";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Obediencia-1024x512.jpg";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:4:"page";a:4:{s:4:"file";s:23:"Obediencia-1200x400.jpg";s:5:"width";i:1200;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:4:"full";a:4:{s:4:"file";s:23:"Obediencia-1200x900.jpg";s:5:"width";i:1200;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(277, 111, '_menu_item_type', 'post_type'),
(278, 111, '_menu_item_menu_item_parent', '0'),
(279, 111, '_menu_item_object_id', '91'),
(280, 111, '_menu_item_object', 'page'),
(281, 111, '_menu_item_target', ''),
(282, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(283, 111, '_menu_item_xfn', ''),
(284, 111, '_menu_item_url', ''),
(286, 112, '_menu_item_type', 'post_type'),
(287, 112, '_menu_item_menu_item_parent', '0'),
(288, 112, '_menu_item_object_id', '79'),
(289, 112, '_menu_item_object', 'page'),
(290, 112, '_menu_item_target', ''),
(291, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(292, 112, '_menu_item_xfn', ''),
(293, 112, '_menu_item_url', ''),
(295, 113, '_menu_item_type', 'post_type'),
(296, 113, '_menu_item_menu_item_parent', '0'),
(297, 113, '_menu_item_object_id', '72'),
(298, 113, '_menu_item_object', 'page'),
(299, 113, '_menu_item_target', ''),
(300, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(301, 113, '_menu_item_xfn', ''),
(302, 113, '_menu_item_url', ''),
(304, 114, '_menu_item_type', 'post_type'),
(305, 114, '_menu_item_menu_item_parent', '0'),
(306, 114, '_menu_item_object_id', '66'),
(307, 114, '_menu_item_object', 'page'),
(308, 114, '_menu_item_target', ''),
(309, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(310, 114, '_menu_item_xfn', ''),
(311, 114, '_menu_item_url', ''),
(313, 115, '_wp_attached_file', '2019/07/cropped-logo.png'),
(314, 115, '_wp_attachment_context', 'custom-logo'),
(315, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:100;s:4:"file";s:24:"2019/07/cropped-logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cropped-logo-150x100.png";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"cropped-logo-400x100.png";s:5:"width";i:400;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(316, 116, '_wp_attached_file', '2019/08/LogoConsentidog.jpg'),
(317, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:53;s:4:"file";s:27:"2019/08/LogoConsentidog.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"LogoConsentidog-150x53.jpg";s:5:"width";i:150;s:6:"height";i:53;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(318, 117, '_edit_lock', '1564784682:1'),
(319, 117, '_wp_trash_meta_status', 'publish'),
(320, 117, '_wp_trash_meta_time', '1564784701');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=120 ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-27 20:24:12', '2019-06-27 20:24:12', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-06-27 20:24:12', '2019-06-27 20:24:12', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-27 20:24:12', '2019-06-27 20:24:12', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id="42" title="Contact form 1"]</p>\r\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2019-07-24 20:30:32', '2019-07-24 20:30:32', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-27 20:24:12', '2019-06-27 20:24:12', '<!-- wp:heading -->\r\n<h2>Quiénes somos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>La dirección de nuestra web es: http://127.0.0.1:8080/ConsentiDog.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Qué datos personales recogemos y por qué los recogemos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Comentarios</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Medios</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Formularios de contacto</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas "Recordarme", tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Contenido incrustado de otros sitios web</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Analítica</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Con quién compartimos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Cuánto tiempo conservamos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Qué derechos tienes sobre tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Dónde enviamos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Tu información de contacto</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Información adicional</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Cómo protegemos tus datos</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Qué procedimientos utilizamos contra las brechas de datos</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>De qué terceros recibimos datos</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Requerimientos regulatorios de revelación de información del sector</h3>\r\n<!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-07-01 21:43:55', '2019-07-01 21:43:55', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-07-01 16:14:00', '2019-07-01 16:14:00', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2019-07-01 16:14:00', '2019-07-01 16:14:00', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=6', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-07-01 16:33:28', '2019-07-01 16:33:28', 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/cropped-IDENTIDADCD1.png', 'cropped-IDENTIDADCD1.png', '', 'inherit', 'open', 'closed', '', 'cropped-identidadcd1-png', '', '', '2019-07-01 16:33:28', '2019-07-01 16:33:28', '', 0, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/cropped-IDENTIDADCD1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2019-07-01 17:11:56', '2019-07-01 17:11:56', '', 'logo', 'ConsentiDog', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-07-16 16:49:49', '2019-07-16 16:49:49', '', 0, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/logo.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2019-07-01 21:42:07', '2019-07-01 21:42:07', '<!-- wp:paragraph -->\r\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>…o algo así:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Como nuevo usuario de WordPress, deberías ir a <a href="http://127.0.0.1:8080/ConsentiDog/wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\r\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-07-01 21:42:07', '2019-07-01 21:42:07', '', 2, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/01/2-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2019-07-01 21:42:49', '2019-07-01 21:42:49', 'Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:\r\n\r\n<!-- /wp:paragraph --><!-- wp:quote -->\r\n<blockquote class="wp-block-quote">¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</blockquote>\r\n<!-- /wp:quote --><!-- wp:paragraph -->\r\n\r\n…o algo así:\r\n\r\n<!-- /wp:paragraph --><!-- wp:quote -->\r\n<blockquote class="wp-block-quote">La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</blockquote>\r\n<!-- /wp:quote --><!-- wp:paragraph -->\r\n\r\nComo nuevo usuario de WordPress, deberías ir a <a href="http://127.0.0.1:8080/ConsentiDog/wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!', 'Entrada de prueba', '', 'publish', 'open', 'open', '', 'entrada-de-prueba', '', '', '2019-07-01 21:42:49', '2019-07-01 21:42:49', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=16', 0, 'post', '', 0),
(17, 1, '2019-07-01 21:42:49', '2019-07-01 21:42:49', 'Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:\r\n\r\n<!-- /wp:paragraph --><!-- wp:quote -->\r\n<blockquote class="wp-block-quote">¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</blockquote>\r\n<!-- /wp:quote --><!-- wp:paragraph -->\r\n\r\n…o algo así:\r\n\r\n<!-- /wp:paragraph --><!-- wp:quote -->\r\n<blockquote class="wp-block-quote">La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</blockquote>\r\n<!-- /wp:quote --><!-- wp:paragraph -->\r\n\r\nComo nuevo usuario de WordPress, deberías ir a <a href="http://127.0.0.1:8080/ConsentiDog/wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!', 'Entrada de prueba', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-07-01 21:42:49', '2019-07-01 21:42:49', '', 16, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/01/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-07-01 21:43:55', '2019-07-01 21:43:55', '<!-- wp:heading -->\r\n<h2>Quiénes somos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>La dirección de nuestra web es: http://127.0.0.1:8080/ConsentiDog.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Qué datos personales recogemos y por qué los recogemos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Comentarios</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Medios</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Formularios de contacto</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas "Recordarme", tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Contenido incrustado de otros sitios web</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Analítica</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Con quién compartimos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Cuánto tiempo conservamos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Qué derechos tienes sobre tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Dónde enviamos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Tu información de contacto</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Información adicional</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Cómo protegemos tus datos</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Qué procedimientos utilizamos contra las brechas de datos</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>De qué terceros recibimos datos</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {"level":3} -->\r\n<h3>Requerimientos regulatorios de revelación de información del sector</h3>\r\n<!-- /wp:heading -->', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-07-01 21:43:55', '2019-07-01 21:43:55', '', 3, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/01/3-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-07-15 16:11:11', '2019-07-15 16:11:11', '{\n    "consentidog-web::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-15 16:11:11"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e0cb9b2-bc1d-403f-ba15-43620e2b3193', '', '', '2019-07-15 16:11:11', '2019-07-15 16:11:11', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/15/9e0cb9b2-bc1d-403f-ba15-43620e2b3193/', 0, 'customize_changeset', '', 0),
(23, 1, '2019-07-16 16:50:12', '2019-07-16 16:50:12', '{\n    "Consentidog::custom_logo": {\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-16 16:50:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '760a7518-bad7-481a-9582-f254831103b2', '', '', '2019-07-16 16:50:12', '2019-07-16 16:50:12', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/16/760a7518-bad7-481a-9582-f254831103b2/', 0, 'customize_changeset', '', 0),
(24, 1, '2019-07-16 16:51:44', '2019-07-16 16:51:44', '{\n    "Consentidog::custom_logo": {\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-16 16:51:44"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '686751c0-1c60-46b1-ba9e-93994abd0689', '', '', '2019-07-16 16:51:44', '2019-07-16 16:51:44', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2019-07-17 17:16:37', '2019-07-17 17:16:37', '{\n    "textphone": {\n        "value": "(9999)123.99.99",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-17 17:16:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '71e30b8b-1ddb-46be-a8a7-6109866d3b3e', '', '', '2019-07-17 17:16:37', '2019-07-17 17:16:37', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/17/71e30b8b-1ddb-46be-a8a7-6109866d3b3e/', 0, 'customize_changeset', '', 0),
(26, 1, '2019-07-17 17:16:57', '2019-07-17 17:16:57', '{\n    "textphone": {\n        "value": "(9999)999.99.99",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-17 17:16:57"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5eafc21d-7db8-499e-b233-2c1c7263197c', '', '', '2019-07-17 17:16:57', '2019-07-17 17:16:57', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/17/5eafc21d-7db8-499e-b233-2c1c7263197c/', 0, 'customize_changeset', '', 0),
(27, 1, '2019-07-17 17:17:32', '2019-07-17 17:17:32', '{\n    "textphone": {\n        "value": "(9999)999.99.99",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-17 17:17:32"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2115b739-5bf1-442e-a945-278cd97e1cd6', '', '', '2019-07-17 17:17:32', '2019-07-17 17:17:32', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/17/2115b739-5bf1-442e-a945-278cd97e1cd6/', 0, 'customize_changeset', '', 0),
(28, 1, '2019-07-17 23:42:27', '2019-07-17 23:42:27', '{\n    "faceurl": {\n        "value": "www.facebook.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-17 23:42:27"\n    },\n    "instaurl": {\n        "value": "www.instagram.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-17 23:42:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b84f53e2-b8b1-4e06-8c5b-80adaeaac844', '', '', '2019-07-17 23:42:27', '2019-07-17 23:42:27', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/17/b84f53e2-b8b1-4e06-8c5b-80adaeaac844/', 0, 'customize_changeset', '', 0),
(29, 1, '2019-07-18 15:23:31', '2019-07-18 15:23:31', '{\n    "facelogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/ico-facebook-30.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 15:23:31"\n    },\n    "instalogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/ico-instagram-30.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 15:23:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b533177a-9fec-447e-8673-2603aac335a5', '', '', '2019-07-18 15:23:31', '2019-07-18 15:23:31', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/18/b533177a-9fec-447e-8673-2603aac335a5/', 0, 'customize_changeset', '', 0),
(30, 1, '2019-07-18 15:55:31', '2019-07-18 15:55:31', '{\n    "faceurl": {\n        "value": "facebook.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 15:55:31"\n    },\n    "instaurl": {\n        "value": "instagram.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 15:55:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed9bee98-1d66-45a0-a3be-a82c98fdc18c', '', '', '2019-07-18 15:55:31', '2019-07-18 15:55:31', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/18/ed9bee98-1d66-45a0-a3be-a82c98fdc18c/', 0, 'customize_changeset', '', 0),
(31, 1, '2019-07-18 15:55:59', '2019-07-18 15:55:59', '{\n    "faceurl": {\n        "value": "www.facebook.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 15:55:59"\n    },\n    "instaurl": {\n        "value": "www.instagram.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 15:55:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '51c5e0c8-4af5-4086-bca6-6d525d8c4b25', '', '', '2019-07-18 15:55:59', '2019-07-18 15:55:59', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/18/51c5e0c8-4af5-4086-bca6-6d525d8c4b25/', 0, 'customize_changeset', '', 0),
(32, 1, '2019-07-18 16:05:59', '2019-07-18 16:05:59', '{\n    "faceurl": {\n        "value": "https://www.facebook.com/",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:05:59"\n    },\n    "instaurl": {\n        "value": "https://www.instagram.com/",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:05:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '43b24b4c-fc8a-4cea-a250-2963095facb4', '', '', '2019-07-18 16:05:59', '2019-07-18 16:05:59', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2019-07-18 16:07:13', '2019-07-18 16:07:13', '{\n    "facelogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/ico-facebook-30.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:07:13"\n    },\n    "instalogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/ico-instagram-30.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:07:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1459d90b-edba-4b11-90cd-7e2d0e1f6f45', '', '', '2019-07-18 16:07:13', '2019-07-18 16:07:13', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/18/1459d90b-edba-4b11-90cd-7e2d0e1f6f45/', 0, 'customize_changeset', '', 0),
(34, 1, '2019-07-18 16:19:59', '2019-07-18 16:19:59', '{\n    "facelogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/ico-facebook-30.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:19:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '163878d4-92e3-4251-b240-741ebb3972ff', '', '', '2019-07-18 16:19:59', '2019-07-18 16:19:59', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2019-07-18 16:34:55', '2019-07-18 16:34:55', '{\n    "facelogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/icoface.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:34:55"\n    },\n    "instalogo": {\n        "value": "http://127.0.0.1:8080/ConsentiDog/wp-content/themes/Consentidog/img/icoinsta.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-18 16:34:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c577b00d-4794-4da8-a506-f080bb110830', '', '', '2019-07-18 16:34:55', '2019-07-18 16:34:55', '', 0, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/18/c577b00d-4794-4da8-a506-f080bb110830/', 0, 'customize_changeset', '', 0),
(36, 1, '2019-07-19 14:37:52', '2019-07-19 14:37:52', '{\n    "mailtexto": {\n        "value": "loren@ipsum.com",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-19 14:35:06"\n    },\n    "phonenumber": {\n        "value": "(9999)999.99.99",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-07-19 14:35:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5072fc09-dcdb-48b0-8a44-a9ace1f04c18', '', '', '2019-07-19 14:37:52', '2019-07-19 14:37:52', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=36', 0, 'customize_changeset', '', 0),
(39, 1, '2019-07-19 15:54:28', '2019-07-19 15:54:28', '', 'Dog 1200x800', '', 'inherit', 'open', 'closed', '', 'dog-1200x800', '', '', '2019-07-19 15:54:28', '2019-07-19 15:54:28', '', 2, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/Dog-1200x800.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-07-19 15:54:37', '2019-07-19 15:54:37', '<!-- wp:paragraph -->\r\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>…o algo así:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Como nuevo usuario de WordPress, deberías ir a <a href="http://127.0.0.1:8080/ConsentiDog/wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\r\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-07-19 15:54:37', '2019-07-19 15:54:37', '', 2, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-07-19 18:47:55', '2019-07-19 18:47:55', '<label> Fecha de LLegada </label>\r\n[date* Entrada]\r\n\r\n<label> Fecha de Salida </label>\r\n[date* Salida]\r\n\r\n[submit Class:btnhome "Reservar"]\n1\nConsentiDog "[your-subject]"\nConsentiDog <kmestizo@gmail.com>\nkmestizo@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)\nReply-To: [your-email]\n\n\n\n\nConsentiDog "[your-subject]"\nConsentiDog <kmestizo@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)\nReply-To: kmestizo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-08-02 15:53:47', '2019-08-02 15:53:47', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?post_type=wpcf7_contact_form&#038;p=42', 0, 'wpcf7_contact_form', '', 0),
(43, 1, '2019-07-19 18:51:31', '2019-07-19 18:51:31', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id="42" title="Contact form 1"]</p>\r\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-07-19 18:51:31', '2019-07-19 18:51:31', '', 2, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-07-19 19:49:14', '2019-07-19 19:49:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Obediencia Básica 1', '', 'publish', 'open', 'open', '', 'obediencia-basica-1', '', '', '2019-07-19 19:49:54', '2019-07-19 19:49:54', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=44', 0, 'post', '', 0),
(45, 1, '2019-07-19 19:49:14', '2019-07-19 19:49:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Obediencia Básica 1', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-07-19 19:49:14', '2019-07-19 19:49:14', '', 44, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-07-19 19:50:20', '2019-07-19 19:50:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Obediencia Básica 2', '', 'publish', 'open', 'open', '', 'obediencia-basica-2', '', '', '2019-07-19 19:51:30', '2019-07-19 19:51:30', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=46', 0, 'post', '', 0),
(47, 1, '2019-07-19 19:50:20', '2019-07-19 19:50:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Obediencia Básica 2', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-07-19 19:50:20', '2019-07-19 19:50:20', '', 46, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-07-19 19:50:58', '2019-07-19 19:50:58', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Obediencia Básica 3', '', 'publish', 'open', 'open', '', 'obediencia-basica-3', '', '', '2019-07-19 19:50:58', '2019-07-19 19:50:58', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=48', 0, 'post', '', 0),
(49, 1, '2019-07-19 19:50:58', '2019-07-19 19:50:58', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Obediencia Básica 3', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-07-19 19:50:58', '2019-07-19 19:50:58', '', 48, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-07-19 20:07:04', '2019-07-19 20:07:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Transporte puerta a puerta', '', 'publish', 'open', 'open', '', 'transporte-puerta-a-puerta', '', '', '2019-07-31 00:33:33', '2019-07-31 00:33:33', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=50', 0, 'post', '', 0),
(51, 1, '2019-07-19 20:07:04', '2019-07-19 20:07:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id vulputate urna. Ut ut lacus ex. Suspendisse pharetra scelerisque est quis scelerisque. Quisque ultricies nunc eget scelerisque maximus.', 'Transporte puerta a puerta', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-07-19 20:07:04', '2019-07-19 20:07:04', '', 50, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-07-19 20:07:48', '2019-07-19 20:07:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Seguimiento y control Veterinario', '', 'publish', 'open', 'open', '', 'seguimiento-y-control-veterinario', '', '', '2019-07-31 00:33:39', '2019-07-31 00:33:39', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=52', 0, 'post', '', 0),
(53, 1, '2019-07-19 20:07:48', '2019-07-19 20:07:48', '', 'Seguimiento y control Veterinario', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-19 20:07:48', '2019-07-19 20:07:48', '', 52, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-07-19 20:08:13', '2019-07-19 20:08:13', '', 'Transporte puerta a puerta', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-07-19 20:08:13', '2019-07-19 20:08:13', '', 50, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/50-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-07-19 20:09:35', '2019-07-19 20:09:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Limpieza Dental', '', 'publish', 'open', 'open', '', 'limpieza-dental', '', '', '2019-07-31 00:33:40', '2019-07-31 00:33:40', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=55', 0, 'post', '', 0),
(56, 1, '2019-07-19 20:09:35', '2019-07-19 20:09:35', '', 'Limpieza Dental', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-07-19 20:09:35', '2019-07-19 20:09:35', '', 55, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-07-19 20:10:12', '2019-07-19 20:10:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Baño y Peluqueria', '', 'publish', 'open', 'open', '', 'bano-y-peluqueria', '', '', '2019-08-02 18:24:24', '2019-08-02 18:24:24', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=57', 0, 'post', '', 0),
(58, 1, '2019-07-19 20:10:12', '2019-07-19 20:10:12', '', 'Baño y Peluqueria', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-07-19 20:10:12', '2019-07-19 20:10:12', '', 57, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-07-19 20:16:44', '2019-07-19 20:16:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Razas Obedientes', '', 'publish', 'open', 'open', '', 'razas-obedientes', '', '', '2019-07-30 22:54:06', '2019-07-30 22:54:06', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=59', 0, 'post', '', 0),
(60, 1, '2019-07-19 20:16:44', '2019-07-19 20:16:44', '', 'Razas Obedientes', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-19 20:16:44', '2019-07-19 20:16:44', '', 59, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-07-19 20:17:32', '2019-07-19 20:17:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Nuevos Accesorios', '', 'publish', 'open', 'open', '', 'nuevos-accesorios', '', '', '2019-07-30 22:54:07', '2019-07-30 22:54:07', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=61', 0, 'post', '', 0),
(62, 1, '2019-07-19 20:17:32', '2019-07-19 20:17:32', '', 'Nuevos Accesorios', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-07-19 20:17:32', '2019-07-19 20:17:32', '', 61, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/61-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(63, 1, '2019-07-19 20:18:01', '2019-07-19 20:18:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Celebridades', '', 'publish', 'open', 'open', '', 'celebridades', '', '', '2019-07-23 16:22:55', '2019-07-23 16:22:55', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=63', 0, 'post', '', 0),
(64, 1, '2019-07-19 20:18:01', '2019-07-19 20:18:01', '', 'Celebridades', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-07-19 20:18:01', '2019-07-19 20:18:01', '', 63, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/19/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-07-23 15:45:24', '2019-07-23 15:45:24', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-08-01 23:38:33', '2019-08-01 23:38:33', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=66', 0, 'page', '', 0),
(67, 1, '2019-07-23 15:45:24', '2019-07-23 15:45:24', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-07-23 15:45:24', '2019-07-23 15:45:24', '', 66, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-07-23 16:22:13', '2019-07-23 16:22:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Celebridades', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-07-23 16:22:13', '2019-07-23 16:22:13', '', 63, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/63-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-07-23 22:21:53', '2019-07-23 22:21:53', '', 'Quiénes Somos', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-07-23 22:21:53', '2019-07-23 22:21:53', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-07-23 20:48:30', '2019-07-23 20:48:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel libero ac risus suscipit fringilla ac eget tortor. Suspendisse malesuada libero a varius blandit. Ut mollis, justo vitae sagittis posuere, lectus mauris pharetra lectus, quis feugiat justo neque in nisl. Nunc molestie purus vel magna ultrices, eget tristique lectus scelerisque. In vitae auctor erat. Aliquam erat volutpat. Mauris sed eros luctus, feugiat quam sit amet, fermentum sapien. Donec nisi purus, facilisis non tortor id, ultricies sodales nibh. Proin a sollicitudin nibh. Morbi arcu arcu, sodales et velit sed, tristique rhoncus dui. Nullam arcu libero, efficitur eu nibh vel, imperdiet faucibus justo. Praesent in laoreet dui, ut imperdiet risus. Vivamus porta scelerisque nisi sit amet condimentum.\r\n\r\nMaecenas facilisis odio tortor, a egestas neque euismod molestie. Aenean commodo id nibh eu aliquam. Maecenas molestie tortor et elementum rhoncus. Phasellus maximus ligula eget dolor venenatis tempus. Maecenas turpis nibh, tempor eget elit feugiat, blandit venenatis nisl. Vivamus convallis tincidunt nibh vitae elementum. In hac habitasse platea dictumst. Quisque a placerat ante. Nunc molestie facilisis sapien eu scelerisque. Sed commodo justo facilisis tellus condimentum, a malesuada sapien faucibus. Curabitur ornare lectus quam, at tristique nibh semper a.\r\n\r\nEtiam venenatis mi augue, rutrum sodales sem efficitur a. Etiam iaculis arcu risus, et posuere arcu sollicitudin suscipit. Phasellus in libero id ligula ornare ullamcorper eget in nisi. Sed quis tortor dui. Donec lacinia volutpat faucibus. Suspendisse eu tristique purus. Phasellus fermentum aliquam urna, vel auctor arcu ornare in. In eget massa vestibulum, pellentesque neque id, ullamcorper neque. Morbi non ex vel mauris congue egestas.', 'Quiénes Somos', '', 'publish', 'closed', 'closed', '', 'quienes-somos', '', '', '2019-07-24 21:41:37', '2019-07-24 21:41:37', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=72', 0, 'page', '', 0),
(73, 1, '2019-07-23 20:48:16', '2019-07-23 20:48:16', '', 'perrito_lindo', '', 'inherit', 'open', 'closed', '', 'perrito_lindo', '', '', '2019-07-23 20:48:16', '2019-07-23 20:48:16', '', 72, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/perrito_lindo.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-07-23 20:48:30', '2019-07-23 20:48:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel libero ac risus suscipit fringilla ac eget tortor. Suspendisse malesuada libero a varius blandit. Ut mollis, justo vitae sagittis posuere, lectus mauris pharetra lectus, quis feugiat justo neque in nisl. Nunc molestie purus vel magna ultrices, eget tristique lectus scelerisque. In vitae auctor erat. Aliquam erat volutpat. Mauris sed eros luctus, feugiat quam sit amet, fermentum sapien. Donec nisi purus, facilisis non tortor id, ultricies sodales nibh. Proin a sollicitudin nibh. Morbi arcu arcu, sodales et velit sed, tristique rhoncus dui. Nullam arcu libero, efficitur eu nibh vel, imperdiet faucibus justo. Praesent in laoreet dui, ut imperdiet risus. Vivamus porta scelerisque nisi sit amet condimentum.\r\n\r\nMaecenas facilisis odio tortor, a egestas neque euismod molestie. Aenean commodo id nibh eu aliquam. Maecenas molestie tortor et elementum rhoncus. Phasellus maximus ligula eget dolor venenatis tempus. Maecenas turpis nibh, tempor eget elit feugiat, blandit venenatis nisl. Vivamus convallis tincidunt nibh vitae elementum. In hac habitasse platea dictumst. Quisque a placerat ante. Nunc molestie facilisis sapien eu scelerisque. Sed commodo justo facilisis tellus condimentum, a malesuada sapien faucibus. Curabitur ornare lectus quam, at tristique nibh semper a.\r\n\r\nEtiam venenatis mi augue, rutrum sodales sem efficitur a. Etiam iaculis arcu risus, et posuere arcu sollicitudin suscipit. Phasellus in libero id ligula ornare ullamcorper eget in nisi. Sed quis tortor dui. Donec lacinia volutpat faucibus. Suspendisse eu tristique purus. Phasellus fermentum aliquam urna, vel auctor arcu ornare in. In eget massa vestibulum, pellentesque neque id, ullamcorper neque. Morbi non ex vel mauris congue egestas.', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-07-23 20:48:30', '2019-07-23 20:48:30', '', 72, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-07-23 21:22:54', '2019-07-23 21:22:54', '', 'perrolindo', '', 'inherit', 'open', 'closed', '', 'perrolindo', '', '', '2019-07-23 21:22:54', '2019-07-23 21:22:54', '', 72, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/perrolindo.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-07-23 21:23:16', '2019-07-23 21:23:16', '<img class="size-full wp-image-75 alignleft" src="http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/perrolindo.jpg" alt="" width="300" height="300" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel libero ac risus suscipit fringilla ac eget tortor. Suspendisse malesuada libero a varius blandit. Ut mollis, justo vitae sagittis posuere, lectus mauris pharetra lectus, quis feugiat justo neque in nisl. Nunc molestie purus vel magna ultrices, eget tristique lectus scelerisque. In vitae auctor erat. Aliquam erat volutpat. Mauris sed eros luctus, feugiat quam sit amet, fermentum sapien. Donec nisi purus, facilisis non tortor id, ultricies sodales nibh. Proin a sollicitudin nibh. Morbi arcu arcu, sodales et velit sed, tristique rhoncus dui. Nullam arcu libero, efficitur eu nibh vel, imperdiet faucibus justo. Praesent in laoreet dui, ut imperdiet risus. Vivamus porta scelerisque nisi sit amet condimentum.\n\nMaecenas facilisis odio tortor, a egestas neque euismod molestie. Aenean commodo id nibh eu aliquam. Maecenas molestie tortor et elementum rhoncus. Phasellus maximus ligula eget dolor venenatis tempus. Maecenas turpis nibh, tempor eget elit feugiat, blandit venenatis nisl. Vivamus convallis tincidunt nibh vitae elementum. In hac habitasse platea dictumst. Quisque a placerat ante. Nunc molestie facilisis sapien eu scelerisque. Sed commodo justo facilisis tellus condimentum, a malesuada sapien faucibus. Curabitur ornare lectus quam, at tristique nibh semper a.\n\nEtiam venenatis mi augue, rutrum sodales sem efficitur a. Etiam iaculis arcu risus, et posuere arcu sollicitudin suscipit. Phasellus in libero id ligula ornare ullamcorper eget in nisi. Sed quis tortor dui. Donec lacinia volutpat faucibus. Suspendisse eu tristique purus. Phasellus fermentum aliquam urna, vel auctor arcu ornare in. In eget massa vestibulum, pellentesque neque id, ullamcorper neque. Morbi non ex vel mauris congue egestas.', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2019-07-23 21:23:16', '2019-07-23 21:23:16', '', 72, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/72-autosave-v1/', 0, 'revision', '', 0),
(77, 1, '2019-07-23 21:23:48', '2019-07-23 21:23:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel libero ac risus suscipit fringilla ac eget tortor. Suspendisse malesuada libero a varius blandit. Ut mollis, justo vitae sagittis posuere, lectus mauris pharetra lectus, quis feugiat justo neque in nisl. Nunc molestie purus vel magna ultrices, eget tristique lectus scelerisque. In vitae auctor erat. Aliquam erat volutpat. Mauris sed eros luctus, feugiat quam sit amet, fermentum sapien. Donec nisi purus, facilisis non tortor id, ultricies sodales nibh. Proin a sollicitudin nibh. Morbi arcu arcu, sodales et velit sed, tristique rhoncus dui. Nullam arcu libero, efficitur eu nibh vel, imperdiet faucibus justo. Praesent in laoreet dui, ut imperdiet risus. Vivamus porta scelerisque nisi sit amet condimentum.\r\n\r\n<img class="size-full wp-image-75 alignleft" src="http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/perrolindo.jpg" alt="" width="300" height="300" />Maecenas facilisis odio tortor, a egestas neque euismod molestie. Aenean commodo id nibh eu aliquam. Maecenas molestie tortor et elementum rhoncus. Phasellus maximus ligula eget dolor venenatis tempus. Maecenas turpis nibh, tempor eget elit feugiat, blandit venenatis nisl. Vivamus convallis tincidunt nibh vitae elementum. In hac habitasse platea dictumst. Quisque a placerat ante. Nunc molestie facilisis sapien eu scelerisque. Sed commodo justo facilisis tellus condimentum, a malesuada sapien faucibus. Curabitur ornare lectus quam, at tristique nibh semper a.\r\n\r\nEtiam venenatis mi augue, rutrum sodales sem efficitur a. Etiam iaculis arcu risus, et posuere arcu sollicitudin suscipit. Phasellus in libero id ligula ornare ullamcorper eget in nisi. Sed quis tortor dui. Donec lacinia volutpat faucibus. Suspendisse eu tristique purus. Phasellus fermentum aliquam urna, vel auctor arcu ornare in. In eget massa vestibulum, pellentesque neque id, ullamcorper neque. Morbi non ex vel mauris congue egestas.', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-07-23 21:23:48', '2019-07-23 21:23:48', '', 72, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/72-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-07-23 21:24:47', '2019-07-23 21:24:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel libero ac risus suscipit fringilla ac eget tortor. Suspendisse malesuada libero a varius blandit. Ut mollis, justo vitae sagittis posuere, lectus mauris pharetra lectus, quis feugiat justo neque in nisl. Nunc molestie purus vel magna ultrices, eget tristique lectus scelerisque. In vitae auctor erat. Aliquam erat volutpat. Mauris sed eros luctus, feugiat quam sit amet, fermentum sapien. Donec nisi purus, facilisis non tortor id, ultricies sodales nibh. Proin a sollicitudin nibh. Morbi arcu arcu, sodales et velit sed, tristique rhoncus dui. Nullam arcu libero, efficitur eu nibh vel, imperdiet faucibus justo. Praesent in laoreet dui, ut imperdiet risus. Vivamus porta scelerisque nisi sit amet condimentum.\r\n\r\nMaecenas facilisis odio tortor, a egestas neque euismod molestie. Aenean commodo id nibh eu aliquam. Maecenas molestie tortor et elementum rhoncus. Phasellus maximus ligula eget dolor venenatis tempus. Maecenas turpis nibh, tempor eget elit feugiat, blandit venenatis nisl. Vivamus convallis tincidunt nibh vitae elementum. In hac habitasse platea dictumst. Quisque a placerat ante. Nunc molestie facilisis sapien eu scelerisque. Sed commodo justo facilisis tellus condimentum, a malesuada sapien faucibus. Curabitur ornare lectus quam, at tristique nibh semper a.\r\n\r\nEtiam venenatis mi augue, rutrum sodales sem efficitur a. Etiam iaculis arcu risus, et posuere arcu sollicitudin suscipit. Phasellus in libero id ligula ornare ullamcorper eget in nisi. Sed quis tortor dui. Donec lacinia volutpat faucibus. Suspendisse eu tristique purus. Phasellus fermentum aliquam urna, vel auctor arcu ornare in. In eget massa vestibulum, pellentesque neque id, ullamcorper neque. Morbi non ex vel mauris congue egestas.', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-07-23 21:24:47', '2019-07-23 21:24:47', '', 72, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/72-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-07-23 21:35:53', '2019-07-23 21:35:53', '[contact-form-7 id="80" title="Contáctanos"]\r\n<div></div>', 'Contáctanos', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2019-08-05 13:36:26', '2019-08-05 13:36:26', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=79', 0, 'page', '', 0),
(80, 1, '2019-07-23 21:35:25', '2019-07-23 21:35:25', '<label> \r\n    [text* your-name placeholder "NOMBRE"] </label>\r\n\r\n<label> \r\n    [email* your-email placeholder "EMAIL"] </label>\r\n\r\n<label> \r\n    [text your-subject placeholder "ASUNTO"] </label>\r\n\r\n<label> \r\n    [textarea your-message placeholder "MENSAJE"] </label>\r\n\r\n[submit "Enviar"]\n1\nConsentiDog "[your-subject]"\nConsentiDog <kmestizo@gmail.com>\nkmestizo@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)\nReply-To: [your-email]\n\n\n\n\nConsentiDog "[your-subject]"\nConsentiDog <kmestizo@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ConsentiDog (http://127.0.0.1:8080/ConsentiDog)\nReply-To: kmestizo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contáctanos', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2019-07-31 17:14:05', '2019-07-31 17:14:05', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?post_type=wpcf7_contact_form&#038;p=80', 0, 'wpcf7_contact_form', '', 0),
(81, 1, '2019-07-23 21:35:53', '2019-07-23 21:35:53', '[contact-form-7 id="80" title="Contáctanos"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-07-23 21:35:53', '2019-07-23 21:35:53', '', 79, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-07-23 22:21:53', '2019-07-23 22:21:53', '', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-07-23 22:21:53', '2019-07-23 22:21:53', '', 71, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/71-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-07-23 23:33:54', '2019-07-23 23:33:54', '', 'Obediencia', '', 'publish', 'closed', 'closed', '', 'servicio', '', '', '2019-07-29 21:27:22', '2019-07-29 21:27:22', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=83', 0, 'page', '', 0),
(84, 1, '2019-07-23 23:33:54', '2019-07-23 23:33:54', '', 'Servicio', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-07-23 23:33:54', '2019-07-23 23:33:54', '', 83, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/23/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-07-24 19:10:06', '2019-07-24 19:10:06', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-07-24 19:10:06', '2019-07-24 19:10:06', '', 83, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/24/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-07-24 19:46:08', '2019-07-24 19:46:08', '[contact-form-7 id="42" title="Contact form 1"]', 'Pagina principal', '', 'trash', 'open', 'open', '', 'pagina-principal__trashed', '', '', '2019-07-29 21:31:44', '2019-07-29 21:31:44', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=86', 0, 'post', '', 0),
(87, 1, '2019-07-24 19:46:08', '2019-07-24 19:46:08', '[contact-form-7 id="42" title="Contact form 1"]', 'Pagina principal', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-07-24 19:46:08', '2019-07-24 19:46:08', '', 86, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/24/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-07-24 20:29:41', '2019-07-24 20:29:41', '[contact-form-7 id="42" title="Contact form 1"]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-24 20:29:41', '2019-07-24 20:29:41', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=88', 0, 'page', '', 0),
(89, 1, '2019-07-24 20:29:41', '2019-07-24 20:29:41', '[contact-form-7 id="42" title="Contact form 1"]', 'Home', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2019-07-24 20:29:41', '2019-07-24 20:29:41', '', 88, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/24/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-07-29 21:27:22', '2019-07-29 21:27:22', '', 'Obediencia', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-07-29 21:27:22', '2019-07-29 21:27:22', '', 83, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/29/83-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-07-29 21:36:04', '2019-07-29 21:36:04', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2019-07-29 21:44:29', '2019-07-29 21:44:29', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?page_id=91', 0, 'page', '', 0),
(92, 1, '2019-07-29 21:36:04', '2019-07-29 21:36:04', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-07-29 21:36:04', '2019-07-29 21:36:04', '', 91, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/29/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-07-30 22:54:06', '2019-07-30 22:54:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Razas Obedientes', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-30 22:54:06', '2019-07-30 22:54:06', '', 59, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/30/59-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-07-30 22:54:07', '2019-07-30 22:54:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Nuevos Accesorios', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-07-30 22:54:07', '2019-07-30 22:54:07', '', 61, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/30/61-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-07-31 00:33:33', '2019-07-31 00:33:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Transporte puerta a puerta', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-07-31 00:33:33', '2019-07-31 00:33:33', '', 50, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/50-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-07-31 00:33:39', '2019-07-31 00:33:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Seguimiento y control Veterinario', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-31 00:33:39', '2019-07-31 00:33:39', '', 52, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/52-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-07-31 00:33:40', '2019-07-31 00:33:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Limpieza Dental', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-07-31 00:33:40', '2019-07-31 00:33:40', '', 55, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/55-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-07-31 00:33:44', '2019-07-31 00:33:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales massa et lorem molestie, quis dapibus lectus vehicula. Praesent a ipsum id lorem auctor iaculis. Vestibulum porttitor urna ac efficitur viverra. Fusce faucibus lacus leo, id mollis elit consectetur eu. Sed eleifend aliquet malesuada. Duis venenatis vel nunc sed venenatis. Cras finibus ante ligula, vitae rhoncus leo pulvinar lacinia. Morbi volutpat lectus metus, eu gravida justo tempus sed. Integer maximus vestibulum velit, sed consectetur dolor porttitor sit amet. Fusce sem mi, facilisis sodales risus vitae, imperdiet bibendum dui. Aliquam erat volutpat.\r\n\r\nVestibulum aliquam neque ut fringilla tincidunt. Sed risus risus, varius ac urna quis, posuere feugiat dolor. Donec quis odio ac tellus dapibus maximus vitae eu magna. Integer vel est ante. Nulla eleifend maximus eros ut vulputate. Sed odio nunc, vulputate at condimentum nec, semper vitae risus. Morbi mattis tortor ut eros viverra vestibulum.\r\n\r\nSed sapien justo, tempus nec vestibulum ut, efficitur in odio. Pellentesque a sapien velit. Integer augue nisl, vehicula id porta quis, lobortis id nunc. Fusce faucibus turpis arcu, sit amet facilisis dolor viverra ut. Morbi elit elit, gravida nec velit quis, vehicula mattis risus. Quisque interdum augue ut massa hendrerit, bibendum tempus erat sodales. Integer euismod aliquet nisl eget hendrerit.', 'Baño y Peluqueria', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-07-31 00:33:44', '2019-07-31 00:33:44', '', 57, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/57-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-07-31 12:25:11', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-31 12:25:11', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=99', 0, 'post', '', 0),
(100, 1, '2019-07-31 16:50:51', '2019-07-31 16:50:51', '[contact-form-7 id="80" title="Contáctanos"]', '', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-07-31 16:50:51', '2019-07-31 16:50:51', '', 79, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/79-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-07-31 19:41:02', '2019-07-31 19:41:02', '[contact-form-7 id="80" title="Contáctanos"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-07-31 19:41:02', '2019-07-31 19:41:02', '', 79, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/79-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-07-31 20:25:04', '2019-07-31 20:25:04', '[contact-form-7 id="80" title="Contáctanos"]', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-07-31 20:25:04', '2019-07-31 20:25:04', '', 79, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/07/31/79-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-07-31 20:29:55', '2019-07-31 20:29:55', '', 'Keepin-Contactanos', '', 'inherit', 'open', 'closed', '', 'keepin-contactanos', '', '', '2019-07-31 20:29:55', '2019-07-31 20:29:55', '', 79, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/Keepin-Contactanos.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-07-31 20:30:29', '2019-07-31 20:30:29', '', 'Keepin-Contactanos', '', 'inherit', 'open', 'closed', '', 'keepin-contactanos-2', '', '', '2019-07-31 20:30:29', '2019-07-31 20:30:29', '', 79, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/Keepin-Contactanos-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-08-01 23:38:25', '2019-08-01 23:38:25', '', 'Portada-blog', '', 'inherit', 'open', 'closed', '', 'portada-blog', '', '', '2019-08-01 23:38:25', '2019-08-01 23:38:25', '', 66, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/08/Portada-blog.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-08-02 19:34:06', '2019-08-02 19:34:06', '', 'Obediencia', '', 'inherit', 'open', 'closed', '', 'obediencia', '', '', '2019-08-02 19:34:06', '2019-08-02 19:34:06', '', 0, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/08/Obediencia.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-08-02 20:57:13', '2019-08-02 20:57:13', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2019-08-02 20:57:13', '2019-08-02 20:57:13', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=111', 2, 'nav_menu_item', '', 0),
(112, 1, '2019-08-02 20:57:13', '2019-08-02 20:57:13', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2019-08-02 20:57:13', '2019-08-02 20:57:13', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2019-08-02 20:57:12', '2019-08-02 20:57:12', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2019-08-02 20:57:12', '2019-08-02 20:57:12', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2019-08-02 20:57:13', '2019-08-02 20:57:13', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2019-08-02 20:57:13', '2019-08-02 20:57:13', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=114', 3, 'nav_menu_item', '', 0),
(115, 1, '2019-08-02 21:07:28', '2019-08-02 21:07:28', 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-08-02 21:07:28', '2019-08-02 21:07:28', '', 0, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/07/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2019-08-02 22:23:32', '2019-08-02 22:23:32', '', 'LogoConsentidog', '', 'inherit', 'open', 'closed', '', 'logoconsentidog', '', '', '2019-08-02 22:23:32', '2019-08-02 22:23:32', '', 0, 'http://127.0.0.1:8080/ConsentiDog/wp-content/uploads/2019/08/LogoConsentidog.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2019-08-02 22:25:01', '2019-08-02 22:25:01', '{\n    "theme_web_consentidog::custom_logo": {\n        "value": 116,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-08-02 22:24:39"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '546f5ccd-2d84-419b-9f60-aa0b6b96c984', '', '', '2019-08-02 22:25:01', '2019-08-02 22:25:01', '', 0, 'http://127.0.0.1:8080/ConsentiDog/?p=117', 0, 'customize_changeset', '', 0),
(118, 1, '2019-08-05 13:35:31', '2019-08-05 13:35:31', '[contact-form-7 id="80" title="Contáctanos"]\r\n\r\n&nbsp;\r\n<div>\r\n<div>[wpbsearch]</div>\r\n</div>', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-08-05 13:35:31', '2019-08-05 13:35:31', '', 79, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/08/05/79-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-08-05 13:36:26', '2019-08-05 13:36:26', '[contact-form-7 id="80" title="Contáctanos"]\r\n<div></div>', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-08-05 13:36:26', '2019-08-05 13:36:26', '', 79, 'http://127.0.0.1:8080/ConsentiDog/index.php/2019/08/05/79-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Principal', 'principal', 0),
(3, 'Footer', 'footer', 0),
(4, 'educa', 'educa', 0),
(5, 'servicios', 'servicios', 0),
(6, 'blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 3, 0),
(16, 1, 0),
(44, 4, 0),
(46, 4, 0),
(48, 4, 0),
(50, 5, 0),
(52, 5, 0),
(55, 5, 0),
(57, 5, 0),
(59, 6, 0),
(61, 6, 0),
(63, 6, 0),
(86, 1, 0),
(111, 2, 0),
(112, 2, 0),
(113, 2, 0),
(114, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'category', 'Educa a tu perro', 0, 3),
(5, 5, 'category', 'Servicios Home', 0, 4),
(6, 6, 'category', 'ConsentiNotas', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'keepin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '99'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1561998855'),
(24, 1, 'session_tokens', 'a:1:{s:64:"9a574e723efcc0b2f3c16898946bd5ed5db7ea975a27297415d0e16996e3c49c";a:4:{s:10:"expiration";i:1565184631;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36";s:5:"login";i:1565011831;}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'keepin', '$P$BmwNEvhkhV4sCIcQc0HWf90t/39.eb1', 'keepin', 'kmestizo@gmail.com', '', '2019-06-27 20:24:11', '', 0, 'keepin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
