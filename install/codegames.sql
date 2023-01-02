-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 02 2023 р., 17:10
-- Версія сервера: 8.0.30
-- Версія PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `codegames`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Назва категорії',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `name`, `photo`) VALUES
(1, 'Ноутбуки', '63aedd16eca10.jpg'),
(2, 'Планшети', '63aedd3c5d78a.jpg'),
(3, 'Телефони', '63b007b3226a9.jpg'),
(4, 'Генеретори', ''),
(5, 'Павербанки', ''),
(6, 'test', ''),
(8, 'rt', '63aeb08283f71.jpg'),
(10, 'qwee', '63b0255a1d9e6.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Назва товару',
  `category_id` int DEFAULT NULL COMMENT 'Категорія',
  `price` double NOT NULL COMMENT 'Ціна',
  `count` int NOT NULL COMMENT 'Кількість',
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Короткий опис товару',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visible` int NOT NULL DEFAULT '1',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `price`, `count`, `short_description`, `description`, `visible`, `photo`) VALUES
(1, 'test', 1, 25000, 12, 'Тут буде короткий опис ноутбуку', '', 1, ''),
(3, 'test', 2, 100, 10, 'test', 'test', 1, ''),
(4, 'test', 1, 333, 20, 'qwe', 'eewqewqewqe', 1, ''),
(5, 'wqwe', 6, 361, 5, '<h2>qwe</h2><p>qweqwe<strong>qwe</strong></p><p><strong>sdwdw</strong></p>', 'qwedw', 1, ''),
(6, 'qwe', 1, 62, 2, '', '', 1, '');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `access_level` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `lastname`, `firstname`, `access_level`) VALUES
(1, 'mankivskiy.vlsd@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Mankivskyi', 'Vladyslav', 10),
(8, 'mankivskyi.vlad@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', '', 1),
(9, 'mankivskyi@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(10, 'mankivskyi3@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(11, 'mankivskyi4@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(12, 'mankivskyi5@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(13, 'mankivskyi6@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(14, 'mankivskyi7@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(15, 'mankivskyi8@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(16, 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(17, 'test1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(18, 'test2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
