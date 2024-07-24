CREATE TABLE CRICKET(
	NAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT 
);

INSERT INTO CRICKET VALUES('SACHIL TENDULKAR' , 'MUMBAI', 30);
INSERT INTO CRICKET VALUES('RAHUL DRAVID' , 'BOMBAY', 35);
INSERT INTO CRICKET VALUES('M.S.DHONI' , 'JHARKHAND', 31);
INSERT INTO CRICKET VALUES('SURESH RAINA' , 'GUJARAT', 30);

SELECT * FROM CRICKET;

--1 Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET;
SELECT * FROM WORLDCUP;

--2 Create table T20 from cricket with first two columns with no data.
SELECT NAME , CITY INTO T20 FROM CRICKET WHERE 2+2=5;
SELECT * FROM T20;

--3 Create table IPL From Cricket with No Data 
SELECT * INTO IPL FROM CRICKET WHERE 1=2;
SELECT * FROM IPL;


--PART B
CREATE TABLE EMPLOYEE(
	NAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT 
);

INSERT INTO EMPLOYEE VALUES('JAY PATEL' , 'RAJKOT', 30);
INSERT INTO EMPLOYEE VALUES('RAHUL DAVE' , 'BARODA', 35);
INSERT INTO EMPLOYEE VALUES('JEET PATEL' , 'SURAT', 31);
INSERT INTO EMPLOYEE VALUES('VIJAY RAVAL' , 'RAJKOT', 30);

SELECT * FROM EMPLOYEE;
--1.Create table Employee_detail from Employee with all the columns and data. 
 SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE;
--2. Create table Employee_data from Employee with first two columns with no data.
	SELECT NAME , CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2; 
--3. Create table Employee_info from Employee with no Data
	SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2;

--PART C
--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot 
	INSERT INTO EMPLOYEE_INFO 
	SELECT * FROM EMPLOYEE WHERE CITY = 'RAJKOT';
--2. Insert the Data into Employee_info from Employee whose age is more than 32.
	INSERT INTO EMPLOYEE_INFO
	SELECT * FROM EMPLOYEE WHERE AGE > 32;