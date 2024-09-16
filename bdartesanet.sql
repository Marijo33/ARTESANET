-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2024 a las 02:23:31
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
-- Base de datos: `bdartesanet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `tipoPermiso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `tipoPermiso`) VALUES
(11, 'General'),
(12, 'Comunidad'),
(13, 'Comunidad'),
(14, 'Comunidad'),
(15, 'Comunidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artesano`
--

CREATE TABLE `artesano` (
  `idArtesano` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `idComunidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artesano`
--

INSERT INTO `artesano` (`idArtesano`, `descripcion`, `idComunidad`) VALUES
(21, 'Artesano especializado en cerámica', 1),
(22, 'Artesano de tejidos tradicionales', 1),
(23, 'Artesano de tallado en madera', 2),
(24, 'Artesano de joyería', 2),
(25, 'Artesano de cuero', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritodecompra`
--

CREATE TABLE `carritodecompra` (
  `idCarrito` int(11) NOT NULL,
  `idComprador` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `id_transaccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carritodecompra`
--

INSERT INTO `carritodecompra` (`idCarrito`, `idComprador`, `fecha`, `estado`, `id_transaccion`) VALUES
(500, 1, '2024-01-01', 'Pendiente', 1),
(501, 1, '2024-01-02', 'Completado', 2),
(502, 1, '2024-01-03', 'Cancelado', 3),
(503, 1, '2024-01-04', 'Pendiente', 4),
(504, 2, '2024-01-05', 'Completado', 5),
(505, 2, '2024-01-06', 'Cancelado', 6),
(506, 2, '2024-01-07', 'Pendiente', 7),
(507, 2, '2024-01-08', 'Completado', 8),
(508, 3, '2024-01-09', 'Cancelado', 9),
(509, 3, '2024-01-10', 'Pendiente', 10),
(510, 3, '2024-01-11', 'Completado', 11),
(511, 3, '2024-01-12', 'Cancelado', 12),
(512, 4, '2024-01-13', 'Pendiente', 13),
(513, 4, '2024-01-14', 'Completado', 14),
(514, 4, '2024-01-15', 'Cancelado', 15),
(515, 4, '2024-01-16', 'Pendiente', 16),
(516, 5, '2024-01-17', 'Completado', 17),
(517, 5, '2024-01-18', 'Cancelado', 18),
(518, 5, '2024-01-19', 'Pendiente', 19),
(519, 5, '2024-01-20', 'Completado', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritodecompra_producto`
--

CREATE TABLE `carritodecompra_producto` (
  `idCarrito` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carritodecompra_producto`
--

INSERT INTO `carritodecompra_producto` (`idCarrito`, `idProducto`, `cantidad`) VALUES
(500, 800, 2),
(501, 801, 1),
(502, 802, 1),
(503, 803, 3),
(504, 804, 1),
(505, 805, 2),
(506, 806, 1),
(507, 807, 4),
(508, 808, 3),
(509, 809, 1),
(510, 810, 2),
(511, 811, 5),
(512, 812, 1),
(513, 813, 2),
(514, 814, 1),
(515, 815, 3),
(516, 816, 1),
(517, 817, 2),
(518, 818, 1),
(519, 819, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nomCat` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nomCat`, `descripcion`) VALUES
(1100, 'Cerámica', 'Artículos hechos de barro o arcilla.'),
(1101, 'Textiles', 'Ropa y accesorios hechos a mano.'),
(1102, 'Joyería', 'Accesorios de joyería artesanal.'),
(1103, 'Pintura', 'Cuadros y pinturas hechas a mano.'),
(1104, 'Madera', 'Artículos tallados en madera.'),
(1105, 'Vidrio', 'Objetos de vidrio soplado artesanal.'),
(1106, 'Cuero', 'Productos hechos de cuero.'),
(1107, 'Cestería', 'Cestas y productos tejidos a mano.'),
(1108, 'Papel', 'Artículos hechos de papel reciclado.'),
(1109, 'Metales', 'Esculturas y objetos de metal.'),
(1110, 'Ropa', 'Vestimenta artesanal.'),
(1111, 'Juguetes', 'Juguetes hechos a mano.'),
(1112, 'Herramientas', 'Herramientas de artesanía.'),
(1113, 'Muebles', 'Mobiliario artesanal.'),
(1114, 'Decoración', 'Artículos decorativos hechos a mano.'),
(1115, 'Accesorios', 'Complementos de moda.'),
(1116, 'Fotografía', 'Obras fotográficas.'),
(1117, 'Instrumentos', 'Instrumentos musicales artesanales.'),
(1118, 'Calzado', 'Zapatos y sandalias artesanales.'),
(1119, 'Cerámica Avanzada', 'Obras cerámicas especializadas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `idComprador` int(11) NOT NULL,
  `ciComprador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`idComprador`, `ciComprador`) VALUES
(1, 12345678),
(2, 23456789),
(3, 34567890),
(4, 45678901),
(5, 56789012),
(6, 67890123),
(7, 78901234),
(8, 89012345),
(9, 90123456),
(10, 10123457);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidad`
--

CREATE TABLE `comunidad` (
  `idComunidad` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `idAdministrador` int(11) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL DEFAULT 'comunidad.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunidad`
--

INSERT INTO `comunidad` (`idComunidad`, `nombre`, `descripcion`, `ubicacion`, `categoria`, `idAdministrador`, `imagen`) VALUES
(1, 'Comunidad A', 'Descripción de la Comunidad A', 'Ubicación A', 'Categoría A', 12, 'comunidad.jpg'),
(2, 'Comunidad B', 'Descripción de la Comunidad B', 'Ubicación B', 'Categoría B', 13, 'comunidad.jpg'),
(3, 'Comunidad C', 'Descripción de la Comunidad C', 'Ubicación C', 'Categoría C', 14, 'comunidad.jpg'),
(4, 'Comunidad D', 'Descripción de la Comunidad D', 'Ubicación D', 'Categoría D', 15, 'comunidad.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `idDevolucion` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `razon` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado` enum('pendiente','aprobado','rechazado') NOT NULL DEFAULT 'pendiente',
  `Reembolso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`idDevolucion`, `idPedido`, `fecha_devolucion`, `razon`, `cantidad`, `estado`, `Reembolso`) VALUES
(900, 3000, '2024-02-01', 'Producto defectuoso', 1, 'pendiente', 50),
(901, 3001, '2024-02-02', 'No cumple con la descripción', 2, 'aprobado', 100),
(902, 3002, '2024-02-03', 'Producto dañado', 1, 'rechazado', 0),
(903, 3003, '2024-02-04', 'Tamaño incorrecto', 3, 'pendiente', 75),
(904, 3004, '2024-02-05', 'Error en el pedido', 1, 'aprobado', 50),
(905, 3005, '2024-02-06', 'Producto no es como se esperaba', 2, 'rechazado', 0),
(906, 3006, '2024-02-07', 'Defecto en el material', 1, 'pendiente', 60),
(907, 3007, '2024-02-08', 'Producto incorrecto enviado', 4, 'aprobado', 120),
(908, 3008, '2024-02-09', 'No llegó en el tiempo esperado', 3, 'rechazado', 0),
(909, 3009, '2024-02-10', 'Producto roto', 1, 'pendiente', 70),
(910, 3010, '2024-02-11', 'Color diferente al solicitado', 2, 'aprobado', 80),
(911, 3011, '2024-02-12', 'Producto incompleto', 5, 'rechazado', 0),
(912, 3012, '2024-02-13', 'Daño durante el envío', 1, 'pendiente', 90),
(913, 3013, '2024-02-14', 'Producto fuera de especificación', 2, 'aprobado', 100),
(914, 3014, '2024-02-15', 'El material no es duradero', 1, 'rechazado', 0),
(915, 3015, '2024-02-16', 'La calidad no es la esperada', 3, 'pendiente', 50),
(916, 3016, '2024-02-17', 'El tamaño es más grande de lo esperado', 1, 'aprobado', 110),
(917, 3017, '2024-02-18', 'No es lo que pedí', 2, 'rechazado', 0),
(918, 3018, '2024-02-19', 'El color no es el indicado', 1, 'pendiente', 60),
(919, 3019, '2024-02-20', 'Daño en el acabado', 3, 'aprobado', 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialcompras`
--

CREATE TABLE `historialcompras` (
  `idHistorialCompras` int(11) NOT NULL,
  `idComprador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historialcompras`
--

INSERT INTO `historialcompras` (`idHistorialCompras`, `idComprador`) VALUES
(401, 1),
(402, 2),
(403, 3),
(404, 4),
(405, 5),
(406, 6),
(407, 7),
(408, 8),
(409, 9),
(410, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialcompras_carrito`
--

CREATE TABLE `historialcompras_carrito` (
  `idHistorial` int(11) NOT NULL,
  `idCarrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historialcompras_carrito`
--

INSERT INTO `historialcompras_carrito` (`idHistorial`, `idCarrito`) VALUES
(401, 500),
(401, 501),
(401, 502),
(404, 503),
(404, 504),
(404, 505),
(404, 506),
(408, 507),
(408, 508),
(410, 509),
(410, 510),
(410, 511);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interaccioneschatbot`
--

CREATE TABLE `interaccioneschatbot` (
  `idInteraccion` int(11) NOT NULL,
  `comprador` int(11) DEFAULT NULL,
  `fecha_interaccion` datetime NOT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `respuesta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `interaccioneschatbot`
--

INSERT INTO `interaccioneschatbot` (`idInteraccion`, `comprador`, `fecha_interaccion`, `mensaje`, `respuesta`) VALUES
(100, 1, '2023-08-01 10:30:00', '\"¿Cuánto cuesta el envío?\"', '\"El envío cuesta $5\"'),
(101, 1, '2023-08-01 10:45:00', '\"¿Cómo rastreo mi pedido?\"', '\"Puedes rastrearlo en tu perfil\"'),
(102, 1, '2023-08-01 11:00:00', '\"¿Tienen ofertas?\"', '\"Sí, en la sección de ofertas\"'),
(103, 2, '2023-08-01 11:15:00', '\"¿Cuándo llega mi pedido?\"', '\"Llega en 5 días hábiles\"'),
(104, 2, '2023-08-01 11:30:00', '\"¿Puedo cancelar mi compra?\"', '\"Sí, dentro de las 24 horas\"'),
(105, 3, '2023-08-01 11:45:00', '\"¿Hay stock del producto?\"', '\"Sí, hay 10 unidades\"'),
(106, 3, '2023-08-01 12:00:00', '\"¿Aceptan devoluciones?\"', '\"Sí, tienes 15 días para devolverlo\"'),
(107, 2, '2023-08-01 12:15:00', '\"¿El producto es original?\"', '\"Sí, es original\"'),
(108, 2, '2023-08-01 12:30:00', '\"¿Puedo pagar con tarjeta?\"', '\"Sí, aceptamos tarjetas\"'),
(109, 6, '2023-08-01 12:45:00', '\"¿Hay garantía?\"', '\"No\"'),
(110, 6, '2023-08-01 13:00:00', '\"¿Cuánto tarda el envío?\"', '\"Si un dia habil\"'),
(111, 7, '2023-08-01 13:15:00', '\"¿El producto viene ensamblado?\"', '\"Sí, llega ensamblado\"'),
(112, 8, '2023-08-01 13:30:00', '\"¿Es posible pagar en efectivo?\"', '\"Sí, puedes pagar al recibir\"'),
(113, 8, '2023-08-01 13:45:00', '\"¿Puedo cambiar mi dirección?\"', '\"Sí, desde tu perfil\"'),
(114, 2, '2023-08-01 14:00:00', '\"¿Envían a todo el país?\"', '\"Sí, enviamos a todo el país\"'),
(115, 2, '2023-08-01 14:15:00', '\"¿Cuánto pesa el producto?\"', '\"Pesa 2kg\"'),
(116, 5, '2023-08-01 14:30:00', '\"¿Puedo recoger en tienda?\"', '\"No, solo envío a domicilio\"'),
(117, 5, '2023-08-01 14:45:00', '\"¿Aceptan devoluciones parciales?\"', '\"Sí, en productos no abiertos\"'),
(118, 6, '2023-08-01 15:00:00', '\"¿El producto tiene descuento?\"', '\"No, no tiene descuento\"'),
(119, 7, '2023-08-01 15:15:00', '\"¿Puedo obtener factura?\"', '\"Sí, puedes solicitarla\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listadedeseo`
--

CREATE TABLE `listadedeseo` (
  `idLista` int(11) NOT NULL,
  `idComprador` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listadedeseo`
--

INSERT INTO `listadedeseo` (`idLista`, `idComprador`, `fecha`) VALUES
(200, 1, '2023-07-01'),
(201, 2, '2023-07-02'),
(202, 3, '2023-07-03'),
(203, 4, '2023-07-04'),
(204, 5, '2023-07-05'),
(205, 6, '2023-07-06'),
(206, 7, '2023-07-07'),
(207, 8, '2023-07-08'),
(208, 9, '2023-07-09'),
(209, 10, '2023-07-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listadedeseo_producto`
--

CREATE TABLE `listadedeseo_producto` (
  `idLista` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `fechaAnadido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listadedeseo_producto`
--

INSERT INTO `listadedeseo_producto` (`idLista`, `idProducto`, `fechaAnadido`) VALUES
(200, 801, '2023-07-01'),
(200, 802, '2023-07-03'),
(200, 810, '2023-07-02'),
(201, 815, '2023-07-04'),
(201, 816, '2023-07-05'),
(203, 801, '2023-07-06'),
(203, 803, '2023-07-07'),
(203, 804, '2023-07-08'),
(203, 807, '2023-07-09'),
(203, 809, '2023-07-10'),
(205, 810, '2023-07-11'),
(205, 811, '2023-07-12'),
(205, 812, '2023-07-13'),
(206, 801, '2023-07-14'),
(206, 810, '2023-07-15'),
(206, 811, '2023-07-16'),
(206, 815, '2023-07-17'),
(207, 806, '2023-07-18'),
(207, 807, '2023-07-19'),
(207, 809, '2023-07-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `idNotificacion` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `notificacion` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`idNotificacion`, `idUsuario`, `notificacion`, `fecha`, `estado`) VALUES
(500, 1, '\"Pedido enviado\"', '2023-08-01 13:00:00', 0),
(501, 1, '\"Producto en camino\"', '2023-08-01 13:10:00', 0),
(502, 12, '\"Stock bajo\"', '2023-08-01 13:20:00', 0),
(503, 5, '\"Compra realizada\"', '2023-08-01 13:30:00', 1),
(504, 5, '\"Pedido entregado\"', '2023-08-01 13:40:00', 1),
(505, 21, '\"Nueva reseña\"', '2023-08-01 13:50:00', 0),
(506, 7, '\"Producto añadido a la lista de deseos\"', '2023-08-01 14:00:00', 1),
(507, 7, '\"Pedido cancelado\"', '2023-08-01 14:10:00', 0),
(508, 7, '\"Producto devuelto\"', '2023-08-01 14:20:00', 1),
(509, 11, '\"Nuevo mensaje del chatbot\"', '2023-08-01 14:30:00', 0),
(510, 8, '\"Pedido procesado\"', '2023-08-01 14:40:00', 0),
(511, 6, '\"Compra rechazada\"', '2023-08-01 14:50:00', 0),
(512, 7, '\"Nuevo producto disponible\"', '2023-08-01 15:00:00', 1),
(513, 23, '\"Producto fuera de stock\"', '2023-08-01 15:10:00', 0),
(514, 8, '\"Pedido confirmado\"', '2023-08-01 15:20:00', 1),
(515, 1, '\"Pedido en preparación\"', '2023-08-01 15:30:00', 0),
(516, 22, '\"Nuevo comentario en tu producto\"', '2023-08-01 15:40:00', 1),
(517, 9, '\"Pedido en camino\"', '2023-08-01 15:50:00', 0),
(518, 21, '\"Pago recibido\"', '2023-08-01 16:00:00', 1),
(519, 7, '\"Tu reseña ha sido aprobada\"', '2023-08-01 16:10:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `idOferta` int(11) NOT NULL,
  `tipoOferta` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `valorOferta` decimal(5,2) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`idOferta`, `tipoOferta`, `descripcion`, `valorOferta`, `fechaInicio`, `fechaFin`, `estado`, `idProducto`) VALUES
(2000, 'Descuento', 'Descuento del 10% en todos los productos.', 10.00, '2024-01-01', '2024-01-31', 'Activa', 800),
(2001, 'Promoción', 'Compra 2 y obtén 1 gratis.', 0.00, '2024-02-01', '2024-02-28', 'Activa', 802),
(2002, 'Descuento', '20% de descuento en collares.', 20.00, '2024-03-01', '2024-03-31', 'Activa', 803),
(2003, 'Descuento', '15% de descuento en cuadros.', 15.00, '2024-04-01', '2024-04-30', 'Activa', 804),
(2004, 'Promoción', 'Envío gratis en pedidos de más de $50.', 0.00, '2024-05-01', '2024-05-31', 'Activa', 805),
(2005, 'Descuento', 'Descuento del 5% en vasos de vidrio.', 5.00, '2024-06-01', '2024-06-30', 'Activa', 806),
(2006, 'Descuento', 'Descuento del 10% en billeteras de cuero.', 10.00, '2024-07-01', '2024-07-31', 'Activa', 807),
(2007, 'Promoción', '2x1 en cestas de mimbre.', 0.00, '2024-08-01', '2024-08-31', 'Activa', 808),
(2008, 'Descuento', 'Descuento del 10% en cuadernos reciclados.', 10.00, '2024-09-01', '2024-09-30', 'Activa', 809),
(2009, 'Descuento', '20% de descuento en esculturas de metal.', 20.00, '2024-10-01', '2024-10-31', 'Activa', 810),
(2010, 'Descuento', '10% de descuento en camisetas bordadas.', 10.00, '2024-11-01', '2024-11-30', 'Activa', 811),
(2011, 'Descuento', '15% de descuento en muñecas de trapo.', 15.00, '2024-12-01', '2024-12-31', 'Activa', 812),
(2012, 'Promoción', 'Envío gratis en herramientas.', 0.00, '2024-01-01', '2024-01-31', 'Activa', 813),
(2013, 'Descuento', 'Descuento del 5% en muebles artesanales.', 5.00, '2024-02-01', '2024-02-28', 'Activa', 814),
(2014, 'Promoción', 'Descuento del 10% en lámparas decorativas.', 10.00, '2024-03-01', '2024-03-31', 'Activa', 815),
(2015, 'Descuento', 'Descuento del 10% en sombreros de paja.', 10.00, '2024-04-01', '2024-04-30', 'Activa', 816),
(2016, 'Promoción', '3x2 en fotografías enmarcadas.', 0.00, '2024-05-01', '2024-05-31', 'Activa', 817),
(2017, 'Descuento', '20% de descuento en guitarras.', 20.00, '2024-06-01', '2024-06-30', 'Activa', 818),
(2018, 'Descuento', '10% de descuento en sandalias de cuero.', 10.00, '2024-07-01', '2024-07-31', 'Activa', 819),
(2019, 'Descuento', '15% de descuento en jarrones cerámicos.', 15.00, '2024-08-01', '2024-08-31', 'Activa', 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `idPaquete` int(11) NOT NULL,
  `fechaPedido` date NOT NULL,
  `estado` enum('Procesando','Enviado','Recibido','Cancelado') NOT NULL DEFAULT 'Procesando',
  `total` decimal(10,2) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquete`
--

INSERT INTO `paquete` (`idPaquete`, `fechaPedido`, `estado`, `total`, `idUsuario`) VALUES
(3000, '2024-01-01', 'Procesando', 100.50, 6),
(3001, '2024-01-02', 'Enviado', 150.00, 6),
(3002, '2024-01-03', 'Recibido', 200.00, 7),
(3003, '2024-01-04', 'Cancelado', 50.00, 7),
(3004, '2024-01-05', 'Procesando', 120.00, 8),
(3005, '2024-01-06', 'Enviado', 170.00, 6),
(3006, '2024-01-07', 'Recibido', 220.00, 7),
(3007, '2024-01-08', 'Cancelado', 80.00, 8),
(3008, '2024-01-09', 'Procesando', 130.00, 9),
(3009, '2024-01-10', 'Enviado', 180.00, 10),
(3010, '2024-01-11', 'Recibido', 230.00, 16),
(3011, '2024-01-12', 'Cancelado', 90.00, 17),
(3012, '2024-01-13', 'Procesando', 140.00, 18),
(3013, '2024-01-14', 'Enviado', 190.00, 19),
(3014, '2024-01-15', 'Recibido', 240.00, 20),
(3015, '2024-01-16', 'Cancelado', 100.00, 16),
(3016, '2024-01-17', 'Procesando', 150.00, 17),
(3017, '2024-01-18', 'Enviado', 200.00, 18),
(3018, '2024-01-19', 'Recibido', 250.00, 19),
(3019, '2024-01-20', 'Cancelado', 110.00, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalentrega`
--

CREATE TABLE `personalentrega` (
  `idPersonalEntrega` int(11) NOT NULL,
  `tipo_vehiculo` varchar(255) DEFAULT NULL,
  `placa_vehiculo` varchar(255) DEFAULT NULL,
  `hora_ingreso` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `disponibilidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personalentrega`
--

INSERT INTO `personalentrega` (`idPersonalEntrega`, `tipo_vehiculo`, `placa_vehiculo`, `hora_ingreso`, `hora_salida`, `disponibilidad`) VALUES
(6, 'Moto', 'JKL3456', '11:00:00', '20:00:00', 0),
(7, 'Camioneta', 'UVW1234', '09:30:00', '18:30:00', 0),
(8, 'Bicicleta', 'GHI7890', '10:30:00', '19:30:00', 0),
(9, 'Moto', 'RST9012', '07:00:00', '16:00:00', 0),
(10, 'Camioneta', 'PQR3456', '08:00:00', '17:00:00', 0),
(16, 'Moto', 'ABC1234', '08:00:00', '17:00:00', 0),
(17, 'Camioneta', 'XYZ5678', '09:00:00', '18:00:00', 0),
(18, 'Bicicleta', 'LMN9101', '10:00:00', '19:00:00', 0),
(19, 'Moto', 'OPQ2345', '07:30:00', '16:30:00', 0),
(20, 'Camioneta', 'RST6789', '08:30:00', '17:30:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idArtesano` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL DEFAULT 'producto.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombre`, `idCategoria`, `descripcion`, `precio`, `idArtesano`, `imagen`) VALUES
(800, 'Vaso de cerámica', 1100, 'Vaso hecho a mano con diseños tradicionales.', 10.50, 21, 'producto.jpg'),
(801, 'Bolsa tejida', 1101, 'Bolsa hecha a mano con materiales naturales.', 25.00, 21, 'producto.jpg'),
(802, 'Collar de plata', 1102, 'Collar artesanal de plata.', 150.00, 21, 'producto.jpg'),
(803, 'Cuadro al óleo', 1103, 'Pintura al óleo en lienzo.', 200.00, 21, 'producto.jpg'),
(804, 'Figura de madera', 1104, 'Escultura tallada en madera.', 50.00, 22, 'producto.jpg'),
(805, 'Vaso de vidrio', 1105, 'Vaso de vidrio soplado a mano.', 30.00, 22, 'producto.jpg'),
(806, 'Billetera de cuero', 1106, 'Billetera hecha a mano de cuero.', 45.00, 22, 'producto.jpg'),
(807, 'Cesta de mimbre', 1107, 'Cesta tejida a mano.', 20.00, 23, 'producto.jpg'),
(808, 'Cuaderno reciclado', 1108, 'Cuaderno hecho de papel reciclado.', 12.00, 23, 'producto.jpg'),
(809, 'Escultura de metal', 1109, 'Obra escultórica en metal.', 300.00, 23, 'producto.jpg'),
(810, 'Camiseta bordada', 1110, 'Camiseta con bordados artesanales.', 35.00, 23, 'producto.jpg'),
(811, 'Muñeca de trapo', 1111, 'Muñeca hecha a mano de trapo.', 15.00, 23, 'producto.jpg'),
(812, 'Cincel artesanal', 1112, 'Cincel hecho a mano para tallado.', 25.00, 24, 'producto.jpg'),
(813, 'Mesa de madera', 1113, 'Mesa de madera artesanal.', 250.00, 24, 'producto.jpg'),
(814, 'Lámpara decorativa', 1114, 'Lámpara artesanal decorativa.', 60.00, 24, 'producto.jpg'),
(815, 'Sombrero de paja', 1115, 'Sombrero hecho a mano de paja.', 20.00, 24, 'producto.jpg'),
(816, 'Fotografía enmarcada', 1116, 'Fotografía artística enmarcada.', 100.00, 25, 'producto.jpg'),
(817, 'Guitarra artesanal', 1117, 'Guitarra hecha a mano.', 500.00, 25, 'producto.jpg'),
(818, 'Sandalias de cuero', 1118, 'Sandalias hechas a mano de cuero.', 40.00, 25, 'producto.jpg'),
(819, 'Jarrón cerámico', 1119, 'Jarrón de cerámica avanzada.', 75.00, 25, 'producto.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña`
--

CREATE TABLE `reseña` (
  `idReseña` int(11) NOT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `idComprador` int(11) DEFAULT NULL,
  `fecha_reseña` date NOT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `comentario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reseña`
--

INSERT INTO `reseña` (`idReseña`, `idProducto`, `idComprador`, `fecha_reseña`, `calificacion`, `comentario`) VALUES
(100, 800, 1, '2023-08-01', 5, '\"Producto excelente\"\r'),
(101, 800, 1, '2023-08-02', 4, '\"Buen producto\"\r'),
(102, 800, 2, '2023-08-03', 3, '\"Regular, esperaba más\"'),
(103, 801, 5, '2023-08-04', 2, '\"No cumplió expectativas\"'),
(104, 801, 5, '2023-08-05', 1, '\"Muy mala calidad\"'),
(105, 801, 3, '2023-08-06', 5, '\"Excelente compra\"'),
(106, 801, 2, '2023-08-07', 4, '\"Contento con el producto\"'),
(107, 802, 2, '2023-08-08', 3, '\"Aceptable\"'),
(108, 803, 6, '2023-08-09', 2, '\"Mal, llegó roto\"'),
(109, 804, 7, '2023-08-10', 1, '\"No lo recomiendo\"'),
(110, 804, 8, '2023-08-11', 5, '\"Calidad insuperable\"'),
(111, 805, 9, '2023-08-12', 4, '\"Satisfecho\"'),
(112, 805, 8, '2023-08-13', 3, '\"Regular producto\"'),
(113, 805, 7, '2023-08-14', 2, '\"Muy básico\"'),
(114, 805, 7, '2023-08-15', 1, '\"No lo recomiendo\"'),
(115, 806, 9, '2023-08-16', 5, '\"Me encantó\"'),
(116, 806, 3, '2023-08-17', 4, '\"Cumple con lo prometido\"'),
(117, 809, 3, '2023-08-18', 3, '\"Producto aceptable\"'),
(118, 809, 2, '2023-08-19', 2, '\"Calidad baja\"'),
(119, 812, 1, '2023-08-20', 1, '\"No me gustó\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `idTransaccion` int(11) NOT NULL,
  `montoTransaccion` decimal(10,2) NOT NULL,
  `fechaTransaccion` date NOT NULL,
  `estadoTransaccion` varchar(50) NOT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `idComprador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`idTransaccion`, `montoTransaccion`, `fechaTransaccion`, `estadoTransaccion`, `metodo_pago`, `idComprador`) VALUES
(1, 100.00, '2024-09-01', 'Completada', 'Tarjeta de crédito', 1),
(2, 150.50, '2024-09-02', 'Pendiente', 'Efectivo', 2),
(3, 200.75, '2024-09-03', 'Completada', 'Tarjeta de débito', 3),
(4, 250.25, '2024-09-04', 'Cancelada', 'Transferencia bancaria', 4),
(5, 300.00, '2024-09-05', 'Completada', 'Efectivo', 5),
(6, 120.90, '2024-09-06', 'Completada', 'Tarjeta de crédito', 6),
(7, 80.00, '2024-09-07', 'Pendiente', 'Tarjeta de débito', 7),
(8, 170.60, '2024-09-08', 'Completada', 'Transferencia bancaria', 8),
(9, 220.40, '2024-09-09', 'Cancelada', 'Efectivo', 9),
(10, 90.15, '2024-09-10', 'Completada', 'Tarjeta de crédito', 10),
(11, 110.00, '2024-09-11', 'Pendiente', 'Tarjeta de crédito', 1),
(12, 145.50, '2024-09-12', 'Completada', 'Efectivo', 2),
(13, 180.75, '2024-09-13', 'Completada', 'Tarjeta de débito', 3),
(14, 210.25, '2024-09-14', 'Cancelada', 'Transferencia bancaria', 4),
(15, 320.00, '2024-09-15', 'Completada', 'Efectivo', 5),
(16, 130.90, '2024-09-16', 'Pendiente', 'Tarjeta de crédito', 6),
(17, 75.00, '2024-09-17', 'Completada', 'Tarjeta de débito', 7),
(18, 160.60, '2024-09-18', 'Completada', 'Transferencia bancaria', 8),
(19, 225.40, '2024-09-19', 'Cancelada', 'Efectivo', 9),
(20, 95.15, '2024-09-20', 'Pendiente', 'Tarjeta de crédito', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) NOT NULL,
  `fechaNac` date NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fechacreacionCuenta` date DEFAULT NULL,
  `imagen` varchar(255) NOT NULL DEFAULT 'user.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `email`, `password`, `apellido`, `fechaNac`, `direccion`, `telefono`, `fechacreacionCuenta`, `imagen`) VALUES
(1, 'Juan', 'juan.perez@example.com', 'password1', 'Pérez', '1985-01-15', 'Calle Falsa 123', '555-1234', '2024-09-01', 'user.jpg'),
(2, 'Ana', 'ana.gomez@example.com', 'password2', 'Gómez', '1990-03-22', 'Avenida Siempre Viva 456', '555-5678', '2024-09-01', 'user.jpg'),
(3, 'Luis', 'luis.martinez@example.com', 'password3', 'Martínez', '1978-06-30', 'Calle del Sol 789', '555-8765', '2024-09-01', 'user.jpg'),
(4, 'Marta', 'marta.rodriguez@example.com', 'password4', 'Rodríguez', '1983-11-12', 'Paseo de la Reforma 101', '555-3456', '2024-09-01', 'user.jpg'),
(5, 'Carlos', 'carlos.garcia@example.com', 'password5', 'García', '1992-02-08', 'Calle del Viento 202', '555-6543', '2024-09-01', 'user.jpg'),
(6, 'Laura', 'laura.fernandez@example.com', 'password6', 'Fernández', '1988-05-20', 'Calle del Mar 303', '555-9876', '2024-09-01', 'user.jpg'),
(7, 'Pedro', 'pedro.lopez@example.com', 'password7', 'López', '1975-09-15', 'Calle del Río 404', '555-5432', '2024-09-01', 'user.jpg'),
(8, 'Clara', 'clara.alvarez@example.com', 'password8', 'Álvarez', '1995-07-30', 'Calle del Bosque 505', '555-6789', '2024-09-01', 'user.jpg'),
(9, 'Jorge', 'jorge.jimenez@example.com', 'password9', 'Jiménez', '1980-12-10', 'Calle de la Luna 606', '555-2345', '2024-09-01', 'user.jpg'),
(10, 'Sofía', 'sofia.castro@example.com', 'password10', 'Castro', '1987-04-05', 'Calle de la Nube 707', '555-3456', '2024-09-01', 'user.jpg'),
(11, 'Elena', 'elena.molina@example.com', 'password11', 'Molina', '1979-08-17', 'Calle del Horizonte 808', '555-4567', '2024-09-01', 'user.jpg'),
(12, 'Ricardo', 'ricardo.pinto@example.com', 'password12', 'Pinto', '1982-02-15', 'Calle de la Esperanza 909', '555-7890', '2024-09-01', 'user.jpg'),
(13, 'Paola', 'paola.cruz@example.com', 'password13', 'Cruz', '1989-03-21', 'Calle de los Sueños 1001', '555-3456', '2024-09-01', 'user.jpg'),
(14, 'Fernando', 'fernando.suarez@example.com', 'password14', 'Suárez', '1991-11-30', 'Calle del Éxito 1111', '555-6543', '2024-09-01', 'user.jpg'),
(15, 'Gabriela', 'gabriela.mendez@example.com', 'password15', 'Méndez', '1980-12-20', 'Calle del Triunfo 1222', '555-7891', '2024-09-01', 'user.jpg'),
(16, 'Fernando', 'fernando.perez@example.com', 'password16', 'Pérez', '1981-05-15', 'Calle de la Esperanza 202', '555-5678', '2024-09-01', 'user.jpg'),
(17, 'Julieta', 'julieta.morales@example.com', 'password17', 'Morales', '1990-11-30', 'Calle del Bosque 303', '555-6789', '2024-09-01', 'user.jpg'),
(18, 'Alejandro', 'alejandro.jimenez@example.com', 'password18', 'Jiménez', '1985-07-21', 'Calle del Sol 404', '555-7890', '2024-09-01', 'user.jpg'),
(19, 'Sofía', 'sofia.vasquez@example.com', 'password19', 'Vásquez', '1993-02-12', 'Calle del Mar 505', '555-8901', '2024-09-01', 'user.jpg'),
(20, 'Jorge', 'jorge.castro@example.com', 'password20', 'Castro', '1987-09-19', 'Calle del Viento 606', '555-9012', '2024-09-01', 'user.jpg'),
(21, 'Mónica', 'monica.ruiz@example.com', 'password21', 'Ruiz', '1992-04-05', 'Calle del Norte 707', '555-0123', '2024-09-01', 'user.jpg'),
(22, 'Ricardo', 'ricardo.gomez@example.com', 'password22', 'Gómez', '1980-12-28', 'Calle del Río 808', '555-1234', '2024-09-01', 'user.jpg'),
(23, 'Natalia', 'natalia.ortiz@example.com', 'password23', 'Ortiz', '1988-06-30', 'Calle de los Pinos 909', '555-2345', '2024-09-01', 'user.jpg'),
(24, 'Gabriel', 'gabriel.lopez@example.com', 'password24', 'López', '1995-01-18', 'Calle de la Luna 1010', '555-3456', '2024-09-01', 'user.jpg'),
(25, 'Carla', 'carla.sanchez@example.com', 'password25', 'Sánchez', '1983-08-10', 'Calle del Estilo 1111', '555-4567', '2024-09-01', 'user.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indices de la tabla `artesano`
--
ALTER TABLE `artesano`
  ADD PRIMARY KEY (`idArtesano`),
  ADD KEY `idComunidad` (`idComunidad`);

--
-- Indices de la tabla `carritodecompra`
--
ALTER TABLE `carritodecompra`
  ADD PRIMARY KEY (`idCarrito`),
  ADD KEY `idComprador` (`idComprador`),
  ADD KEY `id_transaccion` (`id_transaccion`);

--
-- Indices de la tabla `carritodecompra_producto`
--
ALTER TABLE `carritodecompra_producto`
  ADD KEY `idCarrito` (`idCarrito`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`idComprador`);

--
-- Indices de la tabla `comunidad`
--
ALTER TABLE `comunidad`
  ADD PRIMARY KEY (`idComunidad`),
  ADD KEY `idAdministrador` (`idAdministrador`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`idDevolucion`),
  ADD KEY `idPedido` (`idPedido`);

--
-- Indices de la tabla `historialcompras`
--
ALTER TABLE `historialcompras`
  ADD PRIMARY KEY (`idHistorialCompras`),
  ADD KEY `idComprador` (`idComprador`);

--
-- Indices de la tabla `historialcompras_carrito`
--
ALTER TABLE `historialcompras_carrito`
  ADD PRIMARY KEY (`idHistorial`,`idCarrito`),
  ADD KEY `idCarrito` (`idCarrito`);

--
-- Indices de la tabla `interaccioneschatbot`
--
ALTER TABLE `interaccioneschatbot`
  ADD PRIMARY KEY (`idInteraccion`),
  ADD KEY `comprador` (`comprador`);

--
-- Indices de la tabla `listadedeseo`
--
ALTER TABLE `listadedeseo`
  ADD PRIMARY KEY (`idLista`),
  ADD KEY `idComprador` (`idComprador`);

--
-- Indices de la tabla `listadedeseo_producto`
--
ALTER TABLE `listadedeseo_producto`
  ADD PRIMARY KEY (`idLista`,`idProducto`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`idNotificacion`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`idOferta`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`idPaquete`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `personalentrega`
--
ALTER TABLE `personalentrega`
  ADD PRIMARY KEY (`idPersonalEntrega`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idArtesano` (`idArtesano`);

--
-- Indices de la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`idReseña`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idComprador` (`idComprador`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`idTransaccion`),
  ADD KEY `idComprador` (`idComprador`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritodecompra`
--
ALTER TABLE `carritodecompra`
  MODIFY `idCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;

--
-- AUTO_INCREMENT de la tabla `comunidad`
--
ALTER TABLE `comunidad`
  MODIFY `idComunidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `idDevolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;

--
-- AUTO_INCREMENT de la tabla `historialcompras`
--
ALTER TABLE `historialcompras`
  MODIFY `idHistorialCompras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT de la tabla `interaccioneschatbot`
--
ALTER TABLE `interaccioneschatbot`
  MODIFY `idInteraccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `listadedeseo`
--
ALTER TABLE `listadedeseo`
  MODIFY `idLista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `idNotificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `idOferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020;

--
-- AUTO_INCREMENT de la tabla `paquete`
--
ALTER TABLE `paquete`
  MODIFY `idPaquete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3020;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820;

--
-- AUTO_INCREMENT de la tabla `reseña`
--
ALTER TABLE `reseña`
  MODIFY `idReseña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `idTransaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`idAdministrador`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `artesano`
--
ALTER TABLE `artesano`
  ADD CONSTRAINT `artesano_ibfk_1` FOREIGN KEY (`idArtesano`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `artesano_ibfk_2` FOREIGN KEY (`idComunidad`) REFERENCES `comunidad` (`idComunidad`);

--
-- Filtros para la tabla `carritodecompra`
--
ALTER TABLE `carritodecompra`
  ADD CONSTRAINT `carritodecompra_ibfk_1` FOREIGN KEY (`idComprador`) REFERENCES `comprador` (`idComprador`),
  ADD CONSTRAINT `carritodecompra_ibfk_2` FOREIGN KEY (`id_transaccion`) REFERENCES `transaccion` (`idTransaccion`);

--
-- Filtros para la tabla `carritodecompra_producto`
--
ALTER TABLE `carritodecompra_producto`
  ADD CONSTRAINT `carritodecompra_producto_ibfk_1` FOREIGN KEY (`idCarrito`) REFERENCES `carritodecompra` (`idCarrito`),
  ADD CONSTRAINT `carritodecompra_producto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD CONSTRAINT `comprador_ibfk_1` FOREIGN KEY (`idComprador`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `comunidad`
--
ALTER TABLE `comunidad`
  ADD CONSTRAINT `comunidad_ibfk_1` FOREIGN KEY (`idAdministrador`) REFERENCES `administrador` (`idAdministrador`);

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `paquete` (`idPaquete`);

--
-- Filtros para la tabla `historialcompras`
--
ALTER TABLE `historialcompras`
  ADD CONSTRAINT `historialcompras_ibfk_1` FOREIGN KEY (`idComprador`) REFERENCES `comprador` (`idComprador`);

--
-- Filtros para la tabla `historialcompras_carrito`
--
ALTER TABLE `historialcompras_carrito`
  ADD CONSTRAINT `historialcompras_carrito_ibfk_1` FOREIGN KEY (`idHistorial`) REFERENCES `historialcompras` (`idHistorialCompras`),
  ADD CONSTRAINT `historialcompras_carrito_ibfk_2` FOREIGN KEY (`idCarrito`) REFERENCES `carritodecompra` (`idCarrito`);

--
-- Filtros para la tabla `interaccioneschatbot`
--
ALTER TABLE `interaccioneschatbot`
  ADD CONSTRAINT `interaccioneschatbot_ibfk_1` FOREIGN KEY (`comprador`) REFERENCES `comprador` (`idComprador`);

--
-- Filtros para la tabla `listadedeseo`
--
ALTER TABLE `listadedeseo`
  ADD CONSTRAINT `listadedeseo_ibfk_1` FOREIGN KEY (`idComprador`) REFERENCES `comprador` (`idComprador`);

--
-- Filtros para la tabla `listadedeseo_producto`
--
ALTER TABLE `listadedeseo_producto`
  ADD CONSTRAINT `listadedeseo_producto_ibfk_1` FOREIGN KEY (`idLista`) REFERENCES `listadedeseo` (`idLista`),
  ADD CONSTRAINT `listadedeseo_producto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `personalentrega` (`idPersonalEntrega`);

--
-- Filtros para la tabla `personalentrega`
--
ALTER TABLE `personalentrega`
  ADD CONSTRAINT `personalentrega_ibfk_1` FOREIGN KEY (`idPersonalEntrega`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idArtesano`) REFERENCES `artesano` (`idArtesano`);

--
-- Filtros para la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD CONSTRAINT `reseña_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `reseña_ibfk_2` FOREIGN KEY (`idComprador`) REFERENCES `comprador` (`idComprador`);

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `transaccion_ibfk_1` FOREIGN KEY (`idComprador`) REFERENCES `comprador` (`idComprador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
