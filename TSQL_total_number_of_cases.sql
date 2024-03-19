USE COVID_DB;



--Write a T-SQL query to calculate the total number of cases (confirmed + deaths + recovered) for each country.

SELECT 
    Country_Region,
    SUM(Confirmed + Deaths + Recovered) AS TotalNumberOfCases
FROM
    covid_19_clean_complete
GROUP BY
    Country_Region;





	 
	 






	  

      





	 
	 