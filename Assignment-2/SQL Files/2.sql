select Customer.C_name
from Deposit, Customer, Branch
where
	Deposit.C_name = Customer.C_name
	and Deposit.B_name = Branch.B_name
	and Customer.City = Branch.City
union
select Customer.C_name
from Borrow, Customer, Branch
where
	Borrow.C_name = Customer.C_name
	and Borrow.B_name = Branch.B_name
	and Customer.City = Branch.City;
