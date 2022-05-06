create database lab4;
\c lab4




\i customer_table.sql
\i agent_table.sql

\! echo '\n'
select * from customer;
\! echo '\n'
select * from agent;

\! echo '\n4. List the agent IDs in the customer table along with the number of customers they serve'
select agent_id, count(cust_id) as serve
	from customer
	group by agent_id;

\! echo '\n5. List the agent IDs in the customer table along with the number of customers they serve,'
\! echo 'but only those that serve more than one customer'
select agent_id, count(cust_id) as serve
	from customer
	group by agent_id
	having count(cust_id) > 1;

\! echo '\n6. List the agent IDs in the customer table along with the number of customers they serve,'
\! echo 'but only those that serve a single customer'
select agent_id, count(cust_id) as serve
	from customer
	group by agent_id
	having count(cust_id) = 1;

\! echo '\n7. List the agent IDs in the customer table along with the number of customers they serve,'
\! echo 'but only those that serve less than five customers.'
\! echo 'Sort by agent id in descending order'
select agent_id, count(cust_id) as serve
	from customer
	group by agent_id
	having count(cust_id) = 1
	order by agent_id desc;




\! echo '\n\nNow working with the invoice table\n\n'
\i invoice_table.sql

\! echo '\n'
select * from invoice;

\! echo '\n8. Find the maximum price in the invoice table'
select max(price) as maxPrice
	from invoice;

\! echo '\n9. Find the minimum price in the invoice table'
select min(price) as minPrice
	from invoice;

\! echo '\n10. List the item_desc and price, where the price is less than the difference between the max and the min price'
select item_desc, price
	from invoice
	where price < (select max(price)-min(price) from invoice);

\! echo '\n11. List the item_desc and price, where the price is more than the average between the max and the min price'
select item_desc, price
	from invoice
	where price > (select max(price)-min(price)/2 from invoice);

\! echo '\n12. List the cust_id, item_desc, and price, for all customers except the one with id=12'
select cust_id, item_desc, price
	from invoice
	where cust_id != 12;

\! echo '\n13. List all purchases that have a higher price than the highest-priced purchase of customer 12'
select *
	from invoice
	where price > (select max(price) from invoice where cust_id=12);

\! echo '\n14. List cust_id, item_desc, max, diff. "max" refers to the max price; "diff" refers to the difference between the max price and the item price.'
select cust_id, item_desc, max(price), ((select max(price) from invoice) - price) as diff
	from invoice
	group by cust_id, item_desc, price;




\! echo '\n\nNow working with tables t1 and t2\n\n'
\i t1_table.sql
\i t2_table.sql

\! echo '\n'
select * from t1;
select * from t2;

\! echo '\n15a. List the union of t1 and t2, but only where the id is less than 5'
select *
	from (select * from t1 union select * from t2) as t
	where id < 5;

\! echo '\n15b. Again but with different syntax'
select *
	from t1
	where id < 5
union
select *
	from t2
	where num < 5;

\! echo '\n16. List the intersection of t1 and t2, but only where the id is less than 5'
select *
	from (
		select *
			from t1
		intersect
		select *
			from t2
	) as t
	where id < 5;
