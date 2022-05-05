create database class;


\c class
\i invoice_table.sql


select *
	from invoice;

select cust_id, avg(price)
	from invoice
	group by cust_id
	having avg(price) > (select avg(price) from invoice where item_desc='book');

select *
	from invoice
	where price > (select max(price) from invoice where cust_id=10);

select cust_id, item_desc, price,
	(select min(price) from invoice) as min,
	price-(select min(price) from invoice) as diff
	
	from invoice;
