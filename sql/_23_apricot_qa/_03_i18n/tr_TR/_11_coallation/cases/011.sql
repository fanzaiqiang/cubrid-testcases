--+ holdcas on;

set names utf8;
create class t1(
col1 string collate binary, 
col2 char(10)  collate utf8_tr_cs, 
col3 varchar(10)  collate utf8_tr_cs, 
col4 DATE,
col5 TIME,
col6 TIMESTAMP


);
INSERT INTO t1 VALUES ('Çç_Ğğ_İı','Çç_Ğğ_İı','Çç_Ğğ_İı','2008-05-26', '14:24:00', '14:24:00 2008-05-26');
INSERT INTO t1 VALUES ('Öö_Şş_Üü',null,'Öö_Şş_Üü','2008-06-26', '10:24:00', '10:25:00 2008-05-26');
INSERT INTO t1 VALUES ('Öö_Şş_Üü阿啊','Öö_Şş_Üü阿啊','Öö_Şş_Üü阿啊','2008-05-26', '14:23:00', '14:24:00 2008-06-26');
INSERT INTO t1 VALUES (null,'Öö_Şş_Üü啊阿','Öö_Şş_Üü啊阿','2009-05-26', '14:25:00', '14:24:00 2008-05-26');
INSERT INTO t1 VALUES ('Öö_Şş_Üü啊阿',null,null,'2008-05-28', '14:24:01', '14:24:01 2008-05-26');

create index t1_index on t1(col4);
--test
SELECT * FROM t1 order by 1,2;
--test
SELECT col4 FROM t1 order by col4;

UPDATE t1 SET col4='2008-05-26' WHERE col4='26.02.2008';

DELETE  FROM t1 WHERE col4='2008-05-26';
--test
SELECT * FROM db_index WHERE class_name='t1' order by 1,2;
--test
SELECT col4 FROM t1 order by col4;

drop class t1;
set names iso88591;

commit;
--+ holdcas off;

