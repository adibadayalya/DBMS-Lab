select Customer.C_name from Customer,Deposit,(select deposit.C_name from Deposit,Branch where 
Deposit.B_name = Branch.B_name and Branch.city ='Kolkata'
union 
select Borrow.C_name from Borrow,Branch where 
Borrow.B_name = Branch.B_name and Branch.city ='Kolkata'
) as BName where 
Deposit.C_name = Customer.C_name and Customer.City='Mumbai' and Customer.C_name = BName.C_name;