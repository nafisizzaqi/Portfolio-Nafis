-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2024 at 10:05 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_me`
--

CREATE TABLE `contact_me` (
  `id_contact` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_me`
--

INSERT INTO `contact_me` (`id_contact`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'cia', 'cia@', 'napis', '', '2024-11-15 01:30:38'),
(2, 'Nafis Izzaqi', 'nafisiz@gmail.com', 'Sayang', '', '2024-11-15 01:31:58'),
(3, 'Alex', 'Alex.com', 'Reva', 'Kamu Baik', '2024-11-15 01:33:43'),
(4, 'napis', 'napis@gmail.com', 'napis', 'df', '2024-11-15 14:12:43'),
(5, 'napis', 'napis@gmail.com', 'napis', 'siapa', '2024-11-15 15:22:51'),
(6, 'Nafis Izzaqi', 'znafisiz@gmail.com', 'Napis', 'Saya cinta dia dia cinta dia', '2024-11-15 23:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id_experience` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(225) NOT NULL,
  `titleback` varchar(100) NOT NULL,
  `description` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tanggal` varchar(225) NOT NULL,
  `timeline` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id_experience`, `id_user`, `title`, `titleback`, `description`, `image`, `tanggal`, `timeline`) VALUES
(1, 1, 'Experience', 'Experience', 'I started learning about programming in grade 10, continue to grade 11 and entered the children\'s carrer class/industrial class', 'circle.png', '22 Dec 2023', 'I entered SMKN 1 Tengaran and started learning programming languages.'),
(2, 1, '', '', '', '', '1 Jul 2024', 'In class 11, I studied JavaScript and PHP.'),
(3, 1, '', '', '', '', '12 Aug 2024', 'I joined the industrial class, specifically the career development class. In this class, I aimed to become a leader and entrepreneur, guided by an alumni mentor from SMKN 1 Tengaran.');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id_portfolio` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(225) NOT NULL,
  `titleback` varchar(100) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id_portfolio`, `id_user`, `title`, `titleback`, `image`) VALUES
(1, 1, 'Portfolio', 'Portfolio', 'portofolio-1.jpeg'),
(2, 1, '', '', 'portofolio-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `skils`
--

CREATE TABLE `skils` (
  `id_skils` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(225) NOT NULL,
  `titleback` varchar(100) NOT NULL,
  `description` text,
  `image` varchar(225) DEFAULT NULL,
  `ketimage` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skils`
--

INSERT INTO `skils` (`id_skils`, `id_user`, `title`, `titleback`, `description`, `image`, `ketimage`) VALUES
(1, 1, 'My Skills', 'Skills', 'I have several skills including :', 'skils1.png', 'HTML 5'),
(2, 1, '', '', '', 'skils2.png', 'CSS 3'),
(3, 1, '', '', '', 'skils3.png', 'JavaScript'),
(4, 1, '', '', '', 'skils4.png', 'PHP'),
(5, 1, '', '', '', 'skils5.png', 'Laravel'),
(6, 1, '', '', '', 'skils6.png', 'Phyton'),
(7, 1, '', '', '', 'skils7.png', 'React JS'),
(8, 1, '', '', '', 'skils8.png', 'Angular JS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` text,
  `picture` varchar(225) DEFAULT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `title`, `email`, `bio`, `picture`, `logo`) VALUES
(1, 'Nafis Izzaqi', 'Hello Everyone', 'znafisiz@gmail.com', 'I\'m a student at SMK 1 Tengaran majoring in RPL. I\'m 17 years old and I\'m still learning about the world of programming.', 'Nafis_poto.jpg', 'logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_me`
--
ALTER TABLE `contact_me`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id_experience`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id_portfolio`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `skils`
--
ALTER TABLE `skils`
  ADD PRIMARY KEY (`id_skils`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_me`
--
ALTER TABLE `contact_me`
  MODIFY `id_contact` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id_experience` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id_portfolio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skils`
--
ALTER TABLE `skils`
  MODIFY `id_skils` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `skils`
--
ALTER TABLE `skils`
  ADD CONSTRAINT `skils_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
