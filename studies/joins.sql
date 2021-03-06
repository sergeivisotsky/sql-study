USE sakila;
SELECT c.city,
       c.city_id,
       c.last_update,
       co.country,
       co.last_update,
       a.address,
       a.district
FROM city c
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
GROUP BY f.title DESC;

SELECT DISTINCT ft.title,
                ft.description,
                inv.last_update,
                fc.category_id,
                cat.name
FROM film_text ft
       LEFT OUTER JOIN
     inventory inv ON ft.film_id = inv.film_id
       LEFT OUTER JOIN
     film_category fc ON fc.film_id = ft.film_id
       LEFT OUTER JOIN
     category cat ON cat.category_id = fc.category_id
WHERE ft.film_id = 1;

SELECT 
    s.address_id,
    s.last_update,
    st.first_name,
    st.last_name,
    st.email,
    st.username,
    a.address,
    a.phone,
    c.city
FROM
    store s
        LEFT JOIN
    staff st ON s.manager_staff_id = st.staff_id
        LEFT JOIN
    address a ON s.address_id = a.address_id
        LEFT JOIN
    city c ON c.city_id = a.city_id
limit 1 offset 1;
    
SELECT 
	F.TITLE, 
    F.DESCRIPTION,
    F.RELEASE_YEAR, 
    MAX(F.REPLACEMENT_COST)
FROM FILM F
GROUP BY 
	TITLE, 
    DESCRIPTION, 
    RELEASE_YEAR;