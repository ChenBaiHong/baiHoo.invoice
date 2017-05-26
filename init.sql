-- MySQL dump 10.13  Distrib 5.5.25, for Win32 (x86)
-- Host: localhost    Database: invoicing
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `ck_editor`
--

DROP TABLE IF EXISTS `ck_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_editor`
--

LOCK TABLES `ck_editor` WRITE;
/*!40000 ALTER TABLE `ck_editor` DISABLE KEYS */;
INSERT INTO `ck_editor` VALUES ('402881e544cedc1c0144cedc7689012c','<html><head><title></title><link href=\'plug-in/easyui/themes/default/easyui.css\' id=\'easyuiTheme\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/easyui/themes/icon.css\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/accordion/css/accordion.css\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/Validform/css/style.css\' rel=\'stylesheet\' type=\'text/css\' /><link href=\'plug-in/Validform/css/tablefrom.css\' rel=\'stylesheet\' type=\'text/css\' /><style type=\'text/css\'>body{font-size:12px;}table {border:1px solid #000000;border-collapse: collapse;}td {border:1px solid #000000;background:white;font-size:12px;font-family: 新宋体;color: #333;</style></head><body><div><p>附件2：</p><h1 style=\'text-align:center\'><span style=\'font-size:24px\'><strong>价格认证人员统计表</strong></span></h1><p>填报单位（盖章）：<input name=\'org_name\' type=\'text\' value=\'${org_name?if_exists?html}\' /></p><p>单位代码号：<input name=\'num\' type=\'text\' value=\'${num?if_exists?html}\' /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位：人填&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; 月&nbsp;&nbsp; 日</p><form action=\'cgFormBuildController.do?saveOrUpdate\' id=\'formobj\' method=\'post\' name=\'formobj\'><input name=\'tableName\' type=\'hidden\' value=\'${tableName?if_exists?html}\' /> <input name=\'id\' type=\'hidden\' value=\'${id?if_exists?html}\' />#{jform_hidden_field}<input type=\'hidden\' /><p>&nbsp;</p><table border=\'1\' cellpadding=\'0\' cellspacing=\'0\' style=\'width:1016px\'><tbody><tr><td rowspan=\'4\'><p>&nbsp;</p><p>&nbsp;</p><p>合计</p><p>&nbsp;</p></td><td colspan=\'6\' rowspan=\'2\'><p>&nbsp;</p><p>人数</p></td><td colspan=\'5\' rowspan=\'2\'><p>&nbsp;</p><p>学历</p></td><td colspan=\'4\' rowspan=\'2\'><p>&nbsp;</p><p>取得的（上岗）执业资格</p></td><td colspan=\'4\'><p>专业技术职称</p></td></tr><tr><td colspan=\'4\'><p>（经济系列、工程系列）</p></td></tr><tr><td colspan=\'3\'><p>在编人员</p></td><td colspan=\'2\'><p>聘用人员</p></td><td rowspan=\'2\'><p>临时(借用)人员</p></td><td rowspan=\'2\'><p>高中</p></td><td rowspan=\'2\'><p>大专</p></td><td rowspan=\'2\'><p>本科</p></td><td rowspan=\'2\'><p>研究生</p></td><td rowspan=\'2\'><p>其它</p></td><td rowspan=\'2\'><p>价格</p><p>鉴证员</p></td><td rowspan=\'2\'><p>价格</p><p>鉴证师</p></td><td rowspan=\'2\'><p>复核</p><p>裁定员</p></td><td rowspan=\'2\'><p>其它</p></td><td rowspan=\'2\'><p>初级</p></td><td rowspan=\'2\'><p>中级</p></td><td rowspan=\'2\'><p>高级</p></td><td rowspan=\'2\'><p>其它</p></td></tr><tr><td><p>本单位</p></td><td colspan=\'2\'><p>其它</p></td><td><p>长期</p></td><td><p>短期</p></td></tr><tr><td><p>A1</p></td><td><p>B1</p></td><td><p>B2</p></td><td colspan=\'2\'><p>B3</p></td><td><p>B4</p></td><td><p>B5</p></td><td><p>C1</p></td><td><p>C2</p></td><td><p>C3</p></td><td><p>C4</p></td><td><p>C5</p></td><td><p>D1</p></td><td><p>D2</p></td><td><p>D3</p></td><td><p>D4</p></td><td><p>E1</p></td><td><p>E2</p></td><td><p>E3</p></td><td><p>E4</p></td></tr><tr><td><p><input name=\'a1\' size=\'4\' type=\'text\' value=\'${a1?if_exists?html}\' /></p></td><td><p><input name=\'b1\' size=\'4\' type=\'text\' value=\'${b1?if_exists?html}\' /></p></td><td><p><input name=\'b2\' size=\'4\' type=\'text\' value=\'${b2?if_exists?html}\' /></p></td><td colspan=\'2\'><p><input name=\'b3\' size=\'4\' type=\'text\' value=\'${b3?if_exists?html}\' /></p></td><td><p><input name=\'b4\' size=\'4\' type=\'text\' value=\'${b4?if_exists?html}\' /></p></td><td><p><input name=\'b5\' size=\'4\' type=\'text\' value=\'${b5?if_exists?html}\' /></p></td><td><p><input name=\'c1\' size=\'4\' type=\'text\' value=\'${c1?if_exists?html}\' /></p></td><td><p><input name=\'c2\' size=\'4\' type=\'text\' value=\'${c2?if_exists?html}\' /></p></td><td><p><input name=\'c3\' size=\'4\' type=\'text\' value=\'${c3?if_exists?html}\' /></p></td><td><p><input name=\'c4\' size=\'4\' type=\'text\' value=\'${c4?if_exists?html}\' /></p></td><td><p><input name=\'c5\' size=\'4\' type=\'text\' value=\'${c5?if_exists?html}\' /></p></td><td><p><input name=\'d1\' size=\'4\' type=\'text\' value=\'${d1?if_exists?html}\' /></p></td><td><p><input name=\'d2\' size=\'4\' type=\'text\' value=\'${d2?if_exists?html}\' /></p></td><td><p><input name=\'d3\' size=\'4\' type=\'text\' value=\'${d3?if_exists?html}\' /></p></td><td><p><input name=\'d4\' size=\'4\' type=\'text\' value=\'${d4?if_exists?html}\' /></p></td><td><p><input name=\'e1\' size=\'4\' type=\'text\' value=\'${e1?if_exists?html}\' /></p></td><td><p><input name=\'e2\' size=\'4\' type=\'text\' value=\'${e2?if_exists?html}\' /></p></td><td><p><input name=\'e3\' size=\'4\' type=\'text\' value=\'${e3?if_exists?html}\' /></p></td><td><p><input name=\'e4\' size=\'4\' type=\'text\' value=\'${e4?if_exists?html}\' /></p></td></tr><tr><td colspan=\'20\'><p>&nbsp;</p><p>填报说明：</p><p>一、合计（A）：填报至统计截止期的本机构的人员总数。</p><p>二、人数：</p><p>在编人员：分别按照价格认证机构编制内及其它具有价格主管部门编制的实有人数填报在B1、B2栏内。</p><p>聘用人员：按照经价格主管部门或价格认证机构人事部门认可的并签订三年以上的工作合同的人员（B3）；以及没有经过价格主管部门或价格认证机构人事部门认可的签订合同少于三年的人员（B4）分别来进行统计。</p><p>临时（借用）人员（B5）：特指外聘的临时工，或者工作关系不在本单位且无长期聘用合同的借调人员等。</p><p>三、表内各栏目关系</p><p>A=B1+B2+B3+B4+B5=C1+C2+C3+C4+C5=D1+D2+D3+D4=E1+E2+E3+E4</p></td></tr></tbody></table></form></div></body></html>');
/*!40000 ALTER TABLE `ck_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_finder`
--

DROP TABLE IF EXISTS `ck_finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_finder`
--

LOCK TABLES `ck_finder` WRITE;
/*!40000 ALTER TABLE `ck_finder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc`
--

DROP TABLE IF EXISTS `doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc`
--

LOCK TABLES `doc` WRITE;
/*!40000 ALTER TABLE `doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optimistic_locking`
--

DROP TABLE IF EXISTS `optimistic_locking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optimistic_locking`
--

LOCK TABLES `optimistic_locking` WRITE;
/*!40000 ALTER TABLE `optimistic_locking` DISABLE KEYS */;
/*!40000 ALTER TABLE `optimistic_locking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_branch`
--

DROP TABLE IF EXISTS `t_b_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_branch` (
  `id` varchar(36) NOT NULL,
  `branchadd` varchar(20) DEFAULT NULL COMMENT '分公司地址',
  `branchtel` varchar(13) DEFAULT NULL COMMENT '分公司电话',
  `leadername` varchar(10) DEFAULT NULL COMMENT '负责人姓名',
  `leadertel` varchar(13) DEFAULT NULL COMMENT '负责人电话',
  `zipcode` varchar(8) DEFAULT NULL COMMENT '邮编',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_branch`
--

LOCK TABLES `t_b_branch` WRITE;
/*!40000 ALTER TABLE `t_b_branch` DISABLE KEYS */;
INSERT INTO `t_b_branch` VALUES ('402881e54506bb1701450748f4030035','北京昌平区天通苑本四区10号楼4层','4008080105','王勇','13588888888','100012');
/*!40000 ALTER TABLE `t_b_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_goods`
--

DROP TABLE IF EXISTS `t_b_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_goods` (
  `id` varchar(36) NOT NULL,
  `goodsname` varchar(16) DEFAULT NULL COMMENT '货品名称',
  `goodstype` varchar(2) DEFAULT NULL COMMENT '货品类型',
  `costprice` double DEFAULT '0' COMMENT '成本价',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_goods`
--

LOCK TABLES `t_b_goods` WRITE;
/*!40000 ALTER TABLE `t_b_goods` DISABLE KEYS */;
INSERT INTO `t_b_goods` VALUES ('402881e54506bb1701450754f5550040','Java教程','4',88888,'北京动力节点'),('402881e54506bb1701450756f7fe0046','数据库教程','4',6666,'北京动力节点'),('402881e545076093014507628bbc0001','123','1',1,'1');
/*!40000 ALTER TABLE `t_b_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_purchase`
--

DROP TABLE IF EXISTS `t_b_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_purchase` (
  `id` varchar(36) NOT NULL,
  `goodsid` varchar(36) DEFAULT NULL COMMENT '货品编号',
  `goodsnumber` varchar(20) DEFAULT NULL COMMENT '货品批号',
  `goodscount` varchar(10) DEFAULT NULL COMMENT '数量',
  `price` double DEFAULT '0' COMMENT '单价',
  `status` varchar(1) DEFAULT NULL COMMENT '状态',
  `suppliername` varchar(20) DEFAULT NULL COMMENT '供应商名称',
  `contactperson` varchar(10) DEFAULT NULL COMMENT '联系人',
  `persontel` varchar(15) DEFAULT NULL COMMENT '联系人电话',
  `supplierid` varchar(36) DEFAULT NULL COMMENT '供应商编号',
  `goodsname` varchar(20) DEFAULT NULL COMMENT '货品名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_purchase`
--

LOCK TABLES `t_b_purchase` WRITE;
/*!40000 ALTER TABLE `t_b_purchase` DISABLE KEYS */;
INSERT INTO `t_b_purchase` VALUES ('402881e54506bb170145075aebef004f','402881e54506bb1701450754f5550040','SP001','10000',8888,'1','腾讯','张小龙','15166666666','402881e54506bb1701450752d41c003a','Java教程',''),('402881e54506bb170145075ceea90051','402881e54506bb1701450756f7fe0046','SP002','50000',6666,'1','腾讯','张小龙','15166666666','402881e54506bb1701450752d41c003a','数据库教程','');
/*!40000 ALTER TABLE `t_b_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_ship`
--

DROP TABLE IF EXISTS `t_b_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_ship` (
  `id` varchar(36) NOT NULL,
  `goodsid` varchar(36) DEFAULT NULL COMMENT '货品编号',
  `goodsname` varchar(20) DEFAULT NULL COMMENT '货品名称',
  `goodscount` varchar(10) DEFAULT NULL COMMENT '数量',
  `status` varchar(1) DEFAULT NULL COMMENT '状态',
  `branchid` varchar(36) DEFAULT NULL COMMENT '发送分部',
  `branchadd` varchar(20) DEFAULT NULL COMMENT '分部地址',
  `shipdate` datetime DEFAULT NULL COMMENT '出库日期',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_ship`
--

LOCK TABLES `t_b_ship` WRITE;
/*!40000 ALTER TABLE `t_b_ship` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_b_ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_stock`
--

DROP TABLE IF EXISTS `t_b_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_stock` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `goodsid` varchar(36) DEFAULT NULL COMMENT '货品编号',
  `totalcount` varchar(10) DEFAULT NULL COMMENT '数量',
  `goodsname` varchar(20) DEFAULT NULL COMMENT '货品名称',
  `goodstype` varchar(1) DEFAULT NULL COMMENT '货品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_stock`
--

LOCK TABLES `t_b_stock` WRITE;
/*!40000 ALTER TABLE `t_b_stock` DISABLE KEYS */;
INSERT INTO `t_b_stock` VALUES ('402881e54506bb1701450754f5560041','402881e54506bb1701450754f5550040','0','Java教程','4'),('402881e54506bb1701450756f7ff0047','402881e54506bb1701450756f7fe0046','0','数据库教程','4');
/*!40000 ALTER TABLE `t_b_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_supplier`
--

DROP TABLE IF EXISTS `t_b_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_supplier` (
  `id` varchar(36) NOT NULL,
  `suppliername` varchar(20) DEFAULT NULL COMMENT '供应商名称',
  `supplieraddr` varchar(26) DEFAULT NULL COMMENT '供应商地址',
  `suppliertel` varchar(15) DEFAULT NULL COMMENT '供应商电话',
  `supplieremail` varchar(30) DEFAULT NULL COMMENT '供应商Email',
  `suppliernum` varchar(20) DEFAULT NULL COMMENT '企业注册号',
  `contactperson` varchar(10) DEFAULT NULL COMMENT '联系人',
  `persontel` varchar(15) DEFAULT NULL COMMENT '联系人电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_supplier`
--

LOCK TABLES `t_b_supplier` WRITE;
/*!40000 ALTER TABLE `t_b_supplier` DISABLE KEYS */;
INSERT INTO `t_b_supplier` VALUES ('402881e54506bb1701450752d41c003a','腾讯','深圳市高新科技园北区','075583765566','944942013@qq.com','66666666','马化腾','13566666666');
/*!40000 ALTER TABLE `t_b_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_finance`
--

DROP TABLE IF EXISTS `t_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) DEFAULT NULL,
  `BUYMONEY` float DEFAULT NULL,
  `BUYPROJECTNO` varchar(255) DEFAULT NULL,
  `BUYPROJECTORG` varchar(255) DEFAULT NULL,
  `BUYUSE` varchar(255) DEFAULT NULL,
  `BUYYEAR` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COLLECTORG` varchar(255) DEFAULT NULL,
  `EXPENSEACCOUNT` varchar(255) DEFAULT NULL,
  `HAPPENYEAR` int(11) DEFAULT NULL,
  `MONEYAREA` varchar(255) DEFAULT NULL,
  `MONEYSOURCE` varchar(255) DEFAULT NULL,
  `MONEYTOTAL` float DEFAULT NULL,
  `MONEYUSE` varchar(255) DEFAULT NULL,
  `PAYTIME` datetime DEFAULT NULL,
  `ZBWNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_finance`
--

LOCK TABLES `t_finance` WRITE;
/*!40000 ALTER TABLE `t_finance` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_finance_files`
--

DROP TABLE IF EXISTS `t_finance_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_finance_files`
--

LOCK TABLES `t_finance_files` WRITE;
/*!40000 ALTER TABLE `t_finance_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_finance_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_attachment`
--

DROP TABLE IF EXISTS `t_s_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) DEFAULT NULL,
  `businesskey` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `extend` varchar(32) DEFAULT NULL,
  `note` longtext,
  `realpath` varchar(100) DEFAULT NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) DEFAULT NULL,
  `INFOTYPEID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_attachment`
--

LOCK TABLES `t_s_attachment` WRITE;
/*!40000 ALTER TABLE `t_s_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_base_user`
--

DROP TABLE IF EXISTS `t_s_base_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `signature` blob,
  `status` smallint(6) DEFAULT NULL,
  `userkey` varchar(200) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_base_user`
--

LOCK TABLES `t_s_base_user` WRITE;
/*!40000 ALTER TABLE `t_s_base_user` DISABLE KEYS */;
INSERT INTO `t_s_base_user` VALUES ('402881e544cedc1c0144cedc74b60044',1,NULL,'c44b01947c9e6e3f','管理员',NULL,1,NULL,'admin','402881e544cedc1c0144cedc74450015'),('402881e54506bb17014506c9f9e40024',NULL,NULL,'adac3ce1df84a8f4','马云',NULL,1,NULL,'manager','402881e54506bb17014506bda4e00001'),('402881e54506bb17014506cea7630027',NULL,NULL,'ef0a46b9a0a8e2b0ceae88774dce4c9c','李彦宏',NULL,1,NULL,'purchaser','402881e54506bb17014506bda4e00001'),('402881e54506bb17014506cf7315002a',NULL,NULL,'0e7a8a118bb1ad7e','周鸿祎',NULL,1,NULL,'stocker','402881e54506bb17014506be40e40003');
/*!40000 ALTER TABLE `t_s_base_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_config`
--

DROP TABLE IF EXISTS `t_s_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_config`
--

LOCK TABLES `t_s_config` WRITE;
/*!40000 ALTER TABLE `t_s_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_depart`
--

DROP TABLE IF EXISTS `t_s_depart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_depart`
--

LOCK TABLES `t_s_depart` WRITE;
/*!40000 ALTER TABLE `t_s_depart` DISABLE KEYS */;
INSERT INTO `t_s_depart` VALUES ('402881e544cedc1c0144cedc74450015','信息部','信息部门',NULL),('402881e54506bb17014506bda4e00001','采购部','',NULL),('402881e54506bb17014506be40e40003','库存管理部','',NULL);
/*!40000 ALTER TABLE `t_s_depart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_document`
--

DROP TABLE IF EXISTS `t_s_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_document`
--

LOCK TABLES `t_s_document` WRITE;
/*!40000 ALTER TABLE `t_s_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_fileno`
--

DROP TABLE IF EXISTS `t_s_fileno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) DEFAULT NULL,
  `filenonum` int(11) DEFAULT NULL,
  `filenotype` varchar(32) DEFAULT NULL,
  `filenoYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_fileno`
--

LOCK TABLES `t_s_fileno` WRITE;
/*!40000 ALTER TABLE `t_s_fileno` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_fileno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_function`
--

DROP TABLE IF EXISTS `t_s_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) DEFAULT NULL,
  `functionlevel` smallint(6) DEFAULT NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) DEFAULT NULL,
  `functionurl` varchar(100) DEFAULT NULL,
  `parentfunctionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_function`
--

LOCK TABLES `t_s_function` WRITE;
/*!40000 ALTER TABLE `t_s_function` DISABLE KEYS */;
INSERT INTO `t_s_function` VALUES ('402881e544cedc1c0144cedc74630019',NULL,0,'系统管理','5','',NULL,'402881e544cedc1c0144cedc742f0005'),('402881e544cedc1c0144cedc7468001c',NULL,0,'系统监控','11','',NULL,'402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc746b001d',NULL,1,'用户管理','5','userController.do?user','402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc746c001e',NULL,1,'角色管理','6','roleController.do?role','402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc746e001f',NULL,1,'菜单管理','7','functionController.do?function','402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc74710020',NULL,1,'数据字典','6','systemController.do?typeGroupList','402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc74720021',NULL,1,'图标管理','18','iconController.do?icon','402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc74750022',NULL,1,'部门管理','22','departController.do?depart','402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc742b0002'),('402881e544cedc1c0144cedc74800028',NULL,1,'系统日志','21','logController.do?log','402881e544cedc1c0144cedc7468001c','402881e544cedc1c0144cedc742b0002'),('402881e544ddf01d0144ddfc77e80006',NULL,0,'货品出入库','1','',NULL,'402881e544cedc1c0144cedc74310007'),('402881e544de561b0144de78f1d50002',NULL,1,'货品入库','1','tBPurchaseController.do?tBPurchase','402881e544ddf01d0144ddfc77e80006','402881e544cedc1c0144cedc742b0002'),('402881e544de561b0144de79dcb90004',NULL,1,'货品出库','2','tBShipController.do?tBShip','402881e544ddf01d0144ddfc77e80006','402881e544cedc1c0144cedc742b0002'),('402881e544deb0470144deb58fc90001',NULL,0,'基础资料','2','',NULL,'402881e544cedc1c0144cedc74310007'),('402881e544deb0470144deb68d310003',NULL,1,'货品信息','1','tBGoodsController.do?tBGoods','402881e544deb0470144deb58fc90001','402881e544cedc1c0144cedc742b0002'),('402881e544deb0470144deb727a40005',NULL,1,'供货商信息','2','tBSupplierController.do?tBSupplier','402881e544deb0470144deb58fc90001','402881e544cedc1c0144cedc742b0002'),('402881e544deb0470144deb821e80008',NULL,1,'分公司信息','3','tBBranchController.do?tBBranch','402881e544deb0470144deb58fc90001','402881e544cedc1c0144cedc742b0002'),('402881e544f729560144f72bb4ae0001',NULL,1,'库存查询','3','tBStockController.do?tBStock','402881e544ddf01d0144ddfc77e80006','402881e544cedc1c0144cedc742b0002');
/*!40000 ALTER TABLE `t_s_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_icon`
--

DROP TABLE IF EXISTS `t_s_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `iconclas` varchar(200) DEFAULT NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_icon`
--

LOCK TABLES `t_s_icon` WRITE;
/*!40000 ALTER TABLE `t_s_icon` DISABLE KEYS */;
INSERT INTO `t_s_icon` VALUES ('402881e544cedc1c0144cedc74040000','png','back',NULL,'返回','plug-in/accordion/images/back.png',1),('402881e544cedc1c0144cedc742a0001','png','pie',NULL,'饼图','plug-in/accordion/images/pie.png',1),('402881e544cedc1c0144cedc742b0002','png','pictures',NULL,'图片','plug-in/accordion/images/pictures.png',1),('402881e544cedc1c0144cedc742c0003','png','pencil',NULL,'笔','plug-in/accordion/images/pencil.png',1),('402881e544cedc1c0144cedc742d0004','png','map',NULL,'地图','plug-in/accordion/images/map.png',1),('402881e544cedc1c0144cedc742f0005','png','group_add',NULL,'组','plug-in/accordion/images/group_add.png',1),('402881e544cedc1c0144cedc74300006','png','calculator',NULL,'计算器','plug-in/accordion/images/calculator.png',1),('402881e544cedc1c0144cedc74310007','png','folder',NULL,'文件夹','plug-in/accordion/images/folder.png',1);
/*!40000 ALTER TABLE `t_s_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_log`
--

DROP TABLE IF EXISTS `t_s_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) DEFAULT NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_log`
--

LOCK TABLES `t_s_log` WRITE;
/*!40000 ALTER TABLE `t_s_log` DISABLE KEYS */;
INSERT INTO `t_s_log` VALUES ('402881e544cedc1c0144cedc75d600c8','Chrome','用户: admin登录成功',1,'169.254.200.136','2013-04-24 16:22:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75e600c9','Chrome','用户: admin登录成功',1,'10.10.10.1','2013-04-24 17:12:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75e800ca','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-10 15:37:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75e900cb','Chrome','用户admin已退出',2,'169.254.218.201','2013-03-10 15:38:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75eb00cc','MSIE 9.0','用户: admin登录成功',1,'169.254.218.201','2013-03-10 15:38:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75ee00cd','MSIE 9.0','JeecgDemo例子: 12被删除 成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75ef00ce','MSIE 9.0','JeecgDemo例子: 12被删除 成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75f100cf','Chrome','JeecgDemo例子: 12被删除 成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75f200d0','MSIE 9.0','权限: 单表模型被更新成功',5,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75f400d1','Chrome','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75f500d2','MSIE 9.0','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75f600d3','Chrome','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75f800d4','Firefox','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75fa00d5','Chrome','添加成功',3,'169.254.218.201','2013-03-10 15:40:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75fc00d6','Chrome','更新成功',5,'169.254.218.201','2013-03-10 15:40:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc75fd00d7','Chrome','JeecgDemo例子: 12被添加成功',3,'169.254.218.201','2013-03-10 15:40:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760000d8','Chrome','部门: 信息部被更新成功',5,'169.254.218.201','2013-03-10 15:41:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760200d9','Chrome','部门: 设计部被更新成功',5,'169.254.218.201','2013-03-10 15:41:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760400da','Chrome','类型: 信息部流程被更新成功',5,'169.254.218.201','2013-03-10 15:46:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760500db','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-10 15:48:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760700dc','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-21 23:23:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760800dd','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-21 23:26:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760900de','Chrome','权限: 一对多实例被添加成功',3,'169.254.218.201','2013-03-21 23:28:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760b00df','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 08:25:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760d00e0','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 09:05:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc760f00e1','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 09:09:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761100e2','MSIE 8.0','用户: admin登录成功',1,'169.254.218.201','2013-03-22 09:28:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761300e3','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 10:32:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761400e4','Chrome','物品: 笔记本添加成功',3,'169.254.218.201','2013-03-22 10:35:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761600e5','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 10:41:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761700e6','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 16:11:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761900e7','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 21:49:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761a00e8','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 23:17:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761c00e9','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 23:27:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc761e00ea','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-23 00:16:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762000eb','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-23 00:22:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762200ec','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-23 00:31:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762400ed','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-23 14:23:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762500ee','Chrome','流程参数: 主任审批被添加成功',3,'169.254.218.201','2013-03-23 15:05:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762900ef','Firefox','业务参数: 入职申请被添加成功',3,'169.254.218.201','2013-03-23 15:05:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762b00f0','Chrome','权限: 入职申请被添加成功',3,'169.254.218.201','2013-03-23 15:12:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762d00f1','Firefox','权限: 入职办理被添加成功',3,'169.254.218.201','2013-03-23 15:13:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc762f00f2','Chrome','用户: admin登录成功',1,'10.10.10.1','2013-05-06 15:27:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763100f3','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 15:16:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763300f4','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:02:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763400f5','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:07:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763600f6','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:09:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763700f7','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:11:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763800f8','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:13:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763a00f9','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:16:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763b00fa','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:19:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763d00fb','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:27:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763e00fc','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:42:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc763f00fd','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:44:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764000fe','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:49:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764200ff','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:50:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76430100','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:53:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76450101','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 16:56:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76460102','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:59:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76480103','MSIE 8.0','创建成功',3,'192.168.197.1','2013-07-07 17:22:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764a0104','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 17:26:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764b0105','MSIE 8.0','删除成功',4,'192.168.197.1','2013-07-07 17:31:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764c0106','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 17:35:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764d0107','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 17:46:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc764e0108','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 17:55:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76500109','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 18:08:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7651010a','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 18:13:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7653010b','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 18:15:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7654010c','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:28:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7655010d','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:29:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7657010e','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:30:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7658010f','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:31:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76590110','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:31:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc765b0111','MSIE 9.0','物品: 555添加成功',3,'192.168.1.103','2013-03-20 23:03:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc765d0112','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-20 23:19:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc765e0113','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:09:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76600114','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:27:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76610115','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:44:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76630116','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:54:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76650117','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:01:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76670118','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:13:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76690119','MSIE 9.0','物品: 55添加成功',3,'192.168.1.103','2013-03-21 21:15:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc766b011a','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:22:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc766d011b','MSIE 9.0','物品: 55添加成功',3,'192.168.1.103','2013-03-21 21:23:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7670011c','MSIE 9.0','物品: 33添加成功',3,'192.168.1.103','2013-03-21 21:23:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7672011d','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:25:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7673011e','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:27:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7675011f','MSIE 9.0','权限: 采购审批被添加成功',3,'192.168.1.103','2013-03-21 21:29:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76760120','MSIE 9.0','权限: 采购审批被更新成功',5,'192.168.1.103','2013-03-21 21:29:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76780121','MSIE 9.0','权限: 采购审批被更新成功',5,'192.168.1.103','2013-03-21 21:30:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76790122','MSIE 9.0','用户: admin更新成功',5,'192.168.1.103','2013-03-21 21:31:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc767b0123','MSIE 9.0','流程参数: 采购审批员审批被添加成功',3,'192.168.1.103','2013-03-21 21:36:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc767c0124','MSIE 9.0','流程参数: 采购审批员审批被更新成功',5,'192.168.1.103','2013-03-21 21:36:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc767e0125','MSIE 9.0','流程参数: 采购审批员审批被更新成功',5,'192.168.1.103','2013-03-21 21:37:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc767f0126','MSIE 9.0','流程类别: 采购审批员审批被删除 成功',4,'192.168.1.103','2013-03-21 21:38:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76800127','MSIE 9.0','物品: 44添加成功',3,'192.168.1.103','2013-03-21 21:43:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76820128','MSIE 9.0','用户: admin登录成功',1,'192.168.1.105','2013-02-07 10:10:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc76840129','MSIE 9.0','权限: 上传下载被添加成功',3,'192.168.1.105','2013-02-07 11:07:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7686012a','MSIE 9.0','权限: 插件演示被删除成功',4,'192.168.1.105','2013-02-07 11:07:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc7688012b','MSIE 9.0','用户: admin登录成功',1,'192.168.1.105','2013-02-07 11:07:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc9dd00183','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-17 15:06:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cefad7ef0184','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-17 15:39:09',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cf1150790185','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-17 16:03:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cf3ec3900186','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-17 16:53:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d92d3f680000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-19 15:10:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d93f7896000a','Chrome','创建成功',3,'192.168.1.101','2014-03-19 15:30:19',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d94488ef0011','Chrome','创建成功',3,'192.168.1.101','2014-03-19 15:35:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d94563810012','Chrome','修改成功',5,'192.168.1.101','2014-03-19 15:36:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d94667700013','Chrome','修改成功',5,'192.168.1.101','2014-03-19 15:37:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d9487bc30014','Chrome','修改成功',5,'192.168.1.101','2014-03-19 15:40:10',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d9507de50019','Chrome','创建成功',3,'192.168.1.101','2014-03-19 15:48:54',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d95c789b0026','Chrome','创建成功',3,'192.168.1.101','2014-03-19 16:01:59',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d96395c00031','Chrome','创建成功',3,'192.168.1.101','2014-03-19 16:09:46',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d964a7860032','Chrome','修改成功',5,'192.168.1.101','2014-03-19 16:10:56',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d9654c460033','Chrome','删除成功',4,'192.168.1.101','2014-03-19 16:11:38',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d96af3710035','Chrome','修改成功',5,'192.168.1.101','2014-03-19 16:17:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d922ce0144d96e42db003d','Chrome','创建成功',3,'192.168.1.101','2014-03-19 16:21:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d986f20144d98a4e6d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-19 16:52:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d986f20144d98abed30001','Chrome','修改成功',5,'192.168.1.101','2014-03-19 16:52:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d98fd10144d990210f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-19 16:58:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544d9a2fe0144d9a34d670000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-19 17:19:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544da475f0144da47caac0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-19 20:19:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544ddf01d0144ddf0aa1f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 13:22:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e544ddf01d0144ddf42e110002','Chrome','权限: 货品出入库被添加成功',3,'192.168.1.101','2014-03-20 13:26:11',1,'402881e544cedc1c0144cedc74b60044'),('402881e544ddf01d0144ddfb9f600004','Chrome','权限: 货品出入库被删除成功',4,'192.168.1.101','2014-03-20 13:34:18',1,'402881e544cedc1c0144cedc74b60044'),('402881e544ddf01d0144ddfbf6c60005','Chrome','权限: Online 开发被更新成功',5,'192.168.1.101','2014-03-20 13:34:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e544ddf01d0144ddfc78280007','Chrome','权限: 货品出入库被添加成功',3,'192.168.1.101','2014-03-20 13:35:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de48500144de494cfd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 14:59:09',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de505c0144de50ceaf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 15:07:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de561b0144de75228f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 15:47:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de561b0144de78f23a0003','Chrome','权限: 货品入库被添加成功',3,'192.168.1.101','2014-03-20 15:51:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de561b0144de79dd0a0005','Chrome','权限: 货品出库被添加成功',3,'192.168.1.101','2014-03-20 15:52:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de86050144de8820710000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 16:07:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544de9feb0144dea10bce0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 16:35:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deb0470144deb10dfc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 16:52:29',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deb0470144deb590230002','Chrome','权限: 基础资料被添加成功',3,'192.168.1.101','2014-03-20 16:57:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deb0470144deb68d810004','Chrome','权限: 货品信息被添加成功',3,'192.168.1.101','2014-03-20 16:58:29',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deb0470144deb727f20006','Chrome','权限: 供货商信息被添加成功',3,'192.168.1.101','2014-03-20 16:59:09',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deb0470144deb76e540007','Chrome','权限: 供货商信息被更新成功',5,'192.168.1.101','2014-03-20 16:59:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deb0470144deb8225f0009','Chrome','权限: 分公司信息被添加成功',3,'192.168.1.101','2014-03-20 17:00:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e544dec2b40144dec54fe00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:14:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deca030144decabe480000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:20:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deca030144ded256090001','Chrome','权限: 分公司信息被更新成功',5,'192.168.1.101','2014-03-20 17:28:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deca030144ded27e020002','Chrome','权限: 供货商信息被更新成功',5,'192.168.1.101','2014-03-20 17:29:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544ded30b0144ded384300000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:30:07',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deda860144dedaf9670000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:38:16',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deddb80144dede41c30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:41:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deddb80144dedfe7330003','Chrome','用户: 222添加成功',3,'192.168.1.101','2014-03-20 17:43:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544deddb80144dedff9900004','Chrome','用户：222删除成功',4,'192.168.1.101','2014-03-20 17:43:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544dee5ec0144dee6594b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:50:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e544dee8840144dee90a470000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 17:53:38',1,'402881e544cedc1c0144cedc74b60044'),('402881e544df16590144df27c2790000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-20 19:02:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e20d9c0144e212414d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 08:37:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e222d90144e224709d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 08:56:28',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e222d90144e228c2810003','Chrome','用户: 123添加成功',3,'192.168.1.101','2014-03-21 09:02:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e222d90144e228fb420004','Chrome','用户：123删除成功',4,'192.168.1.101','2014-03-21 09:02:15',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e22ffb0144e23412e50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 09:14:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2362b0144e2367cae0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 09:17:05',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e24f760144e250ba860000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 09:45:45',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e257920144e25867890000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 09:54:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e264550144e264ad6b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 10:07:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e264550144e264ec4e0002','Chrome','分公司表添加成功',3,'192.168.1.101','2014-03-21 10:07:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e273290144e2738aa90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 10:23:46',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e27be10144e27c64ea0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 10:33:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e27be10144e284928c0001','Chrome','分公司表删除成功',4,'192.168.1.101','2014-03-21 10:42:22',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e27be10144e2849b0d0002','Chrome','分公司表删除成功',4,'192.168.1.101','2014-03-21 10:42:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e27be10144e290c2050004','Chrome','分公司表添加成功',3,'192.168.1.101','2014-03-21 10:55:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e27be10144e2986b8f0007','Chrome','供应商添加成功',3,'192.168.1.101','2014-03-21 11:04:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e29b55a70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 11:07:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e29bbbed0001','Chrome','分公司表更新成功',5,'192.168.1.101','2014-03-21 11:07:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e29c64e40002','Chrome','供应商更新成功',5,'192.168.1.101','2014-03-21 11:08:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e29edee90004','Chrome','类型分组: 货品类型被添加成功',3,'192.168.1.101','2014-03-21 11:11:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e2a84a470006','Chrome','类型: 食品类被添加成功',3,'192.168.1.101','2014-03-21 11:21:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e2a884e30008','Chrome','类型: 2被添加成功',3,'192.168.1.101','2014-03-21 11:21:38',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e2ae742e000a','Chrome','类型: 3被添加成功',3,'192.168.1.101','2014-03-21 11:28:07',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e2b1da82000b','Chrome','类型: 服装类被更新成功',5,'192.168.1.101','2014-03-21 11:31:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e2997f0144e2b2041e000c','Chrome','类型: 电子产品被更新成功',5,'192.168.1.101','2014-03-21 11:32:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3129e0144e312ef790000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 13:17:52',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3129e0144e31968cd0002','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-21 13:24:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3129e0144e32fbf240004','Chrome','类型分组: 状态被添加成功',3,'192.168.1.101','2014-03-21 13:49:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3129e0144e35c1a970005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 14:37:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3811e0144e388262f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 15:25:54',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e388f10144e38bf6ec0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 15:30:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e38e960144e38f34140000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 15:33:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e38e960144e39e33970002','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-21 15:49:59',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3a8420144e3aa3d500000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-21 16:03:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544e3a8420144e3ae68be0002','Chrome','供应商添加成功',3,'192.168.1.101','2014-03-21 16:07:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1ae530144f1af4c8e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 09:23:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1ae530144f1b6aa8b0003','Chrome','修改成功',5,'192.168.1.101','2014-03-24 09:31:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1bc150144f1bc99bc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 09:37:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1bc150144f1be28a50002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 09:39:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1c7760144f1c7ba950000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 09:50:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1d44c0144f1d4a2570000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 10:04:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1d93c0144f1da0fb90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 10:10:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1dc830144f1dff9b30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 10:16:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1dc830144f1e0befd0002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 10:17:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1dc830144f1e6c6ba0004','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 10:23:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1f00a0144f1f0abac0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 10:34:45',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1f00a0144f1f1ac030002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 10:35:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1f00a0144f2070adf0004','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 10:59:11',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1f00a0144f20853f10006','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 11:00:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1f00a0144f290ba900007','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 13:29:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f1f00a0144f292057e000a','Chrome','用户: 111添加成功',3,'192.168.1.101','2014-03-24 13:30:59',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f29a710144f29ac8e30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 13:40:34',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f29a710144f29b1f2d0002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 13:40:56',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f29b630144f29ee34c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 13:45:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f29b630144f29fec2f0002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 13:46:10',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2ae53530000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 14:01:54',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2aeffcd0002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 14:02:38',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b7fc6d0004','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 14:12:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b9115e0005','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:38',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b912520006','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b912b60007','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b913060008','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b9135b0009','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b91393000a','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b913ca000b','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b91461000c','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b914f8000d','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b9154f000e','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 14:13:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2b96dc40010','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 14:14:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2ba705e0012','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 14:15:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2a4470144f2bb1f4f0013','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-24 14:15:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2c5430144f2c5aaad0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 14:27:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2c79e0144f2c7d4f20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 14:29:46',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2cf0f0144f2cff69f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 14:38:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2d1f70144f2d24ed20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 14:41:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2d1f70144f2d3b3960002','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-24 14:42:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2d1f70144f2e338b50003','Chrome','修改成功',5,'192.168.1.101','2014-03-24 14:59:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2eab50144f2eb320b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 15:08:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2ed8a4a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 15:10:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2ede8550002','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-24 15:11:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2f1e9bf0003','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-24 15:15:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2f20c2e0004','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 15:15:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2f20c8d0005','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-24 15:15:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2f2871e0006','Chrome','修改成功',5,'192.168.1.101','2014-03-24 15:16:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2f2e09d0007','Chrome','修改成功',5,'192.168.1.101','2014-03-24 15:16:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2fb4e360009','Chrome','类型: 待审核被添加成功',3,'192.168.1.101','2014-03-24 15:25:59',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2fb899f000b','Chrome','类型: 审核通过被添加成功',3,'192.168.1.101','2014-03-24 15:26:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2fbddca000d','Chrome','类型: 驳回被添加成功',3,'192.168.1.101','2014-03-24 15:26:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2fc135f000f','Chrome','类型: 取消被添加成功',3,'192.168.1.101','2014-03-24 15:26:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f2fc55d90011','Chrome','类型: 已完成被添加成功',3,'192.168.1.101','2014-03-24 15:27:07',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f32b6a600012','Chrome','数据字典类型: 取消被删除 成功',4,'192.168.1.101','2014-03-24 16:18:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f3304edc0014','Chrome','添加成功',3,'192.168.1.101','2014-03-24 16:23:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f33102950015','Chrome','更新成功',5,'192.168.1.101','2014-03-24 16:24:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f331c8f60017','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-24 16:25:30',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f337983d0019','Chrome','操作: 通过被添加成功',3,'192.168.1.101','2014-03-24 16:31:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f3386181001b','Chrome','操作: 驳回被添加成功',3,'192.168.1.101','2014-03-24 16:32:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f338ac19001d','Chrome','操作: 完成被添加成功',3,'192.168.1.101','2014-03-24 16:33:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f2ed3e0144f3399968001f','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-24 16:34:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f34b7a0144f34bd8150000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 16:53:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f355d71d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:04:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f356d5fc0001','Chrome','用户：111删除成功',4,'192.168.1.101','2014-03-24 17:05:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f35750500004','Chrome','用户: manager添加成功',3,'192.168.1.101','2014-03-24 17:06:29',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f35769730005','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-24 17:06:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f35ab5c10011','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:10:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f35d9e680012','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-24 17:13:22',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f35e33ed0015','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:14:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f361771a0016','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-24 17:17:34',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f36196190017','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:17:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f3510f0144f361c06f0018','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-24 17:17:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f368390144f36931240000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:26:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f37be60144f37c61040000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:46:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f37ce80144f37ec6700000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:49:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f37ce80144f37f7a860001','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-24 17:50:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f37ce80144f37f96e60002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:50:29',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f37ce80144f37fd4350003','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-24 17:50:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f383ae0144f3847bfc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 17:55:49',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f383ae0144f387beae0002','Chrome','操作: 123123被添加成功',3,'192.168.1.101','2014-03-24 17:59:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f383ae0144f387cd350003','Chrome','操作: 123123被删除成功',4,'192.168.1.101','2014-03-24 17:59:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f40d7e0144f41525030000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 20:33:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f40d7e0144f42157d00002','Chrome','修改成功',5,'192.168.1.101','2014-03-24 20:47:09',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f40d7e0144f423b2140004','Chrome','修改成功',5,'192.168.1.101','2014-03-24 20:49:43',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f43b890144f43c20290000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 21:16:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f446bc0144f44715270000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 21:28:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f44a380144f44a7f3e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-24 21:32:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f70ed70144f710b79c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 10:27:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f719160144f71a39b20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 10:38:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7200f0144f72139120000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 10:45:53',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f729560144f72aafec0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 10:56:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f729560144f72bb4e90002','Chrome','权限: 库存查询被添加成功',3,'192.168.1.101','2014-03-25 10:57:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f729560144f72c89970005','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-25 10:58:15',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f729560144f72ca69a0006','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 10:58:22',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f72de40144f72ea7f80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 11:00:33',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7321f0144f7325be20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 11:04:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f73c570144f73c9a6d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 11:15:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f744b60144f74562330000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 11:25:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7c1a00144f7c43cb10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 13:43:56',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7c1a00144f7c6f1390001','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 13:46:54',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7c1a00144f7cc4b410002','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 13:52:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7c1a00144f7cd078d0004','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 13:53:33',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7c1a00144f7cfafa70006','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 13:56:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7ebbe0144f7ec56380000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 14:27:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7ebbe0144f7ec8d9d0001','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 14:27:59',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f34e0144f7f3a9b10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 14:35:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f34e0144f7f3f6b60001','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 14:36:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f54e0144f7fc6f5f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 14:45:19',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f54e0144f7fcaf840002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 14:45:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f54e0144f7fe66960003','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 14:47:28',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f54e0144f80268a20004','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 14:51:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f54e0144f802feda0005','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 14:52:29',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f7f54e0144f8037f080006','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 14:53:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f81b270144f81bc9b10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 15:19:34',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f81b270144f81c21e10001','Chrome','入库单表更新成功',5,'192.168.1.101','2014-03-25 15:19:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f81c970144f81d0f300000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 15:20:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f82b350144f82c20f70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 15:37:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f82b350144f82f873d0001','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 15:41:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f82b350144f830aff90002','Chrome','入库单驳回成功',5,'192.168.1.101','2014-03-25 15:42:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f87fe00144f8812b340000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 17:10:18',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f87fe00144f881615a0001','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 17:10:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f87fe00144f88161a50002','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 17:10:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f87fe00144f881fb280005','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 17:11:11',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f87fe00144f883b8f00008','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 17:13:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f885210144f885a5d00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 17:15:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f885210144f887e8570003','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 17:17:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f88d0a0144f88d6fa20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 17:23:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f88d0a0144f88eab7d0003','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 17:25:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f89f020144f89f61df0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 17:43:18',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f89f020144f8a050b30002','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 17:44:19',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8a1a80144f8a235a80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 17:46:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8a1a80144f8a280ee0003','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 17:46:43',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8a8990144f8a9507a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 17:54:09',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8a8990144f8a9aea30001','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 17:54:33',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8b7f20144f8b857fb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:10:34',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8b7f20144f8b90a220003','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 18:11:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8b94f0144f8b9ae990000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:12:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8b94f0144f8baa1ff0003','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 18:13:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8bbea0144f8bc33900000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:14:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8bbea0144f8bd04a60003','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 18:15:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8beee0144f8bf5ebf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:18:15',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c0f01a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:19:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c196060002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 18:20:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c1b39d0003','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 18:20:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c26bc30004','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 18:21:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c35c020005','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 18:22:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c394480006','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 18:22:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c0b40144f8c49ab30007','Chrome','入库单审核通过成功',5,'192.168.1.101','2014-03-25 18:23:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c8d60144f8cb50dc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:31:17',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8c8d60144f8cb73770001','Chrome','入库单完成成功',5,'192.168.1.101','2014-03-25 18:31:26',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d2170144f8d2c0ac0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:39:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d2170144f8d342ea0002','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-25 18:39:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d2170144f8d50abc0003','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-25 18:41:55',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8d6e2210000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 18:43:56',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8d7086d0001','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-25 18:44:05',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f855ca0002','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:28',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f856300003','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:28',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8a21a0004','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8a2610005','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8a2a80006','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8a2f60007','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8a34f0008','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-25 19:20:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d3580009','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d3a5000a','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d3e8000b','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d43f000c','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d47b000d','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d4b4000e','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f8d53a000f','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-25 19:21:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f93fd10012','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 19:21:28',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8f9ab730015','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-25 19:21:55',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8fb42260017','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 19:23:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8fc657d0019','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-25 19:24:54',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8fc92ef001a','Chrome','入库单完成成功',5,'192.168.1.101','2014-03-25 19:25:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f8d6ab0144f8fca255001b','Chrome','入库单完成成功',5,'192.168.1.101','2014-03-25 19:25:10',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f928190144f9286de10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 20:13:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f930e50144f9314a630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 20:22:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f943fa980000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 20:43:05',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f944eab40002','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-25 20:44:07',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f94588b30004','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-25 20:44:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f9460eaf0006','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-25 20:45:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f947f1e20008','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-25 20:47:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f94f1bb0000b','Chrome','创建成功',3,'192.168.1.101','2014-03-25 20:55:15',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9338d0144f94f4062000c','Chrome','删除成功',4,'192.168.1.101','2014-03-25 20:55:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f989a90144f98a42440000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 21:59:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f99fc50144f9a0a63c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 22:24:19',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9be880144f9bf3f610000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 22:57:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9c1c80144f9c20fe30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 23:00:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9c94a0144f9c994910000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-25 23:09:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544f9c94a0144f9ff70cd0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 00:07:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fa08580144fa08d82b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 00:18:07',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fbed4a0144fbee79c50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 09:08:33',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fbf7db0144fbf850960000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 09:19:18',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fbfc8c0144fbfcf96d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 09:24:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fbfc8c0144fc2c25150002','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-26 10:15:55',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fbfc8c0144fc2c44de0003','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-26 10:16:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc2dd30144fc2e25780000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 10:18:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc2dd30144fc2ef1f60001','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-26 10:18:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc2dd30144fc4654a70003','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-26 10:44:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc2dd30144fc467c010004','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-26 10:44:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc2dd30144fc50a4770006','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-26 10:55:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc570e0144fc71df530000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 11:32:05',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fc746c0144fc74db7d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 11:35:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fce75a0144fce7f6ec0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 13:41:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fcf7a60144fcf850c90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 13:58:55',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd01840144fd01e6aa0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:09:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd04020144fd045ab20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:12:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd05260144fd0569c20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:13:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd06e50144fd0726640000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:15:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd08530144fd089a960000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:16:43',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd0c860144fd0cd94b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:21:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd15ca0144fd174ec40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:32:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd214f0144fd2199ca0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:44:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd269b0144fd26f1f10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:49:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd2b200144fd2c016b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 14:55:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd2b200144fd2d6e980002','Chrome','Minidao例子添加成功',3,'192.168.1.101','2014-03-26 14:56:56',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd318c0144fd32a5980000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 15:02:38',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd318c0144fd3a8be20001','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-26 15:11:16',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fd318c0144fd3a9a750002','Chrome','出库单完成成功',5,'192.168.1.101','2014-03-26 15:11:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe1ff70144fe20de090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 19:22:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe1ff70144fe318c950002','Chrome','出库单表添加成功',3,'192.168.1.101','2014-03-26 19:41:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe35780144fe36bd760000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 19:46:44',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe65a70144fe66fb770000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 20:39:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe65a70144fe6787010001','Chrome','入库单驳回成功',5,'192.168.1.101','2014-03-26 20:40:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe65a70144fe87694a0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 21:14:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e544fe65a70144fea9213b0003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-26 21:51:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e545020f450145021055f10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 13:43:16',1,'402881e544cedc1c0144cedc74b60044'),('402881e545020f4501450220a4ea0002','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-27 14:01:05',1,'402881e544cedc1c0144cedc74b60044'),('402881e545022515014502257d5a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 14:06:22',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502306401450230bc840000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 14:18:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e545025c9a014502693e350000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 15:20:22',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145027906be0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 15:37:37',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145027f648c0005','Chrome','权限: SQL分离被删除成功',4,'192.168.1.101','2014-03-27 15:44:34',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028091580006','Chrome','权限: 统计查询被删除成功',4,'192.168.1.101','2014-03-27 15:45:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450280c3900007','Chrome','权限: 表单验证被删除成功',4,'192.168.1.101','2014-03-27 15:46:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450280f2ce0008','Chrome','权限: Online 开发被删除成功',4,'192.168.1.101','2014-03-27 15:46:16',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502810c980009','Chrome','权限: 定时任务被删除成功',4,'192.168.1.101','2014-03-27 15:46:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450281257a000a','Chrome','权限: 数据监控被删除成功',4,'192.168.1.101','2014-03-27 15:46:29',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502819fe6000b','Chrome','权限: 地域管理被删除成功',4,'192.168.1.101','2014-03-27 15:47:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450281ef04000c','Chrome','权限: 字典标签被删除成功',4,'192.168.1.101','2014-03-27 15:47:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502838b2f000d','Chrome','权限: ckfinder例子被删除成功',4,'192.168.1.101','2014-03-27 15:49:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028725d9000e','Chrome','权限: 表单弹出风格被删除成功',4,'192.168.1.101','2014-03-27 15:53:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502873b7e000f','Chrome','权限: 特殊布局被删除成功',4,'192.168.1.101','2014-03-27 15:53:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502874c890010','Chrome','权限: 单表例子(无Tag)被删除成功',4,'192.168.1.101','2014-03-27 15:53:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502875d2c0011','Chrome','权限: 一对多例子(无Tag)被删除成功',4,'192.168.1.101','2014-03-27 15:53:16',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502876ec20012','Chrome','权限: HTML编辑器被删除成功',4,'192.168.1.101','2014-03-27 15:53:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502877fde0013','Chrome','权限: 在线word(IE)被删除成功',4,'192.168.1.101','2014-03-27 15:53:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028790a80014','Chrome','权限: WebOffice官方例子被删除成功',4,'192.168.1.101','2014-03-27 15:53:30',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450287a75f0015','Chrome','权限: 多附件管理被删除成功',4,'192.168.1.101','2014-03-27 15:53:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450287bba40016','Chrome','权限: Datagrid手工Html被删除成功',4,'192.168.1.101','2014-03-27 15:53:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450287e9540017','Chrome','权限: Minidao例子被删除成功',4,'192.168.1.101','2014-03-27 15:53:52',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450288006a0018','Chrome','权限: 物料Bom被删除成功',4,'192.168.1.101','2014-03-27 15:53:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028814b30019','Chrome','权限: 单表模型被删除成功',4,'192.168.1.101','2014-03-27 15:54:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502882509001a','Chrome','权限: 一对多模型被删除成功',4,'192.168.1.101','2014-03-27 15:54:08',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502883616001b','Chrome','权限: Excel导入导出被删除成功',4,'192.168.1.101','2014-03-27 15:54:12',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502884688001c','Chrome','权限: 上传下载被删除成功',4,'192.168.1.101','2014-03-27 15:54:16',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502885591001d','Chrome','权限: JqueryFileUpload示例被删除成功',4,'192.168.1.101','2014-03-27 15:54:20',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b014502886468001e','Chrome','权限: 无分页列表被删除成功',4,'192.168.1.101','2014-03-27 15:54:24',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b01450288744b001f','Chrome','权限: jdbc示例被删除成功',4,'192.168.1.101','2014-03-27 15:54:28',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028b692e0020','Chrome','权限: 常用示例被删除成功',4,'192.168.1.101','2014-03-27 15:57:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028bae310021','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-27 15:57:59',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502787b0145028be3500022','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 15:58:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029253630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 16:05:15',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe01450296b1bc0001','Chrome','用户：scott删除成功',4,'192.168.1.101','2014-03-27 16:10:01',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe01450296bccc0002','Chrome','用户：cgy删除成功',4,'192.168.1.101','2014-03-27 16:10:04',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe01450296c6920003','Chrome','用户：cgspy删除成功',4,'192.168.1.101','2014-03-27 16:10:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029744bc0004','Chrome','角色: 普通用户被删除成功',4,'192.168.1.101','2014-03-27 16:10:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029bbc8d0005','Chrome','部门: 信息部被更新成功',5,'192.168.1.101','2014-03-27 16:15:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029bfc170006','Chrome','部门: 设计部被删除 成功',4,'192.168.1.101','2014-03-27 16:15:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029ca3bc0007','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029ca3f30008','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029ca42a0009','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029ca461000a','Chrome','入库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb76f000b','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb7ae000c','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb7eb000d','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb82f000e','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb875000f','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb8ac0010','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029cb8e40011','Chrome','出库单表删除成功',4,'192.168.1.101','2014-03-27 16:16:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029d7d230012','Chrome','供应商删除成功',4,'192.168.1.101','2014-03-27 16:17:26',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029d7d5a0013','Chrome','供应商删除成功',4,'192.168.1.101','2014-03-27 16:17:26',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029da45f0014','Chrome','分公司表删除成功',4,'192.168.1.101','2014-03-27 16:17:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029db9f10015','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-27 16:17:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe0145029dba280016','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-27 16:17:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe014502b4b4c70017','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 16:42:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450291fe014502be83260018','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-27 16:53:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502ccb2014502d3be3a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 17:16:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502da18014502da66cf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 17:23:58',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502ddb5014502de6ee00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 17:28:23',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502ddb5014502e1c8d20001','Chrome','用户admin已退出',2,'192.168.1.101','2014-03-27 17:32:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502ddb5014502e1e6c90002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 17:32:10',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502ddb5014502e2d2c30003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 17:33:10',1,'402881e544cedc1c0144cedc74b60044'),('402881e54502ddb5014502faaf380004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 17:59:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e54503dd31014503de14790000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:07:37',1,'402881e544cedc1c0144cedc74b60044'),('402881e54503e441014503e484a40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:14:39',1,'402881e544cedc1c0144cedc74b60044'),('402881e54503e441014503e629820001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:16:26',1,'402881e544cedc1c0144cedc74b60044'),('402881e54503ebb8014503ebf6b60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:22:46',1,'402881e544cedc1c0144cedc74b60044'),('402881e54503ff85014503ffee740000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:44:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450402d80145040316d30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:48:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450405db0145040621d30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:51:21',1,'402881e544cedc1c0144cedc74b60044'),('402881e545040ae40145040b22ac0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-27 22:56:49',1,'402881e544cedc1c0144cedc74b60044'),('402881e5450651f601450656dfb70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 09:38:47',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506689a01450668ec5c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 09:58:30',1,'402881e544cedc1c0144cedc74b60044'),('402881e545066d480145066da4810000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 10:03:40',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506bb9d240000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 11:28:49',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506bda5310002','Chrome','部门: 采购部被添加成功',3,'192.168.1.101','2014-03-28 11:31:03',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506be412d0004','Chrome','部门: 库存管理部被添加成功',3,'192.168.1.101','2014-03-28 11:31:43',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c1ad2b0008','Chrome','角色: 采购部经理被添加成功',3,'192.168.1.101','2014-03-28 11:35:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c201b7000a','Chrome','角色: 采购员被添加成功',3,'192.168.1.101','2014-03-28 11:35:48',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c24505000c','Chrome','角色: 库存管理员被添加成功',3,'192.168.1.101','2014-03-28 11:36:06',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c79f8a0016','Chrome','操作: 通过被添加成功',3,'192.168.1.101','2014-03-28 11:41:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c7e4ef0017','Chrome','操作: 通过被更新成功',5,'192.168.1.101','2014-03-28 11:42:14',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c815080019','Chrome','操作: 驳回被添加成功',3,'192.168.1.101','2014-03-28 11:42:27',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c8399c001b','Chrome','操作: 完成被添加成功',3,'192.168.1.101','2014-03-28 11:42:36',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506c9fa500026','Chrome','用户: manager添加成功',3,'192.168.1.101','2014-03-28 11:44:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506cea7d20029','Chrome','用户: purchaser添加成功',3,'192.168.1.101','2014-03-28 11:49:37',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014506cf738d002c','Chrome','用户: stocker添加成功',3,'192.168.1.101','2014-03-28 11:50:30',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014507407b09002d','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 13:53:57',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450742ffd60030','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-28 13:56:42',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145074377750033','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-28 13:57:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450743a66d0034','Chrome','货品表更新成功',5,'192.168.1.101','2014-03-28 13:57:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450748f5240036','Chrome','分公司表添加成功',3,'192.168.1.101','2014-03-28 14:03:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145074a2d320037','Chrome','分公司表更新成功',5,'192.168.1.101','2014-03-28 14:04:32',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145074c24240039','Chrome','供应商添加成功',3,'192.168.1.101','2014-03-28 14:06:41',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450752d45c003b','Chrome','供应商添加成功',3,'192.168.1.101','2014-03-28 14:14:00',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145075301bf003c','Chrome','供应商删除成功',4,'192.168.1.101','2014-03-28 14:14:11',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450753f23d003d','Chrome','分公司表更新成功',5,'192.168.1.101','2014-03-28 14:15:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb17014507543975003e','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-28 14:15:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145075439b6003f','Chrome','货品表删除成功',4,'192.168.1.101','2014-03-28 14:15:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450754f59f0042','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-28 14:16:19',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450755c9fd0044','Chrome','类型: 其他被添加成功',3,'192.168.1.101','2014-03-28 14:17:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450755f7210045','Chrome','货品表更新成功',5,'192.168.1.101','2014-03-28 14:17:25',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450756f83e0048','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-28 14:18:31',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450757f15b004a','Chrome','用户: manager更新成功',5,'192.168.1.101','2014-03-28 14:19:35',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145075831f1004c','Chrome','用户: purchaser更新成功',5,'192.168.1.101','2014-03-28 14:19:51',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145075887f8004e','Chrome','用户: stocker更新成功',5,'192.168.1.101','2014-03-28 14:20:13',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145075aec350050','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-28 14:22:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e54506bb170145075ceeea0052','Chrome','入库单表添加成功',3,'192.168.1.101','2014-03-28 14:25:02',1,'402881e544cedc1c0144cedc74b60044'),('402881e54507609301450760e8d50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 14:29:22',1,'402881e544cedc1c0144cedc74b60044'),('402881e545076093014507628c020003','Chrome','货品表添加成功',3,'192.168.1.101','2014-03-28 14:31:10',1,'402881e544cedc1c0144cedc74b60044'),('402881e54507d3b1014507d4b1640000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 16:35:50',1,'402881e544cedc1c0144cedc74b60044'),('402881e54507daf3014507db25670000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-03-28 16:42:53',1,'402881e544cedc1c0144cedc74b60044');
/*!40000 ALTER TABLE `t_s_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_operation`
--

DROP TABLE IF EXISTS `t_s_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) DEFAULT NULL,
  `operationicon` varchar(100) DEFAULT NULL,
  `operationname` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_operation`
--

LOCK TABLES `t_s_operation` WRITE;
/*!40000 ALTER TABLE `t_s_operation` DISABLE KEYS */;
INSERT INTO `t_s_operation` VALUES ('402881e544f2ed3e0144f33797d70018','pass',NULL,'通过',NULL,'402881e544de561b0144de78f1d50002','402881e544cedc1c0144cedc74040000'),('402881e544f2ed3e0144f3386152001a','reject',NULL,'驳回',NULL,'402881e544de561b0144de78f1d50002','402881e544cedc1c0144cedc74040000'),('402881e544f2ed3e0144f338abef001c','finish',NULL,'完成',NULL,'402881e544de561b0144de78f1d50002','402881e544cedc1c0144cedc74040000'),('402881e54506bb17014506c79f450015','pass',NULL,'通过',NULL,'402881e544de561b0144de79dcb90004','402881e544cedc1c0144cedc74040000'),('402881e54506bb17014506c814cc0018','reject',NULL,'驳回',NULL,'402881e544de561b0144de79dcb90004','402881e544cedc1c0144cedc74040000'),('402881e54506bb17014506c8396b001a','finish',NULL,'完成',NULL,'402881e544de561b0144de79dcb90004','402881e544cedc1c0144cedc74040000');
/*!40000 ALTER TABLE `t_s_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_opintemplate`
--

DROP TABLE IF EXISTS `t_s_opintemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_opintemplate`
--

LOCK TABLES `t_s_opintemplate` WRITE;
/*!40000 ALTER TABLE `t_s_opintemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_s_opintemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_role`
--

DROP TABLE IF EXISTS `t_s_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) DEFAULT NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_role`
--

LOCK TABLES `t_s_role` WRITE;
/*!40000 ALTER TABLE `t_s_role` DISABLE KEYS */;
INSERT INTO `t_s_role` VALUES ('402881e544cedc1c0144cedc74b10042','admin','管理员'),('402881e54506bb17014506c1acdc0007','manager','采购部经理'),('402881e54506bb17014506c201780009','purchaser','采购员'),('402881e54506bb17014506c244c9000b','stocker','库存管理员');
/*!40000 ALTER TABLE `t_s_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_role_function`
--

DROP TABLE IF EXISTS `t_s_role_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_role_function`
--

LOCK TABLES `t_s_role_function` WRITE;
/*!40000 ALTER TABLE `t_s_role_function` DISABLE KEYS */;
INSERT INTO `t_s_role_function` VALUES ('402881e544cedc1c0144cedc750e0070',NULL,'402881e544cedc1c0144cedc74630019','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc75140076',NULL,'402881e544cedc1c0144cedc7468001c','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc75160078',NULL,'402881e544cedc1c0144cedc746b001d','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc7519007a',NULL,'402881e544cedc1c0144cedc746c001e','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc751b007c',NULL,'402881e544cedc1c0144cedc746e001f','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc751f007e',NULL,'402881e544cedc1c0144cedc74710020','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc75210080',NULL,'402881e544cedc1c0144cedc74720021','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc75230082',NULL,'402881e544cedc1c0144cedc74750022','402881e544cedc1c0144cedc74b10042'),('402881e544cedc1c0144cedc7530008e',NULL,'402881e544cedc1c0144cedc74800028','402881e544cedc1c0144cedc74b10042'),('402881e544de561b0144de76b1820001',NULL,'402881e544ddf01d0144ddfc77e80006','402881e544cedc1c0144cedc74b10042'),('402881e544de561b0144de7a0e450006',NULL,'402881e544de561b0144de79dcb90004','402881e544cedc1c0144cedc74b10042'),('402881e544de561b0144de7a0e6a0007','pass%2Creject%2Cfinish%2C','402881e544de561b0144de78f1d50002','402881e544cedc1c0144cedc74b10042'),('402881e544deb0470144debc93ef000a',NULL,'402881e544deb0470144deb821e80008','402881e544cedc1c0144cedc74b10042'),('402881e544deb0470144debc93f1000b',NULL,'402881e544deb0470144deb68d310003','402881e544cedc1c0144cedc74b10042'),('402881e544deb0470144debc93f1000c',NULL,'402881e544deb0470144deb727a40005','402881e544cedc1c0144cedc74b10042'),('402881e544deb0470144debc93f1000d',NULL,'402881e544deb0470144deb58fc90001','402881e544cedc1c0144cedc74b10042'),('402881e544f729560144f72bf0670003',NULL,'402881e544f729560144f72bb4ae0001','402881e544cedc1c0144cedc74b10042'),('402881e54506bb17014506c31733000d','pass,reject,','402881e544de561b0144de79dcb90004','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c31735000e','pass,reject,','402881e544de561b0144de78f1d50002','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c31735000f',NULL,'402881e544deb0470144deb727a40005','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c317350010',NULL,'402881e544deb0470144deb58fc90001','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c317350011',NULL,'402881e544deb0470144deb821e80008','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c317350012',NULL,'402881e544f729560144f72bb4ae0001','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c317350013',NULL,'402881e544ddf01d0144ddfc77e80006','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c317350014',NULL,'402881e544deb0470144deb68d310003','402881e54506bb17014506c1acdc0007'),('402881e54506bb17014506c8f01f001c',NULL,'402881e544de561b0144de79dcb90004','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f020001d',NULL,'402881e544de561b0144de78f1d50002','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f020001e',NULL,'402881e544deb0470144deb727a40005','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f020001f',NULL,'402881e544deb0470144deb58fc90001','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f0210020',NULL,'402881e544deb0470144deb821e80008','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f0210021',NULL,'402881e544f729560144f72bb4ae0001','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f0210022',NULL,'402881e544ddf01d0144ddfc77e80006','402881e54506bb17014506c201780009'),('402881e54506bb17014506c8f0210023',NULL,'402881e544deb0470144deb68d310003','402881e54506bb17014506c201780009'),('402881e54507d3b1014507d57c330001','finish,','402881e544de561b0144de79dcb90004','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350002','finish,','402881e544de561b0144de78f1d50002','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350003',NULL,'402881e544deb0470144deb727a40005','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350004',NULL,'402881e544deb0470144deb58fc90001','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350005',NULL,'402881e544deb0470144deb821e80008','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350006',NULL,'402881e544f729560144f72bb4ae0001','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350007',NULL,'402881e544ddf01d0144ddfc77e80006','402881e54506bb17014506c244c9000b'),('402881e54507d3b1014507d57c350008',NULL,'402881e544deb0470144deb68d310003','402881e54506bb17014506c244c9000b');
/*!40000 ALTER TABLE `t_s_role_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_role_user`
--

DROP TABLE IF EXISTS `t_s_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_role_user`
--

LOCK TABLES `t_s_role_user` WRITE;
/*!40000 ALTER TABLE `t_s_role_user` DISABLE KEYS */;
INSERT INTO `t_s_role_user` VALUES ('402881e544cedc1c0144cedc756b00c2','402881e544cedc1c0144cedc74b10042','402881e544cedc1c0144cedc74b60044'),('402881e544cedc1c0144cedc756c00c3','402881e544cedc1c0144cedc74b10042','402881e544cedc1c0144cedc74b60044'),('402881e54506bb1701450757f1190049','402881e54506bb17014506c1acdc0007','402881e54506bb17014506c9f9e40024'),('402881e54506bb170145075831d2004b','402881e544cedc1c0144cedc74b10042','402881e54506bb17014506cea7630027'),('402881e54506bb170145075887cf004d','402881e54506bb17014506c244c9000b','402881e54506bb17014506cf7315002a');
/*!40000 ALTER TABLE `t_s_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_territory`
--

DROP TABLE IF EXISTS `t_s_territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) DEFAULT NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_territory`
--

LOCK TABLES `t_s_territory` WRITE;
/*!40000 ALTER TABLE `t_s_territory` DISABLE KEYS */;
INSERT INTO `t_s_territory` VALUES ('1','100',1,'全国','qg','0',106.258754,38.471318,'0'),('10','00000016',2,'河南省','HNS','0',113.687228,34.76819,'1'),('100','371300',3,'临沂市','LYS','0',118.356448,35.104672,'18'),('1000','370903',4,'岱岳区','DYQ','0',117.041582,36.18799,'96'),('1001','370921',4,'宁阳县','NYX','0',116.805797,35.758787,'96'),('1002','370923',4,'东平县','DPX','0',116.470304,35.937102,'96'),('1003','370982',4,'新泰市','XTS','0',117.767953,35.909032,'96'),('1004','370983',4,'肥城市','FCS','0',116.768358,36.182571,'96'),('1005','371002',4,'环翠区','HCQ','0',122.123444,37.501991,'97'),('1006','371081',4,'文登市','WDS','0',122.058128,37.1939129,'97'),('1007','371082',4,'荣成市','RCS','0',122.486676,37.165249,'97'),('1008','371083',4,'乳山市','RSS','0',121.539764,36.919816,'97'),('1009','371102',4,'东港区','DGQ','0',119.462228,35.425475,'98'),('101','371400',3,'德州市','DZS','0',116.357465,37.434093,'18'),('1010','371103',4,'岚山区','LSQ','0',119.318813,35.121816,'98'),('1011','371121',4,'五莲县','WLX','0',119.208744,35.750095,'98'),('1012','371122',4,'莒县','JX','0',118.837131,35.579868,'98'),('1013','371202',4,'莱城区','LCQ','0',117.659864,36.203208,'99'),('1014','371203',4,'钢城区','GCQ','0',117.811355,36.058572,'99'),('1015','371302',4,'兰山区','LSQ','0',118.347707,35.051729,'100'),('1016','371311',4,'罗庄区','LZQ','0',118.284786,34.996741,'100'),('1017','371312',4,'河东区','HDQ','0',118.402893,35.089917,'100'),('1018','371321',4,'沂南县','YNX','0',118.465213,35.549976,'100'),('1019','371322',4,'郯城县','TCX','0',118.367263,34.613557,'100'),('102','371500',3,'聊城市','LCS','0',115.985371,36.4567039,'18'),('1020','371323',4,'沂水县','YSX','0',118.627918,35.79045,'100'),('1021','371324',4,'苍山县','CSX','0',118.07065,34.857149,'100'),('1022','371325',4,'费县','FX','0',117.977868,35.26634,'100'),('1023','371326',4,'平邑县','PYX','0',117.640352,35.5059429,'100'),('1024','371327',4,'莒南县','JNX','0',118.835163,35.174846,'100'),('1025','371328',4,'蒙阴县','MYX','0',117.945085,35.710032,'100'),('1026','371329',4,'临沭县','LSX','0',118.650782,34.919852,'100'),('1027','371402',4,'德城区','DCQ','0',116.299434,37.451272,'101'),('1028','371421',4,'陵县','LX','0',116.576176,37.33579,'101'),('1029','371422',4,'宁津县','NJX','0',116.800324,37.652329,'101'),('103','371600',3,'滨州市','BZS','0',117.970703,37.38199,'18'),('1030','371423',4,'庆云县','QYX','0',117.385123,37.77539,'101'),('1031','371424',4,'临邑县','LYX','0',116.86665,37.189864,'101'),('1032','371425',4,'齐河县','QHX','0',116.758917,36.795011,'101'),('1033','371426',4,'平原县','PYX','0',116.434187,37.165419,'101'),('1034','371427',4,'夏津县','XJX','0',116.001726,36.948371,'101'),('1035','371428',4,'武城县','WCX','0',116.069302,37.213311,'101'),('1036','371481',4,'乐陵市','LLS','0',117.231935,37.729907,'101'),('1037','371482',4,'禹城市','YCS','0',116.638387,36.934259,'101'),('1038','371502',4,'东昌府区','DCFQ','0',115.988484,36.434697,'102'),('1039','371521',4,'阳谷县','YGX','0',115.79182,36.114392,'102'),('104','371700',3,'菏泽市','HZS','0',115.480656,35.23375,'18'),('1040','371522',4,'莘县','SX','0',115.671191,36.233599,'102'),('1041','371523',4,'茌平县','CPX','0',116.255282,36.5807639,'102'),('1042','371524',4,'东阿县','DAX','0',116.24758,36.334917,'102'),('1043','371525',4,'冠县','GX','0',115.44274,36.484009,'102'),('1044','371526',4,'高唐县','GTX','0',116.231478,36.866062,'102'),('1045','371581',4,'临清市','LQS','0',115.704881,36.838277,'102'),('1046','371602',4,'滨城区','BCQ','0',118.019146,37.43206,'103'),('1047','371621',4,'惠民县','HMX','0',117.510451,37.489769,'103'),('1048','371622',4,'阳信县','YXX','0',117.578262,37.641106,'103'),('1049','371623',4,'无棣县','WDX','0',117.625696,37.770261,'103'),('1050','371624',4,'沾化县','ZHX','0',118.132199,37.698281,'103'),('1051','371625',4,'博兴县','BXX','0',118.131815,37.150226,'103'),('1052','371626',4,'邹平县','ZPX','0',117.743109,36.862989,'103'),('1053','371702',4,'牡丹区','MDQ','0',115.417827,35.252512,'104'),('1054','371721',4,'曹县','CX','0',115.542328,34.825508,'104'),('1055','371722',4,'单县','DX','0',116.107428,34.778808,'104'),('1056','371723',4,'成武县','CWX','0',115.889765,34.952459,'104'),('1057','371724',4,'巨野县','JYX','0',116.094674,35.396261,'104'),('1058','371725',4,'郓城县','YCX','0',115.943613,35.599758,'104'),('1059','371726',4,'鄄城县','JCX','0',115.510193,35.563408,'104'),('1060','371727',4,'定陶县','DTX','0',115.573094,35.071,'104'),('1061','371728',4,'东明县','DMX','0',115.089905,35.289368,'104'),('11','00000008',2,'黑龙江省','HLJS','0',126.662507,45.7421699,'1'),('12','20000000',2,'上海市','SHS','0',121.473704,31.230393,'1'),('13','00000010',2,'江苏省','JSS','0',118.763232,32.061707,'1'),('14','00000011',2,'浙江省','ZJS','0',120.153676,30.26586,'1'),('15','00000012',2,'安徽省','AHS','0',117.284923,31.861184,'1'),('16','00000013',2,'福建省','FJS','0',119.296506,26.099933,'1'),('17','00000014',2,'江西省','JXS','0',115.909175,28.674424,'1'),('1739','360102',4,'东湖区','DHQ','0',115.89901,28.6849159,'184'),('1740','360103',4,'西湖区','XHQ','0',115.877287,28.656887,'184'),('1741','360104',4,'青云谱区','QYPQ','0',115.925749,28.621169,'184'),('1742','360105',4,'湾里区','WLQ','0',115.730994,28.714869,'184'),('1743','360111',4,'青山湖区','QSHQ','0',115.962144,28.682985,'184'),('1744','360121',4,'南昌县','NCX','0',115.944162,28.545459,'184'),('1745','360122',4,'新建县','XJX','0',115.815233,28.692437,'184'),('1746','360123',4,'安义县','AYX','0',115.549199,28.844429,'184'),('1747','360124',4,'进贤县','JXX','0',116.240924,28.376918,'184'),('1748','360202',4,'昌江区','CJQ','0',117.183688,29.27342,'185'),('1749','360203',4,'珠山区','ZSQ','0',117.202336,29.301272,'185'),('1750','360222',4,'浮梁县','FLX','0',117.215061,29.351739,'185'),('1751','360281',4,'乐平市','LPS','0',117.129169,28.961902,'185'),('1752','360302',4,'安源区','AYQ','0',113.87073,27.615202,'186'),('1753','360313',4,'湘东区','XDQ','0',113.733059,27.640075,'186'),('1754','360321',4,'莲花县','LHX','0',113.961465,27.127669,'186'),('1755','360322',4,'上栗县','SLX','0',113.795219,27.880567,'186'),('1756','360323',4,'芦溪县','LXX','0',114.029595,27.631145,'186'),('1757','360402',4,'庐山区','LSQ','0',115.989212,29.671775,'187'),('1758','360403',4,'浔阳区','XYQ','0',115.990399,29.72746,'187'),('1759','360421',4,'九江县','JJX','0',115.911314,29.608456,'187'),('1760','360423',4,'武宁县','WNX','0',115.100579,29.256323,'187'),('1761','360424',4,'修水县','XSX','0',114.547356,29.025707,'187'),('1762','360425',4,'永修县','YXX','0',115.809111,29.021824,'187'),('1763','360426',4,'德安县','DAX','0',115.756883,29.314348,'187'),('1764','360427',4,'星子县','XZX','0',116.044893,29.448037,'187'),('1765','360428',4,'都昌县','DCX','0',116.204099,29.273194,'187'),('1766','360429',4,'湖口县','HKX','0',116.220266,29.73944,'187'),('1767','360430',4,'彭泽县','PZX','0',116.549359,29.896061,'187'),('1768','360481',4,'瑞昌市','RCS','0',115.681504,29.673795,'187'),('1769','360499',4,'共青城','GQC','0',115.774,29.2417,'187'),('1770','360502',4,'渝水区','YSQ','0',114.944574,27.80038,'188'),('1771','360521',4,'分宜县','FYX','0',114.692039,27.814628,'188'),('1772','360602',4,'月湖区','YHQ','0',117.036676,28.238797,'189'),('1773','360622',4,'余江县','YJX','0',116.818871,28.204174,'189'),('1774','360681',4,'贵溪市','GXS','0',117.245497,28.292519,'189'),('1775','360702',4,'章贡区','ZGQ','0',114.941826,25.862827,'190'),('1776','360721',4,'赣县','GX','0',115.011561,25.860691,'190'),('1777','360722',4,'信丰县','XFX','0',114.922963,25.386278,'190'),('1778','360723',4,'大余县','DYX','0',114.362094,25.401283,'190'),('1779','360724',4,'上犹县','SYX','0',114.551371,25.784978,'190'),('1780','360725',4,'崇义县','CYX','0',114.308273,25.681879,'190'),('1781','360726',4,'安远县','AYX','0',115.393922,25.136925,'190'),('1782','360727',4,'龙南县','LNX','0',114.789811,24.911107,'190'),('1783','360728',4,'定南县','DNX','0',115.027845,24.78441,'190'),('1784','360729',4,'全南县','QNX','0',114.530125,24.742401,'190'),('1785','360730',4,'宁都县','NDX','0',116.009472,26.470116,'190'),('1786','360731',4,'于都县','YDX','0',115.41551,25.952066,'190'),('1787','360732',4,'兴国县','XGX','0',115.36319,26.337937,'190'),('1788','360733',4,'会昌县','HCX','0',115.786057,25.600272,'190'),('1789','360734',4,'寻乌县','YWX','0',115.646525,24.963322,'190'),('1790','360735',4,'石城县','SCX','0',116.354201,26.32686,'190'),('1791','360781',4,'瑞金市','RJS','0',116.02713,25.885561,'190'),('1792','360782',4,'南康市','NKS','0',114.765238,25.661356,'190'),('1793','360802',4,'吉州区','JZQ','0',114.994307,27.129975,'191'),('1794','360803',4,'青原区','QYQ','0',115.01424,27.081719,'191'),('1795','360821',4,'吉安县','JAX','0',114.907659,27.040142,'191'),('1796','360822',4,'吉水县','JSX','0',115.135507,27.229632,'191'),('1797','360823',4,'峡江县','XJX','0',115.316566,27.582901,'191'),('1798','360824',4,'新干县','XGX','0',115.393043,27.740809,'191'),('1799','360825',4,'永丰县','YFX','0',115.441477,27.317869,'191'),('18','00000015',2,'山东省','SDS','0',117.020411,36.668627,'1'),('1800','360826',4,'泰和县','THX','0',114.908861,26.790231,'191'),('1801','360827',4,'遂川县','SCX','0',114.52098,26.311894,'191'),('1802','360828',4,'万安县','WAX','0',114.786256,26.458257,'191'),('1803','360829',4,'安福县','AFX','0',114.619893,27.392874,'191'),('1804','360830',4,'永新县','YXX','0',114.242675,26.945233,'191'),('1805','360881',4,'井冈山市','JGSS','0',114.289182,26.748186,'191'),('1806','360902',4,'袁州区','YZQ','0',114.424657,27.798846,'192'),('1807','360921',4,'奉新县','FXX','0',115.384904,28.700806,'192'),('1808','360922',4,'万载县','WZX','0',114.447551,28.10455,'192'),('1809','360923',4,'上高县','SGX','0',114.924494,28.232827,'192'),('1810','360924',4,'宜丰县','YFX','0',114.803542,28.393613,'192'),('1811','360925',4,'靖安县','JAX','0',115.362629,28.861475,'192'),('1812','360926',4,'铜鼓县','TGX','0',114.37098,28.520747,'192'),('1813','360981',4,'丰城市','FCS','0',115.771195,28.159325,'192'),('1814','360982',4,'樟树市','ZSS','0',115.546063,28.055796,'192'),('1815','360983',4,'高安市','GAS','0',115.375618,28.417261,'192'),('1816','361002',4,'临川区','LCQ','0',116.31136,27.934529,'193'),('1817','361021',4,'南城县','NCX','0',116.644658,27.552748,'193'),('1818','361022',4,'黎川县','LCX','0',116.907508,27.282382,'193'),('1819','361023',4,'南丰县','NFX','0',116.525725,27.218445,'193'),('1820','361024',4,'崇仁县','CRX','0',116.061164,27.764681,'193'),('1821','361025',4,'乐安县','LAX','0',115.837895,27.420441,'193'),('1822','361026',4,'宜黄县','YHX','0',116.222128,27.546146,'193'),('1823','361027',4,'金溪县','JXX','0',116.775435,27.908337,'193'),('1824','361028',4,'资溪县','ZXX','0',117.060264,27.706102,'193'),('1825','361029',4,'东乡县','DXX','0',116.590465,28.236118,'193'),('1826','361030',4,'广昌县','GCX','0',116.325757,26.837267,'193'),('1827','361102',4,'信州区','XZQ','0',117.966823,28.43121,'194'),('1828','361121',4,'上饶县','SRX','0',117.90785,28.448983,'194'),('1829','361122',4,'广丰县','GFX','0',118.19124,28.436286,'194'),('1830','361123',4,'玉山县','YSX','0',118.245124,28.682055,'194'),('1831','361124',4,'铅山县','QSX','0',117.709451,28.315217,'194'),('1832','361125',4,'横峰县','HFX','0',117.596452,28.407118,'194'),('1833','361126',4,'弋阳县','YYX','0',117.449588,28.378044,'194'),('1834','361127',4,'余干县','YGX','0',116.695647,28.702302,'194'),('1835','361128',4,'鄱阳县','PYX','0',116.699746,29.011699,'194'),('1836','361129',4,'万年县','WNX','0',117.058445,28.694582,'194'),('1837','361130',4,'婺源县','WYX','0',117.861911,29.2480249,'194'),('1838','361181',4,'德兴市','DXS','0',117.578713,28.946464,'194'),('1839','370102',4,'历下区','LXQ','0',117.07653,36.666344,'195'),('184','360100',3,'南昌市','NCS','0',115.858089,28.68316,'17'),('1840','370103',4,'市中区','SZQ','0',116.997475,36.6511749,'195'),('1841','370104',4,'槐荫区','HYQ','0',116.90113,36.651301,'195'),('1842','370105',4,'天桥区','TQQ','0',116.987492,36.678016,'195'),('1843','370112',4,'历城区','LCQ','0',117.065222,36.680171,'195'),('185','360200',3,'景德镇市','JDZS','0',117.17842,29.268836,'17'),('186','360300',3,'萍乡市','PXS','0',113.854676,27.622865,'17'),('187','360400',3,'九江市','JJS','0',116.001951,29.705103,'17'),('188','360500',3,'新余市','XYS','0',114.91741,27.817819,'17'),('189','360600',3,'鹰潭市','YTS','0',117.069202,28.260189,'17'),('19','00000017',2,'湖北省','HBS','0',114.341921,30.545861,'1'),('190','360700',3,'赣州市','GZS','0',114.935025,25.831925,'17'),('191','360800',3,'吉安市','JAS','0',114.992912,27.113039,'17'),('192','360900',3,'宜春市','YCS','0',114.416778,27.815619,'17'),('193','361000',3,'抚州市','FZS','0',116.358176,27.9492,'17'),('194','361100',3,'上饶市','SRS','0',117.943433,28.454863,'17'),('195','370100',3,'济南市','JNS','0',116.994917,36.665282,'18'),('20','00000018',2,'湖南省','HNS','0',112.98381,28.112444,'1'),('21','40000000',2,'重庆市','ZQS','0',106.551557,29.56301,'1'),('22','00000022',2,'四川省','SCS','0',104.075931,30.651652,'1'),('23','00000019',2,'广东省','GDS','0',113.266531,23.132191,'1'),('24','00000020',2,'广西壮族自治区','GXZZZZQ','0',108.327546,22.815478,'1'),('25','00000021',2,'海南省','HNS','0',110.349229,20.017378,'1'),('26','810000',2,'香港特别行政区','XGTBXZQ','0',114.109497,22.396428,'1'),('27','820000',2,'澳门特别行政区','AMTBXZQ','0',113.543873,22.198745,'1'),('28','00000023',2,'贵州省','GZS','0',106.707116,26.598026,'1'),('29','00000024',2,'云南省','YNS','0',102.709812,25.045359,'1'),('3','00000006',2,'辽宁省','LNS','0',123.42944,41.835441,'1'),('30','00000025',2,'西藏自治区','XCZZQ','0',91.1170059,29.647951,'1'),('31','00000026',2,'陕西省','SXS','0',108.954239,34.265472,'1'),('32','00000027',2,'甘肃省','GSS','0',103.826308,36.059421,'1'),('33','00000028',2,'青海省','QHS','0',101.780199,36.620901,'1'),('34','00000029',2,'宁夏回族自治区','NXHZZZQ','0',106.258754,38.471318,'1'),('35','00000030',2,'新疆维吾尔自治区','XJWWEZZQ','0',87.6278119,43.793028,'1'),('4','00000007',2,'吉林省','JLS','0',125.326065,43.896082,'1'),('5','10000000',2,'北京市','BJS','0',116.407413,39.904214,'1'),('6','30000000',2,'天津市','TJS','0',117.200983,39.084158,'1'),('7','00000003',2,'河北省','HBS','0',114.468665,38.037057,'1'),('8','00000004',2,'山西省','SXS','0',112.562569,37.873376,'1'),('89','370200',3,'青岛市','QDS','0',120.382504,36.06722,'18'),('9','00000005',2,'内蒙古自治区','NMGZZQ','0',111.765618,40.817498,'1'),('90','370300',3,'淄博市','ZBS','0',118.055007,36.813497,'18'),('91','370400',3,'枣庄市','ZZS','0',117.323725,34.810488,'18'),('92','370500',3,'东营市','DYS','0',118.674767,37.434751,'18'),('926','370113',4,'长清区','CQQ','0',116.751959,36.553691,'195'),('927','370124',4,'平阴县','PYX','0',116.456187,36.289265,'195'),('928','370125',4,'济阳县','JYX','0',117.173529,36.978547,'195'),('929','370126',4,'商河县','SHX','0',117.157183,37.309045,'195'),('93','370600',3,'烟台市','YTS','0',121.447926,37.463819,'18'),('930','370181',4,'章丘市','ZQS','0',117.534326,36.714015,'195'),('931','370202',4,'市南区','SNQ','0',120.412392,36.075651,'89'),('932','370203',4,'市北区','SBQ','0',120.374801,36.087661,'89'),('933','370205',4,'四方区','SFQ','0',120.366454,36.103993,'89'),('934','370211',4,'黄岛区','HDQ','0',120.198054,35.960935,'89'),('935','370212',4,'崂山区','LSQ','0',120.468956,36.107538,'89'),('936','370213',4,'李沧区','LCQ','0',120.432864,36.145476,'89'),('937','370214',4,'城阳区','CYQ','0',120.396529,36.307061,'89'),('938','370281',4,'胶州市','JZS','0',120.033345,36.264664,'89'),('939','370282',4,'即墨市','JMS','0',120.447162,36.389401,'89'),('94','370700',3,'潍坊市','WFS','0',119.16193,36.706691,'18'),('940','370283',4,'平度市','PDS','0',119.960014,36.7867,'89'),('941','370284',4,'胶南市','JNS','0',120.04643,35.8725,'89'),('942','370285',4,'莱西市','LXS','0',120.51769,36.889084,'89'),('943','370302',4,'淄川区','ZCQ','0',117.966842,36.643449,'90'),('944','370303',4,'张店区','ZDQ','0',118.017656,36.806773,'90'),('945','370304',4,'博山区','BSQ','0',117.861698,36.494752,'90'),('946','370305',4,'临淄区','LZQ','0',118.308977,36.827343,'90'),('947','370306',4,'周村区','ZCQ','0',117.869877,36.803109,'90'),('948','370321',4,'桓台县','HTX','0',118.097955,36.959623,'90'),('949','370322',4,'高青县','GQX','0',117.826916,37.171063,'90'),('95','370800',3,'济宁市','JNS','0',116.587099,35.414921,'18'),('950','370323',4,'沂源县','YYX','0',118.170979,36.184827,'90'),('951','370402',4,'市中区','SZQ','0',117.556124,34.864114,'91'),('952','370403',4,'薛城区','YCQ','0',117.263157,34.795206,'91'),('953','370404',4,'峄城区','YCQ','0',117.590819,34.772236,'91'),('954','370405',4,'台儿庄区','TEZQ','0',117.733832,34.562528,'91'),('955','370406',4,'山亭区','STQ','0',117.461343,35.099549,'91'),('956','370481',4,'滕州市','TZS','0',117.164388,35.084021,'91'),('957','370502',4,'东营区','DYQ','0',118.582184,37.448964,'92'),('958','370503',4,'河口区','HKQ','0',118.525579,37.886138,'92'),('959','370521',4,'垦利县','KLX','0',118.547627,37.58754,'92'),('960','370522',4,'利津县','LJX','0',118.255273,37.49026,'92'),('961','370523',4,'广饶县','GRX','0',118.407045,37.0537,'92'),('962','370602',4,'芝罘区','ZFQ','0',121.400031,37.540687,'93'),('963','370611',4,'福山区','FSQ','0',121.267697,37.498051,'93'),('964','370612',4,'牟平区','MPQ','0',121.600512,37.386901,'93'),('965','370613',4,'莱山区','LSQ','0',121.445304,37.511305,'93'),('966','370614',4,'开发区','KFQ','0',121.251001,37.554683,'93'),('967','370634',4,'长岛县','CDX','0',120.736584,37.921417,'93'),('968','370681',4,'龙口市','LKS','0',120.477836,37.646064,'93'),('969','370682',4,'莱阳市','LYS','0',120.711607,36.97891,'93'),('970','370683',4,'莱州市','LZS','0',119.942327,37.177017,'93'),('971','370684',4,'蓬莱市','PLS','0',120.758848,37.810661,'93'),('972','370685',4,'招远市','ZYS','0',120.434072,37.355469,'93'),('973','370686',4,'栖霞市','QXS','0',120.849675,37.335123,'93'),('974','370687',4,'海阳市','HYS','0',121.158477,36.776425,'93'),('975','370702',4,'潍城区','WCQ','0',119.024836,36.7281,'94'),('976','370703',4,'寒亭区','HTQ','0',119.219734,36.775491,'94'),('977','370704',4,'坊子区','FZQ','0',119.166485,36.654448,'94'),('978','370705',4,'奎文区','KWQ','0',119.132486,36.707676,'94'),('979','370724',4,'临朐县','LQX','0',118.542982,36.5125059,'94'),('980','370725',4,'昌乐县','CLX','0',118.829914,36.706945,'94'),('981','370781',4,'青州市','QZS','0',118.479622,36.684528,'94'),('982','370782',4,'诸城市','ZCS','0',119.410103,35.995654,'94'),('983','370783',4,'寿光市','SGS','0',118.790652,36.85548,'94'),('984','370784',4,'安丘市','AQS','0',119.218978,36.478494,'94'),('985','370785',4,'高密市','GMS','0',119.755597,36.3825949,'94'),('986','370786',4,'昌邑市','CYS','0',119.398525,36.85882,'94'),('987','370802',4,'市中区','SZQ','0',116.596614,35.40819,'95'),('988','370811',4,'任城区','RCQ','0',116.628562,35.433727,'95'),('989','370826',4,'微山县','WSX','0',117.128946,34.8071,'95'),('990','370827',4,'鱼台县','YTX','0',116.650608,35.012749,'95'),('991','370828',4,'金乡县','JXX','0',116.311532,35.06662,'95'),('992','370829',4,'嘉祥县','JXX','0',116.342442,35.407829,'95'),('993','370830',4,'汶上县','WSX','0',116.489043,35.732799,'95'),('994','370831',4,'泗水县','SSX','0',117.251195,35.664323,'95'),('995','370832',4,'梁山县','LSX','0',116.096044,35.802306,'95'),('996','370881',4,'曲阜市','QFS','0',116.986532,35.581137,'95'),('997','370882',4,'兖州市','YZS','0',116.783834,35.553144,'95'),('998','370883',4,'邹城市','ZCS','0',117.003743,35.405185,'95'),('999','370902',4,'泰山区','TSQ','0',117.135354,36.192084,'96');
/*!40000 ALTER TABLE `t_s_territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_type`
--

DROP TABLE IF EXISTS `t_s_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `typepid` varchar(32) DEFAULT NULL,
  `typegroupid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_type`
--

LOCK TABLES `t_s_type` WRITE;
/*!40000 ALTER TABLE `t_s_type` DISABLE KEYS */;
INSERT INTO `t_s_type` VALUES ('402881e544cedc1c0144cedc74e10052','2','菜单图标',NULL,'402881e544cedc1c0144cedc74c10048'),('402881e544cedc1c0144cedc74e30053','1','系统图标',NULL,'402881e544cedc1c0144cedc74c10048'),('402881e544cedc1c0144cedc74e40054','files','附件',NULL,'402881e544cedc1c0144cedc74d20050'),('402881e544cedc1c0144cedc74e60055','1','优质订单',NULL,'402881e544cedc1c0144cedc74c60049'),('402881e544cedc1c0144cedc74e70056','2','普通订单',NULL,'402881e544cedc1c0144cedc74c60049'),('402881e544cedc1c0144cedc74e90057','1','签约客户',NULL,'402881e544cedc1c0144cedc74c8004a'),('402881e544cedc1c0144cedc74ea0058','2','普通客户',NULL,'402881e544cedc1c0144cedc74c8004a'),('402881e544cedc1c0144cedc74eb0059','1','特殊服务',NULL,'402881e544cedc1c0144cedc74ca004b'),('402881e544cedc1c0144cedc74ed005a','2','普通服务',NULL,'402881e544cedc1c0144cedc74ca004b'),('402881e544cedc1c0144cedc74ee005b','single','单条件查询',NULL,'402881e544cedc1c0144cedc74cc004c'),('402881e544cedc1c0144cedc74ee005c','group','范围查询',NULL,'402881e544cedc1c0144cedc74cc004c'),('402881e544cedc1c0144cedc74f0005d','Y','是',NULL,'402881e544cedc1c0144cedc74cd004d'),('402881e544cedc1c0144cedc74f0005e','N','否',NULL,'402881e544cedc1c0144cedc74cd004d'),('402881e544cedc1c0144cedc74f1005f','Integer','Integer',NULL,'402881e544cedc1c0144cedc74ce004e'),('402881e544cedc1c0144cedc74f20060','Date','Date',NULL,'402881e544cedc1c0144cedc74ce004e'),('402881e544cedc1c0144cedc74f30061','String','String',NULL,'402881e544cedc1c0144cedc74ce004e'),('402881e544cedc1c0144cedc74f40062','Long','Long',NULL,'402881e544cedc1c0144cedc74ce004e'),('402881e544cedc1c0144cedc74f50063','act','工作流引擎表',NULL,'402881e544cedc1c0144cedc74d0004f'),('402881e544cedc1c0144cedc74f60064','t_s','系统基础表',NULL,'402881e544cedc1c0144cedc74d0004f'),('402881e544cedc1c0144cedc74f70065','t_b','业务表',NULL,'402881e544cedc1c0144cedc74d0004f'),('402881e544cedc1c0144cedc74f80066','t_p','自定义引擎表',NULL,'402881e544cedc1c0144cedc74d0004f'),('402881e544cedc1c0144cedc74f90067','news','新闻',NULL,'402881e544cedc1c0144cedc74d20050'),('402881e544cedc1c0144cedc74fa0068','0','男性',NULL,'402881e544cedc1c0144cedc74d30051'),('402881e544cedc1c0144cedc74fb0069','1','女性',NULL,'402881e544cedc1c0144cedc74d30051'),('402881e544e2997f0144e2a849f90005','1','食品类',NULL,'402881e544e2997f0144e29edebb0003'),('402881e544e2997f0144e2a884980007','2','服装类',NULL,'402881e544e2997f0144e29edebb0003'),('402881e544e2997f0144e2ae73b60009','3','电子产品',NULL,'402881e544e2997f0144e29edebb0003'),('402881e544f2ed3e0144f2fb4dfd0008','1','待审核',NULL,'402881e544e3129e0144e32fbe810003'),('402881e544f2ed3e0144f2fb8965000a','2','审核通过',NULL,'402881e544e3129e0144e32fbe810003'),('402881e544f2ed3e0144f2fbdd54000c','3','驳回',NULL,'402881e544e3129e0144e32fbe810003'),('402881e544f2ed3e0144f2fc55b70010','5','已完成',NULL,'402881e544e3129e0144e32fbe810003'),('402881e54506bb1701450755c9ca0043','4','其他',NULL,'402881e544e2997f0144e29edebb0003');
/*!40000 ALTER TABLE `t_s_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_typegroup`
--

DROP TABLE IF EXISTS `t_s_typegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) DEFAULT NULL,
  `typegroupname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_typegroup`
--

LOCK TABLES `t_s_typegroup` WRITE;
/*!40000 ALTER TABLE `t_s_typegroup` DISABLE KEYS */;
INSERT INTO `t_s_typegroup` VALUES ('402881e544cedc1c0144cedc74c10048','icontype','图标类型'),('402881e544cedc1c0144cedc74c60049','order','订单类型'),('402881e544cedc1c0144cedc74c8004a','custom','客户类型'),('402881e544cedc1c0144cedc74ca004b','service','服务项目类型'),('402881e544cedc1c0144cedc74cc004c','searchmode','查询模式'),('402881e544cedc1c0144cedc74cd004d','yesorno','逻辑条件'),('402881e544cedc1c0144cedc74ce004e','fieldtype','字段类型'),('402881e544cedc1c0144cedc74d0004f','database','数据表'),('402881e544cedc1c0144cedc74d20050','fieltype','文档分类'),('402881e544cedc1c0144cedc74d30051','sex','性别类'),('402881e544e2997f0144e29edebb0003','goodsType','货品类型'),('402881e544e3129e0144e32fbe810003','status','状态');
/*!40000 ALTER TABLE `t_s_typegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_s_user`
--

DROP TABLE IF EXISTS `t_s_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_user` (
  `email` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `signatureFile` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_s_user`
--

LOCK TABLES `t_s_user` WRITE;
/*!40000 ALTER TABLE `t_s_user` DISABLE KEYS */;
INSERT INTO `t_s_user` VALUES (NULL,NULL,NULL,'images/renfang/qm/licf.gif','402881e544cedc1c0144cedc74b60044'),('','','',NULL,'402881e54506bb17014506c9f9e40024'),('','','',NULL,'402881e54506bb17014506cea7630027'),('','','',NULL,'402881e54506bb17014506cf7315002a');
/*!40000 ALTER TABLE `t_s_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-28 16:48:18
