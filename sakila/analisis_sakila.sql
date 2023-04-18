-- Analisis de Sakila data base
USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film_actor;
SELECT * FROM film;
SELECT * FROM inventory;

-- 1. Obtener 10 de actores por cantidad de peliculas en las que han actuado ordenarlos de manera decendente.

SELECT a.actor_id, a.first_name, a.last_name, COUNT(*) as movie_count FROM actor a JOIN film_actor fa ON a.actor_id = fa.actor_id GROUP BY a.actor_id ORDER BY movie_count DESC LIMIT 5; 

-- 2. Mostrar todas las peliculas en el idioma ingles
-- Analizar la tabla film y tabla language

SELECT * FROM film;
SELECT * FROM language;

SELECT f.film_id, f.title FROM film f JOIN language l ON f.language_id = l.language_id WHERE l.name = 'English';
