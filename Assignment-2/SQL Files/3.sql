select distinct C_name
from Deposit, Branch
where
	Deposit.B_name = Branch.B_name
	and Branch.City = (
		select City
		from Deposit, Branch
		where
			C_name = 'PETER'
			and Deposit.B_name = Branch.B_name)
	and not C_name = 'PETER';