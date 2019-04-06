select 
	count(*) as active_actors 
from sakila.actor a 
where(
	select distinct
		fa.actor_id 
	from sakila.film_actor fa 
    where a.actor_id = fa.actor_id
);