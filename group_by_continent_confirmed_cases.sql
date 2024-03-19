USE COVID_DB;

---Group the data by continent and calculate the total number of confirmed cases for each continent.
SELECT
    worldometer_data.Continent,
    SUM(covid_19_clean_complete.Confirmed) AS TotalConfirmedCases
FROM
    covid_19_clean_complete 
JOIN
    worldometer_data ON covid_19_clean_complete.Country_Region = worldometer_data.Country_Region
GROUP BY
    worldometer_data.Continent;




	 
	 







	 
	 






	  

      





	 
	 