update deposit
set amount = amount + 1000 
where act_no in (
select * from (
select deposit.act_no from deposit,
(select b_name,sum(amount)/count(amount) as average from deposit group by b_name)tb 
where tb.B_name = deposit.b_name and deposit.Amount >= tb.average
)tbb
);