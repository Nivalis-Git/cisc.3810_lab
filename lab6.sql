\c lab1;

/*
	Manipulating the customer relation
*/

/* \i lab6_customer_create.sql */

/* Display customer information for NY state residents */
select cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer
	where cus_state = 'NY';

/* Display customer information for NYC city residents */
select cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer
	where cus_city = 'NYC';

/* Display customer information for those with an ID numbered less than 150 */
select cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer
	where cus_id < 150;

/* Display customer information for those with an ID numbered greater than or equal to 150 */
select cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer
	where cus_id >= 150;

/* Display all customer information */
select cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer;

/* Display customer name and address for those who's name alphabetically proceeds 'K' */
select cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer
	where left(cus_name, 1) between 'L' and 'Z';

/* Display customer name and ID for those who's name alphabetically preceeds 'Kate' */
select cus_name, cus_id
	from customer
	where cus_name < 'Kate';

/* Display all unique customer names */
select distinct cus_name
	from customer;

/* Display customer information for those with an ID numbered between 120 and 151 */
select cus_id, cus_name, cus_street, cus_city, cus_state, cus_zip
	from customer
	where cus_id between 120 and 151;




/*
	Manipulating the product relation
*/

\i lab6_product_create.sql

\dt

/* Display all product information */
select *
	from product;

/* Display all Ogx Group products with their id, description and quantities */
select prod_id, prod_description, prod_quantity
	from product
	where prod_manufacturer = 'Ogx Group';

/* Display all products with their description and quantity*/
select prod_description, prod_quantity
	from product;

/* Display all cleaning products with their id and description */
select prod_id, prod_description
	from product
	where prod_type = 'Cleaning';

/* Display all manufacturers located in China */
select prod_manufacturer
	from product
	where prod_origin = 'China';

/* Display all products that have a quantity of less than 10 with their id and manufacturer */
select prod_id, prod_manufacturer
	from product
	where prod_quantity < 10;

/* Display all manufacturers of furniture and of electronics */
select prod_manufacturer
	from product
	where prod_type = 'Furniture' or prod_type = 'Electronics';

/* Display all customers with their name and ID, and list all the IDs of items they purchased alongside their description */
select customer.cus_name, customer.cus_id, product.prod_id, product.prod_description
	from customer
	inner join product on customer.item_id = product.prod_id;

/* Display all the customer names of those who bought electronics */
select customer.cus_name
	from customer
	inner join product on customer.item_id = product.prod_id
	where product.prod_type = 'Electronics';
