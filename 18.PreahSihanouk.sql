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
(180101, 'lek Muoy', 1801),
(180102, 'Pir', 1801),
(180103, 'Bei', 1801),
(180104, 'Buon', 1801),
(180105, 'Kaoh Rung', 1801),
(180201, 'Andoung Thma', 1802),
(180202, 'Boeng Ta Prum', 1802),
(180203, 'Bet Trang', 1802),
(180204, 'Cheung Kou', 1802),
(180205, 'Ou Chrov', 1802),
(180206, 'Ou Oknha Heng', 1802),
(180207, 'Prey Nob', 1802),
(180208, 'Ream', 1802),
(180209, 'Sameakki', 1802),
(180210, 'Samrong', 1802),
(180211, 'Tuek Lak', 1802),
(180212, 'Tuek Thla', 1802),
(180213, 'Tuol Totueng', 1802),
(180214, 'Veal Renh', 1802),
(180301, 'Kampenh', 1803),
(180302, 'Ou Treh', 1803),
(180303, 'Tumnob Rolok', 1803),
(180304, 'Kaev Phos', 1803),
(180401, 'Chamkar Luong', 1804),
(180402, 'Kampong Seila', 1804),
(180403, 'Ou Bak Roteh', 1804),
(180404, 'Stueng Chhay', 1804);

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
(1801, 'Preah Sihanouk', 18),
(1802, 'Prey Nob', 18),
(1803, 'Stueng Hav', 18),
(1804, 'Kampong Seila', 18);

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
('18', 'Preah Sihanouk');

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
(18010101, 'Phum Muoy', 180101),
(18010102, 'Phum Pir', 180101),
(18010103, 'Phum Bei', 180101),
(18010201, 'Phum Muoy', 180102),
(18010202, 'Phum Pir', 180102),
(18010203, 'Phum Bei', 180102),
(18010301, 'Phum Muoy', 180103),
(18010302, 'Phum Pir', 180103),
(18010303, 'Phum Bei', 180103),
(18010401, 'Phum Muoy', 180104),
(18010402, 'Phum Pir', 180104),
(18010403, 'Phum Bei', 180104),
(18010404, 'Phum Buon', 180104),
(18010405, 'Phum Pram', 180104),
(18010406, 'Phum Prammuoy', 180104),
(18010501, 'Kaoh Touch', 180105),
(18010502, 'Daem Thkov', 180105),
(18010503, 'Preaek Svay', 180105),
(18010504, 'Kaoh Rung Sanloem', 180105),
(180201, 'Andoung Thma', 180201),
(18020101, 'Andoung Thma', 180201),
(18020102, 'Banteay Prei', 180201),
(18020103, 'Ou Trav', 180201),
(18020104, 'Trapeang Soy Ti Muoy', 180201),
(18020105, 'Trapeang Soy Ti Pir', 180201),
(180202, 'Boeng Ta Prum', 180202),
(18020201, 'Boeng Chum', 180202),
(18020202, 'Boeng Ta Prum', 180202),
(18020203, 'Boeng Ta Srei', 180202),
(18020204, 'Doun Loy', 180202),
(18020205, 'Phnum Touch', 180202),
(18020206, 'Tuek Chenh', 180202),
(180203, 'Bet Trang', 180203),
(18020301, 'Chamnaot Ream', 180203),
(18020302, 'Kokir', 180203),
(18020303, 'Pu Thoeang', 180203),
(180204, 'Cheung Kou', 180204),
(18020401, 'Chamkar Kausu', 180204),
(18020402, 'Cheung Kou', 180204),
(18020403, 'Ta Ney', 180204),
(18020404, 'Trapeang Kea', 180204),
(18020405, 'Trapeang Mul', 180204),
(18020406, 'Anlong Krapeu', 180204),
(18020407, 'Monorom1', 180204),
(18020408, 'Svay', 180204),
(18020409, 'Ta Pov', 180204),
(180205, 'Ou Chrov', 180205),
(18020501, 'Kaoh Khyang', 180205),
(18020502, 'Ou Chrov', 180205),
(18020503, 'Srae Cham Kraom', 180205),
(18020504, 'Srae Cham Leu', 180205),
(18020505, 'Srae Knong', 180205),
(180206, 'Ou Oknha Heng', 180206),
(18020601, 'Bat Kokir', 180206),
(18020602, 'Ou Chamnar', 180206),
(18020603, 'Ou Ta Pang', 180206),
(18020604, 'Ou Ta Sek', 180206),
(18020605, 'Ou Oknha Heng', 180206),
(180207, 'Prey Nob', 180207),
(18020701, 'Bat Ser Moan', 180207),
(18020702, 'Prey Nob Muoy', 180207),
(18020703, 'Prey Nob Pir', 180207),
(18020704, 'Prey Nob Bei', 180207),
(18020705, 'Baek Krang', 180207),
(180208, 'Ream', 180208),
(18020801, 'Ong', 180208),
(18020802, 'Ream', 180208),
(18020804, 'Smach Daeng', 180208),
(18020805, 'Thma Thum', 180208),
(180209, 'Sameakki', 180209),
(18020901, 'Ta Aong Thum', 180209),
(18020902, 'Boeng Reang', 180209),
(18020903, 'Preaek Kranh', 180209),
(180210, 'Samrong', 180210),
(18021001, 'Chong Ou', 180210),
(18021002, 'Samrong Kandal', 180210),
(18021003, 'Samrong Kraom', 180210),
(18021004, 'Samrong Leu', 180210),
(18021005, 'Ou Tracheak Chet', 180210),
(180211, 'Tuek Lak', 180211),
(18021101, 'Tuol', 180211),
(18021102, 'Preaek Phav', 180211),
(18021103, 'Kampong Smach Touch', 180211),
(18021104, 'Chrolong', 180211),
(180212, 'Tuek Thla', 180212),
(18021201, 'Preaek Pras', 180212),
(18021202, 'Preaek Toal', 180212),
(18021203, 'Preaek Sangkae', 180212),
(18021204, 'Kampong Chen', 180212),
(180213, 'Tuol Totueng', 180213),
(18021301, 'Tuol Totueng Ti Muoy', 180213),
(18021302, 'Tuol Totueng Ti Pir', 180213),
(18021303, 'Tuol Totueng Ti Bei', 180213),
(18021304, 'Ampu Khmau', 180213),
(180214, 'Veal Renh', 180214),
(18021401, 'Boeng Veaeng', 180214),
(18021402, 'Veal Meas', 180214),
(18021403, 'Veal Thum', 180214),
(180301, 'Kampenh', 180301),
(18030101, 'Phum Muoy', 180301),
(18030102, 'Phum Pir', 180301),
(180302, 'Ou Treh', 180302),
(18030201, 'Phum Muoy', 180302),
(18030202, 'Phum Pir', 180302),
(18030203, 'Phum Bei', 180302),
(18030204, 'Phum Buon', 180302),
(180303, 'Tumnob Rolok', 180303),
(18030301, 'Phum Muoy', 180303),
(18030302, 'Phum Pir', 180303),
(18030303, 'Phum Bei', 180303),
(18030304, 'Phum Buon', 180303),
(180304, 'Kaev Phos', 180304),
(18030401, 'Kaev Phos', 180304),
(18030402, 'Rithy 1', 180304),
(18030403, 'Rithy 2', 180304),
(180401, 'Chamkar Luong', 180401),
(18040101, 'Chamkar Luong', 180401),
(18040102, 'Boeng Trach', 180401),
(18040103, 'Samdech Ta', 180401),
(180402, 'Kampong Seila', 180402),
(18040201, 'Cham Srei', 180402),
(18040202, 'Krang At', 180402),
(18040203, 'Thmei', 180402),
(18040204, 'Veal', 180402),
(180403, 'Ou Bak Roteh', 180403),
(18040301, 'Prey Praseth', 180403),
(18040302, 'Stueng Chral', 180403),
(18040303, 'Stueng Samraong', 180403),
(180404, 'Stueng Chhay', 180404),
(18040401, 'Kirivoan', 180404),
(18040402, 'Ou Ta Hoay', 180404),
(18040403, 'Stueng Chhay Cheung', 180404),
(18040404, 'Stueng Chhay Tbong', 180404);
