Update deposit 
set amount = amount/10 + amount
where C_name in 
(select Customer.C_name as name_c from 
((select c_name from deposit where B_name in (select B_name from Branch where City ='Mumbai')) union 
(select c_name from borrow where B_name in (select B_name from Branch where City ='Mumbai')))an, 
customer where an.C_name = customer.C_name and Customer.city = 'Delhi');