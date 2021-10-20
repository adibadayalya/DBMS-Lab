select Type,count(type) as 'Number of Movies',sum(price) as 'Total Sum',
sum(price)/count(type) as 'Average Cost' from movie where price <=150 group by type;