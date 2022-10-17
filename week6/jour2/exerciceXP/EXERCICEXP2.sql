--Dans la base de données dvdrental, écrivez une requête pour sélectionner toutes les colonnes de la table « customer ».
SELECT * FROM customer;
--Écrivez une requête pour afficher les noms (first_name, last_name) à l’aide d’un alias nommé « full_name ».
SELECT CONCAT(first_name,' ',last_name) as fulname FROM customer;
--Permet d’obtenir toutes les dates auxquelles les comptes ont été créés. Écrivez une requête pour sélectionner tous les create_date dans la table « customer » (il ne doit pas y avoir de doublons).
SELECT DISTINCT create_date FROM customer;
--Écrivez une requête pour obtenir tous les détails du client à partir de la table client, elle doit être affichée dans l’ordre décroissant par leur prénom.
SELECT * FROM customer ORDER  BY first_name ASC;
--Écrivez une requête pour obtenir l’ID du film, le titre, la description, l’année de sortie et le taux de location dans l’ordre croissant en fonction de leur taux de location.
SELECT film_id,title,description,release_year,rental_rate FROM film ORDER  BY rental_rate ASC; 
--Écrivez une requête pour obtenir l’adresse, et le numéro de téléphone de tous les clients vivant dans le district du Texas, ces détails peuvent être trouvés dans le tableau « adresse ».
SELECT address,phone
FROM address
INNER JOIN customer
ON address.address_id=customer.address_id
WHERE district='Texas';
--
SELECT * FROM film WHERE film_id=15 OR film_id=150;

SELECT * FROM film ORDER BY replacement_cost ASC LIMIT 10;

SELECT * FROM film ORDER BY replacement_cost ASC LIMIT 10 OFFSET 10;

SELECT amount,payment_date 
FROM payment 
INNER JOIN customer
ON payment.customer_id=customer.customer_id
ORDER BY customer_id REFERENCES costumer(constumer_id) payement ASC;


SELECT * 
FROM inventory
INNER JOIN film
ON inventory.film_id = film.film_id;
--Écrivez une requête pour savoir quelle ville se trouve dans quel pays.
SELECT city,country
FROM city
INNER JOIN country   ON country.country_id = city.country_id;
--
