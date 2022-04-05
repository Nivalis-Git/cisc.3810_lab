create table customer(
	cus_id           numeric,
	cus_name         varchar(50)  not null,
	cus_street       varchar(50),
	cus_city         varchar(50),
	cus_state        varchar(2),
	cus_zip          varchar(11),
	item_id          numeric,
	item_purch_date  date not null,
	item_purch_time  time not null
);
