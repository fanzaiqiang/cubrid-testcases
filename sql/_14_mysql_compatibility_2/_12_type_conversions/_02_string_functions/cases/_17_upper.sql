CREATE table alltypes(
int_col INTEGER,
float_col FLOAT,
double_col DOUBLE,
smallint_col SMALLINT,
date_col DATE,
time_col TIME,
timestamp_col TIMESTAMP,
datetime_col DATETIME,
monetary_col MONETARY,
numeric_col NUMERIC(12,4),
char_col char(255),
varchar_col varchar(255),
nchar_col nchar(255),
varnchar_col nchar varying(255),
bit_col bit(8),
varbit_col bit varying (255),
set_col set(integer),
sequence_col sequence(integer),
multiset_col multiset(integer, varchar(255)),
blob_col blob,
clob_col clob
);

insert into alltypes values(12345, 123.45, 1003.367, 123, date'2010-01-01', time'12:34:56', timestamp'2010-01-01 12:34:56 am', datetime'2010-01-01 12:34:56.123 am',1000, 123456.7890, '123', '123.45' ,N'123.45', N'123', b'01010101', b'111111111', {1,2,3,4,5} , {6,7,8,9}, {0,'a','b','c',13,14,15}, '123', '123');

select upper(int_col) from alltypes;

select upper(float_col) from alltypes;

select upper(double_col) from alltypes;

select upper(smallint_col) from alltypes;

select upper(monetary_col) from alltypes;

select upper(numeric_col) from alltypes;

select upper(date_col) from alltypes;

select upper(datetime_col) from alltypes;

select upper(time_col) from alltypes;

select upper(timestamp_col) from alltypes;

select upper(bit_col) from alltypes;

select upper(varbit_col) from alltypes;



select if(upper(123) = upper(123), 'ok','nok');

select if(upper(123.45) = upper('123.45'), 'ok','nok');

select if(upper(cast(123.45 as numeric(10,2))) = upper('123.45'), 'ok','nok');

select if(upper(cast(123.45 as monetary)) = upper('$123.45'), 'ok','nok');

select if(upper(date'2010-01-01') = upper('01/01/2010'),'ok','nok');

select if(upper(datetime'2010-01-01 12:00:00.123 am') = upper('01/01/2010 12:00:00.123 am'),'ok','nok');

select if(upper(timestamp'2010-01-01 12:00:00 am') = upper('12:00:00 am 01/01/2010'),'ok','nok');

select if(upper(time'12:00:00 am') = upper('12:00:00 am'),'ok','nok');

select if(upper(b'10101010') = upper(cast (b'10101010' as string)),'ok','nok');

$int, $123
select upper(?) from db_root;

$int, $123
select if (upper(?) = upper('123'), 'ok','nok') from db_root;


drop table alltypes;
