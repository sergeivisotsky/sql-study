use sakila;
SELECT c.city,
       c.city_id,
       c.last_update,
       co.country,
       co.last_update,
       a.address,
       a.district
FROM city cŌ
       LEFT OUTER JOIN
     country co ON c.country_id = co.country_id
       RIGHT OUTER JOIN
     address a ON c.city_id = a.city_id;


SELECT fa.film_id,
       fa.last_update,
       f.title,
       f.description,
       f.release_year,
       f.rental_rate,
       f.length,
       f.replacement_cost,
       f.special_features,
       fc.category_id,
       ft.title,
       act.first_name,
       act.last_name,
       ft.description
FROM film_actor fa
       LEFT OUTER JOIN
     film f ON fa.film_id = f.film_id
       LEFT OUTER JOIN
     film_category fc ON fc.film_id = f.film_id
       LEFT OUTER JOIN
     actor act ON act.actor_id = fa.actor_id
       LEFT OUTER JOIN
     film_text ft ON ft.film_id = f.film_id
WHERE f.last_update = '2006-02-15 05:03:42'
GROUP BY f.title;