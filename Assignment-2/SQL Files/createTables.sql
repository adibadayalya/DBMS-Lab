-- create branch table 
create table Branch(
B_name varchar(10) primary key,
City varchar(10),
check (City in ('Kolkata','Delhi','Mumbai'))
);
-- create customer table 
create table Customer (
C_name varchar(10) primary key,
City varchar(10) not null,
check(C_name = upper(C_name))
);

-- create Deposit table

create table Deposit (
Act_no varchar (10) primary key,
C_name varchar(10),
B_name varchar(10),
Amount bigint not null,
foreign key(C_name) references Customer(C_name),
foreign key(B_name) references Branch(B_name)
);

-- Create Borrow Table 

create table Borrow(
Loan_no varchar(10) primary key,
C_name varchar(10),
B_name varchar(10),
Amount bigint,
foreign key (C_name) references Customer(C_name),
foreign key (B_name) references Branch(B_name),
check (Amount >1000),
check (Loan_no = upper(Loan_no))
);

