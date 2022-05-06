create table if not exists t2
(
	num int,
	letter varchar(10),
	
	primary key (num)
);

insert into t2 values
(3, 'B'),
(4, 'D'),
(5, 'E'),
(6, 'E');
