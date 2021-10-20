select deposit_branch as 'Branch', deposit_count, borrow_count from 
(
select B_name as deposit_branch,count(distinct(C_name)) as deposit_count
from deposit group by B_name
)a, (
select B_name as borrow_branch, count(distinct(C_name)) as borrow_count 
from borrow group by b_name
)b where deposit_branch = borrow_branch and deposit_count >  borrow_count;