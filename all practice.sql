CREATE DATABASE cllgdata;
USE cllgdata;


-- Foriegn key concept
CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(25)
);


CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(25),
    subject VARCHAR(20),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);






CREATE TABLE stud (
    rollno INT PRIMARY KEY,
    name VARCHAR(25),
    marks INT,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO stud (rollno, name, marks, grade, city) VALUES
(10, 'Anil', 54, 'D', 'Bokaro'),
(11, 'Rahul', 98, 'O', 'Dhanbad'),
(12, 'Avi', 34, 'F', 'ABC'),
(13, 'Subh', 69, 'C', 'Dhanbad'),
(14, 'Diskh', 80, 'B', 'XYZ');

-- Show all unique cities in the table
SELECT DISTINCT city FROM stud;

-- Example: students with marks >= 50
-- SELECT name, marks FROM stud WHERE marks >= 50;

-- Example: students with grade >= 'D'
-- SELECT name, grade FROM stud WHERE grade >= 'D';


SELECT * FROM stud WHERE marks >= 50 AND city="Dhanbad";



-- Limit clause:- it print only that many value that we want 
SELECT *FROM stud
WHERE city ="Dhanbad"
LIMIT 2;





-- order by clause:-arrange data into ascending or decending order
SELECT name,marks FROM stud 
ORDER BY marks DESC
LIMIT 3;



SELECT COUNT(rollno) FROM stud;



SELECT city ,COUNT(rollno)
FROM stud
GROUP BY city;


SELECT city ,AVG(marks)
FROM stud
GROUP BY city;





SELECT mode FROM customer GROUP BY mode 
ORDER BY mode DESC;



SELECT grade,COUNT(rollno)
 FROM stud
GROUP BY grade;




-- update the table
SET SQL_SAFE_UPDATES=0;





UPDATE stud
SET grade="A"
WHERE marks BETWEEN 80 AND 90;





UPDATE stud
SET grade="F"
WHERE rollno=103;
SELECT * FROM stud











