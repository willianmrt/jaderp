DROP TABLE IF EXISTS `#__jaderp`;

CREATE TABLE `#__jaderp` (
  `id` int(11) NOT NULL auto_increment,
  `greeting` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO `#__jaderp` (`greeting`) VALUES ('jaderp, World!'), ('Bonjour, Monde!'), ('Ciao, Mondo!');
