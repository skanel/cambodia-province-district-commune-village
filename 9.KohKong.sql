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
(90101, 'Andoung Tuek', 901),
(90102, 'Kandaol', 901),
(90103, 'Ta Noun', 901),
(90104, 'Thma Sa', 901),
(90201, 'Kaoh Sdach', 902),
(90202, 'Phnhi Meas', 902),
(90203, 'Preaek Khsach', 902),
(90301, 'Chrouy Pras', 903),
(90302, 'Kaoh Kapi', 903),
(90303, 'Ta Tai Kraom', 903),
(90304, 'Trapeang Rung', 903),
(90401, 'Smach Mean Chey', 904),
(90402, 'Dang Tong', 904),
(90403, 'Stueng Veaeng', 904),
(90501, 'Pak Khlang', 905),
(90502, 'Peam Krasaob', 905),
(90503, 'Tuol Kokir', 905),
(90601, 'Boeng Preav', 906),
(90602, 'Chi Kha Kraom', 906),
(90603, 'Chi kha Leu', 906),
(90604, 'Chrouy Svay', 906),
(90605, 'Dang Peaeng', 906),
(90606, 'Srae Ambel', 906),
(90701, 'Ta Tey Leu', 907),
(90702, 'Pralay', 907),
(90703, 'Chumnoab', 907),
(90704, 'Ruessei Chrum', 907),
(90705, 'Chi Phat', 907),
(90706, 'Thma Doun Pov', 907);

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
(901, 'Botum Sakor', 9),
(902, 'Kiri Sakor', 9),
(903, 'Kaoh Kong', 9),
(904, 'Khemara Phoumin', 9),
(905, 'Mondol Seima', 9),
(906, 'Srae Ambel', 9),
(907, 'Thma Bang', 9);

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
('9', 'Koh Kong');

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
(9010101, 'Andoung Tuek', 90101),
(9010102, 'Chi Meal', 90101),
(9010103, 'Prai', 90101),
(9010104, 'Chi Treh', 90101),
(9010105, 'Prateal', 90101),
(9010106, 'Ta Meakh', 90101),
(9010107, 'Ta Ok', 90101),
(9010201, 'Kandaol', 90102),
(9010202, 'Prolean', 90102),
(9010203, 'Sovanna Bai Tong', 90102),
(9010204, 'Tam Kan', 90102),
(9010205, 'Thnong', 90102),
(9010301, 'Bak Ronoas', 90103),
(9010302, 'Preaek Khyang', 90103),
(9010303, 'Ta Noun', 90103),
(9010304, 'Tuol Pou', 90103),
(9010401, 'Chamlang Kou', 90104),
(9010402, 'Chamkar Leu', 90104),
(9010403, 'Srae Thmei', 90104),
(9010404, 'Srae Trav', 90104),
(9010405, 'Thma Sa', 90104),
(9020101, 'Kaoh Sdach', 90201),
(9020102, 'Peam Kay', 90201),
(9020103, 'Preaek Smach', 90201),
(9020201, 'Phnhi Meas', 90202),
(9020202, 'Kien Kralanh', 90202),
(9020203, 'Ta Ni', 90202),
(9020301, 'Preaek Khsach', 90203),
(9020302, 'Samrong Ta Kaev', 90203),
(9020303, 'Yeay Saen', 90203),
(9030101, 'Chrouy Pras', 90301),
(9030102, 'Thmei', 90301),
(9030201, 'Phum Ti Muoy', 90302),
(9030202, 'Phum Ti Pir', 90302),
(9030203, 'Kaoh Sralau', 90302),
(9030301, 'Kaoh Andaet', 90303),
(9030302, 'Anlong Vak', 90303),
(9030401, 'Dei Tumneab', 90304),
(9030402, 'Kaoh Kong Knong', 90304),
(9030403, 'Preaek Angkunh', 90304),
(9030404, 'Trapeang Rung', 90304),
(9040101, 'Phum Ti Muoy', 90401),
(9040102, 'Phum Ti Pir', 90401),
(9040103, 'Phum Ti Bei', 90401),
(9040104, 'Boeng Khun Chhang', 90401),
(9040105, 'Smach Mean Chey', 90401),
(9040201, 'Phum Ti Muoy', 90402),
(9040202, 'Phum Ti Pir', 90402),
(9040203, 'Phum Ti Bei', 90402),
(9040204, 'Phum Ti Buon', 90402),
(9040301, 'Stueng Veaeng', 90403),
(9040302, 'Preaek Svay', 90403),
(9050101, 'Pak Khlang Muoy', 90501),
(9050102, 'Pak Khlang Pir', 90501),
(9050103, 'Pak Khlang Bei', 90501),
(9050104, 'Boeng Kachhang', 90501),
(9050105, 'Kaoh Pao', 90501),
(9050106, 'Neang Kok', 90501),
(9050107, 'Cham Yeam', 90501),
(9050201, 'Phum Muoy', 90502),
(9050202, 'Phum Pir', 90502),
(9050301, 'Kaoh Chak', 90503),
(9050302, 'Ta Chat', 90503),
(9050303, 'Tuol Kokir Leu', 90503),
(9050304, 'Tuol Kokir Kraom', 90503),
(9060101, 'Ou Chrov', 90601),
(9060102, 'Boeng Preav', 90601),
(9060103, 'Chrouy', 90601),
(9060104, 'Phlaong', 90601),
(9060105, 'Sala Mneang', 90601),
(9060107, 'Tuek Paong', 90601),
(9060201, 'An Chhaeut', 90602),
(9060202, 'Chambak', 90602),
(9060203, 'Khsach Kraham', 90602),
(9060204, 'Nea Pisei', 90602),
(9060205, 'Ta Baen', 90602),
(9060206, 'Preaek Chik', 90602),
(9060301, 'Chhuk', 90603),
(9060302, 'Chi Kha', 90603),
(9060303, 'Ta Ni', 90603),
(9060304, 'Trapeang Kandaol', 90603),
(9060401, 'Chheu Neang', 90604),
(9060402, 'Chrouy Svay Khang Lech', 90604),
(9060403, 'Chrouy Svay Khang Kaeut', 90604),
(9060404, 'Kampong Sdam', 90604),
(9060405, 'Nesat', 90604),
(9060406, 'Phnum Sralau', 90604),
(9060407, 'Saray', 90604),
(9060501, 'Ban Tiet', 90605),
(9060502, 'Dang Peaeng', 90605),
(9060503, 'Prang', 90605),
(9060504, 'Preah Angk Kaev', 90605),
(9060505, 'Ta Thaong', 90605),
(9060601, 'Chamkar Kraom', 90606),
(9060602, 'Khlong', 90606),
(9060603, 'Srae Ambel', 90606),
(9060604, 'Trapeang', 90606),
(9060605, 'Triek', 90606),
(9060606, 'Veal Cheung', 90606),
(9060607, 'Veal Tboung', 90606),
(9070101, 'Spean Kdar', 90701),
(9070102, 'Kandaol', 90701),
(9070103, 'Trapeang Khnar', 90701),
(9070201, 'Chamnar', 90702),
(9070202, 'Pralay', 90702),
(9070203, 'Samraong', 90702),
(9070204, 'Toap Khley', 90702),
(9070301, 'Chumnoab', 90703),
(9070302, 'Chrak Ruessei', 90703),
(9070403, 'Trapeang Chheu Trav', 90704),
(9070404, 'Kokir Chrum', 90704),
(9070501, 'Chi Phat', 90705),
(9070502, 'Kamlot', 90705),
(9070503, 'Tuek Lak', 90705),
(9070504, 'Choam Sla', 90705),
(9070601, 'Kaoh', 90706),
(9070602, 'Preaek Svay', 90706);
