-- [er]create table with nchar  data type and insert string data


CREATE CLASS t1(
   col1       nchar  (20)
);

INSERT INTO t1 VALUES ('a');

drop t1;