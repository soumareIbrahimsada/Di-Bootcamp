--1. Obtenez une liste de toutes les langues cinématographiques.
SELECT DISTINCT(name) FROM language;
--2. Obtenez une liste de tous les films joints avec leurs langues - sélectionnez les détails suivants : titre du film,
--description et nom de la langue. Essayez votre requête avec différentes jointures :
--1. Obtenez tous les films, même s’ils n’ont pas de langue.
--2. Obtenez toutes les langues, même s’il n’y a pas de films dans ces langues.
select name,title,description
FROM language
RIGHT OUTER JOIN film
ON language.language_id=film.language_id
ORDER BY name DESC;

select name,title,description
FROM language
LEFT OUTER JOIN film
ON language.language_id=film.language_id
ORDER BY name DESC;
--3. Créez une nouvelle table appelée new_film avec les colonnes suivantes : id, name. Ajoutez de nouveaux
--films à la table.
CREATE TABLE newfilm(
id INTEGER NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);
SELECT * FROM language;

INSERT INTO newfilm(id,name) 
VALUES
(10000,'Ouaga Love'),
(15645,E'la femme de l\'ambassadeur'),
(45333,'mai deux mari'),
(56356,'les 3 lascars');
--4. Créez un nouveau tableau appelé customer_review, qui contiendra les critiques de films que les clients
--feront.
--Pensez à la contrainte DELETE : si un film est supprimé, sa critique doit être automatiquement supprimée.
--Il doit comporter les colonnes suivantes :
--1. review_id – clé primaire, non nulle, auto-incrémentation.
--2. film_id – fait référence au tableau new_film. Le film qui fait l’objet d’une critique.
--3. language_id – fait référence à la table des langues. Dans quelle langue se trouve l’examen.
--4. Titre – Le titre de la revue.
--5. score – la note de l’avis (1-10).
--6. review_text – le texte de la revue. Aucune limite sur la longueur.
--7. last_update – date de la dernière mise à jour de l’avis
CREATE TABLE customer_review(
	review_id SERIAL NOT NULL PRIMARY KEY,
	film_id INTEGER REFERENCES newfilm(id) ON  DELETE CASCADE, 
	language_id INTEGER REFERENCES language(language_id) ON DELETE NO ACTION,
	title VARCHAR(30),
	score SMALLINT,
	review_text text, 
	last_update date);
--5. Ajoutez 2 critiques de films. Assurez-vous de les lier à des objets valides dans les autres tables.	
INSERT INTO customer_review(film_id,language_id,title,score,review_text,last_update)
VALUES
((SELECT id FROM newfilm WHERE name='Ouaga Love'),(SELECT language_id FROM language WHERE name='French'),'mon avis 1', 9,'jddjbbbhkkkgfGDFKFDDFGHFKKGHKQDFGHFKQKgqgfdkqggkfqdgdgdfgfddgfgfdfdkdgfqdgdfgfddkLFFDQGQDFKDFDGFGFG','10/09/2022'),
((SELECT id FROM newfilm WHERE name='mai deux mari'),(SELECT language_id FROM language WHERE name='Italian'),'mon avis 1', 9,'jddjbbbhkkkgfGDFKFDDFGHFKKGHKQDFGHFKQKgqgfdkqggkfqdgdgdfgfddgfgfdfdkdgfqdgdfgfddkLFFDQGQDFKDFDGFGFG','10/09/2022'),
((SELECT id FROM newfilm WHERE name='les 3 lascars'),(SELECT language_id FROM language WHERE name='German'),'mon avis 1', 9,'jddjbbbhkkkgfGDFKFDDFGHFKKGHKQDFGHFKQKgqgfdkqggkfqdgdgdfgfddgfgfdfdkdgfqdgdfgfddkLFFDQGQDFKDFDGFGFG','10/09/2022');
--6. Supprimer un film qui a une critique du tableau new_film, qu’advient-il du tableau customer_review?
DELETE FROM newfilm WHERE name='mai deux mari';

select * FROM newfilm;
select * FROM customer_review;
