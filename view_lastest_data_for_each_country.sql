CREATE DATABASE COVID_DB;
USE COVID_DB;




--Implement a view to show the latest data (confirmed, deaths, recovered) for each country.

CREATE VIEW V_lastestdata
AS
SELECT
    Country_Region,
    SUM(Confirmed) AS TotalConfirmedCases,
    SUM(Deaths) AS TotalDeaths,
    SUM(Recovered) AS TotalRecovered
FROM
   full_grouped
GROUP BY
    Country_Region;
	

SELECT * FROM V_lastestdata WHERE Country_Region = 'JAPAN';
  


	 
	 






	  

      





	 
	 