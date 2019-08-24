-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2019 a las 08:53:58
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_lk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `ubi_identificador` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubi_departamento` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubi_provincia` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubi_distrito` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubi_descripcion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `addresses`
--

INSERT INTO `addresses` (`id`, `ubi_identificador`, `ubi_departamento`, `ubi_provincia`, `ubi_distrito`, `ubi_descripcion`, `created_at`, `updated_at`) VALUES
(1, '10000', '1', '0', '0', 'AMAZONAS', NULL, NULL),
(2, '10100', '1', '1', '0', 'BAGUA', NULL, NULL),
(3, '10101', '1', '1', '1', 'ARAMANGO', NULL, NULL),
(4, '10102', '1', '1', '2', 'LA PECA (BAGUA)', NULL, NULL),
(5, '10105', '1', '1', '5', 'COPALLIN', NULL, NULL),
(6, '10108', '1', '1', '8', 'EL PARCO', NULL, NULL),
(7, '10112', '1', '1', '12', 'IMAZA', NULL, NULL),
(8, '10200', '1', '2', '0', 'BONGARA', NULL, NULL),
(9, '10201', '1', '2', '1', 'COROSHA', NULL, NULL),
(10, '10202', '1', '2', '2', 'CUISPES', NULL, NULL),
(11, '10203', '1', '2', '3', 'CHISQUILLA', NULL, NULL),
(12, '10204', '1', '2', '4', 'CHURUJA', NULL, NULL),
(13, '10205', '1', '2', '5', 'FLORIDA', NULL, NULL),
(14, '10206', '1', '2', '6', 'RECTA', NULL, NULL),
(15, '10207', '1', '2', '7', 'SAN CARLOS', NULL, NULL),
(16, '10208', '1', '2', '8', 'SHIPASBAMBA', NULL, NULL),
(17, '10209', '1', '2', '9', 'VALERA', NULL, NULL),
(18, '10210', '1', '2', '10', 'JUMBILLA', NULL, NULL),
(19, '10211', '1', '2', '11', 'YAMBRAS BAMBA', NULL, NULL),
(20, '10212', '1', '2', '12', 'JAZAN', NULL, NULL),
(21, '10300', '1', '3', '0', 'CHACHAPOYAS', NULL, NULL),
(22, '10301', '1', '3', '1', 'ASUNCION', NULL, NULL),
(23, '10302', '1', '3', '2', 'BALSAS', NULL, NULL),
(24, '10303', '1', '3', '3', 'CHETO', NULL, NULL),
(25, '10305', '1', '3', '5', 'CHILIQUIN', NULL, NULL),
(26, '10306', '1', '3', '6', 'CHUQUIBAMBA', NULL, NULL),
(27, '10307', '1', '3', '7', 'GRANADA', NULL, NULL),
(28, '10308', '1', '3', '8', 'HUANCAS', NULL, NULL),
(29, '10309', '1', '3', '9', 'LA JALCA', NULL, NULL),
(30, '10310', '1', '3', '10', 'LEIMEBAMBA', NULL, NULL),
(31, '10311', '1', '3', '11', 'LEVANTO', NULL, NULL),
(32, '10312', '1', '3', '12', 'MAGDALENA', NULL, NULL),
(33, '10313', '1', '3', '13', 'MARISCAL CASTILLA', NULL, NULL),
(34, '10314', '1', '3', '14', 'MOLINOPAMPA', NULL, NULL),
(35, '10315', '1', '3', '15', 'MONTEVIDEO', NULL, NULL),
(36, '10316', '1', '3', '16', 'OLLEROS', NULL, NULL),
(37, '10317', '1', '3', '17', 'QUINJALCA', NULL, NULL),
(38, '10318', '1', '3', '18', 'SAN FRANCISCO DE DAGUAS', NULL, NULL),
(39, '10319', '1', '3', '19', 'SAN ISIDRO DE MAINO', NULL, NULL),
(40, '10321', '1', '3', '21', 'SOLOCO', NULL, NULL),
(41, '10322', '1', '3', '22', 'SONCHE', NULL, NULL),
(42, '10323', '1', '3', '23', 'AMAZONAS', NULL, NULL),
(43, '10400', '1', '4', '0', 'LUYA', NULL, NULL),
(44, '10401', '1', '4', '1', 'CAMPORREDONDO', NULL, NULL),
(45, '10402', '1', '4', '2', 'COCABAMBA', NULL, NULL),
(46, '10403', '1', '4', '3', 'COLCAMAR', NULL, NULL),
(47, '10404', '1', '4', '4', 'CONILA', NULL, NULL),
(48, '10405', '1', '4', '5', 'INGUILPATA', NULL, NULL),
(49, '10406', '1', '4', '6', 'LAMUD', NULL, NULL),
(50, '10407', '1', '4', '7', 'LONGUITA', NULL, NULL),
(51, '10408', '1', '4', '8', 'LONYA CHICO', NULL, NULL),
(52, '10409', '1', '4', '9', 'LUYA', NULL, NULL),
(53, '10410', '1', '4', '10', 'LUYA VIEJO', NULL, NULL),
(54, '10411', '1', '4', '11', 'MARIA', NULL, NULL),
(55, '10412', '1', '4', '12', 'OCALLI', NULL, NULL),
(56, '10413', '1', '4', '13', 'OCUMAL', NULL, NULL),
(57, '10414', '1', '4', '14', 'PISUQUIA', NULL, NULL),
(58, '10415', '1', '4', '15', 'SAN CRISTOBAL', NULL, NULL),
(59, '10416', '1', '4', '16', 'SAN FRANCISCO DEL YESO', NULL, NULL),
(60, '10417', '1', '4', '17', 'SAN JERONIMO', NULL, NULL),
(61, '10418', '1', '4', '18', 'SAN JUAN DE LOPECANCHA', NULL, NULL),
(62, '10419', '1', '4', '19', 'SANTA CATALINA', NULL, NULL),
(63, '10420', '1', '4', '20', 'SANTO TOMAS', NULL, NULL),
(64, '10421', '1', '4', '21', 'TINGO', NULL, NULL),
(65, '10422', '1', '4', '22', 'TRITA', NULL, NULL),
(66, '10423', '1', '4', '23', 'PROVIDENCIA', NULL, NULL),
(67, '10500', '1', '5', '0', 'RODRIGUEZ DE MENDOZA', NULL, NULL),
(68, '10501', '1', '5', '1', 'COCHAMAL', NULL, NULL),
(69, '10502', '1', '5', '2', 'CHIRIMOTO', NULL, NULL),
(70, '10503', '1', '5', '3', 'HUAMBO', NULL, NULL),
(71, '10504', '1', '5', '4', 'LIMABAMBA', NULL, NULL),
(72, '10505', '1', '5', '5', 'LONGAR', NULL, NULL),
(73, '10506', '1', '5', '6', 'MARISCAL BENAVIDES', NULL, NULL),
(74, '10507', '1', '5', '7', 'MILPUC', NULL, NULL),
(75, '10508', '1', '5', '8', 'OMIA', NULL, NULL),
(76, '10510', '1', '5', '10', 'SANTA ROSA', NULL, NULL),
(77, '10511', '1', '5', '11', 'TOTORA', NULL, NULL),
(78, '10513', '1', '5', '13', 'VISTA ALEGRE', NULL, NULL),
(79, '10514', '1', '5', '14', 'SAN NICOLAS', NULL, NULL),
(80, '10600', '1', '6', '0', 'CONDORCANQUI', NULL, NULL),
(81, '10601', '1', '6', '1', 'EL CENEPA', NULL, NULL),
(82, '10602', '1', '6', '2', 'NIEVA', NULL, NULL),
(83, '10603', '1', '6', '3', 'RIO SANTIAGO', NULL, NULL),
(84, '10700', '1', '7', '0', 'UTCUBAMBA', NULL, NULL),
(85, '10701', '1', '7', '1', 'BAGUA GRANDE', NULL, NULL),
(86, '10702', '1', '7', '2', 'CAJARURO', NULL, NULL),
(87, '10703', '1', '7', '3', 'CUMBA', NULL, NULL),
(88, '10704', '1', '7', '4', 'EL MILAGRO', NULL, NULL),
(89, '10705', '1', '7', '5', 'JAMALCA', NULL, NULL),
(90, '10706', '1', '7', '6', 'LONYA GRANDE', NULL, NULL),
(91, '10707', '1', '7', '7', 'YAMON', NULL, NULL),
(92, '20000', '2', '0', '0', 'ANCASH', NULL, NULL),
(93, '20100', '2', '1', '0', 'AIJA', NULL, NULL),
(94, '20101', '2', '1', '1', 'AIJA', NULL, NULL),
(95, '20103', '2', '1', '3', 'CORIS', NULL, NULL),
(96, '20104', '2', '1', '4', 'HUACLLAN', NULL, NULL),
(97, '20106', '2', '1', '6', 'LA MERCED', NULL, NULL),
(98, '20108', '2', '1', '8', 'SUCCHA', NULL, NULL),
(99, '20200', '2', '2', '0', 'ANTONIO RAYMONDI', NULL, NULL),
(100, '20201', '2', '2', '1', 'ACZO', NULL, NULL),
(101, '20202', '2', '2', '2', 'CHACCHO', NULL, NULL),
(102, '20203', '2', '2', '3', 'CHINGAS', NULL, NULL),
(103, '20204', '2', '2', '4', 'MIRGAS', NULL, NULL),
(104, '20205', '2', '2', '5', 'LLAMELLIN', NULL, NULL),
(105, '20207', '2', '2', '7', 'SAN JUAN DE RONTOY', NULL, NULL),
(106, '20300', '2', '3', '0', 'BOLOGNESI', NULL, NULL),
(107, '20301', '2', '3', '1', 'ABELARDO PARDO LEZAMETA', NULL, NULL),
(108, '20303', '2', '3', '3', 'AQUIA', NULL, NULL),
(109, '20304', '2', '3', '4', 'CAJACAY', NULL, NULL),
(110, '20306', '2', '3', '6', 'CANIS', NULL, NULL),
(111, '20309', '2', '3', '9', 'COLQUIOC', NULL, NULL),
(112, '20311', '2', '3', '11', 'CHIQUIAN', NULL, NULL),
(113, '20312', '2', '3', '12', 'HUASTA', NULL, NULL),
(114, '20313', '2', '3', '13', 'HUAYLLACAYAN', NULL, NULL),
(115, '20315', '2', '3', '15', 'MANGAS', NULL, NULL),
(116, '20317', '2', '3', '17', 'PACLLON', NULL, NULL),
(117, '20319', '2', '3', '19', 'SAN MIGUEL DE CORPANQUI', NULL, NULL),
(118, '20321', '2', '3', '21', 'TICLLOS', NULL, NULL),
(119, '20322', '2', '3', '22', 'ANTONIO RAYMONDI', NULL, NULL),
(120, '20323', '2', '3', '23', 'HUALLANCA', NULL, NULL),
(121, '20324', '2', '3', '24', 'LA PRIMAVERA', NULL, NULL),
(122, '20400', '2', '4', '0', 'CARHUAZ', NULL, NULL),
(123, '20401', '2', '4', '1', 'ACOPAMPA', NULL, NULL),
(124, '20402', '2', '4', '2', 'AMASHCA', NULL, NULL),
(125, '20403', '2', '4', '3', 'ANTA', NULL, NULL),
(126, '20404', '2', '4', '4', 'ATAQUERO', NULL, NULL),
(127, '20405', '2', '4', '5', 'CARHUAZ', NULL, NULL),
(128, '20406', '2', '4', '6', 'MARCARA', NULL, NULL),
(129, '20407', '2', '4', '7', 'PARIAHUANCA', NULL, NULL),
(130, '20408', '2', '4', '8', 'SAN MIGUEL DE ACO', NULL, NULL),
(131, '20409', '2', '4', '9', 'SHILLA', NULL, NULL),
(132, '20410', '2', '4', '10', 'TINCO', NULL, NULL),
(133, '20411', '2', '4', '11', 'YUNGAR', NULL, NULL),
(134, '20500', '2', '5', '0', 'CASMA', NULL, NULL),
(135, '20501', '2', '5', '1', 'BUENA VISTA ALTA', NULL, NULL),
(136, '20502', '2', '5', '2', 'CASMA', NULL, NULL),
(137, '20503', '2', '5', '3', 'COMANDANTE NOEL', NULL, NULL),
(138, '20505', '2', '5', '5', 'YAUTAN', NULL, NULL),
(139, '20600', '2', '6', '0', 'CORONGO', NULL, NULL),
(140, '20601', '2', '6', '1', 'ACO', NULL, NULL),
(141, '20602', '2', '6', '2', 'BAMBAS', NULL, NULL),
(142, '20603', '2', '6', '3', 'CORONGO', NULL, NULL),
(143, '20604', '2', '6', '4', 'CUSCA', NULL, NULL),
(144, '20605', '2', '6', '5', 'LA PAMPA', NULL, NULL),
(145, '20606', '2', '6', '6', 'YANAC', NULL, NULL),
(146, '20607', '2', '6', '7', 'YUPAN', NULL, NULL),
(147, '20700', '2', '7', '0', 'HUARAZ', NULL, NULL),
(148, '20701', '2', '7', '1', 'COCHABAMBA', NULL, NULL),
(149, '20702', '2', '7', '2', 'COLCABAMBA', NULL, NULL),
(150, '20703', '2', '7', '3', 'HUANCHAY', NULL, NULL),
(151, '20704', '2', '7', '4', 'HUARAZ', NULL, NULL),
(152, '20705', '2', '7', '5', 'JANGAS', NULL, NULL),
(153, '20706', '2', '7', '6', 'LA LIBERTAD', NULL, NULL),
(154, '20707', '2', '7', '7', 'OLLEROS', NULL, NULL),
(155, '20708', '2', '7', '8', 'PAMPAS', NULL, NULL),
(156, '20709', '2', '7', '9', 'PARIACOTO', NULL, NULL),
(157, '20710', '2', '7', '10', 'PIRA', NULL, NULL),
(158, '20711', '2', '7', '11', 'TARICA', NULL, NULL),
(159, '20712', '2', '7', '12', 'INDEPENDECIA', NULL, NULL),
(160, '20800', '2', '8', '0', 'HUARI', NULL, NULL),
(161, '20801', '2', '8', '1', 'CAJAY', NULL, NULL),
(162, '20803', '2', '8', '3', 'CHAVIN DE HUANTAR', NULL, NULL),
(163, '20804', '2', '8', '4', 'HUACACHI', NULL, NULL),
(164, '20805', '2', '8', '5', 'HUACCHIS', NULL, NULL),
(165, '20806', '2', '8', '6', 'HUACHIS', NULL, NULL),
(166, '20807', '2', '8', '7', 'HUARI', NULL, NULL),
(167, '20808', '2', '8', '8', 'HUANTAR', NULL, NULL),
(168, '20809', '2', '8', '9', 'MASIN', NULL, NULL),
(169, '20810', '2', '8', '10', 'PAUCAS', NULL, NULL),
(170, '20811', '2', '8', '11', 'PONTO', NULL, NULL),
(171, '20812', '2', '8', '12', 'RAHUAPAMPA', NULL, NULL),
(172, '20813', '2', '8', '13', 'RAPAYAN', NULL, NULL),
(173, '20815', '2', '8', '15', 'SAN MARCOS', NULL, NULL),
(174, '20816', '2', '8', '16', 'SAN PEDRO DE CHANA', NULL, NULL),
(175, '20817', '2', '8', '17', 'UCO', NULL, NULL),
(176, '20818', '2', '8', '18', 'ANRA', NULL, NULL),
(177, '20900', '2', '9', '0', 'HUAYLAS', NULL, NULL),
(178, '20901', '2', '9', '1', 'CARAZ', NULL, NULL),
(179, '20902', '2', '9', '2', 'HUALLANCA', NULL, NULL),
(180, '20903', '2', '9', '3', 'HUATA', NULL, NULL),
(181, '20904', '2', '9', '4', 'HUAYLAS', NULL, NULL),
(182, '20905', '2', '9', '5', 'MATO', NULL, NULL),
(183, '20906', '2', '9', '6', 'PAMPAROMAS', NULL, NULL),
(184, '20907', '2', '9', '7', 'PUEBLO LIBRE', NULL, NULL),
(185, '20908', '2', '9', '8', 'SANTA CRUZ', NULL, NULL),
(186, '20909', '2', '9', '9', 'YURACMARCA', NULL, NULL),
(187, '20910', '2', '9', '10', 'SANTO TORIBIO', NULL, NULL),
(188, '21000', '2', '10', '0', 'MARISCAL LUZURIAGA', NULL, NULL),
(189, '21001', '2', '10', '1', 'CASCA', NULL, NULL),
(190, '21002', '2', '10', '2', 'FIDEL OLIVAS ESCUDERO', NULL, NULL),
(191, '21003', '2', '10', '3', 'LUCMA', NULL, NULL),
(192, '21004', '2', '10', '4', 'LLAMA', NULL, NULL),
(193, '21005', '2', '10', '5', 'LLUMPA', NULL, NULL),
(194, '21007', '2', '10', '7', 'MUSGA', NULL, NULL),
(195, '21008', '2', '10', '8', 'PISCOBAMBA', NULL, NULL),
(196, '21010', '2', '10', '10', 'ELEAZAR GUZMAN BARRON', NULL, NULL),
(197, '21100', '2', '11', '0', 'PALLASCA', NULL, NULL),
(198, '21101', '2', '11', '1', 'BOLOGNESI', NULL, NULL),
(199, '21102', '2', '11', '2', 'CABANA', NULL, NULL),
(200, '21104', '2', '11', '4', 'CONCHUCOS', NULL, NULL),
(201, '21105', '2', '11', '5', 'HUACASCHUQUE', NULL, NULL),
(202, '21106', '2', '11', '6', 'HUANDOVAL', NULL, NULL),
(203, '21107', '2', '11', '7', 'LACABAMBA', NULL, NULL),
(204, '21108', '2', '11', '8', 'LLAPO', NULL, NULL),
(205, '21109', '2', '11', '9', 'PALLASCA', NULL, NULL),
(206, '21110', '2', '11', '10', 'PAMPAS', NULL, NULL),
(207, '21111', '2', '11', '11', 'SANTA ROSA', NULL, NULL),
(208, '21112', '2', '11', '12', 'TAUCA', NULL, NULL),
(209, '21200', '2', '12', '0', 'POMABAMBA', NULL, NULL),
(210, '21201', '2', '12', '1', 'HUAYLLAN', NULL, NULL),
(211, '21202', '2', '12', '2', 'PAROBAMBA', NULL, NULL),
(212, '21203', '2', '12', '3', 'POMABAMBA', NULL, NULL),
(213, '21204', '2', '12', '4', 'QUINUABAMBA', NULL, NULL),
(214, '21300', '2', '13', '0', 'RECUAY', NULL, NULL),
(215, '21301', '2', '13', '1', 'CATAC', NULL, NULL),
(216, '21302', '2', '13', '2', 'COTAPARACO', NULL, NULL),
(217, '21303', '2', '13', '3', 'HUAYLLAPAMPA', NULL, NULL),
(218, '21304', '2', '13', '4', 'LLACLLIN', NULL, NULL),
(219, '21305', '2', '13', '5', 'MARCA', NULL, NULL),
(220, '21306', '2', '13', '6', 'PAMPAS CHICO', NULL, NULL),
(221, '21307', '2', '13', '7', 'PARARIN', NULL, NULL),
(222, '21308', '2', '13', '8', 'RECUAY', NULL, NULL),
(223, '21309', '2', '13', '9', 'TAPACOCHA', NULL, NULL),
(224, '21310', '2', '13', '10', 'TICAPAMPA', NULL, NULL),
(225, '21400', '2', '14', '0', 'SANTA', NULL, NULL),
(226, '21401', '2', '14', '1', 'CACERES DEL PERU', NULL, NULL),
(227, '21402', '2', '14', '2', 'CHIMBOTE', NULL, NULL),
(228, '21403', '2', '14', '3', 'MACATE', NULL, NULL),
(229, '21404', '2', '14', '4', 'MORO', NULL, NULL),
(230, '21405', '2', '14', '5', 'NEPENA', NULL, NULL),
(231, '21406', '2', '14', '6', 'SAMANCO', NULL, NULL),
(232, '21407', '2', '14', '7', 'SANTA', NULL, NULL),
(233, '21408', '2', '14', '8', 'COISHCO', NULL, NULL),
(234, '21409', '2', '14', '9', 'NUEVO CHIMBOTE', NULL, NULL),
(235, '21500', '2', '15', '0', 'SIHUAS', NULL, NULL),
(236, '21501', '2', '15', '1', 'ACOBAMBA', NULL, NULL),
(237, '21502', '2', '15', '2', 'ALFONSO UGARTE', NULL, NULL),
(238, '21503', '2', '15', '3', 'CASHAPAMPA', NULL, NULL),
(239, '21504', '2', '15', '4', 'CHINGALPO', NULL, NULL),
(240, '21505', '2', '15', '5', 'HUAYLLABAMBA', NULL, NULL),
(241, '21506', '2', '15', '6', 'QUICHES', NULL, NULL),
(242, '21507', '2', '15', '7', 'RAGASH', NULL, NULL),
(243, '21508', '2', '15', '8', 'SAN JUAN DE CHULLIN', NULL, NULL),
(244, '21509', '2', '15', '9', 'SICSIBAMBA', NULL, NULL),
(245, '21510', '2', '15', '10', 'SIHUAS', NULL, NULL),
(246, '21600', '2', '16', '0', 'YUNGAY', NULL, NULL),
(247, '21601', '2', '16', '1', 'CASCAPARA', NULL, NULL),
(248, '21602', '2', '16', '2', 'MANCOS', NULL, NULL),
(249, '21603', '2', '16', '3', 'MATACOTO', NULL, NULL),
(250, '21604', '2', '16', '4', 'QUILLO', NULL, NULL),
(251, '21605', '2', '16', '5', 'RANRAHIRCA', NULL, NULL),
(252, '21606', '2', '16', '6', 'SHUPLUY', NULL, NULL),
(253, '21607', '2', '16', '7', 'YANAMA', NULL, NULL),
(254, '21608', '2', '16', '8', 'YUNGAY', NULL, NULL),
(255, '21700', '2', '17', '0', 'ASUNCION', NULL, NULL),
(256, '21701', '2', '17', '1', 'ACOCHACA', NULL, NULL),
(257, '21702', '2', '17', '2', 'CHACAS', NULL, NULL),
(258, '21800', '2', '18', '0', 'CARLOS F. FITZCARRALD', NULL, NULL),
(259, '21801', '2', '18', '1', 'SAN LUIS', NULL, NULL),
(260, '21802', '2', '18', '2', 'SAN NICOLAS', NULL, NULL),
(261, '21803', '2', '18', '3', 'YAUYA', NULL, NULL),
(262, '21900', '2', '19', '0', 'HUARMEY', NULL, NULL),
(263, '21901', '2', '19', '1', 'COCHAPETI', NULL, NULL),
(264, '21902', '2', '19', '2', 'CULEBRAS', NULL, NULL),
(265, '21903', '2', '19', '3', 'HUARMEY', NULL, NULL),
(266, '21904', '2', '19', '4', 'HUAYAN', NULL, NULL),
(267, '21905', '2', '19', '5', 'MALVAS', NULL, NULL),
(268, '22000', '2', '20', '0', 'OCROS', NULL, NULL),
(269, '22001', '2', '20', '1', 'ACAS', NULL, NULL),
(270, '22002', '2', '20', '2', 'CAJAMARQUILLA', NULL, NULL),
(271, '22003', '2', '20', '3', 'CARHUAPAMPA', NULL, NULL),
(272, '22004', '2', '20', '4', 'COCHAS', NULL, NULL),
(273, '22005', '2', '20', '5', 'CONGAS', NULL, NULL),
(274, '22006', '2', '20', '6', 'LLIPAS', NULL, NULL),
(275, '22007', '2', '20', '7', 'OCROS', NULL, NULL),
(276, '22008', '2', '20', '8', 'SAN CRISTOBAL DE BAJAN', NULL, NULL),
(277, '22009', '2', '20', '9', 'SAN PEDRO', NULL, NULL),
(278, '22010', '2', '20', '10', 'SANTIAGO DE CHILCAS', NULL, NULL),
(279, '30000', '3', '0', '0', 'APURIMAC', NULL, NULL),
(280, '30100', '3', '1', '0', 'ABANCAY', NULL, NULL),
(281, '30101', '3', '1', '1', 'ABANCAY', NULL, NULL),
(282, '30102', '3', '1', '2', 'CHACOCHE', NULL, NULL),
(283, '30103', '3', '1', '3', 'CIRCA', NULL, NULL),
(284, '30104', '3', '1', '4', 'CURAHUASI', NULL, NULL),
(285, '30105', '3', '1', '5', 'HUANIPACA', NULL, NULL),
(286, '30106', '3', '1', '6', 'LAMBRAMA', NULL, NULL),
(287, '30107', '3', '1', '7', 'PICHIRHUA', NULL, NULL),
(288, '30108', '3', '1', '8', 'SAN PEDRO DE CACHORA', NULL, NULL),
(289, '30109', '3', '1', '9', 'TAMBURCO', NULL, NULL),
(290, '30200', '3', '2', '0', 'AYMARAES', NULL, NULL),
(291, '30201', '3', '2', '1', 'CAPAYA', NULL, NULL),
(292, '30202', '3', '2', '2', 'CARAYBAMBA', NULL, NULL),
(293, '30203', '3', '2', '3', 'CHALHUANCA', NULL, NULL),
(294, '30204', '3', '2', '4', 'CHAPIMARCA', NULL, NULL),
(295, '30205', '3', '2', '5', 'COLCABAMBA', NULL, NULL),
(296, '30206', '3', '2', '6', 'COTARUSE', NULL, NULL),
(297, '30207', '3', '2', '7', 'HUAYLLO', NULL, NULL),
(298, '30208', '3', '2', '8', 'JUSTO APU SAHUARAURA', NULL, NULL),
(299, '30209', '3', '2', '9', 'LUCRE', NULL, NULL),
(300, '30210', '3', '2', '10', 'POCOHUANCA', NULL, NULL),
(301, '30211', '3', '2', '11', 'SAN JUAN DE CHACNA', NULL, NULL),
(302, '30212', '3', '2', '12', 'SANAYCA', NULL, NULL),
(303, '30213', '3', '2', '13', 'SORAYA', NULL, NULL),
(304, '30214', '3', '2', '14', 'TAPAIRIHUA', NULL, NULL),
(305, '30215', '3', '2', '15', 'TINTAY', NULL, NULL),
(306, '30216', '3', '2', '16', 'TORAYA', NULL, NULL),
(307, '30217', '3', '2', '17', 'YANACA', NULL, NULL),
(308, '30300', '3', '3', '0', 'ANDAHUAYLAS', NULL, NULL),
(309, '30301', '3', '3', '1', 'ANDAHUAYLAS', NULL, NULL),
(310, '30302', '3', '3', '2', 'ANDARAPA', NULL, NULL),
(311, '30303', '3', '3', '3', 'CHIARA', NULL, NULL),
(312, '30304', '3', '3', '4', 'HUANCARAMA', NULL, NULL),
(313, '30305', '3', '3', '5', 'HUANCARAY', NULL, NULL),
(314, '30306', '3', '3', '6', 'HUAYANA', NULL, NULL),
(315, '30307', '3', '3', '7', 'KAQUIABAMBA', NULL, NULL),
(316, '30308', '3', '3', '8', 'KISHUARA', NULL, NULL),
(317, '30309', '3', '3', '9', 'PACOBAMBA', NULL, NULL),
(318, '30310', '3', '3', '10', 'PACUCHA', NULL, NULL),
(319, '30311', '3', '3', '11', 'PAMPACHIRI', NULL, NULL),
(320, '30312', '3', '3', '12', 'POMACOCHA', NULL, NULL),
(321, '30313', '3', '3', '13', 'SAN ANTONIO DE CACHI', NULL, NULL),
(322, '30314', '3', '3', '14', 'SAN JERONIMO', NULL, NULL),
(323, '30315', '3', '3', '15', 'SAN MIGUEL DE CHACCRAMP', NULL, NULL),
(324, '30316', '3', '3', '16', 'SANTA MARIA DE CHICMO', NULL, NULL),
(325, '30317', '3', '3', '17', 'TALAVERA', NULL, NULL),
(326, '30318', '3', '3', '18', 'TUMAY HUARACA', NULL, NULL),
(327, '30319', '3', '3', '19', 'TURPO', NULL, NULL),
(328, '30400', '3', '4', '0', 'ANTABAMBA', NULL, NULL),
(329, '30401', '3', '4', '1', 'ANTABAMBA', NULL, NULL),
(330, '30402', '3', '4', '2', 'EL ORO', NULL, NULL),
(331, '30403', '3', '4', '3', 'HUAQUIRCA', NULL, NULL),
(332, '30404', '3', '4', '4', 'JUAN ESPINOZA MEDRANO', NULL, NULL),
(333, '30405', '3', '4', '5', 'OROPESA', NULL, NULL),
(334, '30406', '3', '4', '6', 'PACHACONAS', NULL, NULL),
(335, '30407', '3', '4', '7', 'SABAINO', NULL, NULL),
(336, '30500', '3', '5', '0', 'COTABAMBAS', NULL, NULL),
(337, '30501', '3', '5', '1', 'CHALLHUAHUACHO', NULL, NULL),
(338, '30502', '3', '5', '2', 'COTABAMBAS', NULL, NULL),
(339, '30503', '3', '5', '3', 'COYLLURQUI', NULL, NULL),
(340, '30504', '3', '5', '4', 'HAQUIRA', NULL, NULL),
(341, '30505', '3', '5', '5', 'MARA', NULL, NULL),
(342, '30506', '3', '5', '6', 'TAMBOBAMBA', NULL, NULL),
(343, '30600', '3', '6', '0', 'GRAU', NULL, NULL),
(344, '30601', '3', '6', '1', 'CHUQUIBAMBILLA', NULL, NULL),
(345, '30602', '3', '6', '2', 'CURASCO', NULL, NULL),
(346, '30603', '3', '6', '3', 'CURPAHUASI', NULL, NULL),
(347, '30604', '3', '6', '4', 'GAMARRA', NULL, NULL),
(348, '30605', '3', '6', '5', 'HUAYLLATI', NULL, NULL),
(349, '30606', '3', '6', '6', 'MAMARA', NULL, NULL),
(350, '30607', '3', '6', '7', 'MICAELA BASTIDAS', NULL, NULL),
(351, '30608', '3', '6', '8', 'PATAYPAMPA', NULL, NULL),
(352, '30609', '3', '6', '9', 'PROGRESOS', NULL, NULL),
(353, '30610', '3', '6', '10', 'SAN ANTONIO', NULL, NULL),
(354, '30611', '3', '6', '11', 'SANTA ROSA', NULL, NULL),
(355, '30612', '3', '6', '12', 'TURPAY', NULL, NULL),
(356, '30613', '3', '6', '13', 'VILCABAMBA', NULL, NULL),
(357, '30614', '3', '6', '14', 'VIRUNDO', NULL, NULL),
(358, '30700', '3', '7', '0', 'CHINCHEROS', NULL, NULL),
(359, '30701', '3', '7', '1', 'ACOBAMBA', NULL, NULL),
(360, '30702', '3', '7', '2', 'ANCO HUALLO', NULL, NULL),
(361, '30703', '3', '7', '3', 'CHINCHEROS', NULL, NULL),
(362, '30704', '3', '7', '4', 'COCHARCAS', NULL, NULL),
(363, '30705', '3', '7', '5', 'HUACCANA', NULL, NULL),
(364, '30706', '3', '7', '6', 'ONGOY', NULL, NULL),
(365, '30707', '3', '7', '7', 'RANRACANCHA', NULL, NULL),
(366, '30708', '3', '7', '8', 'URANMARCA', NULL, NULL),
(367, '40000', '4', '0', '0', 'AREQUIPA', NULL, NULL),
(368, '40100', '4', '1', '0', 'AREQUIPA', NULL, NULL),
(369, '40101', '4', '1', '1', 'AREQUIPA - CERCADO', NULL, NULL),
(370, '40102', '4', '1', '2', 'CAYMA', NULL, NULL),
(371, '40103', '4', '1', '3', 'CERRO COLORADO', NULL, NULL),
(372, '40104', '4', '1', '4', 'CHARACATO', NULL, NULL),
(373, '40105', '4', '1', '5', 'CHIHUATA', NULL, NULL),
(374, '40106', '4', '1', '6', 'LA JOYA', NULL, NULL),
(375, '40107', '4', '1', '7', 'MARIANO MELGAR', NULL, NULL),
(376, '40108', '4', '1', '8', 'MIRAFLORES', NULL, NULL),
(377, '40109', '4', '1', '9', 'MOLLEBAYA', NULL, NULL),
(378, '40110', '4', '1', '10', 'PAUCARPATA', NULL, NULL),
(379, '40111', '4', '1', '11', 'POCSI', NULL, NULL),
(380, '40112', '4', '1', '12', 'POLOBAYA', NULL, NULL),
(381, '40113', '4', '1', '13', 'QUEQUENA', NULL, NULL),
(382, '40114', '4', '1', '14', 'SABANDIA', NULL, NULL),
(383, '40115', '4', '1', '15', 'SACHACA', NULL, NULL),
(384, '40116', '4', '1', '16', 'SAN JUAN DE SIHUAS', NULL, NULL),
(385, '40117', '4', '1', '17', 'SAN JUAN DE TARUCANI', NULL, NULL),
(386, '40118', '4', '1', '18', 'SANTA ISABEL DE SIGUAS', NULL, NULL),
(387, '40119', '4', '1', '19', 'SANTA RITA DE SIGUAS', NULL, NULL),
(388, '40120', '4', '1', '20', 'SOCABAYA', NULL, NULL),
(389, '40121', '4', '1', '21', 'TIABAYA', NULL, NULL),
(390, '40122', '4', '1', '22', 'UCHUMAYO', NULL, NULL),
(391, '40123', '4', '1', '23', 'VITOR', NULL, NULL),
(392, '40124', '4', '1', '24', 'YANAHUARA', NULL, NULL),
(393, '40125', '4', '1', '25', 'YARABAMBA', NULL, NULL),
(394, '40126', '4', '1', '26', 'YURA', NULL, NULL),
(395, '40127', '4', '1', '27', 'ALTO SELVA ALEGRE', NULL, NULL),
(396, '40128', '4', '1', '28', 'JACOBO HUNTER', NULL, NULL),
(397, '40129', '4', '1', '29', 'J.L. BUSTAMANTE Y RIVERO', NULL, NULL),
(398, '40200', '4', '2', '0', 'CAYLLOMA', NULL, NULL),
(399, '40201', '4', '2', '1', 'CABANACONDE', NULL, NULL),
(400, '40202', '4', '2', '2', 'CALLALLI', NULL, NULL),
(401, '40203', '4', '2', '3', 'CAYLLOMA', NULL, NULL),
(402, '40204', '4', '2', '4', 'COPORAQUE', NULL, NULL),
(403, '40205', '4', '2', '5', 'CHIVAY', NULL, NULL),
(404, '40206', '4', '2', '6', 'HUAMBO', NULL, NULL),
(405, '40207', '4', '2', '7', 'HUANCA', NULL, NULL),
(406, '40208', '4', '2', '8', 'ICHUPAMPA', NULL, NULL),
(407, '40209', '4', '2', '9', 'LARI', NULL, NULL),
(408, '40210', '4', '2', '10', 'LLUTA', NULL, NULL),
(409, '40211', '4', '2', '11', 'MACA', NULL, NULL),
(410, '40212', '4', '2', '12', 'MADRIGAL', NULL, NULL),
(411, '40214', '4', '2', '14', 'SAN ANTONIO DE CHUCA', NULL, NULL),
(412, '40215', '4', '2', '15', 'SIBAYO', NULL, NULL),
(413, '40216', '4', '2', '16', 'TAPAY', NULL, NULL),
(414, '40217', '4', '2', '17', 'TISCO', NULL, NULL),
(415, '40218', '4', '2', '18', 'TUTI', NULL, NULL),
(416, '40219', '4', '2', '19', 'YANQUE', NULL, NULL),
(417, '40220', '4', '2', '20', 'ACHOMA', NULL, NULL),
(418, '40300', '4', '3', '0', 'CAMANA', NULL, NULL),
(419, '40301', '4', '3', '1', 'CAMANA', NULL, NULL),
(420, '40302', '4', '3', '2', 'JOSE MARIA QUIMPER', NULL, NULL),
(421, '40303', '4', '3', '3', 'MARIANO NICOLAS VALCARCEL', NULL, NULL),
(422, '40304', '4', '3', '4', 'MARISCAL CACERES', NULL, NULL),
(423, '40305', '4', '3', '5', 'NICOLAS DE PIEROLA', NULL, NULL),
(424, '40306', '4', '3', '6', 'OCOÑA', NULL, NULL),
(425, '40307', '4', '3', '7', 'QUILCA', NULL, NULL),
(426, '40308', '4', '3', '8', 'SAMUEL PASTOR', NULL, NULL),
(427, '40400', '4', '4', '0', 'CARAVELI', NULL, NULL),
(428, '40401', '4', '4', '1', 'ACARI', NULL, NULL),
(429, '40402', '4', '4', '2', 'ATICO', NULL, NULL),
(430, '40403', '4', '4', '3', 'ATIQUIPA', NULL, NULL),
(431, '40404', '4', '4', '4', 'BELLA UNION', NULL, NULL),
(432, '40405', '4', '4', '5', 'CAHUACHO', NULL, NULL),
(433, '40406', '4', '4', '6', 'CARAVELI', NULL, NULL),
(434, '40407', '4', '4', '7', 'CHALA', NULL, NULL),
(435, '40408', '4', '4', '8', 'CHAPARRA', NULL, NULL),
(436, '40409', '4', '4', '9', 'HUANUHUANU', NULL, NULL),
(437, '40410', '4', '4', '10', 'JAQUI', NULL, NULL),
(438, '40411', '4', '4', '11', 'LOMAS', NULL, NULL),
(439, '40412', '4', '4', '12', 'QUICACHA', NULL, NULL),
(440, '40413', '4', '4', '13', 'YAUCA', NULL, NULL),
(441, '40500', '4', '5', '0', 'CASTILLA', NULL, NULL),
(442, '40501', '4', '5', '1', 'ANDAHUA', NULL, NULL),
(443, '40502', '4', '5', '2', 'APLAO', NULL, NULL),
(444, '40503', '4', '5', '3', 'AYO', NULL, NULL),
(445, '40504', '4', '5', '4', 'CHACHAS', NULL, NULL),
(446, '40505', '4', '5', '5', 'CHILCAYMARCA', NULL, NULL),
(447, '40506', '4', '5', '6', 'CHOCO', NULL, NULL),
(448, '40507', '4', '5', '7', 'HUANCARQUI', NULL, NULL),
(449, '40508', '4', '5', '8', 'MACHAHUAY', NULL, NULL),
(450, '40509', '4', '5', '9', 'ORCOPAMPA', NULL, NULL),
(451, '40510', '4', '5', '10', 'PAMPACOLCA', NULL, NULL),
(452, '40511', '4', '5', '11', 'TIPAN', NULL, NULL),
(453, '40512', '4', '5', '12', 'UÑON', NULL, NULL),
(454, '40513', '4', '5', '13', 'URACA', NULL, NULL),
(455, '40514', '4', '5', '14', 'VIRACO', NULL, NULL),
(456, '40600', '4', '6', '0', 'CONDESUYOS', NULL, NULL),
(457, '40601', '4', '6', '1', 'ANDARAY', NULL, NULL),
(458, '40602', '4', '6', '2', 'CAYARANI', NULL, NULL),
(459, '40603', '4', '6', '3', 'CHICHAS', NULL, NULL),
(460, '40604', '4', '6', '4', 'CHUQUIBAMBA', NULL, NULL),
(461, '40605', '4', '6', '5', 'IRAY', NULL, NULL),
(462, '40606', '4', '6', '6', 'SALAMANCA', NULL, NULL),
(463, '40607', '4', '6', '7', 'YANAQUIHUA', NULL, NULL),
(464, '40608', '4', '6', '8', 'RIO GRANDE', NULL, NULL),
(465, '40700', '4', '7', '0', 'ISLAY', NULL, NULL),
(466, '40701', '4', '7', '1', 'COCACHACRA', NULL, NULL),
(467, '40702', '4', '7', '2', 'DEAN VALDIVIA', NULL, NULL),
(468, '40703', '4', '7', '3', 'ISLAY', NULL, NULL),
(469, '40704', '4', '7', '4', 'MEJIA', NULL, NULL),
(470, '40705', '4', '7', '5', 'MOLLENDO', NULL, NULL),
(471, '40706', '4', '7', '6', 'PUNTA DE BOMBON', NULL, NULL),
(472, '40800', '4', '8', '0', 'LA UNION', NULL, NULL),
(473, '40801', '4', '8', '1', 'ALCA', NULL, NULL),
(474, '40802', '4', '8', '2', 'COTAHUASI', NULL, NULL),
(475, '40803', '4', '8', '3', 'CHARCANA', NULL, NULL),
(476, '40804', '4', '8', '4', 'HUAYNACOTAS', NULL, NULL),
(477, '40805', '4', '8', '5', 'PAMPAMARCA', NULL, NULL),
(478, '40806', '4', '8', '6', 'PUICA', NULL, NULL),
(479, '40807', '4', '8', '7', 'QUECHUALLA', NULL, NULL),
(480, '40808', '4', '8', '8', 'SAYLA', NULL, NULL),
(481, '40809', '4', '8', '9', 'TAURIA', NULL, NULL),
(482, '40810', '4', '8', '10', 'TOMEPAMPA', NULL, NULL),
(483, '40811', '4', '8', '11', 'TORO', NULL, NULL),
(484, '50000', '5', '0', '0', 'AYACUCHO', NULL, NULL),
(485, '50100', '5', '1', '0', 'CANGALLO', NULL, NULL),
(486, '50101', '5', '1', '1', 'CANGALLO', NULL, NULL),
(487, '50102', '5', '1', '2', 'CHUSCHI', NULL, NULL),
(488, '50103', '5', '1', '3', 'LOS MOROCHUCOS', NULL, NULL),
(489, '50104', '5', '1', '4', 'MARIA PARADO DE BELLIDO', NULL, NULL),
(490, '50105', '5', '1', '5', 'PARAS', NULL, NULL),
(491, '50106', '5', '1', '6', 'TOTOS', NULL, NULL),
(492, '50200', '5', '2', '0', 'HUAMANGA', NULL, NULL),
(493, '50201', '5', '2', '1', 'ACOCRO', NULL, NULL),
(494, '50202', '5', '2', '2', 'ACOS VINCHOS', NULL, NULL),
(495, '50203', '5', '2', '3', 'AYACUCHO', NULL, NULL),
(496, '50204', '5', '2', '4', 'CARMEN ALTO', NULL, NULL),
(497, '50205', '5', '2', '5', 'CHIARA', NULL, NULL),
(498, '50206', '5', '2', '6', 'OCROS', NULL, NULL),
(499, '50207', '5', '2', '7', 'PACAYCASA', NULL, NULL),
(500, '50208', '5', '2', '8', 'QUINUA', NULL, NULL),
(501, '50209', '5', '2', '9', 'SAN JOSE DE TICLLAS', NULL, NULL),
(502, '50210', '5', '2', '10', 'SAN JUAN BAUTISTA', NULL, NULL),
(503, '50211', '5', '2', '11', 'SANTIAGO DE PISCHA', NULL, NULL),
(504, '50212', '5', '2', '12', 'SOCOS', NULL, NULL),
(505, '50213', '5', '2', '13', 'TAMBILLO', NULL, NULL),
(506, '50214', '5', '2', '14', 'VINCHOS', NULL, NULL),
(507, '50300', '5', '3', '0', 'HUANCA SANCOS', NULL, NULL),
(508, '50301', '5', '3', '1', 'CARAPO', NULL, NULL),
(509, '50302', '5', '3', '2', 'SACSAMARCA', NULL, NULL),
(510, '50303', '5', '3', '3', 'SANCOS', NULL, NULL),
(511, '50304', '5', '3', '4', 'SANTIAGO DE LUCANAMARCA', NULL, NULL),
(512, '50400', '5', '4', '0', 'HUANTA', NULL, NULL),
(513, '50401', '5', '4', '1', 'AYAHUANCO', NULL, NULL),
(514, '50402', '5', '4', '2', 'HUAMANGUILLA', NULL, NULL),
(515, '50403', '5', '4', '3', 'HUANTA', NULL, NULL),
(516, '50404', '5', '4', '4', 'IGUAIN', NULL, NULL),
(517, '50405', '5', '4', '5', 'LURICOCHA', NULL, NULL),
(518, '50406', '5', '4', '6', 'SANTILLANA', NULL, NULL),
(519, '50407', '5', '4', '7', 'SIVIA', NULL, NULL),
(520, '50500', '5', '5', '0', 'LA MAR', NULL, NULL),
(521, '50501', '5', '5', '1', 'ANCO', NULL, NULL),
(522, '50502', '5', '5', '2', 'AYNA', NULL, NULL),
(523, '50503', '5', '5', '3', 'CHILCAS', NULL, NULL),
(524, '50504', '5', '5', '4', 'CHUNGUI', NULL, NULL),
(525, '50505', '5', '5', '5', 'LUIS CARRANZA', NULL, NULL),
(526, '50506', '5', '5', '6', 'SAN MIGUEL', NULL, NULL),
(527, '50507', '5', '5', '7', 'SANTA ROSA', NULL, NULL),
(528, '50508', '5', '5', '8', 'TAMBO', NULL, NULL),
(529, '50600', '5', '6', '0', 'LUCANAS', NULL, NULL),
(530, '50601', '5', '6', '1', 'AUCARA', NULL, NULL),
(531, '50602', '5', '6', '2', 'CABANA', NULL, NULL),
(532, '50603', '5', '6', '3', 'CARMEN SALCEDO', NULL, NULL),
(533, '50604', '5', '6', '4', 'CHAVINA', NULL, NULL),
(534, '50605', '5', '6', '5', 'CHIPAO', NULL, NULL),
(535, '50606', '5', '6', '6', 'HUAC HUAS', NULL, NULL),
(536, '50607', '5', '6', '7', 'LARAMATE', NULL, NULL),
(537, '50608', '5', '6', '8', 'LEONCIO PRADO', NULL, NULL),
(538, '50609', '5', '6', '9', 'LLAUTA', NULL, NULL),
(539, '50610', '5', '6', '10', 'LUCANAS', NULL, NULL),
(540, '50611', '5', '6', '11', 'OCAÑA', NULL, NULL),
(541, '50612', '5', '6', '12', 'OTOCA', NULL, NULL),
(542, '50613', '5', '6', '13', 'PUQUIO', NULL, NULL),
(543, '50614', '5', '6', '14', 'SAISA', NULL, NULL),
(544, '50615', '5', '6', '15', 'SAN CRISTOBAL', NULL, NULL),
(545, '50616', '5', '6', '16', 'SAN JUAN', NULL, NULL),
(546, '50617', '5', '6', '17', 'SAN PEDRO', NULL, NULL),
(547, '50618', '5', '6', '18', 'SAN PEDRO DE PALCO', NULL, NULL),
(548, '50619', '5', '6', '19', 'SANCOS', NULL, NULL),
(549, '50620', '5', '6', '20', 'SANTA ANA DE HUAYCAHUACHO', NULL, NULL),
(550, '50621', '5', '6', '21', 'SANTA LUCIA', NULL, NULL),
(551, '50700', '5', '7', '0', 'PARINACOCHAS', NULL, NULL),
(552, '50701', '5', '7', '1', 'CHUMPI', NULL, NULL),
(553, '50702', '5', '7', '2', 'CORACORA', NULL, NULL),
(554, '50703', '5', '7', '3', 'CORONEL CASTANEDA', NULL, NULL),
(555, '50704', '5', '7', '4', 'PACAPAUSA', NULL, NULL),
(556, '50705', '5', '7', '5', 'PULLO', NULL, NULL),
(557, '50706', '5', '7', '6', 'PUYUSCA', NULL, NULL),
(558, '50707', '5', '7', '7', 'SAN FRANCISCO DE RAVACAYC', NULL, NULL),
(559, '50708', '5', '7', '8', 'UPAHUACHO', NULL, NULL),
(560, '50800', '5', '8', '0', 'PAUCAR DEL SARA SARA', NULL, NULL),
(561, '50801', '5', '8', '1', 'COLTA', NULL, NULL),
(562, '50802', '5', '8', '2', 'CORCULLA', NULL, NULL),
(563, '50803', '5', '8', '3', 'LAMPA', NULL, NULL),
(564, '50804', '5', '8', '4', 'MARCABAMBA', NULL, NULL),
(565, '50805', '5', '8', '5', 'OYOLO', NULL, NULL),
(566, '50806', '5', '8', '6', 'PARARCA', NULL, NULL),
(567, '50807', '5', '8', '7', 'PAUSA', NULL, NULL),
(568, '50808', '5', '8', '8', 'SAN JAVIER DE ALPABAMBA', NULL, NULL),
(569, '50809', '5', '8', '9', 'SAN JOSE DE USHUA', NULL, NULL),
(570, '50810', '5', '8', '10', 'SARA SARA', NULL, NULL),
(571, '50900', '5', '9', '0', 'SUCRE', NULL, NULL),
(572, '50901', '5', '9', '1', 'BELEN', NULL, NULL),
(573, '50902', '5', '9', '2', 'CHALCOS', NULL, NULL),
(574, '50903', '5', '9', '3', 'CHILCAYOC', NULL, NULL),
(575, '50904', '5', '9', '4', 'HUACA¥A', NULL, NULL),
(576, '50905', '5', '9', '5', 'MARCOLLA', NULL, NULL),
(577, '50906', '5', '9', '6', 'PAICO', NULL, NULL),
(578, '50907', '5', '9', '7', 'QUEROBAMBA', NULL, NULL),
(579, '50908', '5', '9', '8', 'SAN PEDRO DE LUCAY', NULL, NULL),
(580, '50909', '5', '9', '9', 'SAN SALVADOR DE QUIJE', NULL, NULL),
(581, '50910', '5', '9', '10', 'SANTIAGO DE PAUCARAY', NULL, NULL),
(582, '50911', '5', '9', '11', 'SORAS', NULL, NULL),
(583, '51000', '5', '10', '0', 'VICTOR FAJARDO', NULL, NULL),
(584, '51001', '5', '10', '1', 'ALCAMENCA', NULL, NULL),
(585, '51002', '5', '10', '2', 'APONGO', NULL, NULL),
(586, '51003', '5', '10', '3', 'ASQUIPATA', NULL, NULL),
(587, '51004', '5', '10', '4', 'CANARIA', NULL, NULL),
(588, '51005', '5', '10', '5', 'CAYARA', NULL, NULL),
(589, '51006', '5', '10', '6', 'COLCA', NULL, NULL),
(590, '51007', '5', '10', '7', 'HUAMANQUIQUIA', NULL, NULL),
(591, '51008', '5', '10', '8', 'HUANCAPI', NULL, NULL),
(592, '51009', '5', '10', '9', 'HUANCARAYLLA', NULL, NULL),
(593, '51010', '5', '10', '10', 'HUAYA', NULL, NULL),
(594, '51011', '5', '10', '11', 'SARHUA', NULL, NULL),
(595, '51012', '5', '10', '12', 'VILCANCHOS', NULL, NULL),
(596, '51100', '5', '11', '0', 'VILCAS HUAMAN', NULL, NULL),
(597, '51101', '5', '11', '1', 'ACCOMARCA', NULL, NULL),
(598, '51102', '5', '11', '2', 'CARHUANCA', NULL, NULL),
(599, '51103', '5', '11', '3', 'CONCEPCION', NULL, NULL),
(600, '51104', '5', '11', '4', 'HUAMBALPA', NULL, NULL),
(601, '51105', '5', '11', '5', 'INDEPENDENCIA', NULL, NULL),
(602, '51106', '5', '11', '6', 'SAURAMA', NULL, NULL),
(603, '51107', '5', '11', '7', 'VILCAS HUAMAN', NULL, NULL),
(604, '51108', '5', '11', '8', 'VISCHONGO', NULL, NULL),
(605, '60000', '6', '0', '0', 'CAJAMARCA', NULL, NULL),
(606, '60100', '6', '1', '0', 'CAJABAMBA', NULL, NULL),
(607, '60101', '6', '1', '1', 'CACHACHI', NULL, NULL),
(608, '60102', '6', '1', '2', 'CAJABAMBA', NULL, NULL),
(609, '60103', '6', '1', '3', 'CONDEBAMBA', NULL, NULL),
(610, '60104', '6', '1', '4', 'SITACOCHA', NULL, NULL),
(611, '60200', '6', '2', '0', 'CAJAMARCA', NULL, NULL),
(612, '60201', '6', '2', '1', 'ASUNCION', NULL, NULL),
(613, '60202', '6', '2', '2', 'CAJAMARCA', NULL, NULL),
(614, '60203', '6', '2', '3', 'CHETILLA', NULL, NULL),
(615, '60204', '6', '2', '4', 'COSPAN', NULL, NULL),
(616, '60205', '6', '2', '5', 'ENCA¥ADA', NULL, NULL),
(617, '60206', '6', '2', '6', 'JESUS', NULL, NULL),
(618, '60207', '6', '2', '7', 'LLACANORA', NULL, NULL),
(619, '60208', '6', '2', '8', 'LOS BA¥OS DEL INCA', NULL, NULL),
(620, '60209', '6', '2', '9', 'MAGDALENA', NULL, NULL),
(621, '60210', '6', '2', '10', 'MATARA', NULL, NULL),
(622, '60211', '6', '2', '11', 'NAMORA', NULL, NULL),
(623, '60212', '6', '2', '12', 'SAN JUAN', NULL, NULL),
(624, '60300', '6', '3', '0', 'CELENDIN', NULL, NULL),
(625, '60301', '6', '3', '1', 'CELENDIN', NULL, NULL),
(626, '60302', '6', '3', '2', 'CHUMUCH', NULL, NULL),
(627, '60303', '6', '3', '3', 'CORTEGANA', NULL, NULL),
(628, '60304', '6', '3', '4', 'HUASMIN', NULL, NULL),
(629, '60305', '6', '3', '5', 'JORGE CHAVEZ', NULL, NULL),
(630, '60306', '6', '3', '6', 'JOSE GALVEZ', NULL, NULL),
(631, '60307', '6', '3', '7', 'LA LIBERTAD DE PALLAN', NULL, NULL),
(632, '60308', '6', '3', '8', 'MIGUEL IGLESIAS', NULL, NULL),
(633, '60309', '6', '3', '9', 'OXAMARCA', NULL, NULL),
(634, '60310', '6', '3', '10', 'SOROCHUCO', NULL, NULL),
(635, '60311', '6', '3', '11', 'SUCRE', NULL, NULL),
(636, '60312', '6', '3', '12', 'UTCO', NULL, NULL),
(637, '60400', '6', '4', '0', 'CHOTA', NULL, NULL),
(638, '60401', '6', '4', '1', 'ANGUIA', NULL, NULL),
(639, '60402', '6', '4', '2', 'CHADIN', NULL, NULL),
(640, '60403', '6', '4', '3', 'CHALAMARCA', NULL, NULL),
(641, '60404', '6', '4', '4', 'CHIGUIRIP', NULL, NULL),
(642, '60405', '6', '4', '5', 'CHIMBAN', NULL, NULL),
(643, '60406', '6', '4', '6', 'CHOROPAMPA', NULL, NULL),
(644, '60407', '6', '4', '7', 'CHOTA', NULL, NULL),
(645, '60408', '6', '4', '8', 'COCHABAMBA', NULL, NULL),
(646, '60409', '6', '4', '9', 'CONCHAN', NULL, NULL),
(647, '60410', '6', '4', '10', 'HUAMBOS', NULL, NULL),
(648, '60411', '6', '4', '11', 'LAJAS', NULL, NULL),
(649, '60412', '6', '4', '12', 'LLAMA', NULL, NULL),
(650, '60413', '6', '4', '13', 'MIRACOSTA', NULL, NULL),
(651, '60414', '6', '4', '14', 'PACCHA', NULL, NULL),
(652, '60415', '6', '4', '15', 'PION', NULL, NULL),
(653, '60416', '6', '4', '16', 'QUEROCOTO', NULL, NULL),
(654, '60417', '6', '4', '17', 'SAN JUAN DE LICUPIS', NULL, NULL),
(655, '60418', '6', '4', '18', 'TACABAMBA', NULL, NULL),
(656, '60419', '6', '4', '19', 'TOCMOCHE', NULL, NULL),
(657, '60500', '6', '5', '0', 'CONTUMAZA', NULL, NULL),
(658, '60501', '6', '5', '1', 'CHILETE', NULL, NULL),
(659, '60502', '6', '5', '2', 'CONTUMAZA', NULL, NULL),
(660, '60503', '6', '5', '3', 'CUPISNIQUE', NULL, NULL),
(661, '60504', '6', '5', '4', 'GUZMANGO', NULL, NULL),
(662, '60505', '6', '5', '5', 'SAN BENITO', NULL, NULL),
(663, '60506', '6', '5', '6', 'SANTA CRUZ DE TOLEDO', NULL, NULL),
(664, '60507', '6', '5', '7', 'TANTARICA', NULL, NULL),
(665, '60508', '6', '5', '8', 'YONAN', NULL, NULL),
(666, '60600', '6', '6', '0', 'CUTERVO', NULL, NULL),
(667, '60601', '6', '6', '1', 'CALLAYUC', NULL, NULL),
(668, '60602', '6', '6', '2', 'CHOROS', NULL, NULL),
(669, '60603', '6', '6', '3', 'CUJILLO', NULL, NULL),
(670, '60604', '6', '6', '4', 'CUTERVO', NULL, NULL),
(671, '60605', '6', '6', '5', 'LA RAMADA', NULL, NULL),
(672, '60606', '6', '6', '6', 'PINPINGOS', NULL, NULL),
(673, '60607', '6', '6', '7', 'QUEROCOTILLO', NULL, NULL),
(674, '60608', '6', '6', '8', 'SAN ANDRES DE CUTERVO', NULL, NULL),
(675, '60609', '6', '6', '9', 'SAN JUAN DE CUTERVO', NULL, NULL),
(676, '60610', '6', '6', '10', 'SAN LUIS DE LUCMA', NULL, NULL),
(677, '60611', '6', '6', '11', 'SANTA CRUZ', NULL, NULL),
(678, '60612', '6', '6', '12', 'SANTO DOMINGO DE LA CAPIL', NULL, NULL),
(679, '60613', '6', '6', '13', 'SANTO TOMAS', NULL, NULL),
(680, '60614', '6', '6', '14', 'SOCOTA', NULL, NULL),
(681, '60615', '6', '6', '15', 'TORIBIO CASANOVA', NULL, NULL),
(682, '60700', '6', '7', '0', 'HUALGAYOC', NULL, NULL),
(683, '60701', '6', '7', '1', 'BAMBAMARCA', NULL, NULL),
(684, '60702', '6', '7', '2', 'CHUGUR', NULL, NULL),
(685, '60703', '6', '7', '3', 'HUALGAYOC', NULL, NULL),
(686, '60800', '6', '8', '0', 'JAEN', NULL, NULL),
(687, '60801', '6', '8', '1', 'BELLAVISTA', NULL, NULL),
(688, '60802', '6', '8', '2', 'CHONTALI', NULL, NULL),
(689, '60803', '6', '8', '3', 'COLASAY', NULL, NULL),
(690, '60804', '6', '8', '4', 'HUABAL', NULL, NULL),
(691, '60805', '6', '8', '5', 'JAEN', NULL, NULL),
(692, '60806', '6', '8', '6', 'LAS PIRIAS', NULL, NULL),
(693, '60807', '6', '8', '7', 'POMAHUACA', NULL, NULL),
(694, '60808', '6', '8', '8', 'PUCARA', NULL, NULL),
(695, '60809', '6', '8', '9', 'SALLIQUE', NULL, NULL),
(696, '60810', '6', '8', '10', 'SAN FELIPE', NULL, NULL),
(697, '60811', '6', '8', '11', 'SAN JOSE DEL ALTO', NULL, NULL),
(698, '60812', '6', '8', '12', 'SANTA ROSA', NULL, NULL),
(699, '60900', '6', '9', '0', 'SAN IGNACIO', NULL, NULL),
(700, '60901', '6', '9', '1', 'CHIRINOS', NULL, NULL),
(701, '60902', '6', '9', '2', 'HUARANGO', NULL, NULL),
(702, '60903', '6', '9', '3', 'LA COIPA', NULL, NULL),
(703, '60904', '6', '9', '4', 'NAMBALLE', NULL, NULL),
(704, '60905', '6', '9', '5', 'SAN IGNACIO', NULL, NULL),
(705, '60906', '6', '9', '6', 'SAN JOSE DE LOURDES', NULL, NULL),
(706, '60907', '6', '9', '7', 'TABACONAS', NULL, NULL),
(707, '61000', '6', '10', '0', 'SAN MARCOS', NULL, NULL),
(708, '61001', '6', '10', '1', 'CHANCAY', NULL, NULL),
(709, '61002', '6', '10', '2', 'EDUARDO VILLANUEVA', NULL, NULL),
(710, '61003', '6', '10', '3', 'GREGORIO PITA', NULL, NULL),
(711, '61004', '6', '10', '4', 'ICHOCAN', NULL, NULL),
(712, '61005', '6', '10', '5', 'JOSE MANUEL QUIROZ', NULL, NULL),
(713, '61006', '6', '10', '6', 'JOSE SABOGAL', NULL, NULL),
(714, '61007', '6', '10', '7', 'PEDRO GALVEZ', NULL, NULL),
(715, '61100', '6', '11', '0', 'SAN MIGUEL', NULL, NULL),
(716, '61101', '6', '11', '1', 'BOLIVAR', NULL, NULL),
(717, '61102', '6', '11', '2', 'CALQUIS', NULL, NULL),
(718, '61103', '6', '11', '3', 'CATILLUC', NULL, NULL),
(719, '61104', '6', '11', '4', 'EL PRADO', NULL, NULL),
(720, '61105', '6', '11', '5', 'LA FLORIDA', NULL, NULL),
(721, '61106', '6', '11', '6', 'LLAPA', NULL, NULL),
(722, '61107', '6', '11', '7', 'NANCHOC', NULL, NULL),
(723, '61108', '6', '11', '8', 'NIEPOS', NULL, NULL),
(724, '61109', '6', '11', '9', 'SAN GREGORIO', NULL, NULL),
(725, '61110', '6', '11', '10', 'SAN MIGUEL DE PALLAQUES', NULL, NULL),
(726, '61111', '6', '11', '11', 'SAN SILVESTRE DE COCHAN', NULL, NULL),
(727, '61112', '6', '11', '12', 'TONGOD', NULL, NULL),
(728, '61113', '6', '11', '13', 'UNION AGUA BLANCA', NULL, NULL),
(729, '61200', '6', '12', '0', 'SAN PABLO', NULL, NULL),
(730, '61201', '6', '12', '1', 'SAN BERNARDINO', NULL, NULL),
(731, '61202', '6', '12', '2', 'SAN LUIS', NULL, NULL),
(732, '61203', '6', '12', '3', 'SAN PABLO', NULL, NULL),
(733, '61204', '6', '12', '4', 'TUMBADEN', NULL, NULL),
(734, '61300', '6', '13', '0', 'SANTA CRUZ', NULL, NULL),
(735, '61301', '6', '13', '1', 'ANDABAMBA', NULL, NULL),
(736, '61302', '6', '13', '2', 'CATACHE', NULL, NULL),
(737, '61303', '6', '13', '3', 'CHANCAYBA¥OS', NULL, NULL),
(738, '61304', '6', '13', '4', 'LA ESPERANZA', NULL, NULL),
(739, '61305', '6', '13', '5', 'NINABAMBA', NULL, NULL),
(740, '61306', '6', '13', '6', 'PULAN', NULL, NULL),
(741, '61307', '6', '13', '7', 'SANTA CRUZ DE SUCCHABAMBA', NULL, NULL),
(742, '61308', '6', '13', '8', 'SAUCEPAMPA', NULL, NULL),
(743, '61309', '6', '13', '9', 'SEXI', NULL, NULL),
(744, '61310', '6', '13', '10', 'UTICYACU', NULL, NULL),
(745, '61311', '6', '13', '11', 'YAUYUCAN', NULL, NULL),
(746, '70000', '7', '0', '0', 'CALLAO', NULL, NULL),
(747, '70100', '7', '1', '0', 'CALLAO', NULL, NULL),
(748, '70101', '7', '1', '1', 'CALLAO', NULL, NULL),
(749, '70102', '7', '1', '2', 'BELLAVISTA', NULL, NULL),
(750, '70103', '7', '1', '3', 'CARMEN DE LA LEGUA - REYNOSO', NULL, NULL),
(751, '70104', '7', '1', '4', 'LA PERLA', NULL, NULL),
(752, '70105', '7', '1', '5', 'LA PUNTA', NULL, NULL),
(753, '70106', '7', '1', '6', 'VENTANILLA', NULL, NULL),
(754, '80000', '8', '0', '0', 'CUZCO', NULL, NULL),
(755, '80100', '8', '1', '0', 'ACOMAYO', NULL, NULL),
(756, '80101', '8', '1', '1', 'ACOMAYO', NULL, NULL),
(757, '80102', '8', '1', '2', 'ACOPIA', NULL, NULL),
(758, '80103', '8', '1', '3', 'ACOS', NULL, NULL),
(759, '80104', '8', '1', '4', 'MOSOCLLACTA', NULL, NULL),
(760, '80105', '8', '1', '5', 'POMACANCHI', NULL, NULL),
(761, '80106', '8', '1', '6', 'RONDOCAN', NULL, NULL),
(762, '80107', '8', '1', '7', 'SANGARARA', NULL, NULL),
(763, '80200', '8', '2', '0', 'ANTA', NULL, NULL),
(764, '80201', '8', '2', '1', 'ANCAHUASI', NULL, NULL),
(765, '80202', '8', '2', '2', 'ANTA', NULL, NULL),
(766, '80203', '8', '2', '3', 'CACHIMAYO', NULL, NULL),
(767, '80204', '8', '2', '4', 'CHICHAYPUJIO', NULL, NULL),
(768, '80205', '8', '2', '5', 'HUAROCONDO', NULL, NULL),
(769, '80206', '8', '2', '6', 'LIMATAMBO', NULL, NULL),
(770, '80207', '8', '2', '7', 'MOLLEPATA', NULL, NULL),
(771, '80208', '8', '2', '8', 'PUCYURA', NULL, NULL),
(772, '80209', '8', '2', '9', 'ZURITE', NULL, NULL),
(773, '80300', '8', '3', '0', 'CALCA', NULL, NULL),
(774, '80301', '8', '3', '1', 'CALCA', NULL, NULL),
(775, '80302', '8', '3', '2', 'COYA', NULL, NULL),
(776, '80303', '8', '3', '3', 'LAMAY', NULL, NULL),
(777, '80304', '8', '3', '4', 'LARES', NULL, NULL),
(778, '80305', '8', '3', '5', 'PISAC', NULL, NULL),
(779, '80306', '8', '3', '6', 'SAN SALVADOR', NULL, NULL),
(780, '80307', '8', '3', '7', 'TARAY', NULL, NULL),
(781, '80308', '8', '3', '8', 'YANATILE', NULL, NULL),
(782, '80400', '8', '4', '0', 'CANAS', NULL, NULL),
(783, '80401', '8', '4', '1', 'CHECCA', NULL, NULL),
(784, '80402', '8', '4', '2', 'KUTURKANKI', NULL, NULL),
(785, '80403', '8', '4', '3', 'LANGUI', NULL, NULL),
(786, '80404', '8', '4', '4', 'LAYO', NULL, NULL),
(787, '80405', '8', '4', '5', 'PAMPAMARCA', NULL, NULL),
(788, '80406', '8', '4', '6', 'QUEHUE', NULL, NULL),
(789, '80407', '8', '4', '7', 'TUPAC AMARU', NULL, NULL),
(790, '80408', '8', '4', '8', 'YANAOCA', NULL, NULL),
(791, '80500', '8', '5', '0', 'CANCHIS', NULL, NULL),
(792, '80501', '8', '5', '1', 'CHECACUPE', NULL, NULL),
(793, '80502', '8', '5', '2', 'COMBAPATA', NULL, NULL),
(794, '80503', '8', '5', '3', 'MARANGANI', NULL, NULL),
(795, '80504', '8', '5', '4', 'PITUMARCA', NULL, NULL),
(796, '80505', '8', '5', '5', 'SAN PABLO', NULL, NULL),
(797, '80506', '8', '5', '6', 'SAN PEDRO', NULL, NULL),
(798, '80507', '8', '5', '7', 'SICUANI', NULL, NULL),
(799, '80508', '8', '5', '8', 'TINTA', NULL, NULL),
(800, '80600', '8', '6', '0', 'CHUMBIVILCAS', NULL, NULL),
(801, '80601', '8', '6', '1', 'CAPACMARCA', NULL, NULL),
(802, '80602', '8', '6', '2', 'CHAMACA', NULL, NULL),
(803, '80603', '8', '6', '3', 'COLQUEMARCA', NULL, NULL),
(804, '80604', '8', '6', '4', 'LIVITACA', NULL, NULL),
(805, '80605', '8', '6', '5', 'LLUSCO', NULL, NULL),
(806, '80606', '8', '6', '6', 'QUINOTA', NULL, NULL),
(807, '80607', '8', '6', '7', 'SANTO TOMAS', NULL, NULL),
(808, '80608', '8', '6', '8', 'VELILLE', NULL, NULL),
(809, '80700', '8', '7', '0', 'CUSCO', NULL, NULL),
(810, '80701', '8', '7', '1', 'CCORCA', NULL, NULL),
(811, '80702', '8', '7', '2', 'CUZCO', NULL, NULL),
(812, '80703', '8', '7', '3', 'POROY', NULL, NULL),
(813, '80704', '8', '7', '4', 'SAN JERONIMO', NULL, NULL),
(814, '80705', '8', '7', '5', 'SAN SEBASTIAN', NULL, NULL),
(815, '80706', '8', '7', '6', 'SANTIAGO', NULL, NULL),
(816, '80707', '8', '7', '7', 'SAYLLA', NULL, NULL),
(817, '80708', '8', '7', '8', 'WANCHAQ', NULL, NULL),
(818, '80800', '8', '8', '0', 'ESPINAR', NULL, NULL),
(819, '80801', '8', '8', '1', 'ALTO PICHIGUA', NULL, NULL),
(820, '80802', '8', '8', '2', 'CONDORAMA', NULL, NULL),
(821, '80803', '8', '8', '3', 'COPORAQUE', NULL, NULL),
(822, '80804', '8', '8', '4', 'ESPINAR', NULL, NULL),
(823, '80805', '8', '8', '5', 'OCORURO', NULL, NULL),
(824, '80806', '8', '8', '6', 'PALLPATA', NULL, NULL),
(825, '80807', '8', '8', '7', 'PICHIGUA', NULL, NULL),
(826, '80808', '8', '8', '8', 'SUYCKUTAMBO', NULL, NULL),
(827, '80900', '8', '9', '0', 'LA CONVENCION', NULL, NULL),
(828, '80901', '8', '9', '1', 'ECHARATE', NULL, NULL),
(829, '80902', '8', '9', '2', 'HUAYOPATA', NULL, NULL),
(830, '80903', '8', '9', '3', 'MARANURA', NULL, NULL),
(831, '80904', '8', '9', '4', 'OCOBAMBA', NULL, NULL),
(832, '80905', '8', '9', '5', 'PICHARI', NULL, NULL),
(833, '80906', '8', '9', '6', 'QUELLOUNO', NULL, NULL),
(834, '80907', '8', '9', '7', 'QUIMBIRI', NULL, NULL),
(835, '80908', '8', '9', '8', 'SANTA ANA', NULL, NULL),
(836, '80909', '8', '9', '9', 'SANTA TERESA', NULL, NULL),
(837, '80910', '8', '9', '10', 'VILCABAMBA', NULL, NULL),
(838, '81000', '8', '10', '0', 'PARURO', NULL, NULL),
(839, '81001', '8', '10', '1', 'ACCHA', NULL, NULL),
(840, '81002', '8', '10', '2', 'CCAPI', NULL, NULL),
(841, '81003', '8', '10', '3', 'COLCHA', NULL, NULL),
(842, '81004', '8', '10', '4', 'HUANOQUITE', NULL, NULL),
(843, '81005', '8', '10', '5', 'OMACHA', NULL, NULL),
(844, '81006', '8', '10', '6', 'PACCARITAMBO', NULL, NULL),
(845, '81007', '8', '10', '7', 'PARURO', NULL, NULL),
(846, '81008', '8', '10', '8', 'PILLPINTO', NULL, NULL),
(847, '81009', '8', '10', '9', 'YAURISQUE', NULL, NULL),
(848, '81100', '8', '11', '0', 'PAUCARTAMBO', NULL, NULL),
(849, '81101', '8', '11', '1', 'CAICAY', NULL, NULL),
(850, '81102', '8', '11', '2', 'CHALLABAMBA', NULL, NULL),
(851, '81103', '8', '11', '3', 'COLQUEPATA', NULL, NULL),
(852, '81104', '8', '11', '4', 'HUANCARANI', NULL, NULL),
(853, '81105', '8', '11', '5', 'KOS¥IPATA', NULL, NULL),
(854, '81106', '8', '11', '6', 'PAUCARTAMBO', NULL, NULL),
(855, '81200', '8', '12', '0', 'QUISPICANCHI', NULL, NULL),
(856, '81201', '8', '12', '1', 'ANDAHUAYLILLAS', NULL, NULL),
(857, '81202', '8', '12', '2', 'CAMANTI', NULL, NULL),
(858, '81203', '8', '12', '3', 'CCARHUAYO', NULL, NULL),
(859, '81204', '8', '12', '4', 'CCATCA', NULL, NULL),
(860, '81205', '8', '12', '5', 'CUSIPATA', NULL, NULL),
(861, '81206', '8', '12', '6', 'HUARO', NULL, NULL),
(862, '81207', '8', '12', '7', 'LUCRE', NULL, NULL),
(863, '81208', '8', '12', '8', 'MARCAPATA', NULL, NULL),
(864, '81209', '8', '12', '9', 'OCONGATE', NULL, NULL),
(865, '81210', '8', '12', '10', 'OROPESA', NULL, NULL),
(866, '81211', '8', '12', '11', 'QUIQUIJANA', NULL, NULL),
(867, '81212', '8', '12', '12', 'URCOS', NULL, NULL),
(868, '81300', '8', '13', '0', 'URUBAMBA', NULL, NULL),
(869, '81301', '8', '13', '1', 'CHINCHERO', NULL, NULL),
(870, '81302', '8', '13', '2', 'HUAYLLABAMBA', NULL, NULL),
(871, '81303', '8', '13', '3', 'MACHUPICCHU', NULL, NULL),
(872, '81304', '8', '13', '4', 'MARAS', NULL, NULL),
(873, '81305', '8', '13', '5', 'OLLANTAYTAMBO', NULL, NULL),
(874, '81306', '8', '13', '6', 'URUBAMBA', NULL, NULL),
(875, '81307', '8', '13', '7', 'YUCAY', NULL, NULL),
(876, '90000', '9', '0', '0', 'HUANCAVELICA', NULL, NULL),
(877, '90100', '9', '1', '0', 'ACOBAMBA', NULL, NULL),
(878, '90101', '9', '1', '1', 'ACOBAMBA', NULL, NULL),
(879, '90102', '9', '1', '2', 'ANDABAMBA', NULL, NULL),
(880, '90103', '9', '1', '3', 'ANTA', NULL, NULL),
(881, '90104', '9', '1', '4', 'CAJA', NULL, NULL),
(882, '90105', '9', '1', '5', 'MARCAS', NULL, NULL),
(883, '90106', '9', '1', '6', 'PAUCARA', NULL, NULL),
(884, '90107', '9', '1', '7', 'POMACOCHA', NULL, NULL),
(885, '90108', '9', '1', '8', 'ROSARIO', NULL, NULL),
(886, '90200', '9', '2', '0', 'ANGARAES', NULL, NULL),
(887, '90202', '9', '2', '2', 'ANCHONGA', NULL, NULL),
(888, '90203', '9', '2', '3', 'CALLANMARCA', NULL, NULL),
(889, '90204', '9', '2', '4', 'CCOCHACCASA', NULL, NULL),
(890, '90205', '9', '2', '5', 'CHINCHO', NULL, NULL),
(891, '90206', '9', '2', '6', 'CONGALLA', NULL, NULL),
(892, '90207', '9', '2', '7', 'HUALLAY GRANDE', NULL, NULL),
(893, '90208', '9', '2', '8', 'HUANCA HUANCA', NULL, NULL),
(894, '90209', '9', '2', '9', 'JULCA MARCA', NULL, NULL),
(895, '90210', '9', '2', '10', 'LIRCAY', NULL, NULL),
(896, '90211', '9', '2', '11', 'SAN ANTONIO DE ANTAPARCO', NULL, NULL),
(897, '90212', '9', '2', '12', 'SANTO TOMAS DE PATA', NULL, NULL),
(898, '90213', '9', '2', '13', 'SECCLLA', NULL, NULL),
(899, '90300', '9', '3', '0', 'CASTROVIRREYNA', NULL, NULL),
(900, '90301', '9', '3', '1', 'ARMA', NULL, NULL),
(901, '90302', '9', '3', '2', 'AURAHUA', NULL, NULL),
(902, '90303', '9', '3', '3', 'CAPILLAS', NULL, NULL),
(903, '90304', '9', '3', '4', 'CASTROVIRREYNA', NULL, NULL),
(904, '90305', '9', '3', '5', 'CHUPAMARCA', NULL, NULL),
(905, '90306', '9', '3', '6', 'COCAS', NULL, NULL),
(906, '90307', '9', '3', '7', 'HUACHOS', NULL, NULL),
(907, '90308', '9', '3', '8', 'HUAMANTAMBO', NULL, NULL),
(908, '90309', '9', '3', '9', 'MOLLEPAMPA', NULL, NULL),
(909, '90310', '9', '3', '10', 'SAN JUAN', NULL, NULL),
(910, '90311', '9', '3', '11', 'SANTA ANA', NULL, NULL),
(911, '90312', '9', '3', '12', 'TANTARA', NULL, NULL),
(912, '90313', '9', '3', '13', 'TICRAPO', NULL, NULL),
(913, '90400', '9', '4', '0', 'CHURCAMPA', NULL, NULL),
(914, '90401', '9', '4', '1', 'ANCO', NULL, NULL),
(915, '90402', '9', '4', '2', 'CHINCHIHUASI', NULL, NULL),
(916, '90403', '9', '4', '3', 'CHURCAMPA', NULL, NULL),
(917, '90404', '9', '4', '4', 'EL CARMEN', NULL, NULL),
(918, '90405', '9', '4', '5', 'LA MERCED', NULL, NULL);
INSERT INTO `addresses` (`id`, `ubi_identificador`, `ubi_departamento`, `ubi_provincia`, `ubi_distrito`, `ubi_descripcion`, `created_at`, `updated_at`) VALUES
(919, '90406', '9', '4', '6', 'LOCROJA', NULL, NULL),
(920, '90407', '9', '4', '7', 'PAUCARBAMBA', NULL, NULL),
(921, '90408', '9', '4', '8', 'SAN MIGUEL DE MAYOCC', NULL, NULL),
(922, '90409', '9', '4', '9', 'SAN PEDRO DE CORIS', NULL, NULL),
(923, '90500', '9', '5', '0', 'HUANCAVELICA', NULL, NULL),
(924, '90501', '9', '5', '1', 'ACOBAMBILLA', NULL, NULL),
(925, '90502', '9', '5', '2', 'ACORIA', NULL, NULL),
(926, '90503', '9', '5', '3', 'CONAYCA', NULL, NULL),
(927, '90504', '9', '5', '4', 'CUENCA', NULL, NULL),
(928, '90505', '9', '5', '5', 'HUACHOCOLPA', NULL, NULL),
(929, '90506', '9', '5', '6', 'HUANCAVELICA', NULL, NULL),
(930, '90508', '9', '5', '8', 'HUAYLLAHUARA', NULL, NULL),
(931, '90509', '9', '5', '9', 'IZCUCHACA', NULL, NULL),
(932, '90510', '9', '5', '10', 'LARIA', NULL, NULL),
(933, '90511', '9', '5', '11', 'MANTA', NULL, NULL),
(934, '90512', '9', '5', '12', 'MARISCAL CACERES', NULL, NULL),
(935, '90513', '9', '5', '13', 'MOYA', NULL, NULL),
(936, '90514', '9', '5', '14', 'NUEVO OCCORO', NULL, NULL),
(937, '90515', '9', '5', '15', 'PALCA', NULL, NULL),
(938, '90516', '9', '5', '16', 'PILCHACA', NULL, NULL),
(939, '90517', '9', '5', '17', 'VILCA', NULL, NULL),
(940, '90518', '9', '5', '18', 'YAULI', NULL, NULL),
(941, '90600', '9', '6', '0', 'HUAYTARA', NULL, NULL),
(942, '90601', '9', '6', '1', 'AYAVI', NULL, NULL),
(943, '90602', '9', '6', '2', 'CORDOVA', NULL, NULL),
(944, '90603', '9', '6', '3', 'HUAYACUNDO ARMA', NULL, NULL),
(945, '90604', '9', '6', '4', 'HUAYTARA', NULL, NULL),
(946, '90605', '9', '6', '5', 'LARAMARCA', NULL, NULL),
(947, '90606', '9', '6', '6', 'OCOYO', NULL, NULL),
(948, '90607', '9', '6', '7', 'PILPICHACA', NULL, NULL),
(949, '90608', '9', '6', '8', 'QUERCO', NULL, NULL),
(950, '90609', '9', '6', '9', 'QUITOÑARMA', NULL, NULL),
(951, '90610', '9', '6', '10', 'SAN ANTONIO DE CUSICANC', NULL, NULL),
(952, '90611', '9', '6', '11', 'SAN FCO. DE SANGAYAICO', NULL, NULL),
(953, '90612', '9', '6', '12', 'SAN ISIDRO', NULL, NULL),
(954, '90613', '9', '6', '13', 'SANTIAGO DE CHOCORVOS', NULL, NULL),
(955, '90614', '9', '6', '14', 'SANTIAGO DE QUIRAHUARA', NULL, NULL),
(956, '90615', '9', '6', '15', 'SANTO DGO. DE CAPILLAS', NULL, NULL),
(957, '90616', '9', '6', '16', 'TAMBO', NULL, NULL),
(958, '90700', '9', '7', '0', 'TAYACAJA', NULL, NULL),
(959, '90701', '9', '7', '1', 'ACOSTAMBO', NULL, NULL),
(960, '90702', '9', '7', '2', 'ACRAQUIA', NULL, NULL),
(961, '90703', '9', '7', '3', 'AHUAYCHA', NULL, NULL),
(962, '90704', '9', '7', '4', 'COLCABAMBA', NULL, NULL),
(963, '90705', '9', '7', '5', 'DANIEL HERNANDEZ', NULL, NULL),
(964, '90706', '9', '7', '6', 'HUACHOCOLPA', NULL, NULL),
(965, '90707', '9', '7', '7', 'HUANDO', NULL, NULL),
(966, '90708', '9', '7', '8', 'HUARIBAMBA', NULL, NULL),
(967, '90709', '9', '7', '9', 'PACHAMARCA', NULL, NULL),
(968, '90710', '9', '7', '10', 'PAMPAS', NULL, NULL),
(969, '90711', '9', '7', '11', 'PAZOS', NULL, NULL),
(970, '90712', '9', '7', '12', 'QUISHUAR', NULL, NULL),
(971, '90713', '9', '7', '13', 'SALCABAMBA', NULL, NULL),
(972, '90714', '9', '7', '14', 'SALCAHUASI', NULL, NULL),
(973, '90715', '9', '7', '15', 'SAN MARCOS DE ROCCHAC', NULL, NULL),
(974, '90716', '9', '7', '16', 'SURCUBAMBA', NULL, NULL),
(975, '90717', '9', '7', '17', 'TINTAY PUNCU', NULL, NULL),
(976, '90718', '9', '7', '18', '¥AHUIPUQUIO', NULL, NULL),
(977, '100000', '10', '0', '0', 'HUANUCO', NULL, NULL),
(978, '100100', '10', '1', '0', 'AMBO', NULL, NULL),
(979, '100101', '10', '1', '1', 'AMBO', NULL, NULL),
(980, '100102', '10', '1', '2', 'CAYNA', NULL, NULL),
(981, '100103', '10', '1', '3', 'COLPAS', NULL, NULL),
(982, '100104', '10', '1', '4', 'CONCHAMARCA', NULL, NULL),
(983, '100105', '10', '1', '5', 'HUACAR', NULL, NULL),
(984, '100106', '10', '1', '6', 'SAN FRANCISCO', NULL, NULL),
(985, '100107', '10', '1', '7', 'SAN RAFAEL', NULL, NULL),
(986, '100108', '10', '1', '8', 'TOMAY KICHWA', NULL, NULL),
(987, '100200', '10', '2', '0', 'DOS DE MAYO', NULL, NULL),
(988, '100201', '10', '2', '1', 'CHUQUIS', NULL, NULL),
(989, '100202', '10', '2', '2', 'LA UNION', NULL, NULL),
(990, '100203', '10', '2', '3', 'MARIAS', NULL, NULL),
(991, '100204', '10', '2', '4', 'PACHAS', NULL, NULL),
(992, '100205', '10', '2', '5', 'QUIVILLA', NULL, NULL),
(993, '100206', '10', '2', '6', 'RIPAN', NULL, NULL),
(994, '100207', '10', '2', '7', 'SHUNQUI', NULL, NULL),
(995, '100208', '10', '2', '8', 'SILLAPATA', NULL, NULL),
(996, '100209', '10', '2', '9', 'YANAS', NULL, NULL),
(997, '100300', '10', '3', '0', 'HUACAYBAMBA', NULL, NULL),
(998, '100301', '10', '3', '1', 'CANCHABAMBA', NULL, NULL),
(999, '100302', '10', '3', '2', 'COCHABAMBA', NULL, NULL),
(1000, '100303', '10', '3', '3', 'HUACAYBAMBA', NULL, NULL),
(1001, '100304', '10', '3', '4', 'PINRA', NULL, NULL),
(1002, '100400', '10', '4', '0', 'HUAMALIES', NULL, NULL),
(1003, '100401', '10', '4', '1', 'ARANCAY', NULL, NULL),
(1004, '100402', '10', '4', '2', 'CHAVIN DE PARIARCA', NULL, NULL),
(1005, '100403', '10', '4', '3', 'JACAS GRANDE', NULL, NULL),
(1006, '100404', '10', '4', '4', 'JIRCAN', NULL, NULL),
(1007, '100405', '10', '4', '5', 'LLATA', NULL, NULL),
(1008, '100406', '10', '4', '6', 'MIRAFLORES', NULL, NULL),
(1009, '100407', '10', '4', '7', 'MONZON', NULL, NULL),
(1010, '100408', '10', '4', '8', 'PUNCHAO', NULL, NULL),
(1011, '100409', '10', '4', '9', 'PU¥OS', NULL, NULL),
(1012, '100410', '10', '4', '10', 'SINGA', NULL, NULL),
(1013, '100411', '10', '4', '11', 'TANTAMAYO', NULL, NULL),
(1014, '100500', '10', '5', '0', 'HUANUCO', NULL, NULL),
(1015, '100501', '10', '5', '1', 'AMARILIS', NULL, NULL),
(1016, '100502', '10', '5', '2', 'CHINCHAO', NULL, NULL),
(1017, '100503', '10', '5', '3', 'CHURUBAMBA', NULL, NULL),
(1018, '100504', '10', '5', '4', 'HUANUCO', NULL, NULL),
(1019, '100505', '10', '5', '5', 'MARGOS', NULL, NULL),
(1020, '100506', '10', '5', '6', 'QUISQUI', NULL, NULL),
(1021, '100507', '10', '5', '7', 'SAN FRANCISCO DE CAYRAN', NULL, NULL),
(1022, '100508', '10', '5', '8', 'SAN PEDRO DE CHAULAN', NULL, NULL),
(1023, '100509', '10', '5', '9', 'SANTA MARIA DEL VALLE', NULL, NULL),
(1024, '100510', '10', '5', '10', 'YARUMAYO', NULL, NULL),
(1025, '100600', '10', '6', '0', 'LAURICOCHA', NULL, NULL),
(1026, '100601', '10', '6', '1', 'BAÑOS', NULL, NULL),
(1027, '100602', '10', '6', '2', 'JESUS', NULL, NULL),
(1028, '100603', '10', '6', '3', 'JIVIA', NULL, NULL),
(1029, '100604', '10', '6', '4', 'QUEROPALCA', NULL, NULL),
(1030, '100605', '10', '6', '5', 'RONDOS', NULL, NULL),
(1031, '100606', '10', '6', '6', 'SAN FRANCISCO DE ASIS', NULL, NULL),
(1032, '100607', '10', '6', '7', 'SAN MIGUEL DE CAURI', NULL, NULL),
(1033, '100700', '10', '7', '0', 'LEONCIO PRADO', NULL, NULL),
(1034, '100701', '10', '7', '1', 'DANIEL ALOMIA ROBLES', NULL, NULL),
(1035, '100702', '10', '7', '2', 'HERMINIO VALDIZAN', NULL, NULL),
(1036, '100703', '10', '7', '3', 'JOSE CRESPO Y CASTILLO', NULL, NULL),
(1037, '100704', '10', '7', '4', 'LUYANDO', NULL, NULL),
(1038, '100705', '10', '7', '5', 'MARIANO DAMASO BERAUN', NULL, NULL),
(1039, '100706', '10', '7', '6', 'RUPA RUPA', NULL, NULL),
(1040, '100800', '10', '8', '0', 'MARA¥ON', NULL, NULL),
(1041, '100801', '10', '8', '1', 'CHOLON', NULL, NULL),
(1042, '100802', '10', '8', '2', 'HUACRACHUCO', NULL, NULL),
(1043, '100803', '10', '8', '3', 'SAN BUENA VENTURA', NULL, NULL),
(1044, '100900', '10', '9', '0', 'PACHITEA', NULL, NULL),
(1045, '100901', '10', '9', '1', 'CHAGLLA', NULL, NULL),
(1046, '100902', '10', '9', '2', 'MOLINO', NULL, NULL),
(1047, '100903', '10', '9', '3', 'PANAO', NULL, NULL),
(1048, '100904', '10', '9', '4', 'UMARI', NULL, NULL),
(1049, '101000', '10', '10', '0', 'PUERTO INCA', NULL, NULL),
(1050, '101001', '10', '10', '1', 'CODO DEL POZUZO', NULL, NULL),
(1051, '101002', '10', '10', '2', 'HONORIA', NULL, NULL),
(1052, '101003', '10', '10', '3', 'PUERTO INCA', NULL, NULL),
(1053, '101004', '10', '10', '4', 'TOURNAVISTA', NULL, NULL),
(1054, '101005', '10', '10', '5', 'YUYAPICHIS', NULL, NULL),
(1055, '101100', '10', '11', '0', 'YAROWILCA', NULL, NULL),
(1056, '101101', '10', '11', '1', 'APARICIO POMARES', NULL, NULL),
(1057, '101102', '10', '11', '2', 'CAHUAC', NULL, NULL),
(1058, '101103', '10', '11', '3', 'CHACABAMBA', NULL, NULL),
(1059, '101104', '10', '11', '4', 'CHAVINILLO', NULL, NULL),
(1060, '101105', '10', '11', '5', 'JACAS CHICO', NULL, NULL),
(1061, '101106', '10', '11', '6', 'OBAS', NULL, NULL),
(1062, '101107', '10', '11', '7', 'PAMPAMARCA', NULL, NULL),
(1063, '110000', '11', '0', '0', 'ICA', NULL, NULL),
(1064, '110100', '11', '1', '0', 'CHINCHA', NULL, NULL),
(1065, '110101', '11', '1', '1', 'ALTO LARAN', NULL, NULL),
(1066, '110102', '11', '1', '2', 'CHAVIN', NULL, NULL),
(1067, '110103', '11', '1', '3', 'CHINCHA ALTA', NULL, NULL),
(1068, '110104', '11', '1', '4', 'CHINCHA BAJA', NULL, NULL),
(1069, '110105', '11', '1', '5', 'EL CARMEN', NULL, NULL),
(1070, '110106', '11', '1', '6', 'GROCIO PRADO', NULL, NULL),
(1071, '110107', '11', '1', '7', 'PUEBLO NUEVO', NULL, NULL),
(1072, '110108', '11', '1', '8', 'SAN JUAN DE YANAC', NULL, NULL),
(1073, '110109', '11', '1', '9', 'SAN PEDRO DE HUCARPANA', NULL, NULL),
(1074, '110110', '11', '1', '10', 'SUNAMPE', NULL, NULL),
(1075, '110111', '11', '1', '11', 'TAMBO DE MORA', NULL, NULL),
(1076, '110200', '11', '2', '0', 'ICA', NULL, NULL),
(1077, '110201', '11', '2', '1', 'ICA', NULL, NULL),
(1078, '110202', '11', '2', '2', 'LA TINGUINA', NULL, NULL),
(1079, '110203', '11', '2', '3', 'LOS AQUIJES', NULL, NULL),
(1080, '110204', '11', '2', '4', 'OCUCAJE', NULL, NULL),
(1081, '110205', '11', '2', '5', 'PACHACUTEC', NULL, NULL),
(1082, '110206', '11', '2', '6', 'PARCONA', NULL, NULL),
(1083, '110207', '11', '2', '7', 'PUEBLO NUEVO', NULL, NULL),
(1084, '110208', '11', '2', '8', 'SALAS', NULL, NULL),
(1085, '110209', '11', '2', '9', 'SAN JOSE DE LOS MOLINOS', NULL, NULL),
(1086, '110210', '11', '2', '10', 'SAN JUAN BAUTISTA', NULL, NULL),
(1087, '110211', '11', '2', '11', 'SANTIAGO', NULL, NULL),
(1088, '110212', '11', '2', '12', 'SUBTANJALLA', NULL, NULL),
(1089, '110213', '11', '2', '13', 'TATE', NULL, NULL),
(1090, '110214', '11', '2', '14', 'YAUCA DEL ROSARIO', NULL, NULL),
(1091, '110300', '11', '3', '0', 'NAZCA', NULL, NULL),
(1092, '110301', '11', '3', '1', 'CHANGUILLO', NULL, NULL),
(1093, '110302', '11', '3', '2', 'EL INGENIO', NULL, NULL),
(1094, '110303', '11', '3', '3', 'MARCONA', NULL, NULL),
(1095, '110304', '11', '3', '4', 'NAZCA', NULL, NULL),
(1096, '110305', '11', '3', '5', 'VISTA ALEGRE', NULL, NULL),
(1097, '110400', '11', '4', '0', 'PALPA', NULL, NULL),
(1098, '110401', '11', '4', '1', 'LLIPATA', NULL, NULL),
(1099, '110402', '11', '4', '2', 'PALPA', NULL, NULL),
(1100, '110403', '11', '4', '3', 'RIO GRANDE', NULL, NULL),
(1101, '110404', '11', '4', '4', 'SANTA CRUZ', NULL, NULL),
(1102, '110405', '11', '4', '5', 'TIBILLO', NULL, NULL),
(1103, '110500', '11', '5', '0', 'PISCO', NULL, NULL),
(1104, '110501', '11', '5', '1', 'HUANCANO', NULL, NULL),
(1105, '110502', '11', '5', '2', 'HUMAY', NULL, NULL),
(1106, '110503', '11', '5', '3', 'INDEPENDENCIA', NULL, NULL),
(1107, '110504', '11', '5', '4', 'PARACAS', NULL, NULL),
(1108, '110505', '11', '5', '5', 'PISCO', NULL, NULL),
(1109, '110506', '11', '5', '6', 'SAN ANDRES', NULL, NULL),
(1110, '110507', '11', '5', '7', 'SAN CLEMENTE', NULL, NULL),
(1111, '110508', '11', '5', '8', 'TUPAC AMARU INCA', NULL, NULL),
(1112, '120000', '12', '0', '0', 'JUNIN', NULL, NULL),
(1113, '120100', '12', '1', '0', 'CONCEPCION', NULL, NULL),
(1114, '120101', '12', '1', '1', 'ACO', NULL, NULL),
(1115, '120102', '12', '1', '2', 'ANDAMARCA', NULL, NULL),
(1116, '120103', '12', '1', '3', 'CHAMBARA', NULL, NULL),
(1117, '120104', '12', '1', '4', 'COCHAS', NULL, NULL),
(1118, '120105', '12', '1', '5', 'COMAS', NULL, NULL),
(1119, '120106', '12', '1', '6', 'CONCEPCION', NULL, NULL),
(1120, '120107', '12', '1', '7', 'HEROINAS TOLEDO', NULL, NULL),
(1121, '120108', '12', '1', '8', 'MANZANARES', NULL, NULL),
(1122, '120109', '12', '1', '9', 'MARISCAL CASTILLA', NULL, NULL),
(1123, '120110', '12', '1', '10', 'MATAHUASI', NULL, NULL),
(1124, '120111', '12', '1', '11', 'MITO', NULL, NULL),
(1125, '120112', '12', '1', '12', 'NUEVE DE JULIO', NULL, NULL),
(1126, '120113', '12', '1', '13', 'ORCOTUNA', NULL, NULL),
(1127, '120114', '12', '1', '14', 'SAN JOSE DE QUERO', NULL, NULL),
(1128, '120115', '12', '1', '15', 'SANTA ROSA DE OCOPA', NULL, NULL),
(1129, '120200', '12', '2', '0', 'CHANCHAMAYO', NULL, NULL),
(1130, '120201', '12', '2', '1', 'CHANCHAMAYO', NULL, NULL),
(1131, '120202', '12', '2', '2', 'PERENE', NULL, NULL),
(1132, '120203', '12', '2', '3', 'PICHANAQUI', NULL, NULL),
(1133, '120204', '12', '2', '4', 'SAN LUIS DE SHUARO', NULL, NULL),
(1134, '120205', '12', '2', '5', 'SAN RAMON', NULL, NULL),
(1135, '120206', '12', '2', '6', 'VITOC', NULL, NULL),
(1136, '120300', '12', '3', '0', 'HUANCAYO', NULL, NULL),
(1137, '120301', '12', '3', '1', 'CARHUACALLANGA', NULL, NULL),
(1138, '120302', '12', '3', '2', 'CHACAPAMPA', NULL, NULL),
(1139, '120303', '12', '3', '3', 'CHICCHE', NULL, NULL),
(1140, '120304', '12', '3', '4', 'CHILCA', NULL, NULL),
(1141, '120305', '12', '3', '5', 'CHONGOS ALTO', NULL, NULL),
(1142, '120306', '12', '3', '6', 'CHUPURO', NULL, NULL),
(1143, '120307', '12', '3', '7', 'COLCA', NULL, NULL),
(1144, '120308', '12', '3', '8', 'CULLHUAS', NULL, NULL),
(1145, '120309', '12', '3', '9', 'EL TAMBO', NULL, NULL),
(1146, '120310', '12', '3', '10', 'HUACRAPUQUIO', NULL, NULL),
(1147, '120311', '12', '3', '11', 'HUALHUAS', NULL, NULL),
(1148, '120312', '12', '3', '12', 'HUANCAN', NULL, NULL),
(1149, '120313', '12', '3', '13', 'HUANCAYO', NULL, NULL),
(1150, '120314', '12', '3', '14', 'HUASICANCHA', NULL, NULL),
(1151, '120315', '12', '3', '15', 'HUAYUCACHI', NULL, NULL),
(1152, '120316', '12', '3', '16', 'INGENIO', NULL, NULL),
(1153, '120317', '12', '3', '17', 'PARIAHUANCA', NULL, NULL),
(1154, '120318', '12', '3', '18', 'PILCOMAYO', NULL, NULL),
(1155, '120319', '12', '3', '19', 'PUCARA', NULL, NULL),
(1156, '120320', '12', '3', '20', 'QUICHUAY', NULL, NULL),
(1157, '120321', '12', '3', '21', 'QUILCAS', NULL, NULL),
(1158, '120322', '12', '3', '22', 'SAN AGUSTIN', NULL, NULL),
(1159, '120323', '12', '3', '23', 'SAN JERONIMO DE TUNAN', NULL, NULL),
(1160, '120324', '12', '3', '24', 'SAPALLANGA', NULL, NULL),
(1161, '120325', '12', '3', '25', 'SA¥O', NULL, NULL),
(1162, '120326', '12', '3', '26', 'SICAYA', NULL, NULL),
(1163, '120327', '12', '3', '27', 'STO DOMINGO DA ACOBAMBA', NULL, NULL),
(1164, '120328', '12', '3', '28', 'VIQUES', NULL, NULL),
(1165, '120400', '12', '4', '0', 'JAUJA', NULL, NULL),
(1166, '120401', '12', '4', '1', 'ACOLLA', NULL, NULL),
(1167, '120402', '12', '4', '2', 'APATA', NULL, NULL),
(1168, '120403', '12', '4', '3', 'ATAURA', NULL, NULL),
(1169, '120404', '12', '4', '4', 'CANCHAYLLO', NULL, NULL),
(1170, '120405', '12', '4', '5', 'CURICACA', NULL, NULL),
(1171, '120406', '12', '4', '6', 'EL MANTARO', NULL, NULL),
(1172, '120407', '12', '4', '7', 'HUAMALI', NULL, NULL),
(1173, '120408', '12', '4', '8', 'HUARIPAMPA', NULL, NULL),
(1174, '120409', '12', '4', '9', 'HUERTAS', NULL, NULL),
(1175, '120410', '12', '4', '10', 'JANJAILLO', NULL, NULL),
(1176, '120411', '12', '4', '11', 'JAUJA', NULL, NULL),
(1177, '120412', '12', '4', '12', 'JULCAN', NULL, NULL),
(1178, '120413', '12', '4', '13', 'LEONAR ORDANEZ', NULL, NULL),
(1179, '120414', '12', '4', '14', 'LLOCLLA PAMPA', NULL, NULL),
(1180, '120415', '12', '4', '15', 'MARCO', NULL, NULL),
(1181, '120416', '12', '4', '16', 'MASMA', NULL, NULL),
(1182, '120417', '12', '4', '17', 'MASMACHICCHE', NULL, NULL),
(1183, '120418', '12', '4', '18', 'MOLINOS', NULL, NULL),
(1184, '120419', '12', '4', '19', 'MONOBAMBA', NULL, NULL),
(1185, '120420', '12', '4', '20', 'MUQUI', NULL, NULL),
(1186, '120421', '12', '4', '21', 'MUQUIYAUYO', NULL, NULL),
(1187, '120422', '12', '4', '22', 'PACA', NULL, NULL),
(1188, '120423', '12', '4', '23', 'PACCHA', NULL, NULL),
(1189, '120424', '12', '4', '24', 'PANCAN', NULL, NULL),
(1190, '120425', '12', '4', '25', 'PARCO', NULL, NULL),
(1191, '120426', '12', '4', '26', 'POMACANCHA', NULL, NULL),
(1192, '120427', '12', '4', '27', 'RICRAN', NULL, NULL),
(1193, '120428', '12', '4', '28', 'SAN LORENZO', NULL, NULL),
(1194, '120429', '12', '4', '29', 'SAN PEDRO DE CHUAN', NULL, NULL),
(1195, '120430', '12', '4', '30', 'SAUSA', NULL, NULL),
(1196, '120431', '12', '4', '31', 'SINCOS', NULL, NULL),
(1197, '120432', '12', '4', '32', 'TUNAN MARCA', NULL, NULL),
(1198, '120433', '12', '4', '33', 'YAULI', NULL, NULL),
(1199, '120434', '12', '4', '34', 'YAUYOS', NULL, NULL),
(1200, '120500', '12', '5', '0', 'JUNIN', NULL, NULL),
(1201, '120501', '12', '5', '1', 'CARHUAMAYO', NULL, NULL),
(1202, '120502', '12', '5', '2', 'JUNIN', NULL, NULL),
(1203, '120503', '12', '5', '3', 'ONDORES', NULL, NULL),
(1204, '120504', '12', '5', '4', 'ULCUMAYO', NULL, NULL),
(1205, '120600', '12', '6', '0', 'SATIPO', NULL, NULL),
(1206, '120601', '12', '6', '1', 'COVIRIALI', NULL, NULL),
(1207, '120602', '12', '6', '2', 'LLAYLLA', NULL, NULL),
(1208, '120603', '12', '6', '3', 'MAZAMARI', NULL, NULL),
(1209, '120604', '12', '6', '4', 'PAMPA HERMOSA', NULL, NULL),
(1210, '120605', '12', '6', '5', 'PANGOA', NULL, NULL),
(1211, '120606', '12', '6', '6', 'RIO NEGRO', NULL, NULL),
(1212, '120607', '12', '6', '7', 'RIO TAMBO', NULL, NULL),
(1213, '120608', '12', '6', '8', 'SATIPO', NULL, NULL),
(1214, '120700', '12', '7', '0', 'TARMA', NULL, NULL),
(1215, '120701', '12', '7', '1', 'ACOBAMBA', NULL, NULL),
(1216, '120702', '12', '7', '2', 'HUARICOLCA', NULL, NULL),
(1217, '120703', '12', '7', '3', 'HUASAHUASI', NULL, NULL),
(1218, '120704', '12', '7', '4', 'LA UNION', NULL, NULL),
(1219, '120705', '12', '7', '5', 'PALCA', NULL, NULL),
(1220, '120706', '12', '7', '6', 'PALCAMAYO', NULL, NULL),
(1221, '120707', '12', '7', '7', 'SAN PEDRO DE CAJAS', NULL, NULL),
(1222, '120708', '12', '7', '8', 'TAPO', NULL, NULL),
(1223, '120709', '12', '7', '9', 'TARMA', NULL, NULL),
(1224, '120800', '12', '8', '0', 'YAULI', NULL, NULL),
(1225, '120801', '12', '8', '1', 'CHACAPALCA', NULL, NULL),
(1226, '120802', '12', '8', '2', 'HUAYHUAY', NULL, NULL),
(1227, '120803', '12', '8', '3', 'LA OROYA', NULL, NULL),
(1228, '120804', '12', '8', '4', 'MARCA POMACHOCHA', NULL, NULL),
(1229, '120805', '12', '8', '5', 'MOROCOCHA', NULL, NULL),
(1230, '120806', '12', '8', '6', 'PACCHA', NULL, NULL),
(1231, '120807', '12', '8', '7', 'SANTA ROSA DE SACCO', NULL, NULL),
(1232, '120808', '12', '8', '8', 'STA BARBARA DE CARHUACAYA', NULL, NULL),
(1233, '120809', '12', '8', '9', 'SUITUCANCHAZ', NULL, NULL),
(1234, '120810', '12', '8', '10', 'YAULI', NULL, NULL),
(1235, '120900', '12', '9', '0', 'CHUPACA', NULL, NULL),
(1236, '120901', '12', '9', '1', 'AHUAC', NULL, NULL),
(1237, '120902', '12', '9', '2', 'CHONGOS BAJOS', NULL, NULL),
(1238, '120903', '12', '9', '3', 'CHUPACA', NULL, NULL),
(1239, '120904', '12', '9', '4', 'HUACHAC', NULL, NULL),
(1240, '120905', '12', '9', '5', 'HUAMANCACA CHICO', NULL, NULL),
(1241, '120906', '12', '9', '6', 'JARPA', NULL, NULL),
(1242, '120907', '12', '9', '7', 'SAN JUAN DE YSCOS', NULL, NULL),
(1243, '120908', '12', '9', '8', 'TRES DE DICIEMBRE', NULL, NULL),
(1244, '120909', '12', '9', '9', 'YANACANCHA', NULL, NULL),
(1245, '130000', '13', '0', '0', 'LA LIBERTAD', NULL, NULL),
(1246, '130100', '13', '1', '0', 'BOLIVAR', NULL, NULL),
(1247, '130101', '13', '1', '1', 'BAMBAMARCA', NULL, NULL),
(1248, '130102', '13', '1', '2', 'BOLIVAR', NULL, NULL),
(1249, '130103', '13', '1', '3', 'CONDORMARCA', NULL, NULL),
(1250, '130104', '13', '1', '4', 'LONGOTEA', NULL, NULL),
(1251, '130105', '13', '1', '5', 'UCHUMARCA', NULL, NULL),
(1252, '130106', '13', '1', '6', 'UCUNCHA', NULL, NULL),
(1253, '130200', '13', '2', '0', 'SANCHEZ CARRION', NULL, NULL),
(1254, '130201', '13', '2', '1', 'CHUGAY', NULL, NULL),
(1255, '130202', '13', '2', '2', 'COCHORCO', NULL, NULL),
(1256, '130203', '13', '2', '3', 'CURGOS', NULL, NULL),
(1257, '130204', '13', '2', '4', 'HUAMACHUCO', NULL, NULL),
(1258, '130205', '13', '2', '5', 'MARCABAL', NULL, NULL),
(1259, '130206', '13', '2', '6', 'SANAGORAN', NULL, NULL),
(1260, '130207', '13', '2', '7', 'SARIN', NULL, NULL),
(1261, '130208', '13', '2', '8', 'SARTIMBAMBA', NULL, NULL),
(1262, '130300', '13', '3', '0', 'OTUZCO', NULL, NULL),
(1263, '130301', '13', '3', '1', 'AGALLPAMPA', NULL, NULL),
(1264, '130302', '13', '3', '2', 'CHARAT', NULL, NULL),
(1265, '130303', '13', '3', '3', 'HUARANCHAL', NULL, NULL),
(1266, '130304', '13', '3', '4', 'LA CUESTA', NULL, NULL),
(1267, '130305', '13', '3', '5', 'MACHE', NULL, NULL),
(1268, '130306', '13', '3', '6', 'OTUZCO', NULL, NULL),
(1269, '130307', '13', '3', '7', 'PARANDAY', NULL, NULL),
(1270, '130308', '13', '3', '8', 'SALPO', NULL, NULL),
(1271, '130309', '13', '3', '9', 'SINSICAP', NULL, NULL),
(1272, '130310', '13', '3', '10', 'USQUIL', NULL, NULL),
(1273, '130400', '13', '4', '0', 'PACASMAYO', NULL, NULL),
(1274, '130401', '13', '4', '1', 'GUADALUPE', NULL, NULL),
(1275, '130402', '13', '4', '2', 'JEQUETEPEQUE', NULL, NULL),
(1276, '130403', '13', '4', '3', 'PACASMAYO', NULL, NULL),
(1277, '130404', '13', '4', '4', 'SAN JOSE', NULL, NULL),
(1278, '130405', '13', '4', '5', 'SAN PEDRO DE LLOC', NULL, NULL),
(1279, '130500', '13', '5', '0', 'PATAZ', NULL, NULL),
(1280, '130501', '13', '5', '1', 'BULDIBUYO', NULL, NULL),
(1281, '130502', '13', '5', '2', 'CHILIA', NULL, NULL),
(1282, '130503', '13', '5', '3', 'HUANCASPATA', NULL, NULL),
(1283, '130504', '13', '5', '4', 'HUAYLILLAS', NULL, NULL),
(1284, '130505', '13', '5', '5', 'HUAYO', NULL, NULL),
(1285, '130506', '13', '5', '6', 'ONGON', NULL, NULL),
(1286, '130507', '13', '5', '7', 'PARCOY', NULL, NULL),
(1287, '130508', '13', '5', '8', 'PATAZ', NULL, NULL),
(1288, '130509', '13', '5', '9', 'PIAS', NULL, NULL),
(1289, '130510', '13', '5', '10', 'SANTIAGO DE CHALLAS', NULL, NULL),
(1290, '130511', '13', '5', '11', 'TAURIJA', NULL, NULL),
(1291, '130512', '13', '5', '12', 'TAYABAMBA', NULL, NULL),
(1292, '130513', '13', '5', '13', 'URPAY', NULL, NULL),
(1293, '130600', '13', '6', '0', 'SANTIAGO DE CHUCO', NULL, NULL),
(1294, '130601', '13', '6', '1', 'ANGASMARCA', NULL, NULL),
(1295, '130602', '13', '6', '2', 'CACHICADAN', NULL, NULL),
(1296, '130603', '13', '6', '3', 'MOLLEBAMBA', NULL, NULL),
(1297, '130604', '13', '6', '4', 'MOLLEPATA', NULL, NULL),
(1298, '130605', '13', '6', '5', 'QUIRUVILCA', NULL, NULL),
(1299, '130606', '13', '6', '6', 'SANTA CRUZ DE CHUCA', NULL, NULL),
(1300, '130607', '13', '6', '7', 'SANTIAGO DE CHUCO', NULL, NULL),
(1301, '130608', '13', '6', '8', 'SITABAMBA', NULL, NULL),
(1302, '130700', '13', '7', '0', 'TRUJILLO', NULL, NULL),
(1303, '130701', '13', '7', '1', 'EL PORVENIR', NULL, NULL),
(1304, '130702', '13', '7', '2', 'FLORENCIA DE MORA', NULL, NULL),
(1305, '130703', '13', '7', '3', 'HUANCHACO', NULL, NULL),
(1306, '130704', '13', '7', '4', 'LA ESPERANZA', NULL, NULL),
(1307, '130705', '13', '7', '5', 'LAREDO', NULL, NULL),
(1308, '130706', '13', '7', '6', 'MOCHE', NULL, NULL),
(1309, '130707', '13', '7', '7', 'POROTO', NULL, NULL),
(1310, '130708', '13', '7', '8', 'SALAVERRY', NULL, NULL),
(1311, '130709', '13', '7', '9', 'SIMBAL', NULL, NULL),
(1312, '130710', '13', '7', '10', 'TRUJILLO', NULL, NULL),
(1313, '130711', '13', '7', '11', 'VICTOR LARCO HERRERA', NULL, NULL),
(1314, '130800', '13', '8', '0', 'ASCOPE', NULL, NULL),
(1315, '130801', '13', '8', '1', 'ASCOPE', NULL, NULL),
(1316, '130802', '13', '8', '2', 'CHICAMA', NULL, NULL),
(1317, '130803', '13', '8', '3', 'CHOCOPE', NULL, NULL),
(1318, '130804', '13', '8', '4', 'MAGDALENA DE CAO', NULL, NULL),
(1319, '130805', '13', '8', '5', 'PAIJAN', NULL, NULL),
(1320, '130806', '13', '8', '6', 'RAZURI', NULL, NULL),
(1321, '130807', '13', '8', '7', 'SANTIAGO DE CAO', NULL, NULL),
(1322, '130900', '13', '9', '0', 'CHEPEN', NULL, NULL),
(1323, '130901', '13', '9', '1', 'CHEPEN', NULL, NULL),
(1324, '130902', '13', '9', '2', 'PACANGA', NULL, NULL),
(1325, '130903', '13', '9', '3', 'PUEBLO NUEVO', NULL, NULL),
(1326, '131000', '13', '10', '0', 'GRAN CHUMU', NULL, NULL),
(1327, '131001', '13', '10', '1', 'CASCAS', NULL, NULL),
(1328, '131002', '13', '10', '2', 'LUCMA', NULL, NULL),
(1329, '131003', '13', '10', '3', 'MARMOT', NULL, NULL),
(1330, '131004', '13', '10', '4', 'SAYAPULLO', NULL, NULL),
(1331, '131100', '13', '11', '0', 'JULCAN', NULL, NULL),
(1332, '131101', '13', '11', '1', 'CALAMARCA', NULL, NULL),
(1333, '131102', '13', '11', '2', 'CARABAMBA', NULL, NULL),
(1334, '131103', '13', '11', '3', 'HUASO', NULL, NULL),
(1335, '131104', '13', '11', '4', 'JULCAN', NULL, NULL),
(1336, '131200', '13', '12', '0', 'VIRU', NULL, NULL),
(1337, '131201', '13', '12', '1', 'CHAO', NULL, NULL),
(1338, '131202', '13', '12', '2', 'GUADALUPITO', NULL, NULL),
(1339, '131203', '13', '12', '3', 'VIRU', NULL, NULL),
(1340, '140000', '14', '0', '0', 'LAMBAYEQUE', NULL, NULL),
(1341, '140100', '14', '1', '0', 'CHICLAYO', NULL, NULL),
(1342, '140101', '14', '1', '1', 'CHICLAYO', NULL, NULL),
(1343, '140102', '14', '1', '2', 'CHONGOYAPE', NULL, NULL),
(1344, '140103', '14', '1', '3', 'ETEN', NULL, NULL),
(1345, '140104', '14', '1', '4', 'ETEN PUERTO', NULL, NULL),
(1346, '140105', '14', '1', '5', 'JOSE LEONARDO ORTIZ', NULL, NULL),
(1347, '140106', '14', '1', '6', 'LA VICTORIA', NULL, NULL),
(1348, '140107', '14', '1', '7', 'LAGUNAS', NULL, NULL),
(1349, '140108', '14', '1', '8', 'MONSEFU', NULL, NULL),
(1350, '140109', '14', '1', '9', 'NUEVA ARICA', NULL, NULL),
(1351, '140110', '14', '1', '10', 'OYOTUN', NULL, NULL),
(1352, '140111', '14', '1', '11', 'PICSI', NULL, NULL),
(1353, '140112', '14', '1', '12', 'PIMENTEL', NULL, NULL),
(1354, '140113', '14', '1', '13', 'REQUE', NULL, NULL),
(1355, '140114', '14', '1', '14', 'SANTA ROSA', NULL, NULL),
(1356, '140115', '14', '1', '15', 'SA¥A', NULL, NULL),
(1357, '140200', '14', '2', '0', 'FERRE¥AFE', NULL, NULL),
(1358, '140201', '14', '2', '1', 'CANARIS', NULL, NULL),
(1359, '140202', '14', '2', '2', 'FERRENAFE', NULL, NULL),
(1360, '140203', '14', '2', '3', 'INCAHUASI', NULL, NULL),
(1361, '140204', '14', '2', '4', 'MANUEL A. MESONES MURO', NULL, NULL),
(1362, '140205', '14', '2', '5', 'PITIPO', NULL, NULL),
(1363, '140206', '14', '2', '6', 'PUEBLO NUEVO', NULL, NULL),
(1364, '140300', '14', '3', '0', 'LAMBAYEQUE', NULL, NULL),
(1365, '140301', '14', '3', '1', 'CHOCHOPE', NULL, NULL),
(1366, '140302', '14', '3', '2', 'ILLIMO', NULL, NULL),
(1367, '140303', '14', '3', '3', 'JAYANCA', NULL, NULL),
(1368, '140304', '14', '3', '4', 'LAMBAYEQUE', NULL, NULL),
(1369, '140305', '14', '3', '5', 'MOCHUMI', NULL, NULL),
(1370, '140306', '14', '3', '6', 'MORROPE', NULL, NULL),
(1371, '140307', '14', '3', '7', 'MOTUPE', NULL, NULL),
(1372, '140308', '14', '3', '8', 'OLMOS', NULL, NULL),
(1373, '140309', '14', '3', '9', 'PACORA', NULL, NULL),
(1374, '140310', '14', '3', '10', 'SALAS', NULL, NULL),
(1375, '140311', '14', '3', '11', 'SAN JOSE', NULL, NULL),
(1376, '140312', '14', '3', '12', 'TUCUME', NULL, NULL),
(1377, '150000', '15', '0', '0', 'LIMA', NULL, NULL),
(1378, '150100', '15', '1', '0', 'CAJATAMBO', NULL, NULL),
(1379, '150101', '15', '1', '1', 'CAJATAMBO', NULL, NULL),
(1380, '150102', '15', '1', '2', 'COPA', NULL, NULL),
(1381, '150103', '15', '1', '3', 'GORGOR', NULL, NULL),
(1382, '150104', '15', '1', '4', 'HUANCAPON', NULL, NULL),
(1383, '150105', '15', '1', '5', 'MANAS', NULL, NULL),
(1384, '150200', '15', '2', '0', 'CANTA', NULL, NULL),
(1385, '150201', '15', '2', '1', 'ARAHUAY', NULL, NULL),
(1386, '150202', '15', '2', '2', 'CANTA', NULL, NULL),
(1387, '150203', '15', '2', '3', 'HUAMANTANGA', NULL, NULL),
(1388, '150204', '15', '2', '4', 'HUAROS', NULL, NULL),
(1389, '150205', '15', '2', '5', 'LACHAQUI', NULL, NULL),
(1390, '150206', '15', '2', '6', 'SAN BUENAVENTURA', NULL, NULL),
(1391, '150207', '15', '2', '7', 'SANTA ROSA DE QUIVES', NULL, NULL),
(1392, '150300', '15', '3', '0', 'CAÑETE', NULL, NULL),
(1393, '150301', '15', '3', '1', 'ASIA', NULL, NULL),
(1394, '150302', '15', '3', '2', 'CALANGO', NULL, NULL),
(1395, '150303', '15', '3', '3', 'CERRO AZUL', NULL, NULL),
(1396, '150304', '15', '3', '4', 'CHILCA', NULL, NULL),
(1397, '150305', '15', '3', '5', 'COAYLLO', NULL, NULL),
(1398, '150306', '15', '3', '6', 'IMPERIAL', NULL, NULL),
(1399, '150307', '15', '3', '7', 'LUNAHUANA', NULL, NULL),
(1400, '150308', '15', '3', '8', 'MALA', NULL, NULL),
(1401, '150309', '15', '3', '9', 'NUEVO IMPERIAL', NULL, NULL),
(1402, '150310', '15', '3', '10', 'PACARAN', NULL, NULL),
(1403, '150311', '15', '3', '11', 'QUILMANA', NULL, NULL),
(1404, '150312', '15', '3', '12', 'SAN ANTONIO', NULL, NULL),
(1405, '150313', '15', '3', '13', 'SAN LUIS', NULL, NULL),
(1406, '150314', '15', '3', '14', 'SAN VICENTE DE CAÑETE', NULL, NULL),
(1407, '150315', '15', '3', '15', 'SANTA CRUZ DE FLORES', NULL, NULL),
(1408, '150316', '15', '3', '16', 'ZUÑIGA', NULL, NULL),
(1409, '150400', '15', '4', '0', 'HUAURA', NULL, NULL),
(1410, '150401', '15', '4', '1', 'AMBAR', NULL, NULL),
(1411, '150402', '15', '4', '2', 'CALETA DE CARQUIN', NULL, NULL),
(1412, '150403', '15', '4', '3', 'CHECRAS', NULL, NULL),
(1413, '150404', '15', '4', '4', 'HUACHO', NULL, NULL),
(1414, '150405', '15', '4', '5', 'HUALMAY', NULL, NULL),
(1415, '150406', '15', '4', '6', 'HUAURA', NULL, NULL),
(1416, '150407', '15', '4', '7', 'LEONCIO PRADO', NULL, NULL),
(1417, '150408', '15', '4', '8', 'PACCHO', NULL, NULL),
(1418, '150409', '15', '4', '9', 'SANTA LEONOR', NULL, NULL),
(1419, '150410', '15', '4', '10', 'SANTA MARIA', NULL, NULL),
(1420, '150411', '15', '4', '11', 'SAYAN', NULL, NULL),
(1421, '150412', '15', '4', '12', 'VEGUETA', NULL, NULL),
(1422, '150500', '15', '5', '0', 'HUARAL', NULL, NULL),
(1423, '150501', '15', '5', '1', 'ATAVILLOS ALTO', NULL, NULL),
(1424, '150502', '15', '5', '2', 'ATAVILLOS BAJOS', NULL, NULL),
(1425, '150503', '15', '5', '3', 'AUCALLAMA', NULL, NULL),
(1426, '150504', '15', '5', '4', 'CHANCAY', NULL, NULL),
(1427, '150505', '15', '5', '5', 'HUARAL', NULL, NULL),
(1428, '150506', '15', '5', '6', 'IHUARI', NULL, NULL),
(1429, '150507', '15', '5', '7', 'LAMPIAN', NULL, NULL),
(1430, '150508', '15', '5', '8', 'RACAROS', NULL, NULL),
(1431, '150509', '15', '5', '9', 'SAN MIGUEL DE ACOS', NULL, NULL),
(1432, '150510', '15', '5', '10', 'SANTA CRUZ DE ANDAMARCA', NULL, NULL),
(1433, '150511', '15', '5', '11', 'SUMBILCA', NULL, NULL),
(1434, '150512', '15', '5', '12', 'VEINTISIETE DE NOVIEMBRE', NULL, NULL),
(1435, '150600', '15', '6', '0', 'HUAROCHIRI', NULL, NULL),
(1436, '150601', '15', '6', '1', 'ANTIOQUIA', NULL, NULL),
(1437, '150602', '15', '6', '2', 'CALLAHUANCA', NULL, NULL),
(1438, '150603', '15', '6', '3', 'CARAMPOMA', NULL, NULL),
(1439, '150604', '15', '6', '4', 'CHICLA', NULL, NULL),
(1440, '150605', '15', '6', '5', 'CUENCA', NULL, NULL),
(1441, '150606', '15', '6', '6', 'HUACHUPAMPA', NULL, NULL),
(1442, '150607', '15', '6', '7', 'HUANZA', NULL, NULL),
(1443, '150608', '15', '6', '8', 'HUAROCHIRI', NULL, NULL),
(1444, '150609', '15', '6', '9', 'LAHUAYTAMBO', NULL, NULL),
(1445, '150610', '15', '6', '10', 'LANGA', NULL, NULL),
(1446, '150611', '15', '6', '11', 'LARAOS', NULL, NULL),
(1447, '150612', '15', '6', '12', 'MARIATANA', NULL, NULL),
(1448, '150613', '15', '6', '13', 'MATUCANA', NULL, NULL),
(1449, '150614', '15', '6', '14', 'RICARDO PALMA', NULL, NULL),
(1450, '150615', '15', '6', '15', 'SAN ANDRES DE TUPICOCHA', NULL, NULL),
(1451, '150616', '15', '6', '16', 'SAN ANTONIO', NULL, NULL),
(1452, '150617', '15', '6', '17', 'SAN BARTOLOME', NULL, NULL),
(1453, '150618', '15', '6', '18', 'SAN DAMIAN', NULL, NULL),
(1454, '150619', '15', '6', '19', 'SAN JUAN DE IRIS', NULL, NULL),
(1455, '150620', '15', '6', '20', 'SAN JUAN DE TANTARACHE', NULL, NULL),
(1456, '150621', '15', '6', '21', 'SAN LORENZO DE QUINTI', NULL, NULL),
(1457, '150622', '15', '6', '22', 'SAN MATEO', NULL, NULL),
(1458, '150623', '15', '6', '23', 'SAN MATEO DE OTAO', NULL, NULL),
(1459, '150624', '15', '6', '24', 'SAN PEDRO DE CASTA', NULL, NULL),
(1460, '150625', '15', '6', '25', 'SAN PEDRO DE HUANCAYRE', NULL, NULL),
(1461, '150626', '15', '6', '26', 'SANGALLAPA', NULL, NULL),
(1462, '150627', '15', '6', '27', 'SANTA CRUZ DE COCACHACRA', NULL, NULL),
(1463, '150628', '15', '6', '28', 'SANTA EULALIA', NULL, NULL),
(1464, '150629', '15', '6', '29', 'SANTIAGO DE ANCHUCAYA', NULL, NULL),
(1465, '150630', '15', '6', '30', 'SANTIAGO DE TUNA', NULL, NULL),
(1466, '150631', '15', '6', '31', 'STO. DGO. DE LOS OLLEROS', NULL, NULL),
(1467, '150632', '15', '6', '32', 'SURCO', NULL, NULL),
(1468, '150700', '15', '7', '0', 'LIMA', NULL, NULL),
(1469, '150701', '15', '7', '1', 'CERCADO DE LIMA', NULL, NULL),
(1470, '150702', '15', '7', '2', 'ANCON', NULL, NULL),
(1471, '150703', '15', '7', '3', 'ATE-VITARTE', NULL, NULL),
(1472, '150704', '15', '7', '4', 'BARRANCO', NULL, NULL),
(1473, '150705', '15', '7', '5', 'BREÑA', NULL, NULL),
(1474, '150706', '15', '7', '6', 'CARABAYLLO', NULL, NULL),
(1475, '150707', '15', '7', '7', 'COMAS', NULL, NULL),
(1476, '150708', '15', '7', '8', 'CHACLACAYO', NULL, NULL),
(1477, '150709', '15', '7', '9', 'CHORRILLOS', NULL, NULL),
(1478, '150710', '15', '7', '10', 'EL AGUSTINO', NULL, NULL),
(1479, '150711', '15', '7', '11', 'JESUS MARIA', NULL, NULL),
(1480, '150712', '15', '7', '12', 'LA MOLINA', NULL, NULL),
(1481, '150713', '15', '7', '13', 'LA VICTORIA', NULL, NULL),
(1482, '150714', '15', '7', '14', 'LINCE', NULL, NULL),
(1483, '150715', '15', '7', '15', 'LURIGANCHO (CHOSICA)', NULL, NULL),
(1484, '150716', '15', '7', '16', 'LURIN', NULL, NULL),
(1485, '150717', '15', '7', '17', 'MAGDALENA DEL MAR', NULL, NULL),
(1486, '150718', '15', '7', '18', 'MIRAFLORES', NULL, NULL),
(1487, '150719', '15', '7', '19', 'PACHACAMAC', NULL, NULL),
(1488, '150720', '15', '7', '20', 'PUCUSANA', NULL, NULL),
(1489, '150721', '15', '7', '21', 'PUEBLO LIBRE', NULL, NULL),
(1490, '150722', '15', '7', '22', 'PUENTE PIEDRA', NULL, NULL),
(1491, '150723', '15', '7', '23', 'PUNTA NEGRA', NULL, NULL),
(1492, '150724', '15', '7', '24', 'PUNTA HERMOSA', NULL, NULL),
(1493, '150725', '15', '7', '25', 'RIMAC', NULL, NULL),
(1494, '150726', '15', '7', '26', 'SAN BARTOLO', NULL, NULL),
(1495, '150727', '15', '7', '27', 'SAN ISIDRO', NULL, NULL),
(1496, '150728', '15', '7', '28', 'INDEPENDENCIA', NULL, NULL),
(1497, '150729', '15', '7', '29', 'SAN JUAN DE MIRAFLORES', NULL, NULL),
(1498, '150730', '15', '7', '30', 'SAN LUIS', NULL, NULL),
(1499, '150731', '15', '7', '31', 'SAN MARTIN DE PORRES', NULL, NULL),
(1500, '150732', '15', '7', '32', 'SAN MIGUEL', NULL, NULL),
(1501, '150733', '15', '7', '33', 'SANTIAGO DE SURCO', NULL, NULL),
(1502, '150734', '15', '7', '34', 'SURQUILLO', NULL, NULL),
(1503, '150735', '15', '7', '35', 'VILLA MARIA DEL TRIUNFO', NULL, NULL),
(1504, '150736', '15', '7', '36', 'S.J.DE LURIGANCHO', NULL, NULL),
(1505, '150737', '15', '7', '37', 'SANTA MARIA DEL MAR', NULL, NULL),
(1506, '150738', '15', '7', '38', 'SANTA ROSA', NULL, NULL),
(1507, '150739', '15', '7', '39', 'LOS OLIVOS', NULL, NULL),
(1508, '150740', '15', '7', '40', 'CIENEGILLA', NULL, NULL),
(1509, '150741', '15', '7', '41', 'SAN BORJA', NULL, NULL),
(1510, '150742', '15', '7', '42', 'VILLA EL SALVADOR', NULL, NULL),
(1511, '150743', '15', '7', '43', 'SANTA ANITA', NULL, NULL),
(1512, '150799', '15', '7', '99', 'PLAN RENTABLE PERU', NULL, NULL),
(1513, '150800', '15', '8', '0', 'YAUYOS', NULL, NULL),
(1514, '150801', '15', '8', '1', 'ALIS', NULL, NULL),
(1515, '150802', '15', '8', '2', 'AYAUCA', NULL, NULL),
(1516, '150803', '15', '8', '3', 'AYAVIRI', NULL, NULL),
(1517, '150804', '15', '8', '4', 'AZANGARO', NULL, NULL),
(1518, '150805', '15', '8', '5', 'CACRA', NULL, NULL),
(1519, '150806', '15', '8', '6', 'CARANIA', NULL, NULL),
(1520, '150807', '15', '8', '7', 'CATAHUASI', NULL, NULL),
(1521, '150808', '15', '8', '8', 'CHOCOS', NULL, NULL),
(1522, '150809', '15', '8', '9', 'COCHAS', NULL, NULL),
(1523, '150810', '15', '8', '10', 'COLONIA', NULL, NULL),
(1524, '150811', '15', '8', '11', 'HONGOS', NULL, NULL),
(1525, '150812', '15', '8', '12', 'HUAMPARA', NULL, NULL),
(1526, '150813', '15', '8', '13', 'HUANCAYA', NULL, NULL),
(1527, '150814', '15', '8', '14', 'HUANGASCAR', NULL, NULL),
(1528, '150815', '15', '8', '15', 'HUANTAN', NULL, NULL),
(1529, '150816', '15', '8', '16', 'HUA¥EC', NULL, NULL),
(1530, '150817', '15', '8', '17', 'LARAOS', NULL, NULL),
(1531, '150818', '15', '8', '18', 'LINCHA', NULL, NULL),
(1532, '150819', '15', '8', '19', 'MADEAN', NULL, NULL),
(1533, '150820', '15', '8', '20', 'MIRAFLORES', NULL, NULL),
(1534, '150821', '15', '8', '21', 'OMAS', NULL, NULL),
(1535, '150822', '15', '8', '22', 'QUINCHES', NULL, NULL),
(1536, '150823', '15', '8', '23', 'QUINOCAY', NULL, NULL),
(1537, '150824', '15', '8', '24', 'SAN JOAQUIN', NULL, NULL),
(1538, '150825', '15', '8', '25', 'SAN LORENZO DE PUTINZA', NULL, NULL),
(1539, '150826', '15', '8', '26', 'SAN PEDRO DE PILAS', NULL, NULL),
(1540, '150827', '15', '8', '27', 'TANTA', NULL, NULL),
(1541, '150828', '15', '8', '28', 'TAURIPAMPA', NULL, NULL),
(1542, '150829', '15', '8', '29', 'TOMAS', NULL, NULL),
(1543, '150830', '15', '8', '30', 'TUPE', NULL, NULL),
(1544, '150831', '15', '8', '31', 'VITIS', NULL, NULL),
(1545, '150832', '15', '8', '32', 'VI¥AC', NULL, NULL),
(1546, '150833', '15', '8', '33', 'YAUYOS', NULL, NULL),
(1547, '150900', '15', '9', '0', 'BARRANCA', NULL, NULL),
(1548, '150901', '15', '9', '1', 'BARRANCA', NULL, NULL),
(1549, '150902', '15', '9', '2', 'PARAMONGA', NULL, NULL),
(1550, '150903', '15', '9', '3', 'PATIVILCA', NULL, NULL),
(1551, '150904', '15', '9', '4', 'SUPE', NULL, NULL),
(1552, '150905', '15', '9', '5', 'SUPE PUERTO', NULL, NULL),
(1553, '151000', '15', '10', '0', 'OYON', NULL, NULL),
(1554, '151001', '15', '10', '1', 'ANDAJES', NULL, NULL),
(1555, '151002', '15', '10', '2', 'CAUJUL', NULL, NULL),
(1556, '151003', '15', '10', '3', 'COCHAMARCA', NULL, NULL),
(1557, '151004', '15', '10', '4', 'NAVAN', NULL, NULL),
(1558, '151005', '15', '10', '5', 'OLLON', NULL, NULL),
(1559, '151006', '15', '10', '6', 'PACHANGARA', NULL, NULL),
(1560, '160000', '16', '0', '0', 'LORETO', NULL, NULL),
(1561, '160100', '16', '1', '0', 'ALTO AMAZONAS', NULL, NULL),
(1562, '160101', '16', '1', '1', 'BALSA PUERTO', NULL, NULL),
(1563, '160102', '16', '1', '2', 'BARRANCA', NULL, NULL),
(1564, '160103', '16', '1', '3', 'CAHUAPANAS', NULL, NULL),
(1565, '160104', '16', '1', '4', 'JEBEROS', NULL, NULL),
(1566, '160105', '16', '1', '5', 'LAGUNAS', NULL, NULL),
(1567, '160106', '16', '1', '6', 'MANSERICHE', NULL, NULL),
(1568, '160107', '16', '1', '7', 'MORONA', NULL, NULL),
(1569, '160108', '16', '1', '8', 'PASTAZA', NULL, NULL),
(1570, '160109', '16', '1', '9', 'SANTA CRUZ', NULL, NULL),
(1571, '160110', '16', '1', '10', 'TENIENTE CESAR LOPEZ ROJA', NULL, NULL),
(1572, '160111', '16', '1', '11', 'YURIMAGUAS', NULL, NULL),
(1573, '160200', '16', '2', '0', 'LORETO', NULL, NULL),
(1574, '160201', '16', '2', '1', 'NAUTA', NULL, NULL),
(1575, '160202', '16', '2', '2', 'PARINARI', NULL, NULL),
(1576, '160203', '16', '2', '3', 'TIGRE', NULL, NULL),
(1577, '160204', '16', '2', '4', 'TROMPETEROS', NULL, NULL),
(1578, '160205', '16', '2', '5', 'URARINAS', NULL, NULL),
(1579, '160300', '16', '3', '0', 'MAYNAS', NULL, NULL),
(1580, '160301', '16', '3', '1', 'ALTO NANAY', NULL, NULL),
(1581, '160302', '16', '3', '2', 'FERNANDO LORES', NULL, NULL),
(1582, '160303', '16', '3', '3', 'INDIANA', NULL, NULL),
(1583, '160304', '16', '3', '4', 'IQUITOS', NULL, NULL),
(1584, '160305', '16', '3', '5', 'LAS AMAZONAS', NULL, NULL),
(1585, '160306', '16', '3', '6', 'MAZAN', NULL, NULL),
(1586, '160307', '16', '3', '7', 'NAPO', NULL, NULL),
(1587, '160308', '16', '3', '8', 'PUNCHANA', NULL, NULL),
(1588, '160309', '16', '3', '9', 'PUTUMAYO', NULL, NULL),
(1589, '160310', '16', '3', '10', 'TORRES CAUSANA', NULL, NULL),
(1590, '160311', '16', '3', '11', 'YAQUERANA', NULL, NULL),
(1591, '160312', '16', '3', '12', 'BELEN', NULL, NULL),
(1592, '160313', '16', '3', '13', 'SAN JUAN', NULL, NULL),
(1593, '160400', '16', '4', '0', 'MARISCAL RAMON CASTILLA', NULL, NULL),
(1594, '160401', '16', '4', '1', 'PEBAS', NULL, NULL),
(1595, '160402', '16', '4', '2', 'RAMON CASTILLA', NULL, NULL),
(1596, '160403', '16', '4', '3', 'SAN PABLO', NULL, NULL),
(1597, '160404', '16', '4', '4', 'YAVARI', NULL, NULL),
(1598, '160500', '16', '5', '0', 'REQUENA', NULL, NULL),
(1599, '160501', '16', '5', '1', 'ALTO TAPICHE', NULL, NULL),
(1600, '160502', '16', '5', '2', 'CAPELO', NULL, NULL),
(1601, '160503', '16', '5', '3', 'EMILIO SAN MARTIN', NULL, NULL),
(1602, '160504', '16', '5', '4', 'JENARO HERRERA', NULL, NULL),
(1603, '160505', '16', '5', '5', 'MAQUIA', NULL, NULL),
(1604, '160506', '16', '5', '6', 'PUINAHUA', NULL, NULL),
(1605, '160507', '16', '5', '7', 'REQUENA', NULL, NULL),
(1606, '160508', '16', '5', '8', 'SAQUENA', NULL, NULL),
(1607, '160509', '16', '5', '9', 'SOPLIN', NULL, NULL),
(1608, '160510', '16', '5', '10', 'TAPICHE', NULL, NULL),
(1609, '160600', '16', '6', '0', 'UCAYALI', NULL, NULL),
(1610, '160601', '16', '6', '1', 'CONTAMANA', NULL, NULL),
(1611, '160602', '16', '6', '2', 'INAHUYA', NULL, NULL),
(1612, '160603', '16', '6', '3', 'PADRE MARQUEZ', NULL, NULL),
(1613, '160604', '16', '6', '4', 'PAMPA HERMOZA', NULL, NULL),
(1614, '160605', '16', '6', '5', 'SARAYACU', NULL, NULL),
(1615, '160606', '16', '6', '6', 'VARGAS GUERRA', NULL, NULL),
(1616, '170000', '17', '0', '0', 'MADRE DE DIOS', NULL, NULL),
(1617, '170100', '17', '1', '0', 'MANU', NULL, NULL),
(1618, '170101', '17', '1', '1', 'FITZCARRALD', NULL, NULL),
(1619, '170102', '17', '1', '2', 'MADRE DE DIOS', NULL, NULL),
(1620, '170103', '17', '1', '3', 'MANU', NULL, NULL),
(1621, '170200', '17', '2', '0', 'TAHUAMANU', NULL, NULL),
(1622, '170201', '17', '2', '1', 'IBERIA', NULL, NULL),
(1623, '170202', '17', '2', '2', 'INAPARI', NULL, NULL),
(1624, '170203', '17', '2', '3', 'TAHUAMANU', NULL, NULL),
(1625, '170300', '17', '3', '0', 'TAMBOPATA', NULL, NULL),
(1626, '170301', '17', '3', '1', 'INAMBARI', NULL, NULL),
(1627, '170302', '17', '3', '2', 'LABERINTO', NULL, NULL),
(1628, '170303', '17', '3', '3', 'LAS PIEDRAS', NULL, NULL),
(1629, '170304', '17', '3', '4', 'TAMBOPATA', NULL, NULL),
(1630, '180000', '18', '0', '0', 'MOQUEGUA', NULL, NULL),
(1631, '180100', '18', '1', '0', 'GENERAL SANCHEZ CERRO', NULL, NULL),
(1632, '180101', '18', '1', '1', 'CHOJATA', NULL, NULL),
(1633, '180102', '18', '1', '2', 'COLOAQUE', NULL, NULL),
(1634, '180103', '18', '1', '3', 'ICHUNA', NULL, NULL),
(1635, '180104', '18', '1', '4', 'LA CAPILLA', NULL, NULL),
(1636, '180105', '18', '1', '5', 'LLOQUE', NULL, NULL),
(1637, '180106', '18', '1', '6', 'MATALAQUE', NULL, NULL),
(1638, '180107', '18', '1', '7', 'OMATE', NULL, NULL),
(1639, '180108', '18', '1', '8', 'PUQUINA', NULL, NULL),
(1640, '180109', '18', '1', '9', 'QUINISTAQUILLAS', NULL, NULL),
(1641, '180110', '18', '1', '10', 'UBINAS', NULL, NULL),
(1642, '180111', '18', '1', '11', 'YUNGA', NULL, NULL),
(1643, '180200', '18', '2', '0', 'ILO', NULL, NULL),
(1644, '180201', '18', '2', '1', 'EL ALGARROBAL', NULL, NULL),
(1645, '180202', '18', '2', '2', 'ILO', NULL, NULL),
(1646, '180203', '18', '2', '3', 'PACOCHA', NULL, NULL),
(1647, '180300', '18', '3', '0', 'MARISCAL NIETO', NULL, NULL),
(1648, '180301', '18', '3', '1', 'CARUMAS', NULL, NULL),
(1649, '180302', '18', '3', '2', 'CUCHUMBAYA', NULL, NULL),
(1650, '180303', '18', '3', '3', 'MOQUEGUA', NULL, NULL),
(1651, '180304', '18', '3', '4', 'SAMEGUA', NULL, NULL),
(1652, '180305', '18', '3', '5', 'SAN CRISTOBAL', NULL, NULL),
(1653, '180306', '18', '3', '6', 'TORATA', NULL, NULL),
(1654, '190000', '19', '0', '0', 'PASCO', NULL, NULL),
(1655, '190100', '19', '1', '0', 'DANIEL A CARRION', NULL, NULL),
(1656, '190101', '19', '1', '1', 'CHACAYAN', NULL, NULL),
(1657, '190102', '19', '1', '2', 'GOYLLARISQUIZA', NULL, NULL),
(1658, '190103', '19', '1', '3', 'PAUCAR', NULL, NULL),
(1659, '190104', '19', '1', '4', 'SAN PEDRO DE PILLHO', NULL, NULL),
(1660, '190105', '19', '1', '5', 'SANTA ANA DE TUSI', NULL, NULL),
(1661, '190106', '19', '1', '6', 'TAPUC', NULL, NULL),
(1662, '190107', '19', '1', '7', 'VILCABAMBA', NULL, NULL),
(1663, '190108', '19', '1', '8', 'YANAHUANCA', NULL, NULL),
(1664, '190200', '19', '2', '0', 'OXAPAMPA', NULL, NULL),
(1665, '190201', '19', '2', '1', 'CHONTABAMBA', NULL, NULL),
(1666, '190202', '19', '2', '2', 'HUANCABAMBA', NULL, NULL),
(1667, '190203', '19', '2', '3', 'OXAPAMPA', NULL, NULL),
(1668, '190204', '19', '2', '4', 'PALCAZU', NULL, NULL),
(1669, '190205', '19', '2', '5', 'POZUZO', NULL, NULL),
(1670, '190206', '19', '2', '6', 'PUERTO BERMUDEZ', NULL, NULL),
(1671, '190207', '19', '2', '7', 'VILLA RICA', NULL, NULL),
(1672, '190300', '19', '3', '0', 'PASCO', NULL, NULL),
(1673, '190301', '19', '3', '1', 'CHAUPIMARCA', NULL, NULL),
(1674, '190302', '19', '3', '2', 'HUACHON', NULL, NULL),
(1675, '190303', '19', '3', '3', 'HUARIACA', NULL, NULL),
(1676, '190304', '19', '3', '4', 'HUAYLLAY', NULL, NULL),
(1677, '190305', '19', '3', '5', 'NINACACA', NULL, NULL),
(1678, '190306', '19', '3', '6', 'PALLANCHACRA', NULL, NULL),
(1679, '190307', '19', '3', '7', 'PAUCARTAMBO', NULL, NULL),
(1680, '190308', '19', '3', '8', 'SAN FCO DE ASIS DE YARUSY', NULL, NULL),
(1681, '190309', '19', '3', '9', 'SIMON BOLIVAR', NULL, NULL),
(1682, '190310', '19', '3', '10', 'TICLACAYAN', NULL, NULL),
(1683, '190311', '19', '3', '11', 'TINYA HUARCO', NULL, NULL),
(1684, '190312', '19', '3', '12', 'VICCO', NULL, NULL),
(1685, '190313', '19', '3', '13', 'YANACANCHA', NULL, NULL),
(1686, '200000', '20', '0', '0', 'PIURA', NULL, NULL),
(1687, '200100', '20', '1', '0', 'AYABACA', NULL, NULL),
(1688, '200101', '20', '1', '1', 'AYABACA', NULL, NULL),
(1689, '200102', '20', '1', '2', 'FRIAS', NULL, NULL),
(1690, '200103', '20', '1', '3', 'JILILI', NULL, NULL),
(1691, '200104', '20', '1', '4', 'LAGUNAS', NULL, NULL),
(1692, '200105', '20', '1', '5', 'MONTERO', NULL, NULL),
(1693, '200106', '20', '1', '6', 'PACAIPAMPA', NULL, NULL),
(1694, '200107', '20', '1', '7', 'PAIMAS', NULL, NULL),
(1695, '200108', '20', '1', '8', 'SAPILLICA', NULL, NULL),
(1696, '200109', '20', '1', '9', 'SICCHEZ', NULL, NULL),
(1697, '200110', '20', '1', '10', 'SUYO', NULL, NULL),
(1698, '200200', '20', '2', '0', 'HUANCABAMBA', NULL, NULL),
(1699, '200201', '20', '2', '1', 'CANCHAQUE', NULL, NULL),
(1700, '200202', '20', '2', '2', 'EL CARMEN DE LA FRONTERA', NULL, NULL),
(1701, '200203', '20', '2', '3', 'HUANCABAMBA', NULL, NULL),
(1702, '200204', '20', '2', '4', 'HUARMACA', NULL, NULL),
(1703, '200205', '20', '2', '5', 'LALAQUIZ', NULL, NULL),
(1704, '200206', '20', '2', '6', 'SAN MIGUEL DEL FAIQUE', NULL, NULL),
(1705, '200207', '20', '2', '7', 'SONDOR', NULL, NULL),
(1706, '200208', '20', '2', '8', 'SONDORILLO', NULL, NULL),
(1707, '200300', '20', '3', '0', 'MORROPON', NULL, NULL),
(1708, '200301', '20', '3', '1', 'BUENOS AIRES', NULL, NULL),
(1709, '200302', '20', '3', '2', 'CHALACO', NULL, NULL),
(1710, '200303', '20', '3', '3', 'CHULUCANAS', NULL, NULL),
(1711, '200304', '20', '3', '4', 'LA MATANZA', NULL, NULL),
(1712, '200305', '20', '3', '5', 'MORROPON', NULL, NULL),
(1713, '200306', '20', '3', '6', 'SALITRAL', NULL, NULL),
(1714, '200307', '20', '3', '7', 'SAN JUAN DEL BIGOTE', NULL, NULL),
(1715, '200308', '20', '3', '8', 'SANTA CATALINA DE MOSSA', NULL, NULL),
(1716, '200309', '20', '3', '9', 'SANTO DOMINGO', NULL, NULL),
(1717, '200310', '20', '3', '10', 'YAMANGO', NULL, NULL),
(1718, '200400', '20', '4', '0', 'PAITA', NULL, NULL),
(1719, '200401', '20', '4', '1', 'AMOTAPE', NULL, NULL),
(1720, '200402', '20', '4', '2', 'ARENAL', NULL, NULL),
(1721, '200403', '20', '4', '3', 'COLAN', NULL, NULL),
(1722, '200404', '20', '4', '4', 'LA HUACA', NULL, NULL),
(1723, '200405', '20', '4', '5', 'PAITA', NULL, NULL),
(1724, '200406', '20', '4', '6', 'TAMARINDO', NULL, NULL),
(1725, '200407', '20', '4', '7', 'VICHAYAL', NULL, NULL),
(1726, '200500', '20', '5', '0', 'PIURA', NULL, NULL),
(1727, '200501', '20', '5', '1', 'CASTILLA', NULL, NULL),
(1728, '200502', '20', '5', '2', 'CATACAOS', NULL, NULL),
(1729, '200503', '20', '5', '3', 'CURA MORI', NULL, NULL),
(1730, '200504', '20', '5', '4', 'EL TALLAN', NULL, NULL),
(1731, '200505', '20', '5', '5', 'LA ARENA', NULL, NULL),
(1732, '200506', '20', '5', '6', 'LA UNION', NULL, NULL),
(1733, '200507', '20', '5', '7', 'LAS LOMAS', NULL, NULL),
(1734, '200508', '20', '5', '8', 'PIURA', NULL, NULL),
(1735, '200509', '20', '5', '9', 'TAMBO GRANDE', NULL, NULL),
(1736, '200600', '20', '6', '0', 'SECHURA', NULL, NULL),
(1737, '200601', '20', '6', '1', 'BELLAVISTA DE LA UNION', NULL, NULL),
(1738, '200602', '20', '6', '2', 'BERNAL', NULL, NULL),
(1739, '200603', '20', '6', '3', 'CRISTO NOS VALGA', NULL, NULL),
(1740, '200604', '20', '6', '4', 'RINCONADA LLICUAR', NULL, NULL),
(1741, '200605', '20', '6', '5', 'SECHURA', NULL, NULL),
(1742, '200606', '20', '6', '6', 'VICE', NULL, NULL),
(1743, '200700', '20', '7', '0', 'SULLANA', NULL, NULL),
(1744, '200701', '20', '7', '1', 'BELLAVISTA', NULL, NULL),
(1745, '200702', '20', '7', '2', 'IGNACIO ESCUDERO', NULL, NULL),
(1746, '200703', '20', '7', '3', 'LANCONES', NULL, NULL),
(1747, '200704', '20', '7', '4', 'MARCAVELICA', NULL, NULL),
(1748, '200705', '20', '7', '5', 'MIGUEL CHECA', NULL, NULL),
(1749, '200706', '20', '7', '6', 'QUERECOTILLO', NULL, NULL),
(1750, '200707', '20', '7', '7', 'SALITRAL', NULL, NULL),
(1751, '200708', '20', '7', '8', 'SULLANA', NULL, NULL),
(1752, '200800', '20', '8', '0', 'TALARA', NULL, NULL),
(1753, '200801', '20', '8', '1', 'EL ALTO', NULL, NULL),
(1754, '200802', '20', '8', '2', 'LA BREA', NULL, NULL),
(1755, '200803', '20', '8', '3', 'LOBITOS', NULL, NULL),
(1756, '200804', '20', '8', '4', 'LOS ORGANOS', NULL, NULL),
(1757, '200805', '20', '8', '5', 'MANCORA', NULL, NULL),
(1758, '200806', '20', '8', '6', 'PARINAS', NULL, NULL),
(1759, '210000', '21', '0', '0', 'PUNO', NULL, NULL),
(1760, '210100', '21', '1', '0', 'AZANGARO', NULL, NULL),
(1761, '210101', '21', '1', '1', 'ACHAYA', NULL, NULL),
(1762, '210102', '21', '1', '2', 'ARAPA', NULL, NULL),
(1763, '210103', '21', '1', '3', 'ASILLO', NULL, NULL),
(1764, '210104', '21', '1', '4', 'AZANGARO', NULL, NULL),
(1765, '210105', '21', '1', '5', 'CAMINACA', NULL, NULL),
(1766, '210106', '21', '1', '6', 'CHUPA', NULL, NULL),
(1767, '210107', '21', '1', '7', 'JOSE DOMINGO CHOQUEHUANCA', NULL, NULL),
(1768, '210108', '21', '1', '8', 'MUÑANI', NULL, NULL),
(1769, '210109', '21', '1', '9', 'POTONI', NULL, NULL),
(1770, '210110', '21', '1', '10', 'SAMAN', NULL, NULL),
(1771, '210111', '21', '1', '11', 'SAN ANTON', NULL, NULL),
(1772, '210112', '21', '1', '12', 'SAN JOSE', NULL, NULL),
(1773, '210113', '21', '1', '13', 'SAN JUAN DE SALINAS', NULL, NULL),
(1774, '210114', '21', '1', '14', 'SANTIAGO DE PUPUJA', NULL, NULL),
(1775, '210115', '21', '1', '15', 'TIRAPATA', NULL, NULL),
(1776, '210200', '21', '2', '0', 'CARABAYA', NULL, NULL),
(1777, '210201', '21', '2', '1', 'AJOYANI', NULL, NULL),
(1778, '210202', '21', '2', '2', 'AYAPATA', NULL, NULL),
(1779, '210203', '21', '2', '3', 'COASA', NULL, NULL),
(1780, '210204', '21', '2', '4', 'CORANI', NULL, NULL),
(1781, '210205', '21', '2', '5', 'CRUCERO', NULL, NULL),
(1782, '210206', '21', '2', '6', 'ITUATA', NULL, NULL),
(1783, '210207', '21', '2', '7', 'MACUSANI', NULL, NULL),
(1784, '210208', '21', '2', '8', 'OLLACHEA', NULL, NULL),
(1785, '210209', '21', '2', '9', 'SAN GABAN', NULL, NULL);
INSERT INTO `addresses` (`id`, `ubi_identificador`, `ubi_departamento`, `ubi_provincia`, `ubi_distrito`, `ubi_descripcion`, `created_at`, `updated_at`) VALUES
(1786, '210210', '21', '2', '10', 'USICAYOS', NULL, NULL),
(1787, '210300', '21', '3', '0', 'CHUCUITO', NULL, NULL),
(1788, '210301', '21', '3', '1', 'DESAGUADERO', NULL, NULL),
(1789, '210302', '21', '3', '2', 'HUACULLANI', NULL, NULL),
(1790, '210303', '21', '3', '3', 'JULI', NULL, NULL),
(1791, '210304', '21', '3', '4', 'KELLUYO', NULL, NULL),
(1792, '210305', '21', '3', '5', 'PISACOMA', NULL, NULL),
(1793, '210306', '21', '3', '6', 'POMATA', NULL, NULL),
(1794, '210307', '21', '3', '7', 'ZEPITA', NULL, NULL),
(1795, '210400', '21', '4', '0', 'HUANCANE', NULL, NULL),
(1796, '210401', '21', '4', '1', 'COJATA', NULL, NULL),
(1797, '210402', '21', '4', '2', 'HUANCANE', NULL, NULL),
(1798, '210403', '21', '4', '3', 'HUATASANI', NULL, NULL),
(1799, '210404', '21', '4', '4', 'INCHUPALLA', NULL, NULL),
(1800, '210405', '21', '4', '5', 'PUSI', NULL, NULL),
(1801, '210406', '21', '4', '6', 'ROSASPATA', NULL, NULL),
(1802, '210407', '21', '4', '7', 'TARACO', NULL, NULL),
(1803, '210408', '21', '4', '8', 'VILQUE CHICO', NULL, NULL),
(1804, '210500', '21', '5', '0', 'LAMPA', NULL, NULL),
(1805, '210501', '21', '5', '1', 'CABANILLA', NULL, NULL),
(1806, '210502', '21', '5', '2', 'CALAPUJA', NULL, NULL),
(1807, '210503', '21', '5', '3', 'LAMPA', NULL, NULL),
(1808, '210504', '21', '5', '4', 'NICASIO', NULL, NULL),
(1809, '210505', '21', '5', '5', 'OCUVIRI', NULL, NULL),
(1810, '210506', '21', '5', '6', 'PALCA', NULL, NULL),
(1811, '210507', '21', '5', '7', 'PARATIA', NULL, NULL),
(1812, '210508', '21', '5', '8', 'PUCARA', NULL, NULL),
(1813, '210509', '21', '5', '9', 'SANTA LUCIA', NULL, NULL),
(1814, '210510', '21', '5', '10', 'VILAVILA', NULL, NULL),
(1815, '210600', '21', '6', '0', 'MELGAR', NULL, NULL),
(1816, '210601', '21', '6', '1', 'ANTAUTA', NULL, NULL),
(1817, '210602', '21', '6', '2', 'AYAVIRI', NULL, NULL),
(1818, '210603', '21', '6', '3', 'CUPI', NULL, NULL),
(1819, '210604', '21', '6', '4', 'LLALLI', NULL, NULL),
(1820, '210605', '21', '6', '5', 'MACARI', NULL, NULL),
(1821, '210606', '21', '6', '6', 'NUNOA', NULL, NULL),
(1822, '210607', '21', '6', '7', 'ORURILLO', NULL, NULL),
(1823, '210608', '21', '6', '8', 'SANTA ROSA', NULL, NULL),
(1824, '210609', '21', '6', '9', 'UMACHIRI', NULL, NULL),
(1825, '210700', '21', '7', '0', 'PUNO', NULL, NULL),
(1826, '210701', '21', '7', '1', 'ACORA', NULL, NULL),
(1827, '210702', '21', '7', '2', 'AMANTANI', NULL, NULL),
(1828, '210703', '21', '7', '3', 'ATUNCOLLA', NULL, NULL),
(1829, '210704', '21', '7', '4', 'CAPACHICA', NULL, NULL),
(1830, '210705', '21', '7', '5', 'CHUCUITO', NULL, NULL),
(1831, '210706', '21', '7', '6', 'COATA', NULL, NULL),
(1832, '210707', '21', '7', '7', 'HUATA', NULL, NULL),
(1833, '210708', '21', '7', '8', 'MA¥AZO', NULL, NULL),
(1834, '210709', '21', '7', '9', 'PAUCARCOLLA', NULL, NULL),
(1835, '210710', '21', '7', '10', 'PICHACANI', NULL, NULL),
(1836, '210711', '21', '7', '11', 'PLATERIA', NULL, NULL),
(1837, '210712', '21', '7', '12', 'PUNO', NULL, NULL),
(1838, '210713', '21', '7', '13', 'SAN ANTONIO', NULL, NULL),
(1839, '210714', '21', '7', '14', 'TIQUILLACA', NULL, NULL),
(1840, '210715', '21', '7', '15', 'VILQUE', NULL, NULL),
(1841, '210800', '21', '8', '0', 'SANDIA', NULL, NULL),
(1842, '210801', '21', '8', '1', 'ALTO INAMBARI', NULL, NULL),
(1843, '210802', '21', '8', '2', 'CUYOCUYO', NULL, NULL),
(1844, '210803', '21', '8', '3', 'LIMBANI', NULL, NULL),
(1845, '210804', '21', '8', '4', 'PATAMBUCO', NULL, NULL),
(1846, '210805', '21', '8', '5', 'PHARA', NULL, NULL),
(1847, '210806', '21', '8', '6', 'QUIACA', NULL, NULL),
(1848, '210807', '21', '8', '7', 'SAN JUAN DEL ORO', NULL, NULL),
(1849, '210808', '21', '8', '8', 'SANDIA', NULL, NULL),
(1850, '210809', '21', '8', '9', 'YANAHUAYA', NULL, NULL),
(1851, '210900', '21', '9', '0', 'SAN ROMAN', NULL, NULL),
(1852, '210901', '21', '9', '1', 'CABANA', NULL, NULL),
(1853, '210902', '21', '9', '2', 'CABANILLAS', NULL, NULL),
(1854, '210903', '21', '9', '3', 'CARACOTO', NULL, NULL),
(1855, '210904', '21', '9', '4', 'JULIACA', NULL, NULL),
(1856, '211000', '21', '10', '0', 'EL COLLAO', NULL, NULL),
(1857, '211001', '21', '10', '1', 'CAPASO', NULL, NULL),
(1858, '211002', '21', '10', '2', 'CONDURIRI', NULL, NULL),
(1859, '211003', '21', '10', '3', 'ILAVE', NULL, NULL),
(1860, '211004', '21', '10', '4', 'PILCUYO', NULL, NULL),
(1861, '211005', '21', '10', '5', 'SANTA ROSA', NULL, NULL),
(1862, '211100', '21', '11', '0', 'MOHO', NULL, NULL),
(1863, '211101', '21', '11', '1', 'CONIMA', NULL, NULL),
(1864, '211102', '21', '11', '2', 'HUAYRAPATA', NULL, NULL),
(1865, '211103', '21', '11', '3', 'MOHO', NULL, NULL),
(1866, '211104', '21', '11', '4', 'TILALI', NULL, NULL),
(1867, '211200', '21', '12', '0', 'SAN ANTONIO DE PUTINA', NULL, NULL),
(1868, '211201', '21', '12', '1', 'ANANEA', NULL, NULL),
(1869, '211202', '21', '12', '2', 'PEDRO VILCA APAZA', NULL, NULL),
(1870, '211203', '21', '12', '3', 'PUTINA', NULL, NULL),
(1871, '211204', '21', '12', '4', 'QUILCAPUNCU', NULL, NULL),
(1872, '211205', '21', '12', '5', 'SINA', NULL, NULL),
(1873, '211300', '21', '13', '0', 'YUNGUYO', NULL, NULL),
(1874, '211301', '21', '13', '1', 'ANAPIA', NULL, NULL),
(1875, '211302', '21', '13', '2', 'COPANI', NULL, NULL),
(1876, '211303', '21', '13', '3', 'CUTURAPI', NULL, NULL),
(1877, '211304', '21', '13', '4', 'OLLARAYA', NULL, NULL),
(1878, '211305', '21', '13', '5', 'TINICACHI', NULL, NULL),
(1879, '211306', '21', '13', '6', 'UNICACHI', NULL, NULL),
(1880, '211307', '21', '13', '7', 'YUNGUYO', NULL, NULL),
(1881, '220000', '22', '0', '0', 'SAN MARTIN', NULL, NULL),
(1882, '220100', '22', '1', '0', 'HUALLAGA', NULL, NULL),
(1883, '220101', '22', '1', '1', 'ALTO SAPOSOA', NULL, NULL),
(1884, '220102', '22', '1', '2', 'EL ESLABON', NULL, NULL),
(1885, '220103', '22', '1', '3', 'PISCOYACU', NULL, NULL),
(1886, '220104', '22', '1', '4', 'SACANCHE', NULL, NULL),
(1887, '220105', '22', '1', '5', 'SAPOSOA', NULL, NULL),
(1888, '220106', '22', '1', '6', 'TINGO DE SAPOSOA', NULL, NULL),
(1889, '220200', '22', '2', '0', 'LAMAS', NULL, NULL),
(1890, '220201', '22', '2', '1', 'ALFONSO DE ALVARADO', NULL, NULL),
(1891, '220202', '22', '2', '2', 'BARRANQUITA', NULL, NULL),
(1892, '220203', '22', '2', '3', 'CAYNARACHI', NULL, NULL),
(1893, '220204', '22', '2', '4', 'CUNUMBUQUI', NULL, NULL),
(1894, '220205', '22', '2', '5', 'LAMAS', NULL, NULL),
(1895, '220206', '22', '2', '6', 'PINTO RECODO', NULL, NULL),
(1896, '220207', '22', '2', '7', 'RUMISAPA', NULL, NULL),
(1897, '220208', '22', '2', '8', 'SAN ROQUE DE CUMBAZA', NULL, NULL),
(1898, '220209', '22', '2', '9', 'SHANAO', NULL, NULL),
(1899, '220210', '22', '2', '10', 'TABALOSOS', NULL, NULL),
(1900, '220211', '22', '2', '11', 'ZAPATERO', NULL, NULL),
(1901, '220300', '22', '3', '0', 'MARISCAL CACERES', NULL, NULL),
(1902, '220301', '22', '3', '1', 'CAMPANILLA', NULL, NULL),
(1903, '220302', '22', '3', '2', 'HUICUNGO', NULL, NULL),
(1904, '220303', '22', '3', '3', 'JUANJUI', NULL, NULL),
(1905, '220304', '22', '3', '4', 'PACHISA', NULL, NULL),
(1906, '220305', '22', '3', '5', 'PAJARILLO', NULL, NULL),
(1907, '220400', '22', '4', '0', 'MOYOBAMBA', NULL, NULL),
(1908, '220401', '22', '4', '1', 'CALZADA', NULL, NULL),
(1909, '220402', '22', '4', '2', 'HABANA', NULL, NULL),
(1910, '220403', '22', '4', '3', 'JEPELACIO', NULL, NULL),
(1911, '220404', '22', '4', '4', 'MOYOBAMBA', NULL, NULL),
(1912, '220405', '22', '4', '5', 'SORITOR', NULL, NULL),
(1913, '220406', '22', '4', '6', 'YANTALO', NULL, NULL),
(1914, '220500', '22', '5', '0', 'SAN MARTIN', NULL, NULL),
(1915, '220501', '22', '5', '1', 'ALBERTO LEVEAU', NULL, NULL),
(1916, '220502', '22', '5', '2', 'CACATACHI', NULL, NULL),
(1917, '220503', '22', '5', '3', 'CHAZUTA', NULL, NULL),
(1918, '220504', '22', '5', '4', 'CHIPURANA', NULL, NULL),
(1919, '220505', '22', '5', '5', 'EL PORVENIR', NULL, NULL),
(1920, '220506', '22', '5', '6', 'HUIMBAYOC', NULL, NULL),
(1921, '220507', '22', '5', '7', 'JUAN GUERRA', NULL, NULL),
(1922, '220508', '22', '5', '8', 'LA BANDA DE SHILCAYO', NULL, NULL),
(1923, '220509', '22', '5', '9', 'MORALES', NULL, NULL),
(1924, '220510', '22', '5', '10', 'PAPA PLAYA', NULL, NULL),
(1925, '220511', '22', '5', '11', 'SAN ANTONIO', NULL, NULL),
(1926, '220512', '22', '5', '12', 'SAUCE', NULL, NULL),
(1927, '220513', '22', '5', '13', 'SHAPAJA', NULL, NULL),
(1928, '220514', '22', '5', '14', 'TARAPOTO', NULL, NULL),
(1929, '220600', '22', '6', '0', 'RIOJA', NULL, NULL),
(1930, '220601', '22', '6', '1', 'AWAJUN', NULL, NULL),
(1931, '220602', '22', '6', '2', 'ELIAS SOPLIN VARGAS', NULL, NULL),
(1932, '220603', '22', '6', '3', 'NUEVA CAJAMARCA', NULL, NULL),
(1933, '220604', '22', '6', '4', 'PARDO MIGUEL', NULL, NULL),
(1934, '220605', '22', '6', '5', 'POSIC', NULL, NULL),
(1935, '220606', '22', '6', '6', 'RIOJA', NULL, NULL),
(1936, '220607', '22', '6', '7', 'SAN FERNANDO', NULL, NULL),
(1937, '220608', '22', '6', '8', 'YORONGOS', NULL, NULL),
(1938, '220609', '22', '6', '9', 'YURACYACU', NULL, NULL),
(1939, '220700', '22', '7', '0', 'BELLAVISTA', NULL, NULL),
(1940, '220701', '22', '7', '1', 'ALTO BIAVO', NULL, NULL),
(1941, '220702', '22', '7', '2', 'BAJO BIAVO', NULL, NULL),
(1942, '220703', '22', '7', '3', 'BELLAVISTA', NULL, NULL),
(1943, '220704', '22', '7', '4', 'HUALLAGA', NULL, NULL),
(1944, '220705', '22', '7', '5', 'SAN PABLO', NULL, NULL),
(1945, '220706', '22', '7', '6', 'SAN RAFAEL', NULL, NULL),
(1946, '220800', '22', '8', '0', 'EL DORADO', NULL, NULL),
(1947, '220801', '22', '8', '1', 'AGUA BLANCA', NULL, NULL),
(1948, '220802', '22', '8', '2', 'SAN JOSE DE SISA', NULL, NULL),
(1949, '220803', '22', '8', '3', 'SAN MARTIN', NULL, NULL),
(1950, '220804', '22', '8', '4', 'SANTA ROSA', NULL, NULL),
(1951, '220805', '22', '8', '5', 'SHATOJA', NULL, NULL),
(1952, '220900', '22', '9', '0', 'PICOTA', NULL, NULL),
(1953, '220901', '22', '9', '1', 'BUENOS AIRES', NULL, NULL),
(1954, '220902', '22', '9', '2', 'CASPIZAPA', NULL, NULL),
(1955, '220903', '22', '9', '3', 'PICOTA', NULL, NULL),
(1956, '220904', '22', '9', '4', 'PILLUANA', NULL, NULL),
(1957, '220905', '22', '9', '5', 'PUCACACA', NULL, NULL),
(1958, '220906', '22', '9', '6', 'SAN CRISTOBAL', NULL, NULL),
(1959, '220907', '22', '9', '7', 'SAN HILARION', NULL, NULL),
(1960, '220908', '22', '9', '8', 'SHAMBUYACU', NULL, NULL),
(1961, '220909', '22', '9', '9', 'TINGO DE POMAZA', NULL, NULL),
(1962, '220910', '22', '9', '10', 'TRES UNIDOS', NULL, NULL),
(1963, '221000', '22', '10', '0', 'TOCACHE', NULL, NULL),
(1964, '221001', '22', '10', '1', 'NUEVO PROGRESO', NULL, NULL),
(1965, '221002', '22', '10', '2', 'POLVORA', NULL, NULL),
(1966, '221003', '22', '10', '3', 'SHUNTE', NULL, NULL),
(1967, '221004', '22', '10', '4', 'TOCACHE', NULL, NULL),
(1968, '221005', '22', '10', '5', 'UCHIZA', NULL, NULL),
(1969, '230000', '23', '0', '0', 'TACNA', NULL, NULL),
(1970, '230100', '23', '1', '0', 'CANDARAVE', NULL, NULL),
(1971, '230101', '23', '1', '1', 'CAIRANI', NULL, NULL),
(1972, '230102', '23', '1', '2', 'CAMILACA', NULL, NULL),
(1973, '230103', '23', '1', '3', 'CANDARAVE', NULL, NULL),
(1974, '230104', '23', '1', '4', 'CURIBAYA', NULL, NULL),
(1975, '230105', '23', '1', '5', 'HUANUARA', NULL, NULL),
(1976, '230106', '23', '1', '6', 'QUILAHUANI', NULL, NULL),
(1977, '230200', '23', '2', '0', 'JORGE BASADRE', NULL, NULL),
(1978, '230201', '23', '2', '1', 'ILABAYA', NULL, NULL),
(1979, '230202', '23', '2', '2', 'ITE', NULL, NULL),
(1980, '230203', '23', '2', '3', 'LUCUMBA', NULL, NULL),
(1981, '230300', '23', '3', '0', 'TACNA', NULL, NULL),
(1982, '230301', '23', '3', '1', 'ALTO DE LA ALIANZA', NULL, NULL),
(1983, '230302', '23', '3', '2', 'CALANA', NULL, NULL),
(1984, '230303', '23', '3', '3', 'CIUDAD NUEVA', NULL, NULL),
(1985, '230304', '23', '3', '4', 'INCLAN', NULL, NULL),
(1986, '230305', '23', '3', '5', 'PACHIA', NULL, NULL),
(1987, '230306', '23', '3', '6', 'PALCA', NULL, NULL),
(1988, '230307', '23', '3', '7', 'POCOLLAY', NULL, NULL),
(1989, '230308', '23', '3', '8', 'SAMA', NULL, NULL),
(1990, '230309', '23', '3', '9', 'TACNA', NULL, NULL),
(1991, '230400', '23', '4', '0', 'TARATA', NULL, NULL),
(1992, '230401', '23', '4', '1', 'CHUCATAMANI', NULL, NULL),
(1993, '230402', '23', '4', '2', 'ESTIQUE', NULL, NULL),
(1994, '230403', '23', '4', '3', 'ESTIQUE PAMPA', NULL, NULL),
(1995, '230404', '23', '4', '4', 'SITAJARA', NULL, NULL),
(1996, '230405', '23', '4', '5', 'SUSAPAYA', NULL, NULL),
(1997, '230406', '23', '4', '6', 'TARATA', NULL, NULL),
(1998, '230407', '23', '4', '7', 'TARUCACHI', NULL, NULL),
(1999, '230408', '23', '4', '8', 'TICACO', NULL, NULL),
(2000, '240000', '24', '0', '0', 'TUMBES', NULL, NULL),
(2001, '240100', '24', '1', '0', 'CONTRALMIRANTE VILLAR', NULL, NULL),
(2002, '240101', '24', '1', '1', 'CASITAS', NULL, NULL),
(2003, '240102', '24', '1', '2', 'ZORRITOS', NULL, NULL),
(2004, '240200', '24', '2', '0', 'TUMBES', NULL, NULL),
(2005, '240201', '24', '2', '1', 'CORRALES', NULL, NULL),
(2006, '240202', '24', '2', '2', 'LA CRUZ', NULL, NULL),
(2007, '240203', '24', '2', '3', 'PAMPAS DEL HOSPITAL', NULL, NULL),
(2008, '240204', '24', '2', '4', 'SAN JACINTO', NULL, NULL),
(2009, '240205', '24', '2', '5', 'SAN JUAN DE LA VIRGEN', NULL, NULL),
(2010, '240206', '24', '2', '6', 'TUMBES', NULL, NULL),
(2011, '240300', '24', '3', '0', 'ZARUMILLA', NULL, NULL),
(2012, '240301', '24', '3', '1', 'AGUAS VERDES', NULL, NULL),
(2013, '240302', '24', '3', '2', 'MATAPALO', NULL, NULL),
(2014, '240303', '24', '3', '3', 'PAPAYAL', NULL, NULL),
(2015, '240304', '24', '3', '4', 'ZARUMILLA', NULL, NULL),
(2016, '250000', '25', '0', '0', 'UCAYALI', NULL, NULL),
(2017, '250100', '25', '1', '0', 'ATALAYA', NULL, NULL),
(2018, '250101', '25', '1', '1', 'RAIMONDI', NULL, NULL),
(2019, '250102', '25', '1', '2', 'SEPAHUA', NULL, NULL),
(2020, '250103', '25', '1', '3', 'TAHUANIA', NULL, NULL),
(2021, '250104', '25', '1', '4', 'YURUA', NULL, NULL),
(2022, '250200', '25', '2', '0', 'CORONEL PORTILLO', NULL, NULL),
(2023, '250201', '25', '2', '1', 'CALLERIA', NULL, NULL),
(2024, '250202', '25', '2', '2', 'CAMPO VERDE', NULL, NULL),
(2025, '250203', '25', '2', '3', 'IPARIA', NULL, NULL),
(2026, '250204', '25', '2', '4', 'MASISEA', NULL, NULL),
(2027, '250205', '25', '2', '5', 'NUEVA REQUENA', NULL, NULL),
(2028, '250206', '25', '2', '6', 'YARINACOCHA', NULL, NULL),
(2029, '250300', '25', '3', '0', 'PADRE ABAD', NULL, NULL),
(2030, '250301', '25', '3', '1', 'CURIMANA', NULL, NULL),
(2031, '250302', '25', '3', '2', 'IRAZOLA', NULL, NULL),
(2032, '250303', '25', '3', '3', 'PADRE ABAD', NULL, NULL),
(2033, '250400', '25', '4', '0', 'PURUS', NULL, NULL),
(2034, '250401', '25', '4', '1', 'PURUS', NULL, NULL),
(2035, '250500', '25', '5', '0', 'PUCALLPA', NULL, NULL),
(2036, '250501', '25', '5', '1', 'PUCALLPA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `armed_combos`
--

CREATE TABLE `armed_combos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nuevo_codigo` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nuevo_nombre` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_compra_total` decimal(8,2) NOT NULL,
  `precio_venta_final` decimal(8,2) NOT NULL,
  `precio_diferencia` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank`
--

CREATE TABLE `bank` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_banco` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boxes`
--

CREATE TABLE `boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `boxes`
--

INSERT INTO `boxes` (`id`, `descripcion`, `ip`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Caja 01', 'Encargada de A', '1', '2019-08-16 02:57:01', '2019-08-16 02:57:01'),
(2, 'Caja 02', 'Encargada de B', '1', '2019-08-16 02:57:10', '2019-08-16 02:57:10'),
(3, 'Caja 03', 'Encargada de C', '1', '2019-08-16 02:57:16', '2019-08-16 02:57:16'),
(4, 'Caja 04', 'Encargada de D', '1', '2019-08-16 02:57:21', '2019-08-16 02:57:21'),
(5, 'Caja 05', 'Encargada de E', '0', '2019-08-16 02:57:27', '2019-08-16 02:58:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subfamilia_id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sueldo` decimal(8,2) NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_types_id` bigint(20) UNSIGNED NOT NULL,
  `ubigeo_id` int(10) UNSIGNED NOT NULL,
  `nro_documnto` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `document_types_id`, `ubigeo_id`, `nro_documnto`, `nombres`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '07146512', 'Omar Anthonyyy', '0', '2019-08-15 05:00:00', '2019-08-16 02:40:36'),
(2, 1, 1, '07143800', 'Liliana Ventocilla', '1', '2019-08-15 06:31:21', '2019-08-15 06:31:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_correlatives`
--

CREATE TABLE `document_correlatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_types_comprobant_id` bigint(20) UNSIGNED NOT NULL,
  `serie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correlativo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_correlatives`
--

INSERT INTO `document_correlatives` (`id`, `document_types_comprobant_id`, `serie`, `correlativo`, `created_at`, `updated_at`) VALUES
(1, 1, 'LK06-124343', '1', '2019-08-16 03:11:43', '2019-08-16 03:11:43'),
(2, 2, 'LK06-124344', '2', '2019-08-16 03:11:58', '2019-08-16 03:11:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_types`
--

INSERT INTO `document_types` (`id`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'DNI', '1', '2019-08-14 05:00:00', '2019-08-14 05:00:00'),
(2, 'RUC', '1', '2019-08-14 05:00:00', '2019-08-14 05:00:00'),
(3, 'Carnet Extranjeria', '1', '2019-08-14 05:00:00', '2019-08-14 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_types_comprobants`
--

CREATE TABLE `document_types_comprobants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_types_comprobants`
--

INSERT INTO `document_types_comprobants` (`id`, `descripcion`, `codigo`, `created_at`, `updated_at`) VALUES
(1, 'Factura', 'LK01', '2019-08-15 05:00:00', '2019-08-15 05:00:00'),
(2, 'Boleta', 'LK06', '2019-08-15 05:00:00', '2019-08-15 05:00:00'),
(3, 'Nota de venta', 'LK09', '2019-08-15 05:00:00', '2019-08-15 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcargo` int(10) UNSIGNED NOT NULL,
  `idhorario` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `idtipodocumento` bigint(20) UNSIGNED NOT NULL,
  `nro_documento` varchar(18) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `idubigeo` int(10) UNSIGNED NOT NULL,
  `nrocuenta` varchar(30) NOT NULL,
  `nrocuenta_cci` varchar(30) NOT NULL,
  `idbanco` int(10) UNSIGNED NOT NULL,
  `iduser` int(11) UNSIGNED NOT NULL,
  `estado` varchar(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `families`
--

CREATE TABLE `families` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `families`
--

INSERT INTO `families` (`id`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(29, 'Aseo personal', '1', '2019-08-24 03:40:53', '2019-08-24 03:40:53'),
(30, 'Azúcar', '1', '2019-08-24 03:41:02', '2019-08-24 03:41:02'),
(31, 'Bebida alcoholica', '1', '2019-08-24 03:41:12', '2019-08-24 03:41:12'),
(32, 'Bebidas', '1', '2019-08-24 03:41:21', '2019-08-24 03:41:21'),
(33, 'bolsas', '1', '2019-08-24 03:41:35', '2019-08-24 03:41:35'),
(34, 'conservas', '1', '2019-08-24 03:41:58', '2019-08-24 03:41:58'),
(35, 'cereales precocidos', '1', '2019-08-24 03:42:29', '2019-08-24 03:42:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_boxes`
--

CREATE TABLE `historial_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `boxe_id` bigint(20) UNSIGNED NOT NULL,
  `montoInicial` double(8,2) NOT NULL,
  `montoFinal` double(8,2) NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaCierre` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historial_boxes`
--

INSERT INTO `historial_boxes` (`id`, `user_id`, `boxe_id`, `montoInicial`, `montoFinal`, `fechaInicio`, `fechaCierre`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 124.00, 456.89, '2019-08-15 10:09:08', '2019-08-15 20:19:15', '2019-08-15 05:00:00', '2019-08-15 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_dias` int(10) NOT NULL,
  `nro_horas` int(10) NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_armed_combos`
--

CREATE TABLE `list_armed_combos` (
  `id` int(10) UNSIGNED NOT NULL,
  `almacen_id` int(10) UNSIGNED NOT NULL,
  `combo_armado_id` int(10) UNSIGNED NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_order_vent`
--

CREATE TABLE `list_order_vent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `armedCombo_id` int(10) UNSIGNED NOT NULL,
  `order_venta_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioVenta` double(8,2) NOT NULL,
  `distribucionPresentacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_payment_purchase_orders`
--

CREATE TABLE `list_payment_purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_pedido_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `precio_paquete` decimal(8,2) NOT NULL,
  `precio_unidad` decimal(8,2) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mode_payments`
--

CREATE TABLE `mode_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mode_payments`
--

INSERT INTO `mode_payments` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Efectivo', '2019-08-15 05:00:00', '2019-08-15 05:00:00'),
(2, 'Tarjeta', '2019-08-15 05:00:00', '2019-08-15 05:00:00'),
(3, 'Paypal', '2019-08-15 05:00:00', '2019-08-15 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_venta`
--

CREATE TABLE `order_venta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `mode_payment_id` bigint(20) UNSIGNED NOT NULL,
  `boxe_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `armedCombo_id` int(10) UNSIGNED NOT NULL,
  `montoTotal` double(8,2) NOT NULL,
  `montoPago` double(8,2) NOT NULL,
  `fechaSistema` datetime NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `estadoVentaPago` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoVenta` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoTotales` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correlativo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `out_warehouses`
--

CREATE TABLE `out_warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `almacen_id` int(10) UNSIGNED NOT NULL,
  `almacen_ubicacion_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(11) UNSIGNED NOT NULL,
  `tipo_movimiento` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_movimiento` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_empleado`
--

CREATE TABLE `pago_empleado` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_empleado` int(10) UNSIGNED NOT NULL,
  `sueldo_bruto` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `bonificacion` decimal(8,2) NOT NULL,
  `sueldo_neto` decimal(8,2) NOT NULL,
  `fecha_pago` datetime NOT NULL,
  `estado_pago` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_order_vent`
--

CREATE TABLE `payment_order_vent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_venta_id` bigint(20) UNSIGNED NOT NULL,
  `montoPago` double(8,2) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_purchase_orders`
--

CREATE TABLE `payment_purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_pedido_id` int(10) UNSIGNED NOT NULL,
  `monto_pago` decimal(8,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentations`
--

CREATE TABLE `presentations` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `presentations`
--

INSERT INTO `presentations` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'balde', '1', '2019-08-24 05:15:03', '2019-08-24 05:23:57'),
(2, 'barra', '1', '2019-08-24 05:16:50', '2019-08-24 05:16:50'),
(3, 'bolsa', '1', '2019-08-24 05:16:55', '2019-08-24 05:16:55'),
(4, 'botella', '1', '2019-08-24 05:17:01', '2019-08-24 05:17:01'),
(6, 'casco', '1', '2019-08-24 05:17:13', '2019-08-24 05:17:13'),
(7, 'Display', '1', '2019-08-24 05:21:12', '2019-08-24 05:21:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentacion_id` int(10) UNSIGNED NOT NULL,
  `unidad_grupo_id` int(10) UNSIGNED NOT NULL,
  `unidad_individual_id` int(10) UNSIGNED NOT NULL,
  `unidad_peso_id` int(10) UNSIGNED NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `subfamilia_id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalle` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peso_neto` decimal(8,2) NOT NULL,
  `peso_bruto` decimal(8,2) NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `correlativo` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_id` int(10) UNSIGNED NOT NULL,
  `proveedor_contacto_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(11) UNSIGNED NOT NULL,
  `forma_pago_id` int(10) UNSIGNED NOT NULL,
  `total_monto` decimal(8,2) NOT NULL,
  `total_pago` decimal(8,2) NOT NULL,
  `fecha_sistema` datetime NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `estado_pedido` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `estado_pedido_pago` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_user`
--

CREATE TABLE `roles_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilies`
--

CREATE TABLE `subfamilies` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familia_id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilies`
--

INSERT INTO `subfamilies` (`id`, `descripcion`, `familia_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Acondicionador', 29, '1', '2019-08-24 05:44:40', '2019-08-24 05:44:40'),
(2, 'Afeitador', 29, '1', '2019-08-24 05:44:56', '2019-08-24 05:44:56'),
(3, 'Cepillos', 29, '1', '2019-08-24 05:45:06', '2019-08-24 05:45:06'),
(4, 'Crema de peinar', 29, '1', '2019-08-24 05:45:24', '2019-08-24 05:45:24'),
(5, 'Crema tocador', 29, '1', '2019-08-24 05:45:33', '2019-08-24 05:45:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ruc` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubigeo_id` int(10) UNSIGNED NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers_contacts`
--

CREATE TABLE `suppliers_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_id` int(10) UNSIGNED NOT NULL,
  `celular` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_payments`
--

CREATE TABLE `type_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `forma_pago` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_of_measures`
--

CREATE TABLE `unit_of_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `abreviatura` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equivalencia` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unit_of_measures`
--

INSERT INTO `unit_of_measures` (`id`, `abreviatura`, `equivalencia`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'x1', 1, '1', '2019-08-24 03:54:59', '2019-08-24 04:23:41'),
(2, 'x2', 2, '1', '2019-08-24 03:55:13', '2019-08-24 04:23:36'),
(3, 'x3', 3, '1', '2019-08-24 03:55:18', '2019-08-24 03:55:18'),
(4, 'x4', 4, '1', '2019-08-24 03:55:22', '2019-08-24 03:55:22'),
(5, 'x5', 5, '1', '2019-08-24 03:55:28', '2019-08-24 03:55:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_of_weights`
--

CREATE TABLE `unit_of_weights` (
  `id` int(10) UNSIGNED NOT NULL,
  `abreviatura` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equivalencia` decimal(8,3) NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unit_of_weights`
--

INSERT INTO `unit_of_weights` (`id`, `abreviatura`, `equivalencia`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'gr', '0.000', '1', '2019-08-24 04:32:11', '2019-08-24 04:33:14'),
(3, 'ml', '0.000', '1', '2019-08-24 04:34:21', '2019-08-24 04:34:21'),
(4, 'cm3', '0.100', '1', '2019-08-24 04:34:35', '2019-08-24 04:52:32'),
(5, 'kg', '1.000', '1', '2019-08-24 04:35:59', '2019-08-24 04:35:59'),
(6, 'lt', '1.000', '1', '2019-08-24 04:37:04', '2019-08-24 04:37:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'omontoya', '$2y$10$gKLSajViCQGipNF60Yy3R.zta1/Vfy5IoVZMhtAlAp4q1sUXU1DZS', '2019-08-18 17:03:07', '2019-08-18 17:03:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_pedido_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse_ubications`
--

CREATE TABLE `warehouse_ubications` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`,`module_id`),
  ADD KEY `acceso_module_foreign` (`module_id`);

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `armed_combos`
--
ALTER TABLE `armed_combos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_subfamilia_id_index` (`subfamilia_id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_document_types_id_foreign` (`document_types_id`),
  ADD KEY `ubigeo_id` (`ubigeo_id`);

--
-- Indices de la tabla `document_correlatives`
--
ALTER TABLE `document_correlatives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_correlatives_document_types_comprobant_id_index` (`document_types_comprobant_id`);

--
-- Indices de la tabla `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `document_types_comprobants`
--
ALTER TABLE `document_types_comprobants`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcargo` (`idcargo`,`idhorario`,`idtipodocumento`,`idubigeo`,`idbanco`,`iduser`),
  ADD KEY `employ_bank_foreign` (`idbanco`),
  ADD KEY `employ_horario_foreign` (`idhorario`),
  ADD KEY `employ_tdoc_foreign` (`idtipodocumento`),
  ADD KEY `employ_ubigeo_foreign` (`idubigeo`),
  ADD KEY `employ_user_foreign` (`iduser`);

--
-- Indices de la tabla `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_boxes`
--
ALTER TABLE `historial_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historial_boxes_boxe_id_foreign` (`boxe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `list_armed_combos`
--
ALTER TABLE `list_armed_combos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_armed_combos_almacen_id_index` (`almacen_id`),
  ADD KEY `list_armed_combos_combo_armado_id_index` (`combo_armado_id`);

--
-- Indices de la tabla `list_order_vent`
--
ALTER TABLE `list_order_vent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_order_vent_order_venta_id_foreign` (`order_venta_id`),
  ADD KEY `armedCombo_id` (`armedCombo_id`);

--
-- Indices de la tabla `list_payment_purchase_orders`
--
ALTER TABLE `list_payment_purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_payment_purchase_orders_orden_compra_pedido_id_index` (`orden_compra_pedido_id`),
  ADD KEY `list_payment_purchase_orders_producto_id_index` (`producto_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mode_payments`
--
ALTER TABLE `mode_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_venta`
--
ALTER TABLE `order_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_venta_document_type_id_foreign` (`document_type_id`),
  ADD KEY `order_venta_mode_payment_id_foreign` (`mode_payment_id`),
  ADD KEY `order_venta_boxe_id_foreign` (`boxe_id`),
  ADD KEY `order_venta_client_id_foreign` (`client_id`),
  ADD KEY `user_id` (`user_id`,`armedCombo_id`),
  ADD KEY `order_venta_armed_combos_id_foreign` (`armedCombo_id`);

--
-- Indices de la tabla `out_warehouses`
--
ALTER TABLE `out_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `out_warehouses_producto_id_index` (`producto_id`),
  ADD KEY `out_warehouses_almacen_id_index` (`almacen_id`),
  ADD KEY `out_warehouses_almacen_ubicacion_id_index` (`almacen_ubicacion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pago_empleado`
--
ALTER TABLE `pago_empleado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `payment_order_vent`
--
ALTER TABLE `payment_order_vent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_order_vent_order_venta_id_foreign` (`order_venta_id`);

--
-- Indices de la tabla `payment_purchase_orders`
--
ALTER TABLE `payment_purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_purchase_orders_orden_compra_pedido_id_index` (`orden_compra_pedido_id`);

--
-- Indices de la tabla `presentations`
--
ALTER TABLE `presentations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_presentacion_id_index` (`presentacion_id`),
  ADD KEY `products_unidad_grupo_id_index` (`unidad_grupo_id`),
  ADD KEY `products_unidad_individual_id_index` (`unidad_individual_id`),
  ADD KEY `products_unidad_peso_id_index` (`unidad_peso_id`),
  ADD KEY `products_marca_id_index` (`marca_id`),
  ADD KEY `products_subfamilia_id_index` (`subfamilia_id`);

--
-- Indices de la tabla `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders_proveedor_id_index` (`proveedor_id`),
  ADD KEY `purchase_orders_proveedor_contacto_id_index` (`proveedor_contacto_id`),
  ADD KEY `purchase_orders_forma_pago_id_index` (`forma_pago_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles_user`
--
ALTER TABLE `roles_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`,`user_id`),
  ADD KEY `roles_user_foreign` (`user_id`);

--
-- Indices de la tabla `subfamilies`
--
ALTER TABLE `subfamilies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subfamilies_familia_id_index` (`familia_id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_ubigeo_id_index` (`ubigeo_id`);

--
-- Indices de la tabla `suppliers_contacts`
--
ALTER TABLE `suppliers_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_contacts_proveedor_id_index` (`proveedor_id`);

--
-- Indices de la tabla `type_payments`
--
ALTER TABLE `type_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit_of_measures`
--
ALTER TABLE `unit_of_measures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit_of_weights`
--
ALTER TABLE `unit_of_weights`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_orden_compra_pedido_id_index` (`orden_compra_pedido_id`),
  ADD KEY `warehouses_producto_id_index` (`producto_id`);

--
-- Indices de la tabla `warehouse_ubications`
--
ALTER TABLE `warehouse_ubications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2037;

--
-- AUTO_INCREMENT de la tabla `armed_combos`
--
ALTER TABLE `armed_combos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `boxes`
--
ALTER TABLE `boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `document_correlatives`
--
ALTER TABLE `document_correlatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `document_types_comprobants`
--
ALTER TABLE `document_types_comprobants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `families`
--
ALTER TABLE `families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `historial_boxes`
--
ALTER TABLE `historial_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `list_armed_combos`
--
ALTER TABLE `list_armed_combos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `list_order_vent`
--
ALTER TABLE `list_order_vent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `list_payment_purchase_orders`
--
ALTER TABLE `list_payment_purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `mode_payments`
--
ALTER TABLE `mode_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_venta`
--
ALTER TABLE `order_venta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `out_warehouses`
--
ALTER TABLE `out_warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago_empleado`
--
ALTER TABLE `pago_empleado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_order_vent`
--
ALTER TABLE `payment_order_vent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_purchase_orders`
--
ALTER TABLE `payment_purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presentations`
--
ALTER TABLE `presentations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles_user`
--
ALTER TABLE `roles_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subfamilies`
--
ALTER TABLE `subfamilies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suppliers_contacts`
--
ALTER TABLE `suppliers_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_payments`
--
ALTER TABLE `type_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unit_of_measures`
--
ALTER TABLE `unit_of_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `unit_of_weights`
--
ALTER TABLE `unit_of_weights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `warehouse_ubications`
--
ALTER TABLE `warehouse_ubications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `acceso_module_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `acceso_rol_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_subfamilia_id_foreign` FOREIGN KEY (`subfamilia_id`) REFERENCES `subfamilies` (`id`);

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_adreesses_fk` FOREIGN KEY (`ubigeo_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `clients_document_types_id_foreign` FOREIGN KEY (`document_types_id`) REFERENCES `document_types` (`id`);

--
-- Filtros para la tabla `document_correlatives`
--
ALTER TABLE `document_correlatives`
  ADD CONSTRAINT `document_correlatives_document_types_comprobant_id_foreign` FOREIGN KEY (`document_types_comprobant_id`) REFERENCES `document_types_comprobants` (`id`);

--
-- Filtros para la tabla `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employ_bank_foreign` FOREIGN KEY (`idbanco`) REFERENCES `bank` (`id`),
  ADD CONSTRAINT `employ_horario_foreign` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`id`),
  ADD CONSTRAINT `employ_tdoc_foreign` FOREIGN KEY (`idtipodocumento`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `employ_ubigeo_foreign` FOREIGN KEY (`idubigeo`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `employ_user_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `eploy_cargo_foreign` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`id`);

--
-- Filtros para la tabla `historial_boxes`
--
ALTER TABLE `historial_boxes`
  ADD CONSTRAINT `historial_boxes_boxe_id_foreign` FOREIGN KEY (`boxe_id`) REFERENCES `boxes` (`id`),
  ADD CONSTRAINT `historial_boxes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `list_armed_combos`
--
ALTER TABLE `list_armed_combos`
  ADD CONSTRAINT `list_armed_combos_almacen_id_foreign` FOREIGN KEY (`almacen_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `list_armed_combos_combo_armado_id_foreign` FOREIGN KEY (`combo_armado_id`) REFERENCES `armed_combos` (`id`);

--
-- Filtros para la tabla `list_order_vent`
--
ALTER TABLE `list_order_vent`
  ADD CONSTRAINT `list_order_vent_armed_combsid_foreign` FOREIGN KEY (`armedCombo_id`) REFERENCES `armed_combos` (`id`),
  ADD CONSTRAINT `list_order_vent_order_venta_id_foreign` FOREIGN KEY (`order_venta_id`) REFERENCES `order_venta` (`id`);

--
-- Filtros para la tabla `list_payment_purchase_orders`
--
ALTER TABLE `list_payment_purchase_orders`
  ADD CONSTRAINT `list_payment_purchase_orders_orden_compra_pedido_id_foreign` FOREIGN KEY (`orden_compra_pedido_id`) REFERENCES `purchase_orders` (`id`),
  ADD CONSTRAINT `list_payment_purchase_orders_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `order_venta`
--
ALTER TABLE `order_venta`
  ADD CONSTRAINT `order_venta_armed_combos_id_foreign` FOREIGN KEY (`armedCombo_id`) REFERENCES `armed_combos` (`id`),
  ADD CONSTRAINT `order_venta_boxe_id_foreign` FOREIGN KEY (`boxe_id`) REFERENCES `boxes` (`id`),
  ADD CONSTRAINT `order_venta_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `order_venta_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `order_venta_mode_payment_id_foreign` FOREIGN KEY (`mode_payment_id`) REFERENCES `mode_payments` (`id`),
  ADD CONSTRAINT `order_venta_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `out_warehouses`
--
ALTER TABLE `out_warehouses`
  ADD CONSTRAINT `out_warehouses_almacen_id_foreign` FOREIGN KEY (`almacen_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `out_warehouses_almacen_ubicacion_id_foreign` FOREIGN KEY (`almacen_ubicacion_id`) REFERENCES `warehouse_ubications` (`id`),
  ADD CONSTRAINT `out_warehouses_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `out_warehouses_user_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `pago_empleado`
--
ALTER TABLE `pago_empleado`
  ADD CONSTRAINT `pago_empleado_id_foreign` FOREIGN KEY (`id_empleado`) REFERENCES `employee` (`id`);

--
-- Filtros para la tabla `payment_order_vent`
--
ALTER TABLE `payment_order_vent`
  ADD CONSTRAINT `payment_order_vent_order_venta_id_foreign` FOREIGN KEY (`order_venta_id`) REFERENCES `order_venta` (`id`);

--
-- Filtros para la tabla `payment_purchase_orders`
--
ALTER TABLE `payment_purchase_orders`
  ADD CONSTRAINT `payment_purchase_orders_orden_compra_pedido_id_foreign` FOREIGN KEY (`orden_compra_pedido_id`) REFERENCES `purchase_orders` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_presentacion_id_foreign` FOREIGN KEY (`presentacion_id`) REFERENCES `presentations` (`id`),
  ADD CONSTRAINT `products_subfamilia_id_foreign` FOREIGN KEY (`subfamilia_id`) REFERENCES `subfamilies` (`id`),
  ADD CONSTRAINT `products_unidad_grupo_id_foreign` FOREIGN KEY (`unidad_grupo_id`) REFERENCES `unit_of_measures` (`id`),
  ADD CONSTRAINT `products_unidad_individual_id_foreign` FOREIGN KEY (`unidad_individual_id`) REFERENCES `unit_of_measures` (`id`),
  ADD CONSTRAINT `products_unidad_peso_id_foreign` FOREIGN KEY (`unidad_peso_id`) REFERENCES `unit_of_weights` (`id`);

--
-- Filtros para la tabla `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_forma_pago_id_foreign` FOREIGN KEY (`forma_pago_id`) REFERENCES `type_payments` (`id`),
  ADD CONSTRAINT `purchase_orders_proveedor_contacto_id_foreign` FOREIGN KEY (`proveedor_contacto_id`) REFERENCES `suppliers_contacts` (`id`),
  ADD CONSTRAINT `purchase_orders_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `purchase_orders_user_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `roles_user`
--
ALTER TABLE `roles_user`
  ADD CONSTRAINT `roles_rol_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `roles_user_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `subfamilies`
--
ALTER TABLE `subfamilies`
  ADD CONSTRAINT `subfamilies_familia_id_foreign` FOREIGN KEY (`familia_id`) REFERENCES `families` (`id`);

--
-- Filtros para la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ubigeo_id_foreign` FOREIGN KEY (`ubigeo_id`) REFERENCES `addresses` (`id`);

--
-- Filtros para la tabla `suppliers_contacts`
--
ALTER TABLE `suppliers_contacts`
  ADD CONSTRAINT `suppliers_contacts_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `suppliers` (`id`);

--
-- Filtros para la tabla `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_orden_compra_pedido_id_foreign` FOREIGN KEY (`orden_compra_pedido_id`) REFERENCES `purchase_orders` (`id`),
  ADD CONSTRAINT `warehouses_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
