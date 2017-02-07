/*
Navicat MySQL Data Transfer

Source Server         : mxtt
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : jfinal_authority_mysql

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-09-29 23:45:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_cj_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_cj_dict`;
CREATE TABLE `sys_cj_dict` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `bm` varchar(60) DEFAULT NULL,
  `mc` varchar(200) DEFAULT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `qybz` char(1) DEFAULT 'Y',
  `xgbz` char(1) DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_cj_dict
-- ----------------------------
INSERT INTO `sys_cj_dict` VALUES ('1', '1', '层级数据字典', '0', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('2', 'GWLB', '岗位类别', '1', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('3', '01', '行政管理类', '2', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('4', '0101', '人力资源岗', '3', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('5', '0102', '财务管理岗', '3', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('6', '0103', '政务管理岗', '3', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('7', '02', '纳税评估类', '2', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('8', '0201', '办税服务岗', '7', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('9', '0202', '税法宣传咨询岗', '7', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('10', '0203', '权益维护岗', '7', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('11', '03', '征管评估类', '2', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('18', '0401', '稽查案源管理岗', '34', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('20', '0403', '稽查审理岗', '34', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('39', '0504', '数据处理岗', '21', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('23', '0101', '领军人才培养对象', '42', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('123', '0203', '货物劳务税管理', '60', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('124', '0113', '税收征管', '42', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('127', '0116', '督查内审', '42', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('65', '0206', '所得税管理', '60', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('66', '0207', '财务管理', '60', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('68', '0210', '税源管理', '60', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('69', '0213', '外语人才', '60', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('70', '0214', '进出口管理', '60', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('152', '0219', '巡视', '60', '19', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('153', '0220', '党务工作', '60', '20', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('142', '0308', '稽查', '155', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('159', '0310', '税源管理', '155', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('160', '0312', '国际税收', '155', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('161', '0313', '外语人才', '155', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('162', '0318', '监察', '155', '18', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('164', '0320', '党务管理', '155', '20', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('166', '04', '县局', '41', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('173', '0401', '文秘', '166', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('167', '0402', '税收科研', '166', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('194', '0411', '纳税服务', '166', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('179', '0414', '进出口管理', '166', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('181', '0416', '信息技术', '166', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('183', '0418', '监察', '166', '18', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('207', '0308', '其他', '199', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('223', 'JZJS', '兼职教师', '1', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('210', '0106', '行政管理', '224', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('233', '0101', '党委书记', '252', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('253', '0103', '党委委员', '252', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('241', '0203', '巡视专员', '255', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('242', '03', '调研员', '251', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('256', '0301', '调研员', '242', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('248', '0502', '党组成员、总会计师', '246', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('272', '0701', '职员', '271', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('286', '0910', '副分局长', '276', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('260', '010', '处长', '251', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('291', '01102', '副科长', '289', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('302', '01602', '副会长', '301', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('294', '01203', '副主任科员', '292', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('298', '01401', '办事员', '266', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('303', '017', '所长', '251', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('270', '01801', '站长', '305', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('306', '01802', '副站长', '305', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('314', '020', '督察员', '251', '20', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('316', '021', '顾问', '251', '21', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('317', '02101', '顾问', '316', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('337', '02302', '党组成员、纪检组长', '336', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('321', '02401', '校长', '340', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('347', '0104', '哲学博士学位', '343', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('327', '0109', '历史学博士学位', '343', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('328', '0112', '农学博士学位', '343', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('351', '0114', '军事学博士学位', '343', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('329', '0115', '管理学博士学位', '343', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('353', '0117', '兽医博士专业学位', '343', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('355', '0201', '哲学硕士学位', '322', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('356', '0202', '经济学硕士学位', '322', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('366', '0305', '文学学士学位', '344', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('377', '0306', '历史学学士学位', '344', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('406', '010', '农学', '388', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('370', '0217', '临床医学硕士专业学位 ', '322', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('395', '0223', '公共卫生硕士专业学位', '322', '23', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('386', '0311', '军事学学士学位', '344', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('401', '04', '法学', '388', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('409', '0401', '法学类', '401', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('432', '0901', '地质学类', '390', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('433', '01001', '植物生产类', '406', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('414', '01101', '基础医学', '407', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('12', '0301', '综合调查岗', '11', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('13', '0302', '情报管理岗', '11', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('14', '0303', '风险分析岗', '11', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('15', '0304', '纳税评估岗', '11', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('17', '0306', '税收分析岗', '11', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('47', '0107', '税收科研', '42', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('60', '02', '省局', '41', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('119', '0201', '文秘', '60', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('63', '0111', '收入规划核算', '42', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('125', '0114', '税收管理', '42', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('129', '0205', '大企业管理', '60', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('131', '0211', '纳税服务', '60', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('136', '0222', '注税行业管理', '60', '22', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('156', '0301', '文秘', '155', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('146', '0315', '督查内审', '155', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('171', '0104', '党工团青妇', '3', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('170', '0406', '所得税管理', '166', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('191', '0408', '稽查', '166', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('193', '0410', '税源管理', '166', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('198', 'KMLX', '科目类型', '1', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('213', '0107', '其他', '187', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('234', '0102', '党委副书记', '252', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('278', '0902', '党组书记、局长', '276', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('285', '0909', '分局长', '276', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('288', '01003', '处长、巡视专员', '260', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('290', '01101', '科长', '289', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('293', '01201', '科员', '292', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('296', '01301', '股长', '295', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('300', '01502', '副主任', '299', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('301', '016', '会长', '251', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('309', '01904', '四级执法员', '311', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('310', '01905', '五级执法员', '311', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('332', '01907', '七级执法员', '311', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('313', '01908', '助理执法员', '311', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('333', '01909', '见习执法员', '311', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('335', '02201', '话务员', '334', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('319', '02203', '其他', '334', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('342', 'ZGXW', '最高学位', '1', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('344', '03', '学士', '342', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('345', '0101', '博士后', '343', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('346', '0103', '博士', '343', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('326', '0107', '教育学博士学位', '343', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('357', '0204', '教育学硕士学位', '322', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('375', '0302', '经济学学士学位', '344', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('368', '0212', '管理学硕士学位', '322', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('381', '0215', '工程硕士专业学位', '322', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('383', '0219', '农业推广硕士专业学位', '322', '19', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('394', '0222', '口腔医学硕士专业学位', '322', '22', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('384', '0224', '军士硕士专业学位', '322', '24', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('396', '0308', '工学学士学位', '344', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('398', '0312', '管理学学士学位', '344', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('402', '05', '教育学', '388', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('403', '06', '文学', '388', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('404', '07', '历史学', '388', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('405', '08', '理学', '388', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('408', '0101', '哲学类', '399', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('412', '0501', '教育学类', '402', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('410', '0701', '历史学类', '404', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('431', '0801', '数学类', '405', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('16', '0305', '反避税调查岗', '11', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('35', '0404', '稽查执行岗', '34', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('37', '0502', '运行维护岗', '21', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('38', '0503', '软件开发岗', '21', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('133', '0215', '督查内审', '60', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('43', '0102', '大企业税收管理', '42', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('46', '0106', '政府采购', '42', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('134', '0216', '信息技术', '60', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('151', '0217', '人事管理', '60', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('154', '0221', '后勤服务', '60', '21', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('137', '0223', '绩效管理', '60', '23', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('155', '03', '市局', '41', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('138', '0303', '货物劳务税管理', '155', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('139', '0304', '法律法规', '155', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('158', '0305', '大企业管理', '155', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('140', '0306', '所得税管理', '155', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('145', '0314', '进出口管理', '155', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('148', '0317', '人事管理', '155', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('197', '0422', '注税行业管理', '166', '22', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('168', '0403', '货物劳务税管理', '166', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('192', '0409', '税收分析', '166', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('188', '02', '纳税服务', '198', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('204', '0104', '纪检监察', '187', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('214', '0201', '纳税服务', '188', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('218', '0304', '所得税管理业务', '199', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('219', '0305', '进出口管理业务', '199', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('221', '0401', '税务稽查', '200', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('225', '02', '市局兼职教师', '223', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('208', '03', '县局兼职教师', '223', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('209', '0103', '征管评估', '224', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('231', '0108', '党建理论', '224', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('232', '0109', '心理健康', '224', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('235', '0104', '机关党委书记', '252', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('239', '0201', '巡视员', '255', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('240', '0202', '副巡视员', '255', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('243', '0302', '副调研员', '242', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('257', '04', '经济师', '251', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('271', '07', '职员', '251', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('289', '011', '科长', '251', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('284', '0908', '党组书记、副局长', '276', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('299', '015', '主任', '251', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('297', '01302', '副股长', '295', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('334', '022', '临时人员', '251', '22', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('338', '02303', '纪检组副组长', '336', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('339', '02304', '纪检组长', '336', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('340', '024', '校长', '251', '24', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('343', '01', '博士', '342', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('360', '0208', '工学硕士学位', '322', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('365', '0303', '法学学士学位', '344', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('391', '0218', '工商管理硕士专业学位', '322', '18', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('393', '0221', '公共管理硕士专业学位', '322', '21', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('388', 'ZYMC', '专业名称', '1', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('399', '01', '哲学', '388', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('400', '02', '马克思主义理论学', '388', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('21', '05', '信息技术类', '2', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('36', '0501', '网络安全岗', '21', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('44', '0103', '人事', '42', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('45', '0104', '纪检监察', '42', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('25', '0105', '教育培训', '42', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('62', '0110', '货物劳务税', '42', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('64', '0112', '纳税服务', '42', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('128', '0117', '信息技术', '42', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('130', '0209', '税收分析', '60', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('132', '0212', '国际税收', '60', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('135', '0218', '监察', '60', '18', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('157', '0302', '税收科研', '155', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('141', '0307', '财务管理', '155', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('144', '0311', '纳税服务', '155', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('163', '0319', '巡视', '155', '19', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('175', '0404', '法律法规', '166', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('177', '0407', '财务管理', '166', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('195', '0412', '国际税收', '166', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('178', '0413', '外语人才', '166', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('180', '0415', '督查内审', '166', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('196', '0419', '巡视', '166', '19', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('186', '0423', '绩效管理', '166', '23', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('199', '03', '征管评估', '198', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('201', '0101', '办公文秘', '187', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('206', '0306', '国际税收业务', '199', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('212', '0105', '党建知识', '187', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('217', '0303', '货劳税管理业务', '199', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('226', '0101', '增值税管理', '224', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('227', '0102', '所得税管理', '224', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('229', '0105', '纳税服务', '224', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('230', '0107', '领导科学', '224', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('251', 'XZZW', '行政职务', '1', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('237', '0106', '机关党委常务副书记', '252', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('238', '0107', '党组书记', '252', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('254', '0108', '党组副书记', '252', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('255', '02', '巡视员', '251', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('246', '05', '会计师', '251', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('249', '06', '审计师', '251', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('250', '0602', '党组成员、总审计师', '249', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('273', '08', '主席', '251', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('274', '0802', '副主席', '273', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('277', '0901', '局长', '276', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('279', '0903', '党组副书记、局长', '276', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('280', '0904', '稽查局长', '276', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('281', '0905', '稽查副局长', '276', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('283', '0907', '党组成员、副局长', '276', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('287', '01001', '处长', '260', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('295', '013', '股长', '251', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('266', '014', '办事员', '251', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('267', '01501', '主任', '299', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('304', '01702', '副所长', '303', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('305', '018', '站长', '251', '18', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('307', '01901', '一级执法员', '311', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('312', '01902', '二级执法员', '311', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('308', '01903', '三级执法员', '311', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('331', '01906', '六级执法员', '311', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('315', '02001', '督察专员', '314', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('336', '023', '纪检组长', '251', '23', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('341', '02402', '副校长', '340', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('323', '0102', '名誉博士', '343', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('324', '0105', '经济学博士学位', '343', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('325', '0106', '法学博士学位', '343', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('348', '0108', '文学博士学位', '343', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('350', '0111', '工学博士学位', '343', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('374', '0301', '哲学学士学位', '344', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('371', '0116', '临床医学博士专业学位', '343', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('354', '0118', '口腔医学博士专业学位', '343', '18', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('372', '0203', '法学硕士学位', '322', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('358', '0205', '文学硕士学位', '322', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('373', '0206', '历史学硕士学位', '322', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('379', '0211', '军事学硕士学位', '322', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('369', '0214', '教育硕士专业学位', '322', '14', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('392', '0220', '兽医硕士专业学位', '322', '20', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('385', '0309', '农学学士学位', '344', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('397', '0310', '医学学士学位', '344', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('389', '03', '经济学', '388', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('407', '011', '医学', '388', '11', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('34', '04', '税务稽查类', '2', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('19', '0402', '稽查实施岗', '34', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('120', '0202', '税收科研', '60', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('41', 'ZYRCLB', '专业人才类别', '1', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('42', '01', '总局', '41', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('26', '0108', '文秘综合', '42', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('27', '0109', '税收法律政策', '42', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('143', '0309', '税收分析', '155', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('61', '0204', '法律法规', '60', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('126', '0115', '财务管理', '42', '15', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('67', '0208', '稽查', '60', '8', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('147', '0316', '信息技术', '155', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('149', '0321', '后勤服务', '155', '21', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('150', '0322', '注税行业管理', '155', '22', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('165', '0323', '绩效管理', '155', '23', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('184', '0420', '党务工作', '166', '20', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('176', '0405', '大企业管理', '166', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('182', '0417', '人事管理', '166', '17', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('185', '0421', '后勤服务', '166', '21', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('187', '01', '行政管理', '198', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('200', '04', '税务稽查', '198', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('189', '05', '信息技术', '198', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('203', '0102', '人事教育', '187', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('211', '0103', '财务管理', '187', '3', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('205', '0106', '督查内审', '187', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('215', '0301', '征收管理', '199', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('216', '0302', '政策法规', '199', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('220', '0307', '大企业管理业务', '199', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('222', '0501', '信息技术', '189', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('224', '01', '省局兼职教师', '223', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('228', '0104', '税务稽查', '224', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('252', '01', '书记', '251', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('236', '0105', '机关党委副书记', '252', '5', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('244', '0401', '总经济师', '257', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('245', '0402', '党组成员、总经济师', '257', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('247', '0501', '总会计师', '246', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('258', '0601', '总审计师', '249', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('259', '0801', '主席', '273', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('276', '09', '局长', '251', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('282', '0906', '党组副书记、副局长', '276', '6', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('263', '01002', '副处长', '260', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('292', '012', '科员', '251', '12', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('265', '01202', '主任科员', '292', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('268', '01601', '会长', '301', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('269', '01701', '所长', '303', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('311', '019', '行政执法类公务员', '251', '19', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('318', '02202', '工勤人员', '334', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('320', '02301', '党组成员', '336', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('322', '02', '硕士', '342', '2', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('349', '0110', '理学博士学位', '343', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('330', '0113', '医学博士学位', '343', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('359', '0207', '理学硕士学位', '322', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('361', '0209', '农学硕士学位', '322', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('362', '0210', '医学硕士学位', '322', '10', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('380', '0213', '法律硕士专业学位', '322', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('387', '0313', '建筑学学士学位', '344', '13', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('376', '0304', '教育学学士学位', '344', '4', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('367', '0307', '理学学士学位', '344', '7', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('382', '0216', '建筑学硕士专业学位', '322', '16', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('390', '09', '工学', '388', '9', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('411', '0301', '经济学类', '389', '1', 'Y', 'Y');
INSERT INTO `sys_cj_dict` VALUES ('413', '0601', '中国语言文学类', '403', '1', 'Y', 'Y');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `parent_id` bigint(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK1DBDA7D2FCC01B00` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15200000001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('15200000000', '根目录不能删除。', '某某总公司', '0', '0');
INSERT INTO `sys_dept` VALUES ('15201000000', '部门描述不能为空', 'A市分公司', '15200000000', '1');
INSERT INTO `sys_dept` VALUES ('15202000000', '部门描述不能为空', 'B市分公司', '15200000000', '2');
INSERT INTO `sys_dept` VALUES ('15203000000', '部门描述不能为空', 'C市分公司', '15200000000', '3');
INSERT INTO `sys_dept` VALUES ('15204000000', '部门描述不能为空', 'D市分公司', '15200000000', '4');
INSERT INTO `sys_dept` VALUES ('15205000000', '部门描述不能为空', 'E市分公司', '15200000000', '5');
INSERT INTO `sys_dept` VALUES ('15211000000', '部门描述不能为空', '总部办公室', '15200000000', '6');
INSERT INTO `sys_dept` VALUES ('15212000000', '部门描述不能为空', '总部销售部', '15200000000', '7');
INSERT INTO `sys_dept` VALUES ('15213000000', '部门描述不能为空', '总部财务室', '15200000000', '8');
INSERT INTO `sys_dept` VALUES ('15214000000', '部门描述不能为空', '总部后勤保障中心', '15200000000', '9');
INSERT INTO `sys_dept` VALUES ('15201110000', '部门描述不能为空', 'A市分公司办公室', '15201000000', '10');
INSERT INTO `sys_dept` VALUES ('15201120000', '部门描述不能为空', 'A市分公司销售部', '15201000000', '11');
INSERT INTO `sys_dept` VALUES ('15202110000', '部门描述不能为空', 'B市分公司办公室', '15202000000', '12');
INSERT INTO `sys_dept` VALUES ('15202120000', '部门描述不能为空', 'B市分公司销售部', '15202000000', '13');
INSERT INTO `sys_dept` VALUES ('15203110000', '部门描述不能为空', 'C市分公司办公室', '15203000000', '14');
INSERT INTO `sys_dept` VALUES ('15203120000', '部门描述不能为空', 'C市分公司销售部', '15203000000', '15');
INSERT INTO `sys_dept` VALUES ('15204110000', '部门描述不能为空', 'D市分公司办公室', '15204000000', '16');
INSERT INTO `sys_dept` VALUES ('15204120000', '部门描述不能为空', 'D市分公司销售部', '15204000000', '17');
INSERT INTO `sys_dept` VALUES ('15205110000', '部门描述不能为空', 'E市分公司办公室', '15205000000', '18');
INSERT INTO `sys_dept` VALUES ('15205120000', '部门描述不能为空', 'E市分公司销售部', '15205000000', '19');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `request_name` varchar(100) DEFAULT NULL,
  `request_url` varchar(500) DEFAULT NULL,
  `url_para` varchar(500) DEFAULT NULL,
  `old_values` varchar(1000) DEFAULT NULL,
  `new_values` varchar(1000) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '系统管理员', null, '124', '的地方', '的', null, '对方', null);
INSERT INTO `sys_log` VALUES ('2', 'admin', '系统管理员', '127.0.0.1', '系统管理员', '/user/edit', null, null, '{\"id\":[\"33\"],\"dept_id\":[\"27\"],\"username\":[\"youzd\"],\"nickname\":[\"dasfdsf\"],\"dept_name\":[\"办公室\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"N\"]}', '2015-09-16 23:54:06');
INSERT INTO `sys_log` VALUES ('3', 'admin', '系统管理员', '127.0.0.1', null, '/user/edit', null, null, '{\"id\":[\"39\"],\"dept_id\":[\"1\"],\"username\":[\"当时发生的\"],\"nickname\":[\"当时发生的1\"],\"dept_name\":[\"某某总公司\"],\"zuoji\":[\"0585-3679654\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541986\"],\"status\":[\"Y\"]}', '2015-09-17 00:20:31');
INSERT INTO `sys_log` VALUES ('4', 'admin', '系统管理员', '127.0.0.1', null, '/user/edit', null, null, '{\"id\":[\"1\"],\"dept_id\":[\"1\"],\"username\":[\"admin\"],\"nickname\":[\"系统管理员\"],\"dept_name\":[\"某某总公司\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-09-17 00:22:03');
INSERT INTO `sys_log` VALUES ('5', 'admin', '系统管理员', '127.0.0.1', '用户编辑', '/user/edit', null, null, '{\"id\":[\"38\"],\"dept_id\":[\"2\"],\"username\":[\"bbb\"],\"nickname\":[\"bbb\"],\"dept_name\":[\"北京分部\"],\"zuoji\":[\"0858-1367421\"],\"shouji\":[\"15121769991\"],\"duanhao\":[\"518695\"],\"status\":[\"N\"]}', '2015-09-17 00:22:28');
INSERT INTO `sys_log` VALUES ('6', 'admin', '系统管理员', '127.0.0.1', '用户编辑', '/user/edit', null, null, '{\"id\":[\"38\"],\"dept_id\":[\"2\"],\"username\":[\"bbb\"],\"nickname\":[\"bbb\"],\"dept_name\":[\"北京分部\"],\"zuoji\":[\"0858-1367421\"],\"shouji\":[\"15121769991\"],\"duanhao\":[\"518695\"],\"status\":[\"N\"]}', '2015-09-17 00:37:38');
INSERT INTO `sys_log` VALUES ('7', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, null, '{\"id\":[\"31\"],\"dept_id\":[\"25\"],\"username\":[\"fengx\"],\"nickname\":[\"adf\"],\"dept_name\":[\"贵州分部\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-09-17 23:38:11');
INSERT INTO `sys_log` VALUES ('8', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, null, '{\"id\":[\"31\"],\"dept_id\":[\"25\"],\"username\":[\"fengx\"],\"nickname\":[\"adf\"],\"dept_name\":[\"贵州分部\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-09-17 23:38:17');
INSERT INTO `sys_log` VALUES ('9', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, null, '{\"id\":[\"1\"],\"dept_id\":[\"1\"],\"username\":[\"admin\"],\"nickname\":[\"系统管理员\"],\"dept_name\":[\"某某总公司\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-09-17 23:39:11');
INSERT INTO `sys_log` VALUES ('10', 'admin', '系统管理员', '127.0.0.1', '用户添加', '/user/add', null, null, '{\"id\":[\"\"],\"dept_id\":[\"52\"],\"username\":[\"test\"],\"nickname\":[\"test\"],\"dept_name\":[\"信息中心\"],\"zuoji\":[\"123456788555\"],\"shouji\":[\"11111111111\"],\"duanhao\":[\"222222\"],\"status\":[\"Y\"]}', '2015-09-17 23:52:09');
INSERT INTO `sys_log` VALUES ('11', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":40,\"dept_id\":52,\"username\":\"test\",\"updatetime\":\"2015-09-17 23:52:09\",\"status\":\"Y\",\"zuoji\":\"123456788555\",\"nickname\":\"test\",\"shouji\":\"11111111111\",\"duanhao\":\"222222\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"salt\":null}', '{\"id\":[\"40\"],\"dept_id\":[\"52\"],\"username\":[\"test1\"],\"nickname\":[\"test1\"],\"dept_name\":[\"信息中心\"],\"zuoji\":[\"123456788555\"],\"shouji\":[\"11111111111\"],\"duanhao\":[\"222222\"],\"status\":[\"Y\"]}', '2015-09-17 23:53:14');
INSERT INTO `sys_log` VALUES ('12', 'admin', '系统管理员', '127.0.0.1', '用户删除', '/user/delete', null, 'null', '{\"delIds\":[\"38\"]}', '2015-09-17 23:54:00');
INSERT INTO `sys_log` VALUES ('13', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, 'null', '{\"id\":[\"71\"],\"parent_id\":[\"67\"],\"name\":[\"产品集版本管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"\\/\"],\"order_id\":[\"0\"],\"description\":[\"ddd\"]}', '2015-09-18 00:41:20');
INSERT INTO `sys_log` VALUES ('14', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, 'null', '{\"id\":[\"73\"],\"parent_id\":[\"67\"],\"name\":[\"产品包版本管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"\\/\"],\"order_id\":[\"0\"],\"description\":[\"ddddd\"]}', '2015-09-18 00:41:33');
INSERT INTO `sys_log` VALUES ('15', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/role/edit', null, 'null', '{\"id\":[\"14\"],\"name\":[\"财务科\"],\"order_id\":[\"3\"],\"description\":[\"角色描述\"]}', '2015-09-18 00:41:43');
INSERT INTO `sys_log` VALUES ('16', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":1,\"dept_id\":1,\"username\":\"admin\",\"updatetime\":\"2015-09-17 23:39:11\",\"status\":\"Y\",\"zuoji\":\"0858-3679655\",\"nickname\":\"系统管理员\",\"shouji\":\"15121769990\",\"duanhao\":\"541983\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"salt\":\"58f48c52d7cba847\"}', '{\"id\":[\"1\"],\"dept_id\":[\"1\"],\"username\":[\"admin\"],\"nickname\":[\"系统管理员\"],\"dept_name\":[\"某某总公司\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-09-18 00:41:50');
INSERT INTO `sys_log` VALUES ('17', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/dept/edit', null, 'null', '{\"id\":[\"30\"],\"parent_id\":[\"23\"],\"name\":[\"一区办公室\"],\"order_id\":[\"10\"],\"description\":[\"部门描述不能为空1\"]}', '2015-09-18 00:42:05');
INSERT INTO `sys_log` VALUES ('18', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":5,\"description\":\"dddd\",\"name\":\"菜单管理\",\"order_id\":0,\"url\":\"\\/menu\",\"iconCls\":\"icon-hamburg-category\",\"parent_id\":2}', '{\"id\":[\"5\"],\"parent_id\":[\"2\"],\"name\":[\"菜单管理\"],\"iconCls\":[\"icon-hamburg-category\"],\"url\":[\"\\/menu\"],\"order_id\":[\"0\"],\"description\":[\"dddd\"]}', '2015-09-18 00:46:21');
INSERT INTO `sys_log` VALUES ('19', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/role/edit', null, '{\"id\":18,\"description\":\"角色描述\",\"name\":\"监察室领导岗\",\"order_id\":2}', '{\"id\":[\"18\"],\"name\":[\"监察室领导岗\"],\"order_id\":[\"2\"],\"description\":[\"角色描述\"]}', '2015-09-18 00:46:27');
INSERT INTO `sys_log` VALUES ('20', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":24,\"dept_id\":26,\"username\":\"ldd\",\"updatetime\":\"2015-09-05 17:52:12\",\"status\":\"Y\",\"zuoji\":\"0858-3679655\",\"nickname\":\"dfas\",\"shouji\":\"15121769990\",\"duanhao\":\"541983\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"salt\":\"0bdffc611ac3adbd\"}', '{\"id\":[\"24\"],\"dept_id\":[\"26\"],\"username\":[\"ldd\"],\"nickname\":[\"dfas\"],\"dept_name\":[\"云南分部\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-09-18 00:46:35');
INSERT INTO `sys_log` VALUES ('21', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/dept/edit', null, '{\"id\":52,\"description\":\"123666\",\"name\":\"信息中心\",\"order_id\":2,\"parent_id\":2}', '{\"id\":[\"52\"],\"parent_id\":[\"2\"],\"name\":[\"信息中心\"],\"order_id\":[\"2\"],\"description\":[\"123666\"]}', '2015-09-18 00:46:41');
INSERT INTO `sys_log` VALUES ('22', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/loginout', null, null, null, '2015-09-19 08:52:45');
INSERT INTO `sys_log` VALUES ('23', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/system/loginout', null, null, null, '2015-09-19 09:01:21');
INSERT INTO `sys_log` VALUES ('24', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 09:13:40');
INSERT INTO `sys_log` VALUES ('25', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-09-19 09:14:16');
INSERT INTO `sys_log` VALUES ('26', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 09:16:27');
INSERT INTO `sys_log` VALUES ('27', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"logEntity\\/list\",\"iconCls\":\"icon-item\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hambuyrg-future-projects\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 09:32:50');
INSERT INTO `sys_log` VALUES ('28', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-09-19 09:33:05');
INSERT INTO `sys_log` VALUES ('29', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 09:33:39');
INSERT INTO `sys_log` VALUES ('30', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hambuyrg-future-projects\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-future-projects\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 09:34:13');
INSERT INTO `sys_log` VALUES ('31', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-future-projects\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-future-projects\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 09:34:15');
INSERT INTO `sys_log` VALUES ('32', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-09-19 09:34:37');
INSERT INTO `sys_log` VALUES ('33', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 09:34:43');
INSERT INTO `sys_log` VALUES ('34', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 09:35:32');
INSERT INTO `sys_log` VALUES ('35', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-future-projects\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-full-time\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 09:37:02');
INSERT INTO `sys_log` VALUES ('36', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-full-time\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-future-projects\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 09:37:54');
INSERT INTO `sys_log` VALUES ('37', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-future-projects\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-cv\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 09:38:43');
INSERT INTO `sys_log` VALUES ('38', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-09-19 09:51:56');
INSERT INTO `sys_log` VALUES ('39', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 09:52:07');
INSERT INTO `sys_log` VALUES ('40', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 11:20:00');
INSERT INTO `sys_log` VALUES ('41', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 11:36:54');
INSERT INTO `sys_log` VALUES ('42', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-09-19 12:22:05');
INSERT INTO `sys_log` VALUES ('43', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 12:22:06');
INSERT INTO `sys_log` VALUES ('44', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 22:21:47');
INSERT INTO `sys_log` VALUES ('45', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-19 22:29:30');
INSERT INTO `sys_log` VALUES ('46', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-cv\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-woocons-document\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 22:55:30');
INSERT INTO `sys_log` VALUES ('47', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-woocons-document\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-munich-attibutes\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 22:57:02');
INSERT INTO `sys_log` VALUES ('48', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-munich-attibutes\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-attibutes\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 22:58:30');
INSERT INTO `sys_log` VALUES ('49', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-attibutes\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-attibutes\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 22:58:32');
INSERT INTO `sys_log` VALUES ('50', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-attibutes\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-document-library\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 22:59:58');
INSERT INTO `sys_log` VALUES ('51', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-document-library\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-library\"],\"url\":[\"\\/log\"],\"order_id\":[\"0\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 23:00:32');
INSERT INTO `sys_log` VALUES ('52', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":4,\"description\":\"dddd\",\"name\":\"角色管理\",\"order_id\":1,\"url\":\"\\/role\",\"iconCls\":\"icon-hamburg-lock\",\"parent_id\":2}', '{\"id\":[\"4\"],\"parent_id\":[\"2\"],\"name\":[\"角色管理\"],\"iconCls\":[\"icon-hamburg-hire-me\"],\"url\":[\"\\/role\"],\"order_id\":[\"1\"],\"description\":[\"dddd\"]}', '2015-09-19 23:03:15');
INSERT INTO `sys_log` VALUES ('53', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":4,\"description\":\"dddd\",\"name\":\"角色管理\",\"order_id\":1,\"url\":\"\\/role\",\"iconCls\":\"icon-hamburg-hire-me\",\"parent_id\":2}', '{\"id\":[\"4\"],\"parent_id\":[\"2\"],\"name\":[\"角色管理\"],\"iconCls\":[\"icon-hamburg-lock\"],\"url\":[\"\\/role\"],\"order_id\":[\"1\"],\"description\":[\"dddd\"]}', '2015-09-19 23:04:46');
INSERT INTO `sys_log` VALUES ('54', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"组件管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"组件管理\"],\"iconCls\":[\"icon-woocons-lock-closed\"],\"url\":[\"#\"],\"order_id\":[\"2\"],\"description\":[\"\"]}', '2015-09-19 23:08:12');
INSERT INTO `sys_log` VALUES ('55', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"组件管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-woocons-lock-closed\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"组件管理\"],\"iconCls\":[\"icon-woocons-lockclosed\"],\"url\":[\"#\"],\"order_id\":[\"2\"],\"description\":[\"\"]}', '2015-09-19 23:08:46');
INSERT INTO `sys_log` VALUES ('56', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"组件管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-woocons-lockclosed\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"组件管理\"],\"iconCls\":[\"icon-woocons-lockclosed\"],\"url\":[\"#\"],\"order_id\":[\"2\"],\"description\":[\"\"]}', '2015-09-19 23:08:47');
INSERT INTO `sys_log` VALUES ('57', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"组件管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-woocons-lockclosed\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"组件管理\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"#\"],\"order_id\":[\"2\"],\"description\":[\"\"]}', '2015-09-19 23:10:48');
INSERT INTO `sys_log` VALUES ('58', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"组件管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"修改密码\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"#\"],\"order_id\":[\"2\"],\"description\":[\"\"]}', '2015-09-19 23:13:18');
INSERT INTO `sys_log` VALUES ('59', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":5,\"description\":\"dddd\",\"name\":\"菜单管理\",\"order_id\":0,\"url\":\"\\/menu\",\"iconCls\":\"icon-hamburg-category\",\"parent_id\":2}', '{\"id\":[\"5\"],\"parent_id\":[\"2\"],\"name\":[\"菜单管理\"],\"iconCls\":[\"icon-hamburg-category\"],\"url\":[\"\\/menu\"],\"order_id\":[\"1\"],\"description\":[\"dddd\"]}', '2015-09-19 23:14:22');
INSERT INTO `sys_log` VALUES ('60', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":4,\"description\":\"dddd\",\"name\":\"角色管理\",\"order_id\":1,\"url\":\"\\/role\",\"iconCls\":\"icon-hamburg-lock\",\"parent_id\":2}', '{\"id\":[\"4\"],\"parent_id\":[\"2\"],\"name\":[\"角色管理\"],\"iconCls\":[\"icon-hamburg-lock\"],\"url\":[\"\\/role\"],\"order_id\":[\"2\"],\"description\":[\"dddd\"]}', '2015-09-19 23:14:35');
INSERT INTO `sys_log` VALUES ('61', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":3,\"description\":\"多大的\",\"name\":\"用户管理\",\"order_id\":0,\"url\":\"\\/user\",\"iconCls\":\"icon-hamburg-customers\",\"parent_id\":2}', '{\"id\":[\"3\"],\"parent_id\":[\"2\"],\"name\":[\"用户管理\"],\"iconCls\":[\"icon-hamburg-customers\"],\"url\":[\"\\/user\"],\"order_id\":[\"4\"],\"description\":[\"多大的\"]}', '2015-09-19 23:14:48');
INSERT INTO `sys_log` VALUES ('62', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":0,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-library\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-hamburg-library\"],\"url\":[\"\\/log\"],\"order_id\":[\"5\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-09-19 23:15:16');
INSERT INTO `sys_log` VALUES ('63', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"修改密码\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"修改密码\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"#\"],\"order_id\":[\"6\"],\"description\":[\"\"]}', '2015-09-19 23:15:22');
INSERT INTO `sys_log` VALUES ('64', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"修改密码\",\"order_id\":6,\"url\":\"#\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"修改密码\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"user\\/pwd\"],\"order_id\":[\"6\"],\"description\":[\"\"]}', '2015-09-19 23:16:47');
INSERT INTO `sys_log` VALUES ('65', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"修改密码\",\"order_id\":6,\"url\":\"user\\/pwd\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"修改密码\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"\\/user\\/pwd\"],\"order_id\":[\"6\"],\"description\":[\"\"]}', '2015-09-19 23:16:55');
INSERT INTO `sys_log` VALUES ('66', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"修改密码\",\"order_id\":6,\"url\":\"\\/user\\/pwd\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"密码修改\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"\\/user\\/pwd\"],\"order_id\":[\"6\"],\"description\":[\"\"]}', '2015-09-19 23:29:11');
INSERT INTO `sys_log` VALUES ('67', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-20 00:03:53');
INSERT INTO `sys_log` VALUES ('68', 'mxtt', 'mxtt1', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-20 00:10:30');
INSERT INTO `sys_log` VALUES ('69', 'mxtt', 'mxtt1', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-20 00:44:58');
INSERT INTO `sys_log` VALUES ('70', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-20 15:14:52');
INSERT INTO `sys_log` VALUES ('71', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-20 15:16:20');
INSERT INTO `sys_log` VALUES ('72', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/dept/edit', null, '{\"id\":54,\"description\":\"234；啦啦啦\",\"name\":\"234\",\"order_id\":0,\"parent_id\":2}', '{\"id\":[\"54\"],\"parent_id\":[\"2\"],\"name\":[\"234\"],\"order_id\":[\"0\"],\"description\":[\"234；啦啦啦\"]}', '2015-09-20 15:21:53');
INSERT INTO `sys_log` VALUES ('73', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":67,\"description\":\"\",\"name\":\"版本管理\",\"order_id\":3,\"url\":\"\\/\",\"iconCls\":\"icon-item\",\"parent_id\":1}', '{\"id\":[\"67\"],\"parent_id\":[\"1\"],\"name\":[\"版本管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"\\/\"],\"order_id\":[\"3\"],\"description\":[\"版本管理\"]}', '2015-09-20 15:22:38');
INSERT INTO `sys_log` VALUES ('74', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"上传系统资源。\",\"name\":\"资源管理\",\"order_id\":0,\"url\":\"\\/resource\\/list\",\"iconCls\":\"icon-item\",\"parent_id\":1}', '{\"id\":[\"62\"],\"parent_id\":[\"1\"],\"name\":[\"资源管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"\\/resource\\/list\"],\"order_id\":[\"0\"],\"description\":[\"上传系统资源。\"]}', '2015-09-20 15:23:14');
INSERT INTO `sys_log` VALUES ('75', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-09-20 15:24:25');
INSERT INTO `sys_log` VALUES ('76', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":2,\"description\":\"系统管理\",\"name\":\"系统管理\",\"order_id\":1,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"2\"],\"parent_id\":[\"1\"],\"name\":[\"系统管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"#\"],\"order_id\":[\"0\"],\"description\":[\"系统管理\"]}', '2015-09-20 15:24:45');
INSERT INTO `sys_log` VALUES ('77', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"上传系统资源。\",\"name\":\"资源管理\",\"order_id\":0,\"url\":\"\\/resource\\/list\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"62\"],\"parent_id\":[\"1\"],\"name\":[\"资源管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"\\/resource\\/list\"],\"order_id\":[\"1\"],\"description\":[\"上传系统资源。\"]}', '2015-09-20 15:24:52');
INSERT INTO `sys_log` VALUES ('78', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":67,\"description\":\"版本管理\",\"name\":\"版本管理\",\"order_id\":3,\"url\":\"\\/\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"67\"],\"parent_id\":[\"1\"],\"name\":[\"版本管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"\\/\"],\"order_id\":[\"2\"],\"description\":[\"版本管理\"]}', '2015-09-20 15:24:59');
INSERT INTO `sys_log` VALUES ('79', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":77,\"description\":\"test\",\"name\":\"根测试\",\"order_id\":4,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"77\"],\"parent_id\":[\"1\"],\"name\":[\"根测试\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"#\"],\"order_id\":[\"3\"],\"description\":[\"test\"]}', '2015-09-20 15:25:07');
INSERT INTO `sys_log` VALUES ('80', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 12:16:36');
INSERT INTO `sys_log` VALUES ('81', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 12:17:58');
INSERT INTO `sys_log` VALUES ('82', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":79,\"description\":null,\"name\":\"按钮添加测试\",\"order_id\":0,\"url\":\"#\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"79\"],\"parent_id\":[\"62\"],\"name\":[\"字典管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"\\/dict\"],\"order_id\":[\"6\"],\"description\":[\"数据字典管理\"]}', '2015-10-07 12:41:48');
INSERT INTO `sys_log` VALUES ('83', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"\",\"name\":\"密码修改\",\"order_id\":6,\"url\":\"\\/user\\/pwd\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"密码修改\"],\"iconCls\":[\"icon-cologne-lock\"],\"url\":[\"\\/user\\/pwd\"],\"order_id\":[\"7\"],\"description\":[\"用户密码修改\"]}', '2015-10-07 12:42:21');
INSERT INTO `sys_log` VALUES ('84', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 13:22:24');
INSERT INTO `sys_log` VALUES ('85', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 13:45:56');
INSERT INTO `sys_log` VALUES ('86', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 13:46:02');
INSERT INTO `sys_log` VALUES ('87', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 13:53:27');
INSERT INTO `sys_log` VALUES ('88', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 14:10:44');
INSERT INTO `sys_log` VALUES ('89', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 15:16:28');
INSERT INTO `sys_log` VALUES ('90', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 16:34:35');
INSERT INTO `sys_log` VALUES ('91', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 16:39:49');
INSERT INTO `sys_log` VALUES ('92', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 21:36:15');
INSERT INTO `sys_log` VALUES ('93', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 21:53:05');
INSERT INTO `sys_log` VALUES ('94', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 21:59:48');
INSERT INTO `sys_log` VALUES ('95', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 22:03:40');
INSERT INTO `sys_log` VALUES ('96', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 22:04:39');
INSERT INTO `sys_log` VALUES ('97', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 22:47:23');
INSERT INTO `sys_log` VALUES ('98', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 22:55:21');
INSERT INTO `sys_log` VALUES ('99', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-07 22:56:20');
INSERT INTO `sys_log` VALUES ('100', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 21:29:30');
INSERT INTO `sys_log` VALUES ('101', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 21:30:01');
INSERT INTO `sys_log` VALUES ('102', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 22:34:32');
INSERT INTO `sys_log` VALUES ('103', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 22:42:21');
INSERT INTO `sys_log` VALUES ('104', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 23:45:37');
INSERT INTO `sys_log` VALUES ('105', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 23:46:53');
INSERT INTO `sys_log` VALUES ('106', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-19 23:58:52');
INSERT INTO `sys_log` VALUES ('107', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":2,\"description\":\"系统管理\",\"name\":\"系统管理\",\"order_id\":0,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"2\"],\"parent_id\":[\"1\"],\"name\":[\"系统管理\"],\"iconCls\":[\"icon-wrench\"],\"url\":[\"#\"],\"order_id\":[\"0\"],\"description\":[\"系统管理\"]}', '2015-10-20 00:15:31');
INSERT INTO `sys_log` VALUES ('108', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":18,\"description\":\"组织机构管理\",\"name\":\"部门管理\",\"order_id\":0,\"url\":\"\\/dept\",\"iconCls\":\"icon-hamburg-sitemap\",\"parent_id\":2}', '{\"id\":[\"18\"],\"parent_id\":[\"2\"],\"name\":[\"部门管理\"],\"iconCls\":[\"icon-chart-organisation\"],\"url\":[\"\\/dept\"],\"order_id\":[\"0\"],\"description\":[\"组织机构管理\"]}', '2015-10-20 00:16:37');
INSERT INTO `sys_log` VALUES ('109', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":5,\"description\":\"dddd\",\"name\":\"菜单管理\",\"order_id\":1,\"url\":\"\\/menu\",\"iconCls\":\"icon-hamburg-category\",\"parent_id\":2}', '{\"id\":[\"5\"],\"parent_id\":[\"2\"],\"name\":[\"菜单管理\"],\"iconCls\":[\"icon-chart-organisation\"],\"url\":[\"\\/menu\"],\"order_id\":[\"1\"],\"description\":[\"dddd\"]}', '2015-10-20 00:17:05');
INSERT INTO `sys_log` VALUES ('110', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":4,\"description\":\"dddd\",\"name\":\"角色管理\",\"order_id\":2,\"url\":\"\\/role\",\"iconCls\":\"icon-hamburg-lock\",\"parent_id\":2}', '{\"id\":[\"4\"],\"parent_id\":[\"2\"],\"name\":[\"角色管理\"],\"iconCls\":[\"icon-user-group\"],\"url\":[\"\\/role\"],\"order_id\":[\"2\"],\"description\":[\"dddd\"]}', '2015-10-20 00:17:38');
INSERT INTO `sys_log` VALUES ('111', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":3,\"description\":\"多大的\",\"name\":\"用户管理\",\"order_id\":4,\"url\":\"\\/user\",\"iconCls\":\"icon-hamburg-customers\",\"parent_id\":2}', '{\"id\":[\"3\"],\"parent_id\":[\"2\"],\"name\":[\"用户管理\"],\"iconCls\":[\"icon-users\"],\"url\":[\"\\/user\"],\"order_id\":[\"4\"],\"description\":[\"多大的\"]}', '2015-10-20 00:17:56');
INSERT INTO `sys_log` VALUES ('112', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":5,\"url\":\"\\/log\",\"iconCls\":\"icon-hamburg-library\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-application-osx-error\"],\"url\":[\"\\/log\"],\"order_id\":[\"5\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2015-10-20 00:18:25');
INSERT INTO `sys_log` VALUES ('113', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":79,\"description\":\"数据字典管理\",\"name\":\"字典管理\",\"order_id\":6,\"url\":\"\\/dict\",\"iconCls\":\"icon-item\",\"parent_id\":2}', '{\"id\":[\"79\"],\"parent_id\":[\"2\"],\"name\":[\"字典管理\"],\"iconCls\":[\"icon-book\"],\"url\":[\"\\/dict\"],\"order_id\":[\"6\"],\"description\":[\"数据字典管理\"]}', '2015-10-20 00:18:51');
INSERT INTO `sys_log` VALUES ('114', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"用户密码修改\",\"name\":\"密码修改\",\"order_id\":7,\"url\":\"\\/user\\/pwd\",\"iconCls\":\"icon-cologne-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"密码修改\"],\"iconCls\":[\"icon-edit\"],\"url\":[\"\\/user\\/pwd\"],\"order_id\":[\"7\"],\"description\":[\"用户密码修改\"]}', '2015-10-20 00:19:29');
INSERT INTO `sys_log` VALUES ('115', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"用户密码修改\",\"name\":\"密码修改\",\"order_id\":7,\"url\":\"\\/user\\/pwd\",\"iconCls\":\"icon-edit\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"密码修改\"],\"iconCls\":[\"icon-lock_edit\"],\"url\":[\"\\/user\\/pwd\"],\"order_id\":[\"7\"],\"description\":[\"用户密码修改\"]}', '2015-10-20 00:24:34');
INSERT INTO `sys_log` VALUES ('116', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"用户密码修改\",\"name\":\"密码修改\",\"order_id\":7,\"url\":\"\\/user\\/pwd\",\"iconCls\":\"icon-lock_edit\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"密码修改\"],\"iconCls\":[\"icon-lock\"],\"url\":[\"\\/user\\/pwd\"],\"order_id\":[\"7\"],\"description\":[\"用户密码修改\"]}', '2015-10-20 00:25:06');
INSERT INTO `sys_log` VALUES ('117', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":18,\"description\":\"组织机构管理\",\"name\":\"部门管理\",\"order_id\":0,\"url\":\"\\/dept\",\"iconCls\":\"icon-chart-organisation\",\"parent_id\":2}', '{\"id\":[\"18\"],\"parent_id\":[\"2\"],\"name\":[\"部门管理\"],\"iconCls\":[\"icon-organization\"],\"url\":[\"\\/dept\"],\"order_id\":[\"0\"],\"description\":[\"组织机构管理\"]}', '2015-10-20 00:25:58');
INSERT INTO `sys_log` VALUES ('118', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 20:57:38');
INSERT INTO `sys_log` VALUES ('119', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 21:22:52');
INSERT INTO `sys_log` VALUES ('120', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 21:24:06');
INSERT INTO `sys_log` VALUES ('121', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 21:31:05');
INSERT INTO `sys_log` VALUES ('122', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-20 21:46:03');
INSERT INTO `sys_log` VALUES ('123', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 21:46:14');
INSERT INTO `sys_log` VALUES ('124', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-20 21:48:42');
INSERT INTO `sys_log` VALUES ('125', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 21:48:52');
INSERT INTO `sys_log` VALUES ('126', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-20 21:52:23');
INSERT INTO `sys_log` VALUES ('127', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 21:52:29');
INSERT INTO `sys_log` VALUES ('128', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-20 22:43:43');
INSERT INTO `sys_log` VALUES ('129', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 22:44:04');
INSERT INTO `sys_log` VALUES ('130', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 22:45:40');
INSERT INTO `sys_log` VALUES ('131', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 23:47:22');
INSERT INTO `sys_log` VALUES ('132', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-20 23:48:59');
INSERT INTO `sys_log` VALUES ('133', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-21 00:06:03');
INSERT INTO `sys_log` VALUES ('134', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-21 00:06:22');
INSERT INTO `sys_log` VALUES ('135', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 22:44:35');
INSERT INTO `sys_log` VALUES ('136', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-23 22:46:29');
INSERT INTO `sys_log` VALUES ('137', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 22:46:57');
INSERT INTO `sys_log` VALUES ('138', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-23 22:50:52');
INSERT INTO `sys_log` VALUES ('139', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 22:51:09');
INSERT INTO `sys_log` VALUES ('140', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 22:53:11');
INSERT INTO `sys_log` VALUES ('141', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-23 22:53:51');
INSERT INTO `sys_log` VALUES ('142', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 22:54:08');
INSERT INTO `sys_log` VALUES ('143', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-23 23:08:30');
INSERT INTO `sys_log` VALUES ('144', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 23:08:39');
INSERT INTO `sys_log` VALUES ('145', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-23 23:08:57');
INSERT INTO `sys_log` VALUES ('146', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-24 11:54:38');
INSERT INTO `sys_log` VALUES ('147', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-28 22:25:12');
INSERT INTO `sys_log` VALUES ('148', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/dept/edit', null, '{\"id\":30,\"description\":\"部门描述不能为空1\",\"name\":\"一区办公室\",\"order_id\":10,\"parent_id\":23}', '{\"id\":[\"30\"],\"parent_id\":[\"23\"],\"name\":[\"一区办公室\"],\"order_id\":[\"10\"],\"description\":[\"部门描述不能为空\"]}', '2015-10-28 22:25:36');
INSERT INTO `sys_log` VALUES ('149', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-28 22:26:20');
INSERT INTO `sys_log` VALUES ('150', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/dept/edit', null, '{\"id\":54,\"description\":\"234；啦啦啦\",\"name\":\"234\",\"order_id\":0,\"parent_id\":2}', '{\"id\":[\"54\"],\"parent_id\":[\"2\"],\"name\":[\"234\"],\"order_id\":[\"0\"],\"description\":[\"dddddddddddddddd\"]}', '2015-10-28 22:26:40');
INSERT INTO `sys_log` VALUES ('151', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":84,\"description\":null,\"name\":\"测试查询功能\",\"order_id\":0,\"url\":\"ddd\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"84\"],\"parent_id\":[\"62\"],\"name\":[\"测试查询功能\"],\"iconCls\":[\"icon-item\"],\"url\":[\"ddd\"],\"order_id\":[\"0\"],\"description\":[\"dddd\"]}', '2015-10-28 22:27:58');
INSERT INTO `sys_log` VALUES ('152', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/role/edit', null, '{\"id\":20,\"description\":\"20\",\"name\":\"20\",\"order_id\":1}', '{\"id\":[\"20\"],\"name\":[\"20\"],\"order_id\":[\"1\"],\"description\":[\"201\"]}', '2015-10-28 22:28:27');
INSERT INTO `sys_log` VALUES ('153', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":35,\"dept_id\":22,\"username\":\"mxtt\",\"updatetime\":\"2015-09-19 23:12:27\",\"status\":\"Y\",\"zuoji\":\"0858-3679655\",\"nickname\":\"mxtt1\",\"shouji\":\"15121769990\",\"duanhao\":\"541983\",\"password\":\"f379eaf3c831b04de153469d1bec345e\",\"salt\":null}', '{\"id\":[\"35\"],\"dept_id\":[\"22\"],\"username\":[\"mxtt\"],\"nickname\":[\"mxtt\"],\"dept_name\":[\"上海分部\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-10-28 22:29:14');
INSERT INTO `sys_log` VALUES ('154', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-28 22:33:56');
INSERT INTO `sys_log` VALUES ('155', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-28 22:34:19');
INSERT INTO `sys_log` VALUES ('156', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-28 22:36:00');
INSERT INTO `sys_log` VALUES ('157', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-28 22:37:38');
INSERT INTO `sys_log` VALUES ('158', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-28 22:39:48');
INSERT INTO `sys_log` VALUES ('159', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-28 22:39:55');
INSERT INTO `sys_log` VALUES ('160', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-10-28 23:38:30');
INSERT INTO `sys_log` VALUES ('161', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/system/loginout', null, null, null, '2015-10-28 23:57:46');
INSERT INTO `sys_log` VALUES ('162', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-11-05 17:53:03');
INSERT INTO `sys_log` VALUES ('163', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":37,\"dept_id\":39,\"username\":\"aaaa\",\"updatetime\":\"2015-09-16 13:55:53\",\"status\":\"Y\",\"zuoji\":\"0858-3679655\",\"nickname\":\"aaa\",\"shouji\":\"15121769990\",\"duanhao\":\"541983\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"salt\":null}', '{\"id\":[\"37\"],\"dept_id\":[\"39\"],\"username\":[\"aaaa\"],\"nickname\":[\"aaa1\"],\"dept_name\":[\"东方时代\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2015-11-05 17:53:35');
INSERT INTO `sys_log` VALUES ('164', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"上传系统资源。\",\"name\":\"资源管理\",\"order_id\":1,\"url\":\"\\/resource\\/list\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"62\"],\"parent_id\":[\"1\"],\"name\":[\"资源管理1\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"\\/resource\\/list\"],\"order_id\":[\"1\"],\"description\":[\"上传系统资源。\"]}', '2015-11-05 17:57:04');
INSERT INTO `sys_log` VALUES ('165', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-11-09 22:22:46');
INSERT INTO `sys_log` VALUES ('166', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-11-30 00:44:50');
INSERT INTO `sys_log` VALUES ('167', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2015-11-30 00:52:07');
INSERT INTO `sys_log` VALUES ('168', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2016-01-17 17:53:25');
INSERT INTO `sys_log` VALUES ('169', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2016-01-29 22:40:01');
INSERT INTO `sys_log` VALUES ('170', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/system/checklogin', null, null, null, '2016-01-30 00:24:18');
INSERT INTO `sys_log` VALUES ('171', 'admin', '系统管理员', '127.0.0.1', '中文名称未定义,请在LogServiceImpl中定义', '/checklogin', null, null, null, '2016-01-30 23:51:52');
INSERT INTO `sys_log` VALUES ('172', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/loginout', null, null, null, '2016-01-30 23:55:34');
INSERT INTO `sys_log` VALUES ('173', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-01-30 23:55:40');
INSERT INTO `sys_log` VALUES ('174', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/role/edit', null, '{\"id\":18,\"description\":\"角色描述\",\"name\":\"监察室领导岗\",\"order_id\":2}', '{\"id\":[\"18\"],\"name\":[\"监察室领导岗\"],\"order_id\":[\"2\"],\"description\":[\"角色描述\"]}', '2016-01-30 23:56:03');
INSERT INTO `sys_log` VALUES ('175', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-01-30 23:58:40');
INSERT INTO `sys_log` VALUES ('176', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-01-31 00:08:08');
INSERT INTO `sys_log` VALUES ('177', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/dept/edit', null, '{\"id\":27,\"description\":\"部门描述不能为空\",\"name\":\"办公室\",\"order_id\":7,\"parent_id\":2}', '{\"id\":[\"27\"],\"parent_id\":[\"2\"],\"name\":[\"办公室\"],\"order_id\":[\"7\"],\"description\":[\"部门描述不能为空\"]}', '2016-01-31 00:08:22');
INSERT INTO `sys_log` VALUES ('178', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":37,\"dept_id\":39,\"username\":\"aaaa\",\"updatetime\":\"2015-11-05 17:53:35\",\"status\":\"Y\",\"zuoji\":\"0858-3679655\",\"nickname\":\"aaa1\",\"shouji\":\"15121769990\",\"duanhao\":\"541983\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"salt\":null}', '{\"id\":[\"37\"],\"dept_id\":[\"39\"],\"username\":[\"aaaa\"],\"nickname\":[\"aaa1\"],\"dept_name\":[\"东方时代\"],\"zuoji\":[\"0858-3679655\"],\"shouji\":[\"15121769990\"],\"duanhao\":[\"541983\"],\"status\":[\"Y\"]}', '2016-01-31 00:09:29');
INSERT INTO `sys_log` VALUES ('179', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/role/edit', null, '{\"id\":11,\"description\":\"角色描述\",\"name\":\"人事教育科领导岗\",\"order_id\":4}', '{\"id\":[\"11\"],\"name\":[\"人事教育科领导岗\"],\"order_id\":[\"4\"],\"description\":[\"角色描述\"]}', '2016-01-31 00:09:40');
INSERT INTO `sys_log` VALUES ('180', 'admin', '系统管理员', '127.0.0.1', '用户修改', '/user/edit', null, '{\"id\":40,\"dept_id\":52,\"username\":\"test1\",\"updatetime\":\"2015-09-17 23:53:14\",\"status\":\"Y\",\"zuoji\":\"123456788555\",\"nickname\":\"test1\",\"shouji\":\"11111111111\",\"duanhao\":\"222222\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"salt\":null}', '{\"id\":[\"40\"],\"dept_id\":[\"31\"],\"username\":[\"test1\"],\"nickname\":[\"test1\"],\"dept_name\":[\"钟山区税源一科\"],\"zuoji\":[\"123456788555\"],\"shouji\":[\"11111111111\"],\"duanhao\":[\"222222\"],\"status\":[\"Y\"]}', '2016-01-31 00:14:44');
INSERT INTO `sys_log` VALUES ('181', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/loginout', null, null, null, '2016-01-31 00:15:15');
INSERT INTO `sys_log` VALUES ('182', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-01-31 00:22:58');
INSERT INTO `sys_log` VALUES ('183', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-01-31 00:33:06');
INSERT INTO `sys_log` VALUES ('184', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":null,\"name\":\"test\",\"order_id\":0,\"url\":\"test\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"80\"],\"parent_id\":[\"62\"],\"name\":[\"test\"],\"iconCls\":[\"icon-item\"],\"url\":[\"test\"],\"order_id\":[\"0\"],\"description\":[\"dsfs\"]}', '2016-01-31 00:33:31');
INSERT INTO `sys_log` VALUES ('185', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-04 13:27:50');
INSERT INTO `sys_log` VALUES ('186', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-04 13:39:59');
INSERT INTO `sys_log` VALUES ('187', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-04 21:32:02');
INSERT INTO `sys_log` VALUES ('188', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-07 10:46:06');
INSERT INTO `sys_log` VALUES ('189', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-08 19:05:46');
INSERT INTO `sys_log` VALUES ('190', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-17 21:05:24');
INSERT INTO `sys_log` VALUES ('191', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-17 22:42:07');
INSERT INTO `sys_log` VALUES ('192', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"上传系统资源。\",\"name\":\"资源管理1\",\"order_id\":1,\"url\":\"resource/list\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"62\"],\"parent_id\":[\"1\"],\"name\":[\"知识管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"#\"],\"order_id\":[\"1\"],\"description\":[\"知识管理\"]}', '2016-02-17 22:48:28');
INSERT INTO `sys_log` VALUES ('193', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"dsfs\",\"name\":\"test\",\"order_id\":0,\"url\":\"test\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"80\"],\"parent_id\":[\"62\"],\"name\":[\"知识分类管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"zs/group\"],\"order_id\":[\"0\"],\"description\":[\"知识分类管理\"]}', '2016-02-17 22:49:51');
INSERT INTO `sys_log` VALUES ('194', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":84,\"description\":\"dddd\",\"name\":\"测试查询功能\",\"order_id\":0,\"url\":\"ddd\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"84\"],\"parent_id\":[\"62\"],\"name\":[\"添加知识\"],\"iconCls\":[\"icon-item\"],\"url\":[\"knowledge/add\"],\"order_id\":[\"0\"],\"description\":[\"添加知识\"]}', '2016-02-17 22:50:25');
INSERT INTO `sys_log` VALUES ('195', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"知识分类管理\",\"name\":\"知识分类管理\",\"order_id\":0,\"url\":\"zs/group\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"80\"],\"parent_id\":[\"62\"],\"name\":[\"知识分类管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"knowledge/flgl\"],\"order_id\":[\"0\"],\"description\":[\"知识分类管理\"]}', '2016-02-17 22:50:52');
INSERT INTO `sys_log` VALUES ('196', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":18,\"description\":\"组织机构管理\",\"name\":\"部门管理\",\"order_id\":0,\"url\":\"dept\",\"iconCls\":\"icon-organization\",\"parent_id\":2}', '{\"id\":[\"18\"],\"parent_id\":[\"2\"],\"name\":[\"部门管理\"],\"iconCls\":[\"icon-organization\"],\"url\":[\"/dept\"],\"order_id\":[\"0\"],\"description\":[\"组织机构管理\"]}', '2016-02-17 22:51:22');
INSERT INTO `sys_log` VALUES ('197', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":5,\"description\":\"dddd\",\"name\":\"菜单管理\",\"order_id\":1,\"url\":\"menu\",\"iconCls\":\"icon-chart-organisation\",\"parent_id\":2}', '{\"id\":[\"5\"],\"parent_id\":[\"2\"],\"name\":[\"菜单管理\"],\"iconCls\":[\"icon-chart-organisation\"],\"url\":[\"/menu\"],\"order_id\":[\"1\"],\"description\":[\"dddd\"]}', '2016-02-17 22:51:29');
INSERT INTO `sys_log` VALUES ('198', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":4,\"description\":\"dddd\",\"name\":\"角色管理\",\"order_id\":2,\"url\":\"role\",\"iconCls\":\"icon-user-group\",\"parent_id\":2}', '{\"id\":[\"4\"],\"parent_id\":[\"2\"],\"name\":[\"角色管理\"],\"iconCls\":[\"icon-user-group\"],\"url\":[\"/role\"],\"order_id\":[\"2\"],\"description\":[\"角色管理\"]}', '2016-02-17 22:51:39');
INSERT INTO `sys_log` VALUES ('199', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":3,\"description\":\"多大的\",\"name\":\"用户管理\",\"order_id\":4,\"url\":\"user\",\"iconCls\":\"icon-users\",\"parent_id\":2}', '{\"id\":[\"3\"],\"parent_id\":[\"2\"],\"name\":[\"用户管理\"],\"iconCls\":[\"icon-users\"],\"url\":[\"/user\"],\"order_id\":[\"4\"],\"description\":[\"用户管理\"]}', '2016-02-17 22:51:49');
INSERT INTO `sys_log` VALUES ('200', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":59,\"description\":\"将系统登陆、退出、添加、修改、删除等信息写入日志。\",\"name\":\"日志管理\",\"order_id\":5,\"url\":\"log\",\"iconCls\":\"icon-application-osx-error\",\"parent_id\":2}', '{\"id\":[\"59\"],\"parent_id\":[\"2\"],\"name\":[\"日志管理\"],\"iconCls\":[\"icon-application-osx-error\"],\"url\":[\"/log\"],\"order_id\":[\"5\"],\"description\":[\"将系统登陆、退出、添加、修改、删除等信息写入日志。\"]}', '2016-02-17 22:51:57');
INSERT INTO `sys_log` VALUES ('201', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":79,\"description\":\"数据字典管理\",\"name\":\"字典管理\",\"order_id\":6,\"url\":\"dict\",\"iconCls\":\"icon-book\",\"parent_id\":2}', '{\"id\":[\"79\"],\"parent_id\":[\"2\"],\"name\":[\"字典管理\"],\"iconCls\":[\"icon-book\"],\"url\":[\"/dict\"],\"order_id\":[\"6\"],\"description\":[\"数据字典管理\"]}', '2016-02-17 22:52:07');
INSERT INTO `sys_log` VALUES ('202', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"用户密码修改\",\"name\":\"密码修改\",\"order_id\":7,\"url\":\"user/pwd\",\"iconCls\":\"icon-lock\",\"parent_id\":2}', '{\"id\":[\"61\"],\"parent_id\":[\"2\"],\"name\":[\"知识管理\"],\"iconCls\":[\"icon-lock\"],\"url\":[\"#\"],\"order_id\":[\"7\"],\"description\":[\"知识管理\"]}', '2016-02-17 22:52:55');
INSERT INTO `sys_log` VALUES ('203', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"知识管理\",\"name\":\"知识管理\",\"order_id\":1,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"62\"],\"parent_id\":[\"1\"],\"name\":[\"分类管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"knowledge/flgl\"],\"order_id\":[\"1\"],\"description\":[\"分类管理\"]}', '2016-02-17 22:53:21');
INSERT INTO `sys_log` VALUES ('204', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"知识分类管理\",\"name\":\"知识分类管理\",\"order_id\":0,\"url\":\"knowledge/flgl\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"80\"],\"parent_id\":[\"62\"],\"name\":[\"添加知识\"],\"iconCls\":[\"icon-item\"],\"url\":[\"knowledge/add\"],\"order_id\":[\"0\"],\"description\":[\"添加知识\"]}', '2016-02-17 22:53:41');
INSERT INTO `sys_log` VALUES ('205', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":67,\"description\":\"版本管理\",\"name\":\"版本管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"67\"]}', '2016-02-17 22:56:02');
INSERT INTO `sys_log` VALUES ('206', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":68,\"description\":\"\",\"name\":\"客户版本管理\",\"order_id\":0,\"url\":\"/eoms/customerOrder/list\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"68\"]}', '2016-02-17 22:56:06');
INSERT INTO `sys_log` VALUES ('207', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":69,\"description\":\"\",\"name\":\"客户版本升级历史\",\"order_id\":0,\"url\":\"/\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"69\"]}', '2016-02-17 22:56:10');
INSERT INTO `sys_log` VALUES ('208', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":70,\"description\":\"\",\"name\":\"产品集管理\",\"order_id\":0,\"url\":\"/eoms/productGroup/list\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"70\"]}', '2016-02-17 22:56:14');
INSERT INTO `sys_log` VALUES ('209', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":71,\"description\":\"ddd\",\"name\":\"产品集版本管理\",\"order_id\":0,\"url\":\"/\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"71\"]}', '2016-02-17 22:56:21');
INSERT INTO `sys_log` VALUES ('210', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":72,\"description\":\"\",\"name\":\"产品包管理\",\"order_id\":0,\"url\":\"/eoms/productPackages/list\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"72\"]}', '2016-02-17 22:56:24');
INSERT INTO `sys_log` VALUES ('211', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":73,\"description\":\"ddddd\",\"name\":\"产品包版本管理\",\"order_id\":0,\"url\":\"/\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"73\"]}', '2016-02-17 22:56:28');
INSERT INTO `sys_log` VALUES ('212', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":74,\"description\":null,\"name\":\"问题管理\",\"order_id\":0,\"url\":\"/eoms/issue/\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"74\"]}', '2016-02-17 22:56:31');
INSERT INTO `sys_log` VALUES ('213', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":75,\"description\":\"\",\"name\":\"需求变更管理\",\"order_id\":0,\"url\":\"/\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"75\"]}', '2016-02-17 22:56:35');
INSERT INTO `sys_log` VALUES ('214', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":76,\"description\":\"\",\"name\":\"工单管理\",\"order_id\":0,\"url\":\"/eoms/jobCard/list\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"76\"]}', '2016-02-17 22:56:38');
INSERT INTO `sys_log` VALUES ('215', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":85,\"description\":null,\"name\":\"测试查询功能\",\"order_id\":0,\"url\":\"#\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"85\"]}', '2016-02-17 22:56:41');
INSERT INTO `sys_log` VALUES ('216', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":86,\"description\":null,\"name\":\"测试查询功能\",\"order_id\":0,\"url\":\"#\",\"iconCls\":\"icon-item\",\"parent_id\":67}', '{\"id\":[\"86\"]}', '2016-02-17 22:56:46');
INSERT INTO `sys_log` VALUES ('217', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":78,\"description\":\"miaosu\",\"name\":\"功能按钮测试\",\"order_id\":0,\"url\":\"menu/test\",\"iconCls\":\"icon-item\",\"parent_id\":77}', '{\"id\":[\"78\"]}', '2016-02-17 22:56:51');
INSERT INTO `sys_log` VALUES ('218', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":81,\"description\":null,\"name\":\"test1\",\"order_id\":0,\"url\":\"#\",\"iconCls\":\"icon-item\",\"parent_id\":77}', '{\"id\":[\"81\"]}', '2016-02-17 22:56:54');
INSERT INTO `sys_log` VALUES ('219', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":82,\"description\":null,\"name\":\"test2\",\"order_id\":0,\"url\":\"test2\",\"iconCls\":\"icon-item\",\"parent_id\":77}', '{\"id\":[\"82\"]}', '2016-02-17 22:56:57');
INSERT INTO `sys_log` VALUES ('220', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":83,\"description\":null,\"name\":\"test3\",\"order_id\":0,\"url\":\"#\",\"iconCls\":\"icon-item\",\"parent_id\":77}', '{\"id\":[\"83\"]}', '2016-02-17 22:57:00');
INSERT INTO `sys_log` VALUES ('221', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":77,\"description\":\"test\",\"name\":\"根测试\",\"order_id\":3,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":67}', '{\"id\":[\"77\"]}', '2016-02-17 22:57:04');
INSERT INTO `sys_log` VALUES ('222', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":67,\"description\":\"版本管理\",\"name\":\"版本管理\",\"order_id\":2,\"url\":\"#\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":1}', '{\"id\":[\"67\"]}', '2016-02-17 22:57:09');
INSERT INTO `sys_log` VALUES ('223', 'admin', '系统管理员', '127.0.0.1', '菜单删除', '/menu/delete', null, '{\"id\":84,\"description\":\"添加知识\",\"name\":\"添加知识\",\"order_id\":0,\"url\":\"knowledge/add\",\"iconCls\":\"icon-item\",\"parent_id\":62}', '{\"id\":[\"84\"]}', '2016-02-17 22:57:22');
INSERT INTO `sys_log` VALUES ('224', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"添加知识\",\"name\":\"添加知识\",\"order_id\":0,\"url\":\"knowledge/add\",\"iconCls\":\"icon-item\",\"parent_id\":61}', '{\"id\":[\"80\"],\"parent_id\":[\"61\"],\"name\":[\"添加知识\"],\"iconCls\":[\"icon-item\"],\"url\":[\"knowledge/add\"],\"order_id\":[\"1\"],\"description\":[\"添加知识\"]}', '2016-02-17 22:57:32');
INSERT INTO `sys_log` VALUES ('225', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"分类管理\",\"name\":\"分类管理\",\"order_id\":1,\"url\":\"knowledge/flgl\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":61}', '{\"id\":[\"62\"],\"parent_id\":[\"61\"],\"name\":[\"分类管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"knowledge/flgl\"],\"order_id\":[\"0\"],\"description\":[\"分类管理\"]}', '2016-02-17 22:57:39');
INSERT INTO `sys_log` VALUES ('226', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/loginout', null, null, null, '2016-02-17 22:58:05');
INSERT INTO `sys_log` VALUES ('227', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-17 22:58:20');
INSERT INTO `sys_log` VALUES ('228', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-17 23:06:30');
INSERT INTO `sys_log` VALUES ('229', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"知识管理\",\"name\":\"知识管理\",\"order_id\":7,\"url\":\"#\",\"iconCls\":\"icon-lock\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"知识库管理\"],\"iconCls\":[\"icon-lock\"],\"url\":[\"#\"],\"order_id\":[\"7\"],\"description\":[\"知识库管理\"]}', '2016-02-17 23:08:58');
INSERT INTO `sys_log` VALUES ('230', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":61,\"description\":\"知识库管理\",\"name\":\"知识库管理\",\"order_id\":7,\"url\":\"#\",\"iconCls\":\"icon-lock\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"知识管理\"],\"iconCls\":[\"icon-lock\"],\"url\":[\"#\"],\"order_id\":[\"7\"],\"description\":[\"知识管理\"]}', '2016-02-17 23:09:32');
INSERT INTO `sys_log` VALUES ('231', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-17 23:51:24');
INSERT INTO `sys_log` VALUES ('232', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-17 23:55:53');
INSERT INTO `sys_log` VALUES ('233', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-18 00:05:54');
INSERT INTO `sys_log` VALUES ('234', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-18 00:23:59');
INSERT INTO `sys_log` VALUES ('235', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-20 20:42:11');
INSERT INTO `sys_log` VALUES ('236', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-20 20:46:31');
INSERT INTO `sys_log` VALUES ('237', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":62,\"description\":\"分类管理\",\"name\":\"分类管理\",\"order_id\":0,\"url\":\"knowledge/flgl\",\"iconCls\":\"icon-hamburg-config\",\"parent_id\":61}', '{\"id\":[\"62\"],\"parent_id\":[\"61\"],\"name\":[\"分类管理\"],\"iconCls\":[\"icon-hamburg-config\"],\"url\":[\"zs/group\"],\"order_id\":[\"0\"],\"description\":[\"分类管理\"]}', '2016-02-20 21:08:36');
INSERT INTO `sys_log` VALUES ('238', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"添加知识\",\"name\":\"添加知识\",\"order_id\":1,\"url\":\"knowledge/add\",\"iconCls\":\"icon-item\",\"parent_id\":61}', '{\"id\":[\"80\"],\"parent_id\":[\"61\"],\"name\":[\"添加知识\"],\"iconCls\":[\"icon-item\"],\"url\":[\"zs/content\"],\"order_id\":[\"1\"],\"description\":[\"添加知识\"]}', '2016-02-20 21:09:22');
INSERT INTO `sys_log` VALUES ('239', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/loginout', null, null, null, '2016-02-20 22:43:40');
INSERT INTO `sys_log` VALUES ('240', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-20 22:43:45');
INSERT INTO `sys_log` VALUES ('241', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 00:48:21');
INSERT INTO `sys_log` VALUES ('242', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 11:30:40');
INSERT INTO `sys_log` VALUES ('243', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 12:48:08');
INSERT INTO `sys_log` VALUES ('244', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 13:32:09');
INSERT INTO `sys_log` VALUES ('245', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"添加知识\",\"name\":\"添加知识\",\"order_id\":1,\"url\":\"zs/content\",\"iconCls\":\"icon-item\",\"parent_id\":61}', '{\"id\":[\"80\"],\"parent_id\":[\"61\"],\"name\":[\"知识管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"zs/content\"],\"order_id\":[\"1\"],\"description\":[\"知识管理\"]}', '2016-02-21 13:41:28');
INSERT INTO `sys_log` VALUES ('246', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/menu/edit', null, '{\"id\":80,\"description\":\"知识管理\",\"name\":\"知识管理\",\"order_id\":1,\"url\":\"zs/content\",\"iconCls\":\"icon-item\",\"parent_id\":61}', '{\"id\":[\"80\"],\"parent_id\":[\"61\"],\"name\":[\"个人知识管理\"],\"iconCls\":[\"icon-item\"],\"url\":[\"zs/content\"],\"order_id\":[\"1\"],\"description\":[\"个人知识管理\"]}', '2016-02-21 13:42:00');
INSERT INTO `sys_log` VALUES ('247', 'admin', '系统管理员', '127.0.0.1', '退出登陆', '/loginout', null, null, null, '2016-02-21 15:20:12');
INSERT INTO `sys_log` VALUES ('248', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 15:20:18');
INSERT INTO `sys_log` VALUES ('249', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 17:38:23');
INSERT INTO `sys_log` VALUES ('250', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 20:07:04');
INSERT INTO `sys_log` VALUES ('251', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 20:43:57');
INSERT INTO `sys_log` VALUES ('252', 'admin', '系统管理员', '127.0.0.1', '用户登陆', '/checklogin', null, null, null, '2016-02-21 21:58:05');
INSERT INTO `sys_log` VALUES ('253', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:33:37');
INSERT INTO `sys_log` VALUES ('254', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:33:51');
INSERT INTO `sys_log` VALUES ('255', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:42:13');
INSERT INTO `sys_log` VALUES ('256', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:42:24');
INSERT INTO `sys_log` VALUES ('257', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:45:14');
INSERT INTO `sys_log` VALUES ('258', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:46:18');
INSERT INTO `sys_log` VALUES ('259', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-26 14:57:00');
INSERT INTO `sys_log` VALUES ('260', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 14:57:19');
INSERT INTO `sys_log` VALUES ('261', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 15:41:34');
INSERT INTO `sys_log` VALUES ('262', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 15:45:37');
INSERT INTO `sys_log` VALUES ('263', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-26 16:07:41');
INSERT INTO `sys_log` VALUES ('264', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 16:07:49');
INSERT INTO `sys_log` VALUES ('265', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-26 16:09:04');
INSERT INTO `sys_log` VALUES ('266', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 16:09:10');
INSERT INTO `sys_log` VALUES ('267', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-26 16:09:26');
INSERT INTO `sys_log` VALUES ('268', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 16:09:32');
INSERT INTO `sys_log` VALUES ('269', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-26 16:11:06');
INSERT INTO `sys_log` VALUES ('270', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 16:11:13');
INSERT INTO `sys_log` VALUES ('271', 'admin', '系统管理员', '127.0.0.1', '菜单添加', '/system/menu/add', null, 'null', '{\"id\":[\"\"],\"parent_id\":[\"2\"],\"name\":[\"层级数据字典\"],\"iconCls\":[\"icon-hamburg-old-versions\"],\"url\":[\"system/cjsjzd\"],\"order_id\":[\"0\"],\"description\":[\"层级数据字典\"]}', '2016-05-26 16:13:00');
INSERT INTO `sys_log` VALUES ('272', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":87,\"description\":\"层级数据字典\",\"name\":\"层级数据字典\",\"order_id\":0,\"url\":\"system/cjsjzd\",\"iconCls\":\"icon-hamburg-old-versions\",\"parent_id\":2}', '{\"id\":[\"87\"],\"parent_id\":[\"2\"],\"name\":[\"层级数据字典\"],\"iconCls\":[\"icon-book\"],\"url\":[\"system/cjsjzd\"],\"order_id\":[\"0\"],\"description\":[\"层级数据字典\"]}', '2016-05-26 16:13:18');
INSERT INTO `sys_log` VALUES ('273', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":18,\"description\":\"组织机构管理\",\"name\":\"部门管理\",\"order_id\":0,\"url\":\"/system/dept\",\"iconCls\":\"icon-organization\",\"parent_id\":2}', '{\"id\":[\"18\"],\"parent_id\":[\"2\"],\"name\":[\"部门管理\"],\"iconCls\":[\"icon-organization\"],\"url\":[\"/system/dept\"],\"order_id\":[\"1\"],\"description\":[\"组织机构管理\"]}', '2016-05-26 16:13:29');
INSERT INTO `sys_log` VALUES ('274', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":18,\"description\":\"组织机构管理\",\"name\":\"部门管理\",\"order_id\":1,\"url\":\"/system/dept\",\"iconCls\":\"icon-organization\",\"parent_id\":2}', '{\"id\":[\"18\"],\"parent_id\":[\"2\"],\"name\":[\"部门管理\"],\"iconCls\":[\"icon-organization\"],\"url\":[\"/system/dept\"],\"order_id\":[\"2\"],\"description\":[\"组织机构管理\"]}', '2016-05-26 16:13:45');
INSERT INTO `sys_log` VALUES ('275', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":18,\"description\":\"组织机构管理\",\"name\":\"部门管理\",\"order_id\":2,\"url\":\"/system/dept\",\"iconCls\":\"icon-organization\",\"parent_id\":2}', '{\"id\":[\"18\"],\"parent_id\":[\"2\"],\"name\":[\"部门管理\"],\"iconCls\":[\"icon-organization\"],\"url\":[\"/system/dept\"],\"order_id\":[\"3\"],\"description\":[\"组织机构管理\"]}', '2016-05-26 16:14:02');
INSERT INTO `sys_log` VALUES ('276', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":79,\"description\":\"选项数据字典\",\"name\":\"选项数据字典\",\"order_id\":6,\"url\":\"system/xxsjzd\",\"iconCls\":\"icon-book\",\"parent_id\":2}', '{\"id\":[\"79\"],\"parent_id\":[\"2\"],\"name\":[\"选项数据字典\"],\"iconCls\":[\"icon-book\"],\"url\":[\"system/xxsjzd\"],\"order_id\":[\"0\"],\"description\":[\"选项数据字典\"]}', '2016-05-26 16:14:20');
INSERT INTO `sys_log` VALUES ('277', 'admin', '系统管理员', '127.0.0.1', '角色添加', '/system/role/add', null, 'null', '{\"id\":[\"\"],\"groupname\":[\"管理组\"],\"name\":[\"总部管理员\"],\"order_id\":[\"1\"],\"description\":[\"仅admin账号可以为用户分配管理组角色。\"]}', '2016-05-26 16:17:26');
INSERT INTO `sys_log` VALUES ('278', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":1,\"description\":\"系统管理员\",\"name\":\"系统管理员\",\"groupname\":\"管理组\",\"order_id\":0}', '{\"id\":[\"1\"],\"groupname\":[\"管理组\"],\"name\":[\"系统管理员\"],\"order_id\":[\"0\"],\"description\":[\"仅admin账号可以为用户分配管理组角色。\"]}', '2016-05-26 16:17:34');
INSERT INTO `sys_log` VALUES ('279', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":20,\"description\":\"201\",\"name\":\"20\",\"groupname\":\"用户组\",\"order_id\":1}', '{\"id\":[\"20\"],\"groupname\":[\"用户组\"],\"name\":[\"市级管理员\"],\"order_id\":[\"1\"],\"description\":[\"市级管理员仅可以为用户分配用户组角色。\"]}', '2016-05-26 16:18:48');
INSERT INTO `sys_log` VALUES ('280', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":18,\"description\":\"角色描述\",\"name\":\"监察室领导岗\",\"groupname\":\"用户组\",\"order_id\":2}', '{\"id\":[\"18\"],\"groupname\":[\"用户组\"],\"name\":[\"区县级管理员\"],\"order_id\":[\"2\"],\"description\":[\"区县级管理员仅可以为用户分配用户组角色。\"]}', '2016-05-26 16:19:17');
INSERT INTO `sys_log` VALUES ('281', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":14,\"description\":\"角色描述\",\"name\":\"财务科\",\"groupname\":\"用户组\",\"order_id\":3}', '{\"id\":[\"14\"],\"groupname\":[\"用户组\"],\"name\":[\"普通用户\"],\"order_id\":[\"3\"],\"description\":[\"普通用户拥有全局通用的权限。\"]}', '2016-05-26 16:19:55');
INSERT INTO `sys_log` VALUES ('282', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":20,\"description\":\"市级管理员仅可以为用户分配用户组角色。\",\"name\":\"市级管理员\",\"groupname\":\"用户组\",\"order_id\":1}', '{\"id\":[\"20\"],\"groupname\":[\"用户组\"],\"name\":[\"市级管理员\"],\"order_id\":[\"1\"],\"description\":[\"市级管理员仅可以为用户分配用户组角色，但不能拥有数据字典、菜单管理、角色管理、部门管理的权限。\"]}', '2016-05-26 16:21:27');
INSERT INTO `sys_log` VALUES ('283', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":18,\"description\":\"区县级管理员仅可以为用户分配用户组角色。\",\"name\":\"区县级管理员\",\"groupname\":\"用户组\",\"order_id\":2}', '{\"id\":[\"18\"],\"groupname\":[\"用户组\"],\"name\":[\"区县级管理员\"],\"order_id\":[\"2\"],\"description\":[\"区县级管理员仅可以为用户分配用户组角色，但不能拥有数据字典、菜单管理、角色管理、部门管理的权限。\"]}', '2016-05-26 16:21:34');
INSERT INTO `sys_log` VALUES ('284', 'admin', '系统管理员', '127.0.0.1', '角色删除', '/system/role/delete', null, '{\"id\":11,\"description\":\"角色描述\",\"name\":\"人事教育科领导岗\",\"groupname\":\"用户组\",\"order_id\":4}', '{\"id\":[\"11\"]}', '2016-05-26 16:21:39');
INSERT INTO `sys_log` VALUES ('285', 'admin', '系统管理员', '127.0.0.1', '角色删除', '/system/role/delete', null, '{\"id\":16,\"description\":\"角色描述\",\"name\":\"办公室\",\"groupname\":\"用户组\",\"order_id\":6}', '{\"id\":[\"16\"]}', '2016-05-26 16:21:42');
INSERT INTO `sys_log` VALUES ('286', 'admin', '系统管理员', '127.0.0.1', '角色删除', '/system/role/delete', null, '{\"id\":15,\"description\":\"角色描述\",\"name\":\"办公室领导岗\",\"groupname\":\"用户组\",\"order_id\":7}', '{\"id\":[\"15\"]}', '2016-05-26 16:21:47');
INSERT INTO `sys_log` VALUES ('287', 'admin', '系统管理员', '127.0.0.1', '角色删除', '/system/role/delete', null, '{\"id\":19,\"description\":\"19\",\"name\":\"19\",\"groupname\":\"用户组\",\"order_id\":10}', '{\"id\":[\"19\"]}', '2016-05-26 16:21:53');
INSERT INTO `sys_log` VALUES ('288', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-26 16:26:24');
INSERT INTO `sys_log` VALUES ('289', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 16:26:32');
INSERT INTO `sys_log` VALUES ('290', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 18:56:58');
INSERT INTO `sys_log` VALUES ('291', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-26 19:04:24');
INSERT INTO `sys_log` VALUES ('292', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":4,\"description\":\"角色管理\",\"name\":\"角色管理\",\"order_id\":2,\"url\":\"/system/role\",\"iconCls\":\"icon-user-group\",\"parent_id\":2}', '{\"id\":[\"4\"],\"parent_id\":[\"2\"],\"name\":[\"角色管理\"],\"iconCls\":[\"icon-user-group\"],\"url\":[\"/system/role\"],\"order_id\":[\"2\"],\"description\":[\"角色管理\"]}', '2016-05-26 19:12:28');
INSERT INTO `sys_log` VALUES ('293', 'admin', '系统管理员', '127.0.0.1', '角色修改', '/system/role/edit', null, '{\"id\":18,\"description\":\"区县级管理员仅可以为用户分配用户组角色，但不能拥有数据字典、菜单管理、角色管理、部门管理的权限。\",\"name\":\"区县级管理员\",\"groupname\":\"用户组\",\"order_id\":2}', '{\"id\":[\"18\"],\"groupname\":[\"用户组\"],\"name\":[\"区县级管理员\"],\"order_id\":[\"2\"],\"description\":[\"区县级管理员仅可以为用户分配用户组角色，但不能拥有数据字典、菜单管理、角色管理、部门管理的权限。\"]}', '2016-05-26 19:12:35');
INSERT INTO `sys_log` VALUES ('294', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/system/dept/edit', null, '{\"id\":15202110000,\"name\":\"B市分公司办公室\",\"order_id\":12,\"fullname\":\"部门描述不能为空\",\"parent_id\":15202000000}', '{\"parent_id\":[\"15202000000\"],\"id\":[\"15202110000\"],\"name\":[\"B市分公司办公室\"],\"fullname\":[\"部门描述不能为空\"],\"order_id\":[\"12\"]}', '2016-05-26 19:12:47');
INSERT INTO `sys_log` VALUES ('295', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-27 15:08:39');
INSERT INTO `sys_log` VALUES ('296', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-27 15:57:15');
INSERT INTO `sys_log` VALUES ('297', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-27 15:57:46');
INSERT INTO `sys_log` VALUES ('298', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-27 15:57:51');
INSERT INTO `sys_log` VALUES ('299', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-05-27 16:38:52');
INSERT INTO `sys_log` VALUES ('300', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-05-27 16:38:59');
INSERT INTO `sys_log` VALUES ('301', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-18 21:17:09');
INSERT INTO `sys_log` VALUES ('302', 'admin', '系统管理员', '127.0.0.1', '部门添加', '/system/dept/add', null, '{\"id\":15213000000,\"name\":\"总部财务室\",\"order_id\":8,\"fullname\":\"部门描述不能为空\",\"parent_id\":15200000000}', '{\"parent_id\":[\"15212000000\"],\"id\":[\"15213000000\"],\"name\":[\"2222\"],\"fullname\":[\"344\"],\"order_id\":[\"7\"]}', '2016-09-18 21:20:04');
INSERT INTO `sys_log` VALUES ('303', 'admin', '系统管理员', '127.0.0.1', '部门添加', '/system/dept/add', null, 'null', '{\"parent_id\":[\"15212000000\"],\"id\":[\"15215000000\"],\"name\":[\"2222\"],\"fullname\":[\"344\"],\"order_id\":[\"7\"]}', '2016-09-18 21:20:11');
INSERT INTO `sys_log` VALUES ('304', 'admin', '系统管理员', '127.0.0.1', '部门删除', '/system/dept/delete', null, '{\"id\":15215000000,\"name\":\"2222\",\"order_id\":7,\"fullname\":\"344\",\"parent_id\":15200000000}', '{\"id\":[\"15215000000\"]}', '2016-09-18 21:20:38');
INSERT INTO `sys_log` VALUES ('305', 'admin', '系统管理员', '127.0.0.1', '部门修改', '/system/dept/edit', null, '{\"id\":15214000000,\"name\":\"总部后勤保障中心\",\"order_id\":9,\"fullname\":\"部门描述不能为空\",\"parent_id\":15200000000}', '{\"parent_id\":[\"15200000000\"],\"id\":[\"15214000000\"],\"name\":[\"总部后勤保障中心\"],\"fullname\":[\"部门描述不能为空\"],\"order_id\":[\"9\"]}', '2016-09-18 21:20:51');
INSERT INTO `sys_log` VALUES ('306', 'admin', '系统管理员', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-09-18 21:29:28');
INSERT INTO `sys_log` VALUES ('307', 'gynmtf', '田夫', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-18 21:29:34');
INSERT INTO `sys_log` VALUES ('308', 'gynmtf', '田夫', '127.0.0.1', '退出登录', '/logout', null, null, null, '2016-09-18 21:30:31');
INSERT INTO `sys_log` VALUES ('309', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-18 21:30:36');
INSERT INTO `sys_log` VALUES ('310', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-18 22:24:16');
INSERT INTO `sys_log` VALUES ('311', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-18 23:00:20');
INSERT INTO `sys_log` VALUES ('312', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":61,\"description\":\"知识管理\",\"name\":\"知识管理\",\"order_id\":7,\"url\":\"#\",\"iconCls\":\"icon-lock\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"知识管理\"],\"iconCls\":[\"icon-lock1\"],\"url\":[\"#\"],\"order_id\":[\"7\"],\"description\":[\"知识管理\"],\"add_method\":[\"\"],\"add_iconcls\":[\"\"],\"edit_method\":[\"\"],\"edit_iconcls\":[\"\"],\"delete_method\":[\"\"],\"delete_iconcls\":[\"\"],\"search_method\":[\"\"],\"search_iconcls\":[\"\"],\"export_method\":[\"\"],\"export_iconcls\":[\"\"]}', '2016-09-19 00:50:27');
INSERT INTO `sys_log` VALUES ('313', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":61,\"description\":\"知识管理\",\"name\":\"知识管理\",\"order_id\":7,\"url\":\"#\",\"iconCls\":\"icon-lock1\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"知识管理1\"],\"iconCls\":[\"icon-lock1\"],\"url\":[\"###\"],\"order_id\":[\"71\"],\"description\":[\"知识管理对方答复\"],\"add_method\":[\"\"],\"add_iconcls\":[\"\"],\"edit_method\":[\"\"],\"edit_iconcls\":[\"\"],\"delete_method\":[\"\"],\"delete_iconcls\":[\"\"],\"search_method\":[\"\"],\"search_iconcls\":[\"\"],\"export_method\":[\"\"],\"export_iconcls\":[\"\"]}', '2016-09-19 00:50:42');
INSERT INTO `sys_log` VALUES ('314', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":61,\"description\":\"知识管理对方答复\",\"name\":\"知识管理1\",\"order_id\":71,\"url\":\"###\",\"iconCls\":\"icon-lock1\",\"parent_id\":1}', '{\"id\":[\"61\"],\"parent_id\":[\"1\"],\"name\":[\"知识管理\"],\"iconCls\":[\"icon-lock\"],\"url\":[\"#\"],\"order_id\":[\"7\"],\"description\":[\"知识管理\"],\"add_method\":[\"\"],\"add_iconcls\":[\"\"],\"edit_method\":[\"\"],\"edit_iconcls\":[\"\"],\"delete_method\":[\"\"],\"delete_iconcls\":[\"\"],\"search_method\":[\"\"],\"search_iconcls\":[\"\"],\"export_method\":[\"\"],\"export_iconcls\":[\"\"]}', '2016-09-19 00:50:55');
INSERT INTO `sys_log` VALUES ('315', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-19 23:55:52');
INSERT INTO `sys_log` VALUES ('316', 'admin', '系统管理员', '127.0.0.1', '菜单修改', '/system/menu/edit', null, '{\"id\":5,\"description\":\"dddd\",\"name\":\"菜单管理\",\"order_id\":1,\"url\":\"/system/menu\",\"iconCls\":\"icon-chart-organisation\",\"parent_id\":2}', '{\"id\":[\"5\"],\"parent_id\":[\"2\"],\"name\":[\"菜单管理\"],\"iconCls\":[\"icon-chart-organisation\"],\"url\":[\"/system/menu\"],\"order_id\":[\"1\"],\"description\":[\"dddd\"]}', '2016-09-20 00:17:48');
INSERT INTO `sys_log` VALUES ('317', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-20 01:15:45');
INSERT INTO `sys_log` VALUES ('318', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-20 01:43:21');
INSERT INTO `sys_log` VALUES ('319', 'admin', '系统管理员', '127.0.0.1', '用户登录', '/checklogin', null, null, null, '2016-09-20 15:14:02');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `iconCls` varchar(40) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK6510844BB3395F9` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '所有模块的根节点，不能删除。', '顶级菜单', 'icon-item', '#', '0', '0');
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '系统管理', 'icon-wrench', '#', '1', '0');
INSERT INTO `sys_menu` VALUES ('3', '用户管理', '用户管理', 'icon-users', 'system/user', '2', '4');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '角色管理', 'icon-user-group', '/system/role', '2', '2');
INSERT INTO `sys_menu` VALUES ('5', 'dddd', '菜单管理', 'icon-chart-organisation', '/system/menu', '2', '1');
INSERT INTO `sys_menu` VALUES ('18', '组织机构管理', '部门管理', 'icon-organization', '/system/dept', '2', '3');
INSERT INTO `sys_menu` VALUES ('59', '将系统登陆、退出、添加、修改、删除等信息写入日志。', '日志管理', 'icon-application-osx-error', '/system/log', '2', '5');
INSERT INTO `sys_menu` VALUES ('61', '知识管理', '知识管理', 'icon-lock', '#', '1', '7');
INSERT INTO `sys_menu` VALUES ('62', '分类管理', '分类管理', 'icon-hamburg-config', 'zs/group', '61', '0');
INSERT INTO `sys_menu` VALUES ('79', '选项数据字典', '选项数据字典', 'icon-book', 'system/xxsjzd', '2', '0');
INSERT INTO `sys_menu` VALUES ('80', '个人知识管理', '个人知识管理', 'icon-item', 'zs/content', '61', '1');
INSERT INTO `sys_menu` VALUES ('87', '层级数据字典', '层级数据字典', 'icon-book', 'system/cjsjzd', '2', '0');

-- ----------------------------
-- Table structure for sys_menu_btn
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_btn`;
CREATE TABLE `sys_menu_btn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) NOT NULL COMMENT '菜单id',
  `btn_name` varchar(100) NOT NULL COMMENT '按钮名称',
  `btn_icon` varchar(40) NOT NULL COMMENT '按钮图标',
  `btn_method` varchar(600) NOT NULL COMMENT '按钮方法',
  `order_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_btn
-- ----------------------------
INSERT INTO `sys_menu_btn` VALUES ('1', '3', '添加', 'icon-add', 'Easyui_OpenDialog(\'dlg-route-method-save\')', '1');
INSERT INTO `sys_menu_btn` VALUES ('2', '3', '修改', 'icon-edit', 'Easyui_EditDialog(\'dg-route-method-list\',\'dlg-route-method-save\',\'fm-route-method-search\')', '2');
INSERT INTO `sys_menu_btn` VALUES ('3', '3', '删除', 'icon-delete', 'Easyui_Delete(\'dg-route-method-list\',\'url\',\'id\')', '3');
INSERT INTO `sys_menu_btn` VALUES ('4', '4', '添加', 'icon-add', 'Easyui_addDialog(\'\')', '1');
INSERT INTO `sys_menu_btn` VALUES ('5', '4', '修改', 'icon-edit', 'Easyui_addDialog(\'\')', '2');
INSERT INTO `sys_menu_btn` VALUES ('6', '59', '修改', 'icon-edit', 'Easyui_EditDialog(\'dg-route-method-list\',\'dlg-route-method-save\',\'fm-route-method-search\')', '1');
INSERT INTO `sys_menu_btn` VALUES ('8', '4', '删除', 'icon-remove', 'Easyui_Delete(\'dg-route-method-list\',\'url\',\'id\')', '3');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(9) NOT NULL DEFAULT '用户组' COMMENT '角色分组',
  `name` varchar(32) NOT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `order_id` int(11) DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理组', '系统管理员', '仅admin账号可以为用户分配管理组角色。', '0');
INSERT INTO `sys_role` VALUES ('12', '用户组', '人事教育科', '角色描述', '8');
INSERT INTO `sys_role` VALUES ('13', '用户组', '财务科领导岗', '角色描述', '11');
INSERT INTO `sys_role` VALUES ('14', '用户组', '普通用户', '普通用户拥有全局通用的权限。', '3');
INSERT INTO `sys_role` VALUES ('17', '用户组', '局领导', '局领导', '9');
INSERT INTO `sys_role` VALUES ('18', '用户组', '区县级管理员', '区县级管理员仅可以为用户分配用户组角色，但不能拥有数据字典、菜单管理、角色管理、部门管理的权限。', '2');
INSERT INTO `sys_role` VALUES ('20', '用户组', '市级管理员', '市级管理员仅可以为用户分配用户组角色，但不能拥有数据字典、菜单管理、角色管理、部门管理的权限。', '1');
INSERT INTO `sys_role` VALUES ('21', '管理组', '总部管理员', '仅admin账号可以为用户分配管理组角色。', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roleid` (`role_id`),
  KEY `fk_menuid` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('98', '18', '62');
INSERT INTO `sys_role_menu` VALUES ('97', '18', '61');
INSERT INTO `sys_role_menu` VALUES ('96', '18', '59');
INSERT INTO `sys_role_menu` VALUES ('95', '18', '18');
INSERT INTO `sys_role_menu` VALUES ('94', '18', '5');
INSERT INTO `sys_role_menu` VALUES ('93', '18', '4');
INSERT INTO `sys_role_menu` VALUES ('215', '14', '59');
INSERT INTO `sys_role_menu` VALUES ('214', '14', '18');
INSERT INTO `sys_role_menu` VALUES ('159', '20', '62');
INSERT INTO `sys_role_menu` VALUES ('158', '20', '3');
INSERT INTO `sys_role_menu` VALUES ('92', '18', '3');
INSERT INTO `sys_role_menu` VALUES ('157', '20', '4');
INSERT INTO `sys_role_menu` VALUES ('156', '20', '5');
INSERT INTO `sys_role_menu` VALUES ('155', '20', '18');
INSERT INTO `sys_role_menu` VALUES ('91', '18', '2');
INSERT INTO `sys_role_menu` VALUES ('109', '18', '79');
INSERT INTO `sys_role_menu` VALUES ('113', '18', '80');
INSERT INTO `sys_role_menu` VALUES ('209', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('208', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('207', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('206', '1', '5');
INSERT INTO `sys_role_menu` VALUES ('205', '1', '87');
INSERT INTO `sys_role_menu` VALUES ('204', '1', '79');
INSERT INTO `sys_role_menu` VALUES ('203', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('202', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('160', '20', '80');
INSERT INTO `sys_role_menu` VALUES ('210', '1', '59');
INSERT INTO `sys_role_menu` VALUES ('211', '1', '61');
INSERT INTO `sys_role_menu` VALUES ('212', '1', '62');
INSERT INTO `sys_role_menu` VALUES ('213', '1', '80');
INSERT INTO `sys_role_menu` VALUES ('216', '14', '80');
INSERT INTO `sys_role_menu` VALUES ('228', '21', '80');
INSERT INTO `sys_role_menu` VALUES ('227', '21', '62');
INSERT INTO `sys_role_menu` VALUES ('226', '21', '61');
INSERT INTO `sys_role_menu` VALUES ('225', '21', '3');
INSERT INTO `sys_role_menu` VALUES ('224', '21', '4');
INSERT INTO `sys_role_menu` VALUES ('223', '21', '87');
INSERT INTO `sys_role_menu` VALUES ('229', '13', '61');
INSERT INTO `sys_role_menu` VALUES ('230', '13', '62');
INSERT INTO `sys_role_menu` VALUES ('231', '13', '80');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `nickname` varchar(32) NOT NULL,
  `xb_dm` char(2) DEFAULT NULL,
  `sfzjhm` varchar(21) DEFAULT NULL,
  `csrq` date DEFAULT NULL,
  `zuoji` varchar(12) DEFAULT '0',
  `shouji` varchar(11) DEFAULT '0',
  `duanhao` varchar(11) DEFAULT '0',
  `dept_id` bigint(20) DEFAULT NULL,
  `bmzyfzr` char(1) NOT NULL DEFAULT 'Y',
  `ryzt_dm` char(2) DEFAULT NULL,
  `qtbz_dm` char(1) DEFAULT NULL,
  `tysjq` date DEFAULT NULL,
  `tysjz` date DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_dept` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15227300064 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('15201230068', 'gynmzq', 'e10adc3949ba59abbe56e057f20f883e', '', '赵全', '01', '520103196211191614', null, '0789-2345678', '13267893456', '112456', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020095', 'gynmfj', 'e10adc3949ba59abbe56e057f20f883e', '', '樊俊', '02', '520102196806110426', null, '0858-2345678', '13345657889', '666666', '15211000000', 'N', '01', 'N', '2016-05-13', '2016-05-27', '2');
INSERT INTO `sys_user` VALUES ('15201020053', 'gynmzjh', 'e10adc3949ba59abbe56e057f20f883e', '', '赵霁虹', '01', '520103196404190458', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-05-04', '2016-04-28', '3');
INSERT INTO `sys_user` VALUES ('15201020199', 'gyskydjy', 'e10adc3949ba59abbe56e057f20f883e', '', '丁建匀', '01', '522701197112303357', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '4');
INSERT INTO `sys_user` VALUES ('15201020164', 'gynmgzy', 'e10adc3949ba59abbe56e057f20f883e', '', '顾子扬', '01', '520102196103295815', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-05-19', '2016-05-18', '5');
INSERT INTO `sys_user` VALUES ('15201020157', 'gynmldm', 'e10adc3949ba59abbe56e057f20f883e', '', '刘丹梅', '02', '52010219690706422X', null, '0858-3673945', '13319841234', '333333', '15211000000', 'N', '01', 'N', '2016-05-16', '2016-05-18', '1');
INSERT INTO `sys_user` VALUES ('15201020167', 'gynmjjs', 'e10adc3949ba59abbe56e057f20f883e', '', '金家顺', '02', '520102196605275822', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '10');
INSERT INTO `sys_user` VALUES ('15201020174', 'gynmly5', 'e10adc3949ba59abbe56e057f20f883e', '', '刘越', '02', '520102197611163020', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '9');
INSERT INTO `sys_user` VALUES ('15201020142', 'gynmhw', 'e10adc3949ba59abbe56e057f20f883e', '', '黄伟', '01', '520102196112143012', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-05-03', '2016-05-18', '8');
INSERT INTO `sys_user` VALUES ('15201020145', 'gynmlp1', 'e10adc3949ba59abbe56e057f20f883e', '', '廖平', '01', '520102195804063414', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '7');
INSERT INTO `sys_user` VALUES ('15201020166', 'gynmll2', 'e10adc3949ba59abbe56e057f20f883e', '', '罗莉', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '6');
INSERT INTO `sys_user` VALUES ('15201020013', 'gynmlwd', 'e10adc3949ba59abbe56e057f20f883e', '', '廖卫东', '01', '520102196705092011', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-09-18', '2016-09-30', '1');
INSERT INTO `sys_user` VALUES ('15201020319', 'gynmfkl1', 'e10adc3949ba59abbe56e057f20f883e', '', '冯开林', '01', '522501196709261692', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020123', 'gynmlcz', 'e10adc3949ba59abbe56e057f20f883e', '', '李成洲', '01', '520103196601080418', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020067', 'gynmawn', 'e10adc3949ba59abbe56e057f20f883e', '', '安维娜', '02', '520103196008104423', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020060', 'gynmly', 'e10adc3949ba59abbe56e057f20f883e', '', '李洋', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020162', 'gynmld', 'e10adc3949ba59abbe56e057f20f883e', '', '李丹', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022011', 'gynmzh3', 'e10adc3949ba59abbe56e057f20f883e', '', '张宏', '01', '520102196710243013', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201210098', 'gynmhyf1', 'e10adc3949ba59abbe56e057f20f883e', '', '何永发', '01', '520103195411180819', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020176', 'gynmcl', 'e10adc3949ba59abbe56e057f20f883e', '', '陈雷', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020111', 'gynmjw', 'e10adc3949ba59abbe56e057f20f883e', '', '金威', '01', '520102195801293417', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020153', 'gynmtf', 'e10adc3949ba59abbe56e057f20f883e', '', '田夫', '01', '520102195805150819', null, '0858-3673945', '15121769990', '541985', '15205110000', 'N', '01', 'N', '2016-05-12', '2016-05-26', '1');
INSERT INTO `sys_user` VALUES ('15201021066', 'gynmld1', 'e10adc3949ba59abbe56e057f20f883e', '', '李丹1', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201021099', 'gynmmst', 'e10adc3949ba59abbe56e057f20f883e', '', '马尚涛', '01', '52010219591022383X', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020204', 'gynmtl1', 'e10adc3949ba59abbe56e057f20f883e', '', '田林', '01', '520103196205183212', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020269', 'gynmyjqcbs', 'e10adc3949ba59abbe56e057f20f883e', '', '杨靖', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-05-04', '2016-06-01', '1');
INSERT INTO `sys_user` VALUES ('15201020007', 'gynmwyk', 'e10adc3949ba59abbe56e057f20f883e', '', '王宇康', '01', '520102197107031213', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201030206', 'gynmzzk', 'e10adc3949ba59abbe56e057f20f883e', '', '张震昆', '01', '520102197001160412', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022022', 'gynmlgy', 'e10adc3949ba59abbe56e057f20f883e', '', '刘固祎', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201030249', 'gynmjfy', 'e10adc3949ba59abbe56e057f20f883e', '', '金凤英', '02', '520103196206084822', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022010', 'gynmys', 'e10adc3949ba59abbe56e057f20f883e', '', '颜实', '01', '520103196801300411', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201030228', 'gynmhf', 'e10adc3949ba59abbe56e057f20f883e', '', '黄凡', '02', '520103196611225625', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201130009', 'gybyxg', 'e10adc3949ba59abbe56e057f20f883e', '', '肖刚', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022016', 'gynmslj', 'e10adc3949ba59abbe56e057f20f883e', '', '孙丽君', '02', '420527198705013867', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020006', 'gynmlwc', 'e10adc3949ba59abbe56e057f20f883e', '', '林晚春', '02', '520103197704120421', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201810010', 'gynmlsf', 'e10adc3949ba59abbe56e057f20f883e', '', '刘书发', '01', '520102197604203418', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020208', 'gynmzl1', 'e10adc3949ba59abbe56e057f20f883e', '', '郑莉', '02', '520102196301032020', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201021116', 'gynmmyj', 'e10adc3949ba59abbe56e057f20f883e', '', '马永杰', '02', '370705198701221042', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020051', 'gynmlxq', 'e10adc3949ba59abbe56e057f20f883e', '', '罗晓琴', '02', '520103197005200449', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020202', 'gynmwzy', 'e10adc3949ba59abbe56e057f20f883e', '', '魏泽艳', '02', '520102196311253046', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020216', 'gynmlya', 'e10adc3949ba59abbe56e057f20f883e', '', '林玉傲', '01', '520102195612014239', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020212', 'gynmdgp', 'e10adc3949ba59abbe56e057f20f883e', '', '邓桂萍', '02', '520102196602143429', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020175', 'gynmqyh', 'e10adc3949ba59abbe56e057f20f883e', '', '戚远洪', '01', '520102196903232011', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020215', 'gynmzhy', 'e10adc3949ba59abbe56e057f20f883e', '', '邹海燕', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020221', 'gynmtxy', 'e10adc3949ba59abbe56e057f20f883e', '', '屠小义', '01', '520102197505200019', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020279', 'gynmwln', 'e10adc3949ba59abbe56e057f20f883e', '', '王琳娜', '02', '52252819831027006X', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022018', 'gynmwp1', 'e10adc3949ba59abbe56e057f20f883e', '', '王培', '02', '411326198801010422', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201029999', '15201029999', 'e10adc3949ba59abbe56e057f20f883e', '', '甘元桂综合', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201029998', 'gly520102', 'e10adc3949ba59abbe56e057f20f883e', '', '南明管理员', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020219', 'gynmlm', 'e10adc3949ba59abbe56e057f20f883e', '', '李敏', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201810073', 'gt3qzwhy', 'e10adc3949ba59abbe56e057f20f883e', '', '王海云', '02', '522502197003140021', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022020', 'gynmzy', 'e10adc3949ba59abbe56e057f20f883e', '', '周娅', '02', '522227198608086043', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910004', 'gynmlw', 'e10adc3949ba59abbe56e057f20f883e', '', '刘薇', '02', '7405156483431266', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910003', 'gynmlr', 'e10adc3949ba59abbe56e057f20f883e', '', '李睿', '02', '3804465468117817', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-05-04', '2016-05-04', '1');
INSERT INTO `sys_user` VALUES ('15201020239', 'gynmzyhsz', 'e10adc3949ba59abbe56e057f20f883e', '', '南明专业化', '01', '520101197705050025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15226000130', 'gynmzql1', 'e10adc3949ba59abbe56e057f20f883e', '', '邹巧玲', '02', '520102197512134224', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15227300063', 'gynmryq', 'e10adc3949ba59abbe56e057f20f883e', '', '任艳秋', '02', '520103198209034424', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022021', 'gynmzxz', 'e10adc3949ba59abbe56e057f20f883e', '', '张雪竹', '02', '522729198712210024', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020192', 'gynmcyb', 'e10adc3949ba59abbe56e057f20f883e', '', '陈远碧', '02', '520102196912253025', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020203', 'gynmcll', 'e10adc3949ba59abbe56e057f20f883e', '', '陈丽丽', '02', '520201197204080067', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201021015', 'gynmwlx', 'e10adc3949ba59abbe56e057f20f883e', '', '万凌晓', '02', '511002198807080348', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910005', 'gynmcx', 'e10adc3949ba59abbe56e057f20f883e', '', '南明查询', '01', '7213176857172943', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201110015', 'gynmwll', 'e10adc3949ba59abbe56e057f20f883e', '', '王玲丽', '02', '520102197512223462', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022312', 'gyskyyq', 'e10adc3949ba59abbe56e057f20f883e', '', '袁芊', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020099', 'gynmlyh', 'e10adc3949ba59abbe56e057f20f883e', '', '廖玉华', '02', '520102196309131226', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022019', 'gynmtjy', 'e10adc3949ba59abbe56e057f20f883e', '', '汤金愿', '02', '52210119870526042X', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020181', 'gynmwlq', 'e10adc3949ba59abbe56e057f20f883e', '', '王利群', '02', '522728196108280020', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020189', 'gynmzzj', 'e10adc3949ba59abbe56e057f20f883e', '', '詹致军', '02', '520103197511276729', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020048', 'gynmzlf', 'e10adc3949ba59abbe56e057f20f883e', '', '钟兰芬', '02', '52010219640610342X', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022306', 'gynmlhm31', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏31', '02', '5146272979639339', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022028', 'gynmlhm19', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏19', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022308', 'gynmlhm33', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏33', '02', '3271235176361573', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022309', 'gynmlhm34', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏34', '02', '4897525675423506', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022310', 'gynmlhm35', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏35', '02', '6488830644365733', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022311', 'gynmlhm36', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏36', '02', '3024762633223889', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910007', 'gynmdd10', 'e10adc3949ba59abbe56e057f20f883e', '', '邓迪10', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910008', 'gynmdd11', 'e10adc3949ba59abbe56e057f20f883e', '', '邓迪11', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910009', 'gynmdd12', 'e10adc3949ba59abbe56e057f20f883e', '', '邓迪12', '01', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201910010', 'gynmdd13', 'e10adc3949ba59abbe56e057f20f883e', '', '邓迪13', '01', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022318', 'nmcgsdzdcm', 'e10adc3949ba59abbe56e057f20f883e', '', '宏宇网征点-常敏', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022319', 'nmcgsdzdzky', 'e10adc3949ba59abbe56e057f20f883e', '', '东风南方网征点- 周坤玉', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022316', 'nmcgsdzdzy', 'e10adc3949ba59abbe56e057f20f883e', '', '新双立网征点-周玥', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022317', 'nmcgsdzdhd', 'e10adc3949ba59abbe56e057f20f883e', '', '宏跃昌网征点-何东', '01', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201090032', 'gyjzclhm', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022315', 'gynmlhm37', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏37', '01', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022314', 'gynmlhm38', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏38', '02', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022301', 'gynmlhm26', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏26', '02', '4160486928822498', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022302', 'gynmlhm27', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏27', '02', '3914507041282925', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022303', 'gynmlhm28', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏28', '01', '7952802552309312', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022304', 'gynmlhm29', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏29', '01', '9323538126203290', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022305', 'gynmlhm30', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏30', '01', '5327275941221392', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020134', 'gynmhc', 'e10adc3949ba59abbe56e057f20f883e', '', '黄灿—大厅', '01', '0360420512257495', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022029', 'gynmlhm20', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏20', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022030', 'gynmlhm21', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏21', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022031', 'gynmlhm22', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏22', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022032', 'gynmlhm23', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏23', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022050', 'gynmlhm24', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏24', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201020170', 'gynmlx1', 'e10adc3949ba59abbe56e057f20f883e', '', '李响', '02', '520103197801232425', null, '', '', '', '15211000000', 'N', '01', 'Y', null, null, '1');
INSERT INTO `sys_user` VALUES ('15201022051', 'gynmlhm25', 'e10adc3949ba59abbe56e057f20f883e', '', '龙海敏25', '02', '520102197301222048', null, '', '', '', '15211000000', 'N', '01', 'N', '2016-09-20', '2016-09-30', '1');
INSERT INTO `sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '系统管理员', '01', '520202198308066711', '2016-05-17', '0858-2345768', '15121769990', '111233', '15211000000', 'N', '01', 'Y', null, null, '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6DD3562BC592DFF7` (`role_id`),
  KEY `FK6DD3562B6ABDA3D7` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('45', '31', '17');
INSERT INTO `sys_user_role` VALUES ('91', '35', '13');
INSERT INTO `sys_user_role` VALUES ('102', '27', '18');
INSERT INTO `sys_user_role` VALUES ('103', '20', '18');
INSERT INTO `sys_user_role` VALUES ('104', '25', '18');
INSERT INTO `sys_user_role` VALUES ('106', '24', '18');
INSERT INTO `sys_user_role` VALUES ('107', '31', '18');
INSERT INTO `sys_user_role` VALUES ('108', '35', '18');
INSERT INTO `sys_user_role` VALUES ('164', '35', '20');
INSERT INTO `sys_user_role` VALUES ('163', '19', '20');
INSERT INTO `sys_user_role` VALUES ('162', '24', '20');
INSERT INTO `sys_user_role` VALUES ('161', '33', '20');
INSERT INTO `sys_user_role` VALUES ('160', '25', '20');
INSERT INTO `sys_user_role` VALUES ('143', '37', '14');
INSERT INTO `sys_user_role` VALUES ('148', '39', '12');
INSERT INTO `sys_user_role` VALUES ('159', '20', '20');
INSERT INTO `sys_user_role` VALUES ('150', '33', '14');
INSERT INTO `sys_user_role` VALUES ('151', '33', '18');
INSERT INTO `sys_user_role` VALUES ('158', '27', '20');
INSERT INTO `sys_user_role` VALUES ('156', '35', '1');
INSERT INTO `sys_user_role` VALUES ('157', '1', '1');
INSERT INTO `sys_user_role` VALUES ('165', '39', '20');
INSERT INTO `sys_user_role` VALUES ('166', '15201020153', '14');

-- ----------------------------
-- Table structure for sys_xx_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_xx_dict`;
CREATE TABLE `sys_xx_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bm` varchar(60) DEFAULT NULL,
  `mc` varchar(200) DEFAULT NULL,
  `qybz` char(1) DEFAULT 'Y',
  `xgbz` char(1) DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_xx_dict
-- ----------------------------
INSERT INTO `sys_xx_dict` VALUES ('2', 'XZJB', '行政级别', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('42', 'ZGZS', '资格证书', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('21', 'ZGXL', '最高学历', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('3', 'ZYMC', '专业名称', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('7', 'RYZT', '人员状态', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('8', 'TMLX', '题目类型', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('1', 'XB', '性别', 'Y', 'N');
INSERT INTO `sys_xx_dict` VALUES ('4', 'ZGZC', '最高职称', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('9', 'NYCD', '难易程度', 'Y', 'N');
INSERT INTO `sys_xx_dict` VALUES ('10', 'FXLX', '分享类型', 'Y', 'N');
INSERT INTO `sys_xx_dict` VALUES ('61', 'SF', '是否', 'Y', 'N');
INSERT INTO `sys_xx_dict` VALUES ('81', 'QTBZ', '启停标志', 'Y', 'N');
INSERT INTO `sys_xx_dict` VALUES ('82', 'ANTB', '按钮图标', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('83', 'ANMC', '按钮名称', 'Y', 'Y');
INSERT INTO `sys_xx_dict` VALUES ('84', 'ANFF', '按钮方法', 'Y', 'Y');

-- ----------------------------
-- Table structure for sys_xx_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_xx_dict_detail`;
CREATE TABLE `sys_xx_dict_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bm` varchar(400) DEFAULT NULL,
  `mc` varchar(200) DEFAULT NULL,
  `dict_id` bigint(20) DEFAULT NULL,
  `qybz` char(1) DEFAULT 'Y',
  `xgbz` char(1) DEFAULT 'Y',
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_xx_dict_detail
-- ----------------------------
INSERT INTO `sys_xx_dict_detail` VALUES ('1', '1', '正高级', '4', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('65', '1', '研究生教育...', '21', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('55', '12', '省（区、市）委党校大学', '21', 'Y', 'Y', '12');
INSERT INTO `sys_xx_dict_detail` VALUES ('57', '15', '中等职业学校...', '21', 'Y', 'Y', '15');
INSERT INTO `sys_xx_dict_detail` VALUES ('58', '17', '职高', '21', 'Y', 'Y', '17');
INSERT INTO `sys_xx_dict_detail` VALUES ('83', '2', '副高级', '4', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('76', '1', '税务师', '42', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('77', '3', '律师（A征）', '42', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('94', '15', '国家心理咨询师（三级）', '42', 'Y', 'Y', '15');
INSERT INTO `sys_xx_dict_detail` VALUES ('175', '012', '政治学类', '3', 'Y', 'Y', '12');
INSERT INTO `sys_xx_dict_detail` VALUES ('176', '013', '公安学类', '3', 'Y', 'Y', '13');
INSERT INTO `sys_xx_dict_detail` VALUES ('178', '015', '教育学类', '3', 'Y', 'Y', '15');
INSERT INTO `sys_xx_dict_detail` VALUES ('184', '023', '艺术类（一）', '3', 'Y', 'Y', '23');
INSERT INTO `sys_xx_dict_detail` VALUES ('185', '024', '艺术类（二）', '3', 'Y', 'Y', '24');
INSERT INTO `sys_xx_dict_detail` VALUES ('160', '029', '数学类', '3', 'Y', 'Y', '29');
INSERT INTO `sys_xx_dict_detail` VALUES ('190', '035', '地理科学类', '3', 'Y', 'Y', '35');
INSERT INTO `sys_xx_dict_detail` VALUES ('204', '037', '大气科学类', '3', 'Y', 'Y', '37');
INSERT INTO `sys_xx_dict_detail` VALUES ('196', '044', '科技信息与管理类', '3', 'Y', 'Y', '44');
INSERT INTO `sys_xx_dict_detail` VALUES ('207', '045', '计算机信息管理类', '3', 'Y', 'Y', '45');
INSERT INTO `sys_xx_dict_detail` VALUES ('223', '054', '电子与信息类', '3', 'Y', 'Y', '54');
INSERT INTO `sys_xx_dict_detail` VALUES ('224', '055', '土建类', '3', 'Y', 'Y', '55');
INSERT INTO `sys_xx_dict_detail` VALUES ('227', '059', '化工与制药类', '3', 'Y', 'Y', '59');
INSERT INTO `sys_xx_dict_detail` VALUES ('230', '062', '林业工程类', '3', 'Y', 'Y', '62');
INSERT INTO `sys_xx_dict_detail` VALUES ('231', '064', '交通运输类', '3', 'Y', 'Y', '64');
INSERT INTO `sys_xx_dict_detail` VALUES ('238', '074', '动物生产与兽医类', '3', 'Y', 'Y', '74');
INSERT INTO `sys_xx_dict_detail` VALUES ('217', '079', '基础医学类', '3', 'Y', 'Y', '79');
INSERT INTO `sys_xx_dict_detail` VALUES ('219', '082', '口腔医学类', '3', 'Y', 'Y', '82');
INSERT INTO `sys_xx_dict_detail` VALUES ('261', '085', '护理学类', '3', 'Y', 'Y', '85');
INSERT INTO `sys_xx_dict_detail` VALUES ('243', '087', '管理类', '3', 'Y', 'Y', '87');
INSERT INTO `sys_xx_dict_detail` VALUES ('21', '3', '中级', '4', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('24', '04', '离职', '7', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('26', '02', '女', '1', 'Y', 'N', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('42', '0102', '省部级副职', '2', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('63', '05', '科员', '2', 'Y', 'Y', '9');
INSERT INTO `sys_xx_dict_detail` VALUES ('71', '16', '中专', '21', 'Y', 'Y', '16');
INSERT INTO `sys_xx_dict_detail` VALUES ('60', '22', '初中', '21', 'Y', 'Y', '22');
INSERT INTO `sys_xx_dict_detail` VALUES ('75', '23', '小学...', '21', 'Y', 'Y', '23');
INSERT INTO `sys_xx_dict_detail` VALUES ('12', '01', '分享知识（所有人均可查看）', '10', 'Y', 'N', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('13', '02', '个人知识（只有自己可以查看）', '10', 'Y', 'N', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('91', '12', '人力资源管理师', '42', 'Y', 'Y', '12');
INSERT INTO `sys_xx_dict_detail` VALUES ('93', '14', '国家心理咨询师（二级）', '42', 'Y', 'Y', '14');
INSERT INTO `sys_xx_dict_detail` VALUES ('95', '17', '其他', '42', 'Y', 'Y', '17');
INSERT INTO `sys_xx_dict_detail` VALUES ('98', '03', '马克思主义理论学', '3', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('105', '07', '财政类', '3', 'Y', 'Y', '7');
INSERT INTO `sys_xx_dict_detail` VALUES ('99', '08', '税务类', '3', 'Y', 'Y', '8');
INSERT INTO `sys_xx_dict_detail` VALUES ('100', '05', '经济学类', '3', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('186', '025', '历史学', '3', 'Y', 'Y', '25');
INSERT INTO `sys_xx_dict_detail` VALUES ('158', '026', '历史学类', '3', 'Y', 'Y', '26');
INSERT INTO `sys_xx_dict_detail` VALUES ('187', '028', '理学', '3', 'Y', 'Y', '28');
INSERT INTO `sys_xx_dict_detail` VALUES ('202', '032', '生物科学类', '3', 'Y', 'Y', '32');
INSERT INTO `sys_xx_dict_detail` VALUES ('189', '033', '天文学类', '3', 'Y', 'Y', '33');
INSERT INTO `sys_xx_dict_detail` VALUES ('203', '034', '地质学类', '3', 'Y', 'Y', '34');
INSERT INTO `sys_xx_dict_detail` VALUES ('192', '038', '海洋科学类', '3', 'Y', 'Y', '38');
INSERT INTO `sys_xx_dict_detail` VALUES ('205', '039', '力学类', '3', 'Y', 'Y', '39');
INSERT INTO `sys_xx_dict_detail` VALUES ('208', '047', '工学', '3', 'Y', 'Y', '47');
INSERT INTO `sys_xx_dict_detail` VALUES ('229', '061', '农业工程类', '3', 'Y', 'Y', '61');
INSERT INTO `sys_xx_dict_detail` VALUES ('234', '067', '公安技术类', '3', 'Y', 'Y', '67');
INSERT INTO `sys_xx_dict_detail` VALUES ('241', '080', '预防医学类', '3', 'Y', 'Y', '80');
INSERT INTO `sys_xx_dict_detail` VALUES ('43', '0201', '司局级正职', '2', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('45', '0302', '处级副职', '2', 'Y', 'Y', '6');
INSERT INTO `sys_xx_dict_detail` VALUES ('48', '07', '未定职公务员', '2', 'Y', 'Y', '11');
INSERT INTO `sys_xx_dict_detail` VALUES ('49', '3', '硕士研究生', '21', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('53', '10', '大学普通班', '21', 'Y', 'Y', '10');
INSERT INTO `sys_xx_dict_detail` VALUES ('81', '24', '小学', '21', 'Y', 'Y', '24');
INSERT INTO `sys_xx_dict_detail` VALUES ('85', '2', '注册会计师', '42', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('87', '6', '审计师', '42', 'Y', 'Y', '6');
INSERT INTO `sys_xx_dict_detail` VALUES ('88', '9', '中级会计', '42', 'Y', 'Y', '9');
INSERT INTO `sys_xx_dict_detail` VALUES ('92', '13', '教师资格', '42', 'Y', 'Y', '13');
INSERT INTO `sys_xx_dict_detail` VALUES ('96', '05', '死亡', '7', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('154', '011', '社会学类', '3', 'Y', 'Y', '11');
INSERT INTO `sys_xx_dict_detail` VALUES ('157', '018', '职业技术教育类', '3', 'Y', 'Y', '18');
INSERT INTO `sys_xx_dict_detail` VALUES ('177', '014', '教育学', '3', 'Y', 'Y', '14');
INSERT INTO `sys_xx_dict_detail` VALUES ('182', '021', '外国语言文学类', '3', 'Y', 'Y', '21');
INSERT INTO `sys_xx_dict_detail` VALUES ('201', '030', '物理学类', '3', 'Y', 'Y', '30');
INSERT INTO `sys_xx_dict_detail` VALUES ('209', '048', '地质类', '3', 'Y', 'Y', '48');
INSERT INTO `sys_xx_dict_detail` VALUES ('221', '052', '热能核能类', '3', 'Y', 'Y', '52');
INSERT INTO `sys_xx_dict_detail` VALUES ('228', '060', '轻工粮食食品类', '3', 'Y', 'Y', '60');
INSERT INTO `sys_xx_dict_detail` VALUES ('235', '069', '管理工程类', '3', 'Y', 'Y', '69');
INSERT INTO `sys_xx_dict_detail` VALUES ('237', '072', '森林资源类', '3', 'Y', 'Y', '72');
INSERT INTO `sys_xx_dict_detail` VALUES ('215', '075', '水产类', '3', 'Y', 'Y', '75');
INSERT INTO `sys_xx_dict_detail` VALUES ('242', '081', '临床医学与医学技术类', '3', 'Y', 'Y', '81');
INSERT INTO `sys_xx_dict_detail` VALUES ('218', '083', '中医学类', '3', 'Y', 'Y', '83');
INSERT INTO `sys_xx_dict_detail` VALUES ('262', '086', '药学类', '3', 'Y', 'Y', '86');
INSERT INTO `sys_xx_dict_detail` VALUES ('244', '088', '公共管理类', '3', 'Y', 'Y', '88');
INSERT INTO `sys_xx_dict_detail` VALUES ('22', '4', '助理级', '4', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('23', '01', '正常', '7', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('4', '01', '单项选择题', '8', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('5', '02', '多项选择题', '8', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('6', '03', '判断题', '8', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('7', '04', '计算题', '8', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('8', '05', '主观题', '8', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('46', '0401', '科所级正职', '2', 'Y', 'Y', '7');
INSERT INTO `sys_xx_dict_detail` VALUES ('62', '0402', '科所级副职', '2', 'Y', 'Y', '8');
INSERT INTO `sys_xx_dict_detail` VALUES ('47', '06', '办事员', '2', 'Y', 'Y', '10');
INSERT INTO `sys_xx_dict_detail` VALUES ('66', '2', '博士研究生', '21', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('67', '4', '研究生班', '21', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('50', '5', '中央党校研究生', '21', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('70', '13', '中央党校大专', '21', 'Y', 'Y', '13');
INSERT INTO `sys_xx_dict_detail` VALUES ('56', '14', '省（区、市）委党校大专', '21', 'Y', 'Y', '14');
INSERT INTO `sys_xx_dict_detail` VALUES ('59', '18', '技校', '21', 'Y', 'Y', '18');
INSERT INTO `sys_xx_dict_detail` VALUES ('72', '19', '普通高中...', '21', 'Y', 'Y', '19');
INSERT INTO `sys_xx_dict_detail` VALUES ('82', '25', '其他', '21', 'Y', 'Y', '25');
INSERT INTO `sys_xx_dict_detail` VALUES ('79', '7', '会计从业资格', '42', 'Y', 'Y', '7');
INSERT INTO `sys_xx_dict_detail` VALUES ('80', '8', '初级会计', '42', 'Y', 'Y', '8');
INSERT INTO `sys_xx_dict_detail` VALUES ('101', '16', '经济师', '42', 'Y', 'Y', '16');
INSERT INTO `sys_xx_dict_detail` VALUES ('102', '02', '哲学类', '3', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('103', '04', '经济学', '3', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('104', '06', '工商管理类', '3', 'Y', 'Y', '6');
INSERT INTO `sys_xx_dict_detail` VALUES ('106', '09', '法学', '3', 'Y', 'Y', '9');
INSERT INTO `sys_xx_dict_detail` VALUES ('156', '016', '思想政治教育类', '3', 'Y', 'Y', '16');
INSERT INTO `sys_xx_dict_detail` VALUES ('180', '019', '文学', '3', 'Y', 'Y', '19');
INSERT INTO `sys_xx_dict_detail` VALUES ('181', '020', '中国语言文学类', '3', 'Y', 'Y', '20');
INSERT INTO `sys_xx_dict_detail` VALUES ('183', '022', '新闻学类', '3', 'Y', 'Y', '22');
INSERT INTO `sys_xx_dict_detail` VALUES ('193', '041', '材料科学类', '3', 'Y', 'Y', '41');
INSERT INTO `sys_xx_dict_detail` VALUES ('199', '050', '机械类', '3', 'Y', 'Y', '50');
INSERT INTO `sys_xx_dict_detail` VALUES ('200', '051', '仪器仪表类', '3', 'Y', 'Y', '51');
INSERT INTO `sys_xx_dict_detail` VALUES ('222', '053', '电工类', '3', 'Y', 'Y', '53');
INSERT INTO `sys_xx_dict_detail` VALUES ('211', '063', '纺织类', '3', 'Y', 'Y', '63');
INSERT INTO `sys_xx_dict_detail` VALUES ('232', '065', '航空航天类', '3', 'Y', 'Y', '65');
INSERT INTO `sys_xx_dict_detail` VALUES ('214', '073', '环境保护类', '3', 'Y', 'Y', '73');
INSERT INTO `sys_xx_dict_detail` VALUES ('239', '076', '管理类', '3', 'Y', 'Y', '76');
INSERT INTO `sys_xx_dict_detail` VALUES ('25', '02', '退休', '7', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('2', '03', '病退', '7', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('3', '01', '男', '1', 'Y', 'N', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('41', '0101', '省部级正职', '2', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('44', '0202', '司局级副职', '2', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('61', '0301', '处级正职', '2', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('64', '08', '行政执法类公务员', '2', 'Y', 'Y', '12');
INSERT INTO `sys_xx_dict_detail` VALUES ('51', '6', '省（区、市）委党校研究生', '21', 'Y', 'Y', '6');
INSERT INTO `sys_xx_dict_detail` VALUES ('52', '7', '本专科教育...', '21', 'Y', 'Y', '7');
INSERT INTO `sys_xx_dict_detail` VALUES ('68', '8', '大学', '21', 'Y', 'Y', '8');
INSERT INTO `sys_xx_dict_detail` VALUES ('69', '9', '大专', '21', 'Y', 'Y', '9');
INSERT INTO `sys_xx_dict_detail` VALUES ('54', '11', '中央党校大学', '21', 'Y', 'Y', '11');
INSERT INTO `sys_xx_dict_detail` VALUES ('73', '20', '普通高中', '21', 'Y', 'Y', '20');
INSERT INTO `sys_xx_dict_detail` VALUES ('74', '21', '初中...', '21', 'Y', 'Y', '21');
INSERT INTO `sys_xx_dict_detail` VALUES ('9', '01', '简单', '9', 'Y', 'N', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('10', '02', '中等', '9', 'Y', 'N', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('11', '03', '困难', '9', 'Y', 'N', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('84', '5', '技术员级', '4', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('78', '4', '律师（B证）', '42', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('86', '5', '律师（C证）', '42', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('89', '10', '高级会计', '42', 'Y', 'Y', '10');
INSERT INTO `sys_xx_dict_detail` VALUES ('90', '11', '秘书', '42', 'Y', 'Y', '11');
INSERT INTO `sys_xx_dict_detail` VALUES ('159', '027', '图书信息档案学类', '3', 'Y', 'Y', '27');
INSERT INTO `sys_xx_dict_detail` VALUES ('107', '010', '法学类', '3', 'Y', 'Y', '10');
INSERT INTO `sys_xx_dict_detail` VALUES ('155', '01', '哲学', '3', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('179', '017', '体育学类', '3', 'Y', 'Y', '17');
INSERT INTO `sys_xx_dict_detail` VALUES ('188', '031', '化学类', '3', 'Y', 'Y', '31');
INSERT INTO `sys_xx_dict_detail` VALUES ('191', '036', '地球物理学类', '3', 'Y', 'Y', '36');
INSERT INTO `sys_xx_dict_detail` VALUES ('206', '040', '信息与电子科学类', '3', 'Y', 'Y', '40');
INSERT INTO `sys_xx_dict_detail` VALUES ('194', '042', '环境科学类', '3', 'Y', 'Y', '42');
INSERT INTO `sys_xx_dict_detail` VALUES ('195', '043', '心理学类', '3', 'Y', 'Y', '43');
INSERT INTO `sys_xx_dict_detail` VALUES ('197', '046', '软件工程类', '3', 'Y', 'Y', '46');
INSERT INTO `sys_xx_dict_detail` VALUES ('198', '049', '材料类', '3', 'Y', 'Y', '49');
INSERT INTO `sys_xx_dict_detail` VALUES ('225', '056', '水利类', '3', 'Y', 'Y', '56');
INSERT INTO `sys_xx_dict_detail` VALUES ('226', '057', '测绘类', '3', 'Y', 'Y', '57');
INSERT INTO `sys_xx_dict_detail` VALUES ('210', '058', '环境类', '3', 'Y', 'Y', '58');
INSERT INTO `sys_xx_dict_detail` VALUES ('233', '066', '兵器类', '3', 'Y', 'Y', '66');
INSERT INTO `sys_xx_dict_detail` VALUES ('212', '068', '工程力学类', '3', 'Y', 'Y', '68');
INSERT INTO `sys_xx_dict_detail` VALUES ('213', '070', '农学', '3', 'Y', 'Y', '70');
INSERT INTO `sys_xx_dict_detail` VALUES ('236', '071', '植物生产类', '3', 'Y', 'Y', '71');
INSERT INTO `sys_xx_dict_detail` VALUES ('216', '077', '农业推广类', '3', 'Y', 'Y', '77');
INSERT INTO `sys_xx_dict_detail` VALUES ('240', '078', '医学', '3', 'Y', 'Y', '78');
INSERT INTO `sys_xx_dict_detail` VALUES ('220', '084', '法医学类', '3', 'Y', 'Y', '84');
INSERT INTO `sys_xx_dict_detail` VALUES ('281', 'Y', '是', '61', 'Y', 'N', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('301', 'Y', '启用', '81', 'Y', 'N', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('282', 'N', '否', '61', 'Y', 'N', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('302', 'N', '停用', '81', 'Y', 'N', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('303', 'icon-add', '添加', '82', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('304', 'icon-edit', '修改', '82', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('305', 'icon-remove', '删除', '82', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('306', 'icon-page-excel', '导出', '82', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('307', 'icon-search', '搜索', '82', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('308', '添加', '添加', '83', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('309', '修改', '修改', '83', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('310', '删除', '删除', '83', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('311', '导出', '导出', '83', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('312', '搜索', '搜索', '83', 'Y', 'Y', '5');
INSERT INTO `sys_xx_dict_detail` VALUES ('313', 'Easyui_OpenDialog(\'dlg-route-method-save\')', '添加', '84', 'Y', 'Y', '1');
INSERT INTO `sys_xx_dict_detail` VALUES ('314', 'Easyui_EditDialog(\'dg-route-method-list\',\'dlg-route-method-save\',\'fm-route-method-search\')', '修改', '84', 'Y', 'Y', '2');
INSERT INTO `sys_xx_dict_detail` VALUES ('315', 'Easyui_Delete(\'dg-route-method-list\',\'url\',\'id\')', '删除', '84', 'Y', 'Y', '3');
INSERT INTO `sys_xx_dict_detail` VALUES ('316', 'Easyui_Export(\'url\',\'fm-route-method-search\')', '导出', '84', 'Y', 'Y', '4');
INSERT INTO `sys_xx_dict_detail` VALUES ('317', 'Easyui_Search(\'dg-route-method-list\',\'fm-route-method-search\')', '搜索', '84', 'Y', 'Y', '5');

-- ----------------------------
-- Table structure for zs_content
-- ----------------------------
DROP TABLE IF EXISTS `zs_content`;
CREATE TABLE `zs_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level` varchar(2) DEFAULT '01' COMMENT '01简单；02中等；03较难',
  `share` varchar(2) DEFAULT '1' COMMENT '0 分享知识（所有人查看）；1 个人知识（仅个人查看）；',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_USERID` (`user_id`) USING BTREE,
  KEY `IDX_GROUPID` (`group_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zs_content
-- ----------------------------
INSERT INTO `zs_content` VALUES ('1', '唐代“南青北白唐三彩”中的“南青”是指(  )的青瓷。', '越窑', '5', '1', '02', '01', '2016-05-27 15:43:19');
INSERT INTO `zs_content` VALUES ('2', '在字体字号的选用上，公文的正文一般用(  )。', '三号仿宋体字', '5', '1', '03', '01', '2016-05-27 15:43:19');
INSERT INTO `zs_content` VALUES ('3', '社会主义职业道德最基本要求是(  )。', '爱岗敬业', '5', '2', '03', '01', '2016-05-27 15:43:19');
INSERT INTO `zs_content` VALUES ('4', '马克思主义哲学是(  )。 ', '无产阶级的世界观', '5', '2', '03', '01', '2016-05-27 15:43:19');

INSERT INTO `zs_content` VALUES ('351', '酒逢知己饮，诗向会人吟。', '《增广贤文》。酒要与了解自己的人去喝，诗要向懂得的人去说。', '9', '2', '01', '01', '2016-05-27 15:43:19');
INSERT INTO `zs_content` VALUES ('352', '读书须用意，一字值千金。', '《增广贤文》。读书只有下苦工夫，才会有文辞精妙的文章。', '9', '2', '01', '01', '2016-05-27 15:43:19');
INSERT INTO `zs_content` VALUES ('355', '2017', 'dffsdfewrw', '5', '1', '01', '02', '2016-05-27 16:45:36');

-- ----------------------------
-- Table structure for zs_group
-- ----------------------------
DROP TABLE IF EXISTS `zs_group`;
CREATE TABLE `zs_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zs_group
-- ----------------------------
INSERT INTO `zs_group` VALUES ('1', '根分类', '0', '0');
INSERT INTO `zs_group` VALUES ('2', '考试类', '1', '1');
INSERT INTO `zs_group` VALUES ('3', '能力提升类', '1', '2');
INSERT INTO `zs_group` VALUES ('4', '编程类', '1', '3');
INSERT INTO `zs_group` VALUES ('5', '公共基础知识', '2', '100');
INSERT INTO `zs_group` VALUES ('6', '行政能力测验', '2', '2');
INSERT INTO `zs_group` VALUES ('7', '执业药师资格考试', '2', '3');
INSERT INTO `zs_group` VALUES ('8', '时事政治', '3', '1');
INSERT INTO `zs_group` VALUES ('9', '名言警句', '3', '1');
INSERT INTO `zs_group` VALUES ('10', '妙笔生花', '3', '2');
INSERT INTO `zs_group` VALUES ('11', '领导言论', '3', '1');
INSERT INTO `zs_group` VALUES ('12', '政策法规', '3', '2');
INSERT INTO `zs_group` VALUES ('13', 'Java', '4', '3');
INSERT INTO `zs_group` VALUES ('14', 'Oracle', '4', '1');
INSERT INTO `zs_group` VALUES ('15', 'Linux', '4', '1');
INSERT INTO `zs_group` VALUES ('16', '学习类', '1', '0');
INSERT INTO `zs_group` VALUES ('17', '学习类', '16', '100');
INSERT INTO `zs_group` VALUES ('18', '学习1', '16', '100');
INSERT INTO `zs_group` VALUES ('19', '学习2', '16', '100');

-- ----------------------------
-- View structure for v_sys_cj_dict
-- ----------------------------
DROP VIEW IF EXISTS `v_sys_cj_dict`;
CREATE ALGORITHM=UNDEFINED  VIEW `v_sys_cj_dict` AS select a.id,
if(a.parent_id=1,a.bm,if(b.parent_id=1,b.bm,if(c.parent_id=1,c.bm,null))) as dlbm,
a.bm,a.mc,a.parent_id,a.order_id,a.qybz,a.xgbz
from sys_cj_dict a 
INNER JOIN sys_cj_dict b on a.parent_id=b.id
LEFT JOIN sys_cj_dict c on b.parent_id=c.id
where a.qybz='Y' 
ORDER BY dlbm desc,a.bm ; ;

-- ----------------------------
-- View structure for v_sys_xx_dict
-- ----------------------------
DROP VIEW IF EXISTS `v_sys_xx_dict`;
CREATE ALGORITHM=UNDEFINED   VIEW `v_sys_xx_dict` AS SELECT A.BM DLBM,A.MC DLMC,B.BM,B.MC,B.ORDER_ID,B.QYBZ,B.XGBZ
FROM SYS_XX_DICT A,SYS_XX_DICT_DETAIL B
WHERE A.ID=B.DICT_ID
ORDER BY A.BM,B.ORDER_ID ;
