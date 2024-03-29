-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 08, 2020 lúc 05:39 PM
-- Phiên bản máy phục vụ: 5.7.32-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `judge_db`
--

-- --------------------------------------------------------
-- -----------------------------------------------------
-- Schema judge_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `judge_db` DEFAULT CHARACTER SET utf8;
USE `judge_db` ;
--
-- Cấu trúc bảng cho bảng `problem`
--

CREATE TABLE `problem` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `statement` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `solution` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `numSolved` int(11) DEFAULT NULL,
  `testPath` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `timeLimit` int(11) NOT NULL,
  `memLimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `problem`
--

INSERT INTO `problem` (`id`, `name`, `statement`, `solution`, `numSolved`, `testPath`, `timeLimit`, `memLimit`) VALUES
(1, 'bài 1', 'a + b bằng mấy', '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 123, '/home/OnlineJudgeSystem/zipped.zip', 2, 10000000),
(2, 'bai ', 'asdads', 'hanh loz	', NULL, '/home/local/Downloads/bd2.png', 5, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `problem_submission`
--

CREATE TABLE `problem_submission` (
  `id` int(11) NOT NULL,
  `id_problem` int(11) NOT NULL,
  `id_submission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `problem_submission`
--

INSERT INTO `problem_submission` (`id`, `id_problem`, `id_submission`) VALUES
(205, 1, 205),
(206, 1, 206),
(207, 1, 207),
(208, 1, 208),
(209, 1, 209),
(210, 1, 210),
(211, 1, 211),
(212, 1, 212),
(213, 1, 213),
(214, 1, 214),
(215, 1, 215),
(216, 1, 216),
(217, 1, 217),
(218, 1, 218),
(219, 1, 219),
(220, 1, 220),
(221, 1, 221),
(222, 1, 222),
(223, 1, 223),
(224, 1, 224),
(225, 1, 225),
(226, 1, 226),
(227, 1, 227),
(228, 1, 228),
(229, 1, 229),
(230, 1, 230),
(231, 1, 231),
(232, 1, 232),
(233, 1, 233),
(234, 1, 234),
(235, 1, 235),
(236, 1, 236),
(237, 1, 237),
(238, 1, 238),
(239, 1, 239),
(240, 1, 240),
(241, 1, 241),
(242, 1, 242),
(243, 1, 243),
(244, 1, 244),
(245, 1, 245),
(246, 1, 246),
(247, 1, 247),
(248, 1, 248),
(249, 1, 249),
(250, 1, 250),
(251, 1, 251),
(252, 1, 252),
(253, 1, 253),
(254, 1, 254),
(255, 1, 255),
(256, 1, 256);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `submission`
--

CREATE TABLE `submission` (
  `id` int(11) NOT NULL,
  `submissionCode` varchar(10000) COLLATE utf8_vietnamese_ci NOT NULL,
  `judgeStatus` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'QUEUE',
  `judgeReport` json DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `judge_core_errors` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `verdict` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `submitTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `submission`
--

INSERT INTO `submission` (`id`, `submissionCode`, `judgeStatus`, `judgeReport`, `user_id`, `judge_core_errors`, `verdict`, `submitTime`) VALUES
(205, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.607\", \"memory\": \"31600\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(206, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.586\", \"memory\": \"31496\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(207, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.595\", \"memory\": \"31696\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(208, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31696\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.591\", \"memory\": \"31696\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(209, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31740\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31740\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31740\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31740\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.586\", \"memory\": \"31740\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(210, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31700\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.003\", \"memory\": \"31700\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31700\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31700\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.531\", \"memory\": \"31700\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(211, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.003\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.581\", \"memory\": \"31744\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(212, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31608\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.003\", \"memory\": \"31608\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31608\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31608\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.529\", \"memory\": \"31608\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(213, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.604\", \"memory\": \"31748\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(214, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.599\", \"memory\": \"31668\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(215, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31384\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31384\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31384\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31384\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.604\", \"memory\": \"31384\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(216, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.605\", \"memory\": \"31492\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(217, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31708\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31708\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31708\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31708\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.602\", \"memory\": \"31708\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(218, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31688\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31688\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31688\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31688\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.608\", \"memory\": \"31688\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(219, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.003\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31668\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.632\", \"memory\": \"31668\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(220, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.003\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.585\", \"memory\": \"31724\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(221, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31568\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31568\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31568\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31568\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.589\", \"memory\": \"31568\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(222, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31500\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31500\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31500\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31500\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.571\", \"memory\": \"31500\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(223, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31508\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31508\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31508\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31508\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.652\", \"memory\": \"31508\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(224, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31560\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31560\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31560\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31560\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.577\", \"memory\": \"31560\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(225, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31564\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31564\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31564\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31564\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.559\", \"memory\": \"31564\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(226, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31628\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31628\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31628\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31628\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.58\", \"memory\": \"31628\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(227, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31592\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31592\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31592\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31592\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.583\", \"memory\": \"31592\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(228, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.003\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.003\", \"memory\": \"31744\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.482\", \"memory\": \"31744\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(229, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.391\", \"memory\": \"31732\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(230, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.001\", \"memory\": \"31756\", \"exitcode\": \"0\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.002\", \"memory\": \"31756\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31756\", \"exitcode\": \"0\", \"judgeVerdict\": null}, {\"time\": \"0.002\", \"memory\": \"31756\", \"exitcode\": \"0\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"0.441\", \"memory\": \"31756\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'WA', '2020-12-08 17:35:21'),
(231, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31772\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31772\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31772\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31772\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.594\", \"memory\": \"31772\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:33'),
(232, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.586\", \"memory\": \"31596\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:33'),
(233, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31644\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31644\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31644\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31644\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.622\", \"memory\": \"31644\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(234, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31556\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31556\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31556\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31556\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.625\", \"memory\": \"31556\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(235, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31684\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31684\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31684\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31684\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.635\", \"memory\": \"31684\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(236, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31760\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31760\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31760\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31760\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.63\", \"memory\": \"31760\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(237, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31732\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.604\", \"memory\": \"31732\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(238, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31680\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31680\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31680\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31680\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.606\", \"memory\": \"31680\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(239, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31716\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31716\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31716\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31716\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.571\", \"memory\": \"31716\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(240, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31492\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.544\", \"memory\": \"31492\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(241, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31496\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.564\", \"memory\": \"31496\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(242, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31464\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31464\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31464\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31464\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.576\", \"memory\": \"31464\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(243, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31392\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31392\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31392\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31392\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.578\", \"memory\": \"31392\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(244, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.495\", \"memory\": \"31600\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(245, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.523\", \"memory\": \"31676\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(246, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.499\", \"memory\": \"31616\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(247, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31600\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.587\", \"memory\": \"31600\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(248, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31616\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.588\", \"memory\": \"31616\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(249, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31624\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31624\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31624\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31624\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.606\", \"memory\": \"31624\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(250, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31712\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31712\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31712\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31712\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.591\", \"memory\": \"31712\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(251, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31544\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31544\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31544\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31544\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.643\", \"memory\": \"31544\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(252, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31612\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31612\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31612\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31612\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.557\", \"memory\": \"31612\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(253, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31676\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.569\", \"memory\": \"31676\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(254, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31596\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.549\", \"memory\": \"31596\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(255, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.003\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31724\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.539\", \"memory\": \"31724\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34'),
(256, '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 'DONE', '{\"tests\": [{\"time\": \"0.002\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.003\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}, {\"time\": \"0.002\", \"memory\": \"31748\", \"exitcode\": \"0\", \"judgeVerdict\": \"AC\"}], \"compile\": {\"time\": \"0.518\", \"memory\": \"31748\", \"status\": null, \"message\": null, \"exitcode\": \"0\", \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL, 'AC', '2020-12-08 17:37:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', 'admin', 'Cuongnm5'),
(2, 'root', 'root', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_problem`
--

CREATE TABLE `user_problem` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_problem` int(11) NOT NULL,
  `id_problem_submission` int(11) NOT NULL,
  `solved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `problem_submission`
--
ALTER TABLE `problem_submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prosub_submission` (`id_submission`),
  ADD KEY `fk_prosub_problem` (`id_problem`);

--
-- Chỉ mục cho bảng `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_submission_user` (`user_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_problem`
--
ALTER TABLE `user_problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_problem` (`id_problem`),
  ADD KEY `id_submission` (`id_problem_submission`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `problem`
--
ALTER TABLE `problem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `problem_submission`
--
ALTER TABLE `problem_submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT cho bảng `submission`
--
ALTER TABLE `submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `problem_submission`
--
ALTER TABLE `problem_submission`
  ADD CONSTRAINT `fk_prosub_problem` FOREIGN KEY (`id_problem`) REFERENCES `problem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prosub_submission` FOREIGN KEY (`id_submission`) REFERENCES `submission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `fk_submission_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_problem`
--
ALTER TABLE `user_problem`
  ADD CONSTRAINT `user_problem_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_problem_ibfk_3` FOREIGN KEY (`id_problem_submission`) REFERENCES `problem_submission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
