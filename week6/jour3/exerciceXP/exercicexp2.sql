SELECT * FROM film;
SELECT language_id FROM language WHERE name='French';

UPDATE film
SET language_id=(SELECT language_id FROM language WHERE name='French') 
WHERE film_id=1;
--4. Découvrez combien de locations sont encore en suspens (c.-à-d. n’ont pas encore été retournées au
--magasin).
SELECT COUNT(*) FROM rental WHERE return_date IS NULL ;
--5. Trouvez les 30 films les plus chers qui sont exceptionnels (c’est-à-dire qui n’ont pas encore été retournés au
--magasin)
SELECT f.title,f.description,r.rental_date,P.amount 
FROM film as f
JOIN inventory AS i ON f.film_id=i.film_id
JOIN rental AS r ON r.inventory_id = i.inventory_id
JOIN payment AS p ON p.rental_id = r.rental_id
WHERE return_date IS NULL
ORDER BY amount DESC LIMIT 30;
--6.)Your friend is at the store, and decides to rent a movie. He knows he wants to see 4 movies, but he can’t remember their names. Can you help him find which movies he wants to rent?

--6.1)The 1st film : The film is about a sumo wrestler, and one of the actors is Penelope Monroe.
select f.title,f.description,a.first_name,a.last_name
from film f join film_actor on f.film_id=film_actor.film_id
join actor as a on film_actor.actor_id=a.actor_id
where f.description ilike '%sumo wrestler%' and (a.first_name='Penelope' and a.last_name='Monroe');

--2.)The 2nd film : A short documentary (less than 1 hour long), rated “R”.
select title,description,rating, length from film where length = 60 and rating='R';

--3.)The 3rd film : A film that his friend Matthew Mahan rented. He paid over $4.00 for the rental, and he returned it between the 28th of July and the 1st of August, 2005.
select f.title,f.rental_rate,r.return_date,c.first_name,c.last_name from film f
join inventory on f.film_id=inventory.film_id
join rental r on inventory.inventory_id=r.inventory_id
join customer c on r.customer_id = c.customer_id
where f.rental_rate > 4.00 and r.return_date between
'28/07/2005' and '1/08/2005' and c.first_name='Matthew'
and  c.last_name='Mahan';

--4.)Le 4ème film : Son ami Matthew Mahan a également regardé ce film. Il y avait le mot «bateau» dans le titre ou la description, et il semblait que c'était un DVD très coûteux à remplacer.
select f.title,f.description,f.replacement_cost,c.first_name,c.last_name from film f
join inventory on f.film_id=inventory.film_id
join rental r on inventory.inventory_id=r.inventory_id
join customer c on r.customer_id = c.customer_id
where c.first_name='Matthew' and  c.last_name='Mahan' and
(f.title ilike '%boat%' or f.description ilike '%boat%')
order by f.replacement_cost desc LIMIT 1 ;


