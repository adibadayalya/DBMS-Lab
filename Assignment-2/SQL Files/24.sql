update deposit 
set amount = amount + 1000
where C_name = 'Steve' and 
B_name in (select * from (select B_name from deposit where C_name ='Clark' and amount > 1000)tn);
update deposit 
set amount = amount - 1000
where C_name = 'Clark' and amount > 1000 and
B_name in (select * from (select B_name from deposit where C_name ='Steve')tm);