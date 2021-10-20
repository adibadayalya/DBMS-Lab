select invoice.Cust_id, invoice.Mv_no, movie.Title from invoice 
inner join movie on movie.Mv_no = invoice.Mv_no;