delete from borrow 
where loan_no in 
(
select * from(
select borrow.Loan_no from borrow, 
(select b_name from 
(select sum(amount)/count(amount) as average_loan, b_name from borrow group by b_name)tb
where average_loan < 3000) tbb
where borrow.B_name = tbb.B_name 
)tbbt
);