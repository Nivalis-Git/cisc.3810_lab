create database class_may12;


\c class_may12
\i vendor_table.sql
\i product_table.sql


select *
	from vendor;

select *
	from product;

\! echo '\n\n\n\n'




create table priceList as
	select
		pcode as prodcode,
		pdesc as proddesc,
		pprice as price
	from product;

select *
	from priceList;

\! echo '\n\n\n\n'




create index ts on product(pdesc);

explain(analyze, verbose) select *
	from product
	where pdesc='tshirt';

\d product

drop index ts;

\! echo '\n\n\n\n'




select *
	from priceList;

\d priceList

alter table priceList
	alter proddesc type char(40);

\d priceList

\! echo '\n\n\n\n'




alter table priceList add qty int;
select * from priceList;
update priceList set qty=1;
select * from priceList;
alter table priceList drop qty;
select * from priceList;

\! echo '\n\n\n\n'




alter table priceList add primary key (prodcode);

\! echo '\n\n\n\n'




select * from priceList;
update priceList set price=35 where prodcode=100;
select * from priceList;

update priceList set proddesc='graphic tshirt' where prodcode=100;
select * from priceList;

delete from priceList where prodcode=100;
select * from priceList;

\! echo '\n\n\n\n'




create view stats as select * from priceList where price<100;
select * from priceList where price<100;
select * from stats;

insert into stats values (100, 'book', 200);
select * from priceList;
select * from stats;

update stats set proddesc='comput' where prodcode=101;
select * from priceList;
select * from stats;

\! echo '\n\n\n\n'




drop table product cascade;
drop table vendor cascade;
drop table priceList cascade;
