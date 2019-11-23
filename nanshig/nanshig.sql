/*
Navicat MySQL Data Transfer

Source Server         : nanshig
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : nanshig

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-11-22 16:26:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `uname` varchar(255) NOT NULL,
  `gimg` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `num` int(6) NOT NULL,
  `price` int(255) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('admin', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543334548706345_240.jpg', '军绿色', 'XL', '2', '176', '16', '夏季男士修身西服条纹马夹职业装西装马甲套装韩版短裤潮男两件套 深蓝色套装 S', '原创潮服');
INSERT INTO `cars` VALUES ('admin', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543334548706345_240.jpg', '黑色', 'M', '3', '176', '15', '夏季男士修身西服条纹马夹职业装西装马甲套装韩版短裤潮男两件套 深蓝色套装 S', '原创潮服');
INSERT INTO `cars` VALUES ('admin', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266617360388454_240.jpg', '灰色', 'XXXL', '6', '158', '14', '2019新款外套男韩版潮流休闲帅气工装夹克男士灯芯绒春秋季上衣服 黑色 M', '潮男搭配师');
INSERT INTO `cars` VALUES ('admin', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266617360388454_240.jpg', '浅蓝色', 'XL', '1', '158', '13', '2019新款外套男韩版潮流休闲帅气工装夹克男士灯芯绒春秋季上衣服 黑色 M', '潮男搭配师');

-- ----------------------------
-- Table structure for clothes
-- ----------------------------
DROP TABLE IF EXISTS `clothes`;
CREATE TABLE `clothes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `bimg` varchar(255) NOT NULL,
  `simg` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `mprice` varchar(255) NOT NULL,
  `point` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `allpoint` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clothes
-- ----------------------------
INSERT INTO `clothes` VALUES ('1', '男士破洞春秋牛仔夹克男潮2019新款春装上衣韩版潮流褂子春季外套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266619536950613_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266619536950613_60.jpg', '128', '168.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('2', '2019新款外套男韩版潮流休闲帅气工装夹克男士灯芯绒春秋季上衣服 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266617360388454_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266617360388454_60.jpg', '158', '178.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('3', '男生灯芯绒工装外套男韩版潮流加绒夹克ins百搭港风帅气原宿上衣 灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266614650486239_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266614650486239_60.jpg', '108', '128.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('4', '秋冬季男士潮流修身青年水洗外套中长款韩版牛仔夹克纯棉翻领外衣 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266611090936217_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266611090936217_60.jpg', '108', '128.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('5', '冬季呢子外套男士毛呢大衣韩版潮流中长款男风衣双排扣西装领大衣 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285902647288_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285902647288_60.jpg', '78', '149.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '0');
INSERT INTO `clothes` VALUES ('6', '秋冬新款男士毛呢大衣中长款韩版宽松chic外套男风衣呢子外套青年 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675276340283591_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675276340283591_60.jpg', '79', '169.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '3');
INSERT INTO `clothes` VALUES ('7', '立领棉衣男长款冬季加厚外套韩版修身冬天保暖棉服男冬装青年棉袄 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669550980859227_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669550980859227_60.jpg', '98', '199.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '5分', '衣品轩', '1');
INSERT INTO `clothes` VALUES ('8', '夏季无袖t恤背心男运动宽松韩版大码棉麻坎肩亚麻沙滩休闲汗衫潮 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600023215048189_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600023215048189_60.jpg', '9', '118.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '顺兴男士潮流', '1');
INSERT INTO `clothes` VALUES ('9', '时尚潮流百搭17年秋冬新款日系百搭潮流毛衣针织衫 男款线衣 咖啡色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574239086872_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574239086872_60.jpg', '9', '178.00', '共有1条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '1');
INSERT INTO `clothes` VALUES ('10', '时尚潮流百搭水洗连帽下摆拼接撞色帽子牛仔马甲外套 灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569662707080_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569662707080_60.jpg', '32', '164.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '1');
INSERT INTO `clothes` VALUES ('11', '时尚潮流百搭基本款 拼接分割宽松长袖衬衫 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596095731346187_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596095731346187_60.jpg', '19', '138.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '4');
INSERT INTO `clothes` VALUES ('12', '时尚潮流百搭国潮2017秋冬新款 撞色宽松男毛衣针织衫 黑红 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596091902831495_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596091902831495_60.jpg', '28', '158.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '0');
INSERT INTO `clothes` VALUES ('13', '秋季男士新款简约格子中长款风衣韩版潮流青年宽松毛呢外套男 绿格 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587229232992467_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587229232992467_60.jpg', '76', '199.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '0');
INSERT INTO `clothes` VALUES ('14', '韩版冬季呢料纯色宽松中长款风衣青年毛呢大衣外套男 绿色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587218100184253_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587218100184253_60.jpg', '88', '199.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '0');
INSERT INTO `clothes` VALUES ('15', '男式卫衣2017秋冬新款假两件印花上衣韩版青年休闲运动卫衣男潮流 咖啡色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568213815043018_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568213815043018_60.jpg', '18', '136.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '顺兴男士潮流', '2');
INSERT INTO `clothes` VALUES ('16', '潮男长袖T恤秋冬百搭彩色条纹高领打底衫宽松纯棉T恤男 粉色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568210055628531_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568210055628531_60.jpg', '19', '198.00', '共有1条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '顺兴男士潮流', '1');
INSERT INTO `clothes` VALUES ('17', '港风男士衬衣春装2017新款两条杠男士韩版潮流帅气修身长袖白衬衫 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548296149989212_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548296149989212_60.jpg', '10', '160.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', '小飞潮店', '0');
INSERT INTO `clothes` VALUES ('18', '夏季2017原宿bf风长袖衬衣印花修身衬衫学生潮流个性上衣薄款男装 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548294849825112_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548294849825112_60.jpg', '10', '180.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', '小飞潮店', '1');
INSERT INTO `clothes` VALUES ('19', '夏季2017韩版白色铁环男士圆领短袖T恤休闲原宿BF风宽松半袖潮tee 粉色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548274558712694_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548274558712694_60.jpg', '10', '160.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', '小飞潮店', '1');
INSERT INTO `clothes` VALUES ('20', '原创新款秋冬装男士夹克外套青少年学生秋季潮流韩版牛仔褂子外衣 黑色 S', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05546613200217275_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05546613200217275_60.jpg', '18', '196.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.3分', '顺潮服装', '1');
INSERT INTO `clothes` VALUES ('21', '2017秋季新款风衣男士外套韩版中长款帅气个性学生潮流春秋薄男装 藏青 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544751735112515_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544751735112515_60.jpg', '198', '198.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('22', '秋季开衫男士针织开衫韩版修身V领薄款春秋潮流毛衣外套韩国男装 灰色 M/170', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544747580084238_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544747580084238_60.jpg', '148', '196.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('23', '薄款秋季针织开衫男士针织衫男毛衣外套韩版毛线空调衫2017帅气 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544745680588541_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544745680588541_60.jpg', '128', '156.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('24', '男士休闲西服韩版修身型小西装男青年英伦双排扣西装潮流外套 绿色 L', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544722179827852_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544722179827852_60.jpg', '188', '176.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('25', '日系道袍和服男原宿bf风外套 韩版ulzzang夏季宽松和风开衫防晒衣 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543972960632610_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543972960632610_60.jpg', '109', '118.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('26', '秋季简约工装复古个性牛仔外套男拼色休闲潮流青年日系牛仔衣夹克 浅蓝色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543961150260842_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543961150260842_60.jpg', '126', '152.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '1');
INSERT INTO `clothes` VALUES ('27', '秋装国潮风落肩蝙蝠袖撞色拼接超宽松套头卫衣男bf风原宿潮流外套 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543917881060432_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543917881060432_60.jpg', '146', '192.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '1');
INSERT INTO `clothes` VALUES ('28', '秋季原创男连帽针织卫衣拼色宽松港风日系拼色潮流学生帽衫外套潮 浅灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543915561588354_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543915561588354_60.jpg', '116', '132.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '1');
INSERT INTO `clothes` VALUES ('29', '秋装新品破洞牛仔拼接插肩袖潮流连帽卫衣男韩版徽章绣标外套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543250297129333_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543250297129333_60.jpg', '16', '172.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('30', '日系复古灯芯绒男士夹克韩版外套原宿风潮牌学生休闲茄克衫薄褂子 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543234971320411_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543234971320411_60.jpg', '135', '158.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('31', '原宿港风复古涂鸦宽松无袖坎肩背心GD权志龙同款T恤潮 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543223878999734_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543223878999734_60.jpg', '15', '170.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('32', 'oversize贴布连帽卫衣 2017新款男装INS同款 黑色 均码', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543216978459415_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543216978459415_60.jpg', '10', '160.00', '共有1条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '1');
INSERT INTO `clothes` VALUES ('33', '字母印花简约无袖背心男款汗衫运动风沙滩旅游清新白 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542873065218115_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542873065218115_60.jpg', '18', '176.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('34', '夏季百搭背心男士运动无袖T恤宽松时尚青年马甲休闲汗衫新款 灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542858962576515_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542858962576515_60.jpg', '18', '136.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('35', '夏季无袖t恤男运动背心连帽卫衣马甲修身型韩版潮坎肩学生薄外套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542445506666990_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542445506666990_60.jpg', '18', '196.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('36', '夏季男士背心无袖t恤带帽连帽马甲宽松潮流韩版潮卫衣坎肩修身帅t 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542437988133132_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542437988133132_60.jpg', '15', '190.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('37', '早秋明星同款oversize大版衬衣潮牌男装衬衫长袖 天蓝色 均码', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538040307524007_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538040307524007_60.jpg', '120', '140.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('38', '早秋设计师新款纯棉t恤潮牌原宿青年中长款简约白色T恤长袖 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538039428620360_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538039428620360_60.jpg', '110', '120.00', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('39', '男士破洞春秋牛仔夹克男潮2019新款春装上衣韩版潮流褂子春季外套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266619536950613_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266619536950613_60.jpg', '1280', '1680', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('40', '2019新款外套男韩版潮流休闲帅气工装夹克男士灯芯绒春秋季上衣服 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266617360388454_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266617360388454_60.jpg', '1580', '1780', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('41', '男生灯芯绒工装外套男韩版潮流加绒夹克ins百搭港风帅气原宿上衣 灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266614650486239_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266614650486239_60.jpg', '1080', '1280', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('42', '秋冬季男士潮流修身青年水洗外套中长款韩版牛仔夹克纯棉翻领外衣 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266611090936217_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_06266611090936217_60.jpg', '1180', '2280', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男搭配师', '0');
INSERT INTO `clothes` VALUES ('43', '冬季呢子外套男士毛呢大衣韩版潮流中长款男风衣双排扣西装领大衣 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285902647288_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285902647288_60.jpg', '1780', '3490', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '0');
INSERT INTO `clothes` VALUES ('44', '秋冬新款男士毛呢大衣中长款韩版宽松chic外套男风衣呢子外套青年 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675276340283591_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675276340283591_60.jpg', '1790', '3690', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '3');
INSERT INTO `clothes` VALUES ('45', '立领棉衣男长款冬季加厚外套韩版修身冬天保暖棉服男冬装青年棉袄 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669550980859227_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669550980859227_60.jpg', '1980', '3990', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '5分', '衣品轩', '1');
INSERT INTO `clothes` VALUES ('46', '夏季无袖t恤背心男运动宽松韩版大码棉麻坎肩亚麻沙滩休闲汗衫潮 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600023215048189_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600023215048189_60.jpg', '590', '1180', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '顺兴男士潮流', '1');
INSERT INTO `clothes` VALUES ('47', '时尚潮流百搭17年秋冬新款日系百搭潮流毛衣针织衫 男款线衣 咖啡色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574239086872_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574239086872_60.jpg', '890', '1780', '共有1条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '1');
INSERT INTO `clothes` VALUES ('48', '时尚潮流百搭水洗连帽下摆拼接撞色帽子牛仔马甲外套 灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569662707080_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569662707080_60.jpg', '1320', '2640', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '1');
INSERT INTO `clothes` VALUES ('49', '时尚潮流百搭基本款 拼接分割宽松长袖衬衫 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596095731346187_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596095731346187_60.jpg', '1190', '2380', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '4');
INSERT INTO `clothes` VALUES ('50', '时尚潮流百搭国潮2017秋冬新款 撞色宽松男毛衣针织衫 黑红 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596091902831495_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596091902831495_60.jpg', '1280', '2580', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '0');
INSERT INTO `clothes` VALUES ('51', '秋季男士新款简约格子中长款风衣韩版潮流青年宽松毛呢外套男 绿格 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587229232992467_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587229232992467_60.jpg', '1760', '3990', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '0');
INSERT INTO `clothes` VALUES ('52', '韩版冬季呢料纯色宽松中长款风衣青年毛呢大衣外套男 绿色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587218100184253_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05587218100184253_60.jpg', '1880', '3990', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '李木子的小店', '0');
INSERT INTO `clothes` VALUES ('53', '男式卫衣2017秋冬新款假两件印花上衣韩版青年休闲运动卫衣男潮流 咖啡色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568213815043018_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568213815043018_60.jpg', '1180', '2360', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '顺兴男士潮流', '2');
INSERT INTO `clothes` VALUES ('54', '潮男长袖T恤秋冬百搭彩色条纹高领打底衫宽松纯棉T恤男 粉色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568210055628531_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05568210055628531_60.jpg', '990', '1980', '共有1条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '顺兴男士潮流', '1');
INSERT INTO `clothes` VALUES ('55', '港风男士衬衣春装2017新款两条杠男士韩版潮流帅气修身长袖白衬衫 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548296149989212_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548296149989212_60.jpg', '800', '1600', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', '小飞潮店', '0');
INSERT INTO `clothes` VALUES ('56', '夏季2017原宿bf风长袖衬衣印花修身衬衫学生潮流个性上衣薄款男装 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548294849825112_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548294849825112_60.jpg', '900', '1800', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', '小飞潮店', '1');
INSERT INTO `clothes` VALUES ('57', '夏季2017韩版白色铁环男士圆领短袖T恤休闲原宿BF风宽松半袖潮tee 粉色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548274558712694_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548274558712694_60.jpg', '800', '1600', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', '小飞潮店', '1');
INSERT INTO `clothes` VALUES ('58', '原创新款秋冬装男士夹克外套青少年学生秋季潮流韩版牛仔褂子外衣 黑色 S', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05546613200217275_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05546613200217275_60.jpg', '980', '1960', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.3分', '顺潮服装', '1');
INSERT INTO `clothes` VALUES ('59', '2017秋季新款风衣男士外套韩版中长款帅气个性学生潮流春秋薄男装 藏青 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544751735112515_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544751735112515_60.jpg', '1980', '3980', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('60', '秋季开衫男士针织开衫韩版修身V领薄款春秋潮流毛衣外套韩国男装 灰色 M/170', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544747580084238_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544747580084238_60.jpg', '1480', '2960', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('61', '薄款秋季针织开衫男士针织衫男毛衣外套韩版毛线空调衫2017帅气 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544745680588541_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544745680588541_60.jpg', '1280', '2560', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('62', '男士休闲西服韩版修身型小西装男青年英伦双排扣西装潮流外套 绿色 L', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544722179827852_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05544722179827852_60.jpg', '1880', '3760', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('63', '日系道袍和服男原宿bf风外套 韩版ulzzang夏季宽松和风开衫防晒衣 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543972960632610_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543972960632610_60.jpg', '1090', '2180', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '0');
INSERT INTO `clothes` VALUES ('64', '秋季简约工装复古个性牛仔外套男拼色休闲潮流青年日系牛仔衣夹克 浅蓝色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543961150260842_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543961150260842_60.jpg', '1260', '2520', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '1');
INSERT INTO `clothes` VALUES ('65', '秋装国潮风落肩蝙蝠袖撞色拼接超宽松套头卫衣男bf风原宿潮流外套 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543917881060432_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543917881060432_60.jpg', '1460', '2920', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '1');
INSERT INTO `clothes` VALUES ('66', '秋季原创男连帽针织卫衣拼色宽松港风日系拼色潮流学生帽衫外套潮 浅灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543915561588354_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543915561588354_60.jpg', '1160', '2320', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '尚潮男士专卖', '1');
INSERT INTO `clothes` VALUES ('67', '秋装新品破洞牛仔拼接插肩袖潮流连帽卫衣男韩版徽章绣标外套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543250297129333_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543250297129333_60.jpg', '860', '1720', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('68', '日系复古灯芯绒男士夹克韩版外套原宿风潮牌学生休闲茄克衫薄褂子 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543234971320411_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543234971320411_60.jpg', '1350', '2580', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('69', '原宿港风复古涂鸦宽松无袖坎肩背心GD权志龙同款T恤潮 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543223878999734_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543223878999734_60.jpg', '850', '1700', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('70', 'oversize贴布连帽卫衣 2017新款男装INS同款 黑色 均码', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543216978459415_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543216978459415_60.jpg', '800', '1600', '共有1条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '1');
INSERT INTO `clothes` VALUES ('71', '字母印花简约无袖背心男款汗衫运动风沙滩旅游清新白 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542873065218115_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542873065218115_60.jpg', '808', '1760', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('72', '夏季百搭背心男士运动无袖T恤宽松时尚青年马甲休闲汗衫新款 灰色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542858962576515_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542858962576515_60.jpg', '608', '1360', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('73', '夏季无袖t恤男运动背心连帽卫衣马甲修身型韩版潮坎肩学生薄外套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542445506666990_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542445506666990_60.jpg', '908', '1960', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('74', '夏季男士背心无袖t恤带帽连帽马甲宽松潮流韩版潮卫衣坎肩修身帅t 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542437988133132_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542437988133132_60.jpg', '950', '1900', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('75', '早秋明星同款oversize大版衬衣潮牌男装衬衫长袖 天蓝色 均码', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538040307524007_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538040307524007_60.jpg', '1200', '2400', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `clothes` VALUES ('76', '早秋设计师新款纯棉t恤潮牌原宿青年中长款简约白色T恤长袖 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538039428620360_240.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05538039428620360_60.jpg', '1100', '2200', '共有0条评价', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');

-- ----------------------------
-- Table structure for master
-- ----------------------------
DROP TABLE IF EXISTS `master`;
CREATE TABLE `master` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master
-- ----------------------------
INSERT INTO `master` VALUES ('1', 'admin', '111111');

-- ----------------------------
-- Table structure for shoes
-- ----------------------------
DROP TABLE IF EXISTS `shoes`;
CREATE TABLE `shoes` (
  `title` varchar(255) NOT NULL,
  `simg` varchar(255) NOT NULL,
  `bimg` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `mprice` varchar(255) NOT NULL,
  `point` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `allpoint` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoes
-- ----------------------------
INSERT INTO `shoes` VALUES ('2019春季新款小白鞋男韩版板鞋男士白鞋百搭休闲鞋夏季增高男鞋子 白色 36', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071111289163602_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071111289163602_240.jpg', '89', '135', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男公社', '1', '1');
INSERT INTO `shoes` VALUES ('2019春季透气阿甘鞋男小白鞋男士休闲帆布板鞋韩版潮流男鞋子潮鞋 白黑 36', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071103152844782_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071103152844782_240.jpg', '89', '125', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男公社', '1', '2');
INSERT INTO `shoes` VALUES ('2019春季新款小白鞋男士板鞋男韩版潮鞋休闲鞋百搭白鞋男鞋子夏季 白色 36', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071100369195301_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071100369195301_240.jpg', '89', '125', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男公社', '0', '3');
INSERT INTO `shoes` VALUES ('2019春季新款小白鞋男鞋子韩版夏季板鞋男士百搭白鞋帆布休闲潮鞋 白色 36', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071097359425992_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071097359425992_240.jpg', '89', '125', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', '潮男公社', '0', '4');
INSERT INTO `shoes` VALUES ('马丁靴男靴子高帮雪地男鞋冬季中帮短靴潮工装沙漠靴英伦复古百搭 黑色 39筒高11cm,跟高4cm,鞋面:皮+布,内里:布/绒', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05967491081317810_240.jpg', '139', '188', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', 'MG鞋店', '0', '5');
INSERT INTO `shoes` VALUES ('秋季新款男鞋子青春潮流男士韩版百搭休闲鞋跑步冬季运动潮鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05961427447152871_240.jpg', '108', '178', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', 'MG鞋店', '0', '6');
INSERT INTO `shoes` VALUES ('冬季新款男鞋高帮鞋韩版潮流百搭ins板鞋运动嘻哈男士潮鞋子 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05961425067072953_240.jpg', '118', '138', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '5分', 'MG鞋店', '0', '7');
INSERT INTO `shoes` VALUES ('冬季新款小白鞋子男韩版潮流休闲鞋学生百搭板鞋运动男士潮鞋 白色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05961421819864549_240.jpg', '108', '158', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', 'MG鞋店', '0', '8');
INSERT INTO `shoes` VALUES ('公牛世家男鞋2017秋季新款真皮休闲鞋系带板鞋小白鞋韩版百搭潮鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05576017672149217_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05576017672149217_240.jpg', '308', '616', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '寻优鞋品', '0', '9');
INSERT INTO `shoes` VALUES ('特步男休闲鞋复古鞋2017新款正品运动休闲百搭系带时尚轻便透气 黑色 40', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05576011649954420_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05576011649954420_240.jpg', '199', '398', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '寻优鞋品', '0', '10');
INSERT INTO `shoes` VALUES ('板鞋男2017秋季新款韩版休闲运动学生时尚低帮潮鞋平底百搭小白鞋 白色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05576005783389424_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05576005783389424_240.jpg', '98', '196', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '寻优鞋品', '2', '11');
INSERT INTO `shoes` VALUES ('男时尚男士休闲鞋男鞋运动鞋男2017夏季潮鞋透气青年跑步鞋子 黑白 39', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05575978619631937_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05575978619631937_240.jpg', '199', '398', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '寻优鞋品', '0', '12');
INSERT INTO `shoes` VALUES ('花花公子男鞋夏季英伦白色豆豆鞋男士真皮休闲皮鞋懒人套脚小白鞋 黑色 38', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05575973584462985_240.jpg', '195', '390', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '寻优鞋品', '0', '13');
INSERT INTO `shoes` VALUES ('2017新款低帮系带拼色拉链男士休闲帆布鞋男鞋运动布鞋休闲鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05575964233013097_240.jpg', '109', '218', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', '寻优鞋品', '0', '14');
INSERT INTO `shoes` VALUES ('德利诗尔男士皮鞋男秋季真皮系带百搭男鞋商务休闲鞋潮流韩版鞋子 棕色 38', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05575960586686418_240.jpg', '158', '316', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '寻优鞋品', '0', '15');
INSERT INTO `shoes` VALUES ('男鞋夏季男士透气学生运动鞋网面鞋跑步鞋青年鞋子 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05575951076431186_240.jpg', '228', '456', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', '寻优鞋品', '0', '16');
INSERT INTO `shoes` VALUES ('夏季韩版男鞋潮鞋子男士运动休闲鞋青少年学生百搭小白鞋平底板鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550727761828646_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550727761828646_240.jpg', '86', '173', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', 'MG鞋店', '0', '17');
INSERT INTO `shoes` VALUES ('夏季韩版潮流帆布鞋低帮板鞋学生平底百搭透气布鞋男士休闲潮鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550725740845209_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550725740845209_240.jpg', '88', '169', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', 'MG鞋店', '0', '18');
INSERT INTO `shoes` VALUES ('夏季学生高帮帆布潮鞋男士布鞋韩版潮流休闲板鞋百搭男鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550723257236519_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550723257236519_240.jpg', '99', '198', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', 'MG鞋店', '0', '19');
INSERT INTO `shoes` VALUES ('夏季新款男士帆布鞋韩版潮流百搭学生个性平底板鞋男鞋子潮鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550713532840774_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550713532840774_240.jpg', '86', '172', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.3分', 'MG鞋店', '0', '20');
INSERT INTO `shoes` VALUES ('男士休闲鞋韩版潮流潮鞋一脚蹬懒人板鞋男鞋子百搭青少年皮鞋 白色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550711559034847_240.jpg', '118', '236', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '21');
INSERT INTO `shoes` VALUES ('新款韩版潮流男士休闲鞋学生青少年百搭社会小伙潮鞋 黑色 40', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550701583611155_240.jpg', '86', '172', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '22');
INSERT INTO `shoes` VALUES ('季拖鞋男士凉拖韩版室外潮托潮流懒人包头半拖鞋男鞋子 白色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550699038072261_240.jpg', '79', '158', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '23');
INSERT INTO `shoes` VALUES ('夏季韩版潮流商务休闲鞋英伦风皮鞋男鞋子小皮鞋百搭青年豆豆潮鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05550696697725298_240.jpg', '98', '196', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '24');
INSERT INTO `shoes` VALUES ('新款夏季透气帆布男鞋子男士运动休闲潮鞋韩版潮流百搭平板鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549939506702462_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549939506702462_240.jpg', '86', '170', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '25');
INSERT INTO `shoes` VALUES ('夏季帆布鞋韩版潮流平底休闲男鞋子潮鞋百搭一脚蹬懒人老北京布鞋 白色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549930966100708_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549930966100708_240.jpg', '85', '170', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '26');
INSERT INTO `shoes` VALUES ('新款夏季男鞋子男士运动休闲鞋韩版潮流百搭板鞋透气帆布潮鞋 浅灰 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549929031435921_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549929031435921_240.jpg', '89', '187', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '27');
INSERT INTO `shoes` VALUES ('夏季拖鞋男士一字拖凉拖潮拖韩版潮流男鞋子夏天防滑个性沙滩凉鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549922560506437_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549922560506437_240.jpg', '79', '158', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '28');
INSERT INTO `shoes` VALUES ('男士运动休闲鞋青少年阿甘跑步男鞋子韩版百搭平板鞋日系潮鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549919520743248_240.jpg', '89', '178', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '1', '29');
INSERT INTO `shoes` VALUES ('韩版潮流百搭男士休闲豆豆鞋社会小伙懒人潮鞋男鞋子夏季透气布鞋 红色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549916615279127_240.jpg', '79', '158', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '30');
INSERT INTO `shoes` VALUES ('夏季新款男士帆布鞋低帮休闲男鞋子韩版潮流平底板鞋百搭 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549903714022794_240.jpg', '88', '176', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '31');
INSERT INTO `shoes` VALUES ('男士拖鞋夏季室外凉拖韩版人字休闲个性潮托夏天一字拖沙滩鞋凉鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549899652647350_240.jpg', '85', '170', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '32');
INSERT INTO `shoes` VALUES ('路拉迪时尚夏季男士人字拖凉拖鞋防滑浴室沙滩鞋夹脚凉鞋男潮欧美 桔色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549220806432868_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549220806432868_240.jpg', '58', '116', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '33');
INSERT INTO `shoes` VALUES ('路拉迪时尚柔软夏季人字拖 男凉拖鞋男士夹拖防滑沙滩鞋欧美潮流 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549218357755524_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549218357755524_240.jpg', '63', '126', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '34');
INSERT INTO `shoes` VALUES ('路拉迪欧美男士人字拖鞋 夏季凉拖防滑耐磨夹拖平跟沙滩鞋潮流 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549215226302377_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549215226302377_240.jpg', '58', '116', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '35');
INSERT INTO `shoes` VALUES ('路拉迪男士平跟柔软人字拖 夏季时尚凉拖夹脚防滑沙滩鞋欧美潮流 灰色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549213675252924_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549213675252924_240.jpg', '68', '129', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '36');
INSERT INTO `shoes` VALUES ('路拉迪休闲欧美凉拖鞋男士人字拖夏季 舒适耐磨夹脚防滑沙滩鞋潮 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549206975708817_240.jpg', '60', '120', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '37');
INSERT INTO `shoes` VALUES ('路拉迪潮流四拼男士人字拖鞋 夏季凉鞋男沙滩鞋防滑厚底凉拖欧美 黄底黑带 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549204700573581_240.jpg', '65', '130', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '38');
INSERT INTO `shoes` VALUES ('路拉迪时尚男士人字拖 夏季防滑透气沙滩鞋夹脚拖男休闲凉拖鞋潮 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549202473356957_240.jpg', '65', '130', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '39');
INSERT INTO `shoes` VALUES ('路拉迪透气拼色男士人字拖 夏季防滑耐磨凉拖鞋凉鞋沙滩鞋潮韩流 蓝色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549200588215668_240.jpg', '60', '120', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '40');
INSERT INTO `shoes` VALUES ('人字拖男夏季室外防滑沙滩鞋韩版潮个性学生凉拖夏天夹脚拖鞋男士 黑色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549018192138181_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549018192138181_240.jpg', '56', '112', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '41');
INSERT INTO `shoes` VALUES ('韩版个性防滑人字拖男士拖鞋夏季潮流学生沙滩鞋夹脚拖室外凉拖鞋 蓝色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549016661572404_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05549016661572404_240.jpg', '56', '112', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.5分', 'MG鞋店', '0', '42');
INSERT INTO `shoes` VALUES ('拖鞋男士夏室外2017新款沙滩鞋人字拖防滑软底耐磨夹脚凉拖 桔色 40', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548999791751832_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548999791751832_240.jpg', '55', '110', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', 'MG鞋店', '0', '43');
INSERT INTO `shoes` VALUES ('夏季耐磨小白鞋一脚蹬懒人男士休闲鞋韩版潮鞋白色板鞋青年男鞋子 白色 39', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548982713670742_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548982713670742_240.jpg', '89', '178', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.7分', 'MG鞋店', '0', '44');
INSERT INTO `shoes` VALUES ('夏季时尚男士半拖鞋韩版潮凉拖鞋男鞋懒人一脚蹬休闲个性夏天拖鞋 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548395745530954_240.jpg', '89', '178', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '5分', 'MG鞋店', '0', '45');
INSERT INTO `shoes` VALUES ('夏季懒人一脚蹬布鞋男韩版潮流男鞋子学生板鞋透气半拖社会小伙鞋 白色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548393481079967_240.jpg', '79', '158', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', 'MG鞋店', '0', '46');
INSERT INTO `shoes` VALUES ('夏季低帮半拖潮流帆布鞋男一脚蹬懒人男士休闲鞋韩版潮鞋学生板鞋 白色 38', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548391109326438_240.jpg', '88', '176', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '47');
INSERT INTO `shoes` VALUES ('男士拖鞋夏室外休闲个性韩版潮流厚底耐磨一字拖潮人懒人日常凉拖 黑色 39', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548386028548692_240.jpg', '88', '169', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '48');
INSERT INTO `shoes` VALUES ('凉拖鞋韩版潮流一字拖男拖鞋沙滩鞋越南鞋日常居家休闲鞋夏季鞋子 黑色红 38', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548147750607835_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548147750607835_240.jpg', '68', '129', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '49');
INSERT INTO `shoes` VALUES ('男凉鞋潮流夏季休闲鞋沙滩鞋男士户外凉鞋子韩版2017新款男式透气 典雅黑 38', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548142366378122_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548142366378122_240.jpg', '90', '180', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '50');
INSERT INTO `shoes` VALUES ('男士凉鞋个性2017新款夏季韩版沙滩鞋防滑增高潮流运动休闲 黑色 38', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548131262476976_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548131262476976_240.jpg', '119', '238', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '1', '51');
INSERT INTO `shoes` VALUES ('男士皮鞋男鞋系带商务休闲皮鞋尖头软底英伦正装内增高黑色鞋子 棕色 38', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548127811570353_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548127811570353_240.jpg', '99', '198', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.6分', 'MG鞋店', '0', '52');
INSERT INTO `shoes` VALUES ('男士凉鞋男夏季潮流2017新款休闲运动韩版百搭个性青年男款式男鞋 黑色 38', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548123146182779_240.jpg', '119', '238', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', 'MG鞋店', '0', '53');
INSERT INTO `shoes` VALUES ('夏季男士凉鞋男拖鞋两用2017新款沙滩鞋ulzzang运动潮流原宿凉拖 黑色 38', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548115522446805_240.jpg', '109', '219', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.4分', 'MG鞋店', '0', '54');
INSERT INTO `shoes` VALUES ('夏季男士凉鞋男潮2017新款个性青年沙滩鞋韩版罗马百搭学生休闲鞋 黑色 38', 'https://www.nanshig.com/data/upload/shop/common/loading.gif', 'https://www.nanshig.com/data/upload/shop/store/goods/41/41_05548101396281427_240.jpg', '100', '200', '0', '黑色 浅蓝色 灰色', 'M L XL XXL XXXL', '4.8分', 'MG鞋店', '0', '55');

-- ----------------------------
-- Table structure for suit
-- ----------------------------
DROP TABLE IF EXISTS `suit`;
CREATE TABLE `suit` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `simg` varchar(255) NOT NULL,
  `bimg` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `mprice` varchar(255) NOT NULL,
  `point` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `allpoint` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suit
-- ----------------------------
INSERT INTO `suit` VALUES ('1', '套装男早秋新款潮流翻领五分袖T恤韩版男士修九分裤两件套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566278273920325_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566278294348962_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566278314510289_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566277789620108_240.jpg', '125', '250', '0', '黑色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '4');
INSERT INTO `suit` VALUES ('2', '秋季2017新款休闲运动套装男韩版潮流学生社会小伙男士卫衣两件套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05563169542219682_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05563170152183591_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05563170180466683_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05563170129571341_240.jpg', '119', '238', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '3');
INSERT INTO `suit` VALUES ('3', '夏季男士修身西服条纹马夹职业装西装马甲套装韩版短裤潮男两件套 深蓝色套装 S', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543333416938279_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543334489101227_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543334506741943_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543334548706345_240.jpg', '176', '352', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `suit` VALUES ('4', '夏季套装男装无袖T恤背心学生休闲运动套装青年健身服跑步运动服 白色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543290545953341_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543294508259195_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543294545692697_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05543294485694799_240.jpg', '96', '192', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.6分', '原创潮服', '0');
INSERT INTO `suit` VALUES ('5', '夏季韩版男士社会精神小伙短袖网络快手红人同款短衣短裤一身套装 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532125217679347_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532125986259930_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532126014105911_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532126037153797_240.jpg', '129', '258', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '25');
INSERT INTO `suit` VALUES ('6', '男夏装套装2017新款潮流青年韩版帅气休闲时尚男士个性短袖两件套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532121719797171_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532122357940437_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532122390506257_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532122421151602_240.jpg', '138', '269', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '22');
INSERT INTO `suit` VALUES ('7', '青年休闲西服套装男士薄款修身单西上衣服潮发型师韩版帅气小西装 1号色 竖条 165', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532116625951870_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532116646383510_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532116673502737_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532116536511597_240.jpg', '168', '336', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '25');
INSERT INTO `suit` VALUES ('8', '夏天短袖T恤男个性套装发型师潮流帅气上衣服男休闲五分裤两件套 色块套装T恤加裤子 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532107092742365_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532107624038708_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532107621378980_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532107628348107_240.jpg', '119', '238', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '38');
INSERT INTO `suit` VALUES ('9', '夏季男士五分袖时尚阔腿裤套装青年圆领修身T恤潮短袖五分裤 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445340510928846_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445352248882747_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445340984385492_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445352040589626_240.jpg', '99', '198', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.6分', '好男孩潮品铺', '45');
INSERT INTO `suit` VALUES ('10', '夏季男士五分袖时尚运动套装青年圆领修身套头T恤潮短袖短裤 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445319654985376_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445320166764360_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445320218689396_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445320283238931_240.jpg', '96', '192', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.6分', '好男孩潮品铺', '77');
INSERT INTO `suit` VALUES ('11', '夏季男士圆领短袖时尚套装T恤 青年打底衫大码五分裤运动服潮 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445297348245102_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445297853246456_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445297864378499_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445297886000444_240.jpg', '96', '192', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.6分', '好男孩潮品铺', '33');
INSERT INTO `suit` VALUES ('12', '春季男士七分袖运动套装2017青年修身圆领套头卫衣潮男装 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445293229281332_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445293271129573_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445293288849852_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05445292927469327_240.png', '116', '232', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.6分', '好男孩潮品铺', '0');
INSERT INTO `suit` VALUES ('13', '套装男早秋新款潮流翻领五分袖T恤韩版男士修九分裤两件套 黑色 M', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566278273920325_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566278294348962_60.jpg;https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566278314510289_60.jpg', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05566277789620108_240.jpg', '125', '250', '0', '黑色 白色 军绿色', 'M L XL XXL XXXL', '4.7分', '潮衣格', '4');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `uid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('1', 'admin', '987654321@qq.com', '<span style=\"background-color: rgb(249, 249, 249);\">123456789@qq.com</span>');
INSERT INTO `userlist` VALUES ('2', '13631243990', '111111', '<span style=\"background-color: rgb(249, 249, 249);\">123456789@qq.com</span>');
INSERT INTO `userlist` VALUES ('4', '13631243991', '111111', '<span style=\"background-color: rgb(249, 249, 249);\">123456789@qq.com</span>');
INSERT INTO `userlist` VALUES ('5', '13631243880', '111111', '<span style=\"background-color: rgb(249, 249, 249);\">123456789@qq.com</span>');
INSERT INTO `userlist` VALUES ('7', 'nihao', '111111', '123456789@qq.com');
SET FOREIGN_KEY_CHECKS=1;
