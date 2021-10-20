select C_name,B_name from deposit where 
B_name in (select B_name from Deposit where C_name ='TONY' 
union select B_name from Borrow where C_name='TONY');