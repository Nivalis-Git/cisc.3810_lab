create table if not exists student(
	id             int,
	
	firstname      varchar(30),
	lastname       varchar(30),
	
	attendance     real,
	midterm        real,
	final          real,
	
	class_id       int,
	employee_id    int,
	
	primary key (id, class_id)
);

insert into student values
	(1, 'Susan', 'Mayor', 10, 66, 90, 101, 30),
	(2, 'Alex', 'Brown', 100, 96, 90, 101, 30),
	(3, 'John', 'Snow', 100, 98.8, 95.5, 101, 30),
	(4, 'Alex', 'Khan', 90, 90, 95.5, 102, 31);
