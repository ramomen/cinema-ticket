-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 15, 2021 at 12:09 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cinemaTicket`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number_of_seats` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `number_of_seats`, `timestamp`, `status`, `user_id`, `show_id`) VALUES
(1, 1, '2021-07-15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cinemas`
--

CREATE TABLE `cinemas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_cinema_halls` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`id`, `name`, `total_cinema_halls`, `city_id`) VALUES
(1, 'Avsar', NULL, 6),
(2, 'Cinemaximum', NULL, 34),
(3, 'Cinecity', NULL, 6),
(4, 'Cinema Pink', NULL, 35),
(5, 'Cinemarine', NULL, 34),
(6, 'Cineplex', NULL, 6),
(7, 'Cinetech', NULL, 34),
(8, 'Prestige', NULL, 35),
(9, 'VizyonCinens', NULL, 6),
(10, 'Cinens', NULL, 34),
(11, 'Avsar', NULL, 35),
(12, 'Cinemaximum', NULL, 35),
(13, 'Cinecity 2', NULL, 6),
(14, 'Cinema Pink', NULL, 35),
(15, 'Cinemarine', NULL, 35),
(16, 'Cineplex 2', NULL, 6),
(17, 'Cinetech 2', NULL, 34),
(18, 'Prestige', NULL, 34),
(19, 'VizyonCinens 2', NULL, 6),
(20, 'Cinens', NULL, 35),
(21, 'Avsar 2', NULL, 6),
(22, 'Cinemaximum', NULL, 6),
(23, 'Cinecity 3', NULL, 6),
(24, 'Cinema Pink', NULL, 6),
(25, 'Cinemarine', NULL, 34),
(26, 'Cineplex', NULL, 35),
(27, 'Cinetech', NULL, 35),
(28, 'Prestige 2', NULL, 35),
(29, 'VizyonCinens 3', NULL, 6),
(30, 'Cinens 2', NULL, 35);

-- --------------------------------------------------------

--
-- Table structure for table `cinema_halls`
--

CREATE TABLE `cinema_halls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_seats` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cinema_halls`
--

INSERT INTO `cinema_halls` (`id`, `name`, `total_seats`, `cinema_id`) VALUES
(1, 'Salon 1', 0, 2),
(2, 'Salon 2', 0, 12),
(3, 'Salon 3', 0, 22),
(4, 'Salon 4', 0, 2),
(5, 'Salon 1', 0, 12),
(6, 'Salon 2', 0, 22),
(7, 'Salon 3', 0, 2),
(8, 'Salon 4', 0, 12),
(9, 'Salon 1', 0, 22),
(10, 'Salon 2', 0, 2),
(11, 'Salon 3', 0, 12),
(12, 'Salon 4', 0, 22);

-- --------------------------------------------------------

--
-- Table structure for table `cinema_seats`
--

CREATE TABLE `cinema_seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cinema_hall_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cinema_seats`
--

INSERT INTO `cinema_seats` (`id`, `seat_number`, `type`, `cinema_hall_id`) VALUES
(1, 1, 2, 1),
(2, 2, 3, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 3, 1),
(6, 6, 1, 1),
(7, 7, 2, 1),
(8, 8, 2, 1),
(9, 9, 3, 1),
(10, 10, 2, 1),
(11, 11, 2, 1),
(12, 12, 1, 1),
(13, 13, 2, 1),
(14, 14, 2, 1),
(15, 15, 2, 1),
(16, 16, 3, 1),
(17, 17, 3, 1),
(18, 18, 3, 1),
(19, 19, 2, 1),
(20, 20, 2, 1),
(21, 21, 2, 1),
(22, 22, 1, 1),
(23, 23, 2, 1),
(24, 24, 1, 1),
(25, 25, 2, 1),
(26, 26, 3, 1),
(27, 27, 1, 1),
(28, 28, 2, 1),
(29, 29, 2, 1),
(30, 30, 2, 1),
(31, 31, 3, 1),
(32, 32, 3, 1),
(33, 33, 1, 1),
(34, 34, 1, 1),
(35, 35, 3, 1),
(36, 36, 2, 1),
(37, 37, 2, 1),
(38, 38, 2, 1),
(39, 39, 1, 1),
(40, 40, 1, 1),
(41, 41, 3, 1),
(42, 42, 3, 1),
(43, 43, 2, 1),
(44, 44, 1, 1),
(45, 45, 1, 1),
(46, 46, 3, 1),
(47, 47, 3, 1),
(48, 48, 1, 1),
(49, 49, 2, 1),
(50, 50, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state`, `zipcode`) VALUES
(1, 'Adana', 'Merkez', 1),
(2, 'Adıyaman', 'Merkez', 2),
(3, 'Afyonkarahisar', 'Merkez', 3),
(4, 'Ağrı', 'Merkez', 4),
(5, 'Aksaray', 'Merkez', 5),
(6, 'Amasya', 'Merkez', 6),
(7, 'Ankara', 'Merkez', 7),
(8, 'Antalya', 'Merkez', 8),
(9, 'Ardahan', 'Merkez', 9),
(10, 'Artvin', 'Merkez', 10),
(11, 'Aydın', 'Merkez', 11),
(12, 'Balıkesir', 'Merkez', 12),
(13, 'Bartın', 'Merkez', 13),
(14, 'Batman', 'Merkez', 14),
(15, 'Bayburt', 'Merkez', 15),
(16, 'Bilecik', 'Merkez', 16),
(17, 'Bingöl', 'Merkez', 17),
(18, 'Bitlis', 'Merkez', 18),
(19, 'Bolu', 'Merkez', 19),
(20, 'Burdur', 'Merkez', 20),
(21, 'Bursa', 'Merkez', 21),
(22, 'Çanakkale', 'Merkez', 22),
(23, 'Çankırı', 'Merkez', 23),
(24, 'Çorum', 'Merkez', 24),
(25, 'Denizli', 'Merkez', 25),
(26, 'Diyarbakır', 'Merkez', 26),
(27, 'Düzce', 'Merkez', 27),
(28, 'Edirne', 'Merkez', 28),
(29, 'Elazığ', 'Merkez', 29),
(30, 'Erzincan', 'Merkez', 30),
(31, 'Erzurum', 'Merkez', 31),
(32, 'Eskişehir', 'Merkez', 32),
(33, 'Gaziantep', 'Merkez', 33),
(34, 'Giresun', 'Merkez', 34),
(35, 'Gümüşhane', 'Merkez', 35),
(36, 'Hakkâri', 'Merkez', 36),
(37, 'Hatay', 'Merkez', 37),
(38, 'Iğdır', 'Merkez', 38),
(39, 'Isparta', 'Merkez', 39),
(40, 'İstanbul', 'Merkez', 40),
(41, 'İzmir', 'Merkez', 41),
(42, 'Kahramanmaraş', 'Merkez', 42),
(43, 'Karabük', 'Merkez', 43),
(44, 'Karaman', 'Merkez', 44),
(45, 'Kars', 'Merkez', 45),
(46, 'Kastamonu', 'Merkez', 46),
(47, 'Kayseri', 'Merkez', 47),
(48, 'Kilis', 'Merkez', 48),
(49, 'Kırıkkale', 'Merkez', 49),
(50, 'Kırklareli', 'Merkez', 50),
(51, 'Kırşehir', 'Merkez', 51),
(52, 'Kocaeli', 'Merkez', 52),
(53, 'Konya', 'Merkez', 53),
(54, 'Kütahya', 'Merkez', 54),
(55, 'Malatya', 'Merkez', 55),
(56, 'Manisa', 'Merkez', 56),
(57, 'Mardin', 'Merkez', 57),
(58, 'Mersin', 'Merkez', 58),
(59, 'Muğla', 'Merkez', 59),
(60, 'Muş', 'Merkez', 60),
(61, 'Nevşehir', 'Merkez', 61),
(62, 'Niğde', 'Merkez', 62),
(63, 'Ordu', 'Merkez', 63),
(64, 'Osmaniye', 'Merkez', 64),
(65, 'Rize', 'Merkez', 65),
(66, 'Sakarya', 'Merkez', 66),
(67, 'Samsun', 'Merkez', 67),
(68, 'Şanlıurfa', 'Merkez', 68),
(69, 'Siirt', 'Merkez', 69),
(70, 'Sinop', 'Merkez', 70),
(71, 'Sivas', 'Merkez', 71),
(72, 'Şırnak', 'Merkez', 72),
(73, 'Tekirdağ', 'Merkez', 73),
(74, 'Tokat', 'Merkez', 74),
(75, 'Trabzon', 'Merkez', 75),
(76, 'Tunceli', 'Merkez', 76),
(77, 'Uşak', 'Merkez', 77),
(78, 'Van', 'Merkez', 78),
(79, 'Yalova', 'Merkez', 79),
(80, 'Yozgat', 'Merkez', 80),
(81, 'Zonguldak', 'Merkez', 81);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_07_06_113526_create_movies', 1),
(10, '2021_07_06_113542_create_cities', 1),
(11, '2021_07_06_113556_create_cinemas', 1),
(12, '2021_07_06_113606_create_cinema_halls', 1),
(13, '2021_07_06_113614_create_cinema_seats', 1),
(14, '2021_07_06_113628_create_shows', 1),
(15, '2021_07_06_113644_create_show_seats', 1),
(16, '2021_07_06_113713_create_bookings', 1),
(17, '2021_07_06_113727_create_payments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `duration`, `language`, `release_date`, `country`, `genre`) VALUES
(1, '\'R Xmas', 'Anterior dislocation of left ulnohumeral joint', '', 'Lao', '2020-11-28', 'China', 'Crime|Drama'),
(2, 'K-9', 'Toxic effect of other pesticides, undetermined, initial encounter', '', 'Thai', '2020-07-29', 'Guatemala', 'Action|Comedy|Crime'),
(3, 'Wattstax', 'Nondisplaced transverse fracture of unspecified patella, initial encounter for open fracture type IIIA, IIIB, or IIIC', '', 'Khmer', '2020-11-14', 'Indonesia', 'Documentary|Musical'),
(4, 'Chipmunk Adventure, The', 'Other viral diseases complicating pregnancy', '', 'Bulgarian', '2021-04-29', 'Philippines', 'Adventure|Animation|Children|Comedy|Fantasy|Musical'),
(5, 'Husk', 'Unspecified injury of popliteal vein, left leg', '', 'Sotho', '2020-09-20', 'Brazil', 'Horror|Thriller'),
(6, 'Scorpion King 3: Battle for Redemption, The', 'Superficial foreign body of unspecified part of neck', '', 'Burmese', '2021-01-25', 'Poland', 'Action|Adventure|Comedy|Fantasy'),
(7, 'Tree of Knowledge, The (Kundskabens træ)', 'Corrosion of unspecified degree of multiple sites of left ankle and foot, sequela', '', 'Estonian', '2021-01-29', 'Philippines', 'Drama'),
(8, 'Tulsa', 'Other incomplete lesion at C2 level of cervical spinal cord, subsequent encounter', '', 'Norwegian', '2021-01-29', 'China', 'Action|Drama|Romance'),
(9, 'Incognito', 'Fall from other pedestrian conveyance, subsequent encounter', '', 'Indonesian', '2021-02-04', 'China', 'Crime|Thriller'),
(10, 'Man Who Haunted Himself, The', 'Extremely low birth weight newborn, 500-749 grams', '', 'Polish', '2021-01-15', 'China', 'Drama|Fantasy|Horror|Mystery|Thriller'),
(11, 'Prom Night III: The Last Kiss', 'Continuing pregnancy after intrauterine death of one fetus or more, unspecified trimester, fetus 1', '', 'Hebrew', '2021-07-10', 'Peru', 'Horror'),
(12, 'Yes: 9012 Live', 'Burn of first degree of right knee, sequela', '', 'Portuguese', '2021-05-05', 'Brazil', 'Documentary|Musical'),
(13, 'Witch Hunt', 'Type III occipital condyle fracture, left side, subsequent encounter for fracture with routine healing', '', 'Haitian Creole', '2020-08-27', 'China', 'Documentary'),
(14, 'Baghban', 'Vernal conjunctivitis', '', 'Chinese', '2021-02-12', 'Poland', 'Drama|Romance'),
(15, 'Toast of New York, The', 'Nondisplaced fracture of greater tuberosity of unspecified humerus, subsequent encounter for fracture with nonunion', '', 'Maltese', '2020-11-10', 'Poland', 'Comedy|Drama|War'),
(16, 'Vampir (Cuadecuc, vampir)', 'Burn of first degree of multiple sites of right lower limb, except ankle and foot, subsequent encounter', '', 'Danish', '2021-03-14', 'Uganda', 'Documentary|Horror'),
(17, 'Scarlet Clue, The (Charlie Chan in the Scarlet Clue)', 'Unspecified occupant of bus injured in collision with heavy transport vehicle or bus in traffic accident', '', 'Zulu', '2021-06-11', 'Japan', 'Comedy|Crime|Mystery'),
(18, 'Air Doll (Kûki ningyô)', 'Nondisplaced osteochondral fracture of right patella, subsequent encounter for open fracture type I or II with nonunion', '', 'Polish', '2021-06-23', 'China', 'Drama'),
(19, 'Lilies', 'Idiopathic aseptic necrosis of left ulna', '', 'Italian', '2021-06-05', 'Ukraine', 'Drama|Fantasy|Romance'),
(20, '5 Centimeters per Second (Byôsoku 5 senchimêtoru)', 'Burn of first degree of shoulder and upper limb, except wrist and hand, unspecified site', '', 'Mongolian', '2020-11-18', 'Poland', 'Animation|Drama|Romance'),
(21, 'Man in the Gray Flannel Suit, The', '4-part fracture of surgical neck of unspecified humerus, initial encounter for closed fracture', '', 'Mongolian', '2021-02-13', 'Poland', 'Drama'),
(22, 'At Five in the Afternoon (Panj é asr)', 'Other dislocation of right foot, subsequent encounter', '', 'Tamil', '2021-03-25', 'Serbia', 'Drama'),
(23, 'Great Passage, The (Fune wo amu)', 'Other specified congenital musculoskeletal deformities', '', 'Fijian', '2021-06-02', 'China', 'Drama'),
(24, 'Wuthering Heights', 'Passenger in pick-up truck or van injured in collision with other and unspecified motor vehicles in traffic accident', '', 'Māori', '2020-11-30', 'Morocco', '(no genres listed)'),
(25, 'Lake House, The', 'Complications associated with artificial fertilization', '', 'Romanian', '2020-09-18', 'Russia', 'Drama|Fantasy|Romance'),
(26, 'Eklavya: The Royal Guard', 'Salter-Harris Type IV physeal fracture of right calcaneus, initial encounter for closed fracture', '', 'Guaraní', '2021-01-03', 'Indonesia', 'Action|Drama|Thriller'),
(27, 'Smiling Lieutenant, The', 'Strabismic amblyopia, bilateral', '', 'Albanian', '2021-04-08', 'Brazil', 'Comedy|Musical|Romance'),
(28, 'The Last Station', 'Poisoning by other parasympatholytics [anticholinergics and antimuscarinics] and spasmolytics, undetermined, sequela', '', 'Japanese', '2020-09-13', 'Sierra Leone', 'Drama'),
(29, 'Where the Money Is', 'Displaced segmental fracture of shaft of unspecified femur, sequela', '', 'Fijian', '2021-02-24', 'Vietnam', 'Comedy|Drama'),
(30, 'Too Many Cooks', 'Unspecified dislocation of right ring finger, initial encounter', '', 'Catalan', '2020-08-26', 'China', 'Comedy'),
(31, 'Sundowners, The', 'Poisoning by unspecified psychotropic drug, intentional self-harm, sequela', '', 'Telugu', '2021-07-12', 'France', 'Adventure|Drama'),
(32, 'Secret of Moonacre, The', 'Long term (current) use of hormonal contraceptives', '', 'Swedish', '2020-11-28', 'Jamaica', 'Adventure|Fantasy|Romance'),
(33, 'Step Up', 'Complex tear of lateral meniscus, current injury', '', 'Bosnian', '2021-01-27', 'Mexico', 'Drama|Romance'),
(34, 'Whole Town\'s Talking, The (Passport to Fame)', 'Burn of unspecified degree of abdominal wall, sequela', '', 'Khmer', '2021-05-02', 'China', 'Comedy|Crime'),
(35, 'Dark Angel, The', 'Passenger in pick-up truck or van injured in collision with pedestrian or animal in nontraffic accident', '', 'Punjabi', '2020-11-01', 'South Africa', 'Drama|Romance'),
(36, 'Private Romeo', 'Displaced comminuted fracture of shaft of unspecified femur, subsequent encounter for closed fracture with routine healing', '', 'Montenegrin', '2020-12-04', 'Poland', 'Drama'),
(37, 'Jekyll + Hyde', 'Food in other parts of respiratory tract causing other injury', '', 'Tok Pisin', '2020-10-25', 'Serbia', 'Horror|Thriller'),
(38, 'Sister Street Fighter (Onna hissatsu ken)', 'Toxic effect of contact with other venomous plant, undetermined, subsequent encounter', '', 'Indonesian', '2021-06-22', 'Ireland', 'Action|Drama'),
(39, 'Pi', 'Vomiting of newborn', '', 'Arabic', '2020-08-10', 'China', 'Drama|Sci-Fi|Thriller'),
(40, 'Odds Against Tomorrow', 'Combined arterial insufficiency and corporo-venous occlusive erectile dysfunction', '', 'Swedish', '2020-09-04', 'Sweden', 'Crime|Drama|Thriller'),
(41, 'Gaucho, The', 'Persons encountering health services in other specified circumstances', '', 'Dhivehi', '2021-04-28', 'China', 'Adventure|Romance'),
(42, 'Royal Wedding', 'Displaced fracture of greater tuberosity of left humerus, subsequent encounter for fracture with malunion', '', 'Afrikaans', '2021-01-15', 'China', 'Comedy|Musical|Romance'),
(43, 'Gantz', 'Malignant neoplasm of unspecified orbit', '', 'Hindi', '2021-01-16', 'Russia', 'Action|Horror|Sci-Fi'),
(44, 'But Not for Me', 'Other specified fracture of right pubis, initial encounter for closed fracture', '', 'Lao', '2021-06-09', 'Indonesia', 'Comedy|Romance'),
(45, 'Wild America', 'Corrosion of third degree of left palm, initial encounter', '', 'Kazakh', '2020-07-20', 'Albania', 'Adventure|Children'),
(46, 'Son of Frankenstein', 'Unspecified fracture of first metacarpal bone, unspecified hand, subsequent encounter for fracture with routine healing', '', 'Romanian', '2020-07-27', 'China', 'Horror'),
(47, 'Rookie, The', 'Nondisplaced fracture of lower epiphysis (separation) of left femur, subsequent encounter for open fracture type I or II with nonunion', '', 'Catalan', '2020-10-22', 'Brazil', 'Drama'),
(48, 'Promoter, The (Card, The)', 'Poisoning by vitamins, undetermined, sequela', '', 'Lao', '2020-11-03', 'Malaysia', 'Comedy'),
(49, 'Drowning by Numbers', 'Continuing pregnancy after spontaneous abortion of one fetus or more, second trimester, fetus 1', '', 'Māori', '2020-12-27', 'China', 'Comedy|Drama'),
(50, 'Counsellor at Law', 'Traumatic arthropathy, unspecified hand', '', 'Papiamento', '2021-05-22', 'Russia', 'Drama'),
(51, 'Best Boy', 'Pathological fracture, right hand', '', 'Swahili', '2021-01-23', 'Indonesia', 'Documentary'),
(52, 'Catch That Kid', 'Laceration of extensor muscle, fascia and tendon of left index finger at wrist and hand level', '', 'Japanese', '2021-06-14', 'Jersey', 'Action|Adventure|Children|Comedy|Crime'),
(53, 'Haunting, The', 'Other forms of listeriosis', '', 'Indonesian', '2021-02-18', 'China', 'Horror|Thriller'),
(54, 'Police, Adjective (Politist, adj.)', 'Persistent migraine aura without cerebral infarction, not intractable', '', 'Armenian', '2020-08-12', 'China', 'Comedy|Crime|Drama'),
(55, 'Subway', 'Other specified disorders of tendon, left wrist', '', 'Oriya', '2020-09-19', 'Thailand', 'Crime|Drama|Romance|Thriller'),
(56, 'Penny Dreadful', 'Gastric varices', '', 'Kashmiri', '2020-07-25', 'Thailand', 'Horror|Thriller'),
(57, 'Slipping-Down Life, A', 'Poisoning by oxytocic drugs, accidental (unintentional)', '', 'Kazakh', '2021-02-25', 'Niger', 'Drama|Romance'),
(58, 'Beautiful Troublemaker, The (La belle noiseuse)', 'Displaced fracture of intermediate cuneiform of left foot, subsequent encounter for fracture with nonunion', '', 'Bengali', '2020-08-17', 'Greece', 'Drama'),
(59, 'Green Lantern: First Flight', 'Arthropathy following intestinal bypass, right hip', '', 'Bengali', '2021-06-17', 'China', 'Action|Adventure|Animation|Fantasy|Sci-Fi'),
(60, 'Lady Liberty', 'Car occupant (driver) (passenger) injured in other specified transport accidents, subsequent encounter', '', 'Albanian', '2020-08-16', 'China', 'Comedy'),
(61, 'Thirst (Bakjwi)', 'Toxic effect of contact with other jellyfish, undetermined, sequela', '', 'Portuguese', '2021-04-18', 'Poland', 'Drama|Horror'),
(62, 'Pleasure of Being Robbed, The', 'Displaced fracture of medial phalanx of left little finger, sequela', '', 'Azeri', '2021-05-20', 'China', 'Comedy'),
(63, 'Kill Switch', 'Other psychoactive substance use, unspecified with withdrawal delirium', '', 'Lithuanian', '2021-01-24', 'Portugal', 'Action|Crime|Drama|Thriller'),
(64, 'Macbeth', 'Antisocial personality disorder', '', 'Tamil', '2021-02-18', 'China', 'Drama'),
(65, 'The Prince', 'Breakdown (mechanical) of cranial or spinal infusion catheter, sequela', '', 'Romanian', '2021-04-28', 'Peru', 'Action|Thriller'),
(66, 'Chosen, The', 'Nondisplaced fracture of medial phalanx of left lesser toe(s), subsequent encounter for fracture with malunion', '', 'West Frisian', '2020-07-29', 'Belarus', 'Drama'),
(67, 'Wild Heritage', 'Stress fracture, unspecified hand, subsequent encounter for fracture with nonunion', '', 'Yiddish', '2020-09-21', 'Indonesia', 'Western'),
(68, 'Vibrator', 'Anterior dislocation of left ulnohumeral joint, sequela', '', 'Mongolian', '2020-08-14', 'Ukraine', 'Drama'),
(69, 'Junior', 'Salter-Harris Type II physeal fracture of left calcaneus, subsequent encounter for fracture with routine healing', '', 'Armenian', '2020-08-04', 'Peru', 'Comedy|Sci-Fi'),
(70, 'It Felt Like Love', 'Other chronic suppurative otitis media, left ear', '', 'Italian', '2021-02-15', 'Philippines', 'Drama'),
(71, 'Holly', 'Other specified injury of left innominate or subclavian artery', '', 'Kazakh', '2021-04-11', 'China', 'Drama'),
(72, 'Mr. Bean\'s Holiday', 'Other physeal fracture of upper end of humerus, right arm, subsequent encounter for fracture with nonunion', '', 'Dzongkha', '2021-06-07', 'Croatia', 'Comedy'),
(73, 'Sexy Nights of the Living Dead', 'Nondisplaced fracture of left tibial tuberosity, subsequent encounter for closed fracture with nonunion', '', 'Montenegrin', '2021-07-08', 'Slovenia', 'Horror'),
(74, 'Arrested Development Documentary Project, The', 'Displaced fracture of distal phalanx of other finger', '', 'Japanese', '2020-10-23', 'Madagascar', 'Documentary'),
(75, 'Ricochet', 'Pathological fracture, left finger(s), initial encounter for fracture', '', 'Haitian Creole', '2021-01-20', 'Indonesia', 'Action|Crime|Thriller'),
(76, 'Jackal, The', 'Trichiasis without entropian left lower eyelid', '', 'Spanish', '2020-07-19', 'Belarus', 'Action|Thriller'),
(77, 'L.A. Zombie', 'Crushing injury of head, part unspecified', '', 'Haitian Creole', '2020-10-02', 'Indonesia', 'Horror'),
(78, 'Heavy Metal 2000', 'Major contusion of kidney', '', 'Zulu', '2020-10-01', 'Finland', 'Action|Adventure|Animation|Fantasy|Sci-Fi'),
(79, 'Twice in a Lifetime', 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg', '', 'Gujarati', '2020-07-23', 'Reunion', 'Drama'),
(80, 'In a Year with 13 Moons (In einem Jahr mit 13 Monden)', 'Laceration of unspecified blood vessel at shoulder and upper arm level, right arm, initial encounter', '', 'Papiamento', '2021-06-06', 'Ukraine', 'Drama'),
(81, 'Frozen', 'War operations involving unspecified destruction of aircraft, civilian, subsequent encounter', '', 'Khmer', '2020-09-17', 'China', 'Drama|Horror|Thriller'),
(82, 'Ten Thousand Saints', 'Burn of second degree of unspecified wrist, initial encounter', '', 'Malayalam', '2021-05-12', 'Ukraine', 'Comedy|Drama'),
(83, 'All I Want for Christmas', 'Motorcycle driver injured in collision with pedal cycle in nontraffic accident, initial encounter', '', 'Persian', '2020-12-24', 'China', 'Children|Comedy'),
(84, 'Holy Man', 'Laceration with foreign body of left ring finger with damage to nail', '', 'Aymara', '2021-05-11', 'Russia', 'Comedy'),
(85, 'Altman', 'Puncture wound without foreign body of left ear', '', 'Afrikaans', '2021-01-18', 'Bulgaria', 'Documentary'),
(86, 'Way, Way Back, The', 'Other effects of air pressure and water pressure, subsequent encounter', '', 'Mongolian', '2021-03-09', 'Ukraine', 'Comedy|Drama'),
(87, 'Casanova \'70', 'Burn of first degree of left axilla, subsequent encounter', '', 'Kashmiri', '2021-04-08', 'Indonesia', 'Comedy|Drama'),
(88, 'Man in the Glass Booth, The', 'Other specified diabetes mellitus with proliferative diabetic retinopathy without macular edema', '', 'Irish Gaelic', '2021-06-06', 'Philippines', 'Drama'),
(89, 'Wild Party, The', 'Puncture wound without foreign body of lower back and pelvis with penetration into retroperitoneum, initial encounter', '', 'Norwegian', '2021-02-25', 'Nepal', 'Comedy|Drama'),
(90, 'Kill, Baby, Kill (Operazione paura)', 'Hepatic fibrosis with hepatic sclerosis', '', 'Macedonian', '2020-07-25', 'Brazil', 'Horror'),
(91, 'Photographer (Fotoamator)', 'Crohn\'s disease of small intestine with other complication', '', 'Spanish', '2021-02-03', 'Canada', 'Documentary'),
(92, 'Class of Nuke \'Em High', 'Toxic effect of venom of gila monster, accidental (unintentional), sequela', '', 'Tajik', '2021-05-13', 'Philippines', 'Comedy|Horror'),
(93, 'Curse of the Oily Man (Sumpah orang minyak) ', 'Exposure to other specified factors, initial encounter', '', 'Kashmiri', '2021-01-12', 'China', 'Drama|Fantasy|Thriller'),
(94, 'Dragon Crusaders', 'Sprain of metatarsophalangeal joint of unspecified toe(s), initial encounter', '', 'Kazakh', '2020-10-19', 'Philippines', 'Action|Adventure|Fantasy'),
(95, 'Outbound (Periferic)', 'Driver of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle in nontraffic accident, initial encounter', '', 'Nepali', '2021-07-05', 'Indonesia', 'Action|Drama'),
(96, 'Todos eran culpables', 'Penetrating wound without foreign body of eyeball', '', 'Tajik', '2021-05-07', 'China', 'Drama'),
(97, 'In the Time of the Butterflies', 'Deviation in opening and closing of the mandible', '', 'Dhivehi', '2021-04-28', 'Colombia', 'Crime|Drama'),
(98, 'Circle of Deception, A', 'Other specified type of carcinoma in situ of right breast', '', 'Lao', '2021-06-25', 'Philippines', 'Drama|War'),
(99, 'Julia and Julia (Giulia e Giulia)', 'Femoral hernia', '', 'New Zealand Sign Language', '2020-12-02', 'Yemen', 'Drama|Mystery|Thriller'),
(100, 'Perils of Pauline, The', 'Displaced bicondylar fracture of left tibia, subsequent encounter for closed fracture with nonunion', '', 'Hebrew', '2020-10-31', 'Russia', 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `amount` int(11) NOT NULL,
  `date_time` date NOT NULL,
  `discount_count_id` int(11) NOT NULL,
  `remote_transaction_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_time` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `cinema_hall_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `date_time`, `start_time`, `end_time`, `cinema_hall_id`, `movie_id`) VALUES
(1, '2020-08-24', '12:14:00', '06:57:00', 1, 84),
(2, '2020-08-24', '10:31:00', '06:05:00', 2, 82),
(3, '2021-06-20', '11:32:00', '05:27:00', 10, 5),
(4, '2020-12-07', '01:09:00', '12:02:00', 11, 60),
(5, '2021-03-12', '04:28:00', '08:25:00', 1, 59),
(6, '2020-12-26', '09:46:00', '06:40:00', 4, 27),
(7, '2021-03-10', '10:09:00', '07:06:00', 12, 58),
(8, '2021-04-19', '04:56:00', '01:06:00', 9, 94),
(9, '2020-08-25', '07:16:00', '07:26:00', 12, 54),
(10, '2020-08-20', '05:37:00', '10:50:00', 4, 42),
(11, '2021-01-02', '08:36:00', '03:00:00', 3, 17),
(12, '2020-08-23', '06:08:00', '02:28:00', 5, 97),
(13, '2021-02-23', '09:13:00', '10:37:00', 3, 51),
(14, '2020-10-26', '12:14:00', '11:57:00', 6, 27),
(15, '2021-06-16', '11:35:00', '03:43:00', 4, 84),
(16, '2020-08-15', '02:04:00', '05:49:00', 12, 12),
(17, '2020-12-20', '10:29:00', '03:21:00', 3, 72),
(18, '2021-01-05', '11:36:00', '07:58:00', 3, 63),
(19, '2020-08-18', '08:00:00', '02:14:00', 6, 74),
(20, '2021-07-14', '08:54:00', '04:30:00', 8, 47),
(21, '2021-06-05', '06:03:00', '07:04:00', 5, 3),
(22, '2020-09-30', '06:48:00', '01:50:00', 11, 42),
(23, '2020-08-30', '04:26:00', '04:14:00', 8, 42),
(24, '2021-06-10', '07:06:00', '08:15:00', 1, 50),
(25, '2021-05-06', '10:18:00', '02:39:00', 3, 100),
(26, '2021-03-30', '02:56:00', '08:50:00', 5, 66),
(27, '2021-03-07', '11:00:00', '05:00:00', 7, 42),
(28, '2020-10-16', '08:52:00', '12:39:00', 4, 84),
(29, '2021-04-28', '11:47:00', '09:55:00', 5, 96),
(30, '2020-08-10', '11:06:00', '02:47:00', 6, 60),
(31, '2020-12-20', '05:34:00', '01:41:00', 10, 46),
(32, '2020-12-26', '01:16:00', '12:22:00', 5, 35),
(33, '2020-10-22', '07:33:00', '02:59:00', 9, 64),
(34, '2021-01-20', '10:35:00', '06:47:00', 5, 2),
(35, '2021-03-11', '08:11:00', '06:11:00', 1, 43),
(36, '2020-09-04', '11:02:00', '02:17:00', 10, 74),
(37, '2020-12-24', '12:17:00', '01:21:00', 8, 69),
(38, '2021-03-29', '06:51:00', '09:25:00', 4, 22),
(39, '2021-04-17', '08:35:00', '07:33:00', 10, 74),
(40, '2020-07-28', '10:46:00', '04:43:00', 1, 62),
(41, '2020-10-25', '12:31:00', '04:10:00', 2, 72),
(42, '2021-05-21', '07:20:00', '12:31:00', 6, 21),
(43, '2020-08-21', '11:02:00', '12:56:00', 1, 50),
(44, '2020-07-23', '04:38:00', '07:11:00', 1, 54),
(45, '2020-08-18', '08:47:00', '07:24:00', 11, 69),
(46, '2020-11-20', '03:44:00', '08:02:00', 2, 14),
(47, '2020-12-22', '04:05:00', '12:27:00', 8, 21),
(48, '2020-08-02', '01:01:00', '10:41:00', 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `show_seats`
--

CREATE TABLE `show_seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `cinema_seat_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `show_seats`
--

INSERT INTO `show_seats` (`id`, `status`, `price`, `cinema_seat_id`, `show_id`, `booking_id`) VALUES
(1, 1, 0, 1, 1, 1),
(2, 0, 0, 2, 1, 0),
(3, 0, 0, 3, 1, 0),
(4, 0, 0, 4, 1, 0),
(5, 0, 0, 5, 1, 0),
(6, 0, 0, 6, 1, 0),
(7, 0, 0, 7, 1, 0),
(8, 0, 0, 8, 1, 0),
(9, 0, 0, 9, 1, 0),
(10, 0, 0, 10, 1, 0),
(11, 0, 0, 11, 1, 0),
(12, 0, 0, 12, 1, 0),
(13, 0, 0, 13, 1, 0),
(14, 0, 0, 14, 1, 0),
(15, 0, 0, 15, 1, 0),
(16, 0, 0, 16, 1, 0),
(17, 0, 0, 17, 1, 0),
(18, 0, 0, 18, 1, 0),
(19, 0, 0, 19, 1, 0),
(20, 0, 0, 20, 1, 0),
(21, 0, 0, 21, 1, 0),
(22, 0, 0, 22, 1, 0),
(23, 0, 0, 23, 1, 0),
(24, 0, 0, 24, 1, 0),
(25, 0, 0, 25, 1, 0),
(26, 0, 0, 26, 1, 0),
(27, 0, 0, 27, 1, 0),
(28, 0, 0, 28, 1, 0),
(29, 0, 0, 29, 1, 0),
(30, 0, 0, 30, 1, 0),
(31, 0, 0, 31, 1, 0),
(32, 0, 0, 32, 1, 0),
(33, 0, 0, 33, 1, 0),
(34, 0, 0, 34, 1, 0),
(35, 0, 0, 35, 1, 0),
(36, 0, 0, 36, 1, 0),
(37, 0, 0, 37, 1, 0),
(38, 0, 0, 38, 1, 0),
(39, 0, 0, 39, 1, 0),
(40, 0, 0, 40, 1, 0),
(41, 0, 0, 41, 1, 0),
(42, 0, 0, 42, 1, 0),
(43, 0, 0, 43, 1, 0),
(44, 0, 0, 44, 1, 0),
(45, 0, 0, 45, 1, 0),
(46, 0, 0, 46, 1, 0),
(47, 0, 0, 47, 1, 0),
(48, 0, 0, 48, 1, 0),
(49, 0, 0, 49, 1, 0),
(50, 0, 0, 50, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinema_halls`
--
ALTER TABLE `cinema_halls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinema_seats`
--
ALTER TABLE `cinema_seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_seats`
--
ALTER TABLE `show_seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cinemas`
--
ALTER TABLE `cinemas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cinema_halls`
--
ALTER TABLE `cinema_halls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cinema_seats`
--
ALTER TABLE `cinema_seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `show_seats`
--
ALTER TABLE `show_seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
