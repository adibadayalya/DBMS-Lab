delete from borrow 
where b_name in 
(
select b_name from (select b_name,min(b_count) as min_c_count from (select b_name,count(C_name) as b_count from borrow group by b_name)tb)tbb
);