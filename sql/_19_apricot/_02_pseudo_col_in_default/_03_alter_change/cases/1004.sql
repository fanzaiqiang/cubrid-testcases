CREATE TABLE tst_helper (i int);
insert into tst_helper values (11),(12),(13),(14);
CREATE TABLE tst (int_col int, date_col date default date'2011-01-01');
insert into tst(int_col) values (1);
select * from tst;
ALTER TABLE tst CHANGE COLUMN date_col date_col date default sys_date;
insert into tst(int_col) values (2);
insert into tst values (3, DEFAULT);
insert into tst(int_col) select i from tst_helper;
select if (abs(date_col - SYS_DATE) <= 1, 'ok', 'nok') from tst where int_col <> 1 and int_col <> 4;
ALTER TABLE tst CHANGE COLUMN date_col date_col date default date'2011-01-01';
insert into tst(int_col) values (22);
insert into tst values (23, DEFAULT);
insert into tst(int_col) select i+15 from tst_helper;
select * from tst where int_col > 20 order by int_col;
drop table tst_helper;
drop table tst;
