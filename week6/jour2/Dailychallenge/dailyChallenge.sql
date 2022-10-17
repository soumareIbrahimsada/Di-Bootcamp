--crée une table avec deux champs à savoir id et name
CREATE TABLE FirstTab (
 id integer,
 name VARCHAR(10)
)
--Query returned successfully in 310 msec.

--insère des données dans la table
INSERT INTO FirstTab VALUES
(5,'Pawan'),
(6,'Sharlee'),
(7,'Krish'),
(NULL,'Avtaar')
--INSERT 0 4

--affiche toute la table
SELECT * FROM FirstTab

--crée une seconde table avec un champs id
CREATE TABLE SecondTab (
 id integer
)
--insère des information dans la table, le premier tuple est déclaré avec la valeur 5 et le deuxième est déclarée en tant que null
INSERT INTO SecondTab VALUES
(5),
(NULL)
--INSERT 0 2

--affiche la séconde table
SELECT * FROM SecondTab
--compte le nombre de de ligne dans la table firstTable avec leur id ne corespondant pas à un id dans la table secondTable
SELECT COUNT(*)
FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );
--compte le nombre de de ligne dans la table firstTable avec leur id ne corespondant pas à un id dans la table secondTable
SELECT COUNT(*)
 FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 );
 
 --
 SELECT COUNT(*)
 FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab);
 
 --
 SELECT COUNT(*)
 FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL);
