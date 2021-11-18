select distinct Branch.City from Branch,Borrow
where Borrow.B_name = Branch.B_name and Borrow.C_name in ('PETER', 'STEVE')
union 
select distinct Branch.City from Branch,Deposit
where Deposit.B_name = Branch.B_name and Deposit.C_name in ('PETER', 'STEVE');

