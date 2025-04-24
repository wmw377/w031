/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1xv9m
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1xv9m` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1xv9m`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1xv9m/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm1xv9m/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1xv9m/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpeisong` */

DROP TABLE IF EXISTS `dingdanpeisong`;

CREATE TABLE `dingdanpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `fahuoriqi` date DEFAULT NULL COMMENT '发货日期',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '农户账号',
  `nonghuxingming` varchar(200) DEFAULT NULL COMMENT '农户姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974597379 DEFAULT CHARSET=utf8 COMMENT='订单配送';

/*Data for the table `dingdanpeisong` */

insert  into `dingdanpeisong`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`tupian`,`shuliang`,`fahuoriqi`,`nonghuzhanghao`,`nonghuxingming`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`shouhuodizhi`,`userid`) values (51,'2021-03-17 17:26:00','订单编号1','商品名称1','http://localhost:8080/ssm1xv9m/upload/dingdanpeisong_tupian1.jpg','数量1','2021-03-17','农户账号1','农户姓名1','用户名1','用户姓名1','手机号码1','收货地址1',1),(52,'2021-03-17 17:26:00','订单编号2','商品名称2','http://localhost:8080/ssm1xv9m/upload/dingdanpeisong_tupian2.jpg','数量2','2021-03-17','农户账号2','农户姓名2','用户名2','用户姓名2','手机号码2','收货地址2',2),(53,'2021-03-17 17:26:00','订单编号3','商品名称3','http://localhost:8080/ssm1xv9m/upload/dingdanpeisong_tupian3.jpg','数量3','2021-03-17','农户账号3','农户姓名3','用户名3','用户姓名3','手机号码3','收货地址3',3),(54,'2021-03-17 17:26:00','订单编号4','商品名称4','http://localhost:8080/ssm1xv9m/upload/dingdanpeisong_tupian4.jpg','数量4','2021-03-17','农户账号4','农户姓名4','用户名4','用户姓名4','手机号码4','收货地址4',4),(55,'2021-03-17 17:26:00','订单编号5','商品名称5','http://localhost:8080/ssm1xv9m/upload/dingdanpeisong_tupian5.jpg','数量5','2021-03-17','农户账号5','农户姓名5','用户名5','用户姓名5','手机号码5','收货地址5',5),(56,'2021-03-17 17:26:00','订单编号6','商品名称6','http://localhost:8080/ssm1xv9m/upload/dingdanpeisong_tupian6.jpg','数量6','2021-03-17','农户账号6','农户姓名6','用户名6','用户姓名6','手机号码6','收货地址6',6),(1615974597378,'2021-03-17 17:49:56','1615974537741','桔子','http://localhost:8080/ssm1xv9m/upload/1615974474977.jpg','5','2021-03-18','11','陈先生','22','杨先生','13823822222','广州市广州路8号',1615973740662);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '农户账号',
  `nonghuxingming` varchar(200) DEFAULT NULL COMMENT '农户姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974549414 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`tupian`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`nonghuzhanghao`,`nonghuxingming`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`shouhuodizhi`,`ispay`,`userid`) values (41,'2021-03-17 17:26:00','订单编号1','商品名称1','http://localhost:8080/ssm1xv9m/upload/dingdanxinxi_tupian1.jpg','价格1','数量1',1,'2021-03-17','农户账号1','农户姓名1','用户名1','用户姓名1','手机号码1','收货地址1','未支付',1),(42,'2021-03-17 17:26:00','订单编号2','商品名称2','http://localhost:8080/ssm1xv9m/upload/dingdanxinxi_tupian2.jpg','价格2','数量2',2,'2021-03-17','农户账号2','农户姓名2','用户名2','用户姓名2','手机号码2','收货地址2','未支付',2),(43,'2021-03-17 17:26:00','订单编号3','商品名称3','http://localhost:8080/ssm1xv9m/upload/dingdanxinxi_tupian3.jpg','价格3','数量3',3,'2021-03-17','农户账号3','农户姓名3','用户名3','用户姓名3','手机号码3','收货地址3','未支付',3),(44,'2021-03-17 17:26:00','订单编号4','商品名称4','http://localhost:8080/ssm1xv9m/upload/dingdanxinxi_tupian4.jpg','价格4','数量4',4,'2021-03-17','农户账号4','农户姓名4','用户名4','用户姓名4','手机号码4','收货地址4','未支付',4),(45,'2021-03-17 17:26:00','订单编号5','商品名称5','http://localhost:8080/ssm1xv9m/upload/dingdanxinxi_tupian5.jpg','价格5','数量5',5,'2021-03-17','农户账号5','农户姓名5','用户名5','用户姓名5','手机号码5','收货地址5','未支付',5),(46,'2021-03-17 17:26:00','订单编号6','商品名称6','http://localhost:8080/ssm1xv9m/upload/dingdanxinxi_tupian6.jpg','价格6','数量6',6,'2021-03-17','农户账号6','农户姓名6','用户名6','用户姓名6','手机号码6','收货地址6','未支付',6),(1615974549413,'2021-03-17 17:49:09','1615974537741','桔子','http://localhost:8080/ssm1xv9m/upload/1615974474977.jpg','6','5',30,'2021-03-17','11','陈先生','22','杨先生','13823822222','广州市广州路8号','已支付',1615973740662);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974142332 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-03-17 17:26:00',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-03-17 17:26:00',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-03-17 17:26:00',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-03-17 17:26:00',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-03-17 17:26:00',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-03-17 17:26:00',6,6,'用户名6','评论内容6','回复内容6'),(1615974142331,'2021-03-17 17:42:22',1615973681949,1615973740662,'22','桔子很甜','');

/*Table structure for table `nonghu` */

DROP TABLE IF EXISTS `nonghu`;

CREATE TABLE `nonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nonghuzhanghao` varchar(200) NOT NULL COMMENT '农户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nonghuxingming` varchar(200) NOT NULL COMMENT '农户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nonghuzhanghao` (`nonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974315822 DEFAULT CHARSET=utf8 COMMENT='农户';

/*Data for the table `nonghu` */

insert  into `nonghu`(`id`,`addtime`,`nonghuzhanghao`,`mima`,`nonghuxingming`,`touxiang`,`xingbie`,`lianxifangshi`,`dizhi`,`youxiang`,`sfsh`,`shhf`) values (21,'2021-03-17 17:26:00','农户1','123456','农户姓名1','http://localhost:8080/ssm1xv9m/upload/nonghu_touxiang1.jpg','男','13823888881','地址1','773890001@qq.com','是',''),(22,'2021-03-17 17:26:00','农户2','123456','农户姓名2','http://localhost:8080/ssm1xv9m/upload/nonghu_touxiang2.jpg','男','13823888882','地址2','773890002@qq.com','是',''),(23,'2021-03-17 17:26:00','农户3','123456','农户姓名3','http://localhost:8080/ssm1xv9m/upload/nonghu_touxiang3.jpg','男','13823888883','地址3','773890003@qq.com','是',''),(24,'2021-03-17 17:26:00','农户4','123456','农户姓名4','http://localhost:8080/ssm1xv9m/upload/nonghu_touxiang4.jpg','男','13823888884','地址4','773890004@qq.com','是',''),(25,'2021-03-17 17:26:00','农户5','123456','农户姓名5','http://localhost:8080/ssm1xv9m/upload/nonghu_touxiang5.jpg','男','13823888885','地址5','773890005@qq.com','是',''),(26,'2021-03-17 17:26:00','农户6','123456','农户姓名6','http://localhost:8080/ssm1xv9m/upload/nonghu_touxiang6.jpg','男','13823888886','地址6','773890006@qq.com','是',''),(1615974315821,'2021-03-17 17:45:15','11','123456','陈先生','http://localhost:8080/ssm1xv9m/upload/1615974450769.jpg','男','13823866666',NULL,NULL,'是',NULL);

/*Table structure for table `shangpinpingjia` */

DROP TABLE IF EXISTS `shangpinpingjia`;

CREATE TABLE `shangpinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '农户账号',
  `nonghuxingming` varchar(200) DEFAULT NULL COMMENT '农户姓名',
  `shangpinpingjia` varchar(200) DEFAULT NULL COMMENT '商品评价',
  `shangpinpingfen` varchar(200) DEFAULT NULL COMMENT '商品评分',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974644676 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpinpingjia` */

insert  into `shangpinpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`tupian`,`nonghuzhanghao`,`nonghuxingming`,`shangpinpingjia`,`shangpinpingfen`,`pingjiariqi`,`yonghuming`,`yonghuxingming`,`userid`) values (61,'2021-03-17 17:26:00','订单编号1','商品名称1','http://localhost:8080/ssm1xv9m/upload/shangpinpingjia_tupian1.jpg','农户账号1','农户姓名1','商品评价1','1','2021-03-17','用户名1','用户姓名1',1),(62,'2021-03-17 17:26:00','订单编号2','商品名称2','http://localhost:8080/ssm1xv9m/upload/shangpinpingjia_tupian2.jpg','农户账号2','农户姓名2','商品评价2','1','2021-03-17','用户名2','用户姓名2',2),(63,'2021-03-17 17:26:00','订单编号3','商品名称3','http://localhost:8080/ssm1xv9m/upload/shangpinpingjia_tupian3.jpg','农户账号3','农户姓名3','商品评价3','1','2021-03-17','用户名3','用户姓名3',3),(64,'2021-03-17 17:26:00','订单编号4','商品名称4','http://localhost:8080/ssm1xv9m/upload/shangpinpingjia_tupian4.jpg','农户账号4','农户姓名4','商品评价4','1','2021-03-17','用户名4','用户姓名4',4),(65,'2021-03-17 17:26:00','订单编号5','商品名称5','http://localhost:8080/ssm1xv9m/upload/shangpinpingjia_tupian5.jpg','农户账号5','农户姓名5','商品评价5','1','2021-03-17','用户名5','用户姓名5',5),(66,'2021-03-17 17:26:00','订单编号6','商品名称6','http://localhost:8080/ssm1xv9m/upload/shangpinpingjia_tupian6.jpg','农户账号6','农户姓名6','商品评价6','1','2021-03-17','用户名6','用户姓名6',6),(1615974644675,'2021-03-17 17:50:43','1615974537741','桔子','http://localhost:8080/ssm1xv9m/upload/1615974474977.jpg','11','陈先生','桔子很甜哦','5','2021-03-19','22','杨先生',1615973740662);

/*Table structure for table `shangpintuihuo` */

DROP TABLE IF EXISTS `shangpintuihuo`;

CREATE TABLE `shangpintuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `tuihuoyuanyin` longtext COMMENT '退货原因',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '农户账号',
  `nonghuxingming` varchar(200) DEFAULT NULL COMMENT '农户姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974656291 DEFAULT CHARSET=utf8 COMMENT='商品退货';

/*Data for the table `shangpintuihuo` */

insert  into `shangpintuihuo`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`tupian`,`jine`,`tuihuoyuanyin`,`shenqingriqi`,`nonghuzhanghao`,`nonghuxingming`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`,`userid`) values (71,'2021-03-17 17:26:00','订单编号1','商品名称1','http://localhost:8080/ssm1xv9m/upload/shangpintuihuo_tupian1.jpg','金额1','退货原因1','2021-03-17','农户账号1','农户姓名1','用户名1','用户姓名1','是','',1),(72,'2021-03-17 17:26:00','订单编号2','商品名称2','http://localhost:8080/ssm1xv9m/upload/shangpintuihuo_tupian2.jpg','金额2','退货原因2','2021-03-17','农户账号2','农户姓名2','用户名2','用户姓名2','是','',2),(73,'2021-03-17 17:26:00','订单编号3','商品名称3','http://localhost:8080/ssm1xv9m/upload/shangpintuihuo_tupian3.jpg','金额3','退货原因3','2021-03-17','农户账号3','农户姓名3','用户名3','用户姓名3','是','',3),(74,'2021-03-17 17:26:00','订单编号4','商品名称4','http://localhost:8080/ssm1xv9m/upload/shangpintuihuo_tupian4.jpg','金额4','退货原因4','2021-03-17','农户账号4','农户姓名4','用户名4','用户姓名4','是','',4),(75,'2021-03-17 17:26:00','订单编号5','商品名称5','http://localhost:8080/ssm1xv9m/upload/shangpintuihuo_tupian5.jpg','金额5','退货原因5','2021-03-17','农户账号5','农户姓名5','用户名5','用户姓名5','是','',5),(76,'2021-03-17 17:26:00','订单编号6','商品名称6','http://localhost:8080/ssm1xv9m/upload/shangpintuihuo_tupian6.jpg','金额6','退货原因6','2021-03-17','农户账号6','农户姓名6','用户名6','用户姓名6','是','',6),(1615974656290,'2021-03-17 17:50:56','1615974537741','桔子','http://localhost:8080/ssm1xv9m/upload/1615974474977.jpg','','sfsdfsdf','2021-03-20','11','陈先生','22','杨先生','是','通过',1615973740662);

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '农户账号',
  `nonghuxingming` varchar(200) DEFAULT NULL COMMENT '农户姓名',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615974497540 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`tupian`,`guige`,`jiage`,`shuliang`,`shangpinxiangqing`,`nonghuzhanghao`,`nonghuxingming`,`dizhi`) values (31,'2021-03-17 17:26:00','商品名称1','http://localhost:8080/ssm1xv9m/upload/shangpinxinxi_tupian1.jpg','规格1','12','50','<p>商品详情1</p>','农户账号1','农户姓名1','地址1'),(32,'2021-03-17 17:26:00','商品名称2','http://localhost:8080/ssm1xv9m/upload/shangpinxinxi_tupian2.jpg','规格2','5','80','<p>商品详情2</p>','农户账号2','农户姓名2','地址2'),(33,'2021-03-17 17:26:00','商品名称3','http://localhost:8080/ssm1xv9m/upload/shangpinxinxi_tupian3.jpg','规格3','13','100','<p>商品详情3</p>','农户账号3','农户姓名3','地址3'),(34,'2021-03-17 17:26:00','商品名称4','http://localhost:8080/ssm1xv9m/upload/shangpinxinxi_tupian4.jpg','规格4','12','500','<p>商品详情4</p>','农户账号4','农户姓名4','地址4'),(35,'2021-03-17 17:26:00','商品名称5','http://localhost:8080/ssm1xv9m/upload/shangpinxinxi_tupian5.jpg','规格5','5','200','<p>商品详情5</p>','农户账号5','农户姓名5','地址5'),(36,'2021-03-17 17:26:00','商品名称6','http://localhost:8080/ssm1xv9m/upload/shangpinxinxi_tupian6.jpg','规格6','3','50','<p>商品详情6</p>','农户账号6','农户姓名6','地址6'),(1615974497539,'2021-03-17 17:48:16','桔子','http://localhost:8080/ssm1xv9m/upload/1615974474977.jpg','sdsd','6','500','<p>sdfsdfsdfsdfsdf</p>','11','陈先生','广西省');

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
) ENGINE=InnoDB AUTO_INCREMENT=1615973830430 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615973830429,'2021-03-17 17:37:10',1615973740662,1615973681949,'shangpinxinxi','桔子','http://localhost:8080/ssm1xv9m/upload/1615973643255.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','rggbbsfy692tzh13r3r285s6d2pc3qz3','2021-03-17 17:30:51','2021-03-17 18:53:25'),(2,1615973598589,'11','nonghu','农户','602zgegp3hgg62o7ll5pwj5x1wcleb6d','2021-03-17 17:33:48','2021-03-17 18:41:16'),(3,1615973740662,'22','yonghu','用户','o80gn30n1qaf8zlmkvbq3q13icxje5z5','2021-03-17 17:35:50','2021-03-17 18:50:14'),(4,1615974315821,'11','nonghu','农户','0q60eesjodl5pfr42l2x7sw1ki6dgmzh','2021-03-17 17:46:01','2021-03-17 18:55:40');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-17 17:26:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615973740663 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (11,'2021-03-17 17:26:00','用户1','123456','用户姓名1','http://localhost:8080/ssm1xv9m/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-17 17:26:00','用户2','123456','用户姓名2','http://localhost:8080/ssm1xv9m/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-17 17:26:00','用户3','123456','用户姓名3','http://localhost:8080/ssm1xv9m/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-17 17:26:00','用户4','123456','用户姓名4','http://localhost:8080/ssm1xv9m/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-17 17:26:00','用户5','123456','用户姓名5','http://localhost:8080/ssm1xv9m/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-17 17:26:00','用户6','123456','用户姓名6','http://localhost:8080/ssm1xv9m/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1615973740662,'2021-03-17 17:35:40','22','123456','杨先生','http://localhost:8080/ssm1xv9m/upload/1615973810132.jpg','男','13823822222',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
