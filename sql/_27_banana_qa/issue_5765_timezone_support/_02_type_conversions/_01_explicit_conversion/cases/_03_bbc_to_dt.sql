--cast bit/blob/clob columns to DATETIME(L)TZ types


drop table if exists tz_test;

create table tz_test(a bit(8), b bit varying, c blob, d clob);
insert into tz_test values(B'10101111', X'abcdef', B'11001010', '2009-10-12 03:45:56.999 Africa/Ouagadougou');

--test: cast bit/blob/clob columns to DATETIME types
select cast(a as datetime) from tz_test;
select cast(b as datetime) from tz_test;
select cast(c as datetime) from tz_test;
select cast(d as datetime) from tz_test;

--test: cast bit/blob/clob columns to DATETIMELTZ types
select cast(a as datetime with local time zone) from tz_test;
select cast(b as datetime with local time zone) from tz_test;
select cast(c as datetime with local time zone) from tz_test;
select cast(d as datetime with local time zone) from tz_test;

--test: cast bit/blob/clob columns to DATETIMETZ types
select cast(a as datetime with time zone) from tz_test;
select cast(b as datetime with time zone) from tz_test;
select cast(c as datetime with time zone) from tz_test;
select cast(d as datetime with time zone) from tz_test;


drop table tz_test;

set timezone 'Asia/Seoul';
