-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Ven 30 Juillet 2010 à 09:58
-- Version du serveur: 5.1.36
-- Version de PHP: 5.3.0

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

INSERT DELAYED INTO `jos_jaderp` (`id`, `greeting`) VALUES
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

INSERT DELAYED INTO `jos_jaderp_access_levels` (`id`, `access_label`, `access_level`) VALUES
(1, 'Minimum', 1),
(2, 'Agent de saisie', 10);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_branchs`
--

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

INSERT DELAYED INTO `jos_jaderp_branchs` (`id`, `name`, `description`, `address`) VALUES
(1, 'Msaken', 'fi msaken', 'bidhabet ma na3rafeh'),
(2, 'Tunis Rep', 'fil 3asma', '');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_contacts`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` int(11) DEFAULT '0',
  `postcode` varchar(25) DEFAULT NULL,
  `telephone1` varchar(25) DEFAULT NULL,
  `telephone2` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `category` varchar(15) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `jos_jaderp_contacts`
--


-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_countries`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hits` int(11) NOT NULL DEFAULT '0',
  `iso` varchar(2) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `numcode` smallint(6) NOT NULL,
  `phone_code` varchar(5) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `iso4217` varchar(5) NOT NULL,
  `currency_symbol` varchar(5) NOT NULL,
  `active_currency` int(1) NOT NULL DEFAULT '0',
  `currency_format` varchar(25) NOT NULL DEFAULT '2,''.'','' ''',
  `fr` varchar(255) NOT NULL,
  `en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=239 ;

--
-- Contenu de la table `jos_jaderp_countries`
--

INSERT DELAYED INTO `jos_jaderp_countries` (`id`, `hits`, `iso`, `iso3`, `numcode`, `phone_code`, `currency`, `iso4217`, `currency_symbol`, `active_currency`, `currency_format`, `fr`, `en`) VALUES
(1, 0, 'AF', 'AFG', 4, '93', 'Afghan afghani', 'AFN', '', 0, '', 'Afghanistan', 'Afghanistan'),
(2, 0, 'ZA', 'ZAF', 710, '27', 'South African rand', 'ZAR', 'R', 0, '', 'Afrique du Sud', 'South Africa'),
(3, 0, 'AL', 'ALB', 8, '355', 'Albanian lek', 'ALL', '', 0, '', 'Albanie', 'Albania'),
(4, 0, 'DZ', 'DZA', 12, '213', 'Algerian dinar', 'DZD', '', 0, '', 'Algérie', 'Algeria'),
(5, 1, 'DE', 'DEU', 276, '49', 'European euro', 'EUR', '€', 0, '', 'Allemagne', 'Germany'),
(6, 0, 'AD', 'AND', 20, '376', '', '', '', 0, '', 'Andorre', 'Andorra'),
(7, 0, 'AO', 'AGO', 24, '244', 'Angolan kwanza', 'AOA', '', 0, '', 'Angola', 'Angola'),
(8, 0, 'AI', 'AIA', 660, '1264', '', '', '', 0, '', 'Anguilla', 'Anguilla'),
(9, 0, 'AQ', '', 0, '', '', '', '', 0, '', 'Antarctique', 'Antarctica'),
(10, 0, 'AG', 'ATG', 28, '1268', '', '', '', 0, '', 'Antigua-et-Barbuda', 'Antigua and Barbuda'),
(11, 0, 'AN', 'ANT', 530, '599', 'Netherlands Antillean gulden', 'ANG', 'NAƒ', 0, '', 'Antilles néerlandaises', 'Netherlands Antilles'),
(12, 0, 'SA', 'SAU', 682, '966', 'Saudi riyal', 'SAR', 'SR', 0, '', 'Arabie saoudite', 'Saudi Arabia'),
(13, 0, 'AR', 'ARG', 32, '54', 'Argentine peso', 'ARS', '', 0, '', 'Argentine', 'Argentina'),
(14, 0, 'AM', 'ARM', 51, '374', 'Armenian dram', 'AMD', '', 0, '', 'Arménie', 'Armenia'),
(15, 0, 'AW', 'ABW', 533, '297', 'Aruban florin', 'AWG', 'ƒ', 0, '', 'Aruba', 'Aruba'),
(16, 0, 'AU', 'AUS', 36, '61', 'Australian dollar', 'AUD', '$', 0, '', 'Australie', 'Australia'),
(17, 0, 'AT', 'AUT', 40, '43', 'European euro', 'EUR', '€', 0, '', 'Autriche', 'Austria'),
(18, 0, 'AZ', 'AZE', 31, '994', 'Azerbaijani manat', 'AZN', '', 0, '', 'Azerbaïdjan', 'Azerbaijan'),
(19, 0, 'BJ', 'BEN', 204, '229', '', '', '', 0, '', 'Bénin', 'Benin'),
(20, 0, 'BS', 'BHS', 44, '1242', 'Bahamian dollar', 'BSD', 'B$', 0, '', 'Bahamas', 'Bahamas'),
(21, 0, 'BH', 'BHR', 48, '973', 'Bahraini dinar', 'BHD', '', 0, '', 'Bahreïn', 'Bahrain'),
(22, 0, 'BD', 'BGD', 50, '880', 'Bangladeshi taka', 'BDT', '', 0, '', 'Bangladesh', 'Bangladesh'),
(23, 0, 'BB', 'BRB', 52, '1246', 'Barbadian dollar', 'BBD', 'Bds$', 0, '', 'Barbade', 'Barbados'),
(24, 0, 'PW', 'PLW', 585, '680', '', '', '', 0, '', 'Belau', 'Palau'),
(25, 1, 'BE', 'BEL', 56, '32', 'European euro', 'EUR', '€', 0, '', 'Belgique', 'Belgium'),
(26, 0, 'BZ', 'BLZ', 84, '501', 'Belize dollar', 'BZD', 'BZ$', 0, '', 'Belize', 'Belize'),
(27, 0, 'BM', 'BMU', 60, '1441', 'Bermudian dollar', 'BMD', 'BD$', 0, '', 'Bermudes', 'Bermuda'),
(28, 0, 'BT', 'BTN', 64, '975', 'Bhutanese ngultrum', 'BTN', 'Nu.', 0, '', 'Bhoutan', 'Bhutan'),
(29, 0, 'BY', 'BLR', 112, '375', 'Belarusian ruble', 'BYR', 'Br', 0, '', 'Biélorussie', 'Belarus'),
(30, 0, 'MM', 'MMR', 104, '95', 'Myanma kyat', 'MMK', 'K', 0, '', 'Birmanie', 'Myanmar'),
(31, 0, 'BO', 'BOL', 68, '591', 'Bolivian boliviano', 'BOB', 'Bs.', 0, '', 'Bolivie', 'Bolivia'),
(32, 0, 'BA', 'BIH', 70, '387', 'Bosnia and Herzegovina konvertibilna marka', 'BAM', 'KM', 0, '', 'Bosnie-Herzégovine', 'Bosnia and Herzegovina'),
(33, 0, 'BW', 'BWA', 72, '267', 'Botswana pula', 'BWP', 'P', 0, '', 'Botswana', 'Botswana'),
(34, 0, 'BR', 'BRA', 76, '55', 'Brazilian real', 'BRL', 'R$', 0, '', 'Brésil', 'Brazil'),
(35, 0, 'BN', 'BRN', 96, '673', 'Brunei dollar', 'BND', 'B$', 0, '', 'Brunei', 'Brunei Darussalam'),
(36, 0, 'BG', 'BGR', 100, '359', 'Bulgarian lev', 'BGN', '', 0, '', 'Bulgarie', 'Bulgaria'),
(37, 0, 'BF', 'BFA', 854, '226', '', '', '', 0, '', 'Burkina Faso', 'Burkina Faso'),
(38, 0, 'BI', 'BDI', 108, '257', 'Burundi franc', 'BIF', 'FBu', 0, '', 'Burundi', 'Burundi'),
(39, 0, 'CI', 'CIV', 384, '225', '', '', '', 0, '', 'Côte d''Ivoire', 'Cote D''Ivoire'),
(40, 0, 'KH', 'KHM', 116, '855', 'Cambodian riel', 'KHR', '', 0, '', 'Cambodge', 'Cambodia'),
(41, 0, 'CM', 'CMR', 120, '237', '', '', '', 0, '', 'Cameroun', 'Cameroon'),
(42, 0, 'CA', 'CAN', 124, '1', 'Canadian dollar', 'CAD', '$', 0, '', 'Canada', 'Canada'),
(43, 0, 'CV', 'CPV', 132, '238', 'Cape Verdean escudo', 'CVE', 'Esc', 0, '', 'Cap-Vert', 'Cape Verde'),
(44, 0, 'CL', 'CHL', 152, '56', 'Chilean peso', 'CLP', '$', 0, '', 'Chili', 'Chile'),
(45, 2, 'CN', 'CHN', 156, '86', 'Chinese renminbi', 'CNY', '¥', 0, '', 'Chine', 'China'),
(46, 0, 'CY', 'CYP', 196, '357', 'European euro', 'EUR', '€', 0, '', 'Chypre', 'Cyprus'),
(47, 0, 'CO', 'COL', 170, '57', 'Colombian peso', 'COP', 'Col$', 0, '', 'Colombie', 'Colombia'),
(48, 0, 'KM', 'COM', 174, '269', 'Comorian franc', 'KMF', '', 0, '', 'Comores', 'Comoros'),
(49, 0, 'CG', 'COG', 178, '242', '', '', '', 0, '', 'Congo', 'Congo'),
(50, 0, 'KP', 'PRK', 408, '850', 'North Korean won', 'KPW', 'W', 0, '', 'Corée du Nord', 'Korea, Democratic People''s Republic of'),
(51, 0, 'KR', 'KOR', 410, '82', 'South Korean won', 'KRW', 'W', 0, '', 'Corée du Sud', 'Korea, Republic of'),
(52, 0, 'CR', 'CRI', 188, '506', 'Costa Rican colon', 'CRC', '¢', 0, '', 'Costa Rica', 'Costa Rica'),
(53, 0, 'HR', 'HRV', 191, '385', 'Croatian kuna', 'HRK', 'kn', 0, '', 'Croatie', 'Croatia'),
(54, 0, 'CU', 'CUB', 192, '53', 'Cuban peso', 'CUC', '$', 0, '', 'Cuba', 'Cuba'),
(55, 0, 'DK', 'DNK', 208, '45', 'Danish krone', 'DKK', 'Kr', 0, '', 'Danemark', 'Denmark'),
(56, 0, 'DJ', 'DJI', 262, '253', 'Djiboutian franc', 'DJF', 'Fdj', 0, '', 'Djibouti', 'Djibouti'),
(57, 0, 'DM', 'DMA', 212, '1767', '', '', '', 0, '', 'Dominique', 'Dominica'),
(58, 0, 'EG', 'EGY', 818, '20', 'Egyptian pound', 'EGP', '£', 0, '', 'Égypte', 'Egypt'),
(59, 0, 'AE', 'ARE', 784, '971', 'UAE dirham', 'AED', '', 0, '', 'Émirats arabes unis', 'United Arab Emirates'),
(60, 0, 'EC', 'ECU', 218, '593', '', '', '', 0, '', 'Équateur', 'Ecuador'),
(61, 0, 'ER', 'ERI', 232, '291', 'Eritrean nakfa', 'ERN', 'Nfa', 0, '', 'Érythrée', 'Eritrea'),
(62, 0, 'ES', 'ESP', 724, '34', 'European euro', 'EUR', '€', 0, '', 'Espagne', 'Spain'),
(63, 0, 'EE', 'EST', 233, '372', 'Estonian kroon', 'EEK', 'KR', 0, '', 'Estonie', 'Estonia'),
(64, 0, 'US', 'USA', 840, '1', 'United States dollar', 'USD', 'US$', 1, '2/''.''/'',''', 'États-Unis', 'United States'),
(65, 0, 'ET', 'ETH', 231, '251', 'Ethiopian birr', 'ETB', 'Br', 0, '', 'Éthiopie', 'Ethiopia'),
(66, 0, 'FI', 'FIN', 246, '358', 'European euro', 'EUR', '€', 0, '', 'Finlande', 'Finland'),
(67, 1, 'FR', 'FRA', 250, '33', 'European euro', 'EUR', '€', 1, '2/''.''/'' ''', 'France', 'France'),
(68, 0, 'GE', 'GEO', 268, '995', 'Georgian lari', 'GEL', '', 0, '', 'Géorgie', 'Georgia'),
(69, 0, 'GA', 'GAB', 266, '241', '', '', '', 0, '', 'Gabon', 'Gabon'),
(70, 0, 'GM', 'GMB', 270, '220', 'Gambian dalasi', 'GMD', 'D', 0, '', 'Gambie', 'Gambia'),
(71, 0, 'GH', 'GHA', 288, '233', 'Ghanaian cedi', 'GHS', '', 0, '', 'Ghana', 'Ghana'),
(72, 0, 'GI', 'GIB', 292, '350', 'Gibraltar pound', 'GIP', '£', 0, '', 'Gibraltar', 'Gibraltar'),
(73, 0, 'GR', 'GRC', 300, '30', 'European euro', 'EUR', '€', 0, '', 'Grèce', 'Greece'),
(74, 0, 'GD', 'GRD', 308, '1473', '', '', '', 0, '', 'Grenade', 'Grenada'),
(75, 0, 'GL', 'GRL', 304, '299', '', '', '', 0, '', 'Groenland', 'Greenland'),
(76, 0, 'GP', 'GLP', 312, '590', '', '', '', 0, '', 'Guadeloupe', 'Guadeloupe'),
(77, 0, 'GU', 'GUM', 316, '671', '', '', '', 0, '', 'Guam', 'Guam'),
(78, 0, 'GT', 'GTM', 320, '502', 'Guatemalan quetzal', 'GTQ', 'Q', 0, '', 'Guatemala', 'Guatemala'),
(79, 0, 'GN', 'GIN', 324, '224', 'Guinean franc', 'GNF', 'FG', 0, '', 'Guinée', 'Guinea'),
(80, 0, 'GQ', 'GNQ', 226, '240', 'Central African CFA franc', 'GQE', 'CFA', 0, '', 'Guinée équatoriale', 'Equatorial Guinea'),
(81, 0, 'GW', 'GNB', 624, '245', '', '', '', 0, '', 'Guinée-Bissao', 'Guinea-Bissau'),
(82, 0, 'GY', 'GUY', 328, '592', 'Guyanese dollar', 'GYD', 'GY$', 0, '', 'Guyana', 'Guyana'),
(83, 0, 'GF', 'GUF', 254, '592', '', '', '', 0, '', 'Guyane française', 'French Guiana'),
(84, 0, 'HT', 'HTI', 332, '509', 'Haitian gourde', 'HTG', 'G', 0, '', 'Haïti', 'Haiti'),
(85, 0, 'HN', 'HND', 340, '504', 'Honduran lempira', 'HNL', 'L', 0, '', 'Honduras', 'Honduras'),
(86, 1, 'HK', 'HKG', 344, '852', 'Hong Kong dollar', 'HKD', 'HK$', 0, '', 'Hong Kong', 'Hong Kong'),
(87, 0, 'HU', 'HUN', 348, '36', 'Hungarian forint', 'HUF', 'Ft', 0, '', 'Hongrie', 'Hungary'),
(88, 0, 'BV', '', 0, '', '', '', '', 0, '', 'Ile Bouvet', 'Bouvet Island'),
(89, 0, 'CX', '', 0, '', '', '', '', 0, '', 'Ile Christmas', 'Christmas Island'),
(90, 0, 'NF', 'NFK', 574, '672', '', '', '', 0, '', 'Ile Norfolk', 'Norfolk Island'),
(91, 0, 'KY', 'CYM', 136, '1345', 'Cayman Islands dollar', 'KYD', 'KY$', 0, '', 'Iles Cayman', 'Cayman Islands'),
(92, 0, 'CK', 'COK', 184, '682', '', '', '', 0, '', 'Iles Cook', 'Cook Islands'),
(93, 0, 'FO', 'FRO', 234, '298', '', '', '', 0, '', 'Iles Féroé', 'Faroe Islands'),
(94, 0, 'FK', 'FLK', 238, '500', 'Falkland Islands pound', 'FKP', '£', 0, '', 'Iles Falkland', 'Falkland Islands (Malvinas)'),
(95, 0, 'FJ', 'FJI', 242, '679', 'Fijian dollar', 'FJD', 'FJ$', 0, '', 'Iles Fidji', 'Fiji'),
(96, 0, 'GS', '', 0, '', '', '', '', 0, '', 'Iles Géorgie du Sud et Sandwich du Sud', 'South Georgia and the South Sandwich Islands'),
(97, 0, 'HM', '', 0, '', '', '', '', 0, '', 'Iles Heard et McDonald', 'Heard Island and Mcdonald Islands'),
(98, 0, 'MH', 'MHL', 584, '692', '', '', '', 0, '', 'Iles Marshall', 'Marshall Islands'),
(99, 0, 'PN', 'PCN', 612, '', '', '', '', 0, '', 'Iles Pitcairn', 'Pitcairn'),
(100, 0, 'SB', 'SLB', 90, '677', 'Solomon Islands dollar', 'SBD', 'SI$', 0, '', 'Iles Salomon', 'Solomon Islands'),
(101, 0, 'SJ', 'SJM', 744, '', '', '', '', 0, '', 'Iles Svalbard et Jan Mayen', 'Svalbard and Jan Mayen'),
(102, 0, 'TC', 'TCA', 796, '1649', '', '', '', 0, '', 'Iles Turks-et-Caicos', 'Turks and Caicos Islands'),
(103, 0, 'VI', 'VIR', 850, '1', '', '', '', 0, '', 'Iles Vierges américaines', 'Virgin Islands, U.s.'),
(104, 0, 'VG', 'VGB', 92, '1284', '', '', '', 0, '', 'Iles Vierges britanniques', 'Virgin Islands, British'),
(105, 0, 'CC', '', 0, '', '', '', '', 0, '', 'Iles des Cocos (Keeling)', 'Cocos (Keeling) Islands'),
(106, 0, 'UM', '', 0, '', '', '', '', 0, '', 'Iles mineures éloignées des États-Unis', 'United States Minor Outlying Islands'),
(107, 0, 'IN', 'IND', 356, '91', 'Indian rupee', 'INR', 'Rs', 0, '', 'Inde', 'India'),
(108, 0, 'ID', 'IDN', 360, '62', 'Indonesian rupiah', 'IDR', 'Rp', 0, '', 'Indonésie', 'Indonesia'),
(109, 0, 'IR', 'IRN', 364, '98', 'Iranian rial', 'IRR', '', 0, '', 'Iran', 'Iran, Islamic Republic of'),
(110, 0, 'IQ', 'IRQ', 368, '964', 'Iraqi dinar', 'IQD', '', 0, '', 'Iraq', 'Iraq'),
(111, 0, 'IE', 'IRL', 372, '353', 'European euro', 'EUR', '€', 0, '', 'Irlande', 'Ireland'),
(112, 0, 'IS', 'ISL', 352, '354', 'Icelandic króna', 'ISK', 'kr', 0, '', 'Islande', 'Iceland'),
(114, 1, 'IT', 'ITA', 380, '39', 'European euro', 'EUR', '€', 0, '', 'Italie', 'Italy'),
(115, 0, 'JM', 'JAM', 388, '1876', 'Jamaican dollar', 'JMD', 'J$', 0, '', 'Jamaïque', 'Jamaica'),
(116, 1, 'JP', 'JPN', 392, '81', 'Japanese yen', 'JPY', '¥', 1, '2/''.''/'' ''', 'Japon', 'Japan'),
(117, 0, 'JO', 'JOR', 400, '962', 'Jordanian dinar', 'JOD', '', 0, '', 'Jordanie', 'Jordan'),
(118, 0, 'KZ', 'KAZ', 398, '', 'Kazakhstani tenge', 'KZT', 'T', 0, '', 'Kazakhstan', 'Kazakhstan'),
(119, 0, 'KE', 'KEN', 404, '254', 'Kenyan shilling', 'KES', 'KSh', 0, '', 'Kenya', 'Kenya'),
(120, 0, 'KG', 'KGZ', 417, '996', 'Kyrgyzstani som', 'KGS', '', 0, '', 'Kirghizistan', 'Kyrgyzstan'),
(121, 0, 'KI', 'KIR', 296, '686', '', '', '', 0, '', 'Kiribati', 'Kiribati'),
(122, 0, 'KW', 'KWT', 414, '965', 'Kuwaiti dinar', 'KWD', '', 0, '', 'Koweït', 'Kuwait'),
(123, 0, 'LA', 'LAO', 418, '', 'Lao kip', 'LAK', 'KN', 0, '', 'Laos', 'Lao People''s Democratic Republic'),
(124, 0, 'LS', 'LSO', 426, '266', 'Lesotho loti', 'LSL', 'M', 0, '', 'Lesotho', 'Lesotho'),
(125, 0, 'LV', 'LVA', 428, '371', 'Latvian lats', 'LVL', 'Ls', 0, '', 'Lettonie', 'Latvia'),
(126, 0, 'LB', 'LBN', 422, '961', 'Lebanese lira', 'LBP', '', 0, '', 'Liban', 'Lebanon'),
(127, 0, 'LR', 'LBR', 430, '231', 'Liberian dollar', 'LRD', 'L$', 0, '', 'Liberia', 'Liberia'),
(128, 0, 'LY', 'LBY', 434, '218', 'Libyan dinar', 'LYD', 'LD', 0, '', 'Libye', 'Libyan Arab Jamahiriya'),
(129, 0, 'LI', 'LIE', 438, '', '', '', '', 0, '', 'Liechtenstein', 'Liechtenstein'),
(130, 0, 'LT', 'LTU', 440, '370', 'Lithuanian litas', 'LTL', 'Lt', 0, '', 'Lituanie', 'Lithuania'),
(131, 0, 'LU', 'LUX', 442, '352', 'European euro', 'EUR', '€', 0, '', 'Luxembourg', 'Luxembourg'),
(132, 0, 'MO', 'MAC', 446, '853', 'Macanese pataca', 'MOP', 'P', 0, '', 'Macao', 'Macao'),
(133, 0, 'MG', 'MDG', 450, '261', 'Malagasy ariary', 'MGA', 'FMG', 0, '', 'Madagascar', 'Madagascar'),
(134, 0, 'MY', 'MYS', 458, '60', 'Malaysian ringgit', 'MYR', 'RM', 0, '', 'Malaisie', 'Malaysia'),
(135, 0, 'MW', 'MWI', 454, '265', 'Malawian kwacha', 'MWK', 'MK', 0, '', 'Malawi', 'Malawi'),
(136, 0, 'MV', 'MDV', 462, '960', 'Maldivian rufiyaa', 'MVR', 'Rf', 0, '', 'Maldives', 'Maldives'),
(137, 0, 'ML', 'MLI', 466, '223', '', '', '', 0, '', 'Mali', 'Mali'),
(138, 0, 'MT', 'MLT', 470, '356', 'European Euro', 'EUR', '€', 0, '', 'Malte', 'Malta'),
(139, 0, 'MP', 'MNP', 580, '670', '', '', '', 0, '', 'Mariannes du Nord', 'Northern Mariana Islands'),
(140, 0, 'MA', 'MAR', 504, '212', 'Moroccan dirham', 'MAD', '', 0, '', 'Maroc', 'Morocco'),
(141, 0, 'MQ', 'MTQ', 474, '', '', '', '', 0, '', 'Martinique', 'Martinique'),
(142, 0, 'MU', 'MUS', 480, '230', 'Mauritian rupee', 'MUR', 'Rs', 0, '', 'Maurice', 'Mauritius'),
(143, 0, 'MR', 'MRT', 478, '222', 'Mauritanian ouguiya', 'MRO', 'UM', 0, '', 'Mauritanie', 'Mauritania'),
(144, 0, 'YT', '', 0, '', '', '', '', 0, '', 'Mayotte', 'Mayotte'),
(145, 0, 'MX', 'MEX', 484, '52', 'Mexican peso', 'MXN', '$', 0, '', 'Mexique', 'Mexico'),
(146, 0, 'FM', 'FSM', 583, '691', '', '', '', 0, '', 'Micronésie', 'Micronesia, Federated States of'),
(147, 0, 'MD', 'MDA', 498, '373', 'Moldovan leu', 'MDL', '', 0, '', 'Moldavie', 'Moldova, Republic of'),
(148, 0, 'MC', 'MCO', 492, '377', '', '', '', 0, '', 'Monaco', 'Monaco'),
(149, 0, 'MN', 'MNG', 496, '976', 'Mongolian tugrik', 'MNT', '?', 0, '', 'Mongolie', 'Mongolia'),
(150, 0, 'MS', 'MSR', 500, '1664', '', '', '', 0, '', 'Montserrat', 'Montserrat'),
(151, 0, 'MZ', 'MOZ', 508, '258', 'Mozambican metical', 'MZM', 'MTn', 0, '', 'Mozambique', 'Mozambique'),
(152, 0, 'NP', 'NPL', 524, '977', 'Nepalese rupee', 'NPR', 'NRs', 0, '', 'Népal', 'Nepal'),
(153, 0, 'NA', 'NAM', 516, '264', 'Namibian dollar', 'NAD', 'N$', 0, '', 'Namibie', 'Namibia'),
(154, 0, 'NR', 'NRU', 520, '674', '', '', '', 0, '', 'Nauru', 'Nauru'),
(155, 0, 'NI', 'NIC', 558, '505', 'Nicaraguan córdoba', 'NIO', 'C$', 0, '', 'Nicaragua', 'Nicaragua'),
(156, 0, 'NE', 'NER', 562, '227', '', '', '', 0, '', 'Niger', 'Niger'),
(157, 0, 'NG', 'NGA', 566, '234', 'Nigerian naira', 'NGN', '?', 0, '', 'Nigeria', 'Nigeria'),
(158, 0, 'NU', 'NIU', 570, '683', '', '', '', 0, '', 'Nioué', 'Niue'),
(159, 0, 'NO', 'NOR', 578, '47', 'Norwegian krone', 'NOK', 'kr', 0, '', 'Norvège', 'Norway'),
(160, 0, 'NC', 'NCL', 540, '687', '', '', '', 0, '', 'Nouvelle-Calédonie', 'New Caledonia'),
(161, 0, 'NZ', 'NZL', 554, '64', 'New Zealand dollar', 'NZD', 'NZ$', 0, '', 'Nouvelle-Zélande', 'New Zealand'),
(162, 0, 'OM', 'OMN', 512, '968', 'Omani rial', 'OMR', '', 0, '', 'Oman', 'Oman'),
(163, 0, 'UG', 'UGA', 800, '256', 'Ugandan shilling', 'UGX', 'USh', 0, '', 'Ouganda', 'Uganda'),
(164, 0, 'UZ', 'UZB', 860, '998', 'Uzbekistani som', 'UZS', '', 0, '', 'Ouzbékistan', 'Uzbekistan'),
(165, 0, 'PE', 'PER', 604, '51', 'Peruvian nuevo sol', 'PEN', 'S/.', 0, '', 'Pérou', 'Peru'),
(166, 0, 'PK', 'PAK', 586, '92', 'Pakistani rupee', 'PKR', 'Rs.', 0, '', 'Pakistan', 'Pakistan'),
(167, 0, 'PA', 'PAN', 591, '507', 'Panamanian balboa', 'PAB', 'B./', 0, '', 'Panama', 'Panama'),
(168, 0, 'PG', 'PNG', 598, '675', 'Papua New Guinean kina', 'PGK', 'K', 0, '', 'Papouasie-Nouvelle-Guinée', 'Papua New Guinea'),
(169, 0, 'PY', 'PRY', 600, '595', 'Paraguayan guarani', 'PYG', '', 0, '', 'Paraguay', 'Paraguay'),
(170, 0, 'NL', 'NLD', 528, '31', 'European euro', 'EUR', '€', 0, '', 'Pays-Bas', 'Netherlands'),
(171, 0, 'PH', 'PHL', 608, '63', 'Philippine peso', 'PHP', '?', 0, '', 'Philippines', 'Philippines'),
(172, 0, 'PL', 'POL', 616, '48', 'Polish zloty', 'PLN', '', 0, '', 'Pologne', 'Poland'),
(173, 0, 'PF', 'PYF', 258, '689', '', '', '', 0, '', 'Polynésie française', 'French Polynesia'),
(174, 0, 'PR', 'PRI', 630, '', '', '', '', 0, '', 'Porto Rico', 'Puerto Rico'),
(175, 0, 'PT', 'PRT', 620, '351', 'European euro', 'EUR', '€', 0, '', 'Portugal', 'Portugal'),
(176, 0, 'QA', 'QAT', 634, '974', 'Qatari riyal', 'QAR', 'QR', 0, '', 'Qatar', 'Qatar'),
(177, 0, 'CF', 'CAF', 140, '236', '', '', '', 0, '', 'République centrafricaine', 'Central African Republic'),
(178, 0, 'CD', 'COD', 180, '242', 'Congolese franc', 'CDF', 'F', 0, '', 'République démocratique du Congo', 'Congo, the Democratic Republic of the'),
(179, 0, 'DO', 'DOM', 214, '809', 'Dominican peso', 'DOP', 'RD$', 0, '', 'République dominicaine', 'Dominican Republic'),
(180, 0, 'CZ', 'CZE', 203, '', 'Czech koruna', 'CZK', 'Kc', 0, '', 'République tchèque', 'Czech Republic'),
(181, 0, 'RE', 'REU', 638, '262', '', '', '', 0, '', 'Réunion', 'Reunion'),
(182, 0, 'RO', 'ROM', 642, '40', 'Romanian leu', 'RON', 'L', 0, '', 'Roumanie', 'Romania'),
(183, 1, 'GB', 'GBR', 826, '44', 'British pound', 'GBP', '£', 1, '2/''.''/'',''', 'Royaume-Uni', 'United Kingdom'),
(184, 0, 'RU', 'RUS', 643, '7', 'Russian ruble', 'RUB', 'R', 0, '', 'Russie', 'Russian Federation'),
(185, 0, 'RW', 'RWA', 646, '250', 'Rwandan franc', 'RWF', 'RF', 0, '', 'Rwanda', 'Rwanda'),
(186, 0, 'SN', 'SEN', 686, '221', '', '', '', 0, '', 'Sénégal', 'Senegal'),
(187, 0, 'EH', 'ESH', 732, '', '', '', '', 0, '', 'Sahara occidental', 'Western Sahara'),
(188, 0, 'KN', 'KNA', 659, '1869', '', '', '', 0, '', 'Saint-Christophe-et-Niévès', 'Saint Kitts and Nevis'),
(189, 0, 'SM', 'SMR', 674, '378', '', '', '', 0, '', 'Saint-Marin', 'San Marino'),
(190, 0, 'PM', 'SPM', 666, '508', '', '', '', 0, '', 'Saint-Pierre-et-Miquelon', 'Saint Pierre and Miquelon'),
(191, 0, 'VA', 'VAT', 336, '39', '', '', '', 0, '', 'Saint-Siège ', 'Holy See (Vatican City State)'),
(192, 0, 'VC', 'VCT', 670, '1784', '', '', '', 0, '', 'Saint-Vincent-et-les-Grenadines', 'Saint Vincent and the Grenadines'),
(193, 0, 'SH', 'SHN', 654, '290', 'Saint Helena pound', 'SHP', '£', 0, '', 'Sainte-Hélène', 'Saint Helena'),
(194, 0, 'LC', 'LCA', 662, '1758', '', '', '', 0, '', 'Sainte-Lucie', 'Saint Lucia'),
(195, 0, 'SV', 'SLV', 222, '503', '', '', '', 0, '', 'Salvador', 'El Salvador'),
(196, 0, 'WS', 'WSM', 882, '685', 'Samoan tala', 'WST', 'WS$', 0, '', 'Samoa', 'Samoa'),
(197, 0, 'AS', 'ASM', 16, '684', '', '', '', 0, '', 'Samoa américaines', 'American Samoa'),
(198, 0, 'ST', 'STP', 678, '239', 'São Tomé and Príncipe dobra', 'STD', 'Db', 0, '', 'Sao Tomé-et-Principe', 'Sao Tome and Principe'),
(199, 0, 'SC', 'SYC', 690, '248', 'Seychellois rupee', 'SCR', 'SR', 0, '', 'Seychelles', 'Seychelles'),
(200, 0, 'SL', 'SLE', 694, '232', 'Sierra Leonean leone', 'SLL', 'Le', 0, '', 'Sierra Leone', 'Sierra Leone'),
(201, 1, 'SG', 'SGP', 702, '65', 'Singapore dollar', 'SGD', 'S$', 0, '', 'Singapour', 'Singapore'),
(202, 0, 'SI', 'SVN', 705, '386', 'European euro', 'EUR', '€', 0, '', 'Slovénie', 'Slovenia'),
(203, 0, 'SK', 'SVK', 703, '421', 'European euro', 'EUR', '€', 0, '', 'Slovaquie', 'Slovakia'),
(204, 0, 'SO', 'SOM', 706, '252', 'Somali shilling', 'SOS', 'Sh.', 0, '', 'Somalie', 'Somalia'),
(205, 0, 'SD', 'SDN', 736, '249', 'Sudanese pound', 'SDG', '', 0, '', 'Soudan', 'Sudan'),
(206, 0, 'LK', 'LKA', 144, '94', 'Sri Lankan rupee', 'LKR', 'Rs', 0, '', 'Sri Lanka', 'Sri Lanka'),
(207, 0, 'SE', 'SWE', 752, '46', 'Swedish krona', 'SEK', 'kr', 0, '', 'Suède', 'Sweden'),
(208, 0, 'CH', 'CHE', 756, '41', 'Swiss franc', 'CHF', 'Fr.', 1, '2/''.''/'' ''', 'Suisse', 'Switzerland'),
(209, 0, 'SR', 'SUR', 740, '597', 'Surinamese dollar', 'SRD', '$', 0, '', 'Suriname', 'Suriname'),
(210, 0, 'SZ', 'SWZ', 748, '268', 'Swazi lilangeni', 'SZL', 'E', 0, '', 'Swaziland', 'Swaziland'),
(211, 0, 'SY', 'SYR', 760, '963', 'Syrian pound', 'SYP', '', 0, '', 'Syrie', 'Syrian Arab Republic'),
(212, 5, 'TW', 'TWN', 158, '886', 'New Taiwan dollar', 'TWD', 'NT$', 0, '', 'Taïwan', 'Taiwan, Province of China'),
(213, 0, 'TJ', 'TJK', 762, '992', 'Tajikistani somoni', 'TJS', '', 0, '', 'Tadjikistan', 'Tajikistan'),
(214, 0, 'TZ', 'TZA', 834, '255', 'Tanzanian shilling', 'TZS', '', 0, '', 'Tanzanie', 'Tanzania, United Republic of'),
(215, 0, 'TD', 'TCD', 148, '235', '', '', '', 0, '', 'Tchad', 'Chad'),
(216, 0, 'TF', '', 0, '', '', '', '', 0, '', 'Terres australes françaises', 'French Southern Territories'),
(217, 0, 'IO', '', 0, '', '', '', '', 0, '', 'Territoire britannique de l''Océan Indien', 'British Indian Ocean Territory'),
(218, 0, 'TH', 'THA', 764, '66', 'Thai baht', 'THB', '?', 0, '', 'Thaïlande', 'Thailand'),
(219, 0, 'TL', '', 0, '670', '', '', '', 0, '', 'Timor Oriental', 'Timor-Leste'),
(220, 0, 'TG', 'TGO', 768, '228', '', '', '', 0, '', 'Togo', 'Togo'),
(221, 0, 'TK', 'TKL', 772, '690', '', '', '', 0, '', 'Tokélaou', 'Tokelau'),
(222, 0, 'TO', 'TON', 776, '676', '', '', '', 0, '', 'Tonga', 'Tonga'),
(223, 0, 'TT', 'TTO', 780, '1868', 'Trinidad and Tobago dollar', 'TTD', 'TT$', 0, '', 'Trinité-et-Tobago', 'Trinidad and Tobago'),
(224, 15, 'TN', 'TUN', 788, '216', 'Tunisian dinar', 'TND', 'DT', 1, '3,''.'','' ''', 'Tunisie', 'Tunisia'),
(225, 0, 'TM', 'TKM', 795, '993', 'Turkmen manat', 'TMT', 'm', 0, '', 'Turkménistan', 'Turkmenistan'),
(226, 0, 'TR', 'TUR', 792, '90', 'Turkish new lira', 'TRY', 'YTL', 0, '', 'Turquie', 'Turkey'),
(227, 0, 'TV', 'TUV', 798, '688', '', '', '', 0, '', 'Tuvalu', 'Tuvalu'),
(228, 0, 'UA', 'UKR', 804, '380', 'Ukrainian hryvnia', 'UAH', '', 0, '', 'Ukraine', 'Ukraine'),
(229, 0, 'UY', 'URY', 858, '598', 'Uruguayan peso', 'UYU', '$U', 0, '', 'Uruguay', 'Uruguay'),
(230, 0, 'VU', 'VUT', 548, '678', 'Vanuatu vatu', 'VUV', 'VT', 0, '', 'Vanuatu', 'Vanuatu'),
(231, 0, 'VE', 'VEN', 862, '58', 'Venezuelan bolivar', 'VEB', 'Bs', 0, '', 'Venezuela', 'Venezuela'),
(232, 0, 'VN', 'VNM', 704, '84', 'Vietnamese dong', 'VND', '?', 0, '', 'Viêt Nam', 'Viet Nam'),
(233, 0, 'WF', 'WLF', 876, '681', '', '', '', 0, '', 'Wallis-et-Futuna', 'Wallis and Futuna'),
(234, 0, 'YE', 'YEM', 887, '967', 'Yemeni rial', 'YER', '', 0, '', 'Yémen', 'Yemen'),
(235, 0, 'YU', '', 0, '381', '', '', '', 0, '', 'Yougoslavie', 'Yugoslavia'),
(236, 0, 'ZM', 'ZMB', 894, '260', 'Zambian kwacha', 'ZMK', 'ZK', 0, '', 'Zambie', 'Zambia'),
(237, 0, 'ZW', 'ZWE', 716, '263', 'Zimbabwean dollar', 'ZWR', 'Z$', 0, '', 'Zimbabwe', 'Zimbabwe'),
(238, 0, 'MK', 'MKD', 807, '389', 'Macedonian denar', 'MKD', '', 0, '', 'ex-République yougoslave de Macédoine', 'Macedonia, the Former Yugoslav Republic of');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_departments`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `jos_jaderp_departments`
--

INSERT DELAYED INTO `jos_jaderp_departments` (`id`, `name`, `description`) VALUES
(1, 'Ressource humaines', 'bla bla bla ya ressource'),
(2, 'Commercial', ''),
(3, 'Approvisionnement', 'Ce département est lahi bil chra');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_levels_menu`
--

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

INSERT DELAYED INTO `jos_jaderp_levels_menu` (`id`, `menu_id`, `level_id`, `active`) VALUES
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
  `option` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `jos_jaderp_menu`
--

INSERT DELAYED INTO `jos_jaderp_menu` (`id`, `option`, `controller`, `task`, `published`, `hidden`, `name`, `languagename`, `url`, `ordering`, `parent_name`, `component`, `menu_icon`, `desktop_icon`, `menu_description`, `min_access_level`) VALUES
(9, 'com_jaderp', 'Workers', 'add', 1, 1, 'workerscreat', 'MENU_WORKERS_CREAT', 'index.php?option=com_jaderp&func=Workers&task=add', 1, 'workers', 'jaderp', 'workers/executive_add.png', 'add_billing.png', '', 0),
(11, '', '', '', 1, 1, 'workers', 'MENU_WORKERS', '', 3, '', 'jaderp', 'workers/executive_config.png', 'add_billing.png', '', 0),
(12, 'com_jaderp', 'Workers', 'manage', 1, 0, 'manageworkers', 'MANAGE_WORKERS', 'index.php?option=com_jaderp&func=Workers&task=manage', 3, 'workers', 'jaderp', 'workers/executive_config.png', 'add_billing.png', '', 10),
(13, '', '', '', 1, 0, 'suppliers', 'SUPPLIERS_MENU', '', 4, '', 'jaderp', '', '', '', 0),
(14, 'com_jaderp', 'Suppliers', 'add', 1, 0, 'addsupplier', 'ADD_SUPPLIER', 'index.php?option=com_jaderp&func=Suppliers&task=add', 1, 'suppliers', 'jaderp', 'invoice/invoice_add.png', 'add_billing.png', '', 0),
(15, 'com_jaderp', 'Workers', 'edit', 0, 1, 'workersedit', 'MENU_WORKERS_EDIT', '', 0, 'workers', 'jaderp', 'workers/executive_write.png', 'add_billing.png', '', 10);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_suppliers`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) NOT NULL,
  `rsoc` varchar(255) NOT NULL,
  `responsable` varchar(80) NOT NULL,
  `country` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `max_credit` double NOT NULL,
  `initial_credit` double NOT NULL,
  `chaff` double NOT NULL,
  `swift` varchar(25) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_address` text NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bankaccount` varchar(50) NOT NULL,
  `codetva` varchar(50) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `jos_jaderp_suppliers`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `jos_jaderp_tables`
--

INSERT DELAYED INTO `jos_jaderp_tables` (`id`, `table_name`, `table_description`, `del_min_access_level`) VALUES
(1, 'jaderp_branchs', 'DESCRIPTION_TABLE_BRANCHS', 10),
(2, 'jaderp_countries', 'DESCRIPTION_TABLE_COUNTRIES', 10),
(3, 'jaderp_departments', 'DESCRIPTION_TABLE_DEPARTMENTS', 10),
(4, 'jaderp_menu', 'DESCRIPTION_TABLE_MENU', 99),
(5, 'jaderp_suppliers', 'DESCRIPTION_TABLE_SUPPLIERS', 10),
(6, 'jaderp_types_piece', 'DESCRIPTION_TABLE_TPIECES', 10),
(7, 'jaderp_users', 'DESCRIPTION_TABLE_USERS', 10),
(8, 'jaderp_contacts', 'DESCRIPTION_TABLE_CONTACTS', 10);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_tables_access`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_tables_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `field_name` varchar(80) NOT NULL,
  `field_description` text NOT NULL,
  `view_min_access_level` int(11) NOT NULL,
  `edit_min_access_level` int(11) NOT NULL,
  `add_min_access_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Contenu de la table `jos_jaderp_tables_access`
--

INSERT DELAYED INTO `jos_jaderp_tables_access` (`id`, `table_id`, `field_name`, `field_description`, `view_min_access_level`, `edit_min_access_level`, `add_min_access_level`) VALUES
(6, 1, 'name', '', 10, 10, 10),
(5, 1, 'id', '', 10, 10, 10),
(7, 1, 'description', '', 10, 10, 10),
(8, 1, 'address', '', 10, 10, 10),
(9, 2, 'id', '', 10, 10, 10),
(10, 2, 'hits', '', 10, 10, 10),
(11, 2, 'iso', '', 10, 10, 10),
(12, 2, 'iso3', '', 10, 10, 10),
(13, 2, 'numcode', '', 10, 10, 10),
(14, 2, 'phone_code', '', 10, 10, 10),
(15, 2, 'currency', '', 10, 10, 10),
(16, 2, 'iso4217', '', 10, 10, 10),
(17, 2, 'currency_symbol', '', 10, 10, 10),
(18, 2, 'active_currency', '', 10, 10, 10),
(19, 2, 'currency_format', '', 10, 10, 10),
(20, 2, 'fr', '', 10, 10, 10),
(21, 2, 'en', '', 10, 10, 10),
(22, 3, 'id', '', 10, 10, 10),
(23, 3, 'name', '', 10, 10, 10),
(24, 3, 'description', '', 10, 10, 10),
(25, 4, 'id', '', 99, 99, 99),
(26, 4, 'published', '', 99, 99, 99),
(27, 4, 'hidden', '', 99, 99, 99),
(28, 4, 'name', '', 99, 99, 99),
(29, 4, 'languagename', '', 99, 99, 99),
(30, 4, 'url', '', 99, 99, 99),
(31, 4, 'ordering', '', 99, 99, 99),
(32, 4, 'parent_name', '', 99, 99, 99),
(33, 4, 'component', '', 99, 99, 99),
(34, 4, 'menu_icon', '', 99, 99, 99),
(35, 4, 'desktop_icon', '', 99, 99, 99),
(36, 4, 'menu_description', '', 99, 99, 99),
(37, 4, 'min_access_level', '', 99, 99, 99),
(38, 6, 'id', '', 10, 10, 10),
(39, 6, 'name', '', 10, 10, 10),
(40, 6, 'description', '', 10, 10, 10),
(41, 7, 'id', '', 10, 10, 10),
(42, 7, 'joomla_id', '', 10, 10, 10),
(43, 7, 'canaccess', '', 10, 10, 10),
(44, 7, 'access_level', '', 10, 10, 10),
(45, 7, 'mat', '', 10, 10, 10),
(46, 7, 'department', '', 10, 10, 10),
(47, 7, 'branch', '', 10, 10, 10),
(48, 7, 'lastname', '', 10, 10, 10),
(49, 7, 'firstname', '', 10, 10, 10),
(50, 7, 'num_piece', '', 10, 10, 10),
(51, 7, 'type_piece', '', 10, 10, 10),
(52, 7, 'email', '', 10, 10, 10),
(53, 7, 'phone', '', 10, 10, 10),
(54, 7, 'salaire', '', 10, 10, 10),
(55, 7, 'startdate', '', 10, 10, 10),
(56, 7, 'note', '', 10, 10, 10),
(57, 7, 'position', '', 10, 10, 10),
(58, 7, 'present', '', 10, 10, 10),
(59, 7, 'iscontact', '', 10, 10, 10),
(60, 7, 'password', '', 10, 10, 10),
(61, 7, 'forcepasschange', '', 10, 10, 10),
(62, 7, 'checked_out', '', 10, 10, 10),
(63, 7, 'checked_out_time', '', 10, 10, 10),
(64, 5, 'id', '', 10, 10, 10),
(65, 5, 'code', '', 10, 10, 10),
(66, 5, 'rsoc', '', 10, 10, 10),
(67, 5, 'responsable', '', 10, 10, 10),
(68, 5, 'country', '', 10, 10, 10),
(69, 5, 'currency', '', 10, 10, 10),
(70, 5, 'max_credit', '', 10, 10, 10),
(71, 5, 'initial_credit', '', 10, 10, 10),
(72, 5, 'chaff', '', 10, 10, 10),
(73, 5, 'swift', '', 10, 10, 10),
(74, 5, 'bankaccount', '', 10, 10, 10),
(75, 5, 'codetva', '', 10, 10, 10),
(76, 5, 'checked_out', '', 10, 10, 10),
(77, 5, 'checked_out_time', '', 10, 10, 10),
(78, 8, 'id', '', 10, 10, 10),
(79, 8, 'name', '', 10, 10, 10),
(80, 8, 'con_position', '', 10, 10, 10),
(81, 8, 'address', '', 10, 10, 10),
(82, 8, 'suburb', '', 10, 10, 10),
(83, 8, 'state', '', 10, 10, 10),
(84, 8, 'country', '', 10, 10, 10),
(85, 8, 'postcode', '', 10, 10, 10),
(86, 8, 'telephone1', '', 10, 10, 10),
(87, 8, 'telephone2', '', 10, 10, 10),
(88, 8, 'fax', '', 10, 10, 10),
(89, 8, 'misc', '', 10, 10, 10),
(90, 8, 'image', '', 10, 10, 10),
(91, 8, 'email_to', '', 10, 10, 10),
(92, 8, 'default_con', '', 10, 10, 10),
(93, 8, 'checked_out', '', 10, 10, 10),
(94, 8, 'checked_out_time', '', 10, 10, 10),
(95, 8, 'ordering', '', 10, 10, 10),
(96, 8, 'parent_id', '', 10, 10, 10),
(97, 8, 'category', '', 10, 10, 10),
(98, 8, 'mobile', '', 10, 10, 10),
(99, 8, 'webpage', '', 10, 10, 10),
(100, 5, 'bank_name', '', 10, 10, 10),
(101, 5, 'bank_address', '', 10, 10, 10),
(102, 5, 'account_number', '', 10, 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_types_piece`
--

CREATE TABLE IF NOT EXISTS `jos_jaderp_types_piece` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `jos_jaderp_types_piece`
--

INSERT DELAYED INTO `jos_jaderp_types_piece` (`id`, `name`, `description`) VALUES
(1, 'C.I.N', 'Carte d''identité nationale'),
(2, 'Passeport', 'Passeport'),
(3, 'Carte de séjour', 'Carte de séjour pour les non résidents'),
(4, 'Permis de conduire', 'Permis de conduire'),
(5, 'Autre...', 'Autres type de carte');

-- --------------------------------------------------------

--
-- Structure de la table `jos_jaderp_users`
--

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

INSERT DELAYED INTO `jos_jaderp_users` (`id`, `joomla_id`, `canaccess`, `access_level`, `mat`, `department`, `branch`, `lastname`, `firstname`, `num_piece`, `type_piece`, `email`, `phone`, `salaire`, `startdate`, `note`, `position`, `present`, `iscontact`, `password`, `forcepasschange`, `checked_out`, `checked_out_time`) VALUES
(1, 63, 0, 2, '2332', 0, 0, 'Feki', 'Hichem', '1222222', 0, 'feki.hichem@gmail.com', '22393233', 2536, '0000-00-00', 25, 'Master', 1, 0, '123456', 0, 0, '0000-00-00 00:00:00'),
(2, 92, 1, 1, '142536', 2, 2, 'Feki', 'Chaima', '12345679', 1, 'feki.hichem@gmail.cm', '24751419', 0, '2009-06-02', 20, 'Binti', 1, 1, '9a9f8cf4d5b3d18dd3d3537e347182b8:4L4CgGYe3Y85qLcE9', 1, 0, '2009-07-01 01:47:35'),
(3, 62, 1, 1, '253636', 0, 0, 'Feki', 'Eya', '456855222', 0, 'feki.hichem@gmail.com', '74464334', 1234, '1963-11-21', 12, 'Binti', 1, 0, 'ac7e4a54f57f7d90c8510548864a705b:NK64BMx3eLciiACu4', 0, 63, '2009-06-11 05:09:06'),
(4, 66, 0, 0, '123456', 0, 0, 'Chtourou', 'Souheila', '14253689', 0, 'soussou@sous.com', '24751419', 300, '0000-00-00', 15, 'Marti', 1, 0, '7e39d0d5fadd36b41d0a95c46225ab47:7zb5QvgW72gFDYFLm', 0, 63, '2009-06-09 05:22:19'),
(5, 67, 0, 0, '147258', 0, 0, 'Feki', 'Chaima', '12345679', 0, 'feki.hichem@gmail.com', '24751419', 1234, '0000-00-00', 15, 'Binti', 1, 0, '0c827f11b42b77943a4e153a5d185361:qkeXcmeK0ChsJuWkd', 0, 63, '2009-06-09 05:22:26'),
(6, 0, 0, 1, '458658DDEF', 1, 1, 'fsdfsdf', 'fsdff', '1235266', 0, '', '', 0, '2009-06-03', 0, '', 1, 0, '305dd8a5db16b515f15a974c761f4450:V7DnUROUKVUy0AZEy', 0, 0, '0000-00-00 00:00:00'),
(7, 93, 0, 1, '258369', 2, 1, 'soussou', 'chtourou', '251478523', 1, 'feki.hichem@gmail.com', '24751419', 300, '2008-12-01', 0, 'agent commercial', 1, 0, 'd2e26393326e07bae7015fc30266a855:t8If56JDYjUuLzINS', 0, 0, '0000-00-00 00:00:00'),
(8, 94, 0, 1, '147258', 2, 2, 'soussou', 'chtourou', '251478523', 3, 'feki.hichem@gmail.com', '24751419', 300, '2008-12-01', 0, '', 1, 0, '1d8668e238d92c6acdf45ba1fa303d5a:P9mV9RHdtpzuKaFr8', 0, 0, '0000-00-00 00:00:00'),
(9, 0, 0, 1, 'fsqdfqsdf', 1, 1, 'qsdfqsdf', 'qfqsfqsdf', 'qfsdf', 1, '', '', 0, '2008-12-01', 0, '', 1, 0, 'f43fd388b19f6cc28af45cfb1dc2a484:NruWkrDOXQCYWfK0E', 0, 0, '0000-00-00 00:00:00'),
(10, 95, 0, 1, 'qsdfqsf', 1, 1, 'bhhghj', 'ghghjg', 'hjgghj', 1, '', '', 0, '2008-12-01', 0, '', 1, 0, 'f55d6fd043e3eb48dbe967094fc1f846:OZjHbCp7BlBHj32xr', 0, 63, '2009-06-11 05:42:09'),
(11, 0, 0, 1, 'fsqfqsdf', 1, 1, 'hjkjhj', 'hjhkjh', 'hjkhkj', 1, '', '', 0, '2008-12-01', 0, '', 1, 0, '651ec9e1d6f734116d756e3d16de6d66:pUdpuoie90qfjYUTR', 0, 0, '0000-00-00 00:00:00'),
(12, 96, 0, 1, 'kjkikk', 1, 1, 'soussou', 'qfqsfqsdf', 'hjgghj', 4, 'feki.hichem@gmail.com', '', 0, '2008-12-01', 0, 'LePoeTe', 1, 0, '899edeb57dd3265803cc83f5a42d1b49:mWxmwkFr6d6qRyD6W', 0, 0, '2009-06-15 14:44:11'),
(13, 97, 0, 1, '258369147', 1, 1, 'soussou', 'chtourou', '251478523', 3, 'feki.hichem@gmail.com', '24751419', 300, '2008-12-01', 0, 'LePoeTe', 1, 0, 'eceb5f0f1e71f452915ad45ae23b707f:lPjLMeW3lp2zv6ROF', 0, 0, '0000-00-00 00:00:00'),
(14, 98, 0, 1, '2332', 2, 2, 'fsdfsdf', 'Eya', '1222222', 3, 'feki.hichem@gmail.cm', '22393233', 0, '2009-06-02', 20, 'Binti', 1, 0, '8111933abda2a1db3212597b6fa7deae:TDkgPbUtpiYSVFXuF', 0, 0, '0000-00-00 00:00:00'),
(15, 99, 0, 1, 'azerty', 1, 1, 'Feki', 'Souheila', '12345679', 4, 'feki.hichem@gmail.com', '74464334', 1234, '2009-06-03', 20, '', 1, 0, '592803b8f7b0eff3c4f961a37542b739:Gg1DnCX81V9AAVTaK', 0, 0, '0000-00-00 00:00:00');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `jos_jaderp_users_access`
--

INSERT DELAYED INTO `jos_jaderp_users_access` (`user_id`, `module_component`, `controller`, `task`, `access_level`, `id`) VALUES
(63, 'com_jaderp', 'Desktop', 'default', 5, 1),
(63, 'com_jaderp', 'Workers', 'add', 5, 2),
(63, 'com_jaderp', 'Suppliers', 'add', 5, 3);
