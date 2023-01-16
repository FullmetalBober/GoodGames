-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 16 2023 р., 14:04
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
(64, 10, '63c04354eb773.jpg'),
(65, 10, '63c04354ebcc4.jpg'),
(66, 10, '63c04354ec224.jpg'),
(67, 4, '63c05dad5628c.jpg'),
(68, 4, '63c05dad56780.jpg'),
(69, 4, '63c05dad56ccf.jpg'),
(70, 6, '63c05f59f0d65.jpg'),
(71, 6, '63c05f59f129f.jpg'),
(72, 6, '63c05f59f17ac.jpg'),
(73, 14, '63c0606109786.jpg'),
(74, 14, '63c0606109d47.jpg'),
(75, 14, '63c060610a18d.jpg'),
(76, 17, '63c0634665d19.jpg'),
(77, 17, '63c0634666229.jpg'),
(78, 17, '63c0634666741.jpg'),
(79, 17, '63c0634666cce.jpg'),
(80, 23, '63c0642872449.jpg'),
(81, 23, '63c0642872a50.jpg'),
(82, 23, '63c06428730d2.jpg'),
(83, 23, '63c06428736ec.jpg'),
(84, 23, '63c0642873ccf.jpg'),
(85, 9, '63c065a564747.jpg'),
(86, 9, '63c065a564e4f.jpg'),
(87, 9, '63c065a56546a.jpg'),
(88, 9, '63c065a565a68.jpg'),
(89, 11, '63c067198f05a.jpg'),
(90, 11, '63c067198f5b0.jpg'),
(91, 11, '63c067198fa96.jpg'),
(92, 11, '63c067198ff66.jpg'),
(93, 13, '63c0683a5dc63.jpg'),
(94, 13, '63c0683a5e239.jpg'),
(95, 13, '63c0683a5e7a5.jpg'),
(96, 13, '63c0683a5ee74.jpg'),
(97, 15, '63c12af2a0d4d.jpg'),
(98, 15, '63c12af2a17cc.jpg'),
(99, 15, '63c12af2a1ce2.jpg'),
(100, 15, '63c12af2a21e9.jpg'),
(101, 15, '63c12af2a25ee.jpg'),
(102, 16, '63c12d634a975.jpg'),
(103, 16, '63c12d634ae8a.jpg'),
(104, 16, '63c12d634b330.jpg'),
(105, 16, '63c12d634b76b.jpg'),
(106, 16, '63c12d634bb70.jpg'),
(107, 24, '63c13175bfed5.jpg'),
(108, 24, '63c13175c03a4.jpg'),
(109, 24, '63c13175c085f.jpg'),
(110, 24, '63c13175c0f16.jpg'),
(111, 24, '63c13175c14d2.jpg'),
(112, 24, '63c13175c19ed.jpg'),
(113, 24, '63c13175c1ea8.jpg'),
(114, 24, '63c13175c2270.jpg'),
(115, 25, '63c1323e8a3ba.jpg'),
(116, 25, '63c1323e8a83e.jpg'),
(117, 25, '63c1323e8ad1a.jpg'),
(118, 25, '63c1323e8b2f1.jpg'),
(119, 25, '63c1323e8b82a.jpg'),
(120, 26, '63c1334409be2.jpg'),
(121, 26, '63c133440a066.jpg'),
(122, 26, '63c133440a5ad.jpg'),
(123, 26, '63c133440ab06.jpg'),
(124, 26, '63c133440af8b.jpg'),
(125, 26, '63c133440b343.jpg'),
(126, 20, '63c133e42b500.jpg'),
(127, 20, '63c133e42bb3b.jpg'),
(128, 20, '63c133e42bfcc.jpg'),
(129, 20, '63c133e42c40c.jpg'),
(130, 20, '63c133e42c8ba.jpg'),
(131, 19, '63c1358481722.jpg'),
(132, 19, '63c1358481cd5.jpg'),
(133, 19, '63c13584824c7.jpg'),
(134, 19, '63c1358482c29.jpg'),
(135, 12, '63c13641ecaac.jpg'),
(136, 12, '63c13641ed03f.jpg'),
(137, 12, '63c13641ed641.jpg'),
(138, 12, '63c13641ede35.jpg'),
(139, 12, '63c13641ee463.jpg'),
(140, 12, '63c13641eea02.jpg'),
(142, 28, '63c13951021b8.jpg'),
(143, 28, '63c1395102837.jpg'),
(144, 28, '63c1395102e03.jpg'),
(145, 28, '63c139510336d.jpg'),
(146, 28, '63c13951039f2.jpg'),
(147, 28, '63c13951040c9.jpg'),
(148, 29, '63c13b09c763c.jpg'),
(149, 29, '63c13b09c7d57.jpg'),
(150, 29, '63c13b09c82ef.jpg'),
(151, 29, '63c13b09c88f6.jpg'),
(152, 30, '63c13c626a7e2.jpg'),
(153, 30, '63c13c626ad4b.jpg'),
(154, 30, '63c13c626b3e5.jpg'),
(155, 30, '63c13c626ba47.jpg'),
(156, 30, '63c13c626bf75.jpg'),
(157, 31, '63c13cc4e760d.jpg'),
(158, 31, '63c13cc4e7bfe.jpg'),
(159, 31, '63c13cc4e82f5.jpg'),
(160, 31, '63c13cc4e8971.jpg'),
(161, 31, '63c13cc4e8f35.jpg'),
(162, 31, '63c13cc4e94b2.jpg'),
(163, 32, '63c13e5e91333.jpg'),
(164, 32, '63c13e5e9184f.jpg'),
(165, 32, '63c13e5e91cd5.jpg'),
(166, 32, '63c13e5e92225.jpg'),
(167, 32, '63c13e5e92712.jpg'),
(168, 33, '63c13f2a24e1c.jpg'),
(169, 33, '63c13f2a25346.jpg'),
(170, 33, '63c13f2a25827.jpg'),
(171, 33, '63c13f2a25d2c.jpg'),
(172, 33, '63c13f2a263bf.jpg'),
(173, 34, '63c142128c5b2.jpg'),
(174, 34, '63c142128ccdb.jpg'),
(175, 34, '63c142128d262.jpg'),
(176, 34, '63c142128d84a.jpg'),
(177, 34, '63c142128e1a1.jpg'),
(178, 34, '63c142128e828.jpg'),
(179, 35, '63c143439cdfd.jpg'),
(180, 35, '63c143439d4d8.jpg'),
(181, 35, '63c143439d95c.jpg'),
(182, 35, '63c143439de00.jpg'),
(183, 35, '63c143439e26e.jpg'),
(184, 36, '63c143a652fff.jpg'),
(185, 36, '63c143a6536ff.jpg'),
(186, 36, '63c143a653e28.jpg'),
(187, 36, '63c143a6544dc.jpg'),
(188, 36, '63c143a6549aa.jpg'),
(189, 36, '63c143a6551d0.jpg'),
(190, 36, '63c143a65581e.jpg'),
(191, 37, '63c144dc2b4b3.jpg'),
(192, 37, '63c144dc2b967.jpg'),
(193, 37, '63c144dc2c092.jpg'),
(194, 37, '63c144dc2c7c3.jpg'),
(195, 37, '63c144dc2ce32.jpg'),
(196, 38, '63c14594e0c7d.jpg'),
(197, 38, '63c14594e12b9.jpg'),
(198, 38, '63c14594e177b.jpg'),
(199, 38, '63c14594e1ea6.jpg'),
(200, 38, '63c14594e24f3.jpg'),
(201, 38, '63c14594e29fe.jpg'),
(202, 38, '63c14594e2ec7.jpg'),
(203, 39, '63c14679e0120.jpg'),
(204, 39, '63c14679e07ea.jpg'),
(205, 39, '63c14679e0e89.jpg'),
(206, 39, '63c14679e14a9.jpg'),
(207, 39, '63c14679e19ba.jpg'),
(208, 39, '63c14679e1fc3.jpg'),
(209, 39, '63c14679e2681.jpg'),
(210, 40, '63c14b64a7c7a.jpg'),
(211, 40, '63c14b64a815a.jpg'),
(212, 40, '63c14b64a8687.jpg'),
(213, 40, '63c14b64a8d75.jpg'),
(214, 40, '63c14b64a951a.jpg'),
(215, 40, '63c14b64a9a45.jpg'),
(216, 40, '63c14b64a9f04.jpg'),
(217, 40, '63c14b64aa65f.jpg'),
(218, 41, '63c14ec42c9fa.jpg'),
(219, 41, '63c14ec42d04f.jpg'),
(220, 41, '63c14ec42d607.jpg'),
(221, 41, '63c14ec42dbad.jpg'),
(222, 41, '63c14ec42e4d9.jpg'),
(223, 41, '63c14ec42ec42.jpg'),
(224, 42, '63c14f64d9173.jpg'),
(225, 42, '63c14f64d9810.jpg'),
(226, 42, '63c14f64da142.jpg'),
(227, 42, '63c14f64da8a0.jpg'),
(228, 42, '63c14f64dafcd.jpg'),
(229, 43, '63c14fc3858d6.jpg'),
(230, 43, '63c14fc385e5a.jpg'),
(231, 43, '63c14fc3867ec.jpg'),
(232, 43, '63c14fc387108.jpg'),
(233, 43, '63c14fc38782c.jpg'),
(234, 44, '63c1505e76c62.jpg'),
(235, 44, '63c1505e77121.jpg'),
(236, 44, '63c1505e77785.jpg'),
(237, 44, '63c1505e77f8c.jpg'),
(238, 44, '63c1505e785a4.jpg'),
(239, 44, '63c1505e78ae7.jpg'),
(240, 44, '63c1505e78f85.jpg'),
(241, 45, '63c15172c3268.jpg'),
(242, 45, '63c15172c3888.jpg'),
(243, 45, '63c15172c40cc.jpg'),
(244, 45, '63c15172c478f.jpg'),
(245, 45, '63c15172c4c61.jpg'),
(246, 45, '63c15172c5170.jpg'),
(247, 45, '63c15172c5758.jpg'),
(248, 46, '63c152a19a364.jpg'),
(249, 46, '63c152a19a866.jpg'),
(250, 46, '63c152a19aff1.jpg'),
(251, 46, '63c152a19b623.jpg'),
(252, 46, '63c152a19bbc4.jpg'),
(253, 46, '63c152a19c160.jpg'),
(254, 46, '63c152a19c776.jpg'),
(255, 46, '63c152a19cf11.jpg'),
(256, 47, '63c152fad6e9d.jpg'),
(257, 47, '63c152fad751b.jpg'),
(258, 47, '63c152fad7c57.jpg'),
(259, 47, '63c152fad81e3.jpg'),
(260, 47, '63c152fad87b9.jpg'),
(261, 48, '63c1539fd57c0.jpg'),
(262, 48, '63c1539fd5cf9.jpg'),
(263, 48, '63c1539fd66ef.jpg'),
(264, 48, '63c1539fd6f5a.jpg'),
(265, 48, '63c1539fd7466.jpg'),
(266, 49, '63c1545e583de.jpg'),
(267, 49, '63c1545e5889d.jpg'),
(268, 49, '63c1545e58dcc.jpg'),
(269, 49, '63c1545e593c4.jpg'),
(270, 49, '63c1545e59a32.jpg'),
(271, 49, '63c1545e5a1d7.jpg'),
(272, 49, '63c1545e5a807.jpg'),
(273, 49, '63c1545e5adc0.jpg'),
(274, 50, '63c154d23cfe0.jpg'),
(275, 50, '63c154d23d7ab.jpg'),
(276, 50, '63c154d23de6a.jpg'),
(277, 50, '63c154d23e41c.jpg'),
(278, 50, '63c154d23e988.jpg'),
(279, 50, '63c154d23f2e8.jpg'),
(280, 51, '63c155525a881.jpg'),
(281, 51, '63c155525ae03.jpg'),
(282, 51, '63c155525b656.jpg'),
(283, 51, '63c155525bd5a.jpg'),
(284, 51, '63c155525c367.jpg'),
(285, 51, '63c155525c9b7.jpg'),
(286, 51, '63c155525d293.jpg'),
(287, 52, '63c155b95084f.jpg'),
(288, 52, '63c155b950ebe.jpg'),
(289, 52, '63c155b9514e5.jpg'),
(290, 52, '63c155b951ad2.jpg'),
(291, 52, '63c155b9524e9.jpg'),
(292, 52, '63c155b952b7a.jpg'),
(293, 53, '63c157169dcde.jpg'),
(294, 53, '63c157169e30e.jpg'),
(295, 53, '63c157169e8e7.jpg'),
(296, 53, '63c157169eef3.jpg'),
(297, 53, '63c157169f5b7.jpg'),
(298, 54, '63c157887d78f.jpg'),
(299, 54, '63c157887dcad.jpg'),
(300, 54, '63c157887e183.jpg'),
(301, 54, '63c157887e82a.jpg'),
(302, 54, '63c157887ee4b.jpg'),
(303, 54, '63c157887f52f.jpg'),
(304, 55, '63c1583958ad8.jpg'),
(305, 55, '63c1583958feb.jpg'),
(306, 55, '63c1583959525.jpg'),
(307, 55, '63c1583959d74.jpg'),
(308, 55, '63c158395a390.jpg'),
(309, 55, '63c158395a86b.jpg'),
(310, 56, '63c158d053264.jpg'),
(311, 56, '63c158d053800.jpg'),
(312, 56, '63c158d053e01.jpg'),
(313, 56, '63c158d05437d.jpg'),
(314, 56, '63c158d05487a.jpg'),
(315, 56, '63c158d054df9.jpg'),
(316, 56, '63c158d0553ae.jpg'),
(317, 56, '63c158d055ade.jpg'),
(318, 57, '63c159907f520.jpg'),
(319, 57, '63c159907fb89.jpg'),
(320, 57, '63c1599080179.jpg'),
(321, 57, '63c15990809da.jpg'),
(322, 57, '63c1599081055.jpg'),
(323, 57, '63c1599081653.jpg'),
(324, 58, '63c15a4114b29.jpg'),
(325, 58, '63c15a41151e6.jpg'),
(326, 58, '63c15a41157ba.jpg'),
(327, 58, '63c15a4115eb0.jpg'),
(328, 58, '63c15a41165dd.jpg'),
(329, 58, '63c15a4116bea.jpg'),
(330, 58, '63c15a41170de.jpg'),
(331, 58, '63c15a4117675.jpg'),
(332, 58, '63c15a4117d56.jpg'),
(333, 58, '63c15a411849c.jpg'),
(334, 59, '63c15b2c7d2f2.jpg'),
(335, 59, '63c15b2c7db5e.jpg'),
(336, 59, '63c15b2c7e232.jpg'),
(337, 59, '63c15b2c7e869.jpg'),
(338, 59, '63c15b2c7eee4.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(8, 'Бойовик'),
(9, 'Рольова'),
(10, 'Пригоди'),
(11, 'Оповідальна'),
(12, 'Стратегії'),
(13, 'Інді'),
(14, 'Казуальні ігри'),
(16, 'ММО');

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
(161, 6, 4),
(162, 6, 8),
(163, 6, 11),
(164, 14, 8),
(165, 14, 10),
(168, 17, 8),
(169, 17, 12),
(170, 23, 8),
(171, 9, 4),
(172, 9, 9),
(173, 9, 10),
(180, 11, 4),
(181, 11, 9),
(182, 11, 10),
(185, 15, 4),
(186, 15, 9),
(189, 16, 8),
(190, 16, 9),
(191, 10, 4),
(192, 10, 8),
(193, 10, 9),
(194, 10, 10),
(195, 4, 4),
(196, 4, 9),
(197, 4, 10),
(198, 24, 8),
(199, 25, 8),
(200, 25, 9),
(201, 25, 10),
(202, 26, 8),
(203, 26, 10),
(204, 20, 8),
(205, 20, 10),
(206, 19, 8),
(207, 19, 9),
(211, 12, 9),
(212, 28, 10),
(213, 28, 13),
(214, 29, 13),
(215, 29, 14),
(217, 30, 8),
(218, 30, 9),
(219, 31, 8),
(220, 31, 9),
(221, 31, 10),
(222, 32, 8),
(223, 32, 9),
(224, 33, 3),
(225, 33, 5),
(226, 33, 8),
(227, 34, 3),
(228, 34, 8),
(229, 34, 10),
(230, 35, 8),
(231, 36, 8),
(232, 37, 8),
(233, 37, 9),
(234, 37, 10),
(235, 38, 4),
(236, 38, 8),
(237, 38, 10),
(238, 39, 4),
(239, 39, 9),
(240, 39, 10),
(241, 40, 8),
(242, 40, 9),
(243, 40, 10),
(244, 40, 13),
(245, 40, 16),
(246, 41, 8),
(247, 41, 9),
(248, 41, 10),
(249, 42, 8),
(250, 43, 8),
(251, 44, 8),
(252, 45, 3),
(253, 45, 8),
(254, 46, 8),
(255, 46, 10),
(256, 47, 8),
(257, 47, 10),
(258, 48, 8),
(259, 48, 9),
(260, 48, 10),
(261, 49, 8),
(262, 49, 10),
(263, 50, 9),
(264, 50, 10),
(265, 51, 8),
(266, 51, 10),
(267, 52, 8),
(268, 52, 10),
(269, 53, 8),
(270, 53, 10),
(271, 54, 8),
(272, 54, 10),
(273, 55, 8),
(274, 55, 9),
(275, 55, 10),
(276, 56, 8),
(277, 56, 9),
(278, 56, 10),
(279, 57, 8),
(280, 57, 10),
(281, 58, 8),
(282, 58, 10),
(287, 13, 4),
(288, 13, 8),
(289, 13, 9),
(294, 59, 8),
(295, 59, 10);

-- --------------------------------------------------------

--
-- Структура таблиці `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `product_id`, `comment`, `date`, `rating`) VALUES
(24, 1, 59, 'imba', '2023-01-13 17:22:41', 1),
(25, 1, 15, 'Add the Ukrainian language plz.', '2023-01-13 22:06:18', 1),
(26, 29, 15, 'new comment', '2023-01-13 22:43:11', 1),
(27, 13, 59, 'ne', '2023-01-16 10:50:43', 0),
(32, 14, 59, 'so good', '2023-01-16 10:54:44', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `library`
--

CREATE TABLE `library` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `library`
--

INSERT INTO `library` (`id`, `product_id`, `user_id`) VALUES
(2, 19, 1),
(8, 4, 1),
(9, 17, 1),
(10, 59, 1),
(11, 57, 1),
(12, 15, 1),
(13, 15, 29),
(14, 59, 13),
(15, 59, 14),
(16, 58, 14),
(17, 57, 14);

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
(4, 'The Witcher 3: Wild Hunt', 6, 539, 'Ви — Ґеральт із Рівії, найманий мисливець на чудовиськ. Перед вами цілий континент, просяклий війнами та заполонений різними потворами. Поточний контракт? Відшукайте Цірі — Дитя Пророцтва, живу зброю, що може докорінно змінити знаний світ.', '<p>НАЙВИЗНАЧНІША ГРА ЦЬОГО ПОКОЛІННЯ<br>ТЕПЕР ГОТОВА ДО НОВОГО<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/292030/extras/ABOUT_600x225_UA.png?t=1673427135\"><br><br>Ви — Ґеральт із Рівії, найманий мисливець на чудовиськ. Перед вами цілий континент, просяклий війнами та заполонений різними потворами. Поточний контракт? Відшукайте Цірі — Дитя Пророцтва, живу зброю, що може докорінно змінити знаний світ.<br><br>Оновлена версія гри «Відьмак 3: Дикій Гін» містить нововведення, як-от вбудований фоторежим, предмети зі серіалу «Відьмак» від Netflix — мечі, обладунки, костюми — і не тільки!<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/292030/extras/Updated_600x255__UA.png?t=1673427135\"><br><br>Пориньте у світ темного фентезі, якого континент ще ніколи не бачив! Це видання «Відьмак 3: Дикий Гін» містить безліч візуальних та технічних покращень, як-от покращений рівень деталізації, створені спільнотою та розробниками модифікації, трасування променів у реальному часі та багато іншого — все для того, щоб використовувати увесь потенціал сучасного ПК.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/292030/extras/Monster_Slayer_600x255_UA.png?t=1673427135\"><br><br>Відьмаків із раннього дитинства тренували й перетворювали на мутантів задля надлюдських навичок та сили. І хоча вони стали єдиною противагою пошесті чудовиськ, їм усе одно не довіряють.<br>• Брутально розправляйтеся зі своїми ворогами як належить професійному мисливцю на чудовиськ — за допомогою широкого набору вдосконалюваної зброї, мутагенів, еліксирів та бойових чар.<br>• Полюйте на численні види екзотичних монстрів — від диких звірів в горах до підступних надприродних хижаків, що ховаються серед тіней у густонаселених містах.<br>• Вкладайте зароблені гроші в удосконалення зброї та придбання спеціальних обладунків або тринькайте все на кінних перегонах, картярських іграх, кулачних боях чи інших знайдених розвагах.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/292030/extras/Open_World_600x255_UA.png?t=1673427135\"><br><br>Відкритий світ «Відьмака» створений, щоб дарувати нескінченні пригоди. Він вводить нові стандарти розміру, глибини та складності.<br>• Подорожуйте фантастичним відкритим світом: досліджуйте забуті руїни, печери та кораблетрощі, торгуйте з купцями та краснолюдськими ковалями в містах, полюйте на відкритих полях, в горах і на морях.<br>• Встановлюйте зв’язки з генералами-перебіжчиками, підступними відьмами і корумпованою шляхтою, щоб надавати темні та небезпечні послуги.<br>• Робіть вибір за рамками добра і зла і давайте раду далекосяжним наслідкам.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/292030/extras/Child_of_Prophercy_600x255_UA.png?t=1673427135\"><br><br>Візьміться за найважливіший контракт і знайдіть дитя пророцтва — ключ до порятунку або знищення світу.<br>• У розпал війни відшукайте дитя пророцтва — людину-зброю, передбачену давнім ельфійським пророцтвом.<br>• Боріться проти шалених правителів, духів природи і навіть загрози з потойбіччя — усі вони прагнуть панувати світом.<br>• Визначте свою долю у світі, який, можливо, і не вартий порятунку.</p>', 1, '63c05dad54fae.jpg', '2023-01-06 16:50:37'),
(6, 'Red Dead Redemption 2', 1, 899, 'Winner of over 175 Game of the Year Awards and recipient of over 250 perfect scores, RDR2 is the epic tale of outlaw Arthur Morgan and the infamous Van der Linde gang, on the run across America at the dawn of the modern age. Also includes access to the shared living world of Red Dead Online.', '<p>America, 1899.<br><br>Arthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.<br><br>Now featuring additional Story Mode content and a fully-featured Photo Mode, Red Dead Redemption 2 also includes free access to the shared living world of Red Dead Online, where players take on an array of roles to carve their own unique path on the frontier as they track wanted criminals as a Bounty Hunter, create a business as a Trader, unearth exotic treasures as a Collector or run an underground distillery as a Moonshiner and much more.<br><br>With all new graphical and technical enhancements for deeper immersion, Red Dead Redemption 2 for PC takes full advantage of the power of the PC to bring every corner of this massive, rich and detailed world to life including increased draw distances; higher quality global illumination and ambient occlusion for improved day and night lighting; improved reflections and deeper, higher resolution shadows at all distances; tessellated tree textures and improved grass and fur textures for added realism in every plant and animal.<br><br>Red Dead Redemption 2 for PC also offers HDR support, the ability to run high-end display setups with 4K resolution and beyond, multi-monitor configurations, widescreen configurations, faster frame rates and more.</p>', 1, '63c05f59ef933.jpg', '2023-01-06 16:50:37'),
(9, 'The Elder Scrolls V Skyrim Special Edition', 3, 649, 'Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space', '<p>Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space reflections, and more. Skyrim Special Edition also brings the full power of mods to the PC and consoles. New quests, environments, characters, dialogue, armor, weapons and more – with Mods, there are no limits to what you can experience.</p>', 1, '63c065a56342a.jpg', '2023-01-06 16:50:37'),
(10, 'Cyberpunk 2077', 6, 899, 'Cyberpunk 2077 — пригодницький бойовик і рольова гра з відкритим світом. Дія відбувається у темному майбутньому Найт-Сіті, небезпечного мегаполіса, одержимого владою, гламуром і ненаситною модифікацією тіла.', '<p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/ABOUT_THE_GAME_EN.png?t=1663663573\"><br><br>Cyberpunk 2077 — пригодницький рольовий екшн у відкритому світі мегаполісу Найт-Сіті, де у ролі кіберпанкового найманця ви боротиметеся за виживання. Гра вдосконалена і має новий безкоштовний вміст. Налаштуйте персонажа й ігровий стиль, виконуючи завдання, нарощуючи репутацію і відкриваючи апгрейди. Будуючи взаємини і здійснюючи вибір, ви формуєте сюжет і світ навколо. Тут народжуються легенди. Якою буде ваша?<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/NGU_CREATE_YOUR_OWN_CYBERPUNK_EN.png?t=1663663573\"><br><br>СТВОРІТЬ ВЛАСНОГО КІБЕРПАНКА<br>Станьте міським бандитом, оснащеним кібернетичними імплантатами, і побудуйте свою легенду на вулицях Найт-Сіті.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/NGU_EXPLORE_THE_CITY_OF_FUTURE_EN.png?t=1663663573\"><br><br>ДОСЛІДЖУЙТЕ МІСТО МАЙБУТНЬОГО<br>В Найт-Сіті є безліч занять, місць, які можна відвідати, та людей, яких можна зустріти. Куди йти, коли це робити і в який спосіб — залежить від вас.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/NGU_BUILD_YOUR_LEGEND_EN.png?t=1663663573\"><br><br>СТВОРІТЬ ВЛАСНУ ЛЕГЕНДУ<br>Подайтеся на пошуки небезпечних пригод і побудуйте взаємини з незабутніми персонажами, чия доля залежить від вашого вибору.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/NGU_EQUIPPED_WITH_IMPROVEMENTS_EN.png?t=1663663573\"><br><br>СУТТЄВІ ВДОСКОНАЛЕННЯ<br>Пізнайте «Cyberpunk 2077» з численними змінами і покращеннями ігроладу, економіки, міста, карти тощо.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/NGU_INCLUDES_FREE_ADDITIONAL_CONTENT_EN.png?t=1663663573\"><br><br>БЕЗКОШТОВНИЙ ДОДАТКОВИЙ ВМІСТ<br>Отримайте доступ до безкоштовних предметів, серед яких нова вогнепальна і холодна зброя, опції налаштування персонажа та інше.<br><br>ЗАВІТАЙТЕ НА <a href=\"https://steamcommunity.com/linkfilter/?url=http://CYBERPUNK.NET\">CYBERPUNK.NET</a><br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1091500/extras/06._Social-Media_EN.png?t=1663663573\"></p>', 1, '63c048b43fbc0.jpg', '2023-01-06 16:50:37'),
(11, 'Fallout 3: Game of the Year Edition', 3, 520, 'Prepare for the Future™ With Fallout 3: Game of the Year Edition, experience the most acclaimed game of 2008 like never before. Create a character of your choosing and descend into an awe-inspiring, post-apocalyptic world where every minute is a fight for survival.', '<p><strong>Prepare for the Future™</strong><br>With Fallout 3: Game of the Year Edition, experience the most acclaimed game of 2008 like never before. Create a character of your choosing and descend into an awe-inspiring, post-apocalyptic world where every minute is a fight for survival. Fallout 3: Game of the Year Edition includes all five of the Fallout 3 Game Add-on Packs:<br>&nbsp;</p><ul><li><strong>Operation: Anchorage</strong> - Enter a military simulation and fight in the liberation of Anchorage, Alaska from its Chinese Communist invaders.<br>&nbsp;</li><li><strong>The Pitt</strong> - Travel to the post-apocalyptic remains of Pittsburgh and become embroiled in a conflict between slaves and their Raider masters.<br>&nbsp;</li><li><strong>Broken Steel</strong> - Increase your level cap to 30, and finish the fight against the Enclave remnants alongside Liberty Prime.<br>&nbsp;</li><li><strong>Point Lookout</strong> - Embark on a mysterious and open-ended adventure in a huge, murky swampland along the coast of Maryland.<br>&nbsp;</li><li><strong>Mothership Zeta</strong> - Defy hostile alien abductors and fight your way off of the alien mothership, orbiting miles above the Capital Wasteland.<br>&nbsp;</li></ul><h2>Key Features</h2><ul><li><strong>Limitless Freedom</strong> - Take in the sights and sounds of the vast Capital Wasteland! See the great monuments of the United States lying in post-apocalyptic ruin! You make the choices that define you and change the world. Just keep an eye on your Rad Meter!<br>&nbsp;</li><li><strong>Experience S.P.E.C.I.A.L.</strong> - Vault-Tec engineers bring you the latest in human ability simulation — the SPECIAL Character System! Utilizing new breakthroughs in points-based ability representation, SPECIAL affords unlimited customization of your character. Also included are dozens of unique skills and perks to choose from, each with a dazzling variety of effects!<br>&nbsp;</li><li><strong>Fantastic New Views</strong> - The wizards at Vault-Tec have done it again! No longer constrained to just one view, experience the world from 1st or 3rd person perspective. Customize your view with the touch of a button!<br>&nbsp;</li><li><strong>The Power of Choice</strong> - Feeling like a dastardly villain today, or a Good Samaritan? Pick a side or walk the line, as every situation can be dealt with in many different ways. Talk out your problems in a civilized fashion, or just flash your Plasma Rifle.<br>&nbsp;</li><li><strong>Blast \'Em Away With V.A.T.S.</strong> - Even the odds in combat with the Vault-Tec Assisted Targeting System for your Pip-Boy Model 3000! V.A.T.S. allows you to pause time in combat, target specific body parts on your target, queue up attacks, and let Vault-Tec take out your aggression for you. Rain death and destruction in an all-new cinematic presentation.<br>&nbsp;</li><li><strong>Mind-Blowing Artificial Intelligence</strong> - At Vault-Tec, we realize that the key to reviving civilization after a global nuclear war is people. Our best minds pooled their efforts to produce an advanced version of Radiant AI, America\'s First Choice in Human Interaction Simulation. Facial expressions, gestures, unique dialog, and lifelike behavior are brought together with stunning results by the latest in Vault-Tec technology.<br>&nbsp;</li><li><strong>Eye-Popping Prettiness*</strong> - Witness the harsh realities of nuclear fallout rendered like never before in modern super-deluxe HD graphics. From the barren Wasteland, to the danger-filled offices and metro tunnels of DC, to the hideous rotten flesh of a mutant\'s face.<br>&nbsp;</li></ul><p>*Protective Eyewear Encouraged.</p>', 1, '63c067198ddbe.jpg', '2023-01-06 16:50:37'),
(12, 'The Witcher 2: Assassins of Kings Enhanced Edition', 6, 279, 'Настав час невимовного хаосу. Могутні сили зіткнулися в невидимому протистоянні за владу і вплив. Північні королівства готуються до війни. Але військові походи не можуть завадити кривавій змові', '<p>Друга частина саги про професійного мисливця на чудовиськ Ґеральта з Рівії, «Відьмак 2: Вбивці королів» розповідає дорослу, глибокодумну історію, щоб створити одну з найбільш витончених і унікальних рольових ігор усіх часів на ПК.<br><br>Настав час невимовного хаосу. Могутні сили зіткнулися в невидимому протистоянні за владу і вплив. Північні королівства готуються до війни. Але військові походи не можуть завадити кривавій змові…</p><h2>ОСОБЛИВОСТІ</h2><p><strong>ПРАВДОПОДІБНА, ДОРОСЛА, НЕЛІНІЙНА ІСТОРІЯ</strong><br>&nbsp;</p><ul><li>Пориньте у масштабну, емоційно насичену, нелінійну оповідь, яка розгортається в незвичайному фентезійному світі.<br>&nbsp;</li><li>Розпочніть складну, обширну пригоду, в якій кожне рішення може призвести до тяжких наслідків.<br>&nbsp;</li><li>Понад 40 годин сюжетного ігроладу, зокрема 4 різні початки та 16 різних закінчень.</li></ul><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/20920/extras/W2_1.gif?t=1659618473\"></p><p><br><br><strong>ВИДОВИЩНИЙ, БРУТАЛЬНИЙ, ТАКТИЧНИЙ БІЙ</strong><br>&nbsp;</p><ul><li>Бийтеся за допомогою системи, в якій неповторно поєднано динамічний екшн і продумані рольові механіки.<br>&nbsp;</li><li>Користуйтеся набором унікальної відьмацької зброї, з можливістю як рукопашного, так і дальнього бою.<br>&nbsp;</li><li>Готуйтеся до бою, використовуючи численні тактичні можливості: створюйте еліксири, наставляйте пастки і приманки, накладайте чари і підкрадайтеся до ворога непоміченими.</li></ul><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/20920/extras/W2_2.gif?t=1659618473\"></p><p><br><br><strong>РЕАЛІСТИЧНИЙ, ПРОСТОРИЙ, ПОСЛІДОВНИЙ ІГРОВИЙ СВІТ</strong><br>&nbsp;</p><ul><li>Відкрийте глибокий і яскравий ігровий світ, в якому лиховісні події визначають життя цілих народів, що співіснують з кровожерними чудовиськами.<br>&nbsp;</li><li>Досліджуйте численні та різноманітні місцевості — від яскравих торгових містечок й жвавих шахтарських поселень, до міцних замків і фортець — та розкрийте їхні історії і таємниці.</li></ul><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/20920/extras/W2_3.gif?t=1659618473\"></p><p><br><br><strong>ПЕРЕДОВІ ТЕХНОЛОГІЇ</strong><br>&nbsp;</p><ul><li>Опиніться в правдоподібному живому світі, переданому розкішною графікою з використанням витончених ігрових механік — все це можливо завдяки REDengine, власному ігровому двигуну CD PROJEKT RED.</li></ul><h2>ПРО «ВІДЬМАК 2: ПОКРАЩЕНЕ ВИДАННЯ»</h2><p>Покращене видання містить безліч нових захопливих матеріалів.</p><ul><li>Години додаткового ігроладу: нові пригоди у раніше небачених місцевостях, що доповнять історію та розкриють для вас незнайомих персонажів, свіжі таємниці та нових чудовиськ.<br>&nbsp;</li><li>Новий пролог і відео вставки: повністю нові анімації та катсцени, зокрема нове вступне відео від нагородженого BAFTA та номінованого на Оскар режисера Томаша Багінскі.<br>&nbsp;</li><li>Весь завантажуваний вміст та вдосконалення з версії гри 2.0, серед яких:<br><ul><li>Режим арени — аркадний режим, в якому гравці можуть битися проти нескінченних хвиль ворогів, щоб випробувати свої воїнські навички.<br>&nbsp;</li><li>Нова розширена тренувальна система, яка плавно і поступово занурить гравців в ігровий світ та пригоди Ґеральта.<br>&nbsp;</li><li>Темний режим — рівень складності спеціально для хардкорних гравців, в якому доступні унікальні темні предмети. В цьому режимі ще більше ваги надається підготовці до бою, захисним маневрам та вчасним атакам.</li></ul></li></ul><p><br>«Відьмак 2: Покращене видання» також містить наступні матеріали:<br>&nbsp;</p><ul><li>Офіційний саундтрек в форматі MP3<br>&nbsp;</li><li>Мапа ігрового світу<br>&nbsp;</li><li>Квестовий довідник, що стане в нагоді як новачкам, так і ветеранам рольових ігор<br>&nbsp;</li><li>Ігровий посібник<br>&nbsp;</li><li>Цифровий комікс «Державні справи».</li></ul>', 1, '63c13641eb689.jpg', '2023-01-06 16:50:37'),
(13, 'Fallout: New Vegas', 3, 260, 'Welcome to Vegas. New Vegas. Enjoy your stay!', '<p>Welcome to Vegas. New Vegas.<br>It’s the kind of town where you dig your own grave prior to being shot in the head and left for dead…and that’s before things really get ugly. It’s a town of dreamers and desperados being torn apart by warring factions vying for complete control of this desert oasis. It’s a place where the right kind of person with the right kind of weaponry can really make a name for themselves, and make more than an enemy or two along the way.<br>As you battle your way across the heat-blasted Mojave Wasteland, the colossal Hoover Dam, and the neon drenched Vegas Strip, you’ll be introduced to a colorful cast of characters, power-hungry factions, special weapons, mutated creatures and much more. Choose sides in the upcoming war or declare “winner takes all” and crown yourself the King of New Vegas in this follow-up to the 2008 videogame of the year, Fallout 3.<br>Enjoy your stay.</p><h2>Key Features</h2><p><strong>Feel the Heat in New Vegas!</strong> Not even nuclear fallout could slow the hustle of Sin City. Explore the vast expanses of the desert wastelands – from the small towns dotting the Mojave Wasteland to the bright lights of the New Vegas strip. See the Great Southwest as could only be imagined in Fallout.<br><strong>Feuding Factions, Colorful Characters and a Host of Hostiles!</strong> A war is brewing between rival factions with consequences that will change the lives of all the inhabitants of New Vegas. The choices you make will bring you into contact with countless characters, creatures, allies, and foes, and determine the final explosive outcome of this epic power struggle.<br><strong>New Systems!</strong> Enjoy new additions to <strong>Fallout: New Vegas</strong> such as a Companion Wheel that streamlines directing your companions, a Reputation System that tracks the consequences of your actions, and the aptly titled Hardcore Mode to separate the meek from the mighty. Special melee combat moves have been added to bring new meaning to the phrase “up close and personal”. Use V.A.T.S. to pause time in combat, target specific enemy body parts and queue up attacks, or get right to the action using the finely-tuned real-time combat mechanics.<br><strong>An Arsenal of Shiny New Guns!</strong> With double the amount of weapons found in Fallout 3, you’ll have more than enough new and exciting ways to deal with the threats of the wasteland and the locals. In addition, Vault-Tec engineers have devised a new weapons configuration system that lets you tinker with your toys and see the modifications you make in real time.<br><strong>Let it Ride!</strong> In a huge, open world with unlimited options you can see the sights, choose sides, or go it alone. Peacemaker or Hard Case, House Rules, or the Wild Card - it’s all in how you play the game.</p>', 1, '63c0683a5c91b.jpg', '2023-01-06 16:50:37'),
(14, 'Grand Theft Auto V', 1, 629, 'Grand Theft Auto V для ПК – це шанс знову відчути неповторну атмосферу славетного містечка Los Santos і відвідати округ Blaine County, але тепер із роздільною здатністю 4K та частотою 60 кадр./с.', '<p>Коли молодий хуліган, колишній грабіжник банків і неврівноважений психопат починають свою гру з безумними ватажками кримінального світу, владою США та індустрією розваг, їм доведеться провернути парочку небезпечних пограбувань, щоб вижити в жорстокому місті, де не можна довіряти нікому, а особливо один одному.<br><br>Grand Theft Auto V для ПК – це шанс знову відчути неповторну атмосферу славетного містечка Los Santos і відвідати округ Blaine County, але тепер із роздільною здатністю 4K та частотою 60 кадр./с.<br><br>Гравці мають змогу налаштувати гру на ПК повністю на власний смак: можна змінити понад 25 окремих параметрів графіки, щоб вибрати потрібну якість текстур, складність побудови тіней, рівень теселяції поверхонь, ступінь згладжування тощо. Крім того, підтримується розширене налаштування миші та клавіатури. Також додано спеціальний повзунок для регулювання густоти населення (щоб вибрати інтенсивність трафіку автомобілів і кількість пішоходів на дорогах), підтримку двох і навіть трьох моніторів, можливість 3D-перегляду та автоматичне розпізнавання контролерів.<br><br>Grand Theft Auto V для ПК також має багатокористувацький режим Grand Theft Auto Online для 30 гравців і двох глядачів. Grand Theft Auto Online для ПК включає всі наявні оновлення ігрового процесу та вмісту, випущені компанією Rockstar від моменту створення Grand Theft Auto Online, зокрема режими пограбування та суперництва.<br><br>У Grand Theft Auto V і Grand Theft Auto Online для ПК можна ввімкнути вигляд від першої особи, що дає змогу зовсім по-новому оцінити неперевершені краєвиди містечка Los Santos і округу Blaine County.<br><br>У Grand Theft Auto V для ПК також з’явився Відеоредактор Rockstar – потужний набір креативних інструментів, за допомогою яких можна швидко та без зайвих зусиль записувати й редагувати відеоролики з ігрового процесу та ділитися ними з іншими гравцями Grand Theft Auto V і Grand Theft Auto Online. У Відеоредакторі Rockstar є режим режисера, який дає змогу гравцям проявити свою творчість, знімаючи власні відеоролики, акторами яких можуть стати персонажі гри, пішоходи й навіть тварини. У кріслі режисера гравці зможуть використовувати безліч розширених функцій камери, різноманітні ефекти редагування (як-от сповільнена чи пришвидшена зйомка) і низку цікавих фільтрів камери. Також можна додавати власну музику з радіостанцій GTAV та регулювати інтенсивність музичного супроводу. Готові відео можна вивантажувати в YouTube і на сайт Rockstar Games Social Club безпосередньо з Відеоредактора Rockstar.<br><br>Славетні виконавці пісень «The Alchemist» і «Oh No» повертаються як ведучі нової радіостанції – The Lab FM. На хвилях радіостанції можна почути нову ексклюзивну музика від дуету, головним натхненням для якої стала головна композиція до гри. Окрім інших, до створення музики для гри долучилися такі музиканти та гурти, як Earl Sweatshirt, Freddie Gibbs, Little Dragon, Killer Mike і Sam Herring із групи Future Islands. Гравці також можуть кататися містечком Los Santos і округом Blaine County під ритми власної музики на радіостанції Self Radio, де лунають записи, створені гравцями власноруч.</p>', 1, '63c06061088e9.jpg', '2023-01-06 16:50:37'),
(15, 'Fallout 4', 3, 349, 'Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming.', '<p>Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming.<br><br>As the sole survivor of Vault 111, you enter a world destroyed by nuclear war. Every second is a fight for survival, and every choice is yours. Only you can rebuild and determine the fate of the Wasteland. Welcome home.</p><h2>Key Features:</h2><ul><li><strong>Freedom and Liberty!</strong><br>Do whatever you want in a massive open world with hundreds of locations, characters, and quests. Join multiple factions vying for power or go it alone, the choices are all yours.<br><br>&nbsp;</li><li><strong>You’re S.P.E.C.I.A.L!</strong><br>Be whoever you want with the S.P.E.C.I.A.L. character system. From a Power Armored soldier to the charismatic smooth talker, you can choose from hundreds of Perks and develop your own playstyle.<br><br>&nbsp;</li><li><strong>Super Deluxe Pixels!</strong><br>An all-new next generation graphics and lighting engine brings to life the world of Fallout like never before. From the blasted forests of the Commonwealth to the ruins of Boston, every location is packed with dynamic detail.<br><br>&nbsp;</li><li><strong>Violence and V.A.T.S.!</strong><br>Intense first or third person combat can also be slowed down with the new dynamic Vault-Tec Assisted Targeting System (V.A.T.S) that lets you choose your attacks and enjoy cinematic carnage.<br><br>&nbsp;</li><li><strong>Collect and Build!</strong><br>Collect, upgrade, and build thousands of items in the most advanced crafting system ever. Weapons, armor, chemicals, and food are just the beginning - you can even build and manage entire settlements.</li></ul>', 1, '63c12af29e6cc.jpg', '2023-01-06 16:50:37'),
(16, 'ELDEN RING', 8, 799, 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', '<p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1245620/extras/ER_Steam_Gif_616x260.gif?t=1672223247\"><br><br>THE NEW FANTASY ACTION RPG.<br>Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.</p><h2>• A Vast World Full of Excitement</h2><p>A vast world where open fields with a variety of situations and huge dungeons with complex and three-dimensional designs are seamlessly connected. As you explore, the joy of discovering unknown and overwhelming threats await you, leading to a high sense of accomplishment.</p><h2>• Create your Own Character</h2><p>In addition to customizing the appearance of your character, you can freely combine the weapons, armor, and magic that you equip. You can develop your character according to your play style, such as increasing your muscle strength to become a strong warrior, or mastering magic.</p><h2>• An Epic Drama Born from a Myth</h2><p>A multilayered story told in fragments. An epic drama in which the various thoughts of the characters intersect in the Lands Between.</p><h2>• Unique Online Play that Loosely Connects You to Others</h2><p>In addition to multiplayer, where you can directly connect with other players and travel together, the game supports a unique asynchronous online element that allows you to feel the presence of others.</p>', 1, '63c12d63471f8.jpg', '2023-01-06 16:50:37'),
(17, 'Dota 2', 2, 0, 'Щодня мільйони гравців у всьому світі вступають у бій за одного з понад сотні героїв Dota. І немає значення, буде це 10-та година гри чи 1000-на, завжди знайдеться щось нове для відкриття. Dota 2 живе своїм життям завдяки постійній еволюції ігроладу, можливостей і героїв.', '<p><strong>Найпопулярніша гра в Steam.</strong><br>Щодня мільйони гравців у всьому світі вступають у бій за одного з понад сотні героїв Dota. І немає значення, буде це 10-та година гри чи 1000-на, завжди знайдеться щось нове для відкриття. Завдяки регулярним оновленням, які забезпечують постійну еволюцію ігроладу, можливостей та героїв, Dota 2 дійсно розпочала жити власним життям.<br><br><strong>Одне поле бою. Безмежні можливості.</strong><br>Коли справа доходить до різноманітності героїв, здібностей та потужних предметів, Dota має безкінечну кількість варіантів — немає двох однакових ігор. Будь-який герой може виконувати безліч ролей, а велика кількість предметів допоможе задовольнити всі потреби гри. Dota не надає обмежень на те, як грати — ви можете створити свій власний стиль гри.<br><br><strong>Усі герої безкоштовні.</strong><br>Змагальна рівновага — головна перлина Dota, і для того, щоби всі мали рівні можливості, основний вміст гри — як-от величезний вибір героїв — доступний усім гравцям. Шанувальники можуть купувати декоративні предмети для персонажів та веселі доповнення для їхнього світу, але все необхідне для гри включено ще до того, як ви приєднаєтеся до першого матчу.<br><br><strong>Приводьте своїх друзів та грайте разом.</strong><br>Dota різнобічна, і постійно розвивається, проте приєднатися ніколи не пізно.<br>Вивчайте основи гри в кооперативі з ботами. Відточуйте здібності в деморежимі героя. Пориньте в систему пошуку матчів, побудовану на поведінці та здібностях, котра гарантує, що для вас будуть підібрані правильні гравці в кожному матчі.</p>', 1, '63c0634661ebd.jpg', '2023-01-06 16:50:37'),
(19, 'The Witcher: Enhanced Edition Director\'s Cut', 6, 169, 'Станьте Ґеральтом з Рівії, професійним мисливцем на чудовиськ, який опинився в павутині інтриг, сплетеній силами, що змагаються за панування над світом. Робіть непрості рішення та давайте раду наслідкам у грі, в якій вам випаде пережити надзвичайну історію.', '<p>«Відьмак» — рольова гра, дія якої відбувається в похмурому фентезійному світі, де нема чорно-білої моралі. Прибравши межу між добром і злом, гра ставить наголос на розвитку сюжету та персонажа, використовуючи витончену тактичну систему бою в реальному часі.<br><br>Станьте відьмаком, Ґеральтом з Рівії, і пориньте в павутину інтриг, сплетену силами, які змагаються за панування над світом. Приймайте непрості рішення та давайте раду наслідкам у грі, в якій вам випаде пережити надзвичайну історію.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/20900/extras/W1_2.gif?t=1659616192\"></p><h2>ОСОБЛИВОСТІ</h2><p><strong>ҐЕРАЛЬТ З РІВІЇ: ЄДИНИЙ І НЕПОВТОРНИЙ</strong><br>&nbsp;</p><ul><li>Візьміть на себе роль Ґеральта з Рівії, харизматичного майстра бою на мечах та професійного мисливця на чудовиськ.<br>&nbsp;</li><li>На ваш вибір понад 250 спеціальних здібностей, бойових навичок і магічних сил, якими можна розвивати персонажа, що найкраще підійде для вашого ігрового стилю.</li></ul><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/20900/extras/W1_3.gif?t=1659616192\"></p><p><br><br><strong>ОРИГІНАЛЬНИЙ ФЕНТЕЗІЙНИЙ СВІТ ЗА МОТИВАМИ КНИГ</strong><br>&nbsp;</p><ul><li>Відвідайте суворий фантастичний світ — натхненний творами відомого польського письменника Анджея Сапковського — де немає однозначно чорного чи білого, слушного чи хибного.</li></ul><p><br><strong>НЕЛІНІЙНИЙ СЮЖЕТ</strong><br>&nbsp;</p><ul><li>Пориньте в епічну історію, сповнену несподіваних поворотів і неоднозначних моральних рішень, які безпосередньо впливають на розвиток сюжету.<br>&nbsp;</li><li>Виконуйте завдання різними способами та дивіться, як розповідь завершується однією з трьох різних кінцівок залежно від ваших дій.</li></ul><p><br><strong>ПРИГОЛОМШЛИВИЙ ТАКТИЧНИЙ ЕКШН</strong><br>&nbsp;</p><ul><li>Візьміть участь у складних, але інтуїтивно зрозумілих боях в режимі реального часу на основі справжніх середньовічних технік бою на мечах.<br>&nbsp;</li><li>Застосовуйте шість різних бойових стилів, десятки еліксирів, складну систему алхімії, модифікації зброї та потужну магію — все це додає тактичної глибини плавному бою в реальному часі.<br>&nbsp;</li><li>Технологія захоплення руху — у виконанні фахівців з середньовічного бою з відомої франкфуртської студії Metric Minds, завдяки чому створено 600 яскравих і достовірних бойових анімацій.</li></ul><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/20900/extras/W1_1.gif?t=1659616192\"></p><h2>ПРО ГРУ «ВІДЬМАК: ПОКРАЩЕНЕ ВИДАННЯ»</h2><p>«Відьмак: Покращене видання» містить весь улюблений ігролад, завдяки якому оригінальна гра отримала понад 90 нагород і вносить низку ігроладних і технічних удосконалень.</p><ul><li><strong>Ліпші діалоги та катсцени:</strong> понад 5000 відредагованих і повторно записаних реплік діалогів англійською мовою, повністю перероблена німецькомовна версія, а також понад 200 нових анімацій жестів створюють більш послідовні враження і змушують персонажів поводитися природніше в діалогах і катсценах.<br>&nbsp;</li><li><strong>Вдосконалений інвентар:</strong> Окремий мішок для алхімічних інгредієнтів, а також проста функція сортування та укладання спрощують процес організації і використання предметів.<br>&nbsp;</li><li><strong>Технічні вдосконалення:</strong> Значно скорочений час завантаження, покращена стабільність, точніше керування під час бою, швидше завантаження інвентарю, можливість увімкнути або вимкнути автоматичне збереження тощо.<br>&nbsp;</li><li><strong>Система розрізнення персонажів:</strong> Система випадковим чином змінює вигляд десятків ігрових моделей, щоб додати більше різноманітності чудовиськам і персонажам.</li></ul><p><br>«Відьмак: Покращене видання» також містить наступні додаткові матеріали:<br>&nbsp;</p><ul><li>Інтерактивний комікс<br>&nbsp;</li><li>Редактор пригод «Джин»<br>&nbsp;</li><li>Дві нові пригоди на понад 5 годин гри<br>&nbsp;</li><li>Офіційний саундтрек<br>&nbsp;</li><li>Альбом «Музика натхненна Відьмаком»<br>&nbsp;</li><li>Документальні відео про розробку гри<br>&nbsp;</li><li>Офіційний ігровий посібник<br>&nbsp;</li><li>Дві мапи світу «Відьмака»</li></ul>', 1, '63c135847d79d.jpg', '2023-01-06 16:50:37'),
(20, 'Assassin’s Creed® IV Black Flag™', 18, 610, 'The year is 1715. Pirates rule the Caribbean and have established their own lawless Republic where corruption, greediness and cruelty are commonplace.Among these outlaws is a brash young captain named Edward Kenway.', '<p>The year is 1715. Pirates rule the Caribbean and have established their own lawless Republic where corruption, greediness and cruelty are commonplace.<br><br>Among these outlaws is a brash young captain named Edward Kenway. His fight for glory has earned him the respect of legends like Blackbeard, but also drawn him into the ancient war between Assassins and Templars, a war that may destroy everything the pirates have built.<br><br>Welcome to the Golden Age of Piracy.</p><h2>Key Features</h2><p><br>&nbsp;</p><ul><li><strong>A BRASH REBEL ASSASSIN</strong> Become Edward Kenway, a charismatic yet brutal pirate captain, trained by Assassins. Edward can effortlessly switch between the Hidden Blade of the Assassin’s Order and all new weaponry including four flintlock pistols and dual cutlass swords.</li></ul><p><br>&nbsp;</p><ul><li><strong>EXPLORE AN OPEN WORLD FILLED WITH OPPORTUNITIES</strong> Discover the largest and most diverse Assassin’s Creed world ever created. From Kingston to Nassau, explore over 75 unique locations where you can live the life of a pirate including:</li><li>Loot underwater shipwrecks<br>&nbsp;</li><li>Assassinate Templars in blossoming cities<br>&nbsp;</li><li>Hunt for rare animals in untamed jungles<br>&nbsp;</li><li>Search for treasure in lost ruins<br>&nbsp;</li><li>Escape to hidden coves</li></ul><p><br>&nbsp;</p><ul><li><strong>BECOME THE MOST FEARED PIRATE IN THE CARIBBEAN</strong> Command your ship, the <i>Jackdaw</i>, and strike fear in all who see her. Plunder and pillage to upgrade the <i>Jackdaw </i>with ammunition and equipment needed to fight off enemy ships. The ship’s improvements are critical to Edward’s progression through the game. Attack and seamlessly board massive galleons, recruit sailors to join your crew and embark on an epic and infamous adventure.</li></ul><p><br>&nbsp;</p><ul><li><strong>EXPERIENCE THE GRITTY REALITY BEHIND THE PIRATE FANTASY</strong> Stand amongst legendary names such as Blackbeard, Calico Jack and Benjamin Hornigold, as you establish a lawless Republic in the Bahamas and relive the truly explosive events that defined the Golden Age of Piracy.</li></ul><p><br>&nbsp;</p><ul><li><strong>THE BEST ASSASSIN’S CREED MULTIPLAYER EXPERIENCE TO DATE</strong> Put your assassination skills to test and embark on an online journey throughout the Caribbean. Discover a brand new set of pirate characters, and explore exotic and colourful locations. Additionally, create your own game experience with the new Game Lab feature – craft your own multiplayer mode by choosing abilities, rules and bonuses. Play and share your newly created mode with your friends.</li></ul>', 1, '63c133e42a17b.jpg', '2023-01-06 16:50:37'),
(23, 'Counter-Strike: Global Offensive', 2, 0, 'Counter-Strike: Global Offensive (CS:GO) продовжує розвивати командний бойовий ігролад, що зробив серію успішною багато років тому. CS:GO пропонує нові мапи, персонажів, зброю, ігрові режими, а також оновлені версії класичного вмісту (de_dust2 тощо).', '<p>Counter-Strike: Global Offensive (CS:GO) продовжує розвивати командний бойовий ігролад, що зробив серію успішною багато років тому.<br><br>CS:GO пропонує нові мапи, персонажів, зброю, ігрові режими, а також оновлені версії класичного вмісту (de_dust2 тощо).<br><br>Даґ Ломбарді з Valve сказав: «Гра Counter-Strike захопила ігрову індустрію зненацька. Мод, який мав мало шансів на успіх, став найпопулярнішою грою-бойовиком для ПК майже одразу після виходу в серпні 1999-го. Протягом наступних 12 років CS продовжувала очолювати список ігор із найбільшою кількістю гравців, у неї грали на найбільших змагальних турнірах, і вона продалася накладом у 25 мільйонів копій (уся франшиза). CS:GO обіцяє розширити відзначені нагородами ігрові механіки й надати можливість грати не лише на ПК, але й на сучасних ігрових консолях і комп’ютерах на операційній системі Mac».</p>', 1, '63c0642871504.jpg', '2023-01-12 19:48:56'),
(24, 'DARK SOULS™ III', 8, 900, 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!', '<p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/374320/extras/DarkSoulsIII_GIF1.gif?t=1671097812\"><br>Get the DARK SOULS™ III Season Pass now and challenge yourself with all the available content!<br><br>Winner of gamescom award 2015 \"Best RPG\" and over 35 E3 2015 Awards and Nominations.<br><br>DARK SOULS™ III continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series.<br><br>As fires fade and the world falls into ruin, journey into a universe filled with more colossal enemies and environments. Players will be immersed into a world of epic atmosphere and darkness through faster gameplay and amplified combat intensity. Fans and newcomers alike will get lost in the game hallmark rewarding gameplay and immersive graphics.<br>Now only embers remain… Prepare yourself once more and Embrace The Darkness!<br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/374320/extras/DarkSoulsIII_GIF2.gif?t=1671097812\"></p>', 1, '63c13175befac.jpg', '2023-01-13 10:24:53'),
(25, 'Hogwarts Legacy', 11, 799, 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', '<p>Hogwarts Legacy is an open-world action RPG set in the world first introduced in the Harry Potter books. Embark on a journey through familiar and new locations as you explore and discover magical beasts, customize your character and craft potions, master spell casting, upgrade talents and become the wizard you want to be.<br><br>Experience Hogwarts in the 1800s. Your character is a student who holds the key to an ancient secret that threatens to tear the wizarding world apart. Make allies, battle Dark wizards, and ultimately decide the fate of the wizarding world. Your legacy is what you make of it. Live the Unwritten.</p>', 1, '63c1323e89242.jpg', '2023-01-13 10:28:14'),
(26, 'Assassin\'s Creed® Unity', 18, 459, 'Assassin’s Creed® Unity tells the story of Arno, a young man who embarks upon an extraordinary journey to expose the true powers behind the French Revolution. In the brand new co-op mode, you and your friends will also be thrown in the middle of a ruthless struggle for the fate of a nation.', '<p>Assassin’s Creed® Unity is an action/adventure game set in the city of Paris during one of its darkest hours, the French Revolution. Take ownership of the story by customising Arno\'s equipement to make the experience unique to you, both visually and mechanically. In addition to an epic single-player experience, Assassin’s Creed Unity delivers the excitement of playing with up to three friends through online cooperative gameplay in specific missions. Throughout the game, take part in one of the most pivotal moments of French history in a compelling storyline and a breath-taking playground that brought you the city of lights of today.</p>', 1, '63c1334408e09.jpg', '2023-01-13 10:32:36'),
(28, 'Stray', 20, 499, 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.', '<p>Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten city.<br><br>Stray is a third-person cat adventure game set amidst the detailed, neon-lit alleys of a decaying cybercity and the murky environments of its seedy underbelly. Roam surroundings high and low, defend against unforeseen threats and solve the mysteries of this unwelcoming place inhabited by curious droids and dangerous creatures.<br><br>See the world through the eyes of a cat and interact with the environment in playful ways. Be stealthy, nimble, silly, and sometimes as annoying as possible with the strange inhabitants of this mysterious world.<br><br>Along the way, the cat befriends a small flying drone, known only as B-12. With the help of this newfound companion, the duo must find a way out.<br><br>Stray is developed by BlueTwelve Studio, a small team from the south of France mostly made up of cats and a handful of humans.</p>', 1, '63c13950f2b9d.jpg', '2023-01-13 10:58:25'),
(29, 'Wallpaper Engine', 21, 79, 'Use stunning live wallpapers on your desktop. Animate your own images to create new wallpapers or import videos/websites and share them on the Steam Workshop!', '<p>Wallpaper Engine enables you to use live wallpapers on your Windows desktop. Various types of animated wallpapers are supported, including 3D and 2D animations, websites, videos and even certain applications. Choose an existing wallpaper or create your own and share it on the Steam Workshop! In addition to that, you can use the free Wallpaper Engine companion app for Android to transfer your favorite wallpapers to your Android mobile device and take your live wallpapers on the go.<br><br><strong>NEW:</strong> Use the free Android companion app to transfer your favorite wallpapers to your Android mobile device.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/431960/extras/title_features.png?t=1665921297\"><br><br>&nbsp;</p><ul><li>Bring your desktop wallpapers alive with realtime graphics, videos, applications or websites.<br>&nbsp;</li><li>Use animated screensavers while you are away from your computer.<br>&nbsp;</li><li>Personalize animated wallpapers with your favorite colors.<br>&nbsp;</li><li>Use interactive wallpapers that can be controlled with your mouse.<br>&nbsp;</li><li>Many aspect ratios and native resolutions supported including 16:9, 21:9, 16:10, 4:3.<br>&nbsp;</li><li>Multi monitor environments are supported.<br>&nbsp;</li><li>Wallpapers will pause while playing games to save performance.<br>&nbsp;</li><li>Create your own animated wallpapers in the Wallpaper Engine Editor.<br>&nbsp;</li><li>Animate new live wallpapers from basic images or import HTML or video files for the wallpaper.<br>&nbsp;</li><li>Use the Steam Workshop to share and download wallpapers for free.<br>&nbsp;</li><li>Wallpaper Engine can be used at the same time as any other Steam game or application.<br>&nbsp;</li><li>Supported video formats: mp4, WebM, avi, m4v, mov, wmv (for local files, Workshop only allows mp4).<br>&nbsp;</li><li>Use the free Android companion app to take your favorite scene and video wallpapers on the go.<br>&nbsp;</li><li>Support for Razer Chroma and Corsair iCUE.</li></ul><p><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/431960/extras/partners.png?t=1665921297\"><br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/431960/extras/title_performance.png?t=1665921297\"></p><h2>&nbsp;</h2><p>Wallpaper Engine aims to deliver an entertaining experience while using as few system resources as possible. You can choose to automatically pause or completely stop the wallpaper while using another application or playing fullscreen (including borderless windowed mode) to not distract or hinder you while playing a game or working. Many options to tweak quality and performance allow you to make Wallpaper Engine fit your computer perfectly. As a general rule of thumb, 3D, 2D and video based wallpapers will perform best, while websites and applications will require more resources from your system. Having a dedicated GPU is highly recommended, but not required.</p><h2>&nbsp;</h2><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/431960/extras/title_workshop.png?t=1665921297\"></p><h2>&nbsp;</h2><p>Choose from over a million free wallpapers from the Steam Workshop with new wallpapers being uploaded every day! Can\'t find a wallpaper that fits your mood? Let your imagination go wild by using the Wallpaper Engine Editor to create your own animated wallpapers from images, videos, websites or applications. A large selection of presets and effects allow you to animate your own images and share them on the Steam Workshop or to just use them for yourself.</p>', 1, '63c13b09c39fa.jpg', '2023-01-13 11:05:45'),
(30, 'Dying Light', 22, 209, 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.', '<p>From the creators of hit titles Dead Island and Call of Juarez. Winner of over 50 industry awards and nominations. The game whose uncompromising approach to gameplay set new standards for first-person zombie games. Still supported with new content and free community events years after the release.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/239140/extras/New_GIF_Steam_V4_ENG.gif?t=1670429300\"><br><br>Survive in a city beset by a zombie virus! Discover the hard choice you will have to make on your secret mission. Will loyalty to your superiors prove stronger than the will to save the survivors? The choice is yours…<br><br><strong>VAST OPEN WORLD</strong><br>Roam the city with unprecedented freedom and bask in its unique atmosphere. Use parkour to scale every building and reach remote areas.<br><br><strong>CREATIVE COMBAT</strong><br>Engage in gory combat and discover limitless options to confront your enemies. Use the environment paired with various weapon types and abilities to gain an advantage.<br><br><strong>DAY AND NIGHT CYCLE</strong><br>Experience the dramatic shift in the world, as you change from a hunter to hunted at sundown. Face the coming threat or run away without wasting your time to look behind.<br><br><strong>4-PLAYER CO-OP</strong><br>Join forces with other players and raise your chances of survival in an exciting co-op mode. Tackle the story campaign together and take part in regularly scheduled community challenges.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/239140/extras/steam_footer_dying_light.jpg?t=1670429300\"></p>', 1, '63c13c626960c.jpg', '2023-01-13 11:11:30');
INSERT INTO `product` (`id`, `name`, `publisher_id`, `price`, `short_description`, `description`, `visible`, `photo`, `release_date`) VALUES
(31, 'Dying Light 2 Stay Human', 22, 899, 'Вірус переміг, і настали Темні Віки. Місто, останній бастіон людства, на межі краху. Скористайтеся своєю спритністю та бойовими навичками, щоб вижити і змінити світ. Кожен ваш вибір має значення.', '<p>20 років тому в Харрані ми боролися з вірусом — і програли. І тепер ми програємо знову. Місто, останнє велике людське поселення, потерпає між міжусобиць. Для цивілізації наступили нові Темні Віки. І все ж таки в нас залишилася надія.<br><br>Ви — мандрівник, здатний змінити долю Міста. Але вам довелося заплатити за свої неймовірні здібності велику ціну. Змучені спогадами, що не підлягають вашому розумінню, ви рушаєте на пошуки істини... й опиняєтеся на полі бою. Прокачуйте навички, адже щоб здолати ворогів та знайти союзників, вам знадобляться як кулаки, так і розум. Розкрийте темні таємниці можновладців та оберіть власний шлях. Та що б ви не робили, пам’ятайте: треба залишатися людиною.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/534380/extras/dl_2_sh_steam.gif?t=1673532560\"></p><h2>ВЕЛИКИЙ ВІДКРИТИЙ СВІТ</h2><p>Станьте частиною міста, що переживає важкі часи. Шукайте різні шляхи та приховані проходи на різних рівнях та локаціях.</p><h2>КМІТЛИВІСТЬ ТА ЖОРСТОКІСТЬ</h2><p>Використовуйте навички паркуру, щоб отримати перевагу й найжорстокішому бою. Кмітливість, пастки та саморобна зброя стануть вашими найкращими друзями.</p><h2>ЗМІНА ДНЯ І НОЧІ</h2><p>Дочекайтесь ночі, щоб вирушити у темні лігвища інфікованих. Сонячне світло змушує їх ховатися, але вночі чудовиська виходять на полювання, а ви можете обшукати їхні укриття.</p><h2>ВАШ ВИБІР ТА НАСЛІДКИ</h2><p>Ваші рішення та дії визначають майбутнє Міста. Враховуйте баланс та вирішуйте, що робити, і отримуйте неповторний досвід.</p><h2>КООПЕРАТИВНА ГРА 2-4 ГРАВЦІВ</h2><p>Грайте командою до чотирьох гравців. Починайте власні ігри або приєднуйтеся до ігор інших гравців та спостерігайте, як прийняті ними рішення змінюють хід гри.<br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/534380/extras/steam_footer_dying_light2.jpg?t=1673532560\"></p>', 1, '63c13cc4e6040.jpg', '2023-01-13 11:13:08'),
(32, 'PAYDAY 2', 23, 169, 'PAYDAY 2 is an action-packed, four-player co-op shooter that once again lets gamers don the masks of the original PAYDAY crew - Dallas, Hoxton, Wolf and Chains - as they descend on Washington DC for an epic crime spree.', '<p>PAYDAY 2 is an action-packed, four-player co-op shooter that once again lets gamers don the masks of the original PAYDAY crew - Dallas, Hoxton, Wolf and Chains - as they descend on Washington DC for an epic crime spree.<br><br>The CRIMENET network offers a huge range of dynamic contracts, and players are free to choose anything from small-time convenience store hits or kidnappings, to big league cyber-crime or emptying out major bank vaults for that epic PAYDAY. While in DC, why not participate in the local community, and run a few political errands?<br><br>Up to four friends co-operate on the hits, and as the crew progresses the jobs become bigger, better and more rewarding. Along with earning more money and becoming a legendary criminal comes a character customization and crafting system that lets crews build and customize their own guns and gear.</p><h2>Key Features</h2><ul><li>Rob Banks, Get Paid – Players must choose their crew carefully, because when the job goes down they will need the right mix of skills on their side.<br>&nbsp;</li><li>CRIMENET – The dynamic contract database lets gamers pick and choose from available jobs by connecting with local contacts such as Vlad the Ukrainian, shady politician \"The Elephant\", and South American drug trafficker Hector, all with their own agenda and best interests in mind.<br>&nbsp;</li><li>PAYDAY Gunplay and Mechanics on a New Level – Firing weapons and zip tying civilians never felt so good.<br>&nbsp;</li><li>Dynamic Scenarios – No heist ever plays out the same way twice. Every single scenario has random geometry or even rare events.<br>&nbsp;</li><li>Choose Your Skills – As players progress they can invest in any of five special Skill Trees: Mastermind, Enforcer, Ghost, Technician and Fugitive. Each features a deep customization tree of associated skills and equipment to master, and they can be mixed and matched to create the ultimate heister.<br>&nbsp;</li><li>More Masks than Ever – PAYDAY 2 features a completely new mask system, giving players the ability to craft their own unique mask with a pattern and color of their choice, resulting in millions of different combinations.<br>&nbsp;</li><li>Weapons and Modifications – A brand new arsenal for the serious heister, covering everything from sniper and assault rifles to compact PDWs and SMGs. Once you\'ve settled for a favorite, you can modify it with optics, suppressors, fore grips, reticles, barrels, frames, stocks and more, all of which will affect the performance of your weapon. There are also purely aesthetic enhancements - why not go for the drug lord look with polished walnut grips for your nine?<br>&nbsp;</li><li>Play It Your Way – Each job allows for multiple approaches, such as slow and stealthy ambushes or running in guns blazing. Hit the target any way you want, each approach will provide a different experience.<br>&nbsp;</li><li>A Long History of Additional Content – More than 70 updates since release, including new heists, characters, weapons and other gameplay features like driving cars and forklifts.</li></ul>', 1, '63c13e5e902b6.jpg', '2023-01-13 11:19:58'),
(33, 'Resident Evil Village', 24, 999, 'Experience survival horror like never before in the 8th major installment in the Resident Evil franchise - Resident Evil Village. With detailed graphics, intense first-person action and masterful storytelling, the terror has never felt more realistic.', '<p>Experience survival horror like never before in the eighth major installment in the storied Resident Evil franchise - <i>Resident Evil Village</i>.<br><br>Set a few years after the horrifying events in the critically acclaimed <i>Resident Evil 7 biohazard</i>, the all-new storyline begins with Ethan Winters and his wife Mia living peacefully in a new location, free from their past nightmares. Just as they are building their new life together, tragedy befalls them once again.<br><br>&nbsp;</p><ul><li><strong>First-Person Action</strong> – Players will assume the role of Ethan Winters and experience every up-close battle and terrifying pursuit through a first-person perspective.<br>&nbsp;</li><li><strong>Familiar Faces and New Foes</strong> – Chris Redfield has typically been a hero in the Resident Evil series, but his appearance in Resident Evil Village seemingly shrouds him in sinister motives. A host of new adversaries inhabiting the village will relentlessly hunt Ethan and hinder his every move as he attempts to make sense of the new nightmare he finds himself in.</li></ul>', 1, '63c13f2a23b05.jpg', '2023-01-13 11:23:22'),
(34, 'Resident Evil 7 Biohazard', 24, 649, 'Fear and isolation seep through the walls of an abandoned southern farmhouse. \"7\" marks a new beginning for survival horror with the “Isolated View” of the visceral new first-person perspective.', '<p>Resident Evil 7 biohazard is the next major entry in the renowned Resident Evil series and sets a new course for the franchise as it leverages its roots and opens the door to a truly terrifying horror experience. A dramatic new shift for the series to first person view in a photorealistic style powered by Capcom’s new RE Engine, Resident Evil 7 delivers an unprecedented level of immersion that brings the thrilling horror up close and personal.<br><br>Set in modern day rural America and taking place after the dramatic events of Resident Evil® 6, players experience the terror directly from the first person perspective. Resident Evil 7 embodies the series’ signature gameplay elements of exploration and tense atmosphere that first coined “survival horror” some twenty years ago; meanwhile, a complete refresh of gameplay systems simultaneously propels the survival horror experience to the next level.</p>', 1, '63c142128b1a9.jpg', '2023-01-13 11:35:46'),
(35, 'Resident Evil 2', 24, 1199, 'A deadly virus engulfs the residents of Raccoon City in September of 1998, plunging the city into chaos as flesh eating zombies roam the streets for survivors. An unparalleled adrenaline rush, gripping storyline, and unimaginable horrors await you. Witness the return of Resident Evil 2.', '<p>The genre-defining masterpiece Resident Evil 2 returns, completely rebuilt from the ground up for a deeper narrative experience. Using Capcom’s proprietary RE Engine, Resident Evil 2 offers a fresh take on the classic survival horror saga with breathtakingly realistic visuals, heart-pounding immersive audio, a new over-the-shoulder camera, and modernized controls on top of gameplay modes from the original game.<br><br>In Resident Evil 2, the classic action, tense exploration, and puzzle solving gameplay that defined the Resident Evil series returns. Players join rookie police officer Leon Kennedy and college student Claire Redfield, who are thrust together by a disastrous outbreak in Raccoon City that transformed its population into deadly zombies. Both Leon and Claire have their own separate playable campaigns, allowing players to see the story from both characters’ perspectives. The fate of these two fan favorite characters is in players hands as they work together to survive and get to the bottom of what is behind the terrifying attack on the city. Will they make it out alive?<br><br>&nbsp;</p><ul><li><strong>A spine-chilling reimagining of a horror classic</strong> - Based on the original release in 1998, the new game has been completely rebuilt from the ground up for a deeper narrative experience.<br>&nbsp;</li><li><strong>A whole new perspective</strong> – New over-the-shoulder camera mode and modernized control scheme creates a more modern take on the survival horror experience and offers players a trip down memory lane with the original gameplay modes from the 1998 release.<br>&nbsp;</li><li><strong>Terrifyingly realistic visuals</strong> – Built on Capcom’s proprietary RE Engine, Resident Evil 2 delivers breathtakingly photorealistic visuals whilst stunning lighting creates an up-close, intense and atmospheric experience as players roam the corridors of the Raccoon City Police Department (RPD).<br>&nbsp;</li><li><strong>Face the grotesque hordes</strong> – Zombies are brought to life with a horrifyingly realistic wet gore effect as they react in real time taking instant visible damage, making every bullet count.<br>&nbsp;</li><li><strong>Iconic series defining gameplay</strong> – Engage in frenzied combat with enemies, explore dark menacing corridors, solve puzzles to access areas and collect and use items discovered around the environment in a terrifying constant fight for survival.<br>&nbsp;</li><li><strong>See favorite characters in a whole new light</strong> - Join rookie police officer Leon S. Kennedy on his first day in the job and college student Claire Redfield, who is searching for her brother amidst a terrifying zombie epidemic.<br>&nbsp;</li><li><strong>Step into the rookie shoes of both heroes</strong> - Enjoy separately playable campaigns for both Leon and Claire, allowing players to see the story from both characters’ perspective.</li></ul>', 1, '63c143439bcc9.jpg', '2023-01-13 11:40:51'),
(36, 'Resident Evil 3', 24, 999, 'Jill Valentine is one of the last remaining people in Raccoon City to witness the atrocities Umbrella performed. To stop her, Umbrella unleashes their ultimate secret weapon: Nemesis! Also includes Resident Evil Resistance, a new 1 vs 4 online multiplayer game set in the Resident Evil universe.', '<p>Jill Valentine is one of the last remaining people in Raccoon City to witness the atrocities Umbrella performed. To stop her, Umbrella unleashes their ultimate secret weapon; Nemesis!<br><br>Also includes Resident Evil Resistance, a new 1 vs 4 online multiplayer game set in the Resident Evil universe where four survivors face-off against a sinister Mastermind.</p>', 1, '63c143a652216.jpg', '2023-01-13 11:42:30'),
(37, 'Assassin\'s Creed Valhalla', 18, 915, 'Станьте легендарним вікінгом і прокладіть свій шлях до слави. Здійснюйте набіги на ворогів, розбудовуйте поселення й укріплюйте свою політичну міць.', '<p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/2208920/extras/KeyFeature_Banner_1_Intro.png?t=1671135934\"><br><br>Станьте Ейвором, легендарним вікінгом-завойовником, і прокладіть свій шлях до слави.<br><br>– Очолюйте грандіозні набіги вікінгів на саксонські війська та фортеці.<br>– Відродіть інтуїтивний бойовий стиль вікінгів, одночасно використовуючи два типи потужної зброї.<br>– Отримайте змогу обирати супротивників із переліку, найбільшого в історії гри Assassin\'s Creed.<br>– Самостійно приймайте рішення щодо розвитку вашого героя й поселення клану.<br>– Відкрийте для себе період Темних віків і дослідіть унікальний світ, що простягається від крутих берегів Норвегії до прекрасних англійських королівств.<br><br>Пропозиція включає Forgotten Saga&nbsp;– новий БЕЗКОШТОВНИЙ ігровий режим rogue-lite для всіх гравців Assassin\'s Creed® Valhalla.</p>', 1, '63c144dc2a041.jpg', '2023-01-13 11:47:40'),
(38, 'DEATH STRANDING', 25, 299, 'Роботи легендарного творця ігор Хідео Кодзіма завжди унікальні, і сьогодні до них додалася ця надзвичайна DIRECTOR’S CUT. Ви — Сем Бріджес, і лише ви можете врятувати людство, згуртувавши останніх людей сплюндрованої Америки. Чи вдасться вам знову об’єднати', '<p>Роботи легендарного творця ігор Хідео Кодзіма завжди унікальні, і сьогодні до них додалася ця надзвичайна DIRECTOR’S CUT.<br><br>У майбутньому стається таємнича подія під назвою «Death Stranding», «Сплетіння смерті», яка утворює прохід між світами живих та мертвих. І страхітливі створіння зі світу мертвих захоплюють зруйнований світ, сповнений нещасних та відірваних одне від одного людей.<br><br>Ви — Сем Бріджес, і лише ви можете врятувати людство, згуртувавши останніх людей сплюндрованої Америки.<br>Чи вдасться вам знову об’єднати розірваний на шматки світ, крок за кроком?<br><br>DEATH STRANDING DIRECTOR’S CUT для ПК — це ВИСОКА ЧАСТОТА КАДРІВ, РЕЖИМ ФОТОЗЙОМКИ та ПІДТРИМКА МОНІТОРІВ ULTRA-WIDE Також присутній контент, спільний з HALF-LIFE від Valve Corporation та Cyberpunk 2077 від CD Projekt Red. Підтримуйте зв’язок з іншими гравцями в світі завдяки Social Strand System™.<br><br>До всіх копій гри також додаються:<br>• Уривки з електронного артбуку «Світ гри DEATH STRANDING» (в-во Titan Books)<br>• Нашивки для рюкзака<br>• Костюм Бріджеса «Особлива команда доставки» (золотий)<br>• Кастомізація для капсули BB pod (хіральне золото)<br>• Силові рукавиці (золоті)<br>• Костюм Бріджеса «Особлива команда доставки» (срібний)<br>• Кастомізація для капсули BB pod (омнірефлектор)<br>• Силові рукавиці (срібні)</p>', 1, '63c14594df7a4.jpg', '2023-01-13 11:50:44'),
(39, 'The Elder Scrolls IV: Oblivion', 3, 380, 'The Elder Scrolls IV: Oblivion® Game of the Year Edition presents one of the best RPGs of all time like never before. Step inside the most richly detailed and vibrant game-world ever created. With a powerful combination of freeform gameplay and unprecedented graphics, you can unravel the main', '<p>The Elder Scrolls IV: Oblivion® Game of the Year Edition presents one of the best RPGs of all time like never before. Step inside the most richly detailed and vibrant game-world ever created. With a powerful combination of freeform gameplay and unprecedented graphics, you can unravel the main quest at your own pace or explore the vast world and find your own challenges.<br>Also included in the Game of the Year edition are Knights of the Nine and the Shivering Isles expansion, adding new and unique quests and content to the already massive world of Oblivion. See why critics called Oblivion the Best Game of 2006.<br>Key features:<br>&nbsp;</p><ul><li><strong>Live Another Life in Another World</strong><br><br>Create and play any character you can imagine, from the noble warrior to the sinister assassin to the wizened sorcerer.<br>&nbsp;</li><li><strong>First Person Melee and Magic</strong><br><br>An all-new combat and magic system brings first person role-playing to a new level of intensity where you feel every blow.<br>&nbsp;</li><li><strong>Radiant AI</strong><br><br>This groundbreaking AI system gives Oblivion\'s characters full 24/7 schedules and the ability to make their own choices based on the world around them. Non-player characters eat, sleep, and complete goals all on their own.<br>&nbsp;</li><li><strong>New Lands to Explore</strong><br><br>In the Shivering Isles expansion, see a world created in Sheogorath\'s own image, one divided between Mania and Dementia and unlike anything you\'ve experienced in Oblivion.<br>&nbsp;</li><li><strong>Challenging new foes</strong><br><br>Battle the denizens of Shivering Isles, a land filled with hideous insects, Flesh Atronachs, skeletal Shambles, amphibious Grummites, and many more.<br>&nbsp;</li><li><strong>Begin a New Faction</strong><br><br>The Knights of the Nine have long been disbanded. Reclaim their former glory as you traverse the far reaches of Cyrodill across an epic quest line.<br>&nbsp;</li></ul><p>This English-only Deluxe version includes the following Downloadable Content (DLC)<br>&nbsp;</p><ul><li><strong>Fighter\'s Stronghold Expansion</strong><br><br>Live the life of a noble warrior in this expansive castle with private quarters, grand dining hall, and a wine cellar.<br>&nbsp;</li><li><strong>Knights of the Nine Quest</strong><br><br>Vanquish the evil that has been released upon the land. New dungeons, characters, quests, and mysteries await.<br>&nbsp;</li><li><strong>Spell Tome Treasures</strong><br><br>Get these books and find low and high-level spells, as well as new powerful spells with multiple effects added.<br>&nbsp;</li><li><strong>Vile Lair</strong><br><br>An underwater multilevel hideout for evil players to find refuge, providing your character with safe haven.<br>&nbsp;</li><li><strong>Mehrune\'s Razor</strong><br><br>Conquer one of the deepest and most challenging dungeons in all of Cyrodiil to claim this fearsome weapon.<br>&nbsp;</li><li><strong>The Thieves Den</strong><br><br>Uncover a famous pirate\'s lost ship and claim it for your own. Designed for stealth-based characters.<br>&nbsp;</li><li><strong>Wizard\'s Tower</strong><br><br>In the frozen mountains of Cyrodiil stands Frostcrag Spire, a tower of wonders for your magic-oriented character.<br>&nbsp;</li><li><strong>Orrery</strong><br><br>Harness the power of the stars. Rebuild the Orrery to unlock the secrets of this Mages Guild Inner Sanctum.<br>&nbsp;</li><li><strong>Horse Armor Pack</strong><br><br>Tamriel is a dangerous place. Protect your horse from danger with this beautiful handcrafted armor.</li></ul>', 1, '63c14679de7a0.jpg', '2023-01-13 11:54:33'),
(40, 'Rust', 26, 632, 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', '<p>Єдиною метою в Rust є - вижити.<br><br>Щоб зробити це, вам доведеться подолати такі негаразди, як голод, спрага та холод. Розпаліть вогонь. Побудуйте сховище. Вбивайте звірів заради м\'яса. Захищайте себе від інших гравців та вбивайте їх заради м\'яса. Створюйте команди з іншими гравцями та формуйте місто.<br>Робіть що завгодно, щоб вижити.</p>', 1, '63c14b64a3d6d.jpg', '2023-01-13 12:15:32'),
(41, 'S.T.A.L.K.E.R. 2: Heart of Chornobyl', 27, 895, 'Відкрийте для себе Чорнобильську Зону Відчуження сповнену небезпечних ворогів, смертельних аномалій та потужних артефактів. Напишіть свою власну епічну історію, прокладаючи свій шлях до Серця Чорнобиля.', '<p>Чорнобильська Зона Відчуження відчутно змінилася після другого вибуху у 2006 році. Жорстокі мутанти, смертельні аномалії та фракції, що ворогують між собою зробили Зону місцем, де дуже важко вижити. Тим не менш, артефакти неймовірної цінності вабили багатьох людей, котрих кличуть сталкерами. Вони пробиралися в Зону на свій страх та ризик, прагнучи розбагатіти на цьому або навіть знайти Істину, що схована десь у Серці Чорнобиля.</p><h2>ЕПІЧНА НЕЛІНІЙНА ІСТОРІЯ В БЕЗШОВНОМУ ВІДКРИТОМУ СВІТІ</h2><p>Візьміть на себе роль сталкера-одинака та досліджуйте безшовний фотореалістичний світ радіоактивної зони площею 64 км² з різноманітним оточенням, яке дасть вам можливість поглянути на пост-апокаліптичну атмосферу з різних сторін. Прокладайте свій шлях крізь Зону, визначаючи власну долю. Пройдіть незвіданими стежками вкрай розгалуженої історії.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1643320/extras/S.T.A.L.K.E.R.2_the_Zone.gif?t=1672344498\"></p><h2>РІЗНОМАНІТНІ ВОРОГИ ТА СОТНІ КОМБІНАЦІЙ ЗБРОЇ</h2><p>Зустріньте представників різних фракцій та оберіть кому запропонуєте дружбу, а кому — кулю. Беріть участь у запеклих перестрілках із різними ворогами, що використовують різноманітні тактики, прагнучи вас перехитрити. Обирайте найкращий варіант вогнепальної зброї з понад 30 видів із численними модифікаціями, котрі дають можливість для створення сотень унікальних смертоносних комбінацій.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1643320/extras/S.T.A.L.K.E.R.2_gunfight.gif?t=1672344498\"></p><h2>ЛЕГЕНДАРНІ МУТАНТИ З РІЗНОМАНІТНИМИ МОДЕЛЯМИ ПОВЕДІНКИ</h2><p>Приготуйтесь зустрітися з жахливими мутованими створіннями, які намагатимуться вас вбити, керуючись різними моделями поведінки. Кожен мутант має різні підвиди, що робить їх поведінку ще менш передбачуваною. Найбільша небезпека чекає на вас в районах з лігвищами, де мешкає велика кількість мутантів, що ведуть полювання великими групами.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1643320/extras/S.T.A.L.K.E.R.2_bloodsucker.gif?t=1672344498\"></p><h2>АРТЕФАКТИ НЕЙМОВІРНОЇ ЦІННОСТІ ТА БЕЗЖАЛЬНІ АНОМАЛІЇ</h2><p>Найцінніші артефакти та секрети Зони приховані в найнебезпечніших місцях. Стережіться смертельних аномалій та унікальних руйнівних архі-аномалій, коли полюєте за цінними артефактами, що розкидані в Зоні. Чи наважитеся ви розкрити таємниці Зони, що забрали безліч життів до вас?<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1643320/extras/S.T.A.L.K.E.R.2_artifact_hunting.gif?t=1672344498\"></p><h2>Відкрийте для себе легендарний всесвіт S.T.A.L.K.E.R. і отримайте незабутній досвід:</h2><ul><li>Унікальний геймплей, який базується на суміші шутеру від першої особи, хорору та імерсивного симулятору<br>&nbsp;</li><li>Нелінійна історія з різноманітними варіантами розвитку, що приведуть вас до однієї з декількох кінцівок<br>&nbsp;</li><li>Графіка нового покоління створена з використанням передових технологій сканування та фотограмметрії<br>&nbsp;</li><li>Сучасні системи штучного інтелекту, які не залишать байдужими навіть найзагартованіших гравців<br>&nbsp;</li><li>Система симуляції життя «A-life 2.0» зробить ігровий світ живим, як ніколи<br>&nbsp;</li><li>Імерсивні ігрові механіки виживання, такі як голод, сон, кровотеча та опромінення урізноманітнять гру<br>&nbsp;</li><li>Динамічна зміна погоди й циклу дня та ночі нададуть додаткового реалізму ігровому процесу<br>&nbsp;</li><li>Моди нададуть змогу творчим гравцям вільно розширювати та покращувати світ гри<br>&nbsp;</li><li>Режим багатокористувацької гри, який буде доданий скоро після релізу у формі безкоштовного оновлення</li></ul><h2>ВДАЛОГО ПОЛЮВАННЯ, СТАЛКЕРЕ!</h2><p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1643320/extras/S.T.A.L.K.E.R.2_campfire.gif?t=1672344498\"></p>', 1, '63c14ec42b417.jpg', '2023-01-13 12:29:56'),
(42, 'Metro 2033 Redux', 28, 279, 'In 2013 the world was devastated by an apocalyptic event, annihilating almost all mankind and turning the Earth\'s surface into a poisonous wasteland. A handful of survivors took refuge in the depths of the Moscow underground, and human civilization entered a new Dark Age. The year is 2033.', '<p>In 2013 the world was devastated by an apocalyptic event, annihilating almost all mankind and turning the Earth\'s surface into a poisonous wasteland. A handful of survivors took refuge in the depths of the Moscow underground, and human civilization entered a new Dark Age.<br><br>The year is 2033. An entire generation has been born and raised underground, and their besieged Metro Station-Cities struggle for survival, with each other, and the mutant horrors that await outside. You are Artyom, born in the last days before the fire, but raised underground. Having never ventured beyond the city limits, one fateful event sparks a desperate mission to the heart of the Metro system, to warn the remnants of mankind of a terrible impending threat.<br><br>Your journey takes you from the forgotten catacombs beneath the subway to the desolate wastelands above, where your actions will determine the fate of mankind. But what if the real threat comes from within?</p><h2>Product Overview</h2><p>Metro 2033 Redux is the definitive version of the cult classic ‘Metro 2033’, rebuilt in the latest and greatest iteration of the 4A Engine for Next Gen. Fans of the original game will find the unique world of Metro transformed with incredible lighting, physics and dynamic weather effects. Newcomers will get the chance to experience one of the finest story-driven shooters of all time; an epic adventure combining gripping survival horror, exploration and tactical combat and stealth.<br><br>All the gameplay improvements and features from the acclaimed sequel ‘Metro: Last Light’ have been transferred to Metro 2033 Redux – superior AI, controls, animation, weapon handling and many more – to create a thrilling experience for newcomers and veterans alike. With two unique play-styles, and the legendary Ranger Mode included, Metro 2033 Redux offers hours of AAA gameplay for an incredible price.</p>', 1, '63c14f64d7f13.jpg', '2023-01-13 12:32:36'),
(43, 'Metro Last Light Redux', 28, 279, 'It is the year 2034. Beneath the ruins of post-apocalyptic Moscow, in the tunnels of the Metro, the remnants of mankind are besieged by deadly threats from outside – and within. Mutants stalk the catacombs beneath the desolate surface, and hunt amidst the poisoned skies above.', '<p>It is the year 2034. Beneath the ruins of post-apocalyptic Moscow, in the tunnels of the Metro, the remnants of mankind are besieged by deadly threats from outside – and within. Mutants stalk the catacombs beneath the desolate surface, and hunt amidst the poisoned skies above.<br><br>But rather than stand united, the station-cities of the Metro are locked in a struggle for the ultimate power, a doomsday device from the military vaults of D6. A civil war is stirring that could wipe humanity from the face of the earth forever. As Artyom, burdened by guilt but driven by hope, you hold the key to our survival – the last light in our darkest hour…</p><h2>Product Overview:</h2><p>Metro: Last Light Redux is the definitive version of the critically acclaimed ‘Metro: Last Light’, rebuilt in the latest and greatest iteration of the 4A Engine for Next Gen. Newcomers will get the chance to experience one of the finest story-driven shooters of all time; an epic adventure combining gripping survival horror, exploration and tactical combat and stealth.<br><br>This definitive version also includes all previously released DLC, adding 10 hours of bonus single-player content to the huge solo campaign. Fans of the original game will notice new features and gameplay improvements, including new melee animations, the ability to check your watch and ammo supplies on the fly, and new full-body player animations.<br><br>And those who favoured the more survival-horror oriented gameplay of the cult prequel ‘Metro 2033’ will find a new way to experience the campaign thanks to the introduction of two unique Play Styles – Survival and Spartan. The former transforms Last light from a more action-oriented stealth combat experience to a fraught, slow burn fight for survival. With the legendary Ranger Mode included to offer an extra layer of challenge and immersion, Metro: Last Light Redux offers hours of AAA gameplay for an incredible price.</p>', 1, '63c14fc3841ea.jpg', '2023-01-13 12:34:11'),
(44, 'Metro Exodus', 28, 506, 'Flee the shattered ruins of the Moscow Metro and embark on an epic, continent-spanning journey across the post-apocalyptic Russian wilderness. Explore vast, non-linear levels, lose yourself in an immersive, sandbox survival experience, and follow a thrilling story-line that spans an entire year in the', '<p>The year is 2036.<br><br>A quarter-century after nuclear war devastated the earth, a few thousand survivors still cling to existence beneath the ruins of Moscow, in the tunnels of the Metro.<br><br>They have struggled against the poisoned elements, fought mutated beasts and paranormal horrors, and suffered the flames of civil war.<br><br>But now, as Artyom, you must flee the Metro and lead a band of Spartan Rangers on an incredible, continent-spanning journey across post-apocalyptic in search of a new life in the East.<br><br>Metro Exodus is an epic, story-driven first person shooter from 4A Games that blends deadly combat and stealth with exploration and survival horror in one of the most immersive game worlds ever created.<br><br>Explore the Russian wilderness across vast, non-linear levels and follow a thrilling story-line that spans an entire year through spring, summer and autumn to the depths of nuclear winter.<br><br>Inspired by the novels of Dmitry Glukhovsky, Metro Exodus continues Artyom’s story in the greatest Metro adventure yet.</p>', 1, '63c1505e75b08.jpg', '2023-01-13 12:36:46'),
(45, 'Dead by Daylight', 29, 279, 'Dead by Daylight — це багатокористувацька (4 проти 1) гра в жанрі горор, де один із гравців стає безжальним убивцею, а решта чотири намагаються втекти, уникнути захоплення і вбивства та врятуватися.', '<p><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/381210/extras/DeadbyDaylight_anime_Intro_Steam.jpg?t=1669150759\">Смерть — не вихід.</p><p>Dead by Daylight — це багатокористувацька (4 проти 1) гра в жанрі горор, де один із гравців стає безжальним убивцею, а решта чотири намагаються втекти, уникнути захоплення, катування і вбивства та врятуватися.<br><br>Утікачі грають з видом від третьої особи та мають перевагу з кращим контролем оточення. Вбивця грає з видом від першої особи та більше сфокусований на переслідуванні своїх жертв.<br><br>Мета втікачів — врятуватися та утекти з території вбивства, не потрапивши до рук убивці, і зробити це набагато важче, ніж може здатися, особливо якщо оточення змінюється з кожним перезапуском гри.<br><br>Детальніше про гру можна дізнатися на <a href=\"https://steamcommunity.com/linkfilter/?url=http://www.deadbydaylight.com\">http://www.deadbydaylight.com</a></p><h2>Основні особливості</h2><p>• <strong>Виживіть разом... або ні!</strong> - Утікачі можуть діяти спільно або дбати кожний про себе. Ваші шанси вижити можуть дуже сильно залежати від того, чи ви об’єднаєтеся в команду чи вирішите рятуватися поодинці. Чи зможете ви здолати вбивцю та втекти з території вбивства?<br><br>• <strong>Де я?</strong> - Кожний рівень генерується процедурно, тож ви ніколи не знаєте, що саме на вас чекатиме. Точки відновлення розкидані випадково, отже ви ніколи не почуватиметеся в безпеці: світ змінюється з кожним раундом гри.<br><br>• <strong>Убивчий бенкет</strong> - Гра Dead by Daylight відбирає найкраще з усіх зразків горору. У ролі вбивці ми можете грати за кого завгодно, від безжального зарізяки до потойбічної сутності. Дослідіть територію вбивства та вдоскональте неповторні навички кожного вбивці, щоб безпомильно вполювати, вхопити та вбити своїх жертв.<br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/381210/extras/DBD_HillB_Trapper_Wraith_anime_Steam.jpg?t=1669150759\"><br><br>• <strong>Досконалість не має меж</strong> - У кожного вбивці та втікача є власна система розвитку та ціла купа предметів, які можна відкрити та використати для побудови персональної стратегії. Досвід, навички та використання оточення — ось ключові чинники, що допоможуть вам вполювати жертву або врятуватися від вбивці.<br><br>• <strong>Справжні люди, справжній страх</strong> - Процедурно згенеровані рівні та реалістичні людські реакції чистого жаху наповнять кожний раунд гри неповторним досвідом. Жодних передбачуваних сюжетних поворотів. Атмосфера, музика та зловісне оточення забезпечать вас справді жахливими переживаннями. А якщо у вас буде достатньо часу, ви навіть зможете дізнатися, що ховається в тумані.<br><br><br><strong>ПОПЕРЕДЖЕННЯ: СВІТЛОЧУТЛИВІСТЬ/ЕПІЛЕПТИЧНІ НАПАДИ — УВАЖНО ПРОЧИТАЙТЕ ЦЕ ЗАУВАЖЕННЯ ПЕРЕД ГРОЮ</strong><br><br><i>Специфічний різновид світлових спалахів або їх певна послідовність можуть спровокувати епілептичний напад або запаморочення у невеликого відсотку людей. Такі люди або навіть ті особи, які ніколи не мали нападів або епілепсії, можуть відчути епілептичні симптоми під час гри у відеоігри. Якщо у вас або у когось із ваших родичів наявні ознаки епілепсії або ви зазнавали нападів будь-якого роду, проконсультуйтеся з лікарем, перш ніж грати в будь-яку відеогру.</i><br><br><i>НЕГАЙНО ПРИПИНІТЬ гру та зверніться до лікаря, якщо у вас або вашої дитини проявляється якийсь із наступних симптомів: запаморочення, двоїться в очах, смикається око або м’яз, мимовільні рухи, розгубленість, дезорієнтація або конвульсії. Батьки мають спостерігати за дітьми під час гри або розпитати їх про подібні симптоми.</i><br><br><i>Можна знизити ризик виникнення епілептичних нападів, викликаних світлочутливістю. Для цього спробуйте наступне: сядьте далі від екрану, використовуйте менший екран, грайте в добре освітленому приміщенні, не грайте, якщо відчуваєте сонливість або втому.</i>\"</p>', 1, '63c15172c1f8a.jpg', '2023-01-13 12:41:22'),
(46, 'Watch_Dogs™', 18, 459, 'In today\'s hyper-connected world, Chicago operates under ctOS, the most advanced computer network in America.', '<p>All it takes is the swipe of a finger. We connect with friends. We buy the latest gadgets and gear. We find out what’s happening in the world. But with that same simple swipe, we cast an increasingly expansive shadow. With each connection, we leave a digital trail that tracks our every move and milestone, our every like and dislike. And it’s not just people. Today, all major cities are networked. Urban infrastructures are monitored and controlled by complex operating systems.<br><br>In Watch_Dogs, this system is called the Central Operating System (CTOS) – and it controls almost every piece of the city’s technology and holds key information on all of the city’s residents.<br><br>You play as Aiden Pearce, a brilliant hacker and former thug, whose criminal past led to a violent family tragedy. Now on the hunt for those who hurt your family, you\'ll be able to monitor and hack all who surround you by manipulating everything connected to the city’s network. Access omnipresent security cameras, download personal information to locate a target, control traffic lights and public transportation to stop the enemy…and more.<br><br>Use the city of Chicago as your ultimate weapon and exact your own style of revenge.</p><h2>KEY FEATURES</h2><p><strong>HACK THE CITY</strong><br>Watch_Dogs takes place in a fully simulated living city where, using your smartphone, you have real-time control over the city’s infrastructure. Trap your enemy in a 30-car pileup by manipulating the traffic lights. Stop a train, and then board it to evade the authorities. Narrowly escape capture by quickly raising a drawbridge. Anything connected to the city’s CTOS can become your weapon.<br><br><strong>STREET JUSTICE</strong><br>Living in inner city Chicago where violence is best answered by violence, you have the skills to take the fight to the streets. Take down enemies by delivering devastating blows with your baton, or experience a shoot-out like never before with a physics simulation that rivals anything in the shooter category. Use a combination of shooting and hacking to gain advantage in any given situation. The streets are designed for you to create your own plan of attack. Overall, you will have access to more than 30 traditional weapons.<br><br><strong>HIGH OCTANE DRIVING</strong><br>Ubisoft Montreal has partnered with studios such as Ubisoft Reflections, the acclaimed studio behind the award-winning Driver series to bring you a game bursting with horsepower. Get behind the wheel of more than 65 vehicles, each with state of the art physics and handling, and explore the massive city while completing missions.<br><br><strong>EVERYTHING IS UNDER CONTROL</strong><br>Disrupt, the all-new game engine dedicated to Watch_Dogs, uses advanced processing and graphics to deliver a stunning visual and an incredibly realistic experience. Disrupt gives you the power to affect the story, the city and the life of the population with your choices creating a ripple effect throughout the city.<br><br><strong>DYNAMIC NAVIGATION</strong><br>Watch_Dogs gives you the ability to not only use the city’s ctOS to your advantage, but the streets as well. In real-world Chicago, cut through buildings or climb to the rooftops to catch your target.<br><br><strong>SEAMLESS MULTIPLAYER EXPERIENCE</strong><br>Discover new levels of interaction, cooperation and confrontation between players thanks to a brand new multiplayer game system that links the single and multiplayer modes into one seamless experience. That means no menus, no loading screens, just instant open world multiplayer action.</p>', 1, '63c152a198dac.jpg', '2023-01-13 12:46:25'),
(47, 'Watch_Dogs® 2', 18, 915, 'Welcome to San Francisco. Play as Marcus, a brilliant young hacker, and join the most notorious hacker group, DedSec. Your objective: execute the biggest hack of history.', '<p>Play as Marcus Holloway, a brilliant young hacker living in the birthplace of the tech revolution, the San Francisco Bay Area.<br>Team up with Dedsec, a notorious group of hackers, to execute the biggest hack in history; take down ctOS 2.0, an invasive operating system being used by criminal masterminds to monitor and manipulate citizens on a massive scale.<br><br>&nbsp;</p><ul><li>Explore the dynamic open-world, full of gameplay possibilities<br>&nbsp;</li><li>Hack into every connected device and take control of the city infrastructure.<br>&nbsp;</li><li>Develop different skills to suit your playstyle, and upgrade your hacker tools – RC cars, Quadcopter drone, 3D printed weapons and much more.<br>&nbsp;</li><li>Stay seamlessly connected to your friends with a brand new co-op and adversarial multiplayer Watch Dogs experience.</li></ul><p><br>PUT YOUR EYES IN CTRL<br>Get the upper hand with Tobii Eye Tracking. Let your gaze aid you in weaponizing the “internet of things”, aim at enemies and take cover while you naturally explore the environment. Combine the extensive eye tracking feature set to pinpoint enemies, interact with your surroundings, locate shelter points, and rapidly select hackable targets. Let your vision lead the hacking of the city’s digital brain.<br><br>Compatible with all Tobii Eye Tracking gaming devices.<br>----<br>Additional notes:<br>Eye tracking features available with Tobii Eye Tracking.</p>', 1, '63c152fad597c.jpg', '2023-01-13 12:47:54'),
(48, 'Watch Dogs®: Legion', 18, 670, 'Build a resistance as you fight to take back a near-future London facing its downfall. Welcome to the Resistance.', '<p>Build a resistance made from anyone in the world to take back a near-future London that is facing its downfall.<br><br>Recipient of over 65 E3 awards and nominations.<br><br>Recruit and play as anyone from London. Everyone you see has a unique backstory, personality, and skill set for unique situations.<br><br>Hack armed drones, deploy spider-bots, and take down enemies using an Augmented Reality Cloak.<br>Explore a massive urban open world featuring London’s many iconic landmarks and fun side activities.<br>Team up with your friends as you complete co-op missions and unique game modes.<br>Upgrade to the Gold Edition or Ultimate Edition for access to the season pass and more!</p>', 1, '63c1539fd4339.jpg', '2023-01-13 12:50:39'),
(49, 'Assassin\'s Creed 2', 18, 150, 'An epic story of family, vengeance and conspiracy set in the pristine, yet brutal, backdrop of a Renaissance Italy. New low price!', '<p>Assassin’s Creed® 2 is the follow-up to the title that became the fastest-selling new IP in video game history. The highly anticipated title features a new hero, Ezio Auditore da Firenze, a young Italian noble, and a new era, the Renaissance.<br>Assassin’s Creed 2 retains the core gameplay experience that made the first opus a resounding success and features new experiences that will surprise and challenge players.<br>Assassin’s Creed 2 is an epic story of family, vengeance and conspiracy set in the pristine, yet brutal, backdrop of a Renaissance Italy. Ezio befriends Leonardo da Vinci, takes on Florence’s most powerful families and ventures throughout the canals of Venice where he learns to become a master assassin.<br>&nbsp;</p><ul><li><strong>EZIO, A NEW ASSASSIN FOR A NEW ERA</strong> Ezio Auditore da Firenze is a young Italian noble who will learn the ways of the assassins after his family was betrayed and he looks to seek vengeance. He is a lady’s man, a free soul with panache yet has a very human side to his personality. Through him, you become a master assassin.<br>&nbsp;</li><li><strong>RENAISSANCE ITALY</strong> Italy in the 15th century was less a country and more a collection of city-states where families with political and economic strength began to take leadership roles in cities like Florence and Venice. This journey through some of the most beautiful cities in the world takes place in a time in history where culture and art were born alongside some of the most chilling stories of corruption, greed and murder.<br>&nbsp;</li><li><strong>A NEW-FOUND FREEDOM</strong> You will be able to perform missions when you want and how you want in this open-ended world that brings back free-running and adds elements such as swimming and even flying to the adventure. The variety in gameplay adds another layer for you to truly play through the game any way you choose.<br>&nbsp;</li><li><strong>DYNAMIC CROWD </strong>Discover a living, breathing world where every character is an opportunity for the player. Blending in with the crowd is easier, working with in-game characters provide ample rewards but can also lead to surprising consequences.<br>&nbsp;</li><li><strong>BECOME A MASTER ASSASSIN</strong> Perfect your skills to become a master assassin where you brandish new weapons, learn to disarm enemies then use their weapons against them, and assassinate enemies using both hidden blades.</li></ul><p><br>Please note that as of November 19th, 2018, the online features for this game are no longer supported. The Multiplayer mode / Co-op mode will no longer be accessible.</p>', 1, '63c1545e57102.jpg', '2023-01-13 12:53:50'),
(50, 'Assassin\'s Creed™', 18, 150, 'Assassin\'s Creed™ is the next-gen game developed by Ubisoft Montreal that redefines the action genre. While other games claim to be next-gen with impressive graphics and physics, Assassin\'s Creed merges technology, game design, theme and emotions into a world where you instigate chaos and', '<p>Assassin\'s Creed™ is the next-gen game developed by Ubisoft Montreal that redefines the action genre. While other games claim to be next-gen with impressive graphics and physics, Assassin\'s Creed merges technology, game design, theme and emotions into a world where you instigate chaos and become a vulnerable, yet powerful, agent of change.<br>The setting is 1191 AD. The Third Crusade is tearing the Holy Land apart. You, Altair, intend to stop the hostilities by suppressing both sides of the conflict.<br>You are an Assassin, a warrior shrouded in secrecy and feared for your ruthlessness. Your actions can throw your immediate environment into chaos, and your existence will shape events during this pivotal moment in history.<br>&nbsp;</p><ul><li><strong>Be an Assassin</strong> - Master the skills, tactics and weapons of history\'s deadliest and most secretive clan of warriors. Plan your attacks, strike without mercy and fight your way to escape.<br>&nbsp;</li><li><strong>Experience exclusive PC content</strong> - Four PC-exclusive investigation missions make the game an even better experience than its console predecessors, including the Rooftop Race Challenge, a race to a specified location and the Archer Stealth Assassination Challenge, where the player must assassinate all archers in a certain zone to help out fellow Assassins.<br>&nbsp;</li><li><strong>Realistic and responsive environments</strong> - Experience a living, breathing world in which all your actions have consequences. Crowds react to your moves and will either help or hinder you on your quests.<br>&nbsp;</li><li><strong>Action with a new dimension-total freedom</strong> - Eliminate your targets wherever, whenever and however. Stalk your prey through richly detailed, historically accurate, open-ended environments. Scale buildings, mount horses, blend in with crowds. Do whatever it takes to achieve your objectives.<br>&nbsp;</li><li><strong>Relive the epic times of the Crusades</strong> - Assassin\'s Creed immerses you in the realistic and historical Holy Land of the 12th century, featuring life-like graphics, ambience and the subtle, yet detailed nuances of a living world.<br>&nbsp;</li><li><strong>Intense action rooted in reality</strong> - Experience heavy action blended with fluid and precise animations. Use a wide range of medieval weapons, and face your enemies in realistic swordfight duels.<br>&nbsp;</li><li><strong>Next-gen gameplay</strong> - The proprietary engine developed from the ground up for the next-gen console allows organic game design featuring open gameplay, intuitive control scheme, realistic interaction with environment and a fluid, yet sharp, combat mechanic.</li></ul>', 1, '63c154d23bf1b.jpg', '2023-01-13 12:55:46'),
(51, 'Assassin’s Creed® Brotherhood', 18, 299, 'Now Available on Mac! It’s time to join the Brotherhood.', '<p>Live and breathe as Ezio, a legendary Master Assassin, in his enduring struggle against the powerful Templar Order. He must journey into Italy’s greatest city, Rome, center of power, greed and corruption to strike at the heart of the enemy.<br><br>Defeating the corrupt tyrants entrenched there will require not only strength, but leadership, as Ezio commands an entire Brotherhood who will rally to his side. Only by working together can the Assassins defeat their mortal enemies.<br><br>And for the first time, introducing an award-winning multiplayer layer that allows you to choose from a wide range of unique characters, each with their own signature weapons and assassination techniques, and match your skills against other players from around the world.<br><br>It’s time to join the Brotherhood.<br><br>&nbsp;</p><h2>Key Features</h2><ul><li><strong>BE A LEGEND</strong> – Take Ezio, now a legendary Assassin, on a new adventure with 15+ hours of story-driven single-player gameplay.<br>&nbsp;</li><li><strong>LEAD AND CONTROL A LEGENDARY BROTHERHOOD</strong> – Recruit and customize your own guild. Train and level up assassins and command them to aid you in your quest.<br>&nbsp;</li><li><strong>DEPLOY SECRET WEAPONS</strong> – Swiftly eliminate your enemies using tools such as poison darts, parachutes, double hidden blades, hidden guns, and an advanced flying machine at your disposal.<br>&nbsp;</li><li><strong>WIN THE HEART OF A CITY</strong> – Use your hard-won currency to revitalize the crumbling capitol city. Rally the citizens to your cause and unlock extra factions and missions.<br>&nbsp;</li><li><strong>AWARD-WINNING MULTIPLAYER</strong> – Choose from multiple authentic character classes, each with their own signature weapons and killing moves. With richly detailed maps and a wide variety of unique multiplayer modes, you’ll never fight the same way twice.<br>&nbsp;</li><li><strong>BONUS CONTENT:</strong><ul><li><strong>Project Animus Update #1 Multiplayer DLC:</strong><br><br>To survive the treacherous, narrow roads and the multi-leveled architecture of the Mont Saint-Michel map and the challenging Advanced Alliance multiplayer mode, Abstero recruits will need to use free-running and refined hunting skills to their advantage.<br>&nbsp;</li><li><strong>Project Animus Update #2 Multiplayer DLC:</strong><br><br>The Pienza Map provides the perfect free-running playground where predators and targets can blend and disappear. In the Chest Capture Multiplayer Mode two teams comprised of three players each partner with fellow Templars to either defend or capture Chests. Also included is the new Templar Score feature to reward diligent work by Abstergo recruits.<br>&nbsp;</li><li><strong>The Da Vinci Disappearance Single-Player and Multiplayer DLC:</strong><br><br>After the fall of the Borgias, Leonardo Da Vinci is kidnapped and Ezio will embark on a relentless quest to recover him discovering new locations and gameplay features. The multiplayer addition is the biggest expansion to the award-winning multiplayer yet, including a new map, new characters and game modes.</li></ul></li></ul>', 1, '63c1555259544.jpg', '2023-01-13 12:57:54');
INSERT INTO `product` (`id`, `name`, `publisher_id`, `price`, `short_description`, `description`, `visible`, `photo`, `release_date`) VALUES
(52, 'Assassin\'s Creed® Revelations', 18, 225, 'Ezio Auditore walks in the footsteps of the legendary mentor Altair, on a dangerous journey of discovery and revelation.', '<p>When a man has won all his battles and defeated his enemies; what is left for him to achieve? Ezio Auditore must leave his life behind in search of answers, In search of the truth.<br>In Assassin’s Creed® Revelations, master assassin Ezio Auditore walks in the footsteps of the legendary mentor Altair, on a journey of discovery and revelation. It is a perilous path – one that will take Ezio to Constantinople, the heart of the Ottoman Empire, where a growing army of Templars threatens to destabilize the region.<br>In addition to Ezio’s award-winning story, a refined and expanded online multiplayer experience returns with more modes, more maps and more characters, allowing you to test your assassin skills against others from around the world.<br>&nbsp;</p><h2>Key Features:</h2><ul><li><strong>BECOME DEADLIER THAN EVER</strong><br><br>Wield the lethal skills of a wiser, more efficient and deadlier Ezio. Swiftly eliminate your adversaries by deploying a new arsenal of weapons and abilities, such as enhanced free-running and hook blade combat. Experience new levels of gameplay customization with bomb crafting, and use heightened Eagle Vision to overcome your enemies and the environment.<br>&nbsp;</li><li><strong>TEST YOUR SKILLS AGAINST THE BEST</strong><br><br>A critically acclaimed multiplayer experience gets even better, with all-new team modes and infinite replay value.<br>&nbsp;</li><li><strong>EXPERIENCE REVOLUTIONARY GAMEPLAY</strong><br><br>Explore the farthest reaches of the Animus as you uncover the mysteries of Desmond’s past while gaining insight into what the future might hold.</li></ul>', 1, '63c155b94f67e.jpg', '2023-01-13 12:59:37'),
(53, 'Assassin’s Creed® Rogue', 18, 299, 'Introducing Assassin’s Creed® Rogue, the darkest chapter in the Assassin’s Creed franchise yet. As Shay, you will experience the slow transformation from Assassin to Assassin Hunter. Follow your own creed and set off on an extraordinary journey through New York City, the wild river valley, and far away to', '<h2>Story</h2><p>18th century, North America. Amidst the chaos and violence of the French and Indian War, Shay Patrick Cormac, a fearless young member of the Brotherhood of Assassin’s, undergoes a dark transformation that will forever shape the future of the American colonies. After a dangerous mission gone tragically wrong, Shay turns his back on the Assassins who, in response, attempt to end his life. Cast aside by those he once called brothers, Shay sets out on a mission to wipe out all who turned against him and ultimately become the most feared Assassin hunter in history.<br>Introducing Assassin’s Creed® Rogue, the darkest chapter in the Assassin’s Creed franchise yet. As Shay, you will experience the slow transformation from Assassin to Assassin Hunter. Follow your own creed and set off on an extraordinary journey through New York City, the wild river valley, and far away to the icy cold waters of the North Atlantic in pursuit of your ultimate goal - bringing down the Assassins for good.</p><h2>Key Features</h2><ul><li><strong>Become the Ultimate Assassin Hunter</strong> - For the first time ever, experience the Assassin’s Creed universe from the perspective of a Templar. Play as Shay, who, in addition to the deadly skills of a Master Assassin, also possesses never before seen skills and weapons:<br>o Equip Shay’s deadly air rifle for both short and long range combat. Distract, eliminate, or confuse your enemies by using a variety of ammunition, including specialized bullets and grenades<br>o Protect yourself from hidden Assassins with your enhanced eagle vision. Constantly assess your surroundings and detect Assassins hiding in the shadows, on rooftops, and in the crowds<br><br>&nbsp;</li><li><strong>Slowly Descend into Darkness</strong> - Witness Shay’s transformation from an adventurous Assassin to a grim and committed Templar willing to hunt down his former brothers. Experience first-hand the events that will lead Shay down a dark path and set him on a course that will forever change the fate of the Assassin Brotherhood.<br><br>&nbsp;</li><li><strong>New and Improved Naval Gameplay</strong> - Cast off in your ship, The Morrigan, and fight your way through the icy seas of the North Atlantic and the narrow waters of America’s river valleys. Assassin’s Creed® Rogue builds on the award winning naval experience from Assassin’s Creed® IV Black Flag™ with all new gameplay including:<br>o New enemy tactics: Defend yourself from Assassins as they attempt to board your ship and overthrow your crew. Fight them off quickly to avoid losing too many crew members.<br>o New weapons: Including burning oil, which leaves a trail of fire behind to burn enemy ships, and the puckle gun, capable of delivering continuous machine-gun-like fire.<br>o An arctic world full of possibilities: Ram through ice sheets to discover hidden locations and use icebergs as cover during naval battles.<br><br>&nbsp;</li><li><strong>Vast Diverse Open World to Explore</strong> - Shay’s story will allow you to explore three unique environments:<br>o The North Atlantic Ocean Experience the cold winds and towering icebergs of the arctic in this expansive naval playground<br>o The River Valley A large hybrid setting of the American Frontier mixing seamless river navigation and ground exploration<br>o New York City One of the most well-known cities in the world, fully recreated as it existed in the 18th century.</li></ul><p><br>ENHANCE YOUR EXPERIENCE WITH EYE TRACKING<br>Your eyes lead the way with Tobii Eye Tracking. Direct your character’s journey across North America and the North Atlantic as you focus on the path ahead. The Auto-Pause feature helps make sure you don’t miss out on any action – in the unlikely event you can peel your attention away from the screen, that is.<br>Compatible Eye Tracking Devices: Tobii Eye Tracker 4C, Alienware 17 Notebook, Acer Predator Notebook 21 X, MSI GT72 Notebook, Acer Predator Monitors Z301CT, Z271T, XB271HUT</p>', 1, '63c157169c749.jpg', '2023-01-13 13:05:26'),
(54, 'Assassin\'s Creed® Syndicate', 18, 610, 'London, 1868. In the heart of the Industrial Revolution, lead your underworld organization and grow your influence to fight those who exploit the less privileged in the name of progress', '<p>London, 1868. In the heart of the Industrial Revolution, lead your underworld organization and grow your influence to fight those who exploit the less privileged in the name of progress:<br><br>&nbsp;</p><ul><li>Champion justice<br>As Jacob Frye, a young and reckless Assassin, use your skills to help those trampled by the march of progress. From freeing exploited children used as slave labour in factories, to stealing precious assets from enemy boats, you will stop at nothing to bring justice back to London’s streets.<br><br>&nbsp;</li><li>Command London’s underworld<br>To reclaim London for the people, you will need an army. As a gang leader, strengthen your stronghold and rally rival gang members to your cause, in order to take back the capital from the Templars’ hold.<br><br>&nbsp;</li><li>A new dynamic fighting system<br>In Assassin’s Creed Syndicate, action is fast-paced and brutal. As a master of combat, combine powerful multi-kills and countermoves to strike your enemies down.<br><br>&nbsp;</li><li>A whole new arsenal<br>Choose your own way to fight enemies. Take advantage of the Rope Launcher technology to be as stealthy as ever and strike with your Hidden Blade. Or choose the kukri knife and the brass knuckles to get the drop on your enemies.<br><br>&nbsp;</li><li>A new age of transportation<br>In London, the systemic vehicles offer an ever-changing environment. Drive carriages to chase your target, use your parkour skills to engage in epic fights atop high-speed trains, or make your own way amongst the boats of the River Thames.<br><br>&nbsp;</li><li>A vast open world<br>Travel the city at the height of the Industrial Revolution and meet iconic historical figures. From Westminster to Whitechapel, you will come across Darwin, Dickens, Queen Victoria… and many more.<br><br>&nbsp;</li><li>A sharper focus<br>Take aim, engage in combat or launch a grappling hook by keeping your target in sight with Tobii Eye Tracking. The Clean UI lets you focus on the matter at hand while the Extended View and Dynamic Light features increase your immersion, making you dive even deeper into the thrilling adventure in the streets of London.<br>Compatible with all Tobii Eye Tracking gaming devices.<br><br>----<br>Additional notes:<br>Eye tracking features available with Tobii Eye Tracking.</li></ul>', 1, '63c157887c649.jpg', '2023-01-13 13:07:20'),
(55, 'Assassin\'s Creed® Origins', 18, 915, 'ASSASSIN’S CREED® ORIGINS IS A NEW BEGINNING *The Discovery Tour by Assassin’s Creed®: Ancient Egypt is available now as a free update!* Ancient Egypt, a land of majesty and intrigue, is disappearing in a ruthless fight for power.', '<p>ASSASSIN’S CREED® ORIGINS IS A NEW BEGINNING<br><br>*The Discovery Tour by Assassin’s Creed®: Ancient Egypt is available now as a free update!*<br><br>Ancient Egypt, a land of majesty and intrigue, is disappearing in a ruthless fight for power. Unveil dark secrets and forgotten myths as you go back to the one founding moment: The Origins of the Assassin’s Brotherhood.<br><br>A COUNTRY TO DISCOVER<br>Sail down the Nile, uncover the mysteries of the pyramids or fight your way against dangerous ancient factions and wild beasts as you explore this gigantic and unpredictable land.<br><br>A NEW STORY EVERY TIME YOU PLAY<br>Engage into multiple quests and gripping stories as you cross paths with strong and memorable characters, from the wealthiest high-born to the most desperate outcasts.<br><br>EMBRACE ACTION-RPG<br>Experience a completely new way to fight. Loot and use dozens of weapons with different characteristics and rarities. Explore deep progression mechanics and challenge your skills against unique and powerful bosses.</p>', 1, '63c158395746c.jpg', '2023-01-13 13:10:17'),
(56, 'Assassin\'s Creed® Odyssey', 18, 915, 'Choose your fate in Assassin\'s Creed® Odyssey. From outcast to living legend, embark on an odyssey to uncover the secrets of your past and change the fate of Ancient Greece.', '<p>Choose your fate in Assassin\'s Creed® Odyssey.<br>From outcast to living legend, embark on an odyssey to uncover the secrets of your past and change the fate of Ancient Greece.<br><br>TRAVEL TO ANCIENT GREECE<br>From lush vibrant forests to volcanic islands and bustling cities, start a journey of exploration and encounters in a war torn world shaped by gods and men.<br><br>FORGE YOUR LEGEND<br>Your decisions will impact how your odyssey unfolds. Play through multiple endings thanks to the new dialogue system and the choices you make.&nbsp;Customize your gear, ship, and special abilities to become a legend.<br><br>FIGHT ON A NEW SCALE<br>Demonstrate your warrior\'s abilities in large scale epic battles between Athens and Sparta featuring hundreds of soldiers, or ram and cleave your way through entire fleets in naval battles across the Aegean Sea.<br><br>GAZE IN WONDER<br>Experience the action in a whole new light with Tobii Eye Tracking. The Extended View feature gives you a broader perspective of the environment, and the Dynamic Light and Sun Effects immerse you in the sandy dunes according to where you set your sights. Tagging, aiming and locking on your targets becomes a lot more natural when you can do it by looking at them. Let your vision lead the way and enhance your gameplay.<br>Visit the Tobii website to check the list of compatible devices.<br>-----<br>Additional notes:<br>Eye tracking features available with Tobii Eye Tracking.</p>', 1, '63c158d0521dd.jpg', '2023-01-13 13:12:48'),
(57, 'Assassin\'s Creed Freedom Cry', 18, 225, 'Play as Adewale, an ex-slave turned Assassin fighting for freedom with the help of his own Pirate crew.', '<p>Born a slave, Adewale found freedom as a pirate aboard Edward Kenway’s ship, the Jackdaw. 15 years later, Adewale has become a trained Assassin who finds himself shipwrecked in Saint-Domingue without weapons or crew. He now has to acquire a ship and gather his own crew to free the slaves and avenge them. Over 3 hours of new single-player gameplay!<br>Playing Assassin’s Creed® Freedom Cry doesn\'t require a copy of Assassin’s Creed®IV Black Flag™.</p>', 1, '63c159907e1c6.jpg', '2023-01-13 13:16:00'),
(58, 'Assassin\'s Creed® III Remastered', 18, 610, 'Relive the American Revolution or experience it for the first time in Assassin\'s Creed® III Remastered, with enhanced graphics and improved gameplay mechanics. Also includes Assassin\'s Creed Liberation remastered and all solo DLC content.', '<p>Relive the American Revolution or experience it for the first time in Assassin\'s Creed® III Remastered, with enhanced graphics and improved gameplay mechanics. Also includes Assassin\'s Creed Liberation remastered and all solo DLC content.<br><br>FIGHT FOR FREEDOM<br>1775. The American Colonies are about to revolt. As Connor, a Native American Assassin, secure liberty for your people and your nation. From bustling city streets to the chaotic battlefields, assassinate your foes in a variety of deadly ways with a vast array of weaponry.<br><br>A NEW VISUAL AND GAMEPLAY EXPERIENCE<br>Play the iconic Assassin\'s Creed III, with enhanced graphics, now featuring: 4K resolution, new character models, polished environment rendering and more. The gameplay mechanics have been revamped as well, improving your experience and your immersion.<br><br>ADDITIONAL CONTENT<br>Also includes all the original solo DLC, including The Tyranny of King Washington, and the full game: Assassin\'s Creed Liberation Remastered.</p>', 1, '63c15a41136ce.jpg', '2023-01-13 13:18:57'),
(59, 'HITMAN 3', 30, 1137, 'Death Awaits. Agent 47 returns in HITMAN 3, the dramatic conclusion to the World of Assassination trilogy.', '<p><strong>WORLD OF ASSASSINATION</strong><br><br>HITMAN 3 is the best place to play every game in the World of Assassination trilogy. If you’ve already played HITMAN 2 on Steam, the locations that you can access in that game will be converted into an ‘Access Pass’ for HITMAN 3 when you buy the latest game. The Access Pass DLCs will be applied to your account and the locations will be available and ready to play from the first time you launch the game.<br><br><strong>BECOME A PROFESSIONAL ASSASSIN</strong><br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1659040/extras/Become_Pro_H3.gif?t=1661511609\"><br><br>HITMAN 3 is the dramatic conclusion to the World of Assassination trilogy. Become Agent 47, a legendary assassin and use creativity and improvisation to execute the most ingenious and spectacular eliminations, in sprawling sandbox locations all around the globe.<br><br><br><strong>ELIMINATE THE PARTNERS OF PROVIDENCE</strong><br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1659040/extras/Eliminate_Providence_H3.gif?t=1661511609\"><br><br>Agent 47 must join forces with his long-lost friend Lucas Grey to eliminate the partners of Providence - but they are forced to adapt as their hunt intensifies. When the dust settles, 47 and the world he inhabits will never be the same again.<br><br><strong>TRAVEL THE WORLD</strong><br><br><img src=\"https://cdn.akamai.steamstatic.com/steam/apps/1659040/extras/Travel_The_World_H3.gif?t=1661511609\"><br><br>Travel to exotic locations in a globetrotting adventure and experience rich and detailed environments that are packed full of opportunities. From a skyscraper in Dubai to the colourful streets of Chongqing and the vineyards of Mendoza, each HITMAN 3 location has been meticulously crafted with an extremely high level of fidelity. IO Interactive’s award-winning Glacier technology powers HITMAN 3’s tactile and immersive game world to offer unparalleled player choice and replayability.</p>', 1, '63c15b2c7c121.jpg', '2023-01-13 13:22:52');

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
(1, 'Rockstar Games', '63c1384db16c1.jpg'),
(2, 'Valve', '63c06193227ea.jpg'),
(3, 'Bethesda', '63c064b7165c8.jpg'),
(6, 'CD PROJEKT RED', '63c1385e35181.jpg'),
(8, 'Bandai Namco Entertainment', '63c13857757c0.jpg'),
(11, 'WB Games', '63c131ee3072d.jpg'),
(18, 'Ubisoft', '63c132d4ea4a4.jpg'),
(20, 'Annapurna Interactive', '63c138d63f2a6.jpg'),
(21, 'Wallpaper Engine Team', '63c13a5e82043.jfif'),
(22, 'Techland Publishing', '63c13c07a2287.jpg'),
(23, 'Starbreeze Home', '63c13de9bf68b.jpg'),
(24, 'Capcom', '63c13edacd2de.jpg'),
(25, '505 Games', '63c1453160c8f.jpg'),
(26, 'FacepunchStudios', '63c14af22256b.jpg'),
(27, 'GSC Game World', '63c14e6365f01.jpg'),
(28, 'Deep Silver', '63c14efa1dbfd.jpg'),
(29, 'Behaviour Interactive Inc.', '63c15114934a5.jpg'),
(30, 'IO Interactive AS', '63c15addc64fd.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `access_level` int NOT NULL DEFAULT '1',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `name`, `access_level`, `photo`) VALUES
(1, 'mankivskiy.vlsd@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'RAK MANIAK', 11, '63c0069944aee.png'),
(13, 'test__1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, '63c52f16b73ca.jpg'),
(14, 'test__2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(18, 'test2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(19, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 10, ''),
(29, 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, '63c1dd62b0bfd.jpg');

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
  ADD KEY `basket_ibfk_1` (`product_id`),
  ADD KEY `basket_ibfk_2` (`user_id`);

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
  ADD KEY `category_list_ibfk_1` (`category_id`),
  ADD KEY `category_list_ibfk_2` (`product_id`);

--
-- Індекси таблиці `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Індекси таблиці `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_ibfk_1` (`user_id`),
  ADD KEY `library_ibfk_2` (`product_id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT для таблиці `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT для таблиці `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблиці `library`
--
ALTER TABLE `library`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблиці `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Обмеження зовнішнього ключа таблиці `library`
--
ALTER TABLE `library`
  ADD CONSTRAINT `library_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `library_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Обмеження зовнішнього ключа таблиці `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
