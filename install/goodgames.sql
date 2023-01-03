-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 03 2023 р., 18:04
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
-- База даних: `goodgames`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'Жахи'),
(4, 'Відкритий світ'),
(5, 'Виживання'),
(6, 'Аніме');

-- --------------------------------------------------------

--
-- Структура таблиці `category_list`
--

CREATE TABLE `category_list` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `category_list`
--

INSERT INTO `category_list` (`id`, `product_id`, `category_id`) VALUES
(1, 9, 3),
(2, 9, 4),
(3, 9, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Назва товару',
  `publisher_id` int DEFAULT NULL COMMENT 'Категорія',
  `price` double NOT NULL COMMENT 'Ціна',
  `count` int NOT NULL COMMENT 'Кількість',
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Короткий опис товару',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visible` int NOT NULL DEFAULT '1',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `name`, `publisher_id`, `price`, `count`, `short_description`, `description`, `visible`, `photo`) VALUES
(1, 'test', 1, 25000, 12, 'Тут буде короткий опис ноутбуку', '', 1, ''),
(3, 'test', 2, 100, 10, 'test', 'test', 1, ''),
(4, 'test', 1, 333, 20, 'qwe', 'eewqewqewqe', 1, ''),
(5, 'wqwe', 6, 361, 5, '<h2>qwe</h2><p>qweqwe<strong>qwe</strong></p><p><strong>sdwdw</strong></p>', 'qwedw', 1, ''),
(6, 'qwe', 1, 62, 2, '', '', 1, ''),
(7, 'wqe', 6, 60, 200000, 'qwe', '<p>dsfefeffe</p>', 1, NULL),
(8, '3', 1, 51, 20, 'qwe', '<p>fefrff</p>', 1, NULL),
(9, '4', 3, 50, 30, 'wer', '<p>tbhb</p>', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `publisher`
--

CREATE TABLE `publisher` (
  `id` int NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Назва категорії',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `photo`) VALUES
(1, 'Ноутбуки', '63aedd16eca10.jpg'),
(2, 'Планшети', '63aedd3c5d78a.jpg'),
(3, 'Телефони', '63b007b3226a9.jpg'),
(5, 'Павербанки', ''),
(6, 'test', ''),
(8, 'rt', '63aeb08283f71.jpg'),
(10, 'qwee', '63b0255a1d9e6.jpg');

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
-- Індекси таблиці `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`publisher_id`);

--
-- Індекси таблиці `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `category_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Обмеження зовнішнього ключа таблиці `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
