-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2025 a las 07:21:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supermercadodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `id_categoria`, `image`) VALUES
(1, 'Xiaomi Poco X6 Pro', 'El Xiaomi Poco X6 Pro es un potente smartphone con conectividad 5G, diseñado para el máximo rendimiento. Cuenta con una pantalla AMOLED de 6.67 pulgadas con tasa de refresco de 120Hz, procesador MediaTek Dimensity 8300-Ultra, 12GB de RAM y 512GB de almacenamiento interno. Su batería de 5000mAh soporta carga rápida de 67W. Dispone de un sistema de cámaras de 64MP con estabilización óptica, ultra gran angular y macro. Es ideal para gaming y productividad.', 1249.90, NULL, ''),
(2, 'iPhone 14 Pro', 'El iPhone 14 Pro es el modelo premium de Apple, con un diseño elegante y tecnología de vanguardia. Incorpora una pantalla Super Retina XDR de 6.1 pulgadas con Dynamic Island y tecnología ProMotion de 120Hz. Está equipado con el potente chip A16 Bionic y un sistema de cámaras de 48MP con grabación en ProRAW. Incluye el modo Cine, conectividad 5G, resistencia al agua IP68 y Face ID mejorado. Disponible en colores exclusivos y con iOS optimizado.', 999.99, NULL, ''),
(3, 'Samsung Galaxy S23 Ultra', 'El Samsung Galaxy S23 Ultra es el smartphone insignia de Samsung, ofreciendo una pantalla Dynamic AMOLED 2X de 6.8 pulgadas con resolución QHD+ y tasa de refresco adaptativa de 1-120Hz. Está impulsado por el procesador Snapdragon 8 Gen 2 optimizado para Galaxy, acompañado de hasta 12GB de RAM y opciones de almacenamiento de hasta 1TB. Su sistema de cámaras incluye un sensor principal de 200MP con zoom óptico de 10X, un ultra gran angular y un teleobjetivo periscópico. Además, cuenta con S-Pen integrado, batería de 5000mAh con carga rápida de 45W y compatibilidad con WiFi 6E.', 1199.99, NULL, ''),
(4, 'Google Pixel 7 Pro', 'El Google Pixel 7 Pro es un smartphone con Android puro y fotografía computacional avanzada. Tiene una pantalla LTPO AMOLED de 6.7 pulgadas con tasa de refresco de 120Hz. Está equipado con el procesador Google Tensor G2, 12GB de RAM y hasta 512GB de almacenamiento. Su sistema de cámaras incluye un sensor principal de 50MP, un teleobjetivo periscópico de 48MP con zoom óptico 5X y un ultra gran angular de 12MP. Dispone de Android 13 con actualizaciones directas de Google.', 899.99, NULL, ''),
(5, 'OnePlus 11', 'El OnePlus 11 ofrece un diseño elegante y especificaciones de alta gama. Cuenta con una pantalla AMOLED de 6.7 pulgadas con resolución QHD+ y tasa de refresco de 120Hz. Utiliza el procesador Snapdragon 8 Gen 2, 16GB de RAM y hasta 512GB de almacenamiento. Su sistema de cámaras Hasselblad de 50MP con sensor IMX890 proporciona fotos detalladas y realistas. Tiene carga rápida de 100W, batería de 5000mAh y OxygenOS basado en Android 13.', 799.99, NULL, ''),
(6, 'Motorola Edge 30 Ultra', 'El Motorola Edge 30 Ultra es un smartphone premium con cámara de 200MP, una pantalla OLED de 6.67 pulgadas con 144Hz y un potente procesador Snapdragon 8+ Gen 1. Su batería de 4610mAh soporta carga rápida de 125W y carga inalámbrica de 50W. Incluye conectividad 5G y Android 12 con soporte para futuras actualizaciones.', 849.99, NULL, ''),
(7, 'Sony Xperia 1 IV', 'El Sony Xperia 1 IV es un smartphone enfocado en la multimedia con una pantalla OLED 4K de 6.5 pulgadas y tasa de refresco de 120Hz. Su sistema de cámaras cuenta con óptica Zeiss y grabación en 4K HDR. Usa el procesador Snapdragon 8 Gen 1, 12GB de RAM y 512GB de almacenamiento. Ideal para creadores de contenido y amantes del cine.', 1299.99, NULL, ''),
(8, 'Asus ROG Phone 7', 'El Asus ROG Phone 7 es un smartphone gamer con una pantalla AMOLED de 6.78 pulgadas a 165Hz, Snapdragon 8 Gen 2 y hasta 16GB de RAM. Dispone de refrigeración avanzada, botones ultrasónicos para juegos y una batería de 6000mAh con carga de 65W.', 999.99, NULL, ''),
(9, 'Realme GT3', 'El Realme GT3 es un teléfono potente con carga rápida de 240W, pantalla AMOLED de 6.74 pulgadas y 144Hz, Snapdragon 8+ Gen 1 y 16GB de RAM. Su cámara principal es de 50MP con OIS.', 699.99, NULL, ''),
(10, 'Nothing Phone (2)', 'El Nothing Phone (2) presenta un diseño transparente único con luces Glyph, pantalla OLED de 6.7 pulgadas a 120Hz, Snapdragon 8+ Gen 1 y Android 13 puro con soporte prolongado de actualizaciones.', 599.99, NULL, ''),
(11, 'Producto1', 'Descripción del producto', 100.00, NULL, 0x6dab1eeb8b2dae29e0),
(12, 'adada', 'dadadad', 10000.00, NULL, 0x6dab1eeb8b2dae29e0),
(13, 'iphone ', 'nose', 322.00, NULL, 0x6dab1eeb8b2dae29e0),
(14, 'dfgfd', 'hgfhf', 2525.00, NULL, 0x6dab1eeb8b2dae29e0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
