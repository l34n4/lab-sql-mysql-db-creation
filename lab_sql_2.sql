
CREATE DATABASE IF NOT EXISTS lab;
USE lab;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS invoices;

CREATE TABLE cars (
  num_id INT AUTO_INCREMENT PRIMARY KEY,
  car_id INT,
  manufacturer VARCHAR(100),
  model VARCHAR(100),
  color VARCHAR(100)
);



CREATE TABLE customers (
  num_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  name VARCHAR(100),
  phone_number VARCHAR(100),
  email VARCHAR(100),
  address VARCHAR(100),
  city VARCHAR(100),
  state VARCHAR(100),
  country VARCHAR(100),
  postal_code INT
);



CREATE TABLE salespersons (
  num_id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id INT,
  name VARCHAR(100),
  store VARCHAR(100)
);



CREATE TABLE invoices (
  num_id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number INT,
  date DATE,
  car_id INT,
  customer_id INT,
  staff_id INT
);



INSERT INTO cars (car_id, manufacturer, model, color)
VALUES
  (1, 'Volkswagen', 'Tiguan', 'Blue'),
  (2, 'Peugeot', 'Rifter', 'Red'),
  (3, 'Ford', 'Fusion', 'White'),
  (4, 'Toyota', 'RAV4', 'Silver'),
  (5, 'Volvo', 'V60', 'Gray'),
  (6, 'Volvo', 'V60 Cross Country', 'Gray');


INSERT INTO customers (customer_id, name, phone_number, email, address, city, state, country, postal_code)
VALUES
  (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
  (20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
  (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);


INSERT INTO salespersons (staff_id, name, store)
VALUES
  (00001, 'Petey Cruiser', 'Madrid'),
  (00002, 'Anna Sthesia', 'Barcelona'),
  (00003, 'Paul Molive', 'Berlin'),
  (00004, 'Gail Forcewind', 'Paris'),
  (00005, 'Paige Turner', 'Mimia'),
  (00006, 'Bob Frapples', 'Mexico City'),
  (00007, 'Walter Melon', 'Amsterdam'),
  (00008, 'Shonda Leer', 'São Paulo');


INSERT INTO invoices (invoice_number, date, car_id, customer_id, staff_id)
VALUES
  (852399038, '2018-08-22', 1, 1, 3),
  (731166526, '2018-12-31', 3, 3, 5),
  (271135104, '2019-01-22', 2, 2, 7);
