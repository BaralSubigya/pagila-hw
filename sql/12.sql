/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  SUM(p.amount) AS sum
FROM customer AS c
JOIN payment AS p
  ON c.customer_id = p.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
ORDER BY c.last_name, c.first_name, c.customer_id;
