--1. Créer 2 tableaux : Client et Profil Client. Ils ont une relation individuelle à un.
CREATE TABLE customer(
	id SERIAL PRIMARY KEY, 
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL
);
CREATE TABLE profil(
	profil_id INTEGER, 
	isloggedin BOOLEAN default FALSE,
	PRIMARY KEY(profil_id),
	constraint customer_id foreign key (profil_id) references customer(id)
);
--2. Insérez ces clients
insert into customer(first_name,last_name)
	values('Doe','John'),('Lalu','Jerome'),('Rive','Lea');
	
insert into profil(profil_id,isLoggedIn)
	values(1,true),(2,false);
--Le first_name des clients LoggedIn
SELECT c.first_name
FROM customer AS c
INNER JOIN profil AS P ON c.id=p.profil_id
WHERE isloggedin= TRUE;
--Tous les clients first_name et isLoggedIn colonnes - même les clients qui n’ont pas de profil.
SELECT c.first_name, p.isloggedin 
FROM customer AS c
LEFT OUTER  JOIN profil AS P ON c.id=p.profil_id;
--Le nombre de clients qui ne sont pas connectés
SELECT COUNT(*)
FROM customer AS c
INNER JOIN profil AS P ON c.id=p.profil_id
WHERE isloggedin= FALSE;



	