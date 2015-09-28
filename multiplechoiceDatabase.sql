-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 28. 09 2015 kl. 12:52:06
-- Serverversion: 5.6.26
-- PHP-version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lr`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer1` varchar(200) NOT NULL,
  `answer2` varchar(200) NOT NULL,
  `answer3` varchar(200) NOT NULL,
  `answer4` varchar(200) NOT NULL,
  `answer5` varchar(200) NOT NULL,
  `correctanswer` int(11) NOT NULL,
  `explanation` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `correctanswer`, `explanation`) VALUES
(1, 'This is a question', 'This is answer 1', 'This is answer 2', 'This is answer 3', 'This is answer 4', 'This is answer 5', 3, 'Because it''s the right answer'),
(2, 'this is another questions', 'this is the right answer', 'this is wrong', 'this is also wrong', 'another wrong answer', 'wrong', 1, 'Because it is'),
(3, 'Are all these answers wrong?', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 4, 'Because it''s not wrong'),
(4, 'hsdfsdf', 'hdfshdsf', 'hdsfshdf', 'hdsfsfhd', 'sdhfhdf', 'hsdfsfd', 4, 'shdfhdfs'),
(5, 'gdsgsadagasg', 'gdsgdsgs', 'ggsddgsg', 'gsgdsgds', 'gsgsdg', 'gsgsgds', 2, 'gsfgsdgsd');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `joined` datetime NOT NULL,
  `email` varchar(320) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `joined`, `email`) VALUES
(84, 'fbdsfmgjnbf', 'a72fb77b0892b52fbc8c76ec74c6bc5ad709032f4d22e9184542f26a09f0191a', '1ÇôrÐàò>¡0k£t3¹¡ÀòÚIEâÌá', '2015-08-11 14:48:14', 'gfasfas@gmail.com'),
(85, 'gsadgsa', 'b7afaad6d266dbe49f38e2fbc573d8bdd103efd17e6d829814ca909aa7ef8337', ' WÍ¸"¨ÝÊ\0±ªº¾°-Õ#_üäÒó\0c6', '2015-08-14 01:25:07', 'gasgsa@msn.dk'),
(86, 'hdfshsdf', '4b4eda91c17ff42aeac6f9e014aa0e8f9563c07ca584c81c88da75900acb8036', '>Ç+¤ã,ë6¶iîC(zh+jw÷&så', '2015-08-14 01:25:57', 'hsdfhfds@msn.com'),
(87, 'hdsfdsf', '7cdb70007e54d49d770db08b3b37747f78e7e5c801b5b5b3589620a451409531', 'Ä,ö¸FáæÏ«¦lk60²ûÝï\\j´>ØÏÚó', '2015-08-14 01:48:22', 'hdsfdsf@msn.com'),
(88, 'hsddfs', '558f533866fc6cc9308ab6f0b8bc344676088e5f618c64a931e6be75b5555a9c', ')^q±5\rW`AªMæ<[Rq7:ÄF-¥', '2015-08-14 01:51:58', 'hdshdsffds@msn.com'),
(89, 'gsdadsa', '75f5899308e134def4c867814082d92ea692d11aaa022997318d9a0397ca36bd', 'Yiæ½{ªô·ôoçTKÁúçL¸ë Mdç''¤', '2015-08-15 22:15:41', 'gssagdgdas@msn.com'),
(90, 'gsadgsd', '1cda816c0a5e2e87fbb1bdac386a208783c670e29d02bcb0c4cf6b5919c8003d', 'ö*©âJì	íMOlÝöa.ÇÔ·ëyühÕ', '2015-08-15 22:17:13', 'sgagsda@msn.com'),
(91, 'gsadgdas', 'd60683f99129ab3243cea93039c54ff4d603606bc1f5e8d78e8a70ae33a33ba5', '¹ý©(|aÐ¬ç%«KþäêÞ²/bSJ!)´ÇØ', '2015-08-15 22:18:28', 'gsadgsadgsad@msn.com'),
(92, 'gsdasagd', '247041b499cdb706adea0464babb0bb874d9eb6d4791bd69efcf1ebfb9f5332c', 'ÐÝè}51M$Üy³ç/¤%yoíÐ´ ¾ûÂ@üÄï', '2015-08-15 22:19:47', 'gsadgds@msn.com'),
(93, 'hfhdsfh', 'e5b015fa8aeb20a747a49bb752de32c09c79760e81e00460a6ddd6bf8521090a', 'ÐH-ÎnW³ëö¯ïÑCÊÜrÞK7@°¨cÉ<', '2015-08-15 22:21:50', 'dhdsdsf@msn.com'),
(94, 'gsdgds', '4264c020c28699661a639f3f69b328d2854d76a19fe4fc1bf44c74734250aff3', ',±ÚîZ®Å½ÇÒÀðRûæ''4²N¸àAîÛ­£', '2015-08-15 22:25:16', 'gsdaggdas@msn.com'),
(95, 'hghgfdg', 'f1f0adf3c5affb88e15d79b5dc2b44eb1690e1b12ea8279ce3e83c849578fc72', 'Å¸h{³aø$(ÙPúÀ \0óëH.X>¤å±Æ', '2015-08-15 22:28:52', 'fasas@msn.com'),
(96, 'gdsagsda', 'ddbff2662abb50e6a7aceeb2f06237f5b6b306efe02d83780bee3e17e05c57d7', 'JLª*%Òe÷=Ø:ç;sÝQg{Bg¬ä$', '2015-08-15 22:36:32', 'gsadgsdagsda@msn.com'),
(97, 'fhddss', '26abbede827decc6abc28465243a8f5aa1db9c6adde8da711947c703685c77d6', 'A''yÙ]ü®[ç¨\\]ÌT$ÀAÀ<ÂïäM', '2015-08-15 22:37:59', 'dhfshds@msn.com'),
(98, 'hdfsdsf', '208005c1ee50be997fc90598155cd2ddb2bf8a2ab226e0e53ab89ad8dd46ee7b', '<È©	\0ÌL,"O³ýC\njCªõfhÆÉ', '2015-08-15 22:39:22', 'hdfdhsf@msn.com'),
(99, 'gsadgsad', '5d85eea6c54a44e7d6c5ff5d17011468f7c08868dee487e950decb607cf73343', 'íØPEG±5Ùç«y''Òk7}°ãnà¯¾ñi', '2015-08-15 22:40:24', 'gsagsd@msn.com'),
(100, 'hghfdfd', '8dd64196610d29a5557cc48d077c581d94f46a8a193a8ac2db4d70eb691d3176', 'c+Ì\\BPKï/n!æQïêPnò$,/³3£Û1Ð', '2015-08-15 22:41:47', 'hdhddsfshfd@msn.com'),
(101, 'hdfshdsd', '3072cbdbd48554f8c7ed67289e4a60c6111adcd127951d44075e2d684e09c6eb', '¬\n¯ÓJJåâ%Ïù¸U]x±¢2#ÆÄÓß\\¦¬qÅ', '2015-08-15 22:43:37', 'gssddssd@msn.com'),
(102, 'sgasdgsad', '5911095d264175e6ecbbd7958c49564106b2d796ba6fefd53f67752448d109f8', '¸2\rß[°Åo·C¸º,%ö.8Æ@g"Ú_N&', '2015-08-15 22:44:53', 'gsdagdsagsda@msn.com'),
(103, 'sdgasdsa', '1c111f7009204ec7c37ae65f590bfa76b9b84829a7debe3544ec2bea789e82c8', 'ÖÍ¶Øð¸¥5©;4(I~S àïA)ÕÐ7wínb¡', '2015-08-15 22:46:59', 'dgsgdgsdds@msn.com'),
(104, 'sadav', '4a83b10e6747407f6faa29cf3838c1ad1a9d9f3f34cdb6a168eae323e53cd641', 'W<<9¥¾h´YY§»9¥yïþ?Æ_ç:C', '2015-08-15 22:50:10', 'sdvsdsd@msn.com'),
(105, 'hsddhds', 'afb9172cbb63ae28af1b15f8c023328e64c209f7ea60a4544a7bfdba677b71c7', '[Ìü÷*~XTþmØ''_cs}»È»\ZéÈ]	øÁ¨', '2015-08-15 22:51:24', 'hdfhsdfhdsf@msn.com'),
(106, 'hsdfhdsf', '2a5a5e736123053a163c45be675f02097e189f6dc2fcbd30611646585c22919e', 'äCÂ\0ëâxrL@µ¸£ã§ñ]ÄÛ"S4V', '2015-08-15 22:52:18', 'hdsfhdsf@msn.com'),
(107, 'sgadsd', '3682a15649ddd8833ac70e5c48623ddaee66bfb8adc99264d366259d12a0a544', '1ºç°FÞ±±ÿ\r³XèAwYçj¸nÓ4Ïµ	&H', '2015-08-15 22:54:50', 'sdgasgad@msn.com'),
(108, 'jfdjfddf', '194989243a725ebe7731306a4a1364c44c16006b87b6ec0a7c88a5bb458911ba', 'UÄWp^JÅÁÓ\n@ÇsÚÌ8gåXêKªeØÌÍ5', '2015-08-15 22:55:58', 'jdfjfdjfd@msn.com'),
(109, 'sgggds', '9cdb7ae4c484570de0fbdd44c28eb63c5fab1c9f2f3b6bdc24df1359ae9362e3', 'bÖ4¬÷}# Jâg¯ú*	éIü¶Ó+@@û', '2015-08-16 16:46:16', 'dsfgf@msn.com'),
(110, 'gagasgsa', 'a18159c9e4f7ed92f2492a53431ef235d5c4b719d95a6d06a60cc2ce6a0e48b6', ' /gàE·&seÝ·ÖÜ°.Ùµ¬÷¼Ä', '2015-08-16 16:46:59', 'sgdasdgasadgsadg@msn.com'),
(111, 'hffhsdhsdfdhsf', '9a557f6872e2a5ba5a3090665191426655122e204d4283186735a24ff56f8cb5', 'üøÛ+kTRåÂ[nÈ3±ÖIÓDR\r/%3l Í', '2015-08-16 16:48:08', 'hdsfhdsfhdsf@msn.com'),
(112, 'asgdsa', '5e797947166b16f6628c2619df1bd3aa80fa1af984da9360766f958b6bdf603a', 'v×åïbíý8Ûn/\nÔ!ú´;OÈnÍ', '2015-09-03 13:45:11', 'gsdagsa@msn.com'),
(113, 'gasddasgdsa', '75de7bdae95408d5441fca222099d83a63af3fd50d33256a1e105549edf9509b', '9)J/qnt<_;dV÷µzlU0Ó:â§ø¨\\ ºC', '2015-09-03 13:47:10', 'dgsdgs@gmail.com'),
(114, 'gsagasd', '07a5fcefd8d753f98f94c8143deab51e8573bb3c6406af40264eb09ba88fb560', '¢>o²Lv¨i÷eÿ-n·F_''döÓ@7ÝùéFÄÜYc©', '2015-09-07 01:45:49', 'gsadgdsfsfs@msn.com'),
(115, 'lasse123', '3843b68543a274752dbb3168ea23bffe5b9ee1daabf18380320e84d7479bda9c', '¯7cwÝòàíDÛÚÒÝÅ\0æý1ôj¢¤«', '0000-00-00 00:00:00', 'lasse123@gmail.com'),
(116, 'testing12345', '94ee8eafcbd7376fbed31494fed8ac4173b7f34a1e9538b92af197cb1e3e978e', 'uU)[üAäô½¯âØ>£àµ=ñ?E@À??F) ', '0000-00-00 00:00:00', 'testing@gmail.dk'),
(117, 'test12345', 'e644246ab4db26886977c7b60e97cc7b4a0a4d9f184cd0517209dad47020c69a', ';½uñüQIG?c?¸Ù?°\Z®?è½4rUÓì$?', '2015-09-14 10:43:54', 'test123145@gmail.com'),
(118, 'testaccount2', 'e37462b8daf42ae1ff8e5522817253e65734f837389087f185b9d8c4a0571d81', '¥Ã¼ ¦Ñ¯TsË(Ü¢?ã?®$ÈV?', '0000-00-00 00:00:00', 'testaccount2@gmail.com'),
(119, 'testingabc', '8a3a62694f7d497b7651650520527c41b20bdbc2be75757419f700cbcb607ad8', '´dz\rõ\\scöÀ¡iûdè²ý4$f¿¦¼îY]', '0000-00-00 00:00:00', 'testingabc@gmail.com'),
(120, 'test123456', 'a392dd7d400848855040b2f03d830cfd4419e4306bd098a56e5ac0ad97ee83c9', '±«ÇúÖ>óÓÞÏ`BçäíXs.T¨Xæ:¥', '0000-00-00 00:00:00', 'test123456@gmail.com'),
(121, 'randomuser', '1de022e89cc756349998fa9773d10077ab64b34360ca5eb7fdb8591b9e49f783', 'K<K«L_Âåî~''ÖZ:g0£Z\Zßð', '0000-00-00 00:00:00', 'randomemail@gmail.com'),
(122, 'testuser5', '59f1dac4f98161dd17cdac2c00b78252d2ce0ee503b726796f7deaa3be4efdb8', '÷¹xâRV;Díò\\#¾Õ­P´üÖtM´}ç00', '0000-00-00 00:00:00', 'testuser5@gmail.com'),
(123, 'testuser3', '0c5ac563776806eff403e6f714827660695fa1573d4802d5cbfe570719a6b634', 'eº½O*|.¡ksPºíhöÏ#¢3à«Eäð^Ã3Ú]', '0000-00-00 00:00:00', 'testuser3@gmail.com');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(1, 3, 'f6a75326340a1c6fa4bd13dcfa28ee5980d38e827801515ad8'),
(3, 9, '047d165e3ff4a0d0794dfb105a4d35d8432c1ff1efe85688be'),
(4, 31, 'ebfca4aab56d7e8ab0ed6ea6898e584eb4953e248ed8eb7690');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- Tilføj AUTO_INCREMENT i tabel `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
