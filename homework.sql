-- Week 5 - Monday Questions
-- 1. How many actors are there with the last name ‘Wahlberg’?
Select *
From actor
WHERE last_name = 'Wahlberg';
-- Anwser 2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT payment_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Anwser 4802

-- 3. What film does the store have the most of? (search in inventory)
SELECT title, count(*)
FROM film
GROUP BY film_id;


-- Anwser 1 of all

-- 4. How many customers have the last name ‘William’?
select last_name
FROM customer
WHERE last_name = 'William';
-- Anwser 0

-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id
FROM rental
GROUP BY rental.staff_id
HAVING COUNT(staff_id) > 8026;

-- Anwser 1

-- 6. How many different district names are there?
SELECT district
FROM address
GROUP BY address.district
HAVING count(district) = 1;
--Anwser 273

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_actor.film_id;

SELECT *
FROM film

--Anwser Film id 508 Lambs Cincinatti

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name, store_id = 1
FROM customer
WHERE last_name LIKE '%es';

--Anwer 13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT *
FROM payment
WHERE amount BETWEEN 4.99 AND 5.99
GROUP BY payment.payment_id
HAVING customer_id BETWEEN 380 and 430;

--Anwser 370

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- -- movies total?
SELECT rating, COUNT(rating)
From film
GROUP BY rating




--Anwser 5 ratings PG-13

