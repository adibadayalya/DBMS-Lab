select type,count(type) as 'Number of Movies' from movie 
where type='Comedy' or type='Drama' group by type;