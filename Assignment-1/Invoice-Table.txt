create table invoice(
Inv_no varchar(3),
Mv_no int,
Cust_id varchar(3),
Issue_date DATE,
Return_date DATE
);
insert into invoice(Inv_no, Mv_no, Cust_id, Issue_date, Return_date)
values ('A1',2,'003',DATE_SUB(CAST(NOW() AS DATE), INTERVAL 20 DAY),DATE_SUB(CAST(NOW() AS DATE), INTERVAL 18 DAY));
insert into invoice(Inv_no, Mv_no, Cust_id, Issue_date, Return_date)
values ('B1',3,'002',DATE_SUB(CAST(NOW() AS DATE), INTERVAL 10 DAY),DATE_SUB(CAST(NOW() AS DATE), INTERVAL 5 DAY));
insert into invoice(Inv_no, Mv_no, Cust_id, Issue_date, Return_date)
values ('C1',1,'005',DATE_SUB(CAST(NOW() AS DATE), INTERVAL 1 DAY),CAST(NOW() AS DATE));
insert into invoice(Inv_no, Mv_no, Cust_id, Issue_date, Return_date)
values ('AA1',6,'001',DATE_SUB(CAST(NOW() AS DATE), INTERVAL 2 DAY),DATE_ADD(CAST(NOW() AS DATE), INTERVAL 2 DAY));
insert into invoice(Inv_no, Mv_no, Cust_id, Issue_date, Return_date)
values ('AD1',4,'003',DATE_SUB(CAST(NOW() AS DATE), INTERVAL 2 DAY),DATE_ADD(CAST(NOW() AS DATE), INTERVAL 1 DAY));
insert into invoice(Inv_no, Mv_no, Cust_id, Issue_date, Return_date)
values ('Z1D',5,'004',DATE_SUB(CAST(NOW() AS DATE), INTERVAL 20 DAY),CAST(NOW() AS DATE));
select * from invoice;