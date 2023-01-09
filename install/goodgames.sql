-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 09 2023 р., 15:21
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
-- Структура таблиці `additional_photos_product`
--

CREATE TABLE `additional_photos_product` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `additional_photos_product`
--

INSERT INTO `additional_photos_product` (`id`, `product_id`, `photo`) VALUES
(1, 17, '63b5657ee0936.jpg'),
(2, 17, '63b5657ee0ef5.jpg'),
(5, 14, '63b56bef3d230.jpg'),
(39, 10, '63b59d1135106.jpg'),
(40, 10, '63b59d1135712.jpg'),
(41, 10, '63b59d1135d0d.jpg'),
(44, 19, '63b7faf993d1c.jpg'),
(46, 20, '63b7fb2e7e28a.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `basket`
--

INSERT INTO `basket` (`id`, `product_id`, `user_id`) VALUES
(1, 10, 1),
(2, 20, 1),
(3, 19, 1);

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
(7, 'Аніме'),
(8, 'Екшен'),
(9, 'Рольова'),
(10, 'Пригоди');

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
(3, 9, 5),
(5, 11, 4),
(6, 11, 5),
(9, 13, 4),
(10, 13, 5),
(13, 15, 4),
(14, 15, 5),
(15, 16, 3),
(16, 17, 4),
(17, 17, 5),
(40, 19, 4),
(41, 19, 5),
(60, 10, 4),
(61, 10, 8),
(62, 10, 9),
(63, 10, 10);

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Назва товару',
  `publisher_id` int DEFAULT NULL COMMENT 'Категорія',
  `price` double NOT NULL COMMENT 'Ціна',
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Короткий опис товару',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visible` int NOT NULL DEFAULT '1',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `name`, `publisher_id`, `price`, `short_description`, `description`, `visible`, `photo`, `release_date`) VALUES
(4, 'test', 1, 333, 'qwe', 'eewqewqewqe', 1, '', '2023-01-06 16:50:37'),
(6, 'qwe', 1, 62, '', '', 1, '', '2023-01-06 16:50:37'),
(7, 'wqe', 6, 60, 'qwe', '<p>dsfefeffe</p>', 1, NULL, '2023-01-06 16:50:37'),
(9, '4', 3, 50, 'wer', '<p>tbhb</p>', 1, NULL, '2023-01-06 16:50:37'),
(10, 'Cyberpunk 2077', 6, 899, 'Cyberpunk 2077 — пригодницький бойовик і рольова гра з відкритим світом. Дія відбувається у темному майбутньому Найт-Сіті, небезпечного мегаполіса, одержимого владою, гламуром і ненаситною модифікацією тіла.', '<p>Cyberpunk 2077 — пригодницький рольовий екшн у відкритому світі мегаполісу Найт-Сіті, де у ролі кіберпанкового найманця ви боротиметеся за виживання. Гра вдосконалена і має новий безкоштовний вміст. Налаштуйте персонажа й ігровий стиль, виконуючи завдання, нарощуючи репутацію і відкриваючи апгрейди. Будуючи взаємини і здійснюючи вибір, ви формуєте сюжет і світ навколо. Тут народжуються легенди. Якою буде ваша?</p><p>СТВОРІТЬ ВЛАСНОГО КІБЕРПАНКА<br>Станьте міським бандитом, оснащеним кібернетичними імплантатами, і побудуйте свою легенду на вулицях Найт-Сіті.</p><p>ДОСЛІДЖУЙТЕ МІСТО МАЙБУТНЬОГО<br>В Найт-Сіті є безліч занять, місць, які можна відвідати, та людей, яких можна зустріти. Куди йти, коли це робити і в який спосіб — залежить від вас.</p><p>СТВОРІТЬ ВЛАСНУ ЛЕГЕНДУ<br>Подайтеся на пошуки небезпечних пригод і побудуйте взаємини з незабутніми персонажами, чия доля залежить від вашого вибору.</p><p>СУТТЄВІ ВДОСКОНАЛЕННЯ<br>Пізнайте «Cyberpunk 2077» з численними змінами і покращеннями ігроладу, економіки, міста, карти тощо.</p><p>БЕЗКОШТОВНИЙ ДОДАТКОВИЙ ВМІСТ<br>Отримайте доступ до безкоштовних предметів, серед яких нова вогнепальна і холодна зброя, опції налаштування персонажа та інше.</p>', 1, '63b59b3a46bda.jpg', '2023-01-06 16:50:37'),
(11, 'qwe', 3, 5, 'qwefdfwef', '', 1, NULL, '2023-01-06 16:50:37'),
(12, 'test delete', NULL, 5, 'qdwqd', '<p>ewfewf</p>', 1, '63b54a884afc6.jpg', '2023-01-06 16:50:37'),
(13, 'qweddewqd', 3, 50, 'qdwd', '<p>ewfwfwef</p>', 1, '63b54b6b803f0.jpg', '2023-01-06 16:50:37'),
(14, 'qweqwewqe', 1, 30, 'wdwdqw', '<p>qfewfwqd</p>', 1, '63b56bef3bb73.jpg', '2023-01-06 16:50:37'),
(15, 'qwrqew', 3, 2, 'dwqd', '<p>qwdqdw</p>', 1, '63b564300a222.jpg', '2023-01-06 16:50:37'),
(16, 'qdqwd', 8, 50, 'WEFE', '<p>dwqdqwd</p>', 1, '63b56503b8c45.jpg', '2023-01-06 16:50:37'),
(17, 'qwdqwd', 2, 50, 'qwfd', '<p>wefwf</p>', 1, '63b5657edce8f.jpg', '2023-01-06 16:50:37'),
(19, 'qeqweqew', 1, 30, 'qdwd', '<p>wdqdwq</p>', 1, '63b7f1ee2c4fb.jpg', '2023-01-06 16:50:37'),
(20, 'test', 1, 20, 'qweqe', '<p>qwddqwd</p>', 1, '63b7fb269c45d.jpg', '2023-01-06 16:50:37');

-- --------------------------------------------------------

--
-- Структура таблиці `publisher`
--

CREATE TABLE `publisher` (
  `id` int NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Назва категорії',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `photo`) VALUES
(1, 'Ноутбуки', '63b54c505999e.jpg'),
(2, 'Планшети', '63b54c5b32428.jpg'),
(3, 'Телефони', '63b54c607c619.jpg'),
(6, 'CD PROJEKT RED', '63b81e1e136c5.jpg'),
(8, 'rt', '63aeb08283f71.jpg'),
(11, 'qweqwewqe', '63b5457055f7d.jpg');

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
(18, 'test2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1),
(19, 'test3@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `additional_photos_product`
--
ALTER TABLE `additional_photos_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Індекси таблиці `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT для таблиці `additional_photos_product`
--
ALTER TABLE `additional_photos_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблиці `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблиці `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `additional_photos_product`
--
ALTER TABLE `additional_photos_product`
  ADD CONSTRAINT `additional_photos_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Обмеження зовнішнього ключа таблиці `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
