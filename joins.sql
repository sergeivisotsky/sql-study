use sakila;
SELECT 
    c.city,
    c.city_id,
    c.last_update,
    co.country,
    co.last_update,
    a.address,
    a.district
FROM
    city c
        LEFT OUTER JOIN
    country co ON c.country_id = co.country_id
        RIGHT OUTER JOIN
    address a ON c.city_id = a.city_id;