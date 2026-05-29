-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2026 a las 20:20:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `meteopet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(100) NOT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `pais` varchar(100) NOT NULL DEFAULT 'España',
  `latitud` decimal(9,6) DEFAULT NULL,
  `longitud` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre_ciudad`, `provincia`, `pais`, `latitud`, `longitud`) VALUES
(1, 'Hornachos', 'Badajoz', 'España', 38.558000, -6.064600),
(2, 'Zafra', 'Badajoz', 'España', 38.422600, -6.417500),
(3, 'Villafranca de los Barros', 'Badajoz', 'España', 38.733300, -6.350000),
(4, 'Badajoz', 'Badajoz', 'España', 38.916700, -6.983300),
(5, 'Mérida', 'Badajoz', 'España', 38.918600, -6.333300),
(6, 'Sevilla', 'Sevilla', 'España', 37.383300, -5.983300),
(7, 'Madrid', 'Madrid', 'España', 40.416800, -3.703500),
(8, 'Barcelona', 'Barcelona', 'España', 41.383300, 2.183300),
(9, 'Valencia', 'Valencia', 'España', 39.466700, -0.375000),
(10, 'Málaga', 'Málaga', 'España', 36.716700, -4.416700),
(11, 'Almería', 'Almería', 'España', 36.834047, -2.463713),
(12, 'Cádiz', 'Cádiz', 'España', 36.529480, -6.292730),
(13, 'Córdoba', 'Córdoba', 'España', 37.888175, -4.779383),
(14, 'Granada', 'Granada', 'España', 37.176487, -3.597929),
(15, 'Huelva', 'Huelva', 'España', 37.261421, -6.944722),
(16, 'Jaén', 'Jaén', 'España', 37.779434, -3.784938),
(17, 'Jerez de la Frontera', 'Cádiz', 'España', 36.686516, -6.136260),
(18, 'Marbella', 'Málaga', 'España', 36.510700, -4.882300),
(19, 'Algeciras', 'Cádiz', 'España', 36.130200, -5.454600),
(20, 'Huesca', 'Huesca', 'España', 42.136393, -0.408490),
(21, 'Teruel', 'Teruel', 'España', 40.345724, -1.106483),
(22, 'Zaragoza', 'Zaragoza', 'España', 41.650818, -0.887938),
(23, 'Oviedo', 'Asturias', 'España', 43.362343, -5.849490),
(24, 'Gijón', 'Asturias', 'España', 43.545300, -5.661900),
(25, 'Palma', 'Islas Baleares', 'España', 39.569600, 2.650160),
(26, 'Ibiza', 'Islas Baleares', 'España', 38.908700, 1.432100),
(27, 'Las Palmas de Gran Canaria', 'Las Palmas', 'España', 28.124302, -15.436010),
(28, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 'España', 28.463630, -16.251820),
(29, 'La Laguna', 'Santa Cruz de Tenerife', 'España', 28.485700, -16.318900),
(30, 'Santander', 'Cantabria', 'España', 43.462306, -3.809980),
(31, 'Albacete', 'Albacete', 'España', 38.994349, -1.858540),
(32, 'Ciudad Real', 'Ciudad Real', 'España', 38.986719, -3.927377),
(33, 'Cuenca', 'Cuenca', 'España', 40.070400, -2.137600),
(34, 'Guadalajara', 'Guadalajara', 'España', 40.633300, -3.166700),
(35, 'Toledo', 'Toledo', 'España', 39.862830, -4.027360),
(36, 'Ávila', 'Ávila', 'España', 40.656600, -4.700000),
(37, 'Burgos', 'Burgos', 'España', 42.343992, -3.696906),
(38, 'León', 'León', 'España', 42.598730, -5.567320),
(39, 'Palencia', 'Palencia', 'España', 42.009800, -4.528200),
(40, 'Salamanca', 'Salamanca', 'España', 40.970100, -5.663500),
(41, 'Segovia', 'Segovia', 'España', 40.948000, -4.118900),
(42, 'Soria', 'Soria', 'España', 41.766900, -2.464600),
(43, 'Valladolid', 'Valladolid', 'España', 41.652300, -4.724500),
(44, 'Zamora', 'Zamora', 'España', 41.503400, -5.744800),
(45, 'Girona', 'Girona', 'España', 41.981400, 2.821400),
(46, 'Lleida', 'Lleida', 'España', 41.617900, 0.620100),
(47, 'Tarragona', 'Tarragona', 'España', 41.119000, 1.244900),
(48, 'Badalona', 'Barcelona', 'España', 41.450200, 2.247100),
(49, 'Hospitalet de Llobregat', 'Barcelona', 'España', 41.359700, 2.099800),
(50, 'Terrassa', 'Barcelona', 'España', 41.563500, 2.009800),
(51, 'Sabadell', 'Barcelona', 'España', 41.543500, 2.109600),
(52, 'Cáceres', 'Cáceres', 'España', 39.476200, -6.372600),
(53, 'Plasencia', 'Cáceres', 'España', 39.863500, -6.089900),
(54, 'A Coruña', 'A Coruña', 'España', 43.370000, -8.395800),
(55, 'Lugo', 'Lugo', 'España', 43.012000, -7.555900),
(56, 'Ourense', 'Ourense', 'España', 42.336300, -7.863600),
(57, 'Pontevedra', 'Pontevedra', 'España', 42.433600, -8.648400),
(58, 'Vigo', 'Pontevedra', 'España', 42.231900, -8.712400),
(59, 'Santiago de Compostela', 'A Coruña', 'España', 42.878500, -8.544400),
(60, 'Logroño', 'La Rioja', 'España', 42.466500, -2.449900),
(61, 'Alcalá de Henares', 'Madrid', 'España', 40.481700, -3.364200),
(62, 'Alcorcón', 'Madrid', 'España', 40.344700, -3.824500),
(63, 'Getafe', 'Madrid', 'España', 40.305700, -3.732800),
(64, 'Leganés', 'Madrid', 'España', 40.328200, -3.764400),
(65, 'Móstoles', 'Madrid', 'España', 40.322600, -3.864700),
(66, 'Fuenlabrada', 'Madrid', 'España', 40.283900, -3.799000),
(67, 'Murcia', 'Murcia', 'España', 37.983800, -1.129600),
(68, 'Cartagena', 'Murcia', 'España', 37.605500, -0.986100),
(69, 'Pamplona', 'Navarra', 'España', 42.812500, -1.645400),
(70, 'Vitoria-Gasteiz', 'Álava', 'España', 42.846700, -2.672800),
(71, 'Bilbao', 'Vizcaya', 'España', 43.263000, -2.935000),
(72, 'San Sebastián', 'Guipúzcoa', 'España', 43.318300, -1.981200),
(73, 'Alicante', 'Alicante', 'España', 38.345200, -0.481200),
(74, 'Castellón de la Plana', 'Castellón', 'España', 39.986400, -0.051100),
(75, 'Elche', 'Alicante', 'España', 38.262000, -0.701600),
(76, 'Ceuta', 'Ceuta', 'España', 35.889300, -5.321400),
(77, 'Melilla', 'Melilla', 'España', 35.292300, -2.938100),
(78, 'Don Benito', 'Badajoz', 'España', 38.953800, -5.861600),
(79, 'Almendralejo', 'Badajoz', 'España', 38.683900, -6.404200),
(80, 'Olivenza', 'Badajoz', 'España', 38.683600, -7.103800),
(81, 'Jerez de los Caballeros', 'Badajoz', 'España', 38.325800, -6.772200),
(82, 'Azuaga', 'Badajoz', 'España', 38.259400, -5.671700),
(83, 'Guareña', 'Badajoz', 'España', 38.858900, -6.090500),
(84, 'Montijo', 'Badajoz', 'España', 38.910200, -6.614900),
(85, 'Llerena', 'Badajoz', 'España', 38.238200, -6.022900),
(86, 'Trujillo', 'Cáceres', 'España', 39.461100, -5.881400),
(87, 'Navalmoral de la Mata', 'Cáceres', 'España', 39.892300, -5.532700),
(88, 'Jarandilla de la Vera', 'Cáceres', 'España', 40.133600, -5.655700),
(89, 'Hervás', 'Cáceres', 'España', 40.269800, -5.869100),
(90, 'Alcántara', 'Cáceres', 'España', 39.728300, -6.882900),
(91, 'Guadalupe', 'Cáceres', 'España', 39.454200, -5.329800),
(92, 'Valencia de Alcántara', 'Cáceres', 'España', 39.414100, -7.244900),
(93, 'Coria', 'Cáceres', 'España', 39.980800, -6.533600),
(94, 'Miajadas', 'Cáceres', 'España', 39.153500, -5.899600),
(95, 'Tudela', 'Navarra', 'España', 42.059500, -1.605800),
(96, 'Estella', 'Navarra', 'España', 42.671900, -2.031600),
(97, 'Tafalla', 'Navarra', 'España', 42.527700, -1.676200),
(98, 'Roncesvalles', 'Navarra', 'España', 43.009400, -1.319700),
(99, 'Sangüesa', 'Navarra', 'España', 42.570300, -1.282500),
(100, 'Torrelavega', 'Cantabria', 'España', 43.352300, -4.049800),
(101, 'Potes', 'Cantabria', 'España', 43.152500, -4.621300),
(102, 'Castro Urdiales', 'Cantabria', 'España', 43.380600, -3.217300),
(103, 'Laredo', 'Cantabria', 'España', 43.392200, -3.416900),
(104, 'Reinosa', 'Cantabria', 'España', 42.999700, -4.136900),
(105, 'San Vicente de la Barquera', 'Cantabria', 'España', 43.384200, -4.396600),
(106, 'Avilés', 'Asturias', 'España', 43.554900, -5.924600),
(107, 'Potes', 'Asturias', 'España', 43.152500, -4.621300),
(108, 'Cangas de Onís', 'Asturias', 'España', 43.350700, -5.129700),
(109, 'Llanes', 'Asturias', 'España', 43.421600, -4.755000),
(110, 'Luarca', 'Asturias', 'España', 43.543600, -6.532400),
(111, 'Ribadesella', 'Asturias', 'España', 43.461700, -5.060100),
(112, 'Cudillero', 'Asturias', 'España', 43.560600, -6.143800),
(113, 'Jaca', 'Huesca', 'España', 42.568900, -0.549000),
(114, 'Benasque', 'Huesca', 'España', 42.600600, 0.521500),
(115, 'Ainsa', 'Huesca', 'España', 42.418200, 0.136900),
(116, 'Hecho', 'Huesca', 'España', 42.723800, -0.745200),
(117, 'Biescas', 'Huesca', 'España', 42.630500, -0.324200),
(118, 'Calatayud', 'Zaragoza', 'España', 41.353900, -1.643500),
(119, 'Ejea de los Caballeros', 'Zaragoza', 'España', 42.127000, -1.137400),
(120, 'Tarazona', 'Zaragoza', 'España', 41.904200, -1.727300),
(121, 'Caspe', 'Zaragoza', 'España', 41.234200, -0.039700),
(122, 'Alcañiz', 'Teruel', 'España', 41.050500, -0.133900),
(123, 'Mora de Rubielos', 'Teruel', 'España', 40.254400, -0.749300),
(124, 'Albarracín', 'Teruel', 'España', 40.411200, -1.441600),
(125, 'Montalbán', 'Teruel', 'España', 40.829500, -0.794200),
(126, 'Roquetas de Mar', 'Almería', 'España', 36.764300, -2.614600),
(127, 'El Ejido', 'Almería', 'España', 36.776700, -2.815100),
(128, 'Vera', 'Almería', 'España', 37.247400, -1.864500),
(129, 'Sanlúcar de Barrameda', 'Cádiz', 'España', 36.778300, -6.353600),
(130, 'Rota', 'Cádiz', 'España', 36.616200, -6.359500),
(131, 'Tarifa', 'Cádiz', 'España', 36.013900, -5.601400),
(132, 'Lucena', 'Córdoba', 'España', 37.408700, -4.485500),
(133, 'Montilla', 'Córdoba', 'España', 37.586100, -4.637700),
(134, 'Pozoblanco', 'Córdoba', 'España', 38.378200, -4.849500),
(135, 'Motril', 'Granada', 'España', 36.745000, -3.518900),
(136, 'Guadix', 'Granada', 'España', 37.298700, -3.132600),
(137, 'Baza', 'Granada', 'España', 37.494600, -2.765400),
(138, 'Lepe', 'Huelva', 'España', 37.255400, -7.203800),
(139, 'Isla Cristina', 'Huelva', 'España', 37.199500, -7.321600),
(140, 'Ayamonte', 'Huelva', 'España', 37.214200, -7.400400),
(141, 'Linares', 'Jaén', 'España', 38.093000, -3.636800),
(142, 'Úbeda', 'Jaén', 'España', 38.012800, -3.370400),
(143, 'Baeza', 'Jaén', 'España', 37.994400, -3.470600),
(144, 'Ronda', 'Málaga', 'España', 36.746200, -5.161600),
(145, 'Antequera', 'Málaga', 'España', 37.020500, -4.561200),
(146, 'Vélez-Málaga', 'Málaga', 'España', 36.781100, -4.099700),
(147, 'Dos Hermanas', 'Sevilla', 'España', 37.283900, -5.921700),
(148, 'Écija', 'Sevilla', 'España', 37.540800, -5.082500),
(149, 'Carmona', 'Sevilla', 'España', 37.471500, -5.644800),
(150, 'Cercedilla', 'Madrid', 'España', 40.740100, -4.050800),
(151, 'Navacerrada', 'Madrid', 'España', 40.779500, -4.009600),
(152, 'El Escorial', 'Madrid', 'España', 40.578800, -4.134600),
(153, 'Rascafría', 'Madrid', 'España', 40.896900, -3.919700),
(154, 'Manzanares el Real', 'Madrid', 'España', 40.723100, -3.860000),
(155, 'Buitrago del Lozoya', 'Madrid', 'España', 41.000800, -3.637400),
(156, 'Somosierra', 'Madrid', 'España', 41.145000, -3.589700),
(157, 'Benidorm', 'Alicante', 'España', 38.540800, -0.131600),
(158, 'Torrevieja', 'Alicante', 'España', 37.978200, -0.687000),
(159, 'Alcoy', 'Alicante', 'España', 38.698900, -0.473800),
(160, 'Orihuela', 'Alicante', 'España', 38.084700, -0.944200),
(161, 'Villena', 'Alicante', 'España', 38.634400, -0.865300),
(162, 'Vinaròs', 'Castellón', 'España', 40.469400, 0.474400),
(163, 'Benicàssim', 'Castellón', 'España', 40.054600, 0.063700),
(164, 'Morella', 'Castellón', 'España', 40.614300, -0.094300),
(165, 'Segorbe', 'Castellón', 'España', 39.851900, -0.490200),
(166, 'Gandia', 'Valencia', 'España', 38.967300, -0.183100),
(167, 'Sagunto', 'Valencia', 'España', 39.681300, -0.272900),
(168, 'Xàtiva', 'Valencia', 'España', 38.990000, -0.519400),
(169, 'Requena', 'Valencia', 'España', 39.488600, -1.100200),
(170, 'Cullera', 'Valencia', 'España', 39.163200, -0.253600),
(171, 'Calahorra', 'La Rioja', 'España', 42.303200, -1.964700),
(172, 'Arnedo', 'La Rioja', 'España', 42.220600, -2.101300),
(173, 'Haro', 'La Rioja', 'España', 42.578600, -2.848800),
(174, 'Nájera', 'La Rioja', 'España', 42.416700, -2.733300),
(175, 'Santo Domingo de la Calzada', 'La Rioja', 'España', 42.438900, -2.951400),
(176, 'Ezcaray', 'La Rioja', 'España', 42.318600, -3.016700),
(177, 'Arenas de San Pedro', 'Ávila', 'España', 40.211800, -5.085500),
(178, 'El Barco de Ávila', 'Ávila', 'España', 40.352900, -5.523800),
(179, 'Piedrahíta', 'Ávila', 'España', 40.460200, -5.319400),
(180, 'Miranda de Ebro', 'Burgos', 'España', 42.686700, -2.944400),
(181, 'Aranda de Duero', 'Burgos', 'España', 41.669600, -3.689800),
(182, 'Lerma', 'Burgos', 'España', 42.029700, -3.759800),
(183, 'Briviesca', 'Burgos', 'España', 42.542800, -3.316700),
(184, 'Ponferrada', 'León', 'España', 42.546000, -6.598500),
(185, 'Astorga', 'León', 'España', 42.458900, -6.055800),
(186, 'La Bañeza', 'León', 'España', 42.299200, -5.904200),
(187, 'Sahagún', 'León', 'España', 42.371200, -5.028800),
(188, 'Aguilar de Campoo', 'Palencia', 'España', 42.791600, -4.259700),
(189, 'Guardo', 'Palencia', 'España', 42.785400, -4.832600),
(190, 'Cervera de Pisuerga', 'Palencia', 'España', 42.869600, -4.500500),
(191, 'Béjar', 'Salamanca', 'España', 40.387800, -5.762800),
(192, 'Ciudad Rodrigo', 'Salamanca', 'España', 40.598100, -6.533300),
(193, 'Peñaranda de Bracamonte', 'Salamanca', 'España', 41.104500, -5.197200),
(194, 'El Espinar', 'Segovia', 'España', 40.722500, -4.247800),
(195, 'Cuéllar', 'Segovia', 'España', 41.402200, -4.318100),
(196, 'Sepúlveda', 'Segovia', 'España', 41.301900, -3.744400),
(197, 'El Burgo de Osma', 'Soria', 'España', 41.588900, -3.069800),
(198, 'Ágreda', 'Soria', 'España', 41.866100, -1.914500),
(199, 'Almazán', 'Soria', 'España', 41.490500, -2.525400),
(200, 'Medina del Campo', 'Valladolid', 'España', 41.305000, -4.909400),
(201, 'Peñafiel', 'Valladolid', 'España', 41.599400, -4.113700),
(202, 'Tordesillas', 'Valladolid', 'España', 41.500600, -5.004400),
(203, 'Benavente', 'Zamora', 'España', 42.001400, -5.678500),
(204, 'Toro', 'Zamora', 'España', 41.522200, -5.395800),
(205, 'Puebla de Sanabria', 'Zamora', 'España', 42.059100, -6.638300),
(206, 'Hellín', 'Albacete', 'España', 38.516700, -1.700000),
(207, 'Almansa', 'Albacete', 'España', 38.869400, -1.092200),
(208, 'Villarrobledo', 'Albacete', 'España', 39.267200, -2.603300),
(209, 'Puertollano', 'Ciudad Real', 'España', 38.686400, -4.107800),
(210, 'Valdepeñas', 'Ciudad Real', 'España', 38.762500, -3.384500),
(211, 'Alcázar de San Juan', 'Ciudad Real', 'España', 39.394400, -3.209700),
(212, 'Manzanares', 'Ciudad Real', 'España', 38.999200, -3.374400),
(213, 'Tarancón', 'Cuenca', 'España', 40.012200, -3.007200),
(214, 'San Clemente', 'Cuenca', 'España', 39.401100, -2.425500),
(215, 'Motilla del Palancar', 'Cuenca', 'España', 39.561900, -1.888600),
(216, 'Azuqueca de Henares', 'Guadalajara', 'España', 40.561900, -3.268900),
(217, 'Sigüenza', 'Guadalajara', 'España', 41.067800, -2.638900),
(218, 'Molina de Aragón', 'Guadalajara', 'España', 40.845100, -1.888300),
(219, 'Talavera de la Reina', 'Toledo', 'España', 39.961700, -4.831200),
(220, 'Illescas', 'Toledo', 'España', 40.122300, -3.848800),
(221, 'Consuegra', 'Toledo', 'España', 39.462400, -3.609800),
(222, 'Ocaña', 'Toledo', 'España', 39.957800, -3.497300),
(223, 'Puigcerdà', 'Girona', 'España', 0.000000, 0.000000),
(224, 'Figueres', 'Girona', 'España', 42.266000, 2.963700),
(225, 'Llera', 'Badajoz', 'España', 38.450000, -6.050000),
(226, 'Hinojosa del Valle', 'Badajoz', 'España', 38.483300, -6.183300),
(227, 'Coria del Río', 'Sevilla', 'España', 37.287700, -6.054100),
(228, 'Roses', 'Girona', 'España', 42.262000, 3.176900),
(229, 'Burela', 'Lugo', 'España', 43.662600, -7.361800),
(230, 'Puebla de la Reina', 'Badajoz', 'España', 38.664600, -6.102200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades_favoritas`
--

CREATE TABLE `ciudades_favoritas` (
  `id_favorita` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `principal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades_favoritas`
--

INSERT INTO `ciudades_favoritas` (`id_favorita`, `id_usuario`, `id_ciudad`, `principal`) VALUES
(1, 1, 1, 1),
(7, 1, 8, 0),
(11, 6, 105, 1),
(12, 7, 9, 1),
(13, 8, 20, 1),
(14, 9, 63, 1),
(15, 10, 49, 0),
(16, 11, 131, 1),
(17, 12, 25, 1),
(18, 13, 76, 1),
(19, 14, 178, 1),
(20, 15, 39, 1),
(21, 16, 29, 0),
(22, 17, 56, 0),
(23, 18, 87, 1),
(24, 19, 194, 1),
(25, 3, 33, 1),
(26, 9, 71, 0),
(27, 9, 178, 0),
(28, 20, 105, 1),
(32, 22, 48, 0),
(33, 22, 146, 1),
(34, 16, 1, 0),
(35, 16, 56, 1),
(36, 17, 170, 0),
(37, 17, 223, 1),
(38, 10, 54, 1),
(39, 23, 14, 1),
(40, 24, 184, 1),
(41, 25, 159, 1),
(42, 26, 126, 1),
(43, 27, 180, 1),
(44, 28, 101, 1),
(45, 29, 188, 1),
(46, 1, 52, 0),
(47, 1, 11, 0),
(49, 30, 41, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejos_especificos`
--

CREATE TABLE `consejos_especificos` (
  `id_consejo` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `tipo_tiempo` enum('calor','frio','lluvia','viento','nieve','tormenta','humedad','niebla','estable','calima') NOT NULL,
  `texto_consejo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consejos_especificos`
--

INSERT INTO `consejos_especificos` (`id_consejo`, `id_especie`, `tipo_tiempo`, `texto_consejo`) VALUES
(1, 1, 'calor', 'Hola humano, soy tu perro. No me saques a pasear cuando el sol quema más que el suelo del parque. Mejor en horas más fresquitas.'),
(2, 1, 'calor', 'Consejo perruno: si el suelo quema tu mano, imagina mis patitas. Mejor paseíto corto y a la sombra.'),
(3, 1, 'frio', 'Con este frío prefiero una manta y un paseo corto. Sécame bien al volver, que no soy una croqueta congelada.'),
(4, 1, 'frio', 'Si tiemblo más que una gelatina, algo va mal. Abrígame un poco y vámonos para casa.'),
(5, 1, 'lluvia', 'Sí, humano, odio mojarme. Si llueve, paseo rápido y toalla preparada. Mis orejas te lo agradecerán.'),
(6, 1, 'lluvia', 'Evita que me meta en charcos sospechosos. No quiero volver oliendo a misterio.'),
(7, 1, 'viento', 'Con tanto viento me asusto más. Correa corta y ojo con ramas voladoras, que no soy un superhéroe.'),
(8, 1, 'viento', 'Si se me vuelan las orejas mejor no pasear entre los árboles, a mi me gusta llevar las ramas en mi hocico, no en la cabeza.'),
(9, 2, 'calor', 'Hola humano, soy tu gato. Ponme agua fresca y sombra. El sol está bien… pero solo un ratito.'),
(10, 2, 'calor', 'Si me ves estirado como una alfombra, no me molestes mucho. Hace calor y estoy fundiéndome.'),
(11, 2, 'frio', 'Con este frío necesito una cama calentita. Si puede ser cerca del braserito, mejor.'),
(12, 2, 'frio', 'El plan perfecto para combatir este frío es: Una larga siesta al calor del brasero sobre mi cama favorita (tú).'),
(13, 2, 'lluvia', 'Si vuelvo mojado, sécame rápido. No quiero parecer un gato triste de película.'),
(14, 2, 'lluvia', 'Hoy pasaré más tiempo en casa. Mantén el arenero limpio, que lo voy a usar más.'),
(15, 2, 'viento', 'Con viento fuerte, cuidado con ventanas y balcones. Me asusto y luego no te quejes de que araño.'),
(16, 2, 'viento', 'Si hay ruidos, dame un sitio tranquilo para esconderme. Prometo no romper nada (o casi).'),
(17, 1, 'viento', 'Humano, hoy el viento me despeina y me asusta. Correa corta y evita zonas con árboles altos, por favor.'),
(18, 1, 'viento', 'Con este viento todo huele diferente y me vuelvo loco. Paciencia si tiro de la correa más de lo normal.'),
(19, 1, 'tormenta', 'Los truenos me aterran. Quédate conmigo en casa, pon música suave y dame mi manta favorita. Por favor.'),
(20, 1, 'tormenta', 'Si hay tormenta y me escondo debajo de la cama, no me saques. Es mi bunker antitruenos y lo necesito.'),
(21, 1, 'tormenta', 'Nada de paseos con tormenta. Ni aunque yo insista. En serio. Bueno... quizás un poco. Pero no.'),
(22, 1, 'tormenta', 'Los relámpagos me ponen muy nervioso. Un abrazo tuyo vale más que cualquier paseo hoy.'),
(23, 1, 'nieve', '¡Nieve! Me encanta revolcarme en ella pero mis patitas se quedan heladas rápido. Paseo corto y luego a calentarnos.'),
(24, 1, 'nieve', 'La nieve mola mucho pero después sécame bien las patitas. La sal de la carretera me irrita los pies.'),
(25, 1, 'nieve', 'Si ves que levanto las patitas mientras andamos, es que tengo frío. Vuelta a casa ya.'),
(26, 1, 'nieve', 'Hoy me pongo mi abrigo de perro sin quejarme. Lo prometo. Bueno, casi lo prometo.'),
(27, 1, 'niebla', 'Con niebla no veo bien y me desoriento. Llévame con correa aunque sea en sitios donde normalmente voy suelto.'),
(28, 1, 'niebla', 'Hoy ponme el collar con luz o reflectante si salimos. No quiero ser invisible para los coches.'),
(29, 1, 'niebla', 'La niebla me trae olores raros de todas partes. Voy a estar muy despistado hoy, ten paciencia.'),
(30, 1, 'niebla', 'Paseo corto con niebla densa. No es el mejor día para explorar caminos nuevos.'),
(31, 1, 'humedad', 'Con tanta humedad me canso antes de lo normal. Reducimos el paseo un poco, ¿vale?'),
(32, 1, 'humedad', 'El ambiente húmedo hace que mi pelo tarde más en secarse. Si me mojo, tómate tu tiempo en secarme bien.'),
(33, 1, 'humedad', 'Hoy el suelo está resbaladizo aunque no llueva. Cuidado en las bajadas, que yo tampoco freno bien.'),
(34, 1, 'humedad', 'Con esta humedad los charcos están en todas partes. Sé que intentarás evitarlos. Sé también que fallarás.'),
(35, 2, 'tormenta', 'Los truenos son mi peor pesadilla. Cierra ventanas, baja persianas y déjame esconderme donde quiera.'),
(36, 2, 'tormenta', 'Durante la tormenta no me busques si me escondo. Ya saldré cuando pare. Soy un gato, no un perro.'),
(37, 2, 'tormenta', 'Si hay tormenta eléctrica, aléjame de ventanas y balcones. Los relámpagos me ponen de los nervios.'),
(38, 2, 'tormenta', 'Pon música suave y déjame tranquilo. Ya te daré mimos cuando pase el peligro. Quizás.'),
(39, 2, 'nieve', 'Nieve. Interesante. La miraré desde la ventana con cara de filósofo pero no pienso salir ahí fuera.'),
(40, 2, 'nieve', 'Con nieve fuera, necesito más calefacción dentro. No escatimes en temperatura, por favor.'),
(41, 2, 'nieve', 'Si me dejas salir con nieve y me quejo, no digas que no te avisé. Te lo aviso ahora.'),
(42, 2, 'nieve', 'Hoy es día de manta, calefacción y tu regazo. No hay más opciones sobre la mesa.'),
(43, 2, 'niebla', 'Con niebla densa mejor que no salga. Me desorienta y no me ubico tan bien como crees.'),
(44, 2, 'niebla', 'La niebla hace que los coches no me vean bien. Hoy soy un gato de interior, gracias.'),
(45, 2, 'niebla', 'Desde la ventana la niebla me parece misteriosa y fascinante. Desde dentro, claro.'),
(46, 2, 'niebla', 'Si salgo con niebla y me pierdo, no es culpa mía. Es de la niebla. Punto.'),
(47, 2, 'humedad', 'Con tanta humedad mi pelo se encrespa. No te rías. No tiene ninguna gracia.'),
(48, 2, 'humedad', 'El ambiente húmedo me hace sentir pegajoso. Hoy necesito más cepillado de lo normal.'),
(49, 2, 'humedad', 'Con humedad alta el arenero huele más. Límpialo más seguido hoy, por favor. Lo agradezco.'),
(50, 2, 'humedad', 'Hoy prefiero quedarme en sitios elevados y secos. Respeta mis decisiones de arquitecto felino.'),
(51, 2, 'viento', 'Cierra bien ventanas y balcones. El viento me pone nervioso y podría tener un accidente.'),
(52, 2, 'viento', 'Los ruidos del viento me alteran. Dame un sitio tranquilo y alejado de las corrientes de aire.'),
(53, 2, 'viento', 'Con viento fuerte no me dejes en balcones o terrazas aunque sea un momento. No merece la pena el riesgo.'),
(54, 1, 'calor', 'Hoy hace mucho calor. Agua fresca siempre disponible y nada de correr. Yo tampoco tengo ganas.'),
(55, 1, 'calor', 'Si el suelo quema, mis patitas también. Test de 7 segundos: pon la mano en el asfalto. Si no aguantas, yo tampoco.'),
(56, 1, 'frio', 'Hoy hace mucho frío. Si soy de raza pequeña o mayor, necesito abrigo de verdad, no de adorno.'),
(57, 1, 'frio', 'Paseo rápido y de vuelta a casa. El frío me afecta más de lo que crees, especialmente las patitas.'),
(58, 2, 'calor', 'Agua fresquita en varios sitios de la casa. Me gusta tener opciones, como con todo en la vida.'),
(59, 2, 'calor', 'Si me ves jadeando, es que hace demasiado calor. Ventila la casa o enciende el aire acondicionado ¡ya!'),
(60, 2, 'frio', 'Hoy necesito mi manta favorita en mi sitio favorito. No lo muevas. Ya sé dónde está y lo necesito ahí.'),
(61, 2, 'frio', 'Con este frío me pego más a ti de lo normal. No lo interpretes como cariño. Solo es calor corporal. Bueno, quizás algo de cariño.'),
(62, 1, 'lluvia', 'Si llueve fuerte, paseo bajo techo o muy corto. Después sécame bien las orejas, son muy sensibles.'),
(63, 1, 'lluvia', 'Con la lluvia los olores se intensifican y voy a querer olfatearlo todo. Dame un poco más de tiempo.'),
(64, 2, 'lluvia', 'El sonido de la lluvia me relaja. Pon mi cama cerca de la ventana para que pueda ver y escuchar.'),
(65, 2, 'lluvia', 'Hoy el arenero lo voy a usar más. Tenlo limpio y no me hagas pasar vergüenza.'),
(66, 1, 'estable', '¡Hoy hace un día perfecto! Ni frío ni calor. Es el momento ideal para un buen paseo largo.'),
(67, 1, 'estable', 'Día tranquilo y agradable. Podemos salir sin prisa y explorar rutas nuevas. ¡Yo elijo el camino!'),
(68, 1, 'estable', 'Hoy el tiempo es perfecto para jugar en el parque. ¿Llevamos la pelota? Sí, la pelota. Por favor.'),
(69, 1, 'estable', 'Día ideal para socializarme con otros perros. El tiempo acompaña y yo tengo ganas de hacer amigos.'),
(70, 2, 'estable', 'Hoy hace un día agradable. Puede que hasta me apetezca salir al balcón un ratito. Puede.'),
(71, 2, 'estable', 'Temperatura perfecta. Ni frío ni calor. Día ideal para una siesta larga en mi sitio favorito.'),
(72, 2, 'estable', 'Hoy el tiempo es tan bueno que casi me apetece ser sociable. Casi. No te emociones.'),
(73, 2, 'estable', 'Día estable y tranquilo. Es el tipo de día en que estoy de buen humor. Aprovéchalo.'),
(74, 1, 'calima', 'Hoy hay calima y el aire está cargado de polvo. Mejor un paseo cortito y en zonas abiertas donde haya algo de brisa.'),
(75, 1, 'calima', 'Con calima mis ojos y nariz se irritan más de lo normal. Si me ves restregándome la cara, es normal, pero consulta al vet si persiste.'),
(76, 1, 'calima', 'El polvo en suspensión no es bueno para mis pulmones. Paseo corto, sin esfuerzo y mucha agua fresca al volver.'),
(77, 1, 'calima', 'Hoy el cielo está anaranjado y el aire huele raro. Prefiero quedarme en casa, humano. En serio.'),
(78, 2, 'calima', 'Calima significa polvo en el aire, y el polvo y yo no somos amigos. Cierra las ventanas y ponme agua fresquita.'),
(79, 2, 'calima', 'Con este aire cargado de polvo mis ojos lagrimean más. No es que esté triste, es la calima.'),
(80, 2, 'calima', 'Hoy es día de interior total. El aire de fuera está lleno de partículas y mis vías respiratorias son muy sensibles.'),
(81, 2, 'calima', 'Si el cielo está amarillento, quédate tranquila. Yo estaré bien dentro de casa, lejos de ese polvo sahariano.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `id_especie` int(11) NOT NULL,
  `nombre_especie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`id_especie`, `nombre_especie`) VALUES
(2, 'Gato'),
(1, 'Perro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foro_consejos`
--

CREATE TABLE `foro_consejos` (
  `id_publicacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `ciudad` varchar(100) NOT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `titulo` varchar(150) NOT NULL,
  `contenido` text NOT NULL,
  `fecha_envio` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` enum('pendiente','aprobado','rechazado') NOT NULL DEFAULT 'pendiente',
  `fecha_revision` datetime DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `foro_consejos`
--

INSERT INTO `foro_consejos` (`id_publicacion`, `id_usuario`, `id_especie`, `id_admin`, `ciudad`, `provincia`, `titulo`, `contenido`, `fecha_envio`, `estado`, `fecha_revision`, `likes`) VALUES
(1, 1, 1, 3, 'Hornachos', 'Badajoz', 'Alerta por altas temperaturas', 'Hoy las temperaturas están subiendo muchísimo. Recordad hidratar a vuestros perros y evitar paseos en horas de máximo calor.', '2026-01-20 22:55:33', 'aprobado', '2026-04-20 17:32:20', 2),
(3, 1, 2, 3, 'Zafra', 'Badajoz', 'Advertencia por viento fuerte', 'Mucho ojo hoy con las ventanas abiertas. El viento está muy fuerte y un golpe podría asustar o herir a los gatos.', '2026-01-20 22:55:33', 'aprobado', '2026-01-20 22:55:33', 14),
(5, 1, 1, 3, 'Hornachos', 'Badajoz', 'Nueva zona de sombra', 'Si queréis un nuevo lugar con sombra para poder estar en estos días de calor que ya está empezando, os recomiendo la fuente de los cristianos, hay zonas con bastante sombra, agua y sitio para sentarse tranquilos mientras nuestros peludos juegan!.', '2026-04-19 13:37:16', 'aprobado', '2026-04-20 17:32:25', 0),
(6, 8, 1, 3, 'Huesca', 'Huesca', 'Nuevo parque canino', 'Me han dicho que han abierto un nuevo parque para perros al norte de la ciudad. Hay mucha vegetación por lo que debéis tener cuidado en esta época ya que pueden coger garrapatas facilmente.', '2026-04-23 22:07:39', 'aprobado', '2026-05-23 19:48:01', 3),
(7, 11, 1, 3, 'Barcelona', 'Barcelona', 'Camino encharcado', 'No ir por el camino de la playa porque está lleno de charcos', '2026-04-23 23:51:21', 'aprobado', '2026-05-23 19:47:48', 1),
(8, 22, 2, 3, '', '', 'adfasd', 'fasdfas', '2026-05-20 19:26:42', 'rechazado', '2026-05-23 19:47:52', 0),
(9, 17, 1, 3, 'Ourense', 'Ourense', 'Hace calor en el parque central', 'No vayais al parque central al mediodia porque no hay árboles', '2026-05-24 19:45:07', 'aprobado', '2026-05-24 19:46:09', 2),
(10, 15, 1, 3, 'Palencia', 'Palencia', 'Zonas con agua', 'Alguien me puede recomendar una zona en la que haya fuentes para que puedan beber nuestros perros?En Palencia capital', '2026-05-27 21:29:53', 'aprobado', '2026-05-27 22:23:35', 0),
(11, 3, 2, 3, 'Briviesca', 'Burgos', 'hola', 'Prueba', '2026-05-27 22:23:25', 'rechazado', '2026-05-27 22:23:33', 0),
(12, 22, 1, NULL, 'Badalona', 'Barcelona', 'Buscamos perri-amigos', 'Próximamente nos mudamos a Badalona y nos gustaría hacer nuevos amigos.', '2026-05-27 22:40:06', 'pendiente', NULL, 0),
(13, 6, 2, 3, 'Zafra', 'Badajoz', 'Ojo con las tormentas de esta semana', 'Mi gata Luna lleva dos días escondida debajo de la cama. Con las tormentas que están cayendo está muy asustada. ¿A alguien más le pasa? Lo que me funciona es ponerle música suave y dejarle su mantita cerca.', '2026-05-10 10:23:00', 'aprobado', '2026-05-10 11:00:00', 5),
(14, 9, 1, 3, 'Sevilla', 'Sevilla', 'Cuidado con el asfalto en Sevilla', 'Chicos, hoy a mediodía el suelo quemaba una barbaridad. Mi perra se negaba a andar y con razón. Salid muy temprano o ya de noche, el resto del día es un riesgo para sus patitas.', '2026-05-12 14:05:00', 'aprobado', '2026-05-12 15:00:00', 8),
(15, 12, 2, 3, 'Barcelona', 'Barcelona', 'El calor y los gatos de exterior', 'Tengo un gato que sale al jardín y con este calor lo encuentro siempre a la sombra sin moverse. He puesto varios cuencos de agua por el jardín y parece que lo agradece. Os lo recomiendo.', '2026-05-14 09:15:00', 'aprobado', '2026-05-14 10:00:00', 3),
(16, 18, 1, 3, 'Mérida', 'Badajoz', 'Zona de baño para perros en Mérida', 'Para los que seáis de Mérida o estéis de paso, hay una zona junto al río donde los perros pueden bañarse tranquilamente. Con este calor mi Dante disfruta muchísimo. Muy recomendable por las mañanas temprano.', '2026-05-15 08:30:00', 'aprobado', '2026-05-15 09:30:00', 6),
(17, 25, 2, 3, 'Valladolid', 'Valladolid', 'Humedad y problemas en el pelo', 'Con la humedad de estos días mi gata aparece siempre con el pelo encrespado y más sucio de lo normal. He empezado a cepillarla cada día y ha mejorado bastante. Para los que tengáis persas o angoras esto es especialmente importante.', '2026-05-16 17:45:00', 'aprobado', '2026-05-16 18:30:00', 4),
(18, 13, 1, 3, 'Granada', 'Granada', 'Alerta garrapatas en el parque del Genil', 'Aviso importante para los que paseéis por el parque del Genil. Esta semana he encontrado dos garrapatas en mis perras después del paseo. Revisad bien a vuestros animales al volver a casa, especialmente entre los dedos y detrás de las orejas.', '2026-05-18 19:00:00', 'aprobado', '2026-05-18 20:00:00', 11),
(19, 7, 2, 3, 'Madrid', 'Madrid', 'Mi gato odia el ventilador', 'He descubierto que a mi gato le da pánico el ventilador. Lo pongo para que refresque la habitación y él sale corriendo. ¿A alguien más le pasa? Al final lo pongo solo cuando él no está en la habitación.', '2026-05-19 21:10:00', 'aprobado', '2026-05-19 22:00:00', 7),
(20, 15, 1, 3, 'Palencia', 'Palencia', 'Paseos cortos con la lluvia', 'Esta semana no para de llover en Palencia. Mi perro insiste en salir igual pero lo limito a paseos cortitos. Lo peor es secarlo al volver, odia la toalla jajaja. ¿Alguien tiene algún truco para que no se escapen corriendo cuando ven la toalla?', '2026-05-20 11:30:00', 'aprobado', '2026-05-20 12:30:00', 4),
(21, 28, 2, 3, 'Bilbao', 'Vizcaya', 'Gatos y niebla', 'Curioso pero desde que hay tanta niebla en Bilbao mi gato no quiere salir al balcón. Antes se pasaba horas ahí. Supongo que los olores raros que trae la niebla le ponen nervioso. ¿Alguien sabe si es normal?', '2026-05-21 10:00:00', 'aprobado', '2026-05-21 11:00:00', 3),
(22, 19, 1, 3, 'Zaragoza', 'Zaragoza', 'Cuidado con el viento del Cierzo', 'Para los zaragozanos, el Cierzo está pegando muy fuerte esta semana. Mi perro se asusta con las ráfagas fuertes y tira mucho de la correa. Os recomiendo evitar zonas abiertas y pasear por calles con edificios que corten el viento.', '2026-05-22 16:20:00', 'aprobado', '2026-05-22 17:00:00', 5),
(23, 27, 2, 3, 'San Sebastián', 'Guipúzcoa', 'Día de lluvia, día de juegos en casa', 'Con la lluvia que cae hoy en Donosti no hay quien salga. He aprovechado para hacer juegos de olfato con mis gatos en casa. Les escondo premios por los rincones y se entretienen un montón. Super recomendable para días de lluvia.', '2026-05-23 12:00:00', 'aprobado', '2026-05-23 13:00:00', 9),
(24, 20, 1, 3, 'Badajoz', 'Badajoz', 'Protector solar para perros', 'Hoy me ha dicho el veterinario que a los perros de pelo claro o con zonas sin pelo hay que ponerles protector solar en verano. No lo sabía y me ha parecido importante compartirlo. Que no les dé directamente el sol en la barriga sobre todo.', '2026-05-24 09:45:00', 'aprobado', '2026-05-24 10:30:00', 12),
(25, 26, 2, 3, 'Málaga', 'Málaga', 'Aire acondicionado sí o no', 'Tengo dudas sobre si poner el aire acondicionado para mi gata. Lo pongo a 24 grados y parece que está bien pero no sé si le puede sentar mal el cambio de temperatura al salir. ¿Alguien tiene experiencia con esto?', '2026-05-25 18:30:00', 'aprobado', '2026-05-25 19:30:00', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes_foro`
--

CREATE TABLE `likes_foro` (
  `id_like` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `likes_foro`
--

INSERT INTO `likes_foro` (`id_like`, `id_publicacion`, `id_usuario`) VALUES
(11, 1, 3),
(13, 1, 22),
(1, 3, 1),
(8, 3, 3),
(9, 6, 1),
(5, 6, 3),
(14, 6, 22),
(15, 7, 22),
(10, 9, 1),
(3, 9, 3),
(16, 13, 1),
(17, 13, 9),
(18, 13, 12),
(19, 13, 18),
(20, 13, 25),
(21, 14, 1),
(22, 14, 6),
(23, 14, 13),
(24, 14, 15),
(25, 14, 19),
(26, 14, 22),
(27, 14, 27),
(28, 14, 28),
(29, 15, 7),
(30, 15, 20),
(31, 15, 26),
(32, 16, 1),
(33, 16, 9),
(34, 16, 13),
(35, 16, 18),
(36, 16, 19),
(37, 16, 25),
(38, 17, 6),
(39, 17, 12),
(40, 17, 20),
(41, 17, 27),
(42, 18, 1),
(43, 18, 6),
(44, 18, 7),
(45, 18, 9),
(46, 18, 12),
(47, 18, 13),
(48, 18, 15),
(49, 18, 18),
(50, 18, 19),
(51, 18, 22),
(52, 18, 25),
(53, 19, 1),
(54, 19, 6),
(55, 19, 9),
(56, 19, 12),
(57, 19, 15),
(58, 19, 20),
(59, 19, 26),
(60, 20, 1),
(61, 20, 13),
(62, 20, 18),
(63, 20, 27),
(64, 21, 6),
(65, 21, 20),
(66, 21, 28),
(67, 22, 1),
(68, 22, 9),
(69, 22, 13),
(70, 22, 19),
(71, 22, 25),
(72, 23, 1),
(73, 23, 6),
(74, 23, 7),
(75, 23, 9),
(76, 23, 12),
(77, 23, 13),
(78, 23, 15),
(79, 23, 19),
(80, 23, 22),
(81, 24, 1),
(82, 24, 6),
(83, 24, 7),
(84, 24, 9),
(85, 24, 12),
(86, 24, 13),
(87, 24, 15),
(88, 24, 18),
(89, 24, 19),
(90, 24, 20),
(91, 24, 22),
(92, 24, 25),
(93, 25, 1),
(94, 25, 7),
(95, 25, 12),
(96, 25, 18),
(97, 25, 20),
(98, 25, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id_mascota` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `edad` tinyint(3) UNSIGNED DEFAULT NULL,
  `sexo` enum('macho','hembra') NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `raza` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id_mascota`, `id_usuario`, `id_especie`, `nombre`, `edad`, `sexo`, `foto`, `raza`) VALUES
(1, 1, 1, 'Luna', 12, 'hembra', 'uploads/mascotas/luna.jpg', 'Mestiza'),
(2, 1, 1, 'Tato', 9, 'macho', 'uploads/mascotas/tato.jpg', 'Golden Retriever'),
(3, 1, 2, 'Benji', 8, 'macho', 'uploads/mascotas/benji.jpg', 'Europeo Común'),
(4, 1, 2, 'Tigrin', 7, 'macho', 'uploads/mascotas/tigrin.jpg', 'Europeo Común'),
(8, 6, 2, 'Juanito', 11, 'macho', 'uploads/mascotas/mascota_69ea65646dcf0.jpg', 'Europeo Común'),
(9, 6, 1, 'Byron', 6, 'macho', 'uploads/mascotas/mascota_69ea659179d59.jpg', 'Border Collie'),
(10, 7, 1, 'Bimbo', 2, 'macho', 'uploads/mascotas/mascota_69ea66e1d4d1d.jpg', 'Salchicha'),
(11, 8, 1, 'Can', 5, 'macho', 'uploads/mascotas/mascota_69ea6753e4224.jpg', 'Pastor Belga Malinois'),
(12, 8, 1, 'Mia', 5, 'hembra', 'uploads/mascotas/mascota_69ea67757350d.jpg', 'Pastor Belga Malinois'),
(13, 8, 1, 'Shooky', 4, 'hembra', 'uploads/mascotas/mascota_69ea678f9a1ab.jpg', 'Mestiza'),
(15, 9, 1, 'Mia', 4, 'hembra', 'uploads/mascotas/mascota_69ea6ab07c222.jpg', 'Mestiza'),
(16, 9, 1, 'Lucas', 6, 'macho', 'uploads/mascotas/mascota_69ea6b98429f0.jpg', 'Mestizo'),
(17, 10, 2, 'Miki', 8, 'macho', 'uploads/mascotas/mascota_69ea7ee95bcce.jpg', 'Europeo Común'),
(18, 11, 1, 'Mati', 9, 'macho', 'uploads/mascotas/mascota_69ea7f9394abb.jpg', 'Chihuahua'),
(19, 12, 1, 'Teo', 9, 'macho', 'uploads/mascotas/mascota_69ea84dbdb236.jpg', 'Chihuahua'),
(20, 13, 1, 'Sierra', 6, 'hembra', 'uploads/mascotas/mascota_69ea8e39f0763.jpg', 'Mestiza'),
(21, 13, 1, 'Chispa', 4, 'hembra', 'uploads/mascotas/mascota_69ea8e56c524f.jpg', 'Setter'),
(22, 14, 1, 'Locky', 8, 'macho', 'uploads/mascotas/mascota_69ea8ecd37acd.jpg', 'Mestizo'),
(23, 14, 1, 'Chiqui', 13, 'hembra', 'uploads/mascotas/mascota_69ea8ef353ea5.jpg', 'Podenco'),
(24, 15, 1, 'Poden', 16, 'hembra', 'uploads/mascotas/mascota_69ea8f88ba2e2.jpg', 'Podenco'),
(25, 16, 2, 'Triski', 1, 'hembra', 'uploads/mascotas/mascota_69ea901570d70.jpg', 'Europeo Común'),
(26, 17, 2, 'Mika', 4, 'hembra', 'uploads/mascotas/mascota_69ea90a53ca62.jpg', 'Europeo Común'),
(27, 18, 1, 'Dante', 7, 'macho', 'uploads/mascotas/mascota_69ea91132e9a7.jpg', 'Mestizo'),
(28, 19, 1, 'Trufa', 8, 'hembra', 'uploads/mascotas/mascota_69ea918a65d08.jpg', 'Mastín'),
(29, 3, 1, 'Coli', 14, 'hembra', 'uploads/mascotas/mascota_69ea91c0c0904.jpg', 'Mestiza'),
(31, 22, 1, 'Archie', 8, 'macho', 'uploads/mascotas/mascota_6a175616382a5.jpg', 'fasdfs'),
(32, 23, 1, 'Tao', 8, 'macho', 'uploads/mascotas/mascota_6a1621110adcc.jpg', 'Mestizo'),
(33, 23, 1, 'Flora', 6, 'hembra', 'uploads/mascotas/mascota_6a1621409ecfa.jpg', 'Mestiza'),
(34, 24, 2, 'Romeo', 8, 'macho', 'uploads/mascotas/mascota_6a16217962c61.jpg', 'Europeo Común'),
(35, 24, 2, 'Susi', 11, 'hembra', 'uploads/mascotas/mascota_6a16219612107.jpg', 'Europeo Común'),
(36, 25, 1, 'Pipo', 12, 'macho', 'uploads/mascotas/mascota_6a1621f3cfbe4.jpg', 'Yorkshire'),
(37, 26, 2, 'Manolo', 7, 'macho', 'uploads/mascotas/mascota_6a1622397d6c4.jpg', 'Europeo Común'),
(38, 27, 2, 'Nika', 7, 'hembra', 'uploads/mascotas/mascota_6a162276b0e33.jpg', 'Europeo Común'),
(39, 24, 2, 'Sauce', 0, 'hembra', 'uploads/mascotas/mascota_6a1622bc3f6b2.jpg', 'Europeo Común'),
(40, 28, 1, 'Feo', 7, 'macho', 'uploads/mascotas/mascota_6a16231ce1fbc.jpg', 'Bulldog Francés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `texto` text NOT NULL,
  `fecha_envio` datetime NOT NULL DEFAULT current_timestamp(),
  `tipo` enum('problema','consulta','sugerencia_ciudad','otro') NOT NULL DEFAULT 'otro',
  `estado` enum('pendiente','en_proceso','resuelto') NOT NULL DEFAULT 'pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_mensaje`, `id_usuario`, `nombre`, `email`, `asunto`, `texto`, `fecha_envio`, `tipo`, `estado`) VALUES
(1, 1, 'Cristina Delgado Sayavera', 'cris@meteopet.com', 'Consulta sobre consejos de verano', 'Tengo un perro mayor y me gustaría saber si la aplicación tendrá avisos especiales en días de mucho calor.', '2026-01-20 22:54:23', 'consulta', 'resuelto'),
(2, NULL, 'Soraya Luengo Jiménez', 'soraya@meteopet.com', 'Problema al añadir una mascota', 'Al intentar añadir una nueva mascota, la página no carga correctamente.', '2026-01-20 22:54:23', 'problema', 'resuelto'),
(3, NULL, 'Juan García', 'juan@gmail.com', 'Duda general', 'He visto la web y me parece muy interesante. ¿Tenéis pensado sacar una app móvil?', '2026-01-20 22:54:23', 'otro', 'pendiente'),
(4, NULL, 'María López', 'maria@gmail.com', 'Sugerencia de nueva ciudad', 'Me gustaría que se añadiera la ciudad de Cáceres para poder consultar el tiempo.', '2026-01-20 22:54:23', 'sugerencia_ciudad', 'resuelto'),
(5, NULL, 'Pepi', 'pepi@gmail.com', 'uso app', 'La app se puede usar sin registrarse?', '2026-04-20 18:36:52', 'consulta', 'en_proceso'),
(6, 22, 'Juan', 'juan@meteopet.com', 'Cambiar foto', 'No consigo cambiar la foto de mi mascota', '2026-05-27 22:38:58', 'problema', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  `rol` enum('usuario','administrador') NOT NULL DEFAULT 'usuario',
  `avatar` varchar(50) DEFAULT 'avatar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `password_hash`, `fecha_registro`, `rol`, `avatar`) VALUES
(1, 'Cris Delgado Sayavera', 'cris@meteopet.com', '$2y$10$gjaqxJIyiDyETZwzCWfMlujDKqBIR37xewtAjthcaQ6kkFm1IBuAe', '2026-01-20 22:41:36', 'usuario', 'avatar15.png'),
(3, 'Administrador MeteoPet', 'admin@meteopet.com', '$2y$10$sNIRc2sR7DmgEuXFbUt2jOGh0rBX84U0VDbl7UGwIT9dfDVR9eRQC', '2026-01-20 22:41:37', 'administrador', 'avatar9.png'),
(6, 'María Martín Velez', 'mmartinv@meteopet.com', '$2y$10$s6VXtE9Los48HyTmGGe99.A0uVBefRr6TJ.nK5ep1ykZJXK9BNJ.i', '2026-04-23 20:24:13', 'usuario', 'avatar11.png'),
(7, 'Estrella Chamorro Real', 'estrella@meteopet.com', '$2y$10$awpviXwzopC9lMxlzDgmC.l6Qs.ORkvg7dl.fd3gOeg67Jxz5LdHe', '2026-04-23 20:34:36', 'usuario', 'avatar14.png'),
(8, 'Maika Delgado Corcobado', 'maika@meteopet.com', '$2y$10$bFgWGF.hAVzgAm2v3NFxWOSn66PgoNQ2NMpcuivZXQ8xnJvpyEmmW', '2026-04-23 20:38:10', 'usuario', 'avatar17.png'),
(9, 'Soraya Luengo Jimenez', 'soraya@meteopet.com', '$2y$10$pwTcndOsn2hf5BTCT.fqFuXj.L7WRGvc6FF28V16TRLsyWVF/fcxm', '2026-04-23 20:52:22', 'usuario', 'avatar5.png'),
(10, 'Laura', 'laura@meteopet.com', '$2y$10$nIVbXG4UQmWt.8GpcCadu.3/ZbO99VXHN78yYv6/Okwo1y5k.S63.', '2026-04-23 22:14:36', 'usuario', 'avatar1.png'),
(11, 'Marisa Sayavera Díaz', 'marisa@meteopet.com', '$2y$10$az4PF2NgkQVPdq3K.g3ck.xGii8IKAXsckKE34W3fsudUDQk57r4O', '2026-04-23 22:21:05', 'usuario', 'avatar4.png'),
(12, 'Jordi Díaz Sayavera', 'jordi@meteopet.com', '$2y$10$XLiO7FF1PD4Fioxf78z1rOtVqKgHB/eJh0V1u7LLr.W6z/G.tf0FG', '2026-04-23 22:44:25', 'usuario', 'avatar19.png'),
(13, 'Jenny Cuevas', 'jenny@meteopet.com', '$2y$10$mgiBNi.clH4ZEqlh0mmNg.uHWJAuVv9wZq25r7rli4B5YYMEK1qKS', '2026-04-23 23:24:16', 'usuario', 'avatar10.png'),
(14, 'Juanvi', 'juanvi@meteopet.com', '$2y$10$JImZLazX6nUGf4CI9S5jGuEVpfdvI7vGQXE/293SIPpUhGY6ZCDSS', '2026-04-23 23:26:52', 'usuario', 'avatar16.png'),
(15, 'Daniel Macías Delgado', 'daniel@meteopet.com', '$2y$10$0fR2lR5myrie0Yam5twd0.HBi8u4UjyMAuiky9TlxyE4CVqvKq.1e', '2026-04-23 23:29:58', 'usuario', 'avatar12.png'),
(16, 'Irene Macías Delgado', 'irene@meteopet.com', '$2y$10$434HgAGOkerOLYRPElMk9.kSY5fp58WuJktW0XbpB3qUtumKO9jVy', '2026-04-23 23:31:50', 'usuario', 'avatar11.png'),
(17, 'María Macías Delgado', 'mamacias@meteopet.com', '$2y$10$csUm9ymGVxizsP.puXYf3uvE1Y2qYUZB99bejKqWZjLO2OZDHy9yq', '2026-04-23 23:34:31', 'usuario', 'avatar1.png'),
(18, 'Elena Rodríguez', 'elena@meteopet.com', '$2y$10$.RvhVWNPWkQ.yFGfGONpdOcooEnbDyqvmo558a1K2ZYzgMwzTSUPe', '2026-04-23 23:36:26', 'usuario', 'avatar17.png'),
(19, 'Angeles Gutiérrez', 'angeles@meteopet.com', '$2y$10$8B9xnEUqI94v9Vzrul.Etu6292k4AqQ8LoooMFb01W9olJ9yf.Toy', '2026-04-23 23:38:29', 'usuario', 'avatar1.png'),
(20, 'Lorena García', 'lorena@meteopet.com', '$2y$10$YYPN9CrcnVEKvtULmqiulepBzcIhs3JLzFQpTIVT6W9Pd.fjE/h3O', '2026-05-18 19:08:30', 'usuario', 'avatar18.png'),
(22, 'Juan Perez', 'juan@meteopet.com', '$2y$10$dOLiUPmYD4VQ7uNHUoOfWuVtAb.oowsLX2lEVklospYKl8/Io1UQi', '2026-05-20 19:25:37', 'usuario', 'avatar12.png'),
(23, 'Marce Torres', 'marcetorres@meteopet.com', '$2y$10$ZG48i/ZRjpDKQ1785VD5ieZG8n5gyb8UHp7.tOzrsoHl4uRxNXQ7S', '2026-05-27 00:16:19', 'usuario', 'avatar10.png'),
(24, 'Jimena Cortés', 'jime@meteopet.com', '$2y$10$TpFNxkw51XySjcAvDXDGzuwKlLxlXMv4rdARum5jixiCwKG62GwNm', '2026-05-27 00:17:30', 'usuario', 'avatar5.png'),
(25, 'Mónica Béjar Sayavera', 'monica_bejar@meteopet.com', '$2y$10$pvvyikOwm9iRYuUgtXjLq.48oYwCBu.cxVKyQmr45iUhho7AUDAuC', '2026-05-27 00:32:57', 'usuario', 'avatar14.png'),
(26, 'Jeimy Aquino', 'jeimy@meteopet.com', '$2y$10$oDUfWiBA53qUfmCWJWsGnuiqS4grfwN.EBUX9xI4DK4kCPlDCGbr.', '2026-05-27 00:34:01', 'usuario', 'avatar14.png'),
(27, 'Toffa Evans', 'toffa@meteopet.com', '$2y$10$/vPf0Aie2Uvi/Ut1962qlOFgaSe.bshk5VPanm..3ovhV8j/W8JSm', '2026-05-27 00:34:46', 'usuario', 'avatar20.png'),
(28, 'Andrea Aquino', 'andy@meteopet.com', '$2y$10$8mMxmYt0FM1LNsMV9.ov2uIaw.rUB5AQa8C1p3NDTmtm3x5DkXgn.', '2026-05-27 00:47:09', 'usuario', 'avatar3.png'),
(29, 'Usuario Prueba', 'prueba@meteopet.com', '$2y$10$9dfdazlqMI9Ivyq7qWmguuhzlB.fiNPzH4TGkKcXQDosLjIoBJ4JS', '2026-05-27 01:02:39', 'usuario', 'avatar8.png'),
(30, 'Prueba2', 'prueba2@meteopet.com', '$2y$10$DOR.EIUWsZ9uBU63AMLqYOn0HBbCTGhDjbbTRDZw3NcQTHNY3ss.i', '2026-05-28 14:41:07', 'usuario', 'avatar16.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD UNIQUE KEY `uq_ciudad` (`nombre_ciudad`,`provincia`,`pais`);

--
-- Indices de la tabla `ciudades_favoritas`
--
ALTER TABLE `ciudades_favoritas`
  ADD PRIMARY KEY (`id_favorita`),
  ADD UNIQUE KEY `uq_fav_usuario_ciudad` (`id_usuario`,`id_ciudad`),
  ADD KEY `fk_fav_ciudad` (`id_ciudad`),
  ADD KEY `idx_fav_usuario` (`id_usuario`);

--
-- Indices de la tabla `consejos_especificos`
--
ALTER TABLE `consejos_especificos`
  ADD PRIMARY KEY (`id_consejo`),
  ADD KEY `idx_consejos_especie` (`id_especie`),
  ADD KEY `idx_consejos_tiempo` (`tipo_tiempo`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id_especie`),
  ADD UNIQUE KEY `nombre_especie` (`nombre_especie`);

--
-- Indices de la tabla `foro_consejos`
--
ALTER TABLE `foro_consejos`
  ADD PRIMARY KEY (`id_publicacion`),
  ADD KEY `idx_foro_estado` (`estado`),
  ADD KEY `idx_foro_usuario` (`id_usuario`),
  ADD KEY `idx_foro_especie` (`id_especie`),
  ADD KEY `idx_foro_admin` (`id_admin`);

--
-- Indices de la tabla `likes_foro`
--
ALTER TABLE `likes_foro`
  ADD PRIMARY KEY (`id_like`),
  ADD UNIQUE KEY `uq_like` (`id_publicacion`,`id_usuario`),
  ADD KEY `fk_like_usuario` (`id_usuario`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `idx_mascotas_usuario` (`id_usuario`),
  ADD KEY `idx_mascotas_especie` (`id_especie`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `idx_mensajes_usuario` (`id_usuario`),
  ADD KEY `idx_mensajes_estado` (`estado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de la tabla `ciudades_favoritas`
--
ALTER TABLE `ciudades_favoritas`
  MODIFY `id_favorita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `consejos_especificos`
--
ALTER TABLE `consejos_especificos`
  MODIFY `id_consejo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `id_especie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `foro_consejos`
--
ALTER TABLE `foro_consejos`
  MODIFY `id_publicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `likes_foro`
--
ALTER TABLE `likes_foro`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id_mascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades_favoritas`
--
ALTER TABLE `ciudades_favoritas`
  ADD CONSTRAINT `fk_fav_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudades` (`id_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fav_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `consejos_especificos`
--
ALTER TABLE `consejos_especificos`
  ADD CONSTRAINT `fk_consejos_especie` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id_especie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `foro_consejos`
--
ALTER TABLE `foro_consejos`
  ADD CONSTRAINT `fk_foro_admin` FOREIGN KEY (`id_admin`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_foro_especie` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id_especie`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_foro_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `likes_foro`
--
ALTER TABLE `likes_foro`
  ADD CONSTRAINT `fk_like_publicacion` FOREIGN KEY (`id_publicacion`) REFERENCES `foro_consejos` (`id_publicacion`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_like_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `fk_mascotas_especie` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id_especie`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mascotas_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `fk_mensajes_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
