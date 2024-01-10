-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 jan. 2024 à 00:18
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `email`, `adminname`, `mypassword`, `created_at`) VALUES
(1, 'majidiahmed799@gmail.com', 'Ahmed Majidi', '$2y$10$9CCXQ6ubPrXYLNochIYt/OIrqf3JEa9vcsyihYouV3enZB5Xs/dD.', '2024-01-09 15:50:09'),
(2, 'Majidi10@outlook.fr', 'Achraf', '$2y$10$B2wQ50JqQI8G1O/jbtWJke7aLcTJnalE4lwWQ3LY0wOBCLr05KB22', '2024-01-09 17:28:45');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Sport', '2024-01-08 23:10:29'),
(2, 'Health', '2024-01-08 23:10:29'),
(3, 'Tech', '2024-01-08 23:10:29');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `category_id` varchar(3) NOT NULL,
  `img` varchar(200) NOT NULL,
  `user_id` varchar(3) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `body`, `category_id`, `img`, `user_id`, `user_name`, `created_at`) VALUES
(34, 'Sprinting Towards Victory', 'Breaking Records and Defying Limits', 'Usain Bolt, the fastest man alive, shattered another record yesterday in the 100m dash. Clocking in at an astonishing 9.58 seconds, Bolt continues to redefine human speed. The race, held in a packed stadium, showcased Bolt\'s unparalleled acceleration and dominance in the world of athletics.', '1', 'Usain-Bolt.jpg', '5', 'Ahmed Majidi', '2024-01-09 21:13:35');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`Id`, `email`, `username`, `mypassword`, `created_at`) VALUES
(1, 'Majidi10@outlook.fr', 'achraf', '$2y$10$7PgZgpWbUvRWnUq2HCavTOd0UdxQ1xPDgvLrljuSZKVZS2IJQFOky', '2023-12-19 21:16:29'),
(5, 'majidiahmed799@gmail.com', 'Ahmed Majidi', '$2y$10$9CCXQ6ubPrXYLNochIYt/OIrqf3JEa9vcsyihYouV3enZB5Xs/dD.', '2024-01-08 22:24:15'),
(8, 'abdessamad@lol.com', 'abdessamad', '$2y$10$7bPy/RE6q3DkrjjCGXoRR.6ZyNwrNVKXSqr4t8kYk3ieQkorMuIKO', '2024-01-09 23:15:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
