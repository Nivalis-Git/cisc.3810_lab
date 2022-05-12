create table if not exists customer
(
	cust_id int,
	cust_name varchar(255) not null,
	agent_id int,
	
	primary key (cust_id)
);

insert into customer values
(11, 'Bob', 1111),
(13, 'Carol', 1313),
(22, 'Jane', 2222),
(38, 'Bob', 3838),
(17, 'Rachel', 1717),
(20, 'Mike');
