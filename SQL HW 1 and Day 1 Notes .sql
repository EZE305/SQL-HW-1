-- first query, we will select all the records from the actor table--

select * from actor 

-- Query for first_name and last_name in actor table 

select first_name, last_name 
from actor;

--query for a first name that equals Nick uning the WHERE clause 

select first_name, last_name
from actor 
where first_name like 'Nick';

-- query for all first_name data that starts with a J uning like and where clauses and a wildcard 

select first_name,actor_id
from actor 
where first_name like 'J%';

--query for all first_name data that starts with K and has 2 letters after the K again using the like and where clauses 
--and the underscore 

select first_name, actor_id 
from actor 
where first_name like 'K__';

--query for all first_name data that starts with a k and ends with TH 
-- using LIKE and Where Clauses using both wildcard and the underscore 

select first_name , last_name, actor_id 
from actor 
where first_name like 'K__%th';

--Comparing Operators 
--<, >, >=, <=, <> 

--Explore data with select all query so that we can change into a new table 
select * from payment
-- query for data to show customers that paid more than 2 dollars 
select customer_id, amount 
from payment 
where amount > 2.00;

-- query for data that shows cutomer that paid less than 7.99
select customer_id, amount 
from payment 
where amount < 7.99;
-- query for less than or equal to 
select customer_id, amount 
from payment 
where amount <= 7.99;

select customer_id, amount 
from payment 
where amount >= 2.00;
--query for data that shows customers who paid an amount not equal to 0 ordered in decending order 

select customer_id, amount 
from payment 
where amount <> 0.00
order by amount desc; 

--SQL aggregate function. Sum, avg, count, min max, 
--Query to display the sum of amounts paid that are greater than 5.99

select sum(amount)
from payment 
where amount > 5.99;

--Query to display the average of an amount greater than 5.99

select avg(amount)
from payment 
where amount > 5.99;

--Query to display the count of an amount greater than 5.99

select count(amount) from payment where amount > 5.99;

-- Query to display the count of DISTINCT amounts paid greater than 5.99
select count(distinct amount)
from payment where amount > 5.99;

-- -- Query to display the min amounts greater than 7.99
select min(amount) as min_num_payments 
from payment
where amount > 7.99;
-- -- Query to display the max amounts greater than 7.99

select max(amount) as min_num_payments 
from payment
where amount > 7.99;

-- Demo of group by 
select amount 
from payment 
where amount = 7.99;

-- Query to display different amounts grouped together and count the amounts 

select amount, count(amount)
from payment 
group by amount 
order by amount;

--Query to display customer ids with the summed amounts for each customer id 

select customer_id, sum(amount)
from payment 
group by customer_id 
order by customer_id desc;

--SQL Homework day 1 
--1. 2
--2. 5567
--3. Film 200 with 9 
--4. 0
--5. 1 - 8040
--6. 378
--7. film_id 508 - 15 actors
--8. 13
--9. 3
--10. 5 ratings, PG-13 has the most




--1. How many actors are there with the last name ‘Wahlberg’?

select count(last_name)
from actor 
where last_name like 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
select count(amount) from payment
where amount between 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory)

select film_id
from inventory 
where 

select * from inventory 

-- inventory does not show the amount of movies that are available 

--4. How many customers have the last name ‘William’?

select count(last_name)
from customer  
where last_name like 'William';


select * from staff 

--5. What store employee (get the id) sold the most rentals?
select * from payment

select staff_id, count(staff_id)
from payment 
group by staff_id;

--6. How many different district names are there?

select count(distinct district) from address;

--7. What film has the most actors in it? (use film_actor table and get film_id)

select film_id, COUNT(film_id) AS num_of_actors
from film_actor 
GROUP BY film_id
ORDER BY COUNT(film_id) DESC

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select * from customer

select count(last_name)
from customer
where last_name like '%es'
group by store_id ;

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)


select amount , count(amount)
from payment 
where customer_id between 380 and 430
group by amount 
having count(amount) > 250
order by count desc ; 



--10. Within the film table, how many rating categories are there? And what rating has the most movies total?

select count(distinct rating) as diff_movie_ratings
from film 


select rating, count(rating) as num_of_movies_w_this_rating
from film 
group by rating
order by num_of_movies_w_this_rating desc
limit 1;






