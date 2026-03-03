/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
SELECT
  last_name,
  COUNT(*) AS last_name_count
FROM actor
GROUP BY last_name
HAVING COUNT(*) >= 2
ORDER BY last_name_count DESC;
