-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 15, 2026 at 05:21 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_app`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `temperatures`
--

CREATE TABLE `temperatures` (
  `id_wykresu` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `dzien_tygodnia` date NOT NULL,
  `temperatura` decimal(4,1) DEFAULT NULL,
  `status` enum('pomiar','choroba','brak') DEFAULT 'pomiar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`) VALUES
(1, 'maksk.panda@gmail.com', '$2y$10$F8Cj23d0I.O3V98TGQtsW.Trk6ODxwMi7eLeWthMmmOmR.vJ.HTsK', '2026-03-17 16:29:29'),
(2, 'test@gmail.com', '$2y$10$OskCCShbLKMi6Vn.ls.M3u70hFKaTbrbd/SWqhABqADacp52fLL/i', '2026-03-17 21:39:59'),
(3, 'a@gmail.com', '$2y$10$irUN97fFwEFnCM5EPyMGheBX/UxI5Qfb33wTheke2p3lbQrAwnCyO', '2026-03-18 10:01:27'),
(4, 'Panda', '$2y$10$90./US7tnWR5MeX4QPd21u73zDaaOUoXfkgNorQekg4m90pevaqtW', '2026-04-29 09:25:58');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `temperatures`
--
ALTER TABLE `temperatures`
  ADD PRIMARY KEY (`id_wykresu`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `temperatures`
--
ALTER TABLE `temperatures`
  MODIFY `id_wykresu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `temperatures`
--
ALTER TABLE `temperatures`
  ADD CONSTRAINT `temperatures_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
