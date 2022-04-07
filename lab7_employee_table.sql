create table if not exists employee(
	id             int,
	
	firstname      varchar(30),
	lastname       varchar(30),
	title          varchar(30),
	
	primary key (id)
);

insert into employee values
	(19, 'Sam', 'Johnson', 'Secretary'),
	(30, 'Mary', 'Johnson', 'Lecturer'),
	(31, 'Xiuyan', 'Li', 'Professor'),
	(40, 'Erica', 'Davis', 'IT Manager');
