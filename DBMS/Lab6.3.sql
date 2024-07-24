--LAB 6.3
--Date Functions
--PART A: 
--1. Write a query to display the current date & time. Label the column Today_Date. 
SELECT GETDATE() AS TODAY_DATE;
--2. Write a query to find new date after 365 day with reference to today. 
SELECT DATEADD(d,365,GETDATE()) AS ADDEDDATE;
--3. Display the current date in a format that appears as may 5 1994 12:00AM.(DOUBT)
SELECT DATETIME(GETDATE(),'%M %D %Y %T');  
--4. Display the current date in a format that appears as 03 Jan 1995. 

--5. Display the current date in a format that appears as Jan 04, 96. 
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
SELECT DATEDIFF(MONTH,'2008-12-31','2009-03-31') AS TOTMONTH;
--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10. 
SELECT DATEDIFF(YEAR,'2010-09-14','2012-01-25') AS TOTYEAR;
--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
SELECT DATEDIFF(HOUR,'2012-01-25','2012-01-26') AS TOTHOURS;
--9. Write a query to extract Day, Month, Year from given date 12-May-16. 
SELECT DATEPART(DAY,'2016-05-12');
SELECT DATEPART(MONTH,'2016-05-12');
SELECT DATEPART(YEAR,'2016-05-12');
--10. Write a query that adds 5 years to current date.
SELECT DATEADD(YYYY,5,GETDATE()); 
--11. Write a query to subtract 2 months from current date. 
SELECT DATEADD(M,-2,GETDATE());
--12. Extract month from current date using datename () and datepart () function.
 
--13. Write a query to find out last date of current month. 
--14. Calculate your age in years and months. 