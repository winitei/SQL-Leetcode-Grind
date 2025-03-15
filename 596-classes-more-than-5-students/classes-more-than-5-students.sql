# Write your MySQL query statement below
WITH count_s AS (SELECT class, COUNT(student) AS student
                 FROM Courses
                 GROUP BY class)

SELECT Courses.class
FROM Courses
JOIN count_s
ON courses. class = count_s.class
WHERE count_s.student >= 5
GROUP BY Courses.class

