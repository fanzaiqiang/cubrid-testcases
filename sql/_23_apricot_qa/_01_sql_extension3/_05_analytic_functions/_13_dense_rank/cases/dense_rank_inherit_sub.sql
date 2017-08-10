--TEST: test with a table with a superclass 


--create super class
create table drank_super(
	col1 date,
	col2 time
);

create table drank_date_time under drank_super(
	col3 timestamp,
	col4 datetime
);


insert into drank_date_time values('2000-12-12', '11:11:11', '1990-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('2000-12-12', '12:12:12', '1991-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('2000-12-12', '11:11:11', '1992-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('2000-12-12', '12:12:12', '1993-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('2000-12-12', '11:11:11', '1994-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1999-11-11', '12:12:12', '1995-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1999-11-11', '11:11:11', '1996-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1999-11-11', '11:11:11', '1997-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1999-11-11', '13:13:13', '1998-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('10/10/2001', '11:11:11', '1999-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('10/10/2001', '11:11:11', '2000-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('10/10/2001', '13:13:13', '2001-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values('2011-11-23', '11:11:11', '2002-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '11:11:11', '2003-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '12:12:12', '2004-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '11:11:11', '2005-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '11:11:11', '2006-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '13:13:13', '2007-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '11:11:11', '2008-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');
insert into drank_date_time values(date'1888-09-09', '11:11:11', '2009-1-1 11:11:11', datetime'2011-11-11 11:11:11.111');


--TEST: OVER() clause
--TEST: no alias 
select col1, col2, dense_rank() over() from drank_date_time order by 1, 2;
--TEST: with alias
select col2, col3, dense_rank() over() d_rank from drank_date_time order by 1, 2;
--TEST: with where clause
select col3, col4, dense_rank() over() d_rank from drank_date_time where col1 > '2000-12-12' order by col3;
--TEST:
select col4, col1, dense_rank() over() d_rank from drank_date_time order by 1, 2;
--TEST: syntax error
select col1, col3, col4, dense_rank() over d_rank from drank_date_time;
select col1, col3, col2, dense_rank() over(1) d_rank from drank_date_time;



--TEST: OVER(PARTITION BY) clause
--TEST: partition by date
select col1, col2, col3, col4, dense_rank() over(partition by col1) d_rank from drank_date_time order by 1, 2, 3, 4;
--TEST: partition by time
select col1, col2, col3, col4, dense_rank() over(partition by col2) d_rank from drank_date_time order by 2, 1, 3, 4;
--TEST: partition by timestamp
select col1, col2, col3, col4, dense_rank() over(partition by col3) d_rank from drank_date_time order by 3, 1, 2, 4;
--TEST: partition by datetime
select col1, col2, col3, col4, dense_rank() over(partition by col4) d_rank from drank_date_time order by 4, 1, 2, 3, 5;



--TEST: OVER(ORDER BY) clause
--TEST: order by 1 column name
select col1, dense_rank() over(order by col1) d_rank from drank_date_time order by 1, 2;
--TEST: order by 2 column names
select col2, col3, dense_rank() over(order by col2, col3 asc) d_rank from drank_date_time order by 1, 2, 3;
--TEST: order by more than 2 column names
select col1, col2, col3, col4, dense_rank() over(order by col1, col2 desc, col3, col4 asc) d_rank from drank_date_time order by 1, 2, 3, 4, 5;
--TEST: order by columns not selected
select col3, dense_rank() over(order by col4 desc, col2, col1 asc) d_rank from drank_date_time order by 1, 2;
--TEST: order by 1 position
select col4, dense_rank() over(order by 1) d_rank from drank_date_time order by 1, 2;
--TEST: order by 3 positions
select col3, col2, dense_rank() over(order by 1, 2 desc, 3 asc) d_rank from drank_date_time order by 1, 2, 3;
--TEST: order by more than 3 positions
select col1, col2, col3, col4, dense_rank() over(order by 3, 2 asc, 1 desc, 4) d_rank from drank_date_time order by 1, 2, 3, 4, 5;
--TEST: order by positions not existed
select col2, dense_rank() over(order by 2) d_rank from drank_date_time order by 1, 2;
select col1, dense_rank() over(order by 3, 4, 1 desc) d_rank, col2, col4 from drank_date_time order by 1, 2;
select col3, col4, dense_rank() over(order by 5) d_rank from drank_date_time order by 1, 2;
select col3, col1, dense_rank() over(order by 100) d_rank from drank_date_time order by 1, 2;
--TEST: order by column names and positions
select col1, col2, col3, col4, dense_rank() over(order by 1, col2 desc, 3, col4 asc) d_rank from drank_date_time order by 1, 2, 3, 4, 5;




--TEST: OVER(PARTITION BY ORDER BY) clause
--TEST: partition by date
select col1, col2, col3, dense_rank() over(partition by col1 order by col1, col2, col3) from drank_date_time order by 1, 2, 3, 4;
--TEST: partition by time
select col2, col4, col1, dense_rank() over(partition by col2 order by col2, col4, col1 desc) from drank_date_time order by 1, 2, 3, 4;
--TEST: partition by timestamp
select col3, dense_rank() over(partition by col3 order by col3) d_rank, col2 from drank_date_time order by 1, 2;
--TEST: partition by datetime
select col4, col1, dense_rank() over(partition by col4 order by 1, 2 desc) d_rank from drank_date_time order by 1, 2, 3;
--TEST: syntax error
select col1, col2, dense_rank() over(order by col1, col2 partition by col2) from drank_date_time;



drop table drank_date_time; 
drop table drank_super;














