select Fname, Lname, Phone_number from cust where cust_id in (select cust_id from invoice where Issue_date < "2021-08-01");