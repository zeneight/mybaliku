-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2018 at 04:34 
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_berita` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `hits` int(5) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `nama_berita`, `slug`, `deskripsi`, `hits`, `gambar`) VALUES
(1, 1, 'Agung Buka Nutina', 'asdfa', '&lt;p&gt;laskdjlas jdlasjdl asjld jas&lt;/p&gt;\r\n', 111, '960778vivo.png'),
(2, 1, 'TEsting', 'testing', '&lt;p&gt;lkasd;fjslf ;lkJ:LJL:Jl;dsajlkfjlas;dfj;lasjf; asdfsadflsadjl;fj asl;fj;aslfjl;asfasc&lt;/p&gt;\r\n', 100, ''),
(3, 1, 'TEsting', 'asfasdf', '&lt;p&gt;adklsf jsahdflkjh sadlkfh sakdfhlk sa&lt;/p&gt;\r\n', 0, '729240sikh.png');

-- --------------------------------------------------------

--
-- Table structure for table `katberita`
--

CREATE TABLE IF NOT EXISTS `katberita` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `katberita`
--

INSERT INTO `katberita` (`id_kategori`, `nama_kategori`, `slug`) VALUES
(1, 'agung', 'agung');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug`) VALUES
(2, 'tesa Wiif', 'tesaa'),
(6, 'Agung Priambodo "BEST"', 'agung-priambodo'),
(15, 'asdklfhasldf', 'lhsadlfhsaldf'),
(16, 'Rutan Lapas', 'rutan-lapas'),
(23, 'Sayur Hijau', 'sayur-hijau'),
(24, 'Book', 'book'),
(28, 'Agung', 'agung'),
(29, 'WOw Gan', 'wow-gan'),
(31, 'Mantap', 'mantap');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
  `id_keranjang` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `dibaca` enum('N','Y') NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga`, `slug`, `deskripsi`, `stok`, `berat`, `gambar`, `dibeli`) VALUES
(9, 2, 'Heli Cobra', 450000, 'damn', '', 0, '0.00', '983510bouddha.png', 0),
(14, 16, 'Book', 81111, 'wuw', '&lt;p&gt;hkhlkhlkh ashfklashdfkl hsakdfhksa hfklsadklf hskadhfkasd,f asmbfnla sdfa hsfohasd;lfjasdnfmasfd&amp;nbsp;&lt;/p&gt;\r\n', 0, '0.00', '698642depan.jpg', 0),
(20, 2, 'buku', 8000, 'buku', '&lt;p&gt;kahdflkjsdlf jsakdj flaskdj;f kjsldfl kajsflksaj;lfsldfkj saldkfj saldfkjs;ladj fasldfl sjlalfjlasdkjf lsdjflaskjfl ajsdf as;lf sfs&lt;/p&gt;\r\n', 0, '0.00', '89942020170416_224229.jpg', 0),
(22, 16, 'Rey', 45000, 'rey', '&lt;p&gt;asdhflaksjdhf&lt;/p&gt;\r\n\r\n&lt;p&gt;asdkjfhsadkfjhask&lt;/p&gt;\r\n\r\n&lt;p&gt;asdfkjsahdfkash&lt;/p&gt;\r\n', 3, '0.00', '726948vivo.png', 0),
(23, 23, 'Heli Amburegul', 45000, 'heli-amburegul', '&lt;p&gt;Agung Poapdasdq,n ,asmndf asadfhsadfkmhsa kdlfjhsadk flsadf hsakdlfj hsadklf&lt;/p&gt;\r\n\r\n&lt;p&gt;sadfhsakf af&lt;/p&gt;\r\n\r\n&lt;p&gt;sad fsad fas&lt;/p&gt;\r\n\r\n&lt;p&gt;asdasddf sadf sadf as fasfsadfsadfsahdfkshdfj sdajfh ksadjhfkasjdhfksajdhfk asf&lt;/p&gt;\r\n', 0, '0.00', '310033gopr4715.jpg', 0),
(26, 2, 'Es Krim', 810231, 'eskrim', '&lt;p&gt;Keren Banget Gannnn!!!&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 11, '0.00', '233077screenshot from 2017-07-07 19-44-14.png', 0),
(27, 29, 'Apa? Lapar?', 400000, 'testing', '&lt;p&gt;ksadkashfkljashkjlf hsakjdf hkjsadhfkljsadh lkf&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/kakyanno_v01/public/assets/ckeditor/plugins/imageuploader/uploads/372bc39.png&quot; style=&quot;height:768px; width:1366px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;asdfkjsakjfaskjlfhsakldfhaklsdhfklajsh&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;klfasjflkajsdlfjasdlfkjasldk fjasldkfjas kdfjsadlkf jasdlkf jasld jflsad jflskadj fklasjd kfljasdk lfjalskd jflkasdj flkasdj flkasjd lfkajsd lkfjasldkf jalsdkj flasj dflas&lt;/p&gt;\r\n\r\n&lt;p&gt;safasdf&lt;/p&gt;\r\n', 17, '15.00', '123735gopr4726.jpg', 0),
(28, 24, 'Buku Sains 7', 13000, 'sains-book', '&lt;p&gt;safjkash fkjsadhfk sahdkfjhsakdf ashd&lt;/p&gt;\r\n\r\n&lt;p&gt;kjlkjdas&lt;/p&gt;\r\n\r\n&lt;p&gt;asdasd&lt;/p&gt;\r\n\r\n&lt;p&gt;asdasdas&lt;/p&gt;\r\n', 111, '1.00', '542537screenshot from 2017-07-07 19-14-27.png', 0),
(29, 15, 'rsfda', 1231231, 'adsfasdf', '&lt;p&gt;sdfasd&lt;/p&gt;\r\n', 11, '14.00', '991622vivo.png', 0),
(30, 6, 'WWOWOW', 8000, 'sdfas', '&lt;p&gt;;sadlfk;asdkf ;skadf; lksad;fk ;safasdaf sa&lt;/p&gt;\r\n', 11, '10.00', '7632black_stallions_patrol_by_markkarvon.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `nama_slider` varchar(200) NOT NULL,
  `gambar` text NOT NULL,
  `status` enum('Show','Hide') NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `nama_slider`, `gambar`, `status`) VALUES
(14, 'coba', '297205screenshot from 2017-07-07 19-14-27.png', 'Show'),
(15, 'guna', '82159020170429_082924.jpg', 'Show'),
(16, 'Bukaka', '62346420170208_232408.jpg', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(5) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `ongkir` int(20) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
