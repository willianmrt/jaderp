-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 09 Juin 2009 à 01:27
-- Version du serveur: 5.1.33
-- Version de PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `jaderp`
--

--
-- Contenu de la table `jos_jaderp_menu`
--

UPDATE IGNORE `jos_jaderp_menu` SET `id` = 1,`active` = 1,`name` = 'facture',`languagename` = 'MENU_FACTURES',`url` = '',`ordering` = 1,`parent_name` = '',`component` = 'jaderp',`menu_icon` = 'invoice/24x24/invoice_config.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'facture';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 2,`active` = 1,`name` = 'creationfacture',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 1,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = 'invoice/24x24/invoice_add.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'creationfacture';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 3,`active` = 1,`name` = 'consultationfactures',`languagename` = 'MENU_FACTURES_CONS',`url` = 'index.php?option=com_jaderp&tast=facturescons',`ordering` = 2,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = 'invoice/24x24/invoice_zoom.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'consultationfactures';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 4,`active` = 1,`name` = 'articles',`languagename` = 'MENU_ARTICLES',`url` = '',`ordering` = 2,`parent_name` = '',`component` = 'jarerp',`menu_icon` = 'products/24x24/barcode_config.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'articles';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 5,`active` = 1,`name` = 'creationarticle',`languagename` = 'MENU_ARTICLES_CREAT',`url` = 'index.php?option=com_jaderp&tast=articlescreat',`ordering` = 1,`parent_name` = 'articles',`component` = 'jaderp',`menu_icon` = 'products/24x24/barcode_add.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'creationarticle';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 6,`active` = 1,`name` = 'consultationfactures1',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 3,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'consultationfactures1';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 7,`active` = 1,`name` = 'consultationfactures2',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 4,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'consultationfactures2';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 8,`active` = 1,`name` = 'creationfacture1',`languagename` = 'MENU_CREAT_FACTURE',`url` = 'index.php?option=com_jaderp&task=desktop',`ordering` = 5,`parent_name` = 'facture',`component` = 'jaderp',`menu_icon` = '',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'creationfacture1';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 9,`active` = 1,`name` = 'workerscreat',`languagename` = 'MENU_WORKERS_CREAT',`url` = 'index.php?option=com_jaderp&func=Workers&task=add',`ordering` = 1,`parent_name` = 'workers',`component` = 'jaderp',`menu_icon` = 'workers/24x24/executive_add.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'workerscreat';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 10,`active` = 1,`name` = 'workersedit',`languagename` = 'MENU_WORKERS_EDIT',`url` = 'index.php?option=com_jaderp&func=Workers&task=edit&cid=2',`ordering` = 2,`parent_name` = 'workers',`component` = 'jaderp',`menu_icon` = 'workers/24x24/executive_write.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'workersedit';
UPDATE IGNORE `jos_jaderp_menu` SET `id` = 11,`active` = 1,`name` = 'workers',`languagename` = 'MENU_WORKERS',`url` = '',`ordering` = 3,`parent_name` = '',`component` = 'jaderp',`menu_icon` = 'workers/24x24/executive_config.png',`desktop_icon` = 'add_billing.png',`menu_description` = '',`min_access_level` = 0 WHERE  `jos_jaderp_menu`.`name` = 'workers';
