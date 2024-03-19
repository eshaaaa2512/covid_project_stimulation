USE COVID_DB;

---Group the data by date and compute the total number of deaths and recoveries for each date.
SELECT
       DATE,
       SUM(DEATHS) AS TOTAL_DEATHS,
	   SUM(RECOVERED) AS TOTAL_RECOVERED
	 
FROM
    full_grouped
GROUP BY
    DATE;

  



	 
	 







	 
	 






	  

      





	 
	 