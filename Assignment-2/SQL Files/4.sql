select Act_no,'NULL' as Loan_No,Deposit.C_name,Deposit.B_name,Amount as Deposit_Amt,'NULL' as Loan_Amt 
from Deposit,Branch,Customer
where Deposit.B_name = Branch.B_name and Deposit.C_name = Customer.C_name and Customer.City = (
select city from customer where C_name = 'CLARK')
union
select 'NULL' as col1,Loan_no,Borrow.C_name,Borrow.B_name,'NULL' as Deposit_Amt,Amount as Loan_Amt 
from Borrow,Branch,Customer where 
Borrow.B_name = Branch.B_name and Borrow.C_name = Customer.C_name and Customer.city = (
select city from customer where C_name = 'CLARK');