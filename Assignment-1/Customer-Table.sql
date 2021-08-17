create table cust(
cust_id varchar(3),
Lname varchar(15),
Fname varchar(15),
Area varchar(2),
Phone_number bigint
);
insert into cust (cust_id, Lname, Fname, Area, Phone_number)
values ('001','Doe','John','AB','12332145');
insert into cust (cust_id, Lname, Fname, Area, Phone_number)
values ('002','Parker','Peter','NY',13748713);
insert into cust (cust_id, Lname, Fname, Area, Phone_number)
values ('003','Wayne','Bruce','GM',98138713);
insert into cust (cust_id, Lname, Fname, Area, Phone_number)
values ('004','Gordon','Barbara','GM',58719023);
insert into cust (cust_id, Lname, Fname, Area, Phone_number)
values ('005','Holt','Raymond','NY',68623910);
insert into cust (cust_id, Lname, Fname, Area, Phone_number)
values ('006','Holmes','Sherlock','LN',56288971);
select * from cust;