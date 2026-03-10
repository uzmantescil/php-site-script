-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 04 Oca 2020, 04:09:09
-- Sunucu sürümü: 10.3.18-MariaDB
-- PHP Sürümü: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `birlikte_bi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `aid` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `yazar` varchar(255) NOT NULL,
  `sahip` varchar(255) NOT NULL,
  `sene` varchar(255) NOT NULL,
  `adres` text NOT NULL,
  `tel1` varchar(255) NOT NULL,
  `tel2` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `harita` text NOT NULL,
  `js` text NOT NULL,
  `google_font` text NOT NULL,
  `css` text NOT NULL,
  `renk1` varchar(255) NOT NULL,
  `renk2` varchar(255) NOT NULL,
  `telif` varchar(255) NOT NULL,
  `yapimci` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`aid`, `dil`, `baslik`, `logo`, `favicon`, `yazar`, `sahip`, `sene`, `adres`, `tel1`, `tel2`, `fax`, `email`, `harita`, `js`, `google_font`, `css`, `renk1`, `renk2`, `telif`, `yapimci`, `link`) VALUES
(2, 1, 'Ayarlar', 'sss.png', 'ad55d1b57a0f2f9b1205156cd50a7bb51143469801.png', '', '', '(c) 2018', 'adresiniz', '0123 456 78 90', '0123 456 78 90', '0123 456 78 90', 'mail@siteadresi.com', ' <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3195.078155483977!2d31.435721015289726!3d36.792676479950224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14c359d3c78d96cf%3A0x987f1614a69a3ebb!2sMilli+Egemenlik+Mahallesi%2C+9003.+Sk.%2C+07600+Manavgat%2FAntalya!5e0!3m2!1str!2str!4v1529415015138\" width=\"100%\" height=\"400\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>        ', '        ', '<link href=\"https://fonts.googleapis.com/css?family=Exo+2\" rel=\"stylesheet\">     ', 'body {\r\n	font-family: \'Exo 2\', sans-serif;\r\n\r\n} \r\nh1,h2,h3,h4,h5 {\r\nfont-family: \'Exo 2\', sans-serif;\r\n\r\n\r\n}       ', '#ffb204', '#33363d', '(c) 2020 TÃ¼m haklarÄ± saklÄ±dÄ±r', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `ozet` text NOT NULL,
  `icerik` text NOT NULL,
  `tarih` varchar(255) NOT NULL,
  `yazar` varchar(255) NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`blog_id`, `dil`, `resim`, `baslik`, `ozet`, `icerik`, `tarih`, `yazar`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(2, 1, 'ffa072920d43fc98556a0ddf63f450241815124965.jpg', 'Mobilya seÃ§imleri nasÄ±l olmalÄ±?', 'Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ±...', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-06-27', 'YÃ¶netici', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'mobilya-secimleri-nasil-olmali'),
(3, 1, '41c2d888fafadd24b734328951f9c8f91961245752.jpg', 'Kaliteli iÅŸÃ§ilik nasÄ±l anlaÅŸÄ±lÄ±r?', 'Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ±...', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-05-24', 'YÃ¶netici', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'kaliteli-iscilik-nasil-anlasilir'),
(4, 1, 'c962cf54ff454204690aa8e67f5703c91047797480.jpg', 'Uzun Ã¶mÃ¼rlÃ¼ Ã¼rÃ¼n tercihi', 'Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ±...', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-06-27', 'YÃ¶netici', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'uzun-omurlu-urun-tercihi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolgeler`
--

CREATE TABLE `bolgeler` (
  `bolge_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bolgeler`
--

INSERT INTO `bolgeler` (`bolge_id`, `dil`, `baslik`, `icerik`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(1, 1, 'Adana', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'adana'),
(2, 1, 'Afyon', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'afyon'),
(3, 1, 'Ä°stanbul', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'istanbul'),
(4, 1, 'Ankara', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'ankara'),
(5, 1, 'Antalya', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'antalya'),
(6, 1, 'Ä°zmir', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'izmir'),
(7, 1, 'Mersin', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'mersin'),
(8, 1, 'Kocaeli', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'kocaeli'),
(9, 1, 'Trabzon', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'trabzon'),
(10, 1, 'Rize', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'rize'),
(11, 1, 'Erzurum', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'erzurum'),
(12, 1, 'Manisa', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'manisa'),
(13, 1, 'Manavgat', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'manavgat'),
(14, 1, 'Alanya', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'alanya'),
(15, 1, 'GazipaÅŸa', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'gazipasa'),
(16, 1, 'BeyoÄŸlu', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'beyoglu'),
(17, 1, 'KÃ¼Ã§Ã¼kÃ§ekmece', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'kucukcekmece'),
(18, 1, 'ÃœskÃ¼dar', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'uskudar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diller`
--

CREATE TABLE `diller` (
  `id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `dil` varchar(255) NOT NULL,
  `dil_baslik` varchar(255) NOT NULL,
  `anasayfa_title` varchar(255) NOT NULL,
  `anasayfa_desc` varchar(255) NOT NULL,
  `anasayfa_keyw` varchar(255) NOT NULL,
  `ekibimiz_title` varchar(255) NOT NULL,
  `ekibimiz_desc` varchar(255) NOT NULL,
  `ekibimiz_keyw` varchar(255) NOT NULL,
  `sss_title` varchar(255) NOT NULL,
  `sss_desc` varchar(255) NOT NULL,
  `sss_keyw` varchar(255) NOT NULL,
  `hizmetler_title` varchar(255) NOT NULL,
  `hizmetler_desc` varchar(255) NOT NULL,
  `hizmetler_keyw` varchar(255) NOT NULL,
  `galeri_title` varchar(255) NOT NULL,
  `galeri_desc` varchar(255) NOT NULL,
  `galeri_keyw` varchar(255) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `menu_desc` varchar(255) NOT NULL,
  `menu_keyw` varchar(255) NOT NULL,
  `paket_title` varchar(255) NOT NULL,
  `paket_desc` varchar(255) NOT NULL,
  `paket_keyw` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_desc` varchar(255) NOT NULL,
  `blog_keyw` varchar(255) NOT NULL,
  `iletisim_title` varchar(255) NOT NULL,
  `iletisim_desc` varchar(255) NOT NULL,
  `iletisim_keyw` varchar(255) NOT NULL,
  `rez_title` varchar(255) NOT NULL,
  `res_desc` varchar(255) NOT NULL,
  `rez_keyw` varchar(255) NOT NULL,
  `oda_title` varchar(255) NOT NULL,
  `oda_desc` varchar(255) NOT NULL,
  `oda_keyw` varchar(255) NOT NULL,
  `anasayfa` varchar(255) NOT NULL,
  `kurumsal` varchar(255) NOT NULL,
  `urunler` varchar(255) NOT NULL,
  `projeler` varchar(255) NOT NULL,
  `hizmetler` varchar(255) NOT NULL,
  `galeri` varchar(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `paketler` varchar(255) NOT NULL,
  `blog` varchar(255) NOT NULL,
  `rezervasyon` varchar(255) NOT NULL,
  `odalar` varchar(255) NOT NULL,
  `iletisim` varchar(255) NOT NULL,
  `ekibimiz` varchar(255) NOT NULL,
  `sss` varchar(255) NOT NULL,
  `incele` varchar(30) NOT NULL,
  `projeler_baslik` varchar(30) NOT NULL,
  `projeler_aciklama` longtext NOT NULL,
  `blog_baslik` varchar(30) NOT NULL,
  `duyurular` varchar(30) NOT NULL,
  `referanslar_baslik` varchar(30) NOT NULL,
  `referanslar_aciklama` longtext NOT NULL,
  `ekibimiz_baslik` varchar(30) NOT NULL,
  `ekibimiz_aciklama` longtext NOT NULL,
  `paketler_baslik` varchar(30) NOT NULL,
  `paket_aciklama` longtext NOT NULL,
  `bilgi_al` varchar(30) NOT NULL,
  `menu_baslik` varchar(30) NOT NULL,
  `menu_aciklama` longtext NOT NULL,
  `bolgeler_baslik` varchar(30) NOT NULL,
  `bolgeler_aciklama` longtext NOT NULL,
  `footer_baslik` varchar(30) NOT NULL,
  `footer_aciklama` longtext NOT NULL,
  `footer_linkler` varchar(30) NOT NULL,
  `footer_blog` varchar(30) NOT NULL,
  `footer_iletisim` varchar(30) NOT NULL,
  `urun_kodu` varchar(30) NOT NULL,
  `fiyat` varchar(30) NOT NULL,
  `urun_bilgisi` varchar(30) NOT NULL,
  `benzer_urunler` varchar(30) NOT NULL,
  `proje_bilgileri` varchar(30) NOT NULL,
  `proje_sahibi` varchar(30) NOT NULL,
  `baslangic` varchar(30) NOT NULL,
  `bitis` varchar(30) NOT NULL,
  `diger_projeler` varchar(30) NOT NULL,
  `rezervasyon_baslik` varchar(30) NOT NULL,
  `rezervasyon_aciklama` longtext NOT NULL,
  `rezervasyon_isim_soyisim` varchar(30) NOT NULL,
  `rezervasyon_telefon` varchar(30) NOT NULL,
  `rezervasyon_kisi` varchar(30) NOT NULL,
  `rezervasyon_mesaj` varchar(100) NOT NULL,
  `rezervasyon_buton` varchar(30) NOT NULL,
  `ozellikler` varchar(30) NOT NULL,
  `iletisim_formu` varchar(30) NOT NULL,
  `iletisim_bilgileri` varchar(30) NOT NULL,
  `konum` varchar(30) NOT NULL,
  `isim_soyisim` varchar(30) NOT NULL,
  `telefon` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mesaj` varchar(255) NOT NULL,
  `gonder` varchar(30) NOT NULL,
  `iletisim_not` longtext NOT NULL,
  `iletildi` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `diller`
--

INSERT INTO `diller` (`id`, `durum`, `dil`, `dil_baslik`, `anasayfa_title`, `anasayfa_desc`, `anasayfa_keyw`, `ekibimiz_title`, `ekibimiz_desc`, `ekibimiz_keyw`, `sss_title`, `sss_desc`, `sss_keyw`, `hizmetler_title`, `hizmetler_desc`, `hizmetler_keyw`, `galeri_title`, `galeri_desc`, `galeri_keyw`, `menu_title`, `menu_desc`, `menu_keyw`, `paket_title`, `paket_desc`, `paket_keyw`, `blog_title`, `blog_desc`, `blog_keyw`, `iletisim_title`, `iletisim_desc`, `iletisim_keyw`, `rez_title`, `res_desc`, `rez_keyw`, `oda_title`, `oda_desc`, `oda_keyw`, `anasayfa`, `kurumsal`, `urunler`, `projeler`, `hizmetler`, `galeri`, `menu`, `paketler`, `blog`, `rezervasyon`, `odalar`, `iletisim`, `ekibimiz`, `sss`, `incele`, `projeler_baslik`, `projeler_aciklama`, `blog_baslik`, `duyurular`, `referanslar_baslik`, `referanslar_aciklama`, `ekibimiz_baslik`, `ekibimiz_aciklama`, `paketler_baslik`, `paket_aciklama`, `bilgi_al`, `menu_baslik`, `menu_aciklama`, `bolgeler_baslik`, `bolgeler_aciklama`, `footer_baslik`, `footer_aciklama`, `footer_linkler`, `footer_blog`, `footer_iletisim`, `urun_kodu`, `fiyat`, `urun_bilgisi`, `benzer_urunler`, `proje_bilgileri`, `proje_sahibi`, `baslangic`, `bitis`, `diger_projeler`, `rezervasyon_baslik`, `rezervasyon_aciklama`, `rezervasyon_isim_soyisim`, `rezervasyon_telefon`, `rezervasyon_kisi`, `rezervasyon_mesaj`, `rezervasyon_buton`, `ozellikler`, `iletisim_formu`, `iletisim_bilgileri`, `konum`, `isim_soyisim`, `telefon`, `email`, `mesaj`, `gonder`, `iletisim_not`, `iletildi`, `target`) VALUES
(1, 1, 'TR', 'TÃ¼rkÃ§e', 'Anasayfa', 'Anasayfa AÃ§Ä±klama', 'Anasayfa aratma kelimeleri', 'Ekibimiz', '', '', 'SÄ±kÃ§a Sorulan Sorular', '', '', 'Hizmetlerimiz', '', '', 'FotoÄŸraf ve Video Galerisi', '', '', 'MenÃ¼mÃ¼z', '', '', 'Paketler', '', '', 'Blog', '', '', 'Ä°letiÅŸim', '', '', 'Rezervasyon', '', '', 'Odalar', '', '', 'ANASAYFA', 'KURUMSAL', 'ÃœRÃœNLER', 'PROJELER', 'HÄ°ZMETLER', 'GALERÄ°', 'MENÃœMÃœZ', 'PAKETLER', 'BLOG', 'REZERVASYON', 'ODALAR', 'Ä°LETÄ°ÅžÄ°M', 'EKÄ°BÄ°MÄ°Z', 'SIKÃ‡A SORULANLAR', 'Ä°NCELE', 'ÃœRÃœNLERÄ°MÄ°Z', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'SON YAZILAR', 'MÃœÅžTERÄ° YORUMLARI', 'MARKALARIMIZ', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'EKÄ°BÄ°MÄ°Z', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'PAKETLER', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'BÄ°LGÄ° AL', 'MENÃœMÃœZ', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'HÄ°ZMET BÃ–LGELERÄ°MÄ°Z', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'HakkÄ±mÄ±zda', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'KÄ±sayol BaÄŸlantÄ±larÄ±', 'Son YazÄ±lar', 'Ä°letiÅŸim Bilgilerimiz', 'ÃœRÃœN KODU', 'FÄ°YAT', 'ÃœRÃœN BÄ°LGÄ°SÄ°', 'BENZER ÃœRÃœNLER', 'PROJE BÄ°LGÄ°LERÄ°', 'PROJE SAHÄ°BÄ°', 'BAÅžLANGIÃ‡ TARÄ°HÄ°', 'BÄ°TÄ°Åž TARÄ°HÄ°', 'DÄ°ÄžER PROJELERÄ°MÄ°Z', 'REZERVASYON', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', 'AdÄ±nÄ±z ve SoyadÄ±nÄ±z', 'Ä°letiÅŸim NumaranÄ±z', 'KiÅŸi SayÄ±sÄ±', 'Ã–zel bir mesajÄ±nÄ±z varsa lÃ¼tfen belirtiniz', 'REZERVASYONU TAMAMLA', 'Ã–ZELLÄ°KLER', 'Ä°letiÅŸim Formu', 'Ä°letiÅŸim Bilgilerimiz', 'Konum', 'AdÄ±nÄ±z ve SoyadÄ±nÄ±z', 'Telefon NumaranÄ±z', 'Email Adresiniz', 'Size nasÄ±l yardÄ±mcÄ± olabiliriz?', 'Ä°LETÄ°ÅžÄ°ME GEÃ‡', 'Ä°letiÅŸim not alanÄ±', 'Tebrikler iÅŸleminiz baÅŸarÄ± ile gerÃ§ekleÅŸti.', 'PROJEYÄ° GÃ–R'),
(2, 0, 'EN', 'English', 'Homepage', '', '', 'Our Team', '', '', 'FAQ', '', '', 'Services', '', '', 'Gallery', '', '', 'Our Menu', '', '', 'Packets', '', '', 'Blog', '', '', 'Contact', '', '', 'Reservation', '', '', 'Rooms', '', '', 'HOME', 'CORPORATE', 'PRODUCTS', 'PROJECT', 'SERVICES', 'GALLERY', 'OSUR MENU', 'PACKETS', 'BLOG', 'REZERVATION', 'ROOMS', 'CONTACT', 'TEAM', 'FAQ', 'DETAIL', 'PROJECTS', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'BLOG', 'ANNOUNCEMENT', 'OUR PARTNERS', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'OUR TEAM', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'PACKETS', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'DETAIL', 'OUR MENU', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'SERVICE REGIONS', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'About us', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'LÄ°NKS', 'BLOG', 'CONTACT', 'PRODUCT CODE', 'PRICE', 'PRODUCT INFO', 'SIMILAR PRODUCTS', 'PROJECT INFORMATION', 'PROJECT OWNER', 'STARTING DATE', 'END DATE', 'OTHER PROJECTS', 'RESERVATION', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'Name and surname', 'Phone Number', 'Number of Persons', 'Please specify if you have a p', 'COMPLETE THE RESERVATION', 'FEATURES', 'CONTACT FORM', 'CONTACT INFO', 'MAP', 'Name and surname', 'Phone', 'Email', 'Messages', 'SEND', 'Contact Note', 'Your congratulations have been', 'PROJECT VIEW');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `i_d` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `yazan` varchar(255) NOT NULL,
  `unvan` varchar(255) NOT NULL,
  `icerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ekip`
--

CREATE TABLE `ekip` (
  `id` int(11) NOT NULL,
  `anasayfa` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `isim` varchar(255) NOT NULL,
  `unvan` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ekip`
--

INSERT INTO `ekip` (`id`, `anasayfa`, `resim`, `isim`, `unvan`, `telefon`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`) VALUES
(1, 1, 'dafaccbe8bf8871106c6f962d86d6acf837624837.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(2, 1, '3fd7693c1ef49902cf2d276d291212f81544097194.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(3, 1, '3fd7693c1ef49902cf2d276d291212f81976192202.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(4, 1, '3fd7693c1ef49902cf2d276d291212f8128727887.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(5, 1, '3fd7693c1ef49902cf2d276d291212f8402887969.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(6, 1, '3fd7693c1ef49902cf2d276d291212f8285930757.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(7, 1, '3fd7693c1ef49902cf2d276d291212f81566698600.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(8, 1, '3fd7693c1ef49902cf2d276d291212f81657737645.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(9, 1, '3efde7b4a9f47f103287e284875d993b1537615742.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(10, 1, '3efde7b4a9f47f103287e284875d993b548615171.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(11, 1, '3efde7b4a9f47f103287e284875d993b1666273343.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(12, 1, '3efde7b4a9f47f103287e284875d993b1181412326.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(13, 1, '3efde7b4a9f47f103287e284875d993b174506106.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(14, 1, '3efde7b4a9f47f103287e284875d993b103931831.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#'),
(15, 1, '3efde7b4a9f47f103287e284875d993b1022259233.jpg', 'BuÄŸra KÃ¼Ã§Ã¼kfarsak', 'YazÄ±lÄ±m GeliÅŸtirici', '05326774822', 'm7ajans@gmail.com', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `video` int(11) NOT NULL,
  `kod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `dil`, `baslik`, `resim`, `video`, `kod`) VALUES
(1, 1, 'Galeri Resmi', 'faa2af680a54bb8651e1200bf78b1ca6689708423.jpg', 0, ''),
(2, 1, 'Galeri Resmi	', '5b44ac62d244969bdee89aef560e8e26569038270.jpg', 0, ''),
(3, 1, 'Galeri Resmi	', '02f50da72b9f45f41198ba8672a96775673212517.jpg', 0, ''),
(4, 1, 'Galeri Resmi	', '3a7a7e6aea38bc1d13175be785ac0e3c558674874.jpg', 0, ''),
(5, 1, 'Galeri Resmi	', '696ebcd4ed5009abd93d88d373fbdc951009849660.jpg', 0, ''),
(6, 1, 'Galeri Resmi	', 'f21852634bdb1d779dba199d6584af7e72741735.jpg', 0, ''),
(7, 1, 'Video', 'f6450c5824938059d36f14d9d3abe11d918717509.jpg', 1, '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/yguBvpU3KwQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(8, 1, 'Video', 'df6b5884ced28743f149d8706e3981f41533291898.jpg', 1, '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/yguBvpU3KwQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE `hizmetler` (
  `hizmet_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `anasayfa` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `ozet` text NOT NULL,
  `icerik` text NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`hizmet_id`, `dil`, `anasayfa`, `resim`, `baslik`, `ozet`, `icerik`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(4, 1, 1, '8bdcbdeb76533328a3bf147e9e85ca371717075559.png', 'En yeni modeller', 'Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'en-yeni-modeller'),
(5, 1, 1, '4c76ef010d63fbf4d055058cdec8d831870324848.png', 'Kaliteli ÃœrÃ¼nler', 'Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'kaliteli-urunler'),
(6, 1, 1, 'ecbaef6533c281fd2f07b9bc3fb530de1432486927.png', 'Ekonomik Ã‡Ã¶zÃ¼mler', 'Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak Ã¼zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500\'lerden beri endÃ¼stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'ekonomik-cozumler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `klavuz`
--

CREATE TABLE `klavuz` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `klavuz`
--

INSERT INTO `klavuz` (`id`, `baslik`, `icerik`) VALUES
(1, 'Slaytlar', '<p>Slaytlar men&uuml;s&uuml;ne tÄ±kladÄ±ktan sonra <strong>EKLE</strong> butonuna tÄ±klayÄ±n.</p>\n\n<p><strong>1 -&nbsp;Aktif edilsin mi?</strong><br />\nBu se&ccedil;enek slaytlarÄ±n web sitenizde g&ouml;sterilmesi&nbsp;yada g&ouml;sterilmemesi iÅŸlevini yerine getirir.&nbsp;&nbsp;</p>\n\n<p><strong>2 - Dil Se&ccedil;imi</strong><br />\nBu se&ccedil;enek ile eklenecek olan slayt i&ccedil;erÄŸinin hangi dilde olacaÄŸÄ±nÄ± belirlersiniz.&nbsp;</p>\n\n<p><strong>3 - Resim</strong><br />\nBu se&ccedil;enek slayt g&ouml;rselinizdir. EkleyeceÄŸiniz slaytÄ±n &ouml;nerilen &ouml;l&ccedil;&uuml;leri <span style=\"color:#e74c3c\"><strong>1920*750px</strong></span>&#39;dir</p>\n\n<p><strong>4 - BaÅŸlÄ±k</strong><br />\nEkleyeceÄŸiniz slaytÄ±n web sitesindeki baÅŸlÄ±ÄŸÄ±dÄ±r. Kullanmak istemiyorsanÄ±z boÅŸ bÄ±rakabilirsiniz.</p>\n\n<p><strong>5 - Alt BaÅŸlÄ±k</strong><br />\nEkleyeceÄŸiniz slaytÄ±n web sitesindeki alt baÅŸlÄ±ÄŸÄ±dÄ±r. &Ccedil;ok uzun olmamak ÅŸartÄ± ile kÄ±sa a&ccedil;Ä±klamalar ekleyebilirsiniz. Kullanmak istemiyorsanÄ±z boÅŸ bÄ±rakabilirsiniz.</p>\n\n<p><strong>6 - Buton BaÅŸlÄ±ÄŸÄ±</strong><br />\nEkleyeceÄŸiniz slayta link eklemek isterseniz eklediÄŸiniz linke baÅŸlÄ±k olarak belirtebileceÄŸiniz alandÄ±r.&nbsp;</p>\n\n<p><strong>7 - Link</strong><br />\nEkleyeceÄŸiniz linkin direk urlsini girebilirsiniz. (http://www.site.com)&nbsp;</p>\n'),
(3, 'Sayfalar', '<p><strong>Bu alan web sitenizde kurumsal adÄ± altÄ±nda yayÄ±nlanmaktadÄ±r.&nbsp;</strong></p>\n\n<p><strong>1 - Dil Se&ccedil;imi</strong><br />\nEkleyeceÄŸiniz sayfanÄ±n hangi dilde olduÄŸunu belirlersiniz.</p>\n\n<p><strong>2 -&nbsp;Kurumsal&#39;da g&ouml;ster</strong><br />\nBu se&ccedil;enek ile ekleyeceÄŸiniz sayfayÄ± kurumsal men&uuml;s&uuml;nde g&ouml;sterebilirsiniz.</p>\n\n<p><strong>3 -&nbsp;Footer&#39;da g&ouml;ster</strong><br />\nBu se&ccedil;enek ile ekleyeceÄŸiniz sayfayÄ± web sitenizin en alt kÄ±smÄ±nda bulunan footer linklerinde&nbsp;g&ouml;sterebilirsiniz.</p>\n\n<p><strong>4 -&nbsp;Resim</strong><br />\nBu alan ile ekleyeceÄŸiniz sayfanÄ±n g&ouml;rselini belirlersiniz. &Ouml;nerilen resim &ouml;l&ccedil;&uuml;leri <span style=\"color:#e74c3c\"><strong>500*300px</strong></span>&#39;dir.</p>\n\n<p><strong>5 -&nbsp;Sayfa AdÄ±</strong><br />\nBu se&ccedil;enek ile ekleyeceÄŸiniz sayfanÄ±n baÅŸlÄ±ÄŸÄ±nÄ± belirlersiniz.</p>\n\n<p><strong>6 -&nbsp;Sayfa i&ccedil;eriÄŸi</strong><br />\nBu se&ccedil;enek ile ekleyeceÄŸiniz sayfanÄ±n i&ccedil;eriÄŸini bu alana kayÄ±t edersiniz. GeliÅŸmiÅŸ CKEDITOR ile i&ccedil;eriklerinize extra resimler, renk, link gibi&nbsp;&ouml;zellikleri katabilirsiniz.</p>\n\n<p><strong>7- Seo BaÅŸlÄ±k</strong><br />\nBu se&ccedil;enek sayfanÄ±zÄ±n tarayÄ±cÄ± &uuml;zerinde g&ouml;r&uuml;nen baÅŸlÄ±ÄŸÄ±dÄ±r. Arama motorlarÄ± tarafÄ±ndan sayfanÄ±zÄ±n baÅŸlÄ±ÄŸÄ± buradan &ccedil;ekilir.</p>\n\n<p><strong>8- Seo A&ccedil;Ä±klama</strong><br />\nBu se&ccedil;enek arama motorlarÄ± i&ccedil;in&nbsp;sayfanÄ±z hakkÄ±nda kÄ±sa bir a&ccedil;Ä±klama girmenize olanak saÄŸlar. Ve arama motorlarÄ± tarafÄ±ndan g&ouml;r&uuml;nt&uuml;lenir.</p>\n\n<p><strong>7- Aratma kelimeleri</strong><br />\nBu se&ccedil;enek sayfanÄ±zÄ±n arama motorlarÄ± i&ccedil;in anahtar kelimeleri girmenizi saÄŸlar. Aratmalarda &ccedil;Ä±kmak istediÄŸiniz kelimeleri yada c&uuml;mleleri bu alana aralarÄ±na&nbsp;virg&uuml;l (,) koyarak yazabilirsiniz. &Ouml;rnek; Manavgat web tasarÄ±m, manavgat web, manavgat web sitesi, manavgat web tasarÄ±mcÄ± gibi..</p>\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menuler`
--

CREATE TABLE `menuler` (
  `menu_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `fiyat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menuler`
--

INSERT INTO `menuler` (`menu_id`, `dil`, `kategori`, `resim`, `baslik`, `aciklama`, `fiyat`) VALUES
(1, 1, 1, '2a75c6428098ad31cdc4309833f077e21025773158.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(2, 1, 1, '2a75c6428098ad31cdc4309833f077e21408851073.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(3, 1, 1, '2a75c6428098ad31cdc4309833f077e22109887719.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(4, 1, 2, '2a75c6428098ad31cdc4309833f077e21273083816.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(5, 1, 2, '2a75c6428098ad31cdc4309833f077e21218768087.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(6, 1, 3, '78a779e50eaf6804f90b84d24ba8509d568127952.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(7, 1, 3, '78a779e50eaf6804f90b84d24ba8509d40967926.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(8, 1, 3, '78a779e50eaf6804f90b84d24ba8509d1121257973.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(9, 1, 4, '78a779e50eaf6804f90b84d24ba8509d1782321395.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(10, 1, 4, '78a779e50eaf6804f90b84d24ba8509d1095802768.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º'),
(11, 1, 1, '78a779e50eaf6804f90b84d24ba8509d747718933.jpg', 'BaÅŸlÄ±k', 'Lorem Ipsum, dizgi ve baskÄ± endÃ¼strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir.', '15â‚º');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_kategori`
--

CREATE TABLE `menu_kategori` (
  `kategori_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `kategori_baslik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menu_kategori`
--

INSERT INTO `menu_kategori` (`kategori_id`, `dil`, `kategori_baslik`) VALUES
(1, 1, 'Ä°Ã§ecekler'),
(2, 1, 'Ã‡orbalar'),
(3, 1, 'Izgaralar'),
(4, 1, 'Pideler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odalar`
--

CREATE TABLE `odalar` (
  `oda_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `fiyat` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `ozellik` text NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `odalar`
--

INSERT INTO `odalar` (`oda_id`, `dil`, `resim`, `baslik`, `fiyat`, `icerik`, `ozellik`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(1, 1, 'b952956ca549c65ce0f1520e22cc264c655813411.jpg', 'Ã‡ift KiÅŸilk Oda', '150â‚º', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', '', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'cift-kisilk-oda'),
(2, 2, 'af5863a537dcf0a937a850ae9554e9c7763799726.jpg', 'Ã‡ift KiÅŸilk Oda 2', '150â‚º', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'Tv, BuzdolabÄ±, Balkon, KahvaltÄ±, Havuz, DuÅŸ, Havlu', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'cift-kisilk-oda-2'),
(3, 1, 'af5863a537dcf0a937a850ae9554e9c7410694541.jpg', 'Ã‡ift KiÅŸilk Oda 1', '150â‚º', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'Tv, BuzdolabÄ±, Balkon, KahvaltÄ±, Havuz, DuÅŸ, Havlu', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'cift-kisilk-oda-1'),
(4, 1, 'af5863a537dcf0a937a850ae9554e9c71860038576.jpg', 'Ã‡ift KiÅŸilk Oda', '150â‚º', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'Tv, BuzdolabÄ±, Balkon, KahvaltÄ±, Havuz, DuÅŸ, Havlu', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'cift-kisilk-oda'),
(5, 1, 'af5863a537dcf0a937a850ae9554e9c71801678767.jpg', 'Ã‡ift KiÅŸilk Oda', '150â‚º', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'Tv, BuzdolabÄ±, Balkon, KahvaltÄ±, Havuz, DuÅŸ, Havlu', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'cift-kisilk-oda');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oda_resimleri`
--

CREATE TABLE `oda_resimleri` (
  `oda_resim_id` int(11) NOT NULL,
  `oda` int(11) NOT NULL,
  `resimler` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `oda_resimleri`
--

INSERT INTO `oda_resimleri` (`oda_resim_id`, `oda`, `resimler`) VALUES
(1, 1, '7d77bb080c0e0a521eb80bf543177ed2348146412.jpg'),
(2, 2, 'b40a3b3f7d4ac8d019c0fa93599a98811900476943.jpg'),
(3, 3, 'b40a3b3f7d4ac8d019c0fa93599a98811416647553.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paketler`
--

CREATE TABLE `paketler` (
  `paket_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `fiyat` varchar(255) NOT NULL,
  `sure` varchar(255) NOT NULL,
  `bir` varchar(255) NOT NULL,
  `iki` varchar(255) NOT NULL,
  `uc` varchar(255) NOT NULL,
  `dort` varchar(255) NOT NULL,
  `bes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `paketler`
--

INSERT INTO `paketler` (`paket_id`, `dil`, `baslik`, `aciklama`, `fiyat`, `sure`, `bir`, `iki`, `uc`, `dort`, `bes`) VALUES
(2, 1, 'BAÅžLANGIÃ‡ PAKETÄ°', 'KÃ¼Ã§Ã¼k iÅŸletmeler iÃ§in uygun', '199â‚º', 'YIL', '1 Adet Domain (Com,Net,Org)', '1 GB Hosting', '10 GB AylÄ±k Trafik', '1 Adet Email HesabÄ±', '1 Adet MySQL VeritabanÄ±'),
(3, 1, 'STANDART PAKET', 'Orta Ã¶lÃ§ekli iÅŸletmeler iÃ§in uygun', '499â‚º', 'YIL', '1 Adet Domain (Com,Net,Org)', '5 GB Hosting', '50 GB AylÄ±k Trafik', '5 Adet Email HesabÄ±', '5 Adet MySQL VeritabanÄ±'),
(4, 1, 'KURUMSAL PAKET', 'Kurumsal iÅŸletmeler iÃ§in uygun', '999â‚º', 'YIL', '1 Adet Domain (Com,Net,Org)', '20 GB Hosting', '100 GB AylÄ±k Trafik', 'SÄ±nÄ±rsÄ±z Email HesabÄ±', 'SÄ±nÄ±rsÄ±z  MySQL VeritabanÄ±');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projeler`
--

CREATE TABLE `projeler` (
  `proje_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `anasayfa` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `proje_sahibi` varchar(255) NOT NULL,
  `baslangic` varchar(255) NOT NULL,
  `bitis` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `projeler`
--

INSERT INTO `projeler` (`proje_id`, `dil`, `kategori`, `anasayfa`, `resim`, `baslik`, `icerik`, `proje_sahibi`, `baslangic`, `bitis`, `link`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(1, 1, 1, 1, '289fd76401aeefd10733f2494f182fd01468110799.jpg', 'Deneme Proje 1', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(2, 1, 2, 1, '289fd76401aeefd10733f2494f182fd01398759092.jpg', 'Deneme Proje 2', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje-2'),
(3, 1, 3, 1, '289fd76401aeefd10733f2494f182fd01164231575.jpg', 'Deneme Proje 3', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje-3'),
(4, 1, 1, 1, '289fd76401aeefd10733f2494f182fd0563412295.jpg', 'Deneme Proje 4', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje4'),
(5, 1, 2, 1, '289fd76401aeefd10733f2494f182fd01772132221.jpg', 'Deneme Proje 5', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje5'),
(6, 1, 3, 1, 'c9c1575b24dead42db7d905df29a310921920660.jpg', 'Deneme Proje 6', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(7, 1, 1, 1, 'c9c1575b24dead42db7d905df29a3109220453974.jpg', 'Deneme Proje 7', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(8, 2, 5, 1, 'c9c1575b24dead42db7d905df29a31091063434639.jpg', 'Deneme Proje 8', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(9, 2, 6, 1, 'c9c1575b24dead42db7d905df29a31091042909055.jpg', 'Deneme Proje 9', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(10, 2, 4, 1, 'c9c1575b24dead42db7d905df29a31091412465061.jpg', 'Deneme Proje 10', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(11, 2, 5, 1, 'c9c1575b24dead42db7d905df29a3109760068787.jpg', 'Deneme Proje 11', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(12, 2, 6, 1, '2c29bdafe813863f253b53abf6ca536e635710726.jpg', 'Deneme Proje 12', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(13, 2, 4, 1, '2c29bdafe813863f253b53abf6ca536e1945871972.jpg', 'Deneme Proje 13', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje'),
(14, 2, 5, 1, '2c29bdafe813863f253b53abf6ca536e1963247740.jpg', 'Deneme Proje 14', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'MRH Ä°NÅžAAT', '2018-05-27', '2018-06-26', '#', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'deneme-proje');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_kategori`
--

CREATE TABLE `proje_kategori` (
  `kategori_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `kategori_baslik` varchar(255) NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `proje_kategori`
--

INSERT INTO `proje_kategori` (`kategori_id`, `dil`, `kategori_baslik`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(1, 1, 'Tamamlanan Projeler', 'Tamamlanan Projeler', 'Tamamlanan Projeler', 'Tamamlanan Projeler', 'tamamlanan-projeler'),
(2, 1, 'Devameden Projeler', 'Devameden Projeler', 'Devameden Projeler', 'Devameden Projeler', 'devameden-projeler'),
(3, 1, 'Gelecek Projeler', 'Gelecek Projeler', 'Gelecek Projeler', 'Gelecek Projeler', 'gelecek-projeler'),
(4, 2, 'Completed Projects', 'Completed Projects', 'Completed Projects', 'Completed Projects', 'completed-projects'),
(5, 2, 'Ongoing projects', 'Ongoing projects', 'Ongoing projects', 'Ongoing projects', 'ongoing-projects'),
(6, 2, 'Future Projects', 'Future Projects', 'Future Projects', 'Future Projects', 'future-projects');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_resimleri`
--

CREATE TABLE `proje_resimleri` (
  `resim_id` int(11) NOT NULL,
  `proje` int(11) NOT NULL,
  `resimler` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `proje_resimleri`
--

INSERT INTO `proje_resimleri` (`resim_id`, `proje`, `resimler`) VALUES
(1, 1, '3fb9ea1da1ae6884d28c4fbc6500d0f6919469564.jpg'),
(2, 1, '3fb9ea1da1ae6884d28c4fbc6500d0f61715854848.jpg'),
(3, 1, '3fb9ea1da1ae6884d28c4fbc6500d0f61116947019.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referanslar`
--

CREATE TABLE `referanslar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `resim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `referanslar`
--

INSERT INTO `referanslar` (`id`, `baslik`, `resim`) VALUES
(1, 'Referans 1', '14.png'),
(2, 'Referans 2', '2025f0425f07b84c340984188dcba8101822252522.png'),
(3, 'Referans 3', 'f78bbd7aacefcd58b145e26729de0cef1254623413.png'),
(4, 'Referans 4', '11d7710be888d0cc23ce662b82f5ae3b837018520.png'),
(5, 'Referans 5', '26094a4d65839763a44787c165dfdb751661271018.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `dil`, `header`, `footer`, `resim`, `baslik`, `icerik`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(4, 1, 1, 1, 'b2325cf33cd22159ffc02ed90a840f941737496421.jpg', 'HakkÄ±mÄ±zda', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'hakkimizda'),
(5, 1, 1, 1, '34f7b39ae4bc3c2434f3c863af61fe5a1349744249.jpg', 'Misyonumuz', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'misyonumuz'),
(6, 1, 1, 1, '54240ed04357a62ea9d9d5fbc654ebba154431997.jpg', 'Vizyonumuz', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'vizyonumuz'),
(7, 1, 1, 1, '1f3424c886998c294632971c93b2572e525481462.jpg', 'Åžirket Profili', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'sirket-profili');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slayt`
--

CREATE TABLE `slayt` (
  `slayt_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `alt_baslik` varchar(255) NOT NULL,
  `buton` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `slayt`
--

INSERT INTO `slayt` (`slayt_id`, `durum`, `dil`, `resim`, `baslik`, `alt_baslik`, `buton`, `link`) VALUES
(4, 1, 1, 'ee6f5c93dff13044ed639affd54c80ad736000612.jpg', 'En yeni modeller', 'Lorem Ipsum pasajlarÄ±nÄ±n birÃ§ok Ã§eÅŸitlemesi vardÄ±r. Ancak bunlarÄ±n bÃ¼yÃ¼k bir Ã§oÄŸunluÄŸu mizah katÄ±larak veya rastgele sÃ¶zcÃ¼kler eklenerek deÄŸiÅŸtirilmiÅŸlerdir.', 'Ä°LETÄ°ÅžÄ°M', 'iletisim'),
(5, 1, 1, 'da3cd44f16e7664cfb57d1e964c1b430457665022.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `smtp`
--

CREATE TABLE `smtp` (
  `id` int(11) NOT NULL,
  `sunucu` varchar(255) NOT NULL,
  `smtp_port` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `smtp`
--

INSERT INTO `smtp` (`id`, `sunucu`, `smtp_port`, `username`, `sifre`, `mail`, `baslik`) VALUES
(1, 'mail.bkfmedia.com', '587', 'info@bkfmedia.com', '123456', 'm7ajans@gmail.com', 'Siteye Mesaj bÄ±rakÄ±ldÄ±');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sosyal_medya`
--

CREATE TABLE `sosyal_medya` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `ikon` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sosyal_medya`
--

INSERT INTO `sosyal_medya` (`id`, `baslik`, `ikon`, `link`) VALUES
(1, 'Facebook', 'fa fa-facebook', '#'),
(2, 'Twitter', 'fa fa-twitter', '#'),
(3, 'Ä°nstagram', 'fa fa-instagram', '#'),
(4, 'Youtube', 'fa fa-youtube', '#'),
(5, 'Linkedin', 'fa fa-linkedin', '#');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `soru` varchar(255) NOT NULL,
  `cevap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`id`, `dil`, `soru`, `cevap`) VALUES
(1, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(2, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(3, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(4, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(5, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(6, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(7, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(8, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(9, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(10, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(11, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(12, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(13, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n'),
(14, 1, 'Merak edilenler', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n\n<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sys_group_users`
--

CREATE TABLE `sys_group_users` (
  `id` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sys_group_users`
--

INSERT INTO `sys_group_users` (`id`, `level`, `deskripsi`) VALUES
(1, 'SÃ¼per Admin', 'YÃ¶netici'),
(2, 'Demo', 'Demo KullanÄ±cÄ±');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sys_menu`
--

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL,
  `nav_act` varchar(150) DEFAULT NULL,
  `page_name` varchar(150) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `main_table` varchar(150) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  `urutan_menu` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `dt_table` enum('Y','N') NOT NULL,
  `tampil` enum('Y','N') NOT NULL,
  `type_menu` enum('main','page') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sys_menu`
--

INSERT INTO `sys_menu` (`id`, `nav_act`, `page_name`, `url`, `main_table`, `icon`, `urutan_menu`, `parent`, `dt_table`, `tampil`, `type_menu`) VALUES
(370, NULL, 'ayarlar', '', NULL, 'fa-gears', 999, 0, 'Y', 'Y', 'main'),
(373, 'sosyal_medya', 'sosyal medya', 'sosyal-medya', 'sosyal_medya', '', 3, 370, 'Y', 'Y', 'page'),
(374, 'sayfalar', 'sayfalar', 'sayfalar', 'sayfalar', 'fa-file', 2, 0, 'Y', 'Y', 'page'),
(377, NULL, 'ÃœrÃ¼nler', '', NULL, 'fa-shopping-cart', 4, 0, 'Y', 'Y', 'main'),
(378, 'urun_kategorileri', 'urun kategorileri', 'urun-kategorileri', 'urun_kategori', '', 3, 377, 'Y', 'Y', 'page'),
(379, 'blog', 'blog', 'blog', 'blog', 'fa-newspaper-o', 5, 0, 'Y', 'Y', 'page'),
(380, 'ayarlar', 'ayarlar', 'ayarlar', 'ayarlar', '', 1, 370, 'Y', 'Y', 'page'),
(381, 'slaytlar', 'slaytlar', 'slaytlar', 'slayt', 'fa-desktop', 1, 0, 'Y', 'Y', 'page'),
(382, 'hizmetler', 'hizmetler', 'hizmetler', 'hizmetler', 'fa-bars', 3, 0, 'Y', 'Y', 'page'),
(386, 'yorumlar', 'yorumlar', 'yorumlar', 'yorumlar', 'fa-comments', 6, 0, 'Y', 'Y', 'page'),
(387, 'referanslar', 'referanslar', 'referanslar', 'referanslar', 'fa-briefcase', 7, 0, 'Y', 'Y', 'page'),
(398, 'urunler', 'urunler', 'urunler', 'urunler', '', 1, 377, 'Y', 'Y', 'page'),
(399, 'urun_resimleri', 'urun resimleri', 'urun-resimleri', 'urun_resimleri', '', 3, 377, 'Y', 'Y', 'page'),
(401, 'galeri', 'galeri', 'galeri', 'galeri', 'fa-image', 13, 0, 'Y', 'Y', 'page'),
(402, 'smtp', 'smtp', 'smtp', 'smtp', '', 3, 370, 'Y', 'Y', 'page'),
(406, 'dil_yonetimi', 'dil yonetimi', 'dil-yonetimi', 'diller', ' fa-flag-o', 14, 0, 'Y', 'Y', 'page');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sys_menu_role`
--

CREATE TABLE `sys_menu_role` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `read_act` enum('Y','N') DEFAULT NULL,
  `insert_act` enum('Y','N') DEFAULT NULL,
  `update_act` enum('Y','N') DEFAULT NULL,
  `delete_act` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sys_menu_role`
--

INSERT INTO `sys_menu_role` (`id`, `id_menu`, `group_id`, `read_act`, `insert_act`, `update_act`, `delete_act`) VALUES
(847, 370, 1, 'Y', 'Y', 'Y', 'Y'),
(850, 373, 1, 'Y', 'Y', 'Y', 'Y'),
(851, 374, 1, 'Y', 'Y', 'Y', 'Y'),
(854, 377, 1, 'Y', 'Y', 'Y', 'Y'),
(855, 378, 1, 'Y', 'Y', 'Y', 'Y'),
(856, 379, 1, 'Y', 'Y', 'Y', 'Y'),
(857, 380, 1, 'Y', 'Y', 'Y', 'Y'),
(858, 381, 1, 'Y', 'Y', 'Y', 'Y'),
(859, 382, 1, 'Y', 'Y', 'Y', 'Y'),
(863, 386, 1, 'Y', 'Y', 'Y', 'Y'),
(864, 387, 1, 'Y', 'Y', 'Y', 'Y'),
(875, 398, 1, 'Y', 'Y', 'Y', 'Y'),
(876, 399, 1, 'Y', 'Y', 'Y', 'Y'),
(878, 401, 1, 'Y', 'Y', 'Y', 'Y'),
(879, 402, 1, 'Y', 'Y', 'Y', 'Y'),
(883, 406, 1, 'Y', 'Y', 'Y', 'Y'),
(885, 370, 2, 'Y', 'N', 'N', 'N'),
(886, 373, 2, 'Y', 'N', 'N', 'N'),
(887, 374, 2, 'Y', 'N', 'N', 'N'),
(890, 377, 2, 'Y', 'N', 'N', 'N'),
(891, 378, 2, 'Y', 'N', 'N', 'N'),
(892, 379, 2, 'Y', 'N', 'N', 'N'),
(893, 380, 2, 'Y', 'N', 'N', 'N'),
(894, 381, 2, 'Y', 'N', 'N', 'N'),
(895, 382, 2, 'Y', 'N', 'N', 'N'),
(898, 386, 2, 'Y', 'N', 'N', 'N'),
(899, 387, 2, 'Y', 'N', 'N', 'N'),
(907, 398, 2, 'Y', 'N', 'N', 'N'),
(908, 399, 2, 'Y', 'N', 'N', 'N'),
(910, 401, 2, 'Y', 'N', 'N', 'N'),
(911, 402, 2, 'Y', 'N', 'N', 'N'),
(915, 406, 2, 'Y', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `foto_user` varchar(150) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `firma` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sys_users`
--

INSERT INTO `sys_users` (`id`, `first_name`, `last_name`, `username`, `password`, `email`, `date_created`, `foto_user`, `id_group`, `aktif`, `firma`, `tel`, `adres`) VALUES
(1, 'admin', 'admin', 'admin', '6f35bebb2de3f06777635ec1c6e8ba47', 'mail@mail.com', '2015-01-26', 'demo.jpg', 1, 'Y', 'Firma adÄ±', '123456798', 'Adres');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urun_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `anasayfa` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `urun_kodu` varchar(255) NOT NULL,
  `fiyat` varchar(255) NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_id`, `dil`, `kategori`, `anasayfa`, `resim`, `baslik`, `icerik`, `urun_kodu`, `fiyat`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(1, 1, 7, 1, 'product-1.png', 'Haki Oturma Grubu', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n', '#321315', '999â‚º', 'Haki Oturma Grubu', 'Haki Oturma Grubu', 'Haki Oturma Grubu', 'haki-oturma-grubu'),
(2, 1, 7, 1, '908ca1c5a3b519426f0a1e03ac6fe1581490561759.png', 'Line Oturma Grubu', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#4821315', '1.499â‚º', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'line-oturma-grubu'),
(3, 1, 7, 1, '18e03c097fb00364ad0b51ab326df4e31951891054.png', 'Kahve Grubu Elit Line', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#987455', '1.999â‚º', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'kahve-grubu-elit-line'),
(4, 1, 7, 1, '2500407e4d634405e95bdcabf79423a5883981709.png', 'KÄ±rmÄ±zÄ±n Kalbi Line Red', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#965431', '999â‚º', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'kirmizin-kalbi-line-red'),
(5, 1, 9, 1, '6d3da994e885ddbc85ecf249eff28b9f30375647.png', 'GeniÅŸ Aileler iÃ§in Haki Plus', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#6621315', '999â‚º', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'genis-aileler-icin-haki-plus'),
(6, 1, 9, 1, '8384698ec4ca03653440820fb307be941843238805.png', 'Elit Ailelerin Tercihi Blue Line', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r. BeÅŸy&uuml;z yÄ±l boyunca varlÄ±ÄŸÄ±nÄ± s&uuml;rd&uuml;rmekle kalmamÄ±ÅŸ, aynÄ± zamanda pek deÄŸiÅŸmeden elektronik dizgiye de sÄ±&ccedil;ramÄ±ÅŸtÄ±r. 1960&#39;larda Lorem Ipsum pasajlarÄ± da i&ccedil;eren Letraset yapraklarÄ±nÄ±n yayÄ±nlanmasÄ± ile ve yakÄ±n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayÄ±ncÄ±lÄ±k yazÄ±lÄ±mlarÄ± ile pop&uuml;ler olmuÅŸtur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'seo baÅŸlÄ±k', 'Seo aÃ§Ä±klama', 'aratma kelimleri', 'elit-ailelerin-tercihi-blue-line');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategori`
--

CREATE TABLE `urun_kategori` (
  `kategori_id` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `kategori_baslik` varchar(255) NOT NULL,
  `seo1` varchar(255) NOT NULL,
  `seo2` varchar(255) NOT NULL,
  `seo3` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_kategori`
--

INSERT INTO `urun_kategori` (`kategori_id`, `dil`, `kategori_baslik`, `seo1`, `seo2`, `seo3`, `sef`) VALUES
(7, 1, 'Mobilya GruplarÄ±', 'Mobilya GruplarÄ±', 'Mobilya GruplarÄ±', 'Mobilya GruplarÄ±', 'mobilya-gruplari'),
(8, 1, 'Ã‡alÄ±ÅŸma MasalarÄ±', 'Ã‡alÄ±ÅŸma MasalarÄ±', 'Ã‡alÄ±ÅŸma MasalarÄ±', 'Ã‡alÄ±ÅŸma MasalarÄ±', 'calisma-masalari'),
(9, 1, 'Ofis TakÄ±mlarÄ±', 'Ofis TakÄ±mlarÄ±', 'Ofis TakÄ±mlarÄ±', 'Ofis TakÄ±mlarÄ±', 'ofis-takimlari');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_resimleri`
--

CREATE TABLE `urun_resimleri` (
  `resim_id` int(11) NOT NULL,
  `urun` int(11) NOT NULL,
  `urun_resim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_resimleri`
--

INSERT INTO `urun_resimleri` (`resim_id`, `urun`, `urun_resim`) VALUES
(6, 1, 'd92985672b4de7ba6fb09ebdf06a1c82449581566.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `i_d` int(11) NOT NULL,
  `dil` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `yazan` varchar(255) NOT NULL,
  `tarih` varchar(255) NOT NULL,
  `icerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`i_d`, `dil`, `resim`, `yazan`, `tarih`, `icerik`) VALUES
(1, 1, '04e512d1d9aa38de5be3e37566b109161301820054.jpg', 'Ahmet Kural', '2018-06-27', '<p>&Uuml;r&uuml;nleriniz ger&ccedil;ekten &ccedil;ok kaliteli ve aldÄ±ÄŸÄ±ma &ccedil;ok memnun kaldÄ±m. HerÅŸey i&ccedil;in teÅŸekk&uuml;r ederim</p>\r\n'),
(2, 1, '4fa11884fc053f074b152acc1fd094b81488806517.jpg', 'AyÅŸe Batur', '2018-06-25', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, 1, '497857e68b5528a073d77a56598ac4fa540901187.jpg', 'Aynur Demir', '2018-06-25', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskÄ± end&uuml;strisinde kullanÄ±lan mÄ±gÄ±r metinlerdir. Lorem Ipsum, adÄ± bilinmeyen bir matbaacÄ±nÄ±n bir hurufat numune kitabÄ± oluÅŸturmak &uuml;zere bir yazÄ± galerisini alarak karÄ±ÅŸtÄ±rdÄ±ÄŸÄ± 1500&#39;lerden beri end&uuml;stri standardÄ± sahte metinler olarak kullanÄ±lmÄ±ÅŸtÄ±r.</p>\r\n');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Tablo için indeksler `bolgeler`
--
ALTER TABLE `bolgeler`
  ADD PRIMARY KEY (`bolge_id`);

--
-- Tablo için indeksler `diller`
--
ALTER TABLE `diller`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`i_d`);

--
-- Tablo için indeksler `ekip`
--
ALTER TABLE `ekip`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Tablo için indeksler `hizmetler`
--
ALTER TABLE `hizmetler`
  ADD PRIMARY KEY (`hizmet_id`);

--
-- Tablo için indeksler `klavuz`
--
ALTER TABLE `klavuz`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menuler`
--
ALTER TABLE `menuler`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `menu_kategori`
--
ALTER TABLE `menu_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `odalar`
--
ALTER TABLE `odalar`
  ADD PRIMARY KEY (`oda_id`);

--
-- Tablo için indeksler `oda_resimleri`
--
ALTER TABLE `oda_resimleri`
  ADD PRIMARY KEY (`oda_resim_id`);

--
-- Tablo için indeksler `paketler`
--
ALTER TABLE `paketler`
  ADD PRIMARY KEY (`paket_id`);

--
-- Tablo için indeksler `projeler`
--
ALTER TABLE `projeler`
  ADD PRIMARY KEY (`proje_id`);

--
-- Tablo için indeksler `proje_kategori`
--
ALTER TABLE `proje_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `proje_resimleri`
--
ALTER TABLE `proje_resimleri`
  ADD PRIMARY KEY (`resim_id`);

--
-- Tablo için indeksler `referanslar`
--
ALTER TABLE `referanslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slayt`
--
ALTER TABLE `slayt`
  ADD PRIMARY KEY (`slayt_id`);

--
-- Tablo için indeksler `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sosyal_medya`
--
ALTER TABLE `sosyal_medya`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sys_group_users`
--
ALTER TABLE `sys_group_users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sys_menu_role_sys_menu` (`id_menu`),
  ADD KEY `FK_sys_menu_role_sys_users` (`group_id`);

--
-- Tablo için indeksler `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sys_users_sys_group_users` (`id_group`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urun_kategori`
--
ALTER TABLE `urun_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `urun_resimleri`
--
ALTER TABLE `urun_resimleri`
  ADD PRIMARY KEY (`resim_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`i_d`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `bolgeler`
--
ALTER TABLE `bolgeler`
  MODIFY `bolge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `diller`
--
ALTER TABLE `diller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `i_d` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ekip`
--
ALTER TABLE `ekip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `hizmetler`
--
ALTER TABLE `hizmetler`
  MODIFY `hizmet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `klavuz`
--
ALTER TABLE `klavuz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `menuler`
--
ALTER TABLE `menuler`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `menu_kategori`
--
ALTER TABLE `menu_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `odalar`
--
ALTER TABLE `odalar`
  MODIFY `oda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `oda_resimleri`
--
ALTER TABLE `oda_resimleri`
  MODIFY `oda_resim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `paketler`
--
ALTER TABLE `paketler`
  MODIFY `paket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `projeler`
--
ALTER TABLE `projeler`
  MODIFY `proje_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `proje_kategori`
--
ALTER TABLE `proje_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `proje_resimleri`
--
ALTER TABLE `proje_resimleri`
  MODIFY `resim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `referanslar`
--
ALTER TABLE `referanslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `slayt`
--
ALTER TABLE `slayt`
  MODIFY `slayt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sosyal_medya`
--
ALTER TABLE `sosyal_medya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `sys_group_users`
--
ALTER TABLE `sys_group_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- Tablo için AUTO_INCREMENT değeri `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=916;

--
-- Tablo için AUTO_INCREMENT değeri `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategori`
--
ALTER TABLE `urun_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `urun_resimleri`
--
ALTER TABLE `urun_resimleri`
  MODIFY `resim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `i_d` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  ADD CONSTRAINT `FK_sys_menu_role_sys_group_users` FOREIGN KEY (`group_id`) REFERENCES `sys_group_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_sys_menu_role_sys_menu` FOREIGN KEY (`id_menu`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sys_users`
--
ALTER TABLE `sys_users`
  ADD CONSTRAINT `FK_sys_users_sys_group_users` FOREIGN KEY (`id_group`) REFERENCES `sys_group_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
