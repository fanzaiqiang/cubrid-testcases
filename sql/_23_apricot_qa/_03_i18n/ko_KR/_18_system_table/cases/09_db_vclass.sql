--+ holdcas on;
set names utf8;
create table 테이블(칼럼1 char(10)  collate utf8_ko_cs_uca default'기본' , index 색인1(칼럼1) where 칼럼1>'기본',칼럼2 varchar(10)  collate utf8_ko_cs_uca default'기본'  ) REUSE_OID;
create index 색인2 on 테이블(lower(칼럼2),칼럼1);
create view 보는 as select * from db_class where class_name like'테이%' order by class_name;
select * from db_vclass where vclass_name=_binary'보는';
drop table 테이블;
drop view 보는;
set names iso88591;
commit;
--+ holdcas off;