/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
SELECT
  s.first_name,
  s.last_name,
  a.address AS street_address
FROM staff AS s
JOIN address AS a
  ON s.address_id = a.address_id
ORDER BY s.last_name;
