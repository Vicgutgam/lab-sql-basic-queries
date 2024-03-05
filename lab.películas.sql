###Challenge

##Use the sakila database to do the following tasks:
##Display all available tables in the Sakila database.
SHOW tables;

### 2. Retrieve all the data from the tables actor, film and customer.
select*
from sakila.actor;
select*
from sakila.customer;
select*
from sakila.film;

#Retrieve the following columns from their respective tables:
# 3.1 Titles of all films from the film table
SELECT title
FROM film;

# 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name
FROM sakila.language;

# 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM sakila.staff;

# 4. Retrieve unique release years.
SELECT DISTINCT release_year
FROM sakila.film;

#5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) AS Nº_TIENDAS
FROM sakila.store;

#5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) AS Nº_TRABAJADORES
FROM sakila.staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(film_id) AS Nº_películas
FROM sakila.film;

SELECT COUNT(inventory_id) AS nª_Alquiladas
FROM sakila.rental;

#5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT last_name
FROM sakila.actor;

#Retrieve the 10 longest films.
SELECT *
FROM sakila.film
ORDER BY length DESC 
LIMIT 10;

#Use filtering techniques in order to:

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT *
FROM sakila.actor
WHERE first_name = "SCARLETT";



