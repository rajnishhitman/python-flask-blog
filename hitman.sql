-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 04:29 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hitman`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first_post', 'first@gmail.com', '1234567890', 'thi is my first post', '2020-08-13 23:53:04'),
(3, 'my name', 'myemail@gmail.com', '1234567890', 'this is test', '2020-08-14 00:32:36'),
(4, 'klds', 'dkfls@jkacd.com', '1234567890', 'lajfdl', '2020-08-15 01:11:06'),
(5, 'Rajnish kumar', 'dipu@gmail.com', '1234567890', 'hello', '2020-08-24 20:03:11'),
(6, 'Rajnish kumar', 'myemail@gmail.com', '1234567890', 'hello this is a check message', '2020-08-24 20:14:01'),
(7, 'Rajnish kumar', 'rajnishhitman@gmail.com', '8825250244', 'I like your website', '2020-08-24 20:33:15'),
(8, 'Rajnish kumar', 'rajnishhitman@gmail.com', '8825250244', 'you created a great website', '2020-08-24 20:35:46'),
(9, 'Rajnish kumar', 'dipu@gmail.com', '8825250244', 'check message', '2020-08-24 20:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(2, 'KEDARNATH', 'Temple of MAHADEV', 'second-post', 'Kēdārnāth Mandir (Kedarnath Temple) is a Hindu temple (shrine) dedicated to Lord Shiva (Mahadeva). Located on the Garhwal Himalayan range near the Mandakini river, Kedarnath is located in the state of Uttarakhand, India. Due to extreme weather conditions, the temple is open to the general public only between the months of April (Akshaya Tritiya) and November (Kartik Purnima, the autumn full moon)', 'post-temple3.jpg', '2020-08-29 23:51:30'),
(3, 'PUNE', 'The city of Chatrapati Shivaji Maharaj', 'third-post', 'Pune, also known as Poona (Marathi: [puɳe] (About this soundlisten) English: /ˈpuːnə/;[17][18][19][20][21]), is the second largest city in the Indian State of Maharashtra, after Mumbai, and the eighth most populous city in India, with an estimated population of 7.4 million as of 2020.[22] It has been ranked as \"the most livable city in India\" several times.[23]', 'post-pune.jpg', '2020-08-30 19:15:43'),
(4, 'BANGALORE', 'The silicon valley of India', 'fourth-post', 'Bangalore /bæŋɡəˈlɔːr/, officially known as Bengaluru[11] ([ˈbeŋɡəɭuːɾu] (About this soundlisten)), is the capital of the Indian state of Karnataka. It has a population of more than 8 million and a metropolitan population of around 11 million, making it the third most populous city and fifth most populous urban agglomeration in India.[12] Located in southern India on the Deccan Plateau, at a height of over 900 m (3,000 ft) above sea level, Bangalore is known for its pleasant climate throughout the year. Its elevation is the highest among the major cities of India.', 'post-bangalore.jpg', '2020-09-02 11:44:50'),
(5, 'KOLKATA', 'The city of joy', 'fifth-post', 'KOLKATA (/kɒlˈkɑːtə/[15] or /kɒlˈkʌtə/,[16] Bengali: [ˈkolˌkata] (About thljis soundlisten), also rendered Calcutta /kælˈkʌtə/,[16] the official name until 2001) is the capital of the Indian state of West Bengal, located on the eastern bank of the Hooghly River, approximately 80 kilometres (50 mi) west of the border with Bangladesh. It is the prime business, commercial and financial hub of eastern India and the main port of communication for the North-East Indian states, It is one of the most important metro cities of India', 'post-kolkata.jpg', '2020-09-03 19:59:29'),
(6, 'DELHI', 'The Heart of India', 'sixth-post', 'Delhi (English: /ˈdɛli/; Hindi: [ˈdɪlːi] Dillī; Punjabi: [ˈdɪlːi] Dillī; Urdu: [ˈdeːɦli] Dēhlī), officially known as the National Capital Territory of Delhi (NCT), is a city and a union territory of India containing New Delhi, the capital of India.[14][15] It is bordered by the state of Haryana on three sides and by Uttar Pradesh to the east. The NCT covers an area of 1,484 square kilometres (573 sq mi). According to the 2011 census, Delhi\'s city proper population was over 11 million,[5] the second-highest in India after Mumbai,[16] while the whole NCT\'s population was about 16.8 million.[6] Delhi\'s urban area is now considered to extend beyond the NCT boundaries, and include the neighbouring satellite cities of Ghaziabad, Faridabad, Gurgaon', 'post-delhi.jpg', '2020-09-03 20:11:00'),
(8, 'MUMBAI', 'The Financial capital of India', 'eighth-post', 'Mumbai (English: /mʊmˈbaɪ/, Marathi: [ˈmumbəi]; formerly known as Bombay /bɒmˈbeɪ/, the official name until 1995) is the capital city of the Indian state of Maharashtra. According to the United Nations, as of 2018, Mumbai is the most populous city in the country and the seventh-most populous city in the world with a population of roughly 20 million.[13] As per Indian government population census of 2011, Mumbai is the most populous city in India with an estimated city proper population of 12.5 million living under Municipal Corporation of Greater Mumbai.[14] Mumbai is the centre of the Mumbai Metropolitan Region, the sixth most populous metropolitan area in the world with a population of over 23 million.[15] Mumbai lies on the Konkan coast on the west coast of India and has a deep natural harbour. In 2008, Mumbai was named an alpha world city.[16][17] It has the highest number of millionaires and billionaires among all cities in India.[18][19] Mumbai is home to three UNESCO World Heritage Sites: the Elephanta Caves, Chhatrapati Shivaji Maharaj Terminus, and the city\'s distinctive ensemble of Victorian and Art Deco buildings.[20][21]', 'post-mumbai.jpg', '2020-09-04 02:15:21'),
(9, 'LONDON', 'The capital of England', 'ninth-post', 'London is the capital and largest city of England and the United Kingdom.[8][9] The city stands on the River Thames in the south-east of England, at the head of its 50-mile (80 km) estuary leading to the North Sea, London has been a major settlement for two millennia. Londinium was founded by the Romans.[10] The City of London, London\'s ancient core and financial centre − an area of just 1.12 square miles (2.9 km2) and colloquially known as the Square Mile − retains boundaries that closely follow its medieval limits.[11][12][13][14][15][note 1] The adjacent City of Westminster is an Inner London borough and has for centuries been the location of much of the national government. Thirty one additional boroughs north and south of the river also comprise modern London. London is governed by the mayor of London and the London Assembly.[16][note 2][17]', 'post-london.jpg', '2020-09-04 02:23:46'),
(10, 'NEWYORK', 'The capital of America', 'tenth-post', 'New York City, often called simply New York and abbreviated as NYC, is the most populous city in the United States. With an estimated 2019 population of 8,336,817 distributed over about 302.6 square miles (784 km2), New York City is also the most densely populated major city in the United States.[11] Located at the southern tip of the U.S. state of New York, the city is the center of the New York metropolitan area, the largest metropolitan area in the world by urban landmass.[12] With almost 20 million people in its metropolitan statistical area and approximately 23 million in its combined statistical area, it is one of the world\'s most populous megacities. New York City has been described as the cultural, financial, and media capital of the world, significantly influencing commerce,[13] entertainment, research, technology, education, politics, tourism, art, fashion, and sports. Home to the headquarters of the United Nations,[14] New York is an important center for international diplomacy.[15][16]', 'post-newyork.jpg', '2020-09-04 02:19:31'),
(11, 'ADIYOGI', 'The source of Yoga', 'eleventh-post', 'The Adiyogi statue is a 34-metre-tall (112 ft), 45-metre-long (147 ft) and 25-metre-wide (82 ft) steel statue of the Hindu deity Shiva with Thirunamam at Coimbatore, Tamil Nadu. It is recognized by the Guinness World Records as the \"Largest Bust Sculpture” in the world.[1][2] Designed by Sadhguru Jaggi Vasudev, it weighs around 500 tonnes (490 long tons; 550 short tons).[3]\r\n\r\nAdiyogi refers to \"the first yogi\" or Shiva as the originator of yoga. It was established to inspire people towards inner well-being, through yoga.', 'home3.jpg', '2020-09-04 02:21:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
