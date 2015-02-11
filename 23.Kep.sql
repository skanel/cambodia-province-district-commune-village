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
(230101, 'Angkaol', 2301),
(230103, 'Pong Tuek', 2301),
(230201, 'Kaeb', 2302),
(230202, 'Prey Thum', 2302),
(230203, 'Ou Krasar', 2302);

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
(2301, 'Damnak Changaeur', 23),
(2302, 'Kaeb', 23);

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
('23', 'Kep');

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
(23010101, 'Ampeng', 230101),
(23010102, 'Tuol Sangam', 230101),
(23010103, 'Kaoh Saom', 230101),
(23010104, 'Angkaol', 230101),
(23010301, 'Ou Doung', 230103),
(23010302, 'Prey Ta Koy', 230103),
(23010303, 'Phnum Leav', 230103),
(23010304, 'Rones', 230103),
(23010305, 'Chamkar Bei', 230103),
(23010306, 'Chamka Chek', 230103),
(23010307, 'Antung Sar', 230103),
(23020101, 'Kaeb', 230201),
(23020102, 'Kaev Krasang', 230201),
(23020201, 'Damnak Changaeur', 230202),
(23020202, 'Kampong Tralach', 230202),
(23020203, 'Thmei', 230202),
(23020301, 'Ou Krasar', 230203),
(23020302, 'Damnak Chambak', 230203);
