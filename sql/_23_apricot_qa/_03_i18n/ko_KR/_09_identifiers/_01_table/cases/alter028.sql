set system parameters 'alter_table_change_type_strict=yes';
CREATE TABLE 테이블(칼럼1 char(11));
INSERT INTO 테이블 VALUES (1),('-2147483648'),('2147483,648'); 
ALTER TABLE 테이블 CHANGE 칼럼1 칼럼2 int;
drop class  테이블;
set system parameters 'alter_table_change_type_strict=no';
CREATE TABLE 테이블(칼럼1 char(11));
INSERT INTO 테이블 VALUES (1),('-2147483648'),('2147483,648'); 
ALTER TABLE 테이블 CHANGE 칼럼1 칼럼2 int; 
SELECT * FROM 테이블  order by 1;
drop class  테이블;