use production;

CREATE TABLE  customers (customer_id INT(11) PRIMARY KEY auto_increment, first_name VARCHAR(45), 
last_name VARCHAR(45), phone INT, email VARCHAR(45), 
street VARCHAR(45), city VARCHAR(45), 
state SMALLINT(45), zip_code ENUM("yes"));

DROP TABLE orders;
CREATE TABLE orders(order_id INT(11)  auto_increment, 
customer_id INT PRIMARY KEY, order_statut VARCHAR(45), 
order_date DATE, required_date DATE, shipped DATE, store_id INT(11),
staff_id INT(11), PRIMARY KEY(order_id, store_id));


CREATE TABLE staff(staff_id INT(11) PRIMARY KEY auto_increment,
first_name VARCHAR(45), last_name VARCHAR(45), email VARCHAR(45), phone SMALLINT(10),
actives ENUM("yes"), store_id INT(11), manager_id INT(11));


CREATE TABLE stores( store_id INT(11) PRIMARY KEY auto_increment,
store_name VARCHAR(45), phone INT(10), email VARCHAR(45), street VARCHAR(20),
city VARCHAR(45), state VARCHAR(45), zip_code ENUM("no"));


CREATE TABLE order_item( order_id INT(11) auto_increment,
item_id INT(11) PRIMARY KEY auto_increment, product_id INT(11) PRIMARY KEY, quantity SMALLINT,
list_price VARCHAR(45),  discount SMALLINT, PRIMARY KEY (order_id, );


