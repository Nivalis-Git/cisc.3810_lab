Create table vendor
(
	vcode int,
	vname varchar(35) not null,
	vstate char(2) not null,
	
	primary key (vcode)
);

insert into vendor values
(11,'All Carpet Center','NY'),
(12,'Liliha X-Ray Service','NJ'),
(15,'ISCH','PA'),
(16,'BOSCH','PA'),
(19,'David Logan','IL'),
(22,'Frank Warren MD Inc','IL'),
(23,'The Durham Print Shop','GA'),
(26,'Mary Case-Brown ','NJ'),
(35,'AT&T','NJ'),
(37,'R&R','OH');
