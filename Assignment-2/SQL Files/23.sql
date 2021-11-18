update deposit 
set amount = (select max(total_deposit) as max_deposit_in_Andheri from 
 (select sum(amount) as total_deposit from deposit where B_name='Andheri'  group by C_name)tb)
where C_name ='Clark';