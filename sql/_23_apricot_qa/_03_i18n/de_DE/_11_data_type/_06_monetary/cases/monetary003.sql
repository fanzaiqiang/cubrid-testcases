--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = de_DE';
set system parameters 'intl_date_lang = de_DE';
create table t(a monetary);
insert into t values(to_number('123,456,789','999,999,999'));
insert into t values(to_number('-123,456,789'));
insert into t values(to_number('123.456.789'));
insert into t values(to_number('-123.456.789'));
insert into t values(to_number('1.234,56','999.999,999'));
insert into t values(to_number('-1.234,56'));
select * from t order by 1;
drop table t;
set system parameters 'intl_date_lang = en_US';
set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;
