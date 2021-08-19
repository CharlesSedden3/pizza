DELETE DATABASE IF EXISTS Pizzeria;
CREATE DATABASE Pizzeria;
USE Pizzeria;

CREATE TABLE Pizza(
    pizza_id INT AUTO_INCREMENT,
    pizza_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
    vegetarian BOOLEAN NOT NULL,
    PRIMARY KEY (pizza_id)
);

CREATE TABLE Customer(
	customer_id INT AUTO_INCREMENT,
	pizza_id INT,
	order_id INT,
	payment_id INT,
	PRIMARY KEY (customer_id),
	FOREIGN KEY (pizza_id) REFERENCES Pizza(pizza_id),
	FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT,
    date_booking DATETIME NOT NULL,
    pizza_id INT,
    customer_id INT,
    PRIMARY KEY (order_id),
    FOREIGN KEY (pizza_id) REFERENCES Pizza(pizza_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
