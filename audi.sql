-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-11-2020 a las 06:20:20
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `audi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

DROP TABLE IF EXISTS `autos`;
CREATE TABLE IF NOT EXISTS `autos` (
  `id_autos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `modelo` varchar(35) NOT NULL,
  `foto` varchar(77) NOT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `anio` year(4) NOT NULL,
  `puertas` tinyint(1) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_autos`),
  UNIQUE KEY `id_autos_UNIQUE` (`id_autos`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id_autos`, `modelo`, `foto`, `descripcion`, `anio`, `puertas`, `tipo`) VALUES
(1, 'A3 Sedan', 'img/tipos-audi-imagenes/a3-Sedan.jpg', 'El Audi A3 Sedán combina el carácter coupé con un diseño elegante. La cúpula del techo, baja y fluida, transmite una dinámica pura. Con sus superficies musculosas y tensas, este sedán también irradia confianza en sí mismo. Los guardabarros con arcos de rueda pronunciados enmarcan las llantas y aseguran una apariencia deportiva. La tecnología innovadora del Audi A3 Sedan también contribuye a una experiencia de conducción cómoda.', 2020, 5, 'sedan'),
(2, 'A4 Sedan', 'img/tipos-audi-imagenes/A4.jpg', 'Potente, dinámico y más atractivo que nunca. El nuevo Audi A4 sorprende por su nuevo lenguaje de diseño, ampliamente renovado por dentro y por fuera. Con tecnologías innovadoras, nuevas opciones de infotainment y sistemas de asistencia al conductor que lo hacen más seguro que nunca. Y gracias a su motor Mild Hybrid de alto rendimiento, el nuevo Audi A4 se convierte en la unión perfecta de funcionalidad, elegancia y deportividad.', 2020, 5, 'sedan'),
(3, 'A6 Sedan', 'img/tipos-audi-imagenes/a6-sedan.jpg', 'Cuando el diseño cumple con la eficiencia y la deportividad se combina con el estilo. Cuando la innovación y la precisión van de la mano, la elegancia progresiva se hace palpable en cada línea. Cuando la forma y la función se convierten en una declaración y el progreso está por encima de todo lo demás. Ahí es cuando la clase ejecutiva tiene un nuevo indicador de ritmo: el Audi A6 Sedán. Más atlético que nunca. Tan supremo como siempre.', 2020, 5, 'sedan'),
(4, 'Audi A8', 'img/tipos-audi-imagenes/a8.jpg', 'Liderar el camino es nuestra promesa. Nunca antes hemos sido tan completos y tan amplios como con el nuevo Audi A8. Ha iniciado un nuevo lenguaje de diseño, un nuevo concepto operativo, un nuevo nivel de calidad. El nuevo A8 representa el futuro de la clase de lujo.', 2020, 5, 'sedan'),
(5, 'Audi A5 Sportback', 'img/tipos-audi-imagenes/audi-a5-sportback.jpg', 'El Audi A5 Sportback combina el diseño de un Coupé y la funcionalidad de un Avant. La poderosa silueta con la característica forma ondulada en la línea de cintura lo convierten en un verdadero atleta. Bajo el rediseñado capó, el modelo de cinco puertas destaca por su chasis de nuevo desarrollo, su eficiente conducción, su innovador infotainment y conectividad.', 2020, 5, 'coupe'),
(6, 'R8 coupe', 'img/tipos-audi-imagenes/r8.jpg', 'El Audi R8 es un deportivo de motor central trasero y tracción total. Aunque llegó al mercado en 2006, sigue sorprendiendo por su estética agresiva y su afinado comportamiento. Su objetivo principal es plantar cara a modelos tan reputados como el Porsche 911.\r\n', 2019, 5, 'coupe'),
(7, 'Audi TT coupe', 'img/tipos-audi-imagenes/audi-tt-coupe.jpg', 'El Audi TT se caracteriza por ser un deportivo accesible y apto para el día a día, pero de altas prestaciones en sus versiones más radicales, estando disponible en carrocería coupé 2+2 y descapotable biplaza. Se fabrica en la planta de Audi en Gyor (Hungría).', 2019, 5, 'coupe'),
(8, 'Audi TT RS coupe', 'img/tipos-audi-imagenes/audi-tt-rs-coupe.jpg', 'Los Audi TT RS Coupé y TT RS Roadster son las versiones más potentes y deportivas de la gama TT. Presentados en el Salón de Pekín, cuentan con un kit carrocería bastante agresivo y con una evolución del genial 5 cilindros de 2.5 litros sobrealimentado por turbo con el que generan 400 caballos de potencia.', 2020, 5, 'coupe'),
(9, 'Audi Q2', 'img/tipos-audi-imagenes/audi-q2.jpg', 'Ya sea para aventuras fuera de los caminos conocidos o para la vida cotidiana en la gran ciudad, el Audi Q2 es realmente versátil. Con un estilo juvenil y una comodidad interior sobresaliente, combina un diseño progresivo, un gran placer de conducción y una alta funcionalidad.', 2020, 5, 'suv'),
(10, 'Audi Q3 Sportback', 'img/tipos-audi-imagenes/audi-q3-sportback.jpg', 'Llamativo y funcional: el Audi Q3 Sportback combina la estética y la emocionalidad de un coupé con la potencia y la practicidad de un SUV. La gran oferta de infoentretenimiento y conectividad, así como el amplio equipamiento estándar, garantizan un gran placer de conducción.\r\n\r\n', 2019, 5, 'suv'),
(11, 'Audi Q5', 'img/tipos-audi-imagenes/q5.jpg', 'No dejamos nada al azar. Tanto si se trata de comodidad, estilo y dinámica: Audi Q5 convence desde el primer instante. Tan expresivo es su diseño, tan potente su tracción, tan pionera su tecnología. Un nuevo mundo de oportunidades. Todos los días de nuevo - con el Audi Q5.', 2020, 5, 'suv'),
(12, 'El Audi Q7', 'img/tipos-audi-imagenes/q7.jpg', 'La última tecnología en sistemas de infoentretenimiento y asistencia al conductor, una experiencia de conducción convincente gracias a la tracción integral quattro y soluciones de suspensión inteligentes, un diseño potente y mucho espacio para hasta siete pasajeros: este es el Audi Q7.', 2020, 5, 'suv'),
(13, 'Audi R8 Spyder', 'img/tipos-audi-imagenes/audi-r8-spyder.jpg', 'Se encuentra disponible con el 5.2 V10 FSI de 570 CV, con opción a una versión Performance de 620 CV. Aunque es 208 kilos más pesado que el coupé, hace el 0 a 100 km/h en sólo 3,2 segundos en su versión más potente y supera los 320 km/h con holgura.', 2020, 3, 'spyder'),
(14, 'r8 spyder v10 rwd', 'img/tipos-audi-imagenes/r8-spyder-v10.jpg', 'Es uno de los superdeportivos más deseados del planeta. Ya sea desde series especiales hasta gama estándar, el Audi R8 V10 RWS Spyder con tracción trasera está avanzando para ser un modelo icónico. Así, su exterior se ha rediseñado y se develó en estos últimos días. El objetivo fue hacerlo aún más llamativo y equiparlo con las mismas características nuevas que los modelos quattro R8 V10. ', 2020, 3, 'spyder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambios`
--

DROP TABLE IF EXISTS `cambios`;
CREATE TABLE IF NOT EXISTS `cambios` (
  `id_cambios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cambios` varchar(25) NOT NULL,
  PRIMARY KEY (`id_cambios`),
  UNIQUE KEY `id_cambios_UNIQUE` (`id_cambios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cambios`
--

INSERT INTO `cambios` (`id_cambios`, `cambios`) VALUES
(1, 'manual'),
(2, 'automatico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambios_has_autos`
--

DROP TABLE IF EXISTS `cambios_has_autos`;
CREATE TABLE IF NOT EXISTS `cambios_has_autos` (
  `cambios_id_cambios` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`cambios_id_cambios`,`autos_id_autos`),
  KEY `fk_cambios_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_cambios_has_autos_cambios1_idx` (`cambios_id_cambios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

DROP TABLE IF EXISTS `colores`;
CREATE TABLE IF NOT EXISTS `colores` (
  `id_color` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `color` varchar(25) NOT NULL,
  PRIMARY KEY (`id_color`),
  UNIQUE KEY `id_color_UNIQUE` (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id_color`, `color`) VALUES
(1, 'rojo'),
(2, 'negro'),
(3, 'amarillo'),
(4, 'blanco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores_has_autos`
--

DROP TABLE IF EXISTS `colores_has_autos`;
CREATE TABLE IF NOT EXISTS `colores_has_autos` (
  `colores_id_color` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`colores_id_color`,`autos_id_autos`),
  KEY `fk_colores_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_colores_has_autos_colores1_idx` (`colores_id_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comentario` mediumtext NOT NULL,
  `fecha_comentario` datetime DEFAULT NULL,
  `usuarios_id_usuarios` int(10) UNSIGNED NOT NULL,
  `noticias_id_noticias` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_comentarios`),
  UNIQUE KEY `fecha_comentario_UNIQUE` (`fecha_comentario`),
  UNIQUE KEY `comentario_UNIQUE` (`comentario`) USING HASH,
  KEY `fk_comentarios_usuarios_idx` (`usuarios_id_usuarios`),
  KEY `fk_comentarios_noticias1_idx` (`noticias_id_noticias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `id_direccion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `direccion` varchar(27) NOT NULL,
  PRIMARY KEY (`id_direccion`),
  UNIQUE KEY `id_direccion_UNIQUE` (`id_direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_has_autos`
--

DROP TABLE IF EXISTS `direccion_has_autos`;
CREATE TABLE IF NOT EXISTS `direccion_has_autos` (
  `direccion_id_direccion` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`direccion_id_direccion`,`autos_id_autos`),
  KEY `fk_direccion_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_direccion_has_autos_direccion1_idx` (`direccion_id_direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frenos`
--

DROP TABLE IF EXISTS `frenos`;
CREATE TABLE IF NOT EXISTS `frenos` (
  `id_frenos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `frenos` varchar(45) NOT NULL,
  PRIMARY KEY (`id_frenos`),
  UNIQUE KEY `id_frenos_UNIQUE` (`id_frenos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `frenos`
--

INSERT INTO `frenos` (`id_frenos`, `frenos`) VALUES
(1, 'ABS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frenos_has_autos`
--

DROP TABLE IF EXISTS `frenos_has_autos`;
CREATE TABLE IF NOT EXISTS `frenos_has_autos` (
  `frenos_id_frenos` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`frenos_id_frenos`,`autos_id_autos`),
  KEY `fk_frenos_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_frenos_has_autos_frenos1_idx` (`frenos_id_frenos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `id_marca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `marca` varchar(27) NOT NULL,
  PRIMARY KEY (`id_marca`),
  UNIQUE KEY `id_marca_UNIQUE` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `marca`) VALUES
(1, 'audi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_has_autos`
--

DROP TABLE IF EXISTS `marca_has_autos`;
CREATE TABLE IF NOT EXISTS `marca_has_autos` (
  `marca_id_marca` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`marca_id_marca`,`autos_id_autos`),
  KEY `fk_marca_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_marca_has_autos_marca1_idx` (`marca_id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motor`
--

DROP TABLE IF EXISTS `motor`;
CREATE TABLE IF NOT EXISTS `motor` (
  `id_motor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `motor` varchar(33) NOT NULL,
  PRIMARY KEY (`id_motor`),
  UNIQUE KEY `id_motor_UNIQUE` (`id_motor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motor_has_autos`
--

DROP TABLE IF EXISTS `motor_has_autos`;
CREATE TABLE IF NOT EXISTS `motor_has_autos` (
  `motor_id_motor` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`motor_id_motor`,`autos_id_autos`),
  KEY `fk_motor_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_motor_has_autos_motor1_idx` (`motor_id_motor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

DROP TABLE IF EXISTS `noticias`;
CREATE TABLE IF NOT EXISTS `noticias` (
  `id_noticias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `imagen` varchar(77) DEFAULT NULL,
  `descripcion` mediumtext NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  PRIMARY KEY (`id_noticias`),
  UNIQUE KEY `id_noticias_UNIQUE` (`id_noticias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad`
--

DROP TABLE IF EXISTS `seguridad`;
CREATE TABLE IF NOT EXISTS `seguridad` (
  `id_seguridad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seguridad` varchar(77) NOT NULL,
  PRIMARY KEY (`id_seguridad`),
  UNIQUE KEY `id_seguridad_UNIQUE` (`id_seguridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_has_autos`
--

DROP TABLE IF EXISTS `seguridad_has_autos`;
CREATE TABLE IF NOT EXISTS `seguridad_has_autos` (
  `seguridad_id_seguridad` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`seguridad_id_seguridad`,`autos_id_autos`),
  KEY `fk_seguridad_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_seguridad_has_autos_seguridad1_idx` (`seguridad_id_seguridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapizado`
--

DROP TABLE IF EXISTS `tapizado`;
CREATE TABLE IF NOT EXISTS `tapizado` (
  `id_tapizado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tapizado` varchar(25) NOT NULL,
  PRIMARY KEY (`id_tapizado`),
  UNIQUE KEY `id_tapizado_UNIQUE` (`id_tapizado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tapizado`
--

INSERT INTO `tapizado` (`id_tapizado`, `tapizado`) VALUES
(1, 'cuero'),
(2, 'tela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapizado_has_autos`
--

DROP TABLE IF EXISTS `tapizado_has_autos`;
CREATE TABLE IF NOT EXISTS `tapizado_has_autos` (
  `tapizado_id_tapizado` int(10) UNSIGNED NOT NULL,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`tapizado_id_tapizado`,`autos_id_autos`),
  KEY `fk_tapizado_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_tapizado_has_autos_tapizado1_idx` (`tapizado_id_tapizado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

DROP TABLE IF EXISTS `tipos`;
CREATE TABLE IF NOT EXISTS `tipos` (
  `id_tipos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` varchar(25) NOT NULL,
  `fototipoauto` varchar(50) NOT NULL,
  `fototipogrande` varchar(55) NOT NULL,
  PRIMARY KEY (`id_tipos`),
  UNIQUE KEY `id_tipos_UNIQUE` (`id_tipos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipos`, `tipo`, `fototipoauto`, `fototipogrande`) VALUES
(1, 'sedan', 'img/tipos-audi-imagenes/a4.jpg', ''),
(2, 'coupe', 'img/tipos-audi-imagenes/tt-rs.jpg', ''),
(3, 'suv', 'img/tipos-audi-imagenes/q2.jpg', ''),
(4, 'spyder', 'img/tipos-audi-imagenes/r8-spyder.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_has_autos`
--

DROP TABLE IF EXISTS `tipos_has_autos`;
CREATE TABLE IF NOT EXISTS `tipos_has_autos` (
  `tipos_id_tipos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autos_id_autos` int(10) UNSIGNED NOT NULL,
  `fototipoauto` varchar(35) NOT NULL,
  PRIMARY KEY (`tipos_id_tipos`,`autos_id_autos`),
  KEY `fk_tipos_has_autos_autos1_idx` (`autos_id_autos`),
  KEY `fk_tipos_has_autos_tipos1_idx` (`tipos_id_tipos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos_has_autos`
--

INSERT INTO `tipos_has_autos` (`tipos_id_tipos`, `autos_id_autos`, `fototipoauto`) VALUES
(1, 1, ''),
(1, 2, ''),
(1, 3, ''),
(1, 4, ''),
(2, 5, ''),
(2, 6, ''),
(2, 7, ''),
(2, 8, ''),
(3, 9, ''),
(3, 10, ''),
(3, 11, ''),
(3, 12, ''),
(4, 13, ''),
(4, 14, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nickname` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `avatar` varchar(77) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`),
  UNIQUE KEY `id_usuarios_UNIQUE` (`id_usuarios`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cambios_has_autos`
--
ALTER TABLE `cambios_has_autos`
  ADD CONSTRAINT `fk_cambios_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cambios_has_autos_cambios1` FOREIGN KEY (`cambios_id_cambios`) REFERENCES `cambios` (`id_cambios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `colores_has_autos`
--
ALTER TABLE `colores_has_autos`
  ADD CONSTRAINT `fk_colores_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_colores_has_autos_colores1` FOREIGN KEY (`colores_id_color`) REFERENCES `colores` (`id_color`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_noticias1` FOREIGN KEY (`noticias_id_noticias`) REFERENCES `noticias` (`id_noticias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarios_usuarios` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `direccion_has_autos`
--
ALTER TABLE `direccion_has_autos`
  ADD CONSTRAINT `fk_direccion_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_direccion_has_autos_direccion1` FOREIGN KEY (`direccion_id_direccion`) REFERENCES `direccion` (`id_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `frenos_has_autos`
--
ALTER TABLE `frenos_has_autos`
  ADD CONSTRAINT `fk_frenos_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_frenos_has_autos_frenos1` FOREIGN KEY (`frenos_id_frenos`) REFERENCES `frenos` (`id_frenos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `marca_has_autos`
--
ALTER TABLE `marca_has_autos`
  ADD CONSTRAINT `fk_marca_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_marca_has_autos_marca1` FOREIGN KEY (`marca_id_marca`) REFERENCES `marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `motor_has_autos`
--
ALTER TABLE `motor_has_autos`
  ADD CONSTRAINT `fk_motor_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_motor_has_autos_motor1` FOREIGN KEY (`motor_id_motor`) REFERENCES `motor` (`id_motor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `seguridad_has_autos`
--
ALTER TABLE `seguridad_has_autos`
  ADD CONSTRAINT `fk_seguridad_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_seguridad_has_autos_seguridad1` FOREIGN KEY (`seguridad_id_seguridad`) REFERENCES `seguridad` (`id_seguridad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tapizado_has_autos`
--
ALTER TABLE `tapizado_has_autos`
  ADD CONSTRAINT `fk_tapizado_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tapizado_has_autos_tapizado1` FOREIGN KEY (`tapizado_id_tapizado`) REFERENCES `tapizado` (`id_tapizado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipos_has_autos`
--
ALTER TABLE `tipos_has_autos`
  ADD CONSTRAINT `fk_tipos_has_autos_autos1` FOREIGN KEY (`autos_id_autos`) REFERENCES `autos` (`id_autos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipos_has_autos_tipos1` FOREIGN KEY (`tipos_id_tipos`) REFERENCES `tipos` (`id_tipos`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
