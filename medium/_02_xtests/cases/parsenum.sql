autocommit off;
select 123 from class db_root;
select 12345678901234567890.0 from class db_root;
select -123 from class db_root;
select -1234567890123456780.0 from class db_root;
select 123 from class db_root;
select 12345678901234567890.0 from class db_root;
select -123 from class db_root;
select -1234567890123456780.0 from db_root;
select 123 from class db_root;
select 12345678901234567890.0 from class db_root;
select -123 from class db_root;
select -1234567890123456780.0 from class db_root;
select .123 from class db_root;
select .12345678901234567890 from class db_root;
select -.123 from class db_root;
select -.1234567890123456780 from class db_root;
select 123.45 from class db_root;
select 123.45678901234567890 from class db_root;
select -123.45 from class db_root;
select -123.45678901234567890 from class db_root;
rollback;
