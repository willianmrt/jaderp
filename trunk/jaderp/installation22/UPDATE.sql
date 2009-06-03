-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 02 Juin 2009 à 23:44
-- Version du serveur: 5.1.33
-- Version de PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `erp`
--

-- --------------------------------------------------------

--
-- Structure de la table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `jos_banner`
--

UPDATE `jos_banner` SET `bid` = 1,`cid` = 1,`type` = 'banner',`name` = 'OSM 1',`alias` = 'osm-1',`imptotal` = 0,`impmade` = 43,`clicks` = 0,`imageurl` = 'osmbanner1.png',`clickurl` = 'http://www.opensourcematters.org',`date` = '2004-07-07 15:31:29',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '',`catid` = 13,`description` = '',`sticky` = 0,`ordering` = 1,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 1;
UPDATE `jos_banner` SET `bid` = 2,`cid` = 1,`type` = 'banner',`name` = 'OSM 2',`alias` = 'osm-2',`imptotal` = 0,`impmade` = 49,`clicks` = 0,`imageurl` = 'osmbanner2.png',`clickurl` = 'http://www.opensourcematters.org',`date` = '2004-07-07 15:31:29',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '',`catid` = 13,`description` = '',`sticky` = 0,`ordering` = 2,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 2;
UPDATE `jos_banner` SET `bid` = 3,`cid` = 1,`type` = '',`name` = 'Joomla!',`alias` = 'joomla',`imptotal` = 0,`impmade` = 110,`clicks` = 0,`imageurl` = '',`clickurl` = 'http://www.joomla.org',`date` = '2006-05-29 14:21:28',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.',`catid` = 14,`description` = '',`sticky` = 0,`ordering` = 1,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 3;
UPDATE `jos_banner` SET `bid` = 4,`cid` = 1,`type` = '',`name` = 'JoomlaCode',`alias` = 'joomlacode',`imptotal` = 0,`impmade` = 110,`clicks` = 0,`imageurl` = '',`clickurl` = 'http://joomlacode.org',`date` = '2006-05-29 14:19:26',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.',`catid` = 14,`description` = '',`sticky` = 0,`ordering` = 2,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 4;
UPDATE `jos_banner` SET `bid` = 5,`cid` = 1,`type` = '',`name` = 'Joomla! Extensions',`alias` = 'joomla-extensions',`imptotal` = 0,`impmade` = 105,`clicks` = 0,`imageurl` = '',`clickurl` = 'http://extensions.joomla.org',`date` = '2006-05-29 14:23:21',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.',`catid` = 14,`description` = '',`sticky` = 0,`ordering` = 3,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 5;
UPDATE `jos_banner` SET `bid` = 6,`cid` = 1,`type` = '',`name` = 'Joomla! Shop',`alias` = 'joomla-shop',`imptotal` = 0,`impmade` = 105,`clicks` = 0,`imageurl` = '',`clickurl` = 'http://shop.joomla.org',`date` = '2006-05-29 14:23:21',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.',`catid` = 14,`description` = '',`sticky` = 0,`ordering` = 4,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 6;
UPDATE `jos_banner` SET `bid` = 7,`cid` = 1,`type` = '',`name` = 'Joomla! Promo Shop',`alias` = 'joomla-promo-shop',`imptotal` = 0,`impmade` = 185,`clicks` = 1,`imageurl` = 'shop-ad.jpg',`clickurl` = 'http://shop.joomla.org',`date` = '2007-09-19 17:26:24',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '',`catid` = 33,`description` = '',`sticky` = 0,`ordering` = 3,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 7;
UPDATE `jos_banner` SET `bid` = 8,`cid` = 1,`type` = '',`name` = 'Joomla! Promo Books',`alias` = 'joomla-promo-books',`imptotal` = 0,`impmade` = 205,`clicks` = 1,`imageurl` = 'shop-ad-books.jpg',`clickurl` = 'http://shop.joomla.org/amazoncom-bookstores.html',`date` = '2007-09-19 17:28:01',`showBanner` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`custombannercode` = '',`catid` = 33,`description` = '',`sticky` = 0,`ordering` = 4,`publish_up` = '0000-00-00 00:00:00',`publish_down` = '0000-00-00 00:00:00',`tags` = '',`params` = '' WHERE  `jos_banner`.`bid` = 8;

-- --------------------------------------------------------

--
-- Structure de la table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `jos_bannerclient`
--

UPDATE `jos_bannerclient` SET `cid` = 1,`name` = 'Open Source Matters',`contact` = 'Administrator',`email` = 'admin@opensourcematters.org',`extrainfo` = '',`checked_out` = 0,`checked_out_time` = '00:00:00',`editor` = NULL WHERE  `jos_bannerclient`.`cid` = 1;

-- --------------------------------------------------------

--
-- Structure de la table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `jos_categories`
--

UPDATE `jos_categories` SET `id` = 1,`parent_id` = 0,`title` = 'Latest',`name` = '',`alias` = 'latest-news',`image` = 'taking_notes.jpg',`section` = '1',`image_position` = 'left',`description` = 'The latest news from the Joomla! Team',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`ordering` = 1,`access` = 0,`count` = 1,`params` = '' WHERE  `jos_categories`.`id` = 1;
UPDATE `jos_categories` SET `id` = 2,`parent_id` = 0,`title` = 'Joomla! Specific Links',`name` = '',`alias` = 'joomla-specific-links',`image` = 'clock.jpg',`section` = 'com_weblinks',`image_position` = 'left',`description` = 'A selection of links that are all related to the Joomla! Project.',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 1,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 2;
UPDATE `jos_categories` SET `id` = 3,`parent_id` = 0,`title` = 'Newsflash',`name` = '',`alias` = 'newsflash',`image` = '',`section` = '1',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = '',`ordering` = 2,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 3;
UPDATE `jos_categories` SET `id` = 4,`parent_id` = 0,`title` = 'Joomla!',`name` = '',`alias` = 'joomla',`image` = '',`section` = 'com_newsfeeds',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 2,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 4;
UPDATE `jos_categories` SET `id` = 5,`parent_id` = 0,`title` = 'Free and Open Source Software',`name` = '',`alias` = 'free-and-open-source-software',`image` = '',`section` = 'com_newsfeeds',`image_position` = 'left',`description` = 'Read the latest news about free and open source software from some of its leading advocates.',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 3,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 5;
UPDATE `jos_categories` SET `id` = 6,`parent_id` = 0,`title` = 'Related Projects',`name` = '',`alias` = 'related-projects',`image` = '',`section` = 'com_newsfeeds',`image_position` = 'left',`description` = 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 4,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 6;
UPDATE `jos_categories` SET `id` = 12,`parent_id` = 0,`title` = 'Contacts',`name` = '',`alias` = 'contacts',`image` = '',`section` = 'com_contact_details',`image_position` = 'left',`description` = 'Contact Details for this Web site',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 0,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 12;
UPDATE `jos_categories` SET `id` = 13,`parent_id` = 0,`title` = 'Joomla',`name` = '',`alias` = 'joomla',`image` = '',`section` = 'com_banner',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 0,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 13;
UPDATE `jos_categories` SET `id` = 14,`parent_id` = 0,`title` = 'Text Ads',`name` = '',`alias` = 'text-ads',`image` = '',`section` = 'com_banner',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 0,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 14;
UPDATE `jos_categories` SET `id` = 15,`parent_id` = 0,`title` = 'Features',`name` = '',`alias` = 'features',`image` = '',`section` = 'com_content',`image_position` = 'left',`description` = '',`published` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 6,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 15;
UPDATE `jos_categories` SET `id` = 17,`parent_id` = 0,`title` = 'Benefits',`name` = '',`alias` = 'benefits',`image` = '',`section` = 'com_content',`image_position` = 'left',`description` = '',`published` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 4,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 17;
UPDATE `jos_categories` SET `id` = 18,`parent_id` = 0,`title` = 'Platforms',`name` = '',`alias` = 'platforms',`image` = '',`section` = 'com_content',`image_position` = 'left',`description` = '',`published` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 3,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 18;
UPDATE `jos_categories` SET `id` = 19,`parent_id` = 0,`title` = 'Other Resources',`name` = '',`alias` = 'other-resources',`image` = '',`section` = 'com_weblinks',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 2,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 19;
UPDATE `jos_categories` SET `id` = 29,`parent_id` = 0,`title` = 'The CMS',`name` = '',`alias` = 'the-cms',`image` = '',`section` = '4',`image_position` = 'left',`description` = 'Information about the software behind Joomla!<br />',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 2,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 29;
UPDATE `jos_categories` SET `id` = 28,`parent_id` = 0,`title` = 'Current Users',`name` = '',`alias` = 'current-users',`image` = '',`section` = '3',`image_position` = 'left',`description` = 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 2,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 28;
UPDATE `jos_categories` SET `id` = 25,`parent_id` = 0,`title` = 'The Project',`name` = '',`alias` = 'the-project',`image` = '',`section` = '4',`image_position` = 'left',`description` = 'General facts about Joomla!<br />',`published` = 1,`checked_out` = 65,`checked_out_time` = '2007-06-28 14:50:15',`editor` = NULL,`ordering` = 1,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 25;
UPDATE `jos_categories` SET `id` = 27,`parent_id` = 0,`title` = 'New to Joomla!',`name` = '',`alias` = 'new-to-joomla',`image` = '',`section` = '3',`image_position` = 'left',`description` = 'Questions for new users of Joomla!',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 3,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 27;
UPDATE `jos_categories` SET `id` = 30,`parent_id` = 0,`title` = 'The Community',`name` = '',`alias` = 'the-community',`image` = '',`section` = '4',`image_position` = 'left',`description` = 'About the millions of Joomla! users and Web sites<br />',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 3,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 30;
UPDATE `jos_categories` SET `id` = 31,`parent_id` = 0,`title` = 'General',`name` = '',`alias` = 'general',`image` = '',`section` = '3',`image_position` = 'left',`description` = 'General questions about the Joomla! CMS',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 1,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 31;
UPDATE `jos_categories` SET `id` = 32,`parent_id` = 0,`title` = 'Languages',`name` = '',`alias` = 'languages',`image` = '',`section` = '3',`image_position` = 'left',`description` = 'Questions related to localisation and languages',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 4,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 32;
UPDATE `jos_categories` SET `id` = 33,`parent_id` = 0,`title` = 'Joomla! Promo',`name` = '',`alias` = 'joomla-promo',`image` = '',`section` = 'com_banner',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`editor` = NULL,`ordering` = 1,`access` = 0,`count` = 0,`params` = '' WHERE  `jos_categories`.`id` = 33;

-- --------------------------------------------------------

--
-- Structure de la table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `jos_components`
--

UPDATE `jos_components` SET `id` = 1,`name` = 'Banners',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Banner Management',`option` = 'com_banners',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 1;
UPDATE `jos_components` SET `id` = 2,`name` = 'Banners',`link` = '',`menuid` = 0,`parent` = 1,`admin_menu_link` = 'option=com_banners',`admin_menu_alt` = 'Active Banners',`option` = 'com_banners',`ordering` = 1,`admin_menu_img` = 'js/ThemeOffice/edit.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 2;
UPDATE `jos_components` SET `id` = 3,`name` = 'Clients',`link` = '',`menuid` = 0,`parent` = 1,`admin_menu_link` = 'option=com_banners&c=client',`admin_menu_alt` = 'Manage Clients',`option` = 'com_banners',`ordering` = 2,`admin_menu_img` = 'js/ThemeOffice/categories.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 3;
UPDATE `jos_components` SET `id` = 4,`name` = 'Web Links',`link` = 'option=com_weblinks',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Manage Weblinks',`option` = 'com_weblinks',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 4;
UPDATE `jos_components` SET `id` = 5,`name` = 'Links',`link` = '',`menuid` = 0,`parent` = 4,`admin_menu_link` = 'option=com_weblinks',`admin_menu_alt` = 'View existing weblinks',`option` = 'com_weblinks',`ordering` = 1,`admin_menu_img` = 'js/ThemeOffice/edit.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 5;
UPDATE `jos_components` SET `id` = 6,`name` = 'Categories',`link` = '',`menuid` = 0,`parent` = 4,`admin_menu_link` = 'option=com_categories&section=com_weblinks',`admin_menu_alt` = 'Manage weblink categories',`option` = '',`ordering` = 2,`admin_menu_img` = 'js/ThemeOffice/categories.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 6;
UPDATE `jos_components` SET `id` = 7,`name` = 'Contacts',`link` = 'option=com_contact',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Edit contact details',`option` = 'com_contact',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 1,`params` = 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 7;
UPDATE `jos_components` SET `id` = 8,`name` = 'Contacts',`link` = '',`menuid` = 0,`parent` = 7,`admin_menu_link` = 'option=com_contact',`admin_menu_alt` = 'Edit contact details',`option` = 'com_contact',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/edit.png',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 8;
UPDATE `jos_components` SET `id` = 9,`name` = 'Categories',`link` = '',`menuid` = 0,`parent` = 7,`admin_menu_link` = 'option=com_categories&section=com_contact_details',`admin_menu_alt` = 'Manage contact categories',`option` = '',`ordering` = 2,`admin_menu_img` = 'js/ThemeOffice/categories.png',`iscore` = 1,`params` = 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 9;
UPDATE `jos_components` SET `id` = 10,`name` = 'Polls',`link` = 'option=com_poll',`menuid` = 0,`parent` = 0,`admin_menu_link` = 'option=com_poll',`admin_menu_alt` = 'Manage Polls',`option` = 'com_poll',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 10;
UPDATE `jos_components` SET `id` = 11,`name` = 'News Feeds',`link` = 'option=com_newsfeeds',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'News Feeds Management',`option` = 'com_newsfeeds',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 11;
UPDATE `jos_components` SET `id` = 12,`name` = 'Feeds',`link` = '',`menuid` = 0,`parent` = 11,`admin_menu_link` = 'option=com_newsfeeds',`admin_menu_alt` = 'Manage News Feeds',`option` = 'com_newsfeeds',`ordering` = 1,`admin_menu_img` = 'js/ThemeOffice/edit.png',`iscore` = 0,`params` = 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 12;
UPDATE `jos_components` SET `id` = 13,`name` = 'Categories',`link` = '',`menuid` = 0,`parent` = 11,`admin_menu_link` = 'option=com_categories&section=com_newsfeeds',`admin_menu_alt` = 'Manage Categories',`option` = '',`ordering` = 2,`admin_menu_img` = 'js/ThemeOffice/categories.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 13;
UPDATE `jos_components` SET `id` = 14,`name` = 'User',`link` = 'option=com_user',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = '',`option` = 'com_user',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 14;
UPDATE `jos_components` SET `id` = 15,`name` = 'Search',`link` = 'option=com_search',`menuid` = 0,`parent` = 0,`admin_menu_link` = 'option=com_search',`admin_menu_alt` = 'Search Statistics',`option` = 'com_search',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 1,`params` = 'enabled=0\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 15;
UPDATE `jos_components` SET `id` = 16,`name` = 'Categories',`link` = '',`menuid` = 0,`parent` = 1,`admin_menu_link` = 'option=com_categories&section=com_banner',`admin_menu_alt` = 'Categories',`option` = '',`ordering` = 3,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 16;
UPDATE `jos_components` SET `id` = 17,`name` = 'Wrapper',`link` = 'option=com_wrapper',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Wrapper',`option` = 'com_wrapper',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 17;
UPDATE `jos_components` SET `id` = 18,`name` = 'Mail To',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = '',`option` = 'com_mailto',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 18;
UPDATE `jos_components` SET `id` = 19,`name` = 'Media Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = 'option=com_media',`admin_menu_alt` = 'Media Manager',`option` = 'com_media',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 19;
UPDATE `jos_components` SET `id` = 20,`name` = 'Articles',`link` = 'option=com_content',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = '',`option` = 'com_content',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 20;
UPDATE `jos_components` SET `id` = 21,`name` = 'Configuration Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Configuration',`option` = 'com_config',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 21;
UPDATE `jos_components` SET `id` = 22,`name` = 'Installation Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Installer',`option` = 'com_installer',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 22;
UPDATE `jos_components` SET `id` = 23,`name` = 'Language Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Languages',`option` = 'com_languages',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = 'administrator=fr-FR\nsite=fr-FR',`enabled` = 1 WHERE  `jos_components`.`id` = 23;
UPDATE `jos_components` SET `id` = 24,`name` = 'Mass mail',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Mass Mail',`option` = 'com_massmail',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = 'mailSubjectPrefix=\nmailBodySuffix=\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 24;
UPDATE `jos_components` SET `id` = 25,`name` = 'Menu Editor',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Menu Editor',`option` = 'com_menus',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 25;
UPDATE `jos_components` SET `id` = 27,`name` = 'Messaging',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Messages',`option` = 'com_messages',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 27;
UPDATE `jos_components` SET `id` = 28,`name` = 'Modules Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Modules',`option` = 'com_modules',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 28;
UPDATE `jos_components` SET `id` = 29,`name` = 'Plugin Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Plugins',`option` = 'com_plugins',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 29;
UPDATE `jos_components` SET `id` = 30,`name` = 'Template Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Templates',`option` = 'com_templates',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 30;
UPDATE `jos_components` SET `id` = 31,`name` = 'User Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Users',`option` = 'com_users',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = 'allowUserRegistration=0\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',`enabled` = 1 WHERE  `jos_components`.`id` = 31;
UPDATE `jos_components` SET `id` = 32,`name` = 'Cache Manager',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Cache',`option` = 'com_cache',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 32;
UPDATE `jos_components` SET `id` = 33,`name` = 'Control Panel',`link` = '',`menuid` = 0,`parent` = 0,`admin_menu_link` = '',`admin_menu_alt` = 'Control Panel',`option` = 'com_cpanel',`ordering` = 0,`admin_menu_img` = '',`iscore` = 1,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 33;
UPDATE `jos_components` SET `id` = 34,`name` = 'Hello World!',`link` = 'option=com_hello',`menuid` = 0,`parent` = 0,`admin_menu_link` = 'option=com_hello',`admin_menu_alt` = 'Hello World!',`option` = 'com_hello',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 34;
UPDATE `jos_components` SET `id` = 35,`name` = 'Joomla Advanced ERP!',`link` = 'option=com_jaderp',`menuid` = 0,`parent` = 0,`admin_menu_link` = 'option=com_jaderp',`admin_menu_alt` = 'Joomla Advanced ERP!',`option` = 'com_jaderp',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 35;
UPDATE `jos_components` SET `id` = 36,`name` = 'Configuration Generale',`link` = '',`menuid` = 0,`parent` = 35,`admin_menu_link` = 'option=com_jaderp&task=config',`admin_menu_alt` = 'Configuration Generale',`option` = 'com_jaderp',`ordering` = 0,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 36;
UPDATE `jos_components` SET `id` = 37,`name` = 'Gestion des utilisateurs',`link` = '',`menuid` = 0,`parent` = 35,`admin_menu_link` = 'option=com_jaderp&task=usersconfig',`admin_menu_alt` = 'Gestion des utilisateurs',`option` = 'com_jaderp',`ordering` = 1,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 37;
UPDATE `jos_components` SET `id` = 38,`name` = 'Gestion des menus',`link` = '',`menuid` = 0,`parent` = 35,`admin_menu_link` = 'option=com_jaderp&task=menuconfig',`admin_menu_alt` = 'Gestion des menus',`option` = 'com_jaderp',`ordering` = 2,`admin_menu_img` = 'js/ThemeOffice/component.png',`iscore` = 0,`params` = '',`enabled` = 1 WHERE  `jos_components`.`id` = 38;

-- --------------------------------------------------------

--
-- Structure de la table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `jos_contact_details`
--

UPDATE `jos_contact_details` SET `id` = 1,`name` = 'Name',`alias` = 'name',`con_position` = 'Position',`address` = 'Street',`suburb` = 'Suburb',`state` = 'State',`country` = 'Country',`postcode` = 'Zip Code',`telephone` = 'Telephone',`fax` = 'Fax',`misc` = 'Miscellanous info',`image` = 'powered_by.png',`imagepos` = 'top',`email_to` = 'email@email.com',`default_con` = 1,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 1,`params` = 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=',`user_id` = 0,`catid` = 12,`access` = 0,`mobile` = '',`webpage` = '' WHERE  `jos_contact_details`.`id` = 1;

-- --------------------------------------------------------

--
-- Structure de la table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Contenu de la table `jos_content`
--

UPDATE `jos_content` SET `id` = 1,`title` = 'Welcome to Joomla!',`alias` = 'welcome-to-joomla',`title_alias` = '',`introtext` = '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>',`fulltext` = 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 1,`created` = '2008-08-12 10:00:00',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-12 10:00:00',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-01-03 01:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 29,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 92,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 1;
UPDATE `jos_content` SET `id` = 2,`title` = 'Newsflash 1',`alias` = 'newsflash-1',`title_alias` = '',`introtext` = '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 3,`created` = '2008-08-10 06:30:34',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-10 06:30:34',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-08-09 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 1,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 2;
UPDATE `jos_content` SET `id` = 3,`title` = 'Newsflash 2',`alias` = 'newsflash-2',`title_alias` = '',`introtext` = '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 3,`created` = '2008-08-09 22:30:34',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-09 22:30:34',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-08-09 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 4,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 0,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 3;
UPDATE `jos_content` SET `id` = 4,`title` = 'Newsflash 3',`alias` = 'newsflash-3',`title_alias` = '',`introtext` = '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 3,`created` = '2008-08-10 06:30:34',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-10 06:30:34',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-08-09 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 5,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 1,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 4;
UPDATE `jos_content` SET `id` = 5,`title` = 'Joomla! License Guidelines',`alias` = 'joomla-license-guidelines',`title_alias` = 'joomla-license-guidelines',`introtext` = '<p>This Web site is powered by <a href="http://joomla.org/" target="_blank" title="Joomla!">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2008 <a href="http://www.opensourcematters.org/" target="_blank" title="Open Source Matters">Open Source Matters</a>. The sample content distributed with Joomla! is licensed under the <a href="http://docs.joomla.org/JEDL" target="_blank" title="Joomla! Electronic Document License">Joomla! Electronic Documentation License.</a> All data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p> <p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1" target="_blank" title="GNU General Public License"> GNU General Public License</a>. If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4" target="_blank" title="How To Apply These Terms To Your Program">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html" target="_blank" title="GNU General Public License FAQ">''GNU General Public License FAQ''</a>.</p> <p>The Joomla! licence has always been GPL.</p>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 25,`created` = '2008-08-20 10:11:07',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-20 10:11:07',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-08-19 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 100,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 5;
UPDATE `jos_content` SET `id` = 6,`title` = 'We are Volunteers',`alias` = 'we-are-volunteers',`title_alias` = '',`introtext` = '<p>The Joomla Core Team and Working Group members are volunteer developers, designers, administrators and managers who have worked together to take Joomla! to new heights in its relatively short life. Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 1,`created` = '2007-07-07 09:54:06',`created_by` = 62,`created_by_alias` = '',`modified` = '2007-07-07 09:54:06',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-07-06 22:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 10,`parentid` = 0,`ordering` = 4,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 54,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 6;
UPDATE `jos_content` SET `id` = 9,`title` = 'Millions of Smiles',`alias` = 'millions-of-smiles',`title_alias` = '',`introtext` = '<p>The Joomla! team has millions of good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had millions of downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 1,`created` = '2007-07-07 09:54:06',`created_by` = 62,`created_by_alias` = '',`modified` = '2007-07-07 09:54:06',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-07-06 22:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 5,`parentid` = 0,`ordering` = 7,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 23,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 9;
UPDATE `jos_content` SET `id` = 10,`title` = 'How do I localise Joomla! to my language?',`alias` = 'how-do-i-localise-joomla-to-my-language',`title_alias` = '',`introtext` = '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>',`fulltext` = '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 32,`created` = '2008-07-30 14:06:37',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-07-30 14:06:37',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-09-29 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 9,`parentid` = 0,`ordering` = 5,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 10,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 10;
UPDATE `jos_content` SET `id` = 11,`title` = 'How do I upgrade to Joomla! 1.5 ?',`alias` = 'how-do-i-upgrade-to-joomla-15',`title_alias` = '',`introtext` = '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>',`fulltext` = ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 28,`created` = '2008-07-30 20:27:52',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-07-30 20:27:52',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-09-29 12:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 10,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 14,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 11;
UPDATE `jos_content` SET `id` = 12,`title` = 'Why does Joomla! 1.5 use UTF-8 encoding?',`alias` = 'why-does-joomla-15-use-utf-8-encoding',`title_alias` = '',`introtext` = '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-05 01:11:29',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-05 01:11:29',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-03 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 8,`parentid` = 0,`ordering` = 8,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 29,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 12;
UPDATE `jos_content` SET `id` = 13,`title` = 'What happened to the locale setting?',`alias` = 'what-happened-to-the-locale-setting',`title_alias` = '',`introtext` = 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 28,`created` = '2008-08-06 16:47:35',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-06 16:47:35',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-05 14:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 11,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 13;
UPDATE `jos_content` SET `id` = 14,`title` = 'What is the FTP layer for?',`alias` = 'what-is-the-ftp-layer-for',`title_alias` = '',`introtext` = '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-06 21:27:49',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-06 21:27:49',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-05 16:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=',`version` = 6,`parentid` = 0,`ordering` = 6,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 23,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 14;
UPDATE `jos_content` SET `id` = 15,`title` = 'Can Joomla! 1.5 operate with PHP Safe Mode On?',`alias` = 'can-joomla-15-operate-with-php-safe-mode-on',`title_alias` = '',`introtext` = '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-06 19:28:35',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-06 19:28:35',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-05 14:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 4,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 8,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 15;
UPDATE `jos_content` SET `id` = 16,`title` = 'Only one edit window! How do I create "Read more..."?',`alias` = 'only-one-edit-window-how-do-i-create-read-more',`title_alias` = '',`introtext` = '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 28,`created` = '2008-08-06 19:29:28',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-06 19:29:28',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-05 14:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 4,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 20,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 16;
UPDATE `jos_content` SET `id` = 17,`title` = 'My MySQL database does not support UTF-8. Do I have a problem?',`alias` = 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem',`title_alias` = '',`introtext` = 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-07 09:30:37',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-07 09:30:37',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-05 20:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 10,`parentid` = 0,`ordering` = 7,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 9,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 17;
UPDATE `jos_content` SET `id` = 18,`title` = 'Joomla! Features',`alias` = 'joomla-features',`title_alias` = '',`introtext` = '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX',`fulltext` = '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 29,`created` = '2008-08-08 23:32:45',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-08 23:32:45',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-07 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 11,`parentid` = 0,`ordering` = 4,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 59,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 18;
UPDATE `jos_content` SET `id` = 19,`title` = 'Joomla! Overview',`alias` = 'joomla-overview',`title_alias` = '',`introtext` = '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 29,`created` = '2008-08-09 07:49:20',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-09 07:49:20',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-07 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 13,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 150,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 19;
UPDATE `jos_content` SET `id` = 20,`title` = 'Support and Documentation',`alias` = 'support-and-documentation',`title_alias` = '',`introtext` = '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 25,`created` = '2008-08-09 08:33:57',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-09 08:33:57',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-07 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 13,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 6,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 20;
UPDATE `jos_content` SET `id` = 21,`title` = 'Joomla! Facts',`alias` = 'joomla-facts',`title_alias` = '',`introtext` = '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 210,000 active registered Users on the <a href="http://forum.joomla.org" target="_blank" title="Joomla Forums">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/" target="_blank" title="JoomlaCode">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Well over 6,000,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>Nearly 4,000 extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" target="_blank" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li></ul>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 30,`created` = '2008-08-09 16:46:37',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-09 16:46:37',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-07 14:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 13,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 50,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 21;
UPDATE `jos_content` SET `id` = 22,`title` = 'What''s New in 1.5?',`alias` = 'whats-new-in-15',`title_alias` = '',`introtext` = '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>',`fulltext` = '<p style="margin-bottom: 0in">In Joomla! 1.5, you''ll notice: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</p>   </li><li>     <p style="margin-bottom: 0in"> Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</p>   </li><li>     <p style="margin-bottom: 0in"> Extended integration of external applications through Web services and remote authentication such as the Lightweight Directory Access Protocol (LDAP)</p>   </li><li>     <p style="margin-bottom: 0in"> Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</p>   </li><li>     <p style="margin-bottom: 0in">       A more sustainable and flexible framework for Component and Extension developers</p>   </li><li>     <p style="margin-bottom: 0in">Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</p></li></ul>',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 29,`created` = '2008-08-11 22:13:58',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 22:13:58',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 18:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 10,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 92,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 22;
UPDATE `jos_content` SET `id` = 23,`title` = 'Platforms and Open Standards',`alias` = 'platforms-and-open-standards',`title_alias` = '',`introtext` = '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 25,`created` = '2008-08-11 04:22:14',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 04:22:14',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 08:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 11,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 23;
UPDATE `jos_content` SET `id` = 24,`title` = 'Content Layouts',`alias` = 'content-layouts',`title_alias` = '',`introtext` = '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 29,`created` = '2008-08-12 22:33:10',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-12 22:33:10',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-11 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 11,`parentid` = 0,`ordering` = 5,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 70,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 24;
UPDATE `jos_content` SET `id` = 25,`title` = 'What are the requirements to run Joomla! 1.5?',`alias` = 'what-are-the-requirements-to-run-joomla-15',`title_alias` = '',`introtext` = '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details, see <a href="http://www.joomla.org/about-joomla/technical-requirements.html" target="_blank" title="Joomla! Technical Requirements">Joomla! Technical Requirements</a>.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-11 00:42:31',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 00:42:31',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 5,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 28,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 25;
UPDATE `jos_content` SET `id` = 26,`title` = 'Extensions',`alias` = 'extensions',`title_alias` = '',`introtext` = '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the <br />   <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 29,`created` = '2008-08-11 06:00:00',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 06:00:00',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 22:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 24,`parentid` = 0,`ordering` = 3,`metakey` = 'About Joomla!, General, Extensions',`metadesc` = '',`access` = 0,`hits` = 104,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 26;
UPDATE `jos_content` SET `id` = 27,`title` = 'The Joomla! Community',`alias` = 'the-joomla-community',`title_alias` = '',`introtext` = '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a> section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul>	<li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li>	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community. </li></ul><p>These are just a few ways you can contribute. See <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a> for many more ways.</p>',`fulltext` = '',`state` = 1,`sectionid` = 4,`mask` = 0,`catid` = 30,`created` = '2008-08-12 16:50:48',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-12 16:50:48',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-11 02:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 12,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 53,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 27;
UPDATE `jos_content` SET `id` = 28,`title` = 'How do I install Joomla! 1.5?',`alias` = 'how-do-i-install-joomla-15',`title_alias` = '',`introtext` = '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-11 01:10:59',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 01:10:59',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 5,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 5,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 28;
UPDATE `jos_content` SET `id` = 29,`title` = 'What is the purpose of the collation selection in the installation screen?',`alias` = 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen',`title_alias` = '',`introtext` = 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 32,`created` = '2008-08-11 03:11:38',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 03:11:38',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 08:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=',`version` = 4,`parentid` = 0,`ordering` = 4,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 6,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 29;
UPDATE `jos_content` SET `id` = 30,`title` = 'What languages are supported by Joomla! 1.5?',`alias` = 'what-languages-are-supported-by-joomla-15',`title_alias` = '',`introtext` = 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. ',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 32,`created` = '2008-08-11 01:12:18',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 01:12:18',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 5,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 8,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 30;
UPDATE `jos_content` SET `id` = 31,`title` = 'Is it useful to install the sample data?',`alias` = 'is-it-useful-to-install-the-sample-data',`title_alias` = '',`introtext` = 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 27,`created` = '2008-08-11 09:12:55',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 09:12:55',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 3,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 31;
UPDATE `jos_content` SET `id` = 32,`title` = 'Where is the Static Content Item?',`alias` = 'where-is-the-static-content',`title_alias` = '',`introtext` = '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 28,`created` = '2008-08-10 23:13:33',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-10 23:13:33',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 04:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 6,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 5,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 32;
UPDATE `jos_content` SET `id` = 33,`title` = 'What is an Uncategorised Article?',`alias` = 'what-is-uncategorised-article',`title_alias` = '',`introtext` = 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-11 15:14:11',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 15:14:11',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 12:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 8,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 6,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 33;
UPDATE `jos_content` SET `id` = 34,`title` = 'Does the PDF icon render pictures and special characters?',`alias` = 'does-the-pdf-icon-render-pictures-and-special-characters',`title_alias` = '',`introtext` = 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 32,`created` = '2008-08-11 17:14:57',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 17:14:57',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 14:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 6,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 34;
UPDATE `jos_content` SET `id` = 35,`title` = 'Is it possible to change A Menu Item''s Type?',`alias` = 'is-it-possible-to-change-the-types-of-menu-entries',`title_alias` = '',`introtext` = '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 31,`created` = '2008-08-10 23:15:36',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-10 23:15:36',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 04:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 18,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 35;
UPDATE `jos_content` SET `id` = 36,`title` = 'Where did the Installers go?',`alias` = 'where-did-the-installer-go',`title_alias` = '',`introtext` = 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 28,`created` = '2008-08-10 23:16:20',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-10 23:16:20',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 04:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 4,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 36;
UPDATE `jos_content` SET `id` = 37,`title` = 'Where did the Mambots go?',`alias` = 'where-did-the-mambots-go',`title_alias` = '',`introtext` = '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 28,`created` = '2008-08-11 09:17:00',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 09:17:00',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 5,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 4,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 37;
UPDATE `jos_content` SET `id` = 38,`title` = 'I installed with my own language, but the Back-end is still in English',`alias` = 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english',`title_alias` = '',`introtext` = '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 32,`created` = '2008-08-11 17:18:14',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 17:18:14',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 14:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 7,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 38;
UPDATE `jos_content` SET `id` = 39,`title` = 'How do I remove an Article?',`alias` = 'how-do-i-remove-an-article',`title_alias` = '',`introtext` = '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 27,`created` = '2008-08-11 09:19:01',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 09:19:01',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 6,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 4,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 39;
UPDATE `jos_content` SET `id` = 40,`title` = 'What is the difference between Archiving and Trashing an Article? ',`alias` = 'what-is-the-difference-between-archiving-and-trashing-an-article',`title_alias` = '',`introtext` = '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>',`fulltext` = '',`state` = 1,`sectionid` = 3,`mask` = 0,`catid` = 27,`created` = '2008-08-11 05:19:43',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-11 05:19:43',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-10 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 8,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 5,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 40;
UPDATE `jos_content` SET `id` = 41,`title` = 'Newsflash 5',`alias` = 'newsflash-5',`title_alias` = '',`introtext` = 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 3,`created` = '2008-08-12 00:17:31',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-12 00:17:31',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-11 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 5,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 4,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 41;
UPDATE `jos_content` SET `id` = 42,`title` = 'Newsflash 4',`alias` = 'newsflash-4',`title_alias` = '',`introtext` = 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 3,`created` = '2008-08-12 00:25:50',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-12 00:25:50',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-11 06:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 5,`parentid` = 0,`ordering` = 1,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 5,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 42;
UPDATE `jos_content` SET `id` = 43,`title` = 'Example Pages and Menu Links',`alias` = 'example-pages-and-menu-links',`title_alias` = '',`introtext` = '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>',`fulltext` = '',`state` = 1,`sectionid` = 0,`mask` = 0,`catid` = 0,`created` = '2008-08-12 09:26:52',`created_by` = 62,`created_by_alias` = '',`modified` = '2008-08-12 09:26:52',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2006-10-11 10:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 7,`parentid` = 0,`ordering` = 1,`metakey` = 'Uncategorized, Uncategorized, Example Pages and Menu Links',`metadesc` = '',`access` = 0,`hits` = 43,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 43;
UPDATE `jos_content` SET `id` = 44,`title` = 'Joomla! Security Strike Team',`alias` = 'joomla-security-strike-team',`title_alias` = '',`introtext` = '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>',`fulltext` = '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 1,`created` = '2007-07-07 09:54:06',`created_by` = 62,`created_by_alias` = '',`modified` = '2007-07-07 09:54:06',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-07-06 22:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 1,`parentid` = 0,`ordering` = 3,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 0,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 44;
UPDATE `jos_content` SET `id` = 45,`title` = 'Joomla! Community Portal',`alias` = 'joomla-community-portal',`title_alias` = '',`introtext` = '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://community.joomla.org/magazine.html" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>',`fulltext` = '',`state` = 1,`sectionid` = 1,`mask` = 0,`catid` = 1,`created` = '2007-07-07 09:54:06',`created_by` = 62,`created_by_alias` = '',`modified` = '2007-07-07 09:54:06',`modified_by` = 62,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`publish_up` = '2004-07-06 22:00:00',`publish_down` = '0000-00-00 00:00:00',`images` = '',`urls` = '',`attribs` = 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',`version` = 2,`parentid` = 0,`ordering` = 2,`metakey` = '',`metadesc` = '',`access` = 0,`hits` = 5,`metadata` = 'robots=\nauthor=' WHERE  `jos_content`.`id` = 45;

-- --------------------------------------------------------

--
-- Structure de la table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_content_frontpage`
--

UPDATE `jos_content_frontpage` SET `content_id` = 45,`ordering` = 2 WHERE  `jos_content_frontpage`.`content_id` = 45;
UPDATE `jos_content_frontpage` SET `content_id` = 6,`ordering` = 3 WHERE  `jos_content_frontpage`.`content_id` = 6;
UPDATE `jos_content_frontpage` SET `content_id` = 44,`ordering` = 4 WHERE  `jos_content_frontpage`.`content_id` = 44;
UPDATE `jos_content_frontpage` SET `content_id` = 5,`ordering` = 5 WHERE  `jos_content_frontpage`.`content_id` = 5;
UPDATE `jos_content_frontpage` SET `content_id` = 9,`ordering` = 6 WHERE  `jos_content_frontpage`.`content_id` = 9;
UPDATE `jos_content_frontpage` SET `content_id` = 30,`ordering` = 7 WHERE  `jos_content_frontpage`.`content_id` = 30;
UPDATE `jos_content_frontpage` SET `content_id` = 16,`ordering` = 8 WHERE  `jos_content_frontpage`.`content_id` = 16;

-- --------------------------------------------------------

--
-- Structure de la table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `jos_core_acl_aro`
--

UPDATE `jos_core_acl_aro` SET `id` = 10,`section_value` = 'users',`value` = '62',`order_value` = 0,`name` = 'Administrator',`hidden` = 0 WHERE  `jos_core_acl_aro`.`id` = 10;
UPDATE `jos_core_acl_aro` SET `id` = 11,`section_value` = 'users',`value` = '63',`order_value` = 0,`name` = 'Feki',`hidden` = 0 WHERE  `jos_core_acl_aro`.`id` = 11;
UPDATE `jos_core_acl_aro` SET `id` = 13,`section_value` = 'users',`value` = '67',`order_value` = 0,`name` = 'Feki Chaima',`hidden` = 0 WHERE  `jos_core_acl_aro`.`id` = 13;

-- --------------------------------------------------------

--
-- Structure de la table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `jos_core_acl_aro_groups`
--

UPDATE `jos_core_acl_aro_groups` SET `id` = 17,`parent_id` = 0,`name` = 'ROOT',`lft` = 1,`rgt` = 22,`value` = 'ROOT' WHERE  `jos_core_acl_aro_groups`.`id` = 17;
UPDATE `jos_core_acl_aro_groups` SET `id` = 28,`parent_id` = 17,`name` = 'USERS',`lft` = 2,`rgt` = 21,`value` = 'USERS' WHERE  `jos_core_acl_aro_groups`.`id` = 28;
UPDATE `jos_core_acl_aro_groups` SET `id` = 29,`parent_id` = 28,`name` = 'Public Frontend',`lft` = 3,`rgt` = 12,`value` = 'Public Frontend' WHERE  `jos_core_acl_aro_groups`.`id` = 29;
UPDATE `jos_core_acl_aro_groups` SET `id` = 18,`parent_id` = 29,`name` = 'Registered',`lft` = 4,`rgt` = 11,`value` = 'Registered' WHERE  `jos_core_acl_aro_groups`.`id` = 18;
UPDATE `jos_core_acl_aro_groups` SET `id` = 19,`parent_id` = 18,`name` = 'Author',`lft` = 5,`rgt` = 10,`value` = 'Author' WHERE  `jos_core_acl_aro_groups`.`id` = 19;
UPDATE `jos_core_acl_aro_groups` SET `id` = 20,`parent_id` = 19,`name` = 'Editor',`lft` = 6,`rgt` = 9,`value` = 'Editor' WHERE  `jos_core_acl_aro_groups`.`id` = 20;
UPDATE `jos_core_acl_aro_groups` SET `id` = 21,`parent_id` = 20,`name` = 'Publisher',`lft` = 7,`rgt` = 8,`value` = 'Publisher' WHERE  `jos_core_acl_aro_groups`.`id` = 21;
UPDATE `jos_core_acl_aro_groups` SET `id` = 30,`parent_id` = 28,`name` = 'Public Backend',`lft` = 13,`rgt` = 20,`value` = 'Public Backend' WHERE  `jos_core_acl_aro_groups`.`id` = 30;
UPDATE `jos_core_acl_aro_groups` SET `id` = 23,`parent_id` = 30,`name` = 'Manager',`lft` = 14,`rgt` = 19,`value` = 'Manager' WHERE  `jos_core_acl_aro_groups`.`id` = 23;
UPDATE `jos_core_acl_aro_groups` SET `id` = 24,`parent_id` = 23,`name` = 'Administrator',`lft` = 15,`rgt` = 18,`value` = 'Administrator' WHERE  `jos_core_acl_aro_groups`.`id` = 24;
UPDATE `jos_core_acl_aro_groups` SET `id` = 25,`parent_id` = 24,`name` = 'Super Administrator',`lft` = 16,`rgt` = 17,`value` = 'Super Administrator' WHERE  `jos_core_acl_aro_groups`.`id` = 25;

-- --------------------------------------------------------

--
-- Structure de la table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `jos_core_acl_aro_sections`
--

UPDATE `jos_core_acl_aro_sections` SET `id` = 10,`value` = 'users',`order_value` = 1,`name` = 'Users',`hidden` = 0 WHERE  `jos_core_acl_aro_sections`.`id` = 10;

-- --------------------------------------------------------

--
-- Structure de la table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_core_acl_groups_aro_map`
--

UPDATE `jos_core_acl_groups_aro_map` SET `group_id` = 18,`section_value` = '',`aro_id` = 13 WHERE  `jos_core_acl_groups_aro_map`.`group_id` = 18 AND `jos_core_acl_groups_aro_map`.`section_value` = '' AND `jos_core_acl_groups_aro_map`.`aro_id` = 13;
UPDATE `jos_core_acl_groups_aro_map` SET `group_id` = 24,`section_value` = '',`aro_id` = 11 WHERE  `jos_core_acl_groups_aro_map`.`group_id` = 24 AND `jos_core_acl_groups_aro_map`.`section_value` = '' AND `jos_core_acl_groups_aro_map`.`aro_id` = 11;
UPDATE `jos_core_acl_groups_aro_map` SET `group_id` = 25,`section_value` = '',`aro_id` = 10 WHERE  `jos_core_acl_groups_aro_map`.`group_id` = 25 AND `jos_core_acl_groups_aro_map`.`section_value` = '' AND `jos_core_acl_groups_aro_map`.`aro_id` = 10;

-- --------------------------------------------------------

--
-- Structure de la table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_groups`
--

UPDATE `jos_groups` SET `id` = 0,`name` = 'Public' WHERE  `jos_groups`.`id` = 0;
UPDATE `jos_groups` SET `id` = 1,`name` = 'Registered' WHERE  `jos_groups`.`id` = 1;
UPDATE `jos_groups` SET `id` = 2,`name` = 'Special' WHERE  `jos_groups`.`id` = 2;

-- --------------------------------------------------------

--
-- Structure de la table `jos_hello`
--

CREATE TABLE IF NOT EXISTS `jos_hello` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `greeting` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `jos_hello`
--

UPDATE `jos_hello` SET `id` = 1,`greeting` = 'Hello, World!' WHERE  `jos_hello`.`id` = 1;
UPDATE `jos_hello` SET `id` = 2,`greeting` = 'Bonjour, Monde!' WHERE  `jos_hello`.`id` = 2;
UPDATE `jos_hello` SET `id` = 3,`greeting` = 'Ciao, Mondo!' WHERE  `jos_hello`.`id` = 3;
UPDATE `jos_hello` SET `id` = 4,`greeting` = '3asslama' WHERE  `jos_hello`.`id` = 4;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `greeting` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `jos_jaderp`
--

UPDATE `jos_jaderp` SET `id` = 1,`greeting` = 'jaderp, World!' WHERE  `jos_jaderp`.`id` = 1;
UPDATE `jos_jaderp` SET `id` = 2,`greeting` = 'Bonjour, Monde!' WHERE  `jos_jaderp`.`id` = 2;
UPDATE `jos_jaderp` SET `id` = 3,`greeting` = 'Ciao, Mondo!' WHERE  `jos_jaderp`.`id` = 3;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_menu`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `languagename` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `parent_name` varchar(255) NOT NULL,
  `component` varchar(255) NOT NULL,
  `menu_icon` varchar(255) NOT NULL,
  `desktop_icon` varchar(255) NOT NULL,
  UNIQUE KEY `name` (`name`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `jos_jaderp_menu`
--

UPDATE `jos_jaderp_menu` SET `id` = 1,`active` = 1,`name` = 'facture',`languagename` = 'MENU_FACTURES',`url` = '',`ordering` = 1,`parent_name` = '',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'facture';
UPDATE `jos_jaderp_menu` SET `id` = 2,`active` = 1,`name` = 'creationfacture',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 1,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'creationfacture';
UPDATE `jos_jaderp_menu` SET `id` = 3,`active` = 1,`name` = 'consultationfactures',`languagename` = 'MENU_FACTURES_CONS',`url` = 'index.php?option=com_jaderp&tast=facturescons',`ordering` = 2,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'consultationfactures';
UPDATE `jos_jaderp_menu` SET `id` = 4,`active` = 1,`name` = 'articles',`languagename` = 'MENU_ARTICLES',`url` = '',`ordering` = 2,`parent_name` = '',`component` = 'jarerp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'articles';
UPDATE `jos_jaderp_menu` SET `id` = 5,`active` = 1,`name` = 'creationarticle',`languagename` = 'MENU_ARTICLES_CREAT',`url` = 'index.php?option=com_jaderp&tast=articlescreat',`ordering` = 1,`parent_name` = 'articles',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'creationarticle';
UPDATE `jos_jaderp_menu` SET `id` = 6,`active` = 1,`name` = 'consultationfactures1',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 3,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'consultationfactures1';
UPDATE `jos_jaderp_menu` SET `id` = 7,`active` = 1,`name` = 'consultationfactures2',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 4,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'consultationfactures2';
UPDATE `jos_jaderp_menu` SET `id` = 8,`active` = 1,`name` = 'creationfacture1',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 5,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png' WHERE  `jos_jaderp_menu`.`name` = 'creationfacture1';

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_menu_user`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_menu_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `jos_jaderp_menu_user`
--

UPDATE `jos_jaderp_menu_user` SET `id` = 1,`ordering` = 1,`menu_id` = 1,`user_id` = 63,`active` = 1 WHERE  `jos_jaderp_menu_user`.`id` = 1;
UPDATE `jos_jaderp_menu_user` SET `id` = 2,`ordering` = 2,`menu_id` = 2,`user_id` = 63,`active` = 1 WHERE  `jos_jaderp_menu_user`.`id` = 2;
UPDATE `jos_jaderp_menu_user` SET `id` = 3,`ordering` = 3,`menu_id` = 3,`user_id` = 63,`active` = 1 WHERE  `jos_jaderp_menu_user`.`id` = 3;
UPDATE `jos_jaderp_menu_user` SET `id` = 4,`ordering` = 2,`menu_id` = 4,`user_id` = 63,`active` = 1 WHERE  `jos_jaderp_menu_user`.`id` = 4;
UPDATE `jos_jaderp_menu_user` SET `id` = 5,`ordering` = 1,`menu_id` = 5,`user_id` = 63,`active` = 1 WHERE  `jos_jaderp_menu_user`.`id` = 5;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomla_id` int(11) NOT NULL,
  `mat` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `num_piece` varchar(50) NOT NULL,
  `type_piece` varchar(25) NOT NULL DEFAULT 'CIN',
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `salaire` float NOT NULL,
  `startdate` date NOT NULL,
  `note` float NOT NULL,
  `position` varchar(50) NOT NULL,
  `present` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `jos_jaderp_users`
--

UPDATE `jos_jaderp_users` SET `id` = 1,`joomla_id` = 0,`mat` = '2332',`lastname` = 'Feki',`firstname` = 'Hichem',`num_piece` = '1222222',`type_piece` = 'CIN',`email` = 'feki.hichem@gmail.com',`phone` = '22393233',`salaire` = 2536,`startdate` = '0000-00-00',`note` = 25,`position` = 'Master',`present` = 1,`password` = '123456',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00' WHERE  `jos_jaderp_users`.`id` = 1;
UPDATE `jos_jaderp_users` SET `id` = 2,`joomla_id` = 92,`mat` = '142536',`lastname` = 'Feki',`firstname` = 'Chaima',`num_piece` = '12345679',`type_piece` = 'CIN',`email` = 'feki.hichem@gmail.cm',`phone` = '24751419',`salaire` = 0,`startdate` = '2009-06-02',`note` = 20,`position` = 'Binti',`present` = 0,`password` = '9ec90510b7d50691459da7e13457a9fb:5favpwMqnxO4qoSwz',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00' WHERE  `jos_jaderp_users`.`id` = 2;
UPDATE `jos_jaderp_users` SET `id` = 3,`joomla_id` = 86,`mat` = '253636',`lastname` = 'Feki',`firstname` = 'Eya',`num_piece` = '456855222',`type_piece` = 'CIN',`email` = 'feki.hichem@gmail.com',`phone` = '74464334',`salaire` = 1234,`startdate` = '2009-01-06',`note` = 12,`position` = 'Binti',`present` = 1,`password` = '9c7538621971f4ff085b9292c4fe2e8b:56Ehp9U3Z5CM1zo1s',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00' WHERE  `jos_jaderp_users`.`id` = 3;
UPDATE `jos_jaderp_users` SET `id` = 4,`joomla_id` = 66,`mat` = '123456',`lastname` = 'Chtourou',`firstname` = 'Souheila',`num_piece` = '14253689',`type_piece` = 'CIN',`email` = 'soussou@sous.com',`phone` = '24751419',`salaire` = 300,`startdate` = '0000-00-00',`note` = 15,`position` = 'Marti',`present` = 1,`password` = '7e39d0d5fadd36b41d0a95c46225ab47:7zb5QvgW72gFDYFLm',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00' WHERE  `jos_jaderp_users`.`id` = 4;
UPDATE `jos_jaderp_users` SET `id` = 5,`joomla_id` = 67,`mat` = '147258',`lastname` = 'Feki',`firstname` = 'Chaima',`num_piece` = '12345679',`type_piece` = 'CIN',`email` = 'feki.hichem@gmail.com',`phone` = '24751419',`salaire` = 1234,`startdate` = '0000-00-00',`note` = 15,`position` = 'Binti',`present` = 1,`password` = '0c827f11b42b77943a4e153a5d185361:qkeXcmeK0ChsJuWkd',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00' WHERE  `jos_jaderp_users`.`id` = 5;

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users_access`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_users_access` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `module_component` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `access_level` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `jos_jaderp_users_access`
--

UPDATE `jos_jaderp_users_access` SET `user_id` = 63,`module_component` = 'com_jaderp',`model` = 'Desktop',`view` = 'default',`access_level` = 5,`id` = 1 WHERE  `jos_jaderp_users_access`.`id` = 1;
UPDATE `jos_jaderp_users_access` SET `user_id` = 63,`module_component` = 'com_jaderp',`model` = 'Workers',`view` = 'add',`access_level` = 5,`id` = 2 WHERE  `jos_jaderp_users_access`.`id` = 2;

-- --------------------------------------------------------

--
-- Structure de la table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Contenu de la table `jos_menu`
--

UPDATE `jos_menu` SET `id` = 1,`menutype` = 'mainmenu',`name` = 'Home',`alias` = 'home',`link` = 'index.php?option=com_content&view=frontpage',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'show_page_title=1\npage_title=Welcome to the Frontpage\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 1 WHERE  `jos_menu`.`id` = 1;
UPDATE `jos_menu` SET `id` = 2,`menutype` = 'mainmenu',`name` = 'Joomla! License',`alias` = 'joomla-license',`link` = 'index.php?option=com_content&view=article&id=5',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 4,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 2;
UPDATE `jos_menu` SET `id` = 41,`menutype` = 'mainmenu',`name` = 'FAQ',`alias` = 'faq',`link` = 'index.php?option=com_content&view=section&id=3',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 6,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 41;
UPDATE `jos_menu` SET `id` = 11,`menutype` = 'othermenu',`name` = 'Joomla! Home',`alias` = 'joomla-home',`link` = 'http://www.joomla.org',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 11;
UPDATE `jos_menu` SET `id` = 12,`menutype` = 'othermenu',`name` = 'Joomla! Forums',`alias` = 'joomla-forums',`link` = 'http://forum.joomla.org',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 2,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 12;
UPDATE `jos_menu` SET `id` = 13,`menutype` = 'othermenu',`name` = 'Joomla! Documentation',`alias` = 'joomla-documentation',`link` = 'http://docs.joomla.org',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 3,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 13;
UPDATE `jos_menu` SET `id` = 14,`menutype` = 'othermenu',`name` = 'Joomla! Community',`alias` = 'joomla-community',`link` = 'http://community.joomla.org',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 4,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 14;
UPDATE `jos_menu` SET `id` = 15,`menutype` = 'othermenu',`name` = 'Joomla! Magazine',`alias` = 'joomla-community-magazine',`link` = 'http://community.joomla.org/magazine.html',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 5,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 15;
UPDATE `jos_menu` SET `id` = 16,`menutype` = 'othermenu',`name` = 'OSM Home',`alias` = 'osm-home',`link` = 'http://www.opensourcematters.org',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 6,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 6,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 16;
UPDATE `jos_menu` SET `id` = 17,`menutype` = 'othermenu',`name` = 'Administrator',`alias` = 'administrator',`link` = 'administrator/',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 7,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 17;
UPDATE `jos_menu` SET `id` = 18,`menutype` = 'topmenu',`name` = 'News',`alias` = 'news',`link` = 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 11,`sublevel` = 0,`ordering` = 3,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 3,`params` = 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 18;
UPDATE `jos_menu` SET `id` = 20,`menutype` = 'usermenu',`name` = 'Your Details',`alias` = 'your-details',`link` = 'index.php?option=com_user&view=user&task=edit',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 14,`sublevel` = 0,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 1,`utaccess` = 3,`params` = '',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 20;
UPDATE `jos_menu` SET `id` = 24,`menutype` = 'usermenu',`name` = 'Logout',`alias` = 'logout',`link` = 'index.php?option=com_user&view=login',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 14,`sublevel` = 0,`ordering` = 4,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 1,`utaccess` = 3,`params` = '',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 24;
UPDATE `jos_menu` SET `id` = 38,`menutype` = 'keyconcepts',`name` = 'Content Layouts',`alias` = 'content-layouts',`link` = 'index.php?option=com_content&view=article&id=24',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 2,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 38;
UPDATE `jos_menu` SET `id` = 27,`menutype` = 'mainmenu',`name` = 'Joomla! Overview',`alias` = 'joomla-overview',`link` = 'index.php?option=com_content&view=article&id=19',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 2,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 27;
UPDATE `jos_menu` SET `id` = 28,`menutype` = 'topmenu',`name` = 'About Joomla!',`alias` = 'about-joomla',`link` = 'index.php?option=com_content&view=article&id=25',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 28;
UPDATE `jos_menu` SET `id` = 29,`menutype` = 'topmenu',`name` = 'Features',`alias` = 'features',`link` = 'index.php?option=com_content&view=article&id=22',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 2,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 29;
UPDATE `jos_menu` SET `id` = 30,`menutype` = 'topmenu',`name` = 'The Community',`alias` = 'the-community',`link` = 'index.php?option=com_content&view=article&id=27',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 4,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 30;
UPDATE `jos_menu` SET `id` = 34,`menutype` = 'mainmenu',`name` = 'What''s New in 1.5?',`alias` = 'what-is-new-in-1-5',`link` = 'index.php?option=com_content&view=article&id=22',`type` = 'component',`published` = 1,`parent` = 27,`componentid` = 20,`sublevel` = 1,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 34;
UPDATE `jos_menu` SET `id` = 40,`menutype` = 'keyconcepts',`name` = 'Extensions',`alias` = 'extensions',`link` = 'index.php?option=com_content&view=article&id=26',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 40;
UPDATE `jos_menu` SET `id` = 37,`menutype` = 'mainmenu',`name` = 'More about Joomla!',`alias` = 'more-about-joomla',`link` = 'index.php?option=com_content&view=section&id=4',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 5,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 37;
UPDATE `jos_menu` SET `id` = 43,`menutype` = 'keyconcepts',`name` = 'Example Pages',`alias` = 'example-pages',`link` = 'index.php?option=com_content&view=article&id=43',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 3,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 43;
UPDATE `jos_menu` SET `id` = 44,`menutype` = 'ExamplePages',`name` = 'Section Blog',`alias` = 'section-blog',`link` = 'index.php?option=com_content&view=section&layout=blog&id=3',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 44;
UPDATE `jos_menu` SET `id` = 45,`menutype` = 'ExamplePages',`name` = 'Section Table',`alias` = 'section-table',`link` = 'index.php?option=com_content&view=section&id=3',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 2,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 45;
UPDATE `jos_menu` SET `id` = 46,`menutype` = 'ExamplePages',`name` = 'Category Blog',`alias` = 'categoryblog',`link` = 'index.php?option=com_content&view=category&layout=blog&id=31',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 3,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 46;
UPDATE `jos_menu` SET `id` = 47,`menutype` = 'ExamplePages',`name` = 'Category Table',`alias` = 'category-table',`link` = 'index.php?option=com_content&view=category&id=32',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 4,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 47;
UPDATE `jos_menu` SET `id` = 48,`menutype` = 'mainmenu',`name` = 'Web Links',`alias` = 'web-links',`link` = 'index.php?option=com_weblinks&view=categories',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 4,`sublevel` = 0,`ordering` = 8,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 48;
UPDATE `jos_menu` SET `id` = 49,`menutype` = 'mainmenu',`name` = 'News Feeds',`alias` = 'news-feeds',`link` = 'index.php?option=com_newsfeeds&view=categories',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 11,`sublevel` = 0,`ordering` = 9,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 49;
UPDATE `jos_menu` SET `id` = 50,`menutype` = 'mainmenu',`name` = 'The News',`alias` = 'the-news',`link` = 'index.php?option=com_content&view=category&layout=blog&id=1',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 7,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 50;
UPDATE `jos_menu` SET `id` = 51,`menutype` = 'usermenu',`name` = 'Submit an Article',`alias` = 'submit-an-article',`link` = 'index.php?option=com_content&view=article&layout=form',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 20,`sublevel` = 0,`ordering` = 2,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 2,`utaccess` = 0,`params` = '',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 51;
UPDATE `jos_menu` SET `id` = 52,`menutype` = 'usermenu',`name` = 'Submit a Web Link',`alias` = 'submit-a-web-link',`link` = 'index.php?option=com_weblinks&view=weblink&layout=form',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 4,`sublevel` = 0,`ordering` = 3,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 2,`utaccess` = 0,`params` = '',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 52;
UPDATE `jos_menu` SET `id` = 53,`menutype` = 'topmenu',`name` = 'Connecter/Déconnecter',`alias` = 'connecterdeconnecter',`link` = 'index.php?option=com_user&view=login',`type` = 'component',`published` = 1,`parent` = 0,`componentid` = 14,`sublevel` = 0,`ordering` = 5,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'show_login_title=1\nheader_login=\nlogin=\nlogin_message=0\ndescription_login=0\ndescription_login_text=\nimage_login=\nimage_login_align=right\nshow_logout_title=1\nheader_logout=\nlogout=\nlogout_message=1\ndescription_logout=1\ndescription_logout_text=\nimage_logout=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 53;
UPDATE `jos_menu` SET `id` = 54,`menutype` = 'topmenu',`name` = 'JAdERP',`alias` = 'jaderp',`link` = 'index.php?option=com_jaderp',`type` = 'url',`published` = 1,`parent` = 0,`componentid` = 0,`sublevel` = 0,`ordering` = 6,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`pollid` = 0,`browserNav` = 0,`access` = 0,`utaccess` = 0,`params` = 'menu_image=-1\n\n',`lft` = 0,`rgt` = 0,`home` = 0 WHERE  `jos_menu`.`id` = 54;

-- --------------------------------------------------------

--
-- Structure de la table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `jos_menu_types`
--

UPDATE `jos_menu_types` SET `id` = 1,`menutype` = 'mainmenu',`title` = 'Main Menu',`description` = 'The main menu for the site' WHERE  `jos_menu_types`.`id` = 1;
UPDATE `jos_menu_types` SET `id` = 2,`menutype` = 'usermenu',`title` = 'User Menu',`description` = 'A Menu for logged in Users' WHERE  `jos_menu_types`.`id` = 2;
UPDATE `jos_menu_types` SET `id` = 3,`menutype` = 'topmenu',`title` = 'Top Menu',`description` = 'Top level navigation' WHERE  `jos_menu_types`.`id` = 3;
UPDATE `jos_menu_types` SET `id` = 4,`menutype` = 'othermenu',`title` = 'Resources',`description` = 'Additional links' WHERE  `jos_menu_types`.`id` = 4;
UPDATE `jos_menu_types` SET `id` = 5,`menutype` = 'ExamplePages',`title` = 'Example Pages',`description` = 'Example Pages' WHERE  `jos_menu_types`.`id` = 5;
UPDATE `jos_menu_types` SET `id` = 6,`menutype` = 'keyconcepts',`title` = 'Key Concepts',`description` = 'This describes some critical information for new Users.' WHERE  `jos_menu_types`.`id` = 6;

-- --------------------------------------------------------

--
-- Structure de la table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `jos_messages`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Contenu de la table `jos_modules`
--

UPDATE `jos_modules` SET `id` = 1,`title` = 'Main Menu',`content` = '',`ordering` = 1,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_mainmenu',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'menutype=mainmenu\nmoduleclass_sfx=_menu\n',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 1;
UPDATE `jos_modules` SET `id` = 2,`title` = 'Login',`content` = '',`ordering` = 1,`position` = 'login',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_login',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 2;
UPDATE `jos_modules` SET `id` = 3,`title` = 'Popular',`content` = '',`ordering` = 3,`position` = 'cpanel',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_popular',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 3;
UPDATE `jos_modules` SET `id` = 4,`title` = 'Recent added Articles',`content` = '',`ordering` = 4,`position` = 'cpanel',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_latest',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = 'ordering=c_dsc\nuser_id=0\ncache=0\n\n',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 4;
UPDATE `jos_modules` SET `id` = 5,`title` = 'Menu Stats',`content` = '',`ordering` = 5,`position` = 'cpanel',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_stats',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 5;
UPDATE `jos_modules` SET `id` = 6,`title` = 'Unread Messages',`content` = '',`ordering` = 1,`position` = 'header',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_unread',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 6;
UPDATE `jos_modules` SET `id` = 7,`title` = 'Online Users',`content` = '',`ordering` = 2,`position` = 'header',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_online',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 7;
UPDATE `jos_modules` SET `id` = 8,`title` = 'Toolbar',`content` = '',`ordering` = 1,`position` = 'toolbar',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_toolbar',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 8;
UPDATE `jos_modules` SET `id` = 9,`title` = 'Quick Icons',`content` = '',`ordering` = 1,`position` = 'icon',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_quickicon',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 9;
UPDATE `jos_modules` SET `id` = 10,`title` = 'Logged in Users',`content` = '',`ordering` = 2,`position` = 'cpanel',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_logged',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 10;
UPDATE `jos_modules` SET `id` = 11,`title` = 'Footer',`content` = '',`ordering` = 0,`position` = 'footer',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_footer',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 11;
UPDATE `jos_modules` SET `id` = 12,`title` = 'Admin Menu',`content` = '',`ordering` = 1,`position` = 'menu',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_menu',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 12;
UPDATE `jos_modules` SET `id` = 13,`title` = 'Admin SubMenu',`content` = '',`ordering` = 1,`position` = 'submenu',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_submenu',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 13;
UPDATE `jos_modules` SET `id` = 14,`title` = 'User Status',`content` = '',`ordering` = 1,`position` = 'status',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_status',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 14;
UPDATE `jos_modules` SET `id` = 15,`title` = 'Title',`content` = '',`ordering` = 1,`position` = 'title',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_title',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 15;
UPDATE `jos_modules` SET `id` = 16,`title` = 'Polls',`content` = '',`ordering` = 1,`position` = 'right',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_poll',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'id=14\ncache=1',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 16;
UPDATE `jos_modules` SET `id` = 17,`title` = 'User Menu',`content` = '',`ordering` = 4,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_mainmenu',`numnews` = 0,`access` = 1,`showtitle` = 1,`params` = 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 17;
UPDATE `jos_modules` SET `id` = 18,`title` = 'Login Form',`content` = '',`ordering` = 8,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_login',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=54\nlogout=\ngreeting=1\nname=1\nusesecure=0\n\n',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 18;
UPDATE `jos_modules` SET `id` = 19,`title` = 'Latest News',`content` = '',`ordering` = 4,`position` = 'user1',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_latestnews',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 19;
UPDATE `jos_modules` SET `id` = 20,`title` = 'Statistics',`content` = '',`ordering` = 6,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_stats',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 20;
UPDATE `jos_modules` SET `id` = 21,`title` = 'Who''s Online',`content` = '',`ordering` = 1,`position` = 'right',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_whosonline',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'online=1\nusers=1\nmoduleclass_sfx=',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 21;
UPDATE `jos_modules` SET `id` = 22,`title` = 'Popular',`content` = '',`ordering` = 6,`position` = 'user2',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_mostread',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 22;
UPDATE `jos_modules` SET `id` = 23,`title` = 'Archive',`content` = '',`ordering` = 9,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_archive',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 23;
UPDATE `jos_modules` SET `id` = 24,`title` = 'Sections',`content` = '',`ordering` = 10,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_sections',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 24;
UPDATE `jos_modules` SET `id` = 25,`title` = 'Newsflash',`content` = '',`ordering` = 1,`position` = 'top',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_newsflash',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 25;
UPDATE `jos_modules` SET `id` = 26,`title` = 'Related Items',`content` = '',`ordering` = 11,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_related_items',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 26;
UPDATE `jos_modules` SET `id` = 27,`title` = 'Search',`content` = '',`ordering` = 1,`position` = 'user4',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_search',`numnews` = 0,`access` = 0,`showtitle` = 0,`params` = 'cache=1',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 27;
UPDATE `jos_modules` SET `id` = 28,`title` = 'Random Image',`content` = '',`ordering` = 9,`position` = 'right',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_random_image',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 28;
UPDATE `jos_modules` SET `id` = 29,`title` = 'Top Menu',`content` = '',`ordering` = 1,`position` = 'user3',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_mainmenu',`numnews` = 0,`access` = 0,`showtitle` = 0,`params` = 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 29;
UPDATE `jos_modules` SET `id` = 30,`title` = 'Banners',`content` = '',`ordering` = 1,`position` = 'footer',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_banners',`numnews` = 0,`access` = 0,`showtitle` = 0,`params` = 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 30;
UPDATE `jos_modules` SET `id` = 31,`title` = 'Resources',`content` = '',`ordering` = 2,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_mainmenu',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 31;
UPDATE `jos_modules` SET `id` = 32,`title` = 'Wrapper',`content` = '',`ordering` = 12,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_wrapper',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = '',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 32;
UPDATE `jos_modules` SET `id` = 33,`title` = 'Footer',`content` = '',`ordering` = 2,`position` = 'footer',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_footer',`numnews` = 0,`access` = 0,`showtitle` = 0,`params` = 'cache=1\n\n',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 33;
UPDATE `jos_modules` SET `id` = 34,`title` = 'Feed Display',`content` = '',`ordering` = 13,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_feed',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = '',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 34;
UPDATE `jos_modules` SET `id` = 35,`title` = 'Breadcrumbs',`content` = '',`ordering` = 1,`position` = 'breadcrumb',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_breadcrumbs',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 35;
UPDATE `jos_modules` SET `id` = 36,`title` = 'Syndication',`content` = '',`ordering` = 3,`position` = 'syndicate',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_syndicate',`numnews` = 0,`access` = 0,`showtitle` = 0,`params` = '',`iscore` = 1,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 36;
UPDATE `jos_modules` SET `id` = 38,`title` = 'Advertisement',`content` = '',`ordering` = 3,`position` = 'right',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_banners',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 38;
UPDATE `jos_modules` SET `id` = 39,`title` = 'Example Pages',`content` = '',`ordering` = 5,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_mainmenu',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 39;
UPDATE `jos_modules` SET `id` = 40,`title` = 'Key Concepts',`content` = '',`ordering` = 3,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 0,`module` = 'mod_mainmenu',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 40;
UPDATE `jos_modules` SET `id` = 41,`title` = 'Welcome to Joomla!',`content` = '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>',`ordering` = 0,`position` = 'cpanel',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_custom',`numnews` = 0,`access` = 2,`showtitle` = 1,`params` = 'moduleclass_sfx=\n\n',`iscore` = 1,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 41;
UPDATE `jos_modules` SET `id` = 42,`title` = 'Joomla! Security Newsfeed',`content` = '',`ordering` = 6,`position` = 'cpanel',`checked_out` = 62,`checked_out_time` = '2008-10-25 20:15:17',`published` = 1,`module` = 'mod_feed',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n',`iscore` = 0,`client_id` = 1,`control` = '' WHERE  `jos_modules`.`id` = 42;
UPDATE `jos_modules` SET `id` = 43,`title` = 'Inserter',`content` = '',`ordering` = 0,`position` = 'left',`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`module` = 'mod_inserter',`numnews` = 0,`access` = 0,`showtitle` = 1,`params` = 'position=inserter\nchange=0\nslider=0\nJavaScript=0\nspeed=3000\nwidth=auto\nheight=auto\npadding=5px\nbgcolor=#FFFFFF\nborder=1px solid #CCCCCC\ntab_bgcolor=#F6F6F6\ntab_font=bold 13px Arial\ntab_font_color=#000000\ntab_padding=5px 11px 5px 11px\ntab_margin_left=0\ntab_margin_right=0\nsel_tab_bgcolor=#FFFFFF\nsel_tab_font_color=#135CAE\nhover_tab_bgcolor=#FFFFFF\nhover_tab_font_color=#135CAE\ncache=0\ncache_time=900\nmoduleclass_sfx=\n\n',`iscore` = 0,`client_id` = 0,`control` = '' WHERE  `jos_modules`.`id` = 43;

-- --------------------------------------------------------

--
-- Structure de la table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_modules_menu`
--

UPDATE `jos_modules_menu` SET `moduleid` = 1,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 1 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 16,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 16 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 17,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 17 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 18,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 18 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 19,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 19 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 19,`menuid` = 2 WHERE  `jos_modules_menu`.`moduleid` = 19 AND `jos_modules_menu`.`menuid` = 2;
UPDATE `jos_modules_menu` SET `moduleid` = 19,`menuid` = 4 WHERE  `jos_modules_menu`.`moduleid` = 19 AND `jos_modules_menu`.`menuid` = 4;
UPDATE `jos_modules_menu` SET `moduleid` = 19,`menuid` = 27 WHERE  `jos_modules_menu`.`moduleid` = 19 AND `jos_modules_menu`.`menuid` = 27;
UPDATE `jos_modules_menu` SET `moduleid` = 19,`menuid` = 36 WHERE  `jos_modules_menu`.`moduleid` = 19 AND `jos_modules_menu`.`menuid` = 36;
UPDATE `jos_modules_menu` SET `moduleid` = 21,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 21 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 22,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 22 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 22,`menuid` = 2 WHERE  `jos_modules_menu`.`moduleid` = 22 AND `jos_modules_menu`.`menuid` = 2;
UPDATE `jos_modules_menu` SET `moduleid` = 22,`menuid` = 4 WHERE  `jos_modules_menu`.`moduleid` = 22 AND `jos_modules_menu`.`menuid` = 4;
UPDATE `jos_modules_menu` SET `moduleid` = 22,`menuid` = 27 WHERE  `jos_modules_menu`.`moduleid` = 22 AND `jos_modules_menu`.`menuid` = 27;
UPDATE `jos_modules_menu` SET `moduleid` = 22,`menuid` = 36 WHERE  `jos_modules_menu`.`moduleid` = 22 AND `jos_modules_menu`.`menuid` = 36;
UPDATE `jos_modules_menu` SET `moduleid` = 25,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 25 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 27,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 27 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 29,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 29 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 30,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 30 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 31,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 31 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 32,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 32 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 33,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 33 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 34,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 34 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 35,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 35 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 36,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 36 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 38,`menuid` = 1 WHERE  `jos_modules_menu`.`moduleid` = 38 AND `jos_modules_menu`.`menuid` = 1;
UPDATE `jos_modules_menu` SET `moduleid` = 39,`menuid` = 43 WHERE  `jos_modules_menu`.`moduleid` = 39 AND `jos_modules_menu`.`menuid` = 43;
UPDATE `jos_modules_menu` SET `moduleid` = 39,`menuid` = 44 WHERE  `jos_modules_menu`.`moduleid` = 39 AND `jos_modules_menu`.`menuid` = 44;
UPDATE `jos_modules_menu` SET `moduleid` = 39,`menuid` = 45 WHERE  `jos_modules_menu`.`moduleid` = 39 AND `jos_modules_menu`.`menuid` = 45;
UPDATE `jos_modules_menu` SET `moduleid` = 39,`menuid` = 46 WHERE  `jos_modules_menu`.`moduleid` = 39 AND `jos_modules_menu`.`menuid` = 46;
UPDATE `jos_modules_menu` SET `moduleid` = 39,`menuid` = 47 WHERE  `jos_modules_menu`.`moduleid` = 39 AND `jos_modules_menu`.`menuid` = 47;
UPDATE `jos_modules_menu` SET `moduleid` = 40,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 40 AND `jos_modules_menu`.`menuid` = 0;
UPDATE `jos_modules_menu` SET `moduleid` = 43,`menuid` = 0 WHERE  `jos_modules_menu`.`moduleid` = 43 AND `jos_modules_menu`.`menuid` = 0;

-- --------------------------------------------------------

--
-- Structure de la table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `jos_newsfeeds`
--

UPDATE `jos_newsfeeds` SET `catid` = 4,`id` = 1,`name` = 'Joomla! Announcements',`alias` = 'joomla-official-news',`link` = 'http://feeds.joomla.org/JoomlaAnnouncements',`filename` = '',`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 1,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 1;
UPDATE `jos_newsfeeds` SET `catid` = 4,`id` = 2,`name` = 'Joomla! Core Team Blog',`alias` = 'joomla-core-team-blog',`link` = 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog',`filename` = '',`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 2,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 2;
UPDATE `jos_newsfeeds` SET `catid` = 4,`id` = 3,`name` = 'Joomla! Community Magazine',`alias` = 'joomla-community-magazine',`link` = 'http://feeds.joomla.org/JoomlaMagazine',`filename` = '',`published` = 1,`numarticles` = 20,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 3,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 3;
UPDATE `jos_newsfeeds` SET `catid` = 4,`id` = 4,`name` = 'Joomla! Developer News',`alias` = 'joomla-developer-news',`link` = 'http://feeds.joomla.org/JoomlaDeveloper',`filename` = '',`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 4,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 4;
UPDATE `jos_newsfeeds` SET `catid` = 4,`id` = 5,`name` = 'Joomla! Security News',`alias` = 'joomla-security-news',`link` = 'http://feeds.joomla.org/JoomlaSecurityNews',`filename` = '',`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 5,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 5;
UPDATE `jos_newsfeeds` SET `catid` = 5,`id` = 6,`name` = 'Free Software Foundation Blogs',`alias` = 'free-software-foundation-blogs',`link` = 'http://www.fsf.org/blogs/RSS',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 4,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 6;
UPDATE `jos_newsfeeds` SET `catid` = 5,`id` = 7,`name` = 'Free Software Foundation',`alias` = 'free-software-foundation',`link` = 'http://www.fsf.org/news/RSS',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 62,`checked_out_time` = '2008-09-14 00:24:25',`ordering` = 3,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 7;
UPDATE `jos_newsfeeds` SET `catid` = 5,`id` = 8,`name` = 'Software Freedom Law Center Blog',`alias` = 'software-freedom-law-center-blog',`link` = 'http://www.softwarefreedom.org/feeds/blog/',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 2,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 8;
UPDATE `jos_newsfeeds` SET `catid` = 5,`id` = 9,`name` = 'Software Freedom Law Center News',`alias` = 'software-freedom-law-center',`link` = 'http://www.softwarefreedom.org/feeds/news/',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 1,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 9;
UPDATE `jos_newsfeeds` SET `catid` = 5,`id` = 10,`name` = 'Open Source Initiative Blog',`alias` = 'open-source-initiative-blog',`link` = 'http://www.opensource.org/blog/feed',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 5,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 10;
UPDATE `jos_newsfeeds` SET `catid` = 6,`id` = 11,`name` = 'PHP News and Announcements',`alias` = 'php-news-and-announcements',`link` = 'http://www.php.net/feed.atom',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 62,`checked_out_time` = '2008-09-14 00:25:37',`ordering` = 1,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 11;
UPDATE `jos_newsfeeds` SET `catid` = 6,`id` = 12,`name` = 'Planet MySQL',`alias` = 'planet-mysql',`link` = 'http://www.planetmysql.org/rss20.xml',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 62,`checked_out_time` = '2008-09-14 00:25:51',`ordering` = 2,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 12;
UPDATE `jos_newsfeeds` SET `catid` = 6,`id` = 13,`name` = 'Linux Foundation Announcements',`alias` = 'linux-foundation-announcements',`link` = 'http://www.linuxfoundation.org/press/rss20.xml',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 62,`checked_out_time` = '2008-09-14 00:26:11',`ordering` = 3,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 13;
UPDATE `jos_newsfeeds` SET `catid` = 6,`id` = 14,`name` = 'Mootools Blog',`alias` = 'mootools-blog',`link` = 'http://feeds.feedburner.com/mootools-blog',`filename` = NULL,`published` = 1,`numarticles` = 5,`cache_time` = 3600,`checked_out` = 62,`checked_out_time` = '2008-09-14 00:26:51',`ordering` = 4,`rtl` = 0 WHERE  `jos_newsfeeds`.`id` = 14;

-- --------------------------------------------------------

--
-- Structure de la table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `jos_plugins`
--

UPDATE `jos_plugins` SET `id` = 1,`name` = 'Authentication - Joomla',`element` = 'joomla',`folder` = 'authentication',`access` = 0,`ordering` = 1,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 1;
UPDATE `jos_plugins` SET `id` = 2,`name` = 'Authentication - LDAP',`element` = 'ldap',`folder` = 'authentication',`access` = 0,`ordering` = 2,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n' WHERE  `jos_plugins`.`id` = 2;
UPDATE `jos_plugins` SET `id` = 3,`name` = 'Authentication - GMail',`element` = 'gmail',`folder` = 'authentication',`access` = 0,`ordering` = 4,`published` = 0,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 3;
UPDATE `jos_plugins` SET `id` = 4,`name` = 'Authentication - OpenID',`element` = 'openid',`folder` = 'authentication',`access` = 0,`ordering` = 3,`published` = 0,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 4;
UPDATE `jos_plugins` SET `id` = 5,`name` = 'User - Joomla!',`element` = 'joomla',`folder` = 'user',`access` = 0,`ordering` = 0,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'autoregister=1\n\n' WHERE  `jos_plugins`.`id` = 5;
UPDATE `jos_plugins` SET `id` = 6,`name` = 'Search - Content',`element` = 'content',`folder` = 'search',`access` = 0,`ordering` = 1,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n' WHERE  `jos_plugins`.`id` = 6;
UPDATE `jos_plugins` SET `id` = 7,`name` = 'Search - Contacts',`element` = 'contacts',`folder` = 'search',`access` = 0,`ordering` = 3,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'search_limit=50\n\n' WHERE  `jos_plugins`.`id` = 7;
UPDATE `jos_plugins` SET `id` = 8,`name` = 'Search - Categories',`element` = 'categories',`folder` = 'search',`access` = 0,`ordering` = 4,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'search_limit=50\n\n' WHERE  `jos_plugins`.`id` = 8;
UPDATE `jos_plugins` SET `id` = 9,`name` = 'Search - Sections',`element` = 'sections',`folder` = 'search',`access` = 0,`ordering` = 5,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'search_limit=50\n\n' WHERE  `jos_plugins`.`id` = 9;
UPDATE `jos_plugins` SET `id` = 10,`name` = 'Search - Newsfeeds',`element` = 'newsfeeds',`folder` = 'search',`access` = 0,`ordering` = 6,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'search_limit=50\n\n' WHERE  `jos_plugins`.`id` = 10;
UPDATE `jos_plugins` SET `id` = 11,`name` = 'Search - Weblinks',`element` = 'weblinks',`folder` = 'search',`access` = 0,`ordering` = 2,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'search_limit=50\n\n' WHERE  `jos_plugins`.`id` = 11;
UPDATE `jos_plugins` SET `id` = 12,`name` = 'Content - Pagebreak',`element` = 'pagebreak',`folder` = 'content',`access` = 0,`ordering` = 10000,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n' WHERE  `jos_plugins`.`id` = 12;
UPDATE `jos_plugins` SET `id` = 13,`name` = 'Content - Rating',`element` = 'vote',`folder` = 'content',`access` = 0,`ordering` = 4,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 13;
UPDATE `jos_plugins` SET `id` = 14,`name` = 'Content - Email Cloaking',`element` = 'emailcloak',`folder` = 'content',`access` = 0,`ordering` = 5,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'mode=1\n\n' WHERE  `jos_plugins`.`id` = 14;
UPDATE `jos_plugins` SET `id` = 15,`name` = 'Content - Code Hightlighter (GeSHi)',`element` = 'geshi',`folder` = 'content',`access` = 0,`ordering` = 5,`published` = 0,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 15;
UPDATE `jos_plugins` SET `id` = 16,`name` = 'Content - Load Module',`element` = 'loadmodule',`folder` = 'content',`access` = 0,`ordering` = 6,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'enabled=1\nstyle=0\n\n' WHERE  `jos_plugins`.`id` = 16;
UPDATE `jos_plugins` SET `id` = 17,`name` = 'Content - Page Navigation',`element` = 'pagenavigation',`folder` = 'content',`access` = 0,`ordering` = 2,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'position=1\n\n' WHERE  `jos_plugins`.`id` = 17;
UPDATE `jos_plugins` SET `id` = 18,`name` = 'Editor - No Editor',`element` = 'none',`folder` = 'editors',`access` = 0,`ordering` = 0,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 18;
UPDATE `jos_plugins` SET `id` = 19,`name` = 'Editor - TinyMCE 2.0',`element` = 'tinymce',`folder` = 'editors',`access` = 0,`ordering` = 0,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n' WHERE  `jos_plugins`.`id` = 19;
UPDATE `jos_plugins` SET `id` = 20,`name` = 'Editor - XStandard Lite 2.0',`element` = 'xstandard',`folder` = 'editors',`access` = 0,`ordering` = 0,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 20;
UPDATE `jos_plugins` SET `id` = 21,`name` = 'Editor Button - Image',`element` = 'image',`folder` = 'editors-xtd',`access` = 0,`ordering` = 0,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 21;
UPDATE `jos_plugins` SET `id` = 22,`name` = 'Editor Button - Pagebreak',`element` = 'pagebreak',`folder` = 'editors-xtd',`access` = 0,`ordering` = 0,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 22;
UPDATE `jos_plugins` SET `id` = 23,`name` = 'Editor Button - Readmore',`element` = 'readmore',`folder` = 'editors-xtd',`access` = 0,`ordering` = 0,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 23;
UPDATE `jos_plugins` SET `id` = 24,`name` = 'XML-RPC - Joomla',`element` = 'joomla',`folder` = 'xmlrpc',`access` = 0,`ordering` = 7,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 24;
UPDATE `jos_plugins` SET `id` = 25,`name` = 'XML-RPC - Blogger API',`element` = 'blogger',`folder` = 'xmlrpc',`access` = 0,`ordering` = 7,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'catid=1\nsectionid=0\n\n' WHERE  `jos_plugins`.`id` = 25;
UPDATE `jos_plugins` SET `id` = 27,`name` = 'System - SEF',`element` = 'sef',`folder` = 'system',`access` = 0,`ordering` = 1,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 27;
UPDATE `jos_plugins` SET `id` = 28,`name` = 'System - Debug',`element` = 'debug',`folder` = 'system',`access` = 0,`ordering` = 2,`published` = 1,`iscore` = 0,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'queries=1\nmemory=1\nlangauge=1\n\n' WHERE  `jos_plugins`.`id` = 28;
UPDATE `jos_plugins` SET `id` = 29,`name` = 'System - Legacy',`element` = 'legacy',`folder` = 'system',`access` = 0,`ordering` = 3,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'route=0\n\n' WHERE  `jos_plugins`.`id` = 29;
UPDATE `jos_plugins` SET `id` = 30,`name` = 'System - Cache',`element` = 'cache',`folder` = 'system',`access` = 0,`ordering` = 4,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = 'browsercache=0\ncachetime=15\n\n' WHERE  `jos_plugins`.`id` = 30;
UPDATE `jos_plugins` SET `id` = 31,`name` = 'System - Log',`element` = 'log',`folder` = 'system',`access` = 0,`ordering` = 5,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 31;
UPDATE `jos_plugins` SET `id` = 32,`name` = 'System - Remember Me',`element` = 'remember',`folder` = 'system',`access` = 0,`ordering` = 6,`published` = 1,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 32;
UPDATE `jos_plugins` SET `id` = 33,`name` = 'System - Backlink',`element` = 'backlink',`folder` = 'system',`access` = 0,`ordering` = 7,`published` = 0,`iscore` = 1,`client_id` = 0,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`params` = '' WHERE  `jos_plugins`.`id` = 33;

-- --------------------------------------------------------

--
-- Structure de la table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `jos_polls`
--

UPDATE `jos_polls` SET `id` = 14,`title` = 'Joomla! is used for?',`alias` = 'joomla-is-used-for',`voters` = 11,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`published` = 1,`access` = 0,`lag` = 86400 WHERE  `jos_polls`.`id` = 14;

-- --------------------------------------------------------

--
-- Structure de la table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `jos_poll_data`
--

UPDATE `jos_poll_data` SET `id` = 1,`pollid` = 14,`text` = 'Community Sites',`hits` = 2 WHERE  `jos_poll_data`.`id` = 1;
UPDATE `jos_poll_data` SET `id` = 2,`pollid` = 14,`text` = 'Public Brand Sites',`hits` = 3 WHERE  `jos_poll_data`.`id` = 2;
UPDATE `jos_poll_data` SET `id` = 3,`pollid` = 14,`text` = 'eCommerce',`hits` = 1 WHERE  `jos_poll_data`.`id` = 3;
UPDATE `jos_poll_data` SET `id` = 4,`pollid` = 14,`text` = 'Blogs',`hits` = 0 WHERE  `jos_poll_data`.`id` = 4;
UPDATE `jos_poll_data` SET `id` = 5,`pollid` = 14,`text` = 'Intranets',`hits` = 0 WHERE  `jos_poll_data`.`id` = 5;
UPDATE `jos_poll_data` SET `id` = 6,`pollid` = 14,`text` = 'Photo and Media Sites',`hits` = 2 WHERE  `jos_poll_data`.`id` = 6;
UPDATE `jos_poll_data` SET `id` = 7,`pollid` = 14,`text` = 'All of the Above!',`hits` = 3 WHERE  `jos_poll_data`.`id` = 7;
UPDATE `jos_poll_data` SET `id` = 8,`pollid` = 14,`text` = '',`hits` = 0 WHERE  `jos_poll_data`.`id` = 8;
UPDATE `jos_poll_data` SET `id` = 9,`pollid` = 14,`text` = '',`hits` = 0 WHERE  `jos_poll_data`.`id` = 9;
UPDATE `jos_poll_data` SET `id` = 10,`pollid` = 14,`text` = '',`hits` = 0 WHERE  `jos_poll_data`.`id` = 10;
UPDATE `jos_poll_data` SET `id` = 11,`pollid` = 14,`text` = '',`hits` = 0 WHERE  `jos_poll_data`.`id` = 11;
UPDATE `jos_poll_data` SET `id` = 12,`pollid` = 14,`text` = '',`hits` = 0 WHERE  `jos_poll_data`.`id` = 12;

-- --------------------------------------------------------

--
-- Structure de la table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `jos_poll_date`
--

UPDATE `jos_poll_date` SET `id` = 1,`date` = '2006-10-09 13:01:58',`vote_id` = 1,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 1;
UPDATE `jos_poll_date` SET `id` = 2,`date` = '2006-10-10 15:19:43',`vote_id` = 7,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 2;
UPDATE `jos_poll_date` SET `id` = 3,`date` = '2006-10-11 11:08:16',`vote_id` = 7,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 3;
UPDATE `jos_poll_date` SET `id` = 4,`date` = '2006-10-11 15:02:26',`vote_id` = 2,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 4;
UPDATE `jos_poll_date` SET `id` = 5,`date` = '2006-10-11 15:43:03',`vote_id` = 7,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 5;
UPDATE `jos_poll_date` SET `id` = 6,`date` = '2006-10-11 15:43:38',`vote_id` = 7,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 6;
UPDATE `jos_poll_date` SET `id` = 7,`date` = '2006-10-12 00:51:13',`vote_id` = 2,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 7;
UPDATE `jos_poll_date` SET `id` = 8,`date` = '2007-05-10 19:12:29',`vote_id` = 3,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 8;
UPDATE `jos_poll_date` SET `id` = 9,`date` = '2007-05-14 14:18:00',`vote_id` = 6,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 9;
UPDATE `jos_poll_date` SET `id` = 10,`date` = '2007-06-10 15:20:29',`vote_id` = 6,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 10;
UPDATE `jos_poll_date` SET `id` = 11,`date` = '2007-07-03 12:37:53',`vote_id` = 2,`poll_id` = 14 WHERE  `jos_poll_date`.`id` = 11;

-- --------------------------------------------------------

--
-- Structure de la table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `jos_sections`
--

UPDATE `jos_sections` SET `id` = 1,`title` = 'News',`name` = '',`alias` = 'news',`image` = 'articles.jpg',`scope` = 'content',`image_position` = 'right',`description` = 'Select a news topic from the list below, then select a news article to read.',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 3,`access` = 0,`count` = 2,`params` = '' WHERE  `jos_sections`.`id` = 1;
UPDATE `jos_sections` SET `id` = 3,`title` = 'FAQs',`name` = '',`alias` = 'faqs',`image` = 'key.jpg',`scope` = 'content',`image_position` = 'left',`description` = 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 5,`access` = 0,`count` = 23,`params` = '' WHERE  `jos_sections`.`id` = 3;
UPDATE `jos_sections` SET `id` = 4,`title` = 'About Joomla!',`name` = '',`alias` = 'about-joomla',`image` = '',`scope` = 'content',`image_position` = 'left',`description` = '',`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 2,`access` = 0,`count` = 14,`params` = '' WHERE  `jos_sections`.`id` = 4;

-- --------------------------------------------------------

--
-- Structure de la table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_session`
--

UPDATE `jos_session` SET `username` = 'LePoeTe',`time` = '1243934891',`session_id` = 'ce7e899e0c78199bfc9f00309c2e8e7e',`guest` = 0,`userid` = 63,`usertype` = 'Administrator',`gid` = 24,`client_id` = 0,`data` = '__default|a:8:{s:15:"session.counter";i:37;s:19:"session.timer.start";i:1243930949;s:18:"session.timer.last";i:1243934890;s:17:"session.timer.now";i:1243934891;s:22:"session.client.browser";s:110:"Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"63";s:4:"name";s:4:"Feki";s:8:"username";s:7:"LePoeTe";s:5:"email";s:15:"admin@admin.amd";s:8:"password";s:65:"c17cec7c0a53ea7723e3ecc02e9fe62c:gavIsszTodbl4bMF1eWu8cgGrEj5q0Uq";s:14:"password_clear";s:0:"";s:8:"usertype";s:13:"Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:3:"gid";s:2:"24";s:12:"registerDate";s:19:"2009-05-24 02:28:37";s:13:"lastvisitDate";s:19:"2009-06-02 08:22:29";s:10:"activation";s:0:"";s:6:"params";s:56:"admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:64:"C:\\xampp\\htdocs\\erp_code\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":5:{s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:1:"0";}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"a4f6f155be61015d42c01f0a4b859b1c";}' WHERE  `jos_session`.`session_id` = 'ce7e899e0c78199bfc9f00309c2e8e7e';

-- --------------------------------------------------------

--
-- Structure de la table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jos_templates_menu`
--

UPDATE `jos_templates_menu` SET `template` = 'rhuk_milkyway',`menuid` = 0,`client_id` = 0 WHERE  `jos_templates_menu`.`template` = 'rhuk_milkyway' AND `jos_templates_menu`.`menuid` = 0 AND `jos_templates_menu`.`client_id` = 0;
UPDATE `jos_templates_menu` SET `template` = 'khepri',`menuid` = 0,`client_id` = 1 WHERE  `jos_templates_menu`.`template` = 'khepri' AND `jos_templates_menu`.`menuid` = 0 AND `jos_templates_menu`.`client_id` = 1;

-- --------------------------------------------------------

--
-- Structure de la table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Contenu de la table `jos_users`
--

UPDATE `jos_users` SET `id` = 62,`name` = 'Administrator',`username` = 'admin',`email` = 'feki.hichem@gmail.com',`password` = 'e3d0959bebe0e4bc7f4b75af4851d14d:nYQ6RPtp0ivEd1Uk5kExwKSGMgpJvJZz',`usertype` = 'Super Administrator',`block` = 0,`sendEmail` = 1,`gid` = 25,`registerDate` = '2009-05-23 02:16:33',`lastvisitDate` = '2009-06-02 05:34:43',`activation` = '',`params` = '' WHERE  `jos_users`.`id` = 62;
UPDATE `jos_users` SET `id` = 63,`name` = 'Feki',`username` = 'LePoeTe',`email` = 'admin@admin.amd',`password` = 'c17cec7c0a53ea7723e3ecc02e9fe62c:gavIsszTodbl4bMF1eWu8cgGrEj5q0Uq',`usertype` = 'Administrator',`block` = 0,`sendEmail` = 0,`gid` = 24,`registerDate` = '2009-05-24 02:28:37',`lastvisitDate` = '2009-06-02 08:24:16',`activation` = '',`params` = 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n' WHERE  `jos_users`.`id` = 63;
UPDATE `jos_users` SET `id` = 67,`name` = 'Feki Chaima',`username` = 'feki.chaima',`email` = 'feki.hichem@gmail.cm',`password` = '09ca09cbd34b20a032e2ed320589dd9a:O6v1qVnU8XlewYKffUW73xsLcabcX775',`usertype` = '',`block` = 0,`sendEmail` = 0,`gid` = 18,`registerDate` = '2009-06-02 07:20:50',`lastvisitDate` = '0000-00-00 00:00:00',`activation` = '',`params` = '' WHERE  `jos_users`.`id` = 67;

-- --------------------------------------------------------

--
-- Structure de la table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `jos_weblinks`
--

UPDATE `jos_weblinks` SET `id` = 1,`catid` = 2,`sid` = 0,`title` = 'Joomla!',`alias` = 'joomla',`url` = 'http://www.joomla.org',`description` = 'Home of Joomla!',`date` = '2005-02-14 15:19:02',`hits` = 3,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 1,`archived` = 0,`approved` = 1,`params` = 'target=0' WHERE  `jos_weblinks`.`id` = 1;
UPDATE `jos_weblinks` SET `id` = 2,`catid` = 2,`sid` = 0,`title` = 'php.net',`alias` = 'php',`url` = 'http://www.php.net',`description` = 'The language that Joomla! is developed in',`date` = '2004-07-07 11:33:24',`hits` = 6,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 3,`archived` = 0,`approved` = 1,`params` = '' WHERE  `jos_weblinks`.`id` = 2;
UPDATE `jos_weblinks` SET `id` = 3,`catid` = 2,`sid` = 0,`title` = 'MySQL',`alias` = 'mysql',`url` = 'http://www.mysql.com',`description` = 'The database that Joomla! uses',`date` = '2004-07-07 10:18:31',`hits` = 1,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 5,`archived` = 0,`approved` = 1,`params` = '' WHERE  `jos_weblinks`.`id` = 3;
UPDATE `jos_weblinks` SET `id` = 4,`catid` = 2,`sid` = 0,`title` = 'OpenSourceMatters',`alias` = 'opensourcematters',`url` = 'http://www.opensourcematters.org',`description` = 'Home of OSM',`date` = '2005-02-14 15:19:02',`hits` = 11,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 2,`archived` = 0,`approved` = 1,`params` = 'target=0' WHERE  `jos_weblinks`.`id` = 4;
UPDATE `jos_weblinks` SET `id` = 5,`catid` = 2,`sid` = 0,`title` = 'Joomla! - Forums',`alias` = 'joomla-forums',`url` = 'http://forum.joomla.org',`description` = 'Joomla! Forums',`date` = '2005-02-14 15:19:02',`hits` = 4,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 4,`archived` = 0,`approved` = 1,`params` = 'target=0' WHERE  `jos_weblinks`.`id` = 5;
UPDATE `jos_weblinks` SET `id` = 6,`catid` = 2,`sid` = 0,`title` = 'Ohloh Tracking of Joomla!',`alias` = 'ohloh-tracking-of-joomla',`url` = 'http://www.ohloh.net/projects/20',`description` = 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.',`date` = '2007-07-19 09:28:31',`hits` = 1,`published` = 1,`checked_out` = 0,`checked_out_time` = '0000-00-00 00:00:00',`ordering` = 6,`archived` = 0,`approved` = 1,`params` = 'target=0\n\n' WHERE  `jos_weblinks`.`id` = 6;
