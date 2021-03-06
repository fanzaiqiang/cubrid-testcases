---- ALTER TABLE ...  CHANGE COLUMN  , type change
-- constraints : no constraints
-- ordering : no order defined
-- name : same name
-- type : TIMESTAMP


-------------- TIMESTAMP 1 : change to DATETIME
create table t1 (t timestamp);
insert into t1 values (timestamp'03/04/1999 10:11:12');
insert into t1 values (timestamp'11/12/2001 12:13:14');

select * from t1 order by 1;
show columns in t1;

alter table t1 change t d datetime;
-- should be ok:
insert into t1 values (datetime'12/11/1996 10:11:12');
select * from t1 order by 1;
show columns in t1;

drop table t1;


-------------- TIMESTAMP 2 : change to DATETIME , UNIQUE
create table t1 (t timestamp unique);
insert into t1 values (timestamp'03/04/1999 10:11:12');
insert into t1 values (timestamp'11/12/2001 12:13:14');
-- should fail
insert into t1 values (timestamp'11/12/2001 12:13:14');

select * from t1 order by 1;
show columns in t1;

alter table t1 change t d datetime unique;
-- should be ok:
insert into t1 values (datetime'12/11/1996 11:12:13');

-- should fail (unique):
insert into t1 values (datetime'12/11/1996 11:12:13');

select * from t1 order by 1;
show columns in t1;

drop table t1;



