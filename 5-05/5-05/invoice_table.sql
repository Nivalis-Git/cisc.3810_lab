drop table invoice;

create table invoice
(
	id serial,
	cust_id int,
	item_desc varchar(255) not null,
	price real not null,
	
	primary key (id)
);

insert into invoice(cust_id, item_desc, price) values
(10, 'book', 20.34),
(24, 'chair', 10.1),
(12, 'magazine', 23),
(15, 'laptop', 401.99),
(10, 'headphone', 30),
(10, 'CD', 13),
(12, 'book', 22.5),
(15, 'candle', 14.99);
