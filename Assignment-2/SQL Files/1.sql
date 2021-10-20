select Customer.C_name
from Deposit,Customer,Branch
where Deposit.C_name = Customer.C_name
	and Branch.B_name = Deposit.B_name
    and Customer.City = 'Mumbai'
    and Branch.City = 'Kolkata'
union
select Customer.C_name
from Borrow, Customer, Branch
where
	Borrow.C_name = Customer.C_name
	and Customer.City = 'Mumbai'
	and Branch.B_name = Borrow.B_name
	and Branch.City = 'Kolkata';