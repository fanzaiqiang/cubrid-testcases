create table tb (a int primary key, b int);create index i_tb_all on tb(a,b) where b is not null;create index i_tb_b on tb(b) where b is null;insert into tb values (1,1);insert into tb values (2,2);insert into tb values (3,3);insert into tb values (4,null);SET OPTIMIZATION LEVEL 513;select /*+ recompile */ * from tb where  b is not null using index i_tb_all(+);select /*+ recompile */ b from tb where b is null using index i_tb_b(+);select /*+ recompile */ b from tb where b >0 using index i_tb_b(+);drop table tb;