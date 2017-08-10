--+ holdcas on;
-- more complex test for ORDER BY skipping (with plan dump)
set  system parameters 'dont_reuse_heap_file=yes';
CREATE TABLE t (i int not null, j int, k int, s string);

CREATE INDEX i_t_i_d_j_d ON t(i desc, j desc);
CREATE INDEX i_t_i_j_d_k ON t(i, j desc, k);
CREATE INDEX i_t_i_j_k_d_s_d ON t(i, j, k desc, s desc);

INSERT INTO t VALUES (19085,63586,342553,'rwhgyzmyzt');
INSERT INTO t VALUES (45574,295190,126562,'lolrvuuhll');
INSERT INTO t VALUES (15554,250708,395874,'ilzeohauuw');
INSERT INTO t VALUES (62966,338159,269519,'msvzsilzgx');
INSERT INTO t VALUES (16952,338159,220959,'cjkdzpffjr');
INSERT INTO t VALUES (23611,281140,261645,'gjsgpnxnzc');
INSERT INTO t VALUES (76824,192651,45471,'fmiqkmsmsy');
INSERT INTO t VALUES (11401,319384,225244,'ekcghxplze');
INSERT INTO t VALUES (16723,338159,244201,'doabpxfxao');
INSERT INTO t VALUES (85806,63586,250793,'gxuucmvmiu');
INSERT INTO t VALUES (44909,188293,40136,'gosgbyntqs');
INSERT INTO t VALUES (57482,29553,384228,'jjqmukznup');
INSERT INTO t VALUES (5276,136071,219641,'zwzonymcmk');
INSERT INTO t VALUES (216,75146,347631,'vrtbcsbmro');
INSERT INTO t VALUES (36776,63586,148962,'flpwqwoovn');
INSERT INTO t VALUES (8212,338159,317504,'rursvfqtyi');
INSERT INTO t VALUES (48651,338159,286169,'ujyeibscxd');
INSERT INTO t VALUES (41552,259436,101513,'xvvfjksbrn');
INSERT INTO t VALUES (37423,282446,121203,'anvmqwvfki');
INSERT INTO t VALUES (25433,63586,76965,'jcmlcyhpdd');
INSERT INTO t VALUES (99890,78845,95971,'vpgjmaqmvz');
INSERT INTO t VALUES (43283,63586,333422,'bcwcbgnooe');
INSERT INTO t VALUES (44900,16064,207373,'sbcbbuqrbo');
INSERT INTO t VALUES (52273,19018,46752,'plxsqbbhze');
INSERT INTO t VALUES (88311,338159,128173,'xrjgzcdmrn');
INSERT INTO t VALUES (14801,63586,253540,'tcbrmlymlk');
INSERT INTO t VALUES (42102,171728,243688,'vwilsraiyf');
INSERT INTO t VALUES (43661,338159,142370,'ahxiimzlkp');
INSERT INTO t VALUES (93338,291137,47180,'pfynsypncd');
INSERT INTO t VALUES (64212,212976,382446,'dxmdupkwef');
INSERT INTO t VALUES (23443,63586,312268,'ujoxmccxfd');
update statistics on all classes;
SELECT * FROM t WHERE j = 338159 ORDER BY k desc;
SELECT * FROM t WHERE j = 338159 ORDER BY i desc, j desc, k, s;
SELECT * FROM t WHERE k = 0 and j > 0 ORDER BY j desc;
SELECT * FROM t WHERE i > 0 AND j = 63586 ORDER BY i desc, j, k, s;

DROP TABLE t;
set  system parameters 'dont_reuse_heap_file=no';commit;
--+ holdcas off;
