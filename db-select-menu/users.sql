-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 30, 2021 at 07:19 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `date`) VALUES
(1, 'ted', 'smith', 'tedsmith@gmail.com', '2021-09-26 12:46:03'),
(5, 'samara', 'laurenceios', 'samara@gmail.com', '2021-09-26 13:20:15'),
(6, 'agnes', 'lore', 'agnes@gmail.com', '2021-09-26 13:22:53'),
(8, 'gregory', 'slate', 'gregory@gmail.com', '2021-09-26 13:22:53'),
(9, 'adam', 'willis', 'adam@gmail.com', '2021-09-26 13:22:53'),
(10, 'lucifer', 'morningstar', 'lucifer@gmail.com', '2021-09-26 13:22:53'),
(11, 'David', 'Mulder', 'david@gmail.com', '2021-09-26 14:56:58'),
(12, 'Aurora', 'Mars', 'aurora@gmail.com', '2021-09-26 14:59:09'),
(13, 'Luna', 'White', 'luna@gmail.com', '2021-09-26 15:07:42'),
(14, 'Dolly', 'Perry', 'dolly@gmail.com', '2021-09-26 15:07:42'),
(18, 'John', 'Lint', 'johnlint@gmail.com', '2021-09-26 15:19:25'),
(16, 'Johnny', 'Lint', 'johnny@gmail.com', '2021-09-26 15:16:17'),
(17, 'Damian', 'Black', 'damian@gmail.com', '2021-09-26 15:16:17'),
(19, 'Dany', 'Black', 'dany@gmail.com', '2021-09-26 15:19:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
