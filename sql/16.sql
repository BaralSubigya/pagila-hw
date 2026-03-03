/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT
  f.title,
  SUM(p.amount) AS profit
FROM payment AS p
JOIN rental AS r
  ON p.rental_id = r.rental_id
JOIN inventory AS i
  ON r.inventory_id = i.inventory_id
JOIN film AS f
  ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY profit DESC;

