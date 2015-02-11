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
(110101, 'Chong Phlah', 1101),
(110102, 'Memang', 1101),
(110103, 'Srae Chhuk', 1101),
(110104, 'Srae Khtum', 1101),
(110105, 'Srae Preah', 1101),
(110201, 'Nang Khi Lik', 1102),
(110202, 'A Buon Leu', 1102),
(110203, 'Roya', 1102),
(110204, 'Sokh Sant', 1102),
(110205, 'Srae Huy', 1102),
(110206, 'Srae Sangkum', 1102),
(110301, 'Dak Dam', 1103),
(110302, 'Saen Monourom', 1103),
(110401, 'Krang Teh', 1104),
(110402, 'Pu Chrey', 1104),
(110403, 'Srae Ampum', 1104),
(110404, 'Bu Sra', 1104),
(110501, 'Monourom', 1105),
(110502, 'Sokh Dom', 1105),
(110503, 'Spean Mean Chey', 1105),
(110504, 'Romonea', 1105);

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
(1101, 'Kaev Seima', 11),
(1102, 'Kaoh Nheaek', 11),
(1103, 'Ou Reang', 11),
(1104, 'Pech Chreada', 11),
(1105, 'Saen Monourom', 11);

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
('11', 'Mondul Kiri');

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
(11010101, 'Pu Tong', 110101),
(11010102, 'Pu Huong', 110101),
(11010103, 'Khnhaeng', 110101),
(11010201, 'Pu Ngoal', 110102),
(11010202, 'Pu Cha', 110102),
(11010203, 'Pu Nhav', 110102),
(11010204, 'Pu Keh', 110102),
(11010205, 'Tuol', 110102),
(11010301, 'Kmoum', 110103),
(11010302, 'Chak Char', 110103),
(11010303, 'Ronaeng', 110103),
(11010305, 'Preah', 110103),
(11010306, 'Khtong', 110103),
(11010307, 'Srae Andoal', 110103),
(11010401, 'Ou Am', 110104),
(11010402, 'Ou Rona', 110104),
(11010403, 'Srae Ampil', 110104),
(11010405, 'Srae Lvi', 110104),
(11010406, 'Chhnaeng', 110104),
(11010407, 'Srae Khtum', 110104),
(11010501, 'Hkati', 110105),
(11010502, 'Pu Cha', 110105),
(11010503, 'Pu Kong', 110105),
(11010504, 'Ou Chra', 110105),
(11010505, 'Srae Preah', 110105),
(11020101, 'Chimat', 110201),
(11020102, 'Nang Buo', 110201),
(11020103, 'Kaoh Moeal Leu', 110201),
(11020104, 'Kaoh Moeal Kraom', 110201),
(11020201, 'Tuol', 110202),
(11020202, 'A Buon', 110202),
(11020203, 'Antreh', 110202),
(11020301, 'Roya', 110203),
(11020303, 'Memom', 110203),
(11020304, 'Kdaoy', 110203),
(11020305, 'Rovak', 110203),
(11020401, 'Klang Lae', 110204),
(11020402, 'Anhchoar', 110204),
(11020403, 'Srae Thum', 110204),
(11020404, 'Chi Klab', 110204),
(11020501, 'Srae Huy', 110205),
(11020502, 'Chhul', 110205),
(11020601, 'Mean Chey', 110206),
(11020602, 'Serei Mean Rith', 110206),
(11020603, 'Serei Mongkol', 110206),
(11020604, 'Chamraeun', 110206),
(11020605, 'Kbal Chrouy', 110206),
(11020606, 'Kbal Kaoh', 110206),
(11020607, 'Reangsei', 110206),
(11020608, 'Serei Rodth', 110206),
(11020609, 'Ou Yeh', 110206),
(11030101, 'Pu Traeng', 110301),
(11030102, 'Pu Leh', 110301),
(11030103, 'Pu Chhab', 110301),
(11030201, 'Pu Hoam', 110302),
(11030202, 'Andoung Kraloeng', 110302),
(11030203, 'Pu Tru', 110302),
(11030204, 'Pu Rang', 110302),
(11040101, 'Krang Teh', 110401),
(11040102, 'Lau Romiet', 110401),
(11040103, 'Pu Rapet', 110401),
(11040104, 'Tram Kach', 110401),
(11040201, 'Me Pai', 110402),
(11040202, 'Pu Chrey Chang', 110402),
(11040203, 'Pu Chrey Chong Phang', 110402),
(11040204, 'Pu Tang', 110402),
(11040301, 'Pu Krouch', 110403),
(11040302, 'Pu Radaet', 110403),
(11040303, 'Pu Kraeng', 110403),
(11040401, 'Pu Tuet', 110404),
(11040402, 'Pu Reang', 110404),
(11040403, 'Bu Sra', 110404),
(11040404, 'Pu Til', 110404),
(11040405, 'Lam Meh', 110404),
(11040406, 'Pu Cha', 110404),
(11040407, 'Pu Lu', 110404),
(11050101, 'Daeum Sral', 110501),
(11050102, 'Chrey Saen', 110501),
(11050201, 'Mean Leaph', 110502),
(11050202, 'Daoh Kramom', 110502),
(11050203, 'Svay Chek', 110502),
(11050204, 'Lauka', 110502),
(11050301, 'Ou Spean', 110503),
(11050302, 'Chambak', 110503),
(11050303, 'Kandal', 110503),
(11050304, 'Chamkar Tae', 110503),
(11050401, 'Pu Trom', 110504),
(11050402, 'Pu Tang', 110504),
(11050403, 'Pu Lung', 110504),
(11050404, 'Srae I', 110504);
