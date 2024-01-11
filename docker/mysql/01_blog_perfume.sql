-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql:3306
-- Généré le : ven. 05 jan. 2024 à 05:43
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_perfume`
--
CREATE DATABASE IF NOT EXISTS `blog_perfume` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `blog_perfume`;

-- --------------------------------------------------------

--
-- Structure de la table `Posts`
--

CREATE TABLE `Posts` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `content`, `date_publication`) VALUES
(1, 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere laborum maxime natus rem voluptatum. Fugiat numquam quaerat repellendus saepe tempore. Ad adipisci alias consequuntur dicta, dignissimos dolores hic incidunt iusto, magnam nemo perferendis possimus praesentium quo quod rerum sapiente sequi sint? Ducimus eius ex fugit laudantium maxime nisi non odio. A aliquam commodi eveniet itaque iusto, nam quas sit soluta? Aliquam distinctio et itaque minus molestiae molestias natus nemo nesciunt repellendus reprehenderit. Aliquid asperiores aspernatur consectetur consequatur corporis ducimus est, inventore ipsum itaque iusto natus neque nisi odio placeat praesentium, quia sit suscipit temporibus. Ad alias animi, architecto beatae corporis debitis facilis fugit ipsa ipsum molestiae nam, non officia quas quis repellat, voluptates voluptatum! Aliquid amet asperiores magnam vitae. Eos libero minus nesciunt officiis quibusdam, sint tempore. A ab asperiores consectetur ex, illo iure magni maiores mollitia non repellat repellendus, repudiandae rerum sequi. Accusamus aliquam assumenda commodi consectetur culpa dicta dolorem ea labore officiis recusandae reiciendis repellendus, sed, tenetur unde voluptate? Cumque eum facilis harum incidunt obcaecati, quaerat qui quisquam recusandae saepe suscipit ullam ut veritatis voluptates? Atque blanditiis excepturi non recusandae. Aliquam, facere incidunt magnam minus praesentium sequi voluptatibus. Ab assumenda consequatur culpa cumque deserunt dicta distinctio dolores et illo in inventore ipsam ipsum iste iusto labore laborum magni maxime minima nam nemo nisi nulla odio placeat, praesentium provident quam ratione rem repellat reprehenderit saepe sed sunt tempora tenetur totam ullam velit voluptatem? Dicta dolor error fugit iusto labore natus necessitatibus non, optio, quibusdam rerum soluta veniam voluptate! Aspernatur culpa cum dicta! Corporis dignissimos doloribus, ducimus nulla optio quam quibusdam repellat vero. Ab accusamus aperiam corporis culpa cupiditate deserunt dolores ea eius enim ex facilis impedit incidunt ipsum labore libero mollitia nesciunt, officiis placeat possimus quaerat quam quod sed ut veniam vero? Ipsam, modi, sed. Amet deleniti nisi perferendis.', '2024-01-05 05:33:48'),
(2, 'Article 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere laborum maxime natus rem voluptatum. Fugiat numquam quaerat repellendus saepe tempore. Ad adipisci alias consequuntur dicta, dignissimos dolores hic incidunt iusto, magnam nemo perferendis possimus praesentium quo quod rerum sapiente sequi sint? Ducimus eius ex fugit laudantium maxime nisi non odio. A aliquam commodi eveniet itaque iusto, nam quas sit soluta? Aliquam distinctio et itaque minus molestiae molestias natus nemo nesciunt repellendus reprehenderit. Aliquid asperiores aspernatur consectetur consequatur corporis ducimus est, inventore ipsum itaque iusto natus neque nisi odio placeat praesentium, quia sit suscipit temporibus. Ad alias animi, architecto beatae corporis debitis facilis fugit ipsa ipsum molestiae nam, non officia quas quis repellat, voluptates voluptatum! Aliquid amet asperiores magnam vitae. Eos libero minus nesciunt officiis quibusdam, sint tempore. A ab asperiores consectetur ex, illo iure magni maiores mollitia non repellat repellendus, repudiandae rerum sequi. Accusamus aliquam assumenda commodi consectetur culpa dicta dolorem ea labore officiis recusandae reiciendis repellendus, sed, tenetur unde voluptate? Cumque eum facilis harum incidunt obcaecati, quaerat qui quisquam recusandae saepe suscipit ullam ut veritatis voluptates? Atque blanditiis excepturi non recusandae. Aliquam, facere incidunt magnam minus praesentium sequi voluptatibus. Ab assumenda consequatur culpa cumque deserunt dicta distinctio dolores et illo in inventore ipsam ipsum iste iusto labore laborum magni maxime minima nam nemo nisi nulla odio placeat, praesentium provident quam ratione rem repellat reprehenderit saepe sed sunt tempora tenetur totam ullam velit voluptatem? Dicta dolor error fugit iusto labore natus necessitatibus non, optio, quibusdam rerum soluta veniam voluptate! Aspernatur culpa cum dicta! Corporis dignissimos doloribus, ducimus nulla optio quam quibusdam repellat vero. Ab accusamus aperiam corporis culpa cupiditate deserunt dolores ea eius enim ex facilis impedit incidunt ipsum labore libero mollitia nesciunt, officiis placeat possimus quaerat quam quod sed ut veniam vero? Ipsam, modi, sed. Amet deleniti nisi perferendis.', '2024-01-05 05:33:48');

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `isAdmin` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`id`, `username`, `email`, `password`, `isAdmin`) VALUES
(1, 'Testor', 'test@test.com', '1234', 0),
(2, 'administrator', 'admin@test.com', '1234', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
