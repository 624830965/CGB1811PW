/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.41 : Database - balabala2
*********************************************************************
*/


nishi zhuam 
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`balabala2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `balabala`;

/*Table structure for table `tb_ban` */

DROP TABLE IF EXISTS `tb_ban`;

CREATE TABLE `tb_ban` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `word` varchar(40) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_ban` */

/*Table structure for table `tb_barrage` */

DROP TABLE IF EXISTS `tb_barrage`;

CREATE TABLE `tb_barrage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) DEFAULT NULL,
  `video_id` int(10) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_barrage` */

/*Table structure for table `tb_cloumn` */

DROP TABLE IF EXISTS `tb_cloumn`;

CREATE TABLE `tb_cloumn` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `imgurl` varchar(80) DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL,
  `type_id` int(2) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_cloumn` */

/*Table structure for table `tb_coin` */

DROP TABLE IF EXISTS `tb_coin`;

CREATE TABLE `tb_coin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `vedio_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_coin` */

/*Table structure for table `tb_collection` */

DROP TABLE IF EXISTS `tb_collection`;

CREATE TABLE `tb_collection` (
  `col_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `name` varchar(12) DEFAULT NULL,
  `des` varchar(150) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`col_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_collection` */

/*Table structure for table `tb_collection_video` */

DROP TABLE IF EXISTS `tb_collection_video`;

CREATE TABLE `tb_collection_video` (
  `col_id` int(10) NOT NULL AUTO_INCREMENT,
  `vedio_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`col_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_collection_video` */

/*Table structure for table `tb_coment` */

DROP TABLE IF EXISTS `tb_coment`;

CREATE TABLE `tb_coment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(300) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_coment` */

/*Table structure for table `tb_focus` */

DROP TABLE IF EXISTS `tb_focus`;

CREATE TABLE `tb_focus` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `focus_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_focus` */

/*Table structure for table `tb_history` */

DROP TABLE IF EXISTS `tb_history`;

CREATE TABLE `tb_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `video_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_history` */

/*Table structure for table `tb_label` */

DROP TABLE IF EXISTS `tb_label`;

CREATE TABLE `tb_label` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_label` */

/*Table structure for table `tb_report` */

DROP TABLE IF EXISTS `tb_report`;

CREATE TABLE `tb_report` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `is_vedio` int(2) DEFAULT NULL,
  `object_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_report` */

/*Table structure for table `tb_thumbs_up` */

DROP TABLE IF EXISTS `tb_thumbs_up`;

CREATE TABLE `tb_thumbs_up` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `vedio_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_thumbs_up` */

/*Table structure for table `tb_type` */

DROP TABLE IF EXISTS `tb_type`;

CREATE TABLE `tb_type` (
  `type_id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_type` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT 'MD5¼ÓÃÜ',
  `salt` varchar(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reportnum` int(12) DEFAULT NULL,
  `ps` varchar(80) DEFAULT NULL,
  `imgurl` varchar(80) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

/*Table structure for table `tb_video` */

DROP TABLE IF EXISTS `tb_video`;

CREATE TABLE `tb_video` (
  `video_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `imgurl` varchar(40) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `type_id` int(2) DEFAULT NULL,
  `label_id` int(10) DEFAULT NULL,
  `des` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `col_num` int(10) DEFAULT NULL,
  `up_num` int(10) DEFAULT NULL,
  `coin_num` int(10) DEFAULT NULL,
  `report_num` int(10) DEFAULT NULL,
  `play_num` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_video` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
