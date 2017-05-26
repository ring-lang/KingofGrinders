-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2017 at 06:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingofgrinders`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text,
  `pwhash` longtext,
  `salt` longtext,
  `sessionid` longtext,
  `email` text,
  `fgtPwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwhash`, `salt`, `sessionid`, `email`, `fgtPwd`) VALUES
(41, 'mailmeharry2008', 'e3bb627acbda17d0362ab4be6fad9df9788026d2f8ffbe7984757a2adca707cc', 'e11dd8b3f65fb1d355f7fcf17e6d4df14e94164 962846524e1 1 3ad762ede9', '87d06cc28472bab0acff55b277a42124ec5f7 e52bc83daa2a5e2 6c6c8448f9', 'mailmeharry2008@yahoo.com', 'ten'),
(42, 'testaccount', '5430ab262d0a2417fbd24be17d584fd19fc9fff42f7f1475083858f95c9829ee', '2e3037206d6acf54ee15309 ed23d43fd1686d21eb47c6d6914adcb4c5b77b29', 'ebee2acc2d35e9a 95cc3df3d96341150 c11f78c1d4f 8d66a1cf88657bd437', 'mailmeharry2008@test.com', 'plan'),
(43, 'anothertest', '868441b7f8aba841e94fcc58b10b5973cb4934309be6ecf8e1ff99cebd4ceb00', '42853 da8f3713f257283132b2c7792c61e4258fa75797ab5f123f70c5892 d4', '3724eaf93f43e37d3ca72256a552e1b 133 5ab3f4452de7ad5fecb 4 df9e29', 'anothertest@anothertest.com', 'tomorrow'),
(46, 'forgot', 'bf28fae0abb4bbbadfc322203cacdea232cf8485952e18eacd0bc40f7183c762', '8eeb3 574999b5e7b5e8efe7d830db1 70976 7f3095ca9ed453a 6978732f22', '2e3baaeadabec33dffc 29cb28ce7b91531 4fe4d94bcb8d3c245 fedbd6ec6e', 'forgot@forgot.com', 'sakjfdaldfkj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
