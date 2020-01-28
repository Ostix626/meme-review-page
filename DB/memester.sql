-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 02:51 AM
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
(27, 0, 0, 'Dark humor', '2020-01-28 02:06:14', 'Tojo', 0, 'uploads/9f96c0c11afb72a53048d4d982d4f2245847afec.jpeg');

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
  MODIFY `meme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
