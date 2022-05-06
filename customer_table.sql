create table if not exists customer
(
	cust_id int,
	cust_name varchar(255) not null,
	agent_id int not null,
	
	primary key (cust_id)
);

insert into customer values
(1, 'George', 22),
(2, 'Susan', 11),
(3, 'Kelsey', 22),
(5, 'Mike', 13),
(7, 'Ellen', 38),
(8, 'Tylor', 40);
