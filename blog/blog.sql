-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2020 г., 14:42
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie_id` int(11) NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(1, 'Значимость этих проблем', 'test.jpg', 'Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки существенных финансовых и административных условий. Не следует, однако забывать, что начало повседневной работы по формированию позиции играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям. ', 1, '2020-03-15 21:59:00', 123),
(2, 'Таким образом', 'test.jpg', 'Таким образом рамки и место обучения кадров представляет собой интересный эксперимент проверки позиций, занимаемых участниками в отношении поставленных задач. Таким образом реализация намеченных плановых заданий играет важную роль в формировании позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет оценить значение соответствующий условий активизации. Задача организации, в особенности же начало повседневной работы по формированию позиции требуют определения и уточнения новых предложений. Идейные соображения высшего порядка, а также сложившаяся структура организации способствует подготовки и реализации форм развития. ', 4, '2020-03-15 21:59:30', 339),
(3, 'Повседневная практика показывает', 'test.jpg', 'Повседневная практика показывает, что сложившаяся структура организации позволяет выполнять важные задания по разработке дальнейших направлений развития. Не следует, однако забывать, что рамки и место обучения кадров в значительной степени обуславливает создание модели развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании направлений прогрессивного развития. Товарищи! новая модель организационной деятельности представляет собой интересный эксперимент проверки систем массового участия. ', 5, '2020-03-15 21:59:51', 463),
(4, '\"Возможно, деревенские уже все умерли\"', '1.jpg', 'Сергей Асланян — мастер на все руки. Известен как журналист, автомобильный и оружейный эксперт, ведущий программы на радиостанции «Эхо Москвы». Успел поработать социологом во ВЦИОМ, художником-карикатуристом, редактором нескольких телепередач, корреспондентом «Коммерсанта» и «МК», ведущим на «Русском Радио», Авторадио\", «Столице FM» и «Маяке», главредом журнала Auto, Motor und Sport. Сооснователь портала pravorulya.com и автомобильного экспертного онлайн-сервиса amsrus.ru. Автор трёх книг.', 1, '2020-03-15 23:12:39', 660),
(5, 'В Роспотребнадзоре предупредили об опасности', '2.jpg', 'Наличные деньги могут быть каналом передачи коронавирусной инфекции. После их использования необходимо не трогать лицо и сразу мыть руки, сообщает Роспотребнадзор со ссылкой на рекомендации Всемирной организации здравоохранения (ВОЗ).\r\nОтмечается, что коронавирус может прожить на бумажном носителе три-четыре дня, на пластиковом — до девяти дней. Банкноты Банка России перед передачей кредитным организациям выдерживаются в хранилище в течение двух недель, однако не все они попадают сразу в банки, предупреждают в Роспотребнадзоре.\r\n\r\nПри использовании банкомата рекомендуется соблюдать осторожность при наборе пин-кода. Наиболее безопасными считаются бесконтактные платежи. В ведомстве также посоветовали регулярно протирать смартфоны дезинфицирующими средствами.', 2, '2020-03-15 23:13:30', 798),
(6, 'Роналду отдаст свои отели в Португалии', '3.jpg', 'Футболист «Ювентуса» Криштиану Роналдо переоборудует свои отели на Мадейре и в Лиссабоне под больницы для заразившихся коронавирусом. Он также оплатит работу медперсонала.\r\n\r\nНападающий итальянского «Ювентуса» Криштиану Роналду создаст в Португалии бесплатные больницы для заразившихся новым коронавирусом SARS-CoV-2. Об этом в ночь на воскресенье, 15 марта, сообщило испанское издание Marca.\r\n\r\nПортугальский футболист намерен превратить в клиники свои отели в Португалии для борьбы с пандемией коронавирусной инфекции. Кроме того, Роналду будет оплачивать работу врачей и других сотрудников. Для пациентов с SARS-CoV-2 лечение в больницах будет бесплатным.\r\n\r\n«Мы должны прислушиваться к властям, защита нашей жизни выше всяких интересов», — цитирует Marca слова футболиста, в настоящий момент находящийся на карантине на его родном острове Мадейра после заражения коронавирусом одного из футболистов команды. Принадлежащие Роналдо отели находятся в главном городе Мадейры Фуншале, а также в Лиссабоне.\r\n\r\nНынешний эпицентр коронавируса — Италия\r\n\r\nС начала вспышки в китайской провинции Хубэй в конце 2019 года коронавирус SARS-CoV-2 выявлен в 155 странах и территориях. Всемирная организация здравоохранения (ВОЗ) заявила о начале пандемии коронавируса. В мире официально подтверждены почти 160 000 случаев заражения, почти 6 тысяч человек скончались, еще 76 тысяч больных выздоровели.\r\n\r\nПри этом почти 81 000 случаев заболевания и более 3000 летальных исходов приходится на КНР. В настоящее время эпицентр коронавируса переместился в Европу, где наиболее пострадавшей страной стала Италия. Здесь насчитывается 21 157 случаев заражения, 1441 человек скончался. В Испании выявлено почти 6,4 тысячи заболевших, в Германии — 5,1 тысячи, во Франции — 4,5 тысячи. В Португалии пока официально зарегистрировано 169 пациентов с коронавирусом, вызывающим пневмонию COVID-19.', 3, '2020-03-15 23:14:16', 991),
(7, 'SpaceX не смогла запустить 60 спутников', '4.jpg', 'Старт был прерван буквально за несколько секунд до пуска\r\nНЬЮ-ЙОРК, 15 марта. /ТАСС/. Американская компания SpaceX в воскресенье не смогла запустить ракету-носитель Falcon 9 с 60 микроспутниками Starlink, предназначенными для обеспечения доступа к высокоскоростному интернету. Старт с мыса Канаверал (штат Флорида) должен был состояться в 09:22 по времени восточного побережья США (16:22 мск), однако был прерван буквально за несколько секунд до пуска.\r\n\r\nТрансляция велась на сайте SpaceX.\r\n\r\n«Стандартный автоматический отбой, вызванный перерывом в поступлении данных во время проверки мощности двигателей. Мы объявим новую дату запуска, как только получим подтверждение наличия такой возможности», — пояснила в своем Twitter компания под руководством Илона Маска.\r\n\r\nПервая ступень носителя использовалась ранее четыре раза для вывода аппаратов на околоземную орбиту. Эти пуски состоялись в июле 2018 года, в октябре того же года, в феврале и ноябре 2019 года. Компания планировала снова вернуть ступень, посадив ее в дистанционном режиме на платформу Of Course I Still Love You в Атлантическом океане.\r\n\r\nКаждый спутник весит приблизительно 260 кг и имеет плоскую форму для компактности. Аппараты оснащены бортовыми двигателями, позволяющими сходить с орбиты Земли. SpaceX заверяет, что спутники даже при отказе двигателей будут в автоматическом режиме снижать орбиту и сгорят в плотных слоях атмосферы в период 1-5 лет после истечения срока эксплуатации.\r\n\r\nО проекте Starlink\r\nСеть Starlink предназначена для обеспечения доступа в интернет пользователей на всей планете за счет развертывания на околоземной орбите большого количества малых аппаратов (весом до 500 кг). Эта система связи повсеместно, включая труднодоступные и малонаселенные районы, будет обеспечивать широкополосный доступ в интернет на скорости 1 гигабит в секунду, что соответствует стандарту 5G.\r\n\r\nНа начальном этапе SpaceX планирует обеспечить высокоскоростной доступ в интернет для жителей юга США к концу 2020 года. По оценке компании, размещение на орбите в общей сложности 11 тыс. спутников и ввод их в эксплуатацию обойдется в $10 млрд. В мае 2019 года в космос были выведены первые 60 спутников, в ноябре того же года на орбиту была доставлена вторая группировка аппаратов Starlink, третья, четвертая и пятая — в январе и феврале этого года.', 6, '2020-03-15 23:14:54', 147),
(8, 'Обессиленного Яценюка в медицинской маске', '5.jpg', 'Бывшего премьер-министра Украины Арсения Яценюка в обессиленном состоянии, в медицинской маске на лице, доставили в киевскую клинику «Борис». Об этом сообщает украинское издание «Обозреватель» со ссылкой на очевидца.\r\n\r\nПо данным издания, 15 марта автомобиль Toyota Sequoia, принадлежащий Яценюку, подъехал к черному ходу медучреждения. На переднем пассажирском сиденье бывший премьер долго собирался с силами, чтобы выйти из салона машины. Охранник придерживал Яценюка под руки, помогая дойти до входной двери. Сопровождающий также был в медицинской маске.\r\n\r\nПресс-секретарь Яценюка Ольга Лапло подтвердила пребывание политика в клинике. «С Арсением Яценюком все в порядке. Он был в клинике, но по причинам, которые не связаны ни с одним ОРЗ. Это была плановая процедура, которая не имеет ничего общего с диагностикой вирусного заболевания», — заявила она.\r\n\r\n15 марта сообщалось, что бывший президент Украины Петр Порошенко вернулся на Украину из охваченной коронавирусом Испании, где он проходил курс лечения. Вместе с ним прилетели трое его детей: Михаил, Евгения и Александра. Отмечается, что все они были в масках.', 4, '2020-03-15 23:15:46', 258),
(9, 'ЛНА заявила о ликвидации турецких военных', '6.jpg', 'Ливийская национальная армия маршала Халифы Хафтара нанесла удары по аэродрому Митига, ликвидировав нескольких турецких военных.\r\nОн отметил, что ЛНА ударила по Мисрате, уничтожив «все, что приравнивается к турецкому присутствию», в том числе военные склады.\r\nКроме того, по словам аль-Мисмари, армия вошла в несколько районов Триполи, но соблюдает перемирие, а операции проводят только в качестве ответа на провокации сил Правительства национального согласия.\r\n \r\n \r\n \r\nСитуация в Ливии\r\n \r\nВ 2011 году международная коалиция во главе с США и НАТО провела в Ливии операцию, результатом которой стало убийство Муаммара Каддафи и свержение существовавшего более 40 лет режима. После этого в стране царит острый кризис. На востоке, в городе Тобрук, заседает избранный народом парламент. Его поддерживает ЛНА во главе с Хафтаром. На западе, в Триполи, действует сформированное при поддержке ООН и Евросоюза ПНС, возглавляемое Файезом Сарраджем.\r\n \r\nДвоевластие и обвал в системе безопасности привели к росту активности вооруженных повстанческих группировок и террористических организаций. Из-за отсутствия централизованной власти и единой армии Ливия превратилась в центр контрабанды, а также перевалочный пункт нелегальных мигрантов из Африки в Европу.\r\n \r\nВ апреле прошлого года Хафтар начал наступление на Триполи для «освобождения от террористов». Лояльные правительству вооруженные формирования объявили о начале ответной операции «Вулкан гнева». За последние месяцы в регионе погибли несколько сотен человек, тысячи ранены.\r\n \r\n \r\nВ Берлине 19 января прошла международная конференция по Ливии с участием России, США, Турции, Египта и ряда других стран, а также ЕС и ООН. В столицу Германии приехали премьер Правительства национального согласия Файез Саррадж и Хафтар. Организовать прямые переговоры между ними не удалось.\r\n \r\nГлавным итогом конференции стал призыв участников к прекращению огня и обязательство воздержаться от вмешательства в конфликт, соблюдая эмбарго на поставку вооружений сторонам.', 2, '2020-03-15 23:17:03', 382);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Программирование'),
(2, 'LifeStyle'),
(3, 'Игры'),
(4, 'Безопасность'),
(5, 'Хакерство'),
(6, 'Разное');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `autor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `autor`, `nickname`, `email`, `text`, `pubdate`, `articles_id`) VALUES
(1, 'Вася Пупкин', 'Vasya', 'iko@murom.info', 'Лорем ипсум трали-вали...', '2020-03-16 11:49:05', 5),
(2, 'Иннокентий Смактуновский', 'Tsar', 'smev@murom.info', 'Лорем ипсум тили-тили...', '2020-03-16 11:55:05', 4),
(3, 'Клим Чугункин', 'Dog', 'Dog@murom.info', 'Лорем ипсум парам-пам-пам..', '2020-03-16 10:00:00', 3),
(4, 'Пирожок С Повидлом', 'Pirojok', 'mutedalien@yandex.ru', 'Лорем ипсум парам-пам-пам..', '2020-03-16 11:58:05', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
