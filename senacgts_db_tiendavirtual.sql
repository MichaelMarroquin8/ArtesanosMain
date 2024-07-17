-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-07-2024 a las 16:02:34
-- Versión del servidor: 10.6.18-MariaDB-cll-lve
-- Versión de PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `senacgts_db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Esculturas', 'Esculturas', 'img_566fefa46c20cda3bd96c27e9c193d3a.jpg', '2021-08-20 03:04:04', 'esculturas', 1),
(2, 'Muñecos', 'Muñecos', 'img_e923e99816a965052a21579229b0a3eb.jpg', '2021-08-21 00:47:10', 'munecos', 1),
(3, 'Esculturas', 'Esculturas', 'img_566fefa46c20cda3bd96c27e9c193d3a.jpg', '2021-08-20 03:04:04', 'esculturas', 0),
(4, 'Muñecos', 'Muñecos', 'img_e923e99816a965052a21579229b0a3eb.jpg', '2021-08-21 00:47:10', 'munecos', 0),
(5, 'Esculturas', 'Esculturas', 'img_566fefa46c20cda3bd96c27e9c193d3a.jpg', '2021-08-20 03:04:04', 'esculturas', 0),
(6, 'Muñecos', 'Muñecos', 'img_e923e99816a965052a21579229b0a3eb.jpg', '2021-08-21 00:47:10', 'munecos', 0),
(7, 'Otros', 'Esculturas', 'img_566fefa46c20cda3bd96c27e9c193d3a.jpg', '2021-08-20 03:04:04', 'otros', 1),
(8, 'Muñecos', 'Muñecos', 'img_e923e99816a965052a21579229b0a3eb.jpg', '2021-08-21 00:47:10', 'munecos', 1),
(9, 'Muñecos1', '11', 'img_453266fa4f85fdc0418271994b601243.jpg', '2023-10-10 23:31:20', 'munecos1', 1),
(10, 'Accesorios', 'Accesorios varios', 'portada_categoria.png', '2024-07-12 11:24:02', 'accesorios', 1),
(11, 'Ropa', 'Ropa en general', 'portada_categoria.png', '2024-07-12 11:24:23', 'ropa', 1),
(12, 'Esculturas en Madera', 'Madera', 'portada_categoria.png', '2024-07-12 11:24:44', 'esculturas-en-madera', 1),
(13, 'Hogar', 'Accesorios para el hogar', 'portada_categoria.png', '2024-07-12 11:25:00', 'hogar', 1),
(14, 'Oficina', 'Accesorios para oficina', 'portada_categoria.png', '2024-07-12 11:25:17', 'oficina', 1),
(15, 'Alimentos', 'Alimentos', 'portada_categoria.png', '2024-07-12 11:25:38', 'alimentos', 1),
(16, 'Canastos', 'Recipientes en general', 'portada_categoria.png', '2024-07-12 11:26:00', 'canastos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(6, 'Joseeeee', 'j@gmail.com', 'fsdfsdfsdfsdf', '152.200.176.121', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 11:13:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 5, 17, 3000000.00, 1),
(2, 6, 24, 1.00, 1),
(3, 6, 25, 1.00, 3),
(4, 6, 33, 1.00, 4),
(5, 6, 29, 1.00, 1),
(6, 7, 31, 1.00, 1),
(7, 7, 28, 1.00, 1),
(8, 8, 33, 1.00, 1),
(9, 8, 31, 1.00, 1),
(10, 8, 27, 1.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(18, 17, 'pro_0eb682d44cb11b87ea013f5e5f46e5f9.jpg'),
(19, 18, 'pro_d68d00edef429352865b78c86971eb2d.jpg'),
(20, 19, 'pro_f75f3f02b1ba0acfdf0e068f0fe7ce0a.jpg'),
(21, 19, 'pro_20c5ca70dffc1116a140c56c70b59899.jpg'),
(22, 19, 'pro_20c5ca70dffc1116a140c56c70b59899.jpg'),
(23, 20, 'pro_ae450555046470357d1ebf1dfbe89107.jpg'),
(24, 21, 'pro_3a1ececd1f86aee56324642dcb6b92c5.jpg'),
(25, 21, 'pro_fc2f3473f430650f59237adb769b4e9d.jpg'),
(26, 21, 'pro_ba61f9181295a7d52df68759ecea0bc0.jpg'),
(29, 22, 'pro_6c6408a916cde2d5aa84049f642c8c53.jpg'),
(30, 23, 'pro_41f9ab1fc3023a055a8b729126b73314.jpg'),
(31, 23, 'pro_9d169de4a0e1f95e34ad66444bd91346.jpg'),
(33, 22, 'pro_4bf212691e93e8934cb9cc23973ef4a2.jpg'),
(34, 22, 'pro_8bc0c1f72d5584486002b3572725ac1b.jpg'),
(35, 22, 'pro_716c02935fb262215c5631de985711a2.jpg'),
(36, 22, 'pro_d2fa8e98c5f258d0b705836dbe188844.jpg'),
(37, 22, 'pro_c13bfaf70dacd2b9ca5cebbcd766d79d.jpg'),
(38, 20, 'pro_949d3712b70586e0a49b69aa1f6219af.jpg'),
(39, 20, 'pro_993d78d243ba3462b5b27ff81f4a1923.jpg'),
(42, 20, 'pro_4ee7b84c663d665dad5cb05c9795f29b.jpg'),
(43, 24, 'pro_d7cb756639594949fe0c14ae21b636af.jpg'),
(44, 24, 'pro_09ca5daf365313839eb30f80921d2676.jpg'),
(45, 24, 'pro_b5d2ae9ff5791414c24dabb2d8710c47.jpg'),
(46, 24, 'pro_d51b9438896584a5d4f2bc7c1c407496.jpg'),
(48, 24, 'pro_748b5b3b4831bc08e21e9f8c11b1c6ab.jpg'),
(49, 18, 'pro_c87d56cbe47fe7c91d9f8e88b6627479.jpg'),
(51, 18, 'pro_57e30f91192dfc89faa7c94aad48e9c3.jpg'),
(52, 18, 'pro_630c5d305128b5a5a806688548dc4d09.jpg'),
(53, 25, 'pro_04c9e6b9de5b658b59d4aaa035489b4b.jpg'),
(54, 25, 'pro_65360bfb2b583f545faa567ac83dad67.jpg'),
(55, 25, 'pro_22eccc51f8ca2ebf7c5d0ae85016d8f8.jpg'),
(56, 25, 'pro_86618aa4c529e05d997c8d039ed38d01.jpg'),
(57, 26, 'pro_55fe7152aa5b1e502e73b9d790dae93f.jpg'),
(58, 26, 'pro_ca83113dc2efeaed2c9410f3c58458ac.jpg'),
(59, 26, 'pro_d5240d266e688fc3684ade4868bfbe74.jpg'),
(60, 26, 'pro_6b8b01c37a8cb6f157b619f2ebf23f22.jpg'),
(61, 26, 'pro_91c6735e9c23837defe7339d19078390.jpg'),
(62, 27, 'pro_cf3a5bb99b8c75ef46f64736a7793a11.jpg'),
(63, 27, 'pro_43ca259b2cb26e7590acb889d5405276.jpg'),
(65, 27, 'pro_e0c67a2751502a95ad82c641758e6c13.jpg'),
(67, 27, 'pro_002a62236f17f2c5f775214899c05b0b.jpg'),
(68, 28, 'pro_d6aa10b01f6f676009eed8abf5e198af.jpg'),
(69, 28, 'pro_df8d520ddbf09be4a2acbee13e01a373.jpg'),
(70, 28, 'pro_8753b27556c21ad9b21c6bfb27699cff.jpg'),
(71, 28, 'pro_59200120cabc981939744873c9f2f18f.jpg'),
(72, 28, 'pro_374fc7dbc157e87116eb302ef5f9402c.jpg'),
(73, 29, 'pro_9319c11c95eb13b0eedcbadc585626f0.jpg'),
(74, 29, 'pro_a9c3fbd4d3f58a2a0f15f6ae83a79e5d.jpg'),
(75, 29, 'pro_2d4ec6f5af12bb93bc34c2bd2db8c686.jpg'),
(76, 29, 'pro_4b6081f079eb6df1bfa2e10cb43e0d9d.jpg'),
(77, 29, 'pro_ac8136dfabb8ead4a162abc1ea65ab07.jpg'),
(78, 29, 'pro_6e1b58bf5c179764c1921d363e9ba217.jpg'),
(79, 30, 'pro_2c63b4af32ce5bad04b1a3ae7b59d36f.jpg'),
(80, 30, 'pro_30599c254554692ebcf4eaa5f230730f.jpg'),
(81, 30, 'pro_fa64beddae921c517011edbf6c47b551.jpg'),
(84, 30, 'pro_a8f8ca3425446ef8ab6db9ffb705f159.jpg'),
(85, 30, 'pro_d45a2002554f5c2dac5fd6fcc724e298.jpg'),
(86, 31, 'pro_9be319320e0ab46eac6f79d4686ed4f3.jpg'),
(87, 31, 'pro_db48b78778016ff7183307b5c63bae9a.jpg'),
(88, 31, 'pro_3b0c1364231179b8aee3f40938f62ba9.jpg'),
(89, 31, 'pro_467e709f1dbafc281820125c1facb5e4.jpg'),
(90, 32, 'pro_6d145211c1b23b80424d4a143ffb404e.jpg'),
(91, 32, 'pro_910adada3e2cd9be444bd7f2466ac4d1.jpg'),
(92, 32, 'pro_b79832799e7d87f5ffc6f0a0c4737637.jpg'),
(93, 32, 'pro_4455800201677b0a07aa23f4ceeaffe8.jpg'),
(94, 32, 'pro_f5737ef5855c8d501bd39edfb1828936.jpg'),
(95, 32, 'pro_890c4b5ac43c1a67671b67ee2524808d.jpg'),
(96, 32, 'pro_3dfc12411e84e50690dc36cdae7c8df2.jpg'),
(97, 33, 'pro_4e2b930bf17546d18cc531545671f507.jpg'),
(99, 33, 'pro_c52b5cb4b80424f6dbb2672c4d631b7e.jpg'),
(100, 33, 'pro_eb3e6ce0945ae93944956abdf327e19b.jpg'),
(101, 33, 'pro_79eaf3882364bcfc6d458942b3baafc2.jpg'),
(102, 33, 'pro_0aecd2ad001f01cee99958bb9c5fd240.jpg'),
(103, 33, 'pro_68305b358bd805d6b67fde2d3e475651.jpg'),
(104, 34, 'pro_2b0c8099ef44bcfaddfb55ede48be004.jpg'),
(105, 35, 'pro_653701569a3d1af848a4169850181739.jpg'),
(106, 36, 'pro_6c2ff1d94fecd8a6db2d82865830f9f1.jpg'),
(107, 40, 'pro_564da5f6580a3bbabd9c7cd604dc9ed0.jpg'),
(108, 41, 'pro_564da5f6580a3bbabd9c7cd604dc9ed0.jpg'),
(109, 39, 'pro_564da5f6580a3bbabd9c7cd604dc9ed0.jpg'),
(110, 38, 'pro_564da5f6580a3bbabd9c7cd604dc9ed0.jpg'),
(111, 46, 'pro_73ef10f4fa90929719f8e6de02745d13.jpg'),
(112, 43, 'pro_2158b50d2f388d04701bbaf9a7c30ffc.jpg'),
(113, 44, 'pro_927248559781d4cc80d360b82d207d4d.jpg'),
(114, 37, 'pro_e22dbe28386f6d2db5dbee786c540e80.jpg'),
(115, 45, 'pro_6df2974fb4beb80c83457a6b993178e9.jpg'),
(116, 42, 'pro_47fc60428c4e7d7bb8d17d9b0876f406.jpg'),
(117, 48, 'pro_3f6ec098b02b5ea2a335235c8b7ea8dd.jpg'),
(118, 49, 'pro_c50a02bb821e42aea0eea5a9b413c8bf.jpg'),
(120, 50, 'pro_afb0e05cd21bc76bfca05a20334179b8.jpg'),
(121, 53, 'pro_8209f491a8e37a056d7f655617723d20.jpg'),
(122, 52, 'pro_178b2198657d483525714488d969f793.jpg'),
(123, 51, 'pro_50c06794e11ceb00c9147a76e6a82ddd.jpg'),
(124, 55, 'pro_f7d5a0aa8cfc1c92afccbfb211b5ab16.jpg'),
(125, 54, 'pro_799f9dfb56fa95da6836ee7cf69172ce.jpg'),
(128, 57, 'pro_2e540b57d7c22e6a9cc7733e00804912.jpg'),
(129, 47, 'pro_a747f03c3ae8245b3273b797be43a560.jpg'),
(130, 58, 'pro_722b427a3f5b0ace461d845da55cf93e.jpg'),
(131, 61, 'pro_714334b0002c54bc4cd5585290ec1c90.jpg'),
(132, 56, 'pro_e5e202ab2c87a19fb3700900510e6ce0.jpg'),
(133, 62, 'pro_421f8abae8d1b1d69b1cfe70f088edfc.jpg'),
(134, 60, 'pro_bb45a58d89cea46f60e840e0abd66aee.jpg'),
(135, 59, 'pro_6c912e0bef6f0a3d9107446a325a20e0.jpg'),
(136, 63, 'pro_b6147c63e37c9605ae9917084692cec7.jpg'),
(138, 64, 'pro_804bf95008ee88f6935289d265dd4548.jpg'),
(139, 65, 'pro_ae6a77fa6c075f3d966d5ce6ca18e868.jpg'),
(140, 66, 'pro_f7f036e1c93565f66a84f9d17e2c11ba.jpg'),
(141, 67, 'pro_cc4aa8b7ab1bde98c5b1fceadc3969b8.jpg'),
(143, 69, 'pro_eefd39fee7c5adf772107c6f48f852a6.jpg'),
(144, 70, 'pro_4de5d805c23cd6b61fd57443cff51d1e.jpg'),
(146, 71, 'pro_657ab1b81ae1953e22220cc05f7c4a5b.jpg'),
(148, 72, 'pro_53a395b4867b2719a7403f705e2a674a.jpg'),
(149, 73, 'pro_9bec362f67c3e9cfac3605e2dda0005f.jpg'),
(150, 74, 'pro_3d13bddfa91c1ea2420810f69433407e.jpg'),
(151, 75, 'pro_5b58582dd9e92bc73f92a75ed3947500.jpg'),
(152, 76, 'pro_bdafc14d43dfcd7b47d2ce8a66809609.jpg'),
(155, 26, 'pro_c66916eeed7de988907c188d9c5690f0.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) DEFAULT NULL,
  `datospaypal` text DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(4, NULL, NULL, NULL, 1, '2023-10-15 13:10:56', 5.00, 3000005.00, 2, 'cra 2b 57-33, cali', 'Pendiente'),
(5, NULL, NULL, NULL, 1, '2023-10-15 13:16:49', 5.00, 3000005.00, 2, 'cra 2, ca', 'Pendiente'),
(6, NULL, NULL, NULL, 41, '2024-03-19 23:25:05', 5.00, 14.00, 5, 'Zona rual, Cali', 'Pendiente'),
(7, NULL, NULL, NULL, 56, '2024-07-08 23:41:13', 5.00, 7.00, 2, 'cra 2v, cali', 'Pendiente'),
(8, NULL, NULL, NULL, 57, '2024-07-09 10:24:11', 5.00, 8.00, 5, 'Calle 25 No 15 2 bis, Cali', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(84, 3, 1, 0, 0, 0, 0),
(85, 3, 2, 0, 0, 0, 0),
(86, 3, 3, 0, 0, 0, 0),
(87, 3, 4, 0, 0, 0, 0),
(88, 3, 5, 1, 0, 0, 0),
(89, 3, 6, 0, 0, 0, 0),
(90, 3, 7, 0, 0, 0, 0),
(91, 3, 8, 0, 0, 0, 0),
(92, 3, 9, 0, 0, 0, 0),
(102, 4, 1, 1, 0, 0, 0),
(103, 4, 2, 0, 0, 0, 0),
(104, 4, 3, 1, 0, 0, 0),
(105, 4, 4, 1, 1, 1, 1),
(106, 4, 5, 1, 0, 1, 0),
(107, 4, 6, 1, 0, 1, 0),
(108, 4, 7, 0, 0, 0, 0),
(109, 4, 8, 0, 0, 0, 0),
(110, 4, 9, 0, 0, 0, 0),
(111, 5, 1, 0, 0, 0, 0),
(112, 5, 2, 1, 1, 1, 1),
(113, 5, 3, 0, 0, 0, 0),
(114, 5, 4, 1, 0, 0, 0),
(115, 5, 5, 1, 0, 0, 0),
(116, 5, 6, 1, 0, 0, 0),
(117, 5, 7, 0, 0, 0, 0),
(118, 5, 8, 0, 0, 0, 0),
(119, 5, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `portada` varchar(100) NOT NULL,
  `ruta` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `descripcion`, `portada`, `ruta`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Abel', 'OSH', '', '0', '', 3045816789, 'alberto.vonlody@sigmamovil.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Abel OSH', 'Ciudad', NULL, 1, '2021-08-20 01:34:15', 1),
(2, '24091990', 'Alex', 'Arana', '', '0', '', 456878977, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 3, '2021-08-20 02:58:47', 1),
(4, '798465877', 'Fernando', 'Guerra', '', 'img_ac126472e450757efe9aa8a177e9ed60.jpg', '', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 0),
(41, '14893162', 'José', 'Reyes', '', 'img_a1bc58180ecb555ee7aeb5db7cd64a79.jpg', 'jose', 3013779948, 'jareyes@misena.edu.co', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 1, '2023-10-11 08:46:30', 1),
(43, '51771728', 'Doris Helena', 'Bossa Vasco', '', 'img_4f054172fb5d365c3bf93d7ed8206824.jpg', 'doris-helena', 3132955048, 'helenboss65@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:07:59', 1),
(44, '1144126162', 'David', 'Quintero Polo', 'Diego y David, son dos personas en condición de discapacidad, que, debido a la falta de oportunidades laborales, deciden unirse para aprender a elaborar Artesanías, como atrapasueños tejidos a mano, aretes en mostacillas, bisutería para dama también bolsos pintados a mano. Tienen una experiencia de 3 años en el mercado.', 'img_6cd92a5ed58234c65796029982c2f75c.jpg', 'david', 3504607669, 'da167q@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:12:39', 1),
(45, '14624080', 'Julián Camilo', 'Perea Giraldo', '', 'img_325ce5ac9afa9e3b13b6354fefaaed25.jpg', 'julian-camilo', 3158504807, 'juca_pegi777@outlook.es', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:22:07', 1),
(46, '27330574', 'Deira Tomaza', 'Quiñones Murillo', 'Artesana de la comunidad Afro, Proveniente del municipio de Magüí, Payán (Nariño). Aprendió de su madre a tejer con paja tetera. Para ella, el proceso de creación artesanal es terapia, diversión, le emociona la posibilidad de encontrarse con otras personas para venderles lo que hace y que los clientes valoren el trabajo de su comunidad. sus principales productos son los sombreros y canastos, que también fabrica con zuncho', 'img_da25d8b5c7aa8784f2a43291ad0873ae.jpg', 'deira-tomaza', 3217067448, 'artesaniamagui@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:22:59', 1),
(47, '98430116', 'Jorge Eliécer', 'Cabezas Tenorio', 'Artesano oriundo de Tumaco Nariño, inicia a los 15 años en el medio del arte como artista plástico, muralista y docente de artes integradas. A los 25 años, su curiosidad lo llevó a explorar diferentes materiales y así llegar al universo de la labor artesanal. Los primeros trabajos realizados fueron artesanías en papel mache, elaboración de collares, manillas y pulseras y pinturas sobre hojas de palmas. En cada una de las artesanías, refleja el valor y la importancia del pueblo afro rescatando su cultura y su saber en cada una de las artesanías.', 'img_9bd2581ff888e0ff98663dd0d2980ba7.jpg', 'jorge-eliecer', 3178644524, 'cabezastenoriojorgeeliecer@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:38:11', 1),
(48, '66678510', 'Nidia Millán', 'Domínguez', '', 'img_c58fb1fd16b78aba2fcfd27545a7585d.jpg', 'nidia-millan', 3152262353, 'nidia.arte@hotmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:45:21', 1),
(49, '31969596', 'Martha Ligia', 'Ramírez Benjumea', 'Maestra artesana del dulce de alfeñique. De origen caldense, su familia llega a Cali víctimas del desplazamiento forzado y se radican en la comuna 18 (zona de ladera), hace más de 45 años. Se apasiona por la tradición caleña de las macetas, debido a su afinidad con el alfeñique y alfandoque con panela. Dicta talleres a niños y adultos desde hace más de diecisiete años y desde el año 1999 participa en las convocatorias del festival de macetas. Produce y comercializa las macetas, mazapanes y kits para preparar el dulce.', 'img_df257b0cb17752a6df37d0a7eddd23ca.jpg', 'martha-ligia', 3168458550, 'mlrbenju1967@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-08 14:46:27', 1),
(50, '14248967', 'Ricardo', 'Izquierdo', 'Comenzando su trayectoria en Cali, este artesano se inspiró en la manipulación de la fibra natural del fique, a través de la investigación y la experimentación. Se enfrentó al desafío de aprender esta habilidad por sí mismo, ya que no encontró enseñanza alguna en instituciones educativas. En su labor, busca otorgarle una nueva \"imagen\" y aplicaciones a este noble material, incorporando tanto aspectos utilitarios como decorativos en sus creaciones, marcando así una innovadora interpretación y uso del fique en su trabajo artesanal. También elabora piezas artesanales y para decoración de interiores. ', 'img_cc3a65aa0751450d13ce07761ea5639f.jpg', 'ricardo', 3167286486, 'rymdisenos@yahoo.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-23 08:48:32', 1),
(51, '31830698', 'Ediltrudis', 'Díaz', 'Originaria de Timbiquí, Cauca, la artesana proviene de una familia donde su padre se dedicaba a la joyería artesanal y su madre al tejido, cultivando así su afinidad por las artesanías. Durante sus días en el colegio, las tardes culturales se convertían en momentos para bordar y conectar con la naturaleza en la playa, brindándole una fuente constante de inspiración. Su verdadero vínculo con el arte textil se forjó en Cali, al visitar a una amiga que trabajaba con telares. En ese instante, al observar los hilos, recordó los hilos de oro que su padre manejaba para crear joyas, y fue como una revelación: se dio cuenta de que también podía plasmar los paisajes de su tierra a través de los hilos. Cuenta con una experiencia de 30 años como artesana tejedora en crochet, macramé y telar, tiene dos líneas distintivas en su trabajo: la decoración y la confección textil. Su destreza manual se refleja en una amplia gama de productos, desde telas y tapices hasta bolsos, camisas Guayaberas, pantalones, faldas, chales, ponchos, manteles y tendidos. Cada pieza es cuidadosamente elaborada, llevando consigo la esencia y la riqueza cultural de su lugar de origen. ', 'img_25a5b05bcf7203fe1d65a9a1fa2f9cd2.jpg', 'ediltrudis', 3162879672, 'telarestimbiqui@hotmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-23 10:03:03', 1),
(52, '31573461', 'Clara Isabel', 'Coquez Gonzáles', '', 'img_00bf2e3531111da59b540a773418b77f.jpg', 'clara-isabel', 3113951188, 'coquezclara@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-23 10:03:53', 1),
(53, '28787610', 'Sorayda', 'Chamorro', 'Mujer artesana y tallerista nacida en el Tolima y radicada en Cali. Desde niña, se apasiona por el arte de bordar, tejer y mantener las técnicas clásicas y tradicionales; en su largo recorrido como autodidacta se ha formado en distintas técnicas relacionadas con el mundo textil como en tejidos: crochet, dos agujas, telares manuales, macramé, franja de nudo, crochet XXL(Trapillo) y crochet tejido Wayuú y crochet amigurumis; aguja mágica o Punch Needle; en bordados como: Canvas Plásticas, Punto de Cruz en Relieve, noruego, español, bordado Creativo. Su especialidad es la técnica del Crochet y bordado experimentando distintas formas de expresión a través del tejido y pintar con hilos. Hace más de 20 años imparte sus talleres en \"Arte que entrelaza vidas\", actualmente Taller “ENTRETEJE, BORDA Y APRENDESUEÑOS DE VIDA”', 'img_2eac69d6645728f2e57b6128f07f5989.jpg', 'sorayda', 3175828439, 'julanchcreaciones@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-23 10:04:56', 1),
(54, '29819411', 'Lina', 'Fonseca', 'Con veinte años de experiencia como artesana y emprendedora, esta talentosa tejedora se especializa en la confección de prendas en telar, tales como hamacas, bufandas, ponchos y abrigos, entre otros. A través de sus telares, entrelaza las memorias de la ruralidad, infundiendo en cada tejido su profunda conexión con la naturaleza. Su compromiso no se limita solo a la creación artística, sino que también se extiende a compartir su conocimiento con la comunidad, generando espacios de encuentro centrados en la práctica del tejido. Considera que la experiencia de tejer telares va más allá de la creación de productos satisfactorios; es una forma de preservar la memoria y documentar nuestro pasado, creando prendas que reflejan nuestra identidad. Su enfoque manual en la creación de telares no solo se destaca por su belleza, sino también por su impacto ambiental positivo, ya que evita la contaminación asociada con la industria textil. La pasión de esta artesana por enseñar se basa en el intercambio y la transmisión de saberes. Disfruta compartiendo su conocimiento con otras personas, generando un espacio de conversación y desahogo que va más allá de lo cotidiano, todo mientras se teje un lazo especial entre quienes participan en esta experiencia.', 'img_816cd9a7b8b0675bfeeb559dcbd2b5a7.jpg', 'lina', 3005280569, 'eescuelaestelar@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-23 10:05:42', 1),
(55, '1000594156', 'Evelyn Johanna', 'Lopez Vargas', 'Evelyn de 20 años, es una artesana con 5 años de experiencia en su oficio. Desde su infancia, observó a su abuela materna y a su madre dedicarse a diversas labores artesanales como bordados, tejidos, pintura en tela y porcelánico, transmitiendo sus conocimientos. Aunque ha recibido enseñanzas variadas, ha optado por especializarse en la elaboración de tejido en telar vertical. Para ella, la artesanía tiene un profundo significado de valor, ya que implica el reconocimiento y aprendizaje de saberes ancestrales. Cada producto que crea con sus propias manos refleja el amor y cuidado que dedica a cada pieza. Su deseo es continuar trabajando y aprendiendo en el arte del tejido en telares durante muchos años más, ya que es una pasión que la llena de satisfacción y felicidad.', 'img_69a812bb40291b33a2a6cda636b34bcd.jpg', 'evelyn-johanna', 3028512892, 'evearte82@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-11-23 18:07:14', 1),
(56, NULL, 'Prueba', 'Preuba', '', '', '', 3045712341, 'm.sts@gma.com', '8cb7435186d6d34aab95bf87377e659ebc0fc39bf4aaa088d4ae8780471426fe', NULL, NULL, NULL, NULL, 3, '2024-07-08 23:41:02', 1),
(57, NULL, 'Pedro', 'Perez', '', '', '', 3013779948, 'josea.reyes@sena.edu.co', '3d342e41139347ccdece86e1f05e6e2794e58a8678100e32c8b2efe5624702b8', NULL, NULL, NULL, NULL, 3, '2024-07-09 10:23:31', 1),
(58, '999999999', 'SST', 'JARO', '', 'portada_categoria.png', 'sst', 3013779948, 'aprendiz@misena.edu.co', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2024-07-09 11:22:15', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 2),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 0),
(4, 'Artesanos', '<section class=\"bg0 p-t-75 p-b-120\">\n  <div class=\"container\">\n    <div class=\"row p-b-148\">\n      <div class=\"col-md-7 col-lg-8\">\n        <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\">\n          <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3>\n          <p class=\"stext-113 cl6 p-b-26\">Un&nbsp; <strong>artesano</strong>\n            <sup id=\"cite_ref-1\" class=\"reference separada\">\n              <a href=\"https://es.wikipedia.org/wiki/Artesano#cite_note-1\">1</a>\n            </sup>​ <sup id=\"cite_ref-2\" class=\"reference separada\">\n              <a href=\"https://es.wikipedia.org/wiki/Artesano#cite_note-2\">2</a>\n            </sup>​ es la persona que realiza objetos artesanales o&nbsp; <a title=\"Artesan&iacute;a\" href=\"https://es.wikipedia.org/wiki/Artesan%C3%ADa\">artesan&iacute;as</a>. Los artesanos realizan su trabajo a mano o con distintos instrumentos propios de manualidades, por lo que hay que tener cierta destreza y habilidad para realizar su trabajo. Pueden trabajar solos o junto a otras personas que les pueden servir de ayudantes o aprendices.\n          </p>\n        </div>\n      </div>\n      <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\">\n        <div class=\"how-bor1 \">\n          <div class=\"hov-img0\">\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/b/b8/A_pesar_de_todo_hay_que_re%C3%ADr.jpg\" alt=\"IMG\" width=\"432\" height=\"288\" />\n          </div>\n        </div>\n      </div>\n    </div>\n    <center>\n        \n    <h3 class=\"mtext-111 cl2 p-b-16\">Experiencia SENA – 2023</h3>\n    <h3 class=\"mtext-111 cl2 p-b-16\">Centro de Gestión Tecnológica de Servicios – CGTS<br/>\nCali - Valle \n</h3>\n    </center>\n    <div class=\"video-row\">\n        <!-- Primer video -->\n        <div class=\"video-item\">\n            <h2>Experiencias Artesanos</h2>\n            <div class=\"video-container\">\n                <video controls poster=\"../../Assets/images/4.jpeg\">\n                    <source src=\"../../Assets/videos/VIDEO EXPERIENCIAS ARTESANOS 1.mp4\" type=\"video/mp4\">\n                </video>\n            </div>\n        </div>\n\n        <!-- Segundo video -->\n        <div class=\"video-item\">\n            <h2>Gestion Ambiental</h2>\n            <div class=\"video-container\">\n                 <video controls poster=\"../../Assets/images/1.jpeg\">\n                    <source src=\"../../Assets/videos/VIDEO Gestion Ambiental.mp4\" type=\"video/mp4\">\n                    Tu navegador no soporta el elemento de video.\n                </video>\n            </div>\n        </div>\n\n        <!-- Tercer video -->\n        <div class=\"video-item\">\n            <h2>Gestion Comercial</h2>\n            <div class=\"video-container\">\n                 <video controls poster=\"../../Assets/images/2.jpeg\">\n                    <source src=\"../../Assets/videos/VIDEO GESTION COMERCIAL .mp4\" type=\"video/mp4\">\n                    Tu navegador no soporta el elemento de video.\n                </video>\n            </div>\n        </div>\n\n        <!-- Cuarto video -->\n        <div class=\"video-item\">\n            <h2>Seguridad Y Salud En El Trabajo</h2>\n            <div class=\"video-container\">\n                        <video controls poster=\"../../Assets/images/3.jpeg\">\n                    <source src=\"../../Assets/videos/VIDEO SEGURIDAD Y SALUD EN EL TRABAJO .mp4\" type=\"video/mp4\">\n                    Tu navegador no soporta el elemento de video.\n                </video>\n            </div>\n        </div>\n    </div>\n  </div>\n</section>', '', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.685802352331!2d-90.73646108521129!3d14.559951589828378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890e74b3771e19%3A0x68ec9eeea79fd9a7!2sEl%20Arco%20de%20Santa%20Catalina!5e0!3m2!1ses!2sgt!4v1624005005655!5m2!1ses!2sgt\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><br /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><br /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1),
(10, 'prueba', '<p>-jb.jbj,</p>', 'img_e04a334f3fab33f5bec45cc092e65086.jpg', '2024-07-09 11:16:23', 'prueba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `personaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(17, 8, 41, '4658798787232', 'prueba josé', '<p>Estamos probando&nbsp;</p>', 3000000.00, 100, NULL, '2023-10-11 08:54:44', 'prueba-jose', 0),
(18, 7, 47, '11111', '1', '<p>1</p>', 1.00, 1, NULL, '2023-11-08 15:36:15', '1', 1),
(19, 1, 47, '1', '11', '<p>1</p>', 1.00, 1, NULL, '2023-11-08 15:36:51', '11', 0),
(20, 1, 45, '2', 'Julian 1', '<p>1</p>', 1.00, 1, NULL, '2023-11-08 15:40:00', 'julian-1', 1),
(21, 7, 45, '3', 'Julian 2', '<p>1</p>', 1.00, 1, NULL, '2023-11-08 15:40:33', 'julian-2', 0),
(22, 1, 43, '5', 'Doris 1', '<p>1</p>', 1.00, 1, NULL, '2023-11-08 16:09:14', 'doris-1', 1),
(23, 1, 43, '6', 'Doris 2', '<p>1</p>', 1.00, 1, NULL, '2023-11-08 16:11:04', 'doris-2', 0),
(24, 1, 46, '11112', 'Deira 1', '<p>1</p>', 1.00, 1, NULL, '2023-11-09 09:33:51', 'deira-1', 1),
(25, 1, 48, '11113', 'nidia 1', '<p>1</p>', 1.00, 1, NULL, '2023-11-09 09:36:03', 'nidia-1', 1),
(26, 15, 49, '11114', 'martha1', '<p>1</p>', 1.00, 1, NULL, '2023-11-09 09:36:54', 'martha1', 1),
(27, 1, 44, '11115', 'david 1', '<p>1</p>', 1.00, 1, NULL, '2023-11-09 09:37:43', 'david-1', 1),
(28, 11, 55, '1234561', 'Evelyn 1', '', 1.00, 1, NULL, '2023-11-23 18:09:07', 'evelyn-1', 1),
(29, 10, 52, '1234552', 'claudia 1', '<p>1</p>', 1.00, 1, NULL, '2023-11-23 18:11:25', 'claudia-1', 1),
(30, 1, 51, '1234563', 'Ediltrudis Díaz', '', 1.00, 1, NULL, '2023-11-23 18:12:42', 'ediltrudis-diaz', 1),
(31, 11, 54, '1234564', 'Lina 1', '', 1.00, 1, NULL, '2023-11-23 18:14:09', 'lina-1', 1),
(32, 1, 50, '1234565', 'Ricardo', '', 1.00, 1, NULL, '2023-11-23 18:15:12', 'ricardo', 1),
(33, 1, 53, '1234566', 'Sorayda', '', 1.00, 1, NULL, '2023-11-23 18:16:19', 'sorayda', 1),
(34, 7, 53, '36985744251515', 'Sandalias punto de cruz', '<p>dfa.jksdhflksahd-gklashdflkahsdgklhsa&ntilde;</p>', 25000.00, 6, NULL, '2024-07-09 10:48:08', 'sandalias-punto-de-cruz', 1),
(35, 7, 53, '55555', 'Bolso No 1', '<p>asdfasdgfasdfg</p>', 8541.00, 9, NULL, '2024-07-09 10:49:26', 'bolso-no-1', 1),
(36, 1, 53, '99999999', 'Bolso No 2', '<p>sdgasgsdgsfdf</p>', 65241.00, 6, NULL, '2024-07-09 10:51:03', 'bolso-no-2', 1),
(37, 10, 45, '1245365427', 'Producto 1', '<p>Por definir&nbsp;</p>', 30.00, 6, NULL, '2024-07-12 10:57:18', 'producto-1', 1),
(38, 7, 44, '1234567891', 'Producto 1', '<p>Por definir</p>', 20.00, 6, NULL, '2024-07-12 10:57:19', 'producto-1', 1),
(39, 7, 50, '1560535240', 'cuadro en maderado', '<p>por definir</p>', 120.00, 3, NULL, '2024-07-12 10:57:19', 'cuadro-en-maderado', 1),
(40, 7, 55, '123123123', 'zapatos', '<p>por definir&nbsp;</p>', 200000.00, 2, NULL, '2024-07-12 10:57:20', 'zapatos', 1),
(41, 7, 46, '1524528', 'Canasto 1', '<p>Por definir</p>', 20.00, 1, NULL, '2024-07-12 10:57:20', 'canasto-1', 1),
(42, 11, 43, '2132564281', 'Producto 1', '<p>Por definir con el artesano</p>', 120.00, 8, NULL, '2024-07-12 10:57:20', 'producto-1', 1),
(43, 10, 47, '1423456789', 'Aretes de ballena', '<p>por definir con el artesano</p>', 10.00, 10, NULL, '2024-07-12 10:57:21', 'aretes-de-ballena', 1),
(44, 7, 53, '1234567890', 'Cartera', '<p>Por definir&nbsp;</p>', 50.00, 10, NULL, '2024-07-12 10:57:21', 'cartera', 0),
(45, 1, 47, '5631488552', 'Pieza artesanal decorativa', '<p>Por definir</p>', 70.00, 4, NULL, '2024-07-12 10:57:21', 'pieza-artesanal-decorativa', 1),
(46, 10, 52, '3148892651', 'Anillo', '<p>Por definir&nbsp;</p>', 8.00, 5, NULL, '2024-07-12 10:57:24', 'anillo', 1),
(47, 7, 48, '7894561230', 'dulce abrigo floral', '<p>por definir&nbsp;</p>', 85.99, 8, NULL, '2024-07-12 10:57:25', 'dulce-abrigo-floral', 1),
(48, 11, 51, '3205286291', 'Producto 1', '<p>Por definir</p>', 90.00, 10, NULL, '2024-07-12 10:57:44', 'producto-1', 1),
(49, 1, 46, '2148221', 'Canasto 2', '<p>Por definir&nbsp;</p>', 20.00, 1, NULL, '2024-07-12 10:58:46', 'canasto-2', 1),
(50, 11, 43, '2589654317', 'Producto 2', '<p>Por definir&nbsp;</p>', 45.00, 3, NULL, '2024-07-12 10:59:03', 'producto-2', 1),
(51, 1, 46, '2541542', 'canasto 3', '<p>Por definir&nbsp;</p>', 45.00, 1, NULL, '2024-07-12 10:59:28', 'canasto-3', 1),
(52, 10, 47, '1546789056', 'Aretes con paisaje', '<p>por definir con el artesano</p>', 10.00, 10, NULL, '2024-07-12 10:59:31', 'aretes-con-paisaje', 1),
(53, 10, 52, '2541369778', 'Aretes', '<p>Por definir&nbsp;</p>', 15.00, 1, NULL, '2024-07-12 10:59:31', 'aretes', 1),
(54, 1, 44, '1256439874', 'Producto 2', '<p>por definir</p>', 25000.00, 5, NULL, '2024-07-12 10:59:32', 'producto-2', 1),
(55, 10, 43, '2536147896', 'Producto 3', '<p>Por definir</p>', 96.00, 4, NULL, '2024-07-12 10:59:41', 'producto-3', 1),
(56, 1, 44, '215489654', 'Producto 3', '<p>por definir</p>', 30000.00, 7, NULL, '2024-07-12 11:00:34', 'producto-3', 1),
(57, 10, 43, '231654879', 'Producto 4', '<p>Por definir</p>', 36.00, 5, NULL, '2024-07-12 11:00:39', 'producto-4', 1),
(58, 1, 46, '85475135', 'Bolso EC', '<p>Por definir&nbsp;</p>', 70.00, 1, NULL, '2024-07-12 11:00:44', 'bolso-ec', 1),
(59, 10, 45, '1234567892', 'Producto 2', '<p>Por Definir</p>', 20.00, 7, NULL, '2024-07-12 11:00:44', 'producto-2', 1),
(60, 11, 55, '215454354', 'crop top tejido', '<p>por definir</p>', 30000.00, 2, NULL, '2024-07-12 11:00:50', 'crop-top-tejido', 1),
(61, 10, 52, '2548713695', 'Conjunto de aretes y collar', '<p>Por definir&nbsp;</p>', 20.00, 1, NULL, '2024-07-12 11:00:51', 'conjunto-de-aretes-y-collar', 1),
(62, 11, 51, '987654321', 'producto 2', '<p>Por definir</p>', 50.00, 3, NULL, '2024-07-12 11:00:52', 'producto-2', 1),
(63, 1, 50, '1368942590', 'colección de carro de madera', '<p>por deffinir</p>', 80.00, 8, NULL, '2024-07-12 11:01:05', 'coleccion-de-carro-de-madera', 1),
(64, 10, 52, '3641275946', 'Llavero cholado', '<p>Por definir&nbsp;</p> <p>&nbsp;</p>', 11.00, 2, NULL, '2024-07-12 11:01:52', 'llavero-cholado', 1),
(65, 11, 55, '46545587', 'Bolso', '<p>po definir</p>', 30000.00, 2, NULL, '2024-07-12 11:02:05', 'bolso', 1),
(66, 10, 45, '1234567893', 'Producto 3', '<p>Por Definir</p>', 20.00, 9, NULL, '2024-07-12 11:02:10', 'producto-3', 1),
(67, 11, 51, '8765432109', 'Producto 3', '<p>Por definir</p> <p>&nbsp;</p>', 68.00, 20, NULL, '2024-07-12 11:02:39', 'producto-3', 1),
(68, 11, 55, '654654534', 'bufanda', '<p>por definir</p>', 12000.00, 2, NULL, '2024-07-12 11:02:57', 'bufanda', 1),
(69, 7, 50, '1459326510', 'cofre de madera', '<p>por definir&nbsp;</p>', 100.00, 10, NULL, '2024-07-12 11:03:09', 'cofre-de-madera', 1),
(70, 10, 52, '1472583691', 'Brazalete', '<p>Por definir&nbsp;</p>', 18.00, 1, NULL, '2024-07-12 11:03:22', 'brazalete', 1),
(71, 11, 51, '2109876543', 'producto 4', '<p>Por definir</p>', 45.00, 7, NULL, '2024-07-12 11:04:41', 'producto-4', 1),
(72, 2, 50, '1862345900', 'guarda tarjetas de madera', '<p>por definir</p>', 50.00, 20, NULL, '2024-07-12 11:05:30', 'guarda-tarjetas-de-madera', 1),
(73, 1, 48, '4561237890', 'merry christmas', '<p>por definir</p>', 100.00, 20, NULL, '2024-07-12 11:06:36', 'merry-christmas', 1),
(74, 1, 50, '7542364800', 'jarrón grande de madera', '<p>por definir</p>', 250.00, 15, NULL, '2024-07-12 11:07:50', 'jarron-grande-de-madera', 1),
(75, 7, 48, '1237894560', 'pañuelo basico', '<p>por definir&nbsp;</p>', 30.99, 35, NULL, '2024-07-12 11:09:01', 'panuelo-basico', 1),
(76, 1, 50, '7548623100', 'jarrón pequeño de madera', '<p>por definir&nbsp;</p>', 200.00, 15, NULL, '2024-07-12 11:09:21', 'jarron-pequeno-de-madera', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Artesanos', 'Artesanos', 1),
(5, 'Aprendiz', 'aprendiz', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
