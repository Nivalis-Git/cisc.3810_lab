\l
\c lab2
\i lab7_student_table.sql
\i lab7_employee_table.sql


/* Join the student and employee relations */
select
	student.id, student.firstname, student.lastname,
	student.attendance, student.midterm, student.final, student.class_id,
	
	student.employee_id,
	employee.firstname as employee_firstname,
	employee.lastname as employee_lastname,
	employee.title as employee_title
	
	from student inner join employee on (student.employee_id = employee.id);


/* List all distinct names of employees who taught */
select distinct employee.firstname
	from employee inner join student on (student.employee_id = employee.id);


/* Insert a student */
insert into student values (5, 'Sarah', 'Shah', 80, 90, 85.5, 103, 35);


/* List all student records */
select *
	from student;


/* List all employee records */
select *
	from employee;


/* Join both tables and include all student records */
select
	student.id, student.firstname, student.lastname,
	student.attendance, student.midterm, student.final, student.class_id,
	
	student.employee_id,
	employee.firstname as employee_firstname,
	employee.lastname as employee_lastname,
	employee.title as employee_title
	
	from student left join employee on (student.employee_id = employee.id);


/* Join both tables and include all employee records */
select
	student.id, student.firstname, student.lastname,
	student.attendance, student.midterm, student.final, student.class_id,
	
	student.employee_id,
	employee.firstname as employee_firstname,
	employee.lastname as employee_lastname,
	employee.title as employee_title
	
	from student right join employee on (student.employee_id = employee.id);


/* Join both tables and include all student and employee records */
select
	student.id, student.firstname, student.lastname,
	student.attendance, student.midterm, student.final, student.class_id,
	
	student.employee_id,
	employee.firstname as employee_firstname,
	employee.lastname as employee_lastname,
	employee.title as employee_title
	
	from student full join employee on (student.employee_id = employee.id);


/* Calculate overall grade for each student and list alongside their full name */
select
	firstname,
	lastname,
	round(
		cast( (10/100.0 * attendance) + (40/100.0 * midterm) + (50/100.0 * final) as numeric)
		,2) 
		as grade
	
	from student;


/* Display the product of the two tables */
select *
	from student cross join employee;


/* Determine the number of records in the student table */
select count(*) as "Number of student records"
	from student;


/* Determine the number of students who took a class taught by Mary Johnson */
select count(*) as "Number of students taught by Mary Johnson"
	from student inner join employee on (student.employee_id = employee.id)
	where employee.firstname = 'Mary' and employee.lastname = 'Johnson';


/*  */
select count(*) as "Number of students taught by employees with ID 30 or 31"
	from student inner join employee on (student.employee_id = employee.id)
	where employee.id = 30 or employee.id = 31;


/*  */
select student.firstname, student.lastname
	from student inner join employee on (student.employee_id = employee.id)
	where employee.id = 30 or employee.id = 31;


/*  */
select *
	from student
	order by id desc;


/*  */
select *
	from student
	order by firstname desc, id asc;


/*  */
select *
	from student
	where final != 90
	order by firstname desc, id asc;


/*  */
select *
	from student
	where final != 90 and midterm != 90
	order by firstname desc, id asc;
