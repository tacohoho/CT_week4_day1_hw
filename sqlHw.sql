-- #1 How many actors are there with the last name 'Wahlberg'
-- 2 actors
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg';
-- #2 How many payments were made between $3.99 and $5.99
-- 5607 payments 
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- #3 What film does the store have the most of
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- the store has the most of film_id 193
SELECT title
FROM film
WHERE film_id = 193;
-- the film is Crossroads Casualties
-- #4
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';
-- there are no customers that have the last name 'William'
-- #5 What store employee sold the most rentals
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;
-- staff_id 1 sold the most
SELECT first_name, last_name
FROM staff
WHERE staff_id = 1;
-- Mike Hillyer
-- #6 How many different district names are there
SELECT COUNT(DISTINCT district)
FROM address;
-- 603 district names
-- #7 What film has the most actors in it
SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- film_id 508 has the most actors
SELECT title
FROM film
WHERE film_id = 508;
-- The film is Lambs Cincinatti
-- #8 From store_id 1, how many customers have a last name ending with 'es'
SELECT COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
-- There are 13 customers from store_id 1 and have a last name ending with 'es'
-- #9 How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430
SELECT COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_date)  250 AND customer_id BETWEEN 380 AND 430;
-- none
-- #10 Within the film table, how many rating categories are there And what rating has the most movies total
-- SELECT COUNT(DISTINCT rating) 
-- FROM film;
-- -- There are 5 film categories
-- SELECT rating, COUNT(film_id)
-- FROM film
-- GROUP BY rating
-- ORDER BY COUNT(film_id) DESC
-- -- PG_13 has the most movies
