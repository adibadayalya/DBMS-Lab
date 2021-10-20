select rr.C_name,total_deposit from(
select max(total_deposit) as max_deposit,C_name from (
select sum(amount) as total_deposit,C_name from deposit where C_name in 
(select C_name from customer where city ='Delhi') and B_name ='ANDHERI' group by C_name
)ss)sss, 
(select sum(amount) as total_deposit,C_name from deposit where C_name in
(select C_name from customer where city ='Delhi') and B_name ='ANDHERI' group by C_name
)rr where rr.total_deposit=sss.max_deposit;