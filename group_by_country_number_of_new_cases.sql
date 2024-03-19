USE COVID_DB;
---Group the data by country and calculate the average number of new cases reported daily for each country.

SELECT
      Country_Region,
	  AVG(New_cases) AS AVG_NEW_CASES
FROM
     country_wise_latest
GROUP BY
      Country_Region;
  




	  

      





	 
	 