--test to_timestamp using numeric and other types as its operand 
select to_timestamp(66.78, date'1/1/2001') from db_root;
select to_timestamp(66.78, date'1/1/2001', 'char') from db_root;
select to_timestamp(66.78, date'1/1/2001', n'nchar') from db_root;
select to_timestamp(66.78, date'1/1/2001', date'1/1/2001') from db_root;
select to_timestamp(66.78, date'1/1/2001', time'1:1:1 am') from db_root;
select to_timestamp(66.78, date'1/1/2001', timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, date'1/1/2001', b'000101010') from db_root;
select to_timestamp(66.78, date'1/1/2001', 10) from db_root;
select to_timestamp(66.78, date'1/1/2001', 11.111) from db_root;
select to_timestamp(66.78, date'1/1/2001', {7,8}) from db_root;

select to_timestamp(66.78, time'1:1:1 am') from db_root;
select to_timestamp(66.78, time'1:1:1 am', 'char') from db_root;
select to_timestamp(66.78, time'1:1:1 am', n'nchar') from db_root;
select to_timestamp(66.78, time'1:1:1 am', date'1/1/2001') from db_root;
select to_timestamp(66.78, time'1:1:1 am', time'1:1:1 am') from db_root;
select to_timestamp(66.78, time'1:1:1 am', timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, time'1:1:1 am', b'000101010') from db_root;
select to_timestamp(66.78, time'1:1:1 am', 10) from db_root;
select to_timestamp(66.78, time'1:1:1 am', 11.111) from db_root;
select to_timestamp(66.78, time'1:1:1 am', {7,8}) from db_root;

select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', 'char') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', n'nchar') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', date'1/1/2001') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', time'1:1:1 am') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', b'000101010') from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', 10) from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', 11.111) from db_root;
select to_timestamp(66.78, timestamp'1/1/2001 1:1:1 am', {7,8}) from db_root;

select to_timestamp(66.78, bit'00010010') from db_root;
select to_timestamp(66.78, bit'00010010', 'char') from db_root;
select to_timestamp(66.78, bit'00010010', n'nchar') from db_root;
select to_timestamp(66.78, bit'00010010', date'1/1/2001') from db_root;
select to_timestamp(66.78, bit'00010010', time'1:1:1 am') from db_root;
select to_timestamp(66.78, bit'00010010', timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, bit'00010010', b'000101010') from db_root;
select to_timestamp(66.78, bit'00010010', 10) from db_root;
select to_timestamp(66.78, bit'00010010', 11.111) from db_root;
select to_timestamp(66.78, bit'00010010', {7,8}) from db_root;

select to_timestamp(66.78, 'char') from db_root;
select to_timestamp(66.78, 'char', 'char') from db_root;
select to_timestamp(66.78, 'char', n'nchar') from db_root;
select to_timestamp(66.78, 'char', date'1/1/2001') from db_root;
select to_timestamp(66.78, 'char', time'1:1:1 am') from db_root;
select to_timestamp(66.78, 'char', timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, 'char', b'000101010') from db_root;
select to_timestamp(66.78, 'char', 10) from db_root;
select to_timestamp(66.78, 'char', 11.111) from db_root;
select to_timestamp(66.78, 'char', {7,8}) from db_root;

select to_timestamp(66.78, n'nchar') from db_root;
select to_timestamp(66.78, n'nchar', 'char') from db_root;
select to_timestamp(66.78, n'nchar', n'nchar') from db_root;
select to_timestamp(66.78, n'nchar', date'1/1/2001') from db_root;
select to_timestamp(66.78, n'nchar', time'1:1:1 am') from db_root;
select to_timestamp(66.78, n'nchar', timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, n'nchar', b'000101010') from db_root;
select to_timestamp(66.78, n'nchar', 10) from db_root;
select to_timestamp(66.78, n'nchar', 11.111) from db_root;
select to_timestamp(66.78, n'nchar', {7,8}) from db_root;

select to_timestamp(66.78, 10) from db_root;
select to_timestamp(66.78, 10, 'char') from db_root;
select to_timestamp(66.78, 10, n'nchar') from db_root;
select to_timestamp(66.78, 10, date'1/1/2001') from db_root;
select to_timestamp(66.78, 10, time'1:1:1 am') from db_root;
select to_timestamp(66.78, 10, timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, 10, b'000101010') from db_root;
select to_timestamp(66.78, 10, 10) from db_root;
select to_timestamp(66.78, 10, 11.111) from db_root;
select to_timestamp(66.78, 10, {7,8}) from db_root;

select to_timestamp(66.78, 10.111) from db_root;
select to_timestamp(66.78, 10.111, 'char') from db_root;
select to_timestamp(66.78, 10.111, n'nchar') from db_root;
select to_timestamp(66.78, 10.111, date'1/1/2001') from db_root;
select to_timestamp(66.78, 10.111, time'1:1:1 am') from db_root;
select to_timestamp(66.78, 10.111, timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, 10.111, b'000101010') from db_root;
select to_timestamp(66.78, 10.111, 10) from db_root;
select to_timestamp(66.78, 10.111, 11.111) from db_root;
select to_timestamp(66.78, 10.111, {7,8}) from db_root;

select to_timestamp(66.78, {5,6}) from db_root;
select to_timestamp(66.78, {5,6}, 'char') from db_root;
select to_timestamp(66.78, {5,6}, n'nchar') from db_root;
select to_timestamp(66.78, {5,6}, date'1/1/2001') from db_root;
select to_timestamp(66.78, {5,6}, time'1:1:1 am') from db_root;
select to_timestamp(66.78, {5,6}, timestamp'1/1/2001 1:1:1 am') from db_root;
select to_timestamp(66.78, {5,6}, b'000101010') from db_root;
select to_timestamp(66.78, {5,6}, 10) from db_root;
select to_timestamp(66.78, {5,6}, 11.111) from db_root;
select to_timestamp(66.78, {5,6}, {7,8}) from db_root;


