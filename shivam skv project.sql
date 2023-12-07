-- primary key is the unique identity of a customer_id and foreign key is define the link between the table of customer_id
select * from customer_id;

-- list all details of actors -
select * from actor;

-- List all customer information from DB -
select * from customer;

-- list different countries.
select distinct country from country;

 -- display all active customers -
 select customer_id, first_name, last_name, email from customer where 'active' = 1;
 
 -- list of all rental_id for customer with id 1 -
select rental_id from rental where customer_id = 1;

-- display all the films whose rental duration is greater than 5 -
select film_id, title from film where rental_duration > 5;

-- list the total number of films whose replacemnet cost is greater than $15 and less than  $20 -
select COUNT(*) from film where replacement_cost > 15 and replacement_cost < 20;

-- display the count of unique first names of actors -
select count(distinct first_name) from actor;

-- display the first 10 recods from the customer table -
  select * from customer limit 10;
  
-- display the first 3 records from the customer table whose first name starts with 'b' -
  select * from customer where first_name like 'b%' limit 3;
  
-- Display the names of first 5 movies which are rated as G -
  select title from film where rating = 'G' limit 5;
  
-- find all customers whose first name starts with "a" -
select * from customer where first_name like "a%";

-- Find all customers whose first name ends with "a" -
select * from customer where first_name like "%a";
 
-- Display the list of first 4 cities which start and end with ‘a’ -
 select city from city where city like 'a%%a' limit 4;
 
-- Find all customers whose first name have "NI" in any position -
select first_name from customer where first_name like '%ni%';
 
-- Find all customers whose first name have "r" in the second position -
 select first_name from customer where first_name like '_r%';
 
-- Find all customers whose first name starts with "a" and are at least 5 characters in length -
select first_name from customer where first_name like 'a____%';
 
-- Find all customers whose first name starts with "a" and ends with "o" -
select first_name from customer where first_name like 'a%o';
 
-- Get the films with pg and pg-13 rating using IN operator -
select title from film where rating in ('PG', 'PG-13');
 
 -- Get the films with length between 50 to 100 using between operator
 select * from film where length between 50 and 100;
 
-- Get the top 50 actors using limit operator -
 select * from actor limit 50;
 
-- Get the distinct film ids from inventory table -
select distinct film_id from inventory;