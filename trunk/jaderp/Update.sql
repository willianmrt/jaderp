-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Sam 06 Juin 2009 à 08:56
-- Version du serveur: 5.1.33
-- Version de PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `erp`
--

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

INSERT IGNORE INTO `jos_jaderp` (`id`, `greeting`) VALUES
(1, 'jaderp, World!'),
(2, 'Bonjour, Monde!'),
(3, 'Ciao, Mondo!');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_access_levels`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_access_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_label` varchar(255) NOT NULL,
  `access_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `jos_jaderp_access_levels`
--

INSERT IGNORE INTO `jos_jaderp_access_levels` (`id`, `access_label`, `access_level`) VALUES
(1, 'Minimum', 1),
(2, 'Agent de saisie', 10);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_levels_menu`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_levels_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `level_id` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `jos_jaderp_levels_menu`
--

INSERT IGNORE INTO `jos_jaderp_levels_menu` (`id`, `ordering`, `menu_id`, `level_id`, `active`) VALUES
(1, 1, 1, 63, 1),
(2, 2, 2, 63, 1),
(3, 3, 3, 63, 1),
(4, 2, 4, 63, 1),
(5, 1, 5, 63, 1),
(6, 3, 11, 63, 1),
(7, 1, 9, 63, 1),
(8, 2, 10, 63, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_links_map`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_links_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_min_level` int(11) NOT NULL,
  `com_mod` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `jos_jaderp_links_map`
--


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
  `menu_description` varchar(255) NOT NULL,
  `min_access_level` int(11) NOT NULL,
  UNIQUE KEY `name` (`name`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `jos_jaderp_menu`
--

INSERT IGNORE INTO `jos_jaderp_menu` (`id`, `active`, `name`, `languagename`, `url`, `ordering`, `parent_name`, `component`, `menu_icon`, `desktop_icon`, `menu_description`, `min_access_level`) VALUES
(1, 1, 'facture', 'MENU_FACTURES', '', 1, '', 'jaderp', '', 'add_billing.png', '', 0),
(2, 1, 'creationfacture', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 1, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(3, 1, 'consultationfactures', 'MENU_FACTURES_CONS', 'index.php?option=com_jaderp&tast=facturescons', 2, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(4, 1, 'articles', 'MENU_ARTICLES', '', 2, '', 'jarerp', '', 'add_billing.png', '', 0),
(5, 1, 'creationarticle', 'MENU_ARTICLES_CREAT', 'index.php?option=com_jaderp&tast=articlescreat', 1, 'articles', 'jaderp', '', 'add_billing.png', '', 0),
(6, 1, 'consultationfactures1', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 3, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(7, 1, 'consultationfactures2', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 4, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(8, 1, 'creationfacture1', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 5, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(9, 1, 'workerscreat', 'MENU_WORKERS_CREAT', 'index.php?option=com_jaderp&func=Workers&task=add', 1, 'workers', 'jaderp', '', 'add_billing.png', '', 0),
(10, 1, 'workersedit', 'MENU_WORKERS_EDIT', 'index.php?option=com_jaderp&func=Workers&task=edit&cid=2', 2, 'workers', 'jaderp', '', 'add_billing.png', '', 0),
(11, 1, 'workers', 'MENU_WORKERS', '', 3, '', 'jaderp', '', 'add_billing.png', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_tables`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `table_description` varchar(255) NOT NULL,
  `del_min_access_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `jos_jaderp_tables`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_tables_access`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_tables_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `field_name` int(11) NOT NULL,
  `field_description` varchar(255) NOT NULL,
  `view_min_access_level` int(11) NOT NULL,
  `edit_min_access_level` int(11) NOT NULL,
  `add_min_access_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `jos_jaderp_tables_access`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomla_id` int(11) NOT NULL,
  `access_level` int(11) NOT NULL DEFAULT '1',
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

INSERT IGNORE INTO `jos_jaderp_users` (`id`, `joomla_id`, `access_level`, `mat`, `lastname`, `firstname`, `num_piece`, `type_piece`, `email`, `phone`, `salaire`, `startdate`, `note`, `position`, `present`, `password`, `checked_out`, `checked_out_time`) VALUES
(1, 0, 0, '2332', 'Feki', 'Hichem', '1222222', 'CIN', 'feki.hichem@gmail.com', '22393233', 2536, '0000-00-00', 25, 'Master', 1, '123456', 0, '0000-00-00 00:00:00'),
(2, 92, 0, '142536', 'Feki', 'Chaima', '12345679', 'CIN', 'feki.hichem@gmail.cm', '24751419', 0, '2009-06-02', 20, 'Binti', 0, '9ec90510b7d50691459da7e13457a9fb:5favpwMqnxO4qoSwz', 0, '0000-00-00 00:00:00'),
(3, 86, 0, '253636', 'Feki', 'Eya', '456855222', 'CIN', 'feki.hichem@gmail.com', '74464334', 1234, '1963-11-21', 12, 'Binti', 1, 'ac7e4a54f57f7d90c8510548864a705b:NK64BMx3eLciiACu4', 0, '0000-00-00 00:00:00'),
(4, 66, 0, '123456', 'Chtourou', 'Souheila', '14253689', 'CIN', 'soussou@sous.com', '24751419', 300, '0000-00-00', 15, 'Marti', 1, '7e39d0d5fadd36b41d0a95c46225ab47:7zb5QvgW72gFDYFLm', 0, '0000-00-00 00:00:00'),
(5, 67, 0, '147258', 'Feki', 'Chaima', '12345679', 'CIN', 'feki.hichem@gmail.com', '24751419', 1234, '0000-00-00', 15, 'Binti', 1, '0c827f11b42b77943a4e153a5d185361:qkeXcmeK0ChsJuWkd', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users_access`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_users_access` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `module_component` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `access_level` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `jos_jaderp_users_access`
--

INSERT IGNORE INTO `jos_jaderp_users_access` (`user_id`, `module_component`, `controller`, `task`, `access_level`, `id`) VALUES
(63, 'com_jaderp', 'Desktop', 'default', 5, 1),
(63, 'com_jaderp', 'Workers', 'add', 5, 2);
