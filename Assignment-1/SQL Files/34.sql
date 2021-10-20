select concat('The movie taken by ', cust.Fname, ' ', cust.Lname, ' is ', movie.title) as 'Output' 
from invoice join cust on invoice.Cust_id = cust.cust_id
join movie on movie.Mv_no = invoice.Mv_no
where invoice.Mv_no >= 3;