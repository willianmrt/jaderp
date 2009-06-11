-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Ven 12 Juin 2009 à 00:26
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

DROP TABLE IF EXISTS `jos_jaderp`;
CREATE TABLE IF NOT EXISTS `jos_jaderp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `greeting` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `jos_jaderp`
--

INSERT INTO `jos_jaderp` (`id`, `greeting`) VALUES
(1, 'jaderp, World!'),
(2, 'Bonjour, Monde!'),
(3, 'Ciao, Mondo!');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_access_levels`
--

DROP TABLE IF EXISTS `jos_jaderp_access_levels`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_access_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_label` varchar(255) NOT NULL,
  `access_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `jos_jaderp_access_levels`
--

INSERT INTO `jos_jaderp_access_levels` (`id`, `access_label`, `access_level`) VALUES
(1, 'Minimum', 1),
(2, 'Agent de saisie', 10);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_branchs`
--

DROP TABLE IF EXISTS `jos_jaderp_branchs`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_branchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `jos_jaderp_branchs`
--

INSERT INTO `jos_jaderp_branchs` (`id`, `name`, `description`, `address`) VALUES
(1, 'Msaken', 'fi msaken', 'bidhabet ma na3rafeh'),
(2, 'Tunis Rep', 'fil 3asma', '');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_departments`
--

DROP TABLE IF EXISTS `jos_jaderp_departments`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `jos_jaderp_departments`
--

INSERT INTO `jos_jaderp_departments` (`id`, `name`, `description`) VALUES
(1, 'Ressource humaines', 'bla bla bla ya ressource'),
(2, 'Commercial', ''),
(3, 'Approvisionnement', 'Ce département est lahi bil chra');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_levels_menu`
--

DROP TABLE IF EXISTS `jos_jaderp_levels_menu`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_levels_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `level_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `jos_jaderp_levels_menu`
--

INSERT INTO `jos_jaderp_levels_menu` (`id`, `menu_id`, `level_id`, `active`) VALUES
(2, 2, 5, 0),
(3, 3, 0, 1),
(5, 5, 1, 0),
(6, 11, 0, 1),
(7, 9, 0, 1),
(8, 8, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_links_map`
--

DROP TABLE IF EXISTS `jos_jaderp_links_map`;
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

DROP TABLE IF EXISTS `jos_jaderp_menu`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `hidden` int(1) NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `jos_jaderp_menu`
--

INSERT INTO `jos_jaderp_menu` (`id`, `published`, `hidden`, `name`, `languagename`, `url`, `ordering`, `parent_name`, `component`, `menu_icon`, `desktop_icon`, `menu_description`, `min_access_level`) VALUES
(1, 1, 1, 'facture', 'MENU_FACTURES', '', 1, '', 'jaderp', 'invoice/invoice_config.png', 'add_billing.png', '', 0),
(2, 1, 1, 'creationfacture', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 1, 'facture', 'jaderp', 'invoice/invoice_add.png', 'add_billing.png', '', 0),
(3, 1, 1, 'consultationfactures', 'MENU_FACTURES_CONS', 'index.php?option=com_jaderp&tast=facturescons', 2, 'facture', 'jaderp', 'invoice/invoice_zoom.png', 'add_billing.png', '', 10),
(4, 1, 1, 'articles', 'MENU_ARTICLES', '', 2, '', 'jarerp', 'products/barcode_config.png', 'add_billing.png', '', 0),
(5, 1, 1, 'creationarticle', 'MENU_ARTICLES_CREAT', 'index.php?option=com_jaderp&tast=articlescreat', 1, 'articles', 'jaderp', 'products/barcode_add.png', 'add_billing.png', '', 0),
(6, 1, 1, 'consultationfactures1', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 3, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(7, 1, 1, 'consultationfactures2', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 4, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(8, 1, 1, 'creationfacture1', 'MENU_CREAT_FACTURE', 'index.php?option=com_jaderp&task=desktop', 5, 'facture', 'jaderp', '', 'add_billing.png', '', 0),
(9, 1, 1, 'workerscreat', 'MENU_WORKERS_CREAT', 'index.php?option=com_jaderp&func=Workers&task=add', 1, 'workers', 'jaderp', 'workers/executive_add.png', 'add_billing.png', '', 0),
(10, 1, 1, 'workersedit', 'MENU_WORKERS_EDIT', 'index.php?option=com_jaderp&func=Workers&task=edit&cid=2', 2, 'workers', 'jaderp', 'workers/executive_write.png', 'add_billing.png', '', 0),
(11, 1, 1, 'workers', 'MENU_WORKERS', '', 3, '', 'jaderp', 'workers/executive_config.png', 'add_billing.png', '', 0),
(12, 1, 0, 'manageworkers', 'MANAGE_WORKERS', 'index.php?option=com_jaderp&func=Workers&task=manage', 3, 'workers', 'jaderp', 'workers/executive_config.png', 'add_billing.png', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_tables`
--

DROP TABLE IF EXISTS `jos_jaderp_tables`;
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

DROP TABLE IF EXISTS `jos_jaderp_tables_access`;
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
-- Structure de la table `jos_jaderp_types_piece`
--

DROP TABLE IF EXISTS `jos_jaderp_types_piece`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_types_piece` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `jos_jaderp_types_piece`
--

INSERT INTO `jos_jaderp_types_piece` (`id`, `name`, `description`) VALUES
(1, 'C.I.N', 'Carte d''identité nationale'),
(2, 'Passeport', 'Passeport'),
(3, 'Carte de séjour', 'Carte de séjour pour les non résidents'),
(4, 'Permis de conduire', 'Permis de conduire'),
(5, 'Autre...', 'Autres type de carte');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users`
--

DROP TABLE IF EXISTS `jos_jaderp_users`;
CREATE TABLE IF NOT EXISTS `jos_jaderp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomla_id` int(11) NOT NULL DEFAULT '0',
  `canaccess` tinyint(4) NOT NULL DEFAULT '0',
  `access_level` int(11) NOT NULL DEFAULT '1',
  `mat` varchar(50) NOT NULL,
  `department` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `num_piece` varchar(50) NOT NULL,
  `type_piece` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `salaire` float NOT NULL,
  `startdate` date NOT NULL,
  `note` float NOT NULL,
  `position` varchar(50) NOT NULL,
  `present` int(11) NOT NULL,
  `iscontact` int(11) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL,
  `forcepasschange` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `jos_jaderp_users`
--

INSERT INTO `jos_jaderp_users` (`id`, `joomla_id`, `canaccess`, `access_level`, `mat`, `department`, `branch`, `lastname`, `firstname`, `num_piece`, `type_piece`, `email`, `phone`, `salaire`, `startdate`, `note`, `position`, `present`, `iscontact`, `password`, `forcepasschange`, `checked_out`, `checked_out_time`) VALUES
(1, 63, 0, 1, '2332', 0, 0, 'Feki', 'Hichem', '1222222', 0, 'feki.hichem@gmail.com', '22393233', 2536, '0000-00-00', 25, 'Master', 1, 0, '123456', 0, 0, '0000-00-00 00:00:00'),
(2, 92, 1, 1, '142536', 2, 2, 'Feki', 'Chaima', '12345679', 1, 'feki.hichem@gmail.cm', '24751419', 0, '2009-06-02', 20, 'Binti', 0, 1, 'b289f28ae251364550aad3f5365388d9:kaPrW0DXJOCgTQNHm', 1, 0, '0000-00-00 00:00:00'),
(3, 86, 0, 0, '253636', 0, 0, 'Feki', 'Eya', '456855222', 0, 'feki.hichem@gmail.com', '74464334', 1234, '1963-11-21', 12, 'Binti', 1, 0, 'ac7e4a54f57f7d90c8510548864a705b:NK64BMx3eLciiACu4', 0, 63, '2009-06-11 05:09:06'),
(4, 66, 0, 0, '123456', 0, 0, 'Chtourou', 'Souheila', '14253689', 0, 'soussou@sous.com', '24751419', 300, '0000-00-00', 15, 'Marti', 1, 0, '7e39d0d5fadd36b41d0a95c46225ab47:7zb5QvgW72gFDYFLm', 0, 63, '2009-06-09 05:22:19'),
(5, 67, 0, 0, '147258', 0, 0, 'Feki', 'Chaima', '12345679', 0, 'feki.hichem@gmail.com', '24751419', 1234, '0000-00-00', 15, 'Binti', 1, 0, '0c827f11b42b77943a4e153a5d185361:qkeXcmeK0ChsJuWkd', 0, 63, '2009-06-09 05:22:26'),
(6, 0, 0, 1, '458658DDEF', 1, 1, 'fsdfsdf', 'fsdff', '1235266', 0, '', '', 0, '2009-06-03', 0, '', 0, 0, '305dd8a5db16b515f15a974c761f4450:V7DnUROUKVUy0AZEy', 0, 0, '0000-00-00 00:00:00'),
(7, 93, 0, 1, '258369', 2, 1, 'soussou', 'chtourou', '251478523', 1, 'feki.hichem@gmail.com', '24751419', 300, '2008-12-01', 0, 'agent commercial', 1, 0, 'd2e26393326e07bae7015fc30266a855:t8If56JDYjUuLzINS', 0, 0, '0000-00-00 00:00:00'),
(8, 94, 0, 1, '147258', 2, 2, 'soussou', 'chtourou', '251478523', 3, 'feki.hichem@gmail.com', '24751419', 300, '2008-12-01', 0, '', 0, 0, '1d8668e238d92c6acdf45ba1fa303d5a:P9mV9RHdtpzuKaFr8', 0, 0, '0000-00-00 00:00:00'),
(9, 0, 0, 1, 'fsqdfqsdf', 1, 1, 'qsdfqsdf', 'qfqsfqsdf', 'qfsdf', 1, '', '', 0, '2008-12-01', 0, '', 0, 0, 'f43fd388b19f6cc28af45cfb1dc2a484:NruWkrDOXQCYWfK0E', 0, 63, '2009-06-11 05:41:04'),
(10, 95, 0, 1, 'qsdfqsf', 1, 1, 'bhhghj', 'ghghjg', 'hjgghj', 1, '', '', 0, '2008-12-01', 0, '', 0, 0, 'f55d6fd043e3eb48dbe967094fc1f846:OZjHbCp7BlBHj32xr', 0, 63, '2009-06-11 05:42:09'),
(11, 0, 0, 1, 'fsqfqsdf', 1, 1, 'hjkjhj', 'hjhkjh', 'hjkhkj', 1, '', '', 0, '2008-12-01', 0, '', 0, 0, '651ec9e1d6f734116d756e3d16de6d66:pUdpuoie90qfjYUTR', 0, 0, '0000-00-00 00:00:00'),
(12, 96, 0, 1, 'kjkikk', 1, 1, 'soussou', 'qfqsfqsdf', 'hjgghj', 4, 'feki.hichem@gmail.com', '', 0, '2008-12-01', 0, 'LePoeTe', 0, 0, '899edeb57dd3265803cc83f5a42d1b49:mWxmwkFr6d6qRyD6W', 0, 0, '0000-00-00 00:00:00'),
(13, 97, 0, 1, '258369147', 1, 1, 'soussou', 'chtourou', '251478523', 3, 'feki.hichem@gmail.com', '24751419', 300, '2008-12-01', 0, 'LePoeTe', 0, 0, 'eceb5f0f1e71f452915ad45ae23b707f:lPjLMeW3lp2zv6ROF', 0, 0, '0000-00-00 00:00:00'),
(14, 98, 0, 1, '2332', 2, 2, 'fsdfsdf', 'Eya', '1222222', 3, 'feki.hichem@gmail.cm', '22393233', 0, '2009-06-02', 20, 'Binti', 1, 0, '8111933abda2a1db3212597b6fa7deae:TDkgPbUtpiYSVFXuF', 0, 0, '0000-00-00 00:00:00'),
(15, 99, 0, 1, 'azerty', 1, 1, 'Feki', 'Souheila', '12345679', 4, 'feki.hichem@gmail.com', '74464334', 1234, '2009-06-03', 20, '', 0, 0, '592803b8f7b0eff3c4f961a37542b739:Gg1DnCX81V9AAVTaK', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users_access`
--

DROP TABLE IF EXISTS `jos_jaderp_users_access`;
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

INSERT INTO `jos_jaderp_users_access` (`user_id`, `module_component`, `controller`, `task`, `access_level`, `id`) VALUES
(63, 'com_jaderp', 'Desktop', 'default', 5, 1),
(63, 'com_jaderp', 'Workers', 'add', 5, 2);
