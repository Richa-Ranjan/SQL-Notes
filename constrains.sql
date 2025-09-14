USE practiseques;

CREATE DATABASE IF NOT EXISTS employee;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary DOUBLE
);
INSERT INTO employee VALUES(1,"adam",25000);
INSERT INTO employee VALUES(2,"bob",30000);
INSERT INTO employee VALUES(3,"casey",40000);
INSERT INTO employee VALUES(4,"doll",80000);

SELECT * FROM employee;


CREATE TABLE emp(
id Int,
salary INT DEFAULT 25000);

INSERT INTO emp(id)  VALUES(101);
select *from emp;
