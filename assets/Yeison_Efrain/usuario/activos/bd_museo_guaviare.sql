-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2015 a las 22:08:51
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_museo_guaviare`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clase`
--

CREATE TABLE IF NOT EXISTS `tb_clase` (
  `id_clase` int(11) NOT NULL AUTO_INCREMENT,
  `nom_clase` varchar(40) NOT NULL,
  PRIMARY KEY (`id_clase`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tb_clase`
--

INSERT INTO `tb_clase` (`id_clase`, `nom_clase`) VALUES
(1, 'Mamíferos'),
(2, 'Pájaros'),
(3, 'Peces'),
(4, 'Reptiles'),
(5, 'Anfibios'),
(6, 'Artrópodos');

--
-- Disparadores `tb_clase`
--
DROP TRIGGER IF EXISTS `tgr_clase`;
DELIMITER //
CREATE TRIGGER `tgr_clase` BEFORE INSERT ON `tb_clase`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nueva clase', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_clase_1`;
DELIMITER //
CREATE TRIGGER `tgr_clase_1` BEFORE UPDATE ON `tb_clase`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_clase', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_clase_2`;
DELIMITER //
CREATE TRIGGER `tgr_clase_2` BEFORE DELETE ON `tb_clase`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino una clase', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_especie`
--

CREATE TABLE IF NOT EXISTS `tb_especie` (
  `id_especie` int(11) NOT NULL AUTO_INCREMENT,
  `nom_especie` varchar(40) NOT NULL,
  PRIMARY KEY (`id_especie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tb_especie`
--

INSERT INTO `tb_especie` (`id_especie`, `nom_especie`) VALUES
(1, 'Arácnidos'),
(2, 'Insectos'),
(3, 'Vertebrados');

--
-- Disparadores `tb_especie`
--
DROP TRIGGER IF EXISTS `tgr_especie`;
DELIMITER //
CREATE TRIGGER `tgr_especie` BEFORE INSERT ON `tb_especie`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nueva especie', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_especie_1`;
DELIMITER //
CREATE TRIGGER `tgr_especie_1` BEFORE UPDATE ON `tb_especie`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_especie', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_especie_2`;
DELIMITER //
CREATE TRIGGER `tgr_especie_2` BEFORE DELETE ON `tb_especie`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino una especie', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_familia`
--

CREATE TABLE IF NOT EXISTS `tb_familia` (
  `id_familia` int(11) NOT NULL AUTO_INCREMENT,
  `nom_familia` varchar(40) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tb_familia`
--

INSERT INTO `tb_familia` (`id_familia`, `nom_familia`) VALUES
(1, 'Esciúridos'),
(2, 'Múridos'),
(3, 'Cricétidos'),
(4, 'Felidos'),
(5, 'Cánidos'),
(6, 'Bóvidos'),
(7, 'Helícidos'),
(8, 'Lumbrícidos'),
(9, 'Isodidos'),
(10, 'Astácidos');

--
-- Disparadores `tb_familia`
--
DROP TRIGGER IF EXISTS `tgr_familia`;
DELIMITER //
CREATE TRIGGER `tgr_familia` BEFORE INSERT ON `tb_familia`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nueva familia', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_familia_1`;
DELIMITER //
CREATE TRIGGER `tgr_familia_1` BEFORE UPDATE ON `tb_familia`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_familia', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_familia_2`;
DELIMITER //
CREATE TRIGGER `tgr_familia_2` BEFORE DELETE ON `tb_familia`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino una familia', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_formato`
--

CREATE TABLE IF NOT EXISTS `tb_formato` (
  `id_formato` int(10) NOT NULL AUTO_INCREMENT,
  `tipo_de_formato` varchar(10) NOT NULL,
  `extencion` varchar(12) NOT NULL,
  PRIMARY KEY (`id_formato`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `tb_formato`
--

INSERT INTO `tb_formato` (`id_formato`, `tipo_de_formato`, `extencion`) VALUES
(1, 'audio', 'MP3'),
(2, 'audio', 'WAV'),
(3, 'imagen', 'BMP'),
(4, 'imagen', 'JPG'),
(5, 'imagen', 'GIF'),
(6, 'imagen', 'PNG'),
(7, 'imagen', 'TIF'),
(8, 'videos', 'AVI'),
(9, 'videos', 'MEPG'),
(10, 'videos', 'FLV'),
(11, 'videos', 'MP4'),
(12, 'videos', 'WMV'),
(13, 'videos', 'MOV'),
(14, 'videos', 'RM'),
(15, 'documentos', 'PDF'),
(16, 'documentos', 'TXT'),
(17, 'documentos', 'DOCX'),
(18, 'documentos', 'XLSX'),
(19, 'documentos', 'PPTX');

--
-- Disparadores `tb_formato`
--
DROP TRIGGER IF EXISTS `tgr_formato`;
DELIMITER //
CREATE TRIGGER `tgr_formato` BEFORE INSERT ON `tb_formato`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nuevo formato', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_formato_1`;
DELIMITER //
CREATE TRIGGER `tgr_formato_1` BEFORE UPDATE ON `tb_formato`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_formato', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_formato_2`;
DELIMITER //
CREATE TRIGGER `tgr_formato_2` BEFORE DELETE ON `tb_formato`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino un formato', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_genero`
--

CREATE TABLE IF NOT EXISTS `tb_genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nom_genero` varchar(40) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_genero`
--

INSERT INTO `tb_genero` (`id_genero`, `nom_genero`) VALUES
(1, 'Hembra'),
(2, 'Macho');

--
-- Disparadores `tb_genero`
--
DROP TRIGGER IF EXISTS `tgr_genero`;
DELIMITER //
CREATE TRIGGER `tgr_genero` BEFORE INSERT ON `tb_genero`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nuevo genero', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_genero_1`;
DELIMITER //
CREATE TRIGGER `tgr_genero_1` BEFORE UPDATE ON `tb_genero`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_genero', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_genero_2`;
DELIMITER //
CREATE TRIGGER `tgr_genero_2` BEFORE DELETE ON `tb_genero`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino un genero', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_localidad`
--

CREATE TABLE IF NOT EXISTS `tb_localidad` (
  `id_localidad` int(11) NOT NULL AUTO_INCREMENT,
  `nom_localidad` varchar(40) NOT NULL,
  `ID_MUNICIPIO` int(11) NOT NULL,
  PRIMARY KEY (`id_localidad`),
  KEY `id_municipio` (`ID_MUNICIPIO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tb_localidad`
--

INSERT INTO `tb_localidad` (`id_localidad`, `nom_localidad`, `ID_MUNICIPIO`) VALUES
(7, 'Unilla', 4),
(8, 'Charras', 5),
(9, 'Vuelta del alivio', 6),
(10, 'Capricho', 7);

--
-- Disparadores `tb_localidad`
--
DROP TRIGGER IF EXISTS `tgr_localidad`;
DELIMITER //
CREATE TRIGGER `tgr_localidad` BEFORE INSERT ON `tb_localidad`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nueva localida', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_localidad_1`;
DELIMITER //
CREATE TRIGGER `tgr_localidad_1` BEFORE UPDATE ON `tb_localidad`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_localida', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_localidad_2`;
DELIMITER //
CREATE TRIGGER `tgr_localidad_2` BEFORE DELETE ON `tb_localidad`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino una localida', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_log`
--

CREATE TABLE IF NOT EXISTS `tb_log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) NOT NULL,
  `f_reg` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tb_log`
--

INSERT INTO `tb_log` (`id_log`, `descripcion`, `f_reg`) VALUES
(1, 'se actualizo la tb_organismos', '2015-10-23 14:41:45'),
(2, 'se inserto una nueva multimedia', '2015-10-23 14:45:02'),
(3, 'se elimino una multimedia', '2015-10-23 14:45:45'),
(4, 'se inserto una nueva multimedia', '2015-10-23 14:45:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_multimedia`
--

CREATE TABLE IF NOT EXISTS `tb_multimedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_organismo` int(11) NOT NULL,
  `url_multimedia` varchar(30) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `id_formato` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_de_formato` (`id_formato`),
  KEY `id_organismo` (`id_organismo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_multimedia`
--

INSERT INTO `tb_multimedia` (`id`, `id_organismo`, `url_multimedia`, `autor`, `id_formato`) VALUES
(2, 2, 'imagenes/Camila-Sanchez-3.jpg', 'fwerfwerf', 4);

--
-- Disparadores `tb_multimedia`
--
DROP TRIGGER IF EXISTS `tgr_multimedia`;
DELIMITER //
CREATE TRIGGER `tgr_multimedia` BEFORE INSERT ON `tb_multimedia`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto una nueva multimedia', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_multimedia_1`;
DELIMITER //
CREATE TRIGGER `tgr_multimedia_1` BEFORE UPDATE ON `tb_multimedia`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo la tb_multimedia', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_multimedia_2`;
DELIMITER //
CREATE TRIGGER `tgr_multimedia_2` BEFORE DELETE ON `tb_multimedia`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se elimino una multimedia', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_municipio`
--

CREATE TABLE IF NOT EXISTS `tb_municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nom_municipio` varchar(40) NOT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tb_municipio`
--

INSERT INTO `tb_municipio` (`id_municipio`, `nom_municipio`) VALUES
(4, 'Calamar'),
(5, 'Miraflores'),
(6, 'Retorno'),
(7, 'San José');

--
-- Disparadores `tb_municipio`
--
DROP TRIGGER IF EXISTS `tgr_municipio`;
DELIMITER //
CREATE TRIGGER `tgr_municipio` BEFORE INSERT ON `tb_municipio`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se inserto un municipio', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_municipio_1`;
DELIMITER //
CREATE TRIGGER `tgr_municipio_1` BEFORE UPDATE ON `tb_municipio`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se actualizo la tb_municipio', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_municipio_2`;
DELIMITER //
CREATE TRIGGER `tgr_municipio_2` BEFORE DELETE ON `tb_municipio`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se elimino un municipio', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_orden`
--

CREATE TABLE IF NOT EXISTS `tb_orden` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `nom_orden` varchar(40) NOT NULL,
  PRIMARY KEY (`id_orden`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tb_orden`
--

INSERT INTO `tb_orden` (`id_orden`, `nom_orden`) VALUES
(1, 'Roedores'),
(2, 'Carnívoros'),
(3, 'Insectívoros'),
(4, 'Ungulados'),
(5, 'Strigiformes'),
(6, 'Ciconiiformes'),
(7, 'Quelonios'),
(8, 'Lepidópteros');

--
-- Disparadores `tb_orden`
--
DROP TRIGGER IF EXISTS `tgr_orden`;
DELIMITER //
CREATE TRIGGER `tgr_orden` BEFORE INSERT ON `tb_orden`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se inserto un orden', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_orden_1`;
DELIMITER //
CREATE TRIGGER `tgr_orden_1` BEFORE UPDATE ON `tb_orden`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se actualizo la tb_orden', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_orden_2`;
DELIMITER //
CREATE TRIGGER `tgr_orden_2` BEFORE DELETE ON `tb_orden`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se elimino un orden', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_organismos`
--

CREATE TABLE IF NOT EXISTS `tb_organismos` (
  `id_organismo` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cientifico` varchar(40) NOT NULL,
  `nom_comun` varchar(40) NOT NULL,
  `id_orden` int(11) NOT NULL,
  `id_familia` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `ecologia_y_distribucion` varchar(100) NOT NULL,
  `riesgos_y_amenazas` varchar(40) NOT NULL,
  `informacion_adicional` varchar(300) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `usos_y_aprovechamiento` varchar(100) NOT NULL,
  `sn_publicar` varchar(1) NOT NULL,
  PRIMARY KEY (`id_organismo`),
  KEY `id_orden` (`id_orden`),
  KEY `id_familia` (`id_familia`),
  KEY `id_clase` (`id_clase`),
  KEY `id_genero` (`id_genero`),
  KEY `id_especie` (`id_especie`),
  KEY `id_municipio` (`id_localidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_organismos`
--

INSERT INTO `tb_organismos` (`id_organismo`, `nom_cientifico`, `nom_comun`, `id_orden`, `id_familia`, `id_clase`, `id_genero`, `id_especie`, `id_localidad`, `descripcion`, `ecologia_y_distribucion`, `riesgos_y_amenazas`, `informacion_adicional`, `fecha_creacion`, `usos_y_aprovechamiento`, `sn_publicar`) VALUES
(2, 'Panthera tigris', 'Tigre', 2, 5, 1, 2, 3, 7, 'Animales con cuerpo integrado por lados simétricos', 'Cuerpo con simetría bilateral con respecto al plano sagital.', 'Cuerpo con simetría bilateral ', 'Vertebrados con mandíbulas.', '2015-10-22 04:13:54', 'Al Tigre (Panthera tigris) se le reconocen ocho subespecies', 's');

--
-- Disparadores `tb_organismos`
--
DROP TRIGGER IF EXISTS `tgr_organismos`;
DELIMITER //
CREATE TRIGGER `tgr_organismos` BEFORE INSERT ON `tb_organismos`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se inserto un organismos', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_organismos_1`;
DELIMITER //
CREATE TRIGGER `tgr_organismos_1` BEFORE UPDATE ON `tb_organismos`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg ) 
VALUES( null, 'se actualizo la tb_organismos', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_organismos_2`;
DELIMITER //
CREATE TRIGGER `tgr_organismos_2` BEFORE DELETE ON `tb_organismos`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )  
VALUES( null, 'se elimino un organismo', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tip_usu`
--

CREATE TABLE IF NOT EXISTS `tb_tip_usu` (
  `id_usuario` int(2) NOT NULL AUTO_INCREMENT,
  `tipo_de_usuario` varchar(12) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Disparadores `tb_tip_usu`
--
DROP TRIGGER IF EXISTS `tgr_tip_usu`;
DELIMITER //
CREATE TRIGGER `tgr_tip_usu` BEFORE INSERT ON `tb_tip_usu`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )  
VALUES( null, 'se inserto un nuevo tipo de usuario', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_tip_usu_1`;
DELIMITER //
CREATE TRIGGER `tgr_tip_usu_1` BEFORE UPDATE ON `tb_tip_usu`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )  
VALUES( null, 'se actualizo la tb_tip_usu', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_tip_usu_2`;
DELIMITER //
CREATE TRIGGER `tgr_tip_usu_2` BEFORE DELETE ON `tb_tip_usu`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )  
VALUES( null, 'se elimino un tipo de usuario', NOW() )
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `n_doc` int(12) NOT NULL AUTO_INCREMENT,
  `nom_apell` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `tipo_usuario` int(2) NOT NULL,
  PRIMARY KEY (`n_doc`),
  KEY `tipo_usuario` (`tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Disparadores `tb_usuarios`
--
DROP TRIGGER IF EXISTS `tgr_usuarios`;
DELIMITER //
CREATE TRIGGER `tgr_usuarios` BEFORE UPDATE ON `tb_usuarios`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se actualizo un usuario', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_usuarios_1`;
DELIMITER //
CREATE TRIGGER `tgr_usuarios_1` BEFORE INSERT ON `tb_usuarios`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se inserto un nuevo usuario', NOW() )
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_usuarios_2`;
DELIMITER //
CREATE TRIGGER `tgr_usuarios_2` BEFORE DELETE ON `tb_usuarios`
 FOR EACH ROW INSERT INTO tb_log ( id_log, descripcion, f_reg )
VALUES( null, 'se a eliminado un usuario', NOW() )
//
DELIMITER ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_localidad`
--
ALTER TABLE `tb_localidad`
  ADD CONSTRAINT `tb_localidad_ibfk_3` FOREIGN KEY (`ID_MUNICIPIO`) REFERENCES `tb_municipio` (`id_municipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_multimedia`
--
ALTER TABLE `tb_multimedia`
  ADD CONSTRAINT `tb_multimedia_ibfk_2` FOREIGN KEY (`id_organismo`) REFERENCES `tb_organismos` (`id_organismo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_multimedia_ibfk_3` FOREIGN KEY (`id_formato`) REFERENCES `tb_formato` (`id_formato`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_organismos`
--
ALTER TABLE `tb_organismos`
  ADD CONSTRAINT `tb_organismos_ibfk_1` FOREIGN KEY (`id_orden`) REFERENCES `tb_orden` (`id_orden`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_organismos_ibfk_2` FOREIGN KEY (`id_familia`) REFERENCES `tb_familia` (`id_familia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_organismos_ibfk_3` FOREIGN KEY (`id_clase`) REFERENCES `tb_clase` (`id_clase`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_organismos_ibfk_4` FOREIGN KEY (`id_genero`) REFERENCES `tb_genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_organismos_ibfk_5` FOREIGN KEY (`id_especie`) REFERENCES `tb_especie` (`id_especie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_organismos_ibfk_6` FOREIGN KEY (`id_localidad`) REFERENCES `tb_localidad` (`id_localidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_tip_usu`
--
ALTER TABLE `tb_tip_usu`
  ADD CONSTRAINT `tb_tip_usu_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
