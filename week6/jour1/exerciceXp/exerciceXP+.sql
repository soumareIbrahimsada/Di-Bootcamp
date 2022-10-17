--DROP TABLE etudiant;
/*CREATE TABLE etudiant(
	id serial PRIMARY KEY,
	firstname varchar(50) NOT NULL,
	lastname varchar(50) NOT NULL,
	dateDeNaissance date NOT NULL
)*/
/*INSERT INTO etudiant(firstname,lastname,dateDeNaissance)
VALUES
('Marc','Benichou','02/11/1998'),
('Yoan','Cohen','03/12/2010'),
('Lea','Benichou','27/07/1987'),
('Amelia','Dux','07/04/1996'),
('David','Grez','14/06/2003'),
('Omer','Simpson','03/10/1980');*/

SELECT * FROM etudiant;
SELECT firstname,lastname FROM etudiant WHERE id = 2 ;
SELECT firstname,lastname FROM etudiant WHERE lastname = 'Benichou'  or firstname = 'Marc' ;
SELECT firstname,lastname FROM etudiant WHERE firstname LIKE '%a%' ;
SELECT firstname,lastname FROM etudiant WHERE firstname ILIKE 'a%' ;
SELECT firstname,lastname FROM etudiant WHERE firstname ILIKE '%a' ;
SELECT firstname,lastname FROM etudiant WHERE firstname ILIKE '%a_' ;
SELECT firstname,lastname FROM etudiant WHERE id = 1 or id = 3 ;
SELECT * FROM etudiant WHERE datedenaissance >= '1/01/2000' ;







