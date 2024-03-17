USE udemy_database;

-- Display first 10 rows of the dataset
SELECT * FROM UDEMY LIMIT 10;

-- Number of courses per category
SELECT SUBJECT AS Category, COUNT(SUBJECT) AS `Number of courses` FROM UDEMY GROUP BY SUBJECT; 

-- Number of subscribers per category
SELECT SUBJECT AS Category, SUM(NUM_SUBSCRIBERS) AS `Number of subscribers` FROM UDEMY 
GROUP BY SUBJECT;

-- Average price of the courses per category
SELECT SUBJECT AS Category, ROUND(AVG(PRICE),1) AS `Average price` FROM UDEMY
GROUP BY SUBJECT ORDER BY PRICE DESC;

-- Top five most popular courses and when they are published
SELECT COURSE_ID AS `Course Id`, COURSE_TITLE AS `Course Title`, 
NUM_SUBSCRIBERS AS `Subscribers`, PUBLISHED_TIMESTAMP AS `Date of published` FROM UDEMY
ORDER BY NUM_SUBSCRIBERS DESC LIMIT 5;

