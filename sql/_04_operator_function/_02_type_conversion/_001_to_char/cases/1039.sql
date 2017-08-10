-- create table of hash partition having size 4 on date field that using to_char function and query all partitions

create table hash_test(id int,	
				   test_time time,
				   test_date date,
				   test_timestamp timestamp, 
                   primary key(id, test_date))
	PARTITION BY HASH (to_char(test_date,'yyyymmdd'))
	PARTITIONS 4;

create index date_idx on hash_test (test_date);
	insert into hash_test values(1,'09:00:00','1991-01-01','1991-01-01 09:00:00');
	insert into hash_test values(2,'09:30:00','1992-01-12','1992-01-11 09:30:00');
	insert into hash_test values(3,'09:50:00','1994-02-03','1994-02-01 09:50:00');
	insert into hash_test values(4,'12:00:00','1995-02-14','1995-02-11 12:00:00');
	insert into hash_test values(5,'12:30:00','1996-03-05','1996-03-01 12:30:00');
	insert into hash_test values(6,'12:50:00','1997-03-16','1997-03-11 12:50:00');
	insert into hash_test values(7,'15:00:00','1998-04-07','1998-04-01 15:00:00');
	insert into hash_test values(8,'15:30:00','1999-04-18','1999-04-11 15:30:00');
	insert into hash_test values(9,'15:50:00','2000-05-09','2000-05-01 15:50:00');
	insert into hash_test values(10,'18:00:00','2001-06-11','2001-06-11 18:00:00');
	insert into hash_test values(11,'18:30:00','2002-07-02','2002-07-01 18:30:00');
	insert into hash_test values(12,'18:50:00','2003-07-13','2003-07-11 18:50:00');
	insert into hash_test values(13,'21:00:00','2004-08-04','2004-08-01 21:00:00');
	insert into hash_test values(14,'21:30:00','2005-08-15','2005-08-11 21:30:00');
	insert into hash_test values(15,'21:50:00','2006-09-06','2006-09-01 21:50:00');
	insert into hash_test values(16,'23:00:00','2007-09-17','2007-09-11 23:00:00');	
	insert into hash_test values(20,null,null,null);
select * from hash_test__p__p0 order by id;
select * from hash_test__p__p1 order by id;
select * from hash_test__p__p2 order by id;
select * from hash_test__p__p3 order by id;


drop table hash_test;
