--exceptional cases whenuseing function as an argument


--argument of string type
select dayofyear(time_format('10:17:66', '%H:%i:%s'));
select dayofyear(to_char(datetimetz'1111-10-55 12:23:22.111'));


--argument of timestamp type
select dayofyear(to_timestamp_tz('19:39:45 BM 12/12/2012 Europe/London'));


--argument of datetime type
select dayofyear(to_datetime_tz(123456));


--server side
create table too(str1 int, str2 string);

insert into too values(1234, 'aabbcc');

select dayofyear(to_char(to_timestamp_tz(str1))) from too;
select dayofyear(to_datetime_tz(str1)) from too;
select dayofyear(to_timestamp_tz(str1)) from too;

select dayofyear(to_time_tz(str2)) from too;
select dayofyear(time_format(str2, '%H:%i:%s')) from too;


drop table too;
