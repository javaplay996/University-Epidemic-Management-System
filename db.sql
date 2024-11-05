/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1i23q
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1i23q` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1i23q`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1i23q/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm1i23q/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1i23q/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzhenghao`,`jiatingzhuzhi`) values (21,'2021-04-15 11:57:12','教师1','123456','教师姓名1','http://localhost:8080/ssm1i23q/upload/jiaoshi_touxiang1.jpg','男','13823888881','440300199101010001','家庭住址1'),(22,'2021-04-15 11:57:12','教师2','123456','教师姓名2','http://localhost:8080/ssm1i23q/upload/jiaoshi_touxiang2.jpg','男','13823888882','440300199202020002','家庭住址2'),(23,'2021-04-15 11:57:12','教师3','123456','教师姓名3','http://localhost:8080/ssm1i23q/upload/jiaoshi_touxiang3.jpg','男','13823888883','440300199303030003','家庭住址3'),(24,'2021-04-15 11:57:12','教师4','123456','教师姓名4','http://localhost:8080/ssm1i23q/upload/jiaoshi_touxiang4.jpg','男','13823888884','440300199404040004','家庭住址4'),(25,'2021-04-15 11:57:12','教师5','123456','教师姓名5','http://localhost:8080/ssm1i23q/upload/jiaoshi_touxiang5.jpg','男','13823888885','440300199505050005','家庭住址5'),(26,'2021-04-15 11:57:12','教师6','123456','教师姓名6','http://localhost:8080/ssm1i23q/upload/jiaoshi_touxiang6.jpg','男','13823888886','440300199606060006','家庭住址6');

/*Table structure for table `jiaoshifanxiaoshenqing` */

DROP TABLE IF EXISTS `jiaoshifanxiaoshenqing`;

CREATE TABLE `jiaoshifanxiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `fanxiaoriqi` date DEFAULT NULL COMMENT '返校日期',
  `fanxiaofangshi` varchar(200) DEFAULT NULL COMMENT '返校方式',
  `fanxiaocheci` varchar(200) DEFAULT NULL COMMENT '返校车次',
  `zuozaidifengxiandengji` varchar(200) DEFAULT NULL COMMENT '做在地风险等级',
  `hesuanjiancebaogao` varchar(200) DEFAULT NULL COMMENT '核酸检测报告',
  `fanxiaohoushifoujinxinggeli` varchar(200) DEFAULT NULL COMMENT '返校后是否进行隔离',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='教师返校申请';

/*Data for the table `jiaoshifanxiaoshenqing` */

insert  into `jiaoshifanxiaoshenqing`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`lianxidianhua`,`shenfenzhenghao`,`jiatingzhuzhi`,`fanxiaoriqi`,`fanxiaofangshi`,`fanxiaocheci`,`zuozaidifengxiandengji`,`hesuanjiancebaogao`,`fanxiaohoushifoujinxinggeli`,`sfsh`,`shhf`) values (71,'2021-04-15 11:57:12','教师工号1','教师姓名1','联系电话1','身份证号1','家庭住址1','2021-04-15','返校方式1','返校车次1','底风险','http://localhost:8080/ssm1i23q/upload/jiaoshifanxiaoshenqing_hesuanjiancebaogao1.jpg','是','是',''),(72,'2021-04-15 11:57:12','教师工号2','教师姓名2','联系电话2','身份证号2','家庭住址2','2021-04-15','返校方式2','返校车次2','底风险','http://localhost:8080/ssm1i23q/upload/jiaoshifanxiaoshenqing_hesuanjiancebaogao2.jpg','是','是',''),(73,'2021-04-15 11:57:12','教师工号3','教师姓名3','联系电话3','身份证号3','家庭住址3','2021-04-15','返校方式3','返校车次3','底风险','http://localhost:8080/ssm1i23q/upload/jiaoshifanxiaoshenqing_hesuanjiancebaogao3.jpg','是','是',''),(74,'2021-04-15 11:57:12','教师工号4','教师姓名4','联系电话4','身份证号4','家庭住址4','2021-04-15','返校方式4','返校车次4','底风险','http://localhost:8080/ssm1i23q/upload/jiaoshifanxiaoshenqing_hesuanjiancebaogao4.jpg','是','是',''),(75,'2021-04-15 11:57:12','教师工号5','教师姓名5','联系电话5','身份证号5','家庭住址5','2021-04-15','返校方式5','返校车次5','底风险','http://localhost:8080/ssm1i23q/upload/jiaoshifanxiaoshenqing_hesuanjiancebaogao5.jpg','是','是',''),(76,'2021-04-15 11:57:12','教师工号6','教师姓名6','联系电话6','身份证号6','家庭住址6','2021-04-15','返校方式6','返校车次6','底风险','http://localhost:8080/ssm1i23q/upload/jiaoshifanxiaoshenqing_hesuanjiancebaogao6.jpg','是','是','');

/*Table structure for table `jiaoshijiankangdaka` */

DROP TABLE IF EXISTS `jiaoshijiankangdaka`;

CREATE TABLE `jiaoshijiankangdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `youwukesou` varchar(200) DEFAULT NULL COMMENT '有无咳嗽',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dakariqi` date DEFAULT NULL COMMENT '打卡日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='教师健康打卡';

/*Data for the table `jiaoshijiankangdaka` */

insert  into `jiaoshijiankangdaka`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`lianxidianhua`,`shenfenzhenghao`,`tiwen`,`youwukesou`,`beizhu`,`dakariqi`) values (91,'2021-04-15 11:57:12','教师工号1','教师姓名1','联系电话1','身份证号1','体温1','有','备注1','2021-04-15'),(92,'2021-04-15 11:57:12','教师工号2','教师姓名2','联系电话2','身份证号2','体温2','有','备注2','2021-04-15'),(93,'2021-04-15 11:57:12','教师工号3','教师姓名3','联系电话3','身份证号3','体温3','有','备注3','2021-04-15'),(94,'2021-04-15 11:57:12','教师工号4','教师姓名4','联系电话4','身份证号4','体温4','有','备注4','2021-04-15'),(95,'2021-04-15 11:57:12','教师工号5','教师姓名5','联系电话5','身份证号5','体温5','有','备注5','2021-04-15'),(96,'2021-04-15 11:57:12','教师工号6','教师姓名6','联系电话6','身份证号6','体温6','有','备注6','2021-04-15');

/*Table structure for table `jiaoshijujiaxinxi` */

DROP TABLE IF EXISTS `jiaoshijujiaxinxi`;

CREATE TABLE `jiaoshijujiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xianzaisuozaiweizhi` varchar(200) DEFAULT NULL COMMENT '现在所在位置',
  `jinjilianxiren` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `lianxirendianhua` varchar(200) DEFAULT NULL COMMENT '联系人电话',
  `tongzhurenyuanshentizhuangkuang` varchar(200) DEFAULT NULL COMMENT '同住人员身体状况',
  `suozaidifengxiandengji` varchar(200) DEFAULT NULL COMMENT '所在地风险等级',
  `shifoucengjizhonggeli` varchar(200) DEFAULT NULL COMMENT '是否曾集中隔离',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='教师居家信息';

/*Data for the table `jiaoshijujiaxinxi` */

insert  into `jiaoshijujiaxinxi`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`lianxidianhua`,`shenfenzhenghao`,`jiatingzhuzhi`,`xianzaisuozaiweizhi`,`jinjilianxiren`,`lianxirendianhua`,`tongzhurenyuanshentizhuangkuang`,`suozaidifengxiandengji`,`shifoucengjizhonggeli`) values (61,'2021-04-15 11:57:12','教师工号1','教师姓名1','联系电话1','身份证号1','家庭住址1','现在所在位置1','紧急联系人1','联系人电话1','同住人员身体状况1','底风险','是'),(62,'2021-04-15 11:57:12','教师工号2','教师姓名2','联系电话2','身份证号2','家庭住址2','现在所在位置2','紧急联系人2','联系人电话2','同住人员身体状况2','底风险','是'),(63,'2021-04-15 11:57:12','教师工号3','教师姓名3','联系电话3','身份证号3','家庭住址3','现在所在位置3','紧急联系人3','联系人电话3','同住人员身体状况3','底风险','是'),(64,'2021-04-15 11:57:12','教师工号4','教师姓名4','联系电话4','身份证号4','家庭住址4','现在所在位置4','紧急联系人4','联系人电话4','同住人员身体状况4','底风险','是'),(65,'2021-04-15 11:57:12','教师工号5','教师姓名5','联系电话5','身份证号5','家庭住址5','现在所在位置5','紧急联系人5','联系人电话5','同住人员身体状况5','底风险','是'),(66,'2021-04-15 11:57:12','教师工号6','教师姓名6','联系电话6','身份证号6','家庭住址6','现在所在位置6','紧急联系人6','联系人电话6','同住人员身体状况6','底风险','是');

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-04-15 11:57:12',1,'用户名1','留言内容1','回复内容1'),(112,'2021-04-15 11:57:12',2,'用户名2','留言内容2','回复内容2'),(113,'2021-04-15 11:57:12',3,'用户名3','留言内容3','回复内容3'),(114,'2021-04-15 11:57:12',4,'用户名4','留言内容4','回复内容4'),(115,'2021-04-15 11:57:12',5,'用户名5','留言内容5','回复内容5'),(116,'2021-04-15 11:57:12',6,'用户名6','留言内容6','回复内容6');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-15 11:57:12');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`banji`,`shoujihaoma`,`shenfenzhenghao`,`jiatingzhuzhi`) values (11,'2021-04-15 11:57:12','学生1','123456','学生姓名1','http://localhost:8080/ssm1i23q/upload/xuesheng_touxiang1.jpg','男','班级1','13823888881','440300199101010001','家庭住址1'),(12,'2021-04-15 11:57:12','学生2','123456','学生姓名2','http://localhost:8080/ssm1i23q/upload/xuesheng_touxiang2.jpg','男','班级2','13823888882','440300199202020002','家庭住址2'),(13,'2021-04-15 11:57:12','学生3','123456','学生姓名3','http://localhost:8080/ssm1i23q/upload/xuesheng_touxiang3.jpg','男','班级3','13823888883','440300199303030003','家庭住址3'),(14,'2021-04-15 11:57:12','学生4','123456','学生姓名4','http://localhost:8080/ssm1i23q/upload/xuesheng_touxiang4.jpg','男','班级4','13823888884','440300199404040004','家庭住址4'),(15,'2021-04-15 11:57:12','学生5','123456','学生姓名5','http://localhost:8080/ssm1i23q/upload/xuesheng_touxiang5.jpg','男','班级5','13823888885','440300199505050005','家庭住址5'),(16,'2021-04-15 11:57:12','学生6','123456','学生姓名6','http://localhost:8080/ssm1i23q/upload/xuesheng_touxiang6.jpg','男','班级6','13823888886','440300199606060006','家庭住址6');

/*Table structure for table `xueshengfanxiaoshenqing` */

DROP TABLE IF EXISTS `xueshengfanxiaoshenqing`;

CREATE TABLE `xueshengfanxiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `fanxiaoriqi` date DEFAULT NULL COMMENT '返校日期',
  `fanxiaofangshi` varchar(200) DEFAULT NULL COMMENT '返校方式',
  `fanxiaocheci` varchar(200) DEFAULT NULL COMMENT '返校车次',
  `suozaidifengxiandengji` varchar(200) DEFAULT NULL COMMENT '所在地风险等级',
  `hesuanjiancebaogao` varchar(200) DEFAULT NULL COMMENT '核酸检测报告',
  `fanxiaohoushifoujinxinggeli` varchar(200) DEFAULT NULL COMMENT '返校后是否进行隔离',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学生返校申请';

/*Data for the table `xueshengfanxiaoshenqing` */

insert  into `xueshengfanxiaoshenqing`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`banji`,`shoujihaoma`,`shenfenzhenghao`,`jiatingzhuzhi`,`fanxiaoriqi`,`fanxiaofangshi`,`fanxiaocheci`,`suozaidifengxiandengji`,`hesuanjiancebaogao`,`fanxiaohoushifoujinxinggeli`,`sfsh`,`shhf`) values (51,'2021-04-15 11:57:12','学生号1','学生姓名1','班级1','手机号码1','身份证号1','家庭住址1','2021-04-15','返校方式1','返校车次1','底风险','http://localhost:8080/ssm1i23q/upload/xueshengfanxiaoshenqing_hesuanjiancebaogao1.jpg','是','是',''),(52,'2021-04-15 11:57:12','学生号2','学生姓名2','班级2','手机号码2','身份证号2','家庭住址2','2021-04-15','返校方式2','返校车次2','底风险','http://localhost:8080/ssm1i23q/upload/xueshengfanxiaoshenqing_hesuanjiancebaogao2.jpg','是','是',''),(53,'2021-04-15 11:57:12','学生号3','学生姓名3','班级3','手机号码3','身份证号3','家庭住址3','2021-04-15','返校方式3','返校车次3','底风险','http://localhost:8080/ssm1i23q/upload/xueshengfanxiaoshenqing_hesuanjiancebaogao3.jpg','是','是',''),(54,'2021-04-15 11:57:12','学生号4','学生姓名4','班级4','手机号码4','身份证号4','家庭住址4','2021-04-15','返校方式4','返校车次4','底风险','http://localhost:8080/ssm1i23q/upload/xueshengfanxiaoshenqing_hesuanjiancebaogao4.jpg','是','是',''),(55,'2021-04-15 11:57:12','学生号5','学生姓名5','班级5','手机号码5','身份证号5','家庭住址5','2021-04-15','返校方式5','返校车次5','底风险','http://localhost:8080/ssm1i23q/upload/xueshengfanxiaoshenqing_hesuanjiancebaogao5.jpg','是','是',''),(56,'2021-04-15 11:57:12','学生号6','学生姓名6','班级6','手机号码6','身份证号6','家庭住址6','2021-04-15','返校方式6','返校车次6','底风险','http://localhost:8080/ssm1i23q/upload/xueshengfanxiaoshenqing_hesuanjiancebaogao6.jpg','是','是','');

/*Table structure for table `xueshengjiankangdaka` */

DROP TABLE IF EXISTS `xueshengjiankangdaka`;

CREATE TABLE `xueshengjiankangdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `youwukesou` varchar(200) DEFAULT NULL COMMENT '有无咳嗽',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dakariqi` date DEFAULT NULL COMMENT '打卡日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学生健康打卡';

/*Data for the table `xueshengjiankangdaka` */

insert  into `xueshengjiankangdaka`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`shoujihaoma`,`shenfenzhenghao`,`tiwen`,`youwukesou`,`beizhu`,`dakariqi`) values (81,'2021-04-15 11:57:12','学生号1','学生姓名1','手机号码1','身份证号1','体温1','有','备注1','2021-04-15'),(82,'2021-04-15 11:57:12','学生号2','学生姓名2','手机号码2','身份证号2','体温2','有','备注2','2021-04-15'),(83,'2021-04-15 11:57:12','学生号3','学生姓名3','手机号码3','身份证号3','体温3','有','备注3','2021-04-15'),(84,'2021-04-15 11:57:12','学生号4','学生姓名4','手机号码4','身份证号4','体温4','有','备注4','2021-04-15'),(85,'2021-04-15 11:57:12','学生号5','学生姓名5','手机号码5','身份证号5','体温5','有','备注5','2021-04-15'),(86,'2021-04-15 11:57:12','学生号6','学生姓名6','手机号码6','身份证号6','体温6','有','备注6','2021-04-15');

/*Table structure for table `xueshengjujiaxinxi` */

DROP TABLE IF EXISTS `xueshengjujiaxinxi`;

CREATE TABLE `xueshengjujiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xianzaisuozaiweizhi` varchar(200) DEFAULT NULL COMMENT '现在所在位置',
  `jinjilianxiren` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `lianxirendianhua` varchar(200) DEFAULT NULL COMMENT '联系人电话',
  `tongzhurenyuanshentizhuangkuang` varchar(200) DEFAULT NULL COMMENT '同住人员身体状况',
  `suozaidifengxiandengji` varchar(200) DEFAULT NULL COMMENT '所在地风险等级',
  `shifoucengjizhonggeli` varchar(200) DEFAULT NULL COMMENT '是否曾集中隔离',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学生居家信息';

/*Data for the table `xueshengjujiaxinxi` */

insert  into `xueshengjujiaxinxi`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`banji`,`shoujihaoma`,`shenfenzhenghao`,`jiatingzhuzhi`,`xianzaisuozaiweizhi`,`jinjilianxiren`,`lianxirendianhua`,`tongzhurenyuanshentizhuangkuang`,`suozaidifengxiandengji`,`shifoucengjizhonggeli`) values (41,'2021-04-15 11:57:12','学生号1','学生姓名1','班级1','手机号码1','身份证号1','家庭住址1','现在所在位置1','紧急联系人1','联系人电话1','同住人员身体状况1','底风险','是'),(42,'2021-04-15 11:57:12','学生号2','学生姓名2','班级2','手机号码2','身份证号2','家庭住址2','现在所在位置2','紧急联系人2','联系人电话2','同住人员身体状况2','底风险','是'),(43,'2021-04-15 11:57:12','学生号3','学生姓名3','班级3','手机号码3','身份证号3','家庭住址3','现在所在位置3','紧急联系人3','联系人电话3','同住人员身体状况3','底风险','是'),(44,'2021-04-15 11:57:12','学生号4','学生姓名4','班级4','手机号码4','身份证号4','家庭住址4','现在所在位置4','紧急联系人4','联系人电话4','同住人员身体状况4','底风险','是'),(45,'2021-04-15 11:57:12','学生号5','学生姓名5','班级5','手机号码5','身份证号5','家庭住址5','现在所在位置5','紧急联系人5','联系人电话5','同住人员身体状况5','底风险','是'),(46,'2021-04-15 11:57:12','学生号6','学生姓名6','班级6','手机号码6','身份证号6','家庭住址6','现在所在位置6','紧急联系人6','联系人电话6','同住人员身体状况6','底风险','是');

/*Table structure for table `xueshengqingjia` */

DROP TABLE IF EXISTS `xueshengqingjia`;

CREATE TABLE `xueshengqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `qingjiayuanyin` varchar(200) DEFAULT NULL COMMENT '请假原因',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `xueshengqingjia` */

insert  into `xueshengqingjia`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`banji`,`shoujihaoma`,`qingjiariqi`,`qingjiatianshu`,`qingjiayuanyin`,`shenqingshijian`,`sfsh`,`shhf`) values (101,'2021-04-15 11:57:12','学生号1','学生姓名1','班级1','手机号码1','2021-04-15','请假天数1','请假原因1','2021-04-15 11:57:12','是',''),(102,'2021-04-15 11:57:12','学生号2','学生姓名2','班级2','手机号码2','2021-04-15','请假天数2','请假原因2','2021-04-15 11:57:12','是',''),(103,'2021-04-15 11:57:12','学生号3','学生姓名3','班级3','手机号码3','2021-04-15','请假天数3','请假原因3','2021-04-15 11:57:12','是',''),(104,'2021-04-15 11:57:12','学生号4','学生姓名4','班级4','手机号码4','2021-04-15','请假天数4','请假原因4','2021-04-15 11:57:12','是',''),(105,'2021-04-15 11:57:12','学生号5','学生姓名5','班级5','手机号码5','2021-04-15','请假天数5','请假原因5','2021-04-15 11:57:12','是',''),(106,'2021-04-15 11:57:12','学生号6','学生姓名6','班级6','手机号码6','2021-04-15','请假天数6','请假原因6','2021-04-15 11:57:12','是','');

/*Table structure for table `yiqingzixun` */

DROP TABLE IF EXISTS `yiqingzixun`;

CREATE TABLE `yiqingzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zixunneirong` longtext COMMENT '资讯内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='疫情资讯';

/*Data for the table `yiqingzixun` */

insert  into `yiqingzixun`(`id`,`addtime`,`biaoti`,`tupian`,`zixunneirong`,`faburiqi`) values (31,'2021-04-15 11:57:12','标题1','http://localhost:8080/ssm1i23q/upload/yiqingzixun_tupian1.jpg','资讯内容1','2021-04-15'),(32,'2021-04-15 11:57:12','标题2','http://localhost:8080/ssm1i23q/upload/yiqingzixun_tupian2.jpg','资讯内容2','2021-04-15'),(33,'2021-04-15 11:57:12','标题3','http://localhost:8080/ssm1i23q/upload/yiqingzixun_tupian3.jpg','资讯内容3','2021-04-15'),(34,'2021-04-15 11:57:12','标题4','http://localhost:8080/ssm1i23q/upload/yiqingzixun_tupian4.jpg','资讯内容4','2021-04-15'),(35,'2021-04-15 11:57:12','标题5','http://localhost:8080/ssm1i23q/upload/yiqingzixun_tupian5.jpg','资讯内容5','2021-04-15'),(36,'2021-04-15 11:57:12','标题6','http://localhost:8080/ssm1i23q/upload/yiqingzixun_tupian6.jpg','资讯内容6','2021-04-15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
