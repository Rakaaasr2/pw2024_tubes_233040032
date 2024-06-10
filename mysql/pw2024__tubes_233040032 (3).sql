-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 08:11 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw2024__tubes_233040032`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Syamsul rakha', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '+6285724554781', 'syamsulrakha@gmail.com', 'Jl,Gg Hj.Ridho No 50j Sukasari,Bandung Jawabarat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(9, 'Obat Alergi'),
(11, 'Obat Batuk & Flu'),
(12, 'Vitamin C'),
(13, 'Vitamin Anak'),
(14, 'Vitamin Ibu Hamil'),
(16, 'Obat Sakit Kepala'),
(17, 'Obat Masuk Angin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int NOT NULL,
  `category_id` int NOT NULL,
  `produk_name` varchar(100) NOT NULL,
  `produk_price` int NOT NULL,
  `produk_description` text NOT NULL,
  `produk_image` varchar(100) NOT NULL,
  `produk_status` tinyint(1) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `category_id`, `produk_name`, `produk_price`, `produk_description`, `produk_image`, `produk_status`, `date_create`) VALUES
(9, 9, 'Lerzin 10 mg 10 Kapsul', 15000, 'Lerzin 10 Mg Kapsul bermanfaat untuk mengatasi gejala rinitis alergi, rinitis perennial atau rinitis alergi yang bersifat kronis, dan urtikaria atau biduran.\r\n\r\nLerzin 10 Mg Kapsul bekerja dengan cara menghalangi kerja histamin, yaitu zat kimia yang memicu munculnya reaksi alergi saat seseorang terpapar alergen. \r\n\r\nDengan begitu, gejala alergi, seperti pilek, hidung tersumbat, mata berair, bersin-bersin, rasa gatal pada mata, hidung atau tenggorokan, serta ruam pada kulit, dapat mereda.', 'produk1716464841.jpg', 1, '2024-05-21 03:38:30'),
(11, 9, 'Lerzin Sirup 60 ml', 19000, 'Lerzin Sirup bermanfaat meredakan gejala atau keluhan akibat reaksi alergi, seperti gatal pada kulit, tenggorokan, hidung, bersin-bersin, atau biduran. Lerzin Sirup 60 Ml memiliki bahan aktif cetirizine.\r\n\r\nLerzin Sirup termasuk dalam golongan antihistamin. Obat ini bekerja dengan cara memblokir histamin, yaitu senyawa yang jumlahnya meningkat dan menyebabkan terjadinya gejala dan reaksi alergi saat tubuh terpapar alergen (zat pemicu alergi). \r\n\r\nPerlu diketahui bahwa cetirizine dalam Lerzin Sirup tidak bisa menyembuhkan alergi. Cara terbaik untuk mencegah timbulnya reaksi alergi adalah dengan menghindari paparan zat pemicu alergi.', 'produk1716464793.jpg', 1, '2024-05-21 03:46:19'),
(14, 9, 'Caladine Lotion 60 ml', 21000, 'Caladine Lotion bermanfaat untuk mengatasi rasa gatal di kulit akibat biang keringat dan gigitan serangga. \r\n\r\nKandungan calamine, zinc oxide, dan diphenhydramine hydrochloride dalam Caladine Lotion bermanfaat untuk meredakan gatal di kulit akibat alergi, iritasi, dan gigitan serangga. Caladine Lotion memiliki efek sebagai antialergi, antiseptik, dan penyejuk kulit.', 'produk1716464635.jpg', 1, '2024-05-21 03:49:45'),
(15, 9, 'Dextamine 10 Kaplet', 24000, 'Dextamine 10 kaplet bermanfaat untuk mengatasi peradangan, reaksi alergi, dan penyakit autoimun. \r\n\r\nDextamine 10 kaplet bekerja dengan cara mengurangi peradangan dan menurunkan sistem kekebalan tubuh, sama seperti steroid yang dihasilkan oleh tubuh secara alami.', 'produk1716464582.png', 1, '2024-05-21 03:50:33'),
(16, 9, 'CTM 4mg 12 tablet', 8900, 'CTM 4 mg bermanfaat untuk meredakan gejala alergi, seperti mata berair, hidung tersumbat, pilek, bersin, batuk, serta gatal pada kulit, hidung, mata, dan tenggorokan.\r\n\r\nCTM 4 mg bekerja dengan cara menghambat kerja histamin, yaitu senyawa yang bisa menyebabkan munculnya gejala alergi saat seseorang terpapar zat atau bahan pemicu alergi (alergen). Dengan begitu, gejala alergi berangsur mereda.', 'produk1716464490.jpg', 1, '2024-05-21 03:55:51'),
(17, 9, 'Alloris 10 mg 10 Tablet', 69000, 'Alloris 10 Mg 10 Tablet bermanfaat untuk mengatasi gejala alergi, seperti bersin-bersin, pilek, hidung tersumbat, ruam atau rasa gatal di kulit.\r\n\r\nAlloris 10 Mg 100 Tablet mengandung loratadine yang bekerja sebagai antihistamin. Obat ini bekerja dengan menghambat kerja zat histamin, yatu zat yang memicu terjadinya reaksi alergi saat seseorang terpapar allergen (zat pemicu alergi).', 'produk1716464415.jpg', 1, '2024-05-21 03:57:35'),
(19, 9, 'Ryvel Drop 10 ml', 87000, 'Ryvel Drops bermanfaat meredakan gejala alergi, seperti biduran, bersin-bersin, serta gatal pada kulit, tenggorokan, atau hidung. \r\n\r\nRyvel Drops merupakan obat antihistamin. Obat ini bekerja dengan cara memblokir histamin, yaitu senyawa yang menimbulkan gejala alergi saat tubuh terpapar alergen (zat pemicu alergi). \r\n\r\nPerlu diketahui bahwa cetirizine dalam Ryvel Drops tidak bisa menyembuhkan alergi. Cara terbaik untuk mencegah timbulnya reaksi alergi adalah dengan menghindari paparan zat pemicu alergi.', 'produk1716464250.jpg', 1, '2024-05-21 07:24:28'),
(22, 11, 'Panadol Cold & Flu 10 Kaplet', 16500, 'PANADOL COLD & FLU merupakan obat batuk dan pereda flu dengan kandungan Paracetamol, Pseudoephedrine HCI, dan Dextromethorphan HBr. Obat ini dapat digunakan untuk meredakan gejala flu seperti: demam, sakit kepala, hidung tersumbat dan batuk tidak berdahak', 'produk1716456116.jpg', 1, '2024-05-23 02:21:56'),
(23, 11, 'OBH Combi Plus Batuk Flu Menthol 100 ml', 19000, 'OBH Combi Batuk Berdahak Rasa Menthol 100 Ml adalah obat yang digunakan untuk\r\nmeredakan batuk berdahak dengan cara bekerja sebagai ekspektoran yang membantu mengeluarkan dahak.', 'produk1716463796.jpg', 1, '2024-05-23 02:24:47'),
(24, 11, 'Tremenza Sirup 60 ml', 30700, 'TREMENZA sirup merupakan obat yang mengandung Pseudoephedrine dan Triprolidine HCI. Triprolidine + Pseudoephedrine membantu meredakan gejala flu dan gejala alergi, seperti hidung tersumbat, pilek dan bersin', 'produk1716456389.jpg', 1, '2024-05-23 02:26:29'),
(27, 11, 'Bisolvon 8mg 10 Tablet', 29000, 'Bisolvon 100 Tablet 8 Mg bermanfaat untuk meredakan batuk berdahak.\r\n\r\nBisolvon 100 Tablet 8 Mg berfungsi mengencerkan dahak di saluran pernapasan dengan cara menghambat kerja sel yang memprodusi dahak. Dengan begitu, dahak menjadi encer dan mudah untuk dikeluarkan.', 'produk1716463349.jpg', 1, '2024-05-23 02:39:09'),
(29, 11, 'Hufagripp TMP Sirup 60 Ml', 25000, 'Hufagripp TMP Sirup mengandung zat aktif Ibuprofen. Kandungan obat ini termasuk Nonsteroidal anti Inflamatory Drug (NSAID). Obat ini digunakan untuk meredakan demam, sakit kepala, sakit gigi, sakit pada telinga, dan nyeri ringan lainnya.', 'produk1716462723.jpg', 1, '2024-05-23 02:46:44'),
(30, 12, 'CDR Effervescent 15 Tablet', 82500, 'CDR Effervescent 15 Tablet bermanfaat untuk memenuhi kebutuhan kalsium, menjaga tulang agar tetap kuat, membantu masa penyembuhan, dan masa pertumbuhan.\r\nCDR Effervescent 15 Tablet mengandung calcium carbonate, vitamin B6, vitamin C, vitamin D. CDR juga dapat digunakan untuk memenuhi kebutuhan kalsium pada ibu hamil dan menyusui. \r\nNamun, ibu hamil tetap dianjurkan untuk mengkonsultasikan dengan dokter terlebih dahulu untuk mendapatkan jenis, dosis, dan durasi penggunaan suplemen, yang sesuai dengan kebutuhannya. ', 'produk1716462120.jpg', 1, '2024-05-23 04:02:00'),
(32, 12, 'CDR Effervescent 10 Tablet', 60000, 'CDR Effervescent 10 Tablet bermanfaat untuk memenuhi kebutuhan kalsium, menjaga tulang agar tetap kuat, membantu masa penyembuhan, dan masa pertumbuhan.\r\n\r\nCDR Effervescent 10 Tablet mengandung calcium carbonate, vitamin B6, vitamin C, vitamin D. CDR juga dapat digunakan untuk memenuhi kebutuhan kalsium pada ibu hamil dan menyusui. \r\n\r\nNamun, ibu hamil tetap dianjurkan untuk mengkonsultasikan dengan dokter terlebih dahulu untuk mendapatkan jenis, dosis, dan durasi penggunaan suplemen, yang sesuai dengan kebutuhannya. ', 'produk1716465017.jpg', 1, '2024-05-23 04:50:17'),
(33, 12, 'Vitacimin Lemon 2 Tablet', 4000, 'Vitacimin Lemon 10 Tablet bermanfaat mencegah dan mengatasi kekurangan vitamin C. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut (scurvy). Selain itu, vitamin C juga memiliki efek antioksidan yang dapat membantu tubuh melawan radikal bebas.\r\nVitamin C berperan penting dalam berbagai proses yang terjadi di dalam tubuh, termasuk menjaga dan mengoptimalkan daya tahan tubuh, meningkatkan penyerapan zat besi, serta pembentukan kolagen, protein, dan neurotransmiter. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut.', 'produk1716465082.png', 1, '2024-05-23 04:51:22'),
(34, 12, 'Hevit C 1000 mg 10 Kaplet', 18500, 'Hevit C 1000 mg Tablet bermanfaat untuk memelihara daya tahan tubuh dan membantu memenuhi kebutuhan vitamin C harian Anda.\r\n\r\nKandungan vitamin C di dalam Hevit C 1000 mg Tablet memiliki banyak fungsi penting bagi tubuh, seperti mengoptimalkan kerja sistem imun, serta membantu proses pemulihan dan penyembuhan luka. Vitamin C juga baik untuk kesehatan tulang, gigi, dan kulit.', 'produk1716465150.jpg', 1, '2024-05-23 04:52:30'),
(35, 12, 'Vitacimin Blueberry 2 Tablet', 4000, 'Vitacimin Blueberry bermanfaat mencegah dan mengatasi kekurangan vitamin C. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut (scurvy). Selain itu, vitamin C juga memiliki efek antioksidan yang dapat membantu tubuh melawan radikal bebas.\r\nVitamin C berperan penting dalam berbagai proses yang terjadi di dalam tubuh, termasuk menjaga dan mengoptimalkan daya tahan tubuh, meningkatkan penyerapan zat besi, serta pembentukan kolagen, protein, dan neurotransmiter. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut.', 'produk1716465266.png', 1, '2024-05-23 04:54:26'),
(36, 12, 'Redoxon 2 Tablet Kunyah', 12000, 'Redoxon 2 Tablet Kunyah bermanfaat mencegah dan mengatasi kekurangan vitamin C. Selain itu, vitamin C juga memiliki efek antioksidan yang dapat membantu tubuh melawan radikal bebas.\r\nVitamin C berperan penting dalam berbagai proses yang terjadi di dalam tubuh, termasuk menjaga dan mengoptimalkan daya tahan tubuh, meningkatkan penyerapan zat besi, serta pembentukan kolagen, protein, dan neurotransmiter. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut.\r\nGolongan', 'produk1716465362.png', 1, '2024-05-23 04:56:02'),
(38, 12, 'Imboost Effervescent Jeruk 8 Tablet', 51500, 'Imboost Effervescent Jeruk 8 Tablet bermanfaat untuk meningkatkan daya tahan tubuh, membantu mencegah sakit, dan mempercepat penyembuhan.\r\n\r\nImboost Effervescent Jeruk 8 Tablet mengandung vitamin C, ekstrak echinachea purpurea, dan zinc picolinate. Kombinasi ketiga bahan ini diketahui bisa menjaga dan meningkatkan kerja sistem imun sehingga tidak mudah sakit. ', 'produk1716524073.jpg', 1, '2024-05-23 21:14:33'),
(39, 12, 'Enervon Active 30 Tablet', 48200, 'Enervon Active 30 Tablet bermanfaat untuk membantu memenuhi kebutuhan vitamin C, Vitamin B kompleks, dan mineral zinc. \r\n\r\nEnervon Active 30 Tablet terdiri dari vitamin C, vitamin B kompleks, dan mineral zinc. Kombinasi bahan-bahan tersebut dipercaya bisa membantu memelihara daya tahan tubuh dan membantu metabolisme tubuh. ', 'produk1716524139.jpg', 1, '2024-05-23 21:15:39'),
(40, 12, 'Holisticare Ester C 1000 30 Tablet', 161900, 'HOLISTICARE D3 1000 mengandung Vitamin D3 1000 IU dikenal sebagai cholecalciferol, suplemen kesehatan yang berfungsi untuk memenuhi kebutuhan vitamin D dengan cepat pada kondisi tertentu, seperti lanjut usia, risiko tinggi atau penyakit infeksi, penderita penyakit autoimun, dan ibu hamil atau menyusui', 'produk1716524318.jpg', 1, '2024-05-23 21:18:38'),
(41, 12, 'Sido Muncul Vitamin C 1000 Mg Sweet Orange 6 Sachet', 18200, 'Sido Muncul Vitamin C 1000 mg Sugar Free Rasa Sweet Orange bermanfaat untuk memelihara daya tahan tubuh. \r\n\r\nSido Muncul Vitamin C 1000 mg Sugar Free Rasa Sweet Orange bermanfaat untuk menjaga daya tahan tubuh, melindungi tubuh dari radikal bebas, dan meningkatkan produksi energi. Sido Muncul Vitamin C 1000 mg Sugar Free Rasa Sweet Orange aman untuk dikonsumsi oleh penderita diabetes. ', 'produk1716524391.jpg', 1, '2024-05-23 21:19:51'),
(42, 12, 'Ever C 500 mg 2 Tablet', 9500, 'Ever C 500 mg 2 Tablet bermanfaat mencegah dan mengatasi kekurangan vitamin C. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut (scurvy). Selain itu, vitamin C juga memiliki efek antioksidan yang dapat membantu tubuh melawan radikal bebas.\r\n\r\nVitamin C berperan penting dalam berbagai proses yang terjadi di dalam tubuh, termasuk menjaga dan mengoptimalkan daya tahan tubuh, meningkatkan penyerapan zat besi, serta pembentukan kolagen, protein, dan neurotransmiter. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut.', 'produk1716524475.png', 1, '2024-05-23 21:21:15'),
(43, 12, 'Mecovit C 10 Tablet', 18400, 'Mecovit C 10 Tablet bermanfaat mencegah dan mengatasi kekurangan vitamin C. Selain itu, vitamin C juga memiliki efek antioksidan yang dapat membantu tubuh melawan radikal bebas.\r\nVitamin C berperan penting dalam berbagai proses yang terjadi di dalam tubuh, termasuk menjaga dan mengoptimalkan daya tahan tubuh, meningkatkan penyerapan zat besi, serta pembentukan kolagen, protein, dan neurotransmiter. Kekurangan vitamin C bisa menyebabkan terjadinya penyakit skorbut.', 'produk1716524548.png', 1, '2024-05-23 21:22:28'),
(44, 11, 'Anacetine Sirup 60 ml', 19990, 'Anacetine Sirup 60 ml bermanfaat untuk mengatasi batuk berdahak karena alergi dan menurunkan demam pada anak.\r\n\r\nAnacetine Sirup 60 ml mengandung paracetamol, guaifenesin, dan chlorphenamine maleate. Perpaduan bahan-bahan tersebut bekerja sebagai analgesik dan antipiretik, antihistamin, dan ekspektoran yang dapat mengencerkan dahak sehingga dahak bisa lebih mudah dikeluarkan dari saluran pernapasan.', 'produk1716524744.png', 1, '2024-05-23 21:25:44'),
(45, 11, 'Siladex Mukolitik Ekspektoran Sirup 30 ml', 17200, 'Siladex Mucolytic & Expectorant Sirup 30 Ml bermanfaat untuk meredakan batuk berdahak. \r\n\r\nSiladex Mucolytic & Expectorant Sirup 30 Ml mengandung kombinasi bromhexine dan guafenesin yang bekerja mengencerkan dahak di saluran pernapasan, sehingga lebih mudah dikeluarkan. Siladex Mucolytic & Expectorant Sirup 30 Ml tidak mengandung alkohol dan bebas gula. ', 'produk1716524953.jpg', 1, '2024-05-23 21:29:13'),
(46, 11, 'Pacdin Baby Cough Sirup 60 mL', 13500, 'Pacdin Baby Cough Sirup 60 mL bermanfaat untuk mengencerkan dahak dan meredakan batuk akibat alergi.\r\nPacdin Baby Cough Sirup 60 mL mengandung guaifenesin dan chlorpheniramine. Guaifenesin bekerja dengan mengencerkan dahak, sehingga dahak bisa lebih mudah dikeluarkan dari saluran pernapasan. Sementara itu, chlorpheniramine bekerja dengan menghambat kerja histamin, yaitu senyawa yang menyebabkan munculnya gejala alergi.', 'produk1716525009.png', 1, '2024-05-23 21:30:09'),
(47, 11, 'Cohistan Ekspektoran Sirup 60 Ml', 33000, 'Cohistan Expectoran bermanfaat untuk mengencerkan dahak dan meredakan batuk akibat alergi.\r\n\r\nCohistan Expectoran mengandung guaifenesin dan chlorpheniramine. Guaifenesin bekerja dengan mengencerkan dahak, sehingga dahak bisa lebih mudah dikeluarkan dari saluran pernapasan. Sementara itu, chlorpheniramine bekerja dengan menghambat kerja histamin, yaitu senyawa yang menyebabkan munculnya gejala alergi.', 'produk1716525060.jpg', 1, '2024-05-23 21:31:00'),
(48, 17, 'Tolak Angin Plus Madu Sido Muncul 15 Ml 12 sachet', 57900, 'Tolak Angin Sidomuncul 15 Ml bermanfaat untuk mengobati gejala masuk angin, seperti mual, perut kembung, sakit perut, pusing, meriang, dan tenggorokan kering. Produk ini juga baik untuk diminum saat perjalanan jauh, kelelahan, atau kurang tidur.\r\n\r\nTolak Angin Sidomuncul 12 Sachet 15 Ml mengandung beberapa bahan herbal, seperti buah adas, kayu ules, daun cengkeh, jahe, daun mint, dan madu. Kombinasi semua bahan tersebut dipercaya bisa mengatasi gejala masuk angin sekaligus meningkatkan daya tahan tubuh.', 'produk1716525161.jpg', 1, '2024-05-23 21:32:41'),
(49, 17, 'Tolak Angin Cair Flu Sido Muncul 15 ml 12 Sachet', 57000, 'Tolak Angin Cair Flu 15 Ml bermanfaat untuk meringankan gejala selesma atau flu, seperti hidung tersumbat, pilek, sakit kepala dan badan terasa pegal.\r\n\r\nTolak Angin Cair Flu 15 Ml mengandung beberapa bahan herbal, seperti buah adas, kayu ules, daun cengkeh, jahe, daun mint, echinacea, meniran, valerian, dan panax ginseng. Kombinasi semua bahan tersebut dipercaya bisa meredakan gejala selesma sekaligus memelihara daya tahan tubuh.', 'produk1716525260.jpg', 1, '2024-05-23 21:34:20'),
(50, 17, 'Cap Lang Minyak Kayu Putih 60 Ml', 30000, 'Minyak Kayu Putih Cap Lang dipercaya bermanfaat untuk membantu meringankan perut kembung, sakit perut, atau mual, dan mengobati gatal akibat gigitan serangga atau nyamuk. \r\n\r\nMinyak Kayu Putih Cap Lang terbuat dari 100% minyak kayu putih dari pulau Ambon. Kandungan cineolnya yang tinggi dan aromanya yang khas dapat memberikan sensasi hangat ketika dioleskan ke kulit, serta dipercaya dapat meredakan perut kembung, masuk angin, sakit kepala, pegal dan nyeri otot.', 'produk1716525326.jpg', 1, '2024-05-23 21:35:26'),
(52, 17, 'Fresh Care Green Tea Roll On 10 ml', 20600, 'Fresh Care green Tea Roll On 10 Ml bermanfaat untuk membantu meredakan perut kembung, pusing, masuk angin, dan mabuk perjalanan.\r\n\r\nFresh Care green Tea Roll On 10 Ml terdiri dari menthol, camphor, minyak esensial teh hijau ( green tea), dan minyak olive. Kombinasi bahan-bahan tersebut dipercaya bekerja dengan cara memberikan sensasi dingin dan aromaterapi, sehingga dapat mengalihkan perhatian dari rasa tidak nyaman yang dirasakan. ', 'produk1716525467.jpg', 1, '2024-05-23 21:37:47'),
(54, 17, 'Tolak Angin Anak Cair Botol 60 Ml', 26000, 'Mengobati gejala masuk angin pada anak, seperti mual, perut kembung, sakit perut, pusing, sumeng atau meriang, dan tidak mau makan.', 'produk1716529408.jpg', 1, '2024-05-23 22:43:28'),
(55, 17, 'Farmacrol Forte Suspensi 100 ml', 81000, 'Farmacrol Forte Suspensi bermanfaat untuk mengatasi esofagitis, gastritis, tukak lambung, dan kembung yang berkaitan dengan kenaikan asam lambung.\r\n\r\nFarmacrol Forte mengandung alumunium hidroksida, simethicone, dan magnesium hidroksida. Ketiga gabungan bahan tersebut dapat menetralkan asam lambung yang berlebih serta mengurangi gas pada saluran pencernaan.', 'produk1716545021.jpg', 1, '2024-05-24 03:03:41'),
(56, 17, 'Fresh Care Sports Roll On 10 Ml', 19900, 'Fresh Care Sports Roll On 10 Ml bermanfaat untuk mengurangi ketegangan otot, atau mengurangi rasa pegal setelah berolahraga atau beraktivitas berat.\r\n\r\nFresh Care Sports Roll On 10 Ml mengandung menthol, camphor, metil salisilat, minyak esensial, dan minyak virgin olive. Kombinasi bahan-bahan tersebut dipercaya bekerja dengan cara meredakan peradangan dan memberikan sensasi hangat dan dingin, sehingga dapat mengalihkan perhatian dari rasa nyeri. ', 'produk1716545114.jpg', 1, '2024-05-24 03:05:14'),
(57, 17, 'Minyak Angin Cap Kapak 14 Ml', 33000, 'Minyak Angin Cap Kapak bermanfaat untuk membantu meredakan sakit kepala, mabuk perjalanan, pilek, dan nyeri akibat encok, keseleo, atau terkilir. \r\n\r\nMinyak Angin Cap Kapak mengandung menthol, metil salisilat, camphor, minyak eukaliptus, dan minyak esensial.  Kombinasi bahan-bahan ini akan bekerja dengan cara memberikan sensasi hangat pada kulit, sehingga rasa sakit di area tersebut bisa teralihkan. ', 'produk1716545253.jpg', 1, '2024-05-24 03:07:33'),
(58, 17, 'Plossa Inhaler Roll On Eucalyptus 10 Ml', 23100, 'Plossa Press & Soothe Aromatics Eucalyptus dipercaya bermanfaat untuk meredakan pegal-pegal, sakit kepala, gejala masuk angin, kembung, dan mual, serta sebagai aromaterapi yang menyegarkan. \r\n\r\nPlossa Press & Soothe Aromatics Eucalyptus merupakan minyak angin aromaterapi yang mengandung minyak eukaliptus, minyak peppermint, menthol, dan camphor. Pada kulit, kombinasi bahan ini dapat memberikan sensasi dingin dan hangat, sehingga rasa sakit di area tersebut bisa teralihkan.\r\n\r\nPlossa hadir dengan konsep 4 in 1, yaitu sebagai alat pijat dan kerok, sebagai minyak angin dalam kemasan roll on yang dioles ke kulit, serta sebagai inhaler untuk aromaterapi atau melegakan hidung tersumbat. ', 'produk1716545374.jpg', 1, '2024-05-24 03:09:34'),
(59, 16, 'Dumin 500 mg 10 Kaplet', 15500, 'Dumin 500 mg Tablet bermanfaat untuk menurunkan demam dan meredakan nyeri, seperti sakit kepala dan sakit gigi.\r\n\r\nDumin 500 mg Tablet bekerja dengan cara mengurangi produksi zat penyebab peradangan, yaitu prostaglandin. Penurunan kadar prostaglandin di dalam tubuh akan membuat tanda peradangan seperti demam dan nyeri berkurang.', 'produk1716548979.jpg', 1, '2024-05-24 04:09:39'),
(60, 16, 'Tempra Drop Rasa Anggur  15 ml', 60000, 'Tempra Drop Rasa Anggur bermanfaat untuk menurunkan demam, termasuk demam akibat imunisasi, serta rasa nyeri, seperti pada sakit kepala atau sakit gigi. \r\n\r\nTempra Drop Rasa Anggur mengandung paracetamol. Obat ini bekerja pada otak untuk menurunkan suhu tubuh dan meningkatkan toleransi terhadap nyeri. Pada umumnya, Tempra ditujukan untuk anak-anak. Meski begitu, orang dewasa juga dapat mengonsumsinya bila bentuk sediaan lain tidak memungkinkan.', 'produk1716549044.jpg', 1, '2024-05-24 04:10:44'),
(62, 16, 'Exedra Rema 10 Kaplet', 23900, 'Exedra Rema 10 Kaplet bermanfaat untuk meredakan nyeri ringan sampai sedang, akibat nyeri sendi, nyeri haid, atau nyeri akibat prosedur medis tertentu.\r\n\r\nExedra Rema 10 Kaplet mengandung ibuprofen dan paracetamol. Ibuprofen dan paracetamol merupakan obat dengan efek analgetik dan antipiretik, sehingga bisa meredakan demam dan nyeri. ', 'produk1716549224.jpg', 1, '2024-05-24 04:13:44'),
(63, 16, 'Panadol Extra 10 Kaplet', 16500, 'Panadol Extra 10 Kaplet bermanfaat untuk menurunkan demam dan meredakan sakit kepala dan sakit gigi.\r\n\r\nPanadol Extra 10 Kaplet bekerja dengan cara mengurangi produksi zat penyebab peradangan, yaitu prostaglandin. Penurunan kadar prostaglandin di dalam tubuh akan membuat tanda peradangan seperti demam dan nyeri berkurang', 'produk1716549302.jpg', 1, '2024-05-24 04:15:02'),
(64, 16, 'Bodrex Lapis Dua 20 Tablet', 11500, 'Bodrex Lapis Dua Tablet bermanfaat untuk menurunkan demam dan meredakan sakit kepala dan sakit gigi.\r\n\r\nBodrex Lapis Dua Tablet bekerja dengan cara mengurangi produksi zat penyebab peradangan, yaitu prostaglandin. Penurunan kadar prostaglandin di dalam tubuh akan membuat tanda peradangan seperti demam dan nyeri berkurang.', 'produk1716549373.jpg', 1, '2024-05-24 04:16:13'),
(65, 16, 'Paramex Obat sakit kepala  4 Tablet', 9600, 'Paramex 4 Tablet bermanfaat untuk menurunkan demam dan meredakan nyeri, seperti sakit kepala dan sakit gigi.\r\n\r\nParamex 4 Tablet bekerja dengan cara mengurangi produksi zat penyebab peradangan, yaitu prostaglandin. Penurunan kadar prostaglandin di dalam tubuh akan membuat tanda peradangan seperti demam dan nyeri berkurang.', 'produk1716549422.jpg', 1, '2024-05-24 04:17:02'),
(66, 16, 'Termorex Sirup 60 Ml', 22500, 'Termorex Sirup Turun Panas 60 ml bermanfaat untuk menurunkan demam dan meredakan nyeri, seperti sakit kepala dan sakit gigi.\r\n\r\nTermorex Sirup Turun Panas 60 ml bekerja dengan cara mengurangi produksi zat penyebab peradangan, yaitu prostaglandin. Penurunan kadar prostaglandin di dalam tubuh akan membuat tanda peradangan seperti demam dan nyeri berkurang.', 'produk1716549480.jpg', 1, '2024-05-24 04:18:00'),
(68, 13, 'Stimuno Sirup Rasa Anggur 60 Ml', 34000, 'Stimuno Sirup Rasa Anggur 60 ml bermanfaat untuk meningkatkan kerja sistem imun atau sistem kekebalan tubuh.\r\n\r\nStimuno Sirup Rasa Anggur 60 ml mengandung ekstrak tanaman meniran hijau (Phyllanthus niruri), yang diyakini mampu mencegah dan mempercepat penyembuhan penyakit infeksi.', 'produk1716787994.jpg', 1, '2024-05-26 22:33:14'),
(69, 13, 'Cerebrofort Gold Rasa Strawberry Sirup 100 Ml', 27000, 'Cerebrofort Gold Rasa Strawberry bermanfaat untuk membantu pertumbuhan dan perkembangan anak, meningkatkan metabolisme tubuh serta kesehatan anak.\r\n\r\nCerebrofort Gold Rasa Strawberry mengandung AA, DHA, EPA, L-glutamic acid, dan folic acid yang merupakan zat yang penting untuk mendukung pertumbuhan dan perkembangan anak. Suplemen ini juga mengandung berbagai macam vitamin yang baik untuk menjaga kesehatan dan energi anak. ', 'produk1716788046.jpg', 1, '2024-05-26 22:34:06'),
(70, 13, 'Cerebrofort Marine Gummy Orange 10 Gummy', 19900, 'Cerebrofort Marine Gummy Orange bermanfaat untuk membantu memenuhi kebutuhan EPA dan DHA dalam perkembangan otak anak.\r\n\r\nCerebrofort Marine Gummy Orange merupakan gummy atau permen lunak jeli rasa jeruk dengan kandungan minyak ikan tuna yang kaya akan DHA dan EPA. Minyak ikan tuna berfungsi untuk membantu tumbuh kembang sel-sel otak anak.', 'produk1716788089.png', 1, '2024-05-26 22:34:49'),
(71, 13, 'Curcuma Plus Imuns Rasa Jeruk 60 Ml', 29500, '', 'produk1716788139.jpg', 1, '2024-05-26 22:35:39'),
(72, 13, 'Fitkom Gummy Multivitamin Biru 4 Sachet', 25500, 'Fitkom Gummy Multivitamin adalah multivitamin anak dalam bentuk gummy (jelly kunyah) dengan aneka rasa buah yang disukai anak-anak.\r\n\r\nFitkom Gummy Multivitamin dilengkapi dengan 10 vitamin yang bermanfaat untuk mendukung kesehatan, daya tahan tubuh, dan membantu tumbuh kembang anak setiap harinya.', 'produk1716788179.jpg', 1, '2024-05-26 22:36:19'),
(73, 13, 'Holisticare Ester C Kids 30 Tablet', 50000, 'Holisticare Ester C adalah vitamin C inovatif, unik, dipatenkan dan tidak asam (netral) yang diproses secara alamiah sehingga menghasilkan vitamin C yang mudah, lebih cepat dan lebih banyak diserap oleh tubuh. Holisticare Ester C berperan sebagai antioksidan, membantu memelihara sistem daya tahan tubuh, berfungsi dalam pembentukan kolagen (pembentuk jaringan kulit, tulang, tulang rawan dan gusi) dan membantu mempercepat penyembuhan luka. Tidak seperti Vitamin C biasa, Holisticare Ester C memelihara daya tahan tubuh secara optimal karena memiliki beberapa keunggulan, antara lain : pH Netral. Aman bagi lambung, penderita maag dan lambung sensitif. Diserap 2x lebih cepat dan lebih banyak dibandingkan vitamin C biasa. Bertahan lebih lama di dalam tubuh hingga 24 jam. Aman bagi ginjal, tidak meningkatkan resiko batu ginjal. Dosis tepat untuk memenuhi kebutuhan vitamin C harian tubuh. Tidak merusak gigi dan mencegah radang gusi (periodontitis). Holisticare Ester C Kids diformulasikan khusus untuk membantu memelihara daya tahan tubuh anak usia 4 - 12 tahun. Berupa tablet hisap berbentuk kepala gajah dengan rasa jeruk yang disukai anak-anak. Dilengkapi Xylitol yang dapat mengurangi penumpukan plak sehingga dapat mencegah gigi berlubang/ keropos. Kadar kalori rendah sehingga aman bagi anak dan tidak menimbulkan diabetes pada anak.', 'produk1716788223.jpg', 1, '2024-05-26 22:37:03'),
(74, 13, 'Vitamin B1 45 Tablet IPI', 13000, 'Vitamin B1 IPI Tablet bermanfaat untuk mencegah dan mengurangi defisiensi vitamin B1, serta membantu menjaga fungsi saraf.\r\n\r\nSuplemen vitamin B1 sering digunakan untuk mengatasi kekurangan vitamin B1 pada penderita kecanduan alkohol, penyakit beri-beri, sindrom Wernicke-Korsakoff, HIV/AIDS, diabetes, gagal jantung, penyakit liver, dan malabsorbsi.\r\n\r\nVitamin B1 juga biasanya diberikan kepada pengguna rutin obat furosemide, dan orang yang menjalani operasi bariatrik atau cuci darah (hemodialisis). ', 'produk1716788264.png', 1, '2024-05-26 22:37:44'),
(75, 13, 'Cerebrofort Marine Gummy Mango Isi 10 Tablet', 19900, '', 'produk1716788294.jpg', 1, '2024-05-26 22:38:14'),
(76, 13, 'Sakatonik ABC Antariksa Tutti Frutti 30 Tablet', 25800, 'Sakatonik Abc Antariksa Tablet bermanfaat untuk membantu memenuhi kebutuhan vitamin anak, memelihara kesehatan dan mendukung pertumbuhannya, serta membantu proses pemulihan setelah anak sakit.  \r\n\r\nSakatonik Abc Antariksa Tablet merupakan multivitamin rasa tutti fruti dengan kandungan 10 jenis vitamin yang baik untuk kesehatan dan proses pertumbuhan anak. Tablet ini memiliki bentuk bintang, meteor, dan bulan sabit. ', 'produk1716788333.jpg', 1, '2024-05-26 22:38:53'),
(77, 13, 'Egoji Sirup Rasa Anggur 50 ml', 52500, '', 'produk1716788365.png', 1, '2024-05-26 22:39:25'),
(78, 13, 'Fitkom Gummy Multivitamin 21 gr', 52000, 'Fitkom Gummy Multivitamin 21 gr adalah multivitamin anak dalam bentuk gummy (jelly kunyah) dengan aneka rasa buah yang disukai anak-anak.\r\nFitkom Gummy Multivitamin 21 gr dilengkapi dengan 10 vitamin yang bermanfaat untuk mendukung kesehatan, daya tahan tubuh, dan membantu tumbuh kembang anak setiap harinya.', 'produk1716788420.png', 1, '2024-05-26 22:40:20'),
(79, 14, 'Folavit 400 Mcg 10 Tablet', 19000, 'Folavit 400 mcg Tablet bermanfaat untuk mencegah dan mengatasi kekurangan asam folat, terutama pada ibu hamil dan menyusui.\r\n\r\nFolavit 400 mcg Tablet mengandung asam folat yang berguna untuk pembentukan sel-sel baru, termasuk sel darah merah. Selain itu, asam folat juga bermanfaat untuk mencegah terjadinya cacat tabung saraf (neural tube defect) pada janin.', 'produk1716788617.jpg', 1, '2024-05-26 22:43:37'),
(80, 14, 'Nutrimama 2 15 Kapsul Lunak', 214000, 'Nutrimama 2 15 Kapsul Lunak bermanfaat untuk membantu memelihara kesehatan ibu hamil dan mendukung perkembangan janin.\r\n\r\nNutrimama 2 15 Kapsul Lunak mengandung asam folat, vitamin D3, kalsium karbonat, dan DHA. Kalsium dan vitamin D3 berguna untuk kesehatan tulang ibu dan janin, DHA membantu perkembangan otak dan mata janin, sementara asam folat berguna untuk pembelahan sel, serta produksi asam amino dan asam nukleat.', 'produk1716788677.png', 1, '2024-05-26 22:44:37'),
(81, 14, 'Pregnacare Plus 6 Tablet', 41000, '', 'produk1716788760.png', 1, '2024-05-26 22:46:00'),
(83, 11, 'Vicks Formula 44 Sirup 100 ml', 27500, 'Vicks Formula 44 bermanfaat meringankan batuk tidak berdahak yang disertai bersin-bersin atau alergi. Vicks Formula 44 mengandung dextromethorphan HBr dan doxylamine succinate.\r\n\r\nDextromethorphan merupakan obat penekan respons batuk yang bekerja dengan cara menghambat refleks batuk di otak. Sementara itu, doxylamine succinate merupakan antihistamin untuk meredakan batuk pilek serta gatal di hidung dan tenggorokan yang disebabkan oleh alergi.', 'produk1716789103.png', 1, '2024-05-26 22:51:43'),
(84, 16, 'Panadol 500 mg 10 Kaplet', 14500, 'Panadol bermanfaat untuk menurunkan demam dan meredakan nyeri, seperti pada sakit kepala, sakit gigi, nyeri otot, atau nyeri haid.\r\n\r\nBerikut adalah informasi tentang kandungan, manfaat, dosis dan aturan pakai, peringatan khusus, serta efek samping Panadol.', 'produk1716789151.jpg', 1, '2024-05-26 22:52:31'),
(85, 17, 'Antangin JRG Sirup Herbal 15 Ml', 10000, 'Antangin JRG Sirup Herbal 15 Ml  bermanfaat untuk meredakan masuk angin, meriang, rasa mual, perut kembung, atau kelelahan.\r\n\r\nAntangin JRG Sirup Herbal 15 Ml  mengandung berbagai bahan herbal, termasuk jahe, royal jelly, dan ginseng. ', 'produk1716789224.png', 1, '2024-05-26 22:53:44'),
(86, 14, 'Vitamam 3 28 Kapsul', 157000, 'Vitamam-3 Kapsul bermanfaat membantu memenuhi kebutuhan vitamin dan mineral ibu hamil selama trimester ke-3 kehamilan. Dalam 1 dus Vitamam-3 berisi 28 kapsul vitamin dan 4 kapsul zat besi.\r\n\r\nVitamam-3 Kapsul mengandung multivitamin dan mineral yang diperlukan oleh ibu hamil pada masa kehamilan, untuk membantu menjaga kesehatan ibu hamil dan perkembangan janin. Suplemen ini juga mengandung prebiotik untuk memberi makan bakteri baik dalam tubuh, sehingga sistem pencernaan tetap sehat.', 'produk1716789572.jpg', 1, '2024-05-26 22:59:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
