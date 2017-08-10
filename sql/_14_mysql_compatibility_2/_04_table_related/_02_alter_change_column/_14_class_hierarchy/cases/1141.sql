---- ALTER TABLE ...  CHANGE COLUMN  
-- constraints :
-- ordering : no order defined
-- name : same of different
-- other : the table is in a hierarchy

-- altering a column in a class hierarchy :  works for the base class 
create class c1 (i1 integer, pi1 integer);

create class c2 under c1  (i2 integer, pi2 integer);

create class c3 under c2  (i3 integer, pi3 integer);


alter table c1 change i1 i_1 integer;

alter table c2 change i2 i_2 integer;

alter table c3 change i3 i_3 integer;

drop c3;
drop c2;
drop c1;






-- altering a column in a class hierarchy with multiple inheritance 

create class b1 (i integer);

create class b2 (i integer);

create class c1 under b1,b2  (ic integer)  inherit i of b1;

create class c2 under b1,b2  (ic integer)  inherit i of b2;

create class a1 under c1  (ia integer);

create class a2 under c2  (ia integer);


insert into c1 values (1,1);

insert into c2 values (2,2);

select * from c1 order by 1;
select * from c2 order by 1,2;



alter table b1 rename i as i_i;

alter table b1 change i_i i integer;

alter table b2 rename i as i_i;

alter table b2 change i_i i integer;

select * from c1 order by 1;
select * from c2  order by 1,2;


drop a2,a1;
drop c2,c1;
drop b2,b1;



