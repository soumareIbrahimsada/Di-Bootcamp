/*CREATE TABLE items(
	nomArticle VARCHAR(100) PRIMARY KEY,
	prix SERIAL
);*/

/*CREATE TABLE customers(
	firstName VARCHAR(100) PRIMARY KEY,
	lastName VARCHAR(100)
); */
/*INSERT INTO items(nomArticle,prix)
VALUES
('petit_bureau',100),
('Grand_bureau',300),
('Ventilateur',80)
; */
/*INSERT INTO customers(firstname,lastname)
VALUES
('Greg','Jones'),
('Sandra','Jones'),
('Scott','Scott'),
('Trevor','Vert'),
('Mélanie','Johnson')
; */
SELECT * FROM customers; 
SELECT * FROM items;
SELECT nomArticle FROM items WHERE prix > 80;
SELECT nomArticle FROM items WHERE prix < 300;
SELECT firstname,lastname FROM customers WHERE lastname='Smith';
SELECT firstname,lastname FROM customers WHERE lastname='Jones';
SELECT firstname,lastname FROM customers WHERE firstname='Scott';






