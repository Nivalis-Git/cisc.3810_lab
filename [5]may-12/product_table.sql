Create table product
(
	pcode int,
	pdesc varchar(35) not null,
	pprice float not null,
	discount float not null CHECK(discount>=0 and discount<=100),
	vcode int,
	
	primary key (pcode),
	foreign key (vcode) REFERENCES vendor ON UPDATE CASCADE
);

Insert into product values(100,'tshirt',32,100);
Insert into product values(101,'tshirt',28, 10, 12 );
Insert into product values(105,'mug',25,10,19 );
Insert into product values(106,'coffee machine',153,15,16 );
Insert into product values(120,'electronic',850,25,35 );
Insert into product values(112,'printer',200,10.5,22 );
Insert into product values(108,'fax machine',299,12.5,22 );
