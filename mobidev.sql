-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 17 2013 г., 17:25
-- Версия сервера: 5.5.24-log
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mobidev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `homepage` text NOT NULL,
  `owner` text NOT NULL,
  `description` text NOT NULL,
  `watchers` int(11) NOT NULL,
  `forks` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `name`, `homepage`, `owner`, `description`, `watchers`, `forks`, `like`, `id_user`) VALUES
(1, 'yii', 'http://www.google.ru', 'morandi', 'Description this project', 50, 456, 1, 1),
(2, 'yii bad', 'http://www.google.ru', 'morandi bad', 'Description this project two', 60, 446, 0, 1),
(3, 'google yii', 'http://www.google.ru', 'morandi bad', 'Description this project two', 60, 446, 1, 2),
(4, 'google fun', 'http://www.google.ru', 'morandi bad', 'Description this project two', 60, 446, 0, 3),
(5, 'gidhub yii', 'http://www.google.ru', 'nick', 'Description this project two', 70, 446, 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `sname` text NOT NULL,
  `company` text NOT NULL,
  `blog` text NOT NULL,
  `followers` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `sname`, `company`, `blog`, `followers`, `like`) VALUES
(1, 'Alex', 'Road', 'Microsoft', 'http://mybox.p.ht', 500, 1),
(2, 'John', 'Black', 'Google', 'http://mybox.p.ht', 500, 1),
(3, 'Rick', 'Brown', 'Apple', 'http://mybox.p.ht', 540, 1),
(4, 'Enemy', 'Down', 'IBM', 'http://mybox.p.ht', 340, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
