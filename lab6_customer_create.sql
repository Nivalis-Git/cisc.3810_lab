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

Insert into
customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (143,'Louis Hamptons','77 East Pkw','Picataway','NJ',64334,7764,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (111,'Henry Polsberg','232 Leichester Rd','Brooklyn','NY',12566,2321,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (125,'Susan Mayer','222 West 45th St','NYC','NY',10036,12111,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (123,'Alfred Futterkiste','123 Ocean St','Edison','NJ',63343,3330,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (123,'Alfred Futterkiste','123 Ocean St','Edison','NJ',63343,2430,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (176,'Hanna Tailor','3 West 4th ST','NYC','NY',10001,1287,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (134,'Ana Trujillo','45 West 14th St', 'NYC','NY',10012,7764,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (134,'Ana Trujillo','45 West 14th St', 'NYC','NY',10012,2540,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (126,'Adam Broody','234 East 3rd ST','NYC','NY',10022,4533,CURRENT_DATE,CURRENT_TIME);

Insert into customer(cus_id,cus_name,cus_street,cus_city,cus_state,cus_zip,item_id,item_purch_date,item_purch_time) VALUES (155,'Markus Mark','10 8th Ave', 'Brooklyn', 'NY',11220,3233, CURRENT_DATE,CURRENT_TIME);
