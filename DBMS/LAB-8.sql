CREATE TABLE SALES_DATA(
	REGION VARCHAR(30),
	PRODUCT VARCHAR(20),
	SALES_AMONT INT,
	YEARS INT
);

INSERT INTO SALES_DATA VALUES('NORTH AMERICA', 'WATCH', 1500, 2023);
INSERT INTO SALES_DATA VALUES('EUROPE', 'MOBILE', 1200, 2023);
INSERT INTO SALES_DATA VALUES('ASIA', 'WATCH', 1800, 2023);
INSERT INTO SALES_DATA VALUES('NORTH AMERICA', 'TV', 900, 2024);
INSERT INTO SALES_DATA VALUES('EUROPE', 'WATCH', 2000, 2024);
INSERT INTO SALES_DATA VALUES('ASIA', 'MOBILE', 1000, 2024);
INSERT INTO SALES_DATA VALUES('NORTH AMERICA', 'MOBILE', 1600, 2023);
INSERT INTO SALES_DATA VALUES('EUROPE', 'TV', 1500, 2023);
INSERT INTO SALES_DATA VALUES('ASIA', 'TV', 1100, 2024);
INSERT INTO SALES_DATA VALUES('NORTH AMERICA', 'WATCH', 1700, 2024);

SELECT * FROM SALES_DATA;

--PART A
--1. Display Total Sales Amount by Region.
	SELECT REGION, SUM(SALES_AMONT) FROM SALES_DATA 
	GROUP BY REGION;
--2. Display Average Sales Amount by Product
	SELECT PRODUCT, AVG(SALES_AMONT) FROM SALES_DATA 
	GROUP BY PRODUCT;
--3. Display Maximum Sales Amount by Year
	SELECT YEARS, MAX(SALES_AMONT) AS MAXIMUM_SALES FROM SALES_DATA
	GROUP BY YEARS;	
--4. Display Minimum Sales Amount by Region and Year
	SELECT REGION, YEARS, MIN(SALES_AMONT) AS MINIMUM_SALES FROM SALES_DATA
	GROUP BY REGION , YEARS;
--5. Count of Products Sold by Region
	SELECT REGION ,COUNT(PRODUCT) AS TOTAL_PRODUCTS FROM SALES_DATA 
	GROUP BY REGION;
--6. Display Sales Amount by Year and Product
	SELECT YEARS, PRODUCT , SUM(SALES_AMONT) FROM SALES_DATA 
	GROUP BY YEARS , PRODUCT;
--7. Display Regions with Total Sales Greater Than 5000
	SELECT REGION , SUM(SALES_AMONT) FROM SALES_DATA
	GROUP BY REGION 
	HAVING SUM(SALES_AMONT)>5000
--8. Display Products with Average Sales Less Than 10000
	SELECT PRODUCT, AVG(SALES_AMONT) AS AVG_SALES FROM SALES_DATA
	GROUP BY PRODUCT
	HAVING AVG(SALES_AMONT)<10000;
--9. Display Years with Maximum Sales Exceeding 500
	SELECT YEARS, MAX(SALES_AMONT) FROM SALES_DATA 
	GROUP BY YEARS 
	HAVING MAX(SALES_AMONT)>500
--10. Display Regions with at Least 3 Distinct Products Sold.
	SELECT REGION , count(DISTINCT PRODUCT) FROM SALES_DATA
	GROUP BY REGION 
	HAVING  COUNT(PRODUCT)>=3;
--11. Display Years with Minimum Sales Less Than 1000
	SELECT YEARS , MIN(SALES_AMONT) FROM SALES_DATA
	GROUP BY YEARS
	HAVING MIN(SALES_AMONT)<1000;
	
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
	SELECT REGION , SUM(SALES_AMONT) FROM SALES_DATA WHERE YEARS = 2023
	GROUP BY REGION
	ORDER BY SUM(SALES_AMONT);


--PART B
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
	SELECT COUNT(PRODUCT) AS COUNT_OF_PRODUCTS , YEARS, REGION FROM SALES_DATA
	GROUP BY YEARS, REGION
	ORDER BY YEARS, REGION;
--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
	SELECT REGION, MAX(SALES_AMONT) AS MAXIMUM_SALES_AMOUNT FROM SALES_DATA
	GROUP BY REGION 
	HAVING MAX(SALES_AMONT)>1000
	ORDER BY REGION;
--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
	SELECT YEARS , SUM(SALES_AMONT) AS TOTAL_SALES_AMOUNT FROM SALES_DATA
	GROUP BY YEARS
	HAVING SUM(SALES_AMONT)<1000
	ORDER BY YEARS DESC;
--4. Display Top 3 Regions by Total Sales Amount in Year 2024
`	SELECT TOP 3 REGION , SUM(SALES_AMONT) AS TOTAL_SALES FROM SALES_DATA WHERE YEARS = 2024
	GROUP BY REGION;

--PART C
--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
	SELECT PRODUCT , AVG(SALES_AMONT) FROM SALES_DATA
	GROUP BY PRODUCT
	HAVING AVG(SALES_AMONT) BETWEEN 1000 AND 2000
	ORDER BY PRODUCT;
--2. Display Years with More Than 5 Orders from Each Region
	SELECT YEARS , COUNT(PRODUCT), REGION FROM SALES_DATA
	GROUP BY REGION, YEARS
	HAVING COUNT(PRODUCT)>5
	ORDER BY REGION;
--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
	SELECT REGION , AVG(SALES_AMONT) FROM SALES_DATA WHERE YEARS = 2023
	GROUP BY REGION
	HAVING AVG(SALES_AMONT)>1500
	ORDER BY AVG(SALES_AMONT) DESC;
--4. Find out region wise duplicate product.
	SELECT REGION , COUNT(PRODUCT) FROM SALES_DATA
	GROUP BY REGION
	HAVING COUNT(PRODUCT)>1;
--5. Find out region wise highest sales amount.
	SELECT REGION , MAX(SALES_AMONT) FROM SALES_DATA
	GROUP BY REGION;