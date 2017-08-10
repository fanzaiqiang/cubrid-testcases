--TEST: test with tables with hash partition


create table stddev_p_hash(
	col1 date,
	col2 time, 
	col3 timestamp,
	col4 datetime,
	col5 bigint
)
partition by hash(col3) partitions 5;


insert into stddev_p_hash values('2000-12-12', '11:11:11', '1990-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 135);
insert into stddev_p_hash values('2000-12-12', '12:12:12', '1991-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 246);
insert into stddev_p_hash values('2000-12-12', '11:11:11', '1992-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 10101);
insert into stddev_p_hash values('2000-12-12', '12:12:12', '1993-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 28282);
insert into stddev_p_hash values('2000-12-12', '11:11:11', '1994-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 55555);
insert into stddev_p_hash values(date'1999-11-11', '12:12:12', '1995-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 2345);
insert into stddev_p_hash values(date'1999-11-11', '11:11:11', '1996-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 389483);
insert into stddev_p_hash values(date'1999-11-11', '11:11:11', '1997-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 38492304);
insert into stddev_p_hash values(date'1999-11-11', '13:13:13', '1998-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 29340293);
insert into stddev_p_hash values('10/10/2001', '11:11:11', '1999-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 2342);
insert into stddev_p_hash values('10/10/2001', '11:11:11', '2000-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 639023);
insert into stddev_p_hash values('10/10/2001', '13:13:13', '2001-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 5728545);
insert into stddev_p_hash values('2011-11-23', '11:11:11', '2002-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 45234);
insert into stddev_p_hash values(date'1888-09-09', '11:11:11', '2003-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', null);
insert into stddev_p_hash values(date'1888-09-09', '12:12:12', '2004-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 990);
insert into stddev_p_hash values(date'1888-09-09', '11:11:11', '2005-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 234);
insert into stddev_p_hash values(date'1888-09-09', '11:11:11', '2006-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 9034);
insert into stddev_p_hash values(date'1888-09-09', '13:13:13', '2007-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', null);
insert into stddev_p_hash values(date'1888-09-09', '11:11:11', '2008-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 2034);
insert into stddev_p_hash values(date'1888-09-09', '11:11:11', '2009-1-1 11:11:11', datetime'2011-11-11 11:11:11.111', 29372034);


--TEST: select from partition
select col1, col2, stddev(col5) over() from stddev_p_hash__p__p0 order by 1, 2, 3;
select col1, col2, stddev(col5) over(order by col1) from stddev_p_hash__p__p1 order by 1, 2, 3;
select col1, col2, stddev(col5) over(partition by col2) from stddev_p_hash__p__p2 order by 1, 2, 3;
select col1, col2, stddev(col5) over(partition by col1 order by col3) from stddev_p_hash__p__p3 order by 1, 2, 3;
select col1, col2, stddev(col5) over(partition by col4, col2 order by col1, col3) from stddev_p_hash__p__p4 order by 1, 2, 3;


--TEST: OVER() clause
--TEST: date 
select col1, col2, stddev(all col5) over() stddev from stddev_p_hash order by 1, 2;
--TEST: time, with alias+all
select col2, col3, stddev(distinct col5) over() stddev from stddev_p_hash order by 1, 2;
--TEST: timestamp, with where clause
select col3, col4, stddev(unique col5) over() stddev from stddev_p_hash where col1 > '2000-12-12' order by col3, col4;
--TEST: datetime, distinct
select col4, col1, stddev(distinctrow col5) over() stddev from stddev_p_hash order by 1, 2;
--TEST: syntax error
select stddev from (select *, stddev(col5) over() stddev from stddev_p_hash) order by 1;
select col1, col3, col4, stddev(col5) over stddev from stddev_p_hash;
select col1, col3, col2, stddev(col5) over(1) stddev from stddev_p_hash;



--TEST: OVER(PARTITION BY) clause
--TEST: partition by date
select col1, col2, col3, col4, stddev(col5) over(partition by col1) stddev from stddev_p_hash order by 1, 2, 3, 4;
--TEST: partition by time
select col1, col2, col3, col4, stddev(all col5) over(partition by col2) stddev from stddev_p_hash order by 2, 1, 3, 4;
--TEST: partition by timestamp
select col1, col2, col3, col4, stddev(col5) over(partition by col3) stddev from stddev_p_hash order by 3, 1, 2, 4;
--TEST: partition by datetime
select col1, col2, col3, col4, stddev(unique col5) over(partition by col4) stddev from stddev_p_hash order by 4, 1, 2, 3, 5;



--TEST: OVER(ORDER BY) clause
--TEST: order by 1 column name
select col1, stddev(distinctrow col5) over(order by col1) stddev1, stddev(distinctrow col5) over() stddev2 from stddev_p_hash order by 1, 2;
--TEST: order by 2 column names
select col2, col3, stddev(col5) over(order by col2, col3 asc) stddev1, stddev(col5) over() stddev2 from stddev_p_hash order by 1, 2, 3;
--TEST: order by more than 2 column names
select col1, col2, col3, col4, stddev(distinct col5) over(order by col1, col2 desc, col3, col4 asc) stddev1, stddev(distinct col5) over() stddev2 from stddev_p_hash order by 1, 2, 3, 4, 5;
--TEST: order by columns not selected
select col3, stddev(col5) over(order by col4 desc, col2, col1 asc) stddev1, stddev(col5) over() stddev2 from stddev_p_hash order by 1, 2;
--TEST: order by 1 position
select col4, stddev(all col5) over(order by 1) stddev from stddev_p_hash order by 1, 2;
--TEST: order by 3 positions
select col3, col2, stddev(col5) over(order by 1, 2 desc, 3 asc) stddev from stddev_p_hash order by 1, 2, 3;
--TEST: order by more than 3 positions
select col1, col2, col3, col4, stddev(unique col5) over(order by 3, 2 asc, 1 desc, 4) stddev from stddev_p_hash order by 1, 2, 3, 4, 5;
--TEST: order by positions not existed
select col2, stddev(col5) over(order by 2) stddev from stddev_p_hash order by 1, 2;
select col1, stddev(col5) over(order by 3, 4, 1 desc) stddev, col2, col4 from stddev_p_hash order by 1, 2;
select col3, col4, stddev(col5) over(order by 5) stddev from stddev_p_hash order by 1, 2;
select col3, col1, stddev(col5) over(order by 100) stddev from stddev_p_hash order by 1, 2;
--TEST: order by column names and positions
select col1, col2, col3, col4, stddev(col5) over(order by 1, col2 desc, 3, col4 asc) stddev from stddev_p_hash order by 1, 2, 3, 4, 5;




--TEST: OVER(PARTITION BY ORDER BY) clause
--TEST: partition by date
select col1, col2, col3, stddev(distinctrow col5) over(partition by col1 order by 1, 2, 3) stddev1, stddev(distinctrow col5) over(partition by col1) stddev2 from stddev_p_hash order by 1, 2, 3, 4;
--TEST: partition by time
select col2, col4, col1, stddev(col5) over(partition by col2 order by col2, col4, col1 desc) stddev1, stddev(col5) over(partition by col2) stddev2 from stddev_p_hash order by 1, 2, 3, 4;
--TEST: partition by timestamp
select col3, stddev(all col5) over(partition by col3 order by 1, 3) stddev, col2 from stddev_p_hash order by 1, 2;
--TEST: partition by datetime
select col4, col1, stddev(unique col5) over(partition by col4 order by 1, 2 desc) stddev from stddev_p_hash order by 1, 2, 3;
--TEST: syntax error
select col1, col2, stddev(col5) over(order by col1, col2 partition by col2) from stddev_p_hash;



drop table stddev_p_hash; 















