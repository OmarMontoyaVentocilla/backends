-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2019 a las 09:47:43
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
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_types_id` bigint(20) UNSIGNED NOT NULL,
  `ubigeo_id` bigint(20) UNSIGNED NOT NULL,
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
-- Estructura de tabla para la tabla `historial_boxes`
--

CREATE TABLE `historial_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
-- Estructura de tabla para la tabla `list_order_vent`
--

CREATE TABLE `list_order_vent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `armedCombo_id` bigint(20) UNSIGNED NOT NULL,
  `order_venta_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioVenta` double(8,2) NOT NULL,
  `distribucionPresentacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_06_03_131350_creates_species_table', 1),
(2, '2019_06_03_163020_creates_breeds_table', 1),
(3, '2019_08_13_055111_create_ubigeos_table', 1),
(4, '2019_08_13_060813_create_providers_table', 1),
(5, '2019_08_14_040000_create_document_types_table', 2),
(6, '2019_08_14_040826_create_document_types_comprobants_table', 2),
(7, '2019_08_14_040956_create_mode_payments_table', 2),
(8, '2019_08_14_041422_create_document_correlatives_table', 2),
(9, '2019_08_14_045315_create_boxes_table', 3),
(10, '2019_08_14_045731_create_clients_table', 4),
(11, '2019_08_14_052627_create_order_venta_table', 5),
(12, '2019_08_15_015754_create_payment_order_vent_table', 5),
(13, '2019_08_15_020037_create_historial_boxes_table', 5),
(14, '2019_08_15_020207_create_list_order_vent_table', 5);

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
-- Estructura de tabla para la tabla `order_venta`
--

CREATE TABLE `order_venta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `mode_payment_id` bigint(20) UNSIGNED NOT NULL,
  `boxe_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `armedCombo_id` bigint(20) UNSIGNED NOT NULL,
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'omontoya', '$2a$10$Qo/etskG6hc/e5N8pe0Jf.aZntvQNQpp1T9BfxYydpXpPHCypglNG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'rortiz', '$2a$10$Qo/etskG6hc/e5N8pe0Jf.aZntvQNQpp1T9BfxYydpXpPHCypglNG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ralvi', '$2y$10$lsy6XUQh0CAnDoIkZajXb.Pu1Rvxvgd8XBv3xPvEBBaRETjsaPoQa', '2019-08-17 05:40:47', '2019-08-17 05:40:47'),
(4, 'ralvi', '$2y$10$YhZWg/U8LniisPPQtez9C.t5qylsywulpgHdxOq2BO8AUc.j8ZND.', '2019-08-17 05:42:18', '2019-08-17 05:42:18'),
(6, 'rociolk', '$2y$10$qqi5MosDRGqMeSl6sAxFj.eOJhBZwaqUtPQlYyhADVvXlQv1ltNye', '2019-08-17 05:43:34', '2019-08-17 05:43:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_document_types_id_foreign` (`document_types_id`);

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
-- Indices de la tabla `historial_boxes`
--
ALTER TABLE `historial_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historial_boxes_boxe_id_foreign` (`boxe_id`);

--
-- Indices de la tabla `list_order_vent`
--
ALTER TABLE `list_order_vent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_order_vent_order_venta_id_foreign` (`order_venta_id`);

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
-- Indices de la tabla `order_venta`
--
ALTER TABLE `order_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_venta_document_type_id_foreign` (`document_type_id`),
  ADD KEY `order_venta_mode_payment_id_foreign` (`mode_payment_id`),
  ADD KEY `order_venta_boxe_id_foreign` (`boxe_id`),
  ADD KEY `order_venta_client_id_foreign` (`client_id`);

--
-- Indices de la tabla `payment_order_vent`
--
ALTER TABLE `payment_order_vent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_order_vent_order_venta_id_foreign` (`order_venta_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boxes`
--
ALTER TABLE `boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT de la tabla `historial_boxes`
--
ALTER TABLE `historial_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `list_order_vent`
--
ALTER TABLE `list_order_vent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `mode_payments`
--
ALTER TABLE `mode_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `order_venta`
--
ALTER TABLE `order_venta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_order_vent`
--
ALTER TABLE `payment_order_vent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_document_types_id_foreign` FOREIGN KEY (`document_types_id`) REFERENCES `document_types` (`id`);

--
-- Filtros para la tabla `document_correlatives`
--
ALTER TABLE `document_correlatives`
  ADD CONSTRAINT `document_correlatives_document_types_comprobant_id_foreign` FOREIGN KEY (`document_types_comprobant_id`) REFERENCES `document_types_comprobants` (`id`);

--
-- Filtros para la tabla `historial_boxes`
--
ALTER TABLE `historial_boxes`
  ADD CONSTRAINT `historial_boxes_boxe_id_foreign` FOREIGN KEY (`boxe_id`) REFERENCES `boxes` (`id`);

--
-- Filtros para la tabla `list_order_vent`
--
ALTER TABLE `list_order_vent`
  ADD CONSTRAINT `list_order_vent_order_venta_id_foreign` FOREIGN KEY (`order_venta_id`) REFERENCES `order_venta` (`id`);

--
-- Filtros para la tabla `order_venta`
--
ALTER TABLE `order_venta`
  ADD CONSTRAINT `order_venta_boxe_id_foreign` FOREIGN KEY (`boxe_id`) REFERENCES `boxes` (`id`),
  ADD CONSTRAINT `order_venta_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `order_venta_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `order_venta_mode_payment_id_foreign` FOREIGN KEY (`mode_payment_id`) REFERENCES `mode_payments` (`id`);

--
-- Filtros para la tabla `payment_order_vent`
--
ALTER TABLE `payment_order_vent`
  ADD CONSTRAINT `payment_order_vent_order_venta_id_foreign` FOREIGN KEY (`order_venta_id`) REFERENCES `order_venta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
