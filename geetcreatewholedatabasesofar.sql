-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 05:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geetcreatewholedatabasesofar`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg'),
(8, 'Different World', 6, 1, 'assets/images/artwork/2.jpg'),
(9, 'Chittipotti Kathalu', 8, 11, 'assets/images/artwork/chittiPottiKathaluImg.jpg'),
(10, 'CBS News', 9, 12, 'assets/images/artwork/CBS_News_RoundupImg.JPG'),
(11, 'Love of Cinema', 10, 13, 'assets/images/artwork/loveOfCinemaImg.JPG'),
(12, 'Twig', 11, 14, 'assets/images/artwork/twigImg.jpg'),
(13, 'Adventures of Sherlock Holmes', 12, 15, 'assets/images/artwork/adventuresholmes.jpg'),
(14, 'Siddhartha', 13, 15, 'assets/images/artwork/siddhartha.jpg'),
(15, 'Huckleberry Finn', 14, 15, 'assets/images/artwork/huckfinn.jpg'),
(16, 'The Secret Seven', 15, 15, 'assets/images/artwork/secretgarden.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee'),
(6, 'Alan Walker'),
(7, 'Daniel Levi'),
(8, 'A.N.Sharma'),
(9, 'CBS News_RoundUp'),
(10, 'Himanshu Joglekar'),
(11, 'Unknown'),
(12, 'Arthur Conan Doyle'),
(13, 'Hermann Hesse'),
(14, 'Mark Twain'),
(15, 'Enid Blyton');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Children Stories'),
(12, 'News'),
(13, 'Movie'),
(14, 'Tech Info'),
(15, 'audiobook');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(2, 'fav', 'sri@govvala', '2024-04-21 00:00:00'),
(4, 'likes', 'sri@govvala', '2024-04-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(3, 7, 2, 0),
(4, 24, 4, 0),
(5, 32, 2, 1),
(6, 1, 2, 2),
(7, 33, 2, 3),
(8, 70, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 18),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 9),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 10),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 14),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 8),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 29),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 12),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 24),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 27),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 16),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 21),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 21),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 3),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 8),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 8),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 11),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 8),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 2),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 5),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 3),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 10),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 10),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 10),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 3),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 4),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 18),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 14),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 12),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 6),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 20),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 10),
(32, 'Faded', 6, 8, 1, '3:32', 'assets/music/Faded.mp3', 1, 2),
(33, 'Episode 1', 8, 9, 11, '15:59', 'assets/podcasts/chittiPottiKathalu_01.m4a', 1, 2),
(34, 'Episode 2', 8, 9, 11, '16:00', 'assets/podcasts/chittiPottiKathalu_02.m4a', 2, 2),
(35, 'Episode 3', 8, 9, 11, '16:00', 'assets/podcasts/chittiPottiKathalu_03.m4a', 3, 0),
(36, 'Episode 4', 8, 9, 11, '16:00', 'assets/podcasts/chittiPottiKathalu_04.m4a', 4, 0),
(37, 'Episode 5', 8, 9, 11, '16:00', 'assets/podcasts/chittiPottiKathalu_05.m4a', 5, 0),
(38, 'Episode 1', 9, 10, 12, '16:44', 'assets/podcasts/CBS_News_Roundup_01.mp3', 1, 2),
(39, 'Episode 2', 9, 10, 12, '16:46', 'assets/podcasts/CBS_News_Roundup_02.mp3', 2, 1),
(40, 'Episode 3', 9, 10, 12, '16:47', 'assets/podcasts/CBS_News_Roundup_03.mp3', 3, 0),
(41, 'Episode 4', 9, 10, 12, '16:48', 'assets/podcasts/CBS_News_Roundup_04.mp3', 4, 0),
(42, 'Episode 1', 10, 11, 13, '13:26', 'assets/podcasts/love_of_cinema_1_01.mp3', 1, 1),
(43, 'Episode 2', 10, 11, 13, '13:28', 'assets/podcasts/love_of_cinema_1_02.mp3', 2, 0),
(44, 'Episode 3', 10, 11, 13, '13:29', 'assets/podcasts/love_of_cinema_1_03.mp3', 3, 0),
(45, 'Episode 4', 10, 11, 13, '13:30', 'assets/podcasts/love_of_cinema_1_04.mp3', 4, 0),
(46, 'Episode 5', 10, 11, 13, '13:23', 'assets/podcasts/love_of_cinema_1_05.mp3', 5, 0),
(47, 'Episode 6', 10, 11, 13, '13:31', 'assets/podcasts/love_of_cinema_1_06.mp3', 6, 0),
(48, 'Episode 7', 10, 11, 13, '13:31', 'assets/podcasts/love_of_cinema_1_07.mp3', 7, 0),
(49, 'Episode 8', 10, 11, 13, '13:32', 'assets/podcasts/love_of_cinema_1_08.mp3', 8, 0),
(50, 'Episode 1', 11, 12, 14, '15:30', 'assets/podcasts/twig01.mp3', 1, 0),
(51, 'Episode 2', 11, 12, 14, '14:33', 'assets/podcasts/twig02.mp3', 2, 1),
(52, 'Episode 3', 11, 12, 14, '8:13', 'assets/podcasts/twig03.mp3', 3, 1),
(53, 'Episode 1', 12, 13, 15, '16:44', 'assets/audiobook/adventuresholmes_01_doyle_64kb.mp3', 1, 0),
(54, 'Episode 2', 12, 13, 15, '16:44', 'assets/audiobook/adventuresholmes_02_doyle_64kb.mp3', 2, 0),
(55, 'Episode 3', 12, 13, 15, '16:44', 'assets/audiobook/adventuresholmes_03_doyle_64kb.mp3', 3, 0),
(56, 'Episode 4', 12, 13, 15, '16:44', 'assets/audiobook/adventuresholmes_04_doyle_64kb.mp3', 4, 0),
(57, 'Episode 5', 12, 13, 15, '16:44', 'assets/audiobook/adventuresholmes_05_doyle_64kb.mp3', 5, 0),
(58, 'Episode 6', 12, 13, 15, '16:44', 'assets/audiobook/adventuresholmes_06_doyle_64kb.mp3', 6, 1),
(59, 'Episode 1', 13, 14, 15, '16:44', 'assets/audiobook/siddhartha_01_hesse_64kb.mp3', 1, 1),
(60, 'Episode 2', 13, 14, 15, '16:44', 'assets/audiobook/siddhartha_02_hesse_64kb.mp3', 2, 0),
(61, 'Episode 3', 13, 14, 15, '16:44', 'assets/audiobook/siddhartha_03_hesse_64kb.mp3', 3, 0),
(62, 'Episode 4', 13, 14, 15, '16:44', 'assets/audiobook/siddhartha_04_hesse_64kb.mp3', 4, 0),
(63, 'Episode 5', 13, 14, 15, '16:44', 'assets/audiobook/siddhartha_05_hesse_64kb.mp3', 5, 0),
(64, 'Episode 6', 13, 14, 15, '16:44', 'assets/audiobook/siddhartha_06_hesse_64kb.mp3', 6, 0),
(65, 'Episode 1', 14, 15, 15, '16:44', 'assets/audiobook/huckfinn_01_twain_apc_64kb.mp3', 1, 0),
(66, 'Episode 2', 14, 15, 15, '16:44', 'assets/audiobook/huckfinn_02_twain_apc_64kb.mp3', 2, 0),
(67, 'Episode 3', 14, 15, 15, '16:44', 'assets/audiobook/huckfinn_03_twain_apc_64kb.mp3', 3, 0),
(68, 'Episode 4', 14, 15, 15, '16:44', 'assets/audiobook/huckfinn_04_twain_apc_64kb.mp3', 4, 0),
(69, 'Episode 5', 14, 15, 15, '16:44', 'assets/audiobook/huckfinn_05_twain_apc_64kb.mp3', 5, 0),
(70, 'Episode 1', 15, 16, 15, '16:44', 'assets/audiobook/secretgarden_01_burnett_64kb.mp3', 1, 2),
(71, 'Episode 2', 15, 16, 15, '16:44', 'assets/audiobook/secretgarden_02_burnett_64kb.mp3', 2, 0),
(72, 'Episode 3', 15, 16, 15, '16:44', 'assets/audiobook/secretgarden_03_burnett_64kb.mp3', 3, 0),
(73, 'Episode 4', 15, 16, 15, '16:44', 'assets/audiobook/secretgarden_04_burnett_64kb.mp3', 4, 0),
(74, 'Episode 5', 15, 16, 15, '16:44', 'assets/audiobook/secretgarden_05_burnett_64kb.mp3', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'sri@govvala', 'Sree', 'Govvala', 'Sree@gmail.com', '493bc4998a77e9a806b0d5d16e9abb70', '2024-04-21 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
