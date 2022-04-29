create database lab3;


\c lab3
\i lab8_customer_table.sql
\i lab8_agent_table.sql


/* Display customer table */
select *
	from customer;

/* Display agent table */
select *
	from agent;

/* 4. Display all customer records where the name starts with "S" */
select *
	from customer
	where cus_name like 'S%';

/* 5. Display all customer records where the name contains 5 characters 
			and the second character is "l" */
select *
	from customer
	where cus_name like '_l___';

/* 6. Display all customer names that start with "T" and end with "r" */
select *
	from customer
	where cus_name like 'T%r';

/* 7. Display all customer names in uppercase */
select upper(cus_name) as cus_name
	from customer;

/* 8. Display all customer names in lowercase and also sorted in decreasing order  */
select lower(cus_name) as cus_name
	from customer
	order by cus_name desc;

/* 9. Display all customer records where the name does not contain 5 characters 
			and the second character is not "l" */
select *
	from customer
	where cus_name like '_l___';
