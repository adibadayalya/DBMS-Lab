select distinct Deposit.C_name, Deposit.Act_no
from Deposit, Branch,Customer, 
		(select distinct Branch.City from Branch, Deposit, Borrow where
		(Deposit.C_name = 'PETER'
		and Deposit.B_name = Branch.B_name)
		or
		(Borrow.C_name = 'PETER'
		and Borrow.B_name = Branch.B_name)) as	Scity
where Deposit.B_name = Branch.B_name
and Branch.City = Scity.City
and Deposit.C_name = Customer.C_name
and Customer.City = (
	select City
	from Customer
	where C_name = 'BRUCE');