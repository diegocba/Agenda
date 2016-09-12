-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-05-2016 a las 21:29:46
-- Versión del servidor: 5.6.30
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `julianma_agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paises`
--

CREATE TABLE IF NOT EXISTS `Paises` (
  `paises_id` int(11) NOT NULL AUTO_INCREMENT,
  `paises_nombre` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`paises_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Volcado de datos para la tabla `Paises`
--

INSERT INTO `Paises` (`paises_id`, `paises_nombre`) VALUES
(1, 'Afganistán'),
(2, 'Albania'),
(3, 'Alemania'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua y Barbuda'),
(7, 'Arabia Saudita'),
(8, 'Argelia'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Azerbaiyán'),
(14, 'Bélgica'),
(15, 'Bahamas'),
(16, 'Bangladés'),
(17, 'Baréin'),
(18, 'Barbados'),
(19, 'Belice'),
(20, 'Benín'),
(21, 'Bielorrusia'),
(22, 'Birmania'),
(23, 'Bolivia'),
(24, 'Bosnia-Herzegovina'),
(25, 'Botsuana'),
(26, 'Brasil'),
(27, 'Brunéi'),
(28, 'Bulgaria'),
(29, 'Burkina Faso'),
(30, 'Burundi'),
(31, 'Bután'),
(32, 'Cabo Verde'),
(33, 'Camboya'),
(34, 'Camerún'),
(35, 'Canadá'),
(36, 'Catar'),
(37, 'Chad'),
(38, 'Chile'),
(39, 'China'),
(40, 'Chipre'),
(41, 'Colombia'),
(42, 'Comoras'),
(43, 'Congo'),
(44, 'Corea del Norte'),
(45, 'Corea del Sur'),
(46, 'Costa de Marfil'),
(47, 'Costa Rica'),
(48, 'Croacia'),
(49, 'Cuba'),
(50, 'Dinamarca'),
(51, 'Dominica'),
(52, 'Ecuador'),
(53, 'Egipto'),
(54, 'El Salvador'),
(55, 'Emiratos Árabes Unidos'),
(56, 'Eritrea'),
(57, 'Eslovaquia'),
(58, 'Eslovenia'),
(59, 'España'),
(60, 'Estados Unidos'),
(61, 'Estonia'),
(62, 'Etiopía'),
(63, 'Filipinas'),
(64, 'Finlandia'),
(65, 'Fiyi'),
(66, 'Francia'),
(67, 'Gabón'),
(68, 'Gambia'),
(69, 'Georgia'),
(70, 'Ghana'),
(71, 'Granada'),
(72, 'Grecia'),
(73, 'Guatemala'),
(74, 'Guinea'),
(75, 'Guinea-Bisáu'),
(76, 'Guinea Ecuatorial'),
(77, 'Guyana'),
(78, 'Haití'),
(79, 'Honduras'),
(80, 'Hungría'),
(81, 'India'),
(82, 'Indonesia'),
(83, 'Irán'),
(84, 'Irak'),
(85, 'Irlanda'),
(86, 'Islandia'),
(87, 'Islas Marshall'),
(88, 'Islas Salomón'),
(89, 'Israel'),
(90, 'Italia'),
(91, 'Jamaica'),
(92, 'Japón'),
(93, 'Jordania'),
(94, 'Kazajistán'),
(95, 'Kenia'),
(96, 'Kirguistán'),
(97, 'Kiribati'),
(98, 'Kosovo'),
(99, 'Kuwait'),
(100, 'Líbano'),
(101, 'Laos'),
(102, 'Lesoto'),
(103, 'Letonia'),
(104, 'Liberia'),
(105, 'Libia'),
(106, 'Liechtenstein'),
(107, 'Lituania'),
(108, 'Luxemburgo'),
(109, 'México'),
(110, 'Mónaco'),
(111, 'Macedonia'),
(112, 'Madagascar'),
(113, 'Malí'),
(114, 'Malasia'),
(115, 'Malaui'),
(116, 'Maldivas'),
(117, 'Malta'),
(118, 'Marruecos'),
(119, 'Mauricio'),
(120, 'Mauritania'),
(121, 'Micronesia'),
(122, 'Moldavia'),
(123, 'Mongolia'),
(124, 'Montenegro'),
(125, 'Mozambique'),
(126, 'Níger'),
(127, 'Namibia'),
(128, 'Nauru'),
(129, 'Nepal'),
(130, 'Nicaragua'),
(131, 'Nigeria'),
(132, 'Noruega'),
(133, 'Nueva Zelanda'),
(134, 'Omán'),
(135, 'Países Bajos'),
(136, 'Pakistán'),
(137, 'Palaos'),
(138, 'Panamá'),
(139, 'Papúa Nueva Guinea'),
(140, 'Paraguay'),
(141, 'Perú'),
(142, 'Polonia'),
(143, 'Portugal'),
(144, 'Reino Unido'),
(145, 'República Centroafricana'),
(146, 'República Checa'),
(147, 'República Democrática del Congo'),
(148, 'República Dominicana'),
(149, 'Ruanda'),
(150, 'Rumania'),
(151, 'Rusia'),
(152, 'Samoa'),
(153, 'San Cristóbal y Nieves'),
(154, 'San Marino'),
(155, 'San Vicente y las Granadinas'),
(156, 'Santa Lucía'),
(157, 'Santo Tomé y Príncipe'),
(158, 'Senegal'),
(159, 'Serbia'),
(160, 'Seychelles'),
(161, 'Sierra Leona'),
(162, 'Singapur'),
(163, 'Siria'),
(164, 'Somalia'),
(165, 'Sri Lanka'),
(166, 'Suazilandia'),
(167, 'Sudáfrica'),
(168, 'Sudán'),
(169, 'Suecia'),
(170, 'Suiza'),
(171, 'Surinam'),
(172, 'Túnez'),
(173, 'Tailandia'),
(174, 'Taiwán'),
(175, 'Tanzania'),
(176, 'Tayikistán'),
(177, 'Timor Oriental'),
(178, 'Togo'),
(179, 'Tonga'),
(180, 'Trinidad y Tobago'),
(181, 'Turkmenistán'),
(182, 'Turquía'),
(183, 'Tuvalu'),
(184, 'Ucrania'),
(185, 'Uganda'),
(186, 'Uruguay'),
(187, 'Uzbekistán'),
(188, 'Vanuatu'),
(189, 'Vaticano'),
(190, 'Venezuela'),
(191, 'Vietnam'),
(192, 'Yemen'),
(193, 'Yibuti'),
(194, 'Zambia'),
(195, 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Personas`
--

CREATE TABLE IF NOT EXISTS `Personas` (
  `personas_id` int(11) NOT NULL AUTO_INCREMENT,
  `personas_nombre` varchar(32) NOT NULL DEFAULT '',
  `personas_apellido` varchar(32) NOT NULL,
  `personas_email` varchar(64) DEFAULT NULL,
  `personas_telefono` varchar(32) DEFAULT NULL,
  `personas_observaciones` varchar(128) DEFAULT NULL,
  `personas_direcciones` varchar(32) DEFAULT NULL,
  `personas_ubicacion` varchar(64) DEFAULT NULL,
  `personas_paises_id` int(11) NOT NULL,
  PRIMARY KEY (`personas_id`),
  KEY `Personas_localidades_id` (`personas_paises_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `Personas`
--

INSERT INTO `Personas` (`personas_id`, `personas_nombre`, `personas_apellido`, `personas_email`, `personas_telefono`, `personas_observaciones`, `personas_direcciones`, `personas_ubicacion`, `personas_paises_id`) VALUES
(1, 'Julian Ignacio', 'Macagno', 'julian.macagno55@', '(3572)552389', 'Fachero, pito largo... muchas minas..', 'Rivadavia 850', 'Oncativo, Cordoba', 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
