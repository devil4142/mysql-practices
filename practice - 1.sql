show tables;
select * from actors;
select count(*) from actors;
select distinct name from actors;

select distinct count(name) from actors;

select * from financials;

select distinct currency from financials;

select max(budget) from financials;

select * from languages;

select * from movie_actor;

select * from movies;

select  * from  movies
where movie_id = 101;

select distinct count(studio) from movies;

select title,imdb_rating
from movies 
order by imdb_rating
limit 5 offset 5;

select * from movies 
where industry = "hollywood";

select count(*) from movies where industry="bollywood";

select * from movies where title like "%thor%";

select * from movies;

select title, release_year
from movies 
where studio = "marvel studios";

select * from movies where title like "%avenge";

select release_year
from movies where title = "the godfather";

select distinct studio from movies;

select * from movies 
where industry = "hollywood"
order by imdb_rating desc limit 5 offset 1;

select title, release_year
from movies 
order by release_year desc;

select * from movies;

select *
from movies 
where release_year = "2022";

select * 
from movies 
where release_year > 2020 order by imdb_rating > 8;

select * from movies 
where studio not like "%marvel studio%";

select 
	industry, count(*) 
from movies 
group by industry;

select 
	studio, count(*) as cnt
from movies 
group by studio
order by cnt desc;

select count(title) 
from movies 
where release_year between 2015 and 2022;

select
	max(release_year),
    min(release_year)
from movies;

select release_year, count(*) as movies_count
from movies 
group by release_year
having movies_count>2
order by movies_count desc;

