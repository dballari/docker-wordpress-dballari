-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 10.200.11.194
-- Generation Time: Nov 28, 2022 at 02:59 PM
-- Server version: 10.5.17-MariaDB-1:10.5.17+maria~deb11-log
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `277369395wordpress20220328131057`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_commentmeta`
--

CREATE TABLE `wp_2_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_comments`
--

CREATE TABLE `wp_2_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_comments`
--

INSERT INTO `wp_2_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://redsoberana.com/', '', '2022-05-09 09:29:02', '2022-05-09 09:29:02', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_links`
--

CREATE TABLE `wp_2_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_options`
--

CREATE TABLE `wp_2_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_options`
--

INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dogmos-life.redsoberana.com', 'yes'),
(2, 'home', 'http://dogmos-life.redsoberana.com', 'yes'),
(3, 'blogname', 'Dogmos Life', 'yes'),
(4, 'blogdescription', 'Otro sitio más de RedSoberana', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@redsoberana.com', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentytwo', 'yes'),
(41, 'stylesheet', 'twentytwentytwo', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '0', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1667640541', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'WPLANG', 'es_ES', 'yes'),
(100, 'wp_2_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'post_count', '1', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_postmeta`
--

CREATE TABLE `wp_2_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_postmeta`
--

INSERT INTO `wp_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_posts`
--

CREATE TABLE `wp_2_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_posts`
--

INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-09 09:29:02', '2022-05-09 09:29:02', 'Bienvenido a <a href=\"https://redsoberana.com/\">RedSoberana</a>. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2022-05-09 09:29:02', '2022-05-09 09:29:02', '', 0, 'http://dogmos-life.redsoberana.com/?p=1', 0, 'post', '', 1),
(2, 1, '2022-05-09 09:29:02', '2022-05-09 09:29:02', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"https://dogmos-life.redsoberana.com/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2022-05-09 09:29:02', '2022-05-09 09:29:02', '', 0, 'http://dogmos-life.redsoberana.com/?page_id=2', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_termmeta`
--

CREATE TABLE `wp_2_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_terms`
--

CREATE TABLE `wp_2_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_terms`
--

INSERT INTO `wp_2_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_term_relationships`
--

CREATE TABLE `wp_2_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_term_relationships`
--

INSERT INTO `wp_2_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_term_taxonomy`
--

CREATE TABLE `wp_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_term_taxonomy`
--

INSERT INTO `wp_2_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogmeta`
--

CREATE TABLE `wp_blogmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogs`
--

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT 1,
  `archived` tinyint(2) NOT NULL DEFAULT 0,
  `mature` tinyint(2) NOT NULL DEFAULT 0,
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0,
  `lang_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_blogs`
--

INSERT INTO `wp_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'redsoberana.com', '/', '2022-04-07 14:10:05', '2022-05-04 09:11:55', 1, 0, 0, 0, 0, 0),
(2, 1, 'dogmos-life.redsoberana.com', '/', '2022-05-09 09:29:01', '2022-05-09 09:29:01', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_access`
--

CREATE TABLE `wp_matomo_access` (
  `idaccess` int(10) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `access` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_06`
--

CREATE TABLE `wp_matomo_archive_blob_2021_06` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_07`
--

CREATE TABLE `wp_matomo_archive_blob_2021_07` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_08`
--

CREATE TABLE `wp_matomo_archive_blob_2021_08` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_09`
--

CREATE TABLE `wp_matomo_archive_blob_2021_09` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_10`
--

CREATE TABLE `wp_matomo_archive_blob_2021_10` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_11`
--

CREATE TABLE `wp_matomo_archive_blob_2021_11` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2021_12`
--

CREATE TABLE `wp_matomo_archive_blob_2021_12` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2022_01`
--

CREATE TABLE `wp_matomo_archive_blob_2022_01` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_archive_blob_2022_01`
--

INSERT INTO `wp_matomo_archive_blob_2022_01` (`idarchive`, `name`, `idsite`, `date1`, `date2`, `period`, `ts_archived`, `value`) VALUES
(11, 'Actions_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c9d946b4ec3300cc7af52f500551eeb1ee91d06dff858656b60116d33258121d024eec00d3909ce5677e9030951a99b23ffedfc9cc696828a0f2d482105476341c48713b9486bb953755a800d8bc4aaca999db2b295d9de34c9f7e75772e7ad499cf6da805bd6fa5d5626d99b367930b6bab7cab9b4d082c1cbe1a5bd117e48581034281aacd8863f5eec60ed045d8ad4bd34a5d78d2a5be54fc63ea745254846f235193c1ce40c48db5d79d0de9527ed0fa3b8b0fd3567a3db694ef4c9b7bfee47f308cf29fbaa6c50b38c711e6b69605bccb1615087964768b77c34e39be1835a448db58b350bee5584e6e1b3b9c7ab004aa16c9a8e2de7f06e811de02a021c6525a3032288d1538e0336433dbd1c138fb82bd394476bf6709374fbd495b79c1c2d6773ece3e06b05217f5fc1343fc9567488b5c620ac620e8aacd8e47b8f0b81ae39d60a9aa5c5dbf63b77acd517ed843b966ce718c782412f99b6ac8dac9064be717a91be350722f4beedb86d220ff4faa66b7a46d0c05e67fd3cc8d1a0ddb8a06b349617e30c168c261a2653b8f747f904b749fb5a9547e90f972105edf5df19750edb6f8bf3f9075ce09d2d),
(11, 'Actions_actions_url', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c8d940b8e83201086efe2012c8f5a2ddea1572058d92d598506e8ba49e3dd175a51443759127408ff0cdfa0338c40f21404d48ce0d928c9d39082641d6b7897d5865424d3bc35aae13aab05416e6237e16cf807f00b100c180c545ffc0bd78d5b1b024f24338f9e5ad1732ab91d94fecaea96801c1415580dece4c861c886de84357410f696f8f9e3df317b21b731c31efbf9ef79b088f00cd7df3ee396a01c611c6ba1673beeb105a709ad88d0967830c7e7f508da801a6b8f15f2db6584663593e6e32d70a940b40d874e7b788be3045846804954905c1008183365ea705eebe1eb9a70c4ddaa9edeb5ba726384fc9cd23b6dae16a33df6d4f99d818f3f67b08d0ff212aeb1aae014b2d8830225da7cef3491abeaef1db742c9f0b7fdcd1d6bc54bbbe18e25973dc654b0aa252569a7581b48f60b671689a53802c2bc7749cb26da71b57e9e8a1e8160845a47733f285ec6e82cd74fa06f273ee087ea5aaee94377d458a6ad6f2d47c779b3f66ec8e1300c431efa0c932c77f91ec2fab034a0713aa41ec75fe4d5817e),
(11, 'Actions_actions_url_chunk_0_99', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c8d940b6e83300c86efc201208ff268b843af8060646b340815a1a352d5bbcf014c4360d290689de6b7f3d98d5d0a2a9e4ad0dc08ca68228272fe81e4a5e0689c88781a118ba0292bd904a00561a4742d1f41ae048397c34b57c37e10bb20685034587eb15f3caf600d874224736f8b41b5b2d07218bbfe3bc86b4142126764f370903380d0557155832946355c3d3f7bfc1cb3557a1f13f7cac77fcfa3b1836764ff237bab6621e3dcd5dafab1d3111b3a2d68b183f68e47437ede3ea84554577bca98dd4e1db4a12fb5f99c05900a65fb702c39c27b3b2e80a903e845255e810862ac94bec379aba75399b8c35d776d71ebbb0f698cd25f4b7ac9aeb49c1db1fbce730636fe9ac13e3e0953bac5cad009b338822229dbfddf7e221f5d7b6be4a03a8db7ed6f6e57ab26ed8edb955c8e187dc1a6973a5d345d5923c971e3ac22f56e0e4458f72e7edb383bd0ebe7a5e91941037b9dadf32046832ee38266682493f1b223681a3d503411dcfb69ca70b85bd761b8191145e33886bdac4d5749b8646508c947b88e021b8003cfeb05e62fdc058329),
(11, 'Actions_downloads', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Actions_outlink', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Actions_sitesearch', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Actions_SiteSearchCategories', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Contents_name_piece', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Contents_piece_name', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'DevicePlugins_plugin', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c7dd0410e82400c05d0bbf404c30ca27eeee01d2a0c521904198418c2ddc5053beda2c9ef4ff316659cb0084cce707bb058220ea0c0571f288fc84045d735e22917d86d5cbe0a92edd46059bfeb652ffe235bae02c77a37cc4fc3aa460abaf3c43ae154c281fab2d2855415cea0e74b8a6694d6ebce417512031a3c873ef0db0fba94e952028a12263f04b9d5a34e1d75ca82667994dd1c5b5f8afaeaf5035ed2ac6f),
(11, 'DevicesDetection_brands', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b814a941c0394ac33ad8c80d810888da1b489750a9836b506e9ccb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b7d506564a308b8da0161be1b0d888248b6b01e545454b),
(11, 'DevicesDetection_browserEngines', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc16ca79cccbc6c25eb4c2b23203646c226d629568640dad41aa439d3ca0c2a6e0ee51b1a4235991880456a8142403b0cacaa6b410afdac6b6b01b5dd2555),
(11, 'DevicesDetection_browsers', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac949c3d94ac33ad8c80d818099b58a758190269536b90ce4c2b33a8b839946f6808d564620016a9050a012d30b0aaae0529f4b3aead0500143f23ed),
(11, 'DevicesDetection_browserVersions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8badccad949c3dac2d2df40c94ac33ad8c80d810888da1b489750a9836b50669cfb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c80a0fd9608fb8da0f61be1b0df8824fb6b01d50d47f1),
(11, 'DevicesDetection_models', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0c2dac941c03acd353f3528b32931552528bb34bf20b94ac33ad8c80d810888da1b489750a9836b5061995696506153787f20d0d610a0dc022b5205ea2958155752dc8103f98001eb7985929e1728911d42546385c6244924b6a01f425521d),
(11, 'DevicesDetection_os', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81324abe8ece4ad6995646406c08c4c650dac43a054c9b5a83b4665a9941c5cda17c4343984203b0482d8897686560555d0b32c40f2680d76e1f4f3f98dd4650bb8d70d86d4492ddb500ff8f4672),
(11, 'DevicesDetection_osVersions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81024abe8eced686067a86c64ad6995646406c08c4c650dac43a054c9b5a830cc8b432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b70b4cac947c3cfdac61961b412d37c261b9114996d70200906747e2),
(11, 'DevicesDetection_types', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac4182995646406c8c844dac53ac0c81b42954de0c2a6e0ee51b1a4235991880456a814240b30dacaa6b410afdac6b6b017c2922d8),
(11, 'Events_action_category', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Events_action_name', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Events_category_action', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Events_category_name', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Events_name_action', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Events_name_category', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goals_ItemsCategory', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goals_ItemsCategory_Cart', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goals_ItemsName', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goals_ItemsName_Cart', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goals_ItemsSku', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goals_ItemsSku_Cart', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goal_-1_days_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goal_-1_visits_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goal_0_days_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goal_0_visits_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goal_days_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Goal_visits_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Referrers_keywordByCampaign', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Referrers_keywordBySearchEngine', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Referrers_searchEngineByKeyword', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Referrers_type', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac33ad0c81d808888d91b089750a58dcd41aa429d3ca0c2a6e0ee51bc234991880456a41c6245a195855d78214fa59d7d602007c8022d9),
(11, 'Referrers_urlBySocialNetwork', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Referrers_urlByWebsite', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'Resolution_configuration', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0ccdac947c1d9dad9d3dac0d2d8d0c2a0c0d2c0c94ac33ad8c80d810888da1b489750a9836b5061994696506153787f20d0d610a0dc022b5205ea2958155752dc8103f98007e97f878fa61758911d42546385c6244924b6a0162094cf6),
(11, 'Resolution_resolution', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4d8d4b0a80300c44efd21324fda89ddcc13b547451e8ae1ba1f4eea652c1c590cc23334960b40c9204f72d11ad22c094745cc5485560385aba993632926155ee272f275867905190b14cbe4ecf3c439e5ed215e91f42ebe37097de1ff41f2576),
(11, 'UserCountry_city', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4d8d510a03210c44efe2018a59755b2757287b07cb4a11a4fdb07fbbdebd49b160202499476612084781e504f75f228e860053d32357c30d6461ee35973d9d676e860b166937b5e71d2433b05a14ac43bf8e9b683c79fb53ba4892b46892d3a48f11074f97d5ba3895847bc1efd753b9151c661c6feae478e3debf9d733772),
(11, 'UserCountry_country', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4d8dcb09c0300c4377f104713e2d9577e80e29cd21905b8ec1bbd72929f4202c3d2c94c118154e32c2670e8c8e046af92a8da4c3834a27a9f0a6f053941b6c37c96c566c8bef2b33af52742f514336e030743e9ea2fa002ed9243a),
(11, 'UserCountry_region', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4d8cc10d80300c0377c904096d41383bb043113c2af5d76795dd4951917858b14fb13304bd8035237c66476f48a09acfbb92363088b46071859fa25e10bf4947af609d7c9b59649622bfc41cf93ca3db783cd4ec01cc712360),
(11, 'UserId_users', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(11, 'UserLanguage_language', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b814a94528b95ac33ad8c80d810888da1b489750a9836b506e9ccb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b7d540766a9e6e29dc7623a8ed46386c3722c9f65a00b14a477f),
(11, 'VisitorInterest_daysSinceLastVisit', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c85d33d0b03210c06e0ff22740c18e3c735b775e97663d762c141383ad44287e3fe7ba5e0764d06e145f041c29bcc1878ab6ce7cc3482e3ad7160b3e64759cddc18139b6b7996575eef4bf9dc6aabef66e6caee77f6cad89f59de7aa2791917ff416263c10e010f05a7090838047b2890263870b2e035818064216882072f0b5113020459489a1021cac2a40909922c9c45c1b399009541a05cd29e31005905918bd93321440d91bb19fb447b399da6c8fdec3b870e81a23616b9a4fd3314c3c95d2465ff02de1824af),
(11, 'VisitorInterest_pageGap', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c85d1b10ac4300800d07f097414a2c6b667b67ec0fd430e3a04ba752cf9f7f3866c870e829af808a629667dbae6da946742fadc2a9aaef639af546f3b4908986a57b2e03abaa2ddb3c9f12bdfb3e10a043485fc57a04860605fe04828507ca1448280f88244c20a9b2facae5034ed80d9273697b01ced3f8355eca12140c13b5e9141b8d0e119e30bd90cbe48),
(11, 'VisitorInterest_timeGap', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c85d0310ec3300805d0bb58ea8804d8719cefad07e81d5ca983a56c1923dfbd7448a7d60c96308227a041186707d78678058af3c082b0b7e76b0ff5404260120eb543edc53a3ac40aad757cbe8f2bf19fb05884e2d7e09f867a4614ca8e11a74646c8b68b3a489a22ab2da34c9a1c65f114132879b3644f31c1aee228aba798409ba794a952104c20291eb3b9e72d2c37bdcf94f106a1f1c361),
(11, 'VisitorInterest_visitsByVisitCount', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c85d23d0ac3300c05e0bb183a0a24f92f91b71ea07748a143205bc690bb5714bc95a7c1f0b0cd877fde6652ecda8dc7667906b5ebb46ae9d8de9f238dd3579290a4b19bfec6bd9bf83eb6cb531eaf390105259d82fc15341232e529f05f214742a182851209952a166a24346a586891d0a963a147c2420b161628144b2b49f0942b243c4b250d1e53702f3d6ba3ca0182abd9fc53bddd1c29b89eddefc3421a32b8a37e186579e81329f717fe020b65),
(11, 'VisitTime_localTime', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789cb5d64b0a83401084e1bbe4045d3d8e8ff60eb983922c0477598a778fca08219072935ae83c503fdcfccc105ec53285f543a473d2c5f28a1cb779189ff3ad9f0269bbf93ed9ae54c6aa7f1c63eef7b7a6a8cb7e53d6c0f9a01d3bebbe1ac26259f78fdccf8ddfac15d58a6a873a1ee3a76adfaa71d5f9cf8ad4445517a915559348cd54ad446a4dd52c521baad622b5a56a23523baab62215bc4e9d8ae575c299a7bf47f1a24f50b9bc5050250abc5150e502bc52500503bc53502503bc54504503bc55906583d70aaa6e38cf959bcae5bd72d5c1c679af5cd50dbf3851690e37eb1bb5291ba2),
(11, 'VisitTime_serverTime', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789cb5d64b0a83301485e1bdb8829c6b7ce4660fdd83d20e04671d8a7baf8608a5d0e3e80c340f8c3f4e3e9cdca26f8b873c797b4d926f6fefbc59a7f9b5367971e0b8d93939aeb68e313fcbd8e5f3d4e27ddd1feaba1c2a0f86b2b39fabc9836ffbf992c7b5f13f1b6a35d46a28d5b98cdfd5f05b0dbc6afc6345d596564d548db4da8aaa1dad4651b5a7d54e541d68b51755475a1d44d544ab631629c1754aaa2cd7092a9e70e3938a0a70a1a0c202dc28a8b800570a2a30c09d828a0c70a9a04203dc2a8caa2ed70a49d435ce95a9dc30ee95a97e6c8c7b652aafece68f4ae3d5fe01b6b01ba2),
(12, 'Goals_ItemsCategory', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goals_ItemsCategory_Cart', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goals_ItemsName', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goals_ItemsName_Cart', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goals_ItemsSku', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goals_ItemsSku_Cart', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goal_-1_days_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goal_-1_visits_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goal_0_days_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goal_0_visits_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goal_days_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe),
(12, 'Goal_visits_until_conv', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 0x789c4bb432b0aaae0500064f01fe);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2022_02`
--

CREATE TABLE `wp_matomo_archive_blob_2022_02` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2022_03`
--

CREATE TABLE `wp_matomo_archive_blob_2022_03` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_archive_blob_2022_03`
--

INSERT INTO `wp_matomo_archive_blob_2022_03` (`idarchive`, `name`, `idsite`, `date1`, `date2`, `period`, `ts_archived`, `value`) VALUES
(4, 'Actions_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c9d94d16e832014865fc5f80006446b8befd0ed6e978656d692291860ebb2a6c9de616fb827d961568693ee622646e1fcfce78b9e7318c5f42c28aa1925d34b81e8d9d092a61ddbf12eade11d1689e6ad513bae9964d95ef5c9e7fb477267b54a8cb042419875e28db52ad92b993c28ddde6b6e4c5a0b9a5f6f3cdd7e83d42ea5a00441164c53e4e404878bbcdeba078107ecae686a9efbc68a9e3792db93d24f0e10b65186ca35728b1c68e5ae390a6b9a93b0c7851abcf3f4ead60b79c30d2e2f62af7fa7c465c065b87ee1faaac159b92e46ac2286f523f654654035f3425955629fcf43fdd2ac09193555c064e1b799c74085d066a45ac5a842b9e7aa02ae885fe1b37ab288aa1cb39280ad557d3368b5876a11f2e0bf1b26a396e431c2e5a189d3797bcea837cac8067b0e4f7b435b15459c199a60e838d4be5c14cd6de6f9a1b1ca23cca16c1b03fd2d987586924da758bbc08a7746a09e78669de1e3531e0f1244a099abd100bbb6c51bff47a0d551b808bb3bcf83082e4283d2472e6e6a3037a8c6c21fd8014a4bd88e3703b3c7ef0105bdf5dff904f66eb85c2e5faa359ae1),
(4, 'Actions_actions_url', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c8d94018e83201045efe2012c8854c53bf40a042bbb25abd0005d37697af7055b142d9b2c8971ccfcf93c88338c40721704b48ca025a8c8dd104cb281757cc85a436a9269de1bd5719db58214af072e016a7da92008840086a0684ffe85dace7d1b028f2433b7915a31722ab99d94fecada9e801ce01a6c1672f2c261c88e5e84357412f6b2abf3db3f3d4721df3d438efdfc773f88233cc3f5b73f714f608eeb32d642cf56a6d842d10b0d4768ab1fc82b0c433ad0c5e91a154dbc8e5e5c456c5633693e821c80bad9aef9f28e29c0b5f2855845887bdb727b45f3b9e78200bd2fc089820245e0bd1ae955ab333746c8cfe7e542849d0c1529dcbdfe09ed2d17e8774b90a306263916f0545155a2ed2da6e0cf6abc0edc0a25c33ff63778ac15b3f60d3c969c52907bc1a68394a483627d2049b7cb22126b4b04842577da374b94711dde84be0721081d5e2c5300cfc1c3456e8a403f44bce1871a7aaee94d0fd458a6ad1f28a5e3bc587b35e47098a6290fd3854996bbf31ec2f7611d3bced64f19d83e1ebfc5fd8006),
(4, 'Actions_actions_url_chunk_0_99', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c7d940b8e83201445f7c202948fd416f7d02d185a9929198546e8d8a4e9de078a3238d23121fc2ef79d20ef7186d84332d4188630c20cf0b0001bcec832a8207b184619e8f949f4c069770c945275e20e1ac9f0dcd0d2e20269bc8164047a7f06a09713944e7073f41d719d5b75bee636b4560ea255c24e7afc9ac3c102d23df413ec40d4a9bd486bda49dacb46edbc3198dd06a9deb8b92f8af8fdff9088265c468cdf629c35a8a0fb2a605539ac5f71a4a209d5ca0b163545315e84faa3d913123475c26447aecc47a282f010a87639aa541eb9ea842be357c5a8912ca3a2212a49d83a3db4d7519f8531527dc67b43246809ce116e0f2d9cde3b7266bd61410e287244da37dabaaaf2cc673d5c7b61a5569b47f39e797d28bcf20c732a3be640ff0a5699a155db6bde6db0f29991a8179e5566c4fd254e0449765c32d7c100f9b44587f8475caac374926637c6c90eaa52031a779ebe6abcca8ebb58066ee3abc210f7d02ed65e0d2bcb699a8a5174469f847b71bc7097532ef3f265e0cbc7f3e9863f8f6d80d9),
(4, 'Actions_downloads', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Actions_outlink', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Actions_sitesearch', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Actions_SiteSearchCategories', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'DevicePlugins_plugin', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c85d0410e82301005d0bbcc094a8ba8bf77f00e158a8c14418a1043b8bbdd90b8d076f7f333ff2dc6e0849521b481da83c4ea71003973b58eb447012afbbe654b9a2143918124e98d918573813524a52f7bf11f0ab976c6375f8ef8edc8a89383ee663669464519051aaa3aade451e50c7abeb86c27ee6cda3a44ad4c80466bdce0ccdb8e69ad886b61e8d9cd76747c6ba634778c7312b4f0a3ea17dfd98a93efdf3e0e03b236),
(4, 'DevicesDetection_brands', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0cac9494ac33ad0ca1d8088a8d61b4a5354863a69589750a588129946f0655600ee6d7827427020dabae05e9f5b3aead0500aa332333),
(4, 'DevicesDetection_browserEngines', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc16ca79cccbc6c25eb4c2b432836826263186d690dd29d6965629d0256600ae59b41159883f9b520dd89560656d5b520bd7ed6b5b50091aa2528),
(4, 'DevicesDetection_browsers', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac949c3d94ac33ad0ca1d8088a8d61b4a535486ba69589750a588129946f0655600ee6d78274275a195855d782f4fa59d7d60200f16523c0),
(4, 'DevicesDetection_browserVersions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c358b310e80201004ff720f302022b9bdd2c6ca3f9cd182848e92f07703398bcdee243b0a8f96e14411fec168151154f47e0b4945021da7302f8e24c35b564bf89b65f8199b3cf3108d773ba4c97dd80a87d6877b49ef1f8c7f24d0),
(4, 'DevicesDetection_models', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c358c510a80201883af129e40330df7dfa13b584a485291bd89770fc51ec6f6c1360b811cc0c942fec1202728b068571f1925080d46bb3ffd13b6c1f974bcd7cd2840748d5df27743f5296022d70aaab3ee85b971a96b0b8e5cea76a1523ecb79299c),
(4, 'DevicesDetection_os', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81324a3e9e7e4ad6995686506c04c5c630dad21aa437d3cac43a05acc014ca37832a3007f36b41ba13ad0cacaa6b417afdac6b6b011bd62419),
(4, 'DevicesDetection_osVersions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c358bc109c02010047bb90a4cd404f72a08047bb8903c047f3ee57a0fcaf958760776041b7a8163815f23a137445095e7abc40d01745f99890b36cb6ef1ab130fb920f03b0fd1f8b0c33959872d70e83adcccaa3f3ca42455),
(4, 'DevicesDetection_types', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac4182995686506c04c5c630da12aac0c43a05acc014ca37832a3007f36b41ba13ad0cacaa6b417afdac6b6b015a7322ab),
(4, 'Goals_ItemsCategory', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goals_ItemsCategory_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goals_ItemsName', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goals_ItemsName_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goals_ItemsSku', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goals_ItemsSku_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goal_days_until_conv', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Goal_visits_until_conv', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Referrers_keywordByCampaign', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Referrers_keywordBySearchEngine', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Referrers_searchEngineByKeyword', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Referrers_type', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac33ad0c91b011141bc3684b6b90ae4c2b13eb14b0025328df0caac01cccaf05e94eb432b0aaae05e9f5b3aead05005ac922ac),
(4, 'Referrers_urlBySocialNetwork', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Referrers_urlByWebsite', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'Resolution_configuration', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c358c310a80301443efd213fc6fb5dafcd14541bcc3171d0addba08a57797963a84e441120523079028ec1f3c72c20413f57aa291047630c77ecaba09fb815ea6858c0470d7d0657ff7529f0246b95b61eaec7a616e5cea5a41c8a56e4f29e503f9f8275b),
(4, 'Resolution_resolution', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c354c490e802010fbcbbc600051e9fcc13f8cd10309372e2684bf2b643c345dd256e1d0325814e11709ad22828a9e7721a95f402e797e1cef4c92e10cde107e4e321e3216b966219a5fadb04ddfc75ac1687d6c0fe9fd05cfcb2549),
(4, 'UserCountry_city', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4d4d410ac3300cfb8b1f309226e916f90ba37ff0681881b01db25b9bbf2f2e29d4206c215912586c198605ee3c22b68a002af24a85b8c21ad0b3a4bccabea74a9c6107a60177eec89a91e1793d0c61f07918ee076ffa2d98b4c869d18fbadfdbdb6c5cbc4ceff65dfe7edeaa9b2e87ab1c1f9ae478e1d6fe6ba93745),
(4, 'UserCountry_country', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c358bcb0dc0200c4377c9047c4a2b9c1dba432a382071e388b27b050a07cb7e929fc063363816c43332e6400275f96a271e08a03a881bbc2558e2e9cc4b6db8b8ec4332beedf06cd6650b1ca62ef765d51f0bc1240d),
(4, 'UserCountry_region', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0cac9494ac33ad0ca1d8088a8d61b4a5354863a69589750a588129946f0655600ee6d7827427020dabae05e9f5b3aead0500aa332333),
(4, 'UserId_users', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b0aaae0500064f01fe),
(4, 'UserLanguage_language', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc1ecd43cddd26225eb4c2b432836826263186d690dd29d6965629d0256600ae59b41159883f9b520dd89560656d5b520bd7ed6b5b5008f132520),
(4, 'VisitorInterest_daysSinceLastVisit', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c8dd33d0b03210c06e0ff22740c18e3c7356e5dbaddd8b55870108e0eb5d0e1b8ff5e3b1c74688ddb8b920709af89d1f15a58c7c4b407c36b65c76a49b7bca8581903ab73bee7475aae737e5d4a2dcfaa6261f3b964852a6e85b18d6a5e5ba238ef07ff5162a541cb8a911404fc52f46f8524c58091152b2904242b4e522c5859f192e2c0c94a90140f5e562649091064e5d8552cab09706031d82f73cbe880f400d42f70cb84e047a07e877ddb722bb11991fa3d6eff140d02f99135f5cbdc1e45de1dcc4992b637f9ab2f85),
(4, 'VisitorInterest_pageGap', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c8dd1310ac3300c05d0bb083a0a2cd94e5269cb017a07173a18b2650cb97bb5043a14ff6cdf92fc3056334976744bde2c5f41edd8ad1a6dedfdd9c8f7e890b09077d3388991929fdd2466e376a4ecafab305494f54749ff15454ae68c958c94c2052b0529952b562a52269eb1320d9562b4b024cccc4326b2c4ae6f7ccd029dca7ae33d4fe4a83c7445cef905f919c581),
(4, 'VisitorInterest_timeGap', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c8dd0310ac3300c05d0bb083a0a24d9719cef2d07e81d52e810c89631e4eed512e8d0c6dabe8cf4b0b44005c70a690bd2150cc78e01b42daff7466d470609ab505b615e2ac8a89d2bd49b7ddc536acfebe13fe35995d3b723bf1deb3949b9049c74eb1450f1bd2c00e55b68f4c54cd872401a7a922b9c237f2a3dc915bf52401a7b922b3c45a47a2b55902bac35424ddd9357d187cd3de9fc00850dca9a),
(4, 'VisitorInterest_visitsByVisitCount', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789c8dd33b0ac3300c06e0bb183a0a24f995c85b0fd03bb8d0c1902da3c9ddab25d0a148de7e3ff8b065b90b259943b07589776099a76409477f7f8ed04e5d090414da10d611e928b46b08e95e94a929b6d73d612a0cec2bec2911e28f82ff95e8290992af244fc9907d257b4a81e22bc5532a545fa99eb2c1e62b9ba924093bd042797793d14c1978a1c064f7af662e907101b25bb8e883eb4fc015c96ee3aa7743025ea2ec5ed64331d2839f9e747d015dcc1582),
(4, 'VisitTime_localTime', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789cb5963b0ec4200c44ef9213d8069260eeb07720da2d22a5db32cadd5744d0a498ada6e06384f544314f54b7e8e7ee52aa87b1c97e7e3df974d4ed734c65779536f5617d0d63cda5b5ed1ecbfb3e48bd9efb85e5aeaf5654173fafd6fb1a0780aa1caa41ea78aa74a874a83ca1f2800a8406fc540e3442a871a0094203073a4368e44017084d1ce80aa133079a2174e140154b692551b19432898aa5a4a4acea1f2d91d2aa584c4acaab62352929b18ae5a4a4cc2ad693b2528b05a5acd862452929b7861d65a4df84614919e93f61d85246b294614b19c552d70fe61b17ef),
(4, 'VisitTime_serverTime', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 0x789cb5d4410e83201484e1bbf404cc03541e77e81d68da8589bb2e8d776f35b831e974350b8210c9b77a7f734bbece1e6af3787e145fdf9efdb6b4c76bb9d5d9a7ef425fd6f778eea5eeaf664ff5795ce47e1efa0fe371def643f3e0ebb6bfbd9f17bfd1a2418da2a1bf0f1d0d1d0d57345cd040d1485168d04451d3a099a251830e144d1a74a468d6a01345070d5a283a6a50f0244134a9e051826856c1b304d1b4e24f9844f30a9e268826163c4e10cd2c789e209a5af0404135b73c5198442c8f148a86355e291355ca78a54c5429e3953251a58c57ca2495da3efd1117ef),
(18, 'Goals_ItemsCategory', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goals_ItemsCategory_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goals_ItemsName', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goals_ItemsName_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goals_ItemsSku', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goals_ItemsSku_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goal_days_until_conv', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(18, 'Goal_visits_until_conv', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Actions_actions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c9d94614e83301480af42388029143657ee30fde74fd28dba35424bdaea8ccb12efe00d3d89af20f5e1c02d9210fadaafaf5fc27be52c6147c948c1191d06196147cb7216d77c23eab8803104911195d51b61b8e2375bdd449fef1fd19d333ab2d2490dcbbc966fbcd2d156abe8419beade086be342b214de04bf618216fe48c92881531216138fd3040769b1f61f0a1f985db0d83e37a5938d289570076d9ebc204c931b028f0f52b0559b722f9d2d0fd2edcf68c89dc4dfd91aa9feced641fcf50294232f2bcc8b30815964ab5e2b9bd2fa8183558eac667275cc2035c72c919383df661f114548d65b2da6ac301ebc96c86b365f470d66f3a752e456e9a66c8dde42b548b50b2c4d6f3b96a65386e79b064f9f3b785ec8ddb183ed15ecc8199aa0ad05d4be3aab8779e7f1a6beca279c31b69e12fd0d8c3a43abb2d6bcbab233103df88c3a23ac0fe70411b402cdbc0c3f0182150a528203dcdd698af76438c84370f29705f717555ff82ddf416949578bb2e56edf5d50d05bffbd9f20bdbf5c4ea72f42dd9ac4),
(21, 'Actions_actions_url', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c95948d6e832010c7dfc507a808da8fe31dfa0a042b5dc9141aa07349d3771f68b1d4b9ad33418fdcfdef7e67383814709580280732191bb85aa8206b792dda8c5ad842664463752d4c462560bf8ab02683d020954050348a6860ba0f1f426bbfb750ac21b3978e39d909a684ebb579cf6833f8b0afa96a7692ceb25ebad32c28d41a1374522d26187cfc73d9572585ad301fa117ef5aadcb1d4a1f1c48ca2592a8ba835409c85f0987e048f667f0264175862b7b8ce10895e8f9092878bd84fb50de813709f02b690741847e898324e08deed8d9e883b056aab75146f0f69b88e025f8b97a6c2114985a78b5c0208a6dfc47f4d4ca4177e75638a9553c513f83a7b1723cda73f03464bf04390f781a1cad58ab79f3fbe04c41f2311c1161f2ede7639378fc3fdfdd271ca368c4c1c6d3f05783710b2f1eae9331e151b78d30ec625a661d372edc23a5e73c3977b690e77ddfafe2a5c2155ff97ef3b8cf1fb78d4f4bc6fcb72f0c5b7cbf),
(21, 'Actions_actions_url_chunk_0_99', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c8d94019282201486efc20112416bc33b74058792dd98556884b299a6bb2f60b0cf4db79a71f4e1c7cf37c683b39cdd24cb2bc372921386f838802bce687c2830bb195632d4f2bd689163d70c655235e28a2ac948e503c0950668e50324a3d8e733843d4e7358906ae76fd4dddca8cb35e7aeb6b213b51276d0fdf76339bcc2eee70be244d4be3e4a6bea41dae313edb273f448eba4fa3f2d40fcfa022a819711fd45f4895917db51ab98d3fa85935509ac16b20213a596980d70b23d57e613501817a3d57ace0ae2c96b03bc16f30215cd9657a5c0add15d7deaf5411823d5576229f9082c257386cf93a2a7cf4e9e2fb2031b6ddf6027ce07dd9d5a61a5564ffb61d9793a69dce533ce10dbcd89fe05269da155dd6adebcd919808e3e93ce48efe33a4904bc71cdbc497f822bb6a0201816b0bb0981730a5894a9b8fbc3221c3beec33274eec30943dd463b5a7b322ccb866158f5a2317a2fdc8ee32bf771b2586721c01f1ff7bb7bfc012b2480bc),
(21, 'Actions_downloads', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Actions_outlink', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Actions_sitesearch', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Actions_SiteSearchCategories', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'DevicePlugins_plugin', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c85d0410e82301005d0bbcc094a8ba8bf77f00e158a8c14418a1043b8bbdd90b8d076f7f333ff2dc6e0849521b481da83c4ea71003973b58eb447012afbbe654b9a2143918132d21b230be7026b484a5ff6e23f1472ed8c6fbe1cf1db91512707ddcd6cd28c8a320a3454755ac9a3ca19f47c71d94edcd9b475885a99008dd6b8c199b71dd35a11d7c2d0b39bede8f8d64c69ee18e72468e147d52fbeb31527dfbf7d000bdfb235),
(21, 'DevicesDetection_brands', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac941c0394ac33ad0ca1d8084a1bc3684b6b90d64c2b13eb14b08029946f0655600ee6d7823889560656d5b520bd7ed6b5b500f2cc23c3),
(21, 'DevicesDetection_browserEngines', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc16ca79cccbc6c25eb4c2b43283682d2c630dad21aa43bd3cac43a052c600ae59b41159883f9b5204ea2958155752d48af9f756d2d0091092525),
(21, 'DevicesDetection_browsers', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac949c3d94ac33ad0ca1d8084a1bc3684b6b90d64c2b13eb14b08029946f0655600ee6d7823889560656d5b520bd7ed6b5b500f0c423bd),
(21, 'DevicesDetection_browserVersions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c358b310e80201443efc2010c8888f48f2e4edee11b1d48d818c9bfbb817c86a67d4dcb70681996187e86845611600a3f5f31541161ce8bd2b15843194eb5aafbe989fa3f63a377144179d7411c2c1d18164dfaf726911f8b8524cc),
(21, 'DevicesDetection_models', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0c2dac941c03acd353f3528b32931552528bb34bf20b94ac33ad0ca1d8084a1bc3684b6b9059995626d62960015328df0caac01cccaf057112ad0cacaa6b417afdac6b6b011dbf2a2c),
(21, 'DevicesDetection_os', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81324abe8ece4ad6995686506c04a58d61b4a535486fa69589750a58c014ca37832a3007f36b419c442b03abea5a905e3febda5a0015112404),
(21, 'DevicesDetection_osVersions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81024abe8eced686067a86c64ad6995686506c04a58d61b4a535c8844c2b13eb14b08029946f0655600ee6d7823889560656d5b520bd7ed6b5b500caf32538),
(21, 'DevicesDetection_types', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac4182995686506c04a58d61b425548189750a58c014ca37832a3007f36b419c442b03abea5a905e3febda5a0059d222a8),
(21, 'Goals_ItemsCategory', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goals_ItemsCategory_Cart', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goals_ItemsName', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goals_ItemsName_Cart', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goals_ItemsSku', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goals_ItemsSku_Cart', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goal_days_until_conv', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Goal_visits_until_conv', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Referrers_keywordByCampaign', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Referrers_keywordBySearchEngine', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Referrers_searchEngineByKeyword', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Referrers_type', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac33ad0c91b011943686d196d6205d995626d62960015328df0caac01cccaf057112ad0cacaa6b417afdac6b6b015a2822a9),
(21, 'Referrers_urlBySocialNetwork', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Referrers_urlByWebsite', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'Resolution_configuration', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c358c310e80200c45efc2095a5094dfc9b8b8e81d303a90b0b19810ee6e3075f879ff356d2318358124c2fd25a0168c30399e773652c01e665f565937e160e9619ac948026bacd2fd0cd23f250c727d8351ddebc2f479eb1241a8addf1ed2da0bf2492746),
(21, 'Resolution_resolution', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c358c510e80200c43efb2130c1095ee0ede61463f48f8e3c784707785cc8fa57b4d5b8543cb605184ff4968151154f4bc0b49fd0c72c9f3e37867920c67e74dc3af49c642c622d734a2f16a816d721fa060b43eba87f4fe02cf2a2546),
(21, 'UserCountry_city', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4d4d410ac3300cfb8b1f309226e916f90ba37ff0681881b01db25b9bbf2f2e29d46064594212586c198605ee3c22b68a002af24a85b8c21ad0b3a4bccabea74a9c61c74e03dd89913523c3f37a3cc2e0f330dc0fde9408262d725af4a3eef7f6361b172fd3bb7d97bf9fb7eaa6cbe12ac78726395eb8b53f6a483742),
(21, 'UserCountry_country', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c358bcb0dc0200c4377c9047c4a2b9c1dba432a382071e388b27b050a07cb7e962df0980d8e05f1848c3990405dbeda890702a80ee2066f0ae6f178e6756db8b8ec2219df367836eb0281c3d4f57d59f5070b20240a),
(21, 'UserCountry_region', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0cac9494ac33ad0ca1d8084a1bc3684b6b90c64c2b13eb14b08029946f0655600ee6d782388940c3aa6b417afdac6b6b01a9922330),
(21, 'UserId_users', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(21, 'UserLanguage_language', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c358bcb0dc0200c4377c9047c4a2b9c1dba432a382071e388b27b050a07cb7e962df0980d8e05f1848c3990405dbeda890702a80ee2066f0ae6f178e6756db8b8ec2219df367836eb0281c3d4f57d59f5070b20240a),
(21, 'VisitorInterest_daysSinceLastVisit', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c8dd33d0b03210c06e0ff22740c18e3c7356e5dbaddd8b55870108e0eb5d0e1b8ff5e3b1c74688ddb8b920709af89d1f15a58c7c4b407c36b65c76a49b7bca8581903ab73bee7475aae737e5d4a2dcfaa6261f3b964852a6e85b18d6a5e5ba238ef07ff5162a5417f29fab762240501658524c58091152b2904242b4e522c5859f192e2c0c94a90140f5e562649091064e5d8552cab09706031d82f73cbe880069a87fd02b74c087e04ea77d8b72db7129b11a9dfe3f64fd120901f5953bfcced51e4ddc19c24697b03f5f32f84),
(21, 'VisitorInterest_pageGap', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c8dd1310ac3300c05d0bb083a0a2cd94e5269cb017a07173a18b2650cb97bb5043a14ff6c5fb6fc1072334976744bde2c5f41edd8ad1a6dedfdd9c8f7b8216121efa6514954e4673789de781d29fbeb3a182acafaa3a4ff8a222573c64a464ae182958294ca152b152913cf5899864a315a581266e6211359e2af6fac66814e65bd31cf13392a0f5d91737e01f686c580),
(21, 'VisitorInterest_timeGap', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c8dd0310ac3300c05d0bb083a0a24d9719cef2d07e81d52e810c89631e4eed512e8d0c6dabe8cf4b0b44005c70a690bd2150cc78e01b42daff7466d470609ab505b615e2a48a99d2bd49b7ddc536acfebe13fe35995d3b723bf1deb3949b9049c74eb1450f1bd2c00e55b68f4c54cd872401a7a922b9c237f2a3dc915bf52401a7b922b3c45a47a2b55902bac35424ddd9357d187cd3de9fc008261ca99),
(21, 'VisitorInterest_visitsByVisitCount', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c8dd33b0ac3300c06e0bb183a0a24f995c85b0fd03bb8d0c1902da3c9ddab25d0a148de7e3ff8b065b90b259943b07589776099a76409477f7f8ed04e5d090414da10d611e928b46b08e95e94a929b6d73d612a0cfca3e07f853d2542f495e8290992af244fc9907d257b4a81e22bc5532a545fa99eb2c1e62b9ba924093bd042797793d14c1978a1c064f7af662e907101b25bb8e883eb4fc015c96ee3aa7743025ea2ec5ed64331d2839f9e747d015a5b1581),
(21, 'VisitTime_localTime', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789cb5d63b0e83301084e1bbe4049eb579787d87dcc1515220d1a544dc3d32320d52866a0a1eb658fda2f9e4ea967c5b3c94eaf17cc9be7d7df0c75a5f9ff55116476cb77e597f9e7b319736b6782aef6363e8ebb17f301debbd2daa07dff636fb3c37fe57439f0f3d1a7a345ca3e1120d346afc5735d148a3a689261a8d9ae840a349131d6974d044271a1d35d19946274d34d3e8ac89829b9445556e124428e14625114be02e410413b84c1029016e13444e80eb049114e03e416405b8505069c18d82880be34899880be34a99880be34a99880bbb393d494e32fb0f39a717ea),
(21, 'VisitTime_serverTime', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789cb5d63b0e83301444d1bd64059e67f3f1f31eb207474981449712b1f7c8c8344819aa29c01f615dd11cb9ba25df160fa57a3c27d9b7af0ffe58ebebb33ecae2407bf5c7fa18cf3197766cf154dec7c6d0d763ff603ad67b5b540fbeededecf3dcf85f0dfd7ce8d1d0a3e11a0d9768a051e3bfaa89461a354d34d168d444071a4d9ae848a383263ad1e8a889ce343a69a29946674d14dca42caa7293204209372a89840077092223c065824809709b2072025c2788a400f709222bc085824a0b6e14445c1847ca445c1857ca44b718e34a994829bbb93d4994da7f2e2e17ea),
(22, 'Goals_ItemsCategory', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goals_ItemsCategory_Cart', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goals_ItemsName', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goals_ItemsName_Cart', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goals_ItemsSku', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goals_ItemsSku_Cart', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goal_days_until_conv', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(22, 'Goal_visits_until_conv', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Actions_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c9d94616e83201480af623c408352db15efd0eddf7e1a5a594ba66080adcb9a26bbc36eb893eca1933d576d9b991879f0f1f812df83b3841d25233967b41fcc093b5a96b1b8e21b51c5398c21888c28adde08c3159f6d751d7d7d7c46f7cee8c84a27352cf34abef352475bada2476dca0723ac8d73c9527813fc86099afb2325a3044e49584c3c4e131ca4f9da7f287c6076c162fb52174ed6a250c21db479f682304d66041e1fa460ab36c55e3a5b1ca4db9fd1903b897fb2d5525dced642fced0a94212f2bccab3081b9a3b4d39a8f69fdc2c12a435613b95aa6979a6296c8c9c16fb34f882224ebac166356180f5e4be43599afa57ab3e95329722b755d34466fa15aa4da0596ae9296a5e998e1f9a6ded3e70e9e5772b76c6f7b033b708626682a01b5afceea61da79b8a9abf211678cadc744ff0283ced0aaa8342f6fec0c44f73e83ce08ebfd394104ad40332fc34f8060858294e00077779ae23d731c642138f9cb82fb8baa2bfc86efa0b4a4ab44d170b76f2f28e8adffde4f90de5f2ea7d337184b9ab8),
(27, 'Actions_actions_url', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c95940b8ec2201086efd203f401d6ea7007af40a8c5956c0b06d06e62bcfb422b15bbddd56d423b64e69ff9a6616050c055404e18e0c9a8e06aa084a465356f1362600389e68d5135d7091180dc2afc9a0c4cbc5400ce83510403919dff6052bbbd81620d893977d48a8e53c96daff467429ac1875c4d59d3a3b086f6c21e6741bed698a0137231c1e0635fcbbe322a6cb8bef85e9c2bdd60b48d9fb527592d9104d51da48c405e251c8203d9cbe02a42b59a497308e1795ee6cf8f4741eb25dc87f20e5c45c0efa41d0401fa2d0e1c8137aaa327adf6dc18213f4619de163f44182dc1cfd5630bbec0d4c2bb05065168e33fa2a756f6aa3bb5dc0a25c389fa1d3c8e15e3d19e83c721bb25c879c0d3e028495bc59abf07670a128fe10808936f371f9bc8e3fef9f63ee1280f46186c340d7f391837ff62fe3a19131e54db704dcfbaa5c6326dfd3db2729c476b4f06b2aceffb345c2a4cb2d4f59b857df6b86d5c5a3ce6bf7d0399957e1b),
(27, 'Actions_actions_url_chunk_0_99', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c8d94016ec2201486efc2012c05ab93dec12b3468d9246bc100ae26c6bb0fa8b0d7d9ce9934eda31f3f5f2a0fce4a7693acac2d2b494918e2e300ae39a3e9618dd9cdb28aa18e1f44873cbb61a890aa1557544b46ea1000ae3c40eb102019c5219f211c705ac282d4fb70a3fee6477daebdf48d93bd68947083369f8fe5f00afb5f2888175187e6249d6d06e94e4fb4cf2ed123ad97eaefb408f1eb0ba8025e56982f6132f346e9a8b59ed3fa81b35505ac16b22293a496982d7072862bfb0e288cabd16a336705f1ecb5055e8b79914a66cbab52e0d6eabe391b7d14d64af59159ba2b234bc99ce1f3a4e419b2b3e78becc826db7fb013e7a3eecf9d7052aba7fdb0ec3c9d34eef2196788ede7447f0393ced0aae9346fffd919804e3e93cec8efd33a5904bcf1cdbccd7f822f76a0201816b0bb098173d6b0a872710f87453c76fc8765e862e20943fd463b3977b6ac2886615819d15a7d107ec7f195ff3845aa8b18108e8ffbdd3f7e0301d680b0),
(27, 'Actions_downloads', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Actions_outlink', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Actions_sitesearch', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Actions_SiteSearchCategories', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'DevicePlugins_plugin', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c85d0410e82301005d0bbcc094a8ba8bf77f00e158a8c14418a1043b8bbdd90b8d076f7f333ff2dc6e0849521b481da83c4ea71003973b58eb447012afbbe654b9a2143918132d21b230be7026b484a5ff6e23f1472ed8c6fbe1cf1db91512707ddcd6cd28c8a320a3454755ac9a3ca19f47c71d94edcd9b475885a99008dd6b8c199b71dd35a11d7c2d0b39bede8f8d64c69ee18e72468e147d52fbeb31527dfbf7d000bdfb235),
(27, 'DevicesDetection_brands', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0cac9494ac33ad0ca1d8084a1bc3684b6b90c64c2b13eb14b08029946f0655600ee6d782388940c3aa6b417afdac6b6b01a9922330),
(27, 'DevicesDetection_browserEngines', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc16ca79cccbc6c25eb4c2b43283682d2c630dad21aa43bd3cac43a052c600ae59b41159883f9b5204ea2958155752d48af9f756d2d0091092525),
(27, 'DevicesDetection_browsers', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac949c3d94ac33ad0ca1d8084a1bc3684b6b90d64c2b13eb14b08029946f0655600ee6d7823889560656d5b520bd7ed6b5b500f0c423bd),
(27, 'DevicesDetection_browserVersions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c358bb10e80201043ffe53ec08088e47aa38b93ff704607123646c2bf1bc83934ed6b5a8547cb70a2087f60b48a082a7abf85a422818e5398174792e14dab79f89d65fc33367966118d771ba4c97d80c2a1f5f1bda4f70f8bde24cd),
(27, 'DevicesDetection_models', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c358c510a80201044af129e40330d67efd01d2c2524a9c8fec4bb87621fc39bb7ecae85400ee06421ff6290131458b4ab8f8c128406a3dd9ffe09dbe07c3adeeb6614207ac64ef9d350fd1430916b03d55df785b979a962c1914bbd5da8940fcad82999),
(27, 'DevicesDetection_os', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81324a3e9e7e4ad6995686506c04a58d61b4a535486fa69589750a58c014ca37832a3007f36b419c442b03abea5a905e3febda5a001b352416),
(27, 'DevicesDetection_osVersions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c358b410ac0201003ffb22fb0555bccbea050fcc396f62078f328fbf7a2ac87904c48041b7a8163815f21a137445095e7abc40d01745f99890b36d36eee97271ee782c0ef2ca2f1618373b20e1038741ddfccaa3f3c032452),
(27, 'DevicesDetection_types', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac4182995686506c04a58d61b425548189750a58c014ca37832a3007f36b419c442b03abea5a905e3febda5a0059d222a8),
(27, 'Goals_ItemsCategory', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goals_ItemsCategory_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goals_ItemsName', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goals_ItemsName_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goals_ItemsSku', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goals_ItemsSku_Cart', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goal_days_until_conv', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Goal_visits_until_conv', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Referrers_keywordByCampaign', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Referrers_keywordBySearchEngine', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Referrers_searchEngineByKeyword', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Referrers_type', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac33ad0c91b011943686d196d6205d995626d62960015328df0caac01cccaf057112ad0cacaa6b417afdac6b6b015a2822a9),
(27, 'Referrers_urlBySocialNetwork', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Referrers_urlByWebsite', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'Resolution_configuration', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c358c310a80300c45efd2132456abfd195d14c43b44742874eb2294de5d5aeaf079ff85240a460e2051d8bf78e4840926eaf5442309ec608efd947513f603bd4c0b1909e09ea1d3fef4523f058c72b7c1d4ddf585b979a9a220e4526f4f29e503f9572758),
(27, 'Resolution_resolution', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c358c510e80200c43efb2130c1095ee0ede61463f48f8e3c784707785cc8fa57b4d5b8543cb605184ff4968151154f4bc0b49fd0c72c9f3e37867920c67e74dc3af49c642c622d734a2f16a816d721fa060b43eba87f4fe02cf2a2546),
(27, 'UserCountry_city', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4d4d410ac3300cfb8b1f309226e916f90ba37ff0681881b01db25b9bbf2f2e29d46064594212586c198605ee3c22b68a002af24a85b8c21ad0b3a4bccabea74a9c61c74e03dd89913523c3f37a3cc2e0f330dc0fde9408262d725af4a3eef7f6361b172fd3bb7d97bf9fb7eaa6cbe12ac78726395eb8b53f6a483742),
(27, 'UserCountry_country', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c358bcb0dc0200c4377c9047c4a2b9c1dba432a382071e388b27b050a07cb7e962df0980d8e05f1848c3990405dbeda890702a80ee2066f0ae6f178e6756db8b8ec2219df367836eb0281c3d4f57d59f5070b20240a),
(27, 'UserCountry_region', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0cac9494ac33ad0ca1d8084a1bc3684b6b90c64c2b13eb14b08029946f0655600ee6d782388940c3aa6b417afdac6b6b01a9922330),
(27, 'UserId_users', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b0aaae0500064f01fe),
(27, 'UserLanguage_language', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc1ecd43cddd26225eb4c2b43283682d2c630dad21aa43bd3cac43a052c600ae59b41159883f9b5204ea2958155752d48af9f756d2d008e72251d),
(27, 'VisitorInterest_daysSinceLastVisit', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c8dd33d0b03210c06e0ff22740c18e3c7356e5dbaddd8b55870108e0eb5d0e1b8ff5e3b1c74688ddb8b920709af89d1f15a58c7c4b407c36b65c76a49b7bca8581903ab73bee7475aae737e5d4a2dcfaa6261f3b964852a6e85b18d6a5e5ba238ef07ff5162a5417f29fab762240501658524c58091152b2904242b4e522c5859f192e2c0c94a90140f5e562649091064e5d8552cab09706031d82f73cbe880069a87fd02b74c087e04ea77d8b72db7129b11a9dfe3f64fd120901f5953bfcced51e4ddc19c24697b03f5f32f84),
(27, 'VisitorInterest_pageGap', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c8dd1310ac3300c05d0bb083a0a2cd94e5269cb017a07173a18b2650cb97bb5043a14ff6c5fb6fc1072334976744bde2c5f41edd8ad1a6dedfdd9c8f7b8216121efa6514954e4673789de781d29fbeb3a182acafaa3a4ff8a222573c64a464ae182958294ca152b152913cf5899864a315a581266e6211359e2af6fac66814e65bd31cf13392a0f5d91737e01f686c580),
(27, 'VisitorInterest_timeGap', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c8dd0310ac3300c05d0bb083a0a24d9719cef2d07e81d52e810c89631e4eed512e8d0c6dabe8cf4b0b44005c70a690bd2150cc78e01b42daff7466d470609ab505b615e2a48a99d2bd49b7ddc536acfebe13fe35995d3b723bf1deb3949b9049c74eb1450f1bd2c00e55b68f4c54cd872401a7a922b9c237f2a3dc915bf52401a7b922b3c45a47a2b55902bac35424ddd9357d187cd3de9fc008261ca99),
(27, 'VisitorInterest_visitsByVisitCount', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789c8dd33b0ac3300c06e0bb183a0a24f995c85b0fd03bb8d0c1902da3c9ddab25d0a148de7e3ff8b065b90b259943b07589776099a76409477f7f8ed04e5d090414da10d611e928b46b08e95e94a929b6d73d612a0cfca3e07f853d2542f495e8290992af244fc9907d257b4a81e22bc5532a545fa99eb2c1e62b9ba924093bd042797793d14c1978a1c064f7af662e907101b25bb8e883eb4fc015c96ee3aa7743025ea2ec5ed64331d2839f9e747d015a5b1581),
(27, 'VisitTime_localTime', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789cb5d63b0e83301084e1bbe4043b0be6b1dc217770941448742911778f8cec062943350598b5b07ed17c2287f7b1af614b8eae3dccb17f23c563cbafcff658d680955bbdbcae5d5be7a51c5ba35fdee746aaf3505f18cff928430e8bfd28679f6de37fb545ad46ad46ed1ab54bd468d4f9a76aa21d8dba26dad368a789261aed35d1814693263ad2e8a0894e343a6aa2338d4e9a28b849b3a8ca4d82c807dca8241202dc25888c0097092225c06d82c809709d209202dc2788ac00170a2a2db8511071e11c293751962be522a59c2be522a5fce6ef49a2d4f103292417ea),
(27, 'VisitTime_serverTime', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 0x789cb5d63b0e83301084e1bb7002cfda3cbcbe43eee0282990e85222ee9e804c8394a19ac2326b61fddd2757b7e4ebeca1548fe747f6f5e3bd774b7dbe97aecc3efd16dab2b6c773cf65bf357b2aafe3a06ff3d07e188f79db87eac1d76dbffb380ffe4743bb1f5a34b468b846c3251a68d468149a68a451d344138d464db4a7d1a4890e34da6ba2238d0e9ae844a3a3269a69346ba2e02441c403384a1001811b96444480c3041112e03441c404384e104101ce1344548003051116e04461126539521029655c291329655c291329655c2913296537cf278952db17b50717ea),
(43, 'Actions_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c9d946b4ec3300cc7af52f500551eeb1ee91d06dff858656b60116d33258121d024eec00d3909ce5677e9030951a99b23ffedfc9cc696828a0f2d482105476341c48713b9486bb953755a800d8bc4aaca999db2b295d9de34c9f7e75772e7ad499cf6da805bd6fa5d5626d99b367930b6bab7cab9b4d082c1cbe1a5bd117e48581034281aacd8863f5eec60ed045d8ad4bd34a5d78d2a5be54fc63ea745254846f235193c1ce40c48db5d79d0de9527ed0fa3b8b0fd3567a3db694ef4c9b7bfee47f308cf29fbaa6c50b38c711e6b69605bccb1615087964768b77c34e39be1835a448db58b350bee5584e6e1b3b9c7ab004aa16c9a8e2de7f06e811de02a021c6525a3032288d1538e0336433dbd1c138fb82bd394476bf6709374fbd495b79c1c2d6773ece3e06b05217f5fc1343fc9567488b5c620ac620e8aacd8e47b8f0b81ae39d60a9aa5c5dbf63b77acd517ed843b966ce718c782412f99b6ac8dac9064be717a91be350722f4beedb86d220ff4faa66b7a46d0c05e67fd3cc8d1a0ddb8a06b349617e30c168c261a2653b8f747f904b749fb5a9547e90f972105edf5df19750edb6f8bf3f9075ce09d2d),
(43, 'Actions_actions_url', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c8d940b8e83201086efe2012c8f5a2ddea1572058d92d598506e8ba49e3dd175a51443759127408ff0cdfa0338c40f21404d48ce0d928c9d39082641d6b7897d5865424d3bc35aae13aab05416e6237e16cf807f00b100c180c545ffc0bd78d5b1b024f24338f9e5ad1732ab91d94fecaea96801c1415580dece4c861c886de84357410f696f8f9e3df317b21b731c31efbf9ef79b088f00cd7df3ee396a01c611c6ba1673beeb105a709ad88d0967830c7e7f508da801a6b8f15f2db6584663593e6e32d70a940b40d874e7b788be3045846804954905c1008183365ea705eebe1eb9a70c4ddaa9edeb5ba726384fc9cd23b6dae16a33df6d4f99d818f3f67b08d0ff212aeb1aae014b2d8830225da7cef3491abeaef1db742c9f0b7fdcd1d6bc54bbbe18e25973dc654b0aa252569a7581b48f60b671689a53802c2bc7749cb26da71b57e9e8a1e8160845a47733f285ec6e82cd74fa06f273ee087ea5aaee94377d458a6ad6f2d47c779b3f66ec8e1300c431efa0c932c77f91ec2fab034a0713aa41ec75fe4d5817e),
(43, 'Actions_actions_url_chunk_0_99', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c8d940b6e83300c86efc201208ff268b843af8060646b340815a1a352d5bbcf014c4360d290689de6b7f3d98d5d0a2a9e4ad0dc08ca68228272fe81e4a5e0689c88781a118ba0292bd904a00561a4742d1f41ae048397c34b57c37e10bb20685034587eb15f3caf600d874224736f8b41b5b2d07218bbfe3bc86b4142126764f370903380d0557155832946355c3d3f7bfc1cb3557a1f13f7cac77fcfa3b1836764ff237bab6621e3dcd5dafab1d3111b3a2d68b183f68e47437ede3ea84554577bca98dd4e1db4a12fb5f99c05900a65fb702c39c27b3b2e80a903e845255e810862ac94bec379aba75399b8c35d776d71ebbb0f698cd25f4b7ac9aeb49c1db1fbce730636fe9ac13e3e0953bac5cad009b338822229dbfddf7e221f5d7b6be4a03a8db7ed6f6e57ab26ed8edb955c8e187dc1a6973a5d345d5923c971e3ac22f56e0e4458f72e7edb383bd0ebe7a5e91941037b9dadf32046832ee38266682493f1b223681a3d503411dcfb69ca70b85bd761b8191145e33886bdac4d5749b8646508c947b88e021b8003cfeb05e62fdc058329),
(43, 'Actions_downloads', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Actions_outlink', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Actions_sitesearch', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Actions_SiteSearchCategories', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Contents_name_piece', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Contents_piece_name', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'DevicePlugins_plugin', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c7dd0410e82400c05d0bbf404c30ca27eeee01d2a0c521904198418c2ddc5053beda2c9ef4ff316659cb0084cce707bb058220ea0c0571f288fc84045d735e22917d86d5cbe0a92edd46059bfeb652ffe235bae02c77a37cc4fc3aa460abaf3c43ae154c281fab2d2855415cea0e74b8a6694d6ebce417512031a3c873ef0db0fba94e952028a12263f04b9d5a34e1d75ca82667994dd1c5b5f8afaeaf5035ed2ac6f),
(43, 'DevicesDetection_brands', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b814a941c0394ac33ad8c80d810888da1b489750a9836b506e9ccb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b7d506564a308b8da0161be1b0d888248b6b01e545454b),
(43, 'DevicesDetection_browserEngines', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc16ca79cccbc6c25eb4c2b23203646c226d629568640dad41aa439d3ca0c2a6e0ee51b1a4235991880456a8142403b0cacaa6b410afdac6b6b01b5dd2555),
(43, 'DevicesDetection_browsers', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac949c3d94ac33ad8c80d818099b58a758190269536b90ce4c2b33a8b839946f6808d564620016a9050a012d30b0aaae0529f4b3aead0500143f23ed),
(43, 'DevicesDetection_browserVersions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8badccad949c3dac2d2df40c94ac33ad8c80d810888da1b489750a9836b50669cfb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c80a0fd9608fb8da0f61be1b0df8824fb6b01d50d47f1),
(43, 'DevicesDetection_models', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0c2dac941c03acd353f3528b32931552528bb34bf20b94ac33ad8c80d810888da1b489750a9836b5061995696506153787f20d0d610a0dc022b5205ea2958155752dc8103f98001eb7985929e1728911d42546385c6244924b6a01f425521d),
(43, 'DevicesDetection_os', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81324abe8ece4ad6995646406c08c4c650dac43a054c9b5a83b4665a9941c5cda17c4343984203b0482d8897686560555d0b32c40f2680d76e1f4f3f98dd4650bb8d70d86d4492ddb500ff8f4672),
(43, 'DevicesDetection_osVersions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81024abe8eced686067a86c64ad6995646406c08c4c650dac43a054c9b5a830cc8b432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b70b4cac947c3cfdac61961b412d37c261b9114996d70200906747e2),
(43, 'DevicesDetection_types', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac4182995646406c8c844dac53ac0c81b42954de0c2a6e0ee51b1a4235991880456a814240b30dacaa6b410afdac6b6b017c2922d8),
(43, 'Events_action_category', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Events_action_name', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Events_category_action', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Events_category_name', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Events_name_action', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Events_name_category', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goals_ItemsCategory', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goals_ItemsCategory_Cart', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goals_ItemsName', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goals_ItemsName_Cart', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goals_ItemsSku', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goals_ItemsSku_Cart', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goal_-1_days_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goal_-1_visits_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goal_0_days_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goal_0_visits_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goal_days_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Goal_visits_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Referrers_keywordByCampaign', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Referrers_keywordBySearchEngine', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Referrers_searchEngineByKeyword', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Referrers_type', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac33ad0c81d808888d91b089750a58dcd41aa429d3ca0c2a6e0ee51bc234991880456a41c6245a195855d78214fa59d7d602007c8022d9),
(43, 'Referrers_urlBySocialNetwork', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Referrers_urlByWebsite', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'Resolution_configuration', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0ccdac947c1d9dad9d3dac0d2d8d0c2a0c0d2c0c94ac33ad8c80d810888da1b489750a9836b5061994696506153787f20d0d610a0dc022b5205ea2958155752dc8103f98007e97f878fa61758911d42546385c6244924b6a0162094cf6),
(43, 'Resolution_resolution', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4d8d4b0a80300c44efd21324fda89ddcc13b547451e8ae1ba1f4eea652c1c590cc23334960b40c9204f72d11ad22c094745cc5485560385aba993632926155ee272f275867905190b14cbe4ecf3c439e5ed215e91f42ebe37097de1ff41f2576),
(43, 'UserCountry_city', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4d8d510a03210c44efe2018a59755b2757287b07cb4a11a4fdb07fbbdebd49b160202499476612084781e504f75f228e860053d32357c30d6461ee35973d9d676e860b166937b5e71d2433b05a14ac43bf8e9b683c79fb53ba4892b46892d3a48f11074f97d5ba3895847bc1efd753b9151c661c6feae478e3debf9d733772),
(43, 'UserCountry_country', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4d8dcb09c0300c4377f104713e2d9577e80e29cd21905b8ec1bbd72929f4202c3d2c94c118154e32c2670e8c8e046af92a8da4c3834a27a9f0a6f053941b6c37c96c566c8bef2b33af52742f514336e030743e9ea2fa002ed9243a),
(43, 'UserCountry_region', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4d8cc10d80300c0377c904096d41383bb043113c2af5d76795dd4951917858b14fb13304bd8035237c66476f48a09acfbb92363088b46071859fa25e10bf4947af609d7c9b59649622bfc41cf93ca3db783cd4ec01cc712360),
(43, 'UserId_users', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(43, 'UserLanguage_language', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b814a94528b95ac33ad8c80d810888da1b489750a9836b506e9ccb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b7d540766a9e6e29dc7623a8ed46386c3722c9f65a00b14a477f);
INSERT INTO `wp_matomo_archive_blob_2022_03` (`idarchive`, `name`, `idsite`, `date1`, `date2`, `period`, `ts_archived`, `value`) VALUES
(43, 'VisitorInterest_daysSinceLastVisit', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c85d33d0b03210c06e0ff22740c18e3c735b775e97663d762c141383ad44287e3fe7ba5e0764d06e145f041c29bcc1878ab6ce7cc3482e3ad7160b3e64759cddc18139b6b7996575eef4bf9dc6aabef66e6caee77f6cad89f59de7aa2791917ff416263c10e010f05a7090838047b2890263870b2e035818064216882072f0b5113020459489a1021cac2a40909922c9c45c1b399009541a05cd29e31005905918bd93321440d91bb19fb447b399da6c8fdec3b870e81a23616b9a4fd3314c3c95d2465ff02de1824af),
(43, 'VisitorInterest_pageGap', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c85d1b10ac4300800d07f097414a2c6b667b67ec0fd430e3a04ba752cf9f7f3866c870e829af808a629667dbae6da946742fadc2a9aaef639af546f3b4908986a57b2e03abaa2ddb3c9f12bdfb3e10a043485fc57a04860605fe04828507ca1448280f88244c20a9b2facae5034ed80d9273697b01ced3f8355eca12140c13b5e9141b8d0e119e30bd90cbe48),
(43, 'VisitorInterest_timeGap', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c85d0310ec3300805d0bb58ea8804d8719cefad07e81d5ca983a56c1923dfbd7448a7d60c96308227a041186707d78678058af3c082b0b7e76b0ff5404260120eb543edc53a3ac40aad757cbe8f2bf19fb05884e2d7e09f867a4614ca8e11a74646c8b68b3a489a22ab2da34c9a1c65f114132879b3644f31c1aee228aba798409ba794a952104c20291eb3b9e72d2c37bdcf94f106a1f1c361),
(43, 'VisitorInterest_visitsByVisitCount', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c85d23d0ac3300c05e0bb183a0a24f92f91b71ea07748a143205bc690bb5714bc95a7c1f0b0cd877fde6652ecda8dc7667906b5ebb46ae9d8de9f238dd3579290a4b19bfec6bd9bf83eb6cb531eaf390105259d82fc15341232e529f05f214742a182851209952a166a24346a586891d0a963a147c2420b161628144b2b49f0942b243c4b250d1e53702f3d6ba3ca0182abd9fc53bddd1c29b89eddefc3421a32b8a37e186579e81329f717fe020b65),
(43, 'VisitTime_localTime', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789cb5d64b0a83401084e1bbe4045d3d8e8ff60eb983922c0477598a778fca08219072935ae83c503fdcfccc105ec53285f543a473d2c5f28a1cb779189ff3ad9f0269bbf93ed9ae54c6aa7f1c63eef7b7a6a8cb7e53d6c0f9a01d3bebbe1ac26259f78fdccf8ddfac15d58a6a873a1ee3a76adfaa71d5f9cf8ad4445517a915559348cd54ad446a4dd52c521baad622b5a56a23523baab62215bc4e9d8ae575c299a7bf47f1a24f50b9bc5050250abc5150e502bc52500503bc53502503bc54504503bc55906583d70aaa6e38cf959bcae5bd72d5c1c679af5cd50dbf3851690e37eb1bb5291ba2),
(43, 'VisitTime_serverTime', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789cb5d64b0a83301485e1bdb8829c6b7ce4660fdd83d20e04671d8a7baf8608a5d0e3e80c340f8c3f4e3e9cdca26f8b873c797b4d926f6fefbc59a7f9b5367971e0b8d93939aeb68e313fcbd8e5f3d4e27ddd1feaba1c2a0f86b2b39fabc9836ffbf992c7b5f13f1b6a35d46a28d5b98cdfd5f05b0dbc6afc6345d596564d548db4da8aaa1dad4651b5a7d54e541d68b51755475a1d44d544ab631629c1754aaa2cd7092a9e70e3938a0a70a1a0c202dc28a8b800570a2a30c09d828a0c70a9a04203dc2a8caa2ed70a49d435ce95a9dc30ee95a97e6c8c7b652aafece68f4ae3d5fe01b6b01ba2),
(44, 'Goals_ItemsCategory', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goals_ItemsCategory_Cart', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goals_ItemsName', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goals_ItemsName_Cart', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goals_ItemsSku', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goals_ItemsSku_Cart', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goal_-1_days_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goal_-1_visits_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goal_0_days_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goal_0_visits_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goal_days_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(44, 'Goal_visits_until_conv', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Actions_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c9d946b4ec3300cc7af52f500551eeb1ee91d06dff858656b60116d33258121d024eec00d3909ce5677e9030951a99b23ffedfc9cc696828a0f2d482105476341c48713b9486bb953755a800d8bc4aaca999db2b295d9de34c9f7e75772e7ad499cf6da805bd6fa5d5626d99b367930b6bab7cab9b4d082c1cbe1a5bd117e48581034281aacd8863f5eec60ed045d8ad4bd34a5d78d2a5be54fc63ea745254846f235193c1ce40c48db5d79d0de9527ed0fa3b8b0fd3567a3db694ef4c9b7bfee47f308cf29fbaa6c50b38c711e6b69605bccb1615087964768b77c34e39be1835a448db58b350bee5584e6e1b3b9c7ab004aa16c9a8e2de7f06e811de02a021c6525a3032288d1538e0336433dbd1c138fb82bd394476bf6709374fbd495b79c1c2d6773ece3e06b05217f5fc1343fc9567488b5c620ac620e8aacd8e47b8f0b81ae39d60a9aa5c5dbf63b77acd517ed843b966ce718c782412f99b6ac8dac9064be717a91be350722f4beedb86d220ff4faa66b7a46d0c05e67fd3cc8d1a0ddb8a06b349617e30c168c261a2653b8f747f904b749fb5a9547e90f972105edf5df19750edb6f8bf3f9075ce09d2d),
(48, 'Actions_actions_url', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c8d940b8e83201086efe2012c8f5a2ddea1572058d92d598506e8ba49e3dd175a51443759127408ff0cdfa0338c40f21404d48ce0d928c9d39082641d6b7897d5865424d3bc35aae13aab05416e6237e16cf807f00b100c180c545ffc0bd78d5b1b024f24338f9e5ad1732ab91d94fecaea96801c1415580dece4c861c886de84357410f696f8f9e3df317b21b731c31efbf9ef79b088f00cd7df3ee396a01c611c6ba1673beeb105a709ad88d0967830c7e7f508da801a6b8f15f2db6584663593e6e32d70a940b40d874e7b788be3045846804954905c1008183365ea705eebe1eb9a70c4ddaa9edeb5ba726384fc9cd23b6dae16a33df6d4f99d818f3f67b08d0ff212aeb1aae014b2d8830225da7cef3491abeaef1db742c9f0b7fdcd1d6bc54bbbe18e25973dc654b0aa252569a7581b48f60b671689a53802c2bc7749cb26da71b57e9e8a1e8160845a47733f285ec6e82cd74fa06f273ee087ea5aaee94377d458a6ad6f2d47c779b3f66ec8e1300c431efa0c932c77f91ec2fab034a0713aa41ec75fe4d5817e),
(48, 'Actions_actions_url_chunk_0_99', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c8d940b6e83300c86efc201208ff268b843af8060646b340815a1a352d5bbcf014c4360d290689de6b7f3d98d5d0a2a9e4ad0dc08ca68228272fe81e4a5e0689c88781a118ba0292bd904a00561a4742d1f41ae048397c34b57c37e10bb20685034587eb15f3caf600d874224736f8b41b5b2d07218bbfe3bc86b4142126764f370903380d0557155832946355c3d3f7bfc1cb3557a1f13f7cac77fcfa3b1836764ff237bab6621e3dcd5dafab1d3111b3a2d68b183f68e47437ede3ea84554577bca98dd4e1db4a12fb5f99c05900a65fb702c39c27b3b2e80a903e845255e810862ac94bec379aba75399b8c35d776d71ebbb0f698cd25f4b7ac9aeb49c1db1fbce730636fe9ac13e3e0953bac5cad009b338822229dbfddf7e221f5d7b6be4a03a8db7ed6f6e57ab26ed8edb955c8e187dc1a6973a5d345d5923c971e3ac22f56e0e4458f72e7edb383bd0ebe7a5e91941037b9dadf32046832ee38266682493f1b223681a3d503411dcfb69ca70b85bd761b8191145e33886bdac4d5749b8646508c947b88e021b8003cfeb05e62fdc058329),
(48, 'Actions_downloads', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Actions_outlink', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Actions_sitesearch', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Actions_SiteSearchCategories', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Contents_name_piece', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Contents_piece_name', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'DevicePlugins_plugin', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c7dd0410e82400c05d0bbf404c30ca27eeee01d2a0c521904198418c2ddc5053beda2c9ef4ff316659cb0084cce707bb058220ea0c0571f288fc84045d735e22917d86d5cbe0a92edd46059bfeb652ffe235bae02c77a37cc4fc3aa460abaf3c43ae154c281fab2d2855415cea0e74b8a6694d6ebce417512031a3c873ef0db0fba94e952028a12263f04b9d5a34e1d75ca82667994dd1c5b5f8afaeaf5035ed2ac6f),
(48, 'DevicesDetection_brands', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b814a941c0394ac33ad8c80d810888da1b489750a9836b506e9ccb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b7d506564a308b8da0161be1b0d888248b6b01e545454b),
(48, 'DevicesDetection_browserEngines', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394acc16ca79cccbc6c25eb4c2b23203646c226d629568640dad41aa439d3ca0c2a6e0ee51b1a4235991880456a8142403b0cacaa6b410afdac6b6b01b5dd2555),
(48, 'DevicesDetection_browsers', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad8cac949c3d94ac33ad8c80d818099b58a758190269536b90ce4c2b33a8b839946f6808d564620016a9050a012d30b0aaae0529f4b3aead0500143f23ed),
(48, 'DevicesDetection_browserVersions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8badccad949c3dac2d2df40c94ac33ad8c80d810888da1b489750a9836b50669cfb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c80a0fd9608fb8da0f61be1b0df8824fb6b01d50d47f1),
(48, 'DevicesDetection_models', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0c2dac941c03acd353f3528b32931552528bb34bf20b94ac33ad8c80d810888da1b489750a9836b5061995696506153787f20d0d610a0dc022b5205ea2958155752dc8103f98001eb7985929e1728911d42546385c6244924b6a01f425521d),
(48, 'DevicesDetection_os', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81324abe8ece4ad6995646406c08c4c650dac43a054c9b5a83b4665a9941c5cda17c4343984203b0482d8897686560555d0b32c40f2680d76e1f4f3f98dd4650bb8d70d86d4492ddb500ff8f4672),
(48, 'DevicesDetection_osVersions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b81024abe8eced686067a86c64ad6995646406c08c4c650dac43a054c9b5a830cc8b432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b70b4cac947c3cfdac61961b412d37c261b9114996d70200906747e2),
(48, 'DevicesDetection_types', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac4182995646406c8c844dac53ac0c81b42954de0c2a6e0ee51b1a4235991880456a814240b30dacaa6b410afdac6b6b017c2922d8),
(48, 'Events_action_category', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Events_action_name', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Events_category_action', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Events_category_name', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Events_name_action', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Events_name_category', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goals_ItemsCategory', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goals_ItemsCategory_Cart', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goals_ItemsName', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goals_ItemsName_Cart', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goals_ItemsSku', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goals_ItemsSku_Cart', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goal_-1_days_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goal_-1_visits_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goal_0_days_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goal_0_visits_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goal_days_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Goal_visits_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Referrers_keywordByCampaign', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Referrers_keywordBySearchEngine', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Referrers_searchEngineByKeyword', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Referrers_type', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b4aaceb432b04eb43286312cadaa8bad4cad94721293527394ac33ad0c81d808888d91b089750a58dcd41aa429d3ca0c2a6e0ee51bc234991880456a41c6245a195855d78214fa59d7d602007c8022d9),
(48, 'Referrers_urlBySocialNetwork', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Referrers_urlByWebsite', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'Resolution_configuration', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8bad0ccdac947c1d9dad9d3dac0d2d8d0c2a0c0d2c0c94ac33ad8c80d810888da1b489750a9836b5061994696506153787f20d0d610a0dc022b5205ea2958155752dc8103f98007e97f878fa61758911d42546385c6244924b6a0162094cf6),
(48, 'Resolution_resolution', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4d8d4b0a80300c44efd21324fda89ddcc13b547451e8ae1ba1f4eea652c1c590cc23334960b40c9204f72d11ad22c094745cc5485560385aba993632926155ee272f275867905190b14cbe4ecf3c439e5ed215e91f42ebe37097de1ff41f2576),
(48, 'UserCountry_city', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4d8d510a03210c44efe2018a59755b2757287b07cb4a11a4fdb07fbbdebd49b160202499476612084781e504f75f228e860053d32357c30d6461ee35973d9d676e860b166937b5e71d2433b05a14ac43bf8e9b683c79fb53ba4892b46892d3a48f11074f97d5ba3895847bc1efd753b9151c661c6feae478e3debf9d733772),
(48, 'UserCountry_country', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4d8dcb09c0300c4377f104713e2d9577e80e29cd21905b8ec1bbd72929f4202c3d2c94c118154e32c2670e8c8e046af92a8da4c3834a27a9f0a6f053941b6c37c96c566c8bef2b33af52742f514336e030743e9ea2fa002ed9243a),
(48, 'UserCountry_region', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4d8cc10d80300c0377c904096d41383bb043113c2af5d76795dd4951917858b14fb13304bd8035237c66476f48a09acfbb92363088b46071859fa25e10bf4947af609d7c9b59649622bfc41cf93ca3db783cd4ec01cc712360),
(48, 'UserId_users', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(48, 'UserLanguage_language', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b2aaceb432b04eb43286312cadaa8bad4cad94721293527394ac8b814a94528b95ac33ad8c80d810888da1b489750a9836b506e9ccb432838a9b43f9868630850660915a102fd1cac0aaba1664881f4c00b7d540766a9e6e29dc7623a8ed46386c3722c9f65a00b14a477f),
(48, 'VisitorInterest_daysSinceLastVisit', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c85d33d0b03210c06e0ff22740c18e3c735b775e97663d762c141383ad44287e3fe7ba5e0764d06e145f041c29bcc1878ab6ce7cc3482e3ad7160b3e64759cddc18139b6b7996575eef4bf9dc6aabef66e6caee77f6cad89f59de7aa2791917ff416263c10e010f05a7090838047b2890263870b2e035818064216882072f0b5113020459489a1021cac2a40909922c9c45c1b399009541a05cd29e31005905918bd93321440d91bb19fb447b399da6c8fdec3b870e81a23616b9a4fd3314c3c95d2465ff02de1824af),
(48, 'VisitorInterest_pageGap', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c85d1b10ac4300800d07f097414a2c6b667b67ec0fd430e3a04ba752cf9f7f3866c870e829af808a629667dbae6da946742fadc2a9aaef639af546f3b4908986a57b2e03abaa2ddb3c9f12bdfb3e10a043485fc57a04860605fe04828507ca1448280f88244c20a9b2facae5034ed80d9273697b01ced3f8355eca12140c13b5e9141b8d0e119e30bd90cbe48),
(48, 'VisitorInterest_timeGap', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c85d0310ec3300805d0bb58ea8804d8719cefad07e81d5ca983a56c1923dfbd7448a7d60c96308227a041186707d78678058af3c082b0b7e76b0ff5404260120eb543edc53a3ac40aad757cbe8f2bf19fb05884e2d7e09f867a4614ca8e11a74646c8b68b3a489a22ab2da34c9a1c65f114132879b3644f31c1aee228aba798409ba794a952104c20291eb3b9e72d2c37bdcf94f106a1f1c361),
(48, 'VisitorInterest_visitsByVisitCount', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c85d23d0ac3300c05e0bb183a0a24f92f91b71ea07748a143205bc690bb5714bc95a7c1f0b0cd877fde6652ecda8dc7667906b5ebb46ae9d8de9f238dd3579290a4b19bfec6bd9bf83eb6cb531eaf390105259d82fc15341232e529f05f214742a182851209952a166a24346a586891d0a963a147c2420b161628144b2b49f0942b243c4b250d1e53702f3d6ba3ca0182abd9fc53bddd1c29b89eddefc3421a32b8a37e186579e81329f717fe020b65),
(48, 'VisitTime_localTime', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789cb5d64b0a83401084e1bbe4045d3d8e8ff60eb983922c0477598a778fca08219072935ae83c503fdcfccc105ec53285f543a473d2c5f28a1cb779189ff3ad9f0269bbf93ed9ae54c6aa7f1c63eef7b7a6a8cb7e53d6c0f9a01d3bebbe1ac26259f78fdccf8ddfac15d58a6a873a1ee3a76adfaa71d5f9cf8ad4445517a915559348cd54ad446a4dd52c521baad622b5a56a23523baab62215bc4e9d8ae575c299a7bf47f1a24f50b9bc5050250abc5150e502bc52500503bc53502503bc54504503bc55906583d70aaa6e38cf959bcae5bd72d5c1c679af5cd50dbf3851690e37eb1bb5291ba2),
(48, 'VisitTime_serverTime', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789cb5d64b0a83301485e1bdb8829c6b7ce4660fdd83d20e04671d8a7baf8608a5d0e3e80c340f8c3f4e3e9cdca26f8b873c797b4d926f6fefbc59a7f9b5367971e0b8d93939aeb68e313fcbd8e5f3d4e27ddd1feaba1c2a0f86b2b39fabc9836ffbf992c7b5f13f1b6a35d46a28d5b98cdfd5f05b0dbc6afc6345d596564d548db4da8aaa1dad4651b5a7d54e541d68b51755475a1d44d544ab631629c1754aaa2cd7092a9e70e3938a0a70a1a0c202dc28a8b800570a2a30c09d828a0c70a9a04203dc2a8caa2ed70a49d435ce95a9dc30ee95a97e6c8c7b652aafece68f4ae3d5fe01b6b01ba2),
(49, 'Goals_ItemsCategory', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goals_ItemsCategory_Cart', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goals_ItemsName', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goals_ItemsName_Cart', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goals_ItemsSku', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goals_ItemsSku_Cart', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goal_-1_days_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goal_-1_visits_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goal_0_days_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goal_0_visits_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goal_days_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe),
(49, 'Goal_visits_until_conv', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 0x789c4bb432b0aaae0500064f01fe);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_blob_2022_04`
--

CREATE TABLE `wp_matomo_archive_blob_2022_04` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_invalidations`
--

CREATE TABLE `wp_matomo_archive_invalidations` (
  `idinvalidation` bigint(20) UNSIGNED NOT NULL,
  `idarchive` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `period` tinyint(3) UNSIGNED NOT NULL,
  `ts_invalidated` datetime DEFAULT NULL,
  `ts_started` datetime DEFAULT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT 0,
  `report` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_06`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_06` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_07`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_07` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_08`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_08` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_09`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_09` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_10`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_10` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_11`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_11` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2021_12`
--

CREATE TABLE `wp_matomo_archive_numeric_2021_12` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2022_01`
--

CREATE TABLE `wp_matomo_archive_numeric_2022_01` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_archive_numeric_2022_01`
--

INSERT INTO `wp_matomo_archive_numeric_2022_01` (`idarchive`, `name`, `idsite`, `date1`, `date2`, `period`, `ts_archived`, `value`) VALUES
(11, 'Actions_nb_pageviews', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'Actions_nb_uniq_pageviews', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'bounce_count', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'done', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(11, 'max_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(11, 'nb_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'nb_visits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'PagePerformance_domprocessing_hits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'PagePerformance_domprocessing_time', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1463),
(11, 'PagePerformance_network_hits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'PagePerformance_network_time', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 58),
(11, 'PagePerformance_pageload_hits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(11, 'PagePerformance_servery_time', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 2233),
(11, 'PagePerformance_server_hits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'PagePerformance_transfer_hits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 3),
(11, 'PagePerformance_transfer_time', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 13),
(11, 'UserCountry_distinctCountries', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(12, 'done90a5a511e1974bca37613b6daec137ba.Goals', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(13, 'donefea44bece172bc9696ae57c26888bf8a.Goals', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(14, 'bounce_count', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 2),
(14, 'done90a5a511e1974bca37613b6daec137ba.VisitsSummary', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(14, 'max_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(14, 'nb_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 2),
(14, 'nb_visits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 2),
(15, 'bounce_count', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(15, 'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(15, 'max_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(15, 'nb_actions', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1),
(15, 'nb_visits', 1, '2022-01-01', '2022-12-31', 4, '2022-03-29 09:42:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2022_02`
--

CREATE TABLE `wp_matomo_archive_numeric_2022_02` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2022_03`
--

CREATE TABLE `wp_matomo_archive_numeric_2022_03` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_archive_numeric_2022_03`
--

INSERT INTO `wp_matomo_archive_numeric_2022_03` (`idarchive`, `name`, `idsite`, `date1`, `date2`, `period`, `ts_archived`, `value`) VALUES
(4, 'Actions_nb_pageviews', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'Actions_nb_uniq_pageviews', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'bounce_count', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'done', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(4, 'done90a5a511e1974bca37613b6daec137ba.Goals', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(4, 'max_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(4, 'nb_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'nb_uniq_visitors', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(4, 'nb_visits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'PagePerformance_domprocessing_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'PagePerformance_domprocessing_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1135),
(4, 'PagePerformance_network_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'PagePerformance_network_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 58),
(4, 'PagePerformance_pageload_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(4, 'PagePerformance_servery_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1584),
(4, 'PagePerformance_server_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'PagePerformance_transfer_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 2),
(4, 'PagePerformance_transfer_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 9),
(4, 'UserCountry_distinctCountries', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(18, 'done90a5a511e1974bca37613b6daec137ba.Goals', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:50', 4),
(21, 'Actions_nb_pageviews', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'Actions_nb_uniq_pageviews', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'bounce_count', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'done', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'max_actions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'nb_actions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'nb_uniq_visitors', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'nb_visits', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'PagePerformance_domprocessing_hits', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'PagePerformance_domprocessing_time', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 328),
(21, 'PagePerformance_network_hits', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'PagePerformance_servery_time', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 649),
(21, 'PagePerformance_server_hits', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'PagePerformance_transfer_hits', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(21, 'PagePerformance_transfer_time', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 4),
(21, 'UserCountry_distinctCountries', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(22, 'done90a5a511e1974bca37613b6daec137ba.Goals', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(23, 'donefea44bece172bc9696ae57c26888bf8a.Goals', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(24, 'bounce_count', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(24, 'done90a5a511e1974bca37613b6daec137ba.VisitsSummary', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(24, 'max_actions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(24, 'nb_actions', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(24, 'nb_uniq_visitors', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(24, 'nb_visits', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(25, 'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary', 1, '2022-03-28', '2022-03-28', 1, '2022-03-29 08:06:51', 1),
(27, 'Actions_nb_pageviews', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'Actions_nb_uniq_pageviews', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'bounce_count', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'done', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 4),
(27, 'max_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'nb_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'nb_uniq_visitors', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'nb_visits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'PagePerformance_domprocessing_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'PagePerformance_domprocessing_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 391),
(27, 'PagePerformance_network_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'PagePerformance_servery_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 833),
(27, 'PagePerformance_server_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'PagePerformance_transfer_hits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(27, 'PagePerformance_transfer_time', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 5),
(27, 'UserCountry_distinctCountries', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 08:06:52', 1),
(40, 'donefea44bece172bc9696ae57c26888bf8a.Goals', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(41, 'bounce_count', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(41, 'done90a5a511e1974bca37613b6daec137ba.VisitsSummary', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(41, 'max_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(41, 'nb_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(41, 'nb_uniq_visitors', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(41, 'nb_visits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(42, 'bounce_count', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(42, 'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(42, 'max_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(42, 'nb_actions', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(42, 'nb_uniq_visitors', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(42, 'nb_visits', 1, '2022-03-29', '2022-03-29', 1, '2022-03-29 09:42:47', 1),
(43, 'Actions_nb_pageviews', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'Actions_nb_uniq_pageviews', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'bounce_count', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'done', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(43, 'max_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(43, 'nb_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'nb_uniq_visitors', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 2),
(43, 'nb_visits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'PagePerformance_domprocessing_hits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'PagePerformance_domprocessing_time', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1463),
(43, 'PagePerformance_network_hits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'PagePerformance_network_time', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 58),
(43, 'PagePerformance_pageload_hits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(43, 'PagePerformance_servery_time', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 2233),
(43, 'PagePerformance_server_hits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'PagePerformance_transfer_hits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 3),
(43, 'PagePerformance_transfer_time', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 13),
(43, 'UserCountry_distinctCountries', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(44, 'done90a5a511e1974bca37613b6daec137ba.Goals', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(45, 'donefea44bece172bc9696ae57c26888bf8a.Goals', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(46, 'bounce_count', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 2),
(46, 'done90a5a511e1974bca37613b6daec137ba.VisitsSummary', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(46, 'max_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(46, 'nb_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 2),
(46, 'nb_uniq_visitors', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 2),
(46, 'nb_visits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 2),
(47, 'bounce_count', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(47, 'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(47, 'max_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(47, 'nb_actions', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(47, 'nb_uniq_visitors', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(47, 'nb_visits', 1, '2022-03-28', '2022-04-03', 2, '2022-03-29 09:42:48', 1),
(48, 'Actions_nb_pageviews', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'Actions_nb_uniq_pageviews', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'bounce_count', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'done', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(48, 'max_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(48, 'nb_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'nb_uniq_visitors', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 2),
(48, 'nb_visits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'PagePerformance_domprocessing_hits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'PagePerformance_domprocessing_time', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1463),
(48, 'PagePerformance_network_hits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'PagePerformance_network_time', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 58),
(48, 'PagePerformance_pageload_hits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(48, 'PagePerformance_servery_time', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 2233),
(48, 'PagePerformance_server_hits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'PagePerformance_transfer_hits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 3),
(48, 'PagePerformance_transfer_time', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 13),
(48, 'UserCountry_distinctCountries', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(49, 'done90a5a511e1974bca37613b6daec137ba.Goals', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(50, 'donefea44bece172bc9696ae57c26888bf8a.Goals', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(51, 'bounce_count', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 2),
(51, 'done90a5a511e1974bca37613b6daec137ba.VisitsSummary', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(51, 'max_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(51, 'nb_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 2),
(51, 'nb_uniq_visitors', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 2),
(51, 'nb_visits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 2),
(52, 'bounce_count', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(52, 'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(52, 'max_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(52, 'nb_actions', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(52, 'nb_uniq_visitors', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1),
(52, 'nb_visits', 1, '2022-03-01', '2022-03-31', 3, '2022-03-29 09:42:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_archive_numeric_2022_04`
--

CREATE TABLE `wp_matomo_archive_numeric_2022_04` (
  `idarchive` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) UNSIGNED DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) UNSIGNED DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_brute_force_log`
--

CREATE TABLE `wp_matomo_brute_force_log` (
  `id_brute_force_log` bigint(11) NOT NULL,
  `ip_address` varchar(60) DEFAULT NULL,
  `attempted_at` datetime NOT NULL,
  `login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_custom_dimensions`
--

CREATE TABLE `wp_matomo_custom_dimensions` (
  `idcustomdimension` bigint(20) UNSIGNED NOT NULL,
  `idsite` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `scope` varchar(10) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `extractions` text NOT NULL DEFAULT '',
  `case_sensitive` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_goal`
--

CREATE TABLE `wp_matomo_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(25) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` double NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `event_value_as_revenue` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_locks`
--

CREATE TABLE `wp_matomo_locks` (
  `key` varchar(70) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `expiry_time` bigint(20) UNSIGNED DEFAULT 9999999999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_logger_message`
--

CREATE TABLE `wp_matomo_logger_message` (
  `idlogger_message` int(10) UNSIGNED NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_log_action`
--

CREATE TABLE `wp_matomo_log_action` (
  `idaction` int(10) UNSIGNED NOT NULL,
  `name` varchar(4096) DEFAULT NULL,
  `hash` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_log_action`
--

INSERT INTO `wp_matomo_log_action` (`idaction`, `name`, `hash`, `type`, `url_prefix`) VALUES
(1, 'redsoberana.com – Otro sitio realizado con WordPress', 211137149, 4, NULL),
(2, 'redsoberana.com/redsober/', 2252242581, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_log_conversion`
--

CREATE TABLE `wp_matomo_log_conversion` (
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(10) UNSIGNED DEFAULT NULL,
  `idlink_va` bigint(10) UNSIGNED DEFAULT NULL,
  `idgoal` int(10) NOT NULL,
  `buster` int(10) UNSIGNED NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) UNSIGNED DEFAULT NULL,
  `url` varchar(4096) NOT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_shipping` double DEFAULT NULL,
  `revenue_subtotal` double DEFAULT NULL,
  `revenue_tax` double DEFAULT NULL,
  `revenue_discount` double DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_seconds_since_first` int(11) UNSIGNED DEFAULT NULL,
  `visitor_seconds_since_order` int(11) UNSIGNED DEFAULT NULL,
  `visitor_count_visits` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(255) DEFAULT NULL,
  `referer_type` tinyint(1) UNSIGNED DEFAULT NULL,
  `config_browser_name` varchar(40) DEFAULT NULL,
  `config_client_type` tinyint(1) DEFAULT NULL,
  `config_device_brand` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `config_device_model` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_log_conversion_item`
--

CREATE TABLE `wp_matomo_log_conversion_item` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) UNSIGNED NOT NULL,
  `idaction_name` int(10) UNSIGNED NOT NULL,
  `idaction_category` int(10) UNSIGNED NOT NULL,
  `idaction_category2` int(10) UNSIGNED NOT NULL,
  `idaction_category3` int(10) UNSIGNED NOT NULL,
  `idaction_category4` int(10) UNSIGNED NOT NULL,
  `idaction_category5` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_log_link_visit_action`
--

CREATE TABLE `wp_matomo_log_link_visit_action` (
  `idlink_va` bigint(10) UNSIGNED NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idaction_url_ref` int(10) UNSIGNED DEFAULT 0,
  `idaction_name_ref` int(10) UNSIGNED DEFAULT NULL,
  `custom_float` double DEFAULT NULL,
  `pageview_position` mediumint(8) UNSIGNED DEFAULT NULL,
  `time_spent` int(10) UNSIGNED DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idpageview` char(6) DEFAULT NULL,
  `idaction_name` int(10) UNSIGNED DEFAULT NULL,
  `idaction_url` int(10) UNSIGNED DEFAULT NULL,
  `search_cat` varchar(200) DEFAULT NULL,
  `search_count` int(10) UNSIGNED DEFAULT NULL,
  `time_spent_ref_action` int(10) UNSIGNED DEFAULT NULL,
  `idaction_product_cat` int(10) UNSIGNED DEFAULT NULL,
  `idaction_product_cat2` int(10) UNSIGNED DEFAULT NULL,
  `idaction_product_cat3` int(10) UNSIGNED DEFAULT NULL,
  `idaction_product_cat4` int(10) UNSIGNED DEFAULT NULL,
  `idaction_product_cat5` int(10) UNSIGNED DEFAULT NULL,
  `idaction_product_name` int(10) UNSIGNED DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `idaction_product_sku` int(10) UNSIGNED DEFAULT NULL,
  `idaction_event_action` int(10) UNSIGNED DEFAULT NULL,
  `idaction_event_category` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_interaction` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_name` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_piece` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_target` int(10) UNSIGNED DEFAULT NULL,
  `time_dom_completion` mediumint(10) UNSIGNED DEFAULT NULL,
  `time_dom_processing` mediumint(10) UNSIGNED DEFAULT NULL,
  `time_network` mediumint(10) UNSIGNED DEFAULT NULL,
  `time_on_load` mediumint(10) UNSIGNED DEFAULT NULL,
  `time_server` mediumint(10) UNSIGNED DEFAULT NULL,
  `time_transfer` mediumint(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_log_link_visit_action`
--

INSERT INTO `wp_matomo_log_link_visit_action` (`idlink_va`, `idsite`, `idvisitor`, `idvisit`, `idaction_url_ref`, `idaction_name_ref`, `custom_float`, `pageview_position`, `time_spent`, `custom_dimension_1`, `custom_dimension_2`, `custom_dimension_3`, `custom_dimension_4`, `custom_dimension_5`, `server_time`, `idpageview`, `idaction_name`, `idaction_url`, `search_cat`, `search_count`, `time_spent_ref_action`, `idaction_product_cat`, `idaction_product_cat2`, `idaction_product_cat3`, `idaction_product_cat4`, `idaction_product_cat5`, `idaction_product_name`, `product_price`, `idaction_product_sku`, `idaction_event_action`, `idaction_event_category`, `idaction_content_interaction`, `idaction_content_name`, `idaction_content_piece`, `idaction_content_target`, `time_dom_completion`, `time_dom_processing`, `time_network`, `time_on_load`, `time_server`, `time_transfer`) VALUES
(1, 1, 0x155d4f8742d4bdfc, 1, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 11:12:08', 'lnIKSm', 1, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 328, 0, NULL, 649, 4),
(2, 1, 0x194bfb4c6d2b0d07, 2, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-29 08:06:41', 'f6iRtT', 1, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 391, 0, NULL, 833, 5),
(3, 1, 0x194bfb4c6d2b0d07, 3, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-29 09:42:38', 'ZwjfCc', 1, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 744, 58, NULL, 751, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_log_profiling`
--

CREATE TABLE `wp_matomo_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) UNSIGNED DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  `idprofiling` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_log_visit`
--

CREATE TABLE `wp_matomo_log_visit` (
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `last_idlink_va` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `profilable` tinyint(1) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) DEFAULT NULL,
  `visit_goal_converted` tinyint(1) DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_seconds_since_first` int(11) UNSIGNED DEFAULT NULL,
  `visitor_seconds_since_order` int(11) UNSIGNED DEFAULT NULL,
  `visitor_count_visits` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visit_entry_idaction_name` int(10) UNSIGNED DEFAULT NULL,
  `visit_entry_idaction_url` int(11) UNSIGNED DEFAULT NULL,
  `visit_exit_idaction_name` int(10) UNSIGNED DEFAULT NULL,
  `visit_exit_idaction_url` int(10) UNSIGNED DEFAULT 0,
  `visit_total_actions` int(11) UNSIGNED DEFAULT NULL,
  `visit_total_interactions` mediumint(8) UNSIGNED DEFAULT 0,
  `visit_total_searches` smallint(5) UNSIGNED DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(255) DEFAULT NULL,
  `referer_type` tinyint(1) UNSIGNED DEFAULT NULL,
  `referer_url` varchar(1500) DEFAULT NULL,
  `location_browser_lang` varchar(20) DEFAULT NULL,
  `config_browser_engine` varchar(10) DEFAULT NULL,
  `config_browser_name` varchar(40) DEFAULT NULL,
  `config_browser_version` varchar(20) DEFAULT NULL,
  `config_client_type` tinyint(1) DEFAULT NULL,
  `config_device_brand` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `config_device_model` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) DEFAULT NULL,
  `config_os_version` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `visit_total_events` int(11) UNSIGNED DEFAULT NULL,
  `visitor_localtime` time DEFAULT NULL,
  `visitor_seconds_since_last` int(11) UNSIGNED DEFAULT NULL,
  `config_resolution` varchar(18) DEFAULT NULL,
  `config_cookie` tinyint(1) DEFAULT NULL,
  `config_flash` tinyint(1) DEFAULT NULL,
  `config_java` tinyint(1) DEFAULT NULL,
  `config_pdf` tinyint(1) DEFAULT NULL,
  `config_quicktime` tinyint(1) DEFAULT NULL,
  `config_realplayer` tinyint(1) DEFAULT NULL,
  `config_silverlight` tinyint(1) DEFAULT NULL,
  `config_windowsmedia` tinyint(1) DEFAULT NULL,
  `visit_total_time` int(11) UNSIGNED NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_log_visit`
--

INSERT INTO `wp_matomo_log_visit` (`idvisit`, `idsite`, `idvisitor`, `visit_last_action_time`, `config_id`, `location_ip`, `last_idlink_va`, `custom_dimension_1`, `custom_dimension_2`, `custom_dimension_3`, `custom_dimension_4`, `custom_dimension_5`, `profilable`, `user_id`, `visit_first_action_time`, `visit_goal_buyer`, `visit_goal_converted`, `visitor_returning`, `visitor_seconds_since_first`, `visitor_seconds_since_order`, `visitor_count_visits`, `visit_entry_idaction_name`, `visit_entry_idaction_url`, `visit_exit_idaction_name`, `visit_exit_idaction_url`, `visit_total_actions`, `visit_total_interactions`, `visit_total_searches`, `referer_keyword`, `referer_name`, `referer_type`, `referer_url`, `location_browser_lang`, `config_browser_engine`, `config_browser_name`, `config_browser_version`, `config_client_type`, `config_device_brand`, `config_device_model`, `config_device_type`, `config_os`, `config_os_version`, `visit_total_events`, `visitor_localtime`, `visitor_seconds_since_last`, `config_resolution`, `config_cookie`, `config_flash`, `config_java`, `config_pdf`, `config_quicktime`, `config_realplayer`, `config_silverlight`, `config_windowsmedia`, `visit_total_time`, `location_city`, `location_country`, `location_latitude`, `location_longitude`, `location_region`) VALUES
(1, 1, 0x155d4f8742d4bdfc, '2022-03-28 11:12:08', 0x6af1d7debeaee3e1, 0x51b80000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-28 11:12:08', 0, 0, 0, 0, NULL, 1, 1, 2, 1, 2, 1, 1, 0, NULL, NULL, 1, '', 'es-es', 'Blink', 'CH', '98.0', 1, 'AP', 'generic desktop', 0, 'MAC', '10.13', 0, '13:12:07', 0, '1920x1080', 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lleida', 'es', '41.604000', '0.606000', ''),
(2, 1, 0x194bfb4c6d2b0d07, '2022-03-29 08:06:41', 0x33cf7b61b139f51a, 0x51b80000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-29 08:06:41', 0, 0, 0, 0, NULL, 1, 1, 2, 1, 2, 1, 1, 0, NULL, NULL, 1, '', 'en-us', 'Blink', 'CH', '99.0', 1, '', 'generic desktop', 0, 'LIN', '', 0, '10:06:40', 0, '1920x1080', 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lleida', 'es', '41.604000', '0.606000', ''),
(3, 1, 0x194bfb4c6d2b0d07, '2022-03-29 09:42:38', 0x33cf7b61b139f51a, 0x51b80000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-29 09:42:38', 0, 0, 1, 5757, NULL, 2, 1, 2, 1, 2, 1, 1, 0, NULL, NULL, 1, '', 'en-us', 'Blink', 'CH', '99.0', 1, '', 'generic desktop', 0, 'LIN', '', 0, '11:42:38', 5757, '1920x1080', 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lleida', 'es', '41.604000', '0.606000', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_option`
--

CREATE TABLE `wp_matomo_option` (
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_option`
--

INSERT INTO `wp_matomo_option` (`option_name`, `option_value`, `autoload`) VALUES
('3748521651_defaultReport', '1', 0),
('CronArchive.lastInvalidationTime', '1648546967', 0),
('fingerprint_salt_1_2022-03-26', '{\"value\":\"d73ie9cfrykj80iayaeo16y50v7grlwx\",\"time\":1648465928}', 0),
('fingerprint_salt_1_2022-03-27', '{\"value\":\"exun9j0dpnkcypwo4i387jvnttx4tcgk\",\"time\":1648465928}', 0),
('fingerprint_salt_1_2022-03-28', '{\"value\":\"z0c4x2t53074lgra220g8ell3yvfrmpo\",\"time\":1648465928}', 0),
('fingerprint_salt_1_2022-03-29', '{\"value\":\"1chj3kigdo7esjoknyfgoycvmthgba04\",\"time\":1648465928}', 0),
('fingerprint_salt_1_2022-03-30', '{\"value\":\"o9fxetpyogjyll6r4fh500o13k6y2hjk\",\"time\":1648541201}', 0),
('geoip2.loc_db_url', 'https://download.db-ip.com/free/dbip-city-lite-2022-03.mmdb.gz', 0),
('geoip2.updater_last_run_time', '1647302400', 0),
('install_version', '4.6.2', 0),
('InvalidatedOldReports_DatesWebsiteIds', 'a:2:{i:0;s:7:\"2022_03\";i:1;s:7:\"2022_01\";}', 0),
('LastCompletedFullArchiving', '1648546975', 0),
('LastFullArchivingStartTime', '1648546957', 0),
('MatomoUpdateHistory', '4.6.2,', 0),
('MobileMessaging_DelegatedManagement', 'false', 0),
('piwikUrl', 'https://www.redsoberana.com/redsober/wp-content/plugins/matomo/app', 1),
('SharedSiteIdsToArchive_AllWebsites_ResetQueueTime', '1648546962008', 0),
('tagmanager_salt', '7cd48d635844e6c99cfb76JtvlP5F-fHEAdHgFL1', 0),
('TaskScheduler.timetable', 'a:20:{s:60:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.invalidateOutdatedArchives\";i:1648598401;s:59:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.deleteOldFingerprintSalts\";i:1648598401;s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOutdatedArchives\";i:1648598401;s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOrphanedArchives\";i:1649030425;s:51:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.updateSpammerList\";i:1649030425;s:47:\"Piwik\\Plugins\\Login\\Tasks.cleanupBruteForceLogs\";i:1648598401;s:53:\"Piwik\\Plugins\\UsersManager\\Tasks.cleanupExpiredTokens\";i:1648598401;s:63:\"Piwik\\Plugins\\UsersManager\\Tasks.setUserDefaultReportPreference\";i:1648598401;s:49:\"Piwik\\Plugins\\CustomJsTracker\\Tasks.updateTracker\";i:1648548055;s:59:\"Piwik\\Plugins\\TagManager\\Tasks.regenerateReleasedContainers\";i:1648548055;s:58:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeInvalidatedArchives\";i:1648598401;s:67:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeInvalidationsForDeletedSites\";i:1648598401;s:51:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteReportData\";i:1648598401;s:48:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogData\";i:1648548055;s:52:\"Piwik\\Plugins\\PrivacyManager\\Tasks.anonymizePastData\";i:1648548055;s:63:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogDataForDeletedSites\";i:1649030425;s:54:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.optimizeArchiveTable\";i:1648771237;s:57:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.cleanupTrackingFailures\";i:1648598401;s:56:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.notifyTrackingFailures\";i:1649030425;s:65:\"Piwik\\Plugins\\CoreUpdater\\Tasks.sendNotificationIfUpdateAvailable\";i:1648598401;}', 0),
('TransactionLevel.testOption', '1', 0),
('usercountry.location_provider', 'geoip2php', 0),
('usercountry.switchtoisoregions', '1647328940', 0),
('useridsalt', 'E$HbxLiS$rRwcsUp5$-TF1899vfsx_hj_mGi50ld', 1),
('UsersManager.lastSeen.3748521651', '1647328878', 1),
('version_Actions', '4.6.2', 1),
('version_Annotations', '4.6.2', 1),
('version_API', '4.6.2', 1),
('version_BulkTracking', '4.6.2', 1),
('version_Contents', '4.6.2', 1),
('version_core', '4.6.2', 1),
('version_CoreAdminHome', '4.6.2', 1),
('version_CoreConsole', '4.6.2', 1),
('version_CoreHome', '4.6.2', 1),
('version_CorePluginsAdmin', '4.6.2', 1),
('version_CoreUpdater', '4.6.2', 1),
('version_CoreVisualizations', '4.6.2', 1),
('version_CoreVue', '4.6.2', 1),
('version_CustomDimensions', '4.6.2', 1),
('version_CustomJsTracker', '4.6.2', 1),
('version_Dashboard', '4.6.2', 1),
('version_DevicePlugins', '4.6.2', 1),
('version_DevicesDetection', '4.6.2', 1),
('version_Diagnostics', '4.6.2', 1),
('version_Ecommerce', '4.6.2', 1),
('version_Events', '4.6.2', 1),
('version_GeoIp2', '4.6.2', 1),
('version_Goals', '4.6.2', 1),
('version_Heartbeat', '4.6.2', 1),
('version_ImageGraph', '4.6.2', 1),
('version_Insights', '4.6.2', 1),
('version_Installation', '4.6.2', 1),
('version_Intl', '4.6.2', 1),
('version_IntranetMeasurable', '4.6.2', 1),
('version_LanguagesManager', '4.6.2', 1),
('version_Live', '4.6.2', 1),
('version_Login', '4.6.2', 1),
('version_log_conversion.revenue', 'float default NULL', 1),
('version_log_link_visit_action.idaction_content_interaction', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idaction_content_name', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idaction_content_piece', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idaction_content_target', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idaction_event_action', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idaction_event_category', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idaction_name', 'INTEGER(10) UNSIGNED', 1),
('version_log_link_visit_action.idaction_product_cat', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_product_cat2', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_product_cat3', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_product_cat4', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_product_cat5', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_product_name', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_product_sku', 'INT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.idaction_url', 'INTEGER(10) UNSIGNED DEFAULT NULL', 1),
('version_log_link_visit_action.idpageview', 'CHAR(6) NULL DEFAULT NULL', 1),
('version_log_link_visit_action.product_price', 'DOUBLE NULL', 1),
('version_log_link_visit_action.search_cat', 'VARCHAR(200) NULL', 1),
('version_log_link_visit_action.search_count', 'INTEGER(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.server_time', 'DATETIME NOT NULL', 1),
('version_log_link_visit_action.time_dom_completion', 'MEDIUMINT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.time_dom_processing', 'MEDIUMINT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.time_network', 'MEDIUMINT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.time_on_load', 'MEDIUMINT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.time_server', 'MEDIUMINT(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.time_spent_ref_action', 'INTEGER(10) UNSIGNED NULL', 1),
('version_log_link_visit_action.time_transfer', 'MEDIUMINT(10) UNSIGNED NULL', 1),
('version_log_visit.config_browser_engine', 'VARCHAR(10) NULL', 1),
('version_log_visit.config_browser_name', 'VARCHAR(40) NULL1', 1),
('version_log_visit.config_browser_version', 'VARCHAR(20) NULL', 1),
('version_log_visit.config_client_type', 'TINYINT( 1 ) NULL DEFAULT NULL1', 1),
('version_log_visit.config_cookie', 'TINYINT(1) NULL', 1),
('version_log_visit.config_device_brand', 'VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1', 1),
('version_log_visit.config_device_model', 'VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1', 1),
('version_log_visit.config_device_type', 'TINYINT( 100 ) NULL DEFAULT NULL1', 1),
('version_log_visit.config_flash', 'TINYINT(1) NULL', 1),
('version_log_visit.config_java', 'TINYINT(1) NULL', 1),
('version_log_visit.config_os', 'CHAR(3) NULL', 1),
('version_log_visit.config_os_version', 'VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL', 1),
('version_log_visit.config_pdf', 'TINYINT(1) NULL', 1),
('version_log_visit.config_quicktime', 'TINYINT(1) NULL', 1),
('version_log_visit.config_realplayer', 'TINYINT(1) NULL', 1),
('version_log_visit.config_resolution', 'VARCHAR(18) NULL', 1),
('version_log_visit.config_silverlight', 'TINYINT(1) NULL', 1),
('version_log_visit.config_windowsmedia', 'TINYINT(1) NULL', 1),
('version_log_visit.location_browser_lang', 'VARCHAR(20) NULL', 1),
('version_log_visit.location_city', 'varchar(255) DEFAULT NULL1', 1),
('version_log_visit.location_country', 'CHAR(3) NULL1', 1),
('version_log_visit.location_latitude', 'decimal(9, 6) DEFAULT NULL1', 1),
('version_log_visit.location_longitude', 'decimal(9, 6) DEFAULT NULL1', 1),
('version_log_visit.location_region', 'char(3) DEFAULT NULL1', 1),
('version_log_visit.profilable', 'TINYINT(1) NULL', 1),
('version_log_visit.referer_keyword', 'VARCHAR(255) NULL1', 1),
('version_log_visit.referer_name', 'VARCHAR(255) NULL1', 1),
('version_log_visit.referer_type', 'TINYINT(1) UNSIGNED NULL1', 1),
('version_log_visit.referer_url', 'VARCHAR(1500) NULL', 1),
('version_log_visit.user_id', 'VARCHAR(200) NULL', 1),
('version_log_visit.visitor_count_visits', 'INT(11) UNSIGNED NOT NULL DEFAULT 01', 1),
('version_log_visit.visitor_localtime', 'TIME NULL', 1),
('version_log_visit.visitor_returning', 'TINYINT(1) NULL1', 1),
('version_log_visit.visitor_seconds_since_first', 'INT(11) UNSIGNED NULL1', 1),
('version_log_visit.visitor_seconds_since_last', 'INT(11) UNSIGNED NULL', 1),
('version_log_visit.visitor_seconds_since_order', 'INT(11) UNSIGNED NULL1', 1),
('version_log_visit.visit_entry_idaction_name', 'INTEGER(10) UNSIGNED NULL', 1),
('version_log_visit.visit_entry_idaction_url', 'INTEGER(11) UNSIGNED NULL  DEFAULT NULL', 1),
('version_log_visit.visit_exit_idaction_name', 'INTEGER(10) UNSIGNED NULL', 1),
('version_log_visit.visit_exit_idaction_url', 'INTEGER(10) UNSIGNED NULL DEFAULT 0', 1),
('version_log_visit.visit_first_action_time', 'DATETIME NOT NULL', 1),
('version_log_visit.visit_goal_buyer', 'TINYINT(1) NULL', 1),
('version_log_visit.visit_goal_converted', 'TINYINT(1) NULL', 1),
('version_log_visit.visit_total_actions', 'INT(11) UNSIGNED NULL', 1),
('version_log_visit.visit_total_events', 'INT(11) UNSIGNED NULL', 1),
('version_log_visit.visit_total_interactions', 'MEDIUMINT UNSIGNED DEFAULT 0', 1),
('version_log_visit.visit_total_searches', 'SMALLINT(5) UNSIGNED NULL', 1),
('version_log_visit.visit_total_time', 'INT(11) UNSIGNED NOT NULL', 1),
('version_MobileMessaging', '4.6.2', 1),
('version_Morpheus', '4.6.2', 1),
('version_Overlay', '4.6.2', 1),
('version_PagePerformance', '4.6.2', 1),
('version_PrivacyManager', '4.6.2', 1),
('version_Proxy', '4.6.2', 1),
('version_Referrers', '4.6.2', 1),
('version_Resolution', '4.6.2', 1),
('version_RssWidget', '1.0', 1),
('version_ScheduledReports', '4.6.2', 1),
('version_SegmentEditor', '4.6.2', 1),
('version_SEO', '4.6.2', 1),
('version_SitesManager', '4.6.2', 1),
('version_TagManager', '4.6.2', 1),
('version_Tour', '4.6.2', 1),
('version_Transitions', '4.6.2', 1),
('version_UserCountry', '4.6.2', 1),
('version_UserCountryMap', '4.6.2', 1),
('version_UserId', '4.6.2', 1),
('version_UserLanguage', '4.6.2', 1),
('version_UsersManager', '4.6.2', 1),
('version_VisitFrequency', '4.6.2', 1),
('version_VisitorInterest', '4.6.2', 1),
('version_VisitsSummary', '4.6.2', 1),
('version_VisitTime', '4.6.2', 1),
('version_WebsiteMeasurable', '4.6.2', 1),
('version_WordPress', '0.1.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_plugin_setting`
--

CREATE TABLE `wp_matomo_plugin_setting` (
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_login` varchar(100) NOT NULL DEFAULT '',
  `idplugin_setting` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_privacy_logdata_anonymizations`
--

CREATE TABLE `wp_matomo_privacy_logdata_anonymizations` (
  `idlogdata_anonymization` bigint(20) UNSIGNED NOT NULL,
  `idsites` text DEFAULT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `anonymize_ip` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `anonymize_location` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `anonymize_userid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `unset_visit_columns` text NOT NULL DEFAULT '',
  `unset_link_visit_action_columns` text NOT NULL DEFAULT '',
  `output` mediumtext DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `job_start_date` datetime DEFAULT NULL,
  `job_finish_date` datetime DEFAULT NULL,
  `requester` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_report`
--

CREATE TABLE `wp_matomo_report` (
  `idreport` int(11) NOT NULL,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text DEFAULT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `evolution_graph_within_period` tinyint(4) NOT NULL DEFAULT 0,
  `evolution_graph_period_n` int(11) NOT NULL,
  `period_param` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_report_subscriptions`
--

CREATE TABLE `wp_matomo_report_subscriptions` (
  `idreport` int(11) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ts_subscribed` timestamp NOT NULL DEFAULT current_timestamp(),
  `ts_unsubscribed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_segment`
--

CREATE TABLE `wp_matomo_segment` (
  `idsegment` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `hash` char(32) DEFAULT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT 0,
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT 0,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_sequence`
--

CREATE TABLE `wp_matomo_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_sequence`
--

INSERT INTO `wp_matomo_sequence` (`name`, `value`) VALUES
('wp_matomo_archive_numeric_2021_06', 0),
('wp_matomo_archive_numeric_2021_07', 0),
('wp_matomo_archive_numeric_2021_08', 0),
('wp_matomo_archive_numeric_2021_09', 0),
('wp_matomo_archive_numeric_2021_10', 0),
('wp_matomo_archive_numeric_2021_11', 0),
('wp_matomo_archive_numeric_2021_12', 0),
('wp_matomo_archive_numeric_2022_01', 15),
('wp_matomo_archive_numeric_2022_02', 0),
('wp_matomo_archive_numeric_2022_03', 52),
('wp_matomo_archive_numeric_2022_04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_session`
--

CREATE TABLE `wp_matomo_session` (
  `id` varchar(191) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_site`
--

CREATE TABLE `wp_matomo_site` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT 0,
  `sitesearch` tinyint(4) DEFAULT 1,
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT 0,
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT 0,
  `creator_login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_site`
--

INSERT INTO `wp_matomo_site` (`idsite`, `name`, `main_url`, `ts_created`, `ecommerce`, `sitesearch`, `sitesearch_keyword_parameters`, `sitesearch_category_parameters`, `timezone`, `currency`, `exclude_unknown_urls`, `excluded_ips`, `excluded_parameters`, `excluded_user_agents`, `group`, `type`, `keep_url_fragment`, `creator_login`) VALUES
(1, 'redsoberana.com', 'https://www.redsoberana.com/redsober', '2022-03-15 06:21:16', 1, 1, '', '', 'UTC', 'USD', 0, '', '', '', '', 'website', 0, 'super user was set');

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_site_setting`
--

CREATE TABLE `wp_matomo_site_setting` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `idsite_setting` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_site_url`
--

CREATE TABLE `wp_matomo_site_url` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `url` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tagmanager_container`
--

CREATE TABLE `wp_matomo_tagmanager_container` (
  `idcontainer` varchar(8) NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL,
  `context` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL DEFAULT '',
  `status` varchar(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tagmanager_container_release`
--

CREATE TABLE `wp_matomo_tagmanager_container_release` (
  `idcontainerrelease` bigint(20) NOT NULL,
  `idcontainer` varchar(8) NOT NULL,
  `idcontainerversion` bigint(20) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `environment` varchar(40) NOT NULL,
  `release_login` varchar(100) NOT NULL,
  `release_date` datetime NOT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tagmanager_container_version`
--

CREATE TABLE `wp_matomo_tagmanager_container_version` (
  `idcontainerversion` bigint(20) UNSIGNED NOT NULL,
  `idcontainer` varchar(8) NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `revision` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tagmanager_tag`
--

CREATE TABLE `wp_matomo_tagmanager_tag` (
  `idtag` bigint(20) UNSIGNED NOT NULL,
  `idcontainerversion` bigint(20) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `parameters` mediumtext NOT NULL DEFAULT '',
  `fire_trigger_ids` text NOT NULL DEFAULT '',
  `block_trigger_ids` text NOT NULL DEFAULT '',
  `fire_limit` varchar(20) NOT NULL DEFAULT 'unlimited',
  `priority` smallint(5) UNSIGNED NOT NULL,
  `fire_delay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tagmanager_trigger`
--

CREATE TABLE `wp_matomo_tagmanager_trigger` (
  `idtrigger` bigint(20) UNSIGNED NOT NULL,
  `idcontainerversion` bigint(20) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `parameters` mediumtext NOT NULL DEFAULT '',
  `conditions` mediumtext NOT NULL DEFAULT '',
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tagmanager_variable`
--

CREATE TABLE `wp_matomo_tagmanager_variable` (
  `idvariable` bigint(20) UNSIGNED NOT NULL,
  `idcontainerversion` bigint(20) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `parameters` mediumtext NOT NULL DEFAULT '',
  `lookup_table` mediumtext NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_tracking_failure`
--

CREATE TABLE `wp_matomo_tracking_failure` (
  `idsite` bigint(20) UNSIGNED NOT NULL,
  `idfailure` smallint(5) UNSIGNED NOT NULL,
  `date_first_occurred` datetime NOT NULL,
  `request_url` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_twofactor_recovery_code`
--

CREATE TABLE `wp_matomo_twofactor_recovery_code` (
  `idrecoverycode` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `recovery_code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_user`
--

CREATE TABLE `wp_matomo_user` (
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twofactor_secret` varchar(40) NOT NULL DEFAULT '',
  `superuser_access` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `date_registered` timestamp NULL DEFAULT NULL,
  `ts_password_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_user`
--

INSERT INTO `wp_matomo_user` (`login`, `password`, `email`, `twofactor_secret`, `superuser_access`, `date_registered`, `ts_password_modified`) VALUES
('3748521651', '$2y$10$QpeQHpuPK7RFGlQffVnswesbcLsmHmBKIVDYPM8ysCuMEQ.h1vNsa', 'info@redsoberana.com', '', 1, '2022-03-15 06:21:16', '2022-03-15 06:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_user_dashboard`
--

CREATE TABLE `wp_matomo_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_user_language`
--

CREATE TABLE `wp_matomo_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wp_matomo_user_language`
--

INSERT INTO `wp_matomo_user_language` (`login`, `language`, `use_12_hour_clock`) VALUES
('3748521651', 'es', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_matomo_user_token_auth`
--

CREATE TABLE `wp_matomo_user_token_auth` (
  `idusertokenauth` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `password` varchar(191) NOT NULL,
  `hash_algo` varchar(30) NOT NULL,
  `system_token` tinyint(1) NOT NULL DEFAULT 0,
  `last_used` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_matomo_user_token_auth`
--

INSERT INTO `wp_matomo_user_token_auth` (`idusertokenauth`, `login`, `description`, `password`, `hash_algo`, `system_token`, `last_used`, `date_created`, `date_expired`) VALUES
(2, '3748521651', 'System generated CliMultiNonAsyncArchive', '92d933f7307896fdb14f7b5d904eeb0c9de9605dd36a5b2cd08fbeaa808f677491649bd2c03a57a7a7c8b664de02118f4971bba880cf2621f23c74f8c9387571', 'sha512', 1, NULL, '2022-03-28 11:12:17', '2022-03-29 23:12:17'),
(3, '3748521651', 'System generated CliMultiNonAsyncArchive', 'c68165583421473853536d4cc208cc77c3842cf6c61f1053ff05fab171f1c8413e84292a633389ce881678befe510f056aecefaca638d62ef2af8b9a96038e47', 'sha512', 1, NULL, '2022-03-29 08:06:50', '2022-03-30 20:06:50'),
(4, '3748521651', 'System generated CliMultiNonAsyncArchive', '31e0246ed0493879d2af733b305e8a9dd35fc1f5f30bf133152cb4a1444f5582eb533fa9f17971bbbc419821fa3545c75ecb49a22488231ac8db8afe901b43bb', 'sha512', 1, NULL, '2022-03-29 09:42:47', '2022-03-30 21:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `label` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2022-03-29 10:06:19', '2022-03-29 10:06:19', 'Record Submission'),
(2, '', '', 'email', 1, 1, '2022-03-29 10:06:19', '2022-03-29 10:06:19', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2022-03-29 10:06:19', '2022-03-29 10:06:19', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2022-03-29 10:06:20', '2022-03-29 10:06:20', 'Success Message');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '', 'payment_total', ''),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(9, 1, 'email_subject', 'Presentación de formularios ninja', 'email_subject', 'Presentación de formularios ninja'),
(10, 1, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '', 'payment_total', ''),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '', 'payment_total', ''),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:nombre_1648571470079}', 'email_subject', 'New message from {field:nombre_1648571470079}'),
(49, 3, 'email_message', '<p>{field:mensage_1648571477615}</p><p>-{field:nombre_1648571470079} ( {field:email} )</p>', 'email_message', '<p>{field:mensage_1648571477615}</p><p>-{field:nombre_1648571470079} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:nombre_1648571470079} for filling out my form!', 'message', 'Thank you {field:nombre_1648571470079} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '', 'payment_total', ''),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(67, 4, 'email_subject', 'Presentación de formularios ninja', 'email_subject', 'Presentación de formularios ninja'),
(68, 4, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 4, 'from_address', '', 'from_address', ''),
(71, 4, 'reply_to', '', 'reply_to', ''),
(72, 4, 'email_format', 'html', 'email_format', 'html'),
(73, 4, 'cc', '', 'cc', ''),
(74, 4, 'bcc', '', 'bcc', ''),
(75, 4, 'attach_csv', '', 'attach_csv', ''),
(76, 4, 'redirect_url', '', 'redirect_url', ''),
(77, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(78, 4, 'email_message_plain', '', 'email_message_plain', ''),
(79, 1, 'success_msg', 'Tu formulario se ha enviado correctamente', 'success_msg', 'Tu formulario se ha enviado correctamente'),
(80, 1, 'submitter_email', '', 'submitter_email', ''),
(81, 1, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(82, 1, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(83, 1, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(84, 1, 'subs_expire_time', '90', 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext DEFAULT NULL,
  `field_key` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext DEFAULT NULL,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Nombre', 'nombre_1648571470079', 'textbox', 1, '2022-03-29 16:32:41', '2022-03-29 10:06:16', 'Nombre', 'nombre_1648571470079', 1, b'1', '', 'above', b'0'),
(2, 'Email', 'email', 'email', 1, '2022-03-29 16:32:41', '2022-03-29 10:06:17', 'Email', 'email', 2, b'1', '', 'above', b'1'),
(3, 'Mensage', 'mensage_1648571477615', 'textarea', 1, '2022-03-29 16:32:41', '2022-03-29 10:06:17', 'Mensage', 'mensage_1648571477615', 3, b'1', '', 'above', b'0'),
(4, 'Enviar mensaje', 'enviar_mensaje_1648571557066', 'submit', 1, '2022-03-29 16:32:41', '2022-03-29 10:06:18', 'Enviar mensaje', 'enviar_mensaje_1648571557066', 5, b'0', '', '', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'label_pos', 'above', 'label_pos', 'above'),
(2, 1, 'required', '1', 'required', '1'),
(3, 1, 'order', '1', 'order', '1'),
(4, 1, 'placeholder', '', 'placeholder', ''),
(5, 1, 'default', '', 'default', ''),
(6, 1, 'wrapper_class', '', 'wrapper_class', ''),
(7, 1, 'element_class', '', 'element_class', ''),
(8, 1, 'objectType', 'Field', 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(10, 1, 'editActive', '', 'editActive', ''),
(11, 1, 'container_class', '', 'container_class', ''),
(12, 1, 'input_limit', '', 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', '', 'manual_key', ''),
(16, 1, 'disable_input', '', 'disable_input', ''),
(17, 1, 'admin_label', '', 'admin_label', ''),
(18, 1, 'help_text', '', 'help_text', ''),
(19, 1, 'desc_text', '', 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(21, 1, 'mask', '', 'mask', ''),
(22, 1, 'custom_mask', '', 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', '', 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', '', 'label_styles_color', ''),
(42, 1, 'label_styles_height', '', 'label_styles_height', ''),
(43, 1, 'label_styles_width', '', 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(47, 1, 'label_styles_display', '', 'label_styles_display', ''),
(48, 1, 'label_styles_float', '', 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', '', 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', '', 'element_styles_color', ''),
(56, 1, 'element_styles_height', '', 'element_styles_height', ''),
(57, 1, 'element_styles_width', '', 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(61, 1, 'element_styles_display', '', 'element_styles_display', ''),
(62, 1, 'element_styles_float', '', 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above', 'label_pos', 'above'),
(67, 2, 'required', '1', 'required', '1'),
(68, 2, 'order', '2', 'order', '2'),
(69, 2, 'placeholder', '', 'placeholder', ''),
(70, 2, 'default', '', 'default', ''),
(71, 2, 'wrapper_class', '', 'wrapper_class', ''),
(72, 2, 'element_class', '', 'element_class', ''),
(73, 2, 'objectType', 'Field', 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(75, 2, 'editActive', '', 'editActive', ''),
(76, 2, 'container_class', '', 'container_class', ''),
(77, 2, 'admin_label', '', 'admin_label', ''),
(78, 2, 'help_text', '', 'help_text', ''),
(79, 2, 'desc_text', '', 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', '', 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', '', 'label_styles_color', ''),
(99, 2, 'label_styles_height', '', 'label_styles_height', ''),
(100, 2, 'label_styles_width', '', 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(104, 2, 'label_styles_display', '', 'label_styles_display', ''),
(105, 2, 'label_styles_float', '', 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', '', 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', '', 'element_styles_color', ''),
(113, 2, 'element_styles_height', '', 'element_styles_height', ''),
(114, 2, 'element_styles_width', '', 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(118, 2, 'element_styles_display', '', 'element_styles_display', ''),
(119, 2, 'element_styles_float', '', 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above', 'label_pos', 'above'),
(124, 3, 'required', '1', 'required', '1'),
(125, 3, 'order', '3', 'order', '3'),
(126, 3, 'placeholder', '', 'placeholder', ''),
(127, 3, 'default', '', 'default', ''),
(128, 3, 'wrapper_class', '', 'wrapper_class', ''),
(129, 3, 'element_class', '', 'element_class', ''),
(130, 3, 'objectType', 'Field', 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(132, 3, 'editActive', '', 'editActive', ''),
(133, 3, 'container_class', '', 'container_class', ''),
(134, 3, 'input_limit', '', 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', '', 'manual_key', ''),
(138, 3, 'disable_input', '', 'disable_input', ''),
(139, 3, 'admin_label', '', 'admin_label', ''),
(140, 3, 'help_text', '', 'help_text', ''),
(141, 3, 'desc_text', '', 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', '', 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', '', 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', '', 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', '', 'label_styles_color', ''),
(165, 3, 'label_styles_height', '', 'label_styles_height', ''),
(166, 3, 'label_styles_width', '', 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(170, 3, 'label_styles_display', '', 'label_styles_display', ''),
(171, 3, 'label_styles_float', '', 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', '', 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', '', 'element_styles_color', ''),
(179, 3, 'element_styles_height', '', 'element_styles_height', ''),
(180, 3, 'element_styles_width', '', 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(184, 3, 'element_styles_display', '', 'element_styles_display', ''),
(185, 3, 'element_styles_float', '', 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Procesando', 'processing_label', 'Procesando'),
(190, 4, 'order', '5', 'order', '5'),
(191, 4, 'objectType', 'Field', 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(193, 4, 'editActive', '', 'editActive', ''),
(194, 4, 'container_class', '', 'container_class', ''),
(195, 4, 'element_class', '', 'element_class', ''),
(196, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', '', 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', '', 'label_styles_color', ''),
(215, 4, 'label_styles_height', '', 'label_styles_height', ''),
(216, 4, 'label_styles_width', '', 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(220, 4, 'label_styles_display', '', 'label_styles_display', ''),
(221, 4, 'label_styles_float', '', 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', '', 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', '', 'element_styles_color', ''),
(229, 4, 'element_styles_height', '', 'element_styles_height', ''),
(230, 4, 'element_styles_width', '', 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(234, 4, 'element_styles_display', '', 'element_styles_display', ''),
(235, 4, 'element_styles_float', '', 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(253, 1, 'field_label', 'Name', 'field_label', 'Name'),
(254, 1, 'field_key', 'name', 'field_key', 'name'),
(255, 2, 'field_label', 'Email', 'field_label', 'Email'),
(256, 2, 'field_key', 'email', 'field_key', 'email'),
(257, 3, 'field_label', 'Message', 'field_label', 'Message'),
(258, 3, 'field_key', 'message', 'field_key', 'message'),
(259, 4, 'field_label', 'Submit', 'field_label', 'Submit'),
(260, 4, 'field_key', 'submit', 'field_key', 'submit'),
(261, 1, 'idAttribute', 'id', 'idAttribute', 'id'),
(262, 1, 'label', 'Nombre', 'label', 'Nombre'),
(263, 1, 'key', 'nombre_1648571470079', 'key', 'nombre_1648571470079'),
(264, 1, 'type', 'textbox', 'type', 'textbox'),
(265, 1, 'created_at', '2022-03-29 10:06:16', 'created_at', '2022-03-29 10:06:16'),
(266, 1, 'custom_name_attribute', '', 'custom_name_attribute', ''),
(267, 1, 'personally_identifiable', '', 'personally_identifiable', ''),
(268, 1, 'value', '', 'value', ''),
(269, 2, 'idAttribute', 'id', 'idAttribute', 'id'),
(270, 2, 'label', 'Email', 'label', 'Email'),
(271, 2, 'key', 'email', 'key', 'email'),
(272, 2, 'type', 'email', 'type', 'email'),
(273, 2, 'created_at', '2022-03-29 10:06:17', 'created_at', '2022-03-29 10:06:17'),
(274, 2, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(275, 2, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(276, 2, 'value', '', 'value', ''),
(277, 3, 'idAttribute', 'id', 'idAttribute', 'id'),
(278, 3, 'label', 'Mensage', 'label', 'Mensage'),
(279, 3, 'key', 'mensage_1648571477615', 'key', 'mensage_1648571477615'),
(280, 3, 'type', 'textarea', 'type', 'textarea'),
(281, 3, 'created_at', '2022-03-29 10:06:17', 'created_at', '2022-03-29 10:06:17'),
(282, 3, 'value', '', 'value', ''),
(283, 3, 'drawerDisabled', '', 'drawerDisabled', ''),
(284, 4, 'idAttribute', 'id', 'idAttribute', 'id'),
(285, 4, 'label', 'Enviar mensaje', 'label', 'Enviar mensaje'),
(286, 4, 'key', 'enviar_mensaje_1648571557066', 'key', 'enviar_mensaje_1648571557066'),
(287, 4, 'type', 'submit', 'type', 'submit'),
(288, 4, 'created_at', '2022-03-29 10:06:18', 'created_at', '2022-03-29 10:06:18'),
(289, 4, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext DEFAULT NULL,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2022-03-29 16:42:14', '2022-03-29 10:06:15', NULL, NULL, 'Contact Me', 'above', b'0', b'1', b'1', b'0', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2022-03-29 10:06:15', 'created_at', '2022-03-29 10:06:15'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '1', 'editActive', '1'),
(7, 1, 'show_title', '0', 'show_title', '0'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;s:20:\"nombre_1648571470079\";i:1;s:5:\"email\";i:2;s:21:\"mensage_1648571477615\";i:3;s:28:\"enviar_mensaje_1648571557066\";}', 'formContentData', 'a:4:{i:0;s:20:\"nombre_1648571470079\";i:1;s:5:\"email\";i:2;s:21:\"mensage_1648571477615\";i:3;s:28:\"enviar_mensaje_1648571557066\";}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 1, '_seq_num', '3', '_seq_num', '3'),
(100, 1, 'allow_public_link', '0', 'allow_public_link', '0'),
(101, 1, 'embed_form', '', 'embed_form', ''),
(102, 1, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(103, 1, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(104, 1, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(105, 1, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(106, 1, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(107, 1, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(108, 1, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(109, 1, 'validateRequiredField', '', 'validateRequiredField', ''),
(110, 1, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(111, 1, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', ''),
(112, 1, 'currency', '', 'currency', ''),
(113, 1, 'repeatable_fieldsets', '', 'repeatable_fieldsets', ''),
(114, 1, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(115, 1, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 0,
  `maintenance` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`, `maintenance`) VALUES
(1, 'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:73:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"1\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:6:\"Nombre\";s:3:\"key\";s:20:\"nombre_1648571470079\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2022-03-29 10:06:16\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:65:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"2\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2022-03-29 10:06:17\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:73:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"3\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:7:\"Mensage\";s:3:\"key\";s:21:\"mensage_1648571477615\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2022-03-29 10:06:17\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:70:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"5\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:14:\"Enviar mensaje\";s:3:\"key\";s:28:\"enviar_mensaje_1648571557066\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2022-03-29 10:06:18\";s:16:\"processing_label\";s:10:\"Procesando\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-03-29 12:06:19\";s:5:\"label\";s:17:\"Record Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:34:\"Presentación de formularios ninja\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:11:\"success_msg\";s:41:\"Tu formulario se ha enviado correctamente\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-03-29 12:06:19\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-03-29 12:06:19\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:45:\"New message from {field:nombre_1648571470079}\";s:13:\"email_message\";s:90:\"<p>{field:mensage_1648571477615}</p><p>-{field:nombre_1648571470079} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:26:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-03-29 12:06:20\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:63:\"Thank you {field:nombre_1648571470079} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:34:\"Presentación de formularios ninja\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:115:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2022-03-29 10:06:15\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";i:0;s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:20:\"nombre_1648571470079\";i:1;s:5:\"email\";i:2;s:21:\"mensage_1648571477615\";i:3;s:28:\"enviar_mensaje_1648571557066\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:20:\"repeatable_fieldsets\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://redsoberana.com', 'yes'),
(2, 'home', 'https://redsoberana.com', 'yes'),
(3, 'blogname', 'redsoberana.com', 'yes'),
(4, 'blogdescription', 'Red de sitios soberanos', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@redsoberana.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:16:\".*wp-signup.php$\";s:21:\"index.php?signup=true\";s:18:\".*wp-activate.php$\";s:23:\"index.php?activate=true\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:\"/usr/home/redsoberana.com/web/redsober/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'frost', 'yes'),
(41, 'stylesheet', 'frost', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1684339205', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:16:\"matomo_view_role\";a:2:{s:4:\"name\";s:11:\"Matomo View\";s:12:\"capabilities\";a:1:{s:11:\"view_matomo\";b:1;}}s:17:\"matomo_write_role\";a:2:{s:4:\"name\";s:12:\"Matomo Write\";s:12:\"capabilities\";a:1:{s:12:\"write_matomo\";b:1;}}s:17:\"matomo_admin_role\";a:2:{s:4:\"name\";s:12:\"Matomo Admin\";s:12:\"capabilities\";a:1:{s:12:\"admin_matomo\";b:1;}}s:21:\"matomo_superuser_role\";a:2:{s:4:\"name\";s:17:\"Matomo Super User\";s:12:\"capabilities\";a:1:{s:16:\"superuser_matomo\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'es_ES', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:11:{i:1669644749;a:1:{s:21:\"update_network_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1669645156;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1669663156;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1669706356;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669706371;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669706372;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669716381;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1669716385;a:1:{s:26:\"nf_weekly_promotion_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1669792756;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1669975606;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1648570805;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'https_detection_errors', 'a:0:{}', 'yes'),
(142, 'can_compress_scripts', '0', 'no'),
(155, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":2,\"critical\":3}', 'yes'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(160, 'auto_update_plugins', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:17:\"matomo/matomo.php\";}', 'no'),
(163, 'auto_update_themes', 'a:3:{i:0;s:15:\"twentytwentytwo\";i:1;s:12:\"twentytwenty\";i:2;s:15:\"twentytwentyone\";}', 'no'),
(168, 'matomo-referral-dismissed', '1644736874', 'yes'),
(170, 'matomo-global-option', 'a:5:{s:15:\"version_history\";a:1:{i:0;s:5:\"4.6.0\";}s:12:\"core_version\";s:5:\"4.6.2\";s:29:\"last_tracking_settings_update\";i:1648465950;s:10:\"track_mode\";s:7:\"default\";s:20:\"last_settings_update\";i:1648465950;}', 'yes'),
(171, 'matomo-option', 'a:3:{s:13:\"tracking_code\";s:581:\"<!-- Matomo --><script>\nvar _paq = window._paq = window._paq || [];\n_paq.push([\'trackPageView\']);_paq.push([\'enableLinkTracking\']);_paq.push([\'alwaysUseSendBeacon\']);_paq.push([\'setTrackerUrl\', \"\\/\\/www.redsoberana.com\\/redsober\\/wp-content\\/plugins\\/matomo\\/app\\/matomo.php\"]);_paq.push([\'setSiteId\', \'1\']);var d=document, g=d.createElement(\'script\'), s=d.getElementsByTagName(\'script\')[0];\ng.type=\'text/javascript\'; g.async=true; g.src=\"\\/\\/www.redsoberana.com\\/redsober\\/wp-content\\/uploads\\/matomo\\/matomo.js\"; s.parentNode.insertBefore(g,s);\n</script>\n<!-- End Matomo Code -->\";s:13:\"noscript_code\";s:0:\"\";s:25:\"last_tracking_code_update\";i:1648541200;}', 'yes'),
(172, 'matomo-install-date', '1647328876', 'yes'),
(173, 'matomo-install-version', '4.6.0', 'yes'),
(174, 'matomo-site-id-1', '1', 'no'),
(175, 'matomo-user-login-1', '3748521651', 'yes'),
(176, 'matomo-matomo_salt', 'jxw34fb8d4m2eyz3onirowplutyhpbni', 'yes'),
(180, 'matomo-roles-setup', '1', 'yes'),
(181, 'matomo-plugin-version-matomo', '4.6.0', 'yes'),
(183, 'matomo-before-cron-matomo_scheduled_archive', '1648546957', 'yes'),
(184, 'matomo-after-cron-matomo_scheduled_archive', '1648546975', 'yes'),
(186, 'matomo-before-cron-matomo_scheduled_geoipdb', '1647328944', 'yes'),
(187, 'matomo-after-cron-matomo_scheduled_geoipdb', '1647328946', 'yes'),
(189, 'matomo-before-cron-matomo_scheduled_sync', '1648541224', 'yes'),
(190, 'matomo-after-cron-matomo_scheduled_sync', '1648541224', 'yes'),
(251, 'ninja_forms_oauth_client_secret', 'ArcmDk5JCqNKOquDdbkhQFiGJL7k5OS1nLkXKXIo', 'yes'),
(252, 'ninja_forms_version', '3.6.9', 'yes'),
(253, 'ninja_forms_db_version', '1.4', 'no'),
(254, 'ninja_forms_required_updates', 'a:6:{s:19:\"CacheCollateActions\";s:19:\"2022-03-29 10:06:15\";s:17:\"CacheCollateForms\";s:19:\"2022-03-29 10:06:15\";s:18:\"CacheCollateFields\";s:19:\"2022-03-29 10:06:15\";s:19:\"CacheCollateObjects\";s:19:\"2022-03-29 10:06:15\";s:19:\"CacheCollateCleanup\";s:19:\"2022-03-29 10:06:15\";s:25:\"CacheFieldReconcilliation\";s:19:\"2022-03-29 10:06:15\";}', 'yes'),
(255, 'ninja_forms_settings', 'a:11:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:20:\"recaptcha_site_key_3\";s:0:\"\";s:22:\"recaptcha_secret_key_3\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;s:16:\"builder_dev_mode\";i:0;s:18:\"opinionated_styles\";s:5:\"light\";}', 'yes'),
(256, 'ninja_forms_zuul', '11', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(259, 'ninja_forms_addons_feed', '[{\"title\":\"Multi Step Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-step-forms.png\",\"content\":\"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.10\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Mailchimp\",\"image\":\"assets\\/img\\/add-ons\\/mailchimp.png\",\"content\":\"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs\",\"version\":\"3.3.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.6\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.5.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 4,000 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.3.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.4\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"Formstack Documents\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"SMS Notifications\",\"slug\":\"sms-notifications\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"SMS Notifications\",\"slug\":\"sms-notifications\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.25\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Pipeline CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with Pipeline CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pipeline+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pipeline+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"ActiveCampaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Agency Membership\",\"image\":\"assets\\/img\\/add-ons\\/ninja-forms-membership-bundle-2.png\",\"content\":\"Get every single Ninja Forms add-ons, at an amazingly discounted price.\",\"link\":\"https:\\/\\/ninjaforms.com\\/documentation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Agency+Membership\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/documentation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Agency+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":\"Deprecated\",\"slug\":\"deprecated\"}]},{\"title\":\"Personal Membership\",\"image\":\"assets\\/img\\/add-ons\\/individual-membership-2.png\",\"content\":\"Get our most popular add-ons at an amazingly discounted price. Perfect for the single site owner.\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Personal+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Personal+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":\"Deprecated\",\"slug\":\"deprecated\"}]},{\"title\":\"Professional Membership\",\"image\":\"assets\\/img\\/add-ons\\/professional-membership-2.png\",\"content\":\"Get our 4 most popular add-ons at an amazingly discounted price. Perfect for your Do It Yourself business owner.\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Professional+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Professional+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":\"Deprecated\",\"slug\":\"deprecated\"}]},{\"title\":\"Basic Membership\",\"image\":\"assets\\/img\\/add-ons\\/basic-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Basic+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Basic+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Plus Membership\",\"image\":\"assets\\/img\\/add-ons\\/plus-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Plus+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Plus+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Pro Membership\",\"image\":\"assets\\/img\\/add-ons\\/pro-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pro+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pro+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Elite Membership\",\"image\":\"assets\\/img\\/add-ons\\/elite-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elite+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elite+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Scheduled Submissions Export\",\"image\":\"assets\\/img\\/add-ons\\/scheduled-submissions-export.png\",\"content\":\"Use Scheduled Submissions Export to set hourly, daily, or weekly exports of any WordPress form submissions to any email address(es)!\",\"link\":\" https:\\/\\/ninjaforms.com\\/extensions\\/scheduled-submissions-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Scheduled+Submissions+Export\",\"plugin\":\"ninja-forms-scheduled-exports\\/ninja-forms-scheduled-exports.php\",\"docs\":\" https:\\/\\/ninjaforms.com\\/docs\\/scheduled-submissions-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Scheduled+Submissions+Export+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"CiviCRM\",\"image\":\"assets\\/img\\/add-ons\\/civicrm.png\",\"content\":\"Connect & update your CiviCRM account from any WordPress form with the Ninja Forms CiviCRM add-on. Easily add or update Contacts & Activities!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/civicrm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CiviCRM\",\"plugin\":\"ninja-forms-civicrm\\/ninja-forms-civicrm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/civicrm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CiviCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Add file upload fields to any WordPress form. Set allowed file types, sizes, upload directories and save to WordPress, Google Drive and more.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.3.14\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Let users register, login, & manage profiles with customizable form templates. Allow user roles to view or edit form submissions. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Edit form styles. Create two column forms. Multi column forms. Easily adjust form layout. You don\'t need a designer, just Layout and Styles!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.29\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Use Stripe Checkout forms to sell products or subscriptions. Accept credit cards, Google Pay, Apple Pay, & much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.2.2\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Create forms that change as they\'re filled out. Show and hide fields, modify lists, send email to different recipients conditionally and much more.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.1\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Use PDF Form Submission to generate a PDF from any WordPress form submission. Create a fully customizable, fillable PDF from top to bottom!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]}]', 'no'),
(260, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'ninja-forms-views-secret', 'wEeOkfVwCCTvOuRx5ZHob9OW0BL5CW8YEHVIHtNw', 'yes'),
(263, 'ninja_forms_needs_updates', '0', 'yes'),
(264, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:3:{s:5:\"start\";s:8:\"4/5/2022\";s:3:\"int\";i:7;s:9:\"dismissed\";i:1;}}', 'yes'),
(267, 'nf_form_tel_data', '1', 'no'),
(268, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(269, 'ninja_forms_optin_reported', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(274, 'nf_active_promotions', '{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/redsoberana.com\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/redsoberana.com\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/redsoberana.com\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}', 'no'),
(275, 'nf_form_tel_sent', 'true', 'no'),
(280, 'dismissed_update_core', 'a:1:{s:11:\"5.9.2|es_ES\";b:1;}', 'no'),
(291, 'new_admin_email', 'info@redsoberana.com', 'yes'),
(334, 'current_theme', 'Frost', 'yes'),
(335, 'theme_mods_avant-garde', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650366227;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(336, 'theme_switched', '', 'yes'),
(363, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(368, '_wp_suggested_policy_text_has_changed', 'changed', 'yes'),
(796, '_site_transient_timeout_php_check_1d343e7f9aee33bb3a30d3fe7077ec03', '1649843628', 'no'),
(797, '_site_transient_php_check_1d343e7f9aee33bb3a30d3fe7077ec03', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(873, '_site_transient_timeout_available_translations', '1649349927', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(874, '_site_transient_available_translations', 'a:128:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-02 19:28:57\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-24 06:01:42\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.20/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-29 12:06:55\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-31 23:04:39\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 09:05:54\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 19:47:03\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-31 09:09:16\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-25 09:25:03\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-01-24 12:22:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.9.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 09:14:58\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 09:15:40\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.9.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-01-24 12:26:13\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-17 12:58:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 09:37:19\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 12:16:36\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 04:45:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 22:35:50\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 10:50:39\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 08:44:40\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 04:42:59\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 04:45:11\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 04:41:53\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-07-30 00:35:05\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 04:44:22\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.15/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 14:14:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-28 00:39:08\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-06 18:28:40\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-03 21:39:42\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-20 16:34:11\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-22 17:24:14\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-01 20:02:47\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-05 18:53:50\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 16:36:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.27\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.27/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-14 22:20:29\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-05 09:21:50\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 09:38:59\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-05 08:34:00\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-22 09:07:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 08:09:26\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-29 23:58:18\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-01-24 08:56:29\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 17:50:21\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.15/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-23 01:39:33\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-02 01:11:00\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.4/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 15:22:04\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-17 12:19:10\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"5.5.9\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.9/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-31 01:41:17\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-18 17:18:02\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 12:50:43\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-20 07:46:40\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.9.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-05 08:58:24\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 05:34:07\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.28\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.28/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-31 16:27:44\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 09:32:49\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-27 16:28:47\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 16:36:19\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 14:45:05\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.10/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-23 08:05:13\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-01-24 13:37:43\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-02-01 10:20:40\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 20:07:24\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-04 13:36:02\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.12\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.12/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-28 02:58:38\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.19/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-06 13:13:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2022-03-06 15:05:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.10/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-30 13:50:02\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-14 15:03:38\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-03-18 15:13:38\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-04-01 20:41:20\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(875, '_site_transient_timeout_browser_435743ed54ceb30628e45b8b4c69aa8c', '1649943975', 'no'),
(876, '_site_transient_browser_435743ed54ceb30628e45b8b4c69aa8c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"100.0.4896.79\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(877, '_site_transient_timeout_community-events-3780977180a0d60c7c84c64bc99997ce', '1649382377', 'no'),
(878, '_site_transient_community-events-3780977180a0d60c7c84c64bc99997ce', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"81.184.142.0\";}s:6:\"events\";a:3:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2022/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2022-06-02 00:00:00\";s:8:\"end_date\";s:19:\"2022-06-04 00:00:00\";s:20:\"start_unix_timestamp\";i:1654124400;s:18:\"end_unix_timestamp\";i:1654297200;s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Porto\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.146999999999998;s:9:\"longitude\";d:-8.625;}}i:1;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:56:\"Procesos de diseño web con clientes con Carlota Galván\";s:3:\"url\";s:69:\"https://www.meetup.com/Torrelodones-WordPress-Meetup/events/285104500\";s:6:\"meetup\";s:29:\"Torrelodones WordPress Meetup\";s:10:\"meetup_url\";s:53:\"https://www.meetup.com/Torrelodones-WordPress-Meetup/\";s:4:\"date\";s:19:\"2022-04-26 18:30:00\";s:8:\"end_date\";s:19:\"2022-04-26 20:00:00\";s:20:\"start_unix_timestamp\";i:1650990600;s:18:\"end_unix_timestamp\";i:1650996000;s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Torrelodones, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.575699999999998;s:9:\"longitude\";d:-3.9501080000000002;}}i:2;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Irun\";s:3:\"url\";s:31:\"https://irun.wordcamp.org/2022/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2022-05-21 00:00:00\";s:8:\"end_date\";s:19:\"2022-05-22 00:00:00\";s:20:\"start_unix_timestamp\";i:1653084000;s:18:\"end_unix_timestamp\";i:1653170400;s:8:\"location\";a:4:{s:8:\"location\";s:11:\"Irun, Spain\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:43.339145500000001;s:9:\"longitude\";d:-1.7807761;}}}}', 'no'),
(889, '_site_transient_timeout_theme_roots', '1649340981', 'no'),
(890, '_site_transient_theme_roots', 'a:5:{s:11:\"avant-garde\";s:7:\"/themes\";s:5:\"frost\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(903, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1649340580;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:17:\"matomo/matomo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"w.org/plugins/matomo\";s:4:\"slug\";s:6:\"matomo\";s:6:\"plugin\";s:17:\"matomo/matomo.php\";s:11:\"new_version\";s:5:\"4.6.0\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/matomo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/matomo.4.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/matomo/assets/icon-256x256.png?rev=2309115\";s:2:\"1x\";s:59:\"https://ps.w.org/matomo/assets/icon-128x128.png?rev=2309115\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/matomo/assets/banner-1544x500.png?rev=2309115\";s:2:\"1x\";s:61:\"https://ps.w.org/matomo/assets/banner-772x250.png?rev=2309115\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/matomo/assets/banner-1544x500-rtl.png?rev=2309115\";s:2:\"1x\";s:65:\"https://ps.w.org/matomo/assets/banner-772x250-rtl.png?rev=2309115\";}s:8:\"requires\";s:3:\"4.8\";}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:5:\"3.6.9\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/ninja-forms.3.6.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:17:\"matomo/matomo.php\";s:5:\"4.6.0\";s:27:\"ninja-forms/ninja-forms.php\";s:5:\"3.6.9\";}}', 'no'),
(904, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1649340262;s:7:\"checked\";a:5:{s:11:\"avant-garde\";s:5:\"1.0.3\";s:5:\"frost\";s:5:\"0.9.1\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:11:\"avant-garde\";a:6:{s:5:\"theme\";s:11:\"avant-garde\";s:11:\"new_version\";s:5:\"1.0.3\";s:3:\"url\";s:41:\"https://wordpress.org/themes/avant-garde/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/avant-garde.1.0.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(907, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1649340263;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1499, 'theme_mods_frost', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(10616, '_transient_timeout_global_styles_frost', '1669643768', 'no'),
(10617, '_transient_global_styles_frost', 'body{--wp--preset--color--black: #000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #fff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--primary: #990099;--wp--preset--color--secondary: #0099ff;--wp--preset--color--tertiary: #00cccc;--wp--preset--color--gray: #eee;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--gradient--black-primary: linear-gradient(135deg,rgb(0,0,0) 50%,rgb(153,0,153) 100%);--wp--preset--gradient--black-secondary: linear-gradient(135deg,rgb(0,0,0) 50%,rgb(0,153,255) 100%);--wp--preset--gradient--black-tertiary: linear-gradient(135deg,rgb(0,0,0) 50%,rgb(0,204,204) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 16px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 24px;--wp--preset--font-size--x-large: 30px;--wp--preset--font-size--max-36: clamp(24px, 3vw, 36px);--wp--preset--font-size--max-48: clamp(30px, 4vw, 48px);--wp--preset--font-size--max-60: clamp(36px, 5vw, 60px);--wp--preset--font-size--max-72: clamp(48px, 6vw, 72px);--wp--preset--font-family--primary: \"Jost\", sans-serif;--wp--preset--font-family--secondary: \"Outfit\", sans-serif;--wp--preset--font-family--monospace: monospace;--wp--custom--font-weight--thin: 100;--wp--custom--font-weight--extra-light: 200;--wp--custom--font-weight--light: 300;--wp--custom--font-weight--regular: 400;--wp--custom--font-weight--medium: 500;--wp--custom--font-weight--semi-bold: 600;--wp--custom--font-weight--bold: 700;--wp--custom--font-weight--extra-bold: 800;--wp--custom--font-weight--black: 900;--wp--custom--line-height--one: 1;--wp--custom--line-height--heading: 1.1;--wp--custom--line-height--medium: 1.5;--wp--custom--line-height--body: 1.75;--wp--custom--spacing--outer: 30px;}body { margin: 0; }body{background-color: var(--wp--preset--color--white);color: var(--wp--preset--color--black);font-family: var(--wp--preset--font-family--primary);font-size: var(--wp--preset--font-size--medium);font-weight: var(--wp--custom--font-weight--regular);line-height: var(--wp--custom--line-height--body);--wp--style--block-gap: 30px;}.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.wp-site-blocks > * { margin-top: 0; margin-bottom: 0; }.wp-site-blocks > * + * { margin-top: var( --wp--style--block-gap ); }h1{font-size: var(--wp--preset--font-size--x-large);}h2{font-size: var(--wp--preset--font-size--large);}h3{font-size: var(--wp--preset--font-size--large);}h4{font-size: var(--wp--preset--font-size--medium);}h5{font-size: var(--wp--preset--font-size--small);}h6{font-size: var(--wp--preset--font-size--small);}a{color: var(--wp--preset--color--black);}.wp-block-button__link{background-color: var(--wp--preset--color--black);border-radius: 0;border-color: var(--wp--preset--color--black);border-width: 1px;border-style: solid;color: var(--wp--preset--color--white);font-size: var(--wp--preset--font-size--small);font-weight: var(--wp--custom--font-weight--medium);padding-top: 10px;padding-right: 25px;padding-bottom: 10px;padding-left: 25px;}.wp-block-calendar{font-size: var(--wp--preset--font-size--small);}.wp-block-code > code{background-color: var(--wp--preset--color--black);border-radius: 0;border-color: var(--wp--preset--color--black);color: var(--wp--preset--color--white);font-family: var(--wp--preset--font-family--monospace);font-size: var(--wp--preset--font-size--small);padding-top: 25px;padding-right: 30px;padding-bottom: 25px;padding-left: 30px;}.wp-block-columns{margin-bottom: 0px;}.wp-block-cover{padding-top: 30px;padding-right: 30px;padding-bottom: 30px;padding-left: 30px;}.wp-block-group{padding: 0px;}h1,h2,h3,h4,h5,h6{font-family: var(--wp--preset--font-family--secondary);font-weight: var(--wp--custom--font-weight--medium);line-height: var(--wp--custom--line-height--heading);margin-top: 0px;margin-bottom: 10px;}.wp-block-image{margin-bottom: 30px;}.wp-block-navigation{font-size: var(--wp--preset--font-size--small);}p{margin-top: 0px;margin-bottom: 30px;}.wp-block-post-title{font-size: var(--wp--preset--font-size--x-large);}.wp-block-preformatted{background-color: var(--wp--preset--color--black);border-radius: 0;border-color: var(--wp--preset--color--black);color: var(--wp--preset--color--white);font-family: var(--wp--preset--font-family--monospace);font-size: var(--wp--preset--font-size--small);padding-top: 25px;padding-right: 30px;padding-bottom: 25px;padding-left: 30px;}.wp-block-pullquote{border-color: var(--wp--preset--color--black);border-width: 1px;border-style: solid;padding-top: 30px;padding-right: 30px;padding-bottom: 30px;padding-left: 30px;}.wp-block-quote{border-color: var(--wp--preset--color--black);border-width: 1px;border-style: solid;line-height: var(--wp--custom--line-height--medium);margin-bottom: 35px;padding-top: 30px;padding-right: 40px;padding-bottom: 30px;padding-left: 40px;}.wp-block-spacer{margin-top: 0 !important;}.wp-block-separator{color: var(--wp--preset--color--black);font-size: var(--wp--preset--font-size--large);}.wp-block-site-tagline{font-size: var(--wp--preset--font-size--small);margin-bottom: 20px;}.wp-block-site-title{font-size: var(--wp--preset--font-size--large);font-weight: var(--wp--custom--font-weight--medium);line-height: var(--wp--custom--line-height--one);}.wp-block-table > table{font-size: var(--wp--preset--font-size--small);}.wp-block-template-part{margin-top: 0px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-primary-color{color: var(--wp--preset--color--primary) !important;}.has-secondary-color{color: var(--wp--preset--color--secondary) !important;}.has-tertiary-color{color: var(--wp--preset--color--tertiary) !important;}.has-gray-color{color: var(--wp--preset--color--gray) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-primary-background-color{background-color: var(--wp--preset--color--primary) !important;}.has-secondary-background-color{background-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-background-color{background-color: var(--wp--preset--color--tertiary) !important;}.has-gray-background-color{background-color: var(--wp--preset--color--gray) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-primary-border-color{border-color: var(--wp--preset--color--primary) !important;}.has-secondary-border-color{border-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-border-color{border-color: var(--wp--preset--color--tertiary) !important;}.has-gray-border-color{border-color: var(--wp--preset--color--gray) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-black-primary-gradient-background{background: var(--wp--preset--gradient--black-primary) !important;}.has-black-secondary-gradient-background{background: var(--wp--preset--gradient--black-secondary) !important;}.has-black-tertiary-gradient-background{background: var(--wp--preset--gradient--black-tertiary) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.has-max-36-font-size{font-size: var(--wp--preset--font-size--max-36) !important;}.has-max-48-font-size{font-size: var(--wp--preset--font-size--max-48) !important;}.has-max-60-font-size{font-size: var(--wp--preset--font-size--max-60) !important;}.has-max-72-font-size{font-size: var(--wp--preset--font-size--max-72) !important;}.has-primary-font-family{font-family: var(--wp--preset--font-family--primary) !important;}.has-secondary-font-family{font-family: var(--wp--preset--font-family--secondary) !important;}.has-monospace-font-family{font-family: var(--wp--preset--font-family--monospace) !important;}', 'no'),
(10618, '_transient_timeout_global_styles_svg_filters_frost', '1669643768', 'no'),
(10619, '_transient_global_styles_svg_filters_frost', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'blank'),
(2, 3, '_wp_page_template', 'default'),
(5, 2, '_edit_lock', '1651655591:1'),
(6, 2, '_edit_last', '1'),
(7, 9, '_field_1', 'Test'),
(8, 9, '_field_2', 'david.ballarin@gmail.com'),
(9, 9, '_field_3', 'test'),
(10, 9, '_form_id', '1'),
(11, 9, '_seq_num', '1'),
(16, 16, 'origin', 'theme'),
(17, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:4750:\"<h2>Quiénes somos</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: https://redsoberana.com.</p><h2>Comentarios</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><h2>Medios</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><h2>Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><h2>Contenido incrustado de otros sitios web</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><h2>Con quién compartimos tus datos</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><h2>Cuánto tiempo conservamos tus datos</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><h2>Qué derechos tienes sobre tus datos</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><h2>Dónde enviamos tus datos</h2><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\";s:5:\"added\";i:1648571980;}'),
(18, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:11:\"Ninja Forms\";s:11:\"policy_text\";s:192:\"<h2>Ninja Forms allows you to collect personal information</h2>\n<p>If you are using Ninja Forms to collect personal information, you should consult a legal professional for your use case.</p>\n\";s:5:\"added\";i:1648571980;}'),
(19, 17, '_field_1', 'Test'),
(20, 17, '_field_2', 'david.ballarin@gmail.com'),
(21, 17, '_field_3', 'test'),
(22, 17, '_form_id', '1'),
(23, 17, '_seq_num', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2022-03-15 07:19:16', '2022-03-15 07:19:16', '<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Bienvenida / bienvenido a la red soberana</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"45px\"} -->\n<div style=\"height:45px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>La red ibérica de páginas y aplicaciones web vinculadas a la soberanía y a la ley natural. En breve tendrás más información al respecto.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El objetivo de la redsoberana es promocionar la cultura del intercambio, de la soberanía y la libertatd en todos los ambitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La red soberana es una página web WordPress \'<em>multisite</em>\'.</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2022-05-04 09:11:55', '2022-05-04 09:11:55', '', 0, 'http://www.redsoberana.com/redsober/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-03-15 07:19:16', '2022-03-15 07:19:16', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://www.redsoberana.com/redsober.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2022-03-15 07:19:16', '2022-03-15 07:19:16', '', 0, 'http://www.redsoberana.com/redsober/?page_id=3', 0, 'page', '', 0),
(6, 1, '2022-03-29 09:46:56', '2022-03-29 09:46:56', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-03-29 09:46:56', '2022-03-29 09:46:56', '', 0, 'https://www.redsoberana.com/redsober/2022/03/29/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(8, 1, '2022-03-29 10:07:16', '2022-03-29 10:07:16', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://www.redsoberana.com/redsober/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ninja-forms/form {\"formID\":1,\"formTitle\":\"Contact Me\"} /-->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 10:07:16', '2022-03-29 10:07:16', '', 2, 'https://www.redsoberana.com/redsober/?p=8', 0, 'revision', '', 0),
(9, 1, '2022-03-29 10:08:26', '2022-03-29 10:08:26', '', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2022-03-29 10:08:26', '2022-03-29 10:08:26', '', 0, 'https://www.redsoberana.com/redsober/nf_sub/9/', 0, 'nf_sub', '', 0),
(11, 1, '2022-03-29 16:22:37', '2022-03-29 16:22:37', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-avant-garde', '', '', '2022-03-29 16:22:37', '2022-03-29 16:22:37', '', 0, 'https://redsoberana.com/wp-global-styles-avant-garde/', 0, 'wp_global_styles', '', 0),
(13, 1, '2022-03-29 16:23:56', '2022-03-29 16:23:56', '<!-- wp:paragraph -->\n<p>¡Envíanos tu mensaje! (no compartiramos tus datos con nadie)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ninja-forms/form {\"formID\":1,\"formTitle\":\"Contact Me\"} /-->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 16:23:56', '2022-03-29 16:23:56', '', 2, 'https://redsoberana.com/?p=13', 0, 'revision', '', 0),
(15, 1, '2022-03-29 16:24:54', '2022-03-29 16:24:54', '<!-- wp:paragraph -->\n<p>¡Envíanos tu mensaje! (no compartiramos tus datos con nadie)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ninja-forms/form {\"formID\":1,\"formTitle\":\"Contact Me\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 16:24:54', '2022-03-29 16:24:54', '', 2, 'https://redsoberana.com/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-03-29 16:29:50', '2022-03-29 16:29:50', '<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"40vh\",\"bottom\":\"40px\"},\"blockGap\":\"0px\"}},\"backgroundColor\":\"primary\",\"textColor\":\"secondary\",\"className\":\"has-x-small-font-size\",\"layout\":{\"inherit\":true}} -->\n<div class=\"wp-block-group alignfull has-x-small-font-size has-secondary-color has-primary-background-color has-text-color has-background has-link-color\" style=\"padding-top:40vh;padding-bottom:40px\"><!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"0px\"}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"75%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:75%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.25\",\"letterSpacing\":\"-0.1vw\"}},\"fontSize\":\"max-60\"} -->\n<p class=\"has-max-60-font-size\" id=\"design-with-courage\" style=\"line-height:1.25;letter-spacing:-0.1vw\">Red de sitios web vincuados a la soberanía y a la ley natural.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"25%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:25%\"><!-- wp:columns {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}}} -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-style-no-margin\"><!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"#\">Start Here</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"#\">Our Services</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"#\">Contact Us</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-style-no-margin\"><!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\" id=\"block-b19cad4c-373b-45bb-8ab0-63bbc555c61d\"><a href=\"#\">Twitter</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\" id=\"block-3a04d4bc-d50f-4d10-a3e8-627b268529d4\"><a href=\"#\">Instagram</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\" id=\"block-3667c312-d03c-496d-8ee5-ac375815f684\"><a href=\"#\">LinkedIn</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"0px\"}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\",\"width\":\"75%\",\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top is-style-no-margin\" style=\"flex-basis:75%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\",\"width\":\"25%\",\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top is-style-no-margin\" style=\"flex-basis:25%\"><!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"https://redsoberana.com/\">redsoberana</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Footer', '', 'publish', 'closed', 'closed', '', 'footer', '', '', '2022-04-07 14:15:12', '2022-04-07 14:15:12', '', 0, 'https://redsoberana.com/footer/', 0, 'wp_template_part', '', 0),
(17, 0, '2022-03-29 16:42:14', '2022-03-29 16:42:14', '', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2022-03-29 16:42:14', '2022-03-29 16:42:14', '', 0, 'https://redsoberana.com/nf_sub/17/', 0, 'nf_sub', '', 0),
(18, 1, '2022-03-30 07:19:40', '2022-03-30 07:19:40', '<!-- wp:paragraph -->\n<p>¡Envíanos tu mensaje! (no compartiremos tus datos con nadie)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ninja-forms/form {\"formID\":1,\"formTitle\":\"Contact Me\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-30 07:19:40', '2022-03-30 07:19:40', '', 2, 'https://redsoberana.com/?p=18', 0, 'revision', '', 0),
(20, 1, '2022-04-07 14:15:12', '2022-04-07 14:15:12', '<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"40vh\",\"bottom\":\"40px\"},\"blockGap\":\"0px\"}},\"backgroundColor\":\"primary\",\"textColor\":\"secondary\",\"className\":\"has-x-small-font-size\",\"layout\":{\"inherit\":true}} -->\n<div class=\"wp-block-group alignfull has-x-small-font-size has-secondary-color has-primary-background-color has-text-color has-background has-link-color\" style=\"padding-top:40vh;padding-bottom:40px\"><!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"0px\"}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"75%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:75%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.25\",\"letterSpacing\":\"-0.1vw\"}},\"fontSize\":\"max-60\"} -->\n<p class=\"has-max-60-font-size\" id=\"design-with-courage\" style=\"line-height:1.25;letter-spacing:-0.1vw\">Red de sitios web vincuados a la soberanía y a la ley natural.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"25%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:25%\"><!-- wp:columns {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}}} -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-style-no-margin\"><!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"#\">Start Here</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"#\">Our Services</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"#\">Contact Us</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-style-no-margin\"><!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\" id=\"block-b19cad4c-373b-45bb-8ab0-63bbc555c61d\"><a href=\"#\">Twitter</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\" id=\"block-3a04d4bc-d50f-4d10-a3e8-627b268529d4\"><a href=\"#\">Instagram</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\" id=\"block-3667c312-d03c-496d-8ee5-ac375815f684\"><a href=\"#\">LinkedIn</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"0px\"}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\",\"width\":\"75%\",\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top is-style-no-margin\" style=\"flex-basis:75%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\",\"width\":\"25%\",\"className\":\"is-style-no-margin\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top is-style-no-margin\" style=\"flex-basis:25%\"><!-- wp:paragraph {\"className\":\"is-style-no-margin\"} -->\n<p class=\"is-style-no-margin\"><a href=\"https://redsoberana.com/\">redsoberana</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Footer', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-04-07 14:15:12', '2022-04-07 14:15:12', '', 16, 'https://redsoberana.com/?p=20', 0, 'revision', '', 0),
(22, 1, '2022-04-19 11:04:12', '2022-04-19 11:04:12', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-frost', '', '', '2022-04-19 11:04:12', '2022-04-19 11:04:12', '', 0, 'https://redsoberana.com/2022/04/19/wp-global-styles-frost/', 0, 'wp_global_styles', '', 0),
(23, 1, '2022-04-19 11:04:33', '2022-04-19 11:04:33', '<!-- wp:paragraph -->\n<p>¡Envíanos tu mensaje! (no compartiremos tus datos con nadie)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ninja-forms/form {\"formID\":1,\"formTitle\":\"Contact Me\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-04-19 11:04:33', '2022-04-19 11:04:33', '', 2, 'https://redsoberana.com/?p=23', 0, 'revision', '', 0),
(25, 1, '2022-04-19 11:07:53', '2022-04-19 11:07:53', '<!-- wp:heading {\"level\":1} -->\n<h1>Bienvanida / bienvenido a la red soberana</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"45px\"} -->\n<div style=\"height:45px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>La red ibérica de páginas y aplicaciones web vinculadas a la soberanía y a la ley natural. En breve tendrás más información al respecto.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El objetivo de la redsoberana es promocionar la cultura del intercanvio, de la soberanía y la libertatd en todos los ambitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La red soberana es una página web WordPress \'<em>multisite</em>\'.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ninja-forms/form {\"formID\":1,\"formTitle\":\"Contact Me\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-04-19 11:07:53', '2022-04-19 11:07:53', '', 2, 'https://redsoberana.com/?p=25', 0, 'revision', '', 0),
(26, 1, '2022-04-19 11:08:05', '2022-04-19 11:08:05', '<!-- wp:heading {\"level\":1} -->\n<h1>Bienvanida / bienvenido a la red soberana</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"45px\"} -->\n<div style=\"height:45px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>La red ibérica de páginas y aplicaciones web vinculadas a la soberanía y a la ley natural. En breve tendrás más información al respecto.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El objetivo de la redsoberana es promocionar la cultura del intercanvio, de la soberanía y la libertatd en todos los ambitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La red soberana es una página web WordPress \'<em>multisite</em>\'.</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-04-19 11:08:05', '2022-04-19 11:08:05', '', 2, 'https://redsoberana.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-04-19 11:08:35', '2022-04-19 11:08:35', '<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Bienvenida / bienvenido a la red soberana</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"45px\"} -->\n<div style=\"height:45px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>La red ibérica de páginas y aplicaciones web vinculadas a la soberanía y a la ley natural. En breve tendrás más información al respecto.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El objetivo de la redsoberana es promocionar la cultura del intercanvio, de la soberanía y la libertatd en todos los ambitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La red soberana es una página web WordPress \'<em>multisite</em>\'.</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-04-19 11:08:35', '2022-04-19 11:08:35', '', 2, 'https://redsoberana.com/?p=27', 0, 'revision', '', 0),
(29, 1, '2022-05-04 09:11:54', '2022-05-04 09:11:54', '<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Bienvenida / bienvenido a la red soberana</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"45px\"} -->\n<div style=\"height:45px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>La red ibérica de páginas y aplicaciones web vinculadas a la soberanía y a la ley natural. En breve tendrás más información al respecto.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El objetivo de la redsoberana es promocionar la cultura del intercambio, de la soberanía y la libertatd en todos los ambitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La red soberana es una página web WordPress \'<em>multisite</em>\'.</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-05-04 09:11:54', '2022-05-04 09:11:54', '', 2, 'https://redsoberana.com/?p=29', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_registration_log`
--

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_registration_log`
--

INSERT INTO `wp_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'info@redsoberana.com', '81.184.142.109', 2, '2022-05-09 09:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_site`
--

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_site`
--

INSERT INTO `wp_site` (`id`, `domain`, `path`) VALUES
(1, 'redsoberana.com', '/');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sitemeta`
--

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_sitemeta`
--

INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'RedSoberana'),
(2, 1, 'admin_email', 'info@redsoberana.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif webp mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg flac m4a wav mp4 m4v webm ogv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:10:\"3748521651\";}'),
(9, 1, 'allowedthemes', 'a:3:{s:11:\"avant-garde\";b:1;s:15:\"twentytwentytwo\";b:1;s:5:\"frost\";b:1;}'),
(10, 1, 'illegal_names', 'a:8:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:5:\"files\";}'),
(11, 1, 'wpmu_upgrade_site', '51917'),
(12, 1, 'welcome_email', 'Hola USERNAME,\n\nTu nuevo sitio SITE_NAME se ha creado correctamente:\nBLOG_URL\n\nPuedes acceder a la cuenta del administrador con la siguiente información:\n\nNombre de usuario: USERNAME\nContraseña: PASSWORD\nAccede aquí: BLOG_URLwp-login.php\n\nEsperamos que disfrutes de tu nuevo sitio. ¡Gracias!\n\n--El equipo @ SITE_NAME'),
(13, 1, 'first_post', 'Bienvenido a %s. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!'),
(14, 1, 'siteurl', 'https://redsoberana.com/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '1'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '51917'),
(21, 1, 'active_sitewide_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";i:1649340795;}'),
(22, 1, 'WPLANG', 'es_ES'),
(25, 1, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.1\";s:7:\"version\";s:3:\"6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.0.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.9.5.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.9.5.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.5\";s:7:\"version\";s:5:\"5.9.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1669627626;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-07-07 03:10:52\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}'),
(26, 1, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1669627626;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:17:\"matomo/matomo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:20:\"w.org/plugins/matomo\";s:4:\"slug\";s:6:\"matomo\";s:6:\"plugin\";s:17:\"matomo/matomo.php\";s:11:\"new_version\";s:6:\"4.12.0\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/matomo/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/matomo.4.12.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/matomo/assets/icon-256x256.png?rev=2309115\";s:2:\"1x\";s:59:\"https://ps.w.org/matomo/assets/icon-128x128.png?rev=2309115\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/matomo/assets/banner-1544x500.png?rev=2309115\";s:2:\"1x\";s:61:\"https://ps.w.org/matomo/assets/banner-772x250.png?rev=2309115\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/matomo/assets/banner-1544x500-rtl.png?rev=2309115\";s:2:\"1x\";s:65:\"https://ps.w.org/matomo/assets/banner-772x250-rtl.png?rev=2309115\";}s:8:\"requires\";s:3:\"4.8\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:5:\"7.2.5\";}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:6:\"3.6.14\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ninja-forms.3.6.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"6.0.3\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}'),
(29, 1, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1669627627;s:7:\"checked\";a:5:{s:11:\"avant-garde\";s:5:\"1.0.3\";s:5:\"frost\";s:5:\"0.9.1\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:11:\"avant-garde\";a:6:{s:5:\"theme\";s:11:\"avant-garde\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:41:\"https://wordpress.org/themes/avant-garde/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/avant-garde.1.2.3.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}'),
(30, 1, 'user_count', '1'),
(31, 1, 'blog_count', '2'),
(32, 1, 'can_compress_scripts', '0'),
(39, 1, 'recently_activated', 'a:0:{}'),
(40, 1, 'site_meta_supported', '1'),
(41, 1, 'wp_force_deactivated_plugins', 'a:0:{}'),
(58, 1, 'registrationnotification', 'yes'),
(59, 1, 'welcome_user_email', 'Hola USERNAME,\n\nSe ha configurado tu nueva cuenta.\n\nPuedes acceder con la siguiente información:\nNombre de usuario: USERNAME\nContraseña: PASSWORD\nLOGINLINK\n\n¡Gracias!\n\n--El equipo @ SITE_NAME'),
(1410, 1, '_site_transient_timeout_php_check_2f5acf219326a8bc5331ee302b9812f4', '1669799616'),
(1411, 1, '_site_transient_php_check_2f5acf219326a8bc5331ee302b9812f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}'),
(1436, 1, '_site_transient_timeout_theme_roots', '1669629426'),
(1437, 1, '_site_transient_theme_roots', 'a:5:{s:11:\"avant-garde\";s:7:\"/themes\";s:5:\"frost\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'avant-garde', 'avant-garde', 0),
(4, 'footer', 'footer', 0),
(5, 'frost', 'frost', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(11, 3, 0),
(16, 3, 0),
(16, 4, 0),
(22, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 2),
(4, 4, 'wp_template_part_area', '', 0, 1),
(5, 5, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '3748521651'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '30'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"81.184.142.0\";}'),
(23, 1, 'source_domain', 'redsoberana.com'),
(24, 1, 'primary_blog', '1'),
(25, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}'),
(28, 1, 'wp_2_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(29, 1, 'wp_2_user_level', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, '3748521651', '$P$BAzDalDdQSQhMit8HmWKbQJeFk0DF5.', '3748521651', 'info@redsoberana.com', 'http://www.redsoberana.com/redsober', '2022-03-15 07:19:15', '', 0, '3748521651', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_2_commentmeta`
--
ALTER TABLE `wp_2_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_2_comments`
--
ALTER TABLE `wp_2_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_2_links`
--
ALTER TABLE `wp_2_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_2_options`
--
ALTER TABLE `wp_2_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_2_postmeta`
--
ALTER TABLE `wp_2_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_2_posts`
--
ALTER TABLE `wp_2_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_2_termmeta`
--
ALTER TABLE `wp_2_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_2_terms`
--
ALTER TABLE `wp_2_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_2_term_relationships`
--
ALTER TABLE `wp_2_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_2_term_taxonomy`
--
ALTER TABLE `wp_2_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_blogmeta`
--
ALTER TABLE `wp_blogmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `domain` (`domain`(50),`path`(5)),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_matomo_access`
--
ALTER TABLE `wp_matomo_access`
  ADD PRIMARY KEY (`idaccess`),
  ADD KEY `index_loginidsite` (`login`,`idsite`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_06`
--
ALTER TABLE `wp_matomo_archive_blob_2021_06`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_07`
--
ALTER TABLE `wp_matomo_archive_blob_2021_07`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_08`
--
ALTER TABLE `wp_matomo_archive_blob_2021_08`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_09`
--
ALTER TABLE `wp_matomo_archive_blob_2021_09`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_10`
--
ALTER TABLE `wp_matomo_archive_blob_2021_10`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_11`
--
ALTER TABLE `wp_matomo_archive_blob_2021_11`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2021_12`
--
ALTER TABLE `wp_matomo_archive_blob_2021_12`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2022_01`
--
ALTER TABLE `wp_matomo_archive_blob_2022_01`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2022_02`
--
ALTER TABLE `wp_matomo_archive_blob_2022_02`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2022_03`
--
ALTER TABLE `wp_matomo_archive_blob_2022_03`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_blob_2022_04`
--
ALTER TABLE `wp_matomo_archive_blob_2022_04`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_invalidations`
--
ALTER TABLE `wp_matomo_archive_invalidations`
  ADD PRIMARY KEY (`idinvalidation`),
  ADD KEY `index_idsite_dates_period_name` (`idsite`,`date1`,`period`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_06`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_06`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_07`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_07`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_08`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_08`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_09`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_09`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_10`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_10`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_11`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_11`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2021_12`
--
ALTER TABLE `wp_matomo_archive_numeric_2021_12`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2022_01`
--
ALTER TABLE `wp_matomo_archive_numeric_2022_01`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2022_02`
--
ALTER TABLE `wp_matomo_archive_numeric_2022_02`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2022_03`
--
ALTER TABLE `wp_matomo_archive_numeric_2022_03`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_archive_numeric_2022_04`
--
ALTER TABLE `wp_matomo_archive_numeric_2022_04`
  ADD PRIMARY KEY (`idarchive`,`name`),
  ADD KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  ADD KEY `index_period_archived` (`period`,`ts_archived`);

--
-- Indexes for table `wp_matomo_brute_force_log`
--
ALTER TABLE `wp_matomo_brute_force_log`
  ADD PRIMARY KEY (`id_brute_force_log`),
  ADD KEY `index_ip_address` (`ip_address`);

--
-- Indexes for table `wp_matomo_custom_dimensions`
--
ALTER TABLE `wp_matomo_custom_dimensions`
  ADD PRIMARY KEY (`idcustomdimension`,`idsite`),
  ADD UNIQUE KEY `uniq_hash` (`idsite`,`scope`,`index`);

--
-- Indexes for table `wp_matomo_goal`
--
ALTER TABLE `wp_matomo_goal`
  ADD PRIMARY KEY (`idsite`,`idgoal`);

--
-- Indexes for table `wp_matomo_locks`
--
ALTER TABLE `wp_matomo_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `wp_matomo_logger_message`
--
ALTER TABLE `wp_matomo_logger_message`
  ADD PRIMARY KEY (`idlogger_message`);

--
-- Indexes for table `wp_matomo_log_action`
--
ALTER TABLE `wp_matomo_log_action`
  ADD PRIMARY KEY (`idaction`),
  ADD KEY `index_type_hash` (`type`,`hash`);

--
-- Indexes for table `wp_matomo_log_conversion`
--
ALTER TABLE `wp_matomo_log_conversion`
  ADD PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  ADD UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  ADD KEY `index_idsite_datetime` (`idsite`,`server_time`);

--
-- Indexes for table `wp_matomo_log_conversion_item`
--
ALTER TABLE `wp_matomo_log_conversion_item`
  ADD PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  ADD KEY `index_idsite_servertime` (`idsite`,`server_time`);

--
-- Indexes for table `wp_matomo_log_link_visit_action`
--
ALTER TABLE `wp_matomo_log_link_visit_action`
  ADD PRIMARY KEY (`idlink_va`),
  ADD KEY `index_idvisit` (`idvisit`),
  ADD KEY `index_idsite_servertime` (`idsite`,`server_time`);

--
-- Indexes for table `wp_matomo_log_profiling`
--
ALTER TABLE `wp_matomo_log_profiling`
  ADD PRIMARY KEY (`idprofiling`),
  ADD UNIQUE KEY `query` (`query`(100));

--
-- Indexes for table `wp_matomo_log_visit`
--
ALTER TABLE `wp_matomo_log_visit`
  ADD PRIMARY KEY (`idvisit`),
  ADD KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  ADD KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  ADD KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`);

--
-- Indexes for table `wp_matomo_option`
--
ALTER TABLE `wp_matomo_option`
  ADD PRIMARY KEY (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_matomo_plugin_setting`
--
ALTER TABLE `wp_matomo_plugin_setting`
  ADD PRIMARY KEY (`idplugin_setting`),
  ADD KEY `plugin_name` (`plugin_name`,`user_login`);

--
-- Indexes for table `wp_matomo_privacy_logdata_anonymizations`
--
ALTER TABLE `wp_matomo_privacy_logdata_anonymizations`
  ADD PRIMARY KEY (`idlogdata_anonymization`),
  ADD KEY `job_start_date` (`job_start_date`);

--
-- Indexes for table `wp_matomo_report`
--
ALTER TABLE `wp_matomo_report`
  ADD PRIMARY KEY (`idreport`);

--
-- Indexes for table `wp_matomo_report_subscriptions`
--
ALTER TABLE `wp_matomo_report_subscriptions`
  ADD PRIMARY KEY (`idreport`,`email`),
  ADD UNIQUE KEY `unique_token` (`token`);

--
-- Indexes for table `wp_matomo_segment`
--
ALTER TABLE `wp_matomo_segment`
  ADD PRIMARY KEY (`idsegment`);

--
-- Indexes for table `wp_matomo_sequence`
--
ALTER TABLE `wp_matomo_sequence`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_matomo_session`
--
ALTER TABLE `wp_matomo_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_matomo_site`
--
ALTER TABLE `wp_matomo_site`
  ADD PRIMARY KEY (`idsite`);

--
-- Indexes for table `wp_matomo_site_setting`
--
ALTER TABLE `wp_matomo_site_setting`
  ADD PRIMARY KEY (`idsite_setting`),
  ADD KEY `idsite` (`idsite`,`plugin_name`);

--
-- Indexes for table `wp_matomo_site_url`
--
ALTER TABLE `wp_matomo_site_url`
  ADD PRIMARY KEY (`idsite`,`url`);

--
-- Indexes for table `wp_matomo_tagmanager_container`
--
ALTER TABLE `wp_matomo_tagmanager_container`
  ADD PRIMARY KEY (`idcontainer`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `wp_matomo_tagmanager_container_release`
--
ALTER TABLE `wp_matomo_tagmanager_container_release`
  ADD PRIMARY KEY (`idcontainerrelease`),
  ADD KEY `idsite` (`idsite`,`idcontainer`);

--
-- Indexes for table `wp_matomo_tagmanager_container_version`
--
ALTER TABLE `wp_matomo_tagmanager_container_version`
  ADD PRIMARY KEY (`idcontainerversion`),
  ADD KEY `idcontainer` (`idcontainer`),
  ADD KEY `idsite` (`idsite`,`idcontainer`);

--
-- Indexes for table `wp_matomo_tagmanager_tag`
--
ALTER TABLE `wp_matomo_tagmanager_tag`
  ADD PRIMARY KEY (`idtag`),
  ADD KEY `idsite` (`idsite`,`idcontainerversion`);

--
-- Indexes for table `wp_matomo_tagmanager_trigger`
--
ALTER TABLE `wp_matomo_tagmanager_trigger`
  ADD PRIMARY KEY (`idtrigger`),
  ADD KEY `idsite` (`idsite`,`idcontainerversion`);

--
-- Indexes for table `wp_matomo_tagmanager_variable`
--
ALTER TABLE `wp_matomo_tagmanager_variable`
  ADD PRIMARY KEY (`idvariable`),
  ADD KEY `idsite` (`idsite`,`idcontainerversion`);

--
-- Indexes for table `wp_matomo_tracking_failure`
--
ALTER TABLE `wp_matomo_tracking_failure`
  ADD PRIMARY KEY (`idsite`,`idfailure`);

--
-- Indexes for table `wp_matomo_twofactor_recovery_code`
--
ALTER TABLE `wp_matomo_twofactor_recovery_code`
  ADD PRIMARY KEY (`idrecoverycode`);

--
-- Indexes for table `wp_matomo_user`
--
ALTER TABLE `wp_matomo_user`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `wp_matomo_user_dashboard`
--
ALTER TABLE `wp_matomo_user_dashboard`
  ADD PRIMARY KEY (`login`,`iddashboard`);

--
-- Indexes for table `wp_matomo_user_language`
--
ALTER TABLE `wp_matomo_user_language`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `wp_matomo_user_token_auth`
--
ALTER TABLE `wp_matomo_user_token_auth`
  ADD PRIMARY KEY (`idusertokenauth`),
  ADD UNIQUE KEY `uniq_password` (`password`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IP` (`IP`);

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_site`
--
ALTER TABLE `wp_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_2_commentmeta`
--
ALTER TABLE `wp_2_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_2_comments`
--
ALTER TABLE `wp_2_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_2_links`
--
ALTER TABLE `wp_2_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_2_options`
--
ALTER TABLE `wp_2_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_2_postmeta`
--
ALTER TABLE `wp_2_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_2_posts`
--
ALTER TABLE `wp_2_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_2_termmeta`
--
ALTER TABLE `wp_2_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_2_terms`
--
ALTER TABLE `wp_2_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_2_term_taxonomy`
--
ALTER TABLE `wp_2_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_blogmeta`
--
ALTER TABLE `wp_blogmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_access`
--
ALTER TABLE `wp_matomo_access`
  MODIFY `idaccess` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_archive_invalidations`
--
ALTER TABLE `wp_matomo_archive_invalidations`
  MODIFY `idinvalidation` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_matomo_brute_force_log`
--
ALTER TABLE `wp_matomo_brute_force_log`
  MODIFY `id_brute_force_log` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_logger_message`
--
ALTER TABLE `wp_matomo_logger_message`
  MODIFY `idlogger_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_log_action`
--
ALTER TABLE `wp_matomo_log_action`
  MODIFY `idaction` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_matomo_log_link_visit_action`
--
ALTER TABLE `wp_matomo_log_link_visit_action`
  MODIFY `idlink_va` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_matomo_log_profiling`
--
ALTER TABLE `wp_matomo_log_profiling`
  MODIFY `idprofiling` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_log_visit`
--
ALTER TABLE `wp_matomo_log_visit`
  MODIFY `idvisit` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_matomo_plugin_setting`
--
ALTER TABLE `wp_matomo_plugin_setting`
  MODIFY `idplugin_setting` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_privacy_logdata_anonymizations`
--
ALTER TABLE `wp_matomo_privacy_logdata_anonymizations`
  MODIFY `idlogdata_anonymization` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_report`
--
ALTER TABLE `wp_matomo_report`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_segment`
--
ALTER TABLE `wp_matomo_segment`
  MODIFY `idsegment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_site`
--
ALTER TABLE `wp_matomo_site`
  MODIFY `idsite` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_matomo_site_setting`
--
ALTER TABLE `wp_matomo_site_setting`
  MODIFY `idsite_setting` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_tagmanager_container_release`
--
ALTER TABLE `wp_matomo_tagmanager_container_release`
  MODIFY `idcontainerrelease` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_tagmanager_container_version`
--
ALTER TABLE `wp_matomo_tagmanager_container_version`
  MODIFY `idcontainerversion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_tagmanager_tag`
--
ALTER TABLE `wp_matomo_tagmanager_tag`
  MODIFY `idtag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_tagmanager_trigger`
--
ALTER TABLE `wp_matomo_tagmanager_trigger`
  MODIFY `idtrigger` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_tagmanager_variable`
--
ALTER TABLE `wp_matomo_tagmanager_variable`
  MODIFY `idvariable` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_twofactor_recovery_code`
--
ALTER TABLE `wp_matomo_twofactor_recovery_code`
  MODIFY `idrecoverycode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_matomo_user_token_auth`
--
ALTER TABLE `wp_matomo_user_token_auth`
  MODIFY `idusertokenauth` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10620;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_site`
--
ALTER TABLE `wp_site`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1438;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
