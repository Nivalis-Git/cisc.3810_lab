create database lab3;


\c lab3
\i lab8_customer_table.sql
\i lab8_agent_table.sql


\! echo '\n2. Display customer table'
select *
	from customer;

\! echo '\n3. Display agent table'
select *
	from agent;

\! echo '\n4. Display all customer records where the name starts with "S"'
select *
	from customer
	where cus_name like 'S%';

\! echo '\n5. Display all customer records where the name contains 5 characters'
\! echo 'and the second character is "l"'
select *
	from customer
	where cus_name like '_l___';

\! echo '\n6. Display all customer names that start with "T" and end with "r"'
select *
	from customer
	where cus_name like 'T%r';

\! echo '\n7. Display all customer names in uppercase'
select upper(cus_name) as cus_name
	from customer;

\! echo '\n8. Display all customer names in lowercase and also sorted in decreasing order'
select lower(cus_name) as cus_name
	from customer
	order by cus_name desc;

\! echo '\n9. Display all customer records where the name does not contain 5 characters'
\! echo 'and the second character is not "l"'
select *
	from customer
	where cus_name not like concat('_', '_', '_', '_', '_')
		and cus_name not like '_l%';

\! echo '\n10. Count how many records exist in the customer table where the id is not null'
select count(*)
	from customer
	where cus_id is not null;

\! echo '\n11. Count how many unique agent IDs exist in the customer table'
select count(distinct agent_id)
	from customer;

\! echo '\n12. Find the highest-numbered agent_id in the customer table'
select max(distinct agent_id)
	from customer;

\! echo '\n13. Find the highest-numbered agent_id in the customer table'
select min(distinct agent_id)
	from customer;

\! echo '\n14a. Sum the agent IDs in the customer table'
select sum(agent_id)
	from customer;

\! echo '14b. Sum the agent IDs in the customer table (using only unique IDs)'
select sum(distinct agent_id)
	from customer;

\! echo '\n15. Find the integer value of the average of the agent ID numbers'
select floor(avg(distinct agent_id))
	from customer;
