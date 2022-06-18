---Lab Task # 01 (Schema Definition):
---account table---
create table account (
	account_no char(5),
	balance number not null,
	check( balance >= 0),
	primary key (account_no)
);
---customer table---
create table customer(
	customer_no char(5),
	customer_name varchar2(20) not null,
	customer_city varchar(10),
	primary key (customer_no)
);
---depositor table---
create table depositor(
	account_no char(5),
	customer_no char(5),
	primary key (account_no,customer_no)
);
---Lab Task # 02 (Schema Modification):
---i.add a new attribute ‘date_of_birth’ (date type) in customer table.
alter table customer 
add date_of_birth date;
desc customer;
---ii.drop the attribute ‘date_of_birth’ from customer table.
alter table customer 
drop column date_of_birth;
desc customer;
---rename the attribute account_no, customer_no from depositor table to a_no and c_no, respectively.
alter table depositor 
rename column account_no to a_no;
alter table depositor 
rename column customer_no to c_no;
desc depositor;
---add two foreign key constraints ‘depositor_fk1’ and ‘depositor_fk2’ which identifies a_no and c_no as a foreign key.
alter table depositor 
add constraint depositor_fk1 
foreign key (a_no) references account;
alter table depositor 
add constraint depositor_fk2 
foreign key (c_no) references customer;
desc depositor;

---Lab Task # 03 (Inserting Records into Tables):
---insert the records as shows in the table---
insert into Account values('A-101',12000);
insert into Account values('A-102',6000);
insert into Account values('A-103',2500);
insert into Customer values('C-101','Alice','Dhaka');
insert into Customer values('C-102','Annie','Dhaka');
insert into Customer values('C-103','Bob','Chittagong');
insert into Customer values('C-104','Charlie','Khulna');
insert into Depositor values('A-101','C-101');
insert into Depositor values('A-103','C-102');
insert into Depositor values('A-103','C-104');
insert into Depositor values('A-102','C-103');

---Lab Task # 04 (Queries):
---Display customer name and customer city only.
select customer_name, customer_city 
from customer;
---Display the unique customer city. No repetitions are allowed.
select unique customer_city 
from customer;
---Find account numbers with balance more than 7000.
select account_no 
from account 
where balance > 7000;
---Find customer number and customer name who live in Khulna.
select customer_no, customer_name 
from customer 
where customer_city = 'Khulna';
---Find customer number and customer name who do not live in Dhaka.
select customer_no, customer_name 
from customer 
where customer_city != 'Dhaka';
---Find customer name and customer city who have accounts with balance more than 7000.
select customer_no, customer_name 
from customer 
where customer_city != 'Dhaka';
---Find customer name and customer city who have accounts with balance more than 7000 and do not live in Khulna.
select customer_name, customer_city 
from customer c, account a, depositor d 
where c.customer_no = d.c_no 
and a.account_no = d.a_no 
and balance > 7000 
and customer_city != 'Khulna';
---Find account number and balance for those accounts which belong to a customer with id ‘C-102’.
select account_no, balance 
from account a, customer c, depositor d 
where a.account_no = d.a_no 
and c.customer_no = d.c_no 
and customer_no ='C-102';
---Find all account number and balance for those accounts which belong to customers of Dhaka and Khulna city.
select account_no, balance 
from account a, customer c, depositor d 
where a.account_no = d.a_no 
and d.c_no = c.customer_no 
and (c.customer_city = 'Dhaka' 
	or c.customer_city = 'Khulna');
---Find the customer who have no accounts
select * 
from customer 
where customer_no = null;
