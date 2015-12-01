CREATE TABLE IF NOT EXISTS `noticias` (
  `id` INT NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `desc` text NOT NULL, 
  `corpo` text NOT NULL,
  `data` datetime NOT NULL,  
  PRIMARY KEY (`id`)
) 

ENGINE=MyISAM DEFAULT CHARSET=utf8;
