--+ holdcas on;
set names utf8;
create table t(a varchar(10) collate utf8_ko_cs_uca);
insert into t values('가'),('각');
select strcmp(cast('伽' as string collate utf8_gen),cast('가' as string collate utf8_ko_cs_uca));
select * from t where a > any{cast('伽' as string collate utf8_gen)};
select * from t where a > some{cast('伽' as string collate utf8_gen)};
select * from t where a > all{cast('伽' as string collate utf8_gen)};
drop table t;
set names iso88591;
commit;
--+ holdcas off;
