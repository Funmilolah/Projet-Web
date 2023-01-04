-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 29 juil. 2022 à 09:52
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gamora`
--

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id_reponse` int(11) NOT NULL,
  `id_sujet` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_depot` datetime NOT NULL DEFAULT current_timestamp(),
  `reponse` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id_reponse`, `id_sujet`, `id_user`, `date_depot`, `reponse`) VALUES
(2, 9, 1, '2022-06-22 14:59:28', 'dfdsgfds'),
(3, 10, 2, '2022-06-22 14:59:28', 'Uriel a porté du bleu aujourd\'hui'),
(4, 2, 1, '2022-06-22 14:59:28', 'Lola a porté du bleu aujourd\'hui'),
(5, 1, 2, '2022-06-22 14:59:28', 'Samira a porté du bleu aujourd\'hui'),
(6, 6, 1, '2022-06-22 14:59:28', 'uwu'),
(7, 3, 2, '2022-06-22 14:59:28', 'uwu '),
(8, 12, 1, '2022-07-27 19:26:11', 'Wow super ! mais tu ne risque pas de rater des cours en faisant cela ?'),
(17, 12, 1, '2022-07-27 22:43:11', 'essai \r\ntest'),
(18, 12, 1, '2022-07-27 22:53:18', 'hkh'),
(19, 12, 2, '2022-07-27 22:53:34', 'dsd'),
(20, 14, 1, '2022-07-27 22:59:03', 'Quel est ton problème ?'),
(21, 14, 2, '2022-07-27 22:59:31', 'ah je ne sais pas par où commencer pour faire les sessions'),
(23, 13, 1, '2022-07-27 23:01:43', 'njnnj'),
(24, 1, 8, '2022-07-28 12:41:23', 'lol'),
(25, 1, 8, '2022-07-28 12:41:31', 'lal'),
(26, 1, 8, '2022-07-28 12:42:31', 'ahahah'),
(27, 6, 8, '2022-07-28 12:52:26', 'lol'),
(28, 6, 8, '2022-07-28 12:52:57', 'lol'),
(29, 11, 8, '2022-07-28 12:53:15', 'ah ah ah '),
(30, 1, 8, '2022-07-28 12:53:26', 'essai encore'),
(31, 10, 8, '2022-07-28 12:54:31', 'essai'),
(32, 3, 8, '2022-07-28 12:54:35', 'essai'),
(33, 1, 9, '2022-07-28 14:11:10', 'vérifie tes ports'),
(34, 2, 8, '2022-07-28 19:11:29', 'aho'),
(35, 10, 8, '2022-07-28 19:11:42', 'ahoo'),
(36, 9, 8, '2022-07-28 19:11:52', 'ahoo'),
(37, 1, 8, '2022-07-29 01:53:21', 'vas chercher'),
(38, 30, 8, '2022-07-29 01:55:11', 'coucou'),
(39, 3, 8, '2022-07-29 09:34:48', 'wow'),
(40, 2, 8, '2022-07-29 09:37:01', 'jg');

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id_sujet` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_crea` date NOT NULL DEFAULT current_timestamp(),
  `lib_sujet` varchar(180) NOT NULL,
  `description` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`id_sujet`, `id_theme`, `id_user`, `date_crea`, `lib_sujet`, `description`) VALUES
(1, 2, 2, '2022-06-20', 'phpmyadmin problem', 'je n\'arrive pas à me connecter sur myphpadmin, How to do that ?'),
(2, 1, 1, '2022-06-20', 'php', ''),
(3, 1, 2, '2022-06-20', 'yuy', 'uwu'),
(6, 1, 1, '2022-06-20', 'uwu', 'uwu'),
(9, 1, 1, '2022-06-20', 'KISS', 'on a droit qu a un seul id et un seul class dans une page, du coup on fait comment ??'),
(10, 1, 2, '2022-06-20', 'KISS', 'on a droit qu a un seul id et un seul class dans une page, du coup on fait comment ??'),
(11, 2, 1, '2022-06-22', 'php error ', 'on me dis qu\'il n\'y a rien dans ma base de données alors que je sais très bien que j\'ai des données à l\'intérieur \r\nQue faire ?'),
(12, 1, 1, '2022-07-23', 'Retour au pays', 'Je suis rentrée à Cotonou depuis ce vendredi 22 juillet 2022'),
(13, 2, 1, '2022-07-27', 'Tests finaux N°1', 'Ceci est un test '),
(14, 1, 1, '2022-07-27', 'test final', 'essai again'),
(29, 1, 9, '2022-07-28', 'vais-je passer en seconde session ? ', 'question ?'),
(30, 2, 10, '2022-07-29', 'hello', 'Salut tout le monde');

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL,
  `lib_theme` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id_theme`, `lib_theme`) VALUES
(1, 'Developpement web'),
(2, 'Base de données');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(24) NOT NULL,
  `email` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `pseudo` varchar(24) NOT NULL,
  `date_insc` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `email`, `password`, `pseudo`, `date_insc`) VALUES
(1, 'lola', 'funege66@gmail.com', 'Funmilola123.', 'adelainexd', '2022-06-19 17:28:58'),
(2, 'adelaine', 'adelainexd@gmail.com', 'Adelaine12', 'Ade', '2022-06-19 17:30:10'),
(3, 'ismael', 'ismael@gmail.com', 'ismael', 'ismow', '2022-07-27 23:32:11'),
(4, 'ismael', 'ismael@gmail.com', 'ismael', 'ismow', '2022-07-27 23:32:11'),
(5, 'Vanessa', 'vanessalaurence@gmail.co', 'Vanessa12.', 'Nessa', '2022-07-28 09:18:41'),
(6, 'Hannah Montana', 'hannahmontana@gmail.com', 'hannahmontana', 'montana', '2022-07-28 09:42:36'),
(7, 'lola', 'l@gmail.com', '1111', 'lol', '2022-07-28 09:57:17'),
(8, 'van', 'dssd@gmail.com', 'aaaa', 'van', '2022-07-28 10:54:26'),
(9, 'alain', 'a@gmail.com', 'bbbb', 'alain', '2022-07-28 14:10:49'),
(10, 'anna', 'anna@gmail.com', 'bbbb', 'anna', '2022-07-29 01:54:03');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_reponse`),
  ADD KEY `sujet` (`id_sujet`),
  ADD KEY `user` (`id_user`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id_sujet`),
  ADD KEY `theme` (`id_theme`),
  ADD KEY `utilisateur` (`id_user`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id_theme`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id_reponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id_sujet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `sujet` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `theme` FOREIGN KEY (`id_theme`) REFERENCES `theme` (`id_theme`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
