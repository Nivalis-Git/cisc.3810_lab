create table if not exists product(
	prod_id int primary key,
	prod_description varchar(20),
	prod_type varchar(20),
	prod_manufacturer varchar(20),
	prod_origin varchar(20),
	prod_quantity int
);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES (2430, 'Ogx Shampoo', 'Cleaning', 'Ogx Group', 'USA', 5);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES (2540, 'Nescafe Coffee Mach', 'Small Appliances', 'Nescafe Electronics', 'USA', 13);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES  (7764, 'Braun Mixer', 'Small Appliances', 'Braun', 'Germany', 23);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES   (2321, 'Ogx Conditioner', 'Cleaning', 'Ogx Group', 'USA', 65);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES   (12111, 'Emily Sofabed', 'Furniture', 'Zinus', 'China', 26);
 
INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES  (3330, 'Earrings', 'Accessories', 'Christian Dior', 'France', 32);
 
INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES   (1287, 'JBL Headphones', 'Electronics', 'JBL', 'USA', 2);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES  (2888, 'Laptop', 'Electronics', 'Lenovo', 'China', 21);

INSERT INTO
product (prod_id, prod_description, prod_type, prod_manufacturer, prod_origin, prod_quantity)
VALUES  (5666, 'Alarm', 'Electronics', 'Sony', 'Japan', 5);
