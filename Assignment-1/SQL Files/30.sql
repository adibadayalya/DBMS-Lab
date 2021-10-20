select invoice.Inv_no , cust.Fname, cust.Lname, invoice.Mv_no from invoice 
inner join cust on invoice.cust_id =  cust.cust_id;