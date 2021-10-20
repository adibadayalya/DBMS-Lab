select C_name,total_deposit from (
select max(total_deposit) as max_deposit from  (
select deposit.C_name,Customer.City,sum(amount) as total_deposit from deposit,Customer 
where Customer.City in (
select City from branch where B_name in (
select distinct B_name 
from deposit where C_name = 'STEVE' 
union 
select distinct
B_name from borrow where C_name='STEVE')
) group by deposit.C_name
)temp)Cm, 
(select Deposit.C_name,Customer.City, sum(amount) as total_deposit from deposit,Customer 
where Customer.City in(
select City from branch where B_name in(
select distinct B_name from deposit where Deposit.C_name = 'STEVE' 
union 
select distinct B_name from borrow where C_name='STEVE')) group by deposit.C_name) Dm
where Cm.max_deposit = Dm.total_deposit;