--pass exceptional data of timestamptz/datetimetz type to the parameter


--1. [error] exceptional argument of timestamptz type
select second(timestamptz'23:00:00 11/001');

select second(timestamptz'04:14:07 1/0019/2011');

select second(timestamptz'03:15,07 1/19/1999');

select second(timestamptz'03:14:08 hm 1/19/2010');

select second(timestamptz'03:14:07 3\22\1998');

select second(timestamptz'03:14:07 a/b/c');

select second(timestamptz'11:03:22 PM 1993--01--23');

select second(timestamptz'2000=12=12 22:02:33');

select second(timestamptz'2020-23-11 03:14:45pm');



--2. [error] exceptional argument of datetimetz type
select second(datetimetz'2010-10 10:10:00001:0000001 am');

select second(datetimetz'20:59:59:999 0012/00031/1999');

select second(datetimetz'1::2::3:4 12/31/9999');

select second(datetimetz'23:59:33:44:555 12/31/9999');

select second(datetimetz'20:23:45:23 12\31\2000');

select second(datetimetz'20:23:45:23 a/b/c');

select second(datetimetz'20:33:21:111 1990-10--19 ');

select second(datetimetz'2/12/2022 10:20:cc:400');

select second(datetimetz'12/31/1989 23:59:59:123am');


--3. [error] unmatched number of argument
select second(timestamptz'2010-10-10 12:34:33', 3);
select second(datetimetz'10:10:10:100 12/22/2022', 'aaa', 'bbb');
