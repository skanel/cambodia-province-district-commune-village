CREATE TABLE IF NOT EXISTS `op_communes` (
  `id` int(20) NOT NULL,
  `name` text,
  `district_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tcommune` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `op_communes`
--

INSERT INTO `op_communes` (`id`, `name`, `district_id`) VALUES
(190101, 'Kamphun', 1901),
(190102, 'Kbal Romeas', 1901),
(190103, 'Phluk', 1901),
(190104, 'Samkhuoy', 1901),
(190105, 'Sdau', 1901),
(190106, 'Srae Kor', 1901),
(190107, 'Ta Lat', 1901),
(190201, 'Kaoh Preah', 1902),
(190202, 'Kaoh Sampeay', 1902),
(190203, 'Kaoh Sralay', 1902),
(190204, 'Ou Mreah', 1902),
(190205, 'Ou Ruessei Kandal', 1902),
(190206, 'Siem Bouk', 1902),
(190207, 'Srae Krasang', 1902),
(190301, 'Preaek Meas', 1903),
(190302, 'Sekong', 1903),
(190303, 'Santepheap', 1903),
(190304, 'Srae Sambour', 1903),
(190305, 'Tma Kaev', 1903),
(190401, 'Stueng Traeng', 1904),
(190402, 'Srah Ruessei', 1904),
(190403, 'Preah Bat', 1904),
(190404, 'Sameakki', 1904),
(190501, 'Anlong Phe', 1905),
(190502, 'Chamkar Leu', 1905),
(190503, 'Kang Cham', 1905),
(190504, 'Kaoh Snaeng', 1905),
(190505, 'Anlong Chrey', 1905),
(190506, 'Ou Rai', 1905),
(190507, 'Ou Svay', 1905),
(190508, 'Preah Rumkel', 1905),
(190509, 'Sam Ang', 1905),
(190510, 'Srae Ruessei', 1905),
(190511, 'Thala Barivat', 1905);

-- --------------------------------------------------------

--
-- Table structure for table `op_districts`
--

CREATE TABLE IF NOT EXISTS `op_districts` (
  `id` int(20) NOT NULL,
  `name` text,
  `provinces_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tdistrict` (`provinces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `op_districts`
--

INSERT INTO `op_districts` (`id`, `name`, `provinces_id`) VALUES
(1901, 'Sesan', 19),
(1902, 'Siem Bouk', 19),
(1903, 'Siem Pang', 19),
(1904, 'Stueng Traeng', 19),
(1905, 'Thala Barivat', 19);

-- --------------------------------------------------------

--
-- Table structure for table `op_provinces`
--

CREATE TABLE IF NOT EXISTS `op_provinces` (
  `id` varchar(20) NOT NULL,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `op_provinces`
--

INSERT INTO `op_provinces` (`id`, `name`) VALUES
('19', 'Stung Treng');

-- --------------------------------------------------------

--
-- Table structure for table `op_villages`
--

CREATE TABLE IF NOT EXISTS `op_villages` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `commune_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `op_villages`
--

INSERT INTO `op_villages` (`id`, `name`, `commune_id`) VALUES
(19010101, 'Kamphun', 190101),
(19010102, 'Ban Mai', 190101),
(19010103, 'Katout', 190101),
(19010104, 'Sesan', 190101),
(19010201, 'Kbal Romeas', 190102),
(19010202, 'Srae Sranok', 190102),
(19010203, 'Krabei Chrum', 190102),
(19010204, 'Chrab', 190102),
(19010301, 'Phluk', 190103),
(19010302, 'Ban Bung', 190103),
(19010401, 'Ba Daeum', 190104),
(19010402, 'Samkhuoy', 190104),
(19010403, 'Srae Ta Pan', 190104),
(19010404, 'Hang Savat', 190104),
(19010501, 'Sdau Muoy', 190105),
(19010502, 'Sdau Pir', 190105),
(19010601, 'Srae Kor Muoy', 190106),
(19010602, 'Srae Kor Pir', 190106),
(19010701, 'Svay Rieng', 190107),
(19010702, 'Khsach Thmei', 190107),
(19010703, 'Rumpoat', 190107),
(19010704, 'Ta Lat', 190107),
(19020101, 'Kaoh Preah', 190201),
(19020201, 'Kaoh Sampeay', 190202),
(19020202, 'Damrei Phong', 190202),
(19020301, 'Sma Kaoh', 190203),
(19020302, 'Svay', 190203),
(19020303, 'Phchul', 190203),
(19020304, 'Kang Daek', 190203),
(19020401, 'Ou Mreah', 190204),
(19020402, 'Tboung Khla', 190204),
(19020403, 'Kaoh Chruem', 190204),
(19020404, 'Ou Chralang', 190204),
(19020501, 'Ou Ruessei Kandal', 190205),
(19020601, 'Siem Bouk', 190206),
(19020602, 'Ou Lang', 190206),
(19020603, 'Tonsang', 190206),
(19020701, 'Srae Krasang', 190207),
(19020702, 'Kaoh Krouch', 190207),
(19030101, 'Khes Svay', 190301),
(19030102, 'Khes Kraom', 190301),
(19030103, 'Pong Kriel', 190301),
(19030104, 'Kham Phouk', 190301),
(19030201, 'Siem Pang', 190302),
(19030202, 'Kaeng Nhai', 190302),
(19030203, 'Chantu', 190302),
(19030204, 'Samma', 190302),
(19030205, 'Ban Muong', 190302),
(19030206, 'Ban Huoy', 190302),
(19030207, 'Dan Loung', 190302),
(19030208, 'Lun', 190302),
(19030301, 'Kirivongsa Leu', 190303),
(19030302, 'Kirivongsa Kraom', 190303),
(19030303, 'Ou Chay', 190303),
(19030304, 'Tak team', 190303),
(19030305, 'Kiri Bas Leu', 190303),
(19030306, 'Kiri Bas Kraom', 190303),
(19030401, 'Kanhchanh Kouk', 190304),
(19030402, 'Kanhchanh Tuek', 190304),
(19030403, 'Srae Ruessei', 190304),
(19030404, 'Peam Khes', 190304),
(19030405, 'Ket Moeang', 190304),
(19030406, 'Samraong', 190304),
(19030407, 'Na Oung', 190304),
(19030501, 'Nhang Sum', 190305),
(19030502, 'Pha Bang', 190305),
(19030503, 'Lakay', 190305),
(19040101, 'Pum Preaek', 190401),
(19040102, 'Trapeang Pring', 190401),
(19040103, 'Kandal', 190401),
(19040104, 'Spean Thma', 190401),
(19040105, 'Reacheanukoul', 190401),
(19040201, 'Thma Leaph', 190402),
(19040202, 'Leu', 190402),
(19040203, 'Srae Pou', 190402),
(19040301, 'Ba Chong', 190403),
(19040302, 'Kang Memay', 190403),
(19040303, 'Kang Dei Sa', 190403),
(19040401, 'Thmei', 190404),
(19040402, 'Hang Khou Suon', 190404),
(19040403, 'Hang Khou Ban', 190404),
(19040404, 'Kaoh Khan Din', 190404),
(19040405, 'Kham Phan', 190404),
(19040406, 'Kilou  Prambei', 190404),
(19050101, 'Phav', 190501),
(19050102, 'Anlong Phe', 190501),
(19050103, 'Toal', 190501),
(19050104, 'Veal Pou', 190501),
(19050105, 'Spong', 190501),
(19050201, 'Rumdeng', 190502),
(19050202, 'Chamkar Leu', 190502),
(19050203, 'Run', 190502),
(19050301, 'Kaes', 190503),
(19050302, 'Doung', 190503),
(19050303, 'Kang Cham', 190503),
(19050304, 'Kang Kngaok', 190503),
(19050305, 'Kampong Pang', 190503),
(19050401, 'Kaoh Snaeng', 190504),
(19050402, 'Kaoh Sralau', 190504),
(19050403, 'Kaoh Kei', 190504),
(19050404, 'Choam Thum', 190504),
(19050501, 'Anlong Chrey', 190505),
(19050502, 'Mon', 190505),
(19050503, 'Sralau', 190505),
(19050601, 'Ou Rai', 190506),
(19050602, 'Pong Tuek', 190506),
(19050603, 'Anlong Svay', 190506),
(19050701, 'Kaoh Pnov', 190507),
(19050702, 'Ou Svay', 190507),
(19050703, 'Ou Run', 190507),
(19050704, 'Veun Sien', 190507),
(19050705, 'Kaoh Hib', 190507),
(19050801, 'Leu', 190508),
(19050802, 'Kandal', 190508),
(19050803, 'Kaoh Chheu Teal Touch', 190508),
(19050804, 'Kaoh Chheu Teal Thum', 190508),
(19050805, 'Kaoh Lngo', 190508),
(19050806, 'Krala Peas', 190508),
(19050807, 'Kraom', 190508),
(19050808, 'Anlong Svay', 190508),
(19050901, 'Sam Ang', 190509),
(19050902, 'Chhvang', 190509),
(19051001, 'Srae Ruessei', 190510),
(19051002, 'Anlong Kramuon', 190510),
(19051101, 'Thala Barivat', 190511),
(19051102, 'Ou Trael', 190511),
(19051103, 'Kang Dechou', 190511),
(19051104, 'Veal Khsach', 190511);
