select B_name,no_of_customer as 'Number of Depositors' from (
select max(no_of_customer) as C_max from (
select B_name, count(B_name) as no_of_customer from Deposit group by B_name
) Branch_count) Cm, (
select B_name , count(B_name) as no_of_customer from deposit group by B_name
) Bc where Cm.C_max = Bc.no_of_customer ;