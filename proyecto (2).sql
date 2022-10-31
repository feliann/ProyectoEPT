-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-10-2022 a las 12:15:44
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquilar`
--

CREATE TABLE `alquilar` (
  `Nombre` varchar(32) NOT NULL,
  `Apellido` varchar(32) NOT NULL,
  `Telefono` int(16) NOT NULL,
  `Patente` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alquilar`
--

INSERT INTO `alquilar` (`Nombre`, `Apellido`, `Telefono`, `Patente`) VALUES
('', '', 0, ''),
('Francisco', 'Sifon', 154378923, 'AA764KL'),
('Luciano', 'Jacofsky', 1535060206, 'AA943SM'),
('Felipe', 'Anapolsky', 12346, 'aassaa'),
('Felipe', 'Anapolsky', 1169617758, 'PJM487');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `Nombre` varchar(32) NOT NULL,
  `Apellido` varchar(32) NOT NULL,
  `Correo` varchar(64) NOT NULL,
  `Contrasena` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`Nombre`, `Apellido`, `Correo`, `Contrasena`) VALUES
('', '', '', ''),
('Francisco', 'Sifon', 'fransifon@icloud.com', 'saifon'),
('Galo', 'Resnik', 'galoresnik@gmail.com', 'galito'),
('Julian', 'Alvarez', 'juli912alvarez@gmail.com', 'comoteduelelacol'),
('Luciano', 'Jacofsky', 'lucianojacofsky@gmail.com', '1234'),
('Nacho', 'Vigilante', 'nachovigilante@gmail.com', 'nacho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentar`
--

CREATE TABLE `rentar` (
  `Nombre` varchar(32) NOT NULL,
  `Apellido` varchar(32) NOT NULL,
  `Telefono` int(16) NOT NULL,
  `Direccion` varchar(64) NOT NULL,
  `Alquilar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rentar`
--

INSERT INTO `rentar` (`Nombre`, `Apellido`, `Telefono`, `Direccion`, `Alquilar`) VALUES
('', '', 0, '', 0),
('Alto', 'Turro', 123, '123 a', 0),
('Felipe', 'Anapolsky', 1169617758, 'guayra 2171', 0),
('Luciano', 'Jacofsky', 1535060206, 'amenabar 2224', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquilar`
--
ALTER TABLE `alquilar`
  ADD PRIMARY KEY (`Patente`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`Correo`);

--
-- Indices de la tabla `rentar`
--
ALTER TABLE `rentar`
  ADD PRIMARY KEY (`Telefono`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
