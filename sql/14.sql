/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT
  f.title
FROM category AS c
JOIN film_category AS fc
  ON c.category_id = fc.category_id
JOIN film AS f
  ON fc.film_id = f.film_id
WHERE c.name = 'Family'
ORDER BY
  f.title,
  f.film_id;
