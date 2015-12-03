-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.27
-- Versão do PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `sistemasenai`
--
CREATE DATABASE `sistemasenai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistemasenai`;

-- --------------------------------------------------------

--
-- Criando Usuario
--

GRANT USAGE ON *.* TO 'sistemasenai'@'localhost' IDENTIFIED BY PASSWORD '*81B3B3016F4BEFBD2161E0C5C5FFDA2BEECBD895';

GRANT ALL PRIVILEGES ON `sistemasenai`.* TO 'sistemasenai'@'localhost';


--
-- Estrutura da tabela `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `idautor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`idautor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idautor`, `nome`) VALUES
(1, 'Januário'),
(2, 'Jenoveva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `email` varchar(60) NOT NULL,
  `cod` varchar(40) NOT NULL,
  `situacao` tinyint(1) NOT NULL DEFAULT '0',
  `dtCadastro` datetime NOT NULL,
  `dtAtualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `newsletter`
--

INSERT INTO `newsletter` (`email`, `cod`, `situacao`, `dtCadastro`, `dtAtualizacao`) VALUES
('jhonatancrizpereira@gmail.com', '65cb482957bedea9867b7dd38f0f6dbf580076ad', 0, '2015-12-02 19:16:09', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `idnoticia` int(11) NOT NULL AUTO_INCREMENT,
  `idautor` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumo` varchar(150) NOT NULL,
  `conteudo` text NOT NULL,
  `dtCadastro` datetime NOT NULL,
  `dtAtualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`idnoticia`),
  KEY `idautor` (`idautor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`idnoticia`, `idautor`, `titulo`, `resumo`, `conteudo`, `dtCadastro`, `dtAtualizacao`) VALUES
(1, 1, 'Notícia 1 BD', 'Resumo da Notícia 1 ... BD', '<p>Parágrafo 1 da notícia 1</p>\n                            <p>Parágrafo 2 da notícia 1</p>\n                            <p>Parágrafo 3 da notícia 1</p>\n\n                            <h3>Lorem Ipsum</h3>\n                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed tortor ac metus iaculis tristique nec a mi. Praesent fermentum a ante non fermentum. Cras lacus odio, laoreet at rutrum blandit, luctus eget sem. Curabitur malesuada erat ut justo sagittis, in iaculis sem varius. Donec gravida est non ex rhoncus molestie non eget sem. Maecenas quis molestie augue. Nullam auctor diam eget augue commodo, ac luctus nulla dictum. Maecenas congue, diam ac auctor tincidunt, ipsum erat finibus dui, eget euismod magna ipsum non ex. Aliquam elementum odio odio, ut tempus leo congue non. Vivamus tincidunt elementum urna, non sagittis erat facilisis a. Sed a arcu ut turpis consequat tincidunt et quis mauris. Nunc sed lacus augue.</p>\n\n                            <p>Phasellus eget sem ac nulla placerat pharetra. Proin a turpis pulvinar, pretium est non, gravida magna. Morbi ornare commodo faucibus. Donec consectetur dolor ut ex mollis, sed condimentum mi commodo. Ut et tempor tortor. Phasellus odio nisl, commodo eu mi et, lacinia efficitur mi. Donec efficitur, sapien vitae vestibulum varius, orci odio accumsan tortor, a suscipit quam ipsum id dui. Vestibulum ornare sapien gravida, pulvinar quam id, maximus justo. Nam sit amet ultrices dui, in gravida justo. Vestibulum maximus leo in nibh pellentesque, ut blandit eros tristique. Proin ac neque ut nunc luctus gravida. Donec dictum posuere orci, vel placerat justo suscipit viverra. Donec ac urna commodo, tempus lectus quis, porttitor ipsum. Nullam mi eros, gravida vitae mauris vitae, tincidunt tincidunt augue. Duis euismod neque in lectus iaculis, vestibulum ultrices ante malesuada. Ut posuere vel dolor sit amet finibus.</p>\n\n                            <p>Donec sit amet ex consequat, euismod magna eget, tempus velit. Mauris tincidunt eu mauris non luctus. Curabitur consequat eleifend molestie. Maecenas sollicitudin tincidunt eros, id placerat velit consectetur vel. Nam at ligula luctus neque sagittis consequat sed in odio. In et felis eu lorem dapibus elementum. Etiam nulla nisl, ullamcorper in ex in, dapibus volutpat lacus. Etiam non quam vulputate, vulputate ex in, interdum felis. Morbi tincidunt erat eget vulputate tristique. Proin nibh nibh, pharetra at posuere sed, venenatis ullamcorper enim. Suspendisse potenti.</p>\n\n                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec blandit bibendum euismod. Donec venenatis lacus eget ante ullamcorper vestibulum. Sed orci ligula, viverra vel semper id, laoreet non nunc. Donec ac nisl est. Sed venenatis nulla risus, nec dignissim dolor tristique a. Ut metus nibh, malesuada sit amet consequat ac, mollis vel lectus. Vivamus at elementum ante, laoreet lobortis tortor. Fusce tempus lacus vulputate sem euismod porttitor. Praesent pellentesque facilisis euismod.</p>\n\n                            <p>Aenean lorem justo, interdum vel nisl non, volutpat tempor purus. Curabitur tristique turpis sed cursus dictum. Praesent orci ligula, luctus ac dolor et, volutpat imperdiet odio. Donec in odio molestie, auctor tellus eu, ullamcorper sapien. Phasellus luctus ex vitae volutpat facilisis. Proin lectus nisl, sagittis at est id, suscipit ullamcorper sem. Pellentesque tempus vulputate orci. Aliquam non dictum risus. Quisque egestas vestibulum lectus id laoreet. Fusce felis tellus, vehicula quis erat eget, dictum interdum dui. Suspendisse commodo blandit gravida. </p>\n', '2015-12-02 19:41:55', NULL),
(2, 2, 'Notícia 2 BD', 'Resumo da Notícia 2 ... BD', '<p>Parágrafo 1 da notícia 2</p>\n                            <p>Parágrafo 2 da notícia 2</p>\n                            <p>Parágrafo 3 da notícia 2</p>\n\n                            <h3>Lorem Ipsum</h3>\n                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed tortor ac metus iaculis tristique nec a mi. Praesent fermentum a ante non fermentum. Cras lacus odio, laoreet at rutrum blandit, luctus eget sem. Curabitur malesuada erat ut justo sagittis, in iaculis sem varius. Donec gravida est non ex rhoncus molestie non eget sem. Maecenas quis molestie augue. Nullam auctor diam eget augue commodo, ac luctus nulla dictum. Maecenas congue, diam ac auctor tincidunt, ipsum erat finibus dui, eget euismod magna ipsum non ex. Aliquam elementum odio odio, ut tempus leo congue non. Vivamus tincidunt elementum urna, non sagittis erat facilisis a. Sed a arcu ut turpis consequat tincidunt et quis mauris. Nunc sed lacus augue.</p>\n\n                            <p>Phasellus eget sem ac nulla placerat pharetra. Proin a turpis pulvinar, pretium est non, gravida magna. Morbi ornare commodo faucibus. Donec consectetur dolor ut ex mollis, sed condimentum mi commodo. Ut et tempor tortor. Phasellus odio nisl, commodo eu mi et, lacinia efficitur mi. Donec efficitur, sapien vitae vestibulum varius, orci odio accumsan tortor, a suscipit quam ipsum id dui. Vestibulum ornare sapien gravida, pulvinar quam id, maximus justo. Nam sit amet ultrices dui, in gravida justo. Vestibulum maximus leo in nibh pellentesque, ut blandit eros tristique. Proin ac neque ut nunc luctus gravida. Donec dictum posuere orci, vel placerat justo suscipit viverra. Donec ac urna commodo, tempus lectus quis, porttitor ipsum. Nullam mi eros, gravida vitae mauris vitae, tincidunt tincidunt augue. Duis euismod neque in lectus iaculis, vestibulum ultrices ante malesuada. Ut posuere vel dolor sit amet finibus.</p>\n\n                            <p>Donec sit amet ex consequat, euismod magna eget, tempus velit. Mauris tincidunt eu mauris non luctus. Curabitur consequat eleifend molestie. Maecenas sollicitudin tincidunt eros, id placerat velit consectetur vel. Nam at ligula luctus neque sagittis consequat sed in odio. In et felis eu lorem dapibus elementum. Etiam nulla nisl, ullamcorper in ex in, dapibus volutpat lacus. Etiam non quam vulputate, vulputate ex in, interdum felis. Morbi tincidunt erat eget vulputate tristique. Proin nibh nibh, pharetra at posuere sed, venenatis ullamcorper enim. Suspendisse potenti.</p>\n\n                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec blandit bibendum euismod. Donec venenatis lacus eget ante ullamcorper vestibulum. Sed orci ligula, viverra vel semper id, laoreet non nunc. Donec ac nisl est. Sed venenatis nulla risus, nec dignissim dolor tristique a. Ut metus nibh, malesuada sit amet consequat ac, mollis vel lectus. Vivamus at elementum ante, laoreet lobortis tortor. Fusce tempus lacus vulputate sem euismod porttitor. Praesent pellentesque facilisis euismod.</p>\n\n                            <p>Aenean lorem justo, interdum vel nisl non, volutpat tempor purus. Curabitur tristique turpis sed cursus dictum. Praesent orci ligula, luctus ac dolor et, volutpat imperdiet odio. Donec in odio molestie, auctor tellus eu, ullamcorper sapien. Phasellus luctus ex vitae volutpat facilisis. Proin lectus nisl, sagittis at est id, suscipit ullamcorper sem. Pellentesque tempus vulputate orci. Aliquam non dictum risus. Quisque egestas vestibulum lectus id laoreet. Fusce felis tellus, vehicula quis erat eget, dictum interdum dui. Suspendisse commodo blandit gravida. </p>\n', '2015-12-02 19:41:55', NULL),
(3, 2, 'Notícia 3 BD', 'Resumo da Notícia 3 ... BD', '<p>Parágrafo 1 da notícia 3</p>\r\n                            <p>Parágrafo 2 da notícia 3</p>\r\n                            <p>Parágrafo 3 da notícia 3</p>\r\n\r\n                            <h3>Lorem Ipsum</h3>\r\n                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed tortor ac metus iaculis tristique nec a mi. Praesent fermentum a ante non fermentum. Cras lacus odio, laoreet at rutrum blandit, luctus eget sem. Curabitur malesuada erat ut justo sagittis, in iaculis sem varius. Donec gravida est non ex rhoncus molestie non eget sem. Maecenas quis molestie augue. Nullam auctor diam eget augue commodo, ac luctus nulla dictum. Maecenas congue, diam ac auctor tincidunt, ipsum erat finibus dui, eget euismod magna ipsum non ex. Aliquam elementum odio odio, ut tempus leo congue non. Vivamus tincidunt elementum urna, non sagittis erat facilisis a. Sed a arcu ut turpis consequat tincidunt et quis mauris. Nunc sed lacus augue.</p>\r\n\r\n                            <p>Phasellus eget sem ac nulla placerat pharetra. Proin a turpis pulvinar, pretium est non, gravida magna. Morbi ornare commodo faucibus. Donec consectetur dolor ut ex mollis, sed condimentum mi commodo. Ut et tempor tortor. Phasellus odio nisl, commodo eu mi et, lacinia efficitur mi. Donec efficitur, sapien vitae vestibulum varius, orci odio accumsan tortor, a suscipit quam ipsum id dui. Vestibulum ornare sapien gravida, pulvinar quam id, maximus justo. Nam sit amet ultrices dui, in gravida justo. Vestibulum maximus leo in nibh pellentesque, ut blandit eros tristique. Proin ac neque ut nunc luctus gravida. Donec dictum posuere orci, vel placerat justo suscipit viverra. Donec ac urna commodo, tempus lectus quis, porttitor ipsum. Nullam mi eros, gravida vitae mauris vitae, tincidunt tincidunt augue. Duis euismod neque in lectus iaculis, vestibulum ultrices ante malesuada. Ut posuere vel dolor sit amet finibus.</p>\r\n\r\n                            <p>Donec sit amet ex consequat, euismod magna eget, tempus velit. Mauris tincidunt eu mauris non luctus. Curabitur consequat eleifend molestie. Maecenas sollicitudin tincidunt eros, id placerat velit consectetur vel. Nam at ligula luctus neque sagittis consequat sed in odio. In et felis eu lorem dapibus elementum. Etiam nulla nisl, ullamcorper in ex in, dapibus volutpat lacus. Etiam non quam vulputate, vulputate ex in, interdum felis. Morbi tincidunt erat eget vulputate tristique. Proin nibh nibh, pharetra at posuere sed, venenatis ullamcorper enim. Suspendisse potenti.</p>\r\n\r\n                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec blandit bibendum euismod. Donec venenatis lacus eget ante ullamcorper vestibulum. Sed orci ligula, viverra vel semper id, laoreet non nunc. Donec ac nisl est. Sed venenatis nulla risus, nec dignissim dolor tristique a. Ut metus nibh, malesuada sit amet consequat ac, mollis vel lectus. Vivamus at elementum ante, laoreet lobortis tortor. Fusce tempus lacus vulputate sem euismod porttitor. Praesent pellentesque facilisis euismod.</p>\r\n\r\n                            <p>Aenean lorem justo, interdum vel nisl non, volutpat tempor purus. Curabitur tristique turpis sed cursus dictum. Praesent orci ligula, luctus ac dolor et, volutpat imperdiet odio. Donec in odio molestie, auctor tellus eu, ullamcorper sapien. Phasellus luctus ex vitae volutpat facilisis. Proin lectus nisl, sagittis at est id, suscipit ullamcorper sem. Pellentesque tempus vulputate orci. Aliquam non dictum risus. Quisque egestas vestibulum lectus id laoreet. Fusce felis tellus, vehicula quis erat eget, dictum interdum dui. Suspendisse commodo blandit gravida. </p>\r\n', '2015-12-02 19:43:04', NULL);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`idautor`) REFERENCES `autor` (`idautor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
