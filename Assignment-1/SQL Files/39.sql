select cust_id from invoice where mv_no in (select mv_no from movie where star='Tom Cruise');