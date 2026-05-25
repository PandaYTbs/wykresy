-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 25, 2026 at 06:33 PM
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
-- Struktura tabeli dla tabeli `measured_points`
--

CREATE TABLE `measured_points` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_chart` int(11) NOT NULL,
  `day_of_month` int(11) NOT NULL,
  `temperature` float DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'brak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `temperatures`
--

CREATE TABLE `temperatures` (
  `id` int(11) NOT NULL,
  `id_wykresu` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `nazwa_wykresu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `temperatures`
--

INSERT INTO `temperatures` (`id`, `id_wykresu`, `id_uzytkownika`, `nazwa_wykresu`) VALUES
(17, 1, 1, 'pierwszy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`) VALUES
(1, 'maksk.panda@gmail.com', '$2y$10$tnN.3FXgUL0kE7xDOOH0jeEUsQy6T.eaw3rkuwp35K3wTBhSXJsX.', '2026-05-25 08:21:30'),
(2, 'TychySmierdz@gmail.com', '$2y$10$YpBC0JZKysI5icCQBDasdOIwgHHnNEyR50BH8w8SRAz.YmmCBTx2q', '2026-05-25 11:23:52');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `measured_points`
--
ALTER TABLE `measured_points`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `temperatures`
--
ALTER TABLE `temperatures`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `measured_points`
--
ALTER TABLE `measured_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `temperatures`
--
ALTER TABLE `temperatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
