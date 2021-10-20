select C_name from (
select max(total_deposit) as max_deposit from (
select C_name,sum(amount) as total_deposit from deposit group by C_name
)temp)Cm, (select C_name, sum(amount) as total_deposit from deposit group by C_name) Dm
where Cm.max_deposit = Dm.total_deposit;