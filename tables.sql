create table customers(
	first_name varchar(25) primary key,
	last_name varchar(25),
	membership_id serial,
	payment_type varchar(20),
	customer_age integer
);


create table tickets(
	movie_id serial primary key,
	cinema integer,
	price integer,
	start_time integer
);


create table movies(
	movie_rating varchar(5),
	cinema integer not null,
	start_time integer not null,
	foreign key (cinema) references tickets,
	foreign key (start_time) references tickets
);


create table conessions(
	item_id serial primary key,
	food_price numeric(4,2),
	drink_price numeric(4,2),
	accessory_price numeric(4,2),
	food_type varchar(20),
	drink_type varchar(20),
	inventory_items integer,
	accessory_type varchar(25)
);


