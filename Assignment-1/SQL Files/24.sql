select Type,sum(price)/count(mv_no) as 'Average Price' from movie
group by type;