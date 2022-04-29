create table if not exists customer
(
	id int,
	name varchar(255) NOT NULL,
	
	agent_id int NOT NULL,
	
	primary key (customerid)
);

insert into customer values
	(1, 'George', 22),
	(2, 'Susan', 11),
	(3, 'Kelsey', 22),
	(5, 'Mike', 13),
	(7, 'Ellen', 38),
	(8, 'Tylor', 40);
