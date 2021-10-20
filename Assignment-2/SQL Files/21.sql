select C_name from 
(select C_name as max_borrower from (
select max(total_borrow) as max_borrow from (
select C_name,sum(amount) as total_borrow from borrow group by C_name
)temp)Cm, (select C_name, sum(amount) as total_borrow from borrow group by C_name) Dm
where Cm.max_borrow = Dm.total_borrow)br, deposit where B_name in 
((select B_name from deposit where C_name = br.max_borrower)union(select B_name from borrow where C_name = br.max_borrower)) and C_name <> br.max_borrower
union 
select C_name from 
(select C_name as max_borrower from (
select max(total_borrow) as max_borrow from (
select C_name,sum(amount) as total_borrow from borrow group by C_name
)temp)Cm, (select C_name, sum(amount) as total_borrow from borrow group by C_name) Dm
where Cm.max_borrow = Dm.total_borrow)br, borrow where B_name in 
((select B_name from deposit where C_name = br.max_borrower)union(select B_name from borrow where C_name = br.max_borrower)) and C_name <> br.max_borrower;