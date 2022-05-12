create table if not exists t1
(
	id int,
	name varchar(10),
	
	primary key (id)
);

insert into t1 values
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');




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
