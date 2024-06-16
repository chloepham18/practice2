— Exercise 1:
SELECT DISTINCT CITY FROM STATION 
WHERE ID%2=0

— Exercise 2:
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION

— Exercise 3:


— Exercise 4:
SELECT 
ROUND(CAST(SUM(item_count * order_occurrences) / sum(order_occurrences) AS DECIMAL), 1) AS mean
FROM items_per_order
  
— Exercise 5:
SELECT candidate_id FROM candidates
WHERE skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT (skill) = 3

— Exercise 6:
SELECT user_id,
DATE(max(post_date)) - DATE(min(post_date)) AS days_between
FROM posts
WHERE post_date >= '2021-01-01' AND post_date <'2022-01-01'
GROUP BY user_id
HAVING COUNT (post_id) >= 2

— Exercise 7:
SELECT card_name, 
MAX (issued_amount) - MIN (issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC

— Exercise 8:
SELECT manufacturer, 
COUNT(drug) AS drug_count,
ABS(SUM(cogs - total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC

— Exercise 9:
SELECT manufacturer, 
COUNT(drug) AS drug_count,
ABS(SUM(cogs - total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC

— Exercise 10:
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
From Teacher
GROUP BY teacher_id

— Exercise 11:
SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id

— Exercise 12:
SELECT class from Courses 
GROUP BY class
HAVING COUNT(class) >= 5
