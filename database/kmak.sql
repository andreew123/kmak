-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2019. Már 24. 11:37
-- Kiszolgáló verziója: 5.7.21
-- PHP verzió: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kmak`
--
CREATE DATABASE IF NOT EXISTS `kmak` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kmak`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `galleries`
--

INSERT INTO `galleries` (`id`, `name`) VALUES
(1, 'Első galéria'),
(2, 'Második galéria');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
CREATE TABLE IF NOT EXISTS `gallery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `gallery_id`, `image_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `images`
--

INSERT INTO `images` (`id`, `name`, `path`) VALUES
(1, 'page1.jpg', 'files/images/page1.jpg'),
(2, 'page2.jpg', 'files/images/page2.jpg'),
(3, 'page3.jpg', 'files/images/page3.jpg'),
(4, 'page4.jpg', 'files/images/page4.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
