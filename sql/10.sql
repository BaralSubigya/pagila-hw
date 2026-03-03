/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT
  f.title,
  f.film_id,
  COUNT(fa.actor_id) AS actor_count
FROM film AS f
JOIN film_actor AS fa
  ON f.film_id = fa.film_id
GROUP BY f.title, f.film_id
ORDER BY actor_count ASC, f.title ASC, f.film_id ASC;
