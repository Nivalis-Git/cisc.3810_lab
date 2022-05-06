create table if not exists invoice
(
	id int,
	cust_id int not null,
	item_desc varchar(30) not null,
	price real not null,
	
	primary key (id)
);

insert into invoice values
(1, 10, 'book', 20.34),
(2, 24, 'chair', 10.10),
(3, 12, 'magazine', 23),
(4, 15, 'laptop', 401.99),
(5, 10, 'headphones', 30),
(6, 10, 'CD', 13.10),
(7, 12, 'book', 22.5),
(8, 15, 'candle', 14.99);
