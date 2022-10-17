-- Database: hollywood

-- DROP DATABASE IF EXISTS hollywood;

/*CREATE DATABASE hollywood
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;*/
CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);
INSERT INTO actors(first_name,last_name,age,number_oscars)
VALUES
('Matt','Damon','08/10/1970', 5),
('George','Clooney','06/05/1961', 2),
('Idrissa','Ouédraogo','03/08/1964', 2),
('Boubacar','Diallo','06/08/1966',4),
('Roméo','Julitte','06/08/1966',3);
SELECT 
	COUNT(*) 
FROM actors;
INSERT INTO actors(first_name,last_name,age)
VALUES
('Sotigui','Kouyaté');
--RROR: ERREUR:  INSERT a plus de colonnes cibles que d'expressions
--LINE 1: INSERT INTO actors(first_name,last_name,age)
