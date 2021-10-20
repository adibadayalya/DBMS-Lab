select customer.c_name from customer, 
(select Deposit.C_name, Branch.City from Deposit,Branch where Deposit.B_name = Branch.B_name 
union 
select Borrow.C_name, Branch.City from Borrow,Branch where Borrow.B_name = Branch.B_name) as TTable
where TTable.C_name = customer.c_name and TTable.City in (
select Branch.City from Deposit,Branch where Deposit.B_name = Branch.B_name and Deposit.C_name = 'STEVE'
union 
select Branch.City from Borrow,Branch where Borrow.B_name = Branch.B_name and Borrow.C_name ='STEVE'
) and Customer.City='Kolkata';