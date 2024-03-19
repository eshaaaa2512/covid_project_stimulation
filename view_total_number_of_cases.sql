CREATE DATABASE COVID_DB;
USE COVID_DB;



--Create a view that displays the total number of cases (confirmed, deaths, and recovered) for each country on a specific date.

CREATE VIEW TotalCasesByCountryAndDate
AS
SELECT
    Country_Region,
    DATE,
    SUM(Confirmed) AS TotalConfirmedCases,
    SUM(Deaths) AS TotalDeaths,
    SUM(Recovered) AS TotalRecovered
FROM
   full_grouped
GROUP BY
    Country_Region,
	DATE;


SELECT * FROM TotalCasesByCountryAndDate WHERE Country_Region = 'JAPAN' AND DATE ='2020-01-22';
  








	  

      





	 
	 