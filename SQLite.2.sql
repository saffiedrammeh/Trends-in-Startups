--I created the 'Startups" table to with mock information on various companies to make use of the aggregate functions & the correct sequence of commands.
SELECT *
FROM startups;


SELECT name, category, ROUND (AVG (valuation),2)
FROM startups
GROUP BY category
ORDER BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY  valuation DESC;

SELECT COUNT(name), category
FROM startups
GROUP BY category;

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT (category) > 3;*/

 SELECT location, AVG(employees)
 FROM startups
 GROUP BY location
 HAVING AVG (employees) > 500;
