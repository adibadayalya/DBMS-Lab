select deposit.Act_no, 'N/A' as Loan_Number, Deposit.C_name, Deposit.b_name as'Branch',sum(Deposit.Amount) as 'Deposit Amount', 'N/A' as Loan_Amount
from Deposit,Customer where customer.c_name = Deposit.C_name and customer.city = 'Delhi' group by Act_no
union
select 'N/A' as col1,Loan_no, Borrow.C_name,Borrow.b_name as'Branch','N/A' as col2, sum(Borrow.Amount) as Loan_Amount 
from Borrow,Customer where customer.c_name = Borrow.C_name and customer.city = 'Delhi' group by Loan_no;
