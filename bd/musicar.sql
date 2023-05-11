-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2023 a las 01:49:17
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musicar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Feliz', 2, 4, 'assets/images/artwork/feliz.jpg'),
(2, 'Triste', 5, 10, 'assets/images/artwork/triste.jpg'),
(3, 'Verano', 3, 1, 'assets/images/artwork/verano.jpg'),
(4, 'Perfección', 2, 9, 'assets/images/artwork/perfecto.jpg'),
(5, 'Chill', 1, 3, 'assets/images/artwork/chill.jpg'),
(6, 'Justicia', 3, 6, 'assets/images/artwork/justicia.jpg'),
(7, 'Criollas', 4, 7, 'assets/images/artwork/criollas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `name`) VALUES
(1, 'Robert Romero'),
(2, 'Midwar'),
(3, 'Ing Soft'),
(4, 'Carlos'),
(5, 'Milú');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'A los bosques', 1, 5, 8, '3:42', 'assets/music/A los bosques - Savia Andina(MP3_128K)_1.mp3', 1, 15),
(2, 'Alan Walker - Darkside', 1, 5, 1, '3:59', 'assets/music/Alan Walker - Darkside (feat. Au_Ra and Tomine Har(MP3_160K).mp3', 2, 7),
(3, 'Mi buen Amor', 1, 5, 2, '3:49', 'assets/music/mi-buen-amor-video-oficial-ft-enrique-bunbury.mp3', 3, 13),
(4, 'Alan Walker - Faded', 1, 5, 3, '3:32', 'assets/music/Alan Walker - Faded(MP3_160K).mp3', 4, 18),
(5, 'Alan Walker - The Spectre', 1, 5, 4, '3:26', 'assets/music/Alan Walker - The Spectre(MP3_128K).mp3', 5, 10),
(6, 'Alan Walker - Alone', 2, 1, 1, '4:05', 'assets/music/Alan Walker _ Ava Max - Alone_ Pt. II(MP3_160K).mp3', 1, 41),
(7, 'Amarrame', 2, 4, 2, '7:55', 'assets/music/amarrame-pa-donde-se-fue-en-vivo.mp3', 2, 19),
(8, 'Amor Amor Gaitan', 2, 1, 3, '4:29', 'assets/music/Amor Amor - Gaitan Castro(MP3_128K).mp3', 2, 29),
(9, 'Amor herido Gaitan', 2, 1, 4, '4:35', 'assets/music/Amor Herido Diosdado Gaitán Castro(MP3_320K).mp3', 3, 33),
(10, 'Checho en concierto', 2, 4, 5, '6:04', 'assets/music/Checho en concierto   Selección de huaynos ojos az(MP3_160K).mp3', 3, 20),
(11, 'Cholo Soy', 2, 1, 6, '3:12', 'assets/music/Cholo soy... y no me compadezcas - Luis Abanto Morales(MP3_320K).mp3', 4, 28),
(12, 'Chunkullay Gaitan', 2, 1, 7, '4:44', 'assets/music/Chunkullay - Diosdado Gaitán Castro _ Riber Oré(MP3_320K).mp3', 5, 25),
(13, 'Me cambiaste la vida', 3, 6, 8, '3:54', 'assets/music/Río Roma - Me Cambiaste la Vida (Videoclip)(MP3_320K).mp3', 5, 5),
(14, 'Sacarte a bailar', 3, 6, 9, '0:44', 'assets/music/David Rees - Sacarte a Bailar(MP3_128K).mp3', 4, 13),
(15, 'Adios pueblo de Ayacucho', 3, 6, 10, '3:56', 'assets/music/DIOSDADO GAYTAN CASTRO Y RIBER ORÉ   ADIOS PUEBLO DE AYACUCHO(MP3_128K).mp3', 3, 14),
(16, 'Flor de Retama', 3, 6, 1, '5:28', 'assets/music/Flor de retama - Chapeco _ Lluqi(MP3_128K).mp3', 2, 16),
(17, 'The reason', 3, 6, 2, '3:57', 'assets/music/Hoobastank - The reason (Jose Cañal) Cover en Espa(MP3_160K).mp3', 1, 19),
(18, 'Imagine', 4, 7, 1, '3:53', 'assets/music/IMAGINE. (Ultimate Mix_ 2020) - John Lennon _ The Plastic Ono Band (with the Flux Fiddlers) HD(MP3_320K).mp3', 5, 5),
(19, 'Fria - Kjarkas', 4, 7, 2, '3:48', 'assets/music/Kjarkas - Fria (Official Video)(MP3_128K)_1.mp3', 4, 9),
(20, 'Mi cariñito', 4, 7, 3, '2:28', 'assets/music/Los Kipus -  Mi Cariñito(MP3_320K).mp3', 3, 7),
(21, 'Mal paso', 4, 7, 2, '2:45', 'assets/music/Los Kipus - Mal Paso(MP3_320K).mp3', 2, 16),
(22, 'Yo perdi el corazon', 4, 7, 5, '2:57', 'assets/music/Los Kipus - Yo Perdi el Corazon(MP3_320K).mp3', 1, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(8, 16, 5, 0),
(9, 15, 3, 0),
(10, 14, 4, 0),
(11, 17, 3, 1),
(12, 16, 3, 2),
(13, 16, 5, 1),
(14, 14, 3, 3),
(15, 5, 5, 2),
(16, 23, 4, 1),
(18, 29, 3, 4),
(25, 31, 18, 0),
(26, 14, 20, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(26, 'adfasd', 'Carlos', '2023-05-10 00:00:00'),
(30, '12312', 'Carl05', '2023-05-10 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Carl05', 'Carlos', 'Arque', 'Ca@correo.com', 'c55d52d0b68a73e44dd7dc6bd0381b47', '2023-05-05 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'Prueba10', 'Numero', 'Diez', 'N10@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2023-05-07 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(9, 'Carlos', 'Midwar', 'Arque', 'Carlosmidwar6@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-05-10 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
