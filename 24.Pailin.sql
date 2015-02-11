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
(240101, 'Pailin', 2401),
(240102, 'Ou Ta Vau', 2401),
(240103, 'Tuol Lvea', 2401),
(240104, 'Bar Yakha', 2401),
(240201, 'Sala Krau', 2402),
(240202, 'Stueng Trang', 2402),
(240203, 'Stueng Kach', 2402),
(240204, 'Ou Andoung', 2402);

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
(2401, 'Pailin', 24),
(2402, 'Sala Krau', 24);

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
('24', 'Pailin');

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
(24010101, 'Pahi Tboung', 240101),
(24010102, 'Ou Ta Puk Leu', 240101),
(24010103, 'Ou Ta Prang', 240101),
(24010104, 'Suon Ampov Lech', 240101),
(24010105, 'Suon Ampov kaeut', 240101),
(24010106, 'Voat', 240101),
(24010107, 'Tuek Thla', 240101),
(24010108, 'Ta Ngaen Leu', 240101),
(24010109, 'Badin Niev', 240101),
(24010110, 'Tuol Khiev', 240101),
(24010111, 'Pahi Cheung', 240101),
(24010201, 'Khlong', 240102),
(24010202, 'Koun Phnum', 240102),
(24010203, 'Ou Ta Vau', 240102),
(24010204, 'Kbal Pralean', 240102),
(24010205, 'Dei Kraham', 240102),
(24010206, 'Ou Preus', 240102),
(24010207, 'Krachab', 240102),
(24010301, 'Tuol Lvea', 240103),
(24010302, 'Chamkar Kaphe', 240103),
(24010303, 'Ou Chra Kandal', 240103),
(24010304, 'Ou Chra Kaeut', 240103),
(24010305, 'Ou Chra Leu', 240103),
(24010306, 'Ou Ta Puk Kraom', 240103),
(24010307, 'Ou Peut', 240103),
(24010308, 'Tuol Sralau', 240103),
(24010309, 'Tuol Nimitt', 240103),
(24010310, 'Thmei', 240103),
(24010311, 'Veal Vong', 240103),
(24010401, 'Ou Chra Lech', 240104),
(24010402, 'Ou Snguot', 240104),
(24010403, 'Roungchak', 240104),
(24010404, 'Bar Yakha', 240104),
(24010405, 'Bar Tangsu', 240104),
(24010406, 'Bar Huy Khmer Cheung', 240104),
(24010407, 'Bar Huy Khmer Tboung', 240104),
(240201, 'Sala Krau', 240201),
(24020102, 'Phnum Spong', 240201),
(24020103, 'Veal', 240201),
(24020104, 'Tuol', 240201),
(24020105, 'Leav', 240201),
(24020106, 'Phnum Koy', 240201),
(24020108, 'Kaoh Kaev', 240201),
(24020109, 'Srae Anteak', 240201),
(24020113, 'Ou Ruessei Kraom', 240201),
(240202, 'Stueng Trang', 240202),
(24020204, 'Thnal Bat', 240202),
(24020205, 'Stueng Trang', 240202),
(24020207, 'Phnum Krenh', 240202),
(24020208, 'Ou Kanthieng Va', 240202),
(24020209, 'Bay Sei', 240202),
(24020210, 'Phnum Preal', 240202),
(24020211, 'Dei Set', 240202),
(24020212, 'Ou Dounta Kraom', 240202),
(24020213, 'Prey Santeah', 240202),
(24020214, 'Ou Dounta Leu', 240202),
(24020215, 'Phteah Sbov', 240202),
(24020216, 'Tumnob', 240202),
(24020217, 'Koun Damrei', 240202),
(24020218, 'Tuol Khpos', 240202),
(24020219, 'Dei Sa Thmei', 240202),
(24020220, 'Anlong Reaksar', 240202),
(240203, 'Stueng Kach', 240203),
(24020301, 'Kngaok', 240203),
(24020302, 'Ta Ngaen Kraom', 240203),
(24020303, 'Ou Beng', 240203),
(24020304, 'Bos Sam', 240203),
(24020305, 'Doung', 240203),
(24020306, 'Stueng Kach', 240203),
(24020307, 'Boeng Prolit', 240203),
(24020308, 'Sla', 240203),
(24020309, 'Rathkraoh Chheh', 240203),
(24020310, 'Tuek Chenh', 240203),
(24020311, 'Ou Roel', 240203),
(24020312, 'Phsar Prum', 240203),
(24020313, 'Ou Chheu Kram', 240203),
(240204, 'Ou Andoung', 240204),
(24020401, 'Thnal Totueng', 240204),
(24020402, 'Koun Phnum', 240204),
(24020403, 'Thnal Kaeng', 240204),
(24020404, 'Boeng Trakuon', 240204),
(24020405, 'Ou Ruessei Leu', 240204),
(24020406, 'Ou Andoung', 240204);
