SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(1) NOT NULL,
  `student_id` int(5) default NULL,
  `subject_id` int(4) default NULL,
  `score` double(3,1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '001', '1001', '80.0');
INSERT INTO `score` VALUES ('2', '002', '1002', '60.0');
INSERT INTO `score` VALUES ('3', '001', '1001', '70.0');
INSERT INTO `score` VALUES ('4', '002', '1001', '60.5');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(3) NOT NULL,
  `name` varchar(10) default NULL,
  `age` int(4) default NULL,
  `sex` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '18', '男');
INSERT INTO `student` VALUES ('2', '李四', '20', '女');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(4) NOT NULL,
  `subject` varchar(10) default NULL,
  `teacher` varchar(10) default NULL,
  `description` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `subject` VALUES ('1002', '数学', '刘老师', '本次考试比较难');
