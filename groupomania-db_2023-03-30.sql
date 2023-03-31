-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-03-2023 a las 20:13:23
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `groupomania`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `postID` int NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `datePost` date NOT NULL,
  `title` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `body` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `image` text CHARACTER SET cp1250 COLLATE cp1250_general_ci,
  `multimedia` text,
  `topicID` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `comments` text CHARACTER SET cp1250 COLLATE cp1250_general_ci,
  `likes` text CHARACTER SET cp1250 COLLATE cp1250_general_ci,
  `favs` text CHARACTER SET cp1250 COLLATE cp1250_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`postID`, `userID`, `datePost`, `title`, `body`, `image`, `multimedia`, `topicID`, `comments`, `likes`, `favs`) VALUES
(1, '8', '2023-01-18', 'Someone let a cat in the office!', 'I found it eating Samuel´s sandwich... It won´t be me who tells him! poor thing was hungry, so I let it be. ', 'image_1678983427311.jpg', 'undefined', '1', NULL, NULL, NULL),
(58, '27', '2023-03-23', 'We have a new fridge at the office', 'I need someone to tell me why this has not been announced before! This is great, it is also very big, I can finally rest knowing my salad will not have to stay outside because Kevin brought his entire kitchen!', 'image_1679574884936.jpg', '', '6', NULL, NULL, NULL),
(59, '26', '2023-03-23', 'Pictures of last Christmas party', 'I know we are almost in Easter but we have been so busy I coul not find a moment to get the pictures! If you want them, please email Halle (hallewaters@groupomania.com).\r\n\r\nThis one is personally my favourite of them all.', 'image_1679575857855.jpg', '', '4', NULL, NULL, NULL),
(60, '28', '2023-03-23', 'Introduction to the Groupomania Interface', 'Hello everyone! I can see some of us already posting in the site, makes me happy to know the design is easy enough to understand how it works, even without explanation. Makes me wonder if I shoul even explain anything! From now on, I will slowly start explaining how this place works so everyone can get comfortable and start posting their thoughts in here. \r\n\r\nFirst lesson is opening a post! I am pretty sure if you can read this, you probably already know that one haha.\r\nSimply press on the post that you want to read, the little icon that shows unread or read is an indicative of a visit inside the post!\r\n\r\nIf anyone has an issue please contact me at hallewaters@groupomania.com, thank you!', 'image_1679576201934.png', '', '3', NULL, NULL, NULL),
(61, '26', '2023-03-23', 'New York has a new office!', 'Look at our friends over at New York with their fancy office! We are trying to improve our people´s quality of life, starting from our installments. Do you like it? I hope we can implement comments in here in the future!', 'image_1679576357705.jpg', '', '4', NULL, NULL, NULL),
(62, '29', '2023-03-23', 'We went for a hike last weekend', 'Look at my gorgeous boy, I toom some pictures of him without giving much thought, and he turned out gorgeous! I should contact a modelling agency haha.', 'image_1679576526584.jpg', '', '5', NULL, NULL, NULL),
(63, '28', '2023-03-23', 'Health and wellbeing at the office', 'We have teamed up with Litmo´s Heroes to try and improve everyone´s health and wellbeing. Contact me if you are interested in these courses!', '', 'https://www.youtube.com/watch?v=S7lq8N122Hg&ab_channel=LitmosHeroes', '7', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

CREATE TABLE `topics` (
  `topicID` int NOT NULL,
  `topicName` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `amount_followers` int NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

--
-- Volcado de datos para la tabla `topics`
--

INSERT INTO `topics` (`topicID`, `topicName`, `amount_followers`, `added_date`) VALUES
(1, 'Chaos at the office', 0, '2023-01-19'),
(2, 'What is there for lunch?', 0, '2023-03-23'),
(3, 'Introduction to the Social Interface', 0, '2023-01-19'),
(4, 'Important announcements', 0, '2023-03-23'),
(5, 'Our lovely pets', 0, '2023-03-23'),
(6, 'LOL!', 0, '2023-03-23'),
(7, 'Might be interesting', 0, '2023-03-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `userID` int NOT NULL,
  `firstName` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `lastName` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `jobPosition` text CHARACTER SET cp1250 COLLATE cp1250_general_ci,
  `profilePicture` text CHARACTER SET cp1250 COLLATE cp1250_general_ci,
  `email` varchar(50) CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `password` text CHARACTER SET cp1250 COLLATE cp1250_general_ci NOT NULL,
  `is_logged` tinyint(1) DEFAULT NULL,
  `sign_up_date` date DEFAULT NULL,
  `log_in_date` date DEFAULT NULL,
  `read_status` varchar(100) CHARACTER SET cp1250 COLLATE cp1250_general_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`userID`, `firstName`, `lastName`, `jobPosition`, `profilePicture`, `email`, `password`, `is_logged`, `sign_up_date`, `log_in_date`, `read_status`) VALUES
(8, 'Inés ', 'Fernández', 'Lead Designer', 'profilePicture_1679573943756.jpg', 'ifdzbenet@gmail.com', '$2b$10$b55q..9/RklL/voG00Eg7ubgJv1VPh1d1AmLRSS.Tpp7dmu9Jisd6', NULL, '2023-01-16', '2023-03-30', '0,1,63,64,61,62,58'),
(26, 'Lucas', 'Ripoll', 'CEO', 'profilePicture_1679574445092.jpg', 'lucasripoll@groupomania.com', '$2b$10$Jsn.i9GiPdHCAEmWjZhgR.1uwxk6KNHkdxWvRHnaW6DFMJKUDSdy2', NULL, '2023-03-23', '2023-03-30', '0,59,61'),
(27, 'Kaya', 'Valencia', 'Beta tester', 'profilePicture_1679574669595.jpg', 'kayavalencia@groupomania.com', '$2b$10$avyJGs6x3VJedJpT5eLUVOfHDtIakc9DD0RFm4nBCa3Rta3wUaqAq', NULL, '2023-03-23', '2023-03-30', '0'),
(28, 'Halle', 'Waters', 'Human Resources Head', 'profilePicture_1679575967412.jpg', 'hallewaters@groupomania.com', '$2b$10$5WQSRHt4slo..9co9peIZ..OyoWd3kmxeSHnfioe.fU6mqiAPPh7W', NULL, '2023-03-23', '2023-03-30', '0,60,63'),
(29, 'Zain', 'Hendricks', 'Developer', 'profilePicture_1679576473401.jpg', 'zainhendricks@groupomania.com', '$2b$10$0cPfK/Hgl.DWtDF1TrmamuFcg3DZQMTZZgqUG8sYI3LKlX5ojk/YW', NULL, '2023-03-23', '2023-03-30', '0,62');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`);

--
-- Indices de la tabla `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topicID`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `postID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `topics`
--
ALTER TABLE `topics`
  MODIFY `topicID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
