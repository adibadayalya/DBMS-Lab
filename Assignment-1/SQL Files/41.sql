select Title, Mv_no from movie where mv_no in (select mv_no from invoice);