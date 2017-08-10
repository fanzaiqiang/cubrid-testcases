CREATE TABLE tst_helper (i int);
insert into tst_helper values (11),(12),(13),(14);
CREATE TABLE tst (int_col int, datetime_col datetime default datetime'2011-01-01 12:34:56.789');
insert into tst(int_col) values (1);
select * from tst;
ALTER TABLE tst CHANGE COLUMN datetime_col datetime_col datetime default sys_datetime;
insert into tst(int_col) values (2);
insert into tst values (3, DEFAULT);
insert into tst(int_col) select i from tst_helper;
select if (abs(datetime_col - SYS_DATETIME) <= 86400, 'ok', 'nok') from tst where int_col <> 1 and int_col <> 4;
ALTER TABLE tst CHANGE COLUMN datetime_col datetime_col datetime default datetime'2011-01-01 01:02:03.456';
insert into tst(int_col) values (22);
insert into tst values (23, DEFAULT);
insert into tst(int_col) select i+15 from tst_helper;
select * from tst where int_col > 20 order by int_col;
drop table tst_helper;
drop table tst;
