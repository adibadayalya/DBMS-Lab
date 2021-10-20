select Customer.C_name
from Customer,(select Customer.C_name,Customer.City from Customer,Deposit,Borrow 
where Customer.C_name = Deposit.C_name and Deposit.C_name = Borrow.C_name) as CName where 
CName.City = (select city from customer where C_name ='Steve') and CName.C_name = customer.C_name;   