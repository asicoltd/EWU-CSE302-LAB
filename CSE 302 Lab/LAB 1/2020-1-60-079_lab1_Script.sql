---Lab Task # 01 (Creating a table):
---1.(a)table ‘instructor_your_student_id’ which has 4 attributes >> id (number), name (text), dept_name (text), salary(number)
create table instructor_2020160079(
	id number,
	name varchar2(20),
	dept_name varchar2(10),
	salary number
);
	
---1.(b)table ‘course_your_student_id’ which has 4 attributes >> course_id (text), title (text), dept_name (text),credits (number)
create table course_2020160079 (
	course_id varchar2(10),
	title varchar(30),
	dept_name varchar(10),
	credits number
);
---Lab Task # 02 (Inserting data into a table):
---2.(a).inserting records into ‘instructor_your_student_id’ table:
insert into instructor_2020160079 values(10101,'Srinivasan','Comp Sci.',65000);
insert into instructor_2020160079 values(12121,'Wu','Finance',90000);
insert into instructor_2020160079 values(15151,'Mozart','Music',40000);
insert into instructor_2020160079 values(22222,'Einstein','Physics',95000);
insert into instructor_2020160079 values(32343,'El Said','History',60000);
insert into instructor_2020160079 values(33456,'Gold','Physics',87000);
insert into instructor_2020160079 values(45565,'Katz','Comp. Sci.',75000);
insert into instructor_2020160079 values(58583,'Califieri','History',62000);
insert into instructor_2020160079 values(76543,'Singh','Finance',80000);
insert into instructor_2020160079 values(76766,'Crick','Biology',72000);
insert into instructor_2020160079 values(83821,'Brandt','Comp. Sci.',92000);
insert into instructor_2020160079 values(98345,'Kim','Elec. Eng.',80000);
---2.(b). inserting records into ‘course_your_student_id’ table:
insert into course_2020160079 values('BIO-101','Intro. to Biology','Biology',4);
insert into course_2020160079 values('BIO-301','Genetics','Biology',4);
insert into course_2020160079 values('BIO-399','Computational Biology','Biology',3);
insert into course_2020160079 values('CS-101','Intro. to Computer Science', 'Comp. Sci',4);
insert into course_2020160079 values('CS-190','Game Design', 'Comp. Sci',4);
insert into course_2020160079 values('CS-315','Robotics', 'Comp. Sci',3);
insert into course_2020160079 values('CS-319','Image Processing', 'Comp. Sci',3);
insert into course_2020160079 values('CS-347','Database System Concepts', 'Comp. Sci',3);
insert into course_2020160079 values('EE-181','Intro. to Digital Systems','Elec. Eng.',3);
insert into course_2020160079 values('FIN-201','Investment Banking','Finance',3);
insert into course_2020160079 values('HIS-351','World History','History',3);
insert into course_2020160079 values('MU-199','Music Video Production','Music',3);
insert into course_2020160079 values('PHY-101','Physical Principles','Physics',4);
---Lab Task # 03 (Writing Queries):
---i. Show instructor name only.
select name
from instructor_2020160079;
---ii. Show course id and title only.
select course_id, title
from course_2020160079;
---iii. Find instructor name and department of the instructor with id = 22222.
select name, dept_name 
from instructor_2020160079
where id = 22222;
---iv. Find course title and credits of the courses offered by ‘Comp. Sci.’ department.
select title, credits
from course_2020160079
where dept_name = 'Comp. Sci';
---v. Find name and department of instructors who have a salary more than 70000.
select name, dept_name
from instructor_2020160079
where salary > 70000;
---vi. Find course title of the courses which are not less than 4 credits.
select title
from course_2020160079
where credits >= 4;
---vii. Find name and department of instructors who have a salary in between 80000 and 100000 (bounds are inclusive).
select name, dept_name
from instructor_2020160079
where salary >= 80000 and salary <= 100000;
---viii. Find course titles and credits of the courses not offered by ‘Comp. Sci.’ department.
select title, credits
from course_2020160079
where dept_name != 'Comp. Sci';
---ix. Display all records of instructor table.
select *
from instructor_2020160079;
---x. Find all courses (display all columns) which are offered by ‘Biology’ department and credits is not 4.
select *
from course_2020160079
where dept_name = 'Biology' and credits != 4;