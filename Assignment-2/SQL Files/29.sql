delete from deposit 
where c_name in (
select * from (
select c_name from deposit where c_name in ('Steve','Peter') and 
(select city from customer where c_name ='Steve') = (select city from customer where c_name ='Peter')
)tb
);