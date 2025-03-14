-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-03-04 09:52:06
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `daiski_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdtime` datetime DEFAULT current_timestamp(),
  `isCoach` tinyint(4) DEFAULT 0,
  `valid` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `account`, `password`, `phone`, `birthday`, `email`, `createdtime`, `isCoach`, `valid`) VALUES
(210, 'Allison Hill', 'donaldgarc', 'J+48Cs', '0979402654', '1954-09-20', 'curtis61@abbott-munoz.com', '0000-00-00 00:00:00', 0, 1),
(211, 'Kimberly Dudley', 'smiller', '_^9Lys', '0952553419', '1987-05-08', 'frankgray@watts.com', '0000-00-00 00:00:00', 0, 1),
(212, 'Andrew Stewart', 'carl95', 'L$7M7Vsu', '0901226916', '1970-02-09', 'tasha01@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(213, 'Nicole Mack', 'daniel62', '7*0tXAx', '0928809570', '1951-10-02', 'john39@gmail.com', '0000-00-00 00:00:00', 0, 1),
(214, 'John Jones', 'davidalvar', 'qJ(2IqB', '0971331509', '1981-10-31', 'adrianzimmerman@perez.com', '0000-00-00 00:00:00', 0, 1),
(215, 'David Caldwell', 'ambercummi', ')l9PJhM', '0913338726', '1956-08-16', 'ewright@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(216, 'Savannah Garcia', 'novaksara', 'Np$2Np', '0972343098', '1948-04-15', 'williamsthomas@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(217, 'Tyler Miller', 'caseyjones', '6V$J6QDse5', '0951079911', '1980-09-21', 'david51@wood.info', '0000-00-00 00:00:00', 0, 1),
(218, 'Michele Carr', 'contrerasa', '(_18Ei', '0974016400', '1966-11-02', 'evan78@patterson.com', '0000-00-00 00:00:00', 0, 1),
(219, 'Sandra Aguilar', 'russellwil', '^b0TqLgu50', '0963421607', '1959-04-11', 'ybailey@walker.com', '0000-00-00 00:00:00', 0, 1),
(220, 'Donald Jones', 'michael86', '(81K7(af_', '0940608835', '1973-06-27', 'cindy14@parker.com', '0000-00-00 00:00:00', 0, 1),
(221, 'Cheryl Ortega', 'lbyrd', 'S)99Jm', '0972148951', '1999-11-01', 'jeffrey32@williams.org', '0000-00-00 00:00:00', 0, 1),
(222, 'Angel Perry', 'jennifercr', '&sp3Eu', '0983172788', '1984-08-29', 'usalazar@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(223, 'Terry Griffin', 'juliawells', '%3U8i9', '0923623166', '1966-08-28', 'abrown@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(224, 'Lauren Dominguez', 'wwoods', 'hS%64Nr', '0927298069', '1982-07-19', 'dayderek@white-green.com', '0000-00-00 00:00:00', 0, 1),
(225, 'Gabriel Juarez', 'aramirez', '%1w4Pwa', '0923271937', '1991-09-27', 'gary91@gmail.com', '0000-00-00 00:00:00', 0, 1),
(226, 'Ashley Johnson', 'barbara66', 'd3*joCsy+D', '0950671657', '1992-04-09', 'hthompson@nelson.info', '0000-00-00 00:00:00', 0, 1),
(227, 'Roger Vargas', 'melissa14', '3bCYoOE7*W', '0913678377', '1974-08-21', 'phillipsrichard@torres.com', '0000-00-00 00:00:00', 0, 1),
(228, 'Joseph Coleman', 'michael74', 'fB%4Hd', '0989413435', '1956-05-08', 'ericksondavid@gmail.com', '0000-00-00 00:00:00', 0, 1),
(229, 'Kristen Terry', 'danamullin', '@KS$jNmH^0', '0913186999', '1959-07-01', 'tkerr@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(230, 'Elizabeth Oliver DDS', 'mezajared', '+$4!LVc', '0971349361', '1981-03-13', 'rebekahserrano@brown.org', '0000-00-00 00:00:00', 0, 1),
(231, 'Laura Roberts', 'harrisonke', '&^QJr6&xn4', '0978742967', '1950-05-07', 'ricky51@gmail.com', '0000-00-00 00:00:00', 0, 1),
(232, 'Michael Roberts', 'jcervantes', '7(jqnCqk!', '0934824771', '1946-02-07', 'lancesmith@davis-gay.com', '0000-00-00 00:00:00', 0, 1),
(233, 'Bruce Collier', 'scantu', '(64NuPp', '0958404499', '1989-01-17', 'seanwashington@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(234, 'Kimberly Gibson', 'molly39', '&hYmGnmy3', '0917187026', '2003-05-29', 'harrisontanya@hanson-sanders.com', '0000-00-00 00:00:00', 0, 1),
(235, 'Sarah Villarreal', 'ofinley', '+579Rbyie*', '0904556238', '1972-03-06', 'gregorylynch@harvey-allen.org', '0000-00-00 00:00:00', 0, 1),
(236, 'Joel King', 'elizabeth7', 'K_V8J6Fc', '0969594406', '1962-10-26', 'lozanojulie@parsons-hall.com', '0000-00-00 00:00:00', 0, 1),
(237, 'Connor King', 'courtneybe', 'K_0Jzh', '0945171236', '2001-09-10', 'gibbsalexander@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(238, 'Jacob Curry', 'brenda51', '_v3PZaM', '0920047113', '2004-07-07', 'qchavez@horton.com', '0000-00-00 00:00:00', 0, 1),
(239, 'Mary Bass', 'rcrosby', '!5EGFsZo8', '0905329318', '1958-03-27', 'markhernandez@smith.com', '0000-00-00 00:00:00', 0, 1),
(240, 'Rebecca Rodriguez', 'andersonmi', '$9gKhNja', '0984700766', '1990-10-30', 'cjoseph@lam.org', '0000-00-00 00:00:00', 0, 1),
(241, 'Cameron Weber', 'oscar98', 'Jk(%q7Qt', '0966156545', '1954-07-11', 'davischristopher@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(242, 'Parker Cain', 'willisanna', '^1JtNlB', '0973158514', '1983-03-17', 'xbruce@austin.com', '0000-00-00 00:00:00', 0, 1),
(243, 'Donald Farmer', 'michael22', 'gx)R6Ce', '0991022901', '1962-08-28', 'ctucker@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(244, 'Paul Wilson', 'rrodriguez', '_9HWPq3_', '0976226838', '1982-02-28', 'sandersjudy@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(245, 'Thomas Atkins', 'tberry', '_6JdMd', '0969681645', '1959-03-21', 'charlesschultz@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(246, 'Susan Bailey', 'joelthomas', 'ia$2Te', '0952717744', '1984-05-20', 'william47@johnson-wood.com', '0000-00-00 00:00:00', 0, 1),
(247, 'Sean Wyatt', 'jford', 'z0OPwLmn+', '0937788925', '1969-07-06', 'vortiz@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(248, 'Rachel Holland', 'riveraange', 'p&4I&x', '0991486528', '1950-07-01', 'andrew42@gmail.com', '0000-00-00 00:00:00', 0, 1),
(249, 'Ralph Lee', 'ericphilli', '@r8Ci)Yr', '0953794738', '1960-05-31', 'mmckee@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(250, 'Laura Alexander', 'kimberly88', 'W&2NGvez', '0982613750', '1972-05-16', 'pshaw@vang-brooks.com', '0000-00-00 00:00:00', 0, 1),
(251, 'Brett Espinoza', 'lacey20', '%7XWe3+vXJ', '0936971179', '1980-08-13', 'jennifercarter@mendez.org', '0000-00-00 00:00:00', 0, 1),
(252, 'Matthew Miller', 'carlos88', '(8Ry6akD', '0958527722', '1948-06-07', 'carterbradley@gmail.com', '0000-00-00 00:00:00', 0, 1),
(253, 'Emily Collins', 'ihays', 'Z*4Bay', '0977584161', '1973-06-10', 'manuel15@phillips.com', '0000-00-00 00:00:00', 0, 1),
(254, 'Heather Williams', 'christina6', 'Z_l0wCvj#', '0990927557', '1996-01-25', 'alyssasanders@ramirez.com', '0000-00-00 00:00:00', 0, 1),
(255, 'Mr. Justin Green III', 'nlewis', '_^7eGdxz%e', '0983132370', '1968-09-12', 'jlara@gmail.com', '0000-00-00 00:00:00', 0, 1),
(256, 'Angelica Parker', 'xfox', 'x&L9Ce', '0980182422', '1966-02-04', 'stacey84@king.net', '0000-00-00 00:00:00', 0, 1),
(257, 'Mario Mendez', 'shawgary', ')sC2Fpvwj', '0978447364', '1975-01-01', 'moorerobert@harris-lawson.com', '0000-00-00 00:00:00', 0, 1),
(258, 'Emma Travis', 'theresa25', '5(8Dkv', '0995327877', '2003-12-17', 'zjohnson@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(259, 'David Aguilar', 'williamstr', '!7)7JHr$_E', '0978499121', '1970-12-11', 'angela52@gmail.com', '0000-00-00 00:00:00', 0, 1),
(260, 'Jennifer Williams', 'taylormaso', '*QCX8Oge', '0955169409', '1976-06-08', 'jennifersilva@gmail.com', '0000-00-00 00:00:00', 0, 1),
(261, 'Michelle Hampton', 'rhernandez', '$@SwdIju0g', '0985786527', '2006-03-17', 'erica49@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(262, 'David Grant', 'shellyhend', 'ON%v3WwS', '0904157473', '1957-11-21', 'derrick99@gmail.com', '0000-00-00 00:00:00', 0, 1),
(263, 'Michael Schmidt', 'briangutie', '+7SuDvrN2x', '0993802620', '2001-01-15', 'vlopez@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(264, 'Alexandra Bradley', 'hebertmatt', '*8Q8lpg', '0954932966', '1979-03-16', 'moralescody@gmail.com', '0000-00-00 00:00:00', 0, 1),
(265, 'Timothy Smith', 'wyoung', 'f%5J%s', '0984145933', '1953-03-24', 'spencerzhang@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(266, 'Joshua Ruiz', 'kathleenbe', 'R)1Qos', '0913971870', '1974-12-30', 'dbryant@ford.biz', '0000-00-00 00:00:00', 0, 1),
(267, 'Aaron Robinson', 'williamsme', '@M8B_Zc', '0982512868', '1952-10-21', 'avilatiffany@nunez-stephens.net', '0000-00-00 00:00:00', 0, 1),
(268, 'David Murray', 'joshuapine', '+Xv15%Bz', '0938302843', '1999-08-27', 'joel28@gmail.com', '0000-00-00 00:00:00', 0, 1),
(269, 'Donald Hawkins', 'conniesimm', 'b*0LuF', '0927086688', '1953-04-06', 'jonathanrivera@gmail.com', '0000-00-00 00:00:00', 0, 1),
(270, 'Sarah Davis', 'brettbenne', ')9fTNBc', '0973936385', '1996-11-29', 'powens@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(271, 'Ian Andrade', 'ugarcia', 'B$*5Gl', '0923536937', '1981-08-11', 'kathryn77@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(272, 'Robert Jackson', 'iwhite', 'o^m0!QYb_', '0909977008', '1981-09-05', 'smithjennifer@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(273, 'Alicia Li', 'ldrake', '@16Qe^wL', '0916668700', '1991-12-20', 'porterryan@knight-hodge.com', '0000-00-00 00:00:00', 0, 1),
(274, 'Tamara Hall', 'enelson', 'a1_4R_smu', '0985621850', '1950-10-14', 'marypeterson@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(275, 'Jennifer Ayala', 'walterskri', 'S*7VHjl6', '0926551104', '1974-05-27', 'curtis12@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(276, 'Justin Russell', 'davisangel', 'p)I9Zkz', '0922444721', '1955-07-08', 'robert71@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(277, 'David Weber', 'stephentay', 'Gp!6mKVt', '0965479356', '1963-03-19', 'daniel93@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(278, 'Catherine Saunders M', 'nhahn', '*4IOY5Wc', '0958911352', '1988-03-02', 'vrasmussen@rodriguez-garcia.com', '0000-00-00 00:00:00', 0, 1),
(279, 'Kelly Carpenter', 'seanmyers', '#NAME?', '0938757177', '1965-11-03', 'bradley10@wong-byrd.com', '0000-00-00 00:00:00', 0, 1),
(280, 'Natalie Black', 'marksimmon', '*3aZmrLJ', '0991825537', '1951-11-23', 'orose@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(281, 'Lisa Matthews', 'michael79', '&#(4Ts', '0982827422', '1965-07-18', 'glennstephanie@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(282, 'Robert Maynard', 'fortiz', '&7i9PR0L&f', '0985807836', '1951-02-09', 'nancy07@bailey-montoya.info', '0000-00-00 00:00:00', 0, 1),
(283, 'Autumn Cain', 'lisamatthe', '0^93Un8', '0944948126', '2006-08-30', 'michelle22@thomas.com', '0000-00-00 00:00:00', 0, 1),
(284, 'Megan Burns', 'courtney67', 'h1qLOMqo@x', '0936374545', '1981-05-20', 'rkramer@williams.info', '0000-00-00 00:00:00', 0, 1),
(285, 'Timothy Moore', 'bsmith', '$28U6js', '0943611037', '1949-06-11', 'aprilwallace@dominguez.biz', '0000-00-00 00:00:00', 0, 1),
(286, 'Karen Perez', 'crosscurti', 'G^q5JeT', '0953269731', '2005-02-24', 'karenlawrence@bell-jordan.com', '0000-00-00 00:00:00', 0, 1),
(287, 'Matthew Wright', 'kimberly04', 'q8ZkkTG5$', '0952696582', '1996-01-16', 'smithcarlos@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(288, 'Thomas Fry', 'ohunter', 'JH8R+Ynu+', '0991463031', '2007-01-22', 'chavezchelsea@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(289, 'Mary Thompson', 'zimmermanj', '#m7F7Lq(', '0981491778', '1968-08-23', 'kvillarreal@moore-ayala.org', '0000-00-00 00:00:00', 0, 1),
(290, 'Ashley Yang', 'williamsmi', 'G$up0PgJBl', '0951802380', '1971-06-04', 'xcline@murphy-tran.com', '0000-00-00 00:00:00', 0, 1),
(291, 'Eddie Mueller', 'stevenvarg', '*63I5Xr', '0964138367', '1948-03-19', 'christopher38@haynes-watson.com', '0000-00-00 00:00:00', 0, 1),
(292, 'Kathy Walsh', 'kjones', '5!6VdgBe', '0975618537', '1965-02-13', 'melissa12@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(293, 'Michael Morrison', 'marymurphy', 'P@73Lm', '0917121003', '1953-01-12', 'owatson@miller.com', '0000-00-00 00:00:00', 0, 1),
(294, 'Austin Orr', 'flamb', '^1BoOGJ', '0999934768', '1976-09-26', 'ramirezderrick@day.com', '0000-00-00 00:00:00', 0, 1),
(295, 'Rebekah Norton', 'wcasey', '*T8ZpW', '0959321334', '1980-06-15', 'barbaramcgrath@kelly-combs.com', '0000-00-00 00:00:00', 0, 1),
(296, 'Kevin Drake', 'robin05', ')nl9SE#s', '0993252500', '1954-03-11', 'mathismichelle@brooks.biz', '0000-00-00 00:00:00', 0, 1),
(297, 'Gabrielle Morris', 'jessicakim', '_x7uU4k0A', '0990295939', '1951-03-23', 'markmiller@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(298, 'Mrs. Stacey Davis', 'sean43', 'k$$KJ1Li', '0993271040', '1965-10-29', 'jonesgeorge@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(299, 'Benjamin Mcmahon', 'morgantric', '0*0*Nu', '0910698720', '1968-09-10', 'qmiller@greene.com', '0000-00-00 00:00:00', 0, 1),
(300, 'Vanessa Wells', 'parkerraym', 'S*4FC7u', '0902115869', '1959-08-15', 'acardenas@mcdaniel.com', '0000-00-00 00:00:00', 0, 1),
(301, 'Blake Orr', 'shawrachel', 'wL90Ed$^c)', '0911686854', '1979-07-03', 'buchanancindy@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(302, 'Ashley Hernandez', 'buckleyann', '@7a4NRlX', '0907450544', '1963-03-21', 'comptonjeremy@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(303, 'Jessica Petersen', 'jessica91', 'g$q7G+n', '0989023303', '1946-05-22', 'hulljanet@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(304, 'John Sanders', 'maldonadoj', '*N9Of7n&#', '0968007229', '1998-08-21', 'johnnytrujillo@marquez-fletcher.com', '0000-00-00 00:00:00', 0, 1),
(305, 'James Bailey', 'jeffery48', '!z)6Sd8cN', '0983096520', '1988-09-27', 'jordan66@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(306, 'Lauren Cooley', 'matthewree', 'Nv8AUzT9_', '0913534655', '1961-11-14', 'eyork@gmail.com', '0000-00-00 00:00:00', 0, 1),
(307, 'Lauren Blackburn', 'kennedyjam', 'I@6QDzj', '0921752500', '1974-11-25', 'kathleenjackson@gmail.com', '0000-00-00 00:00:00', 0, 1),
(308, 'Phillip Miller DDS', 'epowell', '2F&0BrcY', '0916894210', '1964-06-06', 'mluna@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(309, 'Stephen Cowan', 'wendy75', '$4y2@Zm', '0948909010', '1947-06-03', 'hwallace@king.com', '0000-00-00 00:00:00', 0, 1),
(310, 'Matthew Bates', 'cindy26', '(@8X2tQ', '0942087375', '1960-02-05', 'powersrebecca@caldwell.net', '0000-00-00 00:00:00', 0, 1),
(311, 'Nathaniel Conway', 'stephenmad', 'mq7EcB(dr%', '0941552166', '1975-03-17', 'evaughn@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(312, 'Rebecca Wilson', 'jarvismega', '@61GE#Spy)', '0914508993', '1989-09-21', 'reynoldsjessica@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(313, 'Michael Cruz', 'smithsarah', '^(57$PZf', '0917016608', '1981-07-03', 'connersylvia@torres.info', '0000-00-00 00:00:00', 0, 1),
(314, 'Heidi Brown', 'meganriver', ')9Pi4Dnw9Q', '0926149331', '2002-02-17', 'stephenharrington@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(315, 'Peter Williams', 'bartonshan', 'x_9SKQejt', '0986693465', '1964-02-27', 'devonmorrison@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(316, 'Sarah Kelley', 'jennifer83', '9DbyaTPw$3', '0996846081', '1945-11-10', 'brianbrown@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(317, 'Candace Mitchell', 'dwayne04', '$*qg8Bl5k', '0980043973', '2006-03-02', 'kimberlybrandt@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(318, 'William Jones', 'jillwilson', '!+o!6I#r', '0915832818', '1954-12-26', 'odavis@gmail.com', '0000-00-00 00:00:00', 0, 1),
(319, 'Erin Carter', 'wbarajas', '_50D6#v', '0984085887', '1977-04-07', 'rachel35@miller.net', '0000-00-00 00:00:00', 0, 1),
(320, 'Lori Clark', 'michelleco', '@3Rm^w@', '0948193466', '1974-11-02', 'ystewart@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(321, 'Aaron Cortez', 'avilabrend', '*k1&LKqa+R', '0924508821', '1946-12-25', 'fmedina@clark-figueroa.com', '0000-00-00 00:00:00', 0, 1),
(322, 'Taylor York', 'eugenewalk', 'b%%3DSZfb', '0955231491', '2005-05-23', 'todd59@torres.com', '0000-00-00 00:00:00', 0, 1),
(323, 'Tina Jackson', 'john36', '%5MEEv', '0942834110', '2001-12-14', 'nhammond@arnold.net', '0000-00-00 00:00:00', 0, 1),
(324, 'Reginald Diaz', 'patriciala', 'P%P2Oq', '0922992750', '1959-01-11', 'bryanwood@gmail.com', '0000-00-00 00:00:00', 0, 1),
(325, 'Kelly Moody', 'dharrison', '*!Y0Uk', '0965918463', '1979-04-12', 'lisa57@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(326, 'Adriana Macias', 'emartin', '1(f4Gef', '0926030299', '1955-02-07', 'macdonalddylan@scott.net', '0000-00-00 00:00:00', 0, 1),
(327, 'Linda Elliott', 'johnsjessi', 'W%N41Go', '0984257991', '1959-10-12', 'banderson@gmail.com', '0000-00-00 00:00:00', 0, 1),
(328, 'Susan Cohen', 'catherinet', '9h&asBzv)', '0986376599', '1950-10-15', 'jonathancannon@gmail.com', '0000-00-00 00:00:00', 0, 1),
(329, 'Shawn Ortiz', 'adammannin', 'QF3l9QdV7!', '0936887258', '1981-11-25', 'vanessa95@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(330, 'Charles Shields', 'adkinssean', '+2lDcg', '0979611435', '1949-08-02', 'zarias@douglas.com', '0000-00-00 00:00:00', 0, 1),
(331, 'Samantha Bowman', 'qsmith', 'kPd(4Gby&', '0980118489', '1967-10-29', 'jeremy37@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(332, 'Debbie Russell', 'hansenwesl', '^1mUZxTqi', '0916335658', '1980-08-03', 'john16@goodman.com', '0000-00-00 00:00:00', 0, 1),
(333, 'Hayden Shannon', 'ian37', '+74nnEjxH3', '0907595794', '1977-07-16', 'raymond92@fox.info', '0000-00-00 00:00:00', 0, 1),
(334, 'Amanda Reed', 'stephenmar', '!b(*E7Kw7', '0936556472', '1983-01-09', 'lisale@peters.com', '0000-00-00 00:00:00', 0, 1),
(335, 'Tyler Hernandez', 'thompsonvi', 'B_6p8R0x6o', '0955884506', '1952-05-22', 'barbarasantos@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(336, 'Richard Kelly', 'champton', 'M@6TujXH', '0955449647', '1997-04-14', 'lgutierrez@gmail.com', '0000-00-00 00:00:00', 0, 1),
(337, 'David King', 'clarkrandy', '$j1zPX&r@4', '0920055778', '1962-09-04', 'tarawolfe@gmail.com', '0000-00-00 00:00:00', 0, 1),
(338, 'Joyce Curry', 'omills', '(4LFpA', '0947807740', '1996-04-03', 'carla08@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(339, 'Stephen Kim', 'frankmclau', '^Y&6Hi', '0931224179', '1974-12-13', 'blopez@gmail.com', '0000-00-00 00:00:00', 0, 1),
(340, 'Joseph Lopez', 'campbellda', '*O0BHzckCo', '0918723460', '1952-06-09', 'cwise@rojas.com', '0000-00-00 00:00:00', 0, 1),
(341, 'Ray Boyd', 'thomasmald', 'f%S5NFu$', '0902491630', '1946-12-30', 'nathandavis@gmail.com', '0000-00-00 00:00:00', 0, 1),
(342, 'Mr. George Booker DD', 'browndeann', ')5+k8Zd2', '0907784873', '1982-09-14', 'mario74@rocha.com', '0000-00-00 00:00:00', 0, 1),
(343, 'Robert Weaver', 'osmith', 'r(E6Xf', '0978294565', '1951-08-28', 'williamssharon@russo.com', '0000-00-00 00:00:00', 0, 1),
(344, 'Mr. Kenneth Huff', 'sfox', ')f!u4BlM', '0980141381', '1951-01-10', 'hlopez@wright.net', '0000-00-00 00:00:00', 0, 1),
(345, 'Brian Fowler', 'emily61', 'PaR2vRmz#', '0936845776', '1944-02-25', 'caitlin82@smith-joyce.com', '0000-00-00 00:00:00', 0, 1),
(346, 'Alison Short', 'samantha88', ')9_Ed5m', '0915727919', '1987-11-05', 'crossbarbara@gmail.com', '0000-00-00 00:00:00', 0, 1),
(347, 'Tammy Cook', 'hbutler', 'j9A$R+Au$', '0936462251', '1976-07-09', 'zbaker@hamilton.info', '0000-00-00 00:00:00', 0, 1),
(348, 'Katherine Pearson', 'annshea', '7(3UHc', '0904259792', '1974-02-10', 'jamesbrooks@farrell.org', '0000-00-00 00:00:00', 0, 1),
(349, 'Sheila Wilkins', 'cooperlind', '%g7SPSaz', '0904394070', '1948-09-02', 'elizabeth51@gmail.com', '0000-00-00 00:00:00', 0, 1),
(350, 'Stephen Hughes', 'tromero', '@15LPt6RCH', '0938404608', '1963-03-17', 'matthewlong@miller.net', '0000-00-00 00:00:00', 0, 1),
(351, 'Lisa Garrett', 'robertberr', 'L&a4Tk_', '0929251881', '1956-09-01', 'jessicacannon@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(352, 'Elizabeth Reese', 'edwin31', 'yX2XWA@yj#', '0967722330', '1971-12-11', 'stephanie33@jones.org', '0000-00-00 00:00:00', 0, 1),
(353, 'Frederick Ellis II', 'mparsons', '+6UXke', '0988608680', '1957-01-21', 'tsanders@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(354, 'Jay Austin', 'vaughnrebe', 'P*V7CHBx', '0952111751', '1979-10-14', 'nicholasjames@gmail.com', '0000-00-00 00:00:00', 0, 1),
(355, 'Krystal Keller', 'fernandoth', '0iLY()3j+N', '0973397767', '1949-07-17', 'nicoleramirez@grant.com', '0000-00-00 00:00:00', 0, 1),
(356, 'Gregory Thomas', 'estradamar', '%5+9CbUTxh', '0955616814', '1976-03-06', 'nealjoshua@gutierrez.com', '0000-00-00 00:00:00', 0, 1),
(357, 'Nicholas Fuller', 'webbhaley', 'o+U4uNt', '0993430107', '1986-09-13', 'laurenduarte@williams-bailey.com', '0000-00-00 00:00:00', 0, 1),
(358, 'Curtis Campbell', 'parkerwill', '^HU0nDv', '0927278576', '1994-09-03', 'annette58@smith.com', '0000-00-00 00:00:00', 0, 1),
(359, 'Chase Pittman', 'tonya82', 'Wph)9MIf', '0938421503', '2006-04-17', 'zhunter@stein-moore.com', '0000-00-00 00:00:00', 0, 1),
(360, 'Morgan Mills', 'douglas18', '_G2GB$x', '0901840943', '1965-12-22', 'justinpatel@lambert-nelson.com', '0000-00-00 00:00:00', 0, 1),
(361, 'Adrian Dean', 'clarkmicha', '^4EBsSw#s$', '0999795453', '1992-08-26', 'fbradley@mcdonald.info', '0000-00-00 00:00:00', 0, 1),
(362, 'Travis Thomas', 'roberta62', 'L5NEZkiW+*', '0987696393', '1981-06-05', 'vreyes@cervantes.biz', '0000-00-00 00:00:00', 0, 1),
(363, 'Jessica Cobb', 'gilbertcal', '#NAME?', '0957013290', '1995-08-29', 'shawncarter@lane.com', '0000-00-00 00:00:00', 0, 1),
(364, 'Robert Frazier', 'wrobbins', '@H)9AStemE', '0996566668', '1958-07-06', 'jtaylor@bridges-ward.biz', '0000-00-00 00:00:00', 0, 1),
(365, 'Zachary Santiago', 'alexanderw', 'y_#lp7Vn', '0932690973', '1992-08-07', 'khouse@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(366, 'Andrew Webb', 'daniel71', '8QQXYybb#', '0980778795', '1972-10-15', 'keith09@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(367, 'Richard Green', 'klane', '!4ZPx8', '0919292752', '1961-12-01', 'hwhite@cooper.com', '0000-00-00 00:00:00', 0, 1),
(368, 'Samantha Monroe', 'ptownsend', '_7Xu7m', '0978366742', '1980-03-27', 'robertslaura@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(369, 'Tonya Vega', 'davisamand', '^C6Taujh', '0901061817', '1968-01-22', 'johnathan00@davis.com', '0000-00-00 00:00:00', 0, 1),
(370, 'Margaret Erickson', 'millercass', 'sd&M9Zf8', '0914066504', '1999-06-14', 'scottvasquez@gmail.com', '0000-00-00 00:00:00', 0, 1),
(371, 'Cassandra Vasquez', 'amberreyno', ')#1OjwO', '0925690877', '1973-10-24', 'fernandezaaron@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(372, 'Karen Bradley', 'mathew46', '!Do1Lr', '0934615717', '1994-03-06', 'austinjohnson@allen.com', '0000-00-00 00:00:00', 0, 1),
(373, 'Dr. Robert Levy Jr.', 'brian06', '@3cZ+uu', '0907903202', '1987-03-11', 'lori17@jackson.com', '0000-00-00 00:00:00', 0, 1),
(374, 'Kurt Gilbert', 'brockronal', 'yU6nkKdC+_', '0927390219', '1969-09-25', 'hobbschristopher@white.org', '0000-00-00 00:00:00', 0, 1),
(375, 'Jennifer Aguirre', 'nschwartz', '#v4Q1o', '0908331819', '1968-10-07', 'qtownsend@hill.com', '0000-00-00 00:00:00', 0, 1),
(376, 'Melinda Schmitt', 'kjimenez', '_06XBu', '0920781137', '1984-06-21', 'rgonzalez@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(377, 'Brian Perez', 'joankane', 'V%&3CpFL2', '0909042177', '1972-08-07', 'jeffrey49@clarke.org', '0000-00-00 00:00:00', 0, 1),
(378, 'Laura Tran', 'christophe', '*3gSpC', '0900780686', '1976-10-02', 'fsimpson@mullins.com', '0000-00-00 00:00:00', 0, 1),
(379, 'Edward Holland', 'smitheliza', 'V7M_eSxY#!', '0904649893', '1997-09-28', 'jill08@cox.info', '0000-00-00 00:00:00', 0, 1),
(380, 'Holly Thompson', 'castrokim', '(#5UHrh', '0964015577', '1978-04-06', 'rmckinney@lam.com', '0000-00-00 00:00:00', 0, 1),
(381, 'Stephen Miller', 'shurst', '(@+1FiI', '0956704310', '2003-06-19', 'robert55@watkins-terry.net', '0000-00-00 00:00:00', 0, 1),
(382, 'Eric Anderson', 'george43', '*5JyX+R10', '0959274523', '1982-06-01', 'tiffany25@fernandez-martin.com', '0000-00-00 00:00:00', 0, 1),
(383, 'Alexander Velazquez', 'staciereil', '#0eN9Xyr_T', '0928140693', '1974-06-27', 'nguyencathy@gmail.com', '0000-00-00 00:00:00', 0, 1),
(384, 'Courtney Walls', 'james18', '*B1QtEm', '0945547813', '1993-09-01', 'slara@gmail.com', '0000-00-00 00:00:00', 0, 1),
(385, 'Tracy Coleman', 'ltaylor', 'Az)C1VEg', '0992326487', '1947-01-05', 'troy73@gmail.com', '0000-00-00 00:00:00', 0, 1),
(386, 'Brittany Evans', 'qmartinez', 't%#i6FWpNK', '0989042902', '1965-11-22', 'michaelbrown@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(387, 'Thomas Kelly', 'kelly18', '$0YBod8d2R', '0945765213', '1954-08-28', 'laurahansen@guerra.net', '0000-00-00 00:00:00', 0, 1),
(388, 'Rebekah Butler', 'wilsondavi', 'd!7Ljx0Ah', '0923216110', '1996-11-09', 'gwilliams@gmail.com', '0000-00-00 00:00:00', 0, 1),
(389, 'Kayla Brown', 'kerrbradle', 'ju%s0Yd', '0955289389', '1948-10-15', 'ricejennifer@jackson-webster.com', '0000-00-00 00:00:00', 0, 1),
(390, 'Annette Lewis', 'lrichardso', '7EG3Vdy)#_', '0915716479', '1994-03-27', 'aperez@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(391, 'Mrs. Shannon Jacobso', 'xcrosby', '#0Vc(pd', '0935396136', '1993-06-27', 'kathy99@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(392, 'Rebecca Harding', 'thomas96', '*8IOY)*e', '0969524991', '1995-11-14', 'msparks@bates-henry.com', '0000-00-00 00:00:00', 0, 1),
(393, 'Rhonda Fernandez', 'cisnerosan', 'BF&#1pMoO', '0919788977', '1982-05-26', 'myerstroy@jensen-gomez.com', '0000-00-00 00:00:00', 0, 1),
(394, 'Alfred Williams', 'michael90', 'J_5%MdB&', '0908507698', '2005-06-24', 'andrew79@gmail.com', '0000-00-00 00:00:00', 0, 1),
(395, 'Mrs. Jeanette Armstr', 'rgarcia', '5b0Pq2Zy$', '0949639191', '1984-05-31', 'carlos87@yahoo.com', '0000-00-00 00:00:00', 0, 1),
(396, 'Robert Pearson', 'william46', 'I6QbKrYg_8', '0969083572', '1960-06-30', 'megan65@walters.com', '0000-00-00 00:00:00', 0, 1),
(397, 'Maria Scott', 'richardwil', '0MHKz#+_$', '0970015941', '2005-06-03', 'emily16@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(398, 'Cynthia Duncan', 'boydmaria', '(4lPVc', '0923476490', '1977-07-04', 'stewartrodney@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(399, 'Donald Mueller', 'michaelbal', '#g%0tUt', '0918376064', '1964-08-12', 'kennethvillarreal@moon.com', '0000-00-00 00:00:00', 0, 1),
(400, 'Pamela Sullivan', 'hillchrist', '*C7Xn+7', '0985700272', '1944-05-07', 'courtneyedwards@gmail.com', '0000-00-00 00:00:00', 0, 1),
(401, 'David Reeves', 'melaniejen', ')^7Px&', '0930089317', '1957-08-18', 'brandonwilliamson@hotmail.com', '0000-00-00 00:00:00', 0, 1),
(402, 'Brandon Richardson', 'smithalici', 'e2*7DOhp', '0962044397', '2005-11-18', 'brandi71@harrison.biz', '0000-00-00 00:00:00', 0, 1),
(403, 'Michelle Erickson', 'charles80', '!z5Hph', '0946528092', '1961-11-07', 'dconrad@davis.net', '0000-00-00 00:00:00', 0, 1),
(404, 'David Edwards', 'victormcph', '57nNQK0j%w', '0920320742', '1992-03-06', 'fwilson@gmail.com', '0000-00-00 00:00:00', 0, 1),
(405, 'William Hoffman', 'uvasquez', '3c1hmTL3z#', '0937150416', '1969-07-23', 'eric17@keller.org', '0000-00-00 00:00:00', 0, 1),
(406, 'Erin Williams', 'unguyen', '+9EghSW', '0936103266', '1963-07-13', 'evanslaurie@drake.com', '0000-00-00 00:00:00', 0, 1),
(407, 'Brendan Richardson', 'tracymcclu', 'J4SXKJ#t*4', '0947617422', '1990-09-15', 'alexandraphillips@gmail.com', '0000-00-00 00:00:00', 0, 1),
(408, 'Sylvia Palmer', 'dgutierrez', '_&9Ial1', '0959779452', '1958-07-03', 'burgesscassandra@rodriguez.com', '0000-00-00 00:00:00', 0, 1),
(409, 'Matthew Stevens', 'vmelton', ')7dJbt', '0923683147', '1954-03-22', 'kjohnson@gmail.com', '0000-00-00 00:00:00', 0, 1),
(410, 'Roy', 'Roy', '11111111', '145454816', '2000-12-13', 'Roy@test.com', '2025-02-24 15:23:09', 1, 1),
(411, 'PinChi', '12345', '12345', '000000235', NULL, 'admin@gmail.com', '2025-02-25 12:30:10', 1, 1),
(412, '4545132', '33256', '12345', '1564658460', NULL, 'admin@gmail.com', '2025-02-25 12:49:14', 1, 1),
(420, 'PinChi', '127899', '12345', '1234567890', '1996-08-10', 'admin@gmail.com', '2025-03-04 09:13:51', 1, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
