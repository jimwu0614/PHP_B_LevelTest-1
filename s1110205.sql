-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-04 06:54:33
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1110205`
--

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_ad`
--

CREATE TABLE `b_quiz_1_ad` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_ad`
--

INSERT INTO `b_quiz_1_ad` (`id`, `text`, `sh`) VALUES
(1, '轉知臺北教育大學與臺灣師大合辦第11屆麋研齋全國硬筆書法比賽活動', 1),
(4, '1233欣榮圖書館101年悅讀達人徵文比賽，歡迎全校師生踴躍投稿參加', 0),
(5, '013教師生命成長營', 1),
(6, 'dfasdfasfasdfffdf000', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_admin`
--

CREATE TABLE `b_quiz_1_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `acc` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_admin`
--

INSERT INTO `b_quiz_1_admin` (`id`, `acc`, `pw`) VALUES
(1, 'admin1111', '1234');

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_bottom`
--

CREATE TABLE `b_quiz_1_bottom` (
  `id` int(11) UNSIGNED NOT NULL,
  `bottom` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_bottom`
--

INSERT INTO `b_quiz_1_bottom` (`id`, `bottom`) VALUES
(1, '2022-07-08 科技大學版權所有');

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_image`
--

CREATE TABLE `b_quiz_1_image` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_image`
--

INSERT INTO `b_quiz_1_image` (`id`, `img`, `sh`) VALUES
(1, '01D01.jpg', 1),
(3, '01D04.jpg', 1),
(4, '01D05.jpg', 1),
(5, '01D07.jpg', 1),
(6, '01D08.jpg', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_menu`
--

CREATE TABLE `b_quiz_1_menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `href` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_menu`
--

INSERT INTO `b_quiz_1_menu` (`id`, `href`, `text`, `parent`, `sh`) VALUES
(1, 'index.php', '網站首頁', 0, 1),
(2, '/index.php?do=login', '管理登入', 0, 1),
(4, 'fasdfasdf', 'dfadfasf', 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_mvim`
--

CREATE TABLE `b_quiz_1_mvim` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_mvim`
--

INSERT INTO `b_quiz_1_mvim` (`id`, `img`, `sh`) VALUES
(2, '01C02.gif', 0),
(3, '01C03.gif', 0),
(4, '01C01.gif', 1),
(5, '01C05.gif', 1),
(6, '01C06.gif', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_news`
--

CREATE TABLE `b_quiz_1_news` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_news`
--

INSERT INTO `b_quiz_1_news` (`id`, `text`, `sh`) VALUES
(1, 'A教師研習「世界公民生命園丁國內研習會」\r\n1.主辦單位：世界展望會\r\n2.研習日期：101年11月14日（三）～15日（四）\r\n3.詳情請參考：\r\nhttp://gc.worldvision.org.tw/seed.html。\r\n請線上報名。\r\n', 1),
(2, '公告綜合高中一年級英數補救教學時間B\r\n上課日期:10/27.11/3.11/10.11/24共計四次\r\n上課時間:早上8:00~11:50半天\r\n費用:全程免費\r\n參加同學:綜合科一年級第一次段考成績需加強者\r\n已將名單送交各班及導師\r\n參加同學請帶紙筆', 1),
(4, '台灣亞洲藝術文化教育交流學會第一屆年會國際研討會\r\n活動日期：101年3月3～4日(六、日)\r\n活動主題：創造力、文化、全人教育\r\n有意參加者請至http://www.caaetaiwan.org下載報名表', 1),
(5, '11月23日(星期五)將於彰化縣田尾鄉菁芳園休閒農場\r\n舉辦「高中職生涯輔導知能研習」\r\n中區學校每校至多2名\r\n以普通科、專業類科教師優先報名參加\r\n生涯規劃教師次之，參加人員公差假\r\n並核實派代課\r\n當天還有專車接送(8:35前在員林火車站集合)\r\n如', 1),
(6, '台視百萬大明星節目辦理海選活動\r\n時間:101年10月27日下午13時\r\n地點:彰化', 1),
(7, '國立故宮博物院辦理\r\n「商王武丁與后婦好 殷商盛世文化藝術特展」暨\r\n「赫赫宗周 西周文化特展」\r\n', 1),
(8, '財團法人漢光教育基金會\r\n辦理2012「舊愛新歡-古典詩詞譜曲創作暨歌唱表演競賽」\r\n參賽獎金豐厚!!\r\n', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_title`
--

CREATE TABLE `b_quiz_1_title` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_title`
--

INSERT INTO `b_quiz_1_title` (`id`, `img`, `text`, `sh`) VALUES
(6, '01B01.jpg', '科技大學校園資訊系統', 0),
(7, '01B03.jpg', '科技大學校園資訊系統', 0),
(8, '01B03.jpg', '科技大學校園資訊系統', 1),
(9, '01B02.jpg', '科技大學校園資訊系統', 0),
(11, '01B02.jpg', 'hgffyukykjkhk', 0),
(12, '01B03.jpg', '5678', 0),
(13, '01B02.jpg', '9878456153', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `b_quiz_1_total`
--

CREATE TABLE `b_quiz_1_total` (
  `id` int(11) UNSIGNED NOT NULL,
  `total` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `b_quiz_1_total`
--

INSERT INTO `b_quiz_1_total` (`id`, `total`) VALUES
(1, 999);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `b_quiz_1_ad`
--
ALTER TABLE `b_quiz_1_ad`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_admin`
--
ALTER TABLE `b_quiz_1_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_bottom`
--
ALTER TABLE `b_quiz_1_bottom`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_image`
--
ALTER TABLE `b_quiz_1_image`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_menu`
--
ALTER TABLE `b_quiz_1_menu`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_mvim`
--
ALTER TABLE `b_quiz_1_mvim`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_news`
--
ALTER TABLE `b_quiz_1_news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_title`
--
ALTER TABLE `b_quiz_1_title`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `b_quiz_1_total`
--
ALTER TABLE `b_quiz_1_total`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_ad`
--
ALTER TABLE `b_quiz_1_ad`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_admin`
--
ALTER TABLE `b_quiz_1_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_bottom`
--
ALTER TABLE `b_quiz_1_bottom`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_image`
--
ALTER TABLE `b_quiz_1_image`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_menu`
--
ALTER TABLE `b_quiz_1_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_mvim`
--
ALTER TABLE `b_quiz_1_mvim`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_news`
--
ALTER TABLE `b_quiz_1_news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_title`
--
ALTER TABLE `b_quiz_1_title`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `b_quiz_1_total`
--
ALTER TABLE `b_quiz_1_total`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
