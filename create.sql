-- DDL Clauses: Data Definition Language
-- SQL CREATE STATEMENTS
-- name data_type column-constraint (if available)

DROP TABLE IF EXISTS vendor CASCADE;
create table vendor(
    vendor_id serial primary key,
    vendor_name VARCHAR(100),
    vendor_phone VARCHAR(13),
    FOREIGN KEY (manager_id) REFERENCES manager(manager_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
    last_name VARCHAR(50),
	email VARCHAR(100),
    phone_number VARCHAR(13),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS employee CASCADE;
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
    last_name VARCHAR(50),
	email VARCHAR(100),
    phone_number VARCHAR(13),
    FOREIGN KEY (manager_id) REFERENCES manager(manager_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS manager CASCADE;
CREATE TABLE manager(
	manager_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
    last_name VARCHAR(50),
	email VARCHAR(100),
    phone_number VARCHAR(13),
    FOREIGN KEY (theater_owner_id) REFERENCES theater_owner(theater_owner_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS theater_owner CASCADE;
CREATE TABLE theater_owner(
	theater_owner_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
    last_name VARCHAR(50),
	email VARCHAR(100),
    phone_number VARCHAR(13),
);

DROP TABLE IF EXISTS item CASCADE;
CREATE TABLE item(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(50),
	price VARCHAR(4,2),
    "desc" TEXT,
    FOREIGN KEY (consessions_id) REFERENCES consessions(consessions_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS vendor_item CASCADE;
CREATE TABLE vendor_item(
	vendor_id INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
	FOREIGN KEY (vendor_id) REFERENCES Vendor(vendor_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES item(item_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS iventory CASCADE;
CREATE TABLE iventory(
	iventory_id SERIAL PRIMARY KEY,
	quantity INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(item_id) ON DELETE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES manager(manager_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS tickets CASCADE;
CREATE TABLE tickets(
	tickets_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_list VARCHAR(50),
	customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS movie_theater CASCADE;
CREATE TABLE movie_theater(
	movie_theater_id SERIAL PRIMARY KEY,
	movie_name INTEGER NOT NULL,
	theater_owner_id INTEGER NOT NULL,
    FOREIGN KEY (movie_name) REFERENCES movie_name(movie_name) ON DELETE CASCADE,
    FOREIGN KEY (theater_owner_id) REFERENCES theater_owner(theater_owner_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS consession CASCADE;
CREATE TABLE consession(
	consession_id INTEGER NOT NULL,
	price DECIMAL(4,2),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE
);