--+ holdcas on;
set names utf8;
CREATE TABLE coll_test (id INTEGER, s VARCHAR(10)  collate utf8_tr_cs);

INSERT INTO coll_test (id, s) values (0, 'x');
INSERT INTO coll_test (id, s) values (421, 'xÿx');
INSERT INTO coll_test (id, s) values (413, 'Xy');
INSERT INTO coll_test (id, s) values (405, 'xx');
INSERT INTO coll_test (id, s) values (397, 'xvx');
INSERT INTO coll_test (id, s) values (389, 'Xü');
INSERT INTO coll_test (id, s) values (381, 'xŭx');
INSERT INTO coll_test (id, s) values (373, 'Xū');
INSERT INTO coll_test (id, s) values (365, 'Xŭ');
INSERT INTO coll_test (id, s) values (357, 'Xú');
INSERT INTO coll_test (id, s) values (349, 'xtx');
INSERT INTO coll_test (id, s) values (341, 'Xş');
INSERT INTO coll_test (id, s) values (333, 'xsSx');
INSERT INTO coll_test (id, s) values (325, 'xSS');
INSERT INTO coll_test (id, s) values (317, 'xRx');
INSERT INTO coll_test (id, s) values (309, 'XQ');
INSERT INTO coll_test (id, s) values (301, 'xP');
INSERT INTO coll_test (id, s) values (293, 'xŌx');
INSERT INTO coll_test (id, s) values (285, 'xÒx');
INSERT INTO coll_test (id, s) values (277, 'XŒ');
INSERT INTO coll_test (id, s) values (269, 'XØ');
INSERT INTO coll_test (id, s) values (261, 'XŎ');
INSERT INTO coll_test (id, s) values (253, 'XÓ');
INSERT INTO coll_test (id, s) values (245, 'xÑx');
INSERT INTO coll_test (id, s) values (237, 'XN');
INSERT INTO coll_test (id, s) values (229, 'xM');
INSERT INTO coll_test (id, s) values (221, 'xKx');
INSERT INTO coll_test (id, s) values (213, 'XJ');
INSERT INTO coll_test (id, s) values (205, 'xĭx');
INSERT INTO coll_test (id, s) values (197, 'xi̇');
INSERT INTO coll_test (id, s) values (189, 'xì');
INSERT INTO coll_test (id, s) values (181, 'xÏx');
INSERT INTO coll_test (id, s) values (173, 'xĪ');
INSERT INTO coll_test (id, s) values (165, 'xÌ');
INSERT INTO coll_test (id, s) values (157, 'xhx');
INSERT INTO coll_test (id, s) values (149, 'Xğ');
INSERT INTO coll_test (id, s) values (141, 'xg');
INSERT INTO coll_test (id, s) values (133, 'xēx');
INSERT INTO coll_test (id, s) values (125, 'xèx');
INSERT INTO coll_test (id, s) values (117, 'xē');
INSERT INTO coll_test (id, s) values (109, 'xê');
INSERT INTO coll_test (id, s) values (101, 'xè');
INSERT INTO coll_test (id, s) values (93, 'xe');
INSERT INTO coll_test (id, s) values (85, 'xçx');
INSERT INTO coll_test (id, s) values (77, 'Xc');
INSERT INTO coll_test (id, s) values (69, 'xb');
INSERT INTO coll_test (id, s) values (61, 'xâx');
INSERT INTO coll_test (id, s) values (53, 'xax');
INSERT INTO coll_test (id, s) values (45, 'Xā');
INSERT INTO coll_test (id, s) values (37, 'Xå');
INSERT INTO coll_test (id, s) values (29, 'Xă');
INSERT INTO coll_test (id, s) values (21, 'Xá');
INSERT INTO coll_test (id, s) values (13, 'X2');
INSERT INTO coll_test (id, s) values (5, 'x.x');
INSERT INTO coll_test (id, s) values (426, 'XZ');
INSERT INTO coll_test (id, s) values (418, 'XŸ');
INSERT INTO coll_test (id, s) values (410, 'xXx');
INSERT INTO coll_test (id, s) values (402, 'XW');
INSERT INTO coll_test (id, s) values (394, 'xV');
INSERT INTO coll_test (id, s) values (386, 'xŪx');
INSERT INTO coll_test (id, s) values (378, 'xÚx');
INSERT INTO coll_test (id, s) values (370, 'XÛ');
INSERT INTO coll_test (id, s) values (362, 'XÙ');
INSERT INTO coll_test (id, s) values (354, 'XU');
INSERT INTO coll_test (id, s) values (346, 'xT');
INSERT INTO coll_test (id, s) values (338, 'xSx');
INSERT INTO coll_test (id, s) values (330, 'xß');
INSERT INTO coll_test (id, s) values (322, 'xss');
INSERT INTO coll_test (id, s) values (314, 'Xr');
INSERT INTO coll_test (id, s) values (306, 'xq');
INSERT INTO coll_test (id, s) values (298, 'xöx');
INSERT INTO coll_test (id, s) values (290, 'xøx');
INSERT INTO coll_test (id, s) values (282, 'xóx');
INSERT INTO coll_test (id, s) values (274, 'xœ');
INSERT INTO coll_test (id, s) values (266, 'xø');
INSERT INTO coll_test (id, s) values (258, 'xŏ');
INSERT INTO coll_test (id, s) values (250, 'xó');
INSERT INTO coll_test (id, s) values (242, 'xnx');
INSERT INTO coll_test (id, s) values (234, 'xn');
INSERT INTO coll_test (id, s) values (226, 'xlx');
INSERT INTO coll_test (id, s) values (218, 'Xk');
INSERT INTO coll_test (id, s) values (210, 'xj');
INSERT INTO coll_test (id, s) values (202, 'xİx');
INSERT INTO coll_test (id, s) values (194, 'Xî');
INSERT INTO coll_test (id, s) values (186, 'Xİ');
INSERT INTO coll_test (id, s) values (178, 'xÌx');
INSERT INTO coll_test (id, s) values (170, 'XÎ');
INSERT INTO coll_test (id, s) values (162, 'XI');
INSERT INTO coll_test (id, s) values (154, 'xH');
INSERT INTO coll_test (id, s) values (146, 'xGx');
INSERT INTO coll_test (id, s) values (138, 'XF');
INSERT INTO coll_test (id, s) values (130, 'xÊx');
INSERT INTO coll_test (id, s) values (122, 'xEx');
INSERT INTO coll_test (id, s) values (114, 'xË');
INSERT INTO coll_test (id, s) values (106, 'xĔ');
INSERT INTO coll_test (id, s) values (98, 'xÉ');
INSERT INTO coll_test (id, s) values (90, 'XD');
INSERT INTO coll_test (id, s) values (82, 'xÇ');
INSERT INTO coll_test (id, s) values (74, 'xBx');
INSERT INTO coll_test (id, s) values (66, 'xÄx');
INSERT INTO coll_test (id, s) values (58, 'xÀx');
INSERT INTO coll_test (id, s) values (50, 'XÆ');
INSERT INTO coll_test (id, s) values (42, 'XÄ');
INSERT INTO coll_test (id, s) values (34, 'XÂ');
INSERT INTO coll_test (id, s) values (26, 'XÀ');
INSERT INTO coll_test (id, s) values (18, 'XA');
INSERT INTO coll_test (id, s) values (10, 'X12');
INSERT INTO coll_test (id, s) values (2, 'x x');
INSERT INTO coll_test (id, s) values (423, 'xz');
INSERT INTO coll_test (id, s) values (415, 'xÿ');
INSERT INTO coll_test (id, s) values (407, 'Xx');
INSERT INTO coll_test (id, s) values (399, 'xw');
INSERT INTO coll_test (id, s) values (391, 'xüx');
INSERT INTO coll_test (id, s) values (383, 'xûx');
INSERT INTO coll_test (id, s) values (375, 'xux');
INSERT INTO coll_test (id, s) values (367, 'xû');
INSERT INTO coll_test (id, s) values (359, 'xù');
INSERT INTO coll_test (id, s) values (351, 'xu');
INSERT INTO coll_test (id, s) values (343, 'xşx');
INSERT INTO coll_test (id, s) values (335, 'xSSx');
INSERT INTO coll_test (id, s) values (327, 'XsS');
INSERT INTO coll_test (id, s) values (319, 'xS');
INSERT INTO coll_test (id, s) values (311, 'xQx');
INSERT INTO coll_test (id, s) values (303, 'XP');
INSERT INTO coll_test (id, s) values (295, 'xÖ');
INSERT INTO coll_test (id, s) values (287, 'xŎx');
INSERT INTO coll_test (id, s) values (279, 'xŒx');
INSERT INTO coll_test (id, s) values (271, 'xŌ');
INSERT INTO coll_test (id, s) values (263, 'xÔ');
INSERT INTO coll_test (id, s) values (255, 'xÒ');
INSERT INTO coll_test (id, s) values (247, 'xO');
INSERT INTO coll_test (id, s) values (239, 'xÑ');
INSERT INTO coll_test (id, s) values (231, 'XM');
INSERT INTO coll_test (id, s) values (223, 'xL');
INSERT INTO coll_test (id, s) values (215, 'xJx');
INSERT INTO coll_test (id, s) values (207, 'xïx');
INSERT INTO coll_test (id, s) values (199, 'xī');
INSERT INTO coll_test (id, s) values (191, 'xĭ');
INSERT INTO coll_test (id, s) values (183, 'xi');
INSERT INTO coll_test (id, s) values (175, 'xıx');
INSERT INTO coll_test (id, s) values (167, 'xĬ');
INSERT INTO coll_test (id, s) values (159, 'xı');
INSERT INTO coll_test (id, s) values (151, 'xğx');
INSERT INTO coll_test (id, s) values (143, 'Xg');
INSERT INTO coll_test (id, s) values (135, 'xf');
INSERT INTO coll_test (id, s) values (127, 'xĕx');
INSERT INTO coll_test (id, s) values (119, 'Xē');
INSERT INTO coll_test (id, s) values (111, 'Xê');
INSERT INTO coll_test (id, s) values (103, 'Xè');
INSERT INTO coll_test (id, s) values (95, 'Xe');
INSERT INTO coll_test (id, s) values (87, 'xd');
INSERT INTO coll_test (id, s) values (79, 'xcx');
INSERT INTO coll_test (id, s) values (71, 'Xb');
INSERT INTO coll_test (id, s) values (63, 'xåx');
INSERT INTO coll_test (id, s) values (55, 'xáx');
INSERT INTO coll_test (id, s) values (47, 'xæ');
INSERT INTO coll_test (id, s) values (39, 'xä');
INSERT INTO coll_test (id, s) values (31, 'xâ');
INSERT INTO coll_test (id, s) values (23, 'xà');
INSERT INTO coll_test (id, s) values (15, 'xa');
INSERT INTO coll_test (id, s) values (7, 'X0');
INSERT INTO coll_test (id, s) values (428, 'xZx');
INSERT INTO coll_test (id, s) values (420, 'xYx');
INSERT INTO coll_test (id, s) values (412, 'xY');
INSERT INTO coll_test (id, s) values (404, 'xWx');
INSERT INTO coll_test (id, s) values (396, 'XV');
INSERT INTO coll_test (id, s) values (388, 'xÜ');
INSERT INTO coll_test (id, s) values (380, 'xÙx');
INSERT INTO coll_test (id, s) values (372, 'xŪ');
INSERT INTO coll_test (id, s) values (364, 'xŬ');
INSERT INTO coll_test (id, s) values (356, 'xÚ');
INSERT INTO coll_test (id, s) values (348, 'XT');
INSERT INTO coll_test (id, s) values (340, 'xŞ');
INSERT INTO coll_test (id, s) values (332, 'xssx');
INSERT INTO coll_test (id, s) values (324, 'xSs');
INSERT INTO coll_test (id, s) values (316, 'xrx');
INSERT INTO coll_test (id, s) values (308, 'Xq');
INSERT INTO coll_test (id, s) values (300, 'xp');
INSERT INTO coll_test (id, s) values (292, 'xōx');
INSERT INTO coll_test (id, s) values (284, 'xòx');
INSERT INTO coll_test (id, s) values (276, 'Xœ');
INSERT INTO coll_test (id, s) values (268, 'Xø');
INSERT INTO coll_test (id, s) values (260, 'Xŏ');
INSERT INTO coll_test (id, s) values (252, 'Xó');
INSERT INTO coll_test (id, s) values (244, 'xñx');
INSERT INTO coll_test (id, s) values (236, 'Xn');
INSERT INTO coll_test (id, s) values (228, 'xm');
INSERT INTO coll_test (id, s) values (220, 'xkx');
INSERT INTO coll_test (id, s) values (212, 'Xj');
INSERT INTO coll_test (id, s) values (204, 'xìx');
INSERT INTO coll_test (id, s) values (196, 'Xï');
INSERT INTO coll_test (id, s) values (188, 'Xí');
INSERT INTO coll_test (id, s) values (180, 'xÎx');
INSERT INTO coll_test (id, s) values (172, 'XÏ');
INSERT INTO coll_test (id, s) values (164, 'XÍ');
INSERT INTO coll_test (id, s) values (156, 'XH');
INSERT INTO coll_test (id, s) values (148, 'xĞ');
INSERT INTO coll_test (id, s) values (140, 'xFx');
INSERT INTO coll_test (id, s) values (132, 'xËx');
INSERT INTO coll_test (id, s) values (124, 'xÉx');
INSERT INTO coll_test (id, s) values (116, 'XË');
INSERT INTO coll_test (id, s) values (108, 'XĔ');
INSERT INTO coll_test (id, s) values (100, 'XÉ');
INSERT INTO coll_test (id, s) values (92, 'xDx');
INSERT INTO coll_test (id, s) values (84, 'XÇ');
INSERT INTO coll_test (id, s) values (76, 'xC');
INSERT INTO coll_test (id, s) values (68, 'xĀx');
INSERT INTO coll_test (id, s) values (60, 'xĂx');
INSERT INTO coll_test (id, s) values (52, 'xÆx');
INSERT INTO coll_test (id, s) values (44, 'xĀ');
INSERT INTO coll_test (id, s) values (36, 'xÅ');
INSERT INTO coll_test (id, s) values (28, 'xĂ');
INSERT INTO coll_test (id, s) values (20, 'xÁ');
INSERT INTO coll_test (id, s) values (12, 'x2');
INSERT INTO coll_test (id, s) values (4, 'X.');
INSERT INTO coll_test (id, s) values (425, 'Xz');
INSERT INTO coll_test (id, s) values (417, 'Xÿ');
INSERT INTO coll_test (id, s) values (409, 'xxx');
INSERT INTO coll_test (id, s) values (401, 'Xw');
INSERT INTO coll_test (id, s) values (393, 'xv');
INSERT INTO coll_test (id, s) values (385, 'xūx');
INSERT INTO coll_test (id, s) values (377, 'xúx');
INSERT INTO coll_test (id, s) values (369, 'Xû');
INSERT INTO coll_test (id, s) values (361, 'Xù');
INSERT INTO coll_test (id, s) values (353, 'Xu');
INSERT INTO coll_test (id, s) values (345, 'xt');
INSERT INTO coll_test (id, s) values (337, 'xsx');
INSERT INTO coll_test (id, s) values (329, 'XSS');
INSERT INTO coll_test (id, s) values (321, 'XS');
INSERT INTO coll_test (id, s) values (313, 'xR');
INSERT INTO coll_test (id, s) values (305, 'xPx');
INSERT INTO coll_test (id, s) values (297, 'XÖ');
INSERT INTO coll_test (id, s) values (289, 'xÔx');
INSERT INTO coll_test (id, s) values (281, 'xOx');
INSERT INTO coll_test (id, s) values (273, 'XŌ');
INSERT INTO coll_test (id, s) values (265, 'XÔ');
INSERT INTO coll_test (id, s) values (257, 'XÒ');
INSERT INTO coll_test (id, s) values (249, 'XO');
INSERT INTO coll_test (id, s) values (241, 'XÑ');
INSERT INTO coll_test (id, s) values (233, 'xMx');
INSERT INTO coll_test (id, s) values (225, 'XL');
INSERT INTO coll_test (id, s) values (217, 'xK');
INSERT INTO coll_test (id, s) values (209, 'xīx');
INSERT INTO coll_test (id, s) values (201, 'xix');
INSERT INTO coll_test (id, s) values (193, 'xî');
INSERT INTO coll_test (id, s) values (185, 'Xi');
INSERT INTO coll_test (id, s) values (177, 'xÍx');
INSERT INTO coll_test (id, s) values (169, 'xÎ');
INSERT INTO coll_test (id, s) values (161, 'Xı');
INSERT INTO coll_test (id, s) values (153, 'xh');
INSERT INTO coll_test (id, s) values (145, 'xgx');
INSERT INTO coll_test (id, s) values (137, 'Xf');
INSERT INTO coll_test (id, s) values (129, 'xêx');
INSERT INTO coll_test (id, s) values (121, 'xex');
INSERT INTO coll_test (id, s) values (113, 'xë');
INSERT INTO coll_test (id, s) values (105, 'xĕ');
INSERT INTO coll_test (id, s) values (97, 'xé');
INSERT INTO coll_test (id, s) values (89, 'Xd');
INSERT INTO coll_test (id, s) values (81, 'xç');
INSERT INTO coll_test (id, s) values (73, 'xbx');
INSERT INTO coll_test (id, s) values (65, 'xäx');
INSERT INTO coll_test (id, s) values (57, 'xàx');
INSERT INTO coll_test (id, s) values (49, 'Xæ');
INSERT INTO coll_test (id, s) values (41, 'Xä');
INSERT INTO coll_test (id, s) values (33, 'Xâ');
INSERT INTO coll_test (id, s) values (25, 'Xà');
INSERT INTO coll_test (id, s) values (17, 'Xa');
INSERT INTO coll_test (id, s) values (9, 'x12');
INSERT INTO coll_test (id, s) values (1, 'X');
INSERT INTO coll_test (id, s) values (422, 'xŸx');
INSERT INTO coll_test (id, s) values (414, 'XY');
INSERT INTO coll_test (id, s) values (406, 'xX');
INSERT INTO coll_test (id, s) values (398, 'xVx');
INSERT INTO coll_test (id, s) values (390, 'XÜ');
INSERT INTO coll_test (id, s) values (382, 'xŬx');
INSERT INTO coll_test (id, s) values (374, 'XŪ');
INSERT INTO coll_test (id, s) values (366, 'XŬ');
INSERT INTO coll_test (id, s) values (358, 'XÚ');
INSERT INTO coll_test (id, s) values (350, 'xTx');
INSERT INTO coll_test (id, s) values (342, 'XŞ');
INSERT INTO coll_test (id, s) values (334, 'xSsx');
INSERT INTO coll_test (id, s) values (326, 'Xss');
INSERT INTO coll_test (id, s) values (318, 'xs');
INSERT INTO coll_test (id, s) values (310, 'xqx');
INSERT INTO coll_test (id, s) values (302, 'Xp');
INSERT INTO coll_test (id, s) values (294, 'xö');
INSERT INTO coll_test (id, s) values (286, 'xŏx');
INSERT INTO coll_test (id, s) values (278, 'xœx');
INSERT INTO coll_test (id, s) values (270, 'xō');
INSERT INTO coll_test (id, s) values (262, 'xô');
INSERT INTO coll_test (id, s) values (254, 'xò');
INSERT INTO coll_test (id, s) values (246, 'xo');
INSERT INTO coll_test (id, s) values (238, 'xñ');
INSERT INTO coll_test (id, s) values (230, 'Xm');
INSERT INTO coll_test (id, s) values (222, 'xl');
INSERT INTO coll_test (id, s) values (214, 'xjx');
INSERT INTO coll_test (id, s) values (206, 'xîx');
INSERT INTO coll_test (id, s) values (198, 'Xi̇');
INSERT INTO coll_test (id, s) values (190, 'Xì');
INSERT INTO coll_test (id, s) values (182, 'xĪx');
INSERT INTO coll_test (id, s) values (174, 'XĪ');
INSERT INTO coll_test (id, s) values (166, 'XÌ');
INSERT INTO coll_test (id, s) values (158, 'xHx');
INSERT INTO coll_test (id, s) values (150, 'XĞ');
INSERT INTO coll_test (id, s) values (142, 'xG');
INSERT INTO coll_test (id, s) values (134, 'xĒx');
INSERT INTO coll_test (id, s) values (126, 'xÈx');
INSERT INTO coll_test (id, s) values (118, 'xĒ');
INSERT INTO coll_test (id, s) values (110, 'xÊ');
INSERT INTO coll_test (id, s) values (102, 'xÈ');
INSERT INTO coll_test (id, s) values (94, 'xE');
INSERT INTO coll_test (id, s) values (86, 'xÇx');
INSERT INTO coll_test (id, s) values (78, 'XC');
INSERT INTO coll_test (id, s) values (70, 'xB');
INSERT INTO coll_test (id, s) values (62, 'xÂx');
INSERT INTO coll_test (id, s) values (54, 'xAx');
INSERT INTO coll_test (id, s) values (46, 'XĀ');
INSERT INTO coll_test (id, s) values (38, 'XÅ');
INSERT INTO coll_test (id, s) values (30, 'XĂ');
INSERT INTO coll_test (id, s) values (22, 'XÁ');
INSERT INTO coll_test (id, s) values (14, 'x2x');
INSERT INTO coll_test (id, s) values (6, 'x0');
INSERT INTO coll_test (id, s) values (427, 'xzx');
INSERT INTO coll_test (id, s) values (419, 'xyx');
INSERT INTO coll_test (id, s) values (411, 'xy');
INSERT INTO coll_test (id, s) values (403, 'xwx');
INSERT INTO coll_test (id, s) values (395, 'Xv');
INSERT INTO coll_test (id, s) values (387, 'xü');
INSERT INTO coll_test (id, s) values (379, 'xùx');
INSERT INTO coll_test (id, s) values (371, 'xū');
INSERT INTO coll_test (id, s) values (363, 'xŭ');
INSERT INTO coll_test (id, s) values (355, 'xú');
INSERT INTO coll_test (id, s) values (347, 'Xt');
INSERT INTO coll_test (id, s) values (339, 'xş');
INSERT INTO coll_test (id, s) values (331, 'Xß');
INSERT INTO coll_test (id, s) values (323, 'xsS');
INSERT INTO coll_test (id, s) values (315, 'XR');
INSERT INTO coll_test (id, s) values (307, 'xQ');
INSERT INTO coll_test (id, s) values (299, 'xÖx');
INSERT INTO coll_test (id, s) values (291, 'xØx');
INSERT INTO coll_test (id, s) values (283, 'xÓx');
INSERT INTO coll_test (id, s) values (275, 'xŒ');
INSERT INTO coll_test (id, s) values (267, 'xØ');
INSERT INTO coll_test (id, s) values (259, 'xŎ');
INSERT INTO coll_test (id, s) values (251, 'xÓ');
INSERT INTO coll_test (id, s) values (243, 'xNx');
INSERT INTO coll_test (id, s) values (235, 'xN');
INSERT INTO coll_test (id, s) values (227, 'xLx');
INSERT INTO coll_test (id, s) values (219, 'XK');
INSERT INTO coll_test (id, s) values (211, 'xJ');
INSERT INTO coll_test (id, s) values (203, 'xíx');
INSERT INTO coll_test (id, s) values (195, 'xï');
INSERT INTO coll_test (id, s) values (187, 'xí');
INSERT INTO coll_test (id, s) values (179, 'xĬx');
INSERT INTO coll_test (id, s) values (171, 'xÏ');
INSERT INTO coll_test (id, s) values (163, 'xÍ');
INSERT INTO coll_test (id, s) values (155, 'Xh');
INSERT INTO coll_test (id, s) values (147, 'xğ');
INSERT INTO coll_test (id, s) values (139, 'xfx');
INSERT INTO coll_test (id, s) values (131, 'xëx');
INSERT INTO coll_test (id, s) values (123, 'xéx');
INSERT INTO coll_test (id, s) values (115, 'Xë');
INSERT INTO coll_test (id, s) values (107, 'Xĕ');
INSERT INTO coll_test (id, s) values (99, 'Xé');
INSERT INTO coll_test (id, s) values (91, 'xdx');
INSERT INTO coll_test (id, s) values (83, 'Xç');
INSERT INTO coll_test (id, s) values (75, 'xc');
INSERT INTO coll_test (id, s) values (67, 'xāx');
INSERT INTO coll_test (id, s) values (59, 'xăx');
INSERT INTO coll_test (id, s) values (51, 'xæx');
INSERT INTO coll_test (id, s) values (43, 'xā');
INSERT INTO coll_test (id, s) values (35, 'xå');
INSERT INTO coll_test (id, s) values (27, 'xă');
INSERT INTO coll_test (id, s) values (19, 'xá');
INSERT INTO coll_test (id, s) values (11, 'x12x');
INSERT INTO coll_test (id, s) values (3, 'x.');
INSERT INTO coll_test (id, s) values (424, 'xZ');
INSERT INTO coll_test (id, s) values (416, 'xŸ');
INSERT INTO coll_test (id, s) values (408, 'XX');
INSERT INTO coll_test (id, s) values (400, 'xW');
INSERT INTO coll_test (id, s) values (392, 'xÜx');
INSERT INTO coll_test (id, s) values (384, 'xÛx');
INSERT INTO coll_test (id, s) values (376, 'xUx');
INSERT INTO coll_test (id, s) values (368, 'xÛ');
INSERT INTO coll_test (id, s) values (360, 'xÙ');
INSERT INTO coll_test (id, s) values (352, 'xU');
INSERT INTO coll_test (id, s) values (344, 'xŞx');
INSERT INTO coll_test (id, s) values (336, 'xßx');
INSERT INTO coll_test (id, s) values (328, 'XSs');
INSERT INTO coll_test (id, s) values (320, 'Xs');
INSERT INTO coll_test (id, s) values (312, 'xr');
INSERT INTO coll_test (id, s) values (304, 'xpx');
INSERT INTO coll_test (id, s) values (296, 'Xö');
INSERT INTO coll_test (id, s) values (288, 'xôx');
INSERT INTO coll_test (id, s) values (280, 'xox');
INSERT INTO coll_test (id, s) values (272, 'Xō');
INSERT INTO coll_test (id, s) values (264, 'Xô');
INSERT INTO coll_test (id, s) values (256, 'Xò');
INSERT INTO coll_test (id, s) values (248, 'Xo');
INSERT INTO coll_test (id, s) values (240, 'Xñ');
INSERT INTO coll_test (id, s) values (232, 'xmx');
INSERT INTO coll_test (id, s) values (224, 'Xl');
INSERT INTO coll_test (id, s) values (216, 'xk');
INSERT INTO coll_test (id, s) values (208, 'xi̇x');
INSERT INTO coll_test (id, s) values (200, 'Xī');
INSERT INTO coll_test (id, s) values (192, 'Xĭ');
INSERT INTO coll_test (id, s) values (184, 'xİ');
INSERT INTO coll_test (id, s) values (176, 'xIx');
INSERT INTO coll_test (id, s) values (168, 'XĬ');
INSERT INTO coll_test (id, s) values (160, 'xI');
INSERT INTO coll_test (id, s) values (152, 'xĞx');
INSERT INTO coll_test (id, s) values (144, 'XG');
INSERT INTO coll_test (id, s) values (136, 'xF');
INSERT INTO coll_test (id, s) values (128, 'xĔx');
INSERT INTO coll_test (id, s) values (120, 'XĒ');
INSERT INTO coll_test (id, s) values (112, 'XÊ');
INSERT INTO coll_test (id, s) values (104, 'XÈ');
INSERT INTO coll_test (id, s) values (96, 'XE');
INSERT INTO coll_test (id, s) values (88, 'xD');
INSERT INTO coll_test (id, s) values (80, 'xCx');
INSERT INTO coll_test (id, s) values (72, 'XB');
INSERT INTO coll_test (id, s) values (64, 'xÅx');
INSERT INTO coll_test (id, s) values (56, 'xÁx');
INSERT INTO coll_test (id, s) values (48, 'xÆ');
INSERT INTO coll_test (id, s) values (40, 'xÄ');
INSERT INTO coll_test (id, s) values (32, 'xÂ');
INSERT INTO coll_test (id, s) values (24, 'xÀ');
INSERT INTO coll_test (id, s) values (16, 'xA');
INSERT INTO coll_test (id, s) values (8, 'x0x');

SELECT id, s FROM coll_test ORDER BY id,s;

DROP TABLE coll_test;
set names iso88591;
commit;
--+ holdcas off;
