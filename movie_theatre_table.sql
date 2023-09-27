
-- Creating tables

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone VARCHAR(15),
	billing_info VARCHAR(150)
);

create table tickets(
	ticket_id INTEGER primary key,
	customer_id SERIAL,
	title_id VARCHAR(150),
	purchase_date DATE default current_date,
	total_cost NUMERIC(10,2),
	store_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(title_id) references movie(title_id)
);

create table movie(
	title_id VARCHAR(150) primary key,
	movie_time TIME,
	movie_date DATE,
	movie_rating VARCHAR(10),
	movie_length INTEGER
);

create table concessions(
	concession_id INTEGER primary key,
	item_id INTEGER,
	concession_date DATE default current_date,
	total_cost NUMERIC(10,2),
	customer_id SERIAL,
	foreign key(customer_id) references customer(customer_id)
);


