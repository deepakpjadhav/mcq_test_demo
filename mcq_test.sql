-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:53 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcq_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `user_type` enum('admin','guest') NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `record_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `name`, `user_name`, `password`, `user_type`, `status`, `record_date`, `update_date`) VALUES
(1, 'Mahesh Pawar', 'admin', 'a29c57c6894dee6e8251510d58c07078ee3f49bf', 'admin', 'active', '2020-12-26 11:36:11', '0000-00-00 00:00:00'),
(2, 'Deepak Jadhav', 'deepak_j', '25c2c9afdd83b8d34234aa2881cc341c09689aaa', 'guest', 'active', '2020-12-26 11:36:11', '0000-00-00 00:00:00'),
(3, 'Raj Patil', 'guest1', '25c2c9afdd83b8d34234aa2881cc341c09689aaa', 'guest', 'active', '2020-12-26 11:36:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questions_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `difficulty` varchar(50) NOT NULL,
  `question` varchar(120) NOT NULL,
  `options` varchar(120) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `record_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questions_id`, `category`, `type`, `difficulty`, `question`, `options`, `answer`, `record_date`, `update_date`) VALUES
(1, 'Entertainment: Music', 'multiple', 'hard', 'Who won the 1989 Drum Corps International championships?', 'Santa Clara Vanguard|Blue Devils|The Academy|The Bluecoats', 'Santa Clara Vanguard', '2020-12-27 00:21:19', NULL),
(2, 'Science & Nature', 'multiple', 'medium', 'About how old is Earth?', '4.5 Billion Years|3.5 Billion Years|2.5 Billion Years|5.5 Billion Years', '4.5 Billion Years', '2020-12-27 00:21:19', NULL),
(3, 'Entertainment: Japanese Anime & Manga', 'multiple', 'hard', 'In &quot;One Piece&quot;, who is the girl who overcame her enslaved past and became an agent of an army to fight the cor', 'Koala|Boa Hancock|Nico Robin|Emporio Ivankov ', 'Koala', '2020-12-27 00:21:19', NULL),
(4, 'Entertainment: Film', 'multiple', 'medium', 'Mark Wahlberg played the titular character of which 2008 video-game adaptation?', 'Max Payne|Alan Wake|Hitman|God Of War', 'Max Payne', '2020-12-27 00:21:19', NULL),
(5, 'General Knowledge', 'multiple', 'medium', 'What is the star sign of someone born on Valentines day?', 'Aquarius|Pisces|Capricorn|Scorpio', 'Aquarius', '2020-12-27 00:21:19', NULL),
(6, 'Science & Nature', 'multiple', 'hard', 'How many protons are in an oxygen atom?', 'Eight|Four|Two|Six', 'Eight', '2020-12-27 00:21:19', NULL),
(7, 'Sports', 'multiple', 'easy', 'The Los Angeles Dodgers were originally from what U.S. city?', 'Brooklyn|Las Vegas|Boston|Seattle', 'Brooklyn', '2020-12-27 00:21:19', NULL),
(8, 'Entertainment: Television', 'multiple', 'medium', 'The first half-hour CGI cartoon, ReBoot, aired on which year?', '1994|1993|1998|1999', '1994', '2020-12-27 00:21:19', NULL),
(9, 'History', 'multiple', 'medium', 'During which American Civil War campaign did Union troops dig a tunnel beneath Confederate troops to detonate explosives', 'Siege of Petersburg|Siege of Vicksburg|Antietam Campaign|Gettysburg Campagin', 'Siege of Petersburg', '2020-12-27 00:21:19', NULL),
(10, 'Geography', 'multiple', 'medium', 'Which two modern-day countries used to be known as the region of Rhodesia between the 1890s and 1980?', 'Zambia &amp; Zimbabwe|Togo &amp; Benin|Lesotho &amp; Swaziland|Rwanda &amp; Burundi', 'Zambia &amp; Zimbabwe', '2020-12-27 00:21:19', NULL),
(11, 'Entertainment: Film', 'multiple', 'easy', 'What breed of dog was Marley in the film &quot;Marley &amp; Me&quot; (2008)?', 'Labrador Retriever|Golden Retriever|Dalmatian|Shiba Inu', 'Labrador Retriever', '2020-12-27 00:22:03', NULL),
(12, 'Geography', 'multiple', 'medium', 'What is the only country in the world with a flag that doesn&#039;t have four right angles?', 'Nepal|Panama|Angola|Egypt', 'Nepal', '2020-12-27 00:22:03', NULL),
(13, 'Entertainment: Video Games', 'multiple', 'hard', 'The map featured in Arma 3 named &quot;Altis&quot; is based off of what Greek island?', 'Lemnos|Ithaca|Naxos|Anafi', 'Lemnos', '2020-12-27 00:22:03', NULL),
(14, 'Entertainment: Japanese Anime & Manga', 'multiple', 'medium', 'In the anime &quot;Mr. Osomatsu&quot;, how many brothers does Osomatsu-san have?', '5|6|7|4', '5', '2020-12-27 00:22:03', NULL),
(15, 'Entertainment: Books', 'multiple', 'medium', 'Who wrote the children&#039;s story &quot;The Little Match Girl&quot;?', 'Hans Christian Andersen|Charles Dickens|Lewis Carroll|Oscar Wilde', 'Hans Christian Andersen', '2020-12-27 00:22:03', NULL),
(16, 'Science: Computers', 'multiple', 'medium', 'Nvidia&#039;s headquarters are based in which Silicon Valley city?', 'Santa Clara|Palo Alto|Cupertino|Mountain View', 'Santa Clara', '2020-12-27 00:22:03', NULL),
(17, 'Entertainment: Video Games', 'multiple', 'easy', 'Which of these is NOT a playable character in the 2016 video game Overwatch?', 'Invoker|Mercy|Winston|Zenyatta', 'Invoker', '2020-12-27 00:22:03', NULL),
(18, 'Entertainment: Music', 'multiple', 'medium', 'Johnny Cash did a cover of this song written by lead singer of Nine Inch Nails, Trent Reznor.', 'Hurt|Closer|A Warm Place|Big Man with a Gun', 'Hurt', '2020-12-27 00:22:03', NULL),
(19, 'Animals', 'multiple', 'hard', 'Which of these animals is NOT a lizard?', 'Tuatara|Komodo Dragon|Gila Monster|Green Iguana', 'Tuatara', '2020-12-27 00:22:03', NULL),
(20, 'Sports', 'multiple', 'hard', 'What team did England beat in the semi-final stage to win in the 1966 World Cup final?', 'Portugal|West Germany|Soviet Union|Brazil', 'Portugal', '2020-12-27 00:22:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `outof` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL,
  `wrong_answers` int(11) NOT NULL,
  `record_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `login_id`, `total_marks`, `outof`, `correct_answers`, `wrong_answers`, `record_date`, `update_date`) VALUES
(1, 2, 4, 10, 4, 6, '2020-12-26 18:51:45', NULL),
(2, 3, 2, 10, 2, 8, '2020-12-26 18:52:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_detail`
--

CREATE TABLE `result_detail` (
  `result_detail_id` int(11) NOT NULL,
  `result_id_fk` int(11) NOT NULL COMMENT 'result_id from result table',
  `questions_id_fk` int(11) NOT NULL,
  `selected_answer` varchar(50) NOT NULL,
  `correct_answer` varchar(10) NOT NULL COMMENT '1-Currenct, 0-Wrong',
  `record_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_detail`
--

INSERT INTO `result_detail` (`result_detail_id`, `result_id_fk`, `questions_id_fk`, `selected_answer`, `correct_answer`, `record_date`, `update_date`) VALUES
(1, 1, 10, 'Lesotho & Swaziland', '0', '2020-12-26 18:51:45', NULL),
(2, 1, 9, 'Antietam Campaign', '0', '2020-12-26 18:51:45', NULL),
(3, 1, 8, '1998', '0', '2020-12-26 18:51:45', NULL),
(4, 1, 7, 'Brooklyn', '1', '2020-12-26 18:51:45', NULL),
(5, 1, 6, 'Eight', '1', '2020-12-26 18:51:45', NULL),
(6, 1, 5, 'Aquarius', '1', '2020-12-26 18:51:45', NULL),
(7, 1, 4, 'Hitman', '0', '2020-12-26 18:51:45', NULL),
(8, 1, 3, 'Emporio Ivankov ', '0', '2020-12-26 18:51:45', NULL),
(9, 1, 2, '3.5 Billion Years', '0', '2020-12-26 18:51:45', NULL),
(10, 1, 1, 'Santa Clara Vanguard', '1', '2020-12-26 18:51:45', NULL),
(11, 2, 20, 'West Germany', '0', '2020-12-26 18:52:24', NULL),
(12, 2, 19, 'Komodo Dragon', '0', '2020-12-26 18:52:24', NULL),
(13, 2, 18, 'A Warm Place', '0', '2020-12-26 18:52:24', NULL),
(14, 2, 17, 'Winston', '0', '2020-12-26 18:52:24', NULL),
(15, 2, 16, 'Cupertino', '0', '2020-12-26 18:52:24', NULL),
(16, 2, 15, 'Lewis Carroll', '0', '2020-12-26 18:52:24', NULL),
(17, 2, 14, '5', '1', '2020-12-26 18:52:24', NULL),
(18, 2, 13, 'Anafi', '0', '2020-12-26 18:52:24', NULL),
(19, 2, 12, 'Panama', '0', '2020-12-26 18:52:24', NULL),
(20, 2, 11, 'Labrador Retriever', '1', '2020-12-26 18:52:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `user_name_2` (`user_name`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questions_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `result_detail`
--
ALTER TABLE `result_detail`
  ADD PRIMARY KEY (`result_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `result_detail`
--
ALTER TABLE `result_detail`
  MODIFY `result_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
