/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jspm09255nyygljncpxsxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-11-24 23:33:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `chanpinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `chanpinfenlei`;
CREATE TABLE `chanpinfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='产品分类';

-- ----------------------------
-- Records of chanpinfenlei
-- ----------------------------
INSERT INTO `chanpinfenlei` VALUES ('1', '蔬菜');
INSERT INTO `chanpinfenlei` VALUES ('2', '水果');
INSERT INTO `chanpinfenlei` VALUES ('3', '禽畜');

-- ----------------------------
-- Table structure for `chanpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `chanpinxinxi`;
CREATE TABLE `chanpinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chanpinbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '产品编号',
  `chanpinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `chanpinfenlei` int(10) unsigned NOT NULL COMMENT '产品分类',
  `chanpintupian` text NOT NULL COMMENT '产品图片',
  `chandi` varchar(50) NOT NULL DEFAULT '' COMMENT '产地',
  `chanpinjiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '产品价格',
  `chanpinkucun` int(11) NOT NULL DEFAULT '0' COMMENT '产品库存',
  `chanpinxiaoliang` int(11) NOT NULL DEFAULT '0' COMMENT '产品销量',
  `chanpinxiangqing` longtext NOT NULL COMMENT '产品详情',
  PRIMARY KEY (`id`),
  KEY `chanpinxinxi_chanpinfenlei_index` (`chanpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='产品信息';

-- ----------------------------
-- Records of chanpinxinxi
-- ----------------------------
INSERT INTO `chanpinxinxi` VALUES ('1', '11242234223257', '红富士苹果', '2', 'upload/1637764481467.png,upload/1637764491892.png', 'xx农业园', '5.00', '100', '0', '<p>红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果红富士苹果</p>');
INSERT INTO `chanpinxinxi` VALUES ('2', '11242235561843', '大青芒青金煌芒', '2', 'upload/1637764581858.png,upload/1637764586912.png', 'xx农业园', '20.00', '999', '0', '<div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">重量</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">一件带框60斤，净重54</div></div><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">产地</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">广西壮族自治区崇左市凭祥市</div></div><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">颜色</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">青色</div></div><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">品种名</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">大青芒</div></div><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">货品等级</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">一级果</div></div><p><br/></p>');
INSERT INTO `chanpinxinxi` VALUES ('3', '11242236581181', '泰国南姜', '1', 'upload/1637764649737.png,upload/1637764655968.png', 'xxx农业园', '8.00', '989', '10', '<p>泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜泰国南姜</p>');
INSERT INTO `chanpinxinxi` VALUES ('4', '11242238128700', '露天香菜', '1', 'upload/1637764713537.png,upload/1637764720211.png', 'xx农业园', '5.00', '98', '1', '<div class=\"detail-attrs\" data-v-90bff272=\"\" style=\"display: flex; flex-wrap: wrap; width: 915px; padding-bottom: 29.5px; border-bottom: 1px solid rgb(245, 245, 245); color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">种植环境</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">露地种植</div></div><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">杆长</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">10~15cm</div></div><div class=\"detail-attrs-item\" data-v-90bff272=\"\" style=\"display: flex; align-items: center; margin-right: 50px; margin-top: 20px;\"><div class=\"t1\" data-v-90bff272=\"\" style=\"width: 72px; color: rgb(100, 100, 100); font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px;\">货品等级</div><div class=\"t2\" data-v-90bff272=\"\" style=\"font-family: PingFangSC-Regular; letter-spacing: 0px; line-height: 12px; width: 180px; position: relative; color: rgb(68, 68, 68);\">一级</div></div></div><div class=\"detail-desc\" data-v-90bff272=\"\" style=\"margin-top: 29.5px; color: rgb(68, 68, 68); line-height: 24px; font-family: PingFangSC-Regular; font-size: 14px; white-space: normal;\">无农药残留</div><div class=\"detail-image\" data-v-90bff272=\"\" style=\"margin-top: 30px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal;\"><img alt=\"\" class=\"show-meda\" data-v-90bff272=\"\" data-src=\"./upload/1637764761369.png\" src=\"./upload/1637764761369.png\" lazy=\"loaded\" style=\"width: 750px; margin-top: 10px; display: block;\"/></div><p><br/></p>');

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanhao` varchar(50) NOT NULL DEFAULT '' COMMENT '订单号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `dingdanzhuangtai` varchar(50) NOT NULL COMMENT '订单状态',
  `shouhuoren` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `shouhuodizhi` varchar(255) NOT NULL DEFAULT '' COMMENT '收货地址',
  `shoujihao` varchar(50) NOT NULL DEFAULT '' COMMENT '手机号',
  `xiadanren` varchar(64) NOT NULL DEFAULT '' COMMENT '下单人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `iszf` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', '11242310204431', '\r\n                                    <table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>产品名称</td>\r\n                                            <td>产品分类</td>\r\n                                            <td>产品图片</td>\r\n                                            <td>产品价格</td>\r\n                                            <td>购买数量</td>\r\n                                            <td>小计</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n\r\n                                            <td>露天香菜\r\n                                            </td>\r\n                                            <td>\r\n                                                蔬菜\r\n                                            </td>\r\n                                            <td><img width=\"100\" src=\"upload/1637764713537.png\">\r\n                                            </td>\r\n                                            <td>5.00\r\n                                            </td>\r\n                                            <td>1\r\n                                            </td>\r\n                                            <td>5.00\r\n                                            </td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n\r\n                                    </table>\r\n                                ', '5.00', '已支付', '张三', 'xxx路xxx', '11111111111', '001', '2021-11-24 23:10:27', '是');
INSERT INTO `dingdan` VALUES ('2', '11242322544393', '\r\n                                    <table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>产品名称</td>\r\n                                            <td>产品分类</td>\r\n                                            <td>产品图片</td>\r\n                                            <td>产品价格</td>\r\n                                            <td>购买数量</td>\r\n                                            <td>小计</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n\r\n                                            <td>露天香菜\r\n                                            </td>\r\n                                            <td>\r\n                                                蔬菜\r\n                                            </td>\r\n                                            <td><img width=\"100\" src=\"upload/1637764713537.png\">\r\n                                            </td>\r\n                                            <td>5.00\r\n                                            </td>\r\n                                            <td>1\r\n                                            </td>\r\n                                            <td>5.00\r\n                                            </td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n\r\n                                    </table>\r\n                                ', '5.00', '已支付', '张三', 'xxx路xxx', '11111111111', '001', '2021-11-24 23:23:00', '是');
INSERT INTO `dingdan` VALUES ('3', '11242326241882', '\r\n                                    <table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>产品名称</td>\r\n                                            <td>产品分类</td>\r\n                                            <td>产品图片</td>\r\n                                            <td>产品价格</td>\r\n                                            <td>购买数量</td>\r\n                                            <td>小计</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n\r\n                                            <td>泰国南姜\r\n                                            </td>\r\n                                            <td>\r\n                                                蔬菜\r\n                                            </td>\r\n                                            <td><img width=\"100\" src=\"upload/1637764649737.png\">\r\n                                            </td>\r\n                                            <td>8.00\r\n                                            </td>\r\n                                            <td>10\r\n                                            </td>\r\n                                            <td>80.00\r\n                                            </td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n\r\n                                    </table>\r\n                                ', '80.00', '已支付', '李四', 'xxx路xxx', '33333333333', '002', '2021-11-24 23:26:30', '是');
INSERT INTO `dingdan` VALUES ('4', '11242327321236', '\r\n                                    <table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>产品名称</td>\r\n                                            <td>产品分类</td>\r\n                                            <td>产品图片</td>\r\n                                            <td>产品价格</td>\r\n                                            <td>购买数量</td>\r\n                                            <td>小计</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n\r\n                                            <td>大青芒青金煌芒\r\n                                            </td>\r\n                                            <td>\r\n                                                水果\r\n                                            </td>\r\n                                            <td><img width=\"100\" src=\"upload/1637764581858.png\">\r\n                                            </td>\r\n                                            <td>20.00\r\n                                            </td>\r\n                                            <td>10\r\n                                            </td>\r\n                                            <td>200.00\r\n                                            </td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n\r\n                                    </table>\r\n                                ', '200.00', '已取消', '李四', 'xxx路xxx', '11111111111', '002', '2021-11-24 23:27:37', '否');

-- ----------------------------
-- Table structure for `dingdandingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdandingdanxinxi`;
CREATE TABLE `dingdandingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanid` int(10) unsigned NOT NULL COMMENT '订单id',
  `chanpinxinxiid` int(10) unsigned NOT NULL COMMENT '产品信息id',
  `chanpinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `chanpinfenlei` int(10) unsigned NOT NULL COMMENT '产品分类',
  `chanpintupian` text NOT NULL COMMENT '产品图片',
  `chanpinjiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '产品价格',
  `goumaishuliang` int(11) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `xiaoji` varchar(50) NOT NULL DEFAULT '' COMMENT '小计',
  PRIMARY KEY (`id`),
  KEY `dingdandingdanxinxi_dingdanid_index` (`dingdanid`),
  KEY `dingdandingdanxinxi_chanpinxinxiid_index` (`chanpinxinxiid`),
  KEY `dingdandingdanxinxi_chanpinfenlei_index` (`chanpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单订单信息';

-- ----------------------------
-- Records of dingdandingdanxinxi
-- ----------------------------
INSERT INTO `dingdandingdanxinxi` VALUES ('1', '1', '4', '露天香菜', '1', 'upload/1637764713537.png,upload/1637764720211.png', '5.00', '1', '5.00');
INSERT INTO `dingdandingdanxinxi` VALUES ('2', '2', '4', '露天香菜', '1', 'upload/1637764713537.png,upload/1637764720211.png', '5.00', '1', '5.00');
INSERT INTO `dingdandingdanxinxi` VALUES ('3', '3', '3', '泰国南姜', '1', 'upload/1637764649737.png,upload/1637764655968.png', '8.00', '10', '80.00');
INSERT INTO `dingdandingdanxinxi` VALUES ('4', '4', '2', '大青芒青金煌芒', '2', 'upload/1637764581858.png,upload/1637764586912.png', '20.00', '10', '200.00');

-- ----------------------------
-- Table structure for `gouwuche`
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chanpinxinxiid` int(10) unsigned NOT NULL COMMENT '产品信息id',
  `chanpinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `chanpinfenlei` int(10) unsigned NOT NULL COMMENT '产品分类',
  `chanpintupian` text NOT NULL COMMENT '产品图片',
  `chanpinjiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '产品价格',
  `goumaishuliang` int(11) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `xiaoji` varchar(50) NOT NULL DEFAULT '' COMMENT '小计',
  `goumairen` varchar(64) NOT NULL DEFAULT '' COMMENT '购买人',
  PRIMARY KEY (`id`),
  KEY `gouwuche_chanpinxinxiid_index` (`chanpinxinxiid`),
  KEY `gouwuche_chanpinfenlei_index` (`chanpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of gouwuche
-- ----------------------------

-- ----------------------------
-- Table structure for `huodong`
-- ----------------------------
DROP TABLE IF EXISTS `huodong`;
CREATE TABLE `huodong` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `huodongmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `huodongneirong` longtext NOT NULL COMMENT '活动内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='活动';

-- ----------------------------
-- Records of huodong
-- ----------------------------
INSERT INTO `huodong` VALUES ('1', '农业执法走进田间开展农产品质量安全活动', '<div class=\"_1T4GB1ESohOqTGNmwCAcuf \" style=\"max-width: 100%; overflow-x: visible; line-height: 24px; color: rgb(51, 51, 51); font-family: arial; white-space: normal;\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">近日，温州市农业综合行政执法队组织“两代表一委员”、农业执法行风监督员及媒体记者，走进苍南县马站镇，开展农产品质量安全行动。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p></div><div class=\"_1T4GB1ESohOqTGNmwCAcuf \" style=\"max-width: 100%; overflow-x: visible; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial; white-space: normal;\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">在温州意达科技有限公司的农业科技园，一行人查看了种子种苗生产、检疫及“肥药两制”落实情况。之后，大家又来到了马站镇四季柚生产基地，了解四季柚在产前、产中、产后的全程监管情况。在现场，执法人员还采摘了四季柚样本，用酶抑制法检测农药残留有否超标。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p></div><div class=\"_1T4GB1ESohOqTGNmwCAcuf \" style=\"max-width: 100%; overflow-x: visible; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial; white-space: normal;\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">记者从市农业综合行政执法队获悉，除了水果蔬菜，该队还在今年全面加强了畜禽产品的监督抽检。截至目前，完成畜禽产品省级抽送样94批次，市级监督抽送样93批次，发现2批次鸽蛋产品不合格，不合格项目分别为甲硝唑及恩诺沙星和环丙沙星。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p></div><div class=\"_1T4GB1ESohOqTGNmwCAcuf \" style=\"max-width: 100%; overflow-x: visible; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial; white-space: normal;\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">此外，为规范蛋禽养殖行为，保障禽蛋产品质量安全，市农业综合行政执法队在7月7日至8月6日特别组织开展了禽蛋产品质量安全专项执法行动。该行动集中对在创及已创“瓯越鲜风”标准化生产基地“绿色牧场”、近年来出现不合格产品的21家蛋禽养殖场的22批次禽蛋产品进行抽检，其中，鸡蛋12批次、鸭蛋6批次、鸽蛋4批次，1批次被检出不合格。所有不合格禽蛋产品均已销毁。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p></div><div class=\"_1T4GB1ESohOqTGNmwCAcuf \" style=\"max-width: 100%; overflow-x: visible; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial; white-space: normal;\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">今年以来，市农业综合行政执法队按照省厅“绿剑”集中执法行动统一部署，着力加强农（兽）药等农业投入品源头监管，严厉打击制售假劣农资、非法调运、私屠滥宰等违法行为，全面保障农产品质量安全。截至10月底，全市累计出动执法人员17740人次，检查经营主体6216家，开展监督抽检3996批次，立案775起，其中一般程序案件686起，移送司法机关23起，罚没款185.7万元。</p></div><p><br/></p>', '2021-11-24 22:40:39');
INSERT INTO `huodong` VALUES ('2', '2021年首届名特优农产品商品展示活动', '<p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">你想得到的，想不到的</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">好吃的、好玩的、好用的</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">应！有！尽！有！</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">一定不要错过</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">福利来袭</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">自11月27日开始</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">每天上午10点、下午3点、晚上8点</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">免费送鸡蛋、面条、食盐等礼品</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">每次限量200份</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">到农贸市场的群众，不要忘了来排队领取</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">11月26日—12月15日</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">商品展示活动全面启动</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">活动期间：11月26日至12月10日</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">新入驻的菜摊免费试卖，免收租金</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">吃喝玩乐购一站式全搞定</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">下面送上玩乐攻略</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: bolder;\">展会第一站 · 放肆吃！</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">唯有美食不可辜负</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">没有什么是一顿美食解决不了的</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">如果有，那就多来几顿！</p><p><br/></p>', '2021-11-24 22:41:31');
INSERT INTO `huodong` VALUES ('3', '咸阳职业技术学院举行“双百工程”', '<div class=\"_1T4GB1ESohOqTGNmwCAcuf \" style=\"max-width: 100%; overflow-x: visible; line-height: 24px; color: rgb(51, 51, 51); font-family: arial; white-space: normal;\"><div data-from-paste=\"1\" data-diagnose-id=\"61c917a64c8fea0d51f7bf84acf2ed2f\" style=\"overflow-y: auto; max-width: 100%; box-sizing: inherit; margin-top: 16px; white-space: pre-wrap;\"><div class=\"public-DraftStyleDefault-block public-DraftStyleDefault-ltr\" data-from-paste=\"1\" data-diagnose-id=\"2f63840b85e5b5ba0eca15eacae36131\" style=\"max-width: 100%; box-sizing: inherit; direction: ltr; margin: 16px 0px;\"><span data-from-paste=\"1\" data-diagnose-id=\"8ec929a027057652daaac909687e8898\" style=\"max-width: 100%; box-sizing: inherit;\">11月17日，咸阳职业技术学院举行“双百工程”消费帮扶优质农产品进校园活动。该院党委书记张迪、院长杨卫军、党委副书记张建刚出席，党政办公室、组织人事处、工会负责人，帮扶干部和教职工代表</span><span data-from-paste=\"1\" data-diagnose-id=\"5cc728b5e1cd74e8e18e408db4b488a6\" style=\"max-width: 100%; box-sizing: inherit;\">活动中，该院领导将工会统一采购价值18.81万元的淳化农副产品，作为暖心慰问品发放到教职工手中，勉励大家爱岗敬业、努力工作、培育英才，同时鼓励教职工积极为淳化县农副产品推广宣传，用实际行动助力乡村振兴和“双百工程”消费帮扶工</span>咸阳职业技术学院高度重视乡村振兴工作，认真贯彻落实省委教育工委、省教育厅“双百工程”消费帮扶工作要求，与结对帮扶县区签订2021年度消费帮扶农产品购销协议，积极对接推动落实，爱心消费助农兴农，全年采购扶风、淳化县农副产品51.3万元，全面超额完成“双百工程”消费帮扶任务。下一步，咸阳职业技术学院将继续按照中省市乡村振兴工作要求，扎实做好“双百工程”结对帮扶工作，为服务乡村振兴积极贡献咸职力量。</div></div></div><div class=\"_4TUZRg-Yz-JYH2P3V5fsh \" style=\"max-width: 100%; overflow-x: visible; display: flex; margin-top: 36px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px; white-space: normal;\"><div class=\"_1Dg_4ksYttUK-gyQE1RGR6\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-align: center; align-items: center; width: 599px;\"><span data-from-paste=\"1\" data-diagnose-id=\"9f8fdc4c43d0ddd378060f9c0ed561d2\" style=\"white-space: pre-wrap; color: rgb(51, 51, 51); font-size: 16px; max-width: 100%; box-sizing: inherit;\"><br/></span></div></div>', '2021-11-24 22:46:34');
INSERT INTO `huodong` VALUES ('4', '国内品牌、特色农产品12月将集中亮相济南', '<p style=\"outline: 0px; zoom: 1; margin-top: 0px; margin-bottom: 0px; padding: 32px 0px 0px; line-height: 32px; color: rgb(70, 70, 70); font-size: 20px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\">　中新网北京新闻11月23日电&nbsp; 首届中国农产品加工产业发展高峰论坛暨博览会启动发布会日前在京举办。据介绍，此次论坛暨博览会拟于12月在山东济南举办，届时将集中展示国内品牌农产品和食品加工相关企业产品，预计展出面积23000平方米。</p><p style=\"outline: 0px; zoom: 1; margin-top: 0px; margin-bottom: 0px; padding: 32px 0px 0px; line-height: 32px; color: rgb(70, 70, 70); font-size: 20px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\">　　本次活动由中国国际电子商务中心、中国乡镇企业协会、全国农产品加工产业发展联盟等举办，以“聚力国际农业新成果 引领产业发展新时代”为主题，整个活动分为展览和论坛两大板块。</p><p style=\"outline: 0px; zoom: 1; margin-top: 0px; margin-bottom: 0px; padding: 32px 0px 0px; line-height: 32px; color: rgb(70, 70, 70); font-size: 20px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\">　　其中，展览板块设有品牌农业馆、特色农业馆、农业科技馆、农产品展销馆、山东援疆成果馆等5个专馆，集中展示国内品牌农产品和食品加工相关企业产品，预计展出面积23000平方米。</p><p style=\"outline: 0px; zoom: 1; margin-top: 0px; margin-bottom: 0px; padding: 32px 0px 0px; line-height: 32px; color: rgb(70, 70, 70); font-size: 20px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\">　　论坛版块将举办全球农产品加工产业发展高峰论坛、中国农产品加工质量提升论坛暨美丽乡村建设发展论坛、全球农产品加工产业营销论坛、国际新农人发展论坛、农产品加工产业高科技发展论坛等5个主题论坛，同期发布中国农产品加工产业发展蓝皮书纲要。</p><p style=\"outline: 0px; zoom: 1; margin-top: 0px; margin-bottom: 0px; padding: 32px 0px 0px; line-height: 32px; color: rgb(70, 70, 70); font-size: 20px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\">　　主办方表示，本次活动是贯彻落实《国务院关于促进乡村产业振兴的指导意见》的具体举措，是搭建传播产业政策，宣传发展成就，树立企业形象、展示产品品牌、加强技术合作的大平台，是展示中国农产品加工业发展水平，研讨产业发展趋势，推动产业链合作，促进产业交流的机会，更是引导和服务产业持续健康发展的有效措施。高峰论坛将邀请专家学者交流农产品加工产业发展理论和成就，预测行业未来发展潮流与趋势。</p><p style=\"outline: 0px; zoom: 1; margin-top: 0px; margin-bottom: 0px; padding: 32px 0px 0px; line-height: 32px; color: rgb(70, 70, 70); font-size: 20px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal;\">　　主办方称，目前各项筹备工作已基本就绪，将为观众呈现在产品、技术系统解决方案等方面具有高水平、现代感、科技感、体验感的农产品加工产业盛会。(完)</p><p><br/></p>', '2021-11-24 22:59:39');
INSERT INTO `huodong` VALUES ('5', '江西外语外贸职业学院开展南山村农产品推介活动', '<p style=\"margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 20px; line-height: 38px; text-indent: 2em; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;\">展位上，绿色生态大米、土蜂蜜、黑芝麻、黑芝麻粉、莲子、酒糟鱼、麦芽糖、红糖膏、菜籽油、芝麻油等特色农产品琳琅满目，学校党委书记晏斌，院长朱隆亮及其他院领导亲临展位，详细询问特色农产品的价格、销售等情况，并现场购买。更有数位女老师现场一展歌喉，为展会助阵，将推介活动推向一个又一个的抢购高潮。黑芝麻粉、酒糟鱼等产品不到两小时就销售一空。不少产品经过多次补货，依旧供不应求。涓涓细流汇成海，点点纤尘积成山。师生们用实际行动为乡村振兴事业添火助力。据统计，此次推介活动共计销售农产品一千三百余件，销售总金额近伍万元。活动期间，恰逢学院举办大型招聘会，南山风物展也同时向来自全国各地400余家招聘企业进行了推介展示。</p><p style=\"margin-top: 23px; margin-bottom: 0px; padding: 0px; text-align: justify; font-size: 20px; line-height: 38px; text-indent: 2em; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑; white-space: normal;\">在新一轮乡村振兴的帮扶工作中，学院党委始终将驻村帮扶工作当成一项重要的政治任务，高度重视，高位推动，倾力支持，秉持一颗为民解忧的初心，把为群众办实事办好事作为检验党史学习教育成效的标尺，不断推动党史学习教育走深走实，继续在乡村振兴新战场勠力同心，践行帮扶使命。</p><p><br/></p>', '2021-11-24 23:01:33');
INSERT INTO `huodong` VALUES ('6', '一场与脐橙的邂逅之旅即将开启！仙境蓬华“橙”邀您的到来！', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">冬日时节，</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">蓬华镇橙香四溢，风景如画，果实累累。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">果园里金灿灿的脐橙压弯了枝头，</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">一片丰收景象。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><img src=\"./upload/1637766148691.png\" style=\"border-style: initial; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\">在这丰收的时节</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">“蓬橙万里、华美森活”</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\">南安市第四届</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\">蓬华脐橙文化旅游周活动</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\">即将启动！</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><img src=\"./upload/1637766148935.png\" style=\"border-style: initial; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\">等了一年</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; text-align: center;\">终于又和大家见面了</p><p><br/></p>', '2021-11-24 23:02:29');
INSERT INTO `huodong` VALUES ('7', '武定电商携手招商银行昆明分行举行特色农产品推介会 ', '<p class=\"ql-align-justify\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">11月19日，昆明金马坊招银大厦小广场前五彩斑斓、热闹非凡。“幸福市集”——武定电商携手招商银行昆明分行&amp;27度农助力特色农产品产销对接推介会正在举行。云南省楚雄州武定县、招商银行昆明分行、招商食品、云投集团等各级领导和相关负责人参加了启动仪式。</p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><img src=\"./upload/1637766193054.png\" max-width=\"600\" style=\"border-style: initial; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p class=\"ql-align-justify\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">据悉，作为电子商务进农村综合示范项目，本次活动由招商局招商食品、武定县电子商务、招商银行昆明分行共同举办，全省18家知名品牌和特色商家云集活动现场，展销物品覆盖食品、日用品、农产品、副食品、家政服务、化妆品等方面，打造有田园农趣、有温度、有活力的氛围，为昆明市民带来暖暖的幸福时光。</p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><img src=\"./upload/1637766193403.png\" max-width=\"600\" style=\"border-style: initial; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p class=\"ql-align-justify\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">今年是招商银行昆明分行成立二十周年，多年来，招商银行始终秉承“招行振兴乡村，精准消费助农”的宗旨，扎实开展楚雄州武定县的定点扶贫工作，本次联合武定电子商务，旨在通过金融机构自身的优势，助力各乡镇农副产品搭上电商快车，盘活电子商务进农村，走出一条特色产业链，激活农村电商站点的活力与动力，让大山深处土特产、手工艺品，飞出高山，走出一条助农帮农的致富“大产业”。</p><p><br/></p>', '2021-11-24 23:03:13');
INSERT INTO `huodong` VALUES ('8', '农产品区域公用品牌短视频大赛等系列活动正式启动 “贵州绿茶”亮相活动现场', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; white-space: normal;\">11月18日，2021年度农产品区域公用品牌短视频大赛等系列活动启动仪式在贵阳举行。省农业农村厅党组成员、副厅长方涛等领导出席并讲话。省农业农村厅、各市（州）农业农村局、部分农产品公用品牌持有单位的有关负责同志、省内外品牌建设领域专家、新闻媒体记者近百人参与见证。</span></p>', '2021-11-24 23:04:00');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('2', '2', 'upload/1637764222049.png', '#');
INSERT INTO `lunbotu` VALUES ('3', '2', 'upload/1637767905901.png', '#');

-- ----------------------------
-- Table structure for `nongyeyuan`
-- ----------------------------
DROP TABLE IF EXISTS `nongyeyuan`;
CREATE TABLE `nongyeyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nongyeyuanmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '农业园名称',
  `nongyeyuantupian` varchar(255) NOT NULL COMMENT '农业园图片',
  `neirong` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='农业园';

-- ----------------------------
-- Records of nongyeyuan
-- ----------------------------
INSERT INTO `nongyeyuan` VALUES ('1', '现代农业园', 'upload/1637764968361.png', '<p>现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园现代农业园</p>');
INSERT INTO `nongyeyuan` VALUES ('2', '凤鸣农业园', 'upload/1637764991116.png', '<p>凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园凤鸣农业园</p>');
INSERT INTO `nongyeyuan` VALUES ('3', '孙桥农业园', 'upload/1637765018088.png', '<p>孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园孙桥农业园</p>');
INSERT INTO `nongyeyuan` VALUES ('4', '杨凌现代农业园', 'upload/1637765048344.png', '<p>杨凌现代杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园杨凌现代农业园农业园</p>');

-- ----------------------------
-- Table structure for `quxiaodingdan`
-- ----------------------------
DROP TABLE IF EXISTS `quxiaodingdan`;
CREATE TABLE `quxiaodingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanid` int(10) unsigned NOT NULL COMMENT '订单id',
  `dingdanhao` varchar(50) NOT NULL DEFAULT '' COMMENT '订单号',
  `dingdanjine` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `shouhuoren` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `shouhuodizhi` varchar(255) NOT NULL DEFAULT '' COMMENT '收货地址',
  `shoujihao` varchar(50) NOT NULL DEFAULT '' COMMENT '手机号',
  `beizhu` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `quxiaoren` varchar(64) NOT NULL DEFAULT '' COMMENT '取消人',
  PRIMARY KEY (`id`),
  KEY `quxiaodingdan_dingdanid_index` (`dingdanid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='取消订单';

-- ----------------------------
-- Records of quxiaodingdan
-- ----------------------------
INSERT INTO `quxiaodingdan` VALUES ('1', '4', '11242327321236', '200.00', '李四', 'xxx路xxx', '11111111111', '下单下错了', '002');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `wenti` varchar(50) NOT NULL COMMENT '问题',
  `daan` varchar(50) NOT NULL DEFAULT '' COMMENT '答案',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '张三', '男', '12365485697', '小学的名字是？', '张三', 'upload/1637765819653.jpg');
INSERT INTO `yonghu` VALUES ('2', '002', '002', '李四', '男', '35258796352', '小学的名字是？', '李四', 'upload/1637767541501.jpg');

-- ----------------------------
-- Table structure for `zaixianliuyan`
-- ----------------------------
DROP TABLE IF EXISTS `zaixianliuyan`;
CREATE TABLE `zaixianliuyan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `liuyanneirong` text NOT NULL COMMENT '留言内容',
  `liuyanren` varchar(64) NOT NULL DEFAULT '' COMMENT '留言人',
  `huifuneirong` text NOT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线留言';

-- ----------------------------
-- Records of zaixianliuyan
-- ----------------------------
