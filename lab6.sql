/*create database if not exists lab1;*/

\c lab1;

create table if not exists customer(
	cus_id           numeric,
	cus_name         varchar(50)  not null,
	cus_street       varchar(50),
	cus_city         varchar(50),
	cus_state        varchar(2),
	cus_zip          numeric,
	item_id          numeric,
	item_purch_date  date,
	item_purch_time  time,
	primary key (cus_id, item_id, item_purch_date, item_purch_time)
);

select (cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip) from customer;
