/*
 * Count the total number of G rated films.
 * HINT:
 * Use the count() aggregation function and the rating column of the film table.
 */
SELECT COUNT(*)
FROM film
WHERE rating = 'G';
