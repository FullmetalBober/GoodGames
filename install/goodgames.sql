-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 12 2023 р., 23:13
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
(96, 13, '63c0683a5ee74.jpg');

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
(12, 'Стратегії');

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
(13, 15, 4),
(14, 15, 5),
(15, 16, 3),
(40, 19, 4),
(41, 19, 5),
(154, 10, 4),
(155, 10, 8),
(156, 10, 9),
(157, 10, 10),
(158, 4, 4),
(159, 4, 9),
(160, 4, 10),
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
(183, 13, 8),
(184, 13, 9);

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
(9, 17, 1);

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
(4, 'The Witcher 3: Wild Hunt', 6, 539, 'Ви — Ґеральт із Рівії, найманий мисливець на чудовиськ. Перед вами цілий континент, просяклий війнами та заполонений різними потворами. Поточний контракт? Відшукайте Цірі — Дитя Пророцтва, живу зброю, що може докорінно змінити знаний світ.', '<p>Ви — Ґеральт із Рівії, найманий мисливець на чудовиськ. Перед вами цілий континент, просяклий війнами та заполонений різними потворами. Поточний контракт? Відшукайте Цірі — Дитя Пророцтва, живу зброю, що може докорінно змінити знаний світ.<br><br>Оновлена версія гри «Відьмак 3: Дикій Гін» містить нововведення, як-от вбудований фоторежим, предмети зі серіалу «Відьмак» від Netflix — мечі, обладунки, костюми — і не тільки!</p><p><br>Пориньте у світ темного фентезі, якого континент ще ніколи не бачив! Це видання «Відьмак 3: Дикий Гін» містить безліч візуальних та технічних покращень, як-от покращений рівень деталізації, створені спільнотою та розробниками модифікації, трасування променів у реальному часі та багато іншого — все для того, щоб використовувати увесь потенціал сучасного ПК.</p><p>Відьмаків із раннього дитинства тренували й перетворювали на мутантів задля надлюдських навичок та сили. І хоча вони стали єдиною противагою пошесті чудовиськ, їм усе одно не довіряють.<br>• Брутально розправляйтеся зі своїми ворогами як належить професійному мисливцю на чудовиськ — за допомогою широкого набору вдосконалюваної зброї, мутагенів, еліксирів та бойових чар.<br>• Полюйте на численні види екзотичних монстрів — від диких звірів в горах до підступних надприродних хижаків, що ховаються серед тіней у густонаселених містах.<br>• Вкладайте зароблені гроші в удосконалення зброї та придбання спеціальних обладунків або тринькайте все на кінних перегонах, картярських іграх, кулачних боях чи інших знайдених розвагах.</p><p>Відкритий світ «Відьмака» створений, щоб дарувати нескінченні пригоди. Він вводить нові стандарти розміру, глибини та складності.<br>• Подорожуйте фантастичним відкритим світом: досліджуйте забуті руїни, печери та кораблетрощі, торгуйте з купцями та краснолюдськими ковалями в містах, полюйте на відкритих полях, в горах і на морях.<br>• Встановлюйте зв’язки з генералами-перебіжчиками, підступними відьмами і корумпованою шляхтою, щоб надавати темні та небезпечні послуги.<br>• Робіть вибір за рамками добра і зла і давайте раду далекосяжним наслідкам.</p><p>Візьміться за найважливіший контракт і знайдіть дитя пророцтва — ключ до порятунку або знищення світу.<br>• У розпал війни відшукайте дитя пророцтва — людину-зброю, передбачену давнім ельфійським пророцтвом.<br>• Боріться проти шалених правителів, духів природи і навіть загрози з потойбіччя — усі вони прагнуть панувати світом.<br>• Визначте свою долю у світі, який, можливо, і не вартий порятунку.</p>', 1, '63c05dad54fae.jpg', '2023-01-06 16:50:37'),
(6, 'Red Dead Redemption 2', 1, 899, 'Winner of over 175 Game of the Year Awards and recipient of over 250 perfect scores, RDR2 is the epic tale of outlaw Arthur Morgan and the infamous Van der Linde gang, on the run across America at the dawn of the modern age. Also includes access to the shared living world of Red Dead Online.', '<p>America, 1899.<br><br>Arthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.<br><br>Now featuring additional Story Mode content and a fully-featured Photo Mode, Red Dead Redemption 2 also includes free access to the shared living world of Red Dead Online, where players take on an array of roles to carve their own unique path on the frontier as they track wanted criminals as a Bounty Hunter, create a business as a Trader, unearth exotic treasures as a Collector or run an underground distillery as a Moonshiner and much more.<br><br>With all new graphical and technical enhancements for deeper immersion, Red Dead Redemption 2 for PC takes full advantage of the power of the PC to bring every corner of this massive, rich and detailed world to life including increased draw distances; higher quality global illumination and ambient occlusion for improved day and night lighting; improved reflections and deeper, higher resolution shadows at all distances; tessellated tree textures and improved grass and fur textures for added realism in every plant and animal.<br><br>Red Dead Redemption 2 for PC also offers HDR support, the ability to run high-end display setups with 4K resolution and beyond, multi-monitor configurations, widescreen configurations, faster frame rates and more.</p>', 1, '63c05f59ef933.jpg', '2023-01-06 16:50:37'),
(9, 'The Elder Scrolls V Skyrim Special Edition', 3, 649, 'Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space', '<p>Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space reflections, and more. Skyrim Special Edition also brings the full power of mods to the PC and consoles. New quests, environments, characters, dialogue, armor, weapons and more – with Mods, there are no limits to what you can experience.</p>', 1, '63c065a56342a.jpg', '2023-01-06 16:50:37'),
(10, 'Cyberpunk 2077', 6, 899, 'Cyberpunk 2077 — пригодницький бойовик і рольова гра з відкритим світом. Дія відбувається у темному майбутньому Найт-Сіті, небезпечного мегаполіса, одержимого владою, гламуром і ненаситною модифікацією тіла.', '<p>Cyberpunk 2077 — пригодницький рольовий екшн у відкритому світі мегаполісу Найт-Сіті, де у ролі кіберпанкового найманця ви боротиметеся за виживання. Гра вдосконалена і має новий безкоштовний вміст. Налаштуйте персонажа й ігровий стиль, виконуючи завдання, нарощуючи репутацію і відкриваючи апгрейди. Будуючи взаємини і здійснюючи вибір, ви формуєте сюжет і світ навколо. Тут народжуються легенди. Якою буде ваша?</p><p>СТВОРІТЬ ВЛАСНОГО КІБЕРПАНКА<br>Станьте міським бандитом, оснащеним кібернетичними імплантатами, і побудуйте свою легенду на вулицях Найт-Сіті.</p><p>ДОСЛІДЖУЙТЕ МІСТО МАЙБУТНЬОГО<br>В Найт-Сіті є безліч занять, місць, які можна відвідати, та людей, яких можна зустріти. Куди йти, коли це робити і в який спосіб — залежить від вас.</p><p>СТВОРІТЬ ВЛАСНУ ЛЕГЕНДУ<br>Подайтеся на пошуки небезпечних пригод і побудуйте взаємини з незабутніми персонажами, чия доля залежить від вашого вибору.</p><p>СУТТЄВІ ВДОСКОНАЛЕННЯ<br>Пізнайте «Cyberpunk 2077» з численними змінами і покращеннями ігроладу, економіки, міста, карти тощо.</p><p>БЕЗКОШТОВНИЙ ДОДАТКОВИЙ ВМІСТ<br>Отримайте доступ до безкоштовних предметів, серед яких нова вогнепальна і холодна зброя, опції налаштування персонажа та інше.</p>', 1, '63c048b43fbc0.jpg', '2023-01-06 16:50:37'),
(11, 'Fallout 3: Game of the Year Edition', 3, 520, 'Prepare for the Future™ With Fallout 3: Game of the Year Edition, experience the most acclaimed game of 2008 like never before. Create a character of your choosing and descend into an awe-inspiring, post-apocalyptic world where every minute is a fight for survival.', '<p><strong>Prepare for the Future™</strong><br>With Fallout 3: Game of the Year Edition, experience the most acclaimed game of 2008 like never before. Create a character of your choosing and descend into an awe-inspiring, post-apocalyptic world where every minute is a fight for survival. Fallout 3: Game of the Year Edition includes all five of the Fallout 3 Game Add-on Packs:<br>&nbsp;</p><ul><li><strong>Operation: Anchorage</strong> - Enter a military simulation and fight in the liberation of Anchorage, Alaska from its Chinese Communist invaders.<br>&nbsp;</li><li><strong>The Pitt</strong> - Travel to the post-apocalyptic remains of Pittsburgh and become embroiled in a conflict between slaves and their Raider masters.<br>&nbsp;</li><li><strong>Broken Steel</strong> - Increase your level cap to 30, and finish the fight against the Enclave remnants alongside Liberty Prime.<br>&nbsp;</li><li><strong>Point Lookout</strong> - Embark on a mysterious and open-ended adventure in a huge, murky swampland along the coast of Maryland.<br>&nbsp;</li><li><strong>Mothership Zeta</strong> - Defy hostile alien abductors and fight your way off of the alien mothership, orbiting miles above the Capital Wasteland.<br>&nbsp;</li></ul><h2>Key Features</h2><ul><li><strong>Limitless Freedom</strong> - Take in the sights and sounds of the vast Capital Wasteland! See the great monuments of the United States lying in post-apocalyptic ruin! You make the choices that define you and change the world. Just keep an eye on your Rad Meter!<br>&nbsp;</li><li><strong>Experience S.P.E.C.I.A.L.</strong> - Vault-Tec engineers bring you the latest in human ability simulation — the SPECIAL Character System! Utilizing new breakthroughs in points-based ability representation, SPECIAL affords unlimited customization of your character. Also included are dozens of unique skills and perks to choose from, each with a dazzling variety of effects!<br>&nbsp;</li><li><strong>Fantastic New Views</strong> - The wizards at Vault-Tec have done it again! No longer constrained to just one view, experience the world from 1st or 3rd person perspective. Customize your view with the touch of a button!<br>&nbsp;</li><li><strong>The Power of Choice</strong> - Feeling like a dastardly villain today, or a Good Samaritan? Pick a side or walk the line, as every situation can be dealt with in many different ways. Talk out your problems in a civilized fashion, or just flash your Plasma Rifle.<br>&nbsp;</li><li><strong>Blast \'Em Away With V.A.T.S.</strong> - Even the odds in combat with the Vault-Tec Assisted Targeting System for your Pip-Boy Model 3000! V.A.T.S. allows you to pause time in combat, target specific body parts on your target, queue up attacks, and let Vault-Tec take out your aggression for you. Rain death and destruction in an all-new cinematic presentation.<br>&nbsp;</li><li><strong>Mind-Blowing Artificial Intelligence</strong> - At Vault-Tec, we realize that the key to reviving civilization after a global nuclear war is people. Our best minds pooled their efforts to produce an advanced version of Radiant AI, America\'s First Choice in Human Interaction Simulation. Facial expressions, gestures, unique dialog, and lifelike behavior are brought together with stunning results by the latest in Vault-Tec technology.<br>&nbsp;</li><li><strong>Eye-Popping Prettiness*</strong> - Witness the harsh realities of nuclear fallout rendered like never before in modern super-deluxe HD graphics. From the barren Wasteland, to the danger-filled offices and metro tunnels of DC, to the hideous rotten flesh of a mutant\'s face.<br>&nbsp;</li></ul><p>*Protective Eyewear Encouraged.</p>', 1, '63c067198ddbe.jpg', '2023-01-06 16:50:37'),
(12, 'test delete', NULL, 5, 'qdwqd', '<p>ewfewf</p>', 1, '63b54a884afc6.jpg', '2023-01-06 16:50:37'),
(13, 'Fallout: New Vegas', 3, 260, 'Welcome to Vegas. New Vegas. Enjoy your stay!', '<p>Welcome to Vegas. New Vegas.<br>It’s the kind of town where you dig your own grave prior to being shot in the head and left for dead…and that’s before things really get ugly. It’s a town of dreamers and desperados being torn apart by warring factions vying for complete control of this desert oasis. It’s a place where the right kind of person with the right kind of weaponry can really make a name for themselves, and make more than an enemy or two along the way.<br>As you battle your way across the heat-blasted Mojave Wasteland, the colossal Hoover Dam, and the neon drenched Vegas Strip, you’ll be introduced to a colorful cast of characters, power-hungry factions, special weapons, mutated creatures and much more. Choose sides in the upcoming war or declare “winner takes all” and crown yourself the King of New Vegas in this follow-up to the 2008 videogame of the year, Fallout 3.<br>Enjoy your stay.</p><h2>Key Features</h2><p><strong>Feel the Heat in New Vegas!</strong> Not even nuclear fallout could slow the hustle of Sin City. Explore the vast expanses of the desert wastelands – from the small towns dotting the Mojave Wasteland to the bright lights of the New Vegas strip. See the Great Southwest as could only be imagined in Fallout.<br><strong>Feuding Factions, Colorful Characters and a Host of Hostiles!</strong> A war is brewing between rival factions with consequences that will change the lives of all the inhabitants of New Vegas. The choices you make will bring you into contact with countless characters, creatures, allies, and foes, and determine the final explosive outcome of this epic power struggle.<br><strong>New Systems!</strong> Enjoy new additions to <strong>Fallout: New Vegas</strong> such as a Companion Wheel that streamlines directing your companions, a Reputation System that tracks the consequences of your actions, and the aptly titled Hardcore Mode to separate the meek from the mighty. Special melee combat moves have been added to bring new meaning to the phrase “up close and personal”. Use V.A.T.S. to pause time in combat, target specific enemy body parts and queue up attacks, or get right to the action using the finely-tuned real-time combat mechanics.<br><strong>An Arsenal of Shiny New Guns!</strong> With double the amount of weapons found in Fallout 3, you’ll have more than enough new and exciting ways to deal with the threats of the wasteland and the locals. In addition, Vault-Tec engineers have devised a new weapons configuration system that lets you tinker with your toys and see the modifications you make in real time.<br><strong>Let it Ride!</strong> In a huge, open world with unlimited options you can see the sights, choose sides, or go it alone. Peacemaker or Hard Case, House Rules, or the Wild Card - it’s all in how you play the game.</p>', 1, '63c0683a5c91b.jpg', '2023-01-06 16:50:37'),
(14, 'Grand Theft Auto V', 1, 629, 'Grand Theft Auto V для ПК – це шанс знову відчути неповторну атмосферу славетного містечка Los Santos і відвідати округ Blaine County, але тепер із роздільною здатністю 4K та частотою 60 кадр./с.', '<p>Коли молодий хуліган, колишній грабіжник банків і неврівноважений психопат починають свою гру з безумними ватажками кримінального світу, владою США та індустрією розваг, їм доведеться провернути парочку небезпечних пограбувань, щоб вижити в жорстокому місті, де не можна довіряти нікому, а особливо один одному.<br><br>Grand Theft Auto V для ПК – це шанс знову відчути неповторну атмосферу славетного містечка Los Santos і відвідати округ Blaine County, але тепер із роздільною здатністю 4K та частотою 60 кадр./с.<br><br>Гравці мають змогу налаштувати гру на ПК повністю на власний смак: можна змінити понад 25 окремих параметрів графіки, щоб вибрати потрібну якість текстур, складність побудови тіней, рівень теселяції поверхонь, ступінь згладжування тощо. Крім того, підтримується розширене налаштування миші та клавіатури. Також додано спеціальний повзунок для регулювання густоти населення (щоб вибрати інтенсивність трафіку автомобілів і кількість пішоходів на дорогах), підтримку двох і навіть трьох моніторів, можливість 3D-перегляду та автоматичне розпізнавання контролерів.<br><br>Grand Theft Auto V для ПК також має багатокористувацький режим Grand Theft Auto Online для 30 гравців і двох глядачів. Grand Theft Auto Online для ПК включає всі наявні оновлення ігрового процесу та вмісту, випущені компанією Rockstar від моменту створення Grand Theft Auto Online, зокрема режими пограбування та суперництва.<br><br>У Grand Theft Auto V і Grand Theft Auto Online для ПК можна ввімкнути вигляд від першої особи, що дає змогу зовсім по-новому оцінити неперевершені краєвиди містечка Los Santos і округу Blaine County.<br><br>У Grand Theft Auto V для ПК також з’явився Відеоредактор Rockstar – потужний набір креативних інструментів, за допомогою яких можна швидко та без зайвих зусиль записувати й редагувати відеоролики з ігрового процесу та ділитися ними з іншими гравцями Grand Theft Auto V і Grand Theft Auto Online. У Відеоредакторі Rockstar є режим режисера, який дає змогу гравцям проявити свою творчість, знімаючи власні відеоролики, акторами яких можуть стати персонажі гри, пішоходи й навіть тварини. У кріслі режисера гравці зможуть використовувати безліч розширених функцій камери, різноманітні ефекти редагування (як-от сповільнена чи пришвидшена зйомка) і низку цікавих фільтрів камери. Також можна додавати власну музику з радіостанцій GTAV та регулювати інтенсивність музичного супроводу. Готові відео можна вивантажувати в YouTube і на сайт Rockstar Games Social Club безпосередньо з Відеоредактора Rockstar.<br><br>Славетні виконавці пісень «The Alchemist» і «Oh No» повертаються як ведучі нової радіостанції – The Lab FM. На хвилях радіостанції можна почути нову ексклюзивну музика від дуету, головним натхненням для якої стала головна композиція до гри. Окрім інших, до створення музики для гри долучилися такі музиканти та гурти, як Earl Sweatshirt, Freddie Gibbs, Little Dragon, Killer Mike і Sam Herring із групи Future Islands. Гравці також можуть кататися містечком Los Santos і округом Blaine County під ритми власної музики на радіостанції Self Radio, де лунають записи, створені гравцями власноруч.</p>', 1, '63c06061088e9.jpg', '2023-01-06 16:50:37'),
(15, 'qwrqew', 3, 2, 'dwqd', '<p>qwdqdw</p>', 1, '63b564300a222.jpg', '2023-01-06 16:50:37'),
(16, 'qdqwd', 8, 50, 'WEFE', '<p>dwqdqwd</p>', 1, '63b56503b8c45.jpg', '2023-01-06 16:50:37'),
(17, 'Dota 2', 2, 0, 'Щодня мільйони гравців у всьому світі вступають у бій за одного з понад сотні героїв Dota. І немає значення, буде це 10-та година гри чи 1000-на, завжди знайдеться щось нове для відкриття. Dota 2 живе своїм життям завдяки постійній еволюції ігроладу, можливостей і героїв.', '<p><strong>Найпопулярніша гра в Steam.</strong><br>Щодня мільйони гравців у всьому світі вступають у бій за одного з понад сотні героїв Dota. І немає значення, буде це 10-та година гри чи 1000-на, завжди знайдеться щось нове для відкриття. Завдяки регулярним оновленням, які забезпечують постійну еволюцію ігроладу, можливостей та героїв, Dota 2 дійсно розпочала жити власним життям.<br><br><strong>Одне поле бою. Безмежні можливості.</strong><br>Коли справа доходить до різноманітності героїв, здібностей та потужних предметів, Dota має безкінечну кількість варіантів — немає двох однакових ігор. Будь-який герой може виконувати безліч ролей, а велика кількість предметів допоможе задовольнити всі потреби гри. Dota не надає обмежень на те, як грати — ви можете створити свій власний стиль гри.<br><br><strong>Усі герої безкоштовні.</strong><br>Змагальна рівновага — головна перлина Dota, і для того, щоби всі мали рівні можливості, основний вміст гри — як-от величезний вибір героїв — доступний усім гравцям. Шанувальники можуть купувати декоративні предмети для персонажів та веселі доповнення для їхнього світу, але все необхідне для гри включено ще до того, як ви приєднаєтеся до першого матчу.<br><br><strong>Приводьте своїх друзів та грайте разом.</strong><br>Dota різнобічна, і постійно розвивається, проте приєднатися ніколи не пізно.<br>Вивчайте основи гри в кооперативі з ботами. Відточуйте здібності в деморежимі героя. Пориньте в систему пошуку матчів, побудовану на поведінці та здібностях, котра гарантує, що для вас будуть підібрані правильні гравці в кожному матчі.</p>', 1, '63c0634661ebd.jpg', '2023-01-06 16:50:37'),
(19, 'qeqweqew', 1, 30, 'qdwd', '<p>wdqdwq</p>', 1, '63b7f1ee2c4fb.jpg', '2023-01-06 16:50:37'),
(20, 'test', 1, 20, 'qweqe', '<p>qwddqwd</p>', 1, '63b7fb269c45d.jpg', '2023-01-06 16:50:37'),
(23, 'Counter-Strike: Global Offensive', 2, 0, 'Counter-Strike: Global Offensive (CS:GO) продовжує розвивати командний бойовий ігролад, що зробив серію успішною багато років тому. CS:GO пропонує нові мапи, персонажів, зброю, ігрові режими, а також оновлені версії класичного вмісту (de_dust2 тощо).', '<p>Counter-Strike: Global Offensive (CS:GO) продовжує розвивати командний бойовий ігролад, що зробив серію успішною багато років тому.<br><br>CS:GO пропонує нові мапи, персонажів, зброю, ігрові режими, а також оновлені версії класичного вмісту (de_dust2 тощо).<br><br>Даґ Ломбарді з Valve сказав: «Гра Counter-Strike захопила ігрову індустрію зненацька. Мод, який мав мало шансів на успіх, став найпопулярнішою грою-бойовиком для ПК майже одразу після виходу в серпні 1999-го. Протягом наступних 12 років CS продовжувала очолювати список ігор із найбільшою кількістю гравців, у неї грали на найбільших змагальних турнірах, і вона продалася накладом у 25 мільйонів копій (уся франшиза). CS:GO обіцяє розширити відзначені нагородами ігрові механіки й надати можливість грати не лише на ПК, але й на сучасних ігрових консолях і комп’ютерах на операційній системі Mac».</p>', 1, '63c0642871504.jpg', '2023-01-12 19:48:56');

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
(1, ' Rockstar Games', '63c05e60cbd95.jpg'),
(2, 'Valve', '63c06193227ea.jpg'),
(3, 'Bethesda', '63c064b7165c8.jpg'),
(6, 'CD PROJEKT RED', '63c048d684ab5.jpg'),
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `access_level` int NOT NULL DEFAULT '1',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `name`, `access_level`, `photo`) VALUES
(1, 'mankivskiy.vlsd@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Mankivskyi', 11, '63c0069944aee.png'),
(12, 'mankivskyi5@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(13, 'mankivskyi6@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(14, 'mankivskyi7@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(15, 'mankivskyi8@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(16, 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(17, 'test1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(18, 'test2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, ''),
(19, 'test3@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'testqwe', 1, '');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблиці `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблиці `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT для таблиці `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `library`
--
ALTER TABLE `library`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
