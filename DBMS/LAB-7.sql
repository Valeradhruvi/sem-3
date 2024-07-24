
CREATE TABLE EMP(
	EID INT,
	ENAME VARCHAR(20),
	DEPARTMENT VARCHAR(25),
	SALARY INT,
	JOINING DATETIME,
	CITY VARCHAR(35)
);

INSERT INTO EMP VALUES (101, 'RAHUL', 'ADMIN', 56000, '1990-01-01', 'RAJKOT');
INSERT INTO EMP VALUES (102, 'HAEDIK', 'IT', 18000, '1990-09-25', 'AHEMDABAD');
INSERT INTO EMP VALUES (103, 'BHAVIN', 'HR', 25000, '1991-05-14', 'RAJKOT');
INSERT INTO EMP VALUES (104, 'BHOOMI', 'ADMIN',39000, '1991-02-08', 'BARODA');
INSERT INTO EMP VALUES (105, 'ROHIT', 'IT', 17000, '1990-07-23', 'JAMNAGAR');
INSERT INTO EMP VALUES (106, 'PRIYA', 'IT', 9000, '1990-10-18', 'AHEMDABAD');
INSERT INTO EMP VALUES (107, 'BHOOMI', 'HR',34000, '1991-12-25', 'RAJKOT');

SELECT * FROM EMP;

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
	SELECT MAX(SALARY) AS MAXINUM, MIN(SALARY) AS MINIMUM FROM EMP;
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
	--respectively.
		SELECT SUM(SALARY) AS TOTAL_SALARY, AVG(SALARY) AS AVERAGE_SALARY FROM EMP;
--3. Find total number of employees of EMPLOYEE table.
	SELECT COUNT(EID) AS COUNT_EMPLOYEE FROM EMP;
--4. Find highest salary from Rajkot city.
	SELECT MAX(SALARY) AS MAXINUM_SALARY FROM EMP WHERE CITY = 'RAJKOT';
--5. Give maximum salary from IT department.N 
	SELECT MAX(SALARY) AS MAXIMUM_SALARY_IT FROM EMP WHERE DEPARTMENT = 'IT';
--6. Count employee whose joining date is after 8-feb-91.
	SELECT COUNT(EID) AS COUNT_EMPLOYEE FROM EMP WHERE JOINING > '8-FEB-91';
--7. Display average salary of Admin department.
	SELECT AVG(SALARY) AS AVERAGE_SALARY FROM EMP WHERE DEPARTMENT = 'ADMIN';
--8. Display total salary of HR department.
	SELECT SUM(SALARY) AS TOTAL_SALARY  FROM EMP WHERE DEPARTMENT = 'HR';
--9. Count total number of cities of employee without duplication.
	SELECT COUNT(DISTINCT CITY) AS TOTAL_CITIES FROM EMP;
--10. Count unique departments.
	SELECT COUNT(DISTINCT DEPARTMENT) AS DISTINCT_DEPARTMENT FROM EMP;
--11. Give minimum salary of employee who belongs to Ahmedabad.
	 SELECT MIN(SALARY) AS MINIMUM_SALARY FROM EMP WHERE CITY = 'AHEMDABAD';
--12. Find city wise highest salary.
	SELECT CITY , MAX(SALARY) AS MAXIMUM_SALARY FROM EMP 
	GROUP BY CITY;
--13. Find department wise lowest salary.
	SELECT DEPARTMENT , MIN(SALARY) AS MINIMUM_SALARY FROM EMP
	GROUP BY DEPARTMENT;
--14. Display city with the total number of employees belonging to each city.
	SELECT CITY, COUNT(EID) FROM EMP 
	GROUP BY CITY;
--15. Give total salary of each department of EMP table.
	SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM EMP 
	GROUP BY DEPARTMENT;
--16. Give average salary of each department of EMP table without displaying the respective department 
--name.
	SELECT AVG(SALARY) AS AVERAGE_SL FROM EMP 
	GROUP BY DEPARTMENT;

--Part B
--1. Count the number of employees living in Rajkot.
	SELECT COUNT(ENAME) AS TOTAL_EMPLOYEES FROM EMP WHERE CITY='RAJKOT';
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
	SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMP;
--3. Display the total number of employees hired before 1st January, 1991.
	SELECT COUNT(EID) AS TOTAL_EMPLOYEES FROM EMP WHERE JOINING< '1991-01-01';

--PART C
--1. Count the number of employees living in Rajkot or Baroda.
	SELECT COUNT(EID) AS TOTAL_EMPLOYEE FROM EMP WHERE CITY = 'RAJKOT' OR CITY = 'BARODA';
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
	SELECT COUNT(EID) AS TOTAL_EMPLOYEE FROM EMP WHERE JOINING < '1991-01-01' AND DEPARTMENT = 'IT';
--3. Find the Joining Date wise Total Salaries
	SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMP
	GROUP BY JOINING;
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
	SELECT DEPARTMENT , CITY , MAX(SALARY) AS MAXIMUM_SALARY FROM EMP WHERE CITY LIKE 'R%' 
	GROUP BY DEPARTMENT, CITY;


-- EXTRA 
--1
	SELECT MAX(SALARY) , ENAME, DEPARTMENT FROM EMP
	GROUP BY DEPARTMENT , ENAME;
--2
	SELECT CITY, AVG(SALARY) AS AVERAGE_SALARY FROM EMP
	GROUP BY CITY;
--3
	SELECT MAX(SALARY) FROM EMP WHERE SALARY<(SELECT MAX(SALARY) FROM EMP);
--4
	SELECT ENAME FROM EMP WHERE MONTH(JOINING) BETWEEN 1 AND 6;
--5
	SELECT ENAME , SALARY FROM EMP 
	WHERE JOINING = (SELECT MAX(JOINING) FROM EMP);