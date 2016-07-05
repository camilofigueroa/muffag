-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2016 a las 03:19:34
-- Versión del servidor: 5.6.11
-- Versión de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_museo_fotografico`
--
CREATE DATABASE IF NOT EXISTS `bd_museo_fotografico` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_museo_fotografico`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prm_uicn`
--

CREATE TABLE IF NOT EXISTS `prm_uicn` (
  `id_uicn` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(2) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_uicn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `prm_uicn`
--

INSERT INTO `prm_uicn` (`id_uicn`, `sigla`, `descripcion`) VALUES
(1, 'EX', 'Extinto'),
(2, 'EW', 'Extinto en estado silvestre'),
(3, 'CR', 'En peligro crítico'),
(4, 'EN', 'En peligro'),
(5, 'VU', 'Vulnerable'),
(6, 'NT', 'Casi amenazado'),
(7, 'LC', 'Preocupación menor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table 5`
--

CREATE TABLE IF NOT EXISTS `table 5` (
  `COL 1` varchar(3) DEFAULT NULL,
  `COL 2` varchar(18) DEFAULT NULL,
  `COL 3` varchar(14) DEFAULT NULL,
  `COL 4` varchar(13) DEFAULT NULL,
  `COL 5` varchar(15) DEFAULT NULL,
  `COL 6` varchar(16) DEFAULT NULL,
  `COL 7` varchar(17) DEFAULT NULL,
  `COL 8` varchar(33) DEFAULT NULL,
  `COL 9` varchar(21) DEFAULT NULL,
  `COL 10` varchar(43) DEFAULT NULL,
  `COL 11` varchar(2) DEFAULT NULL,
  `COL 12` varchar(2) DEFAULT NULL,
  `COL 13` varchar(170) DEFAULT NULL,
  `COL 14` varchar(190) DEFAULT NULL,
  `COL 15` varchar(111) DEFAULT NULL,
  `COL 16` varchar(54) DEFAULT NULL,
  `COL 17` varchar(37) DEFAULT NULL,
  `COL 18` varchar(21) DEFAULT NULL,
  `COL 19` varchar(10) DEFAULT NULL,
  `COL 20` varchar(10) DEFAULT NULL,
  `COL 21` varchar(10) DEFAULT NULL,
  `COL 22` varchar(1) DEFAULT NULL,
  `COL 23` varchar(10) DEFAULT NULL,
  `COL 24` varchar(10) DEFAULT NULL,
  `COL 25` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `table 5`
--

INSERT INTO `table 5` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`) VALUES
('No.', 'Nombre com', 'Clase ', 'Orden', 'Familia', 'G', 'Especie', 'Nombre cient', 'Municipio', 'Localidad/Barrio', 'LC', 'II', 'Distribuci', 'Descripci', 'Riesgos y Amenazas Regionales', 'Uso y aprovechamiento', 'C', 'Ecosistema muestreado', '', '', '', '', '', '', ''),
('1', 'flor del guaviare ', 'vegetal ', '', 'Eriocaulaceae', 'Paepalanthus', 'formosus ', 'Paepalanthus formosus ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se distribuye unicamente en la region amazoniroquia de colombia especificamente en el departamento del guaviare  y otras en brasil  ', 'esta especie se encuentra unicamente en el departamento del guaviare especificamente en areas de preservacion de la serrania la lindosa, en condiciones de suelos arenosos y clima tropical   ', 'P', 'Ninguno', '1. Paefalanthus formosus ', '', '', '', '', '', '', '', ''),
('2', 'caucho ', 'magnoliopsida', 'euphorbiales', 'euphorbiaceae', 'hevea ', 'nitida ', 'Hecea niida ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', ' especie  endemica de la region del amazonas en el departamento del guaviare  ', 'es endemica y su habitat es afloramiento rocoso en la serrania la lindosa con vegetacion tropical con menos de 6 metros de altura su vegetacion a su alrededor ', 'deforestacion por quemas inpulsadas ', 'Ninguno', '2. Hevea nitida ', '', '', '', '', '1', '', '', ''),
('3', 'acanthella', 'magnoliopsida', 'myrtales', 'melastomataceae', 'acanthella', 'sprucei', 'Acanthella sprucei', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'especies naticas de sudamerica tambien encontrada en colombia en los tepuis de caqueta, vichada, guainia, guaviare  vaupes y amazonas ', 'solo carecen sobre  suelosrocosos o  arenosos  entre los 100 y 1900 m de altitud ', 'P', 'Ninguno', '3. Acanthella sprucei ', '', '', '', '', '1', '', '', ''),
('4', 'chelonanthus', 'magnoliopsida ', 'gentianales ', 'gentianaceae', 'chelonanthus', 'alatus', 'Chelonanthus alatus', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'en colombia en el norte del santander y region amazoniroquia. Tambien en el sur de mexico mesoamerica y sudanerica ', 'se da sobre aflormiento rocoso con hervasales denso inundables en la parte media de la serrania la lindosa ', 'P', 'ninguno', '4. Chelonanthus alatus', '', '', '', '', '', '', '', ''),
('5', 'chagualo-cucharo ', 'magnoliopsida', 'theales ', 'clusiaceae', 'clusia ', 'multiflora ', 'Clusia multiflora ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se distribuye por las monta', 'su habitat son robledades, areas abiertas y subparamos principalmente en suelos drenados debido a su necesidad respiratoria   de las raices, con humedad alta y permanente ', 'P', 'desconocido ', '5. Clusia multiflora ', '', '', '', '', '', '', '', ''),
('6', 'euforbiacea', 'magnoliopsida ', 'euphorbiales', 'euphrobiaceae', 'senefelderopsis ', 'chiribiquitensis ', 'Senefelderopsis chiribiquitensis ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se encuentra en zonas tropicales aunque tanbien esta representada en regiones templdas ', 'se encuentra en zonas tropicales ibicadas en todo el mundo exepto en las zonas polares por su facil adaptacion al cualquier medio de vida ', 'P', 'uso medicinales en algunos paises ', '6.  Senefelderopsis chiribiquitensis ', '', '', '', '', '', '', '', ''),
('7', 'orquidea estrella ', 'liliopsida ', 'asparagales ', 'orchidaceae ', 'epidendrum ', 'E. nocturnum', 'epidendrum nocturnum', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se distribuye en america tropical desde florida hasta el norte de argentina ', 'esta especie son de habitos epifitas. Se encuentran en la america tropical desde florida hasta el norte de agertina en suelos arenosos inundables ', 'P', 'desconocido ', '7. Epidendrum nocturnum', '', '', '', '', '', '', '', ''),
('8', 'el mamey', 'magnoliopsida ', 'malpighiales ', 'clusiaceae', 'mammea ', 'm. ameicana ', 'Mammea americana ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se encuentra en las islas del caribe y norte de sur de america ', 'en suelos bien drenados limitandose en climas tropicales o subtropicales. La especies se encuentran a una altura de 1000 msnm ', 'P', 'medicina tradicional, madera, frutales y ornamentales ', '8. mamea americana ', '', '', '', '', '', '', '', ''),
('9', 'clusia ', 'magnoliopsida', 'theales ', 'clusiaceae ', 'clusia ', 'tajacumicoensis ', 'clusia micoensis  ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'especie botanica originaria de centroamerica y venezuela ', 'arbusto que alcaza a medir hasta 10 metros de altura y crece tipicamente en lugares humedos de bosques semideciduos en suelos no carsicos ', 'P', 'desconocido ', '9. clusia micoensis ', '', '', '', '', '', '', '', ''),
('10', 'clusia ', 'magnoliopsida', 'thaeles ', 'clusiaceae', 'clusia ', 'obovata', 'Clusia obovata', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'especie originaria en centroamerica ', 'planta con mucha presencia de ramificacion en suelos rocosos ', 'P', 'desconocido ', '10. clusia obovata', '', '', '', '', '', '', '', ''),
('11', 'sericea ', 'magnoliopsida ', 'myrtales', 'melastomataceae', 'clidemia ', 'sirecea', 'Clidemia sirecea', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se distribuye en zonas tropicales como bucaramanga, california chinacota paramo piedemonte b', 'en suelos bien drenados len climas tropicales o subtropicales. La especies se encuentran a una altura de 1000 msnm ', 'P', 'desconocido ', '11. clidemia sirecea', '', '', '', '', '', '', '', ''),
('12', 'bromeliacea', 'liliopsida ', 'poales ', 'bromeliaceae', 'navia', 'acaulis ', 'Navia acaulis ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se encuentran distribuidas en las regiones tropicales y templadas de america y  una sola especie al oeste de africa ', 'habitan en suelos semiaridos con capacidad a adaptarse en zonas tropicales y templadas ', 'P', 'desconocido ', '12. navia acaulis ', '', '', '', '', '', '', '', ''),
('13', 'clusia ', 'magnoliopsida', 'malpighiales ', 'clusiaceae', 'clusia ', 'coriaceae', 'clusia coriacea', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se distribuye en la parte occidental de colombia especiamente en los departamentos dencauca y cundinamarca ', 'se encuentran en zonas semihumedas, tambien las encontramos en afloramiento rocos ', 'P', 'madera y medicina tradicional', '13. clusia coriacea', '', '', '', '', '', '', '', ''),
('14', 'clidemia ', 'magnoliopsida ', 'myrtales', 'melastomataceae', 'clidemia ', 'hirta', 'Clidemia hirta', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se encuentra distribuidas en america central  y del sur mexico, paraguay, y el caribe', 'es de habitat tropical, especie invasora exotica ', 'P', 'desconocido ', '14. clidemia hirta', '', '', '', '', '', '', '', ''),
('15', '', 'liliopsida ', 'arales ', 'araceae', 'philodendrum ', 'acutatum', 'philodendron acutatum', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se encuentra en zonas tropicales de america, brasil, colombia, venezuela, martinica y guayana ', 'su habita es en zonas humedas del tropico de colombia ', 'P', 'desconocido ', '15. philodendron acutatum', '', '', '', '', '', '', '', ''),
('16', '', 'liliopsida ', 'cyperales', 'cyperaceae', 'rhynchospora ', 'globosa', 'Rinchospora globosa ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'su distribucion esta en colombia especificamente en vaupes vichada, guaviare ', 'es de habitat tropical, en suelos acidos pertenecientes a zabana con presencia de rocas ', 'P', 'desconocido ', '16. rhinchospora globosa', '', '', '', '', '', '', '', ''),
('17', '', 'magnoliopsida ', 'asterales', 'asteraceae', 'ichthyothere ', 'terminalis ', 'Ichthyothere terminalis', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'en el departamento del guaviare en la serrania la lindosa, en el deparatmento de boyaca sobre los llanos aguas claras ', 'en suelos con predominio de zabana en suelos semiacidos retenedore de humedad ', 'P', 'desconocido ', '17. ichthyothere terminalis ', '', '', '', '', '', '', '', ''),
('18', 'moriche ', 'liliopsida ', 'arecales ', 'aracaceae', 'mauritia', 'flexuosa', 'Mauritia flexuosa', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'su distribucion es amplia en el centro y norte de sudamerica, ecuador, colombia, bolivia, brasil, peru, guayanas, venezuela, surinam, trinidad y tobago', 'se encuentran en zonas inundables de la amazonia y orinoquia, tambien en el piedemonte oriental andino ', 'P', 'frutales ', '18. mauritia flexuosa ', '', '', '', '', '', '', '', ''),
('19', 'burmania ', 'magnolidsida', 'dioscoreales', 'burmanianceae', 'burmannia', 'bicolor', 'Burmanniabicolor ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'pertenece a america, africa y asia ', 'en regiones tropicales calidas y templadas', 'P', 'desconocido ', '19. burmannia bicolor ', '', '', '', '', '', '', '', ''),
('20', '', 'magnoliopsida', 'lamiales', 'lamiaceae', 'hyptis ', 'dilatata', 'Hyptis dilatata ', 'San Jos', 'Centro agroambiental SENA Regional Guaviare', '', '', 'se encuentra en colonbia especificamente en le meta y guaviare ', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_imagenes`
--

CREATE TABLE IF NOT EXISTS `tb_imagenes` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(300) NOT NULL,
  `texto_adicional` varchar(300) DEFAULT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `id_organismo` int(11) NOT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `fk1_id_organismo` (`id_organismo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Volcado de datos para la tabla `tb_imagenes`
--

INSERT INTO `tb_imagenes` (`id_imagen`, `url_imagen`, `texto_adicional`, `fecha_ingreso`, `id_organismo`) VALUES
(1, 'imagenes/iguana-01.jpg', NULL, '2014-06-02 00:00:00', 1),
(2, 'imagenes/tiburon-blanco-01.gif', NULL, '2014-06-02 00:00:00', 2),
(3, 'imagenes/tiburon-tigre-01.jpg', NULL, '2014-06-02 00:00:00', 3),
(4, 'imagenes/tiburon-mako-01.JPG', NULL, '2014-06-02 00:00:00', 4),
(5, 'imagenes/Camila-Sanchez-3.jpg', 'Camila Sanchez', '2014-06-02 00:00:00', 5),
(6, 'imagenes/Jessy-Bravo-13.jpg', 'Jessy Bravo', '2014-06-02 00:00:00', 6),
(7, 'imagenes/Jessy-Bravo-7.jpg', 'Jessy Bravo', '2014-06-02 00:00:00', 7),
(8, 'imagenes/Erica-Hernandez-5.jpg', 'Erica Hernandez', '2014-06-02 00:00:00', 8),
(9, 'imagenes/Norby-Lozano-6.jpg', 'Norby Lozano', '2014-06-02 00:00:00', 9),
(10, 'imagenes/Jhonatan-Medina-16.jpg', 'Jhonatan Medina', '2014-06-02 00:00:00', 5),
(11, 'imagenes/Edwar-Beltran-9.JPG', 'Edwar Beltrán', '2014-12-01 00:00:00', 5),
(12, 'imagenes/Edwar-Beltran-chingolo-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 10),
(13, 'imagenes/Edwar-Beltran-chingolo-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 10),
(14, 'imagenes/Edwar-Beltran-chingolo-3.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 10),
(15, 'imagenes/Edwar-Beltran-chingolo-4.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 10),
(16, 'imagenes/Edwar-Beltran-chingolo-5.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 10),
(17, 'imagenes/Daniel-Melo-turpial-morichero-1.jpg', 'Daniel Melo', '2015-10-07 00:00:00', 11),
(18, 'imagenes/Daniel-Melo-turpial-morichero-2.jpg', 'Daniel Melo', '2015-10-07 00:00:00', 11),
(19, 'imagenes/Edwar-Beltran-chulo.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 12),
(20, 'imagenes/Camila-Sanchez-azulejo-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 13),
(21, 'imagenes/Camila-Sanchez-azulejo-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 13),
(22, 'imagenes/Camila-Sanchez-chimachima-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 14),
(23, 'imagenes/Camila-Sanchez-chimachima-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 14),
(24, 'imagenes/Tortolita-Camila-Sanchez.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 15),
(25, 'imagenes/Tortolita-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 15),
(26, 'imagenes/Tortolita-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 15),
(27, 'imagenes/Guardacaminos-Daniel-Melo-1.jpg', 'Daniel Melo', '2015-10-07 00:00:00', 16),
(28, 'imagenes/Guardacaminos-Daniel-Melo-2.jpg', 'Daniel Melo', '2015-10-07 00:00:00', 16),
(29, 'imagenes/Guardanegruzco-Daniel-Melo-1.jpg', 'Daniel Melo', '2015-10-07 00:00:00', 17),
(30, 'imagenes/Guardanegruzco-Daniel-Melo-2.jpg', 'Daniel Melo', '2015-10-07 00:00:00', 17),
(31, 'imagenes/Tortolitadiminuta-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 18),
(32, 'imagenes/Tortolitadiminuta-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 18),
(33, 'imagenes/Guardacaminoscomun-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 19),
(34, 'imagenes/Guardacaminoscomun-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 19),
(35, 'imagenes/Siriri-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 20),
(36, 'imagenes/Siriri-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 20),
(37, 'imagenes/Siriri-Edwar-Beltran-3.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 20),
(38, 'imagenes/Sabanero-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 21),
(39, 'imagenes/Sabanero-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 21),
(40, 'imagenes/Sabanero-Camila-Sanchez-3.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 21),
(41, 'imagenes/Aguilacoliblanca-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 22),
(42, 'imagenes/Aguilacoliblanca-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 22),
(43, 'imagenes/Aguilacoliblanca-Camila-Sanchez-3.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 22),
(44, 'imagenes/Mosqueritobuche-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 23),
(45, 'imagenes/Mosqueritobuche-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 23),
(46, 'imagenes/Mosqueritobuche-Camila-Sanchez-3.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 23),
(47, 'imagenes/Palomaperdiz-Camila Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 24),
(48, 'imagenes/Palomaperdiz-Camila Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 24),
(49, 'imagenes/Atrapamoscastropical-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 25),
(50, 'imagenes/Atrapamoscastropical-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 25),
(51, 'imagenes/Atrapamoscastropical-Camila-Sanchez-3.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 25),
(52, 'imagenes/Atrapamoscastropical-Camila-Sanchez-4.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 25),
(53, 'imagenes/Amazilia-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 26),
(54, 'imagenes/Amazilia-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 26),
(55, 'imagenes/Gallitoroca-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 27),
(56, 'imagenes/Gallitoroca-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 27),
(57, 'imagenes/Gallitoroca-Edwar-Beltran-3.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 27),
(58, 'imagenes/Gallitoroca-Edwar-Beltran-4.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 27),
(59, 'imagenes/Saltarinbarbiblanco-Camila-Sanchez-1.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 28),
(60, 'imagenes/Saltarinbarbiblanco-Camila-Sanchez-2.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 28),
(61, 'imagenes/Saltarinbarbiblanco-Camila-Sanchez-3.jpg', 'Camila Sanchez', '2015-10-07 00:00:00', 28),
(62, 'imagenes/Caminerafrblanca-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 29),
(63, 'imagenes/Caminerafrblanca-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 29),
(64, 'imagenes/Guacamayabuchiroja-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 30),
(65, 'imagenes/Guacamayabuchiroja-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 30),
(66, 'imagenes/Guacamayabuchiroja-Edwar-Beltran-3.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 30),
(67, 'imagenes/Monjita-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 31),
(68, 'imagenes/Monjita-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 31),
(69, 'imagenes/Monjita-Edwar-Beltran-3.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 31),
(70, 'imagenes/Monjita-Edwar-Beltran-4.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 31),
(71, 'imagenes/Monjita-Edwar-Beltran-5.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 31),
(72, 'imagenes/Alcaravan-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 32),
(73, 'imagenes/Alcaravan-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 32),
(74, 'imagenes/Jacamar-Edwar-Beltran-1.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 33),
(75, 'imagenes/Jacamar-Edwar-Beltran-2.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 33),
(76, 'imagenes/Jacamar-Edwar-Beltran-3.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 33),
(77, 'imagenes/Jacamar-Edwar-Beltran-4.jpg', 'Edwar Beltrán', '2015-10-07 00:00:00', 33),
(78, 'imagenes/1.Paepalanthus formosus.jpg', NULL, '2015-10-12 00:00:00', 42),
(79, 'imagenes/2.Hevea-nitida.jpg', NULL, '2015-10-12 00:00:00', 43),
(80, 'imagenes/3.Acanthella-sprucei.jpg', NULL, '2015-10-12 00:00:00', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_organismos`
--

CREATE TABLE IF NOT EXISTS `tb_organismos` (
  `id_organismo` int(11) NOT NULL AUTO_INCREMENT,
  `orden` varchar(45) NOT NULL,
  `familia` varchar(45) NOT NULL,
  `nombre_cientifico` varchar(45) NOT NULL,
  `nombre_comun` varchar(20) NOT NULL,
  `clase` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `especie` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `id_uicn` int(11) NOT NULL,
  `cites_i` varchar(2) DEFAULT ' ',
  `cites_ii` varchar(2) DEFAULT ' ',
  `cites_iii` varchar(2) DEFAULT ' ',
  `descripcion` text,
  `ecologia_y_distribucion` text,
  `riesgos_y_amenazas` varchar(200) DEFAULT NULL,
  `usos_y_aprovechamiento` varchar(500) DEFAULT NULL,
  `informacion_adicional` varchar(45) DEFAULT NULL,
  `txt_flora_o_fauna` varchar(5) DEFAULT NULL,
  `sn_publicar` varchar(1) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  PRIMARY KEY (`id_organismo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `tb_organismos`
--

INSERT INTO `tb_organismos` (`id_organismo`, `orden`, `familia`, `nombre_cientifico`, `nombre_comun`, `clase`, `genero`, `especie`, `municipio`, `localidad`, `id_uicn`, `cites_i`, `cites_ii`, `cites_iii`, `descripcion`, `ecologia_y_distribucion`, `riesgos_y_amenazas`, `usos_y_aprovechamiento`, `informacion_adicional`, `txt_flora_o_fauna`, `sn_publicar`, `fecha_creacion`) VALUES
(1, 'Squamata', 'Iguanidae', 'Iguana iguana', 'Iguana', NULL, NULL, NULL, NULL, NULL, 0, ' ', ' ', ' ', 'Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi\r\nvocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas\r\nan eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu\r\nper. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.\r\nIus id vidit volumus mandamus, vide veritus democritum te nec, ei eos debet libris consulatu. No mei ferri graeco\r\ndicunt, ad cum veri accommodare. Sed at malis omnesque delicata, usu et iusto zzril meliore. Dicunt maiorum\r\neloquentiam cum cu, sit summo dolor essent te. Ne quodsi nusquam legendos has, ea dicit voluptua eloquentiam pro,\r\nad sit quas qualisque. Eos vocibus deserunt quaestio ei.', 'Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi\r\nvocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas\r\nan eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu\r\nper. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.\r\nIus id vidit volumus mandamus, vide veritus democritum te nec, ei eos debet libris consulatu. No mei ferri graeco\r\ndicunt, ad cum veri accommodare. Sed at malis omnesque delicata, usu et iusto zzril meliore. Dicunt maiorum\r\neloquentiam cum cu, sit summo dolor essent te. Ne quodsi nusquam legendos has, ea dicit voluptua eloquentiam pro,\r\nad sit quas qualisque. Eos vocibus deserunt quaestio ei.', NULL, 'Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi\r\nvocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas\r\nan eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu\r\nper. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.\r\nIus id vidit volumus mandamus, vide veritus de', 'Blandit incorrupte quaerendum in quo, nibh im', 'fauna', 'n', '2014-06-01 00:00:00'),
(2, 'Carcharodon', 'Lamnidae', 'Carcharodon carcharias', 'Tiburón blanco', NULL, NULL, NULL, NULL, NULL, 0, ' ', ' ', ' ', 'Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi\r\nvocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas\r\nan eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu\r\nper. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.', 'Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eos debet libris consulatu. No mei ferri graeco\r\ndicunt, ad cum veri accommodare. Sed at malis omnesque delicata, usu et iusto zzril meliore. Dicunt maiorum\r\neloquentiam cum cu, sit summo dolor essent te. Ne quodsi nusquam legendos has, ea dicit voluptua eloquentiam pro,\r\nad sit quas qualisque. Eos vocibus deserunt quaestio ei.', NULL, 'Blandit incorrupte quaerendum in quo, nibh impedit id vis, vel no nullam semper audiam. Ei populo graeci consulatu\r\nmei, has ea stet modus phaedrum. Inani oblique ne has, duo et veritus detraxit. Tota ludus oratio ea mel, offendit\r\npersequeris ei vim. Eos dicat oratio partem ut, id cum ignota senserit intellegat. Sit inani ubique graecis ad, quando\r\ngraecis liberavisse et cum, dicit option eruditi at duo. Homero salutatus suscipiantur eum id, tamquam voluptaria\r\nexpetendis ad sed, nobis feugiat ', 'Eum hinc argumentum te, no sit percipit adver', 'fauna', 'n', '2014-06-01 00:00:00'),
(3, 'Carcharhiniformes', 'Carcharhinidae', 'Galeocerdo cuvier', 'Tiburón tigre', NULL, NULL, NULL, NULL, NULL, 0, ' ', ' ', ' ', 'El apelativo de "tigre" se debe a que, como el gran felino asiático, este tiburón presenta una serie de rayas oscuras transversales en el dorso y costados que tienden a difuminarse con la edad. Su piel varía del azul al verde azulado lo que supone un gran camuflaje ya que este tiburón suele cazar atacando a su presa desde abajo pasando desapercibida en la profundidad. En la zona ventral y cara es de color blanco. El morro es chato y la cabeza, bastante aplastada, presenta una forma casi rectangular, donde destaca un boca parabólica de gran tamaño que se encuentra rodeada por unos pliegues labiales muy desarrollados. Los ojos son grandes y circulares y los orificios nasales alargados y muy adelantados, dispuestos casi en posición frontal. Los dientes son grandes, afilados y muy ganchudos, provistos de bordes fuertemente aserrados, salvo en la parte interna de la punta. Esta peculiar morfología les hace perfectamente capaces de romper huesos de grandes animales y caparazones de tortugas marinas. En caso de perderse alguno de los dientes durante el ataque, otro crece para ocupar su lugar.', 'Como muchos de los grandes tiburones, la especie es ovovivípara, pudiendo nacer entre 30 y 50 crías (máxima comprobada de 82) de 60-75 centímetros por parto. El crecimiento es lento y la madurez no llega hasta los 4-6 años, cuando los machos alcanzan 2,20 metros y las hembras 2,60. El ejemplar más viejo conocido tenía 50 años.', NULL, 'La especie se encuentra principalmente en aguas tropicales y subtropicales de Oceanía y el sureste asiático, llegando por el norte a Japón y por el sur hasta Nueva Zelanda. Habita también en aguas costeras de todo el Océano Índico, el Golfo Pérsico y el Mar Rojo. En América se le encuentra en la costa del Pacífico desde el sur de California al norte de Chile (incluidas varias islas como las Revillagigedo y las Galápagos), y en el Atlántico, desde el Río de la Plata hasta Nueva Inglaterra, siendo', 'El tiburón tigre es considerado muy peligroso', 'fauna', 'n', '2014-06-02 00:00:00'),
(4, 'Lamniformes', 'Lamnidae', 'Isurus oxyrinchus', 'Tiburón mako', NULL, NULL, NULL, NULL, NULL, 0, ' ', ' ', ' ', 'El tiburón mako, marrajo común o de aleta corta (Isurus oxyrinchus) es una especie de elasmobranquio lamniforme de la familia Lamnidae.2 Tiene una distribución muy amplia: se encuentra en el Océano Pacífico, Atlántico, Índico, Mar Mediterráneo y Mar Rojo.\r\n\r\nEs un fallo muy común confundir la carne del marrajo con la del mero y el emperador (Luvarus imperialis), llegando a creer que son el mismo pescado y cotizándose su carne al mismo precio, sin embargo estas tres especies son muy diferentes en aspecto y taxonomía; el mero y el emperador son peces de la clase de los Actinopterygii (cuyo esqueleto es óseo), mientras que el marrajo pertenece a la clase de los Condrictios (de esqueleto cartilaginoso). El marrajo pertenece a la misma familia que el gran tiburón blanco (Lamnidae) pero es de inferior tamaño, y a diferencia de él, es un tiburón asociado a las profundidades, siendo extraño en aguas someras y cercanas a la costa.', 'El marrajo común es un gran tiburón con el cuerpo fusiforme, robusto, macizo y muy hidrodinámico. Su hocico es cónico y puntiagudo y la boca es grande y estrecha, en forma de U con amplios diastemas separando las hemimandíbulas. Los ojos son redondos, negros y de tamaño mediano. Aletas escapulares medianas, de extremo ligeramente redondeado. Primera dorsal mediana y de extremo ligeramente redondeado, con su origen justo por detrás de las escapulares; segunda dorsal y anal diminutas, ambas enfrentadas. Aleta caudal grande de lóbulos anchos y en forma de media luna, con el lóbulo superior ligeramente más grande que el inferior. Hendiduras branquiales grandes, 5 pares en total. Pedúnculo caudal deprimido y ensanchado por grandes quillas laterales muy largas. Los dientes son grandes,de cúspide ancha (en los adultos) y flexionada, con los bordes lisos, el tercer diente superior es diminuto e inclinado seguido de diastema. Es de color azul oscuro en el dorso, más claro en los costados y blanco puro en el vientre.', NULL, 'El marrajo es un tiburón muy activo, de fuerza descomunal y gran velocidad. Según pruebas recientes el marrajo puede llegar a alcanzar velocidades punta de más de 124 km/h lo que le otorga el puesto de animal más rápido del océano, puesto que anteriormente se atribuía al pez vela con sus 110 km/h. El secreto de tal potencia y velocidad es su perfecta hidrodinámica, su potente masa muscular, su aleta caudal en forma de media luna y el hecho de ser homeotermo, lo cual triplica su potencia muscular', 'Este tiburón es un poderoso y veloz cazador d', 'fauna', 'n', '2014-06-02 00:00:00'),
(5, 'Anura', 'Leptodactylidae', 'Leptodactylus fuscus', 'Rana', ' Amphibia', 'Leptodactylus', 'fuscus', 'San José del Guaviare ', 'Cuenca La Maria', 7, ' ', ' ', ' ', 'Áreas de afloramiento rocoso con predominio de Velluzia tubiflora, pastos naturales, pastos límpios, con vegetacion de arbustos, y/o con Moriche, cuyos suelos se destacan por ser arenosos y encharcados, aunque también se encuentran en áreas secas.\r\n', 'Argentina, Bolivia, Brasil, Colombia, Guayana Francesa, Guyana, Panamá, Paraguay, Perú, Surinam, Trinidad y Tobago y Venezuela.\r\n', 'Deforestacion, incendios forestales y contaminación\r\n', 'Ninguno \r\n', NULL, 'fauna', 's', '2014-11-14 18:35:21'),
(6, 'Anura', 'Hylidae', 'Hypsiboas cinerascens', 'Rana granosa ', ' Amphibia', 'Hypsiboas', 'cinerascens', 'San José del Guaviare ', 'Cuenca La Maria ', 7, ' ', ' ', ' ', 'Bosques de Galería asociados a cauces hídricos\r\n', 'Bolivia, Brasil, Colombia, Ecuador, Guayana Francesa, Guayana, Perú, Surinam y Venezuela.\r\n', 'Deforestacion, incendios forestales y contaminación', 'Ninguno ', NULL, 'fauna', 's', '2014-11-14 18:45:30'),
(7, 'Anura', 'Leptodactylidae', 'Leptodactylus petersii ??', 'Sapito de bosque ', ' Amphibia', 'Leptodactylus', 'petersii ??', 'San José del Guaviare ', 'Cuenca La Maria', 7, ' ', ' ', ' ', 'Bosques de Galería asociados a cauces hídricos\r\n', 'Bolivia, Brasil, Colombia, Ecuador, Guayana Francesa, Guyana, Perú, Surinam.\r\n', 'Deforestacion, incendios forestales y contaminación', 'Ninguno', NULL, 'fauna', 's', '2014-11-14 18:45:30'),
(8, 'Anura', 'Hylidae', 'Hypsiboas punctatus', 'Rana punteada', ' Amphibia', 'Hypsiboas', 'punctatus', 'San José del Guaviare ', 'Cuenca La Maria ', 7, ' ', ' ', ' ', 'Bosques de Galería asociados a cauces hídricos\r\n', 'Argentina, Bolivia, Brasil, Colombia, Ecuador, Guayana Francesa, Guayana, Paraguay, Perú, Surinam, Trinidad y Tobago y Venezuela.\r\n', 'Deforestacion, incendios forestales y contaminación\r\n', 'Ninguno \r\n', NULL, 'fauna', 's', '2014-11-14 18:53:08'),
(9, 'Anura', 'Bufonidae', 'Bufo marinus', 'Sapo común', ' Amphibia', 'Bufo', 'marinus', 'San José del Guaviare ', 'Cuenca La Maria ', 7, ' ', ' ', ' ', 'Afloramiento rocoso en forma de cuevas con suelos arenosos, con vegetación predominante de arbustos de menos de 3m\r\n', 'Se encuentra naturalmente en la mayoría los paises de America. Introducido en otros continentes\r\n', 'Deforestacion, incendios forestales y contaminación\r\n', 'Ninguno \r\n', NULL, 'fauna', 's', '2014-11-14 18:53:08'),
(10, 'Passeriformes', 'Emberizidae', 'Zonotrichia capensis sp', 'Chingolo', 'Aves', 'Zonotrichia ', 'capensis', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 7, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos', 'Habita en América de Sur, Centroamérica, Antillas, parte de Estados Unidos y parte de México.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(11, 'Passeriformes', 'Icteridae', 'Icterus chrysocephalus', 'Turpial morichero', 'Aves', 'Icterus ', 'Chrysocephalus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 7, ' ', ' ', ' ', 'Vegetación de afloramiento rocoso con predominio de Velluzia tubiflora', 'Habita en Sur America en los paises de Bolivia, Colombia, Ecuador, Guyana Francesa, Peru, Suriname,Venezuela.', 'no presenta ', 'Comercio animal vivo', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(12, 'cathartiformes ', 'Cathartidae', 'Coragyps atratus ', 'Chulo', 'Aves', 'Coragyps', 'atratus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 7, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(13, 'Passeriformes', 'Thraupidae', 'Thraupis palmarum', 'Azulejo palmero', 'Aves', 'Thraupis ', 'palmarum', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 7, ' ', ' ', ' ', 'Pastos naturales arbolados, Vegetación de pastos naturales con Moriche.', 'Cubren una mayor parte de la mitad  Norte de América del Sur. Esta gama es tan al Norte como Nicaragua, al este de la costa del Océano Atlántico de Brasil, al Sur de Paraguay, y hacia el Oeste hasta la costa del Pacífico de Ecuador y en Colombia.', 'no presenta ', 'Comercio animal vivo', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(14, 'Falconiformes', 'Falconidae', 'Milvago chimachima', 'Garrapatero', 'Aves', 'Milvago', 'chimachima', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 7, ' ', 'II', ' ', 'Vegetación de pastos limpios dominante', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(15, 'Columbiformes', 'Columbidae', 'Columbina talpacoti', 'Tortolita común', 'Aves', 'Columbina', 'talpacoti', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación asociada predominante de arbustos de menos de 3m.', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(16, 'Caprimulgiformes', 'Caprimulgidae', 'Hydropsalis cayennensis', 'Guardacaminos rastro', 'Aves', 'Hydropsalis', 'cayennensis', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(17, 'Caprimulgiformes', 'Caprimulgidae', 'Nyctipolus nigrescens', 'Guardacaminos negruz', 'Aves', 'Nyctipolus', 'nigrescens', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación de afloramiento rocoso con predominio de Velluzia tubiflora', 'Habita en varios paises Suramericanos como: Bolivia, Brazil, Colombia, Ecuador, Guayana Francesa, Guayana, Peru, Suriname y Venezuela.   ', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(18, 'Columbiformes', 'Columbidae', 'Columbina minuta', 'Tortolita diminuta', 'Aves', 'Columbina', 'minuta', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(19, 'Caprimulgiformes', 'Caprimulgidae', ' Nyctidromus albicollis', 'Guardacaminos común', 'Aves', 'Nyctidromus', 'albicollis', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(20, 'Passeriformes', 'Tyrannidae', ' Tyrannus melancholicus', 'Sirirí común', 'Aves', 'Tyrannus', 'melancholicus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación asociada predominante de arbustos de menos de 3m', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(21, 'Passeriformes', 'Emberizidae', 'Ammodramus aurifrons', 'Sabanero', 'Aves', 'Ammodramus', 'aurifrons', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación asociada predominante de arbustos de menos de 3m.', 'Habita en varios paises Suramericanos como: Bolivia, Brazil, Colombia, Ecuador, Peru, Venezuela.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(22, 'Accipitriformes', 'Accipitridae', 'Geranoaetus albicaudatus', 'Águila coliblanca', 'Aves', 'Geranoaetus', 'albicaudatus ', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'pastos naturales arbolados', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'Comercio animal vivo', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(23, 'Passeriformes', 'Tyrannidae', 'Mionectes oleagineus', 'Mosquerito de buche ', 'Aves', 'Mionectes', 'oleagineus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(24, 'Columbiformes', 'Columbidae', 'Geotrygon montana', 'Paloma perdiz roja', 'Aves', 'Geotrygon', 'montana', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(25, 'Passeriformes', 'Tyrannidae', 'Contopus cinereus', 'Atrapamoscas tropica', 'Aves', 'Contopus', 'cinereus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación asociada predominante de arbustos de menos de 3m', 'Habita en las islas Caribeñas, Mesoamerica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(26, 'Caprimulgiformes', 'Trochilidae', 'Amazilia fimbriata', 'Amazilia ventriblanc', 'Aves', 'Amazilia', 'fimbriata', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación asociada predominante de arbustos de menos de 3m', 'Habita en Sur America en los paises de Bolivia,Brazil, Colombia, Ecuador, Guayana Francesa, Guayana, Paraguay, Peru, Suriname y Venezuela.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(27, 'Passeriformes', 'Cotingidae', 'Rupicola rupicola', 'Gallito de roca', 'Aves', 'Rupicola', 'rupicola', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en Sur America en los paises de Brazil, Colombia, Guayana Francesa, Guayana, Suriname y Venezuela.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(28, 'Passeriformes', 'Pipridae', 'Manacus manacus', 'Saltarín barbiblanco', 'Aves', 'Manacus', 'manacus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(29, 'Columbiformes', 'Columbidae', 'Leptotila rufaxilla', 'Caminera frentiblanc', 'Aves', 'Leptotila', 'rufaxilla', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'pastos naturales arbolados', 'Habita en las islas Caribeñas y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(30, 'Psittaciformes', 'Psittacidae', 'Orthopsittaca manilatus', 'Guacamaya buchirroja', 'Aves', 'Orthopsittaca ', 'manilatus ', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(31, 'Piciformes', 'Bucconidae', 'Chelidoptera tenebrosa ', 'Monjita rabiblanca ', 'Aves', 'Chelidoptera', 'tenebrosa', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en Sur America en los paises de Bolivia,Brazil, Colombia, Ecuador, Guayana Francesa, Guayana, Peru, Suriname y Venezuela.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(32, 'Charadriiformes', 'Charadriidae', 'Vanellus chilensis', 'Alcaraván común', 'Aves', 'Vanellus ', 'chilensis', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Vegetación asociada predominante de arbustos de menos de 3m', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(33, 'Piciformes', 'Galbulidae', 'Brachygalba lugubris', 'Jacamar lúgubre ', 'Aves', 'Brachygalba', 'lugubris', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'pastos naturales arbolados', 'Habita en Sur America en los paises de Bolivia, Brazil, Colombia, Ecuador, Guayana Francesa, Guayana, Suriname y Venezuela.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(34, 'Passeriformes', 'Thraupidae', 'Tersina viridis', 'Azulejo golondrina', 'Aves', 'Tersina', 'viridis', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(35, 'Piciformes', 'Picidae', 'Melanerpes cruentatus', 'Carpintero cejón', 'Aves', 'Melanerpes', 'cruentatus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en Sur America en los paises de Bolivia, Brazil, Colombia, Ecuador, Guayana Francesa, Guayana, Peru, Suriname y Venezuela.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(36, 'Piciformes', 'Picidae', 'Campephilus melanoleucos', 'Carpintero marcial', 'Aves', 'Campephilus', 'melanoleucos', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(37, 'Accipitriformes', 'Accipitridae', 'Rupornis magnirostris', 'Gavilan pollero', 'Aves', 'Rupornis', 'magnirustris', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamérica, Norte America y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(38, 'Passeriformes', 'Tyrannidae', 'Legatus leucophaius', 'Atrapamoscas pirata', 'Aves', 'Legatus', 'leucophaius', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'pastos naturales arbolados', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(39, 'Charadriiformes', 'Jacanidae', 'Jacana jacana', 'Gallareta', 'Aves', 'Jacana', 'jacana', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques asociados a cauces hídricos.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'ninguno', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(40, 'Psittaciformes', 'Psittacidae', 'Pionus menstruus', 'Guereguere', 'Aves', 'Pionus', 'menstruus', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'Comercio animal vivo, alimento y ornamental', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(41, 'Psittaciformes', 'Psittacidae', 'Eupsittula pertinax', 'Perico caresucio', 'Aves', 'Eupsittula', 'pertinax', 'San José del Guaviare ', 'Parte alta Cuenca la María ', 0, ' ', ' ', ' ', 'Bosques bajos sobre afloramiento rocoso, Predominio de especies de familia Clusiacea y Euphorbiaceae.', 'Habita en las islas Caribeñas, Mesoamerica y Sur America.', 'no presenta ', 'Comercio animal vivo, ornamental', NULL, 'fauna', 's', '2015-10-03 18:24:12'),
(42, '', 'Eriocaulaceae', 'Paepalanthus formosus ', 'flor del guaviare ', 'vegetal ', 'Paepalanthus', 'formosus ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'esta especie se encuentra unicamente en el departamento del guaviare especificamente en areas de preservacion de la serrania la lindosa, en condiciones de suelos arenosos y clima tropical   ', 'se distribuye unicamente en la region amazoniroquia de colombia especificamente en el departamento del guaviare  y otras en brasil  ', 'P', 'Ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(43, 'euphorbiales', 'euphorbiaceae', 'Hecea niida ', 'caucho ', 'magnoliopsida', 'hevea ', 'nitida ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'es endemica y su habitat es afloramiento rocoso en la serrania la lindosa con vegetacion tropical con menos de 6 metros de altura su vegetacion a su alrededor ', ' especie  endemica de la region del amazonas en el departamento del guaviare  ', 'deforestacion por quemas inpulsadas ', 'Ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(44, 'myrtales', 'melastomataceae', 'Acanthella sprucei', 'acanthella', 'magnoliopsida', 'acanthella', 'sprucei', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'solo carecen sobre  suelosrocosos o  arenosos  entre los 100 y 1900 m de altitud ', 'especies naticas de sudamerica tambien encontrada en colombia en los tepuis de caqueta, vichada, guainia, guaviare  vaupes y amazonas ', 'P', 'Ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(45, 'gentianales ', 'gentianaceae', 'Chelonanthus alatus', 'chelonanthus', 'magnoliopsida ', 'chelonanthus', 'alatus', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se da sobre aflormiento rocoso con hervasales denso inundables en la parte media de la serrania la lindosa ', 'en colombia en el norte del santander y region amazoniroquia. Tambien en el sur de mexico mesoamerica y sudanerica ', 'P', 'ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(46, 'theales ', 'clusiaceae', 'Clusia multiflora ', 'chagualo-cucharo ', 'magnoliopsida', 'clusia ', 'multiflora ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'su habitat son robledades, areas abiertas y subparamos principalmente en suelos drenados debido a su necesidad respiratoria   de las raices, con humedad alta y permanente ', 'se distribuye por las monta', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(47, 'euphorbiales', 'euphrobiaceae', 'Senefelderopsis chiribiquitensis ', 'euforbiacea', 'magnoliopsida ', 'senefelderopsis ', 'chiribiquitensis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se encuentra en zonas tropicales ibicadas en todo el mundo exepto en las zonas polares por su facil adaptacion al cualquier medio de vida ', 'se encuentra en zonas tropicales aunque tanbien esta representada en regiones templdas ', 'P', 'uso medicinales en algunos paises ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(48, 'asparagales ', 'orchidaceae ', 'epidendrum nocturnum', 'orquidea estrella ', 'liliopsida ', 'epidendrum ', 'E. nocturnum', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'esta especie son de habitos epifitas. Se encuentran en la america tropical desde florida hasta el norte de agertina en suelos arenosos inundables ', 'se distribuye en america tropical desde florida hasta el norte de argentina ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(49, 'malpighiales ', 'clusiaceae', 'Mammea americana ', 'el mamey', 'magnoliopsida ', 'mammea ', 'm. ameicana ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en suelos bien drenados limitandose en climas tropicales o subtropicales. La especies se encuentran a una altura de 1000 msnm ', 'se encuentra en las islas del caribe y norte de sur de america ', 'P', 'medicina tradicional, madera, frutales y ornamentales ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(50, 'theales ', 'clusiaceae ', 'clusia micoensis  ', 'clusia ', 'magnoliopsida', 'clusia ', 'tajacumicoensis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'arbusto que alcaza a medir hasta 10 metros de altura y crece tipicamente en lugares humedos de bosques semideciduos en suelos no carsicos ', 'especie botanica originaria de centroamerica y venezuela ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(51, 'thaeles ', 'clusiaceae', 'Clusia obovata', 'clusia ', 'magnoliopsida', 'clusia ', 'obovata', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'planta con mucha presencia de ramificacion en suelos rocosos ', 'especie originaria en centroamerica ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(52, 'myrtales', 'melastomataceae', 'Clidemia sirecea', 'sericea ', 'magnoliopsida ', 'clidemia ', 'sirecea', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en suelos bien drenados len climas tropicales o subtropicales. La especies se encuentran a una altura de 1000 msnm ', 'se distribuye en zonas tropicales como bucaramanga, california chinacota paramo piedemonte b', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(53, 'poales ', 'bromeliaceae', 'Navia acaulis ', 'bromeliacea', 'liliopsida ', 'navia', 'acaulis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'habitan en suelos semiaridos con capacidad a adaptarse en zonas tropicales y templadas ', 'se encuentran distribuidas en las regiones tropicales y templadas de america y  una sola especie al oeste de africa ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(54, 'malpighiales ', 'clusiaceae', 'clusia coriacea', 'clusia ', 'magnoliopsida', 'clusia ', 'coriaceae', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se encuentran en zonas semihumedas, tambien las encontramos en afloramiento rocos ', 'se distribuye en la parte occidental de colombia especiamente en los departamentos dencauca y cundinamarca ', 'P', 'madera y medicina tradicional', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(55, 'myrtales', 'melastomataceae', 'Clidemia hirta', 'clidemia ', 'magnoliopsida ', 'clidemia ', 'hirta', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'es de habitat tropical, especie invasora exotica ', 'se encuentra distribuidas en america central  y del sur mexico, paraguay, y el caribe', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(56, 'arales ', 'araceae', 'philodendron acutatum', '', 'liliopsida ', 'philodendrum ', 'acutatum', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'su habita es en zonas humedas del tropico de colombia ', 'se encuentra en zonas tropicales de america, brasil, colombia, venezuela, martinica y guayana ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(57, 'cyperales', 'cyperaceae', 'Rinchospora globosa ', '', 'liliopsida ', 'rhynchospora ', 'globosa', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'es de habitat tropical, en suelos acidos pertenecientes a zabana con presencia de rocas ', 'su distribucion esta en colombia especificamente en vaupes vichada, guaviare ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(58, 'asterales', 'asteraceae', 'Ichthyothere terminalis', '', 'magnoliopsida ', 'ichthyothere ', 'terminalis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en suelos con predominio de zabana en suelos semiacidos retenedore de humedad ', 'en el departamento del guaviare en la serrania la lindosa, en el deparatmento de boyaca sobre los llanos aguas claras ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(59, 'arecales ', 'aracaceae', 'Mauritia flexuosa', 'moriche ', 'liliopsida ', 'mauritia', 'flexuosa', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se encuentran en zonas inundables de la amazonia y orinoquia, tambien en el piedemonte oriental andino ', 'su distribucion es amplia en el centro y norte de sudamerica, ecuador, colombia, bolivia, brasil, peru, guayanas, venezuela, surinam, trinidad y tobago', 'P', 'frutales ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(60, 'dioscoreales', 'burmanianceae', 'Burmanniabicolor ', 'burmania ', 'magnolidsida', 'burmannia', 'bicolor', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en regiones tropicales calidas y templadas', 'pertenece a america, africa y asia ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(61, 'lamiales', 'lamiaceae', 'Hyptis dilatata ', '', 'magnoliopsida', 'hyptis ', 'dilatata', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', '', 'se encuentra en colonbia especificamente en le meta y guaviare ', '', '', NULL, 'flora', 's', '2015-10-11 23:50:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_organismos`
--

CREATE TABLE IF NOT EXISTS `tmp_organismos` (
  `id_organismo` int(11) NOT NULL AUTO_INCREMENT,
  `orden` varchar(45) NOT NULL,
  `familia` varchar(45) NOT NULL,
  `nombre_cientifico` varchar(45) NOT NULL,
  `nombre_comun` varchar(20) NOT NULL,
  `clase` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `especie` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `id_uicn` int(11) NOT NULL,
  `cites_i` varchar(2) DEFAULT ' ',
  `cites_ii` varchar(2) DEFAULT ' ',
  `cites_iii` varchar(2) DEFAULT ' ',
  `descripcion` text,
  `ecologia_y_distribucion` text,
  `riesgos_y_amenazas` varchar(200) DEFAULT NULL,
  `usos_y_aprovechamiento` varchar(500) DEFAULT NULL,
  `informacion_adicional` varchar(45) DEFAULT NULL,
  `txt_flora_o_fauna` varchar(5) DEFAULT NULL,
  `sn_publicar` varchar(1) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  PRIMARY KEY (`id_organismo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `tmp_organismos`
--

INSERT INTO `tmp_organismos` (`id_organismo`, `orden`, `familia`, `nombre_cientifico`, `nombre_comun`, `clase`, `genero`, `especie`, `municipio`, `localidad`, `id_uicn`, `cites_i`, `cites_ii`, `cites_iii`, `descripcion`, `ecologia_y_distribucion`, `riesgos_y_amenazas`, `usos_y_aprovechamiento`, `informacion_adicional`, `txt_flora_o_fauna`, `sn_publicar`, `fecha_creacion`) VALUES
(1, '', 'Eriocaulaceae', 'Paepalanthus formosus ', 'flor del guaviare ', 'vegetal ', 'Paepalanthus', 'formosus ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'esta especie se encuentra unicamente en el departamento del guaviare especificamente en areas de preservacion de la serrania la lindosa, en condiciones de suelos arenosos y clima tropical   ', 'se distribuye unicamente en la region amazoniroquia de colombia especificamente en el departamento del guaviare  y otras en brasil  ', 'P', 'Ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(2, 'euphorbiales', 'euphorbiaceae', 'Hecea niida ', 'caucho ', 'magnoliopsida', 'hevea ', 'nitida ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'es endemica y su habitat es afloramiento rocoso en la serrania la lindosa con vegetacion tropical con menos de 6 metros de altura su vegetacion a su alrededor ', ' especie  endemica de la region del amazonas en el departamento del guaviare  ', 'deforestacion por quemas inpulsadas ', 'Ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(3, 'myrtales', 'melastomataceae', 'Acanthella sprucei', 'acanthella', 'magnoliopsida', 'acanthella', 'sprucei', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'solo carecen sobre  suelosrocosos o  arenosos  entre los 100 y 1900 m de altitud ', 'especies naticas de sudamerica tambien encontrada en colombia en los tepuis de caqueta, vichada, guainia, guaviare  vaupes y amazonas ', 'P', 'Ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(4, 'gentianales ', 'gentianaceae', 'Chelonanthus alatus', 'chelonanthus', 'magnoliopsida ', 'chelonanthus', 'alatus', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se da sobre aflormiento rocoso con hervasales denso inundables en la parte media de la serrania la lindosa ', 'en colombia en el norte del santander y region amazoniroquia. Tambien en el sur de mexico mesoamerica y sudanerica ', 'P', 'ninguno', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(5, 'theales ', 'clusiaceae', 'Clusia multiflora ', 'chagualo-cucharo ', 'magnoliopsida', 'clusia ', 'multiflora ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'su habitat son robledades, areas abiertas y subparamos principalmente en suelos drenados debido a su necesidad respiratoria   de las raices, con humedad alta y permanente ', 'se distribuye por las monta', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(6, 'euphorbiales', 'euphrobiaceae', 'Senefelderopsis chiribiquitensis ', 'euforbiacea', 'magnoliopsida ', 'senefelderopsis ', 'chiribiquitensis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se encuentra en zonas tropicales ibicadas en todo el mundo exepto en las zonas polares por su facil adaptacion al cualquier medio de vida ', 'se encuentra en zonas tropicales aunque tanbien esta representada en regiones templdas ', 'P', 'uso medicinales en algunos paises ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(7, 'asparagales ', 'orchidaceae ', 'epidendrum nocturnum', 'orquidea estrella ', 'liliopsida ', 'epidendrum ', 'E. nocturnum', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'esta especie son de habitos epifitas. Se encuentran en la america tropical desde florida hasta el norte de agertina en suelos arenosos inundables ', 'se distribuye en america tropical desde florida hasta el norte de argentina ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(8, 'malpighiales ', 'clusiaceae', 'Mammea americana ', 'el mamey', 'magnoliopsida ', 'mammea ', 'm. ameicana ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en suelos bien drenados limitandose en climas tropicales o subtropicales. La especies se encuentran a una altura de 1000 msnm ', 'se encuentra en las islas del caribe y norte de sur de america ', 'P', 'medicina tradicional, madera, frutales y ornamentales ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(9, 'theales ', 'clusiaceae ', 'clusia micoensis  ', 'clusia ', 'magnoliopsida', 'clusia ', 'tajacumicoensis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'arbusto que alcaza a medir hasta 10 metros de altura y crece tipicamente en lugares humedos de bosques semideciduos en suelos no carsicos ', 'especie botanica originaria de centroamerica y venezuela ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(10, 'thaeles ', 'clusiaceae', 'Clusia obovata', 'clusia ', 'magnoliopsida', 'clusia ', 'obovata', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'planta con mucha presencia de ramificacion en suelos rocosos ', 'especie originaria en centroamerica ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(11, 'myrtales', 'melastomataceae', 'Clidemia sirecea', 'sericea ', 'magnoliopsida ', 'clidemia ', 'sirecea', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en suelos bien drenados len climas tropicales o subtropicales. La especies se encuentran a una altura de 1000 msnm ', 'se distribuye en zonas tropicales como bucaramanga, california chinacota paramo piedemonte b', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(12, 'poales ', 'bromeliaceae', 'Navia acaulis ', 'bromeliacea', 'liliopsida ', 'navia', 'acaulis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'habitan en suelos semiaridos con capacidad a adaptarse en zonas tropicales y templadas ', 'se encuentran distribuidas en las regiones tropicales y templadas de america y  una sola especie al oeste de africa ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(13, 'malpighiales ', 'clusiaceae', 'clusia coriacea', 'clusia ', 'magnoliopsida', 'clusia ', 'coriaceae', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se encuentran en zonas semihumedas, tambien las encontramos en afloramiento rocos ', 'se distribuye en la parte occidental de colombia especiamente en los departamentos dencauca y cundinamarca ', 'P', 'madera y medicina tradicional', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(14, 'myrtales', 'melastomataceae', 'Clidemia hirta', 'clidemia ', 'magnoliopsida ', 'clidemia ', 'hirta', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'es de habitat tropical, especie invasora exotica ', 'se encuentra distribuidas en america central  y del sur mexico, paraguay, y el caribe', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(15, 'arales ', 'araceae', 'philodendron acutatum', '', 'liliopsida ', 'philodendrum ', 'acutatum', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'su habita es en zonas humedas del tropico de colombia ', 'se encuentra en zonas tropicales de america, brasil, colombia, venezuela, martinica y guayana ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(16, 'cyperales', 'cyperaceae', 'Rinchospora globosa ', '', 'liliopsida ', 'rhynchospora ', 'globosa', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'es de habitat tropical, en suelos acidos pertenecientes a zabana con presencia de rocas ', 'su distribucion esta en colombia especificamente en vaupes vichada, guaviare ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(17, 'asterales', 'asteraceae', 'Ichthyothere terminalis', '', 'magnoliopsida ', 'ichthyothere ', 'terminalis ', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en suelos con predominio de zabana en suelos semiacidos retenedore de humedad ', 'en el departamento del guaviare en la serrania la lindosa, en el deparatmento de boyaca sobre los llanos aguas claras ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(18, 'arecales ', 'aracaceae', 'Mauritia flexuosa', 'moriche ', 'liliopsida ', 'mauritia', 'flexuosa', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'se encuentran en zonas inundables de la amazonia y orinoquia, tambien en el piedemonte oriental andino ', 'su distribucion es amplia en el centro y norte de sudamerica, ecuador, colombia, bolivia, brasil, peru, guayanas, venezuela, surinam, trinidad y tobago', 'P', 'frutales ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(19, 'dioscoreales', 'burmanianceae', 'Burmanniabicolor ', 'burmania ', 'magnolidsida', 'burmannia', 'bicolor', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', 'en regiones tropicales calidas y templadas', 'pertenece a america, africa y asia ', 'P', 'desconocido ', NULL, 'flora', 's', '2015-10-11 23:50:42'),
(20, 'lamiales', 'lamiaceae', 'Hyptis dilatata ', '', 'magnoliopsida', 'hyptis ', 'dilatata', 'San José del Guaviare', 'Centro agroambiental SENA Regional Guaviare', 0, ' ', ' ', ' ', '', 'se encuentra en colonbia especificamente en le meta y guaviare ', '', '', NULL, 'flora', 's', '2015-10-11 23:50:42');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_imagenes`
--
ALTER TABLE `tb_imagenes`
  ADD CONSTRAINT `fk1_id_organismo` FOREIGN KEY (`id_organismo`) REFERENCES `tb_organismos` (`id_organismo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
