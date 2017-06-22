-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-22 11:08:27
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `bg_admin`
--

CREATE TABLE IF NOT EXISTS `bg_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(60) CHARACTER SET utf8 NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '添加账号时间',
  `uptime` int(11) DEFAULT NULL COMMENT '更该账号时间',
  `type` int(1) unsigned DEFAULT NULL COMMENT '0代表自己，1代表其他人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bg_article`
--

CREATE TABLE IF NOT EXISTS `bg_article` (
  `ht_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ht_title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ht_content` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `uptime` int(11) DEFAULT NULL COMMENT '更新时间',
  `view_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章查看数',
  PRIMARY KEY (`ht_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bg_hf`
--

CREATE TABLE IF NOT EXISTS `bg_hf` (
  `hf_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ht_id` int(10) unsigned NOT NULL COMMENT '文章id',
  `hf_name` varchar(60) NOT NULL COMMENT '回复者的姓名',
  `hf_content` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `hf_date` int(10) NOT NULL,
  `lz_hf` varchar(1000) NOT NULL,
  `lzhf_date` int(10) NOT NULL COMMENT '楼主回复时间',
  `fromhf_id` int(10) NOT NULL COMMENT '引用回复id',
  PRIMARY KEY (`hf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bg_info`
--

CREATE TABLE IF NOT EXISTS `bg_info` (
  `bg_name` varchar(60) NOT NULL COMMENT '博客名称',
  `signature` varchar(200) DEFAULT NULL COMMENT '签名信息',
  `visitors_num` int(10) unsigned NOT NULL COMMENT '访客数',
  `web_info` varchar(300) DEFAULT NULL COMMENT '站点信息'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
