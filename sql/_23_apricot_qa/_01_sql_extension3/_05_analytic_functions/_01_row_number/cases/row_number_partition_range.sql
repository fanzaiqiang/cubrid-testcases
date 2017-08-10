--TEST: test with tables with range partition


create table rownum_p_range(
	col1 int,
	col2 short, 
	col3 bigint,
	col4 numeric(10, 5),
	col5 float,
	col6 double,
	col7 monetary
)
partition by range(col1)
(partition p1 values less than (20000),
partition p2 values less than (30000),
partition p3 values less than (40000),
partition p4 values less than (50000),
partition p5 values less than (60000)
);


insert into rownum_p_range values(10000, 100, 10000000, 12345.06789, 111.11, 11111.130, 1000);
insert into rownum_p_range values(10000, 200, 20000000, 12345.06789, 111.12, 11111.129, 1000);
insert into rownum_p_range values(10000, 100, 30000000, 12345.16789, 111.13, 11111.128, 1000);
insert into rownum_p_range values(10000, 200, 40000000, 12345.06789, 111.14, 11111.127, 1000);
insert into rownum_p_range values(10000, 100, 50000000, 12345.16789, 111.15, 11111.126, 1000);
insert into rownum_p_range values(20000, 200, 70000000, 12345.06789, 111.16, 11111.125, 1000);
insert into rownum_p_range values(20000, 100, 80000000, 12345.06789, 111.17, 11111.124, 1000);
insert into rownum_p_range values(20000, 100, 10000000, 12345.26789, 111.18, 11111.123, 1000);
insert into rownum_p_range values(20000, 300, 20000000, 12345.06789, 111.19, 11111.122, 1000);
insert into rownum_p_range values(30000, 100, 30000000, 12345.06789, 111.20, 11111.121, 1000);
insert into rownum_p_range values(30000, 100, 40000000, 12345.16789, 111.21, 11111.120, 1000);
insert into rownum_p_range values(30000, 300, 50000000, 12345.06789, 111.23, 11111.119, 1000);
insert into rownum_p_range values(40000, 100, 10000000, 12345.06789, 111.24, 11111.118, 1000);
insert into rownum_p_range values(50000, 100, 20000000, 12345.06789, 111.25, 11111.117, 1000);
insert into rownum_p_range values(50000, 200, 30000000, 12345.06789, 111.26, 11111.116, 1000);
insert into rownum_p_range values(50000, 100, 40000000, 12345.56789, 111.27, 11111.115, 1000);
insert into rownum_p_range values(50000, 100, 50000000, 12345.06789, 111.28, 11111.114, 1000);
insert into rownum_p_range values(50000, 300, 60000000, 12345.56789, 111.29, 11111.113, 1000);
insert into rownum_p_range values(50000, 100, 70000000, 12345.06789, 111.30, 11111.112, 1000);
insert into rownum_p_range values(50000, 100, 80000000, 12345.56789, 111.31, 11111.111, 1000);


--TEST: select from partition
select row_num from (select col1, col2, row_number() over(partition by col2 order by col6) row_num from rownum_p_range__p__p1) order by 1;
select row_num from (select col1, col2, col3, row_number() over(partition by col3 order by col5) row_num from rownum_p_range__p__p2 where col1 > 20000) order by 1;
select row_num from (select col1, col2, col4, row_number() over(partition by col4 order by col4) row_num from rownum_p_range__p__p3 where col3 > 30000) order by 1;
select row_num from (select col1, col5, row_number() over(partition by col5 order by col3) row_num from rownum_p_range__p__p4) order by 1;
select row_num from (select col1, col6, row_number() over(partition by col6 order by col2) row_num from rownum_p_range__p__p5) order by 1;
select row_num from (select col1, col7, row_number() over(partition by col7 order by col1) row_num from rownum_p_range__p__p5) order by 1;

--TEST: OVER() clause
--TEST: no aliases 
select row_num from (select  col1, col2, row_number() over() row_num from rownum_p_range) order by 1;
--TEST: with alias
select row_num from (select  col2, col3, row_number() over() row_num from rownum_p_range) order by 1;
--TEST: with where clause
select row_num from (select  col3, col4, row_number() over() row_num from rownum_p_range where col1 > 10000) order by 1;
--TEST: 
select row_num from (select  col5, col6, col7, row_number() over() row_num from rownum_p_range) order by 1;
--TEST: 
select row_num from (select  col6, col1, col2, col5, row_number() over() row_num from rownum_p_range where length(col3)=8 and round(col5)=111) order by 1;
--TEST: 
select row_num from (select  col7, col3, col5, row_number() over() row_num from rownum_p_range) order by 1;
--TEST: no matched rows
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over() row_num from rownum_p_range where trunc(col6)=111) order by 1;
--TEST: syntax error
select col1, col3, col5, row_number() over row_num from rownum_p_range;
select col1, col3, col5, row_number() over(1) row_num from rownum_p_range;



--TEST: OVER(PARTITION BY) clause
--TEST: partition by int
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col1) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: partition by smallint
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col2) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: partition by bigint
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col3) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: partition by numeric
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col4) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: partition by float
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col5) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: partition by double
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col6) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;
--TEST: partition by monetary
select col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col7) row_num from rownum_p_range order by 1, 2, 3, 4, 5, 6, 7, 8;



--TEST: OVER(ORDER BY) clause
--TEST: order by 1 column name
select col1, row_number() over(order by col1) row_num from rownum_p_range;
--TEST: order by 2 column names
select col2, col3, row_number() over(order by col2, col3 asc) row_num from rownum_p_range;
--TEST: order by more than 2 column names
select col1, col2, col3, col4, col5, col6, col7, row_number() over(order by col1, col2 desc, col3, col4 asc, col5, col6 desc) row_num from rownum_p_range;
--TEST: order by columns not selected
select col3, row_number() over(order by col4, col6 desc, col2, col1 asc) row_num from rownum_p_range;
--TEST: order by 1 position
select col5, row_number() over(order by 1) row_num from rownum_p_range;
--TEST: order by 3 positions
select col3, col5, row_number() over(order by 1, 2 desc, 3 asc) row_num from rownum_p_range;
--TEST: order by more than 3 positions
select col1, col2, col3, col4, col5, col6, col7, row_number() over(order by 5, 3, 7, 2 asc, 1 desc, 6 desc, 4) row_num from rownum_p_range;
--TEST: order by positions not existed
select col5, row_number() over(order by 2) row_num from rownum_p_range;
select col1, row_number() over(order by 3, 4, 1 desc) row_num, col5, col7 from rownum_p_range;
select col3, col5, row_number() over(order by 5) row_num from rownum_p_range;
select col3, col5, row_number() over(order by 100) row_num from rownum_p_range;
--TEST: order by column names and positions
select col1, col2, col3, col4, col5, col6, col7, row_number() over(order by 1, col2 desc, 3, col4 asc, 5, col6 desc, 7) row_num from rownum_p_range;




--TEST: OVER(PARTITION BY ORDER BY) clause
--TEST: partition by int
select col1, col2, col3, row_number() over(partition by col1 order by 1, 2, 3) from rownum_p_range;
--TEST: partition by smallint
select col2, col4, col5, row_number() over(partition by col2 order by col2, col4, col5 desc) from rownum_p_range;
--TEST: partition by bigint
select col3, row_number() over(partition by col3 order by 1, 2, 3) row_num, col5 from rownum_p_range;
--TEST: partition by numeric
select col4, col1, row_number() over(partition by col4 order by 1, 2 desc) row_num from rownum_p_range;
--TEST: partition by float
select col5, col6, row_number() over(partition by col5 order by col6 asc) row_num from rownum_p_range;
--TEST: partition by double
select col6, col1, col2, col3, row_number() over(partition by col6 order by col1 desc) row_num from rownum_p_range;
--TEST: partition by monetary
select col7, col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col7 order by col1, col2, col3 asc, col6) row_num from rownum_p_range;
--TEST: syntax error
select col1, col2, row_number() over(order by col1, col2 partition by col2) from rownum_p_range;



drop table rownum_p_range; 















