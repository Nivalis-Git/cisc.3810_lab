drop table invoice;

create table invoice
(
	id int,
	cust_id int,
	item_desc varchar(255) not null,
	price real not null,
	
	primary key (id)
);

insert into invoice values
(1, 10, 'book', 20.34),
(2, 24, 'chair', 10.1),
(3, 12, 'magazine', 23),
(4, 15, 'laptop', 401.99),
(5, 10, 'headphone', 30),
(6, 10, 'CD', 13),
(7, 12, 'book', 22.5),
(8, 15, 'candle', 14.99);
