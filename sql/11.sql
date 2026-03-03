/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
SELECT
  f.film_id,
  f.title,
  COUNT(i.inventory_id) AS count
FROM film AS f
JOIN inventory AS i
  ON f.film_id = i.film_id
WHERE f.title LIKE 'H%'
GROUP BY f.film_id, f.title
ORDER BY f.title DESC, f.film_id DESC;
