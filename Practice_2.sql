/ex1
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;

/ex2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE
FROM STATION;

/ex3
SELECT CEIL(AVG(Salary)) - AVG(CAST(REPLACE(Salary, '0', '') AS DECIMAL)))) AS ErrorAmount
FROM EMPLOYEES;
  
/ex4
SELECT ROUND(SUM(item_count::DECIMAL*order_occurrences)/SUM(order_occurrences),1) AS mean
FROM items_per_order;

/ex5
SELECT candidate_id FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;

/ex6
SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between FROM posts
WHERE DATE_PART('year', post_date::DATE) = 2021 
GROUP BY user_id
HAVING COUNT(post_id)>1;

/ex7
SELECT card_name, MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;

/ex8
SELECT manufacturer,
COUNT(drug) AS drug_count, SUM(cogs - total_sales) AS total_loss
FROM pharmacy_sales
WHERE cogs > total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;

/ex9
select * from Cinema where description <> 'boring'
group by id
having (id % 2) = 1
order by rating desc

/ex10
SELECT teacher_id, COUNT(DISTINCT subject_id) as cnt FROM Teacher
GROUP BY teacher_id

/ex11
SELECT distinct(user_id), count(follower_id) as followers_count from Followers
group by user_id
order by user_id;

/ex12
select class from Courses
group by class
having count(student) >= 5
