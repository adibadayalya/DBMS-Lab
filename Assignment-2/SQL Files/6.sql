select C_name from Borrow 
where Amount > greatest((select amount from borrow where C_name ='PETER'),0); 