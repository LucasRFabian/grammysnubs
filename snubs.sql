-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2025 at 01:45 PM
-- Server version: 10.6.20-MariaDB-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucasran_grammysnubs`
--

-- --------------------------------------------------------

--
-- Table structure for table `snubs`
--

CREATE TABLE `snubs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `notes` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snubs`
--

INSERT INTO `snubs` (`id`, `title`, `type`, `artist`, `genre`, `notes`) VALUES
(1, 'From Zero', 'Album', 'Linkin Park', 'Rock', 'This album presents a formidable comeback and return to form for Linkin Park, one of the most influential rock bands of the 2000s, after the tragic death of their lead vocalist, Chester Benington.'),
(3, 'Soft Spine', 'Song', 'Spiritbox', 'Metal', 'Soft Spine presents a continuation of the innovation and creativity that Spiritbox continues to showcase. The experimental crushing rhythms and Courtney LaPlante\'s virtuosic vocals make Soft Spine an important piece of music worthy of Grammys consideration.'),
(4, 'Zanmu', 'Album', 'Ado', 'Pop', 'Ado is arguably one of the most technically talented vocalists on the planet, and her chops are on full display in Zanmu. Her unique, insanely dynamic vocals are put against musically sophisticated instrumentals to create an otherworldly listening experience.'),
(5, 'Night Terror', 'Song', 'Dream Theater', 'Metal', 'Dream Theater previously won a Grammy for their song, \"The Alien\". Since then, the band has regained its original drummer, Mike Portnoy, and is set to release a new studio album next year. Night Terror represents a return to form for the band and showcases the band\'s renewed dedication to complex structures and technical prowess.'),
(6, 'V.A.N.', 'Song', 'Bad Omens/Poppy', 'Metal', 'This single acts as an indication of Poppy\'s successful transition from pop to metal. Her rhythmic spoken word sections act in stark contrast to the guttural scream technique she employs in the song\'s more intense moments.'),
(7, 'S!CK', 'Song', 'The Warning', 'Rock', 'S!CK is arguably the boldest single from the Mexican band, The Warning. Its instrumentation is not overly technical, yet it remains a great tribute to the rock bands of the 2000s.'),
(8, 'POST HUMAN: NeX GEn', 'Album', 'Bring Me the Horizon', 'Metal', 'Bring Me the Horizon is one the most consistently innovative acts in metal music today, and their new concept allbum, POST HUMAN: NeX GEn, represents the pinnacle of that tradition. The album has an overarching narrative that continues the story of its predecessor, POST HUMAN: SURVIVAL HORROR. The narrative may be the same, but the music in NeX Gen is far more ambitious.'),
(9, 'The Line', 'Song', 'Twenty One Pilots', 'Pop', 'If nothing else, the Line should certainly be a contender for the Best Pop Performance category, as a live performance of it on December 12 showcased Tyler Joseph\'s outstanding vocal range and abilities.'),
(10, 'A Work of Art', 'Song', 'Ice Nine Kills', 'Metal', 'Written for the film, Terrifier 3, \"A Work of Art\" sees the band Ice Nine Kills make the transition from writing clever songs about horror films to writing clever songs for horror films. The song successfully matches and elevates the horror in the film. (Be warned. The music video for this song is incredibly disturbing.)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `snubs`
--
ALTER TABLE `snubs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `snubs`
--
ALTER TABLE `snubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
