select invoice.Inv_no, cust.Fname, movie.Title, movie.Type from invoice
join cust on invoice.Cust_id = cust.cust_id
join movie on invoice.Mv_no = movie.Mv_no 
where cust.Fname = 'Bruce';