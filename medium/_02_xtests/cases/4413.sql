autocommit off;
create class tmp_class ( attr_tmp int );create class test_class ( id int, attr_test set of ( tmp_class ) );
insert into test_class values ( 3, {} );
insert into test_class values ( 4, NULL );
select * from test_class;
insert into tmp_class values ( 100 ) to obj100;
update test_class set attr_test = attr_test + { obj100 };
select * from test_class;
rollback work;
create class tmp_class ( attr_tmp int );
create class test_class ( id int, attr_test set of ( tmp_class ) );
insert into test_class values ( 3, {} );
insert into test_class values ( 4, NULL );
insert into tmp_class values ( 100 ) to obj100;
update test_class set attr_test = attr_test + { obj100 };
select * from test_class;
rollback work;
create class tmp_class ( attr_tmp int );
create class test_class ( id int, attr_test set of ( tmp_class ) );
insert into test_class values ( 3, {} );
insert into test_class values ( 4, NULL );
select * from test_class;
insert into tmp_class values ( 100 ) to obj100;
select * from tmp_class;
update test_class set attr_test = attr_test + { obj100 };
select * from test_class;
rollback;
