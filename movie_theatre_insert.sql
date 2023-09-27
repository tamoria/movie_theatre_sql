-- Insert for customer table

insert into customer(
	customer_id,
	first_name,
	last_name,
	phone,
	billing_info
) values (
	1,
	'Elle',
	'Brown',
	'123-456-7890',
	'1234-5678-9012-3456 789 01/23'
);

-- Insert for ticket table

insert into tickets(
	ticket_id,
	customer_id,
	title_id,
	purchase_date,
	total_cost,
	store_id
) values (
	2,
	1,
	'Planet Earth',
	'01/23/23',
	'20.00',
	'17'	
);

insert into movie(
	title_id,
	movie_time,
	movie_date,
	movie_rating,
	movie_length
) values (
	'Planet Earth',
	'02:00',
	'01/23/23',
	'PG-13',
	118
);

insert into concessions(
	concession_id,
	item_id,
	concession_date,
	total_cost,
	customer_id
) values (
	33,
	4,
	'01/23/23',
	'10.00',
	1
);


select * from customer







