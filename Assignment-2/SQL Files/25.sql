update deposit 
set amount = amount + 1000
where Act_no in (select * from (select act_no from deposit, 
(select max(amount) as mx_amount from deposit group by b_name)tb 
where amount = tb.mx_amount)ttb);