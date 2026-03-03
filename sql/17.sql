/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT
  co.country,
  SUM(p.amount)::numeric(10,2) AS profit
FROM payment AS p
JOIN rental AS r
  ON p.rental_id = r.rental_id
JOIN customer AS cu
  ON r.customer_id = cu.customer_id
JOIN address AS a
  ON cu.address_id = a.address_id
JOIN city AS ci
  ON a.city_id = ci.city_id
JOIN country AS co
  ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY co.country;
