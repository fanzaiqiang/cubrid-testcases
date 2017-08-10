--TEST: test with numeric data types and normal syntax


create table stddev_pop_numeric(
	col1 int,
	col2 short, 
	col3 bigint,
	col4 numeric(10, 5),
	col5 float,
	col6 double,
	col7 monetary
);


insert into stddev_pop_numeric values(10000, 100, 10000000, 12345.06789, 111.11, 11111.130, 1000);
insert into stddev_pop_numeric values(10000, 200, 20000000, 12345.06789, 111.12, 11111.129, 1000);
insert into stddev_pop_numeric values(10000, 100, 30000000, 12345.16789, 111.13, 11111.128, 1000);
insert into stddev_pop_numeric values(10000, 200, 40000000, 12345.06789, 111.14, 11111.127, 1000);
insert into stddev_pop_numeric values(10000, 100, 50000000, 12345.16789, 111.15, 11111.126, 1000);
insert into stddev_pop_numeric values(20000, 200, 70000000, 12345.06789, 111.16, 11111.125, 1000);
insert into stddev_pop_numeric values(20000, 100, 80000000, 12345.06789, 111.17, 11111.124, 1000);
insert into stddev_pop_numeric values(20000, 100, 10000000, 12345.26789, 111.18, 11111.123, 1000);
insert into stddev_pop_numeric values(20000, 300, 20000000, 12345.06789, 111.19, 11111.122, 1000);
insert into stddev_pop_numeric values(30000, 100, 30000000, 12345.06789, 111.20, 11111.121, 1000);
insert into stddev_pop_numeric values(30000, 100, 40000000, 12345.16789, 111.21, 11111.120, 1000);
insert into stddev_pop_numeric values(30000, 300, 50000000, 12345.06789, 111.23, 11111.119, 1000);
insert into stddev_pop_numeric values(40000, 100, 10000000, 12345.06789, 111.24, 11111.118, 1000);
insert into stddev_pop_numeric values(50000, 100, 20000000, 12345.06789, 111.25, 11111.117, 1000);
insert into stddev_pop_numeric values(50000, 200, 30000000, 12345.06789, 111.26, 11111.116, 1000);
insert into stddev_pop_numeric values(50000, 100, 40000000, 12345.56789, 111.27, 11111.115, 1000);
insert into stddev_pop_numeric values(50000, 100, 50000000, 12345.06789, 111.28, 11111.114, 1000);
insert into stddev_pop_numeric values(50000, 300, 60000000, 12345.56789, 111.29, 11111.113, 1000);
insert into stddev_pop_numeric values(50000, 100, 70000000, 12345.06789, 111.30, 11111.112, 1000);
insert into stddev_pop_numeric values(50000, 100, 80000000, 12345.56789, 111.31, 11111.111, 1000);


--TEST: OVER() clause
--TEST: int 
select trunc(stddev_pop, 5) from (select  col1, col2, stddev_pop(col1) over() stddev_pop from stddev_pop_numeric) order by 1;
--TEST: short, with alias
select trunc(stddev_pop, 5) from (select  col2, col3, stddev_pop(col2) over() stddev_pop from stddev_pop_numeric) order by 1;
--TEST: bigint, with where clause
select trunc(stddev_pop, 5) from (select  col3, col4, stddev_pop(col3) over() stddev_pop from stddev_pop_numeric where col1 > 10000) order by 1;
--TEST: numeric, distinct
select trunc(stddev_pop, 5) from (select  col4, col5, stddev_pop(distinct col4) over() stddev_pop from stddev_pop_numeric) order by 1;
--TEST: float, all
select trunc(stddev_pop, 5) from (select  col5, col6, col7, stddev_pop(all col5) over() stddev_pop from stddev_pop_numeric) order by 1;
--TEST: double, all
select trunc(stddev_pop, 5) from (select  col6, col1, col2, col5, stddev_pop(all col6) over() stddev_pop from stddev_pop_numeric where length(col3)=8 and round(col5)=111) order by 1;
--TEST: monetary, distinct
select trunc(stddev_pop, 5) from (select  col7, col3, col5, stddev_pop(distinct col7) over() stddev_pop from stddev_pop_numeric) order by 1;
--TEST: no matched rows
select trunc(stddev_pop, 5) from (select  col1, col2, col3, col4, col5, col6, col7, stddev_pop(col1) over() stddev_pop from stddev_pop_numeric where trunc(col6)=111) order by 1;
--TEST: syntax error
select trunc(stddev_pop, 5) from (select  *, stddev_pop(col2) over() stddev_pop from stddev_pop_numeric) order by 1;
select col1, col3, col5, stddev_pop(col2) over stddev_pop from stddev_pop_numeric;
select col1, col3, col5, stddev_pop(col2) over(1) stddev_pop from stddev_pop_numeric;



--TEST: OVER(PARTITION BY) clause
--TEST: partition by int
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(unique col3) over(partition by col1) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5, 6;
--TEST: partition by smallint
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(distinct col4) over(partition by col2) stddev_pop from stddev_pop_numeric order by 2, 1, 3, 4, 5, 6;
--TEST: partition by bigint
select col1, col2, col3, col4, col5, col6, col7, trunc(stddev_pop(col4) over(partition by col3), 2) stddev_pop from stddev_pop_numeric order by 3, 1, 2, 4, 5, 6;
--TEST: partition by numeric
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(all col2) over(partition by col4) stddev_pop from stddev_pop_numeric order by 4, 1, 2, 3, 5, 6;
--TEST: partition by float
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(distinctrow col5) over(partition by col5) stddev_pop from stddev_pop_numeric order by 5, 1, 2, 3, 4, 6;
--TEST: partition by double
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(all col4) over(partition by col6) stddev_pop from stddev_pop_numeric order by 6, 1, 2, 3, 4, 5;
--TEST: partition by monetary
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(distinct col7) over(partition by col7) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5, 6;



--TEST: OVER(ORDER BY) clause
--TEST: order by 1 column name
select col1, stddev_pop(col2) over(order by col1) stddev_pop from stddev_pop_numeric order by 1, 2;
--TEST: order by 2 column names
select col2, col3, trunc((stddev_pop(all col4) over(order by col2, col3)),5) stddev_pop from stddev_pop_numeric order by 1, 2, 3;
--TEST: order by more than 2 column names
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(col6) over(order by col1, col2 desc, col3, col4 asc, col5, col6 desc) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: order by columns not selected
select col3, stddev_pop(distinct col2) over(order by col4, col6 desc, col2, col1 asc) stddev_pop from stddev_pop_numeric order by 1, 2;
--TEST: order by 1 position
select col5, stddev_pop(all col2) over(order by 1) stddev_pop from stddev_pop_numeric order by 1, 2;
--TEST: order by 3 positions
select col3, col5, stddev_pop(col7) over(order by 1, 2 desc, 3 asc) stddev_pop from stddev_pop_numeric order by 1, 2, 3;
--TEST: order by more than 3 positions
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(col6) over(order by 5, 3, 7, 2 asc, 1 desc, 6 desc, 4) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: order by positions not existed
select col5, stddev_pop(distinct col1) over(order by 2) stddev_pop from stddev_pop_numeric order by 1, 2;
select col1, stddev_pop(all col3) over(order by 3, 4, 1 desc) stddev_pop, col5, col7 from stddev_pop_numeric order by 1, 2;
select col3, col5, stddev_pop(col3) over(order by 5) stddev_pop from stddev_pop_numeric order by 1, 2;
select col3, col5, stddev_pop(col5) over(order by 100) stddev_pop from stddev_pop_numeric order by 1, 2;
--TEST: order by column names and positions
select col1, col2, col3, col4, col5, col6, col7, stddev_pop(col1) over(order by 1, col2 desc, 3, col4 asc, 5, col6 desc, 7) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5, 6, 7, 8;




--TEST: OVER(PARTITION BY ORDER BY) clause
--TEST: partition by int
select col1, col2, col3, stddev_pop(distinct col4) over(partition by col1 order by col2, col3) from stddev_pop_numeric order by 1, 2, 3, 4;
--TEST: partition by smallint
select col2, col4, col5, stddev_pop(col5) over(partition by col2 order by col2, col4, col5 desc) from stddev_pop_numeric order by 1, 2, 3, 4;
--TEST: partition by bigint
select col3, stddev_pop(all col7) over(partition by col3 order by col1, col2) stddev_pop, col5 from stddev_pop_numeric order by 1, 2;
--TEST: partition by numeric
select col4, col1, stddev_pop(col4) over(partition by col4 order by col1, col2 desc) stddev_pop from stddev_pop_numeric order by 1, 2, 3;
--TEST: partition by float
select col5, col6, stddev_pop(distinct col2) over(partition by col5 order by col5 desc, col6 asc) stddev_pop from stddev_pop_numeric order by 1, 2, 3;
--TEST: partition by double
select col6, col1, col2, col3, stddev_pop(all col7) over(partition by col6 order by 5,4,3 desc,2,1) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5;
--TEST: partition by monetary
select col7, col1, col2, col3, col4, col5, col6, col7, stddev_pop(distinct col7) over(partition by col7 order by 1 desc, col1, col2, col3 asc, 5, 6, col7 desc) stddev_pop from stddev_pop_numeric order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: syntax error
select col1, col2, stddev_pop(distinct col3) over(order by col1, col2 partition by col2) from stddev_pop_numeric;



drop table stddev_pop_numeric; 















