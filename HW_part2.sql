USE seminar_3;

-- Task8
SELECT * FROM staff
ORDER BY sallary;

-- Task8
SELECT * FROM staff
ORDER BY sallary DESC;

-- Task 9
SELECT * FROM staff
ORDER BY sallary
LIMIT 7,5;

-- Task 10
SELECT speciality, SUM(sallary) as sallary_sum 
FROM staff GROUP BY speciality HAVING sallary_sum > 100000;