create database lab4;
\c lab4




\i customer_table.sql
\i agent_table.sql

\! echo '\n'
select *
	from customer;
\! echo '\n'
select *
	from agent;

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
select *
	from invoice;

\! echo '\n8. Find the maximum price in the invoice table'
select max(price) as maxPrice
	from invoice;

\! echo '\n9. Find the minimum price in the invoice table'
select min(price) as minPrice
	from invoice;

\! echo '\n10. List the item_desc and price, where the price is less than the difference between the max and the min price'
select item_desc, price
	from invoice
	group by 
	having price < max(price)-min(price);
