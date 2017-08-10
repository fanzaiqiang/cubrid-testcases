--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = ko_KR';
set system parameters 'intl_date_lang = ko_KR';
create table t( a DATE);
insert into t value(STR_TO_DATE('월 2 2011','%a %u %Y'));
select a+1 from t order by 1;
select a-1 from t order by 1;
update t set a ='2008-10-31' where a=STR_TO_DATE('월 2 2011','%a %u %Y');
select * from t;
drop table t;
set system parameters 'intl_date_lang = en_US';
set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;
