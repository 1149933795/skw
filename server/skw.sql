/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : skw

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-08-28 09:19:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(50) NOT NULL AUTO_INCREMENT,
  `good_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `num` int(50) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '2', '1', '1');
INSERT INTO `cart` VALUES ('11', '7', '1', '1');
INSERT INTO `cart` VALUES ('10', '3', '1', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `good_id` int(50) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `disCount` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  PRIMARY KEY (`good_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'http://pic11.secooimg.com/product/240/240/2019/0815/0033df98c10649c197e6eae4311e00b8.jpg', '香港自营直降', 'SHISEIDO/资生堂 六角眉笔自然之眉墨铅笔1.2g*3支 多种组合可选', '￥50');
INSERT INTO `goods` VALUES ('2', 'http://pic11.secooimg.com/product/240/240/2020/0115/ab9381ddce204cf1bbca4e992d43a891.jpg', '自营直降', 'Estee Lauder/雅诗兰黛 2019秋季红色金属星座手提包包装有非卖品/not for sale/促销品/试用装/请谨慎下单', '￥755');
INSERT INTO `goods` VALUES ('3', 'http://pic11.secooimg.com/product/240/240/2020/0615/fe028b52219143558d947bc639e8d7f6.jpg', '香港自营', 'Clé de Peau Beauté/肌肤之钥 高级化妆棉3盒套装（120片x3盒） 预计7月15日开始陆续发货', '￥729');
INSERT INTO `goods` VALUES ('4', 'http://pic11.secooimg.com/product/240/240/2020/0615/cc269523f1f74656ad1a15166d264e9a.jpg', '香港自营', 'Clé de Peau Beauté/肌肤之钥 光纱蜜粉扑（3个套装） 预计7月15日开始陆续发货', '￥888');
INSERT INTO `goods` VALUES ('5', 'http://pic11.secooimg.com/product/240/240/2019/0702/4904b04aea834721ba45b521af304aa7.jpg', '非自营', 'YUEXLIN岳晓琳多功能干湿两用美妆蛋', '￥958');
INSERT INTO `goods` VALUES ('6', 'http://pic11.secooimg.com/product/240/240/2019/1225/7a60dca8be734bf386da84ea4e2330dd.jpg', '非自营直营', '鹤禧觉色故宫松石绿描金三果纹美妆刷（10支套装）', '￥549');
INSERT INTO `goods` VALUES ('7', 'http://pic11.secooimg.com/product/240/240/2020/0319/2e77c993953c43789fae9cb79924cbca.jpg', '自营', 'Shu Uemura/植村秀 55号无痕刷粉底刷毛刷魔术刷化妆自然伪素颜裸妆 点面俱到 加速上妆 王一博力荐', '￥780');
INSERT INTO `goods` VALUES ('8', 'http://pic11.secooimg.com/product/240/240/2019/1108/657d93bbcd7944048b37b09ced76f6f4.png', '非自营', 'YUEXLIN岳晓琳MINI PINK粉套刷 14支装粉色高颜值散粉腮红粉底眼影刷', '￥790');
INSERT INTO `goods` VALUES ('9', 'http://pic11.secooimg.com/product/240/240/2020/0605/809024cc781a4111911b6e7439fea894.jpg', '香港自营直降', '【包税】shu uemura/植村秀 55号经典无痕刷子粉底妆刷刷出自然伪素颜', '￥800');
INSERT INTO `goods` VALUES ('10', 'http://pic11.secooimg.com/product/240/240/2019/1225/eec1f29034ad4c9aa69acd9aa5f8effe.jpg', '非自营直营', '鹤禧觉色故宫天青描金祥云纹美妆刷（5支套装）', '￥589');
INSERT INTO `goods` VALUES ('11', 'http://pic11.secooimg.com/product/240/240/2019/0716/7e9e2a85b6464b7bb4d4118df30c7e82.jpg', '非自营', 'YUEXLIN岳晓琳经典眼影刷组合', '￥850');
INSERT INTO `goods` VALUES ('12', 'http://pic11.secooimg.com/product/240/240/2020/0606/53f33ff805e445e4a76618c572bd4c2d.jpg', '香港自营直降', '【包税 Shu uemura/植村秀睫毛夹专业自然卷曲 不伤睫毛 质地柔软', '￥809');
INSERT INTO `goods` VALUES ('13', 'http://pic11.secooimg.com/product/240/240/51/56/384d278936f1440780ddb0b246ea4574.jpg', '非自营', '#19春夏DMLJ/端木良锦 木作飞鸟唐花镜', '￥720');
INSERT INTO `goods` VALUES ('14', 'http://pic11.secooimg.com/product/240/240/2020/0615/63d1696c1d0a46f9a09e132ef679de2a.jpg', '香港自营', 'Clé de Peau Beauté/肌肤之钥 光盈粉扑4个套装 预计7月15日开始陆续发货', '￥980');
INSERT INTO `goods` VALUES ('15', 'http://pic11.secooimg.com/product/240/240/2019/1110/6f7e538884d84dada721bfe143c40af7.jpg', '自营直降', 'stee Lauder/雅诗兰黛2019秋季黑色红唇星座手提包 包装有非卖品/赠品/not for sale/促销品/试用装/请谨慎下单', '￥82');
INSERT INTO `goods` VALUES ('16', 'http://pic11.secooimg.com/product/240/240/2020/0617/7b243896cb2d432eb4ca03360a58ba34.jpg', '自营', 'Estee Lauder/雅诗兰黛 2020春季印花黑色手提包/化妆包', '￥86');
INSERT INTO `goods` VALUES ('17', 'http://pic11.secooimg.com/product/240/240/2020/0616/1459b93287f74b3ca74b781da9db6efb.jpg', '香港自营', '资生堂 睫毛夹*2 29g 预计7月15日开始陆续发货', '￥551');
INSERT INTO `goods` VALUES ('18', 'http://pic11.secooimg.com/product/240/240/2019/0821/b9411c01f81548b58097556c6f5ec89a.jpg', '自营直降', 'Softmate/索美乐 双头纸轴多功能棉签200支*2（两盒）', '￥79');
INSERT INTO `goods` VALUES ('19', 'http://pic11.secooimg.com/product/240/240/2020/0615/0a46814f14f2463b87179d643ca33b23.jpg', '香港自营', 'Clé de Peau Beauté/肌肤之钥 光透白粉饼扑（4个套装） 预计7月15日开始陆续发货', '￥850');
INSERT INTO `goods` VALUES ('20', 'http://pic11.secooimg.com/product/240/240/2019/0716/451df2d1cb4e481c8774d8e5ed424ab7.jpg', '非自营', 'YUEXLIN岳晓琳经典无痕粉底刷', '￥879');
INSERT INTO `goods` VALUES ('21', 'http://pic11.secooimg.com/product/240/240/2019/1225/6bd885260fae4d48b8a55050ece475fb.jpg', '非自营直营', '鹤禧觉色故宫霁红描金三果纹粉底刷', '￥579');
INSERT INTO `goods` VALUES ('22', 'http://pic11.secooimg.com/product/240/240/2019/0515/90ab50e8862141c984e208a727b63f4b.jpg', '非自营', 'YUEXLIN岳晓琳单支斜角粉底刷 进口刷毛烤漆工艺高颜值粉色少女心', '￥98');
INSERT INTO `goods` VALUES ('23', 'http://pic11.secooimg.com/product/240/240/2019/1014/e27aaea9a9a34bf3962a79356ecf3f18.jpg', '香港自营', '【包税】M.A.C/魅可 MAC 四件套化妆刷 彩妆刷', '￥786');
INSERT INTO `goods` VALUES ('24', 'http://pic11.secooimg.com/product/240/240/2019/0515/c8de47796ddc4aaca7e4bda2b5689cb8.jpg', '非自营', 'YUEXLIN岳晓琳专业套刷第IV代 全新24支装散粉眼影无痕粉底高光眼影刷', '￥8752');
INSERT INTO `goods` VALUES ('25', 'http://pic11.secooimg.com/product/240/240/53/49/518550788c4c4511b7d64f8460303c3e.png', '自营', '【欧洲季】Guerlain/娇兰 娇兰幻彩流星粉球彩妆刷定妆刷散粉刷化妆刷', '￥970');
INSERT INTO `goods` VALUES ('26', 'http://pic11.secooimg.com/product/240/240/2020/0319/6888b9efed414e43b8f0250ff1f568ac.jpg', '自营', 'Shu Uemura/植村秀 专业睫毛夹贴合睫毛自然卷翘持久不伤眼皮 植村秀专业睫毛夹 自然卷翘', '￥780');
INSERT INTO `goods` VALUES ('27', 'http://pic11.secooimg.com/product/240/240/2020/0615/7279b5c29ece45e99b6ef3516cc129f3.jpg', '香港自营', 'Clé de Peau Beauté/肌肤之钥 专用粉饼刷2个 预计7月15日开始陆续发货', '￥975');
INSERT INTO `goods` VALUES ('28', 'http://pic11.secooimg.com/product/240/240/2019/0527/f6175c52e73b48e29e39d46879261e51.jpg', '非自营直营', '易科美20°粉系列化妆套刷10支装', '￥589');
INSERT INTO `goods` VALUES ('29', 'http://pic11.secooimg.com/product/240/240/50/97/2a31f491f6334908b74d321aba979b4f.jpg', '香港自营直降', 'La Mer/海蓝之谜 鎏光焕变粉底�?', '￥759');
INSERT INTO `goods` VALUES ('30', 'http://pic11.secooimg.com/product/240/240/2020/0630/4e93fbd80da3488180a616b525e4dbc5.jpg', '香港自营', 'Elizabeth Arden/伊丽莎白雅顿 眼影刷Eye Shadow Brush', '￥999');
INSERT INTO `goods` VALUES ('31', 'http://pic11.secooimg.com/product/240/240/2019/0515/835999923d3c4ae18a7de6ae0a031a0c.jpg', '非自营', 'YUEXLIN岳晓琳洗刷水 免洗速干大容量专业刷子清洗工具', '￥888');
INSERT INTO `goods` VALUES ('32', 'http://pic11.secooimg.com/product/240/240/2020/0626/8bbe66a3ca5445ee893c4122ab6719f5.jpg', '香港自营直降', 'Guerlain/娇兰 裸光粉底刷', '￥749');
INSERT INTO `goods` VALUES ('33', 'http://pic11.secooimg.com/product/240/240/53/99/5c26af4b22234f1a991639eeadfc9ff3.jpg', '香港自营直降', '【欧洲季】【包税】Guerlain/娇兰 幻彩流星彩妆刷定妆刷散粉刷化妆刷', '￥999');
INSERT INTO `goods` VALUES ('34', 'http://pic11.secooimg.com/product/240/240/2019/0908/4649b044520d4fe490ea5202f765df5d.jpg', '自营直降', 'Givenchy/纪梵希 纪梵希锥形海绵组合装（有非卖品等字样请谨慎下单', '￥729');
INSERT INTO `goods` VALUES ('35', 'http://pic11.secooimg.com/product/240/240/2019/1105/3b85ede2725a4f1199a2983cd4a7f89b.jpg', '香港自营', '【包税】DIOR/迪奥花漾甜心女士香水 50ml/100m', '￥721');
INSERT INTO `goods` VALUES ('36', 'http://pic11.secooimg.com/product/240/240/52/10/4f6d84f277c64082bf45f1cff265ab2b.jpg', '自营直降', 'Bvlgari/宝格丽男性淡香水 (大吉岭茶系列)', '￥889');
INSERT INTO `goods` VALUES ('37', 'http://pic11.secooimg.com/product/240/240/2020/0207/9f31d0d5e59c49b18e6999a2ae45fbbc.jpg', '自营直降', '【经典款】GUCCI/古驰罪爱女士淡香水清新花香调30ml 50ml 75ml原装正品国内现货', '￥919');
INSERT INTO `goods` VALUES ('38', 'http://pic11.secooimg.com/product/240/240/51/99/3c780b79ace74e73ba0971197d97358e.jpg', '香港自营直降', '【爆款】【包税】HERMES/爱马仕 大地男士香水EDT', '￥109');
INSERT INTO `goods` VALUES ('39', 'http://pic11.secooimg.com/product/240/240/99/53/c519e4a55dd0475ba9c5fca8afc141fa.jpg', '香港自营直降', '【包税】HERMES/爱马仕大地男士香水旅行套裝 (EDT100ml+沐浴露80ml)', '￥999');
INSERT INTO `goods` VALUES ('40', 'http://pic11.secooimg.com/product/240/240/2020/0319/531f164353b94cfead1858cdaf1ed268.jpg', '自营', '【520推荐明星单品】HERMES/爱马仕蓝色橘彩星光女士淡香水周年庆钜惠国内现货', '￥229');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wjyhll', '123');
INSERT INTO `user` VALUES ('2', 'wjufo', '123');
INSERT INTO `user` VALUES ('3', 'wj', '123');
INSERT INTO `user` VALUES ('4', 'www', '123');
