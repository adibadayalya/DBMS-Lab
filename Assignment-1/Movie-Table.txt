create table movie(
Mv_no int,
Title varchar(25),
Type varchar(10),
Star varchar(25),
Price decimal(8,2)
);
insert into movie (Mv_no, Title, Type, Star, Price)
values (1,'La La Land','Musical','Ryan Gosling',100.22);
insert into movie (Mv_no, Title, Type, Star, Price)
values (2,'Lost in Translation','Drama','Scarlett Johansson',502.00);
insert into movie (Mv_no, Title, Type, Star, Price)
values (3,'Deadpool','Comedy','Ryan Reynolds',216.12);
insert into movie (Mv_no, Title, Type, Star, Price)
values (4,'Mission Impossible','Action','Tom Cruise',500.00);
insert into movie (Mv_no, Title, Type, Star, Price)
values (5,'Casino Royale','Action','Daniel Craig',180.00);
insert into movie (Mv_no, Title, Type, Star, Price)
values (6,'Pride and Prejudice','Romance','Kiera Knightley',145.50);
select * from movie;
