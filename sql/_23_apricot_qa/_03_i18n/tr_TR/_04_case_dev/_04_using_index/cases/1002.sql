--+ holdcas on;
set names utf8;
--Test using indexes in a select query
create class foo (i integer,s string  collate utf8_tr_cs,j integer,t string  collate utf8_tr_cs,x string  collate utf8_tr_cs );
create unique index foo_udx on foo (i, s, j, t);
create index int_idx on foo (i, j);
insert into foo values(101, 'İzğüi', 100001, 'aŞüke', 'açgı');
insert into foo values(102, 'İzğüe', 100002, 'bŞükd', 'bçgı');
insert into foo values(103, 'İzğüf', 100003, 'cŞükc', 'çgı');
insert into foo values(104, 'İzğüg', 100004, 'dŞükb', 'çgı');
insert into foo values(105, 'İzğüh', 100005, 'eŞüka', 'çgı');

select * from foo where i = 101 and j = 100001 order by i;

select * from foo where i = 101 and j = 100001 using index foo_udx order by j;


select * from foo where s = 'İzğüe' and x = 'bçgı' order by s;

select * from foo where s = 'İzğüe' and x = 'bçgı' using index foo_udx order by x;

select * from foo where s = 'İzğüe' and t = 'bŞükd' order by x;

select * from foo where t = 'dŞükb' or x = 'çgı' order by s;

select * from foo where t = 'dŞükb' or x = 'çgı' using index foo_udx(+) order by t;

select * from foo where i = 101 or t = 'dŞükb' using index int_idx, foo_udx  order by i;

select * from foo where i = 101 or t = 'dŞükb' using index int_idx(+), foo_udx(+)  order by x;

select * from foo where i = 101 or t = 'dŞükb' using index none  order by t;

drop class foo;
set names iso88591;
commit;
--+ holdcas off;

