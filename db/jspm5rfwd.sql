-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm5rfwd
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285792736 DEFAULT CHARSET=utf8 COMMENT='在线物业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-03-09 09:14:06',1,1,'提问1','回复1',1),(72,'2021-03-09 09:14:06',2,2,'提问2','回复2',2),(73,'2021-03-09 09:14:06',3,3,'提问3','回复3',3),(74,'2021-03-09 09:14:06',4,4,'提问4','回复4',4),(75,'2021-03-09 09:14:06',5,5,'提问5','回复5',5),(76,'2021-03-09 09:14:06',6,6,'提问6','回复6',6),(1615285792735,'2021-03-09 10:29:51',1615285537091,NULL,'‍6栋504有需要报修，请尽快联系维修工上门维修\r\n','马上处理\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm5rfwd/upload/1615284985494.jpg'),(2,'picture2','http://localhost:8080/jspm5rfwd/upload/1615285374238.jpg'),(3,'picture3','http://localhost:8080/jspm5rfwd/upload/1615284922293.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxinxi`
--

DROP TABLE IF EXISTS `discusshuodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxinxi`
--

LOCK TABLES `discusshuodongxinxi` WRITE;
/*!40000 ALTER TABLE `discusshuodongxinxi` DISABLE KEYS */;
INSERT INTO `discusshuodongxinxi` VALUES (111,'2021-03-09 09:14:06',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-09 09:14:06',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-09 09:14:06',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-09 09:14:06',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-09 09:14:06',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-09 09:14:06',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285734350 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-03-09 09:14:06','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-03-09 09:14:06','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-03-09 09:14:06','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-03-09 09:14:06','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-03-09 09:14:06','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-03-09 09:14:06','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615285723680,'2021-03-09 10:28:43','养猫','<p>一名新晋铲屎官，有没有爱猫养猫的分享一下养猫心得。不得的大家互相交流</p>\n<p><img src=\"../../..//upload/1615285721095.jpg\" alt=\"\" width=\"500\" height=\"313\" /></p>',0,1615285537091,'2','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285598136 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (31,'2021-03-09 09:14:06','活动标题1','类型1','活动时间1','活动地点1','2021-03-09','住户账号1','住户姓名1','楼房号1','联系电话1','是',''),(32,'2021-03-09 09:14:06','活动标题2','类型2','活动时间2','活动地点2','2021-03-09','住户账号2','住户姓名2','楼房号2','联系电话2','是',''),(33,'2021-03-09 09:14:06','活动标题3','类型3','活动时间3','活动地点3','2021-03-09','住户账号3','住户姓名3','楼房号3','联系电话3','是',''),(34,'2021-03-09 09:14:06','活动标题4','类型4','活动时间4','活动地点4','2021-03-09','住户账号4','住户姓名4','楼房号4','联系电话4','是',''),(35,'2021-03-09 09:14:06','活动标题5','类型5','活动时间5','活动地点5','2021-03-09','住户账号5','住户姓名5','楼房号5','联系电话5','是',''),(36,'2021-03-09 09:14:06','活动标题6','类型6','活动时间6','活动地点6','2021-03-09','住户账号6','住户姓名6','楼房号6','联系电话6','是',''),(1615285598135,'2021-03-09 10:26:37','情系邻里，共建家园','公益类','5.7-5.9','小区','2021-03-09','2','张明','6栋504','12312312312','是','ok');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) NOT NULL COMMENT '活动标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `fengmiantu` varchar(200) NOT NULL COMMENT '封面图',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `kebaorenshu` int(11) DEFAULT NULL COMMENT '可报人数',
  `huodongneirong` longtext COMMENT '活动内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285352672 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (21,'2021-03-09 09:14:06','活动标题1','类型1','http://localhost:8080/jspm5rfwd/upload/huodongxinxi_fengmiantu1.jpg','活动时间1','活动地点1',1,'活动内容1','2021-03-09'),(22,'2021-03-09 09:14:06','活动标题2','类型2','http://localhost:8080/jspm5rfwd/upload/huodongxinxi_fengmiantu2.jpg','活动时间2','活动地点2',2,'活动内容2','2021-03-09'),(23,'2021-03-09 09:14:06','活动标题3','类型3','http://localhost:8080/jspm5rfwd/upload/huodongxinxi_fengmiantu3.jpg','活动时间3','活动地点3',3,'活动内容3','2021-03-09'),(24,'2021-03-09 09:14:06','活动标题4','类型4','http://localhost:8080/jspm5rfwd/upload/huodongxinxi_fengmiantu4.jpg','活动时间4','活动地点4',4,'活动内容4','2021-03-09'),(25,'2021-03-09 09:14:06','活动标题5','类型5','http://localhost:8080/jspm5rfwd/upload/huodongxinxi_fengmiantu5.jpg','活动时间5','活动地点5',5,'活动内容5','2021-03-09'),(26,'2021-03-09 09:14:06','活动标题6','类型6','http://localhost:8080/jspm5rfwd/upload/huodongxinxi_fengmiantu6.jpg','活动时间6','活动地点6',6,'活动内容6','2021-03-09'),(1615285352671,'2021-03-09 10:22:32','情系邻里，共建家园','公益类','http://localhost:8080/jspm5rfwd/upload/1615285315043.jpg','5.7-5.9','小区',30,'组织志愿者开展扶贫济困，邻里互助活动','2021-03-09');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285494948 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-09 09:14:06','标题1','简介1','http://localhost:8080/jspm5rfwd/upload/news_picture1.jpg','内容1'),(102,'2021-03-09 09:14:06','标题2','简介2','http://localhost:8080/jspm5rfwd/upload/news_picture2.jpg','内容2'),(103,'2021-03-09 09:14:06','标题3','简介3','http://localhost:8080/jspm5rfwd/upload/news_picture3.jpg','内容3'),(104,'2021-03-09 09:14:06','标题4','简介4','http://localhost:8080/jspm5rfwd/upload/news_picture4.jpg','内容4'),(105,'2021-03-09 09:14:06','标题5','简介5','http://localhost:8080/jspm5rfwd/upload/news_picture5.jpg','内容5'),(106,'2021-03-09 09:14:06','标题6','简介6','http://localhost:8080/jspm5rfwd/upload/news_picture6.jpg','内容6'),(1615285494947,'2021-03-09 10:24:53','关于及时缴纳物业费通知','物业费缴纳','http://localhost:8080/jspm5rfwd/upload/1615285462552.jpg','请各住户每月准时缴纳物业费，多谢配合\r\n<img src=\"http://localhost:8080/jspm5rfwd/upload/1615285492513.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm5rfwd/upload/1615285492513.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285562203 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','a8lp9sv0d590dq7q1heafrqsqjzoq1ff','2021-03-09 09:21:14','2021-03-09 11:31:30'),(2,1615285537091,'2','zhuhu','住户','hmfzs1hafrr3efealjtw38in9fd79gxj','2021-03-09 10:25:42','2021-03-09 11:33:49'),(3,1615285220444,'1','zhuhu','住户','4no3aagmcufy3s3nskahca8zlszazqvq','2021-03-09 10:31:11','2021-03-09 11:31:11');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuchuli`
--

DROP TABLE IF EXISTS `tousuchuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) DEFAULT NULL COMMENT '标题名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `chulifankui` longtext COMMENT '处理反馈',
  `chulijindu` varchar(200) DEFAULT NULL COMMENT '处理进度',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285930918 DEFAULT CHARSET=utf8 COMMENT='投诉处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuchuli`
--

LOCK TABLES `tousuchuli` WRITE;
/*!40000 ALTER TABLE `tousuchuli` DISABLE KEYS */;
INSERT INTO `tousuchuli` VALUES (51,'2021-03-09 09:14:06','标题名称1','类型1','处理反馈1','处理中','2021-03-09 17:14:06','住户账号1','住户姓名1','楼房号1','联系电话1'),(52,'2021-03-09 09:14:06','标题名称2','类型2','处理反馈2','处理中','2021-03-09 17:14:06','住户账号2','住户姓名2','楼房号2','联系电话2'),(53,'2021-03-09 09:14:06','标题名称3','类型3','处理反馈3','处理中','2021-03-09 17:14:06','住户账号3','住户姓名3','楼房号3','联系电话3'),(54,'2021-03-09 09:14:06','标题名称4','类型4','处理反馈4','处理中','2021-03-09 17:14:06','住户账号4','住户姓名4','楼房号4','联系电话4'),(55,'2021-03-09 09:14:06','标题名称5','类型5','处理反馈5','处理中','2021-03-09 17:14:06','住户账号5','住户姓名5','楼房号5','联系电话5'),(56,'2021-03-09 09:14:06','标题名称6','类型6','处理反馈6','处理中','2021-03-09 17:14:06','住户账号6','住户姓名6','楼房号6','联系电话6'),(1615285930917,'2021-03-09 10:32:10','小区噪音问题','噪音','已经协商解决','已完成','2021-03-10 13:13:56','2','张明','6栋504','12312312312');
/*!40000 ALTER TABLE `tousuchuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousufankui`
--

DROP TABLE IF EXISTS `tousufankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousufankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) NOT NULL COMMENT '标题名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousushijian` date DEFAULT NULL COMMENT '投诉时间',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285850469 DEFAULT CHARSET=utf8 COMMENT='投诉反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousufankui`
--

LOCK TABLES `tousufankui` WRITE;
/*!40000 ALTER TABLE `tousufankui` DISABLE KEYS */;
INSERT INTO `tousufankui` VALUES (41,'2021-03-09 09:14:06','标题名称1','类型1','http://localhost:8080/jspm5rfwd/upload/tousufankui_tupian1.jpg','投诉内容1','2021-03-09','住户账号1','住户姓名1','楼房号1','联系电话1','是',''),(42,'2021-03-09 09:14:06','标题名称2','类型2','http://localhost:8080/jspm5rfwd/upload/tousufankui_tupian2.jpg','投诉内容2','2021-03-09','住户账号2','住户姓名2','楼房号2','联系电话2','是',''),(43,'2021-03-09 09:14:06','标题名称3','类型3','http://localhost:8080/jspm5rfwd/upload/tousufankui_tupian3.jpg','投诉内容3','2021-03-09','住户账号3','住户姓名3','楼房号3','联系电话3','是',''),(44,'2021-03-09 09:14:06','标题名称4','类型4','http://localhost:8080/jspm5rfwd/upload/tousufankui_tupian4.jpg','投诉内容4','2021-03-09','住户账号4','住户姓名4','楼房号4','联系电话4','是',''),(45,'2021-03-09 09:14:06','标题名称5','类型5','http://localhost:8080/jspm5rfwd/upload/tousufankui_tupian5.jpg','投诉内容5','2021-03-09','住户账号5','住户姓名5','楼房号5','联系电话5','是',''),(46,'2021-03-09 09:14:06','标题名称6','类型6','http://localhost:8080/jspm5rfwd/upload/tousufankui_tupian6.jpg','投诉内容6','2021-03-09','住户账号6','住户姓名6','楼房号6','联系电话6','是',''),(1615285850468,'2021-03-09 10:30:50','小区噪音问题','噪音','http://localhost:8080/jspm5rfwd/upload/1615285838911.jpeg','小区噪音扰民','2021-03-09','2','张明','6栋504','12312312312','是','尽快解决');
/*!40000 ALTER TABLE `tousufankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-09 09:14:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuyefei`
--

DROP TABLE IF EXISTS `wuyefei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuyefei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeimingcheng` varchar(200) NOT NULL COMMENT '缴费名称',
  `yuefen` varchar(200) NOT NULL COMMENT '月份',
  `jiaonajine` int(11) NOT NULL COMMENT '缴纳金额',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285250050 DEFAULT CHARSET=utf8 COMMENT='物业费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuyefei`
--

LOCK TABLES `wuyefei` WRITE;
/*!40000 ALTER TABLE `wuyefei` DISABLE KEYS */;
INSERT INTO `wuyefei` VALUES (61,'2021-03-09 09:14:06','缴费名称1','月份1',1,'2021-03-09','住户账号1','住户姓名1','楼房号1','未支付'),(62,'2021-03-09 09:14:06','缴费名称2','月份2',2,'2021-03-09','住户账号2','住户姓名2','楼房号2','未支付'),(63,'2021-03-09 09:14:06','缴费名称3','月份3',3,'2021-03-09','住户账号3','住户姓名3','楼房号3','未支付'),(64,'2021-03-09 09:14:06','缴费名称4','月份4',4,'2021-03-09','住户账号4','住户姓名4','楼房号4','未支付'),(65,'2021-03-09 09:14:06','缴费名称5','月份5',5,'2021-03-09','住户账号5','住户姓名5','楼房号5','未支付'),(66,'2021-03-09 09:14:06','缴费名称6','月份6',6,'2021-03-09','住户账号6','住户姓名6','楼房号6','未支付'),(1615285250049,'2021-03-09 10:20:49','2021年2月物业费','2021年2月',500,'2021-03-09','1','陈一','5栋604','已支付');
/*!40000 ALTER TABLE `wuyefei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuhu`
--

DROP TABLE IF EXISTS `zhuhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuhuzhanghao` varchar(200) NOT NULL COMMENT '住户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhuhuxingming` varchar(200) NOT NULL COMMENT '住户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuhuzhanghao` (`zhuhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615285537092 DEFAULT CHARSET=utf8 COMMENT='住户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuhu`
--

LOCK TABLES `zhuhu` WRITE;
/*!40000 ALTER TABLE `zhuhu` DISABLE KEYS */;
INSERT INTO `zhuhu` VALUES (11,'2021-03-09 09:14:06','住户1','123456','住户姓名1','男','http://localhost:8080/jspm5rfwd/upload/zhuhu_touxiang1.jpg','楼房号1','13823888881','440300199101010001'),(12,'2021-03-09 09:14:06','住户2','123456','住户姓名2','男','http://localhost:8080/jspm5rfwd/upload/zhuhu_touxiang2.jpg','楼房号2','13823888882','440300199202020002'),(13,'2021-03-09 09:14:06','住户3','123456','住户姓名3','男','http://localhost:8080/jspm5rfwd/upload/zhuhu_touxiang3.jpg','楼房号3','13823888883','440300199303030003'),(14,'2021-03-09 09:14:06','住户4','123456','住户姓名4','男','http://localhost:8080/jspm5rfwd/upload/zhuhu_touxiang4.jpg','楼房号4','13823888884','440300199404040004'),(15,'2021-03-09 09:14:06','住户5','123456','住户姓名5','男','http://localhost:8080/jspm5rfwd/upload/zhuhu_touxiang5.jpg','楼房号5','13823888885','440300199505050005'),(16,'2021-03-09 09:14:06','住户6','123456','住户姓名6','男','http://localhost:8080/jspm5rfwd/upload/zhuhu_touxiang6.jpg','楼房号6','13823888886','440300199606060006'),(1615285220444,'2021-03-09 10:20:20','1','1','陈一','女','http://localhost:8080/jspm5rfwd/upload/1615285206254.jpg','5栋604','12312312312','123456789789456123'),(1615285537091,'2021-03-09 10:25:37','2','2','张明','男','http://localhost:8080/jspm5rfwd/upload/1615285552057.jpg','6栋504','12312312312','123456789789456123');
/*!40000 ALTER TABLE `zhuhu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 15:59:24
