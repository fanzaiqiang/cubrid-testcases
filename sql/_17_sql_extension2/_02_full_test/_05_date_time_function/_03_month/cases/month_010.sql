--use function as an argument


--argument of string type
select month(to_char(to_timestamp('19:39:45 PM 12/12/2012')));


--argument of date type
select month(adddate(date'04/12/2010', 20));
select month(subdate(date'04/12/2010', 20));
select month(add_months(date'04/12/2010', -6));
select month(date('2001-10-18 10:14:25'));
select month(last_day('1898-05-06'));
select month(str_to_date('01,5,2015', '%m,%d,%y'));
select month(to_date('10/10/1010'));


--argument of timestamp type
select month(to_timestamp('19:39:45 PM 12/12/2012'));


--argument of datetime type
select month(timestamp('2010-10-28', '15:49:33'));
select month(to_datetime('01:23:33 am 10/23/1988'));



--server side
create table too(str1 string, str2 char(30));

insert into too values('19:39:45 PM 12/12/2012', '2011-11-11');

select month(to_char(to_timestamp(str1))) from too;
select month(to_datetime(str1)) from too;
select month(to_timestamp(str1)) from too;

select month(to_date(str2)) from too;

drop table too;
