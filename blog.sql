-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 08:19 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `body` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author_id`, `date`) VALUES
(1, 'Jobs and Wages in January: Some Growth, Still Plenty of Slack', 'Facebook?s recent announcement that it?s readying a version of its social software for workplaces got me thinking about Enterprise 2.0, a topic I used to think a great deal about. Five years ago I published a book with that title, arguing that enterprise social software platforms would be valuable tools for businesses. The news from Facebook, along with rapid takeup of new tools like Slack, the continued success and growth of Salesforce?s Chatter and Yammer (now part of Microsoft), and evidence of a comeback at Jive, indicates that the business world might finally be coming around to Web-style communication and collaboration tools.', 2, '2015-02-10'),
(3, 'Business Book of the Year? Maybe. Public Talk Next Week? Definitely.', 'Yesterday we got the good news that The Second Machine Age had been shortlisted for the FT and McKinsey Business Book of the Year Award. Erik and I are floored and very flattered, and looking forward to the award dinner in London in November. I?m pretty sure we?ll watch Thomas Piketty another author hoist the trophy, but it?ll be great fun to attend. In a nice coincidence, next week Erik and I are also giving our first joint public talk about the book since the initial book tour. It?s in Harvard?s gorgeous Sanders Theater on Wednesday October 1 at 4 pm. The event is sponsored by Harvard?s Institute for Learning in Retirement, and is free and open to the public. Please get a ticket in advance by stopping by HILR or the Harvard box office.', 9, '2014-09-26'),
(4, 'This Saturday: The Glass Cage Match at the Boston Book Festival', 'I?ve been involved with the Boston Book Festival since Deborah Porter founded it in 2009, and it?s become one of my favorite events of the year. And since I had a for-real mainstream published book come out this year (as opposed to a self-published glorified pamphlet) I get to participate this year as a full-fledged author in the session titled ?Technology: Promise and Peril?. What makes this especially exciting to me is the fact that I?ll share the stage with Nick Carr, who?s one of my favorite writers and thinkers about technology. I don?t praise Nick because I agree with him so often. Over the years, in fact, we?ve pretty reliably argued about some big questions, including whether IT matters for competitive differentiation and whether Google makes us stupid.', 2, '2014-10-20'),
(5, 'MIT?s Second Machine Age Conference in September: Sign up Now', 'I am sorry to brag, but this really is an all-star lineup. If you?re at all interested in technological progress and its implications for our businesses, economies, and societies, you should attend the 2014 Second Machine Age conference.  It?s being held on September 10 and 11 at the gorgeous MIT Media Lab building, and organized jointly by the Institute?s Industrial Liaison Program and the Initiative on the Digital Economy (which I cofounded with Erik Brynjolfsson). Erik and I are both speaking, but that?s not the the exciting part (sorry, Erik). What?s truly exciting is the group of people who have agreed to join us and share their latest work and thinking.', 8, '2014-08-21'),
(7, 'Examining the Internet of Things: What?s hype? What?s real?', 'The Internet of Things is one of the biggest buzzwords in technology today, and indeed, it does have the potential to be a truly transformational force in the way that we live and work today. However, if you peel back the ?potential? and excitable future-speak surrounding IoT, and look at the actual reality of where it is today, the story is much, much different.  Yes, Internet-enabled ?things? ranging from phones to watches to cars are getting smarter by being able to access, share and interpret data in new ways. But in our enthusiasm to embrace a Jetsons-like future powered by IoT, we?re losing sight of the infrastructure required (both at the literal hardware and organizational/institutional levels) to actually elevate this technology beyond buzzword status.', 8, '2016-06-14'),
(14, 'Sci-Fi Today, Reality TV Tomorrow', 'There?s been a fair bit of hype surrounding the latest SpaceX upright rocket landing. Simple as it seems, the excitement Sci-Fi Today, Reality TV Tomorrow, at least for me, stems from how the feat has brought us one step closer to fulfilling our sci-fi fantasies ? etched into our minds by the many blockbuster flicks Hollywood has produced. If you can recall one of the opening scenes of The Martian, we witnessed the Mars Ascent Vehicle (MAV) lifting off, attempting to escape an ensuing dust storm. While most of the focus was on the misfortune of Mark Watney ? played by Matt Damon, left behind after being struck by debris, you could say we took for granted how easily the MAV ascended into space. Combine the thought of how the MAV got there in the first place, and you have yourself a similar parallel to the SpaceX launch and landing. So what am I getting at? Science fiction only remains science fiction until technology catches up with our imagination. This applies not just to space travel, but every other area of technological advancement.', 8, '2016-06-09'),
(15, '?I am an Imposter.?', 'I was invited to give a keynote at the Cloud Security Alliance (CSA) Congress in Dublin recently, on behalf of my EMC colleague Said Tabet. Two years before, I had spoken at the CSA Congress in Rome about the EU-funded SPECS and SPARKS projects and their relevance to cloud in terms of GRC and security analytics. But this time, I felt that I needed to have discussion about the implications of the dramatic changes in identity management over the past several years, particularly in terms of the dramatics changes affecting the trust-related decisions that we as users and organizations make every day: the disappearance of organization boundaries due to cloud, mobile and social, the increased intermingling of personal and professional identities, the resultant expansion of the attack surface and the increased importance of understanding identity-related issues in order to manage risk.', 9, '2016-06-09'),
(17, 'Data Protection Everywhere ? Why Is It So Important in Today?s Modern Data Center?', 'We are entering into a new age. No, it?s not another ice age, so no need to grab your coat and boots. This age brings no snow, but yields an ever-increasing presence of clouds. Let me explain. I am referring to the age of the modern data center. Over the past 15 years, IT has worked in a relatively predictable manner. However, all of this has started to change. Disruptive forces such as cloud computing and the Internet of Things have transformed the way applications are built and utilized. The modern data center refers to the future of IT infrastructure. Companies must transform in order to deliver on their customers ever-growing expectations, and data is going to be the competitive differentiator for businesses over the next decade. Something of such importance should be kept safe and protected. This calls for a data protection strategy that acknowledges the current landscape because it is likely that customers will need to continue supporting their current environments, as well as transform for next generation infrastructure initiatives.', 2, '2016-06-08'),
(18, 'Composable Data Fabric session from Discover', 'What is Composable Data Fabric? Muthukumar Murugan works in the HPE Storage Office of the CTO and presented in this theater session from HPE Discover. The session discusses what is CDF, why the need for it, the benefits, and HPE R&D investment in it.', 8, '2015-03-03'),
(21, 'Neuromorphic Computing: Labs Research Revealed at Discover', 'My friend and colleague in Hewlett Packard Labs Martina Trucco (Strategy and Communications Manager) reached out to me prior to Discover and asked if I\'d be interested in getting the scoop on research that would be previewed for the first time at Discover. Martina has helped me get an insider\'s view many times and I knew this would be another home run. The topic was Neuromorphic Computing. If you had seen me preping for this video, you would have got a good laugh out of it. On the last day of Discover after an exhausting week, my brain was having a hard time locking in on the words Neuromorphic Computing. Ironic! I went to the Labs Spotlight Session titled the ?Tomorrow Show? so I could get my first introduction to the topic and get some \"b-roll\" footage. Cat Graves was on stage with Martina and Richard Lewington, Technical Communications Manager for Labs.  The discussion with Cat was just one of three really interesting technologies that were discussed during the session.', 9, '2010-09-22'),
(23, '2 IT Guys Balance It All', 'Running any IT department can be a balancing act, but IT administrators at Republic National Distributing Company (RNDC) in Atlanta have taken it to the extreme. According to Systems Architect Michael Lindsey, RNDC is the second largest liquor distributor in the U.S. With two core data centers and dozens of remote locations all over the country, you would think he?d need a pretty large staff and a really large travel budget. In fact, he has neither. There are only two guys managing their distributed network of servers and storage, and this year their travel budget was eliminated altogether.', 2, '2000-03-25'),
(24, 'Agility and Stability', '?Agility? is the facility of quick response ? the ability to be nimble. In general, to be agile entails the ability to detect changes in your environment as well as the ability to respond quickly and appropriately. Being ?agile? (in the traditional sense) is about excelling in a constantly changing environment, much like a serious athlete who masterfully integrates the aspects of balance, speed, strength, coordination, and reaction to the dynamics on the field. Management?s unique perspective includes the business needs, the competition, the pace of innovation, product demand, and the organization?s role in the enterprise. Management?s challenge is to bring this perspective to the Agile teams and collaborate and lead so as to bring the best value to the business.', 2, '2016-06-28'),
(26, 'The Emergence of Roboethics', 'The boundary between machine capabilities and what once seemed uniquely human has certainly moved over the years, justifying concerns that the relatively new field of roboethics addresses. Roboethics goes beyond job losses and looks at the impact of robotization on society as a whole; that is the major topic here. (I will address job losses at the end.) An algorithm can be unethical in both obvious and subtle ways. It could be illegal, as may have been the case with Volkswagen?s engine management algorithms for its ?clean? diesel engines. It could be unethical in the sense that it violates a sense of fair play.', 3, '2016-06-14'),
(27, 'How to Architect a Data Lake', '?How do you architect a lake?? If the question sounds like the opening line of a joke, the answer would clearly come as: ?You don?t. You can only discover one.? Whether it is data warehouses or marts, data lakes, or reservoirs, the IT industry has a penchant for metaphor. The subliminal images conjured in the human mind by the above terms are, in my opinion, of critical importance in guiding thinking about the fundamental meanings and architectures of these constructs. Thus, a data warehouse is a large, cavernous, but well-organized location for gathering and storing data prior to its final use and a place where consumers are less than welcome for fear of being knocked down by a forklift truck. A data mart, on the other hand, creates an image of something between your friendly corner store and Walmart.', 3, '2016-06-14'),
(29, 'Call for Papers: Business-Driven Digital Transformation', 'Digital transformation is at the top of many executive agendas and organizations are investing substantial resources to make it happen. While there may be internal benefits such as efficiency gains, the primary driver for digital transformation is the customer. Customers are now in the driver?s seat with high expectations demanding what they want, when they want it, and how they want it ? and they will go elsewhere to find it if not satisfied. Years of growth and change have created tremendous complexity and redundancy in large enterprises. This complexity has become more transparent to the customer and so improving the customer experience and achieving true digital transformation requires significant changes to the business and IT environment. Organizations also need to prepare themselves to adapt to future strategic and operational changes more quickly as the pace of change is only increasing.', 2, '2016-05-24'),
(31, 'Novi Post ', 'Ovo su testne verzije za nove postove', 2, '2018-02-21'),
(32, 'Novi Post ', 'Ovo je novi post sluzi kao test za dodavanje postova sa postojecim ID-em postavljenim na 2 i sa trenutnim datumom.', 2, '2018-02-21'),
(39, 'Prvi pravi probni', 'sa korisnikom logovanim', 18, '2018-02-22'),
(40, 'Dajanov post', 'post', 18, '2018-02-23'),
(41, 'Dajanin post', 'test', 23, '2018-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `password`) VALUES
(2, 'ivan', 'Ivan Ivanov', '88c75c78bfd909aa3e85d341863b09b5'),
(3, 'gosho', 'Georgi Georgiev', 'dea212cee54d411bae0bf792869c0468'),
(4, 'mariika', 'Maria Petrova', 'f521a51d6472c38b14b9c4d855f658be'),
(8, 'loo', 'Loo Chao-xing', '1e4213e13a52f81ea280132534e8957a'),
(9, 'abdur', 'Abdur Raheem Hatem', 'eb5e0c2e010b355dc2f916b14bd61403'),
(10, 'CRay', 'Charles Ray', 'f08cefd23ade1307b617664e6a642c3a'),
(11, 'dama', 'Damaskinos Stathakis', '272b10e4e2e28e0c232a5f0d681405de'),
(12, 'C.Athena', 'Athena Collia', '2973be21cd2fed7672fc50191afd7bf8'),
(18, 'Dajan', 'Dajan Stjepanovic', '$2a$10$9jqfIlXi3sc2j.uAnoxuq.mt90xBthQw9bXzoGJgZ9PCxd4yJP9fO'),
(23, 'Dajana', 'Dajana Stjepanovic', '$2a$10$BdA1x2o2O7kmeLtxOE.71.B9y2KyZJj1WG2WmSWTZ7Xt9QON8LIR6'),
(24, 'Marko', 'Marko Markovic', '$2a$10$io8bDFp2BjQtHT2oeqMmTezdUZ/.KpCCExSkAEJxvZioGvnZR.iDi'),
(25, 'Mico', 'Mico Micic', '$2a$10$ztxZXljoCQwDUQF8FL8M6./o7xTutyxnsGinzzHrSJulTKvKyPgWG');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `user_id`, `role`) VALUES
(12, 23, 'ROLE_ADMIN'),
(15, 18, 'ROLE_ADMIN'),
(16, 24, 'ROLE_USER'),
(18, 25, 'RROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
