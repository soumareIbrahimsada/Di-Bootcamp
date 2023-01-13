--1. Créez une table nommée Livre, avec les colonnes : , , book_id SERIAL PRIMARY KEY title NOT NULL author NOT NULL
CREATE TABLE livre( 
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(30)  NOT NULL,
	author VARCHAR(30) NOT NULL
				  );
--Insérez ces livres :				  
INSERT INTO livre(title,author)
VALUES
('Alice au pays des merveilles', 'Lewis Carroll'),
('Harry Potter', 'J.K Rowling'),
('Pour tuer un oiseau moqueur', 'Harper Lee');

--3. Créez une table nommée Student, avec les colonnes : , , . Assurez-vous que l’âge ne dépasse jamais 15 ans
--(Trouver une méthode SQL);student_id SERIAL PRIMARY KEY name NOT NULL UNIQUE age
CREATE TABLE eleve(
student_id SERIAL PRIMARY KEY, 
	name VARCHAR(30) NOT NULL UNIQUE, 
	age INTEGER,
	CHECK (age<=15)
);
--4. Insérez ces élèves 
INSERT INTO eleve(name,age)
VALUES
('Jean', 12),
('Lera', 11),
('Patrick', 10),
('Bob', 14);
--5. Créez une table nommée Bibliothèque, avec les colonnes :
CREATE TABLE Biblo(
book_fk_id INTEGER ,
student_id INTEGER ,
borrowed_date date, 
FOREIGN KEY(book_fk_id) REFERENCES livre(book_id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(student_id) REFERENCES eleve(student_id) ON DELETE CASCADE ON UPDATE CASCADE
	);
--6. Ajoutez 4 enregistrements dans la table de jonction, utilisez des sous-requêtes.
--l’étudiant nommé John, a emprunté le livre Alice au pays des merveilles le 15/02/2022
--l’étudiant nommé Bob, a emprunté le livre To kill a mockingbird le 03/03/2021
--l’étudiante nommée Lera, a emprunté le livre Alice au pays des merveilles le 23/05/2021
--l’étudiant nommé Bob, a emprunté le livre Harry Potter le 12/08/2021
INSERT INTO biblo(student_id,book_fk_id,borrowed_date)
VALUES
((SELECT student_id FROM eleve WHERE name='Bob'),(SELECT book_id FROM livre WHERE title='Pour tuer un oiseau moqueur'),'15/02/2022'),
((SELECT student_id FROM eleve WHERE name='Lera'),(SELECT book_id FROM livre WHERE title='Alice au pays des merveilles'),'15/02/2022'),
((SELECT student_id FROM eleve WHERE name='Bob'),(SELECT book_id FROM livre WHERE title='Harry Potter'),'15/02/2022'),
((SELECT student_id FROM eleve WHERE name='Jean'),(SELECT book_id FROM livre WHERE title='Alice au pays des merveilles'),'15/02/2022');
--7. Afficher les données
--Sélectionnez toutes les colonnes de la table de jonction
SELECT * FROM biblo;
--Sélectionnez le nom de l’élève et le titre des livres empruntés
SELECT e.name,l.title
	FROM eleve AS e
	join biblo AS b ON e.student_id=b.student_id
	JOIN livre AS l on b.book_fk_id = l.book_id;
--Sélectionnez l’âge moyen des enfants, qui ont emprunté le livre Alice au pays des merveilles
SELECT AVG(e.age)
	FROM eleve AS e
	join biblo AS b ON e.student_id=b.student_id
	JOIN livre AS l on b.book_fk_id = l.book_id
	WHERE title='Alice au pays des merveilles';
--Supprimer un élève de la table Student, que s’est-il passé dans la table de jonction ?
DELETE FROM eleve WHERE name='Jean';

SELECT * FROM eleve;
DELETE FROM biblo;
DELETE FROM livre;


