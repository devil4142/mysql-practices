#crossjoin 

select * from items;
select * from variants;

select *, concat(name, " - ", variant_name) as full_name, (price+variant_price) as full_price
from items 
cross join variants;

select * from movies 
cross join financials;


select m.movie_id, title, budget, revenue, currency, unit,
case
	when unit="thousands"  then round((revenue-budget)/1000,1)
    when unit="billions" then  round((revenue-budget)*1000,1)
    else (revenue-budget)
end as profit_mln
from movies as m 
join financials as f 
on m.movie_id=f.movie_id
where industry="bollywood"
order by profit_mln desc;

#joining morethan two tales

select m.title, group_concat(a.name separator "  ") as actors
from movies as m 
join movie_actor as ma on ma.movie_id=m.movie_id 
join actors as a on a.actor_id=ma.actor_id
group by m.movie_id;

select * from languages;
