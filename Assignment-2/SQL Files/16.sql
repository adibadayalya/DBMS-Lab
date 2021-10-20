select sum(amount)as 'Total Deposit',Customer.City from Customer, 
(select city from customer where c_name = 'TONY') cm,Deposit 
where customer.City = cm.city and Deposit.C_name = Customer.C_name;