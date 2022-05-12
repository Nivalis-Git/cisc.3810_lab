create table if not exists agent
(
	agent_id int,
	agent_name varchar(255) not null,
	cust_id int not null,
	
	primary key (agent_id)
);

insert into agent values
(11, 'Bob', 1111),
(13, 'Carol', 1313),
(22, 'Jane', 2222),
(38, 'Bob', 3838),
(17, 'Rachel', 1717),
(20, 'Mike');
