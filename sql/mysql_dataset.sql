CREATE TABLE `heros`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_max` float NULL DEFAULT NULL,
  `hp_growth` float NULL DEFAULT NULL,
  `hp_start` float NULL DEFAULT NULL,
  `mp_max` float NULL DEFAULT NULL,
  `mp_growth` float NULL DEFAULT NULL,
  `mp_start` float NULL DEFAULT NULL,
  `attack_max` float NULL DEFAULT NULL,
  `attack_growth` float NULL DEFAULT NULL,
  `attack_start` float NULL DEFAULT NULL,
  `defense_max` float NULL DEFAULT NULL,
  `defense_growth` float NULL DEFAULT NULL,
  `defense_start` float NULL DEFAULT NULL,
  `hp_5s_max` float NULL DEFAULT NULL,
  `hp_5s_growth` float NULL DEFAULT NULL,
  `hp_5s_start` float NULL DEFAULT NULL,
  `mp_5s_max` float NULL DEFAULT NULL,
  `mp_5s_growth` float NULL DEFAULT NULL,
  `mp_5s_start` float NULL DEFAULT NULL,
  `attack_speed_max` float NULL DEFAULT NULL,
  `attack_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_main` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_assist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthdate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10069 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `heros` VALUES (10000, '夏侯惇', 7350, 288.8, 3307, 1746, 94, 430, 321, 11.57, 159, 397, 21.14, 101, 98, 3.357, 51, 37, 1.571, 15, 0, '近战', '坦克', '战士', '2016-07-19');
INSERT INTO `heros` VALUES (10001, '钟无艳', 7000, 275, 3150, 1760, 95, 430, 318, 11, 164, 409, 22.07, 100, 92, 3.143, 48, 37, 1.571, 15, 0, '近战', '战士', '坦克', NULL);
INSERT INTO `heros` VALUES (10002, '张飞', 8341, 329.4, 3450, 100, 0, 100, 301, 10.57, 153, 504, 27.07, 125, 115, 4.143, 57, 5, 0, 5, 0, '近战', '坦克', '辅助', NULL);
INSERT INTO `heros` VALUES (10003, '牛魔', 8476, 352.8, 3537, 1926, 104, 470, 273, 8.357, 156, 394, 20.36, 109, 117, 4.214, 58, 42, 1.786, 17, 0, '近战', '坦克', '辅助', '2015-11-24');
INSERT INTO `heros` VALUES (10004, '吕布', 7344, 270, 3564, 0, 0, 0, 343, 12.36, 170, 390, 20.79, 99, 97, 3.071, 54, 0, 0, 0, 0, '近战', '战士', '坦克', '2015-12-22');
INSERT INTO `heros` VALUES (10005, '亚瑟', 8050, 316.3, 3622, 0, 0, 0, 346, 13, 164, 400, 21.57, 98, 106, 3.643, 55, 0, 0, 0, 0, '近战', '战士', '坦克', NULL);
INSERT INTO `heros` VALUES (10006, '芈月', 6164, 281.5, 3105, 100, 0, 100, 289, 9.786, 152, 361, 19.5, 88, 77, 2.357, 44, 0, 0, 0, 0, '远程', '法师', '坦克', '2015-12-08');
INSERT INTO `heros` VALUES (10007, '程咬金', 8611, 369.6, 3437, 0, 0, 0, 316, 11.07, 161, 504, 27.07, 125, 119, 4.429, 57, 0, 0, 0, 0, '近战', '坦克', '战士', NULL);
INSERT INTO `heros` VALUES (10008, '廉颇', 9328, 412.1, 3558, 1708, 92, 420, 286, 8.786, 163, 514, 27.29, 132, 128, 4.929, 59, 36, 1.5, 15, 0, '近战', '坦克', NULL, NULL);
INSERT INTO `heros` VALUES (10009, '东皇太一', 7669, 319.1, 3201, 1926, 104, 470, 286, 8.786, 163, 360, 18.64, 99, 106, 3.786, 53, 42, 1.786, 17, 0, '近战', '坦克', NULL, '2017-03-30');
INSERT INTO `heros` VALUES (10010, '庄周', 8149, 345.6, 3311, 1694, 91, 420, 297, 9.071, 170, 497, 24.79, 150, 113, 4.143, 55, 36, 1.5, 15, 0, '近战', '辅助', '坦克', NULL);
INSERT INTO `heros` VALUES (10011, '太乙真人', 6835, 242.3, 3443, 1680, 90, 420, 284, 9.286, 154, 396, 21.57, 94, 86, 2.643, 49, 35, 1.429, 15, 0, '近战', '辅助', '坦克', '2016-11-24');
INSERT INTO `heros` VALUES (10012, '白起', 8638, 366.3, 3510, 1666, 89, 420, 288, 9.286, 158, 430, 22.14, 120, 119, 4.357, 58, 34, 1.429, 14, 0, '近战', '坦克', NULL, NULL);
INSERT INTO `heros` VALUES (10013, '雅典娜', 6264, 243, 2862, 1732, 93, 430, 327, 11.79, 162, 418, 22.29, 106, 83, 2.786, 44, 36, 1.5, 15, 0, '近战', '战士', '坦克', NULL);
INSERT INTO `heros` VALUES (10014, '刘邦', 8073, 336, 3369, 1940, 105, 470, 302, 10.29, 158, 504, 27.07, 125, 117, 4.214, 58, 42, 1.786, 17, 0, '近战', '坦克', '辅助', '2016-04-26');
INSERT INTO `heros` VALUES (10015, '刘禅', 8581, 372.6, 3364, 1694, 91, 420, 295, 8.357, 178, 459, 22.86, 139, 118, 4.429, 56, 36, 1.5, 15, 0, '近战', '坦克', NULL, NULL);
INSERT INTO `heros` VALUES (10016, '墨子', 7176, 292.4, 3083, 1722, 93, 420, 328, 10.5, 181, 475, 26.64, 102, 100, 3.5, 51, 37, 1.571, 15, 0, '近战', '法师', '坦克', NULL);
INSERT INTO `heros` VALUES (10017, '项羽', 8057, 380.1, 3535, 1694, 91, 420, 306, 10.64, 157, 494, 26.5, 123, 121, 4.5, 58, 36, 1.5, 15, 0, '近战', '坦克', NULL, NULL);
INSERT INTO `heros` VALUES (10018, '关羽', 7107, 270.4, 3322, 10, 0, 10, 343, 12.36, 170, 386, 20.36, 101, 94, 3.071, 51, 0, 0, 0, 0, '近战', '战士', '坦克', '2016-06-28');
INSERT INTO `heros` VALUES (10019, '后羿', 5986, 200.3, 3182, 1784, 96, 440, 396, 16.79, 161, 336, 17.86, 86, 71, 2.143, 41, 38, 1.571, 16, 0, '远程', '射手', NULL, NULL);
INSERT INTO `heros` VALUES (10020, '马可波罗', 5584, 181.6, 3041, 200, 0, 200, 362, 13.36, 175, 344, 18.07, 91, 75, 2.071, 46, 50, 0, 50, 0, '远程', '射手', NULL, '2016-08-23');
INSERT INTO `heros` VALUES (10021, '鲁班七号', 5989, 184.9, 3401, 1756, 94, 440, 400, 16.14, 174, 323, 16.79, 88, 69, 1.929, 42, 36, 1.5, 15, 0, '远程', '射手', NULL, NULL);
INSERT INTO `heros` VALUES (10022, '李元芳', 5725, 194.1, 3007, 1770, 95, 440, 396, 16.79, 161, 340, 18.07, 87, 66, 2.071, 37, 37, 1.571, 15, 0, '远程', '射手', NULL, '2016-04-12');
INSERT INTO `heros` VALUES (10023, '孙尚香', 6014, 198.5, 3235, 1756, 94, 440, 411, 17.07, 172, 346, 18.36, 89, 69, 2.071, 40, 36, 1.5, 15, 0, '远程', '射手', NULL, NULL);
INSERT INTO `heros` VALUES (10024, '黄忠', 5898, 194.6, 3173, 1784, 96, 440, 403, 16.5, 172, 319, 16.29, 91, 68, 2.071, 39, 38, 1.571, 16, 0, '远程', '射手', NULL, NULL);
INSERT INTO `heros` VALUES (10025, '狄仁杰', 5710, 176.3, 3242, 1770, 95, 440, 376, 14.79, 169, 338, 17.36, 95, 66, 1.857, 40, 37, 1.571, 15, 0, '远程', '射手', NULL, NULL);
INSERT INTO `heros` VALUES (10026, '虞姬', 5669, 192.3, 2977, 1770, 95, 440, 407, 17.29, 165, 329, 17.5, 84, 63, 1.929, 36, 38, 1.571, 16, 0, '远程', '射手', NULL, '2016-05-24');
INSERT INTO `heros` VALUES (10027, '成吉思汗', 5799, 198, 3027, 1742, 93, 440, 394, 15, 184, 329, 16.79, 94, 66, 2.071, 37, 36, 1.5, 15, 0, '远程', '射手', NULL, '2016-09-27');
INSERT INTO `heros` VALUES (10028, '嬴政', 5471, 167.6, 3125, 1946, 104, 490, 309, 10.86, 157, 295, 14.57, 91, 70, 1.857, 44, 41, 1.714, 17, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10029, '武则天', 5037, 155.5, 2860, 1988, 107, 490, 297, 8.857, 173, 348, 18.07, 95, 64, 1.714, 40, 43, 1.786, 18, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10030, '露娜', 6612, 256.5, 3021, 1836, 99, 450, 335, 12.29, 163, 375, 19.5, 102, 99, 3.357, 52, 39, 1.643, 16, 0, '近战', '战士', '法师', NULL);
INSERT INTO `heros` VALUES (10031, '甄姬', 5584, 181.6, 3041, 2002, 108, 490, 296, 9.357, 165, 330, 17.36, 87, 71, 2, 43, 44, 1.857, 18, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10032, '妲己', 5824, 185.4, 3229, 2016, 109, 490, 293, 8.786, 170, 326, 17.14, 86, 74, 2, 46, 44, 1.857, 18, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10033, '干将莫邪', 5583, 171, 3189, 1946, 104, 490, 292, 9.5, 159, 323, 16.5, 92, 71, 1.857, 45, 41, 1.714, 17, 0, '远程', '法师', NULL, '2017-05-22');
INSERT INTO `heros` VALUES (10034, '姜子牙', 5399, 174.4, 2958, 2002, 108, 490, 317, 10.64, 168, 342, 16.86, 106, 69, 1.929, 42, 44, 1.857, 18, 0, '远程', '法师', '辅助', NULL);
INSERT INTO `heros` VALUES (10035, '王昭君', 5429, 167.6, 3083, 1960, 105, 490, 296, 9.357, 165, 305, 15.29, 91, 70, 1.857, 44, 41, 1.714, 17, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10036, '诸葛亮', 5655, 180, 3135, 1988, 107, 490, 287, 9.357, 156, 330, 17.36, 87, 72, 2, 44, 43, 1.786, 18, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10037, '不知火舞', 6014, 198.5, 3235, 200, 0, 200, 293, 8.786, 170, 336, 17.64, 89, 76, 2.143, 46, 50, 0, 50, 0, '近战', '法师', '刺客', '2016-05-12');
INSERT INTO `heros` VALUES (10038, '貂蝉', 5611, 185.1, 3019, 1960, 105, 490, 287, 8.571, 167, 330, 17.36, 87, 71, 2, 43, 41, 1.714, 17, 0, '近战', '法师', '刺客', '2015-12-15');
INSERT INTO `heros` VALUES (10039, '孙膑', 6811, 257.4, 3208, 1926, 104, 470, 328, 10.86, 176, 413, 22.5, 98, 85, 2.857, 45, 42, 1.786, 17, 0, '远程', '辅助', '法师', NULL);
INSERT INTO `heros` VALUES (10040, '安琪拉', 5994, 190.8, 3323, 1960, 105, 490, 293, 8.786, 170, 315, 16.57, 83, 76, 2.071, 47, 41, 1.714, 17, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10041, '小乔', 5916, 202, 3088, 1988, 107, 490, 263, 7.857, 153, 309, 15.29, 95, 75, 2.214, 44, 43, 1.786, 18, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10042, '周瑜', 5513, 172.9, 3093, 1974, 106, 490, 298, 9.857, 160, 320, 16.64, 87, 70, 1.857, 44, 42, 1.786, 17, 0, '远程', '法师', NULL, '2015-11-10');
INSERT INTO `heros` VALUES (10043, '张良', 5799, 198, 3027, 1988, 107, 490, 293, 8.786, 170, 320, 16.64, 87, 73, 2.143, 43, 43, 1.786, 18, 0, '远程', '法师', NULL, '2015-10-26');
INSERT INTO `heros` VALUES (10044, '高渐离', 6165, 217.4, 3122, 1988, 107, 490, 290, 9.071, 163, 343, 17.5, 98, 77, 2.357, 44, 42, 1.786, 17, 0, '远程', '法师', NULL, NULL);
INSERT INTO `heros` VALUES (10045, '扁鹊', 6703, 249.9, 3205, 2016, 109, 490, 309, 10.07, 168, 374, 20.5, 87, 83, 2.714, 45, 44, 1.857, 18, 0, '远程', '法师', '辅助', NULL);
INSERT INTO `heros` VALUES (10046, '钟馗', 6280, 204.3, 3420, 1988, 107, 490, 278, 8.286, 162, 390, 20.79, 99, 91, 2.429, 57, 42, 1.786, 17, 0, '近战', '法师', '战士', '2016-03-24');
INSERT INTO `heros` VALUES (10047, '大乔', 5399, 174.4, 2958, 1926, 104, 470, 305, 9.786, 168, 340, 17.64, 93, 69, 1.929, 42, 42, 1.786, 17, 0, '近战', '辅助', NULL, '2017-02-28');
INSERT INTO `heros` VALUES (10048, '鬼谷子', 7107, 270.4, 3322, 1808, 97, 450, 297, 9.643, 162, 394, 21.57, 92, 89, 3, 47, 38, 1.571, 16, 0, '近战', '辅助', NULL, '2017-06-29');
INSERT INTO `heros` VALUES (10049, '蔡文姬', 5910, 190.9, 3238, 1898, 102, 470, 292, 9.5, 159, 350, 18.14, 96, 66, 2, 38, 41, 1.714, 17, 0, '远程', '辅助', NULL, '2016-07-08');
INSERT INTO `heros` VALUES (10050, '花木兰', 5397, 179.4, 2886, 100, 0, 100, 362, 14, 166, 349, 18.79, 86, 72, 2, 44, 0, 0, 0, 0, '近战', '战士', '刺客', '2016-01-01');
INSERT INTO `heros` VALUES (10051, '赵云', 6732, 247.5, 3267, 1760, 95, 430, 380, 14.79, 173, 394, 22.14, 84, 89, 2.786, 50, 37, 1.571, 15, 0, '近战', '战士', '刺客', NULL);
INSERT INTO `heros` VALUES (10052, '橘石京', 7000, 275, 3150, 0, 0, 0, 347, 13, 165, 392, 21.14, 96, 92, 3.143, 48, 0, 0, 0, 0, '近战', '刺客', '战士', NULL);
INSERT INTO `heros` VALUES (10053, '李白', 5483, 179.6, 2968, 1808, 97, 450, 330, 11.5, 169, 358, 18.57, 98, 80, 2.214, 49, 38, 1.571, 16, 0, '近战', '刺客', '战士', '2016-03-01');
INSERT INTO `heros` VALUES (10054, '韩信', 5655, 190.5, 2988, 1704, 91, 430, 386, 15.29, 172, 323, 16.5, 92, 75, 2.143, 45, 36, 1.5, 15, 0, '近战', '刺客', '战士', NULL);
INSERT INTO `heros` VALUES (10055, '杨戬', 7420, 291.5, 3339, 1694, 91, 420, 325, 11.36, 166, 428, 23.57, 98, 98, 3.357, 51, 36, 1.5, 15, 0, '近战', '战士', NULL, '2016-10-11');
INSERT INTO `heros` VALUES (10056, '达摩', 7140, 280.5, 3213, 1694, 91, 420, 355, 13.14, 171, 415, 22.86, 95, 98, 3.357, 51, 36, 1.5, 15, 0, '近战', '战士', NULL, NULL);
INSERT INTO `heros` VALUES (10057, '孙悟空', 6585, 235.1, 3293, 1760, 95, 430, 349, 13, 167, 385, 20.79, 94, 87, 2.643, 50, 37, 1.571, 15, 0, '近战', '战士', '刺客', NULL);
INSERT INTO `heros` VALUES (10058, '刘备', 6900, 262.5, 3225, 1742, 93, 440, 363, 14.29, 163, 381, 19.14, 113, 79, 2.786, 40, 36, 1.5, 15, 0, '远程', '战士', NULL, '2016-02-02');
INSERT INTO `heros` VALUES (10059, '曹操', 7473, 286.1, 3467, 0, 0, 0, 361, 13.36, 174, 371, 19.07, 104, 101, 3.357, 54, 0, 0, 0, 0, '近战', '战士', NULL, NULL);
INSERT INTO `heros` VALUES (10060, '典韦', 7516, 291.6, 3434, 1774, 96, 430, 345, 12.64, 168, 402, 22.36, 89, 99, 3.357, 52, 39, 1.643, 16, 0, '近战', '战士', NULL, NULL);
INSERT INTO `heros` VALUES (10061, '宫本武藏', 6210, 236.3, 2902, 0, 0, 0, 330, 12.36, 157, 391, 20.36, 106, 85, 2.714, 47, 0, 0, 0, 0, '近战', '战士', NULL, '2015-10-30');
INSERT INTO `heros` VALUES (10062, '老夫子', 7155, 270.4, 3370, 5, 0, 5, 329, 11.5, 168, 409, 22.07, 100, 94, 3.071, 51, 0, 0, 0, 1, '近战', '战士', NULL, NULL);
INSERT INTO `heros` VALUES (10063, '哪吒', 7268, 270.4, 3483, 1808, 97, 450, 320, 11.5, 159, 408, 22.07, 99, 98, 3.214, 53, 38, 1.571, 16, 0, '近战', '战士', NULL, '2017-01-12');
INSERT INTO `heros` VALUES (10064, '阿轲', 5968, 192.8, 3269, 0, 0, 0, 427, 17.86, 177, 349, 18.57, 89, 81, 2.214, 50, 0, 0, 0, 0, '近战', '刺客', NULL, NULL);
INSERT INTO `heros` VALUES (10065, '娜可露露', 6205, 211.9, 3239, 1808, 97, 450, 385, 15.14, 173, 359, 19.5, 86, 79, 2.286, 47, 38, 1.571, 16, 0, '近战', '刺客', NULL, '2016-02-22');
INSERT INTO `heros` VALUES (10066, '兰陵王', 6232, 210, 3292, 1822, 98, 450, 388, 15.5, 171, 342, 18.36, 85, 99, 3.357, 52, 46, 1.929, 19, 0, '近战', '刺客', NULL, NULL);
INSERT INTO `heros` VALUES (10067, '铠', 6700, 237.5, 3375, 1784, 96, 440, 328, 10.86, 176, 388, 20.07, 107, 81, 2.643, 44, 38, 1.571, 16, 0, '近战', '战士', '坦克', NULL);
INSERT INTO `heros` VALUES (10068, '百里守约', 5611, 185.1, 3019, 1784, 96, 440, 410, 15.86, 188, 329, 16.79, 94, 68, 2.071, 39, 38, 1.571, 16, 0, '远程', '射手', '刺客', '2017-08-08');


CREATE TABLE `heros_play`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hero_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` int(11) NULL DEFAULT NULL,
  `player_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kda_k` int(11) NULL DEFAULT NULL,
  `kda_d` int(11) NULL DEFAULT NULL,
  `kda_a` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `damage_input` int(11) NULL DEFAULT NULL,
  `damage_output` int(11) NULL DEFAULT NULL,
  `win` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hero_player`(`hero_name`, `game_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of heros_play
-- ----------------------------
INSERT INTO `heros_play` VALUES (502, '露娜', 65314, 'XQ.九尾', 2, 4, 2, 16912, 116536, 48543, 0);
INSERT INTO `heros_play` VALUES (503, '马超', 65314, '百兽', 4, 1, 8, 15963, 78315, 110786, 1);
INSERT INTO `heros_play` VALUES (504, '兰陵王', 65314, 'XQ.绑兔', 4, 5, 9, 11251, 84217, 49224, 0);
INSERT INTO `heros_play` VALUES (505, '虞姬', 65314, '鹏鹏', 2, 5, 10, 14755, 53525, 117879, 1);
INSERT INTO `heros_play` VALUES (506, '狄仁杰', 65314, 'XQ.钎城', 4, 2, 6, 17818, 87906, 119123, 0);
INSERT INTO `heros_play` VALUES (507, '沈梦溪', 65314, '青枫', 6, 0, 7, 13915, 26129, 141993, 1);
INSERT INTO `heros_play` VALUES (508, '吕布', 65314, 'XQ.晨羽', 3, 5, 4, 12220, 161638, 77695, 0);
INSERT INTO `heros_play` VALUES (509, '娜可露露', 65314, '阿改', 7, 4, 3, 15322, 98562, 96175, 1);
INSERT INTO `heros_play` VALUES (510, '太乙真人', 65314, 'XQ.冰尘', 0, 3, 10, 9228, 130577, 29778, 0);
INSERT INTO `heros_play` VALUES (511, '刘邦', 65314, '伊恩', 0, 3, 13, 9658, 132371, 19882, 1);
INSERT INTO `heros_play` VALUES (512, '西施', 65316, 'XQ.九尾', 4, 0, 8, 13055, 27724, 79205, 1);
INSERT INTO `heros_play` VALUES (513, '曜', 65316, '百兽', 2, 3, 0, 11656, 67333, 39793, 0);
INSERT INTO `heros_play` VALUES (514, '裴擒虎', 65316, 'XQ.绑兔', 3, 2, 6, 13712, 109560, 51641, 1);
INSERT INTO `heros_play` VALUES (515, '公孙离', 65316, '鹏鹏', 1, 4, 2, 11423, 60365, 85294, 0);
INSERT INTO `heros_play` VALUES (516, '马可波罗', 65316, 'XQ.钎城', 5, 0, 8, 16294, 62920, 146882, 1);
INSERT INTO `heros_play` VALUES (517, '嬴政', 65316, '青枫', 1, 3, 0, 11715, 45727, 85758, 0);
INSERT INTO `heros_play` VALUES (518, '关羽', 65316, 'XQ.晨羽', 3, 2, 6, 11291, 61483, 55975, 1);
INSERT INTO `heros_play` VALUES (519, '橘右京', 65316, '阿改', 1, 4, 2, 10468, 84777, 35470, 0);
INSERT INTO `heros_play` VALUES (520, '牛魔', 65316, 'XQ.冰尘', 1, 1, 5, 7615, 103102, 20881, 1);
INSERT INTO `heros_play` VALUES (521, '张飞', 65316, '伊恩', 0, 2, 3, 7277, 141364, 19179, 0);
INSERT INTO `heros_play` VALUES (522, '沈梦溪', 65318, 'XQ.九尾', 3, 3, 5, 9399, 39431, 120564, 0);
INSERT INTO `heros_play` VALUES (523, '关羽', 65318, '百兽', 5, 1, 6, 11617, 58227, 73659, 1);
INSERT INTO `heros_play` VALUES (524, '娜可露露', 65318, 'XQ.绑兔', 2, 5, 5, 9845, 64479, 24613, 0);
INSERT INTO `heros_play` VALUES (525, '李元芳', 65318, '鹏鹏', 7, 2, 6, 13212, 65981, 100874, 1);
INSERT INTO `heros_play` VALUES (526, '狂铁', 65318, 'XQ.钎城', 3, 3, 4, 9119, 91255, 44915, 0);
INSERT INTO `heros_play` VALUES (527, '王昭君', 65318, '青枫', 2, 1, 14, 8858, 56575, 77396, 1);
INSERT INTO `heros_play` VALUES (528, '铠', 65318, 'XQ.晨羽', 2, 2, 2, 10068, 76380, 38125, 0);
INSERT INTO `heros_play` VALUES (529, '赵云', 65318, '阿改', 5, 1, 9, 10533, 71810, 60699, 1);
INSERT INTO `heros_play` VALUES (530, '苏烈', 65318, 'XQ.冰尘', 0, 6, 8, 5299, 117464, 24505, 0);
INSERT INTO `heros_play` VALUES (531, '盾山', 65318, '伊恩', 0, 5, 11, 6410, 75541, 22495, 1);
INSERT INTO `heros_play` VALUES (532, '不知火舞', 65321, 'XQ.九尾', 6, 3, 4, 11552, 45066, 71066, 1);
INSERT INTO `heros_play` VALUES (533, '狂铁', 65321, '百兽', 6, 2, 4, 12128, 139214, 94944, 0);
INSERT INTO `heros_play` VALUES (534, '猪八戒', 65321, 'XQ.绑兔', 2, 2, 6, 9992, 137122, 51007, 1);
INSERT INTO `heros_play` VALUES (535, '孙尚香', 65321, '鹏鹏', 2, 4, 1, 12588, 52346, 81110, 0);
INSERT INTO `heros_play` VALUES (536, '李元芳', 65321, 'XQ.钎城', 6, 2, 4, 13604, 53085, 107507, 1);
INSERT INTO `heros_play` VALUES (537, '姜子牙', 65321, '青枫', 1, 3, 2, 9384, 36239, 73666, 0);
INSERT INTO `heros_play` VALUES (538, '马超', 65321, 'XQ.晨羽', 6, 4, 7, 15563, 74586, 76777, 1);
INSERT INTO `heros_play` VALUES (539, '云中君', 65321, '阿改', 1, 8, 5, 9283, 79184, 57974, 0);
INSERT INTO `heros_play` VALUES (540, '张飞', 65321, 'XQ.冰尘', 0, 0, 10, 7591, 93290, 27693, 1);
INSERT INTO `heros_play` VALUES (541, '太乙真人', 65321, '伊恩', 1, 3, 3, 8217, 78518, 15043, 0);
INSERT INTO `heros_play` VALUES (542, '上官婉儿', 65324, 'XQ.九尾', 0, 3, 0, 10551, 27507, 49371, 0);
INSERT INTO `heros_play` VALUES (543, '曹操', 65324, '百兽', 1, 0, 3, 13324, 36747, 26700, 1);
INSERT INTO `heros_play` VALUES (544, '盘古', 65324, 'XQ.绑兔', 0, 1, 0, 8369, 61029, 26411, 0);
INSERT INTO `heros_play` VALUES (545, '蒙犽', 65324, '鹏鹏', 2, 0, 3, 14310, 44099, 75858, 1);
INSERT INTO `heros_play` VALUES (546, '孙尚香', 65324, 'XQ.钎城', 0, 2, 0, 11797, 41957, 46614, 0);
INSERT INTO `heros_play` VALUES (547, '西施', 65324, '青枫', 1, 0, 6, 10073, 32184, 65271, 1);
INSERT INTO `heros_play` VALUES (548, '老夫子', 65324, 'XQ.晨羽', 0, 2, 0, 10089, 48038, 19189, 0);
INSERT INTO `heros_play` VALUES (549, '孙策', 65324, '阿改', 3, 0, 2, 9256, 63377, 25120, 1);
INSERT INTO `heros_play` VALUES (550, '庄周', 65324, 'XQ.冰尘', 0, 0, 0, 6079, 72214, 32121, 0);
INSERT INTO `heros_play` VALUES (551, '廉颇', 65324, '伊恩', 1, 0, 5, 7556, 79349, 16937, 1);
INSERT INTO `heros_play` VALUES (552, '橘右京', 65204, '轩泽', 3, 1, 4, 11718, 50341, 38722, 1);
INSERT INTO `heros_play` VALUES (553, '百里守约', 65204, 'XQ.九尾', 1, 4, 0, 7421, 27365, 43734, 0);
INSERT INTO `heros_play` VALUES (554, '兰陵王', 65204, '清融', 1, 2, 5, 7555, 46392, 16476, 1);
INSERT INTO `heros_play` VALUES (555, '裴擒虎', 65204, 'XQ.绑兔', 2, 2, 2, 11001, 67836, 20920, 0);
INSERT INTO `heros_play` VALUES (556, '元歌', 65204, '月色', 6, 0, 3, 11504, 31785, 62194, 1);
INSERT INTO `heros_play` VALUES (557, '马可波罗', 65204, 'XQ.钎城', 1, 3, 2, 9680, 43405, 53866, 0);
INSERT INTO `heros_play` VALUES (558, '蒙犽', 65204, '久酷', 2, 1, 7, 12168, 36677, 62838, 1);
INSERT INTO `heros_play` VALUES (559, '狂铁', 65204, 'XQ.晨羽', 0, 1, 2, 9906, 78718, 30178, 0);
INSERT INTO `heros_play` VALUES (560, '张飞', 65204, '尘夏', 0, 1, 4, 6214, 101572, 6758, 1);
INSERT INTO `heros_play` VALUES (561, '姜子牙', 65204, 'XQ.冰尘', 1, 2, 3, 6401, 22065, 54175, 0);
INSERT INTO `heros_play` VALUES (562, '关羽', 65207, '轩泽', 3, 3, 1, 14657, 90181, 55852, 0);
INSERT INTO `heros_play` VALUES (563, '沈梦溪', 65207, 'XQ.九尾', 1, 1, 11, 14003, 47639, 112393, 1);
INSERT INTO `heros_play` VALUES (564, '云中君', 65207, '清融', 2, 4, 3, 12366, 92388, 50335, 0);
INSERT INTO `heros_play` VALUES (565, '赵云', 65207, 'XQ.绑兔', 3, 2, 6, 15120, 111215, 46406, 1);
INSERT INTO `heros_play` VALUES (566, '姜子牙', 65207, '月色', 1, 2, 1, 12883, 51834, 104185, 0);
INSERT INTO `heros_play` VALUES (567, '孙尚香', 65207, 'XQ.钎城', 6, 2, 6, 16671, 69010, 106893, 1);
INSERT INTO `heros_play` VALUES (568, '马可波罗', 65207, '久酷', 2, 3, 3, 16045, 73806, 124467, 0);
INSERT INTO `heros_play` VALUES (569, '曜', 65207, 'XQ.晨羽', 2, 3, 6, 14446, 84952, 49822, 1);
INSERT INTO `heros_play` VALUES (570, '太乙真人', 65207, '尘夏', 0, 3, 3, 8411, 102967, 9738, 0);
INSERT INTO `heros_play` VALUES (571, '张飞', 65207, 'XQ.冰尘', 3, 0, 12, 10277, 127764, 21226, 1);
INSERT INTO `heros_play` VALUES (572, '曜', 65210, '轩泽', 0, 3, 1, 7259, 49587, 34406, 0);
INSERT INTO `heros_play` VALUES (573, '上官婉儿', 65210, 'XQ.九尾', 4, 0, 6, 9264, 25978, 39846, 1);
INSERT INTO `heros_play` VALUES (574, '百里玄策', 65210, '清融', 0, 4, 1, 5845, 41255, 12685, 0);
INSERT INTO `heros_play` VALUES (575, '云中君', 65210, 'XQ.绑兔', 6, 1, 4, 9677, 46203, 38712, 1);
INSERT INTO `heros_play` VALUES (576, '王昭君', 65210, '月色', 1, 2, 1, 6800, 24666, 34317, 0);
INSERT INTO `heros_play` VALUES (577, '李元芳', 65210, 'XQ.钎城', 3, 0, 10, 10449, 30086, 56368, 1);
INSERT INTO `heros_play` VALUES (578, '黄忠', 65210, '久酷', 1, 3, 1, 7316, 24266, 30770, 0);
INSERT INTO `heros_play` VALUES (579, '吕布', 65210, 'XQ.晨羽', 2, 1, 6, 8917, 56859, 32147, 1);
INSERT INTO `heros_play` VALUES (580, '廉颇', 65210, '尘夏', 0, 3, 1, 4442, 54788, 17617, 0);
INSERT INTO `heros_play` VALUES (581, '盾山', 65210, 'XQ.冰尘', 0, 0, 7, 5317, 39998, 8162, 1);
INSERT INTO `heros_play` VALUES (582, '盘古', 65215, '迷神', 3, 6, 9, 17412, 186548, 71105, 0);
INSERT INTO `heros_play` VALUES (583, '刘邦', 65215, '凉晨', 3, 7, 12, 15216, 229257, 65094, 1);
INSERT INTO `heros_play` VALUES (584, '老夫子', 65215, '苏沫', 3, 6, 12, 16637, 188872, 63948, 0);
INSERT INTO `heros_play` VALUES (585, '马超', 65215, '雨雨', 5, 5, 9, 21526, 163181, 160489, 1);
INSERT INTO `heros_play` VALUES (586, '蒙犽', 65215, '小鹏', 9, 3, 10, 22097, 118498, 299097, 0);
INSERT INTO `heros_play` VALUES (587, '马可波罗', 65215, '虔诚', 5, 5, 14, 21062, 138210, 270690, 1);
INSERT INTO `heros_play` VALUES (588, '周瑜', 65215, '花卷', 7, 4, 14, 20418, 132495, 255861, 0);
INSERT INTO `heros_play` VALUES (589, '安琪拉', 65215, '暴风锐', 11, 1, 7, 21342, 111796, 223802, 1);
INSERT INTO `heros_play` VALUES (590, '张飞', 65215, '夏竹', 1, 7, 13, 12087, 278718, 35414, 0);
INSERT INTO `heros_play` VALUES (591, '太乙真人', 65215, 'Zero', 2, 5, 15, 14053, 222109, 50668, 1);
INSERT INTO `heros_play` VALUES (592, '橘右京', 65217, '迷神', 4, 0, 9, 10872, 66113, 51512, 1);
INSERT INTO `heros_play` VALUES (593, '吕布', 65217, '凉晨', 2, 3, 8, 9039, 80075, 33001, 0);
INSERT INTO `heros_play` VALUES (594, '关羽', 65217, '苏沫', 1, 1, 6, 9902, 49671, 31544, 1);
INSERT INTO `heros_play` VALUES (595, '曜', 65217, '雨雨', 3, 2, 2, 10987, 50840, 38094, 0);
INSERT INTO `heros_play` VALUES (596, '马可波罗', 65217, '小鹏', 7, 1, 6, 12105, 44883, 102672, 1);
INSERT INTO `heros_play` VALUES (597, '裴擒虎', 65217, '虔诚', 4, 3, 4, 12630, 68292, 66572, 0);
INSERT INTO `heros_play` VALUES (598, '张良', 65217, '花卷', 1, 5, 5, 6555, 42407, 28088, 1);
INSERT INTO `heros_play` VALUES (599, '不知火舞', 65217, '暴风锐', 1, 3, 7, 9335, 43279, 68020, 0);
INSERT INTO `heros_play` VALUES (600, '牛魔', 65217, '夏竹', 1, 5, 11, 6218, 85253, 32503, 1);
INSERT INTO `heros_play` VALUES (601, '孙膑', 65217, 'Zero', 2, 3, 9, 6651, 55533, 55776, 0);
INSERT INTO `heros_play` VALUES (602, '娜可露露', 65218, '迷神', 8, 1, 5, 14660, 65979, 62839, 1);
INSERT INTO `heros_play` VALUES (603, '赵云', 65218, '凉晨', 4, 5, 5, 11023, 88915, 65061, 0);
INSERT INTO `heros_play` VALUES (604, '猪八戒', 65218, '苏沫', 0, 3, 16, 9634, 134761, 42859, 1);
INSERT INTO `heros_play` VALUES (605, '老夫子', 65218, '雨雨', 2, 7, 7, 10430, 82099, 67216, 0);
INSERT INTO `heros_play` VALUES (606, '公孙离', 65218, '小鹏', 7, 2, 7, 14453, 60035, 122741, 1);
INSERT INTO `heros_play` VALUES (607, '孙尚香', 65218, '虔诚', 6, 6, 3, 13118, 70014, 106729, 0);
INSERT INTO `heros_play` VALUES (608, '上官婉儿', 65218, '花卷', 9, 6, 7, 11053, 64930, 115007, 1);
INSERT INTO `heros_play` VALUES (609, '周瑜', 65218, '暴风锐', 2, 5, 9, 11071, 49604, 82092, 0);
INSERT INTO `heros_play` VALUES (610, '廉颇', 65218, '夏竹', 1, 3, 11, 7673, 101009, 34001, 1);
INSERT INTO `heros_play` VALUES (611, '张飞', 65218, 'Zero', 1, 2, 7, 7262, 119420, 34483, 0);
INSERT INTO `heros_play` VALUES (612, '裴擒虎', 65222, '迷神', 3, 1, 2, 9785, 30765, 20364, 0);
INSERT INTO `heros_play` VALUES (613, '橘右京', 65222, '凉晨', 0, 3, 5, 6930, 37460, 14746, 1);
INSERT INTO `heros_play` VALUES (614, '狂铁', 65222, '苏沫', 0, 4, 4, 5991, 43339, 13037, 0);
INSERT INTO `heros_play` VALUES (615, '曹操', 65222, '雨雨', 4, 0, 2, 9005, 44790, 19319, 1);
INSERT INTO `heros_play` VALUES (616, '孙尚香', 65222, '小鹏', 1, 1, 3, 8882, 29474, 21791, 0);
INSERT INTO `heros_play` VALUES (617, '蒙犽', 65222, '虔诚', 4, 0, 7, 11173, 17157, 58407, 1);
INSERT INTO `heros_play` VALUES (618, '干将莫邪', 65222, '花卷', 1, 2, 4, 7087, 23731, 62993, 0);
INSERT INTO `heros_play` VALUES (619, '张良', 65222, '暴风锐', 2, 1, 5, 6497, 18523, 18768, 1);
INSERT INTO `heros_play` VALUES (620, '盾山', 65222, '夏竹', 0, 3, 3, 4440, 33576, 4063, 0);
INSERT INTO `heros_play` VALUES (621, '廉颇', 65222, 'Zero', 1, 2, 6, 5022, 50749, 14127, 1);
INSERT INTO `heros_play` VALUES (622, '露娜', 65223, '迷神', 0, 2, 1, 10661, 52357, 6743, 0);
INSERT INTO `heros_play` VALUES (623, '兰陵王', 65223, '凉晨', 1, 0, 5, 9503, 29721, 18513, 1);
INSERT INTO `heros_play` VALUES (624, '刘邦', 65223, '苏沫', 1, 3, 1, 7105, 38859, 10346, 0);
INSERT INTO `heros_play` VALUES (625, '关羽', 65223, '雨雨', 1, 0, 4, 11211, 36343, 23086, 1);
INSERT INTO `heros_play` VALUES (626, '狄仁杰', 65223, '小鹏', 0, 0, 0, 9587, 17994, 22271, 0);
INSERT INTO `heros_play` VALUES (627, '后羿', 65223, '虔诚', 7, 0, 4, 13232, 41909, 64266, 1);
INSERT INTO `heros_play` VALUES (628, '沈梦溪', 65223, '花卷', 1, 1, 1, 8699, 25100, 62315, 0);
INSERT INTO `heros_play` VALUES (629, '王昭君', 65223, '暴风锐', 2, 0, 9, 9672, 21694, 41558, 1);
INSERT INTO `heros_play` VALUES (630, '太乙真人', 65223, '夏竹', 0, 5, 1, 5757, 57084, 4043, 0);
INSERT INTO `heros_play` VALUES (631, '盾山', 65223, 'Zero', 0, 2, 6, 6268, 48245, 9980, 1);
INSERT INTO `heros_play` VALUES (632, '周瑜', 65286, '笑', 1, 1, 3, 13718, 109569, 107760, 0);
INSERT INTO `heros_play` VALUES (633, '曜', 65286, '初心', 1, 2, 2, 16403, 104959, 93731, 1);
INSERT INTO `heros_play` VALUES (634, '关羽', 65286, '易瞳', 1, 1, 1, 14366, 104805, 53410, 0);
INSERT INTO `heros_play` VALUES (635, '苏烈', 65286, '556', 1, 0, 6, 9697, 162973, 29419, 1);
INSERT INTO `heros_play` VALUES (636, '赵云', 65286, '吴勉', 1, 4, 3, 13485, 144695, 41769, 0);
INSERT INTO `heros_play` VALUES (637, '裴擒虎', 65286, '小新', 5, 1, 0, 17474, 118355, 64501, 1);
INSERT INTO `heros_play` VALUES (638, '蒙犽', 65286, '十三', 1, 1, 3, 18424, 101540, 140395, 0);
INSERT INTO `heros_play` VALUES (639, '沈梦溪', 65286, '小A', 1, 1, 5, 13328, 41419, 218610, 1);
INSERT INTO `heros_play` VALUES (640, '太乙真人', 65286, '萌神', 1, 2, 3, 11592, 171459, 19770, 0);
INSERT INTO `heros_play` VALUES (641, '马可波罗', 65286, 'Best', 1, 1, 7, 16025, 69507, 180262, 1);
INSERT INTO `heros_play` VALUES (642, '张良', 65290, '笑', 8, 2, 9, 16299, 51523, 129009, 0);
INSERT INTO `heros_play` VALUES (643, '关羽', 65290, '初心', 2, 2, 9, 16874, 136600, 90059, 1);
INSERT INTO `heros_play` VALUES (644, '猪八戒', 65290, '易瞳', 3, 5, 11, 15312, 259644, 57098, 0);
INSERT INTO `heros_play` VALUES (645, '盾山', 65290, '556', 0, 9, 10, 11245, 176905, 23159, 1);
INSERT INTO `heros_play` VALUES (646, '云中君', 65290, '吴勉', 5, 3, 6, 21345, 123734, 60106, 0);
INSERT INTO `heros_play` VALUES (647, '娜可露露', 65290, '小新', 4, 4, 11, 21142, 110507, 139051, 1);
INSERT INTO `heros_play` VALUES (648, '马可波罗', 65290, '十三', 4, 4, 14, 19964, 103909, 194365, 0);
INSERT INTO `heros_play` VALUES (649, '周瑜', 65290, '小A', 3, 4, 17, 15970, 72739, 141215, 1);
INSERT INTO `heros_play` VALUES (650, '苏烈', 65290, '萌神', 3, 8, 14, 12110, 263490, 55991, 0);
INSERT INTO `heros_play` VALUES (651, '后羿', 65290, 'Best', 13, 4, 8, 20004, 86219, 270979, 1);
INSERT INTO `heros_play` VALUES (652, '沈梦溪', 65292, '笑', 1, 1, 2, 8973, 23539, 86371, 0);
INSERT INTO `heros_play` VALUES (653, '老夫子', 65292, '初心', 2, 1, 6, 10789, 54182, 38018, 1);
INSERT INTO `heros_play` VALUES (654, '狂铁', 65292, '易瞳', 0, 3, 2, 7495, 81385, 30487, 0);
INSERT INTO `heros_play` VALUES (655, '太乙真人', 65292, '556', 1, 1, 7, 7382, 69524, 21380, 1);
INSERT INTO `heros_play` VALUES (656, '娜可露露', 65292, '吴勉', 0, 5, 3, 8790, 63007, 29470, 0);
INSERT INTO `heros_play` VALUES (657, '赵云', 65292, '小新', 4, 1, 7, 11269, 73504, 62806, 1);
INSERT INTO `heros_play` VALUES (658, '公孙离', 65292, '十三', 3, 2, 1, 10335, 53861, 63532, 0);
INSERT INTO `heros_play` VALUES (659, '王昭君', 65292, '小A', 2, 1, 8, 9189, 49584, 85364, 1);
INSERT INTO `heros_play` VALUES (660, '张飞', 65292, '萌神', 0, 3, 1, 5699, 100207, 17250, 0);
INSERT INTO `heros_play` VALUES (661, '孙尚香', 65292, 'Best', 5, 0, 3, 12347, 44670, 69191, 1);
INSERT INTO `heros_play` VALUES (662, '关羽', 65295, '沽酒', 3, 0, 6, 9783, 32750, 38592, 1);
INSERT INTO `heros_play` VALUES (663, '曜', 65295, '轻雨', 1, 4, 0, 8394, 44367, 25865, 0);
INSERT INTO `heros_play` VALUES (664, '杨戬', 65295, '冷心', 9, 0, 5, 12320, 44249, 42802, 1);
INSERT INTO `heros_play` VALUES (665, '赵云', 65295, '清融', 0, 3, 2, 7134, 42246, 13179, 0);
INSERT INTO `heros_play` VALUES (666, '姜子牙', 65295, '晴一', 2, 2, 8, 7348, 20218, 59114, 1);
INSERT INTO `heros_play` VALUES (667, '上官婉儿', 65295, '月色', 3, 4, 0, 7027, 41461, 56742, 0);
INSERT INTO `heros_play` VALUES (668, '孙尚香', 65295, '夏天', 2, 1, 6, 10533, 34185, 53485, 1);
INSERT INTO `heros_play` VALUES (669, '公孙离', 65295, '久酷', 0, 2, 1, 8166, 28887, 29511, 0);
INSERT INTO `heros_play` VALUES (670, '张飞', 65295, '兽兽', 0, 1, 10, 5720, 62675, 14640, 1);
INSERT INTO `heros_play` VALUES (671, '太乙真人', 65295, '尘夏', 0, 3, 3, 5098, 73853, 9786, 0);
INSERT INTO `heros_play` VALUES (672, '曜', 65296, '沽酒', 2, 1, 1, 9113, 39784, 31381, 1);
INSERT INTO `heros_play` VALUES (673, '关羽', 65296, '轻雨', 0, 2, 0, 7587, 40487, 21751, 0);
INSERT INTO `heros_play` VALUES (674, '裴擒虎', 65296, '冷心', 3, 0, 6, 10693, 51930, 46613, 1);
INSERT INTO `heros_play` VALUES (675, '盘古', 65296, '清融', 1, 4, 3, 5114, 53510, 21642, 0);
INSERT INTO `heros_play` VALUES (676, '不知火舞', 65296, '晴一', 3, 1, 5, 8403, 49449, 82597, 1);
INSERT INTO `heros_play` VALUES (677, '嬴政', 65296, '月色', 2, 1, 3, 8731, 24174, 65745, 0);
INSERT INTO `heros_play` VALUES (678, '马可波罗', 65296, '夏天', 1, 1, 5, 8566, 34333, 47583, 1);
INSERT INTO `heros_play` VALUES (679, '蒙犽', 65296, '久酷', 2, 1, 3, 9190, 34020, 81794, 0);
INSERT INTO `heros_play` VALUES (680, '苏烈', 65296, '兽兽', 1, 2, 6, 5202, 90575, 11560, 1);
INSERT INTO `heros_play` VALUES (681, '张飞', 65296, '尘夏', 0, 2, 5, 4522, 96326, 15819, 0);
INSERT INTO `heros_play` VALUES (682, '李信', 65297, '沽酒', 1, 1, 8, 15496, 71286, 71963, 1);
INSERT INTO `heros_play` VALUES (683, '橘右京', 65297, '轻雨', 0, 1, 6, 12602, 74782, 57155, 0);
INSERT INTO `heros_play` VALUES (684, '云中君', 65297, '冷心', 6, 0, 1, 15164, 70617, 37108, 1);
INSERT INTO `heros_play` VALUES (685, '裴擒虎', 65297, '清融', 7, 2, 2, 16308, 113528, 64943, 0);
INSERT INTO `heros_play` VALUES (686, '干将莫邪', 65297, '晴一', 2, 2, 5, 13092, 34230, 186302, 1);
INSERT INTO `heros_play` VALUES (687, '西施', 65297, '月色', 2, 1, 3, 11194, 55073, 54631, 0);
INSERT INTO `heros_play` VALUES (688, '公孙离', 65297, '夏天', 1, 1, 6, 13832, 53150, 83152, 1);
INSERT INTO `heros_play` VALUES (689, '吕布', 65297, '久酷', 0, 5, 4, 8259, 115947, 34318, 0);
INSERT INTO `heros_play` VALUES (690, '盾山', 65297, '兽兽', 0, 5, 7, 7335, 79373, 10922, 1);
INSERT INTO `heros_play` VALUES (691, '鬼谷子', 65297, '尘夏', 0, 1, 6, 7714, 80077, 15612, 0);
