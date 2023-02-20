/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT film.film_id, film.title, L.language_id, L.name
FROM film JOIN language as L on film.language_id = L.language_id
WHERE L.name = 'English' AND (film.title LIKE 'K%' OR film.title LIKE 'Q%')
ORDER BY film.title;
