select * from actors;

select *, year(curdate())-birth_year as age from actors;

select * from financials; 

select *, (revenue-budget) as profit from financials;

select *, 
if(currency="USD", revenue*77, revenue) as revenue_inr 
from financials;

select distinct unit from financials;

select*, 
case 
	when unit="thousands" then revenue/1000
	when unit="billions" then revenue*1000
   else revenue
end as revune_mln 
from financials;

select *, (revenue-budget) as profit, 
round((revenue-budget)*100/budget,1) as profit_pct
from financials;