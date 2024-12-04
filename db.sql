/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmgwn41
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmgwn41` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmgwn41`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-02-02 14:46:00',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-02 14:46:00',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-02 14:46:00',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-02 14:46:00',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-02 14:46:00',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-02 14:46:00',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmgwn41/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmgwn41/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmgwn41/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (101,'2021-02-02 14:46:00',1,1,'评论内容1','回复内容1'),(102,'2021-02-02 14:46:00',2,2,'评论内容2','回复内容2'),(103,'2021-02-02 14:46:00',3,3,'评论内容3','回复内容3'),(104,'2021-02-02 14:46:00',4,4,'评论内容4','回复内容4'),(105,'2021-02-02 14:46:00',5,5,'评论内容5','回复内容5'),(106,'2021-02-02 14:46:00',6,6,'评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-02-02 14:46:00',1,'用户名1','留言内容1','回复内容1'),(92,'2021-02-02 14:46:00',2,'用户名2','留言内容2','回复内容2'),(93,'2021-02-02 14:46:00',3,'用户名3','留言内容3','回复内容3'),(94,'2021-02-02 14:46:00',4,'用户名4','留言内容4','回复内容4'),(95,'2021-02-02 14:46:00',5,'用户名5','留言内容5','回复内容5'),(96,'2021-02-02 14:46:00',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='网站公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-02-02 14:46:00','标题1','简介1','http://localhost:8080/ssmgwn41/upload/news_picture1.jpg','内容1'),(82,'2021-02-02 14:46:00','标题2','简介2','http://localhost:8080/ssmgwn41/upload/news_picture2.jpg','内容2'),(83,'2021-02-02 14:46:00','标题3','简介3','http://localhost:8080/ssmgwn41/upload/news_picture3.jpg','内容3'),(84,'2021-02-02 14:46:00','标题4','简介4','http://localhost:8080/ssmgwn41/upload/news_picture4.jpg','内容4'),(85,'2021-02-02 14:46:00','标题5','简介5','http://localhost:8080/ssmgwn41/upload/news_picture5.jpg','内容5'),(86,'2021-02-02 14:46:00','标题6','简介6','http://localhost:8080/ssmgwn41/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinleibie`) values (21,'2021-02-02 14:46:00','商品类别1'),(22,'2021-02-02 14:46:00','商品类别2'),(23,'2021-02-02 14:46:00','商品类别3'),(24,'2021-02-02 14:46:00','商品类别4'),(25,'2021-02-02 14:46:00','商品类别5'),(26,'2021-02-02 14:46:00','商品类别6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`shangpinguige`,`tupian`,`pinpai`,`shangpinjieshao`,`thumbsupnum`,`crazilynum`,`price`,`onelimittimes`,`alllimittimes`) values (31,'2021-02-02 14:46:00','商品编号1','商品名称1','商品类别1','商品规格1','http://localhost:8080/ssmgwn41/upload/shangpinxinxi_tupian1.jpg','品牌1','商品介绍1',1,1,99.9,1,99),(32,'2021-02-02 14:46:00','商品编号2','商品名称2','商品类别2','商品规格2','http://localhost:8080/ssmgwn41/upload/shangpinxinxi_tupian2.jpg','品牌2','商品介绍2',2,2,99.9,2,99),(33,'2021-02-02 14:46:00','商品编号3','商品名称3','商品类别3','商品规格3','http://localhost:8080/ssmgwn41/upload/shangpinxinxi_tupian3.jpg','品牌3','商品介绍3',3,3,99.9,3,99),(34,'2021-02-02 14:46:00','商品编号4','商品名称4','商品类别4','商品规格4','http://localhost:8080/ssmgwn41/upload/shangpinxinxi_tupian4.jpg','品牌4','商品介绍4',4,4,99.9,4,99),(35,'2021-02-02 14:46:00','商品编号5','商品名称5','商品类别5','商品规格5','http://localhost:8080/ssmgwn41/upload/shangpinxinxi_tupian5.jpg','品牌5','商品介绍5',5,5,99.9,5,99),(36,'2021-02-02 14:46:00','商品编号6','商品名称6','商品类别6','商品规格6','http://localhost:8080/ssmgwn41/upload/shangpinxinxi_tupian6.jpg','品牌6','商品介绍6',6,6,99.9,6,99);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-02 14:46:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`nianling`,`shouji`,`youxiang`,`touxiang`,`money`) values (11,'2021-02-02 14:46:00','用户1','123456','姓名1','年龄1','13823888881','773890001@qq.com','http://localhost:8080/ssmgwn41/upload/yonghu_touxiang1.jpg',100),(12,'2021-02-02 14:46:00','用户2','123456','姓名2','年龄2','13823888882','773890002@qq.com','http://localhost:8080/ssmgwn41/upload/yonghu_touxiang2.jpg',100),(13,'2021-02-02 14:46:00','用户3','123456','姓名3','年龄3','13823888883','773890003@qq.com','http://localhost:8080/ssmgwn41/upload/yonghu_touxiang3.jpg',100),(14,'2021-02-02 14:46:00','用户4','123456','姓名4','年龄4','13823888884','773890004@qq.com','http://localhost:8080/ssmgwn41/upload/yonghu_touxiang4.jpg',100),(15,'2021-02-02 14:46:00','用户5','123456','姓名5','年龄5','13823888885','773890005@qq.com','http://localhost:8080/ssmgwn41/upload/yonghu_touxiang5.jpg',100),(16,'2021-02-02 14:46:00','用户6','123456','姓名6','年龄6','13823888886','773890006@qq.com','http://localhost:8080/ssmgwn41/upload/yonghu_touxiang6.jpg',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
