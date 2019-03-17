/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : keyanguanli

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-05 08:33:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bbgl_huiyilunwen
-- ----------------------------
DROP TABLE IF EXISTS `bbgl_huiyilunwen`;
CREATE TABLE `bbgl_huiyilunwen` (
  `HUIYILUNWEN_ID` varchar(100) NOT NULL,
  `TIMING` varchar(255) DEFAULT NULL COMMENT '题名',
  `ZUOZHE` varchar(255) DEFAULT NULL COMMENT '作者',
  `LUNWENJI` varchar(255) DEFAULT NULL COMMENT '会议论文集名称',
  `HUIYISHIJIAN` varchar(32) DEFAULT NULL COMMENT '会议时间',
  `HUIYIDIDIAN` varchar(255) DEFAULT NULL COMMENT '会议地点',
  `HUIYIMINGCHENG` varchar(255) DEFAULT NULL COMMENT '会议名称',
  `JUBANDANWEI` varchar(255) DEFAULT NULL COMMENT '举办单位',
  `QIZHIYEMA` varchar(255) DEFAULT NULL COMMENT '起止页码',
  `DIYIZUOZHE` varchar(255) DEFAULT NULL COMMENT '第一作者（中文名）',
  `GONGTONGDIYI` varchar(255) DEFAULT NULL COMMENT '共同第一作者（中文名）',
  `DIYITONGXUNLIANXI` varchar(255) DEFAULT NULL COMMENT '第一 通讯联系人（中文名）',
  `DIERTONGXUN` varchar(255) DEFAULT NULL COMMENT '第二 通讯联系人（中文名）',
  `SHUANTTOGNDUOTONG` varchar(255) DEFAULT NULL COMMENT '是否双通或多通',
  `SHUJUKUSHOULU1` varchar(255) DEFAULT NULL COMMENT '数据库收录情况',
  `SHFOUZHUCE` varchar(255) DEFAULT NULL COMMENT '是否注册',
  `CEIWUJINGFEIKAHAO` varchar(255) DEFAULT NULL COMMENT '财务经费卡号',
  `JINGFEIKAFUZREN` varchar(255) DEFAULT NULL COMMENT '经费卡负责人',
  `JIGNFEIZHUANGTAI` varchar(255) DEFAULT NULL COMMENT '经费状态',
  `JIJINHAO` varchar(255) DEFAULT NULL COMMENT '基金号',
  PRIMARY KEY (`HUIYILUNWEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbgl_huiyilunwen
-- ----------------------------
INSERT INTO `bbgl_huiyilunwen` VALUES ('124d825a1f854b1fa5ef4e4498010fb7', '', '', '', '2017-五月-24', '', '', '', '', '', '', '', '', '是', '', '是', '', '', '', '');
INSERT INTO `bbgl_huiyilunwen` VALUES ('1ec9a90748384e428364e59e936d1ccf', '23412', '12312', '3', '', '', '', '', '', '', '', '', '', '是', '', '是', '', '', '', '');

-- ----------------------------
-- Table structure for bbgl_qikanlunwen
-- ----------------------------
DROP TABLE IF EXISTS `bbgl_qikanlunwen`;
CREATE TABLE `bbgl_qikanlunwen` (
  `QIKANLUNWEN_ID` varchar(100) NOT NULL,
  `TIMING` varchar(255) DEFAULT NULL COMMENT '题名',
  `AUTHOR` varchar(255) DEFAULT NULL COMMENT '作者',
  `KANMING` varchar(255) DEFAULT NULL COMMENT '刊名',
  `YEAR` varchar(4) DEFAULT NULL COMMENT '年',
  `JUAN` varchar(255) DEFAULT NULL COMMENT '卷',
  `QI` varchar(255) DEFAULT NULL COMMENT '期',
  `QIZHIYEMA` varchar(255) DEFAULT NULL COMMENT '起止页码',
  `DIYIZUOZHE` varchar(255) DEFAULT NULL COMMENT '第一作者',
  `GONGTONGDIYI` varchar(255) DEFAULT NULL COMMENT '共同第一作者（中文名）',
  `WENZHANGZT` varchar(255) DEFAULT NULL COMMENT '文章状态',
  `DIYITONGXUN` varchar(255) DEFAULT NULL COMMENT '第一通讯联系人（中文名）',
  `DIERTONGXUN` varchar(255) DEFAULT NULL COMMENT '第二通讯联络人（中文名）',
  `SHUANGORDAN` varchar(255) DEFAULT NULL COMMENT '是否双通或多通',
  `SHOULUZT` varchar(255) DEFAULT NULL COMMENT '数据库收录情况',
  `QIKANYXYZ` varchar(255) DEFAULT NULL COMMENT '期刊影响因子',
  `WENXIANLEIXING` varchar(255) DEFAULT NULL COMMENT '文献类型',
  `CAIWUJINGFEI` varchar(255) DEFAULT NULL COMMENT '财务经费卡号',
  `JINGFEIFZREN` varchar(255) DEFAULT NULL COMMENT '经费卡负责人',
  `SHENGAOFEI` varchar(255) DEFAULT NULL COMMENT '审稿费',
  `JINGFEIZHUANGTAI` varchar(255) DEFAULT NULL COMMENT '经费状态',
  `JIJINHAO` varchar(255) DEFAULT NULL COMMENT '基金号',
  PRIMARY KEY (`QIKANLUNWEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbgl_qikanlunwen
-- ----------------------------
INSERT INTO `bbgl_qikanlunwen` VALUES ('7c44a5cf65b94a88b7482901f738cfd3', 'q', '1q', 'q', 'qq', 'q', 'q', 'q', 'q', 'qq', 'qq', 'q', 'q', '否', 'q', 'qq', 'q', 'q', 'q', 'q', 'qq', 'q');
INSERT INTO `bbgl_qikanlunwen` VALUES ('9ed5cbf80e0543f9a3217b9029fbecff', 'fdga', '', '', '', '', '', '', '', '', '', '', '', '是', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for bbgl_ruanjian
-- ----------------------------
DROP TABLE IF EXISTS `bbgl_ruanjian`;
CREATE TABLE `bbgl_ruanjian` (
  `RUANJIAN_ID` varchar(100) NOT NULL,
  `BANLIRI` varchar(32) DEFAULT NULL COMMENT '办理日',
  `DENGJIHAO` varchar(255) DEFAULT NULL COMMENT '登记号',
  `FAZHENGRI` varchar(32) DEFAULT NULL COMMENT '发证日',
  `SHOUCIFABIAO` varchar(255) DEFAULT NULL COMMENT '首次发表日',
  `RUANJIANMINGCHENG` varchar(255) DEFAULT NULL COMMENT '软件名称',
  `ZUOZHE` varchar(255) DEFAULT NULL COMMENT '作者',
  `XUEYUAN` varchar(255) DEFAULT NULL COMMENT '所在学院',
  `ZHUZUOQUANREN` varchar(255) DEFAULT NULL COMMENT '著作权人1',
  PRIMARY KEY (`RUANJIAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbgl_ruanjian
-- ----------------------------
INSERT INTO `bbgl_ruanjian` VALUES ('53378eac3fd24cb983f373be5cedb2f8', '2017-03-09', 'a', '2017-02-27', 'sda', 'asd', 'wqe', 'as', 'd');
INSERT INTO `bbgl_ruanjian` VALUES ('e7a4d59904d14df5be60dbef1d22cdac', '', '', '', '', 'dfgdfg', '', '', '');

-- ----------------------------
-- Table structure for bbgl_zhuanli
-- ----------------------------
DROP TABLE IF EXISTS `bbgl_zhuanli`;
CREATE TABLE `bbgl_zhuanli` (
  `ZHUANLI_ID` varchar(100) NOT NULL,
  `SHENQINGHAO` varchar(255) DEFAULT NULL COMMENT '申请号',
  `SHENQINGRI` varchar(255) DEFAULT NULL COMMENT '申请日',
  `ZHUANLILEIXIN` varchar(255) DEFAULT NULL COMMENT '专利类型',
  `FAMINGMIGNCHENG` varchar(255) DEFAULT NULL COMMENT '发明名称',
  `DIYIFAMING` varchar(255) DEFAULT NULL COMMENT '第一发明人',
  `QITAFAMING` varchar(255) DEFAULT NULL COMMENT '其他发明人',
  `SHENQING` varchar(255) DEFAULT NULL COMMENT '申请人',
  `SHOUQUANRI` varchar(32) DEFAULT NULL COMMENT '授权日',
  `ZHOGNZHIRI` varchar(255) DEFAULT NULL COMMENT '终止日',
  PRIMARY KEY (`ZHUANLI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbgl_zhuanli
-- ----------------------------
INSERT INTO `bbgl_zhuanli` VALUES ('68499243f1c34fb696f6319f3f229a07', '其4', '3424', '234', '45erfsd', '', '', '', '', '');
INSERT INTO `bbgl_zhuanli` VALUES ('8dbe2460ee634eb6a3c06280836d097c', 'q', 'q', 'q', 'q', 'q', 'q', 'q', '2017-03-22', '123');

-- ----------------------------
-- Table structure for bbgl_zhuanzhu
-- ----------------------------
DROP TABLE IF EXISTS `bbgl_zhuanzhu`;
CREATE TABLE `bbgl_zhuanzhu` (
  `ZHUANZHU_ID` varchar(100) NOT NULL,
  `ZHUZUONAME` varchar(255) DEFAULT NULL COMMENT '著作名称',
  `AUTHOR` varchar(255) DEFAULT NULL COMMENT '作者',
  `WOXIAOPAIWEI` varchar(255) DEFAULT NULL COMMENT '著作中我校第一作者在所有作者中的排序',
  `ZONGZISHU` varchar(255) DEFAULT NULL COMMENT '著作总字数（千字）',
  `WOXIAOZISHU` varchar(255) DEFAULT NULL COMMENT '我校在著作中的所有作者撰写总字数（千字）',
  `ZHUZUOLEIBIE` varchar(255) DEFAULT NULL COMMENT '著作类别',
  `CHUBANDANWEI` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `CHUBANDI` varchar(255) DEFAULT NULL COMMENT '出版地',
  `CHUBANNIANYUE` varchar(255) DEFAULT NULL COMMENT '出版年月',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  `HEZUOORNOT` varchar(255) DEFAULT NULL COMMENT '是否与外单位合作',
  `DIYIXUEYUAN` varchar(255) DEFAULT NULL COMMENT '著作中我校第一作者所属学院',
  `ZHUZUOLEIXING` varchar(255) DEFAULT NULL COMMENT '著作类型',
  `XUEKEMENLEI` varchar(255) DEFAULT NULL COMMENT '学科门类',
  PRIMARY KEY (`ZHUANZHU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbgl_zhuanzhu
-- ----------------------------
INSERT INTO `bbgl_zhuanzhu` VALUES ('c680104a57474dc58f8584e84a04a6a6', 'asdf', '', '', '', '', '', '', '', '', '', '是', '', '', '');
INSERT INTO `bbgl_zhuanzhu` VALUES ('d9892d1d7d034975a71a8a9e8d1a2621', '213awdads', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '是', 'asd', 'asd', 'asd');

-- ----------------------------
-- Table structure for db_fhdb
-- ----------------------------
DROP TABLE IF EXISTS `db_fhdb`;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_fhdb
-- ----------------------------

-- ----------------------------
-- Table structure for db_timingbackup
-- ----------------------------
DROP TABLE IF EXISTS `db_timingbackup`;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_timingbackup
-- ----------------------------
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55', 'sys_app_user_515762', '2016-04-11 17:04:55', 'sys_app_user', '2', '1/2 * * ? * *', '每个月的 每周 每天 每小时执行一次', '备份任务');
INSERT INTO `db_timingbackup` VALUES ('bc4a788bc2ec40bdb1b7730131c26d42', 'sys_app_user_359515', '2016-04-12 17:24:05', 'sys_app_user', '2', '1/3 * * ? * *', '每个月的 每周 每天 每小时执行一次', 'ssss');

-- ----------------------------
-- Table structure for kygl_chengguo
-- ----------------------------
DROP TABLE IF EXISTS `kygl_chengguo`;
CREATE TABLE `kygl_chengguo` (
  `CHENGGUO_ID` varchar(100) NOT NULL,
  `CGNAME` varchar(50) DEFAULT NULL COMMENT '成果名',
  `FZNAME` varchar(30) DEFAULT NULL COMMENT '项目负责人',
  `FZID` varchar(255) DEFAULT NULL COMMENT '项目负责人id',
  `JDTIME` varchar(32) DEFAULT NULL COMMENT '鉴定时间',
  `JDDW` varchar(50) DEFAULT NULL COMMENT '鉴定单位',
  `JDNUM` varchar(255) DEFAULT NULL COMMENT '鉴定编号',
  `OTHERS` varchar(255) DEFAULT NULL COMMENT '其他参与人员',
  `SHZT` varchar(10) DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`CHENGGUO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_chengguo
-- ----------------------------
INSERT INTO `kygl_chengguo` VALUES ('14deb5ae62e2430f8df3acb84b24bb7a', '3', '123123123', 'd252aaddd9d24273b453c4098a514d89', '2017-03-28', '3', '3', '3', '已结题');
INSERT INTO `kygl_chengguo` VALUES ('3998ba764e74431ea67d7b6a81c6dcb4', '1', 'admin', '57533492f96a4f0eb702bae8a93851d0', '2017-03-29', '1', '1', '1', '审核中');
INSERT INTO `kygl_chengguo` VALUES ('54a37d6e5ae5437f840444214a873021', '2', '214543', 'ed5e760166204f1185d67abcbfa6b69f', '2017-03-06', '2', '2', '2', '审核中');
INSERT INTO `kygl_chengguo` VALUES ('ad6ffbed4c2f442bbb361011e110f7a9', '234234', '23413543543', 'f8f35e24267b46aaabe02f821bd6cdbd', '2017-06-21', '234', '3243', '12fgwesf', '审核中');

-- ----------------------------
-- Table structure for kygl_jingfei
-- ----------------------------
DROP TABLE IF EXISTS `kygl_jingfei`;
CREATE TABLE `kygl_jingfei` (
  `JINGFEI_ID` varchar(100) NOT NULL,
  `TUSHU` double(11,2) DEFAULT NULL COMMENT '图书资料费',
  `SHUJU` double(11,2) DEFAULT NULL COMMENT '数据采集费',
  `HUIYI` double(11,2) DEFAULT NULL COMMENT '会议费',
  `ZHUANJIAZIXUN` double(11,2) DEFAULT NULL COMMENT '专家咨询与评审费',
  `ZHUYANJINGTIE` double(11,2) DEFAULT NULL COMMENT '助研津贴和劳务费',
  `YINSHUA` double(11,2) DEFAULT NULL COMMENT '印刷和出版费',
  `CHAILU` double(11,2) DEFAULT NULL COMMENT '调研差旅费',
  `GUOJIJIAOLIUHEZUO` double(11,2) DEFAULT NULL COMMENT '国际合作交流费',
  `SHEBEI` double(11,2) DEFAULT NULL COMMENT '设备购置和使用费',
  `JIANJIEFEIYONG` double(11,2) DEFAULT NULL COMMENT '间接费用',
  `JIANJIEZBZ` varchar(255) DEFAULT NULL COMMENT '间接费用备注',
  `QITAFEIYONG` double(11,2) DEFAULT NULL COMMENT '其他费用',
  `QITAFEIYONGBZ` varchar(255) DEFAULT NULL COMMENT '其他费用备注',
  `ZONGJINGFEI` double(11,2) DEFAULT NULL COMMENT '总经费',
  `XIANGMUID` varchar(255) DEFAULT NULL COMMENT '所属项目id',
  PRIMARY KEY (`JINGFEI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_jingfei
-- ----------------------------
INSERT INTO `kygl_jingfei` VALUES ('4cdfd0ef99a5403d8c22ca2defd9af9d', '11.00', '11.00', '11.00', '11.00', '11.00', '14.00', '11.00', '11.00', '1111.00', '11.00', '不明', '211.00', '123', '33.00', 'd252aaddd9d24273b453c4098a514d89');
INSERT INTO `kygl_jingfei` VALUES ('e8f9a2db7492467fba0f28e36931ef22', '2342.00', '1231.00', '2132.00', '123.00', '234234.00', '234349.00', '2132.00', '43435.00', '464564.00', '64755.00', '2342342', '4325.00', '34535', '4564564.00', 'ed5e760166204f1185d67abcbfa6b69f');

-- ----------------------------
-- Table structure for kygl_jingfeibokuanzhuang
-- ----------------------------
DROP TABLE IF EXISTS `kygl_jingfeibokuanzhuang`;
CREATE TABLE `kygl_jingfeibokuanzhuang` (
  `JINGFEIBOKUANZHUANG_ID` varchar(100) NOT NULL,
  `KEYANXIANGMUID` int(11) NOT NULL COMMENT '科研项目id',
  `BOKUANZK` varchar(255) DEFAULT NULL COMMENT '拨款状况',
  `BOKUANJINE` double(11,2) DEFAULT NULL COMMENT '拨款总金额',
  `YIDAOJINE` double(11,2) DEFAULT NULL COMMENT '已到金额',
  `WEIDAOJINE` double(11,2) DEFAULT NULL COMMENT '未到金额',
  PRIMARY KEY (`JINGFEIBOKUANZHUANG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_jingfeibokuanzhuang
-- ----------------------------
INSERT INTO `kygl_jingfeibokuanzhuang` VALUES ('82ff1744faa448a2bf61c57eaa585551', '111', '22', '11.00', '11.00', '0.00');
INSERT INTO `kygl_jingfeibokuanzhuang` VALUES ('b4963f1d37c744b79daa5a1bf595d1e7', '4', '11111', '11.00', '22.00', '0.00');

-- ----------------------------
-- Table structure for kygl_keyanketihuizong
-- ----------------------------
DROP TABLE IF EXISTS `kygl_keyanketihuizong`;
CREATE TABLE `kygl_keyanketihuizong` (
  `KEYANKETIHUIZONG_ID` varchar(100) NOT NULL,
  `KETINAME` varchar(50) DEFAULT NULL COMMENT '课题名称',
  `FUZERENID` int(11) DEFAULT NULL COMMENT '负责人id',
  `FUZERENNAME` varchar(50) DEFAULT NULL COMMENT '负责人姓名',
  `KETINLAIYUAN` varchar(50) DEFAULT NULL COMMENT '课题来源',
  `DAOWEIJINGFEI` double(11,2) DEFAULT NULL COMMENT '到位经费（万）',
  `KETIJIBIE` int(11) NOT NULL COMMENT '课题级别',
  `TUANDUIRENSHU` int(5) NOT NULL COMMENT '团队人数',
  `SUBJECT` varchar(50) DEFAULT NULL COMMENT '所属学课',
  `FILEPATH` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `SHENHE` varchar(10) DEFAULT NULL COMMENT '审核状况',
  `FILESIZE` double(11,2) DEFAULT NULL COMMENT '文件大小',
  `LIANLUO` int(11) NOT NULL COMMENT '通信联络人（电话）',
  PRIMARY KEY (`KEYANKETIHUIZONG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_keyanketihuizong
-- ----------------------------
INSERT INTO `kygl_keyanketihuizong` VALUES ('4ea31c65e29d4ef58ba43a4dca4c74df', '1', '1', '1', '11', '1.00', '1', '1', '1', '2017031806354426377.docx', '1', '11.61', '1');
INSERT INTO `kygl_keyanketihuizong` VALUES ('8c2c43b8dc5542769e6c9e88ed9fea43', '22', '2', '2', '22', '2.00', '2', '1', '213', '2017032104242179179.doc', '2', '204.48', '2');

-- ----------------------------
-- Table structure for kygl_lunwen
-- ----------------------------
DROP TABLE IF EXISTS `kygl_lunwen`;
CREATE TABLE `kygl_lunwen` (
  `LUNWEN_ID` varchar(100) NOT NULL,
  `LWNAME` varchar(255) DEFAULT NULL COMMENT '论文名',
  `ENAME` varchar(255) DEFAULT NULL COMMENT '论文英文名',
  `PUNLISHDATE` varchar(32) DEFAULT NULL COMMENT '发刊日期',
  `FIRSTAUTHOR` varchar(20) DEFAULT NULL COMMENT '第一作者',
  `SECONDAUTHOR` varchar(20) DEFAULT NULL COMMENT '第二作者',
  `THIRDAUTHOR` varchar(255) DEFAULT NULL COMMENT '第三作者',
  `SUBJECT` varchar(20) DEFAULT NULL COMMENT '学科门类',
  `PUBLISHER` varchar(20) DEFAULT NULL COMMENT '出版单位',
  `QIKANHAO` varchar(255) DEFAULT NULL COMMENT '期刊号',
  `SHENHEZT` varchar(10) DEFAULT NULL COMMENT '审核状态',
  `XMID` varchar(255) DEFAULT NULL COMMENT '所属项目id',
  `LIANLUO1` int(11) DEFAULT NULL COMMENT '通信联络人1（电话）',
  `LIANLUO2` int(11) DEFAULT NULL COMMENT '通信联络人2（电话）',
  `OTHERAUTHER` varchar(255) DEFAULT NULL COMMENT '其他作者',
  `FIRSTAUTHORNUM` varchar(255) DEFAULT NULL COMMENT '第一作者教职工编号',
  `SECONDAUTHERNUM` varchar(255) DEFAULT NULL COMMENT '第二作者教职工编号',
  `THIRDAUTHORNUM` varchar(255) DEFAULT NULL COMMENT '第三作者教职工编号',
  `FILEPATH` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `FILESIZE` int(11) DEFAULT NULL,
  PRIMARY KEY (`LUNWEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_lunwen
-- ----------------------------
INSERT INTO `kygl_lunwen` VALUES ('02f9876eb7694e0ca1992fbfe682782d', '论文6', 'lunwen6', '2017-05-05', 'luna', 'the doctor', 'supergirl', 'cs', '北化', '', '已结题', '', '123', '123', '小明 小红 小白', '', '', '', '2017052812553876621.docx', '15');
INSERT INTO `kygl_lunwen` VALUES ('243287d02bf44c8abadd7f60d1005f43', '论文1', '论文1', '', 'luna', '124sd', '', 'ad', '', '', '审核中', '', '23423', '1234', 'sdf', '', '', '', '2017052812435039132.xls', '15');
INSERT INTO `kygl_lunwen` VALUES ('278ced1003ba48c9b370e414e6bafac2', 'eposide', 'eposide', '', 'the doctor', 'supergirl', 'luna', '1231', '123', '6f2c97ea3e6747e296fae6392cf3a1f5', '审核中', '57533492f96a4f0eb702bae8a93851d0', '123', '91', '', '23413543543', '2342342342', 'admin', '2017050211284167423.docx', '16');
INSERT INTO `kygl_lunwen` VALUES ('99eb6151c4f94b4d9df5e220bfed0da1', '论文5', 'lunwen5', '2017-05-16', 'supergirl', '12123', '123', '12', '123', '', '已结题', '', '123', '123', '12', '123123123', '', '', '2017052610161298306.zip', '15');
INSERT INTO `kygl_lunwen` VALUES ('cc1dc0cfdfab4985ae0e4aa140c2ddf1', '论文2', 'lunwen2', '', 'luna', 'supergirl', '', '3ead', '', '9dca6262af564ec68fb6979b2694f04e', '审核中', 'ed5e760166204f1185d67abcbfa6b69f', '234325', '756', '', 'admin', '2342342342', '', '2017050211303234800.docx', '81');
INSERT INTO `kygl_lunwen` VALUES ('d0cf64c812fa4bf288d0a9db5891daa7', '论wen3', '213', '', 'the doctor', 'supergirl', 'luna', 'dge', '', '', '审核中', '', '231', '1231', '', '23413543543', '2342342342', 'admin', '2017050211371866059.docx', '66');
INSERT INTO `kygl_lunwen` VALUES ('d1c2f76429e64c8ab83b3fb14b4c3bfd', '论文4', 'lunwen4', '', 'luna', 'tom', 'the doctor', 'sfd', '', '6f2c97ea3e6747e296fae6392cf3a1f5', '审核中', 'ed5e760166204f1185d67abcbfa6b69f', '34525', '76465396', '', 'admin', '', '23413543543', '2017050211323954689.docx', '81');

-- ----------------------------
-- Table structure for kygl_qikanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kygl_qikanxinxi`;
CREATE TABLE `kygl_qikanxinxi` (
  `QIKANXINXI_ID` varchar(100) NOT NULL,
  `QIKANNAME` varchar(50) DEFAULT NULL COMMENT '期刊名',
  `ISSUENUM` varchar(255) DEFAULT NULL COMMENT '期刊号',
  `YIJIXUEKE` varchar(50) DEFAULT NULL COMMENT '一级学科',
  `ERJIXUEKE` varchar(50) DEFAULT NULL COMMENT '二级学科',
  `SANJIXUEKE` varchar(50) DEFAULT NULL COMMENT '三级学科',
  `JIBIE` varchar(255) DEFAULT NULL COMMENT '级别',
  `YINGXIANGYINZI` double(5,2) DEFAULT NULL COMMENT '影响因子',
  PRIMARY KEY (`QIKANXINXI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_qikanxinxi
-- ----------------------------
INSERT INTO `kygl_qikanxinxi` VALUES ('6f2c97ea3e6747e296fae6392cf3a1f5', '第一本期刊', '11cs123', '1', '2', '3', '4', '5.00');
INSERT INTO `kygl_qikanxinxi` VALUES ('9dca6262af564ec68fb6979b2694f04e', '1', '1', '11', '1', '1', '1', '1.00');

-- ----------------------------
-- Table structure for kygl_xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `kygl_xiangmu`;
CREATE TABLE `kygl_xiangmu` (
  `XIANGMU_ID` varchar(100) NOT NULL,
  `XMNAME` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `FUZEREN` varchar(50) DEFAULT NULL COMMENT '主要负责人',
  `CHENGDAN` varchar(50) DEFAULT NULL COMMENT '主要承担人',
  `LAIYUAN` varchar(50) DEFAULT NULL COMMENT '项目来源',
  `XINGZHI` varchar(50) DEFAULT NULL COMMENT '项目性质',
  `STARTDATE` varchar(32) DEFAULT NULL COMMENT '开始日期',
  `JIESHURIQI` varchar(32) DEFAULT NULL COMMENT '结束日期',
  `SHENQINGZT` varchar(50) DEFAULT NULL COMMENT '申请状态',
  PRIMARY KEY (`XIANGMU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_xiangmu
-- ----------------------------
INSERT INTO `kygl_xiangmu` VALUES ('57533492f96a4f0eb702bae8a93851d0', '第三个', '123123123', 'asfa', 'asd', 'asd', '2017-五月-12', '2017-六月-01', '在研');
INSERT INTO `kygl_xiangmu` VALUES ('d252aaddd9d24273b453c4098a514d89', '第一个项目', '214543', 'me', '毕业设计', '你猜', '2017-04-29', '2017-04-29 ', '已结题');
INSERT INTO `kygl_xiangmu` VALUES ('ed5e760166204f1185d67abcbfa6b69f', 'diergexiangmu', '23413543543', '123', '123', '123', '2017-05-02 ', '2017-05-02 ', '在研');
INSERT INTO `kygl_xiangmu` VALUES ('f8f35e24267b46aaabe02f821bd6cdbd', '11', '214543', '111', '1', '1', '2017-03-14 ', '2017-03-14 ', '审核中');

-- ----------------------------
-- Table structure for kygl_zhuanichengguo
-- ----------------------------
DROP TABLE IF EXISTS `kygl_zhuanichengguo`;
CREATE TABLE `kygl_zhuanichengguo` (
  `ZHUANICHENGGUO_ID` varchar(100) NOT NULL,
  `ZHUANLIHAO` varchar(11) DEFAULT NULL COMMENT '专利号',
  `ZHUANLINAME` varchar(100) DEFAULT NULL COMMENT '专利名',
  `FAMINGRENID` varchar(255) DEFAULT NULL COMMENT '第一发明人ID',
  `SUOSHUXIANGMUID` varchar(255) DEFAULT NULL COMMENT '所属项目号',
  `SECONDCID` varchar(255) DEFAULT NULL COMMENT '第二发明人id',
  `THIRDID` varchar(255) DEFAULT NULL COMMENT '第三发明人id',
  `FIRSTNAME` varchar(255) DEFAULT NULL COMMENT '第一发明人姓名',
  `SECONDNAME` varchar(255) DEFAULT NULL COMMENT '第二发明人姓名',
  `THIRDNAME` varchar(255) DEFAULT NULL COMMENT '第三发明人姓名',
  PRIMARY KEY (`ZHUANICHENGGUO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kygl_zhuanichengguo
-- ----------------------------
INSERT INTO `kygl_zhuanichengguo` VALUES ('006ff40d50e24132a0fe81ccbed59ea5', '23424', '123123', '23413543543', 'ed5e760166204f1185d67abcbfa6b69f', 'admin', '214543', 'the doctor', 'luna', 'legion');
INSERT INTO `kygl_zhuanichengguo` VALUES ('869c70e7b6934e65913a3c0c65e91fcb', '23421', 'bnsergc', 'admin', '57533492f96a4f0eb702bae8a93851d0', '481219843', '214543', 'luna', 'sasha', 'legion');
INSERT INTO `kygl_zhuanichengguo` VALUES ('a63c5336f0c64ebf8146ca751bd8300c', '5342', 'asfadsg', '23413543543', 'd252aaddd9d24273b453c4098a514d89', '453453434', '481219843', '45', '王小明', 'sasha');
INSERT INTO `kygl_zhuanichengguo` VALUES ('b4b0e5e73f6f4c5d8e210b20dd953501', '42452', 'najkndkfjha', '23413543543', 'ed5e760166204f1185d67abcbfa6b69f', 'admin', '214543', '453', 'luna', 'legion');
INSERT INTO `kygl_zhuanichengguo` VALUES ('d8f06caf6c7a4648b55a7c9b8d7995a5', '2123', 'dasd', '', 'ed5e760166204f1185d67abcbfa6b69f', 'admin', '', 'sdf', 'luna', 'sdf');

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_createcode
-- ----------------------------
DROP TABLE IF EXISTS `sys_createcode`;
CREATE TABLE `sys_createcode` (
  `CREATECODE_ID` varchar(100) NOT NULL,
  `PACKAGENAME` varchar(50) DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '描述',
  `FHTYPE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CREATECODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_createcode
-- ----------------------------
INSERT INTO `sys_createcode` VALUES ('002ea762e3e242a7a10ea5ca633701d8', 'system', 'Buttonrights', 'sys_,fh,BUTTONRIGHTS', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,255Q313596790', '2016-01-16 23:20:36', '按钮权限', 'single');
INSERT INTO `sys_createcode` VALUES ('043843a286f84549ad3fa71aac827f6f', 'system', 'FHlog', 'SYS_,fh,FHLOG', 'USERNAME,fh,String,fh,用户名,fh,是,fh,无,fh,100,fh,0Q313596790CZTIME,fh,Date,fh,操作时间,fh,否,fh,无,fh,32,fh,0Q313596790CONTENT,fh,String,fh,事件,fh,是,fh,无,fh,255,fh,0Q313596790', '2016-05-10 21:10:16', '操作日志记录', 'single');
INSERT INTO `sys_createcode` VALUES ('0ee023606efb45b9a3baaa072e502161', 'information', 'FtestMx', 'FH_,fh,FTESTMX', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,255,fh,0Q313596790CHANGDU,fh,Integer,fh,长度,fh,是,fh,无,fh,11,fh,0Q313596790', '2016-04-21 01:52:11', '主表测试(明细)', 'sontable');
INSERT INTO `sys_createcode` VALUES ('1be959583e82473b82f6e62087bd0d38', 'information', 'Attached', 'TB_,fh,ATTACHED', 'NAME,fh,String,fh,NAME,fh,是,fh,无,fh,255,fh,0Q313596790FDESCRIBE,fh,String,fh,FDESCRIBE,fh,是,fh,无,fh,255,fh,0Q313596790PRICE,fh,Double,fh,PRICE,fh,是,fh,无,fh,11,fh,2Q313596790CTIME,fh,Date,fh,CTIME,fh,否,fh,无,fh,32,fh,0Q313596790', '2016-04-21 17:07:59', '主表测试', 'fathertable');
INSERT INTO `sys_createcode` VALUES ('1f31658ecbbe4393aa21143464099331', 'web', 'Aboutus', 'web_,fh,ABOUTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 02:28:38', '关于我们', 'single');
INSERT INTO `sys_createcode` VALUES ('2796a020c8b5432db96b350bfa925484', 'web', 'Leavemsg', 'web_,fh,LEAVEMSG', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,10,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,50,fh,0Q313596790LCONTENT,fh,String,fh,内容,fh,是,fh,无,fh,2000,fh,0Q313596790CTIME,fh,Date,fh,提交时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-01-04 03:46:20', '访客留言', 'single');
INSERT INTO `sys_createcode` VALUES ('27b0b95592ba451091e8f6d0597df577', 'web', 'Image', 'web_,fh,IMAGE', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,100,fh,0Q313596790IMGURL,fh,String,fh,路径,fh,是,fh,无,fh,255,fh,0Q313596790TOURL,fh,String,fh,链接,fh,是,fh,无,fh,255,fh,0Q313596790TYPE,fh,Integer,fh,类型,fh,是,fh,无,fh,2,fh,0Q313596790FORDER,fh,String,fh,排序,fh,是,fh,无,fh,11,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,2000,fh,0Q313596790', '2016-12-28 02:37:27', '网站信息', 'single');
INSERT INTO `sys_createcode` VALUES ('3da8e8bd757c44148d89931a54d29c88', 'system', 'UserPhoto', 'SYS_,fh,USERPHOTO', 'USERNAME,fh,String,fh,用户名,fh,否,fh,无,fh,30,fh,0Q313596790PHOTO0,fh,String,fh,原图,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO1,fh,String,fh,头像1,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO2,fh,String,fh,头像2,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO3,fh,String,fh,头像3,fh,否,fh,无,fh,100,fh,0Q313596790', '2016-06-05 17:54:25', '用户头像', 'single');
INSERT INTO `sys_createcode` VALUES ('3ee004016c984c08903317b6434024ff', 'web', 'OurBusiness', 'web_,fh,OURBUSINESS', 'TITLE1,fh,String,fh,介绍上,fh,是,fh,无,fh,255,fh,0Q313596790TITLE2,fh,String,fh,介绍下,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT1,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT2,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-03 02:08:49', '网站信息', 'single');
INSERT INTO `sys_createcode` VALUES ('4173a8c56a504dd6b6213d2b9cd3e91b', 'information', 'AttachedMx', 'TB_,fh,ATTACHEDMX', 'NAME,fh,String,fh,NAME,fh,是,fh,无,fh,255,fh,0Q313596790TITLE,fh,String,fh,TITLE,fh,是,fh,无,fh,255,fh,0Q313596790CTIME,fh,Date,fh,CTIME,fh,否,fh,无,fh,32,fh,0Q313596790PRICE,fh,Double,fh,PRICE,fh,是,fh,无,fh,11,fh,2Q313596790', '2016-04-21 17:09:40', '主表测试(明细)', 'sontable');
INSERT INTO `sys_createcode` VALUES ('41e07fb03763434daef41cd99d0406c3', 'system', 'LogInImg', 'SYS_,fh,LOGINIMG', 'NAME,fh,String,fh,文件名,fh,是,fh,无,fh,30,fh,0Q313596790FILEPATH,fh,String,fh,路径,fh,是,fh,无,fh,100,fh,0Q313596790TYPE,fh,Integer,fh,状态,fh,是,fh,无,fh,2,fh,0Q313596790FORDER,fh,Integer,fh,排序,fh,是,fh,无,fh,3,fh,0Q313596790', '2016-06-03 17:53:22', '登录页面背景图片', 'single');
INSERT INTO `sys_createcode` VALUES ('463aaa745cd948a1b7dea8ae60d27402', 'web', 'Contactus', 'web_,fh,CONTACTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-04 03:01:12', '联系我们', 'single');
INSERT INTO `sys_createcode` VALUES ('49d985e081ed44e6b34ba1b8c5466e39', 'fhdb', 'TimingBackUp', 'DB_,fh,TIMINGBACKUP', 'JOBNAME,fh,String,fh,任务名称,fh,否,fh,无,fh,50Q313596790CREATE_TIME,fh,Date,fh,创建时间,fh,否,fh,无,fh,32Q313596790TABLENAME,fh,String,fh,表名,fh,是,fh,无,fh,50Q313596790TYPE,fh,Integer,fh,类型,fh,否,fh,无,fh,1Q313596790FHTIME,fh,String,fh,时间规则,fh,是,fh,无,fh,30Q313596790TIMEEXPLAIN,fh,String,fh,规则说明,fh,是,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-04-09 11:53:38', '定时备份', 'single');
INSERT INTO `sys_createcode` VALUES ('4def60c58aa148b7998270978660ef30', 'fhoa', 'Fhfile', 'OA_,fh,FHFILE', 'NAME,fh,String,fh,文件名,fh,是,fh,无,fh,30,fh,0Q313596790FILEPATH,fh,String,fh,路径,fh,是,fh,无,fh,100,fh,0Q313596790CTIME,fh,Date,fh,上传时间,fh,否,fh,无,fh,32,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,100,fh,0Q313596790USERNAME,fh,String,fh,长传者,fh,否,fh,无,fh,50,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门ID,fh,否,fh,无,fh,100,fh,0Q313596790FILESIZE,fh,String,fh,文件大小,fh,否,fh,无,fh,10,fh,0Q313596790', '2016-05-27 20:52:01', '文件管理', 'single');
INSERT INTO `sys_createcode` VALUES ('52279e8d804e4108b4bd26dbc59f4573', 'web', 'Corporatephilosophy', 'web_,fh,CORPORATEPHILOSOPHY', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,50,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-04 00:32:22', '公司理念', 'single');
INSERT INTO `sys_createcode` VALUES ('551f4b4d25de41418c3ba459499f9b46', 'web', 'News', 'web_,fh,NEWS', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CTIME,fh,Date,fh,发表时间,fh,否,fh,无,fh,32,fh,0Q313596790STEMFROM,fh,String,fh,来源,fh,是,fh,无,fh,100,fh,0Q313596790IMAGE,fh,String,fh,图片,fh,是,fh,无,fh,100,fh,0Q313596790SHORTCONTENT,fh,String,fh,简述,fh,是,fh,无,fh,300,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,5000,fh,0Q313596790', '2017-01-08 01:17:04', '新闻动态', 'single');
INSERT INTO `sys_createcode` VALUES ('60f067aa855145299e14f33a599ce24f', 'keyan', 'ZHUANICHENGGUO', 'KYGL_,fh,ZHUANICHENGGUO', 'ZHUANLIHAO,fh,Integer,fh,专利id,fh,是,fh,无,fh,11,fh,0Q313596790ZHUANLINAME,fh,String,fh,专利名称,fh,是,fh,无,fh,100,fh,0Q313596790FAMINGRENID,fh,Integer,fh,发明人id,fh,是,fh,无,fh,11,fh,0Q313596790FAMINGRENNAME,fh,String,fh,发明人姓名,fh,是,fh,无,fh,50,fh,0Q313596790SUOSHUXIANGMUID,fh,Integer,fh,所属项目id,fh,是,fh,无,fh,11,fh,0Q313596790SUOSHUXIANGMUNAME,fh,String,fh,所属项目名,fh,是,fh,无,fh,50,fh,0Q313596790', '2017-02-23 12:18:24', '专利成果表', 'single');
INSERT INTO `sys_createcode` VALUES ('6a60600ea1b04724ba8c67ecf87c248d', 'keyan', 'ZHUANICHENGGUO', 'KYGL_,fh,ZHUANICHENGGUO', 'ZHUANLIHAO,fh,Integer,fh,专利id,fh,是,fh,无,fh,11,fh,0Q313596790ZHUANLINAME,fh,String,fh,专利名称,fh,是,fh,无,fh,100,fh,0Q313596790FAMINGRENID,fh,Integer,fh,发明人id,fh,是,fh,无,fh,11,fh,0Q313596790FAMINGRENNAME,fh,String,fh,发明人姓名,fh,是,fh,无,fh,50,fh,0Q313596790SUOSHUXIANGMUID,fh,Integer,fh,所属项目id,fh,是,fh,无,fh,11,fh,0Q313596790SUOSHUXIANGMUNAME,fh,String,fh,所属项目名,fh,是,fh,无,fh,50,fh,0Q313596790', '2017-04-23 19:15:59', '专利成果表', 'single');
INSERT INTO `sys_createcode` VALUES ('74f2cb47b5424b558f53aefac52073d3', 'web', 'Information', 'web_,fh,INFORMATION', 'NAME,fh,String,fh,网站名称,fh,是,fh,无,fh,30,fh,0Q313596790TITLE,fh,String,fh,标题,fh,是,fh,无,fh,100,fh,0Q313596790KEYWORDS,fh,String,fh,关键词,fh,是,fh,无,fh,100,fh,0Q313596790DESCRIPTION,fh,String,fh,描述,fh,是,fh,无,fh,200,fh,0Q313596790LOGO,fh,String,fh,logo,fh,是,fh,无,fh,100,fh,0Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,20,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790QQ,fh,String,fh,QQ,fh,是,fh,无,fh,20,fh,0Q313596790FAX,fh,String,fh,传真,fh,是,fh,无,fh,20,fh,0Q313596790WEBURL,fh,String,fh,官网,fh,是,fh,无,fh,50,fh,0Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,100,fh,0Q313596790COPYRIGHT,fh,String,fh,版权,fh,是,fh,无,fh,20,fh,0Q313596790TECHNOLOGY,fh,String,fh,技术支持,fh,是,fh,无,fh,20,fh,0Q313596790BEIAN,fh,String,fh,备案,fh,是,fh,无,fh,15,fh,0Q313596790', '2016-12-27 03:45:00', '网站信息', 'single');
INSERT INTO `sys_createcode` VALUES ('91af9fe509704fa68f6bca121359e3ec', 'fhoa', 'Staff', 'OA_,fh,STAFF', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,50,fh,0Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50,fh,0Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,100,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门,fh,是,fh,无,fh,100,fh,0Q313596790FUNCTIONS,fh,String,fh,职责,fh,是,fh,无,fh,255,fh,0Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,20,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790SEX,fh,String,fh,性别,fh,是,fh,无,fh,10,fh,0Q313596790BIRTHDAY,fh,Date,fh,出生日期,fh,是,fh,无,fh,32,fh,0Q313596790NATION,fh,String,fh,民族,fh,是,fh,无,fh,10,fh,0Q313596790JOBTYPE,fh,String,fh,岗位类别,fh,是,fh,无,fh,30,fh,0Q313596790JOBJOINTIME,fh,Date,fh,参加工作时间,fh,是,fh,无,fh,32,fh,0Q313596790FADDRESS,fh,String,fh,籍贯,fh,是,fh,无,fh,100,fh,0Q313596790POLITICAL,fh,String,fh,政治面貌,fh,是,fh,无,fh,30,fh,0Q313596790PJOINTIME,fh,Date,fh,入团时间,fh,是,fh,无,fh,32,fh,0Q313596790SFID,fh,String,fh,身份证号,fh,是,fh,无,fh,20,fh,0Q313596790MARITAL,fh,String,fh,婚姻状况,fh,是,fh,无,fh,10,fh,0Q313596790DJOINTIME,fh,Date,fh,进本单位时间,fh,是,fh,无,fh,32,fh,0Q313596790POST,fh,String,fh,现岗位,fh,是,fh,无,fh,30,fh,0Q313596790POJOINTIME,fh,Date,fh,上岗时间,fh,是,fh,无,fh,32,fh,0Q313596790EDUCATION,fh,String,fh,学历,fh,是,fh,无,fh,10,fh,0Q313596790SCHOOL,fh,String,fh,毕业学校,fh,是,fh,无,fh,30,fh,0Q313596790MAJOR,fh,String,fh,专业,fh,是,fh,无,fh,30,fh,0Q313596790FTITLE,fh,String,fh,职称,fh,是,fh,无,fh,30,fh,0Q313596790CERTIFICATE,fh,String,fh,职业资格证,fh,是,fh,无,fh,30,fh,0Q313596790CONTRACTLENGTH,fh,Integer,fh,劳动合同时长,fh,是,fh,无,fh,2,fh,0Q313596790CSTARTTIME,fh,Date,fh,签订日期,fh,是,fh,无,fh,32,fh,0Q313596790CENDTIME,fh,Date,fh,终止日期,fh,是,fh,无,fh,32,fh,0Q313596790ADDRESS,fh,String,fh,现住址,fh,是,fh,无,fh,100,fh,0Q313596790USER_ID,fh,String,fh,绑定账号ID,fh,否,fh,无,fh,100,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255,fh,0Q313596790', '2016-04-23 20:44:31', '员工管理', 'single');
INSERT INTO `sys_createcode` VALUES ('ae92803163ff44539e91711cfbe35411', 'fhoa', 'Datajur', 'OA_,fh,DATAJUR', 'DEPARTMENT_IDS,fh,String,fh,部门ID组合,fh,否,fh,无,fh,5000,fh,0Q313596790STAFF_ID,fh,String,fh,员工ID,fh,否,fh,无,fh,100,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门ID,fh,是,fh,无,fh,100,fh,0Q313596790', '2016-04-27 03:49:39', '数据权限表', 'single');
INSERT INTO `sys_createcode` VALUES ('bd09981a1f0840e28517335c4b44ee29', 'web', 'Cooperation', 'web_,fh,COOPERATION', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 03:06:10', '合作共赢', 'single');
INSERT INTO `sys_createcode` VALUES ('bf35ab8b2d064bf7928a04bba5e5a6dd', 'system', 'Fhsms', 'SYS_,fh,FHSMS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,1000Q313596790TYPE,fh,String,fh,类型,fh,否,fh,无,fh,5Q313596790TO_USERNAME,fh,String,fh,收信人,fh,是,fh,无,fh,255Q313596790FROM_USERNAME,fh,String,fh,发信人,fh,是,fh,无,fh,255Q313596790SEND_TIME,fh,String,fh,发信时间,fh,是,fh,无,fh,100Q313596790STATUS,fh,String,fh,状态,fh,否,fh,无,fh,5Q313596790SANME_ID,fh,String,fh,共同ID,fh,是,fh,无,fh,100Q313596790', '2016-03-27 21:39:45', '站内信', 'single');
INSERT INTO `sys_createcode` VALUES ('c7586f931fd44c61beccd3248774c68c', 'system', 'Department', 'SYS_,fh,DEPARTMENT', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,50Q313596790PARENT_ID,fh,String,fh,上级ID,fh,否,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790HEADMAN,fh,String,fh,负责人,fh,是,fh,无,fh,30Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,50Q313596790FUNCTIONS,fh,String,fh,部门职能,fh,是,fh,无,fh,255Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,255Q313596790', '2015-12-20 01:49:25', '组织机构', 'tree');
INSERT INTO `sys_createcode` VALUES ('c937e21208914e5b8fb1202c685bbf2f', 'fhdb', 'Fhdb', 'DB_,fh,FHDB', 'USERNAME,fh,String,fh,操作用户,fh,否,fh,无,fh,50Q313596790BACKUP_TIME,fh,Date,fh,备份时间,fh,否,fh,无,fh,32Q313596790TABLENAME,fh,String,fh,表名,fh,是,fh,无,fh,50Q313596790SQLPATH,fh,String,fh,存储位置,fh,否,fh,无,fh,300Q313596790TYPE,fh,Integer,fh,类型,fh,是,fh,无,fh,1Q313596790DBSIZE,fh,String,fh,文件大小,fh,否,fh,无,fh,10Q313596790BZ,fh,String,fh,备注,fh,否,fh,无,fh,255Q313596790', '2016-03-30 13:46:54', '数据库管理', 'single');
INSERT INTO `sys_createcode` VALUES ('fe239f8742194481a5b56f90cad71520', 'system', 'Fhbutton', 'SYS_,fh,FHBUTTON', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790QX_NAME,fh,String,fh,权限标识,fh,是,fh,无,fh,50Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-01-15 18:38:40', '按钮管理', 'single');

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a', '济南', 'JiNan', '0030301', '1', '10f46a521ea0471f8d71ee75ac3b5f3a', '济南', '');
INSERT INTO `sys_dictionaries` VALUES ('096e4ec8986149d994b09e604504e38d', '黄浦区', 'huangpu', '0030201', '1', 'f1ea30ddef1340609c35c88fb2919bee', '黄埔', '');
INSERT INTO `sys_dictionaries` VALUES ('10f46a521ea0471f8d71ee75ac3b5f3a', '山东', 'ShanDong', '00303', '3', 'be4a8c5182c744d28282a5345783a77f', '山东省', '');
INSERT INTO `sys_dictionaries` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', '北京', 'beijing', '00301', '1', 'be4a8c5182c744d28282a5345783a77f', '北京', '');
INSERT INTO `sys_dictionaries` VALUES ('507fa87a49104c7c8cdb52fdb297da12', '宣武区', 'xuanwuqu', '0030101', '1', '12a62a3e5bed44bba0412b7e6b733c93', '宣武区', '');
INSERT INTO `sys_dictionaries` VALUES ('66f1ff79b13947da98525aff7380ef50', '高新区', 'gaoxinqu', '003030101', '1', '0193ffbfae1e49e0b7810546cada316a', '高新区', '');
INSERT INTO `sys_dictionaries` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', '语文', 'yuwen', '00201', '1', 'fce20eb06d7b4b4d8f200eda623f725c', '语文', '');
INSERT INTO `sys_dictionaries` VALUES ('8ea7c44af25f48b993a14f791c8d689f', '分类', 'fenlei', '001', '1', '0', '分类', '');
INSERT INTO `sys_dictionaries` VALUES ('be4a8c5182c744d28282a5345783a77f', '地区', 'diqu', '003', '3', '0', '地区', '');
INSERT INTO `sys_dictionaries` VALUES ('d428594b0494476aa7338d9061e23ae3', '红色', 'red', '00101', '1', '8ea7c44af25f48b993a14f791c8d689f', '红色', '');
INSERT INTO `sys_dictionaries` VALUES ('de9afadfbed0428fa343704d6acce2c4', '绿色', 'green', '00102', '2', '8ea7c44af25f48b993a14f791c8d689f', '绿色', '');
INSERT INTO `sys_dictionaries` VALUES ('f1ea30ddef1340609c35c88fb2919bee', '上海', 'shanghai', '00302', '2', 'be4a8c5182c744d28282a5345783a77f', '上海', '');
INSERT INTO `sys_dictionaries` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', '课程', 'kecheng', '002', '2', '0', '课程', '');

-- ----------------------------
-- Table structure for sys_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');

-- ----------------------------
-- Table structure for sys_fhlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhlog`;
CREATE TABLE `sys_fhlog` (
  `FHLOG_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhlog
-- ----------------------------
INSERT INTO `sys_fhlog` VALUES ('000c18ed4abb49189c84a4c0f88472b9', 'admin', '2017-05-29 12:51:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('005c754adc4047a0bd2ecf6dafb0cefc', 'admin', '2017-05-29 14:18:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0078e4a660e84784a0851680caaeaa45', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('014ba9de2a504c65b6a0b4722988f504', 'admin', '2017-05-10 23:08:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('015c6392019f4614b072e0a8e1f1988d', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('01aeb4e0447a427cbbc36dbd56260a23', 'admin', '2017-04-26 18:39:08', '修改系统用户：w1');
INSERT INTO `sys_fhlog` VALUES ('01e9d7b66bec4f81ac44679daf3bf478', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0213786770054da4b796604c0352870b', 'admin', '2017-01-03 23:31:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('021a5876beff40f6a9cb84569148a117', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('02519d37d399447b8fb3d0e4afc8e00e', 'admin', '2017-05-28 01:47:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0334f5bccded4f6395a0e63aba145cc3', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('03505211e27f43e6b614e5cd8d5a6e78', 'admin', '2017-01-03 02:10:46', '新增菜单业务说明');
INSERT INTO `sys_fhlog` VALUES ('037864d55c094444b8cf60ef6308acde', 'admin', '2017-05-13 14:39:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('03a0ef81c0ca437f865f41e7afeb7dd3', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('03d1489589e74eba962a755777c8efbe', 'admin', '2017-05-13 15:13:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('03d2866a287a4dc3887663797808abdb', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('049ce6b045cf43a6b1d387fb194ccd3e', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('05293a45f8484cc39b45784f13d98a5a', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('05f0551931ef4ad59329697e8a0a81e7', 'admin', '2017-05-28 23:15:25', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('05f080993e04420e924dd8b79cce5dc0', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('062b547a713c42a48d25dcaf301f35d8', 'admin', '2017-04-25 12:06:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0694786782314087bf71ed024f49fed8', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('06cf79d1486f446ba280b11a659e1ca6', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0711d9dffcac40e599712a6134bf8429', 'admin', '2017-05-13 17:57:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('07b658f93d31439d9009114e7293ee0b', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0803a00a01394059b268f51222d9f95e', 'admin', '2017-01-09 01:50:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0829bcbe46d64805829bf189e4315f5f', 'admin', '2017-05-28 21:10:33', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('0851e8847967422685e372b9ca5293a5', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('08f469673981498ba11c172ffe8b11b7', 'admin', '2017-06-03 09:28:01', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('09dd527911764d0387c5f4375bbfab8d', 'admin', '2017-05-14 17:58:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('09f15392122845699a94dd82c6f04781', 'admin', '2017-05-28 21:04:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a1ccd755b924126a4b5230b58aa8732', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0a2c265951b34b4b90d27734acf08b5e', 'admin', '2017-05-26 10:14:05', '修改系统用户：w1');
INSERT INTO `sys_fhlog` VALUES ('0a2c7cf5d4c246c6abe07c0976a4ad8e', 'admin', '2016-12-28 02:43:56', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('0ab3266b83e04f6094d64faf7c7f7574', 'admin', '2017-06-03 01:13:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0ad072e1fe844640b3cc1dd81af09222', 'admin', '2017-01-09 01:48:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0adf6cb3846440bf82b8d111fe6299c3', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0af375ca812d44f19e5b85251406becd', 'admin', '2017-04-26 18:04:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0b19e3c0ae7945628eb8f79862e0b39e', 'admin', '2017-01-08 01:31:36', '修改菜单联系我们');
INSERT INTO `sys_fhlog` VALUES ('0b1b49af5fae433a9fc0b0592e3d8cb0', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0b226450b037444a9f839aa871491c6a', 'admin', '2017-05-28 21:23:28', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('0b9f60710489451cab925468198189ae', 'admin', '2017-05-02 09:25:23', '修改系统用户：w1');
INSERT INTO `sys_fhlog` VALUES ('0bbfdf4f14cc401fa1abbe754ba45c6e', 'admin', '2017-05-01 22:16:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0c0f7c94a8a14b3e992604abe9d478a4', 'admin', '2017-05-09 17:40:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0c76e8e886b849a0ad78ac3f623265ea', 'admin', '2017-05-09 17:23:55', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('0c8b716be6d14ccb89d952a7ce7a7bd0', 'admin', '2017-04-10 20:17:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d134743af3d40b0bbaf922d31206111', 'admin', '2017-06-02 22:22:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d19d69641d741e6baa90212d254783d', 'admin', '2017-05-26 10:12:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d6da656a3014b5a880eaf10671998a8', 'admin', '2017-05-28 12:35:39', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('0d74a3894c49418b87a4a96edc9f3ec9', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0d768576e7e04b5bbc8a7d0e6451f8f9', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0d8efabadd1b441ea9f695b32bb996ea', 'admin', '2017-05-13 21:40:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0dfbe5b806be406183a35554145bc05f', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0e11e23458d04486a47435046c2fa14f', 'admin', '2017-05-02 11:05:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e4af78a9f3941d09c3f1425c6824b13', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0ea8123926994d02a681cca1f9cf09a5', 'admin', '2017-04-26 18:05:31', '新增角色:科研人员');
INSERT INTO `sys_fhlog` VALUES ('0ed5db3f8b844ecba422edca41c5dfda', 'admin', '2017-05-29 11:02:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0f7d2c1a7da54008a3c60a921c35f5cb', 'admin', '2017-06-03 00:19:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0f80d03a85d74859bb0390cdc82a3e77', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('0fd4e7dd0622426590a9a62e5eba8e60', 'admin', '2017-05-08 10:51:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1015c77276ca4a86867b391d5d68210e', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('103e52c0b3584c54b0f50e4e884348ff', 'admin', '2016-12-28 02:54:44', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('1062709675ee4f2f9f85500ec7534624', 'admin', '2017-04-23 18:47:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1095bb2ceebc4ef58649d5f30e7436e8', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('109dcd3eface44d8842dee7f7473868e', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('10afac3b050c4fecbb13a04e18f4c00b', 'admin', '2017-01-09 01:54:57', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('10b74e671158499190d85c8c4bbbd984', 'admin', '2017-05-11 14:36:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('10b7e9a81f9f44b5879bdef1f370bef0', 'admin', '2017-05-11 13:43:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('11020f34185b4aec807a2c61c4397966', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('11021acc43af47979b533948cffb5ae3', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('118a7d5da49f4cc2bdcb4d99b4a96e7c', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('119f4fab32ca4e2a88a18a3b22782f4e', 'admin', '2016-12-28 00:56:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('120f87eccf074b80b64df82026879ac5', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1245e823742947caaef7dfd28dbe210c', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1261856d234e406eb63f8978852a50fd', 'san', '2016-06-06 03:09:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('127191268b1e449faad53d8ae2c667ba', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1277c345a0a646ee8290149ab115a073', 'admin', '2017-05-28 11:43:51', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('12a6c5b61bcb472cbc91407956a174e3', 'admin', '2017-05-11 13:37:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('12ad34baea414ee7a263e1db744a198f', 'admin', '2017-06-03 08:57:23', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('12cf4dbfb189471eac5b39b7de155fe6', 'admin', '2017-05-13 21:35:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1310852e91b543e3b5a04415318be497', 'admin', '2017-04-26 18:22:14', '新增按钮权限pd{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, RB_ID=e8c47159134c4dd596f904dd53d72dd6, ROLE_ID=549bc2c6662b4e199ba8c53e10061a08, guid=1493202134465}');
INSERT INTO `sys_fhlog` VALUES ('131ea6d1429b4914b7a708875bf75281', 'admin', '2016-12-27 23:14:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('131f77aae0b54da98f73377470507672', 'admin', '2017-05-02 22:55:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('138219a23e8545fcb8d7309a8b9e27a9', 'admin', '2017-05-02 09:24:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13bd680ebeb44de6a92aeaa8fa9f2c49', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('13e7c3ebb4e24e8b9d19194499f55a1e', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('140a2720bda04302b9efdf4f9dbb7f0f', 'admin', '2017-05-28 01:17:43', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('1430c59a03f94fc68af84eb5e8d83f49', 'admin', '2017-01-07 02:32:25', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('145689691aa0498a8d6b63f27403384b', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('146b2140c69a4795b94d5113ad624bc2', 'admin', '2017-05-08 09:27:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('149a069540ba4213acbbe265187a2046', 'admin', '2017-06-03 00:39:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('14f44cebf813499c9ff91d625ade48ac', 'admin', '2017-06-03 10:01:09', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('1517101fb94743e8a4a45a73fc69d834', 'admin', '2017-05-10 23:08:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('15365b88cdd74576b68aac7e2c5f6c8f', 'admin', '2017-05-09 17:29:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1557552c327f4cc8a1768177576da021', 'admin', '2017-01-04 03:54:44', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('160f6602e0da4d82ac9522e5e704055f', 'admin', '2017-05-14 20:35:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('167e8153c90c47c8a2e0ec081d3b2f6b', 'admin', '2017-05-11 00:37:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('168ac96526e84eb5b3c022be607b15f5', 'admin', '2017-01-09 00:55:03', '删除菜单ID19');
INSERT INTO `sys_fhlog` VALUES ('16da87ded2c2411292531b0b86f21f45', 'admin', '2017-06-03 01:00:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('171856c739c9458bbfd0937f34f4565f', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1739a443dc4740938f23c59a86a8546a', 'admin', '2017-05-02 09:08:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('173c61220f984d8498a912b7aa258811', 'admin', '2017-01-09 01:54:05', '删除菜单ID66');
INSERT INTO `sys_fhlog` VALUES ('17c386cf92a1489ebc42bb7c4ff4d52d', 'admin', '2017-05-28 02:06:30', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('17d6f9b1f45645bbb98501cdae96108a', 'admin', '2017-05-03 00:34:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('17db9a54f1b84ba5a0eb7f1477134e6c', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('17f40a462d1e4ed3b39fd9280f1b4525', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('188894ba4326498c9c518b9fe600b6ed', 'admin', '2017-05-13 18:01:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('18dc0d77bbd447fda582866fa4495615', 'admin', '2017-06-03 10:01:40', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('18dc4f1c4f434b1984e32d49bf2eea6e', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('192231f169d24d699e726ebd74d4c555', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('192fbbbbb2b74ca4b735acf90cae2025', 'admin', '2017-06-03 09:27:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('194c330470dc49ea9f2b8e7cfe4fdd3e', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('19a208194a444067a38abcc3aeeb9e66', 'admin', '2017-05-12 22:34:09', '新增系统用户：sasha');
INSERT INTO `sys_fhlog` VALUES ('19acc22fcfbf4d839d04bc6e55c5195e', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('19f127f402984e3ba3d6eba977f44143', 'admin', '2017-05-10 20:15:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1a1407a7e5a1456ca2c88a123df1d158', 'admin', '2017-05-29 13:48:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1a158e6d171546ac8fd3bcc36828f5fd', 'admin', '2017-01-02 02:06:13', '修改菜单项目案例');
INSERT INTO `sys_fhlog` VALUES ('1a3e36d5f13c447c81639f40faac030b', 'admin', '2017-05-13 14:34:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1a56f9e5c0874350b5d904f9f8b98a34', 'admin', '2017-05-03 00:00:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1ae0e9d367f04f94b666629e4b5afd30', 'admin', '2017-01-03 23:16:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1ae691e06a0d4e06880b0ded0da67301', 'admin', '2017-01-08 01:28:16', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('1aff428224f945ca82271f41a464a44f', 'admin', '2017-04-10 20:29:26', '新增按钮权限pd{BUTTON_ID=46992ea280ba4b72b29dedb0d4bc0106, RB_ID=1e6c7a671a1a4bf4a77147e53031f056, ROLE_ID=3, guid=1491827366852}');
INSERT INTO `sys_fhlog` VALUES ('1b4b17323ab145519f88e53c13560d0d', 'admin', '2017-05-13 22:06:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b556eaa3ef447af9ce34c056eb56c2d', 'admin', '2017-05-02 11:49:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b735ad06b154988b4e01abfad7e3c14', 'admin', '2017-04-25 19:42:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b89d714a2a4426cb9f604603549b76c', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1c124042685947bfbbcc1e6c78b6ccfe', 'admin', '2017-05-11 10:02:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1c2d4f44b7384cbc9d50fae137ef2395', 'admin', '2017-05-10 19:53:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1c62751e06664538a24b164ed096139c', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1ca72905a0a64204be64c0b72dbd52c7', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1cc54bc032a34f3885642f08d0ab82e8', 'admin', '2017-06-03 08:57:03', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('1cd63585558a4b2e84d3fe44542d7ee7', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1ce08c4c910b4ed1bf852b14070bef6b', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1ce21713d7f24ea9a8bfbdf5f125dd6f', 'admin', '2017-05-29 12:10:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d09802808004af6b3550f589a013595', 'admin', '2017-05-10 17:14:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d310b63399b4c8fad7b76c729268c00', 'admin', '2017-01-09 11:25:49', '退出');
INSERT INTO `sys_fhlog` VALUES ('1d5dc7763e9749e7938a90746a9d05da', 'admin', '2017-01-07 02:56:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d7dcd532dfd46b6abf9bd16cce226f2', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1dd5555ec34a4e0fb484545e119d815f', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1e0a81ae231348e2b712be3d07f4dc18', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1e167d7fd6ec41eca26c83fdd8627309', 'admin', '2017-05-08 09:36:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e97a41360e241b2842a1a389a59bb41', 'admin', '2017-04-25 20:09:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1ec01269172b44f884758b1385933a7d', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1ece8ad479634c37afde061487633a5f', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1ef8ad2fcadd4d88b37e23a3d10a0509', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('1f760f1b82cf4d18bdf6e2bc5294abf0', 'admin', '2017-05-28 21:05:34', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('1fcc8618b98a47f1a3bc8bf7cf0bfe2e', 'admin', '2017-05-14 20:14:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2011ea9abc404803bcb24e0718e8ed90', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('20121cace9a945e7a30a1b8fa822ba3b', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('203843b1dd854435800f00414b273a22', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('205da737a41441c2a6d4321a91715b04', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('20bbb7c86883422a8d3bca43619a5723', 'admin', '2017-05-18 17:19:41', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('20c301e2420b42caaadc3f1a7cb3d992', 'admin', '2017-05-02 11:36:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('20e71697850e459f8b26cc07e318d6f9', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('219364bebfb74c339fe298459d73f92b', 'admin', '2017-05-03 00:08:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('21a675a6f38242a9a1efedb40434f8d3', 'admin', '2017-06-03 10:30:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('220fea6222624e0c8d4ee425f722d785', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('222f17187f7849c197378606b7df8804', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('222fcc66047446cf9ea974c90d9c999c', 'admin', '2017-01-03 12:11:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('22a2af3a757c48a59cff8e108af431e5', 'admin', '2017-05-02 09:58:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('22d0663ad0e1468da148a26c661f3976', 'admin', '2017-05-28 20:27:20', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('22f82afb1d0e43e6bee0f6684f51bb59', 'admin', '2017-05-01 22:21:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('22ff67f3406b423f92722fb675967d85', 'admin', '2017-04-10 20:20:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('230d3622cef047e5a29abce0f1297156', 'admin', '2017-05-28 21:33:15', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('2368663e96b64b348652d6881470d930', 'admin', '2017-01-08 01:31:42', '修改菜单访客留言');
INSERT INTO `sys_fhlog` VALUES ('23dbbb52a26f4ae8959056ffd7bfbb47', 'admin', '2017-06-03 00:32:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('23f2f7bf56ee4f22990bc04d719ce281', 'admin', '2017-06-03 01:03:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('24314da4195545d29c1621fb10492a5d', 'admin', '2017-04-29 16:47:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('24b20c15249644298524ae4530324a3e', 'admin', '2017-04-26 18:22:13', '新增按钮权限pd{BUTTON_ID=cc51b694d5344d28a9aa13c84b7166cd, RB_ID=377bb0993833477984c0dc99110b5bd8, ROLE_ID=3, guid=1493202133635}');
INSERT INTO `sys_fhlog` VALUES ('24bf460ee04f4afbb9174eeccbd5ffd1', 'admin', '2017-05-14 17:53:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('24cac3f5a640438aac4327667e66ea9a', 'admin', '2017-05-01 23:01:31', '修改菜单科研管理');
INSERT INTO `sys_fhlog` VALUES ('24d0f36bd5164778a3d9efcdaad1ec71', 'admin', '2017-05-08 10:56:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('24fd27f930fd43ab8f0cd37f2a1ccca7', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('252016c2dabb4f89aeb32c5e73f00218', 'admin', '2017-04-10 14:05:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2527688115f64a5f9af2840594a829df', 'admin', '2017-06-03 09:32:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25788a4ad00c4685b07609ec31a5b4a9', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('258da63fda194627840a7fa82438a4ac', 'admin', '2017-01-03 02:16:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2594a50f10724d63aa4eef72a7d9a1bc', 'admin', '2017-05-10 21:08:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25f1449059144f5ca3156cd7e4c71dba', 'admin', '2017-04-26 18:37:28', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('26314225240e456ebff34adfb614d891', 'admin', '2017-04-26 18:17:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('265abca225cf4056aeb4c09255d831e4', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('265ecb9e46df4cd0ba0853a4c5207796', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('26a0c6eb301d451dbc45a98b9e238dc1', 'admin', '2017-06-03 01:15:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26bac7aecd894322b753e4fa60f0cf9c', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('26c12ae6de2c41a285e58cc908cf5b94', 'admin', '2017-01-08 01:29:54', '修改菜单合作共赢');
INSERT INTO `sys_fhlog` VALUES ('27156fb710f24bb09a29b5709eca6427', 'admin', '2017-05-29 13:10:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2749820cd0f742db967e6032628ea7d6', 'admin', '2017-01-09 02:48:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('275a8448046e449fb03bca5d453adda8', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('278a5da7a8c742a9aa66db5eb31829c1', 'admin', '2017-05-14 17:25:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('27a0fe98230348f6840eac25b80f66c6', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('284aa49b390541df85bf67bea0a4955d', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('28754fdaa4e846b1bd74f2f6e858489e', 'admin', '2017-05-11 09:35:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28858786b66e48abb0a31e6a7b17e81a', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('28e064b578484584a07b05019605391f', 'admin', '2017-04-10 12:42:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28e2f26305874e72b8475bbcabf8d153', 'admin', '2017-01-07 22:45:33', '退出');
INSERT INTO `sys_fhlog` VALUES ('28f9808690584d50bf42544a365bc51b', 'admin', '2017-06-03 10:14:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28fc4300981f4086bbcde3ba52e1f6ef', 'fhadmin', '2017-04-28 16:34:39', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('2915436e15b34bd68726d966c142bb0f', 'admin', '2017-04-10 13:54:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('29561eed878346dfab513e7724674ada', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2956a48fc4ac47b5b95630582bd1826d', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('298623f78ab747aeaef1b51535413e5d', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('29dda78fbcb84bcb9f3ce947e0448846', 'admin', '2016-12-28 02:57:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a82faf520f247c1945f2b622cb1f1bd', 'admin', '2017-01-09 03:25:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2ad9f5fa3ee04c479612d7176fa285ea', 'admin', '2017-05-03 00:15:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2aeef789be10468cb311ad88e78ac555', 'admin', '2017-05-18 10:02:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2afaaa36e304417c989552c89c579e34', 'admin', '2017-04-23 18:02:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b24cb13ba024e2e9a8186c840588f1c', 'admin', '2017-04-10 10:54:56', '退出');
INSERT INTO `sys_fhlog` VALUES ('2b2604eff0204963accff08c642bd4fc', 'admin', '2017-05-12 23:30:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b9e47807e1b408d85de5fc44e65bd4f', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2ba42198164048bf85b2cbd8c84c9169', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2bb514c9819d4ba18520d075df3895c2', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2bde49357d694a00ada024e14199e4ed', 'admin', '2017-04-26 18:37:28', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2be24b2c7c944369afb88d5a4709a18e', 'admin', '2017-04-29 16:58:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c6599629146435c928fc585f4eab57f', 'admin', '2017-04-29 16:31:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c9d3d8e92c7408db27009cc2a408464', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2cafade114934ba3a8ac79d36639ec7e', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2cbc425329e3485dbee21deee41e1967', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2d325fd7b4bc43f19bf6051ddfc006b0', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2dc183855419458ca6e828349c6a46e8', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2df040d590834e71bf5cb06c6c740bf8', 'admin', '2017-05-14 13:32:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e09b2bc00e14f5289fdc3f49dcd7487', 'admin', '2017-01-09 03:22:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e33030e9ad74f8aa97306204982a229', 'admin', '2017-05-14 12:33:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e3a6e9b89e74f699f6735f1e8096a0c', 'admin', '2017-05-11 15:00:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e6ad7f2151b4a3d8ad80299fa7018cf', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2e755742dcfc46e98704508c4743ab0d', 'admin', '2017-05-01 22:40:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2eadc131fa6743279fd34c545ad09687', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2f3a0493e84c4311b5247144711073a0', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('2f7f3e8d2ac34e689a33defcd30106a7', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('305c549e7f37439abd087c295d3d5a1a', 'admin', '2017-05-10 22:58:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('30728ec16adf4d2599346b1a26e8f7ab', 'admin', '2017-05-11 13:55:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('309d8f6b528840fca50f57fc6ad393ec', 'admin', '2017-06-03 00:26:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('30e62a7474004c7ca22e8f74c0795980', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('312fc4d396eb47ae80b45d8376b5cba6', 'admin', '2017-04-26 18:15:30', '修改菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('31770607338b437bac51e4496095fdb1', 'admin', '2016-12-28 00:51:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31c926b312c04f8e95f0a5c4e30347c3', 'admin', '2017-05-02 10:24:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31c9dff6cd074bfc928d62cc3ce05bf4', 'admin', '2017-05-02 01:01:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31d112da9fdb4fb4bfd9652c50124eaa', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3285fdc9403145f3822ab542fdf778e9', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('32d939116e964015a574b8d073e74b7f', 'admin', '2017-05-29 13:42:46', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('32eec3b29a7d4aec97767815556cfffe', 'admin', '2017-04-26 18:39:21', '修改系统用户：3123');
INSERT INTO `sys_fhlog` VALUES ('32f5ae30148740da93eda2bf6b6dc1a3', 'admin', '2017-01-02 02:08:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('330a7af9fd43469dab33ffc355edfe11', 'admin', '2017-04-10 12:38:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('333f8906975c44679872e5bce5c58472', 'admin', '2017-05-11 13:21:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3351d065b84d48d887fb22e358ab77b9', 'admin', '2017-05-02 12:38:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('335487c3f0f046d5a5a5c2a6df61d168', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('337d6b7d1f724f4bbe1cd71d94f90f86', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('337f43ecf6a846328ea2dcaeaf03d91c', 'admin', '2017-04-26 18:38:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('33bdfafb19124a9ea1e0a453fc30aa2f', 'admin', '2017-05-10 21:32:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('33f98c4622354b1688ec89158a9e7794', 'admin', '2017-01-02 02:06:01', '修改菜单技术团队');
INSERT INTO `sys_fhlog` VALUES ('3428ee66b990425e80c24c600e1e553c', 'admin', '2017-05-11 09:44:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('345eafc0b60d476f988ae049c7dc9f72', 'admin', '2017-05-28 21:28:55', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('349d41e56f94416696c30fb4d4e811b9', 'admin', '2017-05-11 00:18:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('34e2500bfbbf4ea186a50ebf79f22d6e', 'admin', '2017-04-26 17:41:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('352a45d767c24c3aacd2032b123e0f14', 'admin', '2017-06-02 22:36:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3583e233ed5340d4a598beb7bbacac7c', 'admin', '2017-05-28 22:55:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('35a553cb192b4e489b271a1a083d3ebd', 'admin', '2017-05-11 09:54:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('35add6bd8bd44bb689c7bbc9df30a6eb', 'admin', '2017-04-10 10:54:49', '修改菜单一级菜单');
INSERT INTO `sys_fhlog` VALUES ('35bb9dc22e8b4e23b9cd444a67b77f82', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('360c893fef9f428397df1d071b700bab', 'admin', '2017-04-10 20:13:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3636b66122fd406e9c2c43d9c9bdf5e1', 'admin', '2017-05-14 20:07:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36918e438073470e984dd200da7840e7', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3716d04e2885440ba579901c30eaf68f', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('371a433e411344348868328ec0c319fa', 'admin', '2017-01-09 00:36:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3785aeba76494266b1d8469e353f71a7', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('37e88b35179f4d7cafb2508c57cbfcdb', 'admin', '2017-05-11 13:47:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37fac862dfe84a4281b34e52ffb38dc6', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('386cf2b46eb344a7bb7950c3d220e6c1', 'admin', '2017-04-25 12:23:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38abf86f9db24c4cacf57d28ee6bf870', 'admin', '2017-05-11 09:56:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38e501a68f194d2bace428d57a36db8a', 'admin', '2017-05-18 17:19:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38fee103ab6949f28da62fccfe414425', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('392647fe2d8e4398adb8e8a85643c96c', 'admin', '2017-01-08 03:05:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('395bd6d28d224d9c8f9a1937378bdeab', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3968184f0d3742b781771536999a6a35', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3969e2d862e34d2aa4e0b3eec0b6c38a', 'admin', '2017-05-29 13:42:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('39745c2d98b64ae9ae0f42806ec755f6', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3979c11e249d48748e7a564ca54526f7', 'admin', '2017-04-10 13:58:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('39ba43e1b2f441b6b26bc598bd8dfa59', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('39cd4fa965314866a300f54f3cf8d59a', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('39eec72779664822a83de740e4dadb41', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('39f02a25ae3a4035917fa16012897b78', 'admin', '2017-05-28 12:41:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3a0e43b7db8244a2957bd1c38af77dc4', 'admin', '2017-05-14 20:46:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3b3b4e155f8044aa96ac52bffe4a5f9b', 'admin', '2017-05-18 10:01:04', '修改菜单表单构建器');
INSERT INTO `sys_fhlog` VALUES ('3b9784ae8d6d4dbeb94092fb40994119', 'admin', '2017-05-02 10:54:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ba3633094b6482ba1eb60adf1d80b6d', 'admin', '2017-05-09 17:26:56', '修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d');
INSERT INTO `sys_fhlog` VALUES ('3bbc5fc002dd4d7daaca951f3381aa72', 'admin', '2017-04-10 14:09:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c3f1f267dd14a408ad1062100a6e43a', 'admin', '2017-05-28 11:38:46', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('3c7b373862e34a169a118423699ec22c', '2013014092', '2017-05-29 14:18:34', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3c9617e7a6764a4fbc12499f2d18ded9', 'admin', '2016-12-27 03:12:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3cfcec20893a48c69844c5d93a93ddef', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3d4424f7f130472a9f3ba88550947673', 'admin', '2017-04-26 18:05:50', '修改角色:其他');
INSERT INTO `sys_fhlog` VALUES ('3d4ebb2d77d3416abe64d027a684c2b7', 'admin', '2017-01-09 02:33:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e48f92e71d84e6fa99ac91e41ec93e1', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3e5587e0b0924972a9f9e886f0b70bd4', 'admin', '2017-05-11 14:35:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e79c19f429747fc96087978d975a3a3', 'admin', '2017-04-10 14:01:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ea68a39aeb448c080c7f27c7eb98b37', 'admin', '2017-05-12 22:31:46', '修改角色:博士生');
INSERT INTO `sys_fhlog` VALUES ('3f2af9ae163749b9a8e0bd5451ac7b9a', 'admin', '2016-12-28 23:26:58', '修改菜单项目案例');
INSERT INTO `sys_fhlog` VALUES ('3f5fe1fa38f34aa19ccc8766e2022c52', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('3fb68c1963b945e8b7ed687c129d3c0e', 'admin', '2017-05-14 11:42:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ffb49655d3940ad95ed85204680650d', 'admin', '2017-05-11 13:36:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ffe2a6c81ff44c5a8dde0ece119515a', 'admin', '2017-05-02 23:11:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('404b23647c4544469cac6a862adba15d', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('4088ea5b754840a8bf40f1738e680934', 'admin', '2017-05-14 11:37:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('408a13009db74d9e8c238a840557b538', 'admin', '2017-01-09 02:20:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('40b3b7bf64884de39b0cf17a81752015', 'admin', '2017-05-02 01:35:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('40d55ee1ceaf47cc9ca7ac5edd7d02ec', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('410dcbc946744d408d31d7f5348b18fd', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('415188f0f0f3434f8de1f2da4ad727fa', 'admin', '2017-05-11 13:40:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('41a6a4c70dab4fb3bf3f1e25300df9ac', 'admin', '2017-01-09 01:33:23', '删除菜单ID4');
INSERT INTO `sys_fhlog` VALUES ('41c99101d5d94082b03701b9f5d4f07f', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('41d13b2563314deb9078d9c51d5fdf10', 'admin', '2017-05-28 23:15:12', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('41e661bdd3ee40c0bab086c7bf0281cb', 'admin', '2017-05-28 01:44:21', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('41fb830d985f43db9bdc9036e64b86c1', 'admin', '2017-04-10 01:35:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('420529c20aa9418ca8d34290965711e7', 'admin', '2016-12-27 03:23:44', '修改菜单系统管理');
INSERT INTO `sys_fhlog` VALUES ('421407e45d2048fba682ee5f84ea9f73', 'admin', '2017-05-28 02:01:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4255bb7a276241ccaf0765f1a64eedfa', 'admin', '2017-05-11 09:59:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('429986af5f8e4a32a20b38eee45da11b', 'admin', '2017-05-11 09:42:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('42ad86b37e814b189999a298a85fe8aa', 'admin', '2017-05-03 00:39:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('42df4f6cba5b4bbba7b192e45122506c', 'admin', '2017-05-28 21:34:57', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('43016b7a10cb493c9eb053b5234d8033', 'admin', '2017-05-08 09:31:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('438db849362b45cfa01462f69368521d', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('43b3275301024d6487927be11c303e9e', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('4415b995eb2a4ce7aa4e66eb7e9ad4ed', 'admin', '2017-06-03 00:28:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('442fc80b98434003a855b3fa3028f741', 'admin', '2016-12-28 02:56:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('446865dbfa1f44d3acf16c811c596702', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('4481aee75ced47888218a6b5359b6f47', 'admin', '2017-05-18 10:03:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('44e58c9c471242aea7640f5e30b6b296', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('44f43109dacc4bfe804030c2e56162f6', 'admin', '2017-05-11 00:26:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('44f8836c0ef04fc3a546897ce1f969c2', 'admin', '2017-01-07 02:39:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('454e686aa7f44a26a7d1aeeb23bfcd15', 'admin', '2017-05-28 01:21:43', '从EXCEL导入到数据库');
INSERT INTO `sys_fhlog` VALUES ('4552b3dfb79f4e2ebbfe51d41641e099', 'admin', '2017-04-24 13:11:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('457c562340404ca4b6cc4be59fc2dc8b', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('45897efe72d44ee2a3eca0e30b85813e', 'admin', '2017-05-28 01:21:19', '从EXCEL导入到数据库');
INSERT INTO `sys_fhlog` VALUES ('45d8d8d12bce4aa4a6e2816c884e3add', 'admin', '2016-12-27 03:26:37', '新增菜单网站管理');
INSERT INTO `sys_fhlog` VALUES ('465eb43496f8493197755a3e643b9504', 'admin', '2017-05-11 14:13:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4675ac0b87b146a088fdf1363c05c520', 'admin', '2017-05-10 21:14:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('46810c0186784b9d8c3792db7976f17a', 'admin', '2017-05-28 21:27:38', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('46dcc72c1e0a43e389f6f0f33c757d5f', 'admin', '2016-12-28 02:42:02', '新增菜单轮播图片');
INSERT INTO `sys_fhlog` VALUES ('46fd748f9913441e9ea0d1e2c45dbcae', 'admin', '2017-05-09 17:19:10', '修改系统用户：3123');
INSERT INTO `sys_fhlog` VALUES ('4724ce2aa56d46c78300f1170a759c74', 'admin', '2017-01-01 23:35:57', '新增菜单合作伙伴');
INSERT INTO `sys_fhlog` VALUES ('475d086cafe240cca23d5ec61bdf3e6e', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('47b802e432ef4be69cb4759795a1c249', 'admin', '2017-01-04 03:28:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('47bea36066fa4d69958b6e632708dc0c', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('480beb84acd042cc9f5cff4383496f5a', 'admin', '2017-05-28 12:35:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('481ab957f43e4b899925cfcd7ef456a0', 'admin', '2017-04-26 18:30:59', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('486bd84bfed547c8a39fc672d50fcf5c', 'admin', '2017-04-10 13:59:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('49099b28c37341ba9cc7f1ba94daf122', 'admin', '2017-04-10 10:44:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('49f15c262280440d9e922c6669ffdeae', 'admin', '2017-05-13 14:10:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('49f590b915ac4fb1a507487291acba4d', 'admin', '2017-05-29 13:22:08', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('4a314bf31a0f4fb2a5e7ce867716ce63', 'admin', '2016-12-27 16:33:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4b3e7e395c4f4ca0a198a1c444ddeaeb', 'admin', '2017-05-09 17:23:23', '修改系统用户：3123');
INSERT INTO `sys_fhlog` VALUES ('4b633a180565406e8ca941198b8a6bb0', 'admin', '2017-04-26 18:09:29', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('4b65cbf1dc4b4d66a9a4de371e22a927', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('4ba15dbb5a114ff2be91554736254400', 'admin', '2016-12-27 19:32:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4c242b6f148b4243a0792aa073651399', 'admin', '2017-05-11 12:47:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4c46bda146f8402c8ae33b0d95f9fbe3', 'admin', '2017-05-18 10:00:05', '修改菜单代码生成器');
INSERT INTO `sys_fhlog` VALUES ('4ca8b224cbac476cafe9ae4295e879e7', 'admin', '2017-05-11 13:20:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4d316903145440c880c772aed4998288', 'admin', '2017-05-03 01:03:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4d562b407a7f437bae931ea0646c117f', 'admin', '2017-05-02 11:21:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4d7cb35241d54b539b08cafe098ec707', 'admin', '2017-06-03 09:32:53', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('4d9cdaf8a3904d4ebff57cb80f40ff9f', 'admin', '2017-01-08 01:33:05', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('4dd5d9fdd85a44838490af495f71cc6a', 'admin', '2017-05-10 22:11:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4f00b459a61143d1a7417c81ef72a7a4', 'admin', '2017-01-09 01:54:08', '删除菜单ID65');
INSERT INTO `sys_fhlog` VALUES ('4f1e7e2a31e84095be5ee7c40b43eaf5', 'admin', '2017-05-08 10:54:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4f39c757c5d94c77b59bb409881b9c87', 'admin', '2017-05-08 18:46:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4f4abe671a9b4cea987ad2354fdbcc77', 'admin', '2017-06-03 09:05:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('507f057284ae4c03b56c183ef68b1b0a', 'admin', '2017-05-13 00:11:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50a16155ce23487b90f5cfd56e5e3c50', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('50ddef2fe246487286600e8b8e2030c4', 'admin', '2017-05-01 23:01:10', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('51a0ff3682f94dde89e6dc4e3b0710e4', 'admin', '2017-05-03 00:42:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('51b4aba8c4c841d1a7c5aef3127c5cf3', 'admin', '2017-05-08 20:03:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('51f669e76b1b4678a4d726dc6d3a19b0', 'admin', '2017-05-14 18:21:42', '修改菜单科研管理');
INSERT INTO `sys_fhlog` VALUES ('52d711590b84403fbd85e1ff8cc8f9e3', 'admin', '2017-05-13 18:52:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52ff125e0a914a69ac51342417d0f83a', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5302b31283a34a37a2aa9f9d9fc52a14', 'admin', '2017-05-28 01:10:24', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('537916cb35094591a51aa4aebb68edff', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5387c1e2bfd44780855281ee54d901c6', 'admin', '2017-06-03 01:20:45', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('53a08a34194848468f3866ea3e359f72', 'admin', '2017-04-26 18:31:15', '修改菜单系统管理');
INSERT INTO `sys_fhlog` VALUES ('53f955bb49f347ca960cd29bc6ad7202', 'admin', '2016-12-27 20:47:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5402261d8fd6465eb7e1c8c317f36ef2', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5437cece50b04f4aa36295546f8b2310', 'admin', '2017-05-28 21:23:24', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5457b9ad27c5410280473f845c821e7b', 'admin', '2017-01-09 01:50:24', '退出');
INSERT INTO `sys_fhlog` VALUES ('546d2241c1b849c4910febc03d6341f6', 'admin', '2017-05-28 20:51:30', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('549ce5f16a784a5092bdf1dc9d894029', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('54bc49667a8e4a039e8fdac403309928', 'admin', '2017-01-04 00:33:59', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('54c9ef5d3cf44f1d9548a2e1eb704065', 'admin', '2017-04-26 18:21:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5502e621e41948549c18468510694f88', 'admin', '2017-01-04 03:54:18', '新增菜单访客留言');
INSERT INTO `sys_fhlog` VALUES ('552a18dc0218445b9b6095aed39ec0c0', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('568efc06e2ef46cda93bf64d0fc14cbd', 'admin', '2017-05-09 17:29:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('569cdbedcb704e98b2845601b54d608e', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('56c8193ed2cc47b7ace1a1d611d7a266', 'admin', '2017-05-28 22:55:49', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('56cd57f2ae75474cbad06077d9c3a559', 'admin', '2017-05-29 13:22:08', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5707414baa344979867ce7f304ab0de5', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('57405b8fc3444fe4a5b3f195601ca17a', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5773df6a42d34655ab68a524a2fd71be', 'admin', '2017-05-02 02:09:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('57772efa1a3341ae82de8a0ba53c9266', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('583cf7a5394647a094c697570f39a32d', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('587b14ec1a6f4dfaaf1d3521d0cc4fb3', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('58971c42a4ff4ae5a2a921d7621c5635', 'admin', '2017-06-03 10:28:48', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('58a7842215444304bcec2c26bc959b9b', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('58d1d10f90bd4ecb82720c6e2f93b9a4', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('58dd2c76c84b4aeeba7b53eac6263382', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('59082671738f413fa4b33aa1dd2e27fe', 'admin', '2017-05-02 02:14:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5917a610bc4b4deca7b484a3f82ac3cc', 'admin', '2016-12-28 04:30:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59223148ee394fea96705db5186ddd6b', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('593d1d7c42d3401a87baaa6fb5eb0cb8', 'admin', '2017-04-24 19:25:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59814b8769724e3d8f029e5e0abf9869', 'admin', '2017-05-12 22:31:31', '新增角色:博士生组');
INSERT INTO `sys_fhlog` VALUES ('5990a7a329c54cef881f727108a1a443', 'admin', '2017-01-09 01:09:19', '删除菜单ID48');
INSERT INTO `sys_fhlog` VALUES ('59b09fc245db449aa65425b0cf98b232', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('59b3ea59ea4c43258c27602c33ca1daf', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('59b7624a0a604aa3a143370a1e2eaac9', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('59e000a43bb04da4b369f82d0ebcb182', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5a7776b31d0c4595bf59ac1744da0a99', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5a8d667da5ac4e9f90f480318a06eec5', 'admin', '2017-05-16 15:49:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5aa68c8d84974854a5af82dc0989a6d5', 'admin', '2017-05-28 20:27:00', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5b41b1c8bd0647e6b77c2a15b32ed008', 'admin', '2017-05-13 20:49:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5b64033415784cb7a1bf249c801e3b56', 'admin', '2016-12-27 20:47:48', '退出');
INSERT INTO `sys_fhlog` VALUES ('5b7bdd36faf34b50a08d317108d1ac84', 'admin', '2017-05-28 20:34:36', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5b8f2aa41290486a89797ab46ffac4e8', 'admin', '2017-01-08 02:34:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5baadd07158f43c18b2158884aefd45e', 'admin', '2017-01-09 02:33:58', '删除菜单ID82');
INSERT INTO `sys_fhlog` VALUES ('5bbf5d856b7f4d64b2ec3a8dc9df9501', 'admin', '2017-05-08 12:30:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5bcb089ea05b4a87b4bb3141e8b6b051', 'admin', '2017-04-10 12:42:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5bfef2021dc24aeeac19e560765436d3', 'admin', '2017-05-02 08:52:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5c49a0a4a5d3482f8bb42bdfb36673da', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5cb25fc9801745f48d8d036e3bbeb552', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5cc4aa6d44874c58b98557b9dfd2462a', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5d110cffb8294c0ab574bd11d5da3b33', 'admin', '2017-05-08 19:25:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5d6c01c829694f549e44235c6aee4825', 'admin', '2017-04-26 18:37:28', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5d6fd90333364c9ab969be35554118a8', 'admin', '2017-05-28 20:27:24', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5d739e86912f4336a76518ea01f15f16', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('5db0e35e64654c2891ec86514e2fbe7f', 'san', '2016-06-06 02:28:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5dcdcd82a2f64d6e8f12bc0d5a1d90aa', 'admin', '2017-05-29 13:22:10', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5dd42dc1a8094878b225ea3d432a7c6d', 'admin', '2017-05-02 08:35:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5deb61cd2bee401da57b5463d41cdd0f', 'admin', '2017-05-28 21:00:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5e12b41bab3f4f99a97836c3add4b756', 'admin', '2017-05-28 23:14:23', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('5ea1e79c910242d785812841eeb2e4c7', 'admin', '2017-05-29 03:06:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6003932b85364fcca399853e292e812e', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('602209c9c5b14424a2490b988fec0f94', 'admin', '2017-05-11 13:17:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('604e6775a35540fd951b59a008e35a5f', 'admin', '2017-01-07 22:31:06', '新增菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('607e8cd15e934f44933ea0887ad91a87', 'admin', '2017-01-07 02:31:02', '新增菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('6093f13b1ba341379b927267de76bc30', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('60b0eb71b1a944ab8ae178876e53e48d', 'admin', '2016-12-27 16:33:22', '退出');
INSERT INTO `sys_fhlog` VALUES ('60d45a657a2a407c9c2f86f64ea7ed2e', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('616f981f67714e958ace605581c3b44e', 'fhadmin', '2017-04-26 17:41:20', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('618001f2b8f9450b8b387f833c8c756a', 'admin', '2017-05-29 13:22:11', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('61d15708ff2647ff9470aeb22828c7e6', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('61f9c0a0a4454f75ab6f907d4bd5d695', 'admin', '2017-05-02 23:10:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('625c209d78904f5a8f1c086e3bbe44d9', 'admin', '2017-05-16 16:00:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('62c2fafdc5734403a7b5a8949c847935', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('62c8eaaa8f5c4f698bc5f31779629e04', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('62e2121685424cd8afac6aae9bd5fd32', 'admin', '2017-05-18 10:02:00', '新增按钮权限pd{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, RB_ID=8b4fccc0c5f34d4e8acf8d094b55b068, ROLE_ID=48083a5075f1452b83ecad34b48eb7db, guid=1495072920723}');
INSERT INTO `sys_fhlog` VALUES ('635c337b2b5b49e4a917a33018dc5541', 'admin', '2017-05-14 20:36:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('63f02aa1aabc466bb47b5bc1ac453334', 'admin', '2017-06-03 08:55:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('63f27dce7d674a1b8fcc923bc3df4647', 'admin', '2017-05-14 20:23:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64546d3f2eb34cdf98db92ccf23e892c', 'admin', '2017-05-01 20:35:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64e9b77ad6d54a0ba3a4d43640d8dff6', 'w1', '2017-05-09 17:28:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64fc2786dccf47d5b4cece834fa70210', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('64fe4c7a4e524b5ea6ccaea6a21c9691', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6557231040ca41b3b4dc9d51993278d8', 'admin', '2017-04-26 18:15:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('664ac397e98d4387b673611bb7e54b79', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('66d461bc6be04bd4b76047880127c2f0', 'admin', '2017-05-12 22:31:52', '修改角色:教师');
INSERT INTO `sys_fhlog` VALUES ('66e68b8eb3724567949dc736caf7d243', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('672d2b5be9d34663bb6000958141cb14', 'admin', '2017-04-26 18:08:24', '新增系统用户：3123');
INSERT INTO `sys_fhlog` VALUES ('675bf4c199f343bbb32b12e2b705662a', 'admin', '2017-05-28 20:34:10', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('67ac708803b7478c805058cc3fbca893', 'admin', '2017-05-29 13:33:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('67eb153064034757bd4fc0957d3a7c6b', 'admin', '2016-12-27 03:37:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('681ad1e887894852b6042e21d7b595dc', 'admin', '2017-04-18 20:22:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('693cf577595f48c08e3766e9a320a272', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('694b0960d10c4c329d8a5ee79ba319e1', 'admin', '2017-05-14 17:34:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('694d79773e484f3bafab47341b04ec96', 'admin', '2017-05-11 13:19:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('69e73d736cdd42949e0aec0e2c746a54', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6a06caa4891b4b68a16fbf43a2009b1d', 'admin', '2017-01-09 01:15:03', '删除菜单ID12');
INSERT INTO `sys_fhlog` VALUES ('6a0c578646364ba58cb745813858e32f', 'admin', '2017-05-11 00:33:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6a145d69e5014a43bc8b402bc783345d', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6a1b98dee04d464a9c79ce4204b2e4f3', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6a2a3d76736f4cca80f12058d295952b', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6a3b196738b740c49230458d6b90ac91', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6a5f6082eebb4b549f2998d2fe01606e', 'admin', '2017-04-29 17:02:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6a870bdd9dab4e49adef806495dfc2a2', 'admin', '2017-01-09 00:55:06', '删除菜单ID16');
INSERT INTO `sys_fhlog` VALUES ('6a892fe7ac204680bd92bea314885726', 'admin', '2017-04-25 19:44:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6aa72b6564f9415d89a7de0b591fdad0', 'admin', '2017-01-08 01:29:44', '修改菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('6ae7d60e96724d27b82ac17c5a97db2b', 'admin', '2017-05-13 18:00:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b0c01d946c14421b96831a4dd0d0fb0', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6b2a43648f644b7dad77fd4d4802b3f6', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6b3bf451fd7f49d1ad1d8bfb262cadb3', 'admin', '2017-05-14 17:36:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b561573dc9648e39bff152c5274b53f', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6c241bdb58b3463d8576b652b3310e7a', 'admin', '2016-12-28 00:48:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c2d2e8d748e4a74afd0f8363cfed758', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6c3d2f034f73483e8a398bbdcf1e20dd', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6c454771966249f2b319f6192b19d7fb', 'admin', '2017-05-14 20:11:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6d37e135990443faa88f615d71e2d541', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6d5b3a041a134a43ad5bf139b0a9b94d', 'admin', '2017-05-28 01:30:25', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('6ded318b51634e0ebf7c36a88bab818c', 'admin', '2017-05-13 20:01:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6e4b5c6ffc084d07b73fcc8752d31c83', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6e54146f47fa4ec2a3ed028911e0471a', 'admin', '2017-01-04 03:02:41', '新增菜单联系我们');
INSERT INTO `sys_fhlog` VALUES ('6e798c1a2a67425f91c8c2897f6eb3cb', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6e7c12cf7cee4d81acbb00ee6f955e5e', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6f22a7713cd94b748aead0f14ad46596', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('6f3c246530764c48bdadec5c2094758d', 'admin', '2017-05-14 11:38:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6f708606b41d41ebba7de4dac4c5b56a', 'admin', '2017-05-13 15:10:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6f8b540f0674419c8b72c19a785a79cc', 'admin', '2017-04-10 14:06:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6f9754e4c53e40bab24a0462576d25f3', 'admin', '2017-04-28 19:03:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6fa39bda6c224a198fb4d50f68dbe012', 'luna', '2017-05-09 17:25:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6fb632934b3a4592833696868c97c112', 'admin', '2017-05-26 13:16:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('70048db00a3a4e5e9484f77bd21579af', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('700e8b83822b43cd927378ac6fc377ad', 'admin', '2016-12-27 23:43:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7054e8d1cb4a436b88267f9b2e36af73', 'supergirl', '2017-05-09 17:27:30', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('7064ad8476f8470d967803a808c4085e', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7082d9936ee34f68b8997456eb29b076', 'admin', '2017-01-09 01:03:56', '删除菜单ID14');
INSERT INTO `sys_fhlog` VALUES ('70e07270599b4933b9917fff8304be56', 'admin', '2016-12-27 20:46:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('70f4e109df6e4b4d809baad702f2f66c', 'admin', '2017-01-08 01:23:50', '修改菜单资源管理');
INSERT INTO `sys_fhlog` VALUES ('710c465d76394e4095ec09222fa87544', 'admin', '2016-11-20 16:40:20', '退出');
INSERT INTO `sys_fhlog` VALUES ('711610735dbe4eccaf21869981615e84', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('711aa5b3006e4b7db29d764bd3faa9b1', 'admin', '2017-04-23 17:53:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7177d3ce270546cfae7d5e8f7c08ddf8', 'admin', '2017-05-16 15:56:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('719a8428d871464094e6a337a8955bf6', 'admin', '2017-01-09 01:28:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('71d89c4b283a4ad19f8204200d44f8fd', 'admin', '2017-05-28 01:20:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('71e7bbacad514317b487ff43a2df468b', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('71ee2b1f59114afd8888f471ec8254c7', 'admin', '2017-05-28 02:06:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('730d23c3e8354f22983f3c5edc5a2c5d', 'admin', '2017-05-28 20:42:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('731dc15fcebf4eff80fb4e3c41e84465', 'admin', '2016-12-27 16:08:41', '退出');
INSERT INTO `sys_fhlog` VALUES ('7377a288f58a4953accb1f409b959d0b', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('73c092ab90cd461a8c012c0b605658b7', 'admin', '2017-05-13 17:59:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73cf4c869973499d80533b9e8c4f8bd8', 'admin', '2017-05-11 00:39:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7424e78a0a1043c58748be6794fa1a10', 'admin', '2017-01-09 01:49:19', '批量删除user');
INSERT INTO `sys_fhlog` VALUES ('742a793bf4ff4328a229bfee4d662118', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('74a2c02b295a40b7bf13c83e2b87f9aa', 'admin', '2017-04-10 18:13:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74b5073076b045198c3e9b875424019b', 'admin', '2017-05-28 21:23:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74b748dde3dd47b78c99972912c0c1e4', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('74c34eb919ad408f99402258f2eb47e3', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('74d30b5d69a74d1ebf4396a8e33e6211', 'admin', '2016-12-27 20:26:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74e6c90402bb4aad960cb8feaec2f379', 'admin', '2017-06-03 09:38:55', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('74f053a130be40fabb95bb8c3bc31cc3', 'admin', '2017-05-10 17:05:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('754121cabc78450e8b959e63602c948c', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('754a24a8edee460e951d7d46caf2b083', 'admin', '2017-04-23 00:15:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7593b606f901494fa66bac87e2a45e85', 'admin', '2017-05-13 21:38:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75a453f39fe4435e802c83688ef784fe', 'admin', '2017-04-10 12:41:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75a67405726640efabf7428f921a5ee2', 'admin', '2017-05-28 11:31:42', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('7608359593644d4eab954fb415f0001c', 'admin', '2017-01-03 02:16:06', '退出');
INSERT INTO `sys_fhlog` VALUES ('76461b2f05bb4777a13365ddb89a51b4', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('766f4da0705447f18a4e115ce78221e5', 'admin', '2017-01-09 01:54:17', '删除菜单ID50');
INSERT INTO `sys_fhlog` VALUES ('7674ec259d5b4602b3b4131940a51692', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('76bbe4faa5d84b8e88f091900081982b', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('76c7e5424f2c43e5835466bf7a03f1c7', 'admin', '2017-05-13 21:58:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('76cc22b97fff49579b7b980a655f270b', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7739a8178ab74c64807f2f5cad3f3155', 'admin', '2017-05-28 12:47:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('773c121457a84b4ca92152dfad4cf992', 'admin', '2017-05-28 20:26:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('774e2cdf8cd24b14b6ed330ce4fed89b', 'admin', '2017-05-11 13:30:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('775286ad376b4529bb648fb7aa369102', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('783d316735c84c2b89b8f865f11deafc', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7879eac65ae347f68b6db97bd76b4751', 'admin', '2017-05-28 12:36:51', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('7891390150bf44c7a5929a8e4858fe13', 'admin', '2017-04-26 18:05:36', '新增角色:外聘专家');
INSERT INTO `sys_fhlog` VALUES ('78ca8d913fe445929c7f89cf58e86346', 'admin', '2017-05-08 18:51:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('797ab1f3122b4a31ad20ce476cbd19eb', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7999f52d7ddf4df9b8b572510c98ea58', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7a4b7b6d688e453e93bf778a95141c94', 'admin', '2017-05-02 11:40:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7a5171bd0e974c9bbb9efcb6ebf6cb61', 'admin', '2017-05-11 13:31:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7affbdd676ad4acbacd6e01e5b705f8a', 'admin', '2017-05-29 13:10:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b580ab0ce5649a49f1df7cf8e734edd', 'admin', '2017-01-01 23:37:28', '退出');
INSERT INTO `sys_fhlog` VALUES ('7b61eada969f4d5ab09ee29cdc91aa3d', 'admin', '2017-05-28 20:51:37', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('7bd757fade8849228750b5aabb3acc5b', 'admin', '2017-05-11 12:35:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7c0428796c6845b1b016d5418981ad06', 'admin', '2017-05-08 10:08:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7c182b28864644e2b0041384f348a4c8', 'admin', '2017-05-13 15:54:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7cae7bc3d41d4da78be0160fef5c2939', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7cd625116577414f9dff55acf842249c', 'admin', '2017-05-18 10:02:04', '删除按钮权限{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, ROLE_ID=48083a5075f1452b83ecad34b48eb7db, guid=1495072924910}');
INSERT INTO `sys_fhlog` VALUES ('7d02876be31d45fabaf84e767c6c299f', 'admin', '2017-01-07 22:31:39', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('7dd7a595c62c497eb327519c8f275c8c', 'admin', '2017-06-03 10:02:07', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('7df434f0c7f6464faa6cf0f216369f55', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('7e0a85c2fdda4b06b17a5eb70a31288d', 'admin', '2017-01-07 03:55:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7e14d377d8724db6a422193e89a3fab1', 'admin', '2017-05-28 21:28:15', '修改系统用户：我是起名废');
INSERT INTO `sys_fhlog` VALUES ('7eea549b38cf4c309df92b02644620d5', 'admin', '2017-01-03 02:15:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7eede9338a0a424cbbee371e6a8220a2', 'admin', '2017-05-26 10:34:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f39d9ffbd994013a09e0b9324253d72', 'admin', '2017-01-08 00:45:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f6a0853ade94ca6aaef98a41854c660', 'admin', '2017-05-29 12:59:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7fdc0f4fa103453a931500a5b20871ca', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8013ba635e2a4f738fb3c674a3dadee5', 'admin', '2017-04-22 18:20:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('80ed551e38074f91ba08227ae434754c', 'admin', '2017-04-29 16:44:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('811be81e52374bd9ba3e5e67d2c3600f', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('81364c3071fd469298fb6017280109e8', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('817a6fe0fb8f4920a0a975bc88256f81', 'admin', '2017-05-14 18:13:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('819bf22ef6c941218e48cbcf2a7d4536', 'admin', '2017-05-03 00:41:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81ab3796f110443f8e4413c2c40f3eab', 'admin', '2017-05-08 18:30:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81b81e40f1964f7a9868e1a4bf16a265', 'admin', '2017-05-26 13:39:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81c5879913d94b02b4f25782ef6bda7c', 'admin', '2017-05-28 20:51:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81d84ba6280d49679ff5b6183bbcd9a2', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('81f5d8c3e4864ff0aea0f342772a3efd', 'admin', '2017-06-03 08:58:00', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('81ff531a7b9a436984846171663f9601', 'admin', '2017-06-03 01:16:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('820e2ad340614836b53d9d997802ad35', 'admin', '2017-05-18 17:19:40', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('82611978adc94075ac1ff9109e960ddc', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8276acfe9d54485cb0acad636004f132', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('82ac8a5078894812a6580f006c597324', 'admin', '2017-05-26 10:40:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('82c33bdd5d7a4d87a1ca407c8b98d23d', 'admin', '2017-06-03 01:07:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8306a64b99f0481d872ef82cf9b6ab50', 'admin', '2017-05-13 00:14:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8354135380274e2a8096425c9fd36c10', 'admin', '2017-04-26 18:15:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('837694086e6c42c5b75a66d7052bcd3f', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('83a97aae67304748a87b2b7b3105458a', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('83e543a2bb174a779c251ea5f04498e1', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('83e5919c1b73412ca1c387ca6d2eaa37', 'admin', '2017-05-11 13:45:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('845836e6530546fe8f192125d5b16a1c', 'admin', '2017-05-09 17:08:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8478eede84104072acf49642c2c45ab6', 'admin', '2017-05-02 01:16:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('84d61ffd7f6d428bb50285ee3cc03290', 'admin', '2017-05-11 14:14:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('84da7785744640d382f6520cd1e82d8e', 'admin', '2017-04-26 17:51:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('852a8f7b0e3247a3ba8d41edb72a9d28', 'admin', '2016-06-06 02:28:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('854f6158c8b14398a0c268e575f2adae', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('856de46a4a4d40858391e354ffca3964', 'admin', '2017-04-24 19:17:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('858740cf4cc844de965e9ac684a5bcd2', 'admin', '2017-05-10 21:30:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('859cc98d09294e8f9287b7b97835cafa', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('85b928d141884200abb65c942b4176ec', 'admin', '2017-05-28 01:48:01', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('85df5fcd9a734c269aec422ee6f5cbd3', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('85e549ae3087492b874462d48014eead', 'admin', '2017-05-18 10:02:04', '新增按钮权限pd{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, RB_ID=1f1d521502b64504a284ebde93b670c4, ROLE_ID=48083a5075f1452b83ecad34b48eb7db, guid=1495072924335}');
INSERT INTO `sys_fhlog` VALUES ('8622ed8143194fcbbc2cbb83ca5a98db', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8640d37523a44cd594a17631e1b50b2d', 'admin', '2017-01-01 23:05:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('867ce75310964a1aabe01db8407719a1', 'admin', '2017-05-28 20:51:33', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('86816b05c8e64576b183add53e675ee4', 'admin', '2017-05-29 13:22:11', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('869d77d20e2b496baf9d3e36c5017c36', 'admin', '2017-01-09 03:29:50', '修改系统用户：w1');
INSERT INTO `sys_fhlog` VALUES ('876a060fb88e4c57896088b0489c3421', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('877ff4689c454e879eba42b8e5b4263e', 'admin', '2017-05-18 10:02:01', '删除按钮权限{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, ROLE_ID=549bc2c6662b4e199ba8c53e10061a08, guid=1495072921800}');
INSERT INTO `sys_fhlog` VALUES ('8789ecaaca5c48a3a775787386ddde56', 'admin', '2017-05-08 12:34:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('87993ea5c41649b7a9f60229e8276414', 'admin', '2017-01-03 23:31:35', '退出');
INSERT INTO `sys_fhlog` VALUES ('87c7822e2b1c46a098e35ef93e7decb9', 'admin', '2017-04-29 16:39:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('87c7f863a2e64c98a314d7f3c584f3ac', 'admin', '2016-06-06 02:27:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('87da3f15f1cb488dbf1498a90b6596fd', 'admin', '2017-01-09 01:18:15', '删除菜单ID11');
INSERT INTO `sys_fhlog` VALUES ('8839e9ba11c44bfd97f39a01d1adb77a', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('88947c67c1fc44bbbfa95c5f72baff42', 'admin', '2017-04-21 13:30:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('88d81c08e7ba454aa08eb2efab91f1a1', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('88d9fbc6999b409db5bdf64f98208334', 'admin', '2017-05-28 12:36:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('89319dc08ed94d4ba62fd6508e5d7bc4', 'admin', '2017-01-08 01:23:16', '修改菜单首页管理');
INSERT INTO `sys_fhlog` VALUES ('89337cff28a34496a6364291f21670d1', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('89394418324a41ec9a2d1b6576c30216', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8942b558feda443bbad22b92f3bd5326', 'admin', '2017-01-09 13:30:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('894c8d95d23743d8a538f5455fc3d38a', 'admin', '2017-05-18 10:02:03', '删除按钮权限{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, ROLE_ID=48083a5075f1452b83ecad34b48eb7db, guid=1495072922988}');
INSERT INTO `sys_fhlog` VALUES ('89bd585f881341a89b6bf82d3845358e', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8a0157a831a146918c32d3bda2684189', 'admin', '2017-01-04 04:11:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8a62d85e0d284924896118067d1c5aef', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8a8fa963c00942bb9805ffed8683b264', 'admin', '2017-01-09 11:25:26', '修改菜单系统工具');
INSERT INTO `sys_fhlog` VALUES ('8b3ee53a7a104edfaacc53a5d7e5fb70', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8b6d824c34224463b1896158d3109a4a', 'admin', '2017-01-07 00:57:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b7d07b0a03348bc90e1d842700dc603', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8b870bf7bad04f3584690e1d5b9fcb2a', 'admin', '2017-01-09 00:15:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b9d39b62b2b4ede96db66d61fe92e31', 'admin', '2017-05-29 11:04:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8bda127fd35141018c86904bf88dfdaa', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8c0ed498c9534d8ca15142e308e2212b', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8c45c1b3424f45fabdeaad37d846a17e', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8c57175fe02246ad9e501812f9826de3', 'admin', '2017-06-03 08:48:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c706bcff8a848a3893cfac22b5ac4c3', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8c7a20f520314e359b1f7f1a5323b1dc', 'admin', '2017-05-13 15:30:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ca44a1ef4064411980efcad1a962a4f', 'admin', '2017-06-03 10:24:06', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('8d473db65f5b4675be3a213d0a65520c', 'admin', '2017-05-10 19:08:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d56d6cec75b44beb61adde8ad7b6333', 'admin', '2017-01-03 02:11:39', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('8d9e6293ac9d4d669f104937f3590c56', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8dbac21ef39841d7a7cbf242b6a2b3f8', 'admin', '2017-05-08 11:21:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8de433d848f04757bbec11219da824bf', 'admin', '2017-05-08 19:45:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e3bef607b944897a66c94e4692a7dd5', 'admin', '2017-04-26 17:59:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e9755f8245e4893a4c64795d3cd821a', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8eb44eedd7204b57972fa9e17e5f8f40', 'admin', '2017-01-02 02:06:40', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('8ee5c9d1031d4d22ac5cb5c7b703c538', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8f0d52d9c70b4f618ea58214e37c8dd6', 'admin', '2017-05-02 22:23:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8f1bd5d5250b4025828972956be823e3', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8f9f1eda192343b6802422c339804705', 'admin', '2017-06-03 00:37:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8fa9a76ad326471fbf8ea010752ea2ab', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('8fb1f4dda683475ca7356734b73ba84f', 'admin', '2017-01-09 11:25:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8fc14005dd514f61b5f53d8127f44981', 'admin', '2017-05-11 13:34:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8fd2643126eb44879353162473c22c35', 'admin', '2017-05-28 21:33:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ff71b5c036b4d70a04217a86459b05b', 'admin', '2017-05-12 22:31:25', '修改角色:教师组');
INSERT INTO `sys_fhlog` VALUES ('9008ef7578e6419ba2e305edd6c6dbac', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('90491fadd40540bc9909312ec5384273', 'admin', '2017-06-03 01:22:25', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('904a6a81ca924fffb88524365ef1b5b0', 'admin', '2017-05-29 13:22:12', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('90ba073d7500454784e41c99a1a88c50', 'admin', '2017-05-02 08:22:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('90bf580c87a5445a8b7d8759a5ab5a2f', 'admin', '2017-05-11 13:15:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('91128a0617fe4baf9bcd46ecbde89e4f', 'admin', '2017-05-29 12:57:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('915f0846ab3245e59460e2fe17e00ffd', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('918143284eb946ae9c9bc05541ed397c', 'admin', '2017-05-16 14:59:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('918b1a5dd9b5448cb4e82ffcb0328d62', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('91988bd2e9bd41e990192f35cdd38910', 'admin', '2017-01-07 03:08:40', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('91c4581b205f48009326da503213af46', 'admin', '2017-05-11 09:46:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('929406f933284d338bd16909b4a259c6', 'admin', '2017-05-02 01:11:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('92b416dbaf4d4c0ea4ad2c7a8a65e93c', 'admin', '2017-05-08 11:01:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9307f626eef54468b9f4e4ec451ad0b3', 'admin', '2017-05-29 13:22:09', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('936bc38df4084f8694b6179cdecb9395', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9384671257394baa94ff980b995f714f', 'admin', '2017-04-29 15:51:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('93c5c14f693a45bebdb4f87c54f99a09', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('93edd24f412144e9b58446ca7a8996ea', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('94ff3a3a14be4805a8050e6832922b60', 'admin', '2016-12-27 23:02:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95464452f84944669ae156ff6c49a0fe', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('954a67920a5c48308228055f5d5af0c5', 'admin', '2017-05-14 21:00:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95538142e8034f95b635eb9b5f4b490e', 'admin', '2017-06-03 10:01:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95550b4df5f54a1b99ba6cb74de6a99f', 'admin', '2017-05-11 12:45:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95665d22a71340e1954a3064566bf25d', 'admin', '2017-04-26 18:08:45', '删除角色ID为:1b67fc82ce89457a8347ae53e43a347e');
INSERT INTO `sys_fhlog` VALUES ('95bf924b619f4fa5a31cf291948d97f1', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('95cf8e291f324c2da5f36df18283907e', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('95d4efd3a7ff43538bbae5ea3fecabd5', 'admin', '2017-05-28 02:01:33', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('9610e3e72dae4ca293f3b92d3525dba4', 'admin', '2016-12-28 01:30:32', '退出');
INSERT INTO `sys_fhlog` VALUES ('96259b98fcde45bea4f3a1ee56ec287c', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('963ffa82fd8a44e78308b113aedc4bee', 'admin', '2017-05-11 00:36:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('965a10375c6d448a85cff07c1aa9b2e8', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9682092d04bf49dab94ce383ef7730d1', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('96921a5cc65d4ae3a84781a7bd48831b', 'admin', '2017-05-02 01:37:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('969ddbc2b7db42fe8ac1299e37fc32e8', 'admin', '2017-01-09 01:49:53', '删除菜单ID60');
INSERT INTO `sys_fhlog` VALUES ('96f6c4ac8da04d67a3aa767477ea16b8', 'admin', '2017-04-26 18:30:59', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9706a0d9a4af43e88b1a772c626f44bb', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('974f3cfffa5c4ee1bd1fde1dc20f0a67', 'admin', '2017-05-28 12:47:29', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('9788b54c223749efb270e906df276f41', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('979b85f91cdc4494ab16e166677ed2b6', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('97a66037b5544be69a152d20f831da21', 'admin', '2017-05-02 22:15:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('97bbc4a39a894afd80c760a2e3da2c54', 'admin', '2016-12-27 03:47:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('97c9d7a94ab04600b5a1f21d78568f04', 'admin', '2017-01-09 02:33:55', '删除菜单ID20');
INSERT INTO `sys_fhlog` VALUES ('980417f04dfd43849dbfa72d0f7c17e3', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('981c8f8ed1824fdea11a18511a209737', 'admin', '2017-04-10 14:17:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('984d8a62bb6e4d73859e2f95161cdbae', 'admin', '2017-04-26 18:08:43', '删除角色ID为:115b386ff04f4352b060dffcd2b5d1da');
INSERT INTO `sys_fhlog` VALUES ('988a8373e9ee43d39d036eae33672b19', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9932978a91384a7aa725e3840927a40f', 'admin', '2016-12-27 23:26:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('994bbf32b55f4c72ac8e37a4e506d7b2', 'admin', '2017-04-29 15:59:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9969b69bcc3b48c0bf91c6120de777de', 'admin', '2017-05-29 13:22:06', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('9982325e01654938823ba85e74faf721', 'admin', '2017-05-01 22:37:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99862981ca5e4ce7a120c830dae8a2b9', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('99999b428dec479ba77e4655dd489378', 'admin', '2017-05-28 20:38:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99c1f4f6af614a8096a43d17bc192bb7', 'admin', '2017-05-08 19:59:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a1268790ae94c9aaf49d991451d258f', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9a5adf544a5a401ba9f03d53ac192fee', 'admin', '2017-05-01 22:18:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a9888a0e9244a86ab28a31d8cf8b536', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9aa2181680bc41e3b4a22a70d2314688', 'admin', '2017-01-09 11:25:17', '修改菜单系统管理');
INSERT INTO `sys_fhlog` VALUES ('9b17ef5efc144a82b6d45105d77b28a2', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9b2303d510ab4ce3ba7ec0c6f8791ec7', 'admin', '2017-05-01 23:57:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9b389ec4a5d047f583b9657520b9e2e5', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9b81e70af5a849ffb6514abd19cda5fb', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9b86239f81184f23869fa975e4b059b4', 'admin', '2017-05-01 21:48:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9be3c5eb0b364ca1b485eafbd48f663c', 'admin', '2017-01-09 11:25:41', '修改菜单数据库管理');
INSERT INTO `sys_fhlog` VALUES ('9be5c95ebe764028be4f439fe2196062', 'admin', '2016-12-28 02:51:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9c08dfced4224183b66469c6b9500e2f', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9c916984525947e8b3eb38fa205e6369', 'admin', '2016-12-27 03:23:54', '修改菜单系统工具');
INSERT INTO `sys_fhlog` VALUES ('9c9784ae45644c83a001c35067e48f05', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9ca0996ec51d4993832d288d36cb3f1a', 'admin', '2017-01-09 02:34:18', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('9cf4805fecbd4648916557c3964d11cd', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9d7fde474e6f4ed0aab91f6c5777145f', 'admin', '2017-05-12 22:38:51', '新增系统用户：我是起名废');
INSERT INTO `sys_fhlog` VALUES ('9de53bb0282340d68ecb8c9b17216c6c', 'admin', '2017-05-02 01:32:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9dfa747aa05f46988b78ab0dcc4a18ae', 'admin', '2017-04-26 18:30:59', '修改菜单数据字典');
INSERT INTO `sys_fhlog` VALUES ('9e074d66f8224f358a6b1ca0448a3e87', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9e20068f3b2945e7a48042f42760dec6', 'admin', '2017-05-02 02:24:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9e3d33450f7d4162a9d826d6d7376de0', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9ea4df1e8ee84e6084ea44d53e67b377', 'admin', '2017-05-11 13:24:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9ea68aa9990f42ebb18a8a7e3c8a198b', 'admin', '2017-05-08 19:47:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9ef094e5f6024ce2b201bf1923a23448', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('9ef75c575b33442694e917fe262bbe9e', 'admin', '2017-05-11 00:45:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9f1d315d4ba64fe6a2dea0bf6a8fc59e', 'admin', '2017-06-03 08:53:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9f25f2c0ee1944d1a77adcb53f82f056', 'admin', '2017-05-18 10:00:51', '修改菜单系统工具');
INSERT INTO `sys_fhlog` VALUES ('9fcd264e8ee04189a4c9132f9ae6bf30', 'admin', '2017-05-08 12:19:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9fde8f9778124c419efb98013e753f60', 'admin', '2017-05-18 17:21:05', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('9fe40c84c0c94c70be545db98bdb9287', 'admin', '2016-12-27 18:04:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9ffdf672135e42a0b158dd5267fd3c3a', 'admin', '2017-05-01 23:01:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a00d738c98794233afed540f297b9153', 'admin', '2017-05-28 01:17:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a059663a134844d4923e88b5df9b3014', 'admin', '2017-06-03 00:39:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a066b75057404811ab237f29da034966', 'admin', '2017-01-07 03:08:10', '新增菜单合作共赢');
INSERT INTO `sys_fhlog` VALUES ('a075c6fb4ed0461b8abf5d34944513c1', 'admin', '2017-05-11 13:53:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a076eb3bb8a04da7a6ecdb391aaaf943', 'admin', '2017-05-02 11:10:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a102f24d300346739ca64e3fcb0bc0dc', 'admin', '2017-05-28 00:50:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a104319605064424bad95f1a006fdb91', 'admin', '2017-01-08 01:29:38', '修改菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('a1660ccdebf0433b957f23d20a114862', 'admin', '2017-05-02 10:06:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a18cf3915cf448e99be6476f6bffcd3a', 'admin', '2017-06-03 09:01:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1e0cd1424a0483abd951b5b7c19b5ef', 'admin', '2017-04-26 18:10:39', '修改菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('a1f8bea0453e4ebe9b739a4dbe9aa800', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a224711f83044dad93abee38c2bd8985', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a26062ebb36e4b47ba997a735e74004a', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a3a3cabc33a44d82be5cb95a60d7170e', 'admin', '2017-05-01 23:22:27', '修改菜单科研经费拨款状况');
INSERT INTO `sys_fhlog` VALUES ('a3d64ee131ea40b4a4a12ce39c415e6f', 'admin', '2017-05-16 16:00:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a402974aa99f4cbbaf8caf2257308d07', 'admin', '2017-05-11 00:29:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a4937522aeb8411ab31d8ba3eaabf466', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a49ffa3d9692467a9d29dc64e223d6ea', 'admin', '2017-06-04 14:43:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a51aacfa058a4c51a6e2e5ffcf83a965', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a541a811ac514b3baa2b8a70d4d456fd', 'admin', '2017-05-14 21:01:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a618c4b2f3674ea7bb24babfc92fb8d0', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a63e1727a14143f2ab3a1dc0626a0fae', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a640869e12524fd7858d4c0f9c8717b2', 'admin', '2017-05-29 03:07:32', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('a6956de49b2c4dd59b0c213fa9d11255', 'admin', '2017-05-28 20:41:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a6a921b9ddc440f49ead1a0edc167800', 'admin', '2016-12-27 03:24:35', '修改菜单数据库管理');
INSERT INTO `sys_fhlog` VALUES ('a6a9a97311774791ac22b5c75a5f45aa', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a6cf07b781be47bdbea3cbdc8f4dca22', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a6ed6d9355704eb18c65e42129d181ef', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a73fe9610d5a4c1ca1899feb9ae817b2', 'admin', '2017-05-11 12:39:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a75cdd350a894cd0931a931dbb0ccc96', 'admin', '2017-04-26 18:10:23', '修改菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('a75e1e7260a548778a1f31f326a96d28', 'admin', '2017-01-04 03:07:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a790f64cc09c4617b2897dfb89aaa2f0', 'admin', '2017-06-02 20:37:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a8427121c7c4415fb48e92113eed7d6e', 'admin', '2017-05-13 19:58:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a8e2eda691024a6095370ef80f584c1a', 'admin', '2017-05-28 21:01:08', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('a8efc8a7c5e84f3580fe666831b5e5d1', 'admin', '2017-01-07 22:45:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a8f4a997cf514ebbac94473114888f77', 'admin', '2017-01-09 11:25:21', '修改菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('a9361b5e52794949af045101533f4627', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('a96d3e81179b4567b971abecd0f90d89', 'admin', '2017-04-28 16:34:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9aa173818a84da99bb8a9e32a31f915', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('aa227a5d1f7649cea5b4125fa3505c9d', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('aa4be03e7151471fb55de53a47da055a', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('aa7cf106774a433f87d77a79654f39c6', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('aa888a0cdf814b5ba1810277c639a7a0', 'admin', '2017-05-28 00:05:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aab031042d3b4abc94a044cba2b7337e', 'admin', '2017-04-28 19:07:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aaced13db59e4ee389cc3c6b62e546cf', 'admin', '2017-04-28 18:56:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ab6e4730c72d4251960d4817a653e892', 'admin', '2017-04-26 18:05:57', '新增角色:浏览人员');
INSERT INTO `sys_fhlog` VALUES ('aba8e91bb476446786feea9e4b5c4c92', 'admin', '2017-05-08 11:12:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('abc8efac9754408da8f21323639c8442', 'admin', '2017-05-11 00:36:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ac5469d81d574ad9ad68a89ad5cc11c0', 'admin', '2017-04-26 18:37:28', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('aca87f2b94f4466f8477ca7bd5902b13', 'admin', '2017-01-03 02:31:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('acd51da6d37743e68413dc23285cb3b3', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ad0d21da82d24469be5f80b795505238', 'admin', '2017-05-28 00:51:18', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('ad26d35483fe4338ac0b18dc0e11669e', 'admin', '2017-06-03 00:31:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ad55b7f3af8f42308a4bb80f5046e395', 'admin', '2017-05-13 19:09:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ad584b1a1a97412f84c540bcac12c3fe', 'admin', '2016-12-27 03:24:07', '修改菜单微信管理');
INSERT INTO `sys_fhlog` VALUES ('ad79def93f02476b87f34256d10b84ce', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ad97ebd99a7a4e3e98371325d6e01e6f', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('adf50b00c57348aa89e69860aa29fb9d', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ae0aa463a7a54f83967f2db67093dfc9', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ae564fdeff224ba29436e5f08e85f3a3', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ae76c3ddd3944c368bf2c65c43171923', 'admin', '2017-05-08 09:38:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aec8f869d9534637a15372367c7cb459', 'admin', '2017-05-29 13:22:04', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('aedf97aad5624c428ac054a0f25f0b8b', 'admin', '2017-01-02 02:42:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aeeb8d0fe36e4bc797c9c764b4e99035', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('af4aee65e0f14c869db350c4bd4c1bf7', 'admin', '2016-06-06 00:15:44', '退出');
INSERT INTO `sys_fhlog` VALUES ('af70858c222b48b7b7f76e9503921c8e', 'admin', '2017-01-04 01:43:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('af72f5da099945f69a6366d58e72bf1f', 'admin', '2017-04-10 18:41:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('afabfc0f355443dcabbfbd25ebdc0a72', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('afad7b2387ec43368a3d7b4dfb7f1f93', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('afb288dbb2a043e3bdd58423c85a4085', 'admin', '2017-05-02 00:48:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b008798a88014cc88f62b168146eed9e', 'admin', '2017-05-13 17:41:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b01ec72ba1f745f7863416a3e2cbaab7', 'admin', '2017-05-13 22:16:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b0e1812264174941923bb28a616bbccf', 'admin', '2017-05-02 11:18:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b0ee01f2afa144a0a8a09045a69eb5d1', 'admin', '2017-05-02 09:05:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b0f552eb08e14ba5a3d8ada095dab06a', 'w1', '2017-05-09 17:29:18', '退出');
INSERT INTO `sys_fhlog` VALUES ('b148e79af5bc4ac99c1fac74a7dc26d6', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b16a44c5afce4cde9cd59a1d344dddc3', 'admin', '2017-05-28 00:06:01', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b1718eef0b474b0daa3fec9bb2ed5580', 'admin', '2017-05-29 23:32:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b1a7681941cd4a8181ba039f5829c834', 'admin', '2017-01-09 11:23:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b1d36f51fbe74a07986931d89d6070b0', 'admin', '2017-06-03 09:05:22', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b1e4808d732143fbbb7cbc40101262d4', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b2c7f2065fb0478592ab4ce2c0e473f8', 'admin', '2017-06-03 08:56:43', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b347c1d0ea894b30b48e2cd4a0623ec4', 'admin', '2017-05-18 10:01:19', '修改菜单系统工具');
INSERT INTO `sys_fhlog` VALUES ('b35b7f48a7e540978bd4bab4a4f15a68', 'admin', '2017-06-03 00:45:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b3728a60336d49d0a5331316940a722a', 'admin', '2017-05-02 01:05:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b3a35f2153f644408c3e652f3340c507', 'admin', '2017-05-10 21:42:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b41f08ef455a4426aa0f0a10bd479efc', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b4790459d9e346d2847d595a2c6a5995', 'admin', '2017-05-28 20:38:42', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b480dc52f3b7462fb0113aea1f3cfff6', 'admin', '2017-05-08 11:29:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4aec1c4009f4426a6e150877b07e0e3', 'admin', '2017-05-29 12:27:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4deb5ecc43f4703bc56c3d2880d842c', 'admin', '2017-05-28 01:50:00', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b4e05bcd180c494f8d11a88c97e0d14a', 'admin', '2017-05-12 22:30:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b5028878edfe47318c8190bd6977ee81', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b511a4ec5d7b47f08e16f67635148921', 'admin', '2017-01-09 01:55:03', '退出');
INSERT INTO `sys_fhlog` VALUES ('b57419b8c4504a4890716a5059a8e960', 'admin', '2017-05-02 10:09:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b576cc584e4a413d952e12571a729907', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b5823e9c7103427f8585d57401121edf', 'admin', '2017-05-29 13:22:10', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b5a3b4d419994391a35cf81952758a0b', 'admin', '2017-01-09 01:05:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b5dc9916404b40158bb9229b86030663', 'admin', '2017-05-28 23:15:01', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b5fa2db8745640d4b94cf13b4de9ecc1', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b6179037132e442592bae792d8405cab', 'admin', '2017-05-13 21:48:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b63220551e024bd19779ae9c9a3360fe', 'admin', '2017-01-07 20:36:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b63aaa15ebec4593a6f3fb65d4b33846', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b645cc1e70c24dc0a620f829e41791ca', 'admin', '2017-05-02 09:03:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b648ec1d26004acfb4cab9f8b2021b97', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b66e2318668340168515995539c1f70c', 'admin', '2017-05-28 02:04:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b680cd08f7b14d5f8873aae74942ab35', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b68a316c6fd54868b7abf328fa9737e8', 'admin', '2016-12-27 03:24:30', '修改菜单OA办公');
INSERT INTO `sys_fhlog` VALUES ('b68cea09219a45d49322a396d2e92c41', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b6cda780b02b47eb85612c4afc2c8cae', 'admin', '2017-05-29 13:22:12', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b6d8fea9acfb45428276fe5de0a8c2c1', 'admin', '2016-12-27 03:25:54', '退出');
INSERT INTO `sys_fhlog` VALUES ('b70779c115774abba0a9ef79a86d2b14', 'admin', '2017-05-03 00:55:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b790b956a4814415b7b1d38e685dd9ac', 'admin', '2017-05-28 11:31:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b792b2922c16435e947ed8df944c3117', 'admin', '2017-06-03 10:27:16', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('b798898e06e24f548408072582183cad', 'admin', '2017-05-08 09:34:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7dd5e46e7f344d9944951fa4c952337', 'admin', '2017-05-13 22:21:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7ee42af3dac42f3b2783c24174f98fe', 'admin', '2017-05-09 17:33:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7ef5fecc06642c6ad1223bfb7209c19', 'admin', '2017-01-09 01:54:11', '删除菜单ID63');
INSERT INTO `sys_fhlog` VALUES ('b87028198da84861b8b3117535e65ef4', 'admin', '2016-12-27 16:05:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b901e2f2b30a44e7a33359fcf9ef6424', 'admin', '2017-01-08 01:32:24', '新增菜单新闻动态');
INSERT INTO `sys_fhlog` VALUES ('b934e1a59cac4a138071c62aa6f61b3d', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('b957e0189f8243e4bfb315e56dc4fc87', 'admin', '2017-01-07 03:20:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba1b39d438d04bf6992e49f0709f15a8', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('babe685a9c6947dbb0082908b922b710', 'admin', '2017-05-11 14:37:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bac946ca5ffe4ab6a28ece682e2926b7', 'admin', '2017-01-08 01:26:15', '新增菜单内容管理');
INSERT INTO `sys_fhlog` VALUES ('baf52035237a4a729324177375560e68', 'admin', '2017-01-06 00:24:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bb60b7a27d0247239cf78265025edfe9', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('bbf8431c4f3c4ba283d23a7a9a7109a3', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('bc39a917e7a34a33b9a9d7b25d994645', 'admin', '2017-01-02 02:08:18', '退出');
INSERT INTO `sys_fhlog` VALUES ('bca8aefb045d4af2b91949a6fe5f02e4', 'admin', '2017-01-09 01:03:01', '删除菜单ID21');
INSERT INTO `sys_fhlog` VALUES ('bd1dfae970904600bad5c51210615daf', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('bdb485ea8da145a4b7389f417b511e5a', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('bdc364a231b0485cb27d021c9aa5179f', 'admin', '2017-05-29 03:19:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('be3ae402ae7d4c8cab6209d216d32138', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('be9ab4c369814f1887ffaf8c599db18f', 'admin', '2017-05-28 11:27:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bf02d3b500c24b3cb4694172023f7d05', 'admin', '2016-12-27 03:28:15', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('bfbc1cfbbb6d4885b650ef04042e8e30', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('bff4521ac146418b9ee8fa27119db6bb', 'admin', '2017-04-23 00:15:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c020f675495540a2b948ab2476e3869e', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c0799b83ada9408991975a7197a4ea10', 'admin', '2017-06-03 00:45:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c1182f7ee9a54050971c2cc232714fd2', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c12fa7ac91f544549fbafd4c6eb33d5d', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c13e0f64ad8d42269fd7b9f48e8e6612', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c18e9bf00ac340e8bef78f878ac54119', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c20120deeccb4f33b56b721901b49a3e', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c24f88af7638476e84481e65ffb3b7d3', 'san', '2016-06-06 02:29:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c25a29d130a949ec9e137f545f5e3a85', 'admin', '2017-05-14 20:22:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c2696c6004a2423d90586875a538b771', 'admin', '2017-05-11 13:57:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c285a5a77e354f64a257eed10d018bcb', 'admin', '2017-01-01 23:36:16', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('c294a9837eeb402d9637e3c404fb6ced', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c29d9a2565c74093bac64da24ae91640', 'admin', '2017-01-09 01:49:13', '批量删除user');
INSERT INTO `sys_fhlog` VALUES ('c31aad6c0a1a44af9bb458ade0f543e1', 'admin', '2017-05-16 15:40:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c35556532b674f7689cab6f4c67bb77b', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c364f4374faa40f79e076cefaa9f28dd', 'admin', '2017-04-10 20:29:25', '新增按钮权限pd{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, RB_ID=403f503410f9494b9843ad185baa0fa3, ROLE_ID=3, guid=1491827365421}');
INSERT INTO `sys_fhlog` VALUES ('c366b29291de4bb393a113676bf23391', 'admin', '2017-05-09 17:32:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c393e752b61c4b3fa442500e0744f166', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c3ee3f6aeaee42819ee8097af1232f80', 'admin', '2017-05-28 20:45:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c3f93ae5f08741eebe7ef9d38f9f05cf', 'admin', '2017-06-03 10:14:48', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('c3ffb97f0183479889b9b056648be9a4', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c4219d066df84c56a30351a8de4deed7', 'admin', '2017-05-11 14:00:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c433caee871f4869899b4d32d1dbed02', 'admin', '2017-04-10 10:42:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c43e3135b42f4a89b2523f1706eb8926', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c4d36a0dc6bb4724b4537eadb3f26f60', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c4ff6918d78446afb48462f26b77425f', 'admin', '2017-05-28 11:38:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5023aaacd56403e95a68ef14e63ee7d', 'admin', '2017-05-14 18:00:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c51e919a3a5d4fadb451627c9669c357', 'admin', '2017-05-28 21:04:10', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('c5a460b72ce14a64ae0e3abbe740db18', 'admin', '2017-01-03 01:18:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5cacd99d76a4060ab262326a9f4dba1', 'admin', '2017-05-29 12:53:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5ffaeac60ab4ddd8cadb3f727c05aed', 'admin', '2017-01-09 22:11:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c6015ecfea284805a5495a1bfa848d4e', 'admin', '2017-06-03 01:20:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c605f3848b684792bd697039f90303b8', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c61157eabd7c4c1b86bc63890e5de7e1', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c62a4be4dc8d44319f4dab1a10ef7146', 'admin', '2017-04-23 00:02:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c70746c3c32041898af89aa97fc25963', 'admin', '2017-05-10 22:35:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c70d930e0f6441128961648e9aeb926b', 'admin', '2017-05-29 14:15:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c72344ed6d1d43b4becf0492f9b6b000', 'admin', '2017-06-03 00:22:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c773f4be8e384b498db5d3e9ba42b590', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c78d95ffc95542b69d7508716ae13093', 'admin', '2017-05-28 01:30:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c79ca85d44e94e769c80a47b5f59ef02', 'admin', '2017-04-29 16:41:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c7c1386bb8f94cb5a347b053f0eede06', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('c7fa15d78c2147b9833377b1bed25a47', 'admin', '2017-04-13 09:35:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c8256fdb401046b6965b1b09eb412afe', 'admin', '2017-01-04 00:33:40', '新增菜单公司理念');
INSERT INTO `sys_fhlog` VALUES ('c84aebd4d5ec4bed963d7bfec979458b', 'admin', '2017-05-24 20:59:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c889d512815444cc9460136b693a6c5e', 'admin', '2017-05-08 18:45:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c8a2f4f18c6c48599bb704e3de752857', 'admin', '2017-05-13 22:19:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c8d80be908c844a7a8ff9274aa761d80', 'admin', '2017-05-13 00:16:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c8eff5178740473dafa4fbc456d449e9', 'admin', '2017-05-11 12:52:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c978b86cd6ab4894a26b1d25492ed446', 'admin', '2017-04-29 19:09:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c9ecd890ec7d4b7a80493930d3f96ae4', 'admin', '2017-06-03 08:57:33', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('ca9c90cd53df4694a8abd9384c5c7de0', 'admin', '2017-04-26 18:37:28', '修改菜单数据库管理');
INSERT INTO `sys_fhlog` VALUES ('cb23b13493c44126a4e0a0b92b71be65', 'admin', '2017-05-13 14:33:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cb33175634e441bda58453ff0e8603de', 'admin', '2016-12-27 23:29:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cb7fc789989b45c4b988c70f27df004e', 'admin', '2017-06-03 09:28:50', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('cba3b0385260459eb73825836a860e51', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cbcce2a7c29b47e6b1f05133f0ba6ba2', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cbffd93bd4484ad29adc4a8e5ee644e7', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cc16eff035a043f8b22a212d6d3ec3d1', 'admin', '2017-05-28 20:33:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc1ca5db4de1439a8386afe1d88f5892', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cc43f1d063dd4b6e97a8013ad5bab32e', 'admin', '2017-06-03 09:16:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc5f2b7032c5407bb830173a5831b463', 'admin', '2017-05-01 23:46:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc633415bd074f9d946c13036e753bcc', 'admin', '2017-04-25 19:46:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cca14f82bdd3458aabcad6f25af27316', 'admin', '2016-12-28 23:32:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ccc8f5896d054a91929178ad17f556b5', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ccced9d30b924a4cb5cf338d69b084d0', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cd743deaa75b45b396579ceae466b368', 'admin', '2017-01-04 01:13:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cdd2fcb56b544f12a7ef5e1941240c21', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cdde96309dbb4882a28f58be9722018d', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ce1dad60668d456d962ed735fecbe835', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ce2bb8852bf743c3bfb4e67c434277f1', 'admin', '2017-04-26 17:51:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce582c550fbc4a1b8f3c59be7e531017', 'admin', '2017-05-29 13:02:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce65c5aecc2b4bf0a5b585c0d0542851', 'admin', '2017-05-13 21:54:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce8dbb014a4547b6bc63300159efe072', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ce9abb9485ed485fa66104d450a5d723', 'admin', '2017-04-29 16:22:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce9dbe434aa240699e8ee21df642042e', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cefd77c145f7473590d0847620b65784', 'admin', '2016-12-28 01:15:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cf0c73eb1af4474e9085d8f3aa028f60', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('cfbe1e5a8ca64d3b8e38efaa51e1648f', 'admin', '2017-05-08 19:42:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d03e28f467e3490b9413fed58a28973c', 'admin', '2017-05-02 11:26:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d05191d851154a9ea2ce76fe1d4aa563', 'admin', '2017-05-12 22:36:47', '新增系统用户：宝宝心里苦');
INSERT INTO `sys_fhlog` VALUES ('d065fdfd857442c2a6c4f89187cfece6', 'admin', '2017-05-28 01:45:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d07f02851c4e496eb2d6d8201187fa95', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d0b5a299f5384535a73afdc3c4b88a41', 'admin', '2016-12-27 03:23:49', '修改菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('d0c6c658b6d84c96bd122c6cf68b959f', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d0cf995807d847c3826201cae7aaee6b', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d13af3ce2e244da18609036b66b1c8e5', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d173f7f9152b4a9c990be72f7525dbdf', 'admin', '2017-01-03 23:31:09', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('d17c2f9575f24f35a62d77bad3b8dc4b', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d1af8b358a214c7eaf6c9be05ed20a47', 'admin', '2017-05-01 20:22:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d1b82264b7b444caaee8336a967cb2ad', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d1c8873ab79545c085dc3ac73db34edf', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d239753508624b3ea60410ff18244467', 'admin', '2016-12-27 03:41:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d23dfd2be64d45bcb3580eff04cf9218', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d249b18ef93a4a069c7456f6dc4740b4', 'admin', '2017-05-11 13:59:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d251b8a74afb4860b936e57c9602dc6b', 'admin', '2017-05-28 12:41:34', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('d25c6ffd636b4580bd30de1f5b3e16c5', 'admin', '2017-05-13 17:41:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d27f45a7a2194cfdb92df9388de4b1c4', 'admin', '2017-01-01 23:37:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d2d2d6848d9e4c268afeb0decfec859d', 'admin', '2016-12-27 03:26:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d2d42aa4d0a743fbaeb80fb2ffaf649c', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d3b62da6c50147dd81c63bfb1e4d1778', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d3d243d92e0e4bd4b4355b6de8b8b041', 'admin', '2017-05-11 10:24:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d3eba1f34a8745e5ba88f3a12b0dc302', 'admin', '2017-05-13 22:12:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d432ebe0cfd3458495e4b8b0ea00a02d', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d46b40f762fb4e60acd1fa11b9dd201b', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d4dc353026c24636afbb40cae0b754fd', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d4ed116b543a4ac49f1123e73cb2a1aa', 'admin', '2017-01-09 02:49:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d557d2636ba14db98f36b81b5be6791a', 'admin', '2017-04-23 18:03:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d5625d25356b4e758d9f8a086215b349', 'admin', '2017-06-03 01:19:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d5698f4e80154e50819227a47a783bff', 'admin', '2017-05-29 13:42:55', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('d58474bef17640a4b5363fb0d7c83d46', 'admin', '2017-06-03 10:24:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d58bec3aece44f929ae4203578d65d9b', 'admin', '2016-12-28 20:18:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d5d214461bf14042a4fb3148edf8727f', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d5d24682c07c43159853106f8182506b', 'admin', '2017-05-18 15:47:31', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('d606877e92e240b2acd8ebe4d60bf60b', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d63566fd913142eaa63cd5f7304b22c4', 'admin', '2017-04-26 18:37:28', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d68fc2517ddb405a9456d3a876464b25', 'admin', '2017-05-28 01:20:37', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('d6ad1dcdf1474b73b451bcf7a93247ad', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d6b27ed5bf094133b331267e130b061b', 'admin', '2017-05-29 13:42:45', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('d6dc06dd21844f0d82964b52f427cc10', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d6e620e7ba134dfe9294f1883a98ec2a', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d7017006acfb47d2b7e01800706063a6', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d76d97c960c14a3e94facb414a17207e', 'admin', '2017-01-08 01:41:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d7936adcaed541b2afac86fb4defdd66', 'admin', '2017-05-01 22:48:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d82b9581561d468f93de57b6ccf5d9af', 'admin', '2016-12-27 03:24:42', '修改菜单一级菜单');
INSERT INTO `sys_fhlog` VALUES ('d84be81f5ad54df1aab8de47ddbe9d7b', 'admin', '2017-05-11 12:38:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d8d0a846ddb843fe836041476f8d23ef', 'admin', '2017-05-26 10:15:24', '修改系统用户：w1');
INSERT INTO `sys_fhlog` VALUES ('d8d363208ff445af993c5b5ad4207576', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d90637970cd74d9a84edc99a58dd3167', 'admin', '2017-05-09 17:28:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('d90d523bb0c74b98ba57b62877e40db4', 'admin', '2017-01-02 02:05:49', '新增菜单技术团队');
INSERT INTO `sys_fhlog` VALUES ('d9283454a67b4dba91cbd5abba5a2db8', 'admin', '2017-05-02 09:53:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d92c08ccea704e07ac6e5f272426fef9', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d9b495ef885a439890aa43fd3b9e7eac', 'admin', '2017-01-09 00:55:19', '删除菜单ID15');
INSERT INTO `sys_fhlog` VALUES ('d9d1a274de894093bef31a6b14033054', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('d9d8961e94454ed1b71147774c5b861f', 'admin', '2017-01-09 01:54:35', '新增菜单站内信');
INSERT INTO `sys_fhlog` VALUES ('d9dbeb4289a64162a88afc4159a17f64', 'admin', '2016-12-28 01:31:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d9e08bc00507498188d0b056ce34e90f', 'admin', '2017-05-11 09:46:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d9fbf9ef7cb041aea92d5acf2fffac1a', 'admin', '2017-05-13 22:07:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('da8bc5955834492bb5eaa83d94f1c52d', 'admin', '2017-05-08 19:37:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('db093096716744eda0c075315a89c4e4', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('db3c14318b0f4743914d31824292a165', 'admin', '2017-05-13 20:10:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('db3f1847c76f4336a50fce058bfe7898', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('db75a9f9bda0402b91ee72078818807d', 'admin', '2017-01-09 00:55:08', '删除菜单ID18');
INSERT INTO `sys_fhlog` VALUES ('dbe7df51a2a247cfada7ef8dedb675c2', 'admin', '2017-05-14 17:33:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dbf0c805611546f696498938ae6d0cb8', 'admin', '2017-01-09 00:55:11', '删除菜单ID17');
INSERT INTO `sys_fhlog` VALUES ('dc0c9694b38f43398c3e38e4db64c610', 'admin', '2017-04-10 12:41:47', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('dc26ccd0f5994622a16a2a8f12d62dd7', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('dc541563453942eebd74e9bf01e212b1', 'admin', '2017-05-14 17:51:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc7461ac836b47268da83d7f5e9e6248', 'admin', '2017-05-28 01:44:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc795119c4174f338877afa35e3dbc17', 'admin', '2017-01-08 01:31:16', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('dc8f0598fe5a46dba45c06b60f4e4c3f', 'admin', '2017-05-14 18:21:15', '修改菜单科研项目其他成果管理');
INSERT INTO `sys_fhlog` VALUES ('dd1dd47d985c4df5b6942a49f4d2b4dd', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('dd5e44ef3d4042f18595e241dbef1f66', 'admin', '2017-01-03 02:16:03', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('dd7b5c8d3a66471381b6a52bb48758de', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('dd817a2505b5420882a888e656026c7b', 'admin', '2017-05-11 10:22:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ddcca9ae73ad406fa803f8ac8017be00', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ddf567a1ff5641c4899f00092b71354f', 'admin', '2016-12-27 03:42:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de1e34d5551d459c97f130295e4137f0', 'admin', '2017-01-08 02:14:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de205ff49dbf42a393cfe660bf7f44bc', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('de2847e577b44867b55986c50f3c2441', 'admin', '2017-05-28 21:09:40', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('ded8cdb667244c7181b65f4f29c6d144', 'admin', '2017-05-09 17:18:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('df62f9521dd54b3ca867b9c2367dcbe4', 'admin', '2017-05-02 10:00:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('df996f2df7cc4c678cfe5e21ea0ab5b3', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e049d0794f32489c9ae34caea5edba28', 'admin', '2017-05-29 12:07:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e0514885e64e4c1594cf9d9b6a19f8b0', 'admin', '2017-05-28 11:27:14', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('e05f68055ccf4a6f99d467e683fdc6e1', 'admin', '2017-05-14 11:40:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e0756519b2bd4fa6841a1dbc95c83962', 'admin', '2017-04-26 18:10:01', '修改菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('e07dcb9d3cd94b3eb8ad15af2bf79270', 'admin', '2017-05-13 19:01:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e07f4f0af5d34dae9b244a489d5d58e0', 'admin', '2017-06-03 09:01:28', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('e08d028153e24deb9381d50efd6a3cfa', 'admin', '2017-05-08 18:49:02', '修改系统用户：3123');
INSERT INTO `sys_fhlog` VALUES ('e09602cecbd549809a88792f43b9dffd', 'admin', '2017-05-13 20:50:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e0a0991f9d4c4ceb85c4fc2d49a3bb55', 'admin', '2017-01-09 01:50:00', '删除菜单ID59');
INSERT INTO `sys_fhlog` VALUES ('e0f52411454f473bb08095e1a32568ee', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e101236307404c2094154ac606ecbfe4', 'admin', '2017-06-03 10:30:16', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('e10a59d01bfe4d6faafdf8b57aac8454', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e10c3a45dbbb4f3ab473549f0f797253', 'admin', '2017-05-28 21:09:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e119413bcc9a4c618cd333b8ee09a5e1', 'admin', '2017-05-02 02:19:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e13529c68a6349deb71addd7115b3d21', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e1a39f7156424625b1d820f56e15c55f', 'admin', '2017-05-18 15:41:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e1e3131859bb4de696b8ca9e635bb261', 'admin', '2017-05-01 20:41:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e20d105122444bf2b363d6f7fbf95645', 'admin', '2017-04-23 20:02:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e238d75c58954d5a89a9847827fa12f0', 'admin', '2017-05-28 01:46:02', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('e272626283b040f5a0dbd67fc77eca76', 'admin', '2017-05-13 22:02:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e27b389a36d34010b11ad1b500a37089', 'admin', '2017-05-11 00:04:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2ab9b85e3b84a32b6a5d3eee54345df', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e3004af0a7e547348a7aa5dfdc73d93b', 'admin', '2017-05-02 09:52:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e3e4b5c96a7d40a28ee0822c3f1b1c75', 'admin', '2017-05-08 10:16:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e434e0f51cbf4da99f959caa4876656d', 'admin', '2017-05-13 14:03:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e45c8f033dd547cc8d2c9b0b9c2bd2ab', 'admin', '2017-04-26 18:09:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e45ee200d7f444baa78a2b21e1028da3', 'admin', '2017-05-13 21:51:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e4b9ecf87d274d8aa94bf6fdbcbc6eb7', 'admin', '2017-04-29 16:36:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e4ea0bf49c4f4341967059739337d3cd', 'admin', '2017-05-08 10:09:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e5225d37e3834f7ba31940fb19ec2a02', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e529b9096cdc44ba825e701d4be708d5', 'admin', '2017-05-13 22:11:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e5c5f1b849784af3ba8452326bb6d10f', 'luna', '2017-05-09 17:27:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e5f9fd0079294f3289f1ca189d6528d8', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e640782b9f1d41aaa6b46868bbd40cf8', 'admin', '2017-01-07 00:25:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e65ddb67be2549d69bc1807613f7048d', 'admin', '2017-05-28 01:49:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e70c301bf8f14c1188cdd71a91d99cea', 'admin', '2017-05-08 18:54:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e71016cc3ab6430ca07ffea0b93e4ef5', 'admin', '2016-12-28 04:44:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e715fd3075fe4aeaae30fe77cb05c627', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e7b1cabb2fe74937855e650c5f376770', 'admin', '2017-05-28 02:04:12', '导出用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('e7bf3ac392954e509e4c0341f4869a95', 'san', '2016-06-06 02:29:19', '退出');
INSERT INTO `sys_fhlog` VALUES ('e7e4b317b8db426e9274573461d90e50', 'admin', '2017-05-13 17:47:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e7fb4a7b73fd4d6a870566334c4e0ab0', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e803885af8c14b0392683eee133b9fab', 'admin', '2017-05-28 21:01:04', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('e8133d34260040e2b147e5bc8bcfff3e', 'admin', '2017-06-03 01:12:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e82cbbb5d4074a9ba005ef1089233ff5', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e86037aa4be94b6cb11b82a264f725d7', 'admin', '2017-04-26 18:10:39', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e873ed7c2d1e43969069b75ad98bea83', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e88e16e762af419abd62d76a8f986664', 'admin', '2017-05-13 15:51:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e8ab8f9333594f9c952d37b7121f6d96', 'admin', '2017-05-10 21:37:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e90b061b695d46aba093b481f4a04104', 'admin', '2017-05-14 20:09:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e91c89a4cf59453aaa6b34ba62a8d781', 'admin', '2017-05-11 09:50:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e9449d69600a41b9a40f868182fe09a0', 'admin', '2017-04-10 12:38:30', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('e9a231e771e34a15b505b9d41165c991', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('e9cc6c9b278547679f6c163894552d1b', 'admin', '2016-12-27 20:47:32', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('e9f38697ed894c3c9a1cc0e942fb68f6', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ea28f65b8bde4185ba0d841ecafe2678', 'admin', '2017-05-28 01:10:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ea8bafc8b804439e91facd77945d5fc8', 'admin', '2017-04-23 00:14:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eac41de13abd46948544e78fd23e6220', 'admin', '2017-01-09 11:25:33', '修改菜单数据库管理');
INSERT INTO `sys_fhlog` VALUES ('eb22424fbe564264a2a4b5b6d4fe032f', 'admin', '2017-05-08 18:50:18', '修改系统用户：3123');
INSERT INTO `sys_fhlog` VALUES ('eb5c13064fa44def847c0bcb7e4a4511', 'admin', '2017-05-08 18:51:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ebb99734c6a74773a0c28c9b606f450f', 'admin', '2017-05-01 23:22:47', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ebcc4a3e6612415096125586972a2478', 'admin', '2017-05-12 22:31:40', '新增角色:硕士生');
INSERT INTO `sys_fhlog` VALUES ('ebdee64ac77b4ea899232cf458cba2ca', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ebfce4dc2e9d46409793b7fa33f8e584', 'admin', '2017-05-11 13:41:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ec084b43cf8e46dbbe10a948f1cee8b2', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ec230edb130e46ce882f3a06eb0c84f0', 'admin', '2017-06-03 00:34:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ecd0233bc20d46b3b57a73668cac61fb', 'admin', '2017-05-26 10:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ed1000a77fae4bccbd71d26731417bd5', 'admin', '2017-05-24 20:58:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('edfc8407dd194760a6bb9d42e64186e8', 'admin', '2017-05-01 23:01:09', '修改菜单科研课题汇总表');
INSERT INTO `sys_fhlog` VALUES ('eeb1f25f803e44ec9f72ae9c01856446', 'admin', '2017-01-02 02:06:07', '修改菜单合作伙伴');
INSERT INTO `sys_fhlog` VALUES ('eef905bcbc1b4dd49d412921e68329ab', 'admin', '2017-04-26 18:10:40', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ef8fadcbadcb42c1a831c2313552e561', 'admin', '2017-05-14 17:52:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ef95385a105a4dde94be3170e3ffa950', 'admin', '2017-05-01 23:01:09', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('efc83cc1f5b14296a329c2591288b707', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('efc83ec45108425b94537a374556467a', 'admin', '2016-12-28 23:34:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f017e9af9d1c418c9e2a34950edd0002', 'admin', '2017-05-13 00:20:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f0185993762049c087a23c8129aac2eb', 'admin', '2017-05-13 21:36:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f05b6a68cb534ba8a7b070f2669d9ea1', 'admin', '2017-04-29 16:20:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f05da1abf68c4d37b20a188bad8dd755', 'admin', '2017-05-10 21:52:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f070093b91bc412dbbb83102beaab1ac', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f09fd64437134ec7884b17f0244ce2c5', 'supergirl', '2017-05-09 17:27:41', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f0a4ad70630a47158065aa694e4f1e5c', 'admin', '2017-05-01 23:02:02', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f10163905d034f9d9e2efd57eeab43e0', 'admin', '2017-05-08 19:50:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f13d7b1b4e2440d08e8535c932b55270', 'admin', '2016-12-28 02:54:12', '新增菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('f14bdbd6607e439db25ae896b5193de9', 'admin', '2017-05-10 21:19:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f154ef30016e46d1b9fabfe129b28e4a', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f17580d6ace04666aeb101a45bbf2c58', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f17b29addbf2420ba3310e91b172b5c1', 'admin', '2017-06-03 10:28:34', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('f1a08a604ce3410fb5748f321e0a1e81', 'admin', '2017-06-03 00:20:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1b04820fec641f9923850de891fb6d9', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f1c6b820ce274798a009993c383e5a97', 'admin', '2017-05-18 09:55:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1d00e0a687c458093826b9e784ac2cf', 'admin', '2017-05-11 13:29:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1dc85dfb6ad46008ade37b4dd24d095', 'admin', '2017-05-08 19:30:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1e72a57419a4d50b895a0a61d697be6', 'admin', '2017-01-02 15:33:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1f6f52373184d85915179e45af81aba', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f21d8828c1604f749e60d2004d1ae969', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f2249531901c41a2bacb4912afe02b03', 'admin', '2017-06-03 01:06:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f2432cc452c24511a6c4101ccf015cc3', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f24399571cf74bfb8d8cc97ad7b85429', 'admin', '2017-01-09 01:21:11', '删除菜单ID10');
INSERT INTO `sys_fhlog` VALUES ('f246349e75f64e8fad6a7e805dc71018', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f2eb78a634984885bf204aa960e07867', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f307d070ca1542f194218242d2c87449', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f30884a1fc9f4c328481f7eae82d8aaa', 'admin', '2017-01-09 00:57:39', '退出');
INSERT INTO `sys_fhlog` VALUES ('f3b8019c3122480f9780ef27a10e26f6', 'admin', '2017-05-08 19:27:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f3c0afb35cfb4e7e9bc76ff668629360', 'admin', '2017-05-02 12:27:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f3df7ade2fdd42b0a9ec762bdbd0ee67', 'admin', '2016-12-27 03:27:45', '新增菜单网站信息');
INSERT INTO `sys_fhlog` VALUES ('f419aa24c3084f1b8f5a57557d3544bf', 'admin', '2017-01-09 01:49:51', '删除菜单ID64');
INSERT INTO `sys_fhlog` VALUES ('f44d78ef83c94888a4deb6506ed089df', 'admin', '2017-04-10 10:54:49', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f46151d53c784e9daa748c418b5744a5', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f47b2bf4b53247f0a1bee010ff100f38', 'supergirl', '2017-05-09 17:27:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f47d3d3734fd4cb1ae1a0b35d2ce2abd', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f49341856b64469ca38a3726c756ba36', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f4ae1207453345ef80c84730359c0163', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f4c8aae8d50448898a1c7a720a729488', 'admin', '2017-05-18 10:00:51', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f52fe727ac7748cdbea87bb275365139', 'admin', '2017-06-03 01:20:26', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('f552037954d944e787b32cfad72892f4', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f55657d92e274848b38ccf560866099b', 'admin', '2017-06-03 01:21:05', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('f586209708834707909733429f99554b', 'admin', '2017-04-26 18:09:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f587d194cfb245c1848bf0c0e2a47843', 'admin', '2016-12-28 01:30:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f5c5637153024e01bedaad2173332945', 'admin', '2017-05-18 10:01:19', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f5c95e02606c4cb792e37dd033459858', 'admin', '2017-04-26 18:10:01', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f5e0ad51c3014c2ca10915268a9f1c01', 'admin', '2017-05-01 23:02:02', '修改菜单科研管理');
INSERT INTO `sys_fhlog` VALUES ('f6a2ae1552af4e6c9ef38d99c3f4e839', 'admin', '2017-05-14 18:21:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f6bea79f9c6448f9bb50c3ad75de2d1a', 'admin', '2017-04-10 12:41:57', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('f6c74e12565b4e8e82ce7f610de3bb6b', 'admin', '2017-05-14 11:36:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f70ea55266e948bb88eef7e286ae8b62', 'admin', '2017-04-26 18:31:00', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f718c37b3a634101bb6dc1dfca06c096', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f7413f13fbdd47ae9e36ff8a12b26561', 'admin', '2017-05-14 17:54:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f7483a2918f14257bc1b10a1491289eb', 'admin', '2017-06-03 08:57:51', '导出个人用户信息到EXCEL');
INSERT INTO `sys_fhlog` VALUES ('f7531ecc2fc345849c7ceb78899646ab', 'admin', '2017-04-29 18:43:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f76971ab28fc4590871816c8b213c641', 'admin', '2017-05-11 12:55:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f784d207f69a460db7207e7d3672f43d', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f78d591f671c4d5bb0c287f1ace8e5bc', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f7bd6362d8be4a78a066ccf223de7ddd', 'admin', '2017-04-26 18:31:15', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f7eefe90fa6046b8918709403f8d0bb2', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f8019e9fa4794cb38eabfffe84be0a98', 'admin', '2017-04-10 20:29:30', '新增按钮权限pd{BUTTON_ID=4efa162fce8340f0bd2dcd3b11d327ec, RB_ID=cc9c0414c9204f28bb1ce8cf90d6151d, ROLE_ID=3, guid=1491827370094}');
INSERT INTO `sys_fhlog` VALUES ('f81346fb029d4102a257fbd71e38be2f', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f835213cf4d64f0f970dde825658f8fd', 'admin', '2016-12-28 23:51:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f86a917692374dd6876a3e7d8f8c45f8', 'admin', '2017-05-11 10:55:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f9124538591a40aaaf5bda674c3925cc', 'admin', '2017-05-02 11:34:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f940dc20da8a4d639bb3ce2c5b4f7373', 'admin', '2017-05-18 10:00:05', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f968296886e24e2dbc15552166f03268', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f993fd0e6b43406daff1542093820966', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('f9ca111ded304685876ca51600db42bf', 'admin', '2016-11-20 15:50:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fa19c5c006ea4969907a4329c6c248f7', 'admin', '2017-05-14 17:56:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fa21125033a24ee9945931d085fff0f1', 'admin', '2017-05-28 21:27:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('faa1e4862a8543cd80bf2774b268ceba', 'admin', '2017-01-04 00:37:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('faa445f532914a4a9094509ed78c7a82', 'admin', '2017-05-18 10:01:04', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('faa845f28864453887aa341d3926f864', 'admin', '2017-04-26 18:35:59', '新增系统用户：luna');
INSERT INTO `sys_fhlog` VALUES ('fab8315131aa434c913dd0880ea7b76f', 'admin', '2017-05-02 09:14:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fac8d0194a1648cdb2eddbce2f340891', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fb24c33ff61845ada0d0301a185af93d', 'admin', '2017-04-26 18:37:29', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fb6d7eda78b04a00b9fa79e235c5f771', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fb7119d2932c47cbb35afe121eafd7d7', 'admin', '2017-06-03 01:01:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fb9a4364a3e84bcd9dfbbeeb001c673a', 'admin', '2017-01-09 00:57:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fba4f0b2c8cb4641b425fd23adb34519', 'admin', '2017-06-03 01:08:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fbaff20f685c4a4ba69af588a955a31a', 'admin', '2017-05-01 23:22:27', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fbcf4eeeb30242e2abcbdcbc1959092d', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fbde4ffbd3304a29b87c189df2fc5363', 'w1', '2017-05-09 17:28:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc45c156aecc4c3e83e35d9acf19d1ab', 'admin', '2017-05-01 23:22:47', '修改菜单科研管理');
INSERT INTO `sys_fhlog` VALUES ('fc48aac5e4b84810b37d6ff749695276', 'admin', '2017-05-11 15:14:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc6f792b43274f73a2c064331737baa5', 'admin', '2017-01-04 03:03:19', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('fc75eaea988a4af9be4c9ca7f8d17bd3', 'admin', '2017-05-01 23:01:31', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fc852b9a2d4a4355875ebca7fdc4467a', 'admin', '2017-05-13 14:05:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc8bd44ba7074ff4ac2d780b218eef46', 'admin', '2017-05-08 18:48:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fcc986fd205f4fd899f8b9751bcc18ea', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fd13ea8bcb81434bb775a1d84ff133d0', 'admin', '2017-05-14 18:21:43', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fd23121dab1643798d3327c734f2a868', 'admin', '2017-01-03 02:15:58', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('fd35a243a356443ab39465bae77af223', 'admin', '2017-05-18 10:00:32', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('fd73cabe6df3489f9127d2c00c3c3b8d', 'admin', '2017-05-26 10:40:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fd9ec52021af4b4eb2c8d5da74202932', 'admin', '2016-12-28 03:37:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fe6715a6537d4506807c364bb8d4e969', 'admin', '2017-05-18 10:00:32', '修改菜单系统工具');
INSERT INTO `sys_fhlog` VALUES ('fe85d4f9b2734fd892b311047d6e07b1', 'admin', '2017-05-28 11:43:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fe9cddd26ee64a02a3a56a9130238534', 'admin', '2017-05-14 18:21:42', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('feb91b2d366348a591ed299eab7bb6c2', 'admin', '2017-04-26 18:10:23', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('feda41369c1a4ad49d4864515a307b0a', 'admin', '2017-05-09 17:13:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ff30ffaccaf34efa9c2aef0e98606010', 'admin', '2017-05-13 14:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ff508eb81cf74778b5807559f24258ba', 'admin', '2017-05-03 00:31:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ffbeb51b3a2a4989882b939e05644b94', 'admin', '2017-04-26 18:15:30', '修改菜单null');
INSERT INTO `sys_fhlog` VALUES ('ffe4c76bdff24ef782f5177dc9905d13', 'admin', '2017-01-09 01:55:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fff75d1d94b94cf6834ebb598f7c6a33', 'admin', '2017-04-26 18:10:40', '修改菜单null');

-- ----------------------------
-- Table structure for sys_loginimg
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginimg`;
CREATE TABLE `sys_loginimg` (
  `LOGINIMG_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_loginimg
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '日志管理', 'fhlog/list.do', '1', '6', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '资源管理', '#', '0', '5', 'menu-icon fa fa-credit-card green', '2', '1');
INSERT INTO `sys_menu` VALUES ('7', '图片管理', '#', '6', '1', 'menu-icon fa fa-folder-o pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '8', 'menu-icon fa fa-tachometer red', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '4', 'menu-icon fa fa-cog black', '2', '1');
INSERT INTO `sys_menu` VALUES ('22', '一级菜单', '#', '0', '10', 'menu-icon fa fa-fire orange', '1', '0');
INSERT INTO `sys_menu` VALUES ('23', '二级菜单', '#', '22', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('24', '三级菜单', '#', '23', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('30', '四级菜单', '#', '24', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('31', '五级菜单1', '#', '30', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('32', '五级菜单2', '#', '30', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('33', '六级菜单', '#', '31', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('34', '六级菜单2', 'login_default.do', '31', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('35', '四级菜单2', 'login_default.do', '24', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('36', '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('37', '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', '1');
INSERT INTO `sys_menu` VALUES ('38', '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('39', '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('41', '用户管理', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('42', '会员管理', 'happuser/listUsers.do', '40', '2', 'menu-icon fa fa-users orange', '1', '0');
INSERT INTO `sys_menu` VALUES ('43', '数据字典', 'dictionaries/listAllDict.do?DICTIONARIES_ID=0', '1', '4', 'menu-icon fa fa-book purple', '1', '0');
INSERT INTO `sys_menu` VALUES ('44', '代码生成器', '#', '9', '0', 'menu-icon fa fa-cogs brown', '1', '0');
INSERT INTO `sys_menu` VALUES ('45', '七级菜单1', '#', '33', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('46', '七级菜单2', '#', '33', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('47', '八级菜单', 'login_default.do', '45', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('51', '图片列表', 'pictures/list.do', '7', '1', 'menu-icon fa fa-folder-open-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('52', '图片爬虫', 'pictures/goImageCrawler.do', '7', '2', 'menu-icon fa fa-cloud-download green', '1', '1');
INSERT INTO `sys_menu` VALUES ('53', '表单构建器', 'tool/goFormbuilder.do', '9', '1', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('54', '数据库管理', '#', '0', '9', 'menu-icon fa fa-hdd-o blue', '2', '0');
INSERT INTO `sys_menu` VALUES ('55', '数据库备份', 'brdb/listAllTable.do', '54', '1', 'menu-icon fa fa-cloud-upload blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('56', '数据库还原', 'brdb/list.do', '54', '3', 'menu-icon fa fa-cloud-download blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('57', '备份定时器', 'timingbackup/list.do', '54', '2', 'menu-icon fa fa-tachometer blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('58', 'SQL编辑器', 'sqledit/view.do', '54', '4', 'menu-icon fa fa-pencil-square-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('61', '反向生成', 'recreateCode/list.do', '44', '2', 'menu-icon fa fa-cogs blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('62', '正向生成', 'createCode/list.do', '44', '1', 'menu-icon fa fa-cogs green', '1', '1');
INSERT INTO `sys_menu` VALUES ('67', '首页管理', '#', '0', '11', 'menu-icon fa fa-globe green', '2', '1');
INSERT INTO `sys_menu` VALUES ('68', '网站信息', 'information/list.do', '67', '1', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('69', '轮播图片', 'image/list.do?TYPE=1', '67', '2', 'menu-icon fa fa-camera-retro green', '1', '1');
INSERT INTO `sys_menu` VALUES ('70', '项目案例', 'image/list.do?TYPE=2', '67', '3', 'menu-icon fa fa-camera-retro blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('71', '合作伙伴', 'image/list.do?TYPE=3', '67', '4', 'menu-icon fa fa-camera-retro purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('72', '技术团队', 'image/list.do?TYPE=4', '67', '5', 'menu-icon fa fa-camera-retro orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('73', '业务说明', 'ourbusiness/list.do', '67', '1', 'menu-icon fa fa-book green', '1', '1');
INSERT INTO `sys_menu` VALUES ('74', '公司理念', 'corporatephilosophy/list.do', '67', '1', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('75', '联系我们', 'contactus/list.do', '80', '5', 'menu-icon fa fa-home green', '1', '1');
INSERT INTO `sys_menu` VALUES ('76', '访客留言', 'leavemsg/list.do', '80', '6', 'menu-icon fa fa-bookmark blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('77', '关于我们', 'aboutus/list.do', '80', '1', 'menu-icon fa fa-home purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('78', '合作共赢', 'cooperation/list.do', '80', '3', 'menu-icon fa fa-fire green', '1', '1');
INSERT INTO `sys_menu` VALUES ('79', '产品案例', 'image/list.do?TYPE=5', '80', '2', 'menu-icon fa fa-camera-retro orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('80', '内容管理', '#', '0', '12', 'menu-icon fa fa-book blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('81', '新闻动态', 'news/list.do', '80', '4', 'menu-icon fa fa-pencil-square-o red', '1', '1');
INSERT INTO `sys_menu` VALUES ('82', '科研管理', '#', '0', '13', 'menu-icon fa fa-laptop green', '2', '1');
INSERT INTO `sys_menu` VALUES ('83', '论文管理', 'lunwen/list.do', '82', '1', 'menu-icon fa fa-folder-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('84', '科研课题汇总表', 'keyanketihuizong/list.do', '82', '2', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('85', '专利成果表', 'zhuanichengguo/list.do', '82', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('86', '科研经费拨款状况', 'jingfeibokuanzhuang/list.do', '82', '4', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('87', '科研经费拨款清单', 'jingfei/list.do', '82', '5', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('88', '科研项目其他成果管理', 'chengguo/list.do', '82', '6', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('89', '国际期刊信息', 'qikanxinxi/list.do', '82', '7', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('90', '科研项目管理', 'xiangmu/list.do', '82', '8', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('91', '报表管理', '#', '0', '14', 'menu-icon fa fa-leaf black', '2', '1');
INSERT INTO `sys_menu` VALUES ('92', '会议论文', 'huiyilunwen/list.do', '91', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('93', '期刊论文', 'qikanlunwen/list.do', '91', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('94', '软件著作权', 'ruanjian/list.do', '91', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('95', '申请专利', 'zhuanli/list.do', '91', '4', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('96', '专著', 'zhuanzhu/list.do', '91', '5', 'menu-icon fa fa-leaf black', '1', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('06984051fe7b4f7fab1fdd126303b7a9', '浏览用户', '4925253123093012548273193817713673215385455397020478759670923756163762403406986325027897890329381341519046363840512', 'a90a117afe3842fd93eff16059a47fd7', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '158456324886140652683981226958', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('2', '其他', '4925253123093012548273193817713673215385455397020478759670923756163762403406986325027897890329381341519046363840802', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3', '系统管理员', '4925253123093012548273193817713673215385455397020478759670923753170607050153297148546751352926449795430956860989198', '1', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('48083a5075f1452b83ecad34b48eb7db', '博士生', '158456324886140652683981226958', '1', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('549bc2c6662b4e199ba8c53e10061a08', '外聘专家', '158456324886140652683981226958', '1', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '科研秘书', '2471044375796722714831486990', '1', '0', '0', '2251798773489606', '0');
INSERT INTO `sys_role` VALUES ('a1fa59be8aa34715b10cb452be4d2eba', '硕士生', '158456324886140652683981226958', '1', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('c7bc358ad8484b029671df15c7c6ea90', '浏览人员', '4925253123093012548273193817713673215385455397020478759670923756163762403406986325027897890329381341519046363840802', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('e0b4243dc52c4ded89f667c08a3da75f', '教师', '158456324886140652683981226958', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sys_role_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('1e6c7a671a1a4bf4a77147e53031f056', '3', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('377bb0993833477984c0dc99110b5bd8', '3', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('403f503410f9494b9843ad185baa0fa3', '3', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('cc9c0414c9204f28bb1ce8cf90d6151d', '3', '4efa162fce8340f0bd2dcd3b11d327ec');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  `XUELI` varchar(20) DEFAULT NULL COMMENT '学历',
  `FANGXIANG` varchar(50) DEFAULT NULL COMMENT '研究方向',
  `PUBPAPER` varchar(500) DEFAULT NULL COMMENT '已发表论文',
  `AGE` varchar(3) NOT NULL COMMENT '年龄',
  `ZHICHENG` varchar(20) DEFAULT NULL COMMENT '职称',
  `SEX` varchar(10) DEFAULT NULL COMMENT '性别',
  `XSJZ` varchar(50) DEFAULT NULL COMMENT '学术兼职',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0e788b3761a54210859fb019e59b4d60', 'sasha', '55c81890aaf60fa9285a95712f021adce9df160c', 'sasha', '', '48083a5075f1452b83ecad34b48eb7db', '', '', '0', '北京化工大学在读博士，计算机专业', 'default', '2312@qq.com', '481219843', '121231', '硕士', '人工智能', '', '26', '无', '0', '无');
INSERT INTO `sys_user` VALUES ('1', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', '系统管理员', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2017-06-04 14:43:39', '127.0.0.1', '0', '最高统治者', 'default', 'QQ313596790@main.com', '001', '18788888888', null, null, null, '0', null, null, null);
INSERT INTO `sys_user` VALUES ('9f65c16d910845d9a66b49ae1e9e8035', '我是起名废', '28c109ea81888eafb8780337346d793beebc1d11', '王小明', '', '68f8e4a39efe47c7bb869e9d15ab925d', '', '', '0', '', 'default', '31771@qq.com', '453453434', '131242', '', '', '', '23', '', '1', '');
INSERT INTO `sys_user` VALUES ('a590f72829bc4596808ebb1031ee4404', 'luna', '4f02025fe765ed165c433694f3dc23c03ec08715', 'luna', '', 'e0b4243dc52c4ded89f667c08a3da75f', '2017-05-09 17:27:44', '', '0', '12313', 'default', '2312312', 'admin', '23413231', '', '', '', '1', '', '1', '');
INSERT INTO `sys_user` VALUES ('af549c617b574f8fbb70888cde576727', '3123', 'f74f22efe6aad7147d7569eb9f4e0ba64460b258', 'the doctor', '', '549bc2c6662b4e199ba8c53e10061a08', '', '', '0', 'from the doctor who serials', 'default', 'sgjybm@163.com', '23413543543', '10000011111', 'doctor', 'everthing', '《non》《名字懒得起了1》《名字懒得起了2》《名字懒得起了3》', '20', 'doctor', '0', 'none');
INSERT INTO `sys_user` VALUES ('d0dbf918b6134f86a3a0827abe4b84fa', '宝宝心里苦', '73ab91ae7be83df8f98c54736848bf9438a5dc0f', 'legion', '', 'a1fa59be8aa34715b10cb452be4d2eba', '', '', '0', '没什么备注', 'default', '1asdga@163.com', '214543', '234124', '学士', '人工智能', '《non》', '24', '无', '1', '无');
INSERT INTO `sys_user` VALUES ('eded77bdf35347249b2bacfa181c869d', 'w1', 'c46e5c325e9edfbf213d5d82018ba3c522eabbea', 'supergirl', '', '48083a5075f1452b83ecad34b48eb7db', '2017-05-09 17:28:46', '127.0.0.1', '0', '111', 'default', '313596790@qq.com', '123123123', '13566625555', '', '', '', '0', '', '0', '');

-- ----------------------------
-- Table structure for sys_userphoto
-- ----------------------------
DROP TABLE IF EXISTS `sys_userphoto`;
CREATE TABLE `sys_userphoto` (
  `USERPHOTO_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userphoto
-- ----------------------------
INSERT INTO `sys_userphoto` VALUES ('3b3d3575f8c24985b392ad000618d1e2', 'admin', '', 'uploadFiles/uploadUserPhoto/jsp_avatar1_20170423001628497fbzch7mi.jpg', 'uploadFiles/uploadUserPhoto/jsp_avatar2_20170423001628497fbzch7mi.jpg', 'uploadFiles/uploadUserPhoto/jsp_avatar3_20170423001628497fbzch7mi.jpg');

-- ----------------------------
-- Table structure for tb_pictures
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('223a6a2535d4411899cf5fe042a7fe6b', '图片', '20130917234341062415.png', '20170602/20130917234341062415.png', '2017-06-02 20:52:37', '1', 'http://www.zngc.buct.edu.cn/index.htm爬取');
INSERT INTO `tb_pictures` VALUES ('2ca554de35d046b7aea25a18d6ab1e7b', '图片', '20170522160426819492.jpg', '20170602/20170522160426819492.jpg', '2017-06-02 20:39:24', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('2efe22d6be98416198f14ca0a1c6cee1', '图片', '6a667cf0ed814daf9da69ca30855a96b.png', '20170602/6a667cf0ed814daf9da69ca30855a96b.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('30475bda55274943875c032f1eae5bb9', '图片', '20130917233623890230.png', '20170602/20130917233623890230.png', '2017-06-02 20:52:53', '1', 'http://www.zngc.buct.edu.cn/index.htm爬取');
INSERT INTO `tb_pictures` VALUES ('35bb3aa8c34341b1af3aceac7063196d', '图片', 'c7d7b7c9c1e74f3ab1d58c89cd0ae714.png', '20170602/c7d7b7c9c1e74f3ab1d58c89cd0ae714.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('4053b6d59a7148599f9c1c3cc6eeb04a', '图片', '8e2d50e025594ba3be3f17e94bfd4bbc.png', '20170602/8e2d50e025594ba3be3f17e94bfd4bbc.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('5b8852dfe23c43478a11f35039f6271b', '图片', 'e2e8dd2b50ca46bf810f56c5063ac3b2.png', '20170602/e2e8dd2b50ca46bf810f56c5063ac3b2.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('5de3c9b6b9154afbb97f9c2d604b862d', '图片', '20170418164730015004.jpg', '20170602/20170418164730015004.jpg', '2017-06-02 20:39:40', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('5f879068233e4078a5fdce094470bc8a', '图片', '20170601115843159325.jpg', '20170602/20170601115843159325.jpg', '2017-06-02 20:39:20', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('6b585cf6ecc94b1ea61bcea90ab4ac63', '图片', 'deef98bc29534cccaeebd17a4f609d29.png', '20170602/deef98bc29534cccaeebd17a4f609d29.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('72b80d6237a04fa7a0436ef26a4ece5f', '图片', '20170424084642362395.jpg', '20170602/20170424084642362395.jpg', '2017-06-02 20:39:23', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('7579f47e1c2f41318d9f3e7f98b505d9', '图片', 'ab682ddfe4714c6fb210d16a4a2935c7.png', '20170603/ab682ddfe4714c6fb210d16a4a2935c7.png', '2017-06-03 00:46:20', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('815c036c959a438d84c75fc6a23c63ef', '图片', '1c02a0045c7e48c4aa18ea05c8f402fe.png', '20170602/1c02a0045c7e48c4aa18ea05c8f402fe.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('8da2f968abbf47eaa1a18e301330b979', '图片', '20130917234702750541.png', '20170602/20130917234702750541.png', '2017-06-02 20:52:30', '1', 'http://www.zngc.buct.edu.cn/index.htm爬取');
INSERT INTO `tb_pictures` VALUES ('a4a53ad07a994aa7a16a2a22fdc179d3', '图片', 'a429ba30b7b9463ab90700bd0f977f48.png', '20170602/a429ba30b7b9463ab90700bd0f977f48.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('a91a44d1df784bcd8b57ae1d38c160e5', '图片', 'efd63b19cce64bbcba513c7d523ee8f3.png', '20170602/efd63b19cce64bbcba513c7d523ee8f3.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('abd5bf2192c4434a825a9b9b0fa3bf36', '图片', '498f62018331419ebbb5d186256b0fa2.png', '20170602/498f62018331419ebbb5d186256b0fa2.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('b1253b148b81496c993095c01e6e902f', '图片', 'a830030cedf34c5585341fcca0c52767.png', '20170602/a830030cedf34c5585341fcca0c52767.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('b444d066d96d47eb9ae8d361f30b1819', '图片', 'c5303dee6423490c95ef2fa90d8849d9.png', '20170602/c5303dee6423490c95ef2fa90d8849d9.png', '2017-06-02 20:38:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('b5dd55964abe4368a761d937a304dc99', '图片', '20130917234053718394.png', '20170602/20130917234053718394.png', '2017-06-02 20:52:45', '1', 'http://www.zngc.buct.edu.cn/index.htm爬取');
INSERT INTO `tb_pictures` VALUES ('dafff18f38a041efaf592d7582cd995f', '图片', '20130918132826328799.png', '20170602/20130918132826328799.png', '2017-06-02 20:52:25', '1', 'http://www.zngc.buct.edu.cn/index.htm爬取');
INSERT INTO `tb_pictures` VALUES ('e2a759ac941841fdbe2253a271b6360b', '图片', '20170508150437871056.jpg', '20170602/20170508150437871056.jpg', '2017-06-02 20:39:38', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('ebd0d79baf6344cdbd6ab5430275c35b', '图片', '20130823113806093757.jpg', '20170602/20130823113806093757.jpg', '2017-06-02 20:52:53', '1', 'http://www.zngc.buct.edu.cn/index.htm爬取');
INSERT INTO `tb_pictures` VALUES ('ed49a6a8172c480f82a144e4c2085856', '图片', '20170527103638537892.jpg', '20170602/20170527103638537892.jpg', '2017-06-02 20:39:45', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('f0c5df15a81949d989e98cf8026b6c85', '图片', '20170522083413043181.jpg', '20170602/20170522083413043181.jpg', '2017-06-02 20:39:44', '1', 'http://www.buct.edu.cn爬取');
INSERT INTO `tb_pictures` VALUES ('f57dcc46d5e64267ae08bbdabaf931b6', '图片', '20170601183840718397.jpg', '20170602/20170601183840718397.jpg', '2017-06-02 20:39:41', '1', 'http://www.buct.edu.cn爬取');

-- ----------------------------
-- Table structure for web_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `web_aboutus`;
CREATE TABLE `web_aboutus` (
  `ABOUTUS_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`ABOUTUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_aboutus
-- ----------------------------
INSERT INTO `web_aboutus` VALUES ('1', '<p><a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E5%8C%96%E5%B7%A5%E5%A4%A7%E5%AD%A6\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">北京化工大学</a>（Beijing University of Chemical Technology）是中华人民共和国<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E6%95%99%E8%82%B2%E9%83%A8\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">教育部</a>直属的一所以化工为特色的多科性<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%85%A8%E5%9B%BD%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">全国重点大学</a>，教育部与<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6%E5%9B%BD%E9%98%B2%E7%A7%91%E6%8A%80%E5%B7%A5%E4%B8%9A%E5%B1%80\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">国家国防科技工业局</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6%E5%AE%89%E5%85%A8%E7%94%9F%E4%BA%A7%E7%9B%91%E7%9D%A3%E7%AE%A1%E7%90%86%E6%80%BB%E5%B1%80\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">国家安全生产监督管理总局</a><span style=\"font-size: 10.9091px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[1]</span><a class=\"sup-anchor\" name=\"ref_[1]_4492\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a>&nbsp;、<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E7%9F%B3%E6%B2%B9%E5%8C%96%E5%B7%A5%E9%9B%86%E5%9B%A2%E5%85%AC%E5%8F%B8\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">中国石油化工集团公司</a><span style=\"font-size: 10.9091px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[2]</span><a class=\"sup-anchor\" name=\"ref_[2]_4492\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a>&nbsp;、北京市<span style=\"font-size: 10.9091px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[3]</span><a class=\"sup-anchor\" name=\"ref_[3]_4492\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a>&nbsp;共建高校，<span style=\"font-size: 10.9091px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[4]</span><a class=\"sup-anchor\" name=\"ref_[4]_4492\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a>&nbsp;是国家“<a target=\"_blank\" href=\"http://baike.baidu.com/item/211%E5%B7%A5%E7%A8%8B\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">211工程</a>”、“985优势学科创新平台”重点建设院校之一，入选“<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%8D%93%E8%B6%8A%E8%AE%A1%E5%88%92\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">卓越计划</a>”、“<a target=\"_blank\" href=\"http://baike.baidu.com/item/111%E8%AE%A1%E5%88%92\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">111计划</a>”，是<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E9%AB%98%E7%A7%91%E5%A4%A7%E5%AD%A6%E8%81%94%E7%9B%9F\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">北京高科大学联盟</a>的重要成员<span style=\"font-size: 10.9091px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[5]</span><a class=\"sup-anchor\" name=\"ref_[5]_4492\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a>&nbsp;。</p><p>学校创办于1958年，原名<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%8C%97%E4%BA%AC%E5%8C%96%E5%B7%A5%E5%AD%A6%E9%99%A2\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">北京化工学院</a>，是新中国为“培养尖端科学技术所需求的高级化工人才”而创建的一所高水平大学。1960年被中共中央列为首批全国重点建设大学行列之一；1994年更名为北京化工大学。</p><p>学校由3个校区组成，总体占地面积1070亩，建筑面积约63万平方米；截止2015年9月，学校共设有12个学院，全日制本科生14770人，全日制研究生6040人（其中博士766人），高职生393人，函授、夜大等继续教育学生6195人，学历留学生225人</p><p><br/></p>');

-- ----------------------------
-- Table structure for web_contactus
-- ----------------------------
DROP TABLE IF EXISTS `web_contactus`;
CREATE TABLE `web_contactus` (
  `CONTACTUS_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`CONTACTUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_contactus
-- ----------------------------
INSERT INTO `web_contactus` VALUES ('1', '<h4><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0008.gif\"/></h4><h4>全国免费资讯热线：400-000-0000</h4><h4>邮箱：317718366@aaa.com</h4><h4>网址：http://www.buct.edu.cn</h4><h4>地址：北京化工大学</h4>');

-- ----------------------------
-- Table structure for web_cooperation
-- ----------------------------
DROP TABLE IF EXISTS `web_cooperation`;
CREATE TABLE `web_cooperation` (
  `COOPERATION_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`COOPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_cooperation
-- ----------------------------
INSERT INTO `web_cooperation` VALUES ('1', '<h1 style=\"padding: 0px; margin: 0px 0px 15px; font-size: 24px; font-weight: normal; line-height: 40px; text-align: center; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\">合作方式</h1><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: &#39;microsoft yahei&#39;, arial, tahoma, sans-serif; color: rgb(119, 119, 119); font-size: 12px; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;&nbsp;&nbsp;&nbsp;为了快速响应客户各种个性化需求，我们提供弹性的ODM/OEM合作模式，可为客户提供设计文件、软件映像文件、软件源代码、相关文档及PCB、PCBA、整机等。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">主要合作方式:</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;1</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">、完全研发项目：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">根据客户产品方案书或具体功能要求，选择CPU平台，进行软（系统级别）、硬件开发，制作样机，或针对客户原有产品进行软、硬件升级，样机制作，同时您还将得到专业的、技术人员培训、辅导服务以及终身技术维护，我们提供所有产品资料。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">2</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">、研发及生产项目：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">根据客户需求，定制研发客户规格产品，样机确认后批量生产，以最终整机交付客户。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;3</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">．标准产品销售：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">客户可以选购我们一系列的标准产品，直接下单采购，不需额外付任何研发费及模具费。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><br style=\"background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><img title=\"clip_image002.png\" border=\"0\" hspace=\"0\" src=\"http://info.emdoor.com/ueditor1.2.5/asp/upload/2014092858921669.png\" width=\"650\" height=\"236\" style=\"border: none; width: 650px; height: 236px; background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><br style=\"background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">针对ODM方式，我们可以提供完整系统（包括硬件PCBA和操作系统及驱动程序），也可提供部分保证客户二次开发所必需的文件、线路图纸等，供客户灵活选择，以期让客户以最低廉的成本获得最具性价比的方案。</span></p><p><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\"><br/></span></p><p><br/></p>');

-- ----------------------------
-- Table structure for web_corporatephilosophy
-- ----------------------------
DROP TABLE IF EXISTS `web_corporatephilosophy`;
CREATE TABLE `web_corporatephilosophy` (
  `CORPORATEPHILOSOPHY_ID` varchar(100) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(50) DEFAULT NULL COMMENT '内容',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '内容链接',
  PRIMARY KEY (`CORPORATEPHILOSOPHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_corporatephilosophy
-- ----------------------------
INSERT INTO `web_corporatephilosophy` VALUES ('1', '解决方案', '无论您是什么行业,都能满足您的需求.', 'http://127.0.0.1/FH-WEB');
INSERT INTO `web_corporatephilosophy` VALUES ('2', '安全保障', '安全稳定的架构设计,构建稳固防盾.', 'http://127.0.0.1/FH-WEB/');
INSERT INTO `web_corporatephilosophy` VALUES ('3', '服务团队', '资深专家为您提供满意的私人服务.', 'http://127.0.0.1/FH-WEB');
INSERT INTO `web_corporatephilosophy` VALUES ('4', '核心服务', '为您提供全面的软件定制服务.', 'http://127.0.0.1/FH-WEB/');

-- ----------------------------
-- Table structure for web_image
-- ----------------------------
DROP TABLE IF EXISTS `web_image`;
CREATE TABLE `web_image` (
  `IMAGE_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `IMGURL` varchar(255) DEFAULT NULL COMMENT '路径',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '链接',
  `TYPE` int(2) NOT NULL COMMENT '类型',
  `FORDER` varchar(11) DEFAULT NULL COMMENT '排序',
  `BZ` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`IMAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_image
-- ----------------------------
INSERT INTO `web_image` VALUES ('10f09d3bb4924c16a927c3bd46caa010', '1', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130917234053718394.png', '1', '3', '1', '1');
INSERT INTO `web_image` VALUES ('11651969e8ca4677b8cbd254335a4018', '科研管理系统', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/1c02a0045c7e48c4aa18ea05c8f402fe.png', '1', '2', '1', '1');
INSERT INTO `web_image` VALUES ('1c3e0fc367934f379cfb8b8fabaceec0', '登录界面', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/efd63b19cce64bbcba513c7d523ee8f3.png', '2', '2', '2', '2');
INSERT INTO `web_image` VALUES ('275f8a823e364397826f04856a7971a2', '产品案例', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/e2e8dd2b50ca46bf810f56c5063ac3b2.png', '', '5', '2', '产品案例');
INSERT INTO `web_image` VALUES ('3d54954b7aba4315b15f46576e5951e3', '6', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20170522083413043181.jpg', '6', '4', '6', '6');
INSERT INTO `web_image` VALUES ('3ea0ed22340a4cafb59da8096d24ee94', '项目', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/a429ba30b7b9463ab90700bd0f977f48.png', '33', '2', '3', '3');
INSERT INTO `web_image` VALUES ('5b740b89113b4a72b2d2105537a71762', '2', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130918132826328799.png', '2', '4', '2', '2');
INSERT INTO `web_image` VALUES ('6200b636107c412e9fbf978688a601db', '4', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20170601115843159325.jpg', '4', '1', '4', '4');
INSERT INTO `web_image` VALUES ('6c0a83db03834cf393f7ecfa90d34631', '产品案例', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/a429ba30b7b9463ab90700bd0f977f48.png', '', '5', '1', '产品案例');
INSERT INTO `web_image` VALUES ('7e0534478ba2437ba27402e5810916b8', '3', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130917234341062415.png', '33', '3', '4', '4');
INSERT INTO `web_image` VALUES ('8fdd8b6b79814ec3a1d1b71ef5ca4af0', '3', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20170522160426819492.jpg', '3', '1', '3', '3');
INSERT INTO `web_image` VALUES ('c0d336e693d84438956c9afcf9229440', '2', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130918132826328799.png', '2', '3', '2', '2');
INSERT INTO `web_image` VALUES ('d3cfaf88dc0643b9bbe5f4f2219ec6de', '1', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20170418164730015004.jpg', '1', '1', '1', '1');
INSERT INTO `web_image` VALUES ('ea6fd66431f64acfa6a11d38f6e8ea87', '2', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20170508150437871056.jpg', '2', '1', '2', '2');

-- ----------------------------
-- Table structure for web_information
-- ----------------------------
DROP TABLE IF EXISTS `web_information`;
CREATE TABLE `web_information` (
  `INFORMATION_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '网站名称',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `KEYWORDS` varchar(100) DEFAULT NULL COMMENT '关键词',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '描述',
  `LOGO` varchar(200) DEFAULT NULL COMMENT 'logo',
  `TEL` varchar(20) DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `FAX` varchar(20) DEFAULT NULL COMMENT '传真',
  `WEBURL` varchar(50) DEFAULT NULL COMMENT '官网',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `COPYRIGHT` varchar(20) DEFAULT NULL COMMENT '版权',
  `TECHNOLOGY` varchar(20) DEFAULT NULL COMMENT '技术支持',
  `BEIAN` varchar(15) DEFAULT NULL COMMENT '备案',
  `ABOUTUS1` varchar(255) DEFAULT NULL,
  `ABOUTUS2` varchar(255) DEFAULT NULL,
  `NEW1` varchar(255) DEFAULT NULL,
  `NEW2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INFORMATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_information
-- ----------------------------
INSERT INTO `web_information` VALUES ('1', '科研管理系统', '科研管理系统', '科研管理系统', '科研管理系统', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170603/ab682ddfe4714c6fb210d16a4a2935c7.png', '123131231', '317718366@qq.com', '317718366', '317718366', 'http://127.0.0.1', '北京化工大学', 'wxr', 'wxr', '京-00000001', '就这样吧', '感觉添加的差不多了', '信息基本就这些', '快写完了');

-- ----------------------------
-- Table structure for web_leavemsg
-- ----------------------------
DROP TABLE IF EXISTS `web_leavemsg`;
CREATE TABLE `web_leavemsg` (
  `LEAVEMSG_ID` varchar(100) NOT NULL,
  `NAME` varchar(10) DEFAULT NULL COMMENT '姓名',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `ADDRESS` varchar(50) DEFAULT NULL COMMENT '地址',
  `LCONTENT` varchar(2000) DEFAULT NULL COMMENT '内容',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`LEAVEMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_leavemsg
-- ----------------------------
INSERT INTO `web_leavemsg` VALUES ('0fb46ee01f7648b4881c5d39ca55a13d', '', '', '', '', '2017-04-10 20:11:06');
INSERT INTO `web_leavemsg` VALUES ('9a97ed88c66d40e1ba5e098d2e113a46', '有意向', '11111@qq.com', '山东济南', '有意向', '2017-01-09 12:57:57');

-- ----------------------------
-- Table structure for web_news
-- ----------------------------
DROP TABLE IF EXISTS `web_news`;
CREATE TABLE `web_news` (
  `NEWS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '发表时间',
  `STEMFROM` varchar(100) DEFAULT NULL COMMENT '来源',
  `IMAGE` varchar(100) DEFAULT NULL COMMENT '图片',
  `SHORTCONTENT` varchar(5000) DEFAULT NULL COMMENT '简述',
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`NEWS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_news
-- ----------------------------
INSERT INTO `web_news` VALUES ('234461f8e924463799c724fcf654d8a3', 'test', '2017-04-10 20:19:21', '1', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130917233623890230.png', 'just try\"\"', '<p>hg</p>');
INSERT INTO `web_news` VALUES ('2fa0b30b869740789079e9c8b3f656e8', '新闻标题', '2017-01-08 01:48:43', 'fhadmin', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130823113806093757.jpg', '美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。\"\"', '<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img alt=\"2016年美国大选以来，美国一直指责俄罗斯“用黑客行为干扰了美国大选”。\" src=\"http://p0.ifengimg.com/cmpp/2017/01/09/09/646af998-3028-4b60-af15-92cee999f2a8_size78_w500_h250.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\"/></p><p class=\"picIntro\" style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">2016年美国大选以来，美国一直指责俄罗斯“用黑客行为干扰了美国大选”。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">原标题：原标题：特朗普改口 首次承认俄罗斯黑客曾干扰美国大选</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">国际在线专稿：据路透社1月9日报道，当地时间1月8日，美国候任总统特朗普团队首次承认，俄罗斯黑客曾经入侵并干扰美国大选，并表示将采取应对措施。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特朗普新任命的白宫办公厅主任赖因斯·普里巴斯表示，特朗普相信俄罗斯曾经干扰美国大选期间的民主党大会。但是，普里巴斯并未指出，特朗普是否认为普京曾经指使这一行为。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">“特朗普接受此案是俄罗斯团队所为的事实，”·普里巴斯在“周日福克斯新闻”节目上表示。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>这是特朗普团队首次承认，俄罗斯黑客曾经干扰美国大选。特朗普此前一直拒绝“俄罗斯黑客干扰美国大选”或是“俄罗斯黑客帮助特朗普赢得总统宝座”的类似言论。</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">随着1月20日的就职典礼日益临近，特朗普来自共和党内部的压力也越来越大，许多人认为，这位候任总统应该与美国情报部门更好的沟通与合作，并认可来自后者的最新线索。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">上周，美国情报部门发表报告指出，普京“导演了一个包括网络攻击在内的复杂的计划”，来干扰民主党的竞选进程。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>【早前新闻】</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>特朗普发言人：未发现俄罗斯试图影响美国大选的证据</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">【环球网报道记者朱佩】美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。俄罗斯坚决否认这些指控，并表示，作为回应将采取“对等措施”。 日前， 美国候任总统特朗普发言人肖恩•斯派塞表示，美国没有发现俄罗斯试图影响美国大选的证据。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">据俄新社1月3日消息， 斯派塞在福克斯新闻网的直播节目中表示：“主要媒体倾向宣传俄罗斯曾对选举实施影响的消息。但没有任何俄罗斯真正影响选举的证据。”</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">他指出，“计算机网络是否被侵入——这完全是另一个事情”，和俄罗斯是否参与其中没有关系。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">此外，他还强调称，“计算机攻击是不正确的行为”。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特朗普1月1日表示，希望获得美国情报部门有关网络袭击的消息，以便评估离任政府制裁措施的合理性。特朗普发言人曾表示，认为俄罗斯好像同网络袭击有关，就实施反俄新制裁，对该政策的合理性有些怀疑。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">奥巴马政府去年12月29日以“干涉选举”和“对美驻俄外交官施压”为由对9家俄机构、公司和个人实施了制裁，其中包括俄军总参谋部情报总局以及联邦安全局。此外，美方还将35名俄驻美外交官宣布为不受欢迎的人。对此，俄总统普京表示，莫斯科不会遣返美国外交官作为对华盛顿的行为的回应。<span class=\"ifengLogo\"><a href=\"http://www.ifeng.com/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(0, 66, 118); font-weight: bold;\"><img src=\"http://p2.ifengimg.com/a/2016/0810/204c433878d5cf9size1_w16_h16.png\" style=\"border: 0px; vertical-align: top; display: inline; margin: 0px; max-width: 100%; height: auto; padding-top: 3px;\"/></a></span></p><p><br/></p>');
INSERT INTO `web_news` VALUES ('eba04dd7092449bda6f925ab272756f0', '新闻标题2', '2017-01-09 13:48:18', '新华网', 'http://127.0.0.1:8080/keyanguanli/uploadFiles/uploadImgs/20170602/20130917234702750541.png', '美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。\"', '<p>内容</p>');

-- ----------------------------
-- Table structure for web_ourbusiness
-- ----------------------------
DROP TABLE IF EXISTS `web_ourbusiness`;
CREATE TABLE `web_ourbusiness` (
  `OURBUSINESS_ID` varchar(100) NOT NULL,
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '介绍上',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '介绍下',
  `CONTENT1` varchar(255) DEFAULT NULL COMMENT '内容上',
  `CONTENT2` varchar(255) DEFAULT NULL COMMENT '内容上',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '内容链接',
  PRIMARY KEY (`OURBUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_ourbusiness
-- ----------------------------
INSERT INTO `web_ourbusiness` VALUES ('1', '智能过程系统工程教育部工程研究中心简介', '智能过程系统工程教育部工程研究中心(Engineering Research Center of Intelligent Process Systems Engineering, Ministry of Education)是2007年教育部批准建设，集成化学工程、系统工程、智能工程、控制工程、信息技术、计算机技术、管理科学等学科领域的理论与技术，以复杂过程生产系统的节能降耗环保、安全控制、优化操作、过程强化为目标，从系统的角度研发工业过程数据多尺度处理方法与数据集成技术平台、物流和能流综合建模与系统仿真', '科研团队', '计算机应用研究所和智能工程研究所隶属工程研究中心，现有7名教师，50余名博士和硕士研究生。近年来承担国家863计划、国家自然科学基金、教育部、中石化、中石油等国家和省部级科研项目以及企业重大工程项目30余项，获省部级科技进步一等奖2项、二等奖1项、国家软件著作权10项、申请国家发明专利4项，取得了良好的经济效益和社会效益。', 'http://www.buct.edu.cn');
