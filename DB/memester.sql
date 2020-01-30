-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 01:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memester`
--

-- --------------------------------------------------------

--
-- Table structure for table `memes`
--

CREATE TABLE `memes` (
  `meme_id` int(11) NOT NULL,
  `upvotes` int(11) NOT NULL,
  `downvotes` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `upload_date` datetime NOT NULL,
  `uploader` varchar(255) NOT NULL,
  `meme_of_the_decade` int(11) NOT NULL,
  `filepath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memes`
--

INSERT INTO `memes` (`meme_id`, `upvotes`, `downvotes`, `category`, `upload_date`, `uploader`, `meme_of_the_decade`, `filepath`) VALUES
(7, 0, 0, 'Deep-fried', '2020-01-28 01:41:16', 'Tojo', 0, 'uploads/a64d5b8cbadee6f3b5ef5c7f5255c593869c2b02.jpeg'),
(8, 0, 0, 'Deep-fried', '2020-01-28 01:43:43', 'Tojo', 0, 'uploads/4b2df949950a3067deeff072de918b01bc134af6.jpeg'),
(9, 0, 0, 'Deep-fried', '2020-01-28 01:44:07', 'Tojo', 0, 'uploads/564a46afdfcee51af3d2b830b0eb9e55d4f87436.jpeg'),
(10, 0, 0, 'Cartoon', '2020-01-28 01:46:00', 'Tojo', 0, 'uploads/1e8a36699528d2a1a4d4c6b75b838ce2dd8e9f33.jpeg'),
(11, 0, 0, 'Cartoon', '2020-01-28 01:46:10', 'Tojo', 0, 'uploads/6a1a4d9327557370a4e7a843a08684497756fe83.jpeg'),
(12, 0, 0, 'Cartoon', '2020-01-28 01:46:20', 'Tojo', 0, 'uploads/da9d3c5b25b62933a8df21a386ff215fb1e1d0f8.jpeg'),
(13, 0, 0, 'Slav', '2020-01-28 01:50:17', 'Tojo', 0, 'uploads/d5cd719abc04928b1f746766179a5a515a7f68f0.jpeg'),
(14, 0, 0, 'Slav', '2020-01-28 01:50:30', 'Tojo', 0, 'uploads/da8f9d9009bdfba7b26c7699373835ee163d4407.jpeg'),
(15, 0, 0, 'Slav', '2020-01-28 01:50:41', 'Tojo', 0, 'uploads/19417604238b812a5f3f0eb54327079a680289dd.png'),
(16, 0, 0, 'Star Wars', '2020-01-28 01:53:39', 'Tojo', 0, 'uploads/1784e01e5f39e85eb46ea719de7e9a85c1f0cf03.jpeg'),
(17, 0, 0, 'Star Wars', '2020-01-28 01:53:50', 'Tojo', 0, 'uploads/8e636dec5cb8bbf3e50e662e8c003bc082150293.jpeg'),
(18, 0, 0, 'Star Wars', '2020-01-28 01:54:00', 'Tojo', 0, 'uploads/594ddde097961e62106e1021c6f476b68e07d89c.jpeg'),
(19, 0, 0, 'Shrek', '2020-01-28 01:55:57', 'Tojo', 0, 'uploads/6cf015358775d0ac1e7760eea37766876f4b1e0e.jpeg'),
(20, 0, 0, 'Shrek', '2020-01-28 01:56:12', 'Tojo', 0, 'uploads/a64bc9a11b95920a2b0b2720ce4cd7262eaacc32.jpeg'),
(21, 0, 0, 'Shrek', '2020-01-28 01:56:40', 'Tojo', 0, 'uploads/6b065fc1f7e23faa45a7a3f60c9a8d8790dbd729.jpeg'),
(22, 0, 0, 'Animals', '2020-01-28 02:00:53', 'Tojo', 0, 'uploads/45db078869c11bcc9418a0f6d697b4fafaa91317.jpeg'),
(23, 0, 0, 'Animals', '2020-01-28 02:01:07', 'Tojo', 0, 'uploads/71628d55a235c5f932360df1c673194fa4b5703c.jpeg'),
(24, 0, 0, 'Animals', '2020-01-28 02:01:19', 'Tojo', 0, 'uploads/a31dfa26fc31cad44af08f84551be246c37b60f5.jpeg'),
(25, 0, 0, 'Dark humor', '2020-01-28 02:05:51', 'Tojo', 0, 'uploads/44c979210af6d8979d1f243e30398ff515142475.jpeg'),
(26, 0, 0, 'Dark humor', '2020-01-28 02:06:03', 'Tojo', 0, 'uploads/845268ac94c708e5f66826b0e9c7afbf04438ec5.jpeg'),
(27, 0, 0, 'Dark humor', '2020-01-28 02:06:14', 'Tojo', 0, 'uploads/9f96c0c11afb72a53048d4d982d4f2245847afec.jpeg'),
(28, 0, 0, 'Star Wars', '2020-01-29 11:55:08', 'Tojo', 0, 'uploads/e143f4acec7d14d93b6d6139b9d8b1c4ade7724f.jpeg'),
(29, 0, 0, 'Star Wars', '2020-01-29 11:55:23', 'Tojo', 0, 'uploads/3d703aaa61791543e30f30d1df0e13ab64745a8b.jpeg'),
(30, 0, 0, 'Star Wars', '2020-01-29 11:55:33', 'Tojo', 0, 'uploads/eb598def48bb8ad11a7727e7a9c80ef37ddbb2dd.jpeg'),
(31, 0, 0, 'Star Wars', '2020-01-29 11:55:42', 'Tojo', 0, 'uploads/482b84c433c8d4965788ab1398639bf98d5d0402.jpeg'),
(32, 0, 0, 'Star Wars', '2020-01-29 11:55:52', 'Tojo', 0, 'uploads/c7d53a7a6d44421ba80bb54ef1c3a342cb415de9.jpeg'),
(33, 0, 0, 'Star Wars', '2020-01-29 11:55:58', 'Tojo', 0, 'uploads/bcf0f84a956847a320e5784fe36ec9db3380165b.jpeg'),
(34, 0, 0, 'Star Wars', '2020-01-29 11:56:05', 'Tojo', 0, 'uploads/ba78ae284c04881ac9474d2e74a19819afd260ec.jpeg'),
(35, 0, 0, 'Star Wars', '2020-01-29 11:56:12', 'Tojo', 0, 'uploads/a138566fc3167748a3094af77345aefbabbdda99.jpeg'),
(36, 0, 0, 'Shrek', '2020-01-29 12:01:54', 'Tojo', 0, 'uploads/1dba965a94765f75edd9949af17a83af1e7c540d.png'),
(37, 0, 0, 'Shrek', '2020-01-29 12:02:03', 'Tojo', 0, 'uploads/7ee166613e6e26b02dcd232e13bc406158d4e29d.jpeg'),
(38, 0, 0, 'Shrek', '2020-01-29 12:02:11', 'Tojo', 0, 'uploads/8fa4b0f445cf15658bb6a183ba77c61907e1881f.jpeg'),
(39, 0, 0, 'Shrek', '2020-01-29 12:02:20', 'Tojo', 0, 'uploads/d78abe481136d571beeb7141b1f486efcb89528d.jpeg'),
(40, 0, 0, 'Shrek', '2020-01-29 12:02:27', 'Tojo', 0, 'uploads/0238f70eda096bb9048e0f043fef46e6721b023b.png'),
(41, 0, 0, 'Shrek', '2020-01-29 12:02:37', 'Tojo', 0, 'uploads/9ebbe5ebd7b591c79024d3ac08fedc6fed7c04f3.jpeg'),
(42, 0, 0, 'Shrek', '2020-01-29 12:02:45', 'Tojo', 0, 'uploads/f585697e0d1e705e6432b0cd4f92f1a04ac3e750.png'),
(43, 0, 0, 'Domaci', '2020-01-29 12:09:08', 'Tojo', 0, 'uploads/c407e9ff8282dca4d9badce2b5b2386630c26a08.jpeg'),
(44, 0, 0, 'Domaci', '2020-01-29 12:09:16', 'Tojo', 0, 'uploads/1dd85b23a84e8f242cd6a42f8073e9cb574e315d.jpeg'),
(45, 0, 0, 'Domaci', '2020-01-29 12:09:24', 'Tojo', 0, 'uploads/80d1a09e7525d7735ae22589bef5dda5fd73878e.jpeg'),
(46, 0, 0, 'Domaci', '2020-01-29 12:09:30', 'Tojo', 0, 'uploads/5d8413e04d670ac4f2cab3a854d370026a5a8d69.jpeg'),
(47, 0, 0, 'Domaci', '2020-01-29 12:09:36', 'Tojo', 0, 'uploads/ff8d84e5130efb92ce3141a9b628fddbec70d92d.jpeg'),
(48, 0, 0, 'Domaci', '2020-01-29 12:09:43', 'Tojo', 0, 'uploads/6876024bc5c00e4c9f090df46bb8d8bd9f9006b7.jpeg'),
(49, 0, 0, 'Domaci', '2020-01-29 12:09:49', 'Tojo', 0, 'uploads/411e7a946054e4b60d5a1aed2dfe67fb5a477fbd.jpeg'),
(50, 0, 0, 'Domaci', '2020-01-29 12:09:56', 'Tojo', 0, 'uploads/e5e5263f0eff7d1af435c4c9709c0d8181ece0ae.jpeg'),
(51, 0, 0, 'Domaci', '2020-01-29 12:10:04', 'Tojo', 0, 'uploads/9d3094bc89654757cf9d70a8de65c1335c3621c1.jpeg'),
(52, 0, 0, 'Domaci', '2020-01-29 12:10:12', 'Tojo', 0, 'uploads/ee6117e3f69d8c7dc868b6c48ec905504769d0f9.jpeg'),
(53, 0, 0, 'Animals', '2020-01-29 12:20:33', 'Tojo', 0, 'uploads/8cb0819101546e2e50f1aca2cad2ac16abe70163.jpeg'),
(54, 0, 0, 'Animals', '2020-01-29 12:20:39', 'Tojo', 0, 'uploads/5462de3775e23d4e93361225bebc0c8c7e195245.png'),
(55, 0, 0, 'Animals', '2020-01-29 12:20:49', 'Tojo', 0, 'uploads/25f630bcef5dcd9983aea89dcd623435d7198368.png'),
(56, 0, 0, 'Animals', '2020-01-29 12:20:55', 'Tojo', 0, 'uploads/fb488ae6d2f5122ff80b7a1b27998b5971c0694f.jpeg'),
(57, 0, 0, 'Animals', '2020-01-29 12:21:08', 'Tojo', 0, 'uploads/35bb430a60f564d7ab1997562ca65f3c9a0608f1.jpeg'),
(58, 0, 0, 'Animals', '2020-01-29 12:21:19', 'Tojo', 0, 'uploads/dfdb8cb9e75e97f08c9ca7ccaa7c6e1194b700b7.jpeg'),
(59, 0, 0, 'Animals', '2020-01-29 12:21:25', 'Tojo', 0, 'uploads/e2116eb5e0b6ae689b52b66dbb1f9a25cceb1915.jpeg'),
(60, 0, 0, 'Animals', '2020-01-29 12:21:33', 'Tojo', 0, 'uploads/f74ec5175b78dc02e9dc55ad248d50b5649d8f9f.jpeg'),
(61, 0, 0, 'Animals', '2020-01-29 12:21:43', 'Tojo', 0, 'uploads/28fb88b5274651c6227d323fb156074ac8d5a5ba.jpeg'),
(62, 0, 0, 'Animals', '2020-01-29 12:21:50', 'Tojo', 0, 'uploads/3d4d26d5d7a82482e0c3817cf729de75166a434e.jpeg'),
(63, 0, 0, 'Elon Musk', '2020-01-29 12:30:58', 'Tojo', 0, 'uploads/0d324814f7f6788a21f333a3866a95dbec12537b.jpeg'),
(64, 0, 0, 'Elon Musk', '2020-01-29 12:31:04', 'Tojo', 0, 'uploads/600f5a4431c00a2e3996efae89fc813cd204218b.png'),
(65, 0, 0, 'Elon Musk', '2020-01-29 12:31:10', 'Tojo', 0, 'uploads/67ff197d7b2fae33c7151067c0a342e53f2be0c9.jpeg'),
(66, 0, 0, 'Elon Musk', '2020-01-29 12:31:18', 'Tojo', 0, 'uploads/ebdd26eca060012a92237276511412786d2a6121.jpeg'),
(67, 0, 0, 'Elon Musk', '2020-01-29 12:31:25', 'Tojo', 0, 'uploads/1831069993ec058a45a0b2a1ba284f12db97ce4d.jpeg'),
(68, 0, 0, 'Elon Musk', '2020-01-29 12:31:31', 'Tojo', 0, 'uploads/5dc69517b84a7204ac5004f30f5033206a9ab4a1.png'),
(69, 0, 0, 'Elon Musk', '2020-01-29 12:31:37', 'Tojo', 0, 'uploads/2cc78d80cf1ee46c6101df8c1ca9628ce02aa891.jpeg'),
(70, 0, 0, 'Elon Musk', '2020-01-29 12:31:45', 'Tojo', 0, 'uploads/1cdb60efc5e6badcb40b86a3c933eaeefbd34cda.jpeg'),
(71, 0, 0, 'Elon Musk', '2020-01-29 12:31:53', 'Tojo', 0, 'uploads/00cb8ba7a835bbe7b42c2bac4cd15b6e5e299c91.jpeg'),
(72, 0, 0, 'Elon Musk', '2020-01-29 12:32:02', 'Tojo', 0, 'uploads/f15c97da4818f77623723f1aa2711770063711ae.png'),
(73, 0, 0, 'Cartoon', '2020-01-29 12:44:24', 'Tojo', 0, 'uploads/32f4bfeb763e68b0e6663aeb23be601ef15cde0e.jpeg'),
(74, 0, 0, 'Cartoon', '2020-01-29 12:44:33', 'Tojo', 0, 'uploads/63b37079a16e045982125668b691b2109654e275.jpeg'),
(75, 0, 0, 'Cartoon', '2020-01-29 12:44:40', 'Tojo', 0, 'uploads/78e1dab18f4f1bce29d9d5e07ff32f5d7e20dbe9.jpeg'),
(76, 0, 0, 'Cartoon', '2020-01-29 12:44:50', 'Tojo', 0, 'uploads/4113b661d9a761dd44de20ab0ea275a1d6867f1b.jpeg'),
(77, 0, 0, 'Cartoon', '2020-01-29 12:44:58', 'Tojo', 0, 'uploads/9a68b566206f3dda78c1ad0fd70acfda048ee3b4.png'),
(78, 0, 0, 'Cartoon', '2020-01-29 12:45:04', 'Tojo', 0, 'uploads/ad183247ed565653e4a209989d2db3d43c978c4b.png'),
(79, 0, 0, 'Cartoon', '2020-01-29 12:45:11', 'Tojo', 0, 'uploads/7ac430a6d8d7cc6a9546dc8c562f93faffb1b72f.jpeg'),
(80, 0, 0, 'Cartoon', '2020-01-29 12:45:19', 'Tojo', 0, 'uploads/47aa61e29b85f6ffdd7a4f4276561412e2335954.jpeg'),
(81, 0, 0, 'Cartoon', '2020-01-29 12:45:31', 'Tojo', 0, 'uploads/157c6f4bac25c4347fe5dcc79728700626dbb77c.jpeg'),
(82, 0, 0, 'Cartoon', '2020-01-29 12:45:41', 'Tojo', 0, 'uploads/40567c780326009f556373faa2c44dee47643f61.jpeg'),
(83, 0, 0, 'Deep-fried', '2020-01-29 12:49:20', 'Tojo', 0, 'uploads/fc71f9375bfae19dc54b04a90b896b82866af0cd.jpeg'),
(84, 0, 0, 'Deep-fried', '2020-01-29 12:49:28', 'Tojo', 0, 'uploads/91d474e3c5492439774aa26307bfd2dbbfcbd8be.jpeg'),
(85, 0, 0, 'Deep-fried', '2020-01-29 12:49:36', 'Tojo', 0, 'uploads/14ab2781b34df462f87e1f5f3fe956618db0bcd4.jpeg'),
(86, 0, 0, 'Deep-fried', '2020-01-29 12:49:42', 'Tojo', 0, 'uploads/e44b245a41b43e5a339a3b044f22b654fd4839f5.jpeg'),
(87, 0, 0, 'Deep-fried', '2020-01-29 12:49:50', 'Tojo', 0, 'uploads/39960a2cb57b8b64bf9105e688857777b99b5aea.jpeg'),
(88, 0, 0, 'Deep-fried', '2020-01-29 12:50:00', 'Tojo', 0, 'uploads/a98c0ff45a1bc7c7b952e7e91e223db75d5719bb.jpeg'),
(89, 0, 0, 'Deep-fried', '2020-01-29 12:50:07', 'Tojo', 0, 'uploads/5548eca96214d2572e89eb318c74e2f7d25ff3c0.jpeg'),
(90, 0, 0, 'Slav', '2020-01-29 12:54:52', 'Tojo', 0, 'uploads/544332591c6c420122377a38917e61ec75d0268f.jpeg'),
(91, 0, 0, 'Slav', '2020-01-29 12:54:59', 'Tojo', 0, 'uploads/0e03b2e39911254541a9bd05484d6e954f0c2383.jpeg'),
(92, 0, 0, 'Slav', '2020-01-29 12:55:05', 'Tojo', 0, 'uploads/3c3b7b6ffb47454ba0e2874257bb1d894953164e.jpeg'),
(93, 0, 0, 'Slav', '2020-01-29 12:55:12', 'Tojo', 0, 'uploads/e7ce67af4490cdb114e1629c6ea78c27227a0e08.jpeg'),
(94, 0, 0, 'Slav', '2020-01-29 12:55:25', 'Tojo', 0, 'uploads/09a7bb3c427c0bf9e49b542906c3780cc6433f99.png'),
(95, 0, 0, 'Slav', '2020-01-29 12:55:31', 'Tojo', 0, 'uploads/a4d5365f5a32fc9342eda14582bab67e91e5dd4a.jpeg'),
(96, 0, 0, 'Slav', '2020-01-29 12:55:38', 'Tojo', 0, 'uploads/7c84403e88b4f3a2efb72b6d644283ec80106b57.jpeg'),
(97, 0, 0, 'Dark humor', '2020-01-29 12:59:53', 'Tojo', 0, 'uploads/113a849250b295f7320748c9705c27ebd19ab146.jpeg'),
(98, 0, 0, 'Dark humor', '2020-01-29 12:59:57', 'Tojo', 0, 'uploads/5e0a7729a4eba6d3e5e6888561a48837f860b1d1.jpeg'),
(99, 0, 0, 'Dark humor', '2020-01-29 13:00:02', 'Tojo', 0, 'uploads/ee2ea1d6c2b7c6e9fb57d93f99a9ec88076e659c.jpeg'),
(100, 0, 0, 'Dark humor', '2020-01-29 13:00:06', 'Tojo', 0, 'uploads/05c0c9cd7214f5f6a57e9e58a8126908fc084c7a.jpeg'),
(101, 0, 0, 'Dark humor', '2020-01-29 13:00:12', 'Tojo', 0, 'uploads/8ead3fa25eaea57aff38c466ceac49e5dc6663c8.jpeg'),
(102, 0, 0, 'Dark humor', '2020-01-29 13:00:16', 'Tojo', 0, 'uploads/609b45a37837c04bfffad194113bae77a7fe76fa.jpeg'),
(103, 0, 0, 'Dark humor', '2020-01-29 13:00:20', 'Tojo', 0, 'uploads/f76b4bfb16d3781dba60b25cb813972e9fb7112f.jpeg'),
(104, 0, 0, 'Dark humor', '2020-01-29 13:00:25', 'Tojo', 0, 'uploads/7901c6b2374a774439071c90365321371b2aec2e.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_mail` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `mail_activation` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_mail`, `user_name`, `user_pass`, `mail_activation`) VALUES
('dominik.glavas@hotmail.com', 'Kismo', 'de15d8b8991d49d237e68cfc2f5ca571', '0'),
('m8ijazbarac@gmail.com', 'Tojo', 'b44a5b2e0128361498ba83c9486391cd', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `memes`
--
ALTER TABLE `memes`
  ADD PRIMARY KEY (`meme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `memes`
--
ALTER TABLE `memes`
  MODIFY `meme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
