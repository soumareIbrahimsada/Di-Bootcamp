CREATE TABLE product_orders( 
	command_id serial PRIMARY KEY,
	price_totale INTEGER						   
);
CREATE TABLE items( 
item_id Serial PRIMARY KEY,
item_name VARCHAR(60),
price INTEGER,
command_id INTEGER,
FOREIGN KEY(command_id) REFERENCES product_orders(command_id)
				  );
DROP TABLE product_orders;
CREATE FUNCTION calcul_price(id integer) RETURNS INTEGER AS $total$ 
BEGIN
 RETURN(SELECT SUM(price) FROM product_orders INNER JOIN items ON items.command_id = product_orders.command_id WHERE items.command_id=id );	
END;
$total$ LANGUAGE plpgsql;
	