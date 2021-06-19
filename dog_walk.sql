-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Cze 2021, 12:43
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dog_walk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rozmowy`
--

CREATE TABLE `rozmowy` (
  `id_rozmowy` int(11) NOT NULL,
  `id_właściciela` int(11) NOT NULL,
  `id_gościa` int(11) NOT NULL,
  `data_stworzenia` datetime NOT NULL DEFAULT current_timestamp(),
  `data_aktualizacji` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rozmowy`
--

INSERT INTO `rozmowy` (`id_rozmowy`, `id_właściciela`, `id_gościa`, `data_stworzenia`, `data_aktualizacji`) VALUES
(1, 1, 2, '2021-06-11 11:44:27', NULL),
(2, 1, 7, '2021-06-11 11:44:27', NULL),
(3, 1, 4, '2021-06-11 11:44:27', NULL),
(4, 5, 2, '2021-06-11 11:44:27', NULL),
(5, 3, 2, '2021-06-11 11:44:27', NULL),
(6, 8, 1, '2021-06-11 11:44:27', NULL),
(7, 2, 4, '2021-06-11 11:44:27', NULL),
(8, 4, 8, '2021-06-11 11:44:27', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rozmowy`
--
ALTER TABLE `rozmowy`
  ADD PRIMARY KEY (`id_rozmowy`),
  ADD KEY `id_właściciela` (`id_właściciela`),
  ADD KEY `id_gościa` (`id_gościa`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rozmowy`
--
ALTER TABLE `rozmowy`
  MODIFY `id_rozmowy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `rozmowy`
--
ALTER TABLE `rozmowy`
  ADD CONSTRAINT `rozmowy_ibfk_1` FOREIGN KEY (`id_właściciela`) REFERENCES `uzytkownicy` (`id_uzytkownika`),
  ADD CONSTRAINT `rozmowy_ibfk_2` FOREIGN KEY (`id_gościa`) REFERENCES `uzytkownicy` (`id_uzytkownika`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
