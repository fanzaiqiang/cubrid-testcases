--+ holdcas on;
--alter_table_change_type_strict
--change the type of a datetime column to nchar

create class coo(
        col1 datetime,
        col2 datetime,
        col3 datetime
);

insert into coo
 values('2011-3-21 09:45:56.888 am', '13:24:58.345 PM 1999-12-12', '8:56:34.245 09/12/2023');


show columns in coo;


--datetime -> nchar, new prec = 26
alter table coo change col1 col1 nchar(26);
select * from coo order by 1;

--datetime -> nchar, new prec > 26
alter table coo change col2 col2 nchar(28);
select * from coo order by 1;

--datetime -> nchar, new prec < 26
set system parameters 'alter_table_change_type_strict=yes';
alter table coo change col3 col3 nchar(25);
set system parameters 'alter_table_change_type_strict=no';
alter table coo change col3 col3 nchar(25);
select * from coo order by 1;


show columns in coo;

drop table coo;


commit;
--+ holdcas off;
